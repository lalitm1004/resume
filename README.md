# resume

A LaTeX-based resume builder with automated compilation, version management, and deployment. Maintains two versions of my resume from a single source file.

## Prerequisites
Install the required LaTeX packages:
```bash
sudo apt install -y texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra latexmk
```

## Usage

### Build All Resumes

```bash
make build
```

This generates both `resume-personal.pdf` and `resume-university.pdf` in the `public/` directory.

### Live Preview

Watch for changes and automatically rebuild, generates a `resume.pdf` in the `tmp/` directory

```bash
make watch
make clean
```

### Automated Commit

Use the provided script for timestamped commits with automatic build:

```bash
./auto_commit.sh
```