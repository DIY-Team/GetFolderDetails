import GetFolderDetailsCore

let tool = FolderDetails()

do {
    try tool.run()
} catch {
    print("Whoops! An error occurred: \(error)")
}
