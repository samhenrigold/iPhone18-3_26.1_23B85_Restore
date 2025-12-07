@interface MTNotificationSettingsSectionedViewController
- (double)heightForRowWithDescription:(id)description inGroupWithIdentifier:(id)identifier;
- (void)configureCell:(id)cell atIndexPath:(id)path withDescription:(id)description inGroupWithIdentifier:(id)identifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MTNotificationSettingsSectionedViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MTNotificationSettingsSectionedViewController();
  v2 = v3.receiver;
  [(MTGenericSettingsViewController *)&v3 viewDidLoad];
  sub_1001CF2A0();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MTNotificationSettingsSectionedViewController();
  v4 = v7.receiver;
  [(MTGenericSettingsViewController *)&v7 viewWillAppear:appearCopy];
  v5 = *&v4[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_newEpisodeNotifcationGroupInitialHighlightedPodcastUuid + 8];
  if (v5)
  {
    v6 = *&v4[OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_newEpisodeNotifcationGroupInitialHighlightedPodcastUuid];

    sub_1001CFF48(v6, v5, 0);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1001D17DC(appear);
}

- (void)configureCell:(id)cell atIndexPath:(id)path withDescription:(id)description inGroupWithIdentifier:(id)identifier
{
  sub_100168088(&qword_100576038, &unk_100406B10);
  __chkstk_darwin();
  v12 = &v20 - v11;
  if (path)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for IndexPath();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  if (identifier)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    identifier = v16;
  }

  else
  {
    v15 = 0;
  }

  cellCopy = cell;
  descriptionCopy = description;
  selfCopy = self;
  sub_1001D1C5C(cell, v12, description, v15, identifier);

  sub_100009104(v12, &qword_100576038, &unk_100406B10);
}

- (double)heightForRowWithDescription:(id)description inGroupWithIdentifier:(id)identifier
{
  if (identifier)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  descriptionCopy = description;
  selfCopy = self;
  v11 = sub_1001D2040(description, v6, v8);

  return v11;
}

@end