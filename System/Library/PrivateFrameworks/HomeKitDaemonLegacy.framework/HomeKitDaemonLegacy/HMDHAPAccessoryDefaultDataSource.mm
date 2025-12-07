@interface HMDHAPAccessoryDefaultDataSource
- (BOOL)isResidentCapable;
- (HMDHAPAccessoryDefaultDataSource)init;
- (HMDHAPAccessorySwiftDataSource)swiftDataSource;
- (NSDate)currentDate;
@end

@implementation HMDHAPAccessoryDefaultDataSource

- (HMDHAPAccessorySwiftDataSource)swiftDataSource
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (NSDate)currentDate
{
  v2 = sub_253CCFEE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFEB8();
  v6 = sub_253CCFE98();
  (*(v3 + 8))(v5, v2);

  return v6;
}

- (BOOL)isResidentCapable
{
  deviceCapabilities = [objc_opt_self() deviceCapabilities];
  isResidentCapable = [deviceCapabilities isResidentCapable];

  return isResidentCapable;
}

- (HMDHAPAccessoryDefaultDataSource)init
{
  *(&self->super.isa + OBJC_IVAR___HMDHAPAccessoryDefaultDataSource_swiftDataSource) = [objc_allocWithZone(_s22DefaultSwiftDataSourceCMa()) init];
  v4.receiver = self;
  v4.super_class = HMDHAPAccessoryDefaultDataSource;
  return [(HMDHAPAccessoryDefaultDataSource *)&v4 init];
}

@end