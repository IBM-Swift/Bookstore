import PackageDescription

let package = Package(
    name: "bookstore",
    targets: [
    	Target(name: "Server",
    		dependencies: [.Target(name: "Bookstore")]),
    	Target(name: "Bookstore")
    ],
	dependencies: [
		.Package(url: "https://github.com/IBM-Swift/HeliumLogger.git",       majorVersion: 1, minor: 1),
		.Package(url: "https://github.com/IBM-Swift/Kitura.git",             majorVersion: 1, minor: 2),
		.Package(url: "https://github.com/IBM-Swift/Swift-Kuery-PostgreSQL", majorVersion: 0, minor: 2),
		.Package(url: "https://github.com/mxcl/PromiseKit",                  majorVersion: 4, minor: 0)
	]
)
