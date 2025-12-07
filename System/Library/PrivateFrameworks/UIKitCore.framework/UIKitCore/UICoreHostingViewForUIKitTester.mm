@interface UICoreHostingViewForUIKitTester
+ (id)make;
- (UICoreHostingViewForUIKitTester)init;
@end

@implementation UICoreHostingViewForUIKitTester

+ (id)make
{
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344A8, &unk_18A64C130));
  v3 = sub_1890F8190();

  return v3;
}

- (UICoreHostingViewForUIKitTester)init
{
  v3 = type metadata accessor for UICoreHostingViewForUIKitTester();
  v6.receiver = self;
  v6.super_class = v4;
  return [(UICoreHostingViewForUIKitTester *)&v6 init];
}

@end