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

## 🚀 Installation

```bash
git clone https://github.com/Matin0789/TeXbox
cd TeXbox
chmod +x install.sh
./install.sh
```

This will copy the `texbox` CLI to `~/.texbox/bin` and automatically add it to your PATH if you are using Bash or Zsh.

Then reload your terminal or run:

**bash:**

```bash
source ~/.bashrc
```

or

**zsh:**

```bash
source ~/.zshrc
```

### ⚠️ Unsupported Shells

TeXbox currently supports Bash and Zsh.
If your shell is not supported:

1. **TeXbox cannot automatically update your PATH.**

2. **You need to manually add TeXbox to your PATH by adding the following line to your shell configuration file (e.g., `config.fish`, `config.csh`):**

```bash
export PATH="$HOME/.texbox/bin:$PATH"
```

3. **After editing your configuration file, restart your terminal or run source `<your-config-file>` to apply changes.**

Once the PATH is set, you can use TeXbox commands and activate project environments as usual.

---

## 🧹 Uninstallation

```bash
cd TeXbox
chmod +x uninstall.sh
./uninstall.sh
```

Then reload your shell

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
