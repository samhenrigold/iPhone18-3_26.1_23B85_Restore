@interface LayoutGuidesProvider
- (UILayoutGuide)bottomShelfLayoutGuide;
- (UILayoutGuide)callerDetailsLayoutGuide;
- (UILayoutGuide)memojiPosterLayoutGuide;
- (UILayoutGuide)middleShelfLayoutGuide;
- (UILayoutGuide)monogramPosterLayoutGuide;
- (UILayoutGuide)photoPosterLayoutGuide;
- (UILayoutGuide)posterLayoutGuide;
- (UILayoutGuide)sensitiveContentWarningCenteringLayoutGuide;
- (UILayoutGuide)trailingPanelLayoutGuide;
- (void)updateMiddleShelfStateWithIsOpen:(BOOL)open;
- (void)updateMiddleShelfStateWithIsOpen:(BOOL)open animation:(id)animation completion:(id)completion;
- (void)updateMiddleShelfStateWithIsOpen:(BOOL)open contentView:(id)view animation:(id)animation completion:(id)completion;
- (void)updateMiddleStateWithIsEmpty:(BOOL)empty;
@end

@implementation LayoutGuidesProvider

- (UILayoutGuide)callerDetailsLayoutGuide
{
  selfCopy = self;
  v3 = sub_1001601E4();

  return v3;
}

- (UILayoutGuide)middleShelfLayoutGuide
{
  selfCopy = self;
  v3 = sub_100160254();

  return v3;
}

- (UILayoutGuide)bottomShelfLayoutGuide
{
  selfCopy = self;
  v3 = sub_1001602C4();

  return v3;
}

- (UILayoutGuide)posterLayoutGuide
{
  selfCopy = self;
  v3 = sub_100160334();

  return v3;
}

- (UILayoutGuide)trailingPanelLayoutGuide
{
  selfCopy = self;
  v3 = sub_1001603A4();

  return v3;
}

- (UILayoutGuide)photoPosterLayoutGuide
{
  selfCopy = self;
  v3 = sub_100160414();

  return v3;
}

- (UILayoutGuide)monogramPosterLayoutGuide
{
  selfCopy = self;
  v3 = sub_100160484();

  return v3;
}

- (UILayoutGuide)memojiPosterLayoutGuide
{
  selfCopy = self;
  v3 = sub_1001604F4();

  return v3;
}

- (UILayoutGuide)sensitiveContentWarningCenteringLayoutGuide
{
  selfCopy = self;
  v3 = sub_100160564();

  return v3;
}

- (void)updateMiddleShelfStateWithIsOpen:(BOOL)open
{
  openCopy = open;
  selfCopy = self;
  sub_100160590(openCopy);
}

- (void)updateMiddleShelfStateWithIsOpen:(BOOL)open animation:(id)animation completion:(id)completion
{
  openCopy = open;
  v8 = _Block_copy(animation);
  v9 = _Block_copy(completion);
  v10 = v9;
  if (v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v8 = sub_1001621B8;
    if (v10)
    {
LABEL_3:
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      v10 = sub_1001621B8;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  selfCopy = self;
  sub_100160624(openCopy, v8, v11, v10, v12);
  sub_1000081F4(v10, v12);
  sub_1000081F4(v8, v11);
}

- (void)updateMiddleShelfStateWithIsOpen:(BOOL)open contentView:(id)view animation:(id)animation completion:(id)completion
{
  openCopy = open;
  v10 = _Block_copy(animation);
  v11 = _Block_copy(completion);
  v12 = v11;
  if (v10)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    v10 = sub_1001621B8;
    if (v12)
    {
LABEL_3:
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      v12 = sub_1001541E8;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  viewCopy = view;
  selfCopy = self;
  sub_100160788(openCopy, view, v10, v13, v12, v14);
  sub_1000081F4(v12, v14);
  sub_1000081F4(v10, v13);
}

- (void)updateMiddleStateWithIsEmpty:(BOOL)empty
{
  selfCopy = self;
  sub_1001608F4(empty);
}

@end