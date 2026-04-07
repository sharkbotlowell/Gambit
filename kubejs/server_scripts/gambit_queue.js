// ============================================================
// Gambit Queue Commands
//
//   /spectate      - Opt out of queue immediately.
//                    If currently in a match, switch to spectator and teleport
//                    to the active map observer view. Otherwise stay adventure
//                    and spectate automatically at match start.
//
//   /play          - Opt back into queue for upcoming rounds.
//                    Does not force a gamemode change.
//
//   /queue         - Show current queue status.
//
// Notes:
//   - Queue state is controlled by player tag: gun_optout
//   - Opted-out players are excluded from round-start team assignment.
// ============================================================

var OPT_OUT_TAG = 'gun_optout';

function hasTagSafe(player, tagName) {
  if (!player || !tagName) return false;
  try {
    if (player.hasTag) return player.hasTag(tagName);
  } catch (e) {
  }

  try {
    if (player.tags && player.tags.includes) return player.tags.includes(tagName);
  } catch (e) {
  }

  try {
    if (player.tags && player.tags.contains) return player.tags.contains(tagName);
  } catch (e) {
  }

  return false;
}

function runForPlayer(player, command) {
  if (!player || !player.server || !command) return;
  var name = player.name && player.name.string ? player.name.string : null;
  if (!name) return;
  player.server.runCommandSilent('execute as ' + name + ' run ' + command);
}

function setOptOutState(player, enabled) {
  if (!player) return false;

  if (enabled) {
    var wasInMatch = hasTagSafe(player, 'Red') || hasTagSafe(player, 'Blue');

    runForPlayer(player, 'tag @s add ' + OPT_OUT_TAG);
    runForPlayer(player, 'tag @s remove Red');
    runForPlayer(player, 'tag @s remove Blue');
    runForPlayer(player, 'team join lobby @s');
    if (wasInMatch) {
      runForPlayer(player, 'clear @s');
      runForPlayer(player, 'gamemode spectator');
      runForPlayer(player, 'function gun:starts/spectator_tpmap');
    } else {
      runForPlayer(player, 'gamemode adventure');
    }
    runForPlayer(player, 'tag @s remove gun_dead');
    runForPlayer(player, 'tag @s remove gun_just_died');
    runForPlayer(player, 'tag @s remove gun_spec_tp_pending');
    runForPlayer(player, 'scoreboard players set @s tdm_respawn_timer 0');
    runForPlayer(player, 'scoreboard players set @s spec_respawn_timer 0');
    return true;
  }

  runForPlayer(player, 'tag @s remove ' + OPT_OUT_TAG);
  runForPlayer(player, 'team join lobby @s');
  runForPlayer(player, 'scoreboard players set @s tdm_respawn_timer 0');
  runForPlayer(player, 'scoreboard players set @s spec_respawn_timer 0');
  return true;
}

function tellQueueStatus(player) {
  var optedOut = hasTagSafe(player, OPT_OUT_TAG);
  if (optedOut) {
    player.tell('§e[Gambit Queue] Spectate mode is enabled. You will not be placed in matches.');
    player.tell('§7Use §f/play §7to opt back in.');
    return;
  }

  player.tell('§a[Gambit Queue] You are in the match queue.');
  player.tell('§7Use §f/spectate §7to opt out.');
}

ServerEvents.commandRegistry(function(event) {
  var Commands = event.commands;

  event.register(
    Commands.literal('spectate')
      .executes(function(ctx) {
        var player = ctx.source.player;
        if (!player || !player.tell) return 1;

        if (hasTagSafe(player, OPT_OUT_TAG)) {
          player.tell('§e[Gambit Queue] Spectate mode is already enabled.');
          return 1;
        }

        setOptOutState(player, true);
        player.tell('§e[Gambit Queue] Spectate mode enabled. Use §f/play §eto rejoin the queue.');
        return 1;
      })
  );

  event.register(
    Commands.literal('play')
      .executes(function(ctx) {
        var player = ctx.source.player;
        if (!player || !player.tell) return 1;

        if (!hasTagSafe(player, OPT_OUT_TAG)) {
          player.tell('§e[Gambit Queue] You are already in the queue.');
          return 1;
        }

        setOptOutState(player, false);
        player.tell('§a[Gambit Queue] You are queued to play in the next match.');
        return 1;
      })
  );

  event.register(
    Commands.literal('queue')
      .executes(function(ctx) {
        var player = ctx.source.player;
        if (!player || !player.tell) return 1;
        tellQueueStatus(player);
        return 1;
      })
  );
});
