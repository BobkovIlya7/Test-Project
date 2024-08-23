//
//  TestTitleModel.swift
//  Test
//
//  Created by Ilya Bobkov on 23.08.24.
//

struct TestItem {
    let title: String
    let name: String
    let surname: String
}

struct TestItems {
    let items: [TestItem]
}

extension TestItems {
    static func getItems() -> TestItems {
        let items = [
            TestItem(title: "Об приложении",
                     name: "Илья",
                     surname: "Бобков")
        ]
        return TestItems(items: items)
    }
}
