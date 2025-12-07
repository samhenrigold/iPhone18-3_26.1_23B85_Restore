@interface STConfigurationReactorCoreComponent
+ (id)computeMessageAddressesWithAuthor:(id)author targetUser:(id)user targetableFamilyMembers:(id)members signedInUserHasMultipleDevices:(BOOL)devices;
+ (id)targetableFamilyMemberForUser:(id)user inTargetableFamilyMembers:(id)members;
@end

@implementation STConfigurationReactorCoreComponent

+ (id)computeMessageAddressesWithAuthor:(id)author targetUser:(id)user targetableFamilyMembers:(id)members signedInUserHasMultipleDevices:(BOOL)devices
{
  devicesCopy = devices;
  authorCopy = author;
  userCopy = user;
  membersCopy = members;
  v12 = [STConfigurationReactorCoreComponent targetableFamilyMemberForUser:userCopy inTargetableFamilyMembers:membersCopy];
  v13 = v12;
  if (v12)
  {
    if (![v12 isParent])
    {
      if ([userCopy isEqualToUserID:authorCopy])
      {
        v16 = [STSharedReactorCoreComponent targetableParentsInTargetableFamilyMembers:membersCopy];
        dsid = [v16 mutableCopy];

        [dsid addObject:v13];
        v18 = [dsid copy];
        v15 = [STSharedReactorCoreComponent buildAddressesFromTargetableFamilyMembers:v18 signedInUserHasMultipleDevices:devicesCopy];
      }

      else
      {
        v19 = [STMessageTransportMessageAddress alloc];
        dsid = [userCopy dsid];
        v20 = [(STMessageTransportMessageAddress *)v19 initWithUserDSID:dsid];
        v15 = [NSSet setWithObject:v20];
      }

      goto LABEL_12;
    }

    v14 = +[STLog reactorCore];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100113970(v14);
    }
  }

  else
  {
    v14 = +[STLog reactorCore];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1001139B4(v14);
    }
  }

  v15 = objc_opt_new();
LABEL_12:

  return v15;
}

+ (id)targetableFamilyMemberForUser:(id)user inTargetableFamilyMembers:(id)members
{
  userCopy = user;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  membersCopy = members;
  v7 = [membersCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(membersCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        dsid = [userCopy dsid];
        dsid2 = [v10 dsid];
        v13 = [dsid isEqualToNumber:dsid2];

        if (v13)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [membersCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

@end