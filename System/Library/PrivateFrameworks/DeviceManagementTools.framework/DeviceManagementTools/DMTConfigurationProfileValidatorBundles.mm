@interface DMTConfigurationProfileValidatorBundles
+ (NSArray)macBuddyNetworkProfileValidators;
@end

@implementation DMTConfigurationProfileValidatorBundles

+ (NSArray)macBuddyNetworkProfileValidators
{
  v12[3] = *MEMORY[0x277D85DE8];
  v2 = +[DMTCertificatePayload supportedPayloadTypes];
  v3 = [v2 mutableCopy];

  v4 = +[DMTGlobalHTTPProxyPayload supportedPayloadTypes];
  [v3 unionSet:v4];

  v5 = +[DMTNetworkProxyPayload supportedPayloadTypes];
  [v3 unionSet:v5];

  v6 = +[DMTWiFiPayload supportedPayloadTypes];
  [v3 unionSet:v6];

  v7 = objc_opt_new();
  [v7 setAllowedPayloadTypes:v3];
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

  return v10;
}

@end