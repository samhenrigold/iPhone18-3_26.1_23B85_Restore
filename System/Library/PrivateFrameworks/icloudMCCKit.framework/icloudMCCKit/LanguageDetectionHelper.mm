@interface LanguageDetectionHelper
+ (BOOL)isCategorizationSupportedFor:(id)for;
- (_TtC12icloudMCCKit23LanguageDetectionHelper)init;
@end

@implementation LanguageDetectionHelper

+ (BOOL)isCategorizationSupportedFor:(id)for
{
  v3 = sub_1D373777C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D373797C();
  sub_1D37376EC();
  v7 = sub_1D37051AC(v6);
  v8 = qword_1EDEF4C60;
  v9 = v7;
  v10 = v9;
  if (v8 != -1)
  {
    v9 = swift_once();
  }

  v15 = v10;
  MEMORY[0x1EEE9AC00](v9);
  *(&v14 - 2) = &v15;
  v12 = sub_1D3710C24(sub_1D3710CEC, (&v14 - 4), v11);
  (*(v4 + 8))(v6, v3);

  return v12 & 1;
}

- (_TtC12icloudMCCKit23LanguageDetectionHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LanguageDetectionHelper();
  return [(LanguageDetectionHelper *)&v3 init];
}

@end