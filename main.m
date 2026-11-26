#import <UIKit/UIKit.h>
#import <dlfcn.h>

@interface ViewController : UIViewController
@property (nonatomic, strong) UITextView *logView;
@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    
    self.logView = [[UITextView alloc] initWithFrame:self.view.bounds];
    self.logView.backgroundColor = [UIColor blackColor];
    self.logView.textColor = [UIColor greenColor];
    self.logView.font = [UIFont fontWithName:@"Courier" size:12];
    self.logView.editable = NO;
    [self.view addSubview:self.logView];
    
    [self log:@"[R] Tool Scan Bone Free Fire"];
    [self log:@"[R] Dang khoi tao..."];
}

- (void)log:(NSString *)msg {
    dispatch_async(dispatch_get_main_queue(), ^{
        self.logView.text = [self.logView.text stringByAppendingFormat:@"\n%@", msg];
        [self.logView scrollRangeToVisible:NSMakeRange([self.logView.text length], 0)];
    });
}
@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([ViewController class]));
    }
}
