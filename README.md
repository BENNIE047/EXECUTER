# 🚀 EXECUTER v1.0

**The fastest way to make scripts executable and run them instantly.**

One command. Zero hassle. Just execute and go.

---

## 💡 What It Does

EXECUTER is a lightweight bash utility that automates the process of making scripts executable and running them. No more typing `chmod +x` and `./` separately—EXECUTER handles it all in one smooth workflow.

Perfect for developers, system administrators, and anyone who runs bash scripts regularly.

---

## ✨ Features

✅ **Auto-detection** - Checks if script is already executable  
✅ **File validation** - Verifies file exists before executing  
✅ **Safety confirmation** - Prevents accidental execution  
✅ **Error handling** - Catches and reports failures gracefully  
✅ **Clean interface** - Professional ASCII banner and clear prompts  
✅ **Exit code reporting** - Shows if script ran successfully  

---

## 📦 Installation

1. **Download the script:**
   ```bash
   wget https://raw.githubusercontent.com/BENNIE047/FAST-FILE-MOVER/main/executer.sh
   ```

2. **Make EXECUTER itself executable:**
   ```bash
   chmod +x executer.sh
   ```

3. **Move to your PATH (optional, for global access):**
   ```bash
   sudo mv executer.sh /usr/local/bin/executer
   ```
   Now you can run it from anywhere with just `executer`

---

## 🛠️ Usage

### Basic Usage

```bash
./executer.sh
```

Then follow the interactive prompts:
1. Enter the script filename
2. Review the summary
3. Confirm execution
4. Watch your script run

### Example Session

```
███████╗██╗  ██╗███████╗ ██████╗██╗   ██╗████████╗███████╗██████╗ 
██╔════╝╚██╗██╔╝██╔════╝██╔════╝██║   ██║╚══██╔══╝██╔════╝██╔══██╗
█████╗   ╚███╔╝ █████╗  ██║     ██║   ██║   ██║   █████╗  ██████╔╝
██╔══╝   ██╔██╗ ██╔══╝  ██║     ██║   ██║   ██║   ██╔══╝  ██╔══██╗
███████╗██╔╝ ██╗███████╗╚██████╗╚██████╔╝   ██║   ███████╗██║  ██║
╚══════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═════╝    ╚═╝   ╚══════╝╚═╝  ╚═╝

============================================
  🚀 Quick Script Executor & Runner v1.0
============================================

📝 Enter the script filename (e.g., script.sh): myscript.sh
⚙️  File is not executable yet...

============================================
📄 File: myscript.sh
📍 Location: /home/benson/scripts
🔧 Action: Make executable & run
============================================

⚠️  Execute and run this script? (y/n): y

🔧 Making script executable...
✅ Script is now executable!

🚀 Running script...
============================================

[Your script output appears here]

============================================
✅ Script executed successfully!
============================================
🎉 EXECUTER COMPLETE
```

---

## 🎯 Use Cases

### Quick Testing
```bash
# Just wrote a new script and want to test it?
./executer.sh
# Enter: test.sh
```

### Batch Processing
```bash
# Run multiple scripts in sequence
for script in *.sh; do
    echo "$script" | ./executer.sh
done
```

### Training & Education
Perfect for learning bash scripting—students can focus on writing scripts without worrying about permissions.

---

## 🔍 How It Works

1. **Prompts** for the script filename
2. **Validates** the file exists in the current directory
3. **Checks** if the file is already executable
4. **Displays** a summary of what will happen
5. **Requests** user confirmation
6. **Executes** `chmod +x` to make the script executable
7. **Runs** the script with `./scriptname`
8. **Reports** success or error status

---

## 💻 Requirements

- **OS:** Linux, macOS, or any Unix-like system
- **Shell:** Bash 4.0 or higher (pre-installed on most systems)
- **Permissions:** Read/write access to script files

---

## ⚠️ Error Handling

EXECUTER handles common errors gracefully:

| Error | What It Means | Exit Code |
|-------|---------------|-----------|
| File not found | Script doesn't exist in current directory | 1 |
| chmod failed | No permission to modify file | 1 |
| User cancelled | User chose 'n' at confirmation | 0 |
| Script error | Your script had an error | Varies |

---

## 🔐 Security Notes

- EXECUTER only works in the **current directory** (safer)
- Always **confirms** before execution
- Shows **full path** before running
- Does **not** require sudo privileges
- **You** remain in control of what executes

---

## 🤝 Contributing

Found a bug? Have a feature idea? Contributions are welcome!

1. Fork the repository
2. Create your feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

---

## 📝 License

Free and open source. Use it, modify it, share it. No restrictions.

---

## 🎓 Learning Resources

New to bash scripting? Check out:
- [Bash Scripting Tutorial](https://www.gnu.org/software/bash/manual/)
- [chmod Command Explained](https://www.gnu.org/software/coreutils/manual/html_node/chmod-invocation.html)
- [Exit Codes in Bash](https://tldp.org/LDP/abs/html/exitcodes.html)

---

## 💬 FAQ

**Q: Can I run scripts from other directories?**  
A: Currently, EXECUTER works with files in your current directory. Use `cd` to navigate first.

**Q: What if my script has spaces in the name?**  
A: No problem! EXECUTER handles filenames with spaces correctly.

**Q: Will this work on Windows?**  
A: You'll need WSL (Windows Subsystem for Linux) or Git Bash.

**Q: Can I execute non-.sh files?**  
A: Yes! Any executable script (Python, Perl, etc.) works as long as it has a proper shebang.

---

## 🌟 Why EXECUTER?

**The Problem:**
```bash
chmod +x myscript.sh    # Step 1
./myscript.sh           # Step 2
```

**The Solution:**
```bash
./executer.sh           # One command
# Enter filename, confirm, done!
```

**EXECUTER saves time, reduces errors, and makes running scripts effortless.**

---

## 📊 Project Stats

![GitHub](https://img.shields.io/badge/bash-script-green)
![License](https://img.shields.io/badge/license-free-blue)
![Version](https://img.shields.io/badge/version-1.0-orange)

---

## 🙏 Acknowledgments

Built with 💙 by developers who got tired of typing `chmod +x` a hundred times a day.

---

**⚡ Make it executable. Run it instantly. That's EXECUTER.**

---

<div align="center">

Made with ⚡ by [BENNIE047](https://github.com/BENNIE047)

*Simplifying script execution, one command at a time.*

</div>
