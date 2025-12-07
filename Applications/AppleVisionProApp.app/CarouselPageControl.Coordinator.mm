@interface CarouselPageControl.Coordinator
- (_TtCV17AppleVisionProApp19CarouselPageControl11Coordinator)init;
- (void)changed:(id)changed;
@end

@implementation CarouselPageControl.Coordinator

- (void)changed:(id)changed
{

  changedCopy = changed;
  selfCopy = self;
  [changedCopy currentPage];
  sub_100002BE4(&qword_10016D198, &qword_100113558);
  Binding.wrappedValue.setter();
}

- (_TtCV17AppleVisionProApp19CarouselPageControl11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end