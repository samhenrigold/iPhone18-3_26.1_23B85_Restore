@interface KNBuildWebVideoStart
+ (id)localizedMenuString:(int64_t)string;
+ (id)thumbnailImageNameForType:(int64_t)type;
- (void)addAnimationsTo:(id)to context:(id)context;
@end

@implementation KNBuildWebVideoStart

+ (id)localizedMenuString:(int64_t)string
{
  v4 = sub_275DC204C(self);
  v5 = v4;
  if (string == 1)
  {
    v6 = @"Load Video *BuildStartWebVideo*";
    v7 = @"Load Video";
  }

  else
  {
    v6 = @"Stop Video *BuildStartWebVideo*";
    v7 = @"Stop Video";
  }

  v8 = [v4 localizedStringForKey:v6 value:v7 table:@"Keynote"];

  return v8;
}

+ (id)thumbnailImageNameForType:(int64_t)type
{
  if (type == 1)
  {
    return @"anim-icons-startMovie";
  }

  else
  {
    return @"anim-icons-stopMovie";
  }
}

- (void)addAnimationsTo:(id)to context:(id)context
{
  v32[1] = *MEMORY[0x277D85DE8];
  toCopy = to;
  contextCopy = context;
  textures = [contextCopy textures];
  animatedBuild = [contextCopy animatedBuild];
  objc_msgSend_duration(animatedBuild);
  v10 = v9;

  v11 = [MEMORY[0x277CD9E10] animationWithKeyPath:*MEMORY[0x277D80560]];
  v12 = MEMORY[0x277CBEC28];
  [v11 setFromValue:MEMORY[0x277CBEC28]];
  [v11 setToValue:v12];
  [v11 setDuration:v10];
  v13 = [MEMORY[0x277CD9E10] animationWithKeyPath:*MEMORY[0x277D80568]];
  v14 = MEMORY[0x277CBEC38];
  [v13 setFromValue:MEMORY[0x277CBEC38]];
  [v13 setToValue:v14];
  [v13 setDuration:v10];
  v15 = objc_opt_new();
  if ([contextCopy isMetalRenderer])
  {
    v32[0] = v11;
    v16 = MEMORY[0x277CBEA60];
    v17 = v32;
    v18 = 1;
  }

  else
  {
    v31[0] = v13;
    v31[1] = v11;
    v16 = MEMORY[0x277CBEA60];
    v17 = v31;
    v18 = 2;
  }

  v19 = [v16 arrayWithObjects:v17 count:v18];
  [v15 setAnimations:v19];

  [v15 setDuration:v10];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = textures;
  v21 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      v24 = 0;
      do
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        layer = [*(*(&v26 + 1) + 8 * v24) layer];
        [toCopy setObject:v15 forKey:layer];

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v22);
  }
}

@end