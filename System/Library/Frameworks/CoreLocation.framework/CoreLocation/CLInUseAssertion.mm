@interface CLInUseAssertion
+ (id)newAssertionForBundle:(id)bundle withReason:(id)reason level:(int)level;
+ (id)newAssertionForBundleIdentifier:(id)identifier bundlePath:(id)path reason:(id)reason level:(int)level;
+ (id)newAssertionForBundleIdentifier:(id)identifier withReason:(id)reason level:(int)level;
@end

@implementation CLInUseAssertion

+ (id)newAssertionForBundleIdentifier:(id)identifier bundlePath:(id)path reason:(id)reason level:(int)level
{
  v15[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"kCLConnectionMessageBundleIdentifierKey";
  v14[1] = @"kCLConnectionMessageBundlePathKey";
  pathCopy = &stru_1F0E6F140;
  if (identifier)
  {
    identifierCopy = identifier;
  }

  else
  {
    identifierCopy = &stru_1F0E6F140;
  }

  if (path)
  {
    pathCopy = path;
  }

  v15[0] = identifierCopy;
  v15[1] = pathCopy;
  reasonCopy = @"(Unspecified)";
  if (reason)
  {
    reasonCopy = reason;
  }

  v15[2] = reasonCopy;
  v14[2] = @"kCLConnectionMessagePurposeKey";
  v14[3] = @"kCLConnectionMessageAssertionLevelKey";
  v15[3] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], a2, *&level, path);
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v15, v14, 4);
  v11 = [CLInUseAssertion alloc];
  return objc_msgSend_initWithRegistrationMessageName_messageDictionary_(v11, v12, "InUseAssertion/kCLConnectionMessage", v10);
}

+ (id)newAssertionForBundleIdentifier:(id)identifier withReason:(id)reason level:(int)level
{
  v7 = objc_msgSend_copy(identifier, a2, identifier, reason);
  v11 = objc_msgSend_copy(reason, v8, v9, v10);

  return MEMORY[0x1EEE66B58](self, sel_newAssertionForBundleIdentifier_bundlePath_reason_level_, v7, 0);
}

+ (id)newAssertionForBundle:(id)bundle withReason:(id)reason level:(int)level
{
  v7 = objc_msgSend_bundlePath(bundle, a2, bundle, reason);
  v11 = objc_msgSend_copy(v7, v8, v9, v10);
  v15 = objc_msgSend_copy(reason, v12, v13, v14);

  return MEMORY[0x1EEE66B58](self, sel_newAssertionForBundleIdentifier_bundlePath_reason_level_, 0, v11);
}

@end