@interface WFiTunesStoreObject
+ (id)JSONKeyPathsByPropertyKey;
- (NSString)formattedPrice;
@end

@implementation WFiTunesStoreObject

- (NSString)formattedPrice
{
  v3 = objc_opt_new();
  [v3 setNumberStyle:2];
  currencyCode = [(WFiTunesStoreObject *)self currencyCode];
  [v3 setCurrencyCode:currencyCode];

  price = [(WFiTunesStoreObject *)self price];
  v6 = [v3 stringFromNumber:price];

  return v6;
}

id __53__WFiTunesStoreObject_descriptionTextJSONTransformer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKey:@"longDescription"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 objectForKey:@"description"];
  }

  v6 = v5;

  return v6;
}

+ (id)JSONKeyPathsByPropertyKey
{
  v8[6] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___WFiTunesStoreObject;
  v2 = objc_msgSendSuper2(&v6, sel_JSONKeyPathsByPropertyKey);
  v3 = [v2 mutableCopy];

  v7[0] = @"currencyCode";
  v7[1] = @"artistID";
  v8[0] = @"currency";
  v8[1] = @"artistId";
  v7[2] = @"artistName";
  v7[3] = @"kind";
  v8[2] = @"artistName";
  v8[3] = @"kind";
  v7[4] = @"releaseDate";
  v7[5] = @"descriptionText";
  v8[4] = @"releaseDate";
  v8[5] = &unk_1F4A9B5D8;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  [v3 addEntriesFromDictionary:v4];

  return v3;
}

@end