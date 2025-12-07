@interface MSUUpdateBrainLoader
- (MSUUpdateBrainLoader)initWithDictionary:(id)dictionary;
- (void)adjustOptions:(id)options completion:(id)completion;
- (void)dealloc;
- (void)loadUpdateBrainWithOptions:(id)options progressHandler:(id)handler;
@end

@implementation MSUUpdateBrainLoader

- (MSUUpdateBrainLoader)initWithDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = MSUUpdateBrainLoader;
  v4 = [(MSUUpdateBrainLoader *)&v6 init];
  if (v4)
  {
    v4->_attributesDict = dictionary;
  }

  return v4;
}

- (void)loadUpdateBrainWithOptions:(id)options progressHandler:(id)handler
{
  global_queue = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__MSUUpdateBrainLoader_loadUpdateBrainWithOptions_progressHandler___block_invoke;
  block[3] = &unk_2798EDF00;
  block[4] = self;
  block[5] = options;
  block[6] = handler;
  dispatch_async(global_queue, block);
}

uint64_t __67__MSUUpdateBrainLoader_loadUpdateBrainWithOptions_progressHandler___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v8 = 0;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  if ([*(a1 + 32) attributesDict])
  {
    [v2 setObject:objc_msgSend(*(a1 + 32) forKey:{"attributesDict"), @"AssetProperties"}];
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    [v2 setObject:v3 forKey:@"ClientOptions"];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__MSUUpdateBrainLoader_loadUpdateBrainWithOptions_progressHandler___block_invoke_2;
  v7[3] = &unk_2798EDED8;
  v7[4] = *(a1 + 48);
  v4 = perform_command_with_progress("LoadBrain", v2, 0, 0, &v8, v7);
  v5 = *(a1 + 48);
  if (!v4)
  {
    return (*(v5 + 16))(v5, 0, v8);
  }

  v9 = @"MSUAssetOperation";
  v10[0] = @"MSUAssetOperationCompleted";
  return (*(v5 + 16))(v5, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1], 0);
}

- (void)adjustOptions:(id)options completion:(id)completion
{
  if (options)
  {
    v5 = 0;
    v6 = *(completion + 2);

    v6(completion, v5);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MSUUpdateBrainLoader;
  [(MSUUpdateBrainLoader *)&v3 dealloc];
}

@end