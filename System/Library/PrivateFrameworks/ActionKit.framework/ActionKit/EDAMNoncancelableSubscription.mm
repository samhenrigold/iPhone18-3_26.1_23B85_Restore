@interface EDAMNoncancelableSubscription
+ (id)structFields;
@end

@implementation EDAMNoncancelableSubscription

+ (id)structFields
{
  v19[13] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_2883;
  if (!structFields_structFields_2883)
  {
    v18 = [FATField fieldWithIndex:1 type:8 optional:0 name:@"subscriptionId"];
    v19[0] = v18;
    v17 = [FATField fieldWithIndex:2 type:12 optional:1 name:@"user" structClass:objc_opt_class()];
    v19[1] = v17;
    v16 = [FATField fieldWithIndex:3 type:8 optional:1 name:@"premiumServiceStatus"];
    v19[2] = v16;
    v3 = [FATField fieldWithIndex:4 type:11 optional:1 name:@"premiumCommerceService"];
    v19[3] = v3;
    v4 = [FATField fieldWithIndex:5 type:11 optional:1 name:@"itunesReceiptData"];
    v19[4] = v4;
    v5 = [FATField fieldWithIndex:6 type:11 optional:1 name:@"amazonUserId"];
    v19[5] = v5;
    v6 = [FATField fieldWithIndex:7 type:11 optional:1 name:@"amazonPurchaseToken"];
    v19[6] = v6;
    v7 = [FATField fieldWithIndex:8 type:11 optional:1 name:@"premiumServiceSku"];
    v19[7] = v7;
    v8 = [FATField fieldWithIndex:9 type:10 optional:1 name:@"nextPaymentDue"];
    v19[8] = v8;
    v9 = [FATField fieldWithIndex:10 type:10 optional:1 name:@"premiumLockUntil"];
    v19[9] = v9;
    v10 = [FATField fieldWithIndex:11 type:11 optional:1 name:@"currency"];
    v19[10] = v10;
    v11 = [FATField fieldWithIndex:12 type:8 optional:1 name:@"unitPrice"];
    v19[11] = v11;
    v12 = [FATField fieldWithIndex:13 type:11 optional:1 name:@"itunesOriginalTransactionId"];
    v19[12] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:13];
    v14 = structFields_structFields_2883;
    structFields_structFields_2883 = v13;

    v2 = structFields_structFields_2883;
  }

  return v2;
}

@end