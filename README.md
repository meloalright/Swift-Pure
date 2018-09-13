# Swift-Pure   
   
   
## Objective-C   
   
[00-Text-Field](./00-Text-Field/00-Text-Field)   
   
[01-Button](./01-Button/01-Button)      
   
[02-Label](./02-Label/02-Label)      
   
[03-Tool-Bar](./03-Tool-Bar/03-Tool-Bar)       
   
[04-Table-View](./04-Table-View/04-Table-View)      
   
[05-Navigation-Bar](./05-Navigation-Bar/05-Navigation-Bar)      
    
[06-Tab-Bar](./06-Tab-Bar/06-Tab-Bar)      
   
[07-Image-View](./07-Image-View/07-Image-View)     
   
[08-Switch](./08-Switch/08-Switch)       
   
[09-Slider](./09-Slider/09-Slider)   
   
[10-Alert](./10-Alert/10-Alert)   
      
   
## Swift   
   
[S00-Text-Field](./S00-Text-Field/S00-Text-Field)     
   
[S01-Button](./S01-Button/S01-Button)   
   
[S02-Label](./S02-Label/S02-Label)      
   
[S03-Tool-Bar](./S03-Tool-Bar/S03-Tool-Bar)      
   
   
   
   
   
   
## 如何删除 StoryBoard    
   
`1.General => Main Interface 设置为空`   
   
`2.删除 Main.storyboard`   
   
`3.添加代码:`   
   
```Objective-C
// Objective-C
// AppDelegate.m
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Override point for customization after application launch.

    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];

    ViewController *vc = [[ViewController alloc]init];

    [self.window setRootViewController:vc];

    self.window.backgroundColor = [UIColor whiteColor];

    [self.window makeKeyAndVisible];

    return YES;
}
```
   
```Swift
// Swift
// AppDelegate.swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

    // Override point for customization after application launch.
    
    window = UIWindow(frame: UIScreen.main.bounds)
    
    window?.backgroundColor = UIColor.white
    
    window?.rootViewController = ViewController()
    
    window?.makeKeyAndVisible()
    
    return true
}
```