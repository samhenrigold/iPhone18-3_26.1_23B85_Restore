@interface BRUILiveCaptionsCallManager
+ (_TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager)shared;
- (void)handleCallStatusChanged:(id)changed;
@end

@implementation BRUILiveCaptionsCallManager

+ (_TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager)shared
{
  if (qword_27FF87360 != -1)
  {
    swift_once();
  }

  v3 = qword_27FF86E78;

  return v3;
}

- (void)handleCallStatusChanged:(id)changed
{
  v4 = sub_264982374();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264982354();
  selfCopy = self;
  sub_26496CE7C(v9);

  (*(v5 + 8))(v9, v4);
}

@end