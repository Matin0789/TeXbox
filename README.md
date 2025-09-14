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

```bah
```

## 📖 Usage

Create a new TeX Live environment for your project:
```bah
texbox init my-project
```

Activate the environment:
```bash
texbox activate my-project
```

Install a LaTeX package inside the environment:
```bash
tlmgr install <package-name>
```

Deactivate the environment:
```bah
texbox deactivate
```

Remove an environment:
```bash
texbox remove my-project
```

## 📂 Project Structure

```text
```

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! 🙌

## 📄 License

This project is licensed under the Apache-2.0 License.


