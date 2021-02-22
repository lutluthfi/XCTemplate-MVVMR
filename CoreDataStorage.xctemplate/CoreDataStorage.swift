//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

import CoreData
import Foundation

public enum CoreDataStorageError: Error {
    case readError(Error)
    case saveError(Error)
    case deleteError(Error)
}

public protocol CoreDataStorageShared {
    
    var fetchCollectionTimeout: TimeInterval { get }
    
    var fetchElementTimeout: TimeInterval { get }
    
    var insertCollectionTimeout: TimeInterval { get }
    
    var insertElementTimeout: TimeInterval { get }
    
    func saveContext()
    
    func performBackgroundTask(_ block: @escaping (NSManagedObjectContext) -> Void)
    
}

public final class CoreDataStorage {
    
    public static let shared: CoreDataStorageShared = CoreDataStorage()
    
    private init() { }
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "CoreDataStorage")
        container.loadPersistentStores { _, error in
            if let error = error as NSError? {
                debugPrint("CoreDataStorage Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
}

extension CoreDataStorage: CoreDataStorageShared {
    
    public var fetchCollectionTimeout: TimeInterval {
        return TimeInterval(5)
    }
    
    public var fetchElementTimeout: TimeInterval {
        return TimeInterval(2)
    }
    
    public var insertCollectionTimeout: TimeInterval {
        return TimeInterval(5)
    }
    
    public var insertElementTimeout: TimeInterval {
        return TimeInterval(2)
    }
    
    public func saveContext() {
        let context = self.persistentContainer.viewContext
        guard context.hasChanges else { return }
        do {
            try context.save()
        } catch {
            debugPrint("CoreDataStorage Unresolved error \(error), \((error as NSError).userInfo)")
        }
    }
    
    public func performBackgroundTask(_ block: @escaping (NSManagedObjectContext) -> Void) {
        self.persistentContainer.performBackgroundTask(block)
    }
    
}
