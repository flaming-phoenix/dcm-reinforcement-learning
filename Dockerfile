FROM python:3.12-slim

# Install system dependencies including swig
RUN apt-get update && apt-get install -y \
    swig \
    xvfb \
    ffmpeg \
    libgl1 \
    libglib2.0-0 \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /workspace

# Install Python packages
RUN pip install --no-cache-dir \
    "swig>=4.3.1.post0" \
    "gymnasium[box2d,other]==1.2.0" \
    "stable-baselines3[extra]==2.7.0" \
    pyvirtualdisplay \
    jupyter \
    notebook \
    gymnasium \
    numpy \
    matplotlib

# Expose Jupyter port
EXPOSE 8888

# Create a directory for notebooks
RUN mkdir -p /workspace/notebooks

# Start Jupyter notebook server
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]