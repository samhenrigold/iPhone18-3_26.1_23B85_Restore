@interface FBKSForm_FrameworkPrivateName
+ (id)fromJSONWithData:(id)data;
- (FBKSForm_FrameworkPrivateName)init;
- (FBKSForm_FrameworkPrivateName)initWithIdentifier:(id)identifier;
- (NSData)asJSON;
- (NSString)identifier;
- (id)asFBAURLSchemeWithIsSurvey:(BOOL)survey;
- (int64_t)authenticationMethod;
- (void)prefillWithQuestion:(id)question answer:(id)answer;
- (void)setAuthenticationMethod:(int64_t)method;
- (void)setIdentifier:(id)identifier;
- (void)setQuestionsWithNsMutableDict:(id)dict;
@end

@implementation FBKSForm_FrameworkPrivateName

- (void)setQuestionsWithNsMutableDict:(id)dict
{
  dictCopy = dict;
  selfCopy = self;
  _s15FeedbackService8FBKSFormC12setQuestions13nsMutableDictySo19NSMutableDictionaryC_tF_0();
}

- (NSData)asJSON
{
  selfCopy = self;
  v3 = FBKSForm.asJSON.getter();
  v5 = v4;

  v6 = sub_1B014CA7C();
  sub_1B00D2024(v3, v5);

  return v6;
}

+ (id)fromJSONWithData:(id)data
{
  dataCopy = data;
  v4 = sub_1B014CA8C();
  v6 = v5;

  v7 = _s15FeedbackService8FBKSFormC8fromJSON4dataACSg10Foundation4DataV_tFZ_0(v4, v6);
  sub_1B00D2024(v4, v6);

  return v7;
}

- (id)asFBAURLSchemeWithIsSurvey:(BOOL)survey
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B50, &qword_1B014F330);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  selfCopy = self;
  FBKSForm.asFBAURLScheme(isSurvey:)(survey, v7);

  v9 = sub_1B014CA4C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_1B014C9FC();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}

- (NSString)identifier
{
  swift_beginAccess();

  v2 = sub_1B014CC0C();

  return v2;
}

- (void)setIdentifier:(id)identifier
{
  v4 = sub_1B014CC1C();
  v6 = v5;
  v7 = (self + OBJC_IVAR___FBKSForm_FrameworkPrivateName_identifier);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (int64_t)authenticationMethod
{
  v3 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_authenticationMethod;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAuthenticationMethod:(int64_t)method
{
  v5 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_authenticationMethod;
  swift_beginAccess();
  *(self + v5) = method;
}

- (FBKSForm_FrameworkPrivateName)initWithIdentifier:(id)identifier
{
  v4 = sub_1B014CC1C();
  v6 = v5;
  v7 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_answers;
  v8 = MEMORY[0x1E69E7CC0];
  *(self + v7) = sub_1B0122BE8(MEMORY[0x1E69E7CC0]);
  *(self + OBJC_IVAR___FBKSForm_FrameworkPrivateName_authenticationMethod) = 3;
  v9 = sub_1B0122BE8(v8);
  swift_beginAccess();
  *(self + v7) = v9;

  v10 = (self + OBJC_IVAR___FBKSForm_FrameworkPrivateName_identifier);
  *v10 = v4;
  v10[1] = v6;
  v12.receiver = self;
  v12.super_class = type metadata accessor for FBKSForm();
  return [(FBKSForm_FrameworkPrivateName *)&v12 init];
}

- (void)prefillWithQuestion:(id)question answer:(id)answer
{
  v5 = sub_1B014CC1C();
  v7 = v6;
  v8 = sub_1B014CC1C();
  v10 = v9;
  v14 = v5;
  v15 = v7;
  selfCopy = self;

  sub_1B0135F14(&v14, v8, v10);

  v12 = v14;
  v13 = v15;

  sub_1B00D2010(v12, v13);
}

- (FBKSForm_FrameworkPrivateName)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end