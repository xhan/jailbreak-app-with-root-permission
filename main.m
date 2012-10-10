#include "ViewController.h"
@interface crackMe2Application: UIApplication <UIApplicationDelegate> {
	UIWindow *_window;
	ViewController *_viewController;
}
@property (nonatomic, retain) UIWindow *window;
@end

@implementation crackMe2Application
@synthesize window = _window;
- (void)applicationDidFinishLaunching:(UIApplication *)application {
	_window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	_viewController = [[ViewController alloc] init];
	_window.rootViewController = _viewController;
	[_window makeKeyAndVisible];
}

- (void)dealloc {
	[_viewController release];
	[_window release];
	[super dealloc];
}
@end

int main(int argc, char **argv) {
	setuid(0);
	setgid(0);
	NSAutoreleasePool *p = [[NSAutoreleasePool alloc] init];
	int ret = UIApplicationMain(argc, argv, @"crackMe2Application", @"crackMe2Application");
	[p drain];
	return ret;
}

// vim:ft=objc
