@interface KNGalleryAppear
+ (NSDictionary)defaultAttributes;
+ (id)localizedMenuString:(int64_t)string;
- (void)addAnimationsTo:(id)to context:(id)context;
@end

@implementation KNGalleryAppear

+ (id)localizedMenuString:(int64_t)string
{
  v3 = sub_275DC204C(self);
  v4 = [v3 localizedStringForKey:@"Appear *gallery content build*" value:@"Appear" table:@"Keynote"];

  return v4;
}

+ (NSDictionary)defaultAttributes
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"KNBuildAttributesDefaultDuration";
  v5[0] = &unk_2884F3F10;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)addAnimationsTo:(id)to context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [context textures];
  v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    v20 = *MEMORY[0x277CDA230];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if (([v9 isBackgroundTexture] & 1) == 0)
        {
          isIncomingContent = [v9 isIncomingContent];
          isIncomingContent2 = [v9 isIncomingContent];
          v12 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"hidden"];
          v13 = [MEMORY[0x277CCABB0] numberWithBool:isIncomingContent];
          v27[0] = v13;
          v14 = [MEMORY[0x277CCABB0] numberWithBool:isIncomingContent];
          v27[1] = v14;
          v15 = [MEMORY[0x277CCABB0] numberWithBool:isIncomingContent2 ^ 1u];
          v27[2] = v15;
          v16 = [MEMORY[0x277CCABB0] numberWithBool:isIncomingContent2 ^ 1u];
          v27[3] = v16;
          [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
          v18 = v17 = v7;
          [v12 setValues:v18];

          [v12 setKeyTimes:&unk_2884F3E80];
          [v12 setDuration:0.001];
          [v12 setFillMode:v20];
          layer = [v9 layer];
          [toCopy setObject:v12 forKey:layer];

          v7 = v17;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }
}

@end