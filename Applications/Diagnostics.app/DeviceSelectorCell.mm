@interface DeviceSelectorCell
- (BOOL)isSelected;
- (_TtC11Diagnostics18DeviceSelectorCell)initWithCoder:(id)coder;
- (_TtC11Diagnostics18DeviceSelectorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)selected;
@end

@implementation DeviceSelectorCell

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeviceSelectorCell(0);
  return [(DeviceSelectorCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = type metadata accessor for DeviceSelectorCell(0);
  v4 = v6.receiver;
  [(DeviceSelectorCell *)&v6 setSelected:selectedCopy];
  if ([v4 isSelected])
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [v4 setAccessoryType:v5];
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1000CBF78();
}

- (_TtC11Diagnostics18DeviceSelectorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_device;
  v9 = type metadata accessor for TargetDevice();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_isDisabled) = 0;
  if (v7)
  {
    v10 = String._bridgeToObjectiveC()();
    v7, v11, v12, v13, v14, v15, v16, v17;
  }

  else
  {
    v10 = 0;
  }

  v20.receiver = self;
  v20.super_class = type metadata accessor for DeviceSelectorCell(0);
  v18 = [(BaseTableViewCell *)&v20 initWithStyle:style reuseIdentifier:v10];

  return v18;
}

- (_TtC11Diagnostics18DeviceSelectorCell)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_device;
  v6 = type metadata accessor for TargetDevice();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_targetDeviceView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics18DeviceSelectorCell_isDisabled) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DeviceSelectorCell(0);
  coderCopy = coder;
  v8 = [(BaseTableViewCell *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end