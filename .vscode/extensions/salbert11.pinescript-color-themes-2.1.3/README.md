![](https://github.com/jeyllani/pinethemes/blob/main/images/pineicon.png?raw=true")
# PineScript Color Themes
## Companion Themes for PineScript Helper Extension

## Overview
**Note: This is a forked project from JeylaniB's [Pine Editor Themes](https://marketplace.visualstudio.com/items?itemName=JeylaniB.pine-editor-themes) extension.**

**PineScript Color Themes** is a theme pack designed to enhance your experience with the [**PineScript Helper**](https://marketplace.visualstudio.com/items?itemName=salbert11.pinescript-helper) extension.

### Features

- A collection of color themes:
  - **Pine Theme Blue**

  ![](https://github.com/salbert11/pinethemes/blob/pinescript-color-themes/images/pine-theme-blue.png?raw=true)
  ---
  - **Pine Theme Blue Bold**

  ![](https://github.com/salbert11/pinethemes/blob/pinescript-color-themes/images/pine-theme-blue-bold.png?raw=true)
  ---
  - **Pine Theme Dark Low Contrast**

  ![](https://github.com/salbert11/pinethemes/blob/pinescript-color-themes/images/pine-theme-dark-low-contrast.png?raw=true)
  ---
  - **Pine Theme Dark Bold Low Contrast**
  
  ![](https://github.com/salbert11/pinethemes/blob/pinescript-color-themes/images/pine-theme-dark-bold-low-contrast.png?raw=true)
  ---
  - **Pine Theme Grey**
  
  ![](https://github.com/salbert11/pinethemes/blob/pinescript-color-themes/images/pine-theme-grey.png?raw=true)
  ---
  - **Pine Theme Grey Bold**
  
  ![](https://github.com/salbert11/pinethemes/blob/pinescript-color-themes/images/pine-theme-grey-bold.png?raw=true)
  ---
  - **Pine Theme Grey Candy**
  
  ![](https://github.com/salbert11/pinethemes/blob/pinescript-color-themes/images/pine-theme-grey-candy.png?raw=true)
  ---
  - **Pine Theme Light**
  
  ![](https://github.com/salbert11/pinethemes/blob/pinescript-color-themes/images/pine-theme-light.png?raw=true)
  ---
  - **Pine Theme Light Bold**
  
  ![](https://github.com/salbert11/pinethemes/blob/pinescript-color-themes/images/pine-theme-light-bold.png?raw=true)

---

## Installation
### Method 1: Install from VS Code Command Palette

Launch VS Code Command Palette (Ctrl+P), paste the following command, and press enter.
```
ext install salbert11.pinescript-color-themes
```

---

### Method 2: Download from GitHub Release

1. Visit the PineScript Color Themes [GitHub Releases page](https://github.com/salbert11/pinethemes/releases).
2. Download the latest `.vsix` package corresponding to the version you desire.
3. Open Visual Studio Code.
4. Go to the Extensions view by clicking on the Extensions icon in the Activity Bar on the side of the window.
5. Click on the gear icon at the top of the Extensions view and select "Install from VSIX..."
6. Locate and select the downloaded `.vsix` file.
7. Click "Install" when prompted.

---

### Method 3: Clone and Compile in Visual Studio Code 

1. Clone the **PineScript Color Themes** repository to your local machine using the following command:

```bash
  git clone https://github.com/salbert11/pinethemes.git
```
2. Open Visual Studio Code and navigate to the extension's directory by selecting **File > Open Folder**  and choosing the cloned "pinethemes" folder. 
3. Install the required dependencies by running the following command in the integrated terminal of Visual Studio Code:

```bash
  npm install
```   
4. Once the dependencies are installed, build the extension by running the following command in the integrated terminal:

```bash
  vsce package
``` 
5. After a successful build, the compiled extension file (`pinescript-color-themes.vsix`) will be created in the root directory of the extension.
6. To install the extension, run the following command in the integrated terminal:
```bash
  code --install-extension pinescript-color-themes.vsix
```

---

## Release Notes
#### **2.1.3**

*13.12.2023 **Update*** 
- Minor fix

---

## Feedback and Issues

If you encounter any issues or have suggestions for improvement, please report them on [GitHub](https://github.com/salbert11/pinethemes/issues). 

---

## License

This extension is licensed under the [MIT License](https://github.com/salbert11/pinethemes/blob/HEAD/LICENSE.md).

#### Version 
- *2.1.3*