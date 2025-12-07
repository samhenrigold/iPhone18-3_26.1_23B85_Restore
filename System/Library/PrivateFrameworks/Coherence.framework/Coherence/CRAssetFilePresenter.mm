@interface CRAssetFilePresenter
- (NSString)description;
- (NSURL)presentedItemURL;
- (_TtC9Coherence20CRAssetFilePresenter)init;
- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)handler;
- (void)accommodatePresentedSubitemDeletionAtURL:(id)l completionHandler:(id)handler;
@end

@implementation CRAssetFilePresenter

- (NSURL)presentedItemURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  sub_1ADDCEE40(self + OBJC_IVAR____TtC9Coherence20CRAssetFilePresenter_presentedItemURL, &v12 - v4, &qword_1EB5B9DC0, &qword_1AE240B90);
  v6 = sub_1AE23BDDC();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_1AE23BD1C();
    (*(v7 + 8))(v5, v6);
    v9 = v10;
  }

  return v9;
}

- (void)accommodatePresentedSubitemDeletionAtURL:(id)l completionHandler:(id)handler
{
  v6 = sub_1AE23BDDC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(handler);
  sub_1AE23BD8C();
  _Block_copy(v10);
  selfCopy = self;
  sub_1AE1B3368(v9, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  sub_1AE1B365C(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (NSString)description
{
  selfCopy = self;
  sub_1AE1A7508();

  v3 = sub_1AE23CCDC();

  return v3;
}

- (_TtC9Coherence20CRAssetFilePresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end