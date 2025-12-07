@interface NSCKRecordZoneMetadataEncodedShareAsset
+ (NSString)entityPath;
@end

@implementation NSCKRecordZoneMetadataEncodedShareAsset

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v2, v3, v5);
}

@end