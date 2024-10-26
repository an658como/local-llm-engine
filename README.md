
# 🚀 Local LLM Engine
This project lets you run **Ollama** inside a Docker container, giving you seamless access to the **Ollama CLI** from your native terminal.

## 🛠️ Setup

1. **Install Docker** 🐳  
   First, ensure Docker is installed on your system. Follow the instructions from the official Docker documentation:  
   👉 [Get Docker](https://docs.docker.com/get-started/get-docker/)

2. **Clone the Repository** 📁  
   If you haven’t already, clone this repository and navigate into the project directory:
   ```bash
   git clone <your-repo-url>
   cd local-llm-engine
   ```

## 🔧 Running the Build Script

1. **Make the script executable**  
   Before running the script, ensure it has the necessary permissions:
   ```bash
   chmod +x build.sh
   ```

2. **Run the build script**  
   Use the following command to spin up the Docker container and configure the environment. Be sure to **source** the script to apply the alias directly to your shell:
   ```bash
   . build.sh <model-name>
   ```
   - Replace `<model-name>` with the model you want to use (e.g., `llama3.2`).
   - Remember to use the dot (`.`) to source the script, ensuring that environment settings, like aliases, are applied to your current shell session.

## 🧪 Test the Interactive Session

Once the setup is complete, you can start an interactive session with the model by running:

```bash
ollama run <model-name>
```
- Again, substitute `<model-name>` with the name of the model you’d like to use.

## 📝 Notes

- Make sure to **source** the script (with `.`) so the alias for `ollama` is created in your terminal environment.
- Feel free to explore other models by changing the `<model-name>` argument in both the build script and the `ollama run` command.

---

### 🎉 You're all set! Enjoy using Ollama with ease!
