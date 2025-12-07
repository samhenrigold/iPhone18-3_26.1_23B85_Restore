@interface KNBuildAppear
+ (NSDictionary)defaultAttributes;
+ (id)localizedMenuString:(int64_t)string;
+ (id)thumbnailImageNameForType:(int64_t)type;
- (void)addAnimationsTo:(id)to context:(id)context;
@end

@implementation KNBuildAppear

+ (id)localizedMenuString:(int64_t)string
{
  v4 = sub_275DC204C(self);
  v5 = v4;
  if (string == 1)
  {
    v6 = @"Appear *AppearBuild*";
    v7 = @"Appear";
  }

  else
  {
    v6 = @"Disappear *AppearBuild*";
    v7 = @"Disappear";
  }

  v8 = [v4 localizedStringForKey:v6 value:v7 table:@"Keynote"];

  return v8;
}

+ (NSDictionary)defaultAttributes
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"KNBuildAttributesDefaultDuration";
  v5[0] = &unk_2884F3F40;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)thumbnailImageNameForType:(int64_t)type
{
  if (type == 1)
  {
    return @"anim-icons-builds-appear";
  }

  else
  {
    return @"anim-icons-builds-disappear";
  }
}

- (void)addAnimationsTo:(id)to context:(id)context
{
  v53 = *MEMORY[0x277D85DE8];
  toCopy = to;
  contextCopy = context;
  textures = [contextCopy textures];
  animatedBuild = [contextCopy animatedBuild];
  isBuildIn = [animatedBuild isBuildIn];
  objc_msgSend_duration(animatedBuild);
  v10 = v9;
  animationFilter = [objc_opt_class() animationFilter];
  v12 = [animationFilter isEqualToString:*MEMORY[0x277D80578]];

  v40 = contextCopy;
  if (v12)
  {
    attributes = [animatedBuild attributes];
    v14 = [attributes valueForAttributeKey:@"KNBuildCustomAttributesDeliveryOption"];

    v15 = +[KNAnimationUtils directionFromCustomAttributesDeliveryOption:](KNAnimationUtils, "directionFromCustomAttributesDeliveryOption:", [v14 unsignedIntegerValue]);
    v16 = [textures count];
    randomGenerator = [contextCopy randomGenerator];
    v18 = [KNAnimationUtils timingsArrayWithDirection:v15 duration:v16 count:randomGenerator chunkDuration:v10 randomness:0.0001 randomGenerator:0.0];
  }

  else
  {
    v18 = MEMORY[0x277CBEBF8];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = textures;
  v47 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v47)
  {
    v19 = 0;
    v44 = *v49;
    if (isBuildIn)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v10 + -0.0001;
    }

    v21 = *MEMORY[0x277D80560];
    v43 = *MEMORY[0x277CDA230];
    v41 = *MEMORY[0x277CDA238];
    v22 = MEMORY[0x277CBEC28];
    v23 = MEMORY[0x277CBEC38];
    v45 = v18;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v49 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v48 + 1) + 8 * i);
        if ([v18 count])
        {
          v26 = [v18 objectAtIndexedSubscript:v19];
          [v26 CGPointValue];
          v28 = v27;

          ++v19;
        }

        else
        {
          v28 = 0.0;
        }

        if ([v25 isBackgroundTexture])
        {
          v28 = v20;
        }

        if (v10 - v28 <= 0.0001)
        {
          v29 = v10 - v28;
        }

        else
        {
          v29 = 0.0001;
        }

        array = [MEMORY[0x277CBEB18] array];
        v31 = [MEMORY[0x277CD9E10] animationWithKeyPath:v21];
        if ([animatedBuild isBuildIn])
        {
          v32 = v23;
        }

        else
        {
          v32 = v22;
        }

        [v31 setFromValue:v32];
        if ([animatedBuild isBuildIn])
        {
          v33 = v22;
        }

        else
        {
          v33 = v23;
        }

        [v31 setToValue:v33];
        [v31 setBeginTime:v28];
        [v31 setDuration:v29];
        [v31 setFillMode:v43];
        [array addObject:v31];
        v34 = v28 + v29;
        if (v34 < v10)
        {
          v35 = [MEMORY[0x277CD9E10] animationWithKeyPath:v21];
          if ([animatedBuild isBuildIn])
          {
            v36 = v22;
          }

          else
          {
            v36 = v23;
          }

          [v35 setFromValue:v36];
          if ([animatedBuild isBuildIn])
          {
            v37 = v22;
          }

          else
          {
            v37 = v23;
          }

          [v35 setToValue:v37];
          [v35 setBeginTime:v34];
          [v35 setDuration:v10 - v34];
          [v35 setFillMode:v41];
          [array addObject:v35];
        }

        v38 = objc_opt_new();
        [v38 setDuration:v10];
        [v38 setAnimations:array];
        layer = [v25 layer];
        [toCopy setObject:v38 forKey:layer];

        v18 = v45;
      }

      v47 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v47);
  }
}

@end