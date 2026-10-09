// swift-tools-version:6.0
import PackageDescription

// Masonry 官方没有 Package.swift（各 tag 都没有），这里拿 v1.1.0 的源码搭一个壳，
// 只为让 ChatKit 的 ObjC 侧能 #import <Masonry/Masonry.h>。publicHeadersPath 指向
// Sources 根，这样 <Masonry/Masonry.h> 才能命中 Sources/Masonry/Masonry.h。
let package = Package(
    name: "Masonry",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "Masonry", targets: ["Masonry"])
    ],
    targets: [
        .target(
            name: "Masonry",
            path: "Sources",
            publicHeadersPath: "."
        )
    ]
)
