@interface EDAMPremiumInfo
+ (id)structFields;
@end

@implementation EDAMPremiumInfo

+ (id)structFields
{
  v17[11] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_790_12980;
  if (!structFields_structFields_790_12980)
  {
    v16 = [FATField fieldWithIndex:1 type:10 optional:0 name:@"currentTime"];
    v17[0] = v16;
    v15 = [FATField fieldWithIndex:2 type:2 optional:0 name:@"premium"];
    v17[1] = v15;
    v3 = [FATField fieldWithIndex:3 type:2 optional:0 name:@"premiumRecurring"];
    v17[2] = v3;
    v4 = [FATField fieldWithIndex:4 type:10 optional:1 name:@"premiumExpirationDate"];
    v17[3] = v4;
    v5 = [FATField fieldWithIndex:5 type:2 optional:0 name:@"premiumExtendable"];
    v17[4] = v5;
    v6 = [FATField fieldWithIndex:6 type:2 optional:0 name:@"premiumPending"];
    v17[5] = v6;
    v7 = [FATField fieldWithIndex:7 type:2 optional:0 name:@"premiumCancellationPending"];
    v17[6] = v7;
    v8 = [FATField fieldWithIndex:8 type:2 optional:0 name:@"canPurchaseUploadAllowance"];
    v17[7] = v8;
    v9 = [FATField fieldWithIndex:9 type:11 optional:1 name:@"sponsoredGroupName"];
    v17[8] = v9;
    v10 = [FATField fieldWithIndex:10 type:8 optional:1 name:@"sponsoredGroupRole"];
    v17[9] = v10;
    v11 = [FATField fieldWithIndex:11 type:2 optional:1 name:@"premiumUpgradable"];
    v17[10] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:11];
    v13 = structFields_structFields_790_12980;
    structFields_structFields_790_12980 = v12;

    v2 = structFields_structFields_790_12980;
  }

  return v2;
}

@end