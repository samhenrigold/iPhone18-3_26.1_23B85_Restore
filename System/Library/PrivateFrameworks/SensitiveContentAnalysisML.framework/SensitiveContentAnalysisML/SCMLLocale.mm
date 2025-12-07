@interface SCMLLocale
+ (BOOL)isEnglishLocale:(id)locale;
+ (BOOL)isSupportedWithLocale:(id)locale;
- (_TtC26SensitiveContentAnalysisML10SCMLLocale)init;
@end

@implementation SCMLLocale

+ (BOOL)isSupportedWithLocale:(id)locale
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  if (locale)
  {
    sub_1B8AEFC58();
    v7 = sub_1B8AEFCC8();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = sub_1B8AEFCC8();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  v9 = _s26SensitiveContentAnalysisML10SCMLLocaleC11isSupported6localeSb10Foundation6LocaleVSg_tFZ_0(v6);
  sub_1B8A897C4(v6, &qword_1EBA96528, &unk_1B8AF64B0);
  return v9 & 1;
}

+ (BOOL)isEnglishLocale:(id)locale
{
  v3 = sub_1B8AEFCC8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8AEFC58();
  v7 = _s26SensitiveContentAnalysisML10SCMLLocaleC15isEnglishLocaleySb10Foundation0H0VFZ_0();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

- (_TtC26SensitiveContentAnalysisML10SCMLLocale)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SCMLLocale();
  return [(SCMLLocale *)&v3 init];
}

@end