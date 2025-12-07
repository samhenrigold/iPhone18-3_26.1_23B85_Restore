@interface UIViewDrawEventProducer
- (void)dealloc;
- (void)handlePan:(id)pan;
- (void)handleTap:(id)tap;
@end

@implementation UIViewDrawEventProducer

- (void)dealloc
{
  v4 = 1;
  selfCopy = self;

  sub_264B409B4();

  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for UIViewDrawEventProducer(0);
  [(UIViewDrawEventProducer *)&v3 dealloc];
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_264AF4288(tapCopy);
}

- (void)handlePan:(id)pan
{
  panCopy = pan;
  selfCopy = self;
  sub_264AF464C(panCopy);
}

@end