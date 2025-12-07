@interface PMLPlanSerialization
+ (id)planFromData:(id)data store:(id)store trainingNetworkPath:(id)path;
+ (id)planFromData:(id)data withArgs:(id)args;
+ (id)planFromData:(id)data withStore:(id)store;
+ (id)serializePlan:(id)plan;
@end

@implementation PMLPlanSerialization

+ (id)serializePlan:(id)plan
{
  planCopy = plan;
  v4 = [[PMLPlanWrapper alloc] initWithPlan:planCopy];

  v5 = PMLBuildChunkFile(v4);

  return v5;
}

+ (id)planFromData:(id)data withArgs:(id)args
{
  argsCopy = args;
  dataCopy = data;
  v7 = objc_opt_class();
  v8 = PMLReadChunkData(dataCopy, v7, argsCopy);

  plan = [v8 plan];

  return plan;
}

+ (id)planFromData:(id)data store:(id)store trainingNetworkPath:(id)path
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = @"TRAINING_STORE";
  v15[1] = @"PML_ESPRESSO_TRAINING_NETWORK_PATH";
  v16[0] = store;
  v16[1] = path;
  v8 = MEMORY[0x277CBEAC0];
  pathCopy = path;
  storeCopy = store;
  dataCopy = data;
  v12 = [v8 dictionaryWithObjects:v16 forKeys:v15 count:2];

  v13 = [self planFromData:dataCopy withArgs:v12];

  return v13;
}

+ (id)planFromData:(id)data withStore:(id)store
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"TRAINING_STORE";
  v13[0] = store;
  v6 = MEMORY[0x277CBEAC0];
  storeCopy = store;
  dataCopy = data;
  v9 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v10 = [self planFromData:dataCopy withArgs:v9];

  return v10;
}

@end