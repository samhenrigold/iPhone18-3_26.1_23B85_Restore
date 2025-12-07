@interface SCUIRemoteInterventionViewController
+ (id)contextDictionaryFromTypeErasedConfig:(id)config;
+ (id)typeErasedConfigWithWorkflow:(int64_t)workflow contextDictionary:(id)dictionary type:(int64_t)type options:(int64_t)options;
- (SCUIRemoteInterventionViewController)initWithCoder:(id)coder;
- (SCUIRemoteInterventionViewController)initWithFacade:(id)facade typeErasedConfig:(id)config;
- (SCUIRemoteInterventionViewController)initWithFacade:(id)facade workflow:(int64_t)workflow type:(int64_t)type contextDictionary:(id)dictionary;
- (SCUIRemoteInterventionViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation SCUIRemoteInterventionViewController

- (SCUIRemoteInterventionViewController)initWithCoder:(id)coder
{
  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

- (SCUIRemoteInterventionViewController)initWithFacade:(id)facade workflow:(int64_t)workflow type:(int64_t)type contextDictionary:(id)dictionary
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_1BC759EE0();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InterventionConfig(0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v26 - v20;
  if (dictionary)
  {
    dictionary = sub_1BC75BA40();
  }

  swift_unknownObjectRetain();
  sub_1BC6E53B4(type);
  v22 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  sub_1BC6E3EAC(workflow, dictionary, v15, 1, v12, v21);
  ObjectType = swift_getObjectType();
  sub_1BC6E86E8(v21, v19);
  v24 = (*(ObjectType + 96))(facade, v19);
  sub_1BC6980C0(v21);
  swift_deallocPartialClassInstance();
  return v24;
}

- (SCUIRemoteInterventionViewController)initWithFacade:(id)facade typeErasedConfig:(id)config
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1BC75C160();
  swift_unknownObjectRelease();
  return RemoteInterventionViewController.init(facade:typeErasedConfig:)(facade, v6);
}

- (SCUIRemoteInterventionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)typeErasedConfigWithWorkflow:(int64_t)workflow contextDictionary:(id)dictionary type:(int64_t)type options:(int64_t)options
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_1BC759EE0();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InterventionConfig(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  if (dictionary)
  {
    dictionary = sub_1BC75BA40();
  }

  sub_1BC6E53B4(type);
  v21 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  sub_1BC6E3EAC(workflow, dictionary, v14, 1, v11, v20);
  sub_1BC6E86E8(v20, v18);
  v22 = sub_1BC75C620();
  sub_1BC6980C0(v20);

  return v22;
}

+ (id)contextDictionaryFromTypeErasedConfig:(id)config
{
  swift_unknownObjectRetain();
  sub_1BC75C160();
  swift_unknownObjectRelease();
  _s26SensitiveContentAnalysisUI32RemoteInterventionViewControllerC17contextDictionary20fromTypeErasedConfigSDys11AnyHashableVypGyp_tFZ_0(v5);
  __swift_destroy_boxed_opaque_existential_1(v5);
  v3 = sub_1BC75BA30();

  return v3;
}

@end