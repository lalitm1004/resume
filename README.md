# resume
A simple latex compiler + server for my resume

## Usage
1. Install all requirements
```bash
sudo apt install -y texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra latexmk
```
2. Make changes to `latex/resume.tex`, use the watch command for convenience
```bash
make watch
```
3. Use bash script to get timestamped commit
```bash
./auto_commit.sh
```