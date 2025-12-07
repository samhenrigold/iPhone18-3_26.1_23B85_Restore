@interface VideoView
- (NSString)accessibilityVideoDescription;
- (_TtC16HealthArticlesUI9VideoView)initWithCoder:(id)coder;
- (_TtC16HealthArticlesUI9VideoView)initWithFrame:(CGRect)frame;
- (void)nonLoopingEndOfPlay:(NSNotification *)play completionHandler:(id)handler;
- (void)setAccessibilityVideoDescription:(id)description;
@end

@implementation VideoView

- (NSString)accessibilityVideoDescription
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_accessibilityVideoDescription;
  swift_beginAccess();
  if (*(v3 + 1))
  {

    v4 = sub_25133F724();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

- (void)setAccessibilityVideoDescription:(id)description
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (description)
  {
    description = sub_25133F754();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_accessibilityVideoDescription);
  swift_beginAccess();
  *v7 = description;
  v7[1] = v6;
}

- (_TtC16HealthArticlesUI9VideoView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_2513363E0(isCurrentExecutor, x, y, width, height);

  return v8;
}

- (_TtC16HealthArticlesUI9VideoView)initWithCoder:(id)coder
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25133D0D0();
}

- (void)nonLoopingEndOfPlay:(NSNotification *)play completionHandler:(id)handler
{
  sub_251337C04(0, &qword_27F42B470, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = play;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_25133F914();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_251342640;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_251342650;
  v14[5] = v13;
  playCopy = play;
  selfCopy = self;
  sub_25133CC1C(0, 0, v9, &unk_251342660, v14);
}

@end