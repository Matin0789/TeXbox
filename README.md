# 📦 TeXbox  

**TeXbox** is a lightweight tool for creating **isolated TeX Live environments**.  

It allows you to manage LaTeX packages on a **per-project basis**, ensuring **reproducibility** and avoiding conflicts with system-wide TeX Live installations.  

---

## ✨ Features  

- 🔒 Project-specific isolated TeX Live environments  
- 📂 Package management independent from the global system  
- ♻️ Reproducible builds across different machines  
- 🛠 Simple and intuitive CLI  
- ⚡ CI/CD and team-collaboration friendly  

---

## 🚀 Installation  

```bash
git clone https://github.com/Matin0789/TeXbox
cd TeXbox
chmod +x install.sh
./install.sh
```

---

## 📖 Usage

Create a new TeX Live environment for your project:
```bah
mkdir my-project
cd my-project
texbox init .
```

Activate the environment:
```bash
source .texbox/activate
```

Install a LaTeX package inside the environment:
```bash
tlmgr install <package-name>
```

Compile your LaTeX document:
```bash
pdflatex main.tex
xelatex main.tex
```

Deactivate the environment:
```bash
deactivate
```

Remove the project environment:
```bash
rm -rf my-project
```

---

## 📂 Project Structure

```text
my-project/
├── main.tex
└── .texbox/
    ├── texmf/       # Installed packages for this project
    ├── var/         # Cache and environment files
    └── tlpkg/       # Package metadata for tlmgr
    └── activate     # Script to activate the project environment       
```

## 🤝 Contributing

Issues and feature requests are welcome! 🙌

## 📄 License

This project is licensed under the Apache-2.0 License.
