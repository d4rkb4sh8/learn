 The `lsusb` command in Linux is used to list USB devices connected to your system. It displays detailed information about each USB device, including its vendor ID, product ID, and other descriptors. Here are some key features and an example usage of the `lsusb` command:

### Key Features of lsusb Command

1. **List All USB Devices**: Displays a list of all connected USB devices.
2. **Detailed Information**: Provides detailed information about each device, including vendor ID, product ID, class, subclass, protocol, and other descriptors.
3. **Human-Readable Output**: The output is often human-readable, making it easy to understand the type of devices connected.
4. **Filtering by Bus and Device**: You can filter the output by specifying the bus number and device number.
5. **JSON Format**: Some versions of `lsusb` support JSON format for more structured output.

### Example Usage

Here are some examples demonstrating how to use the `lsusb` command:

#### 1. Basic Usage
```sh
lsusb
```
This will list all USB devices connected to your system, showing their vendor ID and product ID.

Example Output:
```
Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 001 Device 004: ID 8087:0a2b Intel Corp.
Bus 001 Device 003: ID 05e3:0608 Genesys Logic, Inc. USB 3.0 to RS-232/422/485 Adapter
Bus 001 Device 002: ID 8087:0024 Intel Corp.
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
```

#### 2. Filtering by Bus and Device Number
```sh
lsusb -t
```
This will list the USB devices grouped by bus and device number, showing a tree-like structure.

Example Output:
```
/:  Bus 01/Port 01: Dev 1, Class=root_hub, Driver=uhci_hcd/4p, 480M
    |__ Port 02: Dev 2, If 0, Class=Hub, Driver=hub
        |__ Port 03: Dev 3, If 0, Class=Human Interface Device, Driver=usbhid
            |__ Port 04: Dev 4, If 1, Class=HID, Subclass=0x02, Protocol=0x03, Vendor=Logitech, Product=USB Receiver
```

#### 3. JSON Format (For Versions That Support It)
```sh
lsusb -t -v -d 8087:0a2b
```
This will provide detailed information about the USB device with the specified vendor ID and product ID in JSON format.

Example Output:
```json
{
  "bus": "001",
  "device": "004",
  "idVendor": "8087",
  "idProduct": "0a2b",
  "class": "0x00",
  "subclass": "0x00",
  "protocol": "0x00",
  "speed": "High (480Mbps)",
  "description": "Intel Corp. USB3.0 Hub"
}
```

#### 4. Filtering by Vendor ID and Product ID
```sh
lsusb -d 1d6b:0003
```
This will list only the devices with the specified vendor ID and product ID.

Example Output:
```
Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
```

These examples demonstrate how to use various options of the `lsusb` command to get detailed information about USB devices connected to your system.

