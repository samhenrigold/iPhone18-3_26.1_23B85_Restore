@interface IMDSpotlightDataProvider
+ (id)_createDataProviders;
+ (id)_dataProviders;
+ (id)dataProviderForIdentifier:(id)identifier;
- (id)dataForGUID:(id)d error:(id *)error;
- (id)typeIdentifier;
@end

@implementation IMDSpotlightDataProvider

+ (id)_createDataProviders
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(IMDSpotlightLinkDataProvider);
  v7[0] = v2;
  v3 = objc_alloc_init(IMDSpotlightTextDataProvider);
  v7[1] = v3;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v7, 2);

  return v5;
}

+ (id)_dataProviders
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B9218C;
  block[3] = &unk_1E7CB6A70;
  block[4] = self;
  if (qword_1EBA540C8 != -1)
  {
    dispatch_once(&qword_1EBA540C8, block);
  }

  v2 = qword_1EBA540C0;

  return v2;
}

+ (id)dataProviderForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = objc_msgSend__dataProviders(self, v5, v6, v7);
  v11 = objc_msgSend_objectForKeyedSubscript_(v8, v9, identifierCopy, v10);

  return v11;
}

- (id)typeIdentifier
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v2);
}

- (id)dataForGUID:(id)d error:(id *)error
{
  dCopy = d;
  v6 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v5, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v6);
}

@end