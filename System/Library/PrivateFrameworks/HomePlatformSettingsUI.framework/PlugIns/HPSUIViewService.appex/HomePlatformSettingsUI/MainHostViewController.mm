@interface MainHostViewController
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (MainHostViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)closeButtonTapped;
- (void)loadView;
- (void)receiveWithBetaEnrollmentHomeID:(NSUUID *)d completionHandler:(id)handler;
- (void)receiveWithBetaEnrollmentHomeID:(NSUUID *)d identifiers:(NSSet *)identifiers completionHandler:(id)handler;
- (void)receiveWithCarrySettingsHomeID:(NSUUID *)d completionHandler:(id)handler;
- (void)receiveWithCarrySettingsHomeID:(NSUUID *)d identifiers:(NSSet *)identifiers completionHandler:(id)handler;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation MainHostViewController

- (void)loadView
{
  selfCopy = self;
  MainHostViewController.loadView()();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  MainHostViewController.viewDidDisappear(_:)(disappear);
}

- (MainHostViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_10008715C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return MainHostViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  MainHostViewController.shouldAccept(_:)(connectionCopy);

  return 1;
}

- (void)receiveWithBetaEnrollmentHomeID:(NSUUID *)d identifiers:(NSSet *)identifiers completionHandler:(id)handler
{
  v9 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = identifiers;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_10008742C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100089D30;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100089D38;
  v16[5] = v15;
  dCopy = d;
  identifiersCopy = identifiers;
  selfCopy = self;
  sub_100040A24(0, 0, v11, &unk_100089D40, v16);
}

- (void)closeButtonTapped
{
  selfCopy = self;
  sub_10001BA7C();
}

- (void)receiveWithBetaEnrollmentHomeID:(NSUUID *)d completionHandler:(id)handler
{
  v7 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_10008742C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100089D00;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100089D08;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_100040A24(0, 0, v9, &unk_100089D10, v14);
}

- (void)receiveWithCarrySettingsHomeID:(NSUUID *)d identifiers:(NSSet *)identifiers completionHandler:(id)handler
{
  v9 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = identifiers;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_10008742C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100089CE0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100089CE8;
  v16[5] = v15;
  dCopy = d;
  identifiersCopy = identifiers;
  selfCopy = self;
  sub_100040A24(0, 0, v11, &unk_100089CF0, v16);
}

- (void)receiveWithCarrySettingsHomeID:(NSUUID *)d completionHandler:(id)handler
{
  v7 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_10008742C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100089CC0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100089CC8;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_100040A24(0, 0, v9, &unk_100089CD0, v14);
}

@end