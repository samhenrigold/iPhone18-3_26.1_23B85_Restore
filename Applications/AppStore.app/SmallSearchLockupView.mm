@interface SmallSearchLockupView
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SmallSearchLockupView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1000AB0CC(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000AC528(selfCopy, v2);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v11 = sub_1000ACBE4(event, v10, x, y);

  return v11;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1000ACD38(change, selfCopy);
}

@end