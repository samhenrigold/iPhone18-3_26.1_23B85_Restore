@interface FBAAddAttachmentsController
+ (void)handleErrorAttachingWithAttachment:(id)attachment viewController:(id)controller devicesDiagnosticsController:(id)diagnosticsController error:(id)error;
- (BOOL)tableView:(id)view canHandleDropSession:(id)session;
- (_TtC18Feedback_Assistant27FBAAddAttachmentsController)init;
- (_TtC18Feedback_Assistant27FBAAddAttachmentsController)initWithDelegate:(id)delegate;
- (id)menuForController:(id)controller;
- (id)sheetForController:(id)controller selectedIndexPath:(id)path sender:(id)sender;
- (id)tableView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)getFilesFromFileProviderBeforeTheyDisappearWithCoordinator:(id)coordinator;
@end

@implementation FBAAddAttachmentsController

- (_TtC18Feedback_Assistant27FBAAddAttachmentsController)initWithDelegate:(id)delegate
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC18Feedback_Assistant27FBAAddAttachmentsController____lazy_storage___temporaryDirectory;
  v5 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  swift_unknownObjectWeakAssign();
  v7.receiver = self;
  v7.super_class = type metadata accessor for FBAAddAttachmentsController(0);
  return [(FBAAddAttachmentsController *)&v7 init];
}

- (id)sheetForController:(id)controller selectedIndexPath:(id)path sender:(id)sender
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  senderCopy = sender;
  selfCopy = self;
  v15 = sub_10004F504(controllerCopy, v11, sender);

  (*(v9 + 8))(v11, v8);

  return v15;
}

- (id)menuForController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_10004F894(controllerCopy);

  return v6;
}

- (_TtC18Feedback_Assistant27FBAAddAttachmentsController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  pickerCopy = picker;
  selfCopy = self;
  sub_100052E18(v6);
}

+ (void)handleErrorAttachingWithAttachment:(id)attachment viewController:(id)controller devicesDiagnosticsController:(id)diagnosticsController error:(id)error
{
  swift_getObjCClassMetadata();
  attachmentCopy = attachment;
  controllerCopy = controller;
  diagnosticsControllerCopy = diagnosticsController;
  errorCopy = error;
  sub_100050218(attachmentCopy, controllerCopy, diagnosticsControllerCopy, errorCopy);
}

- (BOOL)tableView:(id)view canHandleDropSession:(id)session
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_100052F20(session);

  swift_unknownObjectRelease();
  return v8 & 1;
}

- (id)tableView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v9 = sub_100041AA0(&qword_100109880, &qword_1000C2C98);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  if (path)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v16 = sub_100050A18(viewCopy, update, v11);

  swift_unknownObjectRelease();
  sub_1000454C8(v11, &qword_100109880, &qword_1000C2C98);

  return v16;
}

- (void)getFilesFromFileProviderBeforeTheyDisappearWithCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100050D74(coordinator);
  swift_unknownObjectRelease();
}

@end