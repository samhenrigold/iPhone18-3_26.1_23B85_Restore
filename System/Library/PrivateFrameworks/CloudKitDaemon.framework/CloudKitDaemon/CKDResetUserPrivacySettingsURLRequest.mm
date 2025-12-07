@interface CKDResetUserPrivacySettingsURLRequest
- (id)generateRequestOperations;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
@end

@implementation CKDResetUserPrivacySettingsURLRequest

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v3.receiver = self;
  v3.super_class = CKDResetUserPrivacySettingsURLRequest;
  [(CKDURLRequest *)&v3 fillOutEquivalencyPropertiesBuilder:builder];
}

- (id)requestOperationClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v5, 1);

  return v3;
}

- (id)generateRequestOperations
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_operationType(self, a2, v2);
  v6 = objc_msgSend_operationRequestWithType_(self, v5, v4);
  v7 = objc_opt_new();
  objc_msgSend_setUserPrivacySettingsResetRequest_(v6, v8, v7);

  v12[0] = v6;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v12, 1);

  return v10;
}

@end