@interface GKImageLoader
+ (id)getImageURLForURLTemplate:(id)template size:(int64_t)size;
+ (id)getImageURLForURLTemplate:(id)template size:(int64_t)size scale:(double)scale;
@end

@implementation GKImageLoader

+ (id)getImageURLForURLTemplate:(id)template size:(int64_t)size
{
  [objc_msgSend(off_278236580 "sharedController")];

  return [GKImageLoader getImageURLForURLTemplate:template size:size scale:?];
}

+ (id)getImageURLForURLTemplate:(id)template size:(int64_t)size scale:(double)scale
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"template";
  v7[0] = template;
  return [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1), "_gkImageURLForSize:scale:", size, scale)}];
}

@end