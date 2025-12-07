@interface PassKit_TMLModule
+ (BOOL)loadModule;
+ (void)defineConstants:(id)constants;
+ (void)initializeJSContext:(id)context;
@end

@implementation PassKit_TMLModule

+ (BOOL)loadModule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F195DBC;
  block[3] = &unk_279DC5670;
  block[4] = &v5;
  if (qword_2806D9050 != -1)
  {
    dispatch_once(&qword_2806D9050, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)initializeJSContext:(id)context
{
  v21[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  [self defineConstants:contextCopy];
  [contextCopy setObject:&unk_287F2B850 forKeyedSubscript:@"PKPaymentSummaryItem"];
  [contextCopy setObject:&unk_287F2B870 forKeyedSubscript:@"PKPass"];
  v5 = MEMORY[0x277CD4658];
  context = [contextCopy context];
  v7 = [v5 valueWithNewObjectInContext:context];

  v9 = *MEMORY[0x277CD4638];
  v20[0] = *MEMORY[0x277CD4630];
  v8 = v20[0];
  v20[1] = v9;
  v21[0] = v7;
  v21[1] = &unk_287F550E8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  [contextCopy defineProperty:@"PKPaymentAuthorizationViewController" descriptor:v10];

  v18[0] = v8;
  v18[1] = v9;
  v19[0] = &unk_287F2B890;
  v19[1] = &unk_287F550E8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [v7 defineProperty:@"canMakePayments" descriptor:v11];

  v16[0] = v8;
  v16[1] = v9;
  v17[0] = &unk_287F2B8B0;
  v17[1] = &unk_287F550E8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v7 defineProperty:@"canMakePaymentsUsingNetworks" descriptor:v12];

  v14[0] = v8;
  v14[1] = v9;
  v15[0] = &unk_287F2B8D0;
  v15[1] = &unk_287F550E8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v7 defineProperty:@"canMakePaymentsUsingNetworksAndCapabilities" descriptor:v13];
}

