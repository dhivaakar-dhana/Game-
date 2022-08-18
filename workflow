name: Get Unity license activation file 🔐

on: workflow_dispatch

jobs:
  requestManualActivationFile:
    name: Request manual activation file 🔑
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2

      - uses: game-ci/unity-request-activation-file@v2
        id: getManualLicenseFile

      - uses: actions/upload-artifact@v2
        with:
          name: Manual Activation File
          path: ${{ steps.getManualLicenseFile.outputs.filePath }}
Footer
© 2022 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
