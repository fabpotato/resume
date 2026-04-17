# Resume Project — Change Log

## 2026-04-17

### Setup
- Identified that `me_resume.tex` uses `deedy-resume-openfont` class and **requires XeLaTeX** (not pdflatex).
- MacTeX was installed manually; TeX binaries live at `/Library/TeX/texbin` (not on the default shell PATH).

### `build.sh`
- Created `build.sh` — runs `xelatex` twice to fully resolve references and outlines.
- Updated to prepend `/Library/TeX/texbin` to `PATH` automatically so the script works even without MacTeX on the shell PATH.

### `resumeEn.tex`
- Created `resumeEn.tex` as a standalone file (reverse-engineered from `salary.pdf`) that reproduces:
  - **Header**: name, email, phone, "Last Updated" date stamp, KDB+ Developer title and summary blurb.
  - **Technical Skills**: Core, AI & ML, Languages, Infrastructure, Tools.
  - **Experience**: Morgan Stanley (Director), UBS (Authorised Officer), Luxoft (KDB+ Developer), HSBC (Associate), Treebo Hotels (Software Developer).
  - **Education**: IIT Roorkee B.Tech, Delhi Public School.
  - **Languages**: English, Hindi, Sanskrit.
- Compiles to `resumeEn.pdf` (2 pages) using `xelatex -interaction=nonstopmode resumeEn.tex`.
