@interface UIActivity(RPExtensions)
+ (void)streamActivitiesWithCompletion:()RPExtensions;
@end

@implementation UIActivity(RPExtensions)

+ (void)streamActivitiesWithCompletion:()RPExtensions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CCA9C8];
  v9 = *MEMORY[0x277CCA0F8];
  v10[0] = @"com.apple.share-services";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__UIActivity_RPExtensions__streamActivitiesWithCompletion___block_invoke;
  v7[3] = &unk_278B61DC0;
  v8 = v3;
  v6 = v3;
  [v4 extensionsWithMatchingAttributes:v5 completion:v7];
}

@end