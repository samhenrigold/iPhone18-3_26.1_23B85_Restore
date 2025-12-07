@interface NSError(HomeKitCoreData)
+ (id)hmd_validationErrorWithDescription:()HomeKitCoreData;
+ (id)hmd_validationErrorWithDescription:()HomeKitCoreData managedObject:attributeName:;
@end

@implementation NSError(HomeKitCoreData)

+ (id)hmd_validationErrorWithDescription:()HomeKitCoreData managedObject:attributeName:
{
  v16[3] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBE320];
  v15[0] = *MEMORY[0x277CCA450];
  v15[1] = v7;
  v16[0] = a3;
  v16[1] = a4;
  v15[2] = *MEMORY[0x277CBE318];
  v16[2] = a5;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionaryWithObjects:v16 forKeys:v15 count:3];
  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:1550 userInfo:v12];

  return v13;
}

+ (id)hmd_validationErrorWithDescription:()HomeKitCoreData
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CCA050];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v3 errorWithDomain:v4 code:1550 userInfo:v7];

  return v8;
}

@end