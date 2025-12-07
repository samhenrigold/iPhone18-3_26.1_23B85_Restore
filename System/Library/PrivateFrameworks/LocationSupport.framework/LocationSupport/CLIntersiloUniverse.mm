@interface CLIntersiloUniverse
+ (id)newIsolatedUniverseWithOnlySilo:(id)silo;
+ (id)newSharedVendorUniverseWithSilo:(id)silo;
- (CLIntersiloUniverse)initWithSilo:(id)silo vendor:(id)vendor;
@end

@implementation CLIntersiloUniverse

+ (id)newIsolatedUniverseWithOnlySilo:(id)silo
{
  siloCopy = silo;
  v4 = [CLIntersiloUniverse alloc];
  v5 = objc_alloc(MEMORY[0x1E696AE50]);
  v7 = objc_msgSend_initWithSilo_vendor_(v4, v6, siloCopy, v5);

  return v7;
}

+ (id)newSharedVendorUniverseWithSilo:(id)silo
{
  siloCopy = silo;
  v4 = [CLIntersiloUniverse alloc];
  v7 = objc_msgSend_sharedInstance(CLServiceVendor, v5, v6);
  v9 = objc_msgSend_initWithSilo_vendor_(v4, v8, siloCopy, v7);

  return v9;
}

- (CLIntersiloUniverse)initWithSilo:(id)silo vendor:(id)vendor
{
  siloCopy = silo;
  vendorCopy = vendor;
  v12.receiver = self;
  v12.super_class = CLIntersiloUniverse;
  v9 = [(CLIntersiloUniverse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_silo, silo);
    objc_storeStrong(&v10->_vendor, vendor);
  }

  return v10;
}

@end