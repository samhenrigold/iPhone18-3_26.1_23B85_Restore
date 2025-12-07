@interface APOdmlPFLUtilities
+ (float)convertToFloat:(id)float;
+ (id)convertToArray:(float *)array count:(unint64_t)count;
+ (id)keyForTypes:(id)types placementType:(unint64_t)type assetManagerType:(unint64_t)managerType;
+ (id)pluginStringForPlacementType:(unint64_t)type;
@end

@implementation APOdmlPFLUtilities

+ (float)convertToFloat:(id)float
{
  floatCopy = float;
  v4 = malloc_type_malloc(4 * [floatCopy count], 0x100004052888210uLL);
  for (i = 0; i < [floatCopy count]; ++i)
  {
    v6 = [floatCopy objectAtIndexedSubscript:i];
    [v6 floatValue];
    v4[i] = v7;
  }

  return v4;
}

+ (id)convertToArray:(float *)array count:(unint64_t)count
{
  for (i = [MEMORY[0x277CBEB18] array];
  {
    *&v7 = *array;
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    [i addObject:v8];

    ++array;
  }

  return i;
}

+ (id)keyForTypes:(id)types placementType:(unint64_t)type assetManagerType:(unint64_t)managerType
{
  v7 = [MEMORY[0x277CCAB68] stringWithString:types];
  [v7 appendString:@"_"];
  type = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", type];
  [v7 appendString:type];

  [v7 appendString:@"_"];
  managerType = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", managerType];
  [v7 appendString:managerType];

  v10 = [v7 copy];

  return v10;
}

+ (id)pluginStringForPlacementType:(unint64_t)type
{
  v3 = kAPOdmlDESPluginSRPPluginName;
  if (type)
  {
    v3 = kAPOdmlDESPluginSLPPluginName;
  }

  return *v3;
}

@end