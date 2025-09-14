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

###

📖 Usage

Create a new TeX Live environment for your project:

texbox init my-project

Activate the environment:

texbox activate my-project

Install a LaTeX package inside the environment:

tlmgr install <package-name>

Deactivate the environment:

texbox deactivate

Remove an environment:

texbox remove my-project

📂 Example Project Structure

my-project/
├── texbox.toml      # Environment configuration
├── main.tex
└── output.pdf

🤝 Contributing

Contributions, issues, and feature requests are welcome! 🙌

📄 License

This project is licensed under the Apache-2.0 License.


