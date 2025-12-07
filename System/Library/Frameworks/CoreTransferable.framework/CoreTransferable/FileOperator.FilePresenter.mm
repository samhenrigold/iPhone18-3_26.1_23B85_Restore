@interface FileOperator.FilePresenter
- (NSURL)presentedItemURL;
- (_TtCC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator13FilePresenter)init;
- (void)dealloc;
- (void)setPresentedItemOperationQueue:(id)queue;
- (void)setPresentedItemURL:(id)l;
@end

@implementation FileOperator.FilePresenter

- (NSURL)presentedItemURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtCC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator13FilePresenter_presentedItemURL;
  swift_beginAccess();
  outlined init with copy of UTType?(self + v6, v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

- (void)setPresentedItemURL:(id)l
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtCC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator13FilePresenter_presentedItemURL;
  swift_beginAccess();
  selfCopy = self;
  outlined assign with take of URL?(v7, self + v10);
  swift_endAccess();
}

- (void)setPresentedItemOperationQueue:(id)queue
{
  v4 = *(self + OBJC_IVAR____TtCC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator13FilePresenter_presentedItemOperationQueue);
  *(self + OBJC_IVAR____TtCC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator13FilePresenter_presentedItemOperationQueue) = queue;
  queueCopy = queue;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  [v4 removeFilePresenter_];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(FileOperator.FilePresenter *)&v6 dealloc];
}

- (_TtCC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator13FilePresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end