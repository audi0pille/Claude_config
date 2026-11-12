# Claude_config

Gemeinsame Claude-Anweisungen für alle Projekte.

- `CLAUDE.md`: allgemeine Arbeitsregeln. Das Setup-Skript der Cloud-Umgebung kopiert sie beim
  Sitzungsstart nach `~/.claude/CLAUDE.md`. Lokal kann man sie von Hand dorthin legen.
- Projektspezifisches bleibt in der `.claude/CLAUDE.md` des jeweiligen Projekts.
- `skills/`: Skills für alle Projekte. Lokal installieren mit
  `cp -r skills/<name> ~/.claude/skills/`.
  - `design-taste-frontend`: „Taste Skill“ 2.5.1 von
    [Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill) (MIT-Lizenz, siehe `LICENSE` im Ordner).
    Gestaltungsregeln für Webseiten. Aktualisieren: `npx skills add Leonxlnx/taste-skill -g` und Ordner neu kopieren.
