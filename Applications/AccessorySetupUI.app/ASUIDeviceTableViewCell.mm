@interface ASUIDeviceTableViewCell
- (_TtC16AccessorySetupUI23ASUIDeviceTableViewCell)initWithCoder:(id)coder;
- (_TtC16AccessorySetupUI23ASUIDeviceTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)awakeFromNib;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation ASUIDeviceTableViewCell

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for ASUIDeviceTableViewCell();
  [(ASUIDeviceTableViewCell *)&v2 awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ASUIDeviceTableViewCell();
  [(ASUIDeviceTableViewCell *)&v6 setSelected:selectedCopy animated:animatedCopy];
}

- (_TtC16AccessorySetupUI23ASUIDeviceTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIDeviceTableViewCell_device) = 0;
    v8 = String._bridgeToObjectiveC()();
    v7, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    v8 = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIDeviceTableViewCell_device) = 0;
  }

  v18.receiver = self;
  v18.super_class = type metadata accessor for ASUIDeviceTableViewCell();
  v16 = [(ASUIDeviceTableViewCell *)&v18 initWithStyle:style reuseIdentifier:v8];

  return v16;
}

- (_TtC16AccessorySetupUI23ASUIDeviceTableViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIDeviceTableViewCell_device) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ASUIDeviceTableViewCell();
  coderCopy = coder;
  v5 = [(ASUIDeviceTableViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end