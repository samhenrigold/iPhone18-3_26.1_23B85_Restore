@interface PPSModelURLRecipeHandler
+ (id)metricRecipes;
@end

@implementation PPSModelURLRecipeHandler

+ (id)metricRecipes
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = @"ANE::modelCompilation::modelURL";
  modelURLRecipe = [self modelURLRecipe];
  v12[0] = modelURLRecipe;
  v11[1] = @"ANE::modelLoad::modelURL";
  modelURLRecipe2 = [self modelURLRecipe];
  v12[1] = modelURLRecipe2;
  v11[2] = @"ANE::modelUnload::modelURL";
  modelURLRecipe3 = [self modelURLRecipe];
  v12[2] = modelURLRecipe3;
  v11[3] = @"ANE::modelInference::modelURL";
  modelURLRecipe4 = [self modelURLRecipe];
  v12[3] = modelURLRecipe4;
  v11[4] = @"ANE::newInstanceModelLoad::modelURL";
  modelURLRecipe5 = [self modelURLRecipe];
  v12[4] = modelURLRecipe5;
  v11[5] = @"ANE::newInstanceModelUnload::modelURL";
  modelURLRecipe6 = [self modelURLRecipe];
  v12[5] = modelURLRecipe6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

id __42__PPSModelURLRecipeHandler_modelURLRecipe__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [PPSModelURLDecoder decodeValue:v5 withMetric:0];

    *a4 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_opt_class();

    v9 = [v7 stringWithFormat:@"Recipe supports NSString, value sent %@", v8];
    v10 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a4 = [v10 errorWithDomain:@"com.apple.PPSRecipeEngine" code:4 userInfo:v11];

    v6 = 0;
  }

  return v6;
}

@end