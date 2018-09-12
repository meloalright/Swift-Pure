# Swift-Pure   
   
   
## Objective-C   
   
[00-Text-Field](./00-Text-Field)   
   
[01-Button](./01-Button)      
   
[02-Label](./02-Label)      
   
[03-Tool-Bar](./03-Tool-Bar)       
   
[04-Table-View](./04-Table-View)      
   
[05-Navigation-Bar](./05-Navigation-Bar)      
    
[06-Tab-Bar](./06-Tab-Bar)      
   
[07-Image-View](./07-Image-View)     
   
[08-Switch](./08-Switch)       
   
[09-Slider](./09-Slider)   
   
[10-Alert](./10-Alert)   
      
   
## Swift   
   
[S00-Text-Field](./S00-Text-Field)     
   
[S01-Button](./S01-Button)   
   

```Swift
// 删除 StoryBoard 后需要的代码
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

    // Override point for customization after application launch.
    
    window = UIWindow(frame: UIScreen.main.bounds)
    
    window?.backgroundColor = UIColor.white
    
    window?.rootViewController = ViewController()
    
    window?.makeKeyAndVisible()
    
    return true
}
```