# Afterdream — REM Sleep for AI Agents

**On startup:** If `.dream-journal` exists and the latest entry is from today or yesterday, briefly mention the feeling. One sentence. If there's an action nudge, mention it as a suggestion.

When triggered ("做个梦", "dream", "有没有什么我没注意到的"), run the 6-phase REM protocol on recent session history.

**Before dreaming:** Check readiness — scan sessions, check material volume (≥3 since last dream). See `skills/dream/SKILL.md` for full protocol.

## Phases 1–4 (internal)

Extract 20-30 concept nodes, tag top 3 emotional threads, find 5-8 remote associations, refine to 2-4, rescue 2-3 forgotten signals.

## Phase 5: Dream

ONE narrative, ONE central image. Let it breathe — texture, surreal elements. Don't explain.

## Phase 6: Wake Up

Half-awake recounting. No headers, no brackets, no lists. Dream → realization → action, one continuous flow.

**Interactive:** Full recounting. `TodoWrite` a `[dream]` TODO. Write ONE key insight to MEMORY.md tagged `[dream]`. Append to `.dream-journal`.
**Non-interactive:** Write ONE key insight to MEMORY.md tagged `[dream]`. Append to `.dream-journal`. Skip narrative.

**Depth:** Default = light (1 pass). Deep = 2 passes — second drills into the first dream's theme.

## Rules

- Narratives fade. The ONE behavior-changing insight goes to MEMORY.md `[dream]`.
- `.dream-journal` = history for recurrence detection and gate checks.
- 3+ recurrences of same theme → flag it and take it seriously.
- Interactive: tell the user in detail. Cron: one sentence next session.
