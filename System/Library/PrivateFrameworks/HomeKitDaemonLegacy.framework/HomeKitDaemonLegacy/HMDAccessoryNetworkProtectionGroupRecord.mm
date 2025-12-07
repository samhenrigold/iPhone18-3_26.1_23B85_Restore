@interface HMDAccessoryNetworkProtectionGroupRecord
+ (id)recordWithGroup:(id)group active:(BOOL)active persisted:(BOOL)persisted;
- (HMDAccessoryNetworkProtectionGroupRecord)initWithGroup:(id)group active:(BOOL)active persisted:(BOOL)persisted;
@end

@implementation HMDAccessoryNetworkProtectionGroupRecord

- (HMDAccessoryNetworkProtectionGroupRecord)initWithGroup:(id)group active:(BOOL)active persisted:(BOOL)persisted
{
  groupCopy = group;
  v13.receiver = self;
  v13.super_class = HMDAccessoryNetworkProtectionGroupRecord;
  v10 = [(HMDAccessoryNetworkProtectionGroupRecord *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_active = active;
    v10->_persisted = persisted;
    objc_storeStrong(&v10->_group, group);
  }

  return v11;
}

+ (id)recordWithGroup:(id)group active:(BOOL)active persisted:(BOOL)persisted
{
  persistedCopy = persisted;
  activeCopy = active;
  groupCopy = group;
  v8 = [[HMDAccessoryNetworkProtectionGroupRecord alloc] initWithGroup:groupCopy active:activeCopy persisted:persistedCopy];

  return v8;
}

@end