@_private(sourceFile: "ContentView.swift") import rbxfpsunlocker_osx_gui
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/lincolnmuller/Documents/rbxfpsunlocker-osx-gui/rbxfpsunlocker-osx-gui/rbxfpsunlocker-osx-gui/ContentView.swift", line: 198)
        VStack {
            let current = options[currentSelection]
            ForEach(options.indices, id: \.self) { index in
                let option = options[index]
                HStack {
                    Image(systemName: option.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: __designTimeInteger("#9343.[7].[2].property.[0].[0].arg[0].value.[1].arg[2].value.[1].arg[0].value.[0].modifier[2].arg[0].value", fallback: 25))
                    Text(option.title)
                        .foregroundColor(current == option ? Color.orange : Color.primary)
                        
                    Spacer()
                }
                .padding(__designTimeInteger("#9343.[7].[2].property.[0].[0].arg[0].value.[1].arg[2].value.[1].modifier[0].arg[0].value", fallback: 8))
                .onTapGesture {
                    currentSelection = index
                }
            }
            Spacer()
        }
    
#sourceLocation()
    }
}

extension CreditsView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/lincolnmuller/Documents/rbxfpsunlocker-osx-gui/rbxfpsunlocker-osx-gui/rbxfpsunlocker-osx-gui/ContentView.swift", line: 185)
        VStack {
            Text(__designTimeString("#9343.[6].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Scripting and Functionality: Lincoln Muller"))
            Text(__designTimeString("#9343.[6].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "App Icon: Nolan Krahn"))
            Text(__designTimeString("#9343.[6].[0].property.[0].[0].arg[0].value.[2].arg[0].value", fallback: "Original fps unlocker script: github/lanylow"))
        }
    
#sourceLocation()
    }
}

extension SettingsView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/lincolnmuller/Documents/rbxfpsunlocker-osx-gui/rbxfpsunlocker-osx-gui/rbxfpsunlocker-osx-gui/ContentView.swift", line: 158)
        VStack {
            Toggle(isOn: $useVulkan, label: {
                Text(__designTimeString("#9343.[5].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0]", fallback: "Use Vulkan renderer -->"))
                +
                Text(__designTimeString("#9343.[5].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[1]", fallback: " unlimited FPS/no fps cap"))
                    .fontWeight(.bold)
            })
            Text(__designTimeString("#9343.[5].[2].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "Note: using Vulkan may break external displays."))
                .font(.footnote)
            Text(__designTimeString("#9343.[5].[2].property.[0].[0].arg[0].value.[2].arg[0].value", fallback: "By not enabling this, FPS will be unlocked to your display's refresh rate."))
                .fontWeight(.bold)
                .font(.footnote)
            Text(__designTimeString("#9343.[5].[2].property.[0].[0].arg[0].value.[3].arg[0].value", fallback: "It is recommended to only enable this feature if FPS is not unlocked to your full refresh rate."))
                .fontWeight(.bold)
                .font(.footnote)
            Toggle(isOn: $revertButton, label: {
                Text(__designTimeString("#9343.[5].[2].property.[0].[0].arg[0].value.[4].arg[1].value.[0].arg[0].value", fallback: "Revert install"))
            Text(__designTimeString("#9343.[5].[2].property.[0].[0].arg[0].value.[4].arg[1].value.[1].arg[0].value", fallback: "Changes button in home page to revert button"))
                .font(.footnote)
            })
            .padding(.top, __designTimeFloat("#9343.[5].[2].property.[0].[0].arg[0].value.[4].modifier[0].arg[1].value", fallback: 10.0))
        }
    
#sourceLocation()
    }
}

extension AboutView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/lincolnmuller/Documents/rbxfpsunlocker-osx-gui/rbxfpsunlocker-osx-gui/rbxfpsunlocker-osx-gui/ContentView.swift", line: 132)
        VStack(alignment: .center, spacing: __designTimeFloat("#9343.[4].[0].property.[0].[0].arg[1].value", fallback: 8.0)) {
            Text(__designTimeString("#9343.[4].[0].property.[0].[0].arg[2].value.[0].arg[0].value", fallback: "rbxfpsunlocker-osx-gui"))
                .font(.largeTitle)
                Text(__designTimeString("#9343.[4].[0].property.[0].[0].arg[2].value.[1].arg[0].value", fallback: "Version 0.8"))
                .font(.headline)
            Text(__designTimeString("#9343.[4].[0].property.[0].[0].arg[2].value.[2].[0]", fallback: "Built on Xcode:"))
                +
                Text(__designTimeString("#9343.[4].[0].property.[0].[0].arg[2].value.[2].[1]", fallback: " v15.2 (15C500b)"))
                .font(.headline)
            Text(__designTimeString("#9343.[4].[0].property.[0].[0].arg[2].value.[3].[0]", fallback: "Supports: "))
                +
                Text(__designTimeString("#9343.[4].[0].property.[0].[0].arg[2].value.[3].[1]", fallback: "macOS: 11.0+"))
                .font(.headline)
            Text(__designTimeString("#9343.[4].[0].property.[0].[0].arg[2].value.[4].[0]", fallback: "Build Date: "))
                +
                Text(__designTimeString("#9343.[4].[0].property.[0].[0].arg[2].value.[4].[1]", fallback: "January 22th, 2024"))
                .font(.headline)
        }
    
#sourceLocation()
    }
}

