# K3-Remote-VFO
Remote VFO and Button Interface for Elecraft, Kenwood and other radio transceivers

## Introduction
The system is comprised of two pieces
 - A Remote Controls Unit
 - A Connector Interface to the Rig 
 
![Main Remote Control Unit](https://imgur.com/RJ775HM.png)
![Connector Interface](https://imgur.com/VitQAPq.png)

The Connector Interface goes between the control PC and the Rig using classic RS-232. This system is not currently set up to support modern USB interfaces. The main Remote control is tethered to the Connector Interface using a RJ12 (6P/6J) straight-through cable.  Power (5VDC) is supplied to the device from a USB port or power supply to the Connector Interface via a micro-USB jack.

## About the Design Data

The Mechanics were designed in Fusion 360, A full step-assembly is in the repo which could be pulled into any modern CAD package for alteration.   

The construction is plastic. The case frame was FDM printed from PLA, and the top/bottom were laser cut from 
0.08" acrylic. The main-dial and keycaps were SLA (resin) printed on an [Elegoo Mars](https://www.elegoo.com/collections/3d-printing/products/elegoo-mars-3-lcd-3d-printer) printer.

The Electronics were designed in KiCAD. KiCAD is free and easy to use, so this should be a good start for further work. I used [JLCPCB](https://jlcpcb.com/) to manufacture the PCBs.

![PCB Setup](https://imgur.com/WaAMKzH.png)

The Software is Arduino-based and runs on a [STM32F103C8 BlackPill](https://hobbycomponents.com/st-micro-electronics/960-stm32f103-black-pill-development-board). The project is in Visual Studio Code, and PlatformIO which are currently both free tools.  The Maple bootloader was installed to make the development quick and easy and is included in the repo.

## Updating Encoder and Key Definitions

The keys are assigned text-macros which are stored in non-volatile memory on the Remote unit. The encoder-wheel is handled the same way. The wheel can be pressed and therefore the operation has been divided into four "speeds" (as is indicated by the LEDs below the wheel.)  In the case of the encoder, the macros are also divided into four sets up ***"up"*** and ***"down"*** movements and the text contents are transmitted on each pulse of the wheel.

The default baud rate is ***38400*** and the Remote can be updated in-situ using a terminal emulator such as [RealTerm](https://realterm.sourceforge.io/).   

The following text could be uploaded to the remote.  `'$$$'` is used to mark the beginning of the upload, and `'&&&'` is used to end the upload.  Note that the macros are defined as ```<Kx> text message </K>'``` and `<Ex> text message </E>`. 

> (*Note the messages defined below are for the Elecraft K3.)*

```
$$$			// 3 dollar start of file

<K0>SWT11;</K>  //  A/B  menus stuff here...
<K1>SWT13;</K>  // A->B
<K2>SWT42;</K>  // SPOT

<K3>SWT29;</K>  // XFILT

<K4>SWT21;</K>  // M1-M2
<K5>SWT31;</K>  
<K6>SWT35;</K>  
<K7>SWT39;</K>  

<E0>UP4;</E>    // encoder modes here 0-3, increment/decrement
<E1>DN4;</E>    

<E2>UP8;</E>    
<E3>DN8;</E>    

<E4>UP1;</E>    
<E5>DN1;</E>    

<E6>UP0;</E>    
<E7>DN0;</E>	// end of file is ampersand

&&&
```

### Enjoy, 73,  de WR9R

