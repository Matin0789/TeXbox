# 📦 TeXbox

TeXbox is a lightweight tool for creating isolated TeX Live environments per project. It helps you manage LaTeX packages locally, ensuring reproducible builds and avoiding conflicts with system-wide TeX Live installations.

---

## ✨ Features

🔒 Project-specific isolated TeX Live environments
📂 Package management completely independent from the global system
♻️ Reproducible builds across different machines
🛠 Simple and intuitive CLI
⚡ CI/CD and team-collaboration friendly

---

## 📖 Usage

Create a new TeX Live environment for your project:

```bash
mkdir my-project
cd my-project
texbox init .
```

Activate the environment:

```bash
source .texbox/activate
```

Install LaTeX packages inside the environment:

```bash
tlmgr --usermode install <package-name>
```

Check installed packages:

```bash
tlmgr --usermode list --only-installed
```

Compile your LaTeX document (examples):

```bash
pdflatex main.tex
xelatex main.tex
```

Deactivate the environment:

```bash
deactivate
```

Remove the project environment directory if no longer needed:

```bash
rm -rf my-project
```

---

## 📂 Project Structure

```text
my-project/
├── main.tex
└── .texbox/
    ├── texmf/       # Packages installed for this project
    ├── var/         # Cache and environment files
    ├── tlpkg/       # Package metadata for tlmgr
    └── activate     # Activation script
```

## 🤝 Contributing

Issues and feature requests are welcome! 🙌

## 📄 License

This project is licensed under the Apache-2.0 License.
