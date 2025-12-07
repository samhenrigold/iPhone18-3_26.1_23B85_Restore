@interface CLSNotificationBanner
+ (void)showBannerWithTitle:(id)title message:(id)message completionHandler:(id)handler;
@end

@implementation CLSNotificationBanner

+ (void)showBannerWithTitle:(id)title message:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  titleCopy = title;
  v10 = [CLSNotificationBannerView alloc];
  v16 = objc_msgSend_initWithTitle_message_(v10, v11, titleCopy, messageCopy, v12);

  objc_msgSend_showWithCompletionHandler_(v16, v13, handlerCopy, v14, v15);
}

@end