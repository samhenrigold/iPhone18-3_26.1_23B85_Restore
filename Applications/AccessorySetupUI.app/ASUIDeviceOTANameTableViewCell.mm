@interface ASUIDeviceOTANameTableViewCell
- (_TtC16AccessorySetupUI30ASUIDeviceOTANameTableViewCell)initWithCoder:(id)coder;
- (_TtC16AccessorySetupUI30ASUIDeviceOTANameTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)awakeFromNib;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation ASUIDeviceOTANameTableViewCell

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for ASUIDeviceOTANameTableViewCell();
  [(ASUIDeviceOTANameTableViewCell *)&v2 awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ASUIDeviceOTANameTableViewCell();
  [(ASUIDeviceOTANameTableViewCell *)&v6 setSelected:selectedCopy animated:animatedCopy];
}

- (_TtC16AccessorySetupUI30ASUIDeviceOTANameTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    v8 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI30ASUIDeviceOTANameTableViewCell_deviceOTAName);
    *v8 = 0;
    v8[1] = 0;
    v9 = String._bridgeToObjectiveC()();
    v7, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    v9 = 0;
    v17 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI30ASUIDeviceOTANameTableViewCell_deviceOTAName);
    *v17 = 0;
    v17[1] = 0;
  }

  v20.receiver = self;
  v20.super_class = type metadata accessor for ASUIDeviceOTANameTableViewCell();
  v18 = [(ASUIDeviceOTANameTableViewCell *)&v20 initWithStyle:style reuseIdentifier:v9];

  return v18;
}

- (_TtC16AccessorySetupUI30ASUIDeviceOTANameTableViewCell)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI30ASUIDeviceOTANameTableViewCell_deviceOTAName);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ASUIDeviceOTANameTableViewCell();
  coderCopy = coder;
  v6 = [(ASUIDeviceOTANameTableViewCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end