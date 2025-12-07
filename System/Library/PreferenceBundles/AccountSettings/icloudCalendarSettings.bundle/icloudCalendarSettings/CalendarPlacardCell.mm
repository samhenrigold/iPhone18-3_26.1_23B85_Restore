@interface CalendarPlacardCell
- (_TtC22icloudCalendarSettings19CalendarPlacardCell)initWithCoder:(id)coder;
- (_TtC22icloudCalendarSettings19CalendarPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC22icloudCalendarSettings19CalendarPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation CalendarPlacardCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4 = sub_A92C(&qword_1A258, "26");
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10[-1] - v6;
  sub_B6BC();
  sub_B6AC();
  sub_B69C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  [(CalendarPlacardCell *)selfCopy setSelectionStyle:0];
  sub_A92C(&qword_1A260, &qword_E180);
  sub_A9BC(&qword_1A268, &qword_1A260, &qword_E180, &protocol conformance descriptor for SettingsPlacardView<A>);
  sub_B5EC();
  sub_B5FC();
  v10[3] = v4;
  v10[4] = sub_A9BC(&qword_1A270, &qword_1A258, "26", &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_AA04(v10);
  sub_B5DC();
  (*(v5 + 8))(v7, v4);
  sub_B6CC();
}

- (_TtC22icloudCalendarSettings19CalendarPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  sub_B6BC();
  sub_B6AC();
  sub_B69C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (identifier)
  {
    v8 = sub_B65C();
    identifier = v9;
  }

  else
  {
    v8 = 0;
  }

  specifierCopy = specifier;
  v11 = sub_A554(style, v8, identifier, specifier);

  return v11;
}

- (_TtC22icloudCalendarSettings19CalendarPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  sub_B6BC();
  sub_B6AC();
  sub_B69C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (identifier)
  {
    sub_B65C();
    identifier = sub_B62C();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(CalendarPlacardCell *)&v10 initWithStyle:style reuseIdentifier:identifier];

  return v8;
}

- (_TtC22icloudCalendarSettings19CalendarPlacardCell)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  sub_B6BC();
  sub_B6AC();
  sub_B69C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(CalendarPlacardCell *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end