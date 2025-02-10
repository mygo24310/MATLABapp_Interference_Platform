# InterXplore-A MATLAB-based virtual simulation teaching platform for double-slit interference and multi-hole interference

## Introduction
InterXplore is an interactive MATLAB App designed for simulating Young's Double-Slit Interference and Multi-Hole Interference experiment, providing an intuitive platform for optics teaching and research. This app allows users to visualize the interference patterns and explore the relationship between various parameters such as light wavelength, slit width, refractive index, and more.

- **Simulate interference patterns**: Generate interference images for changing parameters such as incident light wavelength, slit width, and occlusion thickness.
- **Fringe displacement and period calculation**: Automatically calculate the fringe shift size and translation period based on user inputs.
- **Polychromatic light simulation**: Supports simulation of multi-color light spectra and free superposition of different light wavelengths.
- **Multi-Hole Interference**: Simulate interference patterns from multiple holes and visualize the resulting interference effect.
- **Interactive controls**: Real-time control of simulation parameters with sliders, dropdowns, and checkboxes.

## Installation
Follow these steps to set up and run the app on your local machine, two installation and usage methods applicable to different situations will be provided below.
1. Open the Project in MATLAB(Using .mlapp files)
- Visit this code repository and download the latest `Interference Experiment Platform.mlappinstall` file
- Open MATLAB and use the **App Designer** feature to install and run the `Interference Experiment Platform.mlappinstall` app
2. Open the Project without MATLAB(Run directly from the installer)
- If you do not have MATLAB installed on your computer but want to run app directly, you can install `MyAppInstaller_web.exe` from this code repository to install and use the application.
- The installation process requires an Internet connection. The installer will automatically download the required MATLAB Runtime environment and install the application to the specified directory.
3.After the download is successful, you will see the following general interface. You can enter different experimental operation interfaces from the corresponding buttons.
  ![1739203655536_00A87363-78A1-4f86-9BFE-EACC9D6DBABF](https://github.com/user-attachments/assets/a1cf5e55-9dfa-4206-ab5e-4ad118163f6b)

## System Requirements
To run **APP**, the following software and hardware are required:

- **MATLAB R2021a** or later
- **Operating System**: Windows 10 or later
- **Disk Space**: 10 GB available disk space
- **Memory**: Recommended to have at least **8GB RAM** for smooth operation.

## Usage
The following is a brief description of the two simulation experiments in the app and the results. Each experiment has a corresponding instruction interface.
1. Young's double-slit interference simulation experiment
- The experimental platform can display different interference fringe images and light intensity distribution images by adjusting the wavelength λ of monochromatic light, the distance d between the double slits, the distance D from the double slits to the screen, the distance L from the light source to the double slits, the distance a of the light source moving up and down, and inserting a glass sheet with a refractive index of n and a thickness of h. It can also adjust the coordinate range and division degree to adjust the image display.
![1739203811241_EB165B26-B434-422c-AA4C-6ABFB85DAEC8](https://github.com/user-attachments/assets/deb0c24e-9ade-4ecf-ae32-daa9201b77bc)
2. Complex color light simulation experiment
- In the complex color light simulation experiment，this experiment can generate rich polychromatic light interference patterns and light intensity distribution curves by adjusting the wavelengths of seven types of visible light and their respective light intensity ratios.
  ![1739204239240_54A49043-BAB1-4bff-B89A-AB0CC504FFCB](https://github.com/user-attachments/assets/c99d8ee2-46b4-4b9e-871a-7ac615cbdb59)
3. Multi-aperture interference simulation experiment
- This simulation experiment can explore the interference fringes and light intensity distribution under symmetrical arrangements such as two-hole interference (horizontal arrangement), three-hole interference (equilateral triangle arrangement), and four-hole interference (horizontal arrangement and square arrangement) by adjusting parameters such as the wavelength λ of monochromatic light, the distance D from the observation screen to the pinhole plane, the distance m between the two pinholes, and the vertical distance L between the light source and the pinhole plane.
- This experiment can also select the multi-hole interference experiment in the custom mode, and explore the multi-hole interference situations under various regular or irregular arrangements by customizing the pinhole coordinates (maximum 6, minimum 2), and discover the laws of different interference phenomena. At the same time, the coordinates and amplitude of the light source can be adjusted, and the initial phases of different small holes can be set to enable the experiment to truly simulate various situations under real conditions and achieve precise control and measurement of the light field.
  ![1739204453290_62B3E1A6-2E72-4b34-9647-EECA72DC7EA8](https://github.com/user-attachments/assets/5428c02e-ce7d-4ad3-abe5-505effae728b)