extension HomeView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/lincolnmuller/Documents/rbxfpsunlocker-osx-gui/rbxfpsunlocker-osx-gui/rbxfpsunlocker-osx-gui/ContentView.swift", line: 52)
        VStack {
            Image(__designTimeString("#9343.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Logo"))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: __designTimeInteger("#9343.[3].[3].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 150), height: __designTimeInteger("#9343.[3].[3].property.[0].[0].arg[0].value.[0].modifier[2].arg[1].value", fallback: 150))
            Text(__designTimeString("#9343.[3].[3].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "rbxfpsunlocker-osx-gui"))
                .font(.largeTitle)

            // Button to unlock FPS
            Button(action: {
                // Run the script
                if revertButton == false {
                    // run main install script
                    let scriptPath = Bundle.main.path(forResource: __designTimeString("#9343.[3].[3].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[0].[0].value.modifier[0].arg[0].value", fallback: "install"), ofType: __designTimeString("#9343.[3].[3].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[0].[0].value.modifier[0].arg[1].value", fallback: "sh"))
                    let argument = useVulkan ? __designTimeString("#9343.[3].[3].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[0].[1].value.then", fallback: "yes") : __designTimeString("#9343.[3].[3].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[0].[1].value.else", fallback: "no")
                    if let scriptPath = scriptPath {
                        let process = Process()
                        process.launchPath = __designTimeString("#9343.[3].[3].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[0].[2].[0].[1].[0]", fallback: "/usr/bin/osascript")
                        process.arguments = [__designTimeString("#9343.[3].[3].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[0].[2].[0].[2].[0]", fallback: "-e"), "do shell script \"sh \(scriptPath) \(argument)\" with administrator privileges"]
                        
                        let outputPipe = Pipe()
                        process.standardOutput = outputPipe

                        process.launch()
                        process.waitUntilExit()

                        // Read the output data
                        let outputData = outputPipe.fileHandleForReading.readDataToEndOfFile()
                        if let outputString = String(data: outputData, encoding: .utf8) {
                            processOutput = outputString
                        } else {
                            processOutput = __designTimeString("#9343.[3].[3].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[0].[2].[0].[8].[1].[0].[0]", fallback: "Error: Unable to read output.")
                        }
                    } else {
                        processOutput = __designTimeString("#9343.[3].[3].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[0].[2].[1].[0].[0]", fallback: "Error: install script not found in app's bundle.")
                    }
                } else {
                    // run revert script
                    let scriptPath = Bundle.main.path(forResource: __designTimeString("#9343.[3].[3].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[1].[0].value.modifier[0].arg[0].value", fallback: "revert"), ofType: __designTimeString("#9343.[3].[3].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[1].[0].value.modifier[0].arg[1].value", fallback: "sh"))
                    if let scriptPath = scriptPath {
                        let process = Process()
                        process.launchPath = __designTimeString("#9343.[3].[3].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[1].[1].[0].[1].[0]", fallback: "/usr/bin/osascript")
                        process.arguments = [__designTimeString("#9343.[3].[3].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[1].[1].[0].[2].[0]", fallback: "-e"), "do shell script \"sh \(scriptPath)\" with administrator privileges"]
                        
                        let outputPipe = Pipe()
                        process.standardOutput = outputPipe

                        process.launch()
                        process.waitUntilExit()

                        // Read the output data
                        let outputData = outputPipe.fileHandleForReading.readDataToEndOfFile()
                        if let outputString = String(data: outputData, encoding: .utf8) {
                            processOutput = outputString
                        } else {
                            processOutput = __designTimeString("#9343.[3].[3].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[1].[1].[0].[8].[1].[0].[0]", fallback: "Error: Unable to read output.")
                        }
                    } else {
                        processOutput = __designTimeString("#9343.[3].[3].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[1].[1].[1].[0].[0]", fallback: "Error: revert script not found in app bundle")
                    }
                }

            }, label: {
                Text(revertButton ? __designTimeString("#9343.[3].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[0].arg[0].value.then", fallback: "Revert") : __designTimeString("#9343.[3].[3].property.[0].[0].arg[0].value.[2].arg[1].value.[0].arg[0].value.else", fallback: "Unlock FPS"))
                    .font(.body)
                    .fontWeight(.heavy)
                    .foregroundColor(revertButton ? Color.red : Color.green)
            })
            
            // Display process output
            Text(processOutput)
                .foregroundColor(.green) // Customize the color if needed
            
            Spacer()
        }
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/lincolnmuller/Documents/rbxfpsunlocker-osx-gui/rbxfpsunlocker-osx-gui/rbxfpsunlocker-osx-gui/ContentView.swift", line: 29)
        NavigationView {
            ListView(options: options, currentSelection: $currentOption)
            switch currentOption {
            case 0:
                AboutView()
            case 1:
                HomeView(useVulkan: $useVulkan, revertButton: $revertButton, processOutput: $processOutput)
            case 2:
                SettingsView(useVulkan: $useVulkan, revertButton: $revertButton)
            case 3:
                CreditsView()
            default:
                HomeView(useVulkan: $useVulkan, revertButton: $revertButton, processOutput: $processOutput)
            }
        }
    
#sourceLocation()
    }
}

import struct rbxfpsunlocker_osx_gui.Option
import struct rbxfpsunlocker_osx_gui.ContentView
import struct rbxfpsunlocker_osx_gui.HomeView
import struct rbxfpsunlocker_osx_gui.AboutView
import struct rbxfpsunlocker_osx_gui.SettingsView
import struct rbxfpsunlocker_osx_gui.CreditsView
import struct rbxfpsunlocker_osx_gui.ListView
#Preview {
    ContentView()
}

// Support for back-deployment.
@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, watchOS 6.0, *)
struct RegistryCompatibilityProvider_line_222: SwiftUI.PreviewProvider {
    static var previews: some SwiftUI.View {
        #if os(macOS)
        let __makePreview: () -> any SwiftUI.View = {
            ContentView()
        }
        SwiftUI.VStack {
            SwiftUI.AnyView(__makePreview())
        }
        #else
        // The preview is not available.
        SwiftUI.EmptyView()
        #endif
    }
}




