[![GitHub stars](https://img.shields.io/github/stars/noorulain17/software-architecture-xcode-templates.svg)](https://github.com/noorulain17/software-architecture-xcode-templates/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/noorulain17/software-architecture-xcode-templates.svg)](https://github.com/noorulain17/software-architecture-xcode-templates/issues)
[![GitHub license](https://img.shields.io/github/license/noorulain17/software-architecture-xcode-templates.svg)](https://github.com/noorulain17/software-architecture-xcode-templates/blob/master/LICENSE)

# Xcode-Templates for Popular Software Architecture
Software architectural templates developed to speedup iOS development with pre-existing file templates for different architecture patterns

----

## Available options:
- `Coordinator` module with `Coordinator`, `MainCoordinator`, `Storyboarded` & `ViewController` .
- `MVC` module with `Model`, `View` & `ViewController`  files.
- `MVP` module with `Model`,  `Presenter`,  `ViewDelegate` & `ViewController`  files.
- `MVVM`  module with `Model`,  `View`,  `ViewModel` & `ViewController`  files.
- `VIPER` module with `Assembly`,  `Interactor`,  `Presenter`,  `Router` & `ViewController`  files.

# How to install

## In Applications: Xcode app

### Manual

* Go to Application folder, browse to the Xcode application icon. Right-click it and choose `'Show Package Contents'`. Then browse to:
* `Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/iOS/Application` and add "`Architecture Templates`" folder. 
* Restart Xcode.
* Now all the above templates are available in your Xcode.

## In Library folder

### Manual Install
* Simply put the folder `Architecture Templates`  into this location: `Macintosh HD > Users > [Username] > Library > Developer > Xcode > Templates > `

### Important
* You may have to show the Library folder. In Finder, select your user folder (`Macintosh HD > Users > [Username]`) and then bring up View Options with COMMAND + J. Then check `"Show Library Folder"`. If that option isn't available, look below:
* Since Sierra you can now use COMMAND + SHIFT + . to show hidden files. This will reveal the Library folder.
* You may have to create the "> Templates >" folder first, if it is not available.

## Easy to use
![](/Screenshots/ArchitectureTemplate.png)

# What is Architecture Pattern?
An architectural design pattern is a general, reusable solution to a commonly occurring problem in software architecture within a given context. The architectural patterns address various issues in software engineering, such as computer hardware performance limitations, high availability and minimization of a business risk.

## Architectural Patterns vs Design Patterns
- Software architecture is responsible for the skeleton and the high-level infrastructure of software, whereas software design is responsible for the code level design such as, what each module is doing, the classes scope, and the functions purposes, etc.
- Generally, the architecture and design both explains the idea but architecture focus on the abstract view of idea while design focus on the implementation view of idea.

## 1. What is Coordinator?
This pattern is a structural design pattern for organizing flow logic between view controllers. It can be adopted for only part of an app, or it can be used as an “architectural pattern” to define the structure of an entire app. It is used to decouple view controllers from one another. The only component that knows about view controllers directly is the coordinator.

#### Coordinator
>The coordinator is a protocol that defines the methods and properties all concrete coordinators must implement. Specifically, it defines relationship properties, children, etc.. It also defines presentation methods, present and dismiss.
By holding onto coordinator protocols, instead of onto concrete coordinators directly, one can decouple a parent coordinator and its child coordinators. This enables a parent coordinator to hold onto various concrete child coordinators in a single property, children, etc..

#### Concrete Coordinator
>The concrete coordinator implements the coordinator protocol. It knows how to create concrete view controllers and the order in which view controllers should be displayed.

#### Concrete ViewController
>The concrete view controllers are typical UIViewController subclasses found in MVC. However, they don’t know about other view controllers. Instead, they delegate to the coordinator whenever a transition needs to perform.

### Coordinator Template Structure

| File Name | Acts As | Description |
| :---         |     :---      |          :--- |
| `FileNameViewController.swift`   | UIViewController     | This contains the design layout. Parent is always `UIViewController`.  |
| `Coordinator.swift`    | Coordinator   | This protocol defines the methods and properties all concrete coordinators must implement. |
| `MainCoordinator.swift`    | Concrete Coordinator | It implements all the methods and properties defined in Coordinator protocol.      |
| `Storyboarded.swift`    | Storyboard Helper     | Instantiate viewController from Storyboard.    |

### Why Coordinator?
- The Coordinator is a great pattern to help enforce Single Responsibility in classes, allowing them to focus on a single task, making them easier to maintain, test, and reuse.
- Coordinators create, present and dismiss UIViewControllers while keeping the UIViewControllers separate and independent. Similar to how UIViewControllers manage UIViews, Coordinators manage UIViewControllers.

## 2. What is MVC?
MVC design pattern is an approach to distinguish between the data model, processing control and the user interface. It neatly separates the graphical interface displayed to the user from the code that manages the user actions.

#### Model
>The model represents a unique entity - it could be a single object or more likely a structure. There is a one to one relationship with the entity and the object's data. It is the model that responds to requests coming from the view regarding its status or state. In this way, the processing of data takes place only in the model, which ensures internal data consistency.

#### View
>The view is used to present the graphical visualization of the user interface. It could filter out some aspects of the model or highlight others. It represents the input and output data in an interface using various elements such as pushbuttons, menus, dialog boxes, etc. To see the status of the application objects, the view queries the model through the controller.

#### Controller
>The controller provides the link between the user interface (view) and the application processing logic (model). The controller uses the model methods to retrieve information about the application object, to change the status of the object and to inform the view about this change. In a sense the controller enables a user to make changes and see results.

### MVC Template Structure

| File Name | Acts As | Description |
| :---         |     :---      |          :--- |
| `FileNameViewController.swift`   | UIViewController     | This contains the design layout. Parent is always `UIViewController`.  |
| `FileNameModel.swift`    | Model   | This is the model data class, and contains domain layer or business logic |
| `FileNameView.swift`    | View  | This presents the graphical visualization of the user interface. Parent is of type `UIView`   |

### Why MVC?
- Development of the application becomes fast.
- Easy for multiple developers to collaborate and work together.
- Easier to update the application.
- Easier to Debug as we have multiple levels properly written in the application.

## 3. What is MVP?
This is the evolution of the MVC design pattern and it's aimed at providing a cleaner separation of concerns between the view, the model, and the controller improving the architecture. It was originally developed at Taligent in the 1990s.

#### Model
>The model is responsible for business behaviors and state management.

#### View
>The view is responsible for rending UI element, the view interface is used to loosely couple the presenter from its view. The view interface and service layer are commonly used to make writing unit tests for the presenter and the model easier.

#### Presenter
>The presenter is responsible for interacting between the view/model, and In some implementations, the presenter interacts with a service (controller) layer to retrieve/persist the model. In short, it's the mediator between Model and View.

### MVP Template Structure

| File Name | Acts As | Description |
| :---         |     :---      |          :--- |
| `FileNameViewController.swift`   | UIViewController     | This contains the design layout. Parent is always `UIViewController`.  |
| `FileNameModel.swift`    | Model   | This is the model data class, and contains domain layer or business logic |
| `FileNamePresenter.swift`    | Presenter | It works as a middle man between viewController and model and listens the user action, updates the data model and view. |
| `FileNameViewDelegate.swift`    | ViewDelegate  | This protocol will communicate with the ViewController and the View.   |

### Why MVP?
The key benefits of MVP are:

- Loose coupling.
- Test Driven.
- Code Reuse.
- Hide Data Access.
- Flexibility/Adaptable. 

## 4. What is MVVM?
It is well-ordered and the most reusable way to organize code. This pattern is ultimately the modern structure of the MVC pattern, so the main goal is still the same to provide a clear separation between domain logic and presentation layer.

#### Model
>It simply holds the data and has nothing to do with any of the business logic.

#### View
>It simply holds the formatted data and essentially delegates everything to the Model.

#### ViewModel
>It acts as the link/connection between the Model and View and makes stuff look pretty.

### MVVM Template Structure

| File Name | Acts As | Description |
| :---         |     :---      |          :--- |
| `FileNameViewController.swift`   | UIViewController     | This is where your design layout should be. Parent is always `UIViewController`.  |
| `FileName.swift`    | Model   | This is the model data class. |
| `FileNameView.swift`    | View | This contains all the UI elements related to single business logic.      |
| `FileNameViewModel.swift`    | ViewModel  | This is where all business logics are handled. It also communicate with the View and Model.    |

### Why MVVM?
The three important key things that flow out of applying MVVM are.

- Maintainability
- Testability
- Extensibility

## 5. What is VIPER?
VIPER is an approach to iOS application architecture, which stands for:

#### View
>The view consists of views and view controllers. It is responsible to receive user interactions and pass them to presenters for decision making. To keep the view simple, it shouldn’t contain any view logics. This is where to define how the view looks like, and nothing beyond this.

#### Presenter
>The presenter defines the view logics, e.g. when to show a warning message or highlight a button. It is responsible to prepare content for the view to display. Whenever data is required, the presenter requests data from interactors (but not directly from the model).

#### Interactor
>The interactor mainly contains business logic, e.g. logging in the user /  processing a purchase / sending a friend request. It should be independent of the UI. It only handles requests from the presenter and prepare corresponding data regardless of how the view looks like.

#### Entity
>Entities are the model objects manipulated by an Interactor and only by the Interactor. It is simply a Struct. It is model orientated and therefore should not contain any business logic, Entity is not the Model, it's a represntation of the Model.

#### Router (Wireframe)
>Wireframe defines the routes from one screen to another. In VIPER, the responsibility for Routing is shared between the presenter and the wireframe.
When the presenter receives user interactions and decided to navigate to another screen, it will use the wireframe to perform the desired navigation (to which screen and how to navigate). The wireframe can also contain transition animations.

#### Assembly
>Assembly is an abstraction that creates and initializes all the above objects that are required in VIPER module.

### VIPER Template Structure

| File Name | Acts As | Description |
| :---         |     :---      |          :--- |
| `FileNameViewController.swift`   | UIViewController     | This is where your design layout should be. Parent is always `UIViewController`.  |
| `FileNameAssembly.swift`    | Assembly   | This is where all VIPER protocols are created & initialized. |
| `FileNameInteractor.swift`    | Interactor | This is where all API calls, DB operations, business logics are handled. It also communicate with the Data Layer and Entity.      |
| `FileNamePresenter.swift`    | Presenter  | This is what will communicate with the View and the Interactor, and initiates routing logic.    |
| `FileNameRouter.swift`    | Router     | All routing logic is implemented here.    |

### Why VIPER?
VIPER is beneficial in many ways. Such as:

- Single responsibility principles applied.
- Easy to iterate on.
- Collaboration friendly.
- Separated out concerns.
- Testability. 

# References

- [Architecture vs Design Patterns](https://www.fullstacktutorials.com/architectural-patterns-vs-design-patterns-57.html)
- [MVC vs MVVM vs MVP vs VIPER](https://www.techaheadcorp.com/blog/mvc-vs-mvvm-vs-mvp-vs-viper/)
- [Xcode templates tutorial](https://medium.com/overapp-ios/create-xcode-templates-c968d4b43f7b/)
- [How to create custom Xcode template](https://www.hackingwithswift.com/articles/158/how-to-create-a-custom-xcode-template-for-coordinators)
- [Coordinator swift demo](https://github.com/clarknt/swift-coordinator-demo/)
- [iOS Architecture Patterns](https://medium.com/ios-os-x-development/ios-architecture-patterns-ecba4c38de52#.ba7q8dcih)

# Contribution
This is a learning project, so feel free to open and resolve issues, and add contribution for further architectural patterns.
- Open an [issue](https://github.com/noorulain17/software-architecture-xcode-templates/issues/new).

----

# Authors

* [Noor ul Ain Ali](noorulain.ali89@gmail.com)
