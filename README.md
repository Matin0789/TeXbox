# 📦 TeXbox

TeXbox is a lightweight tool for creating isolated TeX Live environments per project. It helps you manage LaTeX packages locally, ensuring reproducible builds and avoiding conflicts with system-wide TeX Live installations.

---

## ✨ Features

- Project-scoped TeX Live environments
- Package management independent of the global system
- Reproducible builds across machines and CI/CD
- Simple, intuitive CLI

---

## 🚀 Installation

```bash
git clone https://github.com/Matin0789/TeXbox
cd TeXbox
chmod +x install.sh
./install.sh
```

This installs `texbox` to `~/.texbox/bin` and appends it to your PATH in `~/.bashrc`. Restart your terminal or run:

```bash
source ~/.bashrc
```

---

## 🧹 Uninstallation

```bash
cd TeXbox
chmod +x uninstall.sh
./uninstall.sh
```

Then reload your shell:

```bash
source ~/.bashrc
```

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
tlmgr install <package-name>
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
