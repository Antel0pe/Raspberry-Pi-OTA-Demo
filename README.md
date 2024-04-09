# Raspberry-Pi-OTA-Demo

**Abstract & Introduction
**
This project presents an innovative Over-the-Air (OTA) software updating solution utilizing the QNX real-time operating system (RTOS) and the Raspberry Pi platform. In today's rapidly evolving technological landscape, ensuring that connected devices remain updated with the latest software versions is paramount for security, performance, and feature enhancements especially in remote locations. Traditional methods of software updating often require manual intervention, which can be cumbersome and time-consuming. Leveraging the robust capabilities of QNX and the flexibility of the Raspberry Pi, this project aims to streamline the software updating process by enabling remote updates over the air.

Our team researched various approaches to perform an integration of the QNX operating system image loader and implement an Over The Air (OTA) software solution on a Raspberry Pi device. In the end, we decided to create scripts that can partition the drive. The new partition will be loaded with a new QNX version. The scripts will then make sure that the new partition is used to boot and the old partition is later deleted. The old QNX version we will be using is version 7.1 and with our scripts, we updated the QNX OS to version 8.0.  At a high level, this entails: creating scripts that can modify the original bin file which runs QNX (version 7.1). This will involve having the scripts mount the SD card and modify the files which are used to boot QNX. The new updated files (version 8.0) will be placed here and then the system will be rebooted. The scripts will be working at a low level that modifies u-boot to load and install the new update directly. Note that U-Boot is responsible for initializing the hardware and loading the Linux kernel into memory before booting the operating system in Raspberry pi. U-Boot provides a flexible and customizable environment that allows users to configure various boot parameters, manage memory, and load kernel images from different storage devices. U-Boot’s characteristics allows us to make changes to it’s system and reboot updated versions of the QNX OS. Throughout the course of our project, we mainly used QNX documentation provided by Blackberry to deal with bugs, and to determine appropriate approaches to implement changes to the QNX OS on the Raspberry Pi (reference the pi documentation).

The following lists the high-level functionality of our solution along with it’s visual representation found in Figure 1:

Linux PC sends image via WIFI to Raspberry Pi board running QNX.
Linux PC connects via Wifi.
Linux PC sends new image via wifi.
QNX receives new image via wifi.
QNX loads a new image onto the SD card on Raspberry Pi.
Raspberry Pi reboots.
Raspberry Pi runs the new QNX image.

**Tutorial**

To Watch a Tutorial of this Project see the following link: 

To read a Tutorial of this Project, please see the PDF document in this repository entitled: Update RP4 Over-The-Air (OTA) Using QNX Report under the subheading, OTA Tutorial Guide.
