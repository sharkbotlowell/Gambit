# Gambit

A competitive multiplayer Minecraft experience built on **Forge 1.20.1**, combining a custom datapack with KubeJS scripting. Gambit runs team-based combat matches with TACZ firearms, a full stat tracking system, and operator tools for managing sessions.

---

## Modes

### Elimination
Two teams. One life each. The last team with players alive wins the round.

### TDM (Team Deathmatch)
Two teams with respawns. First team to reach the kill target wins. Kill target defaults to 50 and can be adjusted per-match with `/setgoal`.

---

## Maps

| ID | Name | Modes |
|---|---|---|
| 1 | Forest | Elimination |
| 2 | Forest 2 | Elimination |
| 3 | Trenches | Elimination |
| 4 | Training Grounds | Elimination, TDM |
| 5 | Mall | TDM |

**Map presets for `/setmap`:** `forest`, `forest2`, `trenches`, `training_grounds`, `tdm_training_grounds`, `tdm_mall`

---

## Player Commands

| Command | Description |
|---|---|
| `/play` | Enter the match queue |
| `/spectate` | Opt out — watch without participating |
| `/queue` | Check your current queue status |
| `/gambitstats` | View the leaderboard — ranked by efficiency score (KD × Damage per Life) |
| `/gambitstats me` | View your own stats |
| `/gambitstats player <name>` | View another player's stats |
| `/gambitstats top <metric>` | Leaderboard sorted by a specific stat |

**Stat metrics:** `kd`, `winpct`, `kills`, `deaths`, `damage`, `wins`, `matches`, `mvps`, `dpl`

> `dpl` = Damage per Life (total damage ÷ deaths). The main leaderboard ranks by `kd × dpl` — rewarding players who both survive and deal consistent damage.

---

## Operator Commands

| Command | Description |
|---|---|
| `/setmap <preset>` | Stage the next map and display it in the lobby bossbar |
| `/start` | Start the match using the staged map |
| `/setgoal <n>` | Set the TDM kill target (1–500) before a TDM match |
| `/gambitstats postgame` | Broadcast post-game top kills, top damage, and award MVP — run this after each match |
| `/gambitstats addmatch <name\|red\|blue\|all>` | Manually credit a match |
| `/gambitstats addwin <name\|red\|blue\|all>` | Manually credit a win |
| `/gambitstats reset <name\|all>` | Reset stats — target player must be online when resetting by name |

### Typical match flow
```
/setmap tdm_forest    ← stages map, bossbar appears in lobby
/setgoal 30           ← optional: change kill target from default 50
/start                ← fires the match
/gambitstats postgame ← broadcast results and award MVP after the match ends
```

---

## Kits

Players select their kit in the lobby by standing on kit selector pads — multi-block patterns built into the map. The selected kit is equipped at round start. Each kit also provides a random **ration** (food item) at round start and on TDM respawn.

> **Note:** The rations food normalizer sets `cooked_beef`, `cooked_porkchop`, `cooked_chicken`, and `baked_potato` to uniform hunger/saturation values server-wide at startup, affecting all players not just match participants.

---

## Stat Tracking

Stats are tracked per-player by KubeJS and persisted to `kubejs/data/gambit_stats.json`, so offline players remain in leaderboard history across server restarts.

**Tracked stats:** kills, deaths, damage dealt, wins, matches played, MVPs

Run `/gambitstats postgame` after each match to broadcast the top 5 kills, top 5 damage, and award the MVP. This also permanently increments the MVP's lifetime counter.

> **Note:** Stats are keyed by player name. A player who changes their username will start a fresh record.

---

## Dependencies

- Minecraft **1.20.1** (Forge)
- [TACZ](https://www.curseforge.com/minecraft/mc-mods/timeless-and-classics-zero) — firearms
- [KubeJS](https://www.curseforge.com/minecraft/mc-mods/kubejs) — server scripting
- [PlayerRevive](https://www.curseforge.com/minecraft/mc-mods/playerrevive) **v2.0.16+** — downed state for kill attribution
- [Marbled's Arsenal](https://www.curseforge.com/minecraft/mc-mods/marbless-arsenal) — team armor sets
- [Marbled's First Aid](https://www.curseforge.com/minecraft/mc-mods/marbless-first-aid) — medic kit consumables
- [Binoculars Mod](https://www.curseforge.com/minecraft/mc-mods/binoculars) — binoculars in all loadouts

---

## Adding a New Map

See [docs/adding-a-map.md](docs/adding-a-map.md) for a full step-by-step guide. In summary: create a start function, add TP entries to two files, add a dispatch line to `staged.mcfunction`, and register a preset in `gambit_utils.js`.
