@interface WFImgArrayCache
+ (id)imgArrayCacheWithArray:(id)array;
- (WFImgArrayCache)initWithArray:(id)array;
- (void)dealloc;
@end

@implementation WFImgArrayCache

+ (id)imgArrayCacheWithArray:(id)array
{
  v3 = [[self alloc] initWithArray:array];

  return v3;
}

- (WFImgArrayCache)initWithArray:(id)array
{
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = WFImgArrayCache;
  v3 = [(WFImgArrayCache *)&v23 init];
  v4 = v3;
  if (v3)
  {
    v3->numberOfUnknownSizedImages = 0;
    v5 = objc_opt_new();
    v4->numberOfKnownImagePixels = 0;
    v4->imageAlternativeDescriptions = v5;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [array countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(array);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v16 = __WFDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              [WFImgArrayCache initWithArray:v16];
            }

            return v4;
          }

          area = [v10 area];
          if (area == kWFImgDimensionUnknown)
          {
            p_numberOfUnknownSizedImages = &v4->numberOfUnknownSizedImages;
          }

          else
          {
            p_numberOfUnknownSizedImages = &v4->numberOfKnownImagePixels;
          }

          if (area == kWFImgDimensionUnknown)
          {
            v13 = 1;
          }

          else
          {
            v13 = area;
          }

          *p_numberOfUnknownSizedImages += v13;
          v14 = [v10 alt];
          title = [v10 title];
          if (v14 && ([v14 isEqualToString:&stru_28826CB10] & 1) == 0)
          {
            [(NSMutableString *)v4->imageAlternativeDescriptions appendFormat:@"%@\n", v14];
          }

          if (title && ([title isEqualToString:&stru_28826CB10] & 1) == 0 && (!v14 || (objc_msgSend(title, "isEqualToString:", v14) & 1) == 0))
          {
            [(NSMutableString *)v4->imageAlternativeDescriptions appendFormat:@"%@\n", title];
          }
        }

        v7 = [array countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  return v4;
}

- (void)dealloc
{
  imageAlternativeDescriptions = self->imageAlternativeDescriptions;
  if (imageAlternativeDescriptions)
  {
  }

  v4.receiver = self;
  v4.super_class = WFImgArrayCache;
  [(WFImgArrayCache *)&v4 dealloc];
}

- (void)initWithArray:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136446210;
  v2 = "[WFImgArrayCache initWithArray:]";
  _os_log_error_impl(&dword_272D73000, log, OS_LOG_TYPE_ERROR, "**** Warning %{public}s array doesn't contain WFImg objects", &v1, 0xCu);
}

@end