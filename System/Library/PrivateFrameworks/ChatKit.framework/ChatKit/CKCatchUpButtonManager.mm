@interface CKCatchUpButtonManager
- (_TtC7ChatKit22CKCatchUpButtonManager)init;
- (_TtC7ChatKit22CKCatchUpButtonManager)initWithDidTapButton:(id)button;
- (void)animateInResumingFromBackground:(BOOL)background;
- (void)animateOutWithCompletion:(id)completion;
@end

@implementation CKCatchUpButtonManager

- (_TtC7ChatKit22CKCatchUpButtonManager)initWithDidTapButton:(id)button
{
  v3 = _Block_copy(button);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = sub_190CD5824(sub_190CD5D54, v4);

  return v5;
}

- (void)animateInResumingFromBackground:(BOOL)background
{
  selfCopy = self;
  sub_190CD4450(background);
}

- (void)animateOutWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_190CD5CBC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_190CD4854(v7, v6);
  sub_19022123C(v7, v6);
}

- (_TtC7ChatKit22CKCatchUpButtonManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end