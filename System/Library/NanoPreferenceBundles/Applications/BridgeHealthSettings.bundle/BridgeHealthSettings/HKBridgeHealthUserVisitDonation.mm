@interface HKBridgeHealthUserVisitDonation
+ (void)donateUserVisitForHealthDetailsSection;
+ (void)donateUserVisitForHealthSection;
@end

@implementation HKBridgeHealthUserVisitDonation

+ (void)donateUserVisitForHealthSection
{
  v3 = objc_opt_class();
  v6 = sub_B898(v3);
  v4 = objc_opt_class();
  v5 = sub_B96C(v4);
  sub_B7A0(self, v6, &__NSArray0__struct, v5);
}

+ (void)donateUserVisitForHealthDetailsSection
{
  v3 = objc_opt_class();
  v4 = sub_BA94(v3);
  v5 = objc_opt_class();
  v6 = sub_B898(v5);
  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = objc_opt_class();
  v9 = sub_BB68(v8);
  sub_B7A0(self, v4, v7, v9);
}

@end