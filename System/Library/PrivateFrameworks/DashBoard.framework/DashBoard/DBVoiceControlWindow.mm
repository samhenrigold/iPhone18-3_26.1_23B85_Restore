@interface DBVoiceControlWindow
- (_TtC9DashBoard20DBVoiceControlWindow)initWithWindowScene:(id)scene frame:(CGRect)frame;
@end

@implementation DBVoiceControlWindow

- (_TtC9DashBoard20DBVoiceControlWindow)initWithWindowScene:(id)scene frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sceneCopy = scene;
  v9 = sub_24832C6D0(sceneCopy, 10, x, y, width, height);
  v10 = objc_opt_self();
  v11 = v9;
  clearColor = [v10 clearColor];
  [(DBVoiceControlWindow *)v11 setBackgroundColor:clearColor];

  [(DBVoiceControlWindow *)v11 setUserInteractionEnabled:0];
  return v11;
}

@end