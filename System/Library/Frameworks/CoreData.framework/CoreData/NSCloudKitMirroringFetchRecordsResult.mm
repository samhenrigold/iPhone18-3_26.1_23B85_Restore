@interface NSCloudKitMirroringFetchRecordsResult
- (NSCloudKitMirroringFetchRecordsResult)initWithRequest:(id)request storeIdentifier:(id)identifier success:(BOOL)success madeChanges:(BOOL)changes updatedObjectIDs:(id)ds failedObjectIDToError:(id)error error:(id)a9;
- (void)dealloc;
@end

@implementation NSCloudKitMirroringFetchRecordsResult

- (NSCloudKitMirroringFetchRecordsResult)initWithRequest:(id)request storeIdentifier:(id)identifier success:(BOOL)success madeChanges:(BOOL)changes updatedObjectIDs:(id)ds failedObjectIDToError:(id)error error:(id)a9
{
  v13.receiver = self;
  v13.super_class = NSCloudKitMirroringFetchRecordsResult;
  v11 = [(NSCloudKitMirroringResult *)&v13 initWithRequest:request storeIdentifier:identifier success:success madeChanges:changes error:a9];
  if (v11)
  {
    v11->_updatedObjectIDs = ds;
    v11->_failedObjectIDsToError = error;
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringFetchRecordsResult;
  [(NSCloudKitMirroringResult *)&v3 dealloc];
}

@end