import Foundation

// Create an empty array to store tasks
var tasks = [String]()

// Function to add a new task
func addTask() {
    print("Enter task name:")
    if let taskName = readLine() {
        tasks.append(taskName)
        print("Task added!")
    }
}

// Function to mark a task as completed
func completeTask() {
    print("Enter the number of the task to mark as completed:")
    if let taskIndexString = readLine(), let taskIndex = Int(taskIndexString) {
        if taskIndex >= 1 && taskIndex <= tasks.count {
            tasks[taskIndex - 1] = "✓ " + tasks[taskIndex - 1]
            print("Task marked as completed!")
        } else {
            print("Invalid task number!")
        }
    }
}

// Function to delete a task
func deleteTask() {
    print("Enter the number of the task to delete:")
    if let taskIndexString = readLine(), let taskIndex = Int(taskIndexString) {
        if taskIndex >= 1 && taskIndex <= tasks.count {
            tasks.remove(at: taskIndex - 1)
            print("Task deleted!")
        } else {
            print("Invalid task number!")
        }
    }
}

// Function to display the list of current tasks
func showTasks() {
    print("\nCurrent tasks:")
    for (index, task) in tasks.enumerated() {
        print("\(index + 1). \(task)")
    }
}

// Main program loop
while true {
    print("\nWhat would you like to do?")
    print("1. Add a new task")
    print("2. Mark a task as completed")
    print("3. Delete a task")
    print("4. Show list of tasks")
    print("5. Exit")

    if let choice = readLine() {
        switch choice {
        case "1":
            addTask()
        case "2":
            completeTask()
        case "3":
            deleteTask()
        case "4":
            showTasks()
        case "5":
            exit(0)
        default:
            print("Invalid choice. Please try again.")
        }
    }
}
