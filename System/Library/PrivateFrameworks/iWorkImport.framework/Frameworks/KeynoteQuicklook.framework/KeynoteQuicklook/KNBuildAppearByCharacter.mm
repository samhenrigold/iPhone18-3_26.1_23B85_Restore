@interface KNBuildAppearByCharacter
+ (BOOL)shouldWarnOnUpgradeWithOldAnimationName:(id)name version:(unint64_t)version;
+ (NSArray)obsoleteAnimationNames;
+ (id)customAttributes;
+ (id)defaultAttributes;
+ (id)localizedAnimationStringForUpgradeWarning:(int64_t)warning;
+ (unint64_t)p_legacyDirectionWithDirection:(unint64_t)direction type:(int64_t)type;
+ (unint64_t)p_textDeliveryOptionWithDirection:(unint64_t)direction type:(int64_t)type isClassic:(BOOL)classic;
+ (void)downgradeAttributes:(id *)attributes animationName:(id *)name warning:(id *)warning type:(int64_t)type isToClassic:(BOOL)classic version:(unint64_t)version;
+ (void)upgradeAttributes:(id *)attributes animationName:(id)name oldAnimationName:(id)animationName warning:(id *)warning type:(int64_t)type isFromClassic:(BOOL)classic version:(unint64_t)version;
@end

@implementation KNBuildAppearByCharacter

+ (id)defaultAttributes
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"KNBuildAttributesDefaultDuration";
  v4[1] = @"KNBuildCustomAttributesTextDelivery";
  v5[0] = &unk_2884F3BD0;
  v5[1] = &unk_2884F3BA0;
  v4[2] = @"KNBuildCustomAttributesDeliveryOption";
  v5[2] = &unk_2884F3BE8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

+ (id)customAttributes
{
  v2 = [KNAnimationUtils customAttributesArrayWithTextDeliveryOptions:&unk_2884F3EB0];
  v3 = [KNAnimationUtils customAttributesArrayWithDeliveryOptions:&unk_2884F3EC8];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  return v4;
}

+ (NSArray)obsoleteAnimationNames
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277D80168];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (unint64_t)p_legacyDirectionWithDirection:(unint64_t)direction type:(int64_t)type
{
  v4 = 99;
  directionCopy = 19;
  if (direction != 99)
  {
    directionCopy = direction;
  }

  if (direction != 19)
  {
    v4 = directionCopy;
  }

  if (type == 2)
  {
    return v4;
  }

  else
  {
    return direction;
  }
}

+ (unint64_t)p_textDeliveryOptionWithDirection:(unint64_t)direction type:(int64_t)type isClassic:(BOOL)classic
{
  if (classic)
  {
    direction = [self p_legacyDirectionWithDirection:direction type:type];
  }

  if (direction > 113)
  {
    if (direction <= 143)
    {
      if (direction != 114)
      {
        if (direction != 115)
        {
          return 1;
        }

        return 4;
      }
    }

    else
    {
      if (direction == 144)
      {
        return 5;
      }

      if (direction != 172)
      {
        if (direction != 188)
        {
          return 1;
        }

        return 4;
      }
    }

    return 3;
  }

  result = 2;
  if (direction <= 110)
  {
    if (direction == 99)
    {
      return result;
    }

    return 1;
  }

  if (direction == 111)
  {
    return 1;
  }

  if (direction != 112)
  {
    return 5;
  }

  return result;
}

+ (void)upgradeAttributes:(id *)attributes animationName:(id)name oldAnimationName:(id)animationName warning:(id *)warning type:(int64_t)type isFromClassic:(BOOL)classic version:(unint64_t)version
{
  classicCopy = classic;
  animationNameCopy = animationName;
  v14 = animationNameCopy;
  if (version < 0xE94D0C4B44)
  {
    v28 = animationNameCopy;
    v15 = [animationNameCopy isEqualToString:*MEMORY[0x277D80138]];
    v14 = v28;
    if ((v15 & 1) == 0)
    {
      v16 = [v28 isEqualToString:*MEMORY[0x277D80168]];
      v17 = [*attributes objectForKeyedSubscript:@"KNBuildAttributesDirection"];

      if (v17)
      {
        v18 = [*attributes objectForKeyedSubscript:@"KNBuildAttributesDirection"];
        unsignedIntegerValue = [v18 unsignedIntegerValue];
      }

      else
      {
        unsignedIntegerValue = 111;
      }

      v20 = [self p_textDeliveryOptionWithDirection:unsignedIntegerValue type:type isClassic:classicCopy];
      if (v16)
      {
        unsignedIntegerValue2 = 3;
      }

      else
      {
        v22 = [*attributes objectForKeyedSubscript:@"KNBuildCustomAttributesTextDelivery"];

        if (v22)
        {
          v23 = [*attributes objectForKeyedSubscript:@"KNBuildCustomAttributesTextDelivery"];
          unsignedIntegerValue2 = [v23 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue2 = 1;
        }
      }

      v24 = [*attributes mutableCopy];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
      [v24 setObject:v25 forKey:@"KNBuildAttributesDirection"];

      v26 = [MEMORY[0x277CCABB0] numberWithInteger:unsignedIntegerValue2];
      [v24 setObject:v26 forKey:@"KNBuildCustomAttributesTextDelivery"];

      v27 = v24;
      *attributes = v24;
      *attributes = [self updateDirectionAttributeValue:unsignedIntegerValue andCustomTextDirectionValue:v20 turnOffBounce:1 turnOffMotionBlur:1 forAttributes:v24];

      v14 = v28;
    }
  }
}

+ (void)downgradeAttributes:(id *)attributes animationName:(id *)name warning:(id *)warning type:(int64_t)type isToClassic:(BOOL)classic version:(unint64_t)version
{
  if ((type - 1) <= 1 && version <= 0x174876E7FFLL && classic)
  {
    v13 = [*attributes objectForKeyedSubscript:{@"KNBuildCustomAttributesDeliveryOption", name, warning}];

    if (v13)
    {
      v14 = [*attributes objectForKeyedSubscript:@"KNBuildCustomAttributesDeliveryOption"];
      unsignedIntegerValue = [v14 unsignedIntegerValue];

      if ((unsignedIntegerValue - 2) > 3)
      {
        v16 = 19;
      }

      else
      {
        v16 = qword_275E79210[unsignedIntegerValue - 2];
      }

      v17 = [self p_legacyDirectionWithDirection:v16 type:type];
      v20 = [*attributes mutableCopy];
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
      [v20 setObject:v18 forKeyedSubscript:@"direction"];

      v19 = v20;
      *attributes = v20;
    }
  }
}

+ (BOOL)shouldWarnOnUpgradeWithOldAnimationName:(id)name version:(unint64_t)version
{
  nameCopy = name;
  v6 = nameCopy;
  v7 = version < 0xE94D0C4B44 && ([nameCopy isEqualToString:*MEMORY[0x277D80168]] & 1) != 0;

  return v7;
}

+ (id)localizedAnimationStringForUpgradeWarning:(int64_t)warning
{
  v4 = sub_275DC204C(self);
  v5 = v4;
  if (warning == 1)
  {
    v6 = @"Appear by Character *AppearByCharacterBuild*";
    v7 = @"Appear by Character";
  }

  else
  {
    v6 = @"Disappear by Character *AppearByCharacterBuild*";
    v7 = @"Disappear by Character";
  }

  v8 = [v4 localizedStringForKey:v6 value:v7 table:@"Keynote"];

  return v8;
}

@end