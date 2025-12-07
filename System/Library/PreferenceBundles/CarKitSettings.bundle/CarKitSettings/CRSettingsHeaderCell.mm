@interface CRSettingsHeaderCell
- (_TtC14CarKitSettings20CRSettingsHeaderCell)initWithCoder:(id)coder;
- (_TtC14CarKitSettings20CRSettingsHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC14CarKitSettings20CRSettingsHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation CRSettingsHeaderCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_14628(&qword_7C338, qword_54370);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - v6;
  v8 = sub_4A99C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4A98C();
  sub_461A4();
  selfCopy = self;
  sub_4AF0C();
  sub_4AFFC();
  v14[3] = v4;
  v14[4] = sub_2C958(&qword_7C340, &qword_7C338, qword_54370, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_2B2C0(v14);
  sub_4AEFC();
  (*(v5 + 8))(v7, v4);
  sub_4B81C();
  [(CRSettingsHeaderCell *)selfCopy setSelectionStyle:0];

  (*(v9 + 8))(v11, v8);
}

- (_TtC14CarKitSettings20CRSettingsHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_4B5FC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return CRSettingsHeaderCell.init(style:reuseIdentifier:specifier:)(style, v7, v9, specifier);
}

- (_TtC14CarKitSettings20CRSettingsHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    sub_4B5FC();
    identifier = sub_4B5EC();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(CRSettingsHeaderCell *)&v10 initWithStyle:style reuseIdentifier:identifier];

  return v8;
}

- (_TtC14CarKitSettings20CRSettingsHeaderCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(CRSettingsHeaderCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end