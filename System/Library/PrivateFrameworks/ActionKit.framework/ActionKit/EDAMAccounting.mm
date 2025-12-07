@interface EDAMAccounting
+ (id)structFields;
@end

@implementation EDAMAccounting

+ (id)structFields
{
  v31[25] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_448;
  if (!structFields_structFields_448)
  {
    v30 = [FATField fieldWithIndex:1 type:10 optional:1 name:@"uploadLimit"];
    v31[0] = v30;
    v29 = [FATField fieldWithIndex:2 type:10 optional:1 name:@"uploadLimitEnd"];
    v31[1] = v29;
    v28 = [FATField fieldWithIndex:3 type:10 optional:1 name:@"uploadLimitNextMonth"];
    v31[2] = v28;
    v27 = [FATField fieldWithIndex:4 type:8 optional:1 name:@"premiumServiceStatus"];
    v31[3] = v27;
    v26 = [FATField fieldWithIndex:5 type:11 optional:1 name:@"premiumOrderNumber"];
    v31[4] = v26;
    v25 = [FATField fieldWithIndex:6 type:11 optional:1 name:@"premiumCommerceService"];
    v31[5] = v25;
    v24 = [FATField fieldWithIndex:7 type:10 optional:1 name:@"premiumServiceStart"];
    v31[6] = v24;
    v23 = [FATField fieldWithIndex:8 type:11 optional:1 name:@"premiumServiceSKU"];
    v31[7] = v23;
    v22 = [FATField fieldWithIndex:9 type:10 optional:1 name:@"lastSuccessfulCharge"];
    v31[8] = v22;
    v21 = [FATField fieldWithIndex:10 type:10 optional:1 name:@"lastFailedCharge"];
    v31[9] = v21;
    v20 = [FATField fieldWithIndex:11 type:11 optional:1 name:@"lastFailedChargeReason"];
    v31[10] = v20;
    v19 = [FATField fieldWithIndex:12 type:10 optional:1 name:@"nextPaymentDue"];
    v31[11] = v19;
    v18 = [FATField fieldWithIndex:13 type:10 optional:1 name:@"premiumLockUntil"];
    v31[12] = v18;
    v17 = [FATField fieldWithIndex:14 type:10 optional:1 name:@"updated"];
    v31[13] = v17;
    v16 = [FATField fieldWithIndex:16 type:11 optional:1 name:@"premiumSubscriptionNumber"];
    v31[14] = v16;
    v3 = [FATField fieldWithIndex:17 type:10 optional:1 name:@"lastRequestedCharge"];
    v31[15] = v3;
    v4 = [FATField fieldWithIndex:18 type:11 optional:1 name:@"currency"];
    v31[16] = v4;
    v5 = [FATField fieldWithIndex:19 type:8 optional:1 name:@"unitPrice"];
    v31[17] = v5;
    v6 = [FATField fieldWithIndex:20 type:8 optional:1 name:@"businessId"];
    v31[18] = v6;
    v7 = [FATField fieldWithIndex:21 type:11 optional:1 name:@"businessName"];
    v31[19] = v7;
    v8 = [FATField fieldWithIndex:22 type:8 optional:1 name:@"businessRole"];
    v31[20] = v8;
    v9 = [FATField fieldWithIndex:23 type:8 optional:1 name:@"unitDiscount"];
    v31[21] = v9;
    v10 = [FATField fieldWithIndex:24 type:10 optional:1 name:@"nextChargeDate"];
    v31[22] = v10;
    v11 = [FATField fieldWithIndex:25 type:8 optional:1 name:@"availablePoints"];
    v31[23] = v11;
    v12 = [FATField fieldWithIndex:26 type:12 optional:1 name:@"backupPaymentInfo" structClass:objc_opt_class()];
    v31[24] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:25];
    v14 = structFields_structFields_448;
    structFields_structFields_448 = v13;

    v2 = structFields_structFields_448;
  }

  return v2;
}

@end