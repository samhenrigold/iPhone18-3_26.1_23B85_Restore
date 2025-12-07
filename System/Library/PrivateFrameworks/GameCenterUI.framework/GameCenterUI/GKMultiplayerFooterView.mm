@interface GKMultiplayerFooterView
- (BOOL)inviteFriendsButtonEnabled;
- (BOOL)inviteFriendsButtonHidden;
- (BOOL)startGameButtonEnabled;
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (void)configureUsing:(id)using;
- (void)layoutSubviews;
- (void)setInviteFriendsButtonEnabled:(BOOL)enabled;
- (void)setInviteFriendsButtonHidden:(BOOL)hidden;
- (void)setInviteFriendsHandler:(id)handler;
- (void)setStartGameButtonEnabled:(BOOL)enabled;
- (void)setStartGameHandler:(id)handler;
- (void)wantsMaterialBackgroundWithScrollOffset:(double)offset;
@end

@implementation GKMultiplayerFooterView

- (void)wantsMaterialBackgroundWithScrollOffset:(double)offset
{
  selfCopy = self;
  sub_24E03725C(offset);
}

- (BOOL)startGameButtonEnabled
{
  selfCopy = self;
  v3 = sub_24E0375FC();

  return v3 & 1;
}

- (void)setStartGameButtonEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_24E03765C(enabled);
}

- (BOOL)inviteFriendsButtonEnabled
{
  selfCopy = self;
  v3 = sub_24E0377E4();

  return v3 & 1;
}

- (void)setInviteFriendsButtonEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_24E03788C(enabled);
}

- (BOOL)inviteFriendsButtonHidden
{
  selfCopy = self;
  v3 = sub_24E0379BC();

  return v3 & 1;
}

- (void)setInviteFriendsButtonHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  selfCopy = self;
  sub_24E037A3C(hiddenCopy);
}

- (void)setStartGameHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24E00CEE0;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_24E0380D4(v4, v5);
}

- (void)setInviteFriendsHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24DFA0D08;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_24E0383F0(v4, v5);
}

- (void)configureUsing:(id)using
{
  usingCopy = using;
  selfCopy = self;
  sub_24E038668(selfCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E038730();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_24E038DB4(in, v9, width, height);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  swift_unknownObjectRelease();

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.var3 = v21;
  result.var2 = v20;
  result.var1 = v19;
  result.var0 = v18;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_24DFB64A4();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end