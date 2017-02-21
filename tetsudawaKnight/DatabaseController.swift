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
    
    class func reloadAllTask() {
        let fetchRequest:NSFetchRequest<Task> = Task.fetchRequest()
        do{
            taskList.removeAll()
            let searchResults = try DatabaseController.getContext().fetch(fetchRequest)
            
            
            for result in searchResults as [Task]{
                //DatabaseController.getContext().delete(result)
                //self.saveContext()
                taskList.append(TaskStruct(name: result.taskName!, yen: result.clearPrice, id: result.id!, iscomp: result.isComp!))
            }
            
        }
        catch{
        }
    }
    
    
    class func reloadTask() {
    let fetchRequest:NSFetchRequest<Task> = Task.fetchRequest()
    do{
        taskList.removeAll()
        let predicate = NSPredicate(format: "isComp = 'false'")
        fetchRequest.predicate = predicate
        let searchResults = try DatabaseController.getContext().fetch(fetchRequest)
        
        
        for result in searchResults as [Task]{
            //DatabaseController.getContext().delete(result)
            //self.saveContext()
            taskList.append(TaskStruct(name: result.taskName!, yen: result.clearPrice, id: result.id!, iscomp: result.isComp!))
        }
    
    }
    catch{
        }
    }

    class func HisReloadTask() {
        let fetchRequest:NSFetchRequest<Task> = Task.fetchRequest()
        do{
            HisTaskList.removeAll()
            let predicate = NSPredicate(format: "isComp = 'true'")
            fetchRequest.predicate = predicate
            let searchResults = try DatabaseController.getContext().fetch(fetchRequest)
            
            for result in searchResults as [Task]{
                //DatabaseController.getContext().delete(result)
                //self.saveContext()
                HisTaskList.append(TaskStruct(name: result.taskName!, yen: Int16(result.clearPrice), id: result.id!, iscomp: result.isComp!))
            }
            
        }
        catch{
        }
    }
    
    class func addTask(name: String, price: Int, iscomp: String){
        let task:Task = NSEntityDescription.insertNewObject(forEntityName: "Task", into: DatabaseController.getContext()) as! Task
        
        
        task.taskName = name
        task.clearPrice = Int16(price)
        task.id = NSUUID().uuidString
        task.isComp = iscomp
        
        self.saveContext()
    }
    
    class func getTask(id :String) -> TaskStruct  {
        var receiveTask : TaskStruct = TaskStruct.init(name: "task", yen: 100, id: "aaaa", iscomp: "false")
        let getRequest:NSFetchRequest<Task> = Task.fetchRequest()
        let predicate = NSPredicate(format: "id == %@", id)
        getRequest.predicate = predicate
        do{
            let searchResults = try DatabaseController.getContext().fetch(getRequest)
            for result in searchResults as [Task]{
                receiveTask.id = result.id!
                receiveTask.isComp = result.isComp!
                receiveTask.name = result.taskName!
                receiveTask.yen = result.clearPrice
            }
        }
        catch{}
        return receiveTask
    }
    
    class func editTask(searchId :String, chengeName :String, chengePrice :Int16, chengeIsComp: String){
        let deleteRequest:NSFetchRequest<Task> = Task.fetchRequest()
        let predicate = NSPredicate(format: "id == %@", searchId)
        deleteRequest.predicate = predicate
        do{
            let searchResults = try DatabaseController.getContext().fetch(deleteRequest)
            for result in searchResults as! [Task]{
                let record = result as! NSManagedObject
                record.setValue(chengeName, forKey: "taskName")
                record.setValue(chengePrice, forKey: "clearPrice")
                record.setValue(chengeIsComp, forKey: "isComp")
            }
        }
        catch{
            
        }
        self.saveContext()
    }
    
    class func clearTask(id :String){
        let clearRequest:NSFetchRequest<Task> = Task.fetchRequest()
        let predicate = NSPredicate(format: "id == %@", id)
        clearRequest.predicate = predicate
        do{
            let searchResults = try DatabaseController.getContext().fetch(clearRequest)
        }
        catch{
            
        }
        self.saveContext()
    }
    
    class func deleteTask(id :String){
        let deleteRequest:NSFetchRequest<Task> = Task.fetchRequest()
        let predicate = NSPredicate(format: "id == %@", id)
        deleteRequest.predicate = predicate
        do{
            let searchResults = try DatabaseController.getContext().fetch(deleteRequest)
            for result in searchResults as! [Task]{
                DatabaseController.getContext().delete(result)
            }
        }
        catch{
            
        }
        self.saveContext()
    }
    
    class func reloadUser() {
        let fetchRequest:NSFetchRequest<User> = User.fetchRequest()
        do{
            UserList.removeAll()
            let searchResults = try DatabaseController.getContext().fetch(fetchRequest)
            
            
            for result in searchResults as [User]{
                //DatabaseController.getContext().delete(result)
                //self.saveContext()
                UserList.append(UserStruct(name: result.name!, yen: result.money, id: result.id!, isParent: result.isParent! ,password: result.password!))
            }
            
        }
        catch{
        }
    }
    
    class func editUser(searchId :String, changeIsParent:String,  chengeName :String, chengeMoney :Int16, chengePass: String){
        let editRequest:NSFetchRequest<User> = User.fetchRequest()
        let predicate = NSPredicate(format: "id == %@", searchId)
        editRequest.predicate = predicate
        do{
            let editResults = try DatabaseController.getContext().fetch(editRequest)
            for result in editResults as! [User]{
                let record = result as! NSManagedObject
                record.setValue(searchId, forKey: "id")
                record.setValue(chengeName, forKey: "name")
                record.setValue(chengeMoney, forKey: "money")
                record.setValue(changeIsParent, forKey: "isParent")
                record.setValue(chengePass, forKey: "password")
            }
        }
        catch{
            
        }
        self.saveContext()
    }
    
    class func addMoney(searchId :String, chengeMoney :Int16){
        let editRequest:NSFetchRequest<User> = User.fetchRequest()
        let predicate = NSPredicate(format: "id == %@", searchId)
        editRequest.predicate = predicate
        do{
            let editResults = try DatabaseController.getContext().fetch(editRequest)
            for result in editResults as! [User]{
                let record = result as! NSManagedObject
                record.setValue(searchId, forKey: "id")
                record.setValue(chengeMoney, forKey: "money")
            }
        }
        catch{
            
        }
        self.saveContext()
    }

    
    class func getMoneyValue(searchId :String) -> Int{
        let editRequest:NSFetchRequest<User> = User.fetchRequest()
        let predicate = NSPredicate(format: "id == %@", searchId)
        editRequest.predicate = predicate
        
        var receiveMoneyValue = 0;
        do{
            let editResults = try DatabaseController.getContext().fetch(editRequest)
            for result in editResults as! [User]{
                receiveMoneyValue =  Int(result.money)
            }
        }
        catch{
            
        }
        self.saveContext()
        return receiveMoneyValue
    }
    

    
    class func loadPass() -> String{
        let parentRequest:NSFetchRequest<User> = User.fetchRequest()
        let parentpredicate = NSPredicate(format: "isParent == %@", "true")
        var receivePass = "0000"
        parentRequest.predicate = parentpredicate
        do{
            let initResults = try DatabaseController.getContext().fetch(parentRequest)
            if initResults.count == 0{
                
                for result in initResults as [User]{
                    receivePass = result.password!
                }            }
        }
        catch{
            
        }
        return receivePass
    }
    
    class func initUser(){
        
        let parentRequest:NSFetchRequest<User> = User.fetchRequest()
        let parentpredicate = NSPredicate(format: "isParent == %@", "true")
        parentRequest.predicate = parentpredicate
        do{
            let initResults = try DatabaseController.getContext().fetch(parentRequest)
            if initResults.count == 0{
                let user :User = NSEntityDescription.insertNewObject(forEntityName: "User", into: DatabaseController.getContext()) as! User
                
                
                user.name = "Parent"
                user.id = NSUUID().uuidString
                user.money = 0
                user.isParent = "true"
                user.password="0000"
            }
        }
        catch{
            
        }
        
        
        let childRequest:NSFetchRequest<User> = User.fetchRequest()
        let childpredicate = NSPredicate(format: "isParent == %@", "true")
        childRequest.predicate = childpredicate
        do{
            let initResults = try DatabaseController.getContext().fetch(childRequest)
            if initResults.count == 0{
                let user :User = NSEntityDescription.insertNewObject(forEntityName: "User", into: DatabaseController.getContext()) as! User
                
                
                user.name = "Child"
                user.id = NSUUID().uuidString
                user.money = 0
                user.isParent = "false"
                user.password = "0000"
            }
        }
        catch{
            
        }
        
        
        self.saveContext()

    }

    

}
