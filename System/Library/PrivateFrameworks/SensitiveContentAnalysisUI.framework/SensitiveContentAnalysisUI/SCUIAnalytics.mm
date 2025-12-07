@interface SCUIAnalytics
+ (id)getAnalyticsUIContextByIdentifierWithIdentifier:(id)identifier;
+ (id)getAnalyticsUIContextWith:(id)with;
+ (void)contextMenuButtonTappedWithContentType:(int64_t)type subContentType:(int64_t)contentType direction:(int64_t)direction options:(int64_t)options isBlurred:(BOOL)blurred identifier:(id)identifier;
+ (void)deleteAnalyticsUIContextWithContextKey:(id)key;
+ (void)insertNewAnalyticsUIContextWithContextKey:(id)key analyticsContextWrapper:(id)wrapper;
+ (void)insertNewOptionsToContextMenuWith:(id)with value:(id)value;
+ (void)obscuredViewRemovedWithIdentifier:(id)identifier;
+ (void)obscuredViewShownWithContentType:(int64_t)type subcontentType:(int64_t)subcontentType identifier:(id)identifier;
+ (void)waysToGetHelpTappedWithContentType:(int64_t)type isBlurred:(BOOL)blurred;
- (SCUIAnalytics)init;
@end

@implementation SCUIAnalytics

+ (void)obscuredViewShownWithContentType:(int64_t)type subcontentType:(int64_t)subcontentType identifier:(id)identifier
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v11 = sub_1BC75BE10();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_1BC75BDE0();
  swift_unknownObjectRetain_n();
  v12 = sub_1BC75BDD0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = ObjCClassMetadata;
  v13[5] = type;
  v13[6] = identifier;
  sub_1BC652910(0, 0, v9, &unk_1BC75F7F0, v13);

  swift_unknownObjectRelease();
}

+ (void)obscuredViewRemovedWithIdentifier:(id)identifier
{
  swift_unknownObjectRetain();
  sub_1BC65D5BC(identifier);

  swift_unknownObjectRelease();
}

+ (void)contextMenuButtonTappedWithContentType:(int64_t)type subContentType:(int64_t)contentType direction:(int64_t)direction options:(int64_t)options isBlurred:(BOOL)blurred identifier:(id)identifier
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v22 - v15;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v18 = sub_1BC75BE10();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_1BC75BDE0();
  swift_unknownObjectRetain_n();
  v19 = sub_1BC75BDD0();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  *(v20 + 32) = ObjCClassMetadata;
  *(v20 + 40) = type;
  *(v20 + 48) = contentType;
  *(v20 + 56) = direction;
  *(v20 + 64) = options;
  *(v20 + 72) = blurred;
  *(v20 + 80) = identifier;
  sub_1BC652910(0, 0, v16, &unk_1BC75F7E8, v20);

  swift_unknownObjectRelease();
}

+ (void)waysToGetHelpTappedWithContentType:(int64_t)type isBlurred:(BOOL)blurred
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_1BC75BE10();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1BC75BDE0();
  v10 = sub_1BC75BDD0();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = type;
  *(v11 + 40) = blurred;
  sub_1BC652910(0, 0, v8, &unk_1BC75F7E0, v11);
}

- (SCUIAnalytics)init
{
  v3.receiver = self;
  v3.super_class = SCUIAnalytics;
  return [(SCUIAnalytics *)&v3 init];
}

+ (void)insertNewOptionsToContextMenuWith:(id)with value:(id)value
{
  v5 = sub_1BC75BB60();
  v7 = v6;
  v8 = qword_1EBCDF9C0;
  valueCopy = value;
  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = valueCopy;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = qword_1EBCDF9C8;
  qword_1EBCDF9C8 = 0x8000000000000000;
  sub_1BC65C27C(v10, v5, v7, isUniquelyReferenced_nonNull_native);

  qword_1EBCDF9C8 = v12;
  swift_endAccess();
}

+ (id)getAnalyticsUIContextWith:(id)with
{
  if (with)
  {
    v3 = sub_1BC75BA40();
  }

  else
  {
    v3 = 0;
  }

  v4 = _sSo13SCUIAnalyticsC26SensitiveContentAnalysisUIE21getAnalyticsUIContext4withAC0G14ContextWrapperCSgSDys11AnyHashableVypGSg_tFZ_0(v3);

  return v4;
}

+ (void)insertNewAnalyticsUIContextWithContextKey:(id)key analyticsContextWrapper:(id)wrapper
{
  keyCopy = key;
  wrapperCopy = wrapper;
  _sSo13SCUIAnalyticsC26SensitiveContentAnalysisUIE27insertNewAnalyticsUIContext4With23analyticsContextWrapperySo8NSObjectCSg_AC0hlM0CSgtFZ_0(key, wrapper);
}

+ (void)deleteAnalyticsUIContextWithContextKey:(id)key
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  if (key)
  {
    v7 = qword_1EBCDF9B0;
    keyCopy = key;
    if (v7 != -1)
    {
      swift_once();
    }

    sub_1BC75C7B0();
    v9 = (*(*v10[0] + 104))(v10);
    sub_1BC65B838(keyCopy, v6);
    sub_1BC66008C(v6, &qword_1EBCDBC50, &qword_1BC762D70);
    v9(v10, 0);
  }
}

+ (id)getAnalyticsUIContextByIdentifierWithIdentifier:(id)identifier
{
  swift_unknownObjectRetain();
  v4 = _sSo13SCUIAnalyticsC26SensitiveContentAnalysisUIE33getAnalyticsUIContextByIdentifier10identifierAC0G14ContextWrapperCSgSo9NSCopying_So14NSSecureCodingSo8NSObjectp_tFZ_0(identifier);
  swift_unknownObjectRelease();

  return v4;
}

@end