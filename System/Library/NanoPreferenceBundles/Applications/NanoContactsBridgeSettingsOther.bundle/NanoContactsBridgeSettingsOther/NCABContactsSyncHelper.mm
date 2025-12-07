@interface NCABContactsSyncHelper
+ (id)localDeviceContactsCount;
+ (int)_contactsCountStatusForFamilyMember:(id)member;
+ (int)contactsCountStatusForFamilyMember:(id)member contactsSyncAndNetworkAccessEnabled:(BOOL)enabled;
+ (void)triggerContactsSyncForFamilyMember:(id)member;
@end

@implementation NCABContactsSyncHelper

+ (int)contactsCountStatusForFamilyMember:(id)member contactsSyncAndNetworkAccessEnabled:(BOOL)enabled
{
  if (enabled)
  {
    return [self _contactsCountStatusForFamilyMember:member];
  }

  else
  {
    return 1;
  }
}

+ (int)_contactsCountStatusForFamilyMember:(id)member
{
  v3 = [CNContactStore storeForFamilyMember:member];
  v4 = [[CNContactFetchRequest alloc] initWithKeysToFetch:&__NSArray0__struct];
  v22 = 0;
  v5 = [v3 contactCountForFetchRequest:v4 error:&v22];
  v6 = v22;
  unsignedIntegerValue = [v5 unsignedIntegerValue];
  v8 = unsignedIntegerValue != 0;
  v9 = NCABCSH_ContactCounts_log(unsignedIntegerValue);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v24 = "+[NCABContactsSyncHelper _contactsCountStatusForFamilyMember:]";
    v25 = 2114;
    v26 = v5;
    v27 = 1024;
    v28 = unsignedIntegerValue != 0;
    v29 = 2114;
    v30 = v6;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s - contactCountNumber: %{public}@ -> hasContacts: %d, error: %{public}@", buf, 0x26u);
  }

  if (v6 || unsignedIntegerValue)
  {
    v11 = v5;
    if (v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    [v4 setShouldFailIfAccountNotYetSynced:1];
    v21 = 0;
    v11 = [v3 contactCountForFetchRequest:v4 error:&v21];
    v6 = v21;

    unsignedIntegerValue2 = [v11 unsignedIntegerValue];
    v8 = unsignedIntegerValue2 != 0;
    v13 = NCABCSH_ContactCounts_log(unsignedIntegerValue2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v24 = "+[NCABContactsSyncHelper _contactsCountStatusForFamilyMember:]";
      v25 = 2114;
      v26 = v11;
      v27 = 1024;
      v28 = unsignedIntegerValue2 != 0;
      v29 = 2114;
      v30 = v6;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}s - RETRIED with shouldFailIfAccountNotYetSynced; contactCountNumber: %{public}@ -> hasContacts: %d, error: %{public}@", buf, 0x26u);
    }

    if (v6)
    {
      goto LABEL_12;
    }
  }

  if (v8)
  {
    v14 = 5;
    goto LABEL_24;
  }

LABEL_12:
  if (v6 == 0 && !v8)
  {
    v14 = 4;
    goto LABEL_24;
  }

  domain = [v6 domain];
  if (![domain isEqual:CNErrorDomain])
  {

    goto LABEL_20;
  }

  code = [v6 code];

  if (code != &stru_3D8.segname[7])
  {
LABEL_20:
    v18 = NCABCSH_ContactCounts_log(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_60D8(v4, v6, v18);
    }

    v14 = 3;
    goto LABEL_23;
  }

  v18 = NCABCSH_ContactCounts_log(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v24 = "+[NCABContactsSyncHelper _contactsCountStatusForFamilyMember:]";
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}s - got CNErrorAccountNotYetSynced", buf, 0xCu);
  }

  v14 = 2;
LABEL_23:

LABEL_24:
  v19 = NCABCSH_ContactCounts_log(v10);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v24 = "+[NCABContactsSyncHelper _contactsCountStatusForFamilyMember:]";
    v25 = 1024;
    LODWORD(v26) = v14;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}s - contactsCountStatus: %d", buf, 0x12u);
  }

  return v14;
}

+ (id)localDeviceContactsCount
{
  v2 = objc_alloc_init(CNContactStore);
  v3 = [[CNContactFetchRequest alloc] initWithKeysToFetch:&__NSArray0__struct];
  v8 = 0;
  v4 = [v2 contactCountForFetchRequest:v3 error:&v8];
  v5 = v8;
  v6 = NCABCSH_ContactCounts_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v10 = "+[NCABContactsSyncHelper localDeviceContactsCount]";
    v11 = 2114;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s - contactCountNumber: %{public}@, error: %{public}@", buf, 0x20u);
  }

  return v4;
}

+ (void)triggerContactsSyncForFamilyMember:(id)member
{
  memberCopy = member;
  v4 = NCABCSH_ContactCounts_log(memberCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "+[NCABContactsSyncHelper triggerContactsSyncForFamilyMember:]";
    v7 = 2112;
    v8 = memberCopy;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: %@", &v5, 0x16u);
  }

  [CNAccount requestAccountSyncWithOptions:1];
}

@end