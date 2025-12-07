@interface CKInboxItemSwift
- (CKInboxItemSwift)init;
- (CKInboxItemSwift)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle systemImage:(id)image accessoryText:(id)text;
- (NSString)description;
- (void)updateWithAccessoryText:(id)text;
@end

@implementation CKInboxItemSwift

- (CKInboxItemSwift)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle systemImage:(id)image accessoryText:(id)text
{
  v9 = sub_215692C80();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215692C70();
  v12 = sub_2156930B0();
  v14 = v13;
  if (subtitle)
  {
    subtitle = sub_2156930B0();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_2156930B0();
  v19 = v18;
  if (text)
  {
    v21 = sub_2156930B0();
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  return InboxItem.init(identifier:title:subtitle:systemImage:accessoryText:)(v11, v12, v14, subtitle, v16, v17, v19, v21, v20);
}

- (void)updateWithAccessoryText:(id)text
{
  sub_2156930B0();
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_215692DA0();
}

- (NSString)description
{
  selfCopy = self;
  InboxItem.description.getter();

  v3 = sub_2156930A0();

  return v3;
}

- (CKInboxItemSwift)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end