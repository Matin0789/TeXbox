# 📦 TeXbox

TeXbox is a lightweight tool for creating isolated **TeX Live** environments per project.
It helps you manage LaTeX packages locally, ensuring clean project separation and avoiding conflicts with system-wide TeX Live installations.

---

## ✨ Features

🔒 Project-specific isolated TeX Live environments
📂 Package management independent from the global system
♻️ Reproducible builds (when using the same TeX Live version and package list)
🛠 Simple and intuitive CLI workflow
⚡ CI/CD and team-collaboration friendly (just `source .texbox/activate` before compiling)

---

## 📖 Usage

Create a new TeX Live environment for your project:

```bash
git clone https://github.com/Matin0789/TeXbox
cd TeXbox
chmod +x texbox
./texbox init <your-project-path>
cd <your-project-path>
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
    ├── texmf/
    ├── var/
    └── config/
```

---

## ♻️ Reproducibility

To reproduce the same environment on another machine:

1. Export the package list:

   ```bash
   tlmgr --usermode list --only-installed > texuirements.txt
   ```

2. On a new machine, create and activate a TeXbox environment, then install:

   ```bash
   while read -r pkg _; do
       tlmgr --usermode install "$pkg"
   done < texuirements.txt
   ```

⚠️ Make sure both machines use the same **TeX Live version** (e.g., 2025).

---

## 🤝 Contributing

Issues and feature requests are welcome! 🙌
Feel free to submit PRs with bug fixes, improvements, or new features.

---

## 📄 License

This project is licensed under the [Apache-2.0 License](LICENSE).
