@interface FCFetchOperationResult
+ (FCFetchOperationResult)resultWithStatus:(unint64_t)status fetchedObject:(id)object error:(id)error;
- (BOOL)anyMissingObjects;
- (FCFetchOperationResult)initWithStatus:(unint64_t)status fetchedObject:(id)object fetchResult:(unint64_t)result error:(id)error;
@end

@implementation FCFetchOperationResult

- (BOOL)anyMissingObjects
{
  missingObjectDescriptions = [(FCFetchOperationResult *)self missingObjectDescriptions];
  v3 = [missingObjectDescriptions count] != 0;

  return v3;
}

- (FCFetchOperationResult)initWithStatus:(unint64_t)status fetchedObject:(id)object fetchResult:(unint64_t)result error:(id)error
{
  v27 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  errorCopy = error;
  if (status && objectCopy)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fetchedObject must be nil if the operation wasn't successful"];
    *buf = 136315906;
    v20 = "[FCFetchOperationResult initWithStatus:fetchedObject:fetchResult:error:]";
    v21 = 2080;
    v22 = "FCFetchOperation.m";
    v23 = 1024;
    v24 = 173;
    v25 = 2114;
    v26 = v13;
    v14 = MEMORY[0x1E69E9C10];
    goto LABEL_12;
  }

  if (!status && !objectCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fetchedObject must not be nil if the operation was successful"];
    *buf = 136315906;
    v20 = "[FCFetchOperationResult initWithStatus:fetchedObject:fetchResult:error:]";
    v21 = 2080;
    v22 = "FCFetchOperation.m";
    v23 = 1024;
    v24 = 174;
    v25 = 2114;
    v26 = v13;
    v14 = MEMORY[0x1E69E9C10];
LABEL_12:
    _os_log_error_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_8:
  v18.receiver = self;
  v18.super_class = FCFetchOperationResult;
  v15 = [(FCFetchOperationResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_status = status;
    objc_storeStrong(&v15->_fetchedObject, object);
    v16->_fetchResult = result;
    objc_storeStrong(&v16->_error, error);
  }

  return v16;
}

+ (FCFetchOperationResult)resultWithStatus:(unint64_t)status fetchedObject:(id)object error:(id)error
{
  errorCopy = error;
  objectCopy = object;
  v9 = [[FCFetchOperationResult alloc] initWithStatus:status fetchedObject:objectCopy fetchResult:1 error:errorCopy];

  return v9;
}

@end