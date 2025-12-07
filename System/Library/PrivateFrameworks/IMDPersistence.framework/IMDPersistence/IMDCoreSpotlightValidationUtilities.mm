@interface IMDCoreSpotlightValidationUtilities
+ (void)_loadItemsWithUniqueIdentifiers:(id)identifiers expectedDomainIdentifier:(id)identifier completionBlock:(id)block;
+ (void)checkForIndexedAttachmentGUIDs:(id)ds completionBlock:(id)block;
+ (void)checkForIndexedChatGUIDs:(id)ds completionBlock:(id)block;
+ (void)checkForIndexedMessageGUIDs:(id)ds completionBlock:(id)block;
@end

@implementation IMDCoreSpotlightValidationUtilities

+ (void)_loadItemsWithUniqueIdentifiers:(id)identifiers expectedDomainIdentifier:(id)identifier completionBlock:(id)block
{
  v20[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  blockCopy = block;
  identifiersCopy = identifiers;
  v10 = IMCoreSpotlightIndex();
  v11 = *MEMORY[0x1E6964C48];
  v20[0] = *MEMORY[0x1E6963F88];
  v20[1] = v11;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v20, 2);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1B7B98A6C;
  v17[3] = &unk_1E7CBB8F8;
  v18 = identifierCopy;
  v19 = blockCopy;
  v14 = blockCopy;
  v15 = identifierCopy;
  objc_msgSend_slowFetchAttributes_protectionClass_bundleID_identifiers_completionHandler_(v10, v16, v13, 0, @"com.apple.MobileSMS", identifiersCopy, v17);
}

+ (void)checkForIndexedMessageGUIDs:(id)ds completionBlock:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B98DB4;
  v9[3] = &unk_1E7CBB920;
  v10 = blockCopy;
  v7 = blockCopy;
  objc_msgSend__loadItemsWithUniqueIdentifiers_expectedDomainIdentifier_completionBlock_(self, v8, ds, 0, v9);
}

+ (void)checkForIndexedAttachmentGUIDs:(id)ds completionBlock:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B98EE4;
  v9[3] = &unk_1E7CBB920;
  v10 = blockCopy;
  v7 = blockCopy;
  objc_msgSend__loadItemsWithUniqueIdentifiers_expectedDomainIdentifier_completionBlock_(self, v8, ds, @"attachmentDomain", v9);
}

+ (void)checkForIndexedChatGUIDs:(id)ds completionBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  v8 = MEMORY[0x1E695DF90];
  v12 = objc_msgSend_count(dsCopy, v9, v10, v11);
  v15 = objc_msgSend_dictionaryWithCapacity_(v8, v13, v12, v14);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B990EC;
  block[3] = &unk_1E7CB6770;
  v31 = dsCopy;
  v16 = v15;
  v32 = v16;
  v17 = dsCopy;
  IMDPersistencePerformBlock(block, 1, v18, v19);
  v23 = objc_msgSend_allKeys(v16, v20, v21, v22);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1B7B99294;
  v27[3] = &unk_1E7CBB948;
  v28 = v16;
  v29 = blockCopy;
  v24 = blockCopy;
  v25 = v16;
  objc_msgSend__loadItemsWithUniqueIdentifiers_expectedDomainIdentifier_completionBlock_(self, v26, v23, @"chatDomain", v27);
}

@end