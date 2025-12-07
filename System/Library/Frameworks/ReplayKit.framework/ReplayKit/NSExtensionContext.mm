@interface NSExtensionContext
@end

@implementation NSExtensionContext

void __90__NSExtensionContext_RPBroadcastExtension__loadBroadcastingApplicationInfoWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = v7;
    NSLog(&cfstr_Loadbroadcasti.isa, v7);
LABEL_9:

    goto LABEL_10;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x277CCAAC8];
    v10 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = *(*(*(a1 + 40) + 8) + 40);
    v21 = 0;
    v14 = [v9 unarchivedObjectOfClasses:v12 fromData:v13 error:&v21];
    v8 = v21;

    if (v8)
    {
      NSLog(&cfstr_Loadbroadcasti_0.isa, v8);
    }

    v15 = [v14 objectForKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoAppIcon"];

    if (v15)
    {
      v16 = MEMORY[0x277D755B8];
      v17 = [v14 objectForKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoAppIcon"];
      v15 = [v16 imageWithData:v17];
    }

    v18 = *(a1 + 32);
    v19 = [v14 objectForKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoBundleID"];
    v20 = [v14 objectForKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoAppName"];
    (*(v18 + 16))(v18, v19, v20, v15);

    goto LABEL_9;
  }

LABEL_10:
}

@end