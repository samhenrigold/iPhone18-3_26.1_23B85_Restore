@interface MoreOptionsButton
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)layoutSubviews;
@end

@implementation MoreOptionsButton

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for MoreOptionsButton();
  v2 = v5.receiver;
  [(MoreOptionsButton *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_visualEffectView];
  if (v3)
  {
    v4 = v3;
    [v2 sendSubviewToBack_];
  }
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for MoreOptionsButton();
  interactionCopy = interaction;
  configurationCopy = configuration;
  v10 = v14.receiver;
  swift_unknownObjectRetain();
  [(MoreOptionsButton *)&v14 contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animator];
  v11 = *&v10[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_onMenuDismissed];
  if (v11)
  {
    v12 = *&v10[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_onMenuDismissed + 8];

    v11(v13);

    swift_unknownObjectRelease();
    sub_20B583ECC(v11, v12);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

@end