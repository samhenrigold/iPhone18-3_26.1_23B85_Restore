@interface NSCKExportOperation
+ (NSString)entityPath;
- (unint64_t)status;
- (void)setStatus:(unint64_t)status;
@end

@implementation NSCKExportOperation

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v2, v3, v5);
}

- (unint64_t)status
{
  statusNum = [(NSCKExportOperation *)self statusNum];

  return [statusNum unsignedIntegerValue];
}

- (void)setStatus:(unint64_t)status
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:status];

  [(NSCKExportOperation *)self setStatusNum:v4];
}

@end