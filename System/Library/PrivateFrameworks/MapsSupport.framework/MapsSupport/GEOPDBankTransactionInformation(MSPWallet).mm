@interface GEOPDBankTransactionInformation(MSPWallet)
- (id)initWithMSPWalletBankTransactionInformation:()MSPWallet rawMerchantCode:industryCategory:;
@end

@implementation GEOPDBankTransactionInformation(MSPWallet)

- (id)initWithMSPWalletBankTransactionInformation:()MSPWallet rawMerchantCode:industryCategory:
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27.receiver = self;
  v27.super_class = &off_286975BA8;
  v11 = objc_msgSendSuper2(&v27, sel_init);
  if (v11)
  {
    [v11 setBankTransactionType:{objc_msgSend(v8, "transactionType")}];
    bankTransactionDescription = [v8 bankTransactionDescription];
    [v11 setBankTransactionDescription:bankTransactionDescription];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    otherTransactionLocations = [v8 otherTransactionLocations];
    v14 = [otherTransactionLocations countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        v17 = 0;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(otherTransactionLocations);
          }

          [v11 addOtherTransactionLocations:*(*(&v23 + 1) + 8 * v17++)];
        }

        while (v15 != v17);
        v15 = [otherTransactionLocations countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v15);
    }

    [v8 transactionTimestamp];
    [v11 setTransactionTimestamp:?];
    [v11 setIndustryCode:{objc_msgSend(v8, "industryCode")}];
    [v11 setEnableBrandMuidFallback:{objc_msgSend(v8, "enableBrandMuidFallback")}];
    transactionCurrencyCode = [v8 transactionCurrencyCode];
    [v11 setTransactionCurrencyCode:transactionCurrencyCode];

    [v11 setTransactionStatus:{objc_msgSend(v8, "transactionStatus")}];
    merchantInformation = [v8 merchantInformation];
    [v11 setMerchantInformation:merchantInformation];

    bankTransactionDescriptionClean = [v8 bankTransactionDescriptionClean];
    [v11 setBankTransactionDescriptionClean:bankTransactionDescriptionClean];

    bankIdentifier = [v8 bankIdentifier];
    [v11 setBankIdentifier:bankIdentifier];

    [v11 setRawMerchantCode:v9];
    [v11 setIndustryCategory:v10];
  }

  return v11;
}

@end