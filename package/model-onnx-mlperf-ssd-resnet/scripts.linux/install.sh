#!/bin/bash

INSTALL_SCRIPT_NAME=install.sh

echo "${INSTALL_SCRIPT_NAME} : Fixing some PyTorch->ONNX transformation bugs..."
${CK_ENV_COMPILER_PYTHON_FILE} ${ORIGINAL_PACKAGE_DIR}/fix_unused_initializers_warnings.py ${INSTALL_DIR}/${PACKAGE_NAME}

echo "${INSTALL_SCRIPT_NAME} : Copying flatlabels.txt to ${INSTALL_DIR}..."
cp ${ORIGINAL_PACKAGE_DIR}/flatlabels.txt ${INSTALL_DIR}

echo "${INSTALL_SCRIPT_NAME} : Done."