+ (void)defineConstants:(id)constants
{
  v3 = MEMORY[0x277CBEB38];
  constantsCopy = constants;
  dictionary = [v3 dictionary];
  v5 = *MEMORY[0x277CD4630];
  [dictionary setObject:&unk_287F55100 forKeyedSubscript:*MEMORY[0x277CD4630]];
  [constantsCopy defineProperty:@"PKPaymentButtonStyleWhite" descriptor:dictionary];
  [dictionary setObject:&unk_287F55118 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentButtonStyleWhiteOutline" descriptor:dictionary];
  [dictionary setObject:&unk_287F55130 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentButtonStyleBlack" descriptor:dictionary];
  [dictionary setObject:&unk_287F55148 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentButtonStyleAutomatic" descriptor:dictionary];
  [dictionary setObject:&unk_287F55100 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentButtonTypePlain" descriptor:dictionary];
  [dictionary setObject:&unk_287F55118 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentButtonTypeBuy" descriptor:dictionary];
  [dictionary setObject:&unk_287F55130 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentButtonTypeSetUp" descriptor:dictionary];
  [dictionary setObject:&unk_287F55160 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentButtonTypeCheckout" descriptor:dictionary];
  [dictionary setObject:&unk_287F55178 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentButtonTypeBook" descriptor:dictionary];
  [dictionary setObject:&unk_287F55190 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentButtonTypeDonate" descriptor:dictionary];
  [dictionary setObject:&unk_287F55148 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentButtonTypeInStore" descriptor:dictionary];
  [dictionary setObject:&unk_287F551A8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentButtonTypeSubscribe" descriptor:dictionary];
  [dictionary setObject:&unk_287F551C0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentButtonTypeAddMoney" descriptor:dictionary];
  [dictionary setObject:&unk_287F551D8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentButtonTypeOrder" descriptor:dictionary];
  [dictionary setObject:&unk_287F551F0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentButtonTypeSupport" descriptor:dictionary];
  [dictionary setObject:&unk_287F55208 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentButtonTypeTip" descriptor:dictionary];
  [dictionary setObject:&unk_287F55220 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentButtonTypeTopUp" descriptor:dictionary];
  [dictionary setObject:&unk_287F55238 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentButtonTypeReload" descriptor:dictionary];
  [dictionary setObject:&unk_287F55250 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentButtonTypeContribute" descriptor:dictionary];
  [dictionary setObject:&unk_287F55268 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentButtonTypeRent" descriptor:dictionary];
  [dictionary setObject:&unk_287F55100 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentAuthorizationStatusSuccess" descriptor:dictionary];
  [dictionary setObject:&unk_287F55118 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentAuthorizationStatusFailure" descriptor:dictionary];
  [dictionary setObject:&unk_287F55160 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentAuthorizationStatusPINRequired" descriptor:dictionary];
  [dictionary setObject:&unk_287F551A8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentAuthorizationStatusPINLockout" descriptor:dictionary];
  [dictionary setObject:&unk_287F55178 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentAuthorizationStatusPINIncorrect" descriptor:dictionary];
  [dictionary setObject:&unk_287F55130 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentAuthorizationStatusInvalidBillingPostalAddress" descriptor:dictionary];
  [dictionary setObject:&unk_287F55148 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentAuthorizationStatusInvalidShippingPostalAddress" descriptor:dictionary];
  [dictionary setObject:&unk_287F55190 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentAuthorizationStatusInvalidShippingContact" descriptor:dictionary];
  [dictionary setObject:&unk_287F55280 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKMerchantCapability3DS" descriptor:dictionary];
  [dictionary setObject:&unk_287F55298 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKMerchantCapabilityEMV" descriptor:dictionary];
  [dictionary setObject:&unk_287F552B0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKMerchantCapabilityCredit" descriptor:dictionary];
  [dictionary setObject:&unk_287F552C8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKMerchantCapabilityDebit" descriptor:dictionary];
  [dictionary setObject:&unk_287F552E0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKAddressFieldNone" descriptor:dictionary];
  [dictionary setObject:&unk_287F55280 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKAddressFieldPostalAddress" descriptor:dictionary];
  [dictionary setObject:&unk_287F55298 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKAddressFieldPhone" descriptor:dictionary];
  [dictionary setObject:&unk_287F552B0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKAddressFieldEmail" descriptor:dictionary];
  [dictionary setObject:&unk_287F552C8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKAddressFieldName" descriptor:dictionary];
  [dictionary setObject:&unk_287F552F8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKAddressFieldAll" descriptor:dictionary];
  [dictionary setObject:&unk_287F552E0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKShippingTypeShipping" descriptor:dictionary];
  [dictionary setObject:&unk_287F55280 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKShippingTypeDelivery" descriptor:dictionary];
  [dictionary setObject:&unk_287F55298 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKShippingTypeStorePickup" descriptor:dictionary];
  [dictionary setObject:&unk_287F55310 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKShippingTypeServicePickup" descriptor:dictionary];
  [dictionary setObject:&unk_287F552E0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentSummaryItemTypeFinal" descriptor:dictionary];
  [dictionary setObject:&unk_287F55280 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentSummaryItemTypePending" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277D38620] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKEncryptionSchemeECC_V2" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277D38878] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentNetworkAmex" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277D38888] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentNetworkDiscover" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277D38898] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentNetworkMasterCard" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277D388A0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentNetworkPrivateLabel" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277D388B0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentNetworkVisa" descriptor:dictionary];
  [dictionary setObject:&unk_287F55100 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKAddPassButtonStyleBlack" descriptor:dictionary];
  [dictionary setObject:&unk_287F55118 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKAddPassButtonStyleBlackOutline" descriptor:dictionary];
  [dictionary setObject:&unk_287F552E0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPassTypeBarcode" descriptor:dictionary];
  [dictionary setObject:&unk_287F55280 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPassTypePayment" descriptor:dictionary];
  [dictionary setObject:&unk_287F55328 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPassTypeAny" descriptor:dictionary];
  [dictionary setObject:&unk_287F552E0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentPassActivationStateActivated" descriptor:dictionary];
  [dictionary setObject:&unk_287F55280 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentPassActivationStateRequiresActivation" descriptor:dictionary];
  [dictionary setObject:&unk_287F55298 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentPassActivationStateActivating" descriptor:dictionary];
  [dictionary setObject:&unk_287F55310 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentPassActivationStateSuspended" descriptor:dictionary];
  [dictionary setObject:&unk_287F552B0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentPassActivationStateDeactivated" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277D385B8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKContactFieldPostalAddress" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277D38598] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKContactFieldEmailAddress" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277D385A8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKContactFieldPhoneNumber" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277D385A0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKContactFieldName" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277D385B0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKContactFieldPhoneticName" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277D38860] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentErrorDomain" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277D38858] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentErrorContactFieldUserInfoKey" descriptor:dictionary];
  [dictionary setObject:&unk_287F55340 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentUnknownError" descriptor:dictionary];
  [dictionary setObject:&unk_287F55118 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentShippingContactInvalidError" descriptor:dictionary];
  [dictionary setObject:&unk_287F55130 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentBillingContactInvalidError" descriptor:dictionary];
  [dictionary setObject:&unk_287F55148 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"PKPaymentShippingAddressUnserviceableError" descriptor:dictionary];
}

@end