@interface AccountStatusUpgradeSummaryTileFeedItemViewController
- (NSString)title;
- (_TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation AccountStatusUpgradeSummaryTileFeedItemViewController

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AccountStatusUpgradeSummaryTileFeedItemViewController(0);
  v4 = v6.receiver;
  [(AccountStatusUpgradeSummaryTileFeedItemViewController *)&v6 viewDidAppear:appearCopy];
  sub_29D5B1E5C();
  v5 = sub_29D5B1E4C();
  sub_29D5A4C10();
  sub_29D5B1E2C();
}

- (NSString)title
{
  v2 = sub_29D5B200C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDB9C70];
  sub_29D5AAD1C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v15 - v10;
  v12 = sub_29D5B0EFC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  (*(v3 + 8))(v6, v2);
  sub_29D5AB160(v11, &qword_2A1A19588, v7);
  v13 = sub_29D5B3E1C();

  return v13;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29D5A7ED0();
}

- (_TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_29D5AA048(v5, v7, bundle);
}

@end