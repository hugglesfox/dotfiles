# Run a command using the nvidia GPU
#!/bin/bash

set -aux

__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia $@
