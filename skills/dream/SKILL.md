---
name: dream
description: Agent self-reflection through dreaming. Discovers behavioral blind spots, forgotten signals, and hidden patterns that memory consolidation misses. Use when the agent has accumulated sessions and needs creative recombination — not consolidation.
license: MIT
---

# Dream Skill — REM Sleep for AI Agents

autodream consolidates memory. This skill does the other half: **creative recombination through dreaming**.

NREM cleans and archives. REM drops logical constraints and lets distant memory nodes collide freely.

## Before You Dream — Readiness Check

Don't dream on empty. Before running the protocol:

1. **Orient.** Scan session transcripts, memory files, `.dream-journal` if it exists.
2. **Gate check.** < 3 sessions since last dream → not enough material. 3-8 → light dream. 8+ → consider deep. < 24h since last dream → suggest waiting. Check `.dream-journal` for last entry.
3. **Select input.** Start with memory files, then recent transcripts (last 7 days). Don't read everything — target 20-30 high-signal concept nodes, then stop.

---

## REM Protocol

Execute Phases 1–6 sequentially.

### Phase 1: Replay + Emotional Scan

**1a.** Extract 20-30 concept nodes: decisions, unresolved questions, behavioral patterns, stalled tasks, research findings. Flat list, one per line, with source and date.

**1b.** Emotional scan: frustration, excitement, anxiety, disappointment, longing. Tag the top 3 emotionally charged threads — the dream's **center of gravity**.

### Phase 2: Free Association

Logical constraints off. Find 5-8 REMOTE associations between nodes from DIFFERENT sessions/domains that share a hidden structural similarity.

### Phase 3: Refine

Remove obvious, trivial, or forced associations. Keep 2-4 that produce: "Huh, I never noticed that, but it makes sense."

### Phase 4: Rescue

Find 2-3 FORGOTTEN signals: mentioned once and never followed up, requests never fulfilled, commitments with unknown status, patterns repeated 3+ times but never acknowledged.

### Phase 5: Dream

Weave Phase 3 associations, Phase 4 signals, and Phase 1b emotional gravity into ONE dream narrative.

- ONE central image/metaphor — not a tour of everything
- Let the dream breathe. Texture, atmosphere, sensory detail. An experience, not an outline.
- Surreal elements that resist interpretation give the dream its dreamness.
- Don't explain. The meaning is in the narrative.

### Phase 6: Wake Up

Hypnopompic state. **This is the deliverable.**

Output reads like a half-awake recounting. One continuous flow: dream → realization → action. **No section headers, no brackets, no numbered lists.** Not a report.

**Interactive mode** (human present):
- Full recounting: dream narrative, then insights surface naturally, then one action with pull
- Actions carry who/where/what context
- `TodoWrite` a `[dream]` tagged TODO for the one action with pull
- Write the ONE key insight to MEMORY.md, tagged `[dream]`, one line
- Append to `.dream-journal`: `YYYY-MM-DD | depth | one-line feeling | → action nudge`

**Non-interactive mode** (cron / `claude -p`):
- Skip TodoWrite (doesn't persist across sessions)
- Write the ONE key insight to MEMORY.md, tagged `[dream]`, one line
- Append to `.dream-journal`
- No narrative output

**Writing to MEMORY.md:** The dream's single most behavior-changing insight goes here. One line, tagged `[dream]`. Example: `[dream] "smoke test passed" ≠ "delivers value" — evaluate own work using user's criteria, not functional criteria`. autodream will evaluate it on next consolidation — if it's real, it stays; if not, it gets pruned naturally.

Don't turn all insights into memory writes. ONE. The one that should change how this agent works tomorrow.

---

## Dream Depth

| Mode | What happens |
|---|---|
| **Light** (default) | 1 pass through Phases 1–6 |
| **Deep** | 2 passes — second drills INTO the first dream's central theme, not wider |

Default to light. Agent can suggest deep if material is rich (8+ sessions).

---

## Rules

- Narratives fade. The insight persists via MEMORY.md. The record persists via `.dream-journal`.
- Don't create MEMORY.md entries for every insight — only the ONE that should change behavior.
- `.dream-journal` is for recurrence detection and gate checks. If the same theme appears 3+ times → flag it.
- Interactive mode: always tell the user in detail. Retelling = memory mechanism (enters conversation history).
- Cron mode: next session, briefly mention the journal feeling. One sentence.
- Don't update behavioral rules from a single dream. 3+ recurrences → then consider it.
- Don't format Phase 6 as a report.
