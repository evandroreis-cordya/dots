#!/bin/zsh
#==============================================================================
# CORE AI TOOLS
#==============================================================================
# Centralized installation of core AI packages to prevent duplication
# across multiple AI tool scripts. This script handles shared dependencies
# that are used by multiple AI frameworks and tools.
#
# Dependencies: Python 3.11+, pip3
#==============================================================================

# Get the directory of the current script
SCRIPT_DIR=${0:a:h}
source "${SCRIPT_DIR}/../utils.zsh"
source "${SCRIPT_DIR}/../utils/tool_registry.zsh"

print_in_purple "
   Core AI Tools and Dependencies

"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Core AI Frameworks (shared across multiple AI tools)

# LangChain - Core framework for AI applications
if safe_install_tool "langchain" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install langchain" "LangChain AI Framework"; then
    print_success "LangChain installed"
fi

# LangChain Community Tools
if safe_install_tool "langchain-community" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install langchain-community" "LangChain Community Tools"; then
    print_success "LangChain Community Tools installed"
fi

# ChromaDB - Vector database for AI applications
if safe_install_tool "chromadb" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install chromadb" "ChromaDB Vector Database"; then
    print_success "ChromaDB installed"
fi

# CrewAI - Autonomous AI agents framework
if safe_install_tool "crewai" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install crewai" "CrewAI Autonomous Agents"; then
    print_success "CrewAI installed"
fi

# CrewAI Tools and CLI
if safe_install_tool "crewai-tools" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install crewai-tools" "CrewAI Tools"; then
    print_success "CrewAI Tools installed"
fi

if safe_install_tool "crewai-cli" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install crewai-cli" "CrewAI CLI"; then
    print_success "CrewAI CLI installed"
fi

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Core AI Libraries

# OpenAI SDK
if safe_install_tool "openai" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install openai" "OpenAI Python SDK"; then
    print_success "OpenAI SDK installed"
fi

# Anthropic SDK
if safe_install_tool "anthropic" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install anthropic" "Anthropic Claude SDK"; then
    print_success "Anthropic SDK installed"
fi

# Google Generative AI
if safe_install_tool "google-generativeai" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install google-generativeai" "Google Generative AI SDK"; then
    print_success "Google Generative AI SDK installed"
fi

# Hugging Face Transformers
if safe_install_tool "transformers" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install transformers" "Hugging Face Transformers"; then
    print_success "Hugging Face Transformers installed"
fi

# PyTorch
if safe_install_tool "torch" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install torch" "PyTorch Deep Learning Framework"; then
    print_success "PyTorch installed"
fi

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Vector Databases and Embeddings

# FAISS for similarity search
if safe_install_tool "faiss-cpu" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install faiss-cpu" "FAISS Vector Search"; then
    print_success "FAISS installed"
fi

# Pinecone client
if safe_install_tool "pinecone-client" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install pinecone-client" "Pinecone Vector Database Client"; then
    print_success "Pinecone Client installed"
fi

# Qdrant client
if safe_install_tool "qdrant-client" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install qdrant-client" "Qdrant Vector Database Client"; then
    print_success "Qdrant Client installed"
fi

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# AI Development Utilities

# Jupyter for AI development
if safe_install_tool "jupyter" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install jupyter" "Jupyter Notebook"; then
    print_success "Jupyter installed"
fi

# Pandas for data manipulation
if safe_install_tool "pandas" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install pandas" "Pandas Data Analysis"; then
    print_success "Pandas installed"
fi

# NumPy for numerical computing
if safe_install_tool "numpy" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install numpy" "NumPy Numerical Computing"; then
    print_success "NumPy installed"
fi

# Matplotlib for visualization
if safe_install_tool "matplotlib" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install matplotlib" "Matplotlib Visualization"; then
    print_success "Matplotlib installed"
fi

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# AI Testing and Evaluation

# RAGAS for RAG evaluation
if safe_install_tool "ragas" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install ragas" "RAGAS RAG Evaluation"; then
    print_success "RAGAS installed"
fi

# DeepEval for AI evaluation
if safe_install_tool "deepeval" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install deepeval" "DeepEval AI Evaluation"; then
    print_success "DeepEval installed"
fi

# Evaluate library
if safe_install_tool "evaluate" "ai_tools" "pip3" "core_ai_tools.zsh" "pip3 install evaluate" "Hugging Face Evaluate"; then
    print_success "Evaluate library installed"
fi

print_in_green "
   Core AI tools installation completed!

   Installed core AI frameworks and dependencies:
   - LangChain and community tools
   - ChromaDB vector database
   - CrewAI autonomous agents
   - OpenAI, Anthropic, and Google AI SDKs
   - Hugging Face Transformers and PyTorch
   - Vector databases (FAISS, Pinecone, Qdrant)
   - AI development utilities (Jupyter, Pandas, NumPy)
   - AI evaluation tools (RAGAS, DeepEval)

   These tools are now available for use by specialized AI scripts.
"

