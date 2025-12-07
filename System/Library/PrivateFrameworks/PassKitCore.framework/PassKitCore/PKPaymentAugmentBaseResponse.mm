@interface PKPaymentAugmentBaseResponse
- (PKPaymentAugmentBaseResponse)initWithData:(id)data;
@end

@implementation PKPaymentAugmentBaseResponse

- (PKPaymentAugmentBaseResponse)initWithData:(id)data
{
  v22 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = PKPaymentAugmentBaseResponse;
  v3 = [(PKWebServiceResponse *)&v17 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [jSONObject objectForKey:@"networkMerchantIdentifier"];
      pk_decodeHexadecimal = [v6 pk_decodeHexadecimal];
      networkMerchantIdentifier = v4->_networkMerchantIdentifier;
      v4->_networkMerchantIdentifier = pk_decodeHexadecimal;

      v9 = [jSONObject objectForKey:@"cryptogramType"];
      v4->_cryptogramType = PKPaymentCryptogramTypeFromString(v9, v10);
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = objc_opt_class();
        *buf = 138543618;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        v15 = v14;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v9 = v4;
      v4 = 0;
    }
  }

  return v4;
}

@end