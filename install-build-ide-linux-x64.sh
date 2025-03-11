git clone https://github.com/zetsu012/ai-agent.git
cd ai-agent
npm run install:all
export ESLINT_USE_FLAT_CONFIG=false
npm run package

cd ../..

# Run npm commands
npm install
npm run compile

npm run monaco-compile-check
npm run valid-layers-check
npm run gulp compile-build
npm run gulp compile-extension-media
npm run gulp compile-extensions-build
npm run gulp minify-vscode
npm run gulp vscode-linux-x64-min-ci
npm run gulp vscode-linux-x64-build-deb
