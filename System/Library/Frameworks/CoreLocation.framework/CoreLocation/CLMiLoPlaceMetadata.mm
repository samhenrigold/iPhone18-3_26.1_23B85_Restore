@interface CLMiLoPlaceMetadata
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLMiLoPlaceMetadata

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return objc_msgSend_allocWithZone_(v4, v5, zone, v6);
}

@end