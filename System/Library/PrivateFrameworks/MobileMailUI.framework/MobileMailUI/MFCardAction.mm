@interface MFCardAction
+ (id)cardActionWithTitle:(id)title shortTitle:(id)shortTitle imageName:(id)name tintColor:(id)color handler:(id)handler;
+ (id)cardActionWithTitle:(id)title shortTitle:(id)shortTitle imageName:(id)name tintColor:(id)color handlerEnabled:(BOOL)enabled handler:(id)handler;
- (void)executeHandler;
- (void)executeHandlerIfEnabled;
@end

@implementation MFCardAction

+ (id)cardActionWithTitle:(id)title shortTitle:(id)shortTitle imageName:(id)name tintColor:(id)color handler:(id)handler
{
  v7 = [self cardActionWithTitle:title shortTitle:shortTitle imageName:name tintColor:color handlerEnabled:1 handler:handler];

  return v7;
}

+ (id)cardActionWithTitle:(id)title shortTitle:(id)shortTitle imageName:(id)name tintColor:(id)color handlerEnabled:(BOOL)enabled handler:(id)handler
{
  enabledCopy = enabled;
  titleCopy = title;
  shortTitleCopy = shortTitle;
  nameCopy = name;
  colorCopy = color;
  handlerCopy = handler;
  v19 = objc_alloc_init(self);
  [v19 setTitle:titleCopy];
  if (shortTitleCopy)
  {
    v20 = shortTitleCopy;
  }

  else
  {
    v20 = titleCopy;
  }

  [v19 setShortTitle:v20];
  [v19 setImageName:nameCopy];
  [v19 setTintColor:colorCopy];
  [v19 setHandler:handlerCopy];
  [v19 setHandlerEnabled:enabledCopy];

  return v19;
}

- (void)executeHandlerIfEnabled
{
  if ([(MFCardAction *)self handlerEnabled])
  {

    [(MFCardAction *)self executeHandler];
  }
}

- (void)executeHandler
{
  handler = [(MFCardAction *)self handler];
  if (handler)
  {
    handler[2](handler, self);
  }
}

@end