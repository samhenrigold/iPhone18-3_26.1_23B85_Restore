@interface MCMAMFIEncodedQuery
- (MCMAMFIEncodedQuery)initWithLoggingName:(id)name reason:(unint64_t)reason encodedQuery:(id)query;
@end

@implementation MCMAMFIEncodedQuery

- (MCMAMFIEncodedQuery)initWithLoggingName:(id)name reason:(unint64_t)reason encodedQuery:(id)query
{
  v15 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  queryCopy = query;
  v14.receiver = self;
  v14.super_class = MCMAMFIEncodedQuery;
  v11 = [(MCMAMFIEncodedQuery *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_loggingName, name);
    v12->_reason = reason;
    objc_storeStrong(&v12->_encodedQuery, query);
  }

  return v12;
}

@end