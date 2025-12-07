@interface IMCoreCommSafetyHelper
+ (id)sharedInstance;
- (id)_urlFromAddressList:(id)list;
- (void)addressesForParents:(id)parents completion:(id)completion;
- (void)getOpenChatURLWith:(id)with;
@end

@implementation IMCoreCommSafetyHelper

+ (id)sharedInstance
{
  if (qword_1ED767738 != -1)
  {
    sub_1A84E2018();
  }

  v3 = qword_1EB2E9FB8;

  return v3;
}

- (void)getOpenChatURLWith:(id)with
{
  withCopy = with;
  mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
  childIsYoungAgeGroup = [mEMORY[0x1E69A7FC8] childIsYoungAgeGroup];
  v7 = IMLogHandleForCategory();
  v8 = v7;
  if (childIsYoungAgeGroup)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1A84E202C(mEMORY[0x1E69A7FC8], v8);
    }

    parents = [mEMORY[0x1E69A7FC8] parents];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A8365AE0;
    v16[3] = &unk_1E7812890;
    v10 = &v17;
    v16[4] = self;
    v17 = withCopy;
    v11 = withCopy;
    [(IMCoreCommSafetyHelper *)self addressesForParents:parents completion:v16];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Opening URL for older child account", buf, 2u);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A8365BF8;
    v13[3] = &unk_1E7810230;
    v10 = &v14;
    v13[4] = self;
    v14 = withCopy;
    v12 = withCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v13);
  }
}

- (void)addressesForParents:(id)parents completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  parentsCopy = parents;
  completionCopy = completion;
  v6 = dispatch_group_create();
  array = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = parentsCopy;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        contact = [v12 contact];

        if (contact)
        {
          dispatch_group_enter(v6);
          v14 = MEMORY[0x1E695DFD8];
          contact2 = [v12 contact];
          v16 = [v14 setWithObject:contact2];
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = sub_1A8365F28;
          v27[3] = &unk_1E78136D8;
          v27[4] = v12;
          v28 = array;
          v29 = v6;
          [IMHandle bestHandlesForContacts:v16 completion:v27];
        }

        else
        {
          appleID = [v12 appleID];
          [array addObject:appleID];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8366138;
  block[3] = &unk_1E7810190;
  v24 = array;
  v25 = obj;
  v26 = completionCopy;
  v18 = completionCopy;
  v19 = obj;
  v20 = array;
  dispatch_group_notify(v6, MEMORY[0x1E69E96A0], block);
}

- (id)_urlFromAddressList:(id)list
{
  listCopy = list;
  v4 = [MEMORY[0x1E696AF20] componentsWithString:@"messages://open"];
  v5 = objc_opt_new();
  v6 = IMSharedUtilitiesFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"MESSAGE_GROWNUP_BODY" value:&stru_1F1B76F98 table:@"CommSafetyLocalizable"];

  v8 = [MEMORY[0x1E696AF60] queryItemWithName:@"body" value:v7];
  [v5 addObject:v8];

  if (listCopy && [listCopy count])
  {
    v9 = [listCopy componentsJoinedByString:{@", "}];
    v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"recipients" value:v9];
    [v5 addObject:v10];
  }

  [v4 setQueryItems:v5];
  v11 = [v4 URL];

  return v11;
}

@end