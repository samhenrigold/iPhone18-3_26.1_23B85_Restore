@interface HKBridgePrivacyUserVisitDonation
+ (void)donateUserVisitForHeadphonePrivacySection;
+ (void)donateUserVisitForPrivacySection;
@end

@implementation HKBridgePrivacyUserVisitDonation

+ (void)donateUserVisitForPrivacySection
{
  v3 = objc_opt_class();
  v5 = sub_13AC(v3);
  objc_opt_class();
  objc_opt_self();
  v4 = [NSString stringWithFormat:@"bridge:root=%@", @"PRIVACY_ID"];
  sub_128C(self, v5, &__NSArray0__struct, v4);
}

+ (void)donateUserVisitForHeadphonePrivacySection
{
  v3 = objc_opt_class();
  v4 = sub_1450(v3);
  v5 = objc_opt_class();
  v6 = sub_13AC(v5);
  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = objc_opt_class();
  v9 = sub_1590(v8);
  sub_128C(self, v4, v7, v9);
}

@end