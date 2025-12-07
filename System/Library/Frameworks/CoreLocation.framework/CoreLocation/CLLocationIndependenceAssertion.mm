@interface CLLocationIndependenceAssertion
+ (id)newAssertionWithReason:(id)reason;
@end

@implementation CLLocationIndependenceAssertion

+ (id)newAssertionWithReason:(id)reason
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!reason)
  {
    return 0;
  }

  v7 = @"kCLConnectionMessagePurposeKey";
  v8[0] = reason;
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v8, &v7, 1);
  v4 = [CLLocationIndependenceAssertion alloc];
  return objc_msgSend_initWithRegistrationMessageName_messageDictionary_(v4, v5, "LocationIndependenceAssertion/kCLConnectionMessage", v3);
}

@end