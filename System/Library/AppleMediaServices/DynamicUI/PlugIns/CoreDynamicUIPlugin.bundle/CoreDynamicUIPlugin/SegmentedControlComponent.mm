@interface SegmentedControlComponent
- (void)prepareForReuse;
- (void)segmentedControlAction;
@end

@implementation SegmentedControlComponent

- (void)prepareForReuse
{
  selfCopy = self;
  sub_57964(selfCopy);
}

- (void)segmentedControlAction
{
  selfCopy = self;
  sub_57AB8();
}

@end