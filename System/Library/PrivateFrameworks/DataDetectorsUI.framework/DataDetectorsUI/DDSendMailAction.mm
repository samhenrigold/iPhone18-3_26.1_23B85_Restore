@interface DDSendMailAction
- (id)compactTitle;
- (id)extractedActionSubtitle;
- (id)notificationIconBundleIdentifier;
- (id)notificationTitle;
- (uint64_t)displayNameForEmails:(void *)emails phoneNumbers:;
@end

@implementation DDSendMailAction

- (id)extractedActionSubtitle
{
  v14 = *MEMORY[0x277D85DE8];
  if (dd_isLSTrusted(self, a2))
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v9 = 0;
    v3 = [defaultWorkspace defaultApplicationForCategory:2 error:&v9];
    v4 = v9;

    if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      *buf = 138412546;
      v11 = bundleIdentifier;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Couldn't get default email app from %@. Error: %@", buf, 0x16u);
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  localizedName = [v3 localizedName];

  return localizedName;
}

- (uint64_t)displayNameForEmails:(void *)emails phoneNumbers:
{
  v47[1] = *MEMORY[0x277D85DE8];
  v23 = a2;
  emailsCopy = emails;
  if (!self || (dd_isDeviceLocked() & 1) != 0 || [MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0] != 3)
  {
    goto LABEL_22;
  }

  v26 = DDMakeContactStore();
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__3;
  v43 = __Block_byref_object_dispose__3;
  v44 = 0;
  v5 = objc_alloc(MEMORY[0x277CBDA70]);
  v6 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v47[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
  v8 = [v5 initWithKeysToFetch:v7];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v23;
  v9 = [obj countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v9)
  {
    v10 = *v36;
    v11 = MEMORY[0x277D85DD0];
    v6 = &v39;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:{*(*(&v35 + 1) + 8 * i), emailsCopy}];
        [v8 setPredicate:v13];

        v33[4] = &v39;
        v34 = 0;
        v33[0] = v11;
        v33[1] = 3221225472;
        v33[2] = __54__DDSendMailAction_displayNameForEmails_phoneNumbers___block_invoke;
        v33[3] = &unk_2782913D8;
        [v26 enumerateContactsWithFetchRequest:v8 error:&v34 usingBlock:v33];
      }

      v9 = [obj countByEnumeratingWithState:&v35 objects:v46 count:16];
    }

    while (v9);
  }

  v14 = v40[5];
  if (v14)
  {
    goto LABEL_20;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obja = emailsCopy;
  v15 = [obja countByEnumeratingWithState:&v29 objects:v45 count:16];
  if (v15)
  {
    v16 = *v30;
    v17 = MEMORY[0x277D85DD0];
    v6 = &v39;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(obja);
        }

        v19 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:{*(*(&v29 + 1) + 8 * j), emailsCopy}];
        [v8 setPredicate:v19];

        v27[4] = &v39;
        v28 = 0;
        v27[0] = v17;
        v27[1] = 3221225472;
        v27[2] = __54__DDSendMailAction_displayNameForEmails_phoneNumbers___block_invoke_2;
        v27[3] = &unk_2782913D8;
        [v26 enumerateContactsWithFetchRequest:v8 error:&v28 usingBlock:v27];
      }

      v15 = [obja countByEnumeratingWithState:&v29 objects:v45 count:16];
    }

    while (v15);
  }

  v14 = v40[5];
  if (v14)
  {
LABEL_20:
    v6 = [MEMORY[0x277CBDA78] stringFromContact:v14 style:{0, emailsCopy}];
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  _Block_object_dispose(&v39, 8);
  if (v20)
  {
LABEL_22:
    v6 = 0;
  }

  return v6;
}

- (id)compactTitle
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = dd_userFriendlyEmailFromMailtoScheme(self->super._url);
  if ([v3 length])
  {
    v10[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v5 = [(DDSendMailAction *)self displayNameForEmails:v4 phoneNumbers:0];

    if ([v5 length])
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    compactTitle = v6;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = DDSendMailAction;
    compactTitle = [(DDAction *)&v9 compactTitle];
  }

  return compactTitle;
}

- (id)notificationTitle
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = dd_userFriendlyEmailFromMailtoScheme(self->super._url);
  if ([v3 length])
  {
    v12[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v5 = [(DDSendMailAction *)self displayNameForEmails:v4 phoneNumbers:0];

    v6 = [v5 length];
    v7 = MEMORY[0x277CCACA8];
    if (v6)
    {
      v8 = DDLocalizedString(@"Compose an email to %@ (%@) in Mail");
      [v7 stringWithFormat:v8, v5, v3];
    }

    else
    {
      v8 = DDLocalizedString(@"Compose an email to “%@” in Mail");
      [v7 stringWithFormat:v8, v3, v11];
    }
    v9 = ;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)notificationIconBundleIdentifier
{
  v17 = *MEMORY[0x277D85DE8];
  if (dd_isLSTrusted(self, a2))
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v12 = 0;
    v3 = [defaultWorkspace defaultApplicationForCategory:2 error:&v12];
    v4 = v12;

    if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      *buf = 138412546;
      v14 = bundleIdentifier;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Couldn't get default email app from %@. Error: %@", buf, 0x16u);
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  bundleIdentifier2 = [v3 bundleIdentifier];
  v8 = bundleIdentifier2;
  if (bundleIdentifier2)
  {
    v9 = bundleIdentifier2;
  }

  else
  {
    v9 = @"com.apple.mobilemail";
  }

  v10 = v9;

  return v9;
}

@end