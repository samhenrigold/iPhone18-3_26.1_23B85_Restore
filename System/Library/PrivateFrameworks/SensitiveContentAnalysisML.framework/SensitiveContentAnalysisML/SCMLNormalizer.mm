@interface SCMLNormalizer
+ (id)normalizeText:(id)text lite:(BOOL)lite error:(id *)error;
+ (id)trimmedText:(id)text;
- (_TtC26SensitiveContentAnalysisML14SCMLNormalizer)init;
@end

@implementation SCMLNormalizer

+ (id)normalizeText:(id)text lite:(BOOL)lite error:(id *)error
{
  liteCopy = lite;
  v6 = sub_1B8AF0668();
  if (liteCopy)
  {
    sub_1B8ACFCBC(v6, v7);
  }

  else
  {
    sub_1B8AD0090(v6, v7);
  }

  v8 = sub_1B8AF0658();

  return v8;
}

+ (id)trimmedText:(id)text
{
  v3 = sub_1B8AEFB28();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v17 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  v17[0] = sub_1B8AF0668();
  v17[1] = v13;
  sub_1B8AEFB08();
  sub_1B8AEFAF8();
  sub_1B8AEFB18();
  v14 = *(v4 + 8);
  v14(v7, v3);
  v14(v10, v3);
  sub_1B8A3F920();
  sub_1B8AF09D8();
  v14(v12, v3);

  v15 = sub_1B8AF0658();

  return v15;
}

- (_TtC26SensitiveContentAnalysisML14SCMLNormalizer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SCMLNormalizer();
  return [(SCMLNormalizer *)&v3 init];
}

@end