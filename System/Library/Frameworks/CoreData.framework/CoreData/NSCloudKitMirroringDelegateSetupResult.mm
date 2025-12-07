@interface NSCloudKitMirroringDelegateSetupResult
- (NSCloudKitMirroringDelegateSetupResult)initWithRequest:(id)request storeIdentifier:(id)identifier success:(BOOL)success error:(id)error container:(id)container database:(id)database;
- (void)dealloc;
@end

@implementation NSCloudKitMirroringDelegateSetupResult

- (NSCloudKitMirroringDelegateSetupResult)initWithRequest:(id)request storeIdentifier:(id)identifier success:(BOOL)success error:(id)error container:(id)container database:(id)database
{
  v12.receiver = self;
  v12.super_class = NSCloudKitMirroringDelegateSetupResult;
  v10 = [(NSCloudKitMirroringResult *)&v12 initWithRequest:request storeIdentifier:identifier success:success madeChanges:0 error:error];
  if (v10)
  {
    v10->_container = container;
    v10->_database = database;
  }

  return v10;
}

- (void)dealloc
{
  self->_container = 0;

  self->_database = 0;
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringDelegateSetupResult;
  [(NSCloudKitMirroringResult *)&v3 dealloc];
}

@end