//
//  ContentView.swift
//  rbxfpsunlocker-osx-gui
//
//  Created by Lincoln Muller on 2024-01-19.
//
import SwiftUI

struct Option: Hashable {
    let title: String
    let imageName: String
}


struct ContentView: View {
    @State var currentOption = 2
    @State private var useVulkan = false
    @State private var processOutput = ""
    @State private var revertButton = false
    
    let options: [Option] = [
        .init(title: "About", imageName: "info.circle"),
        .init(title: "Home", imageName: "house"),
        .init(title: "Settings", imageName: "gear"),
        .init(title: "Credits", imageName: "person.crop.circle.badge.checkmark"),
    ]

    var body: some View {
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
    }
}

struct HomeView: View {
    @Binding var useVulkan: Bool
    @Binding var revertButton: Bool
    @Binding var processOutput: String
    var body: some View {
        VStack {
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            Text("rbxfpsunlocker-osx-gui")
                .font(.largeTitle)

            // Button to unlock FPS
            Button(action: {
                // Run the script
                if revertButton == false {
                    // run main install script
                    let scriptPath = Bundle.main.path(forResource: "install", ofType: "sh")
                    let argument = useVulkan ? "yes" : "no"
                    if let scriptPath = scriptPath {
                        let process = Process()
                        process.launchPath = "/usr/bin/osascript"
                        process.arguments = ["-e", "do shell script \"sh \(scriptPath) \(argument)\" with administrator privileges"]
                        
                        let outputPipe = Pipe()
                        process.standardOutput = outputPipe

                        process.launch()
                        process.waitUntilExit()

                        // Read the output data
                        let outputData = outputPipe.fileHandleForReading.readDataToEndOfFile()
                        if let outputString = String(data: outputData, encoding: .utf8) {
                            processOutput = outputString
                        } else {
                            processOutput = "Error: Unable to read output."
                        }
                    } else {
                        processOutput = "Error: install script not found in app's bundle."
                    }
                } else {
                    // run revert script
                    let scriptPath = Bundle.main.path(forResource: "revert", ofType: "sh")
                    if let scriptPath = scriptPath {
                        let process = Process()
                        process.launchPath = "/usr/bin/osascript"
                        process.arguments = ["-e", "do shell script \"sh \(scriptPath)\" with administrator privileges"]
                        
                        let outputPipe = Pipe()
                        process.standardOutput = outputPipe

                        process.launch()
                        process.waitUntilExit()

                        // Read the output data
                        let outputData = outputPipe.fileHandleForReading.readDataToEndOfFile()
                        if let outputString = String(data: outputData, encoding: .utf8) {
                            processOutput = outputString
                        } else {
                            processOutput = "Error: Unable to read output."
                        }
                    } else {
                        processOutput = "Error: revert script not found in app bundle"
                    }
                }

            }, label: {
                Text(revertButton ? "Revert" : "Unlock FPS")
                    .font(.body)
                    .fontWeight(.heavy)
                    .foregroundColor(revertButton ? Color.red : Color.green)
            })
            
            // Display process output
            Text(processOutput)
                .foregroundColor(.green) // Customize the color if needed
            
            Spacer()
        }
    }
}

struct AboutView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 8.0) {
            Text("rbxfpsunlocker-osx-gui")
                .font(.largeTitle)
                Text("Version 0.8")
                .font(.headline)
            Text("Built on Xcode:")
                +
                Text(" v15.2 (15C500b)")
                .font(.headline)
            Text("Supports: ")
                +
                Text("macOS: 11.0+")
                .font(.headline)
            Text("Build Date: ")
                +
                Text("January 22th, 2024")
                .font(.headline)
        }
    }
}


struct SettingsView: View {
    @Binding var useVulkan: Bool
    @Binding var revertButton: Bool
    var body: some View {
        VStack {
            Toggle(isOn: $useVulkan, label: {
                Text("Use Vulkan renderer -->")
                +
                Text(" unlimited FPS/no fps cap")
                    .fontWeight(.bold)
            })
            Text("Note: using Vulkan may break external displays.")
                .font(.footnote)
            Text("By not enabling this, FPS will be unlocked to your display's refresh rate.")
                .fontWeight(.bold)
                .font(.footnote)
            Text("It is recommended to only enable this feature if FPS is not unlocked to your full refresh rate.")
                .fontWeight(.bold)
                .font(.footnote)
            Toggle(isOn: $revertButton, label: {
                Text("Revert install")
            Text("Changes button in home page to revert button")
                .font(.footnote)
            })
            .padding(.top, 10.0)
        }
    }
}

struct CreditsView: View {
    var body: some View {
        VStack {
            Text("Scripting and Functionality: Lincoln Muller")
            Text("App Icon: Nolan Krahn")
            Text("Original fps unlocker script: github/lanylow")
        }
    }
}

struct ListView: View {
    let options: [Option]
    @Binding var currentSelection: Int

    var body: some View {
        VStack {
            let current = options[currentSelection]
            ForEach(options.indices, id: \.self) { index in
                let option = options[index]
                HStack {
                    Image(systemName: option.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25)
                    Text(option.title)
                        .foregroundColor(current == option ? Color.orange : Color.primary)
                        
                    Spacer()
                }
                .padding(8)
                .onTapGesture {
                    currentSelection = index
                }
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
