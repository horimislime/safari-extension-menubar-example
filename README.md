# safari-extension-menubar-example
This project demonstrates how to communicate between injected script and menubar.

# Environment
　|Version
-|-
macOS|Mojave 10.14.2
Safari|12.0.2
Xcode|10.1

# Running Demo
Using demo app, you can copy location.href to clipboard by clicking the menubar icon.

![safari-app-extension-example](https://user-images.githubusercontent.com/264370/52518699-11fab080-2c92-11e9-8c87-f556d534cc8b.gif)

## Build and Run
Before you build xcode project, make sure you check `Allow Unsigned Extensions` on `Develop` menu of Safari statusbar item.

<img width="320" alt="screen shot 2019-02-09 at 16 36 02" src="https://user-images.githubusercontent.com/264370/52518715-6736c200-2c92-11e9-9a9a-f85a5284a5ec.png">

Select `MenubarExample` scheme, then run xcode project.

After finish running, MenubarExample will appear on Safari extension setting. Click checkbox to complete installation.

<img width="936" alt="screen shot 2019-02-09 at 18 06 04" src="https://user-images.githubusercontent.com/264370/52518884-66ebf600-2c95-11e9-9ad2-84a7cadca7b3.png">

## Confirm injected script works
You can check if injected script is properly loaded using Safari Inspector. The source of injected script can be checked in `Resources` tab.

<img width="1110" alt="screen shot 2019-02-09 at 16 37 57" src="https://user-images.githubusercontent.com/264370/52518724-89c8db00-2c92-11e9-8db5-db898d2735cd.png">

## Debugging app extension
`NSLog` and `print` message does not appear on Xcode console by limitation of Safari App Extension. If you need some logging to debug code, use Console.app to see log message.

<img width="952" alt="screen shot 2019-02-09 at 16 47 24" src="https://user-images.githubusercontent.com/264370/52518727-8e8d8f00-2c92-11e9-822e-d79656c86954.png">
