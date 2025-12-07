@interface WFiTunesPodcastObject
+ (id)JSONKeyPathsByPropertyKey;
- (WFiTunesPodcastObject)initWithName:(id)name identifier:(id)identifier podcastUUID:(id)d feedURL:(id)l kind:(id)kind;
@end

@implementation WFiTunesPodcastObject

- (WFiTunesPodcastObject)initWithName:(id)name identifier:(id)identifier podcastUUID:(id)d feedURL:(id)l kind:(id)kind
{
  dCopy = d;
  lCopy = l;
  v18.receiver = self;
  v18.super_class = WFiTunesPodcastObject;
  v14 = [(WFiTunesObject *)&v18 initWithName:name identifier:identifier kind:kind];
  v15 = v14;
  if (v14)
  {
    [(WFiTunesPodcastObject *)v14 setPodcastUUID:dCopy];
    [(WFiTunesPodcastObject *)v15 setFeedURL:lCopy];
    v16 = v15;
  }

  return v15;
}

+ (id)JSONKeyPathsByPropertyKey
{
  v8[2] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___WFiTunesPodcastObject;
  v2 = objc_msgSendSuper2(&v6, sel_JSONKeyPathsByPropertyKey);
  v3 = [v2 mutableCopy];

  v7[0] = @"podcastUUID";
  v7[1] = @"feedURL";
  v8[0] = @"podcastUUID";
  v8[1] = @"feedUrl";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v3 addEntriesFromDictionary:v4];

  return v3;
}

@end