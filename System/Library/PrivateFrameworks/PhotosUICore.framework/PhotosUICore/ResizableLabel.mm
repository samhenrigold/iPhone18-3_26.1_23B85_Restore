@interface ResizableLabel
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)setFrame:(CGRect)frame;
@end

@implementation ResizableLabel

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_targetLabel) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ResizableLabel(self, a2);
  [(ResizableLabel *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = type metadata accessor for ResizableLabel(self, a2);
  v17.receiver = self;
  v17.super_class = v8;
  selfCopy = self;
  [(ResizableLabel *)&v17 frame];
  v19.origin.x = v10;
  v19.origin.y = v11;
  v19.size.width = v12;
  v19.size.height = v13;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v14 = CGRectEqualToRect(v18, v19);
  if (!v14)
  {
    sub_1A3F4BBA0(0.0, 0.0, width, height, v14, v15);
  }

  v16.receiver = selfCopy;
  v16.super_class = v8;
  [(ResizableLabel *)&v16 setFrame:x, y, width, height];
}

@end