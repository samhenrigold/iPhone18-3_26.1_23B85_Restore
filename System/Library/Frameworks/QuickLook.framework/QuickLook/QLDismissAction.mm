@interface QLDismissAction
+ (id)actionWithTitle:(id)title alertStyle:(int64_t)style shouldDismissQuickLookAutomatically:(BOOL)automatically handler:(id)handler;
+ (id)actionWithTitle:(id)title image:(id)image alertStyle:(int64_t)style shouldDismissQuickLookAutomatically:(BOOL)automatically handler:(id)handler;
+ (id)actionWithTitle:(id)title image:(id)image shouldDismissQuickLookAutomatically:(BOOL)automatically handler:(id)handler;
- (QLDismissAction)initWithTitle:(id)title image:(id)image shouldDismissQuickLookAutomatically:(BOOL)automatically handler:(id)handler;
@end

@implementation QLDismissAction

- (QLDismissAction)initWithTitle:(id)title image:(id)image shouldDismissQuickLookAutomatically:(BOOL)automatically handler:(id)handler
{
  titleCopy = title;
  imageCopy = image;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = QLDismissAction;
  v14 = [(QLDismissAction *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_title, title);
    objc_storeStrong(&v15->_image, image);
    v16 = _Block_copy(handlerCopy);
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v16;

    v15->_shouldDismissQuickLookAutomatically = automatically;
    v18 = v15;
  }

  return v15;
}

+ (id)actionWithTitle:(id)title image:(id)image shouldDismissQuickLookAutomatically:(BOOL)automatically handler:(id)handler
{
  automaticallyCopy = automatically;
  handlerCopy = handler;
  imageCopy = image;
  titleCopy = title;
  v12 = [[QLDismissAction alloc] initWithTitle:titleCopy image:imageCopy shouldDismissQuickLookAutomatically:automaticallyCopy handler:handlerCopy];

  return v12;
}

+ (id)actionWithTitle:(id)title image:(id)image alertStyle:(int64_t)style shouldDismissQuickLookAutomatically:(BOOL)automatically handler:(id)handler
{
  automaticallyCopy = automatically;
  handlerCopy = handler;
  imageCopy = image;
  titleCopy = title;
  v14 = [[QLDismissAction alloc] initWithTitle:titleCopy image:imageCopy shouldDismissQuickLookAutomatically:automaticallyCopy handler:handlerCopy];

  if (style == 2)
  {
    [(QLDismissAction *)v14 setAttributes:2];
  }

  return v14;
}

+ (id)actionWithTitle:(id)title alertStyle:(int64_t)style shouldDismissQuickLookAutomatically:(BOOL)automatically handler:(id)handler
{
  automaticallyCopy = automatically;
  handlerCopy = handler;
  titleCopy = title;
  v11 = [[QLDismissAction alloc] initWithTitle:titleCopy image:0 shouldDismissQuickLookAutomatically:automaticallyCopy handler:handlerCopy];

  if (style == 2)
  {
    [(QLDismissAction *)v11 setAttributes:2];
  }

  return v11;
}

@end