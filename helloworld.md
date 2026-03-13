---
marp: true
theme: default
size: 16:9
style: |
  section { background: #0d1117; color: #58a6ff; font-family: sans-serif; }
paginate: true
_categories:
  - "[[_codex_yaml]]"
  - "[[_codex_marp]]"
  - "[[_codex_markdown]]"
_name: "[[Minimal Marp Deck]]"
---

# Hello World from the Home Lab
## 1080p Deployment via Marp CLI

---

# Slide 1: Welcome to Marp
This is the absolute minimum viable Marp presentation.

---

# Slide 2: Formatting
* Marp natively supports standard markdown.
* Slides are separated by three dashes (`---`).
* Because we set `marp: true`, this note will render as a presentation.

---

# Marp-YAML Pipeline Constraints
1. **The "Cleanup" Issue:** Obsidian's Properties UI strips YAML comments. Do not use `# comments` inside the YAML frontmatter. Keep documentation external.
2. **Link Escaping:** Wikilinks in YAML must be wrapped in double quotes (e.g., `"[[link]]"`) to prevent the parser from breaking on brackets.
3. **Property Prefixing:** All custom metadata fields must use an underscore prefix (e.g., `_categories`, `_name`) to separate them from standard Marp directives.

---

### Key Global Directives Reference
| Directive        | Description                                  | Syntax / Values                     |
| :--------------- | :------------------------------------------- | :---------------------------------- |
| `marp`           | Initializes the Marp rendering engine        | `marp: true`                        |
| `theme`          | Sets the global CSS theme                    | `theme: default`, `gaea`, `uncover` |
| `paginate`       | Toggles slide page numbers                   | `paginate: true`                    |
| `size`           | Determines the aspect ratio of the deck      | `size: 16:9`, `4:3`                 |
| `headingDivider` | Auto-splits slides based on Markdown headers | `headingDivider: 2`                 |

---

![[_attachments/Pasted image 20260313011555.png]]