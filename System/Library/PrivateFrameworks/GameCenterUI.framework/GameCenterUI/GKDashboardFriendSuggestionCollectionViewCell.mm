@interface GKDashboardFriendSuggestionCollectionViewCell
+ (CGSize)sizeWithFitting:(CGSize)fitting in:(id)in;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)tapHandler;
- (void)applyWithSuggestedFriend:(id)friend previouslyInvited:(BOOL)invited;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setInviteButtonTitleColor:(id)color;
- (void)setTapHandler:(id)handler;
@end

@implementation GKDashboardFriendSuggestionCollectionViewCell

+ (CGSize)sizeWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  v7 = static GKDashboardFriendSuggestionCollectionViewCell.size(fitting:in:)(in, width, height);
  v9 = v8;
  swift_unknownObjectRelease();
  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6.n128_f64[0] = width;
  v7.n128_f64[0] = height;
  sub_24DFE8A80(v6, v7, v8, v9);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (id)tapHandler
{
  v2 = sub_24DFE8BD0();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_24E0D5E98;
    v6[3] = &block_descriptor_10;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setTapHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24DF889E4;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_24DFE8CCC(v4, v5);
}

- (void)applyWithSuggestedFriend:(id)friend previouslyInvited:(BOOL)invited
{
  invitedCopy = invited;
  friendCopy = friend;
  selfCopy = self;
  sub_24DFE8E7C(friend, invitedCopy);
}

- (void)setInviteButtonTitleColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_24DFE948C(colorCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24DFE9534();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_24DFE96FC();
}

@end