@interface BAAppAnalyticsAdditionalData
+ (NSString)editionKindKey;
+ (NSString)supportsUnifiedProductPageKey;
+ (id)dataWithDictionary:(id)dictionary;
- (BAAppAnalyticsAdditionalData)init;
- (BAAppAnalyticsAdditionalData)initWithSupportsUnifiedProductPage:(BOOL)page editionKind:(id)kind;
- (NSString)editionKind;
- (id)dictionary;
@end

@implementation BAAppAnalyticsAdditionalData

- (NSString)editionKind
{
  v2 = *(self + OBJC_IVAR___BAAppAnalyticsAdditionalData_editionKind + 8);
  if (v2)
  {

    v3 = sub_1E1770();
    v2, v4, v5, v6, v7, v8, v9, v10;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (NSString)supportsUnifiedProductPageKey
{
  v2 = sub_1E1770();

  return v2;
}

+ (NSString)editionKindKey
{
  v2 = sub_1E1770();

  return v2;
}

- (BAAppAnalyticsAdditionalData)initWithSupportsUnifiedProductPage:(BOOL)page editionKind:(id)kind
{
  if (kind)
  {
    v6 = sub_1E1780();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *(self + OBJC_IVAR___BAAppAnalyticsAdditionalData_supportsUnifiedProductPage) = page;
  v8 = (self + OBJC_IVAR___BAAppAnalyticsAdditionalData_editionKind);
  *v8 = v6;
  v8[1] = v7;
  v10.receiver = self;
  v10.super_class = type metadata accessor for AppAnalyticsAdditionalData();
  return [(BAAppAnalyticsAdditionalData *)&v10 init];
}

+ (id)dataWithDictionary:(id)dictionary
{
  v3 = sub_1E1730();
  v4 = _s13BookAnalytics03AppB14AdditionalDataC4data10dictionaryACSgSDySSypG_tFZ_0(v3);
  v3, v5, v6, v7, v8, v9, v10, v11;

  return v4;
}

- (id)dictionary
{
  selfCopy = self;
  v3 = sub_31F2C();

  v4.super.isa = sub_1E1720().super.isa;
  v3, v5, v6, v7, v8, v9, v10, v11;

  return v4.super.isa;
}

- (BAAppAnalyticsAdditionalData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end