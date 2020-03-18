import Files

public final class FolderDetails {

    private let arguments: [String]

    public init(arguments: [String] = CommandLine.arguments) {
        self.arguments = arguments
    }
    
    public func run() throws {
        print("Getting folder details now...")
        printContents(for: Folder.current, tab: "")
    }

    func printContents(for folder: Folder, tab: String = "\t") {
        print("\(tab)>\(folder.name)")
        folder.files.forEach({
            print("\(tab)\t>\($0.name)")
        })
        folder.subfolders.forEach({
            printContents(for: $0, tab: "\t\(tab)")
        })
    }
}
