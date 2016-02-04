func processFile(filename: String) throws {
    if exists(filename) {
        let file = open(filename)
        defer {
            close(file)
        }

        while let line = try file.readline() {
            // Work with the file
        }
        // close(file) is called here, at the end of the scope.
    }
}
