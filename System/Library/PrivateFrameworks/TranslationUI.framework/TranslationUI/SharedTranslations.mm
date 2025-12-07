@interface SharedTranslations
- (NSOperationQueue)presentedItemOperationQueue;
- (NSURL)presentedItemURL;
- (_TtC13TranslationUI18SharedTranslations)init;
- (void)dealloc;
- (void)presentedItemDidChange;
- (void)setPresentedItemOperationQueue:(id)queue;
- (void)setPresentedItemURL:(id)l;
@end

@implementation SharedTranslations

- (NSOperationQueue)presentedItemOperationQueue
{
  v3 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemOperationQueue;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPresentedItemOperationQueue:(id)queue
{
  v5 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemOperationQueue;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = queue;
  queueCopy = queue;
}

- (NSURL)presentedItemURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  sub_26F42ECE8(self + v6, v5);
  v7 = sub_26F49D878();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_26F49D828();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setPresentedItemURL:(id)l
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  if (l)
  {
    sub_26F49D848();
    v8 = sub_26F49D878();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_26F49D878();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  selfCopy = self;
  sub_26F42EEF8(v7, self + v10);
  swift_endAccess();
}

- (void)dealloc
{
  selfCopy = self;
  sub_26F4301E8();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for SharedTranslations(0);
  [(SharedTranslations *)&v3 dealloc];
}

- (void)presentedItemDidChange
{
  selfCopy = self;
  sub_26F4337F0();
}

- (_TtC13TranslationUI18SharedTranslations)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end