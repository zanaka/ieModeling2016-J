//
//  DatabaseController.swift
//  tetsudawaKnight
//
//  Created by Kaito Ishizuka on 2017/01/22.
//  Copyright © 2017年 Kaito Ishizuka. All rights reserved.
//

import Foundation
import CoreData
                  
class DatabaseController {
    
    private init(){
        
    }
    
    class func getContext() -> NSManagedObjectContext{
        return DatabaseController.persistentContainer.viewContext
    }
    
    // MARK: - Core Data stack
    
    static var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
         */
        let container = NSPersistentContainer(name: "DataModel") //ここを作ったcore dataのファイル名に変更(拡張子不要)
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    class func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    class func reloadTask() {
    let fetchRequest:NSFetchRequest<Task> = Task.fetchRequest()
    do{
        taskList.removeAll()
        let searchResults = try DatabaseController.getContext().fetch(fetchRequest)
        var i = 0
        for result in searchResults as [Task]{
            taskList.append(TaskStruct(name: result.taskName!, yen: Int16(result.clearPrice)))
            i+=1
        }
    
    }
    catch{
        }
    }
    
    class func addTask(name: String, price: Int){
        let task:Task = NSEntityDescription.insertNewObject(forEntityName: "Task", into: DatabaseController.getContext()) as! Task
        task.taskName = name
        task.clearPrice = Int16(price)
        self.saveContext()
    }

}
