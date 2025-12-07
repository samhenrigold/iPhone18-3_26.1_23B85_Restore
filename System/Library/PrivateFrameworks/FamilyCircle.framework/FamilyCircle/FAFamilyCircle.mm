@interface FAFamilyCircle
- (BOOL)anyChildHasRemoteGuardians;
- (BOOL)currentUserIsU13;
- (BOOL)familyHasU13Member;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFAFamilyCircle:(id)circle;
- (FAFamilyCircle)init;
- (FAFamilyCircle)initWithCoder:(id)coder;
- (FAFamilyCircle)initWithServerResponse:(id)response;
- (FAFamilyMember)me;
- (FAFamilyMember)remoteGuardian;
- (NSArray)firstNames;
- (NSArray)invites;
- (NSArray)pendingMembers;
- (NSArray)pendingMembersWithAllStatues;
- (id)memberForAltDSID:(id)d;
- (id)memberForDSID:(id)d;
- (id)memberForPhoneNumber:(id)number;
- (id)pendingInvitesOnly;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FAFamilyCircle

- (FAFamilyCircle)init
{
  v9.receiver = self;
  v9.super_class = FAFamilyCircle;
  v2 = [(FAFamilyCircle *)&v9 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DEC8] array];
    v4 = *(v2 + 3);
    *(v2 + 3) = array;

    *(v2 + 11) = -1;
    *(v2 + 4) = 0;
    *(v2 + 9) = 257;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.family.familyCircle", v5);
    v7 = *(v2 + 19);
    *(v2 + 19) = v6;
  }

  return v2;
}

- (NSArray)pendingMembers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  processingQueue = self->_processingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__FAFamilyCircle_pendingMembers__block_invoke;
  v5[3] = &unk_1E7CA4A18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(processingQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __32__FAFamilyCircle_pendingMembers__block_invoke(uint64_t a1)
{
  v1 = a1;
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = [*(v1 + 32) _serverResponse];
    v5 = [v4 objectForKey:@"pending-members"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v5;
      v20 = v1;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v22;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [[FAFamilyMember alloc] initWithDictionaryRepresentation:*(*(&v21 + 1) + 8 * i)];
            v12 = [(FAFamilyMember *)v11 inviteEmail];

            if (v12)
            {
              v14 = [(FAFamilyMember *)v11 statusString];
              v15 = [v14 isEqual:@"Pending"];

              if (v15)
              {
                [v3 addObject:v11];
              }
            }

            else
            {
              v16 = _FALogSystem(v13);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v26 = v11;
                _os_log_impl(&dword_1B70B0000, v16, OS_LOG_TYPE_DEFAULT, "No invite email, dropping %@", buf, 0xCu);
              }
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
        }

        while (v8);
      }

      v5 = v19;
      v1 = v20;
    }

    v17 = *(v1 + 32);
    v18 = *(v17 + 48);
    *(v17 + 48) = v3;

    v2 = *(*(v1 + 32) + 48);
  }

  objc_storeStrong((*(*(v1 + 40) + 8) + 40), v2);
}

- (id)pendingInvitesOnly
{
  invites = [(FAFamilyCircle *)self invites];
  if (invites)
  {
    v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_5];
    v4 = [invites filteredArrayUsingPredicate:v3];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  return v4;
}

- (NSArray)invites
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  processingQueue = self->_processingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__FAFamilyCircle_invites__block_invoke;
  v5[3] = &unk_1E7CA4A18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(processingQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __25__FAFamilyCircle_invites__block_invoke(uint64_t a1)
{
  v1 = a1;
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[8];
  if (!v3)
  {
    v4 = [v2 _serverResponse];
    v5 = [v4 objectForKey:@"family-invitations"];

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v1;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = v5;
      v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v31;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v31 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v30 + 1) + 8 * i);
            v12 = objc_alloc_init(FAFamilyInvite);
            v13 = [v11 objectForKeyedSubscript:@"invitee-last-name"];
            [(FAFamilyInvite *)v12 setOrganizerLastName:v13];

            v14 = [v11 objectForKeyedSubscript:@"invitee-first-name"];
            [(FAFamilyInvite *)v12 setOrganizerFirstName:v14];

            v15 = [v11 objectForKeyedSubscript:@"inviter-email"];
            [(FAFamilyInvite *)v12 setOrganizerEmail:v15];

            v16 = [v11 objectForKeyedSubscript:@"invite-code"];
            [(FAFamilyInvite *)v12 setCode:v16];

            v17 = [v11 objectForKeyedSubscript:@"invitee-dsid"];
            [(FAFamilyInvite *)v12 setOrganizerDSID:v17];

            v18 = [v11 objectForKeyedSubscript:@"invite-status"];
            [(FAFamilyInvite *)v12 setInviteStatus:v18];

            v19 = [v11 objectForKeyedSubscript:@"inviteDateEpoch"];
            if (v19)
            {
              v20 = objc_alloc(MEMORY[0x1E695DF00]);
              [v19 doubleValue];
              v22 = [v20 initWithTimeIntervalSince1970:v21 / 1000.0];
            }

            else
            {
              v22 = [MEMORY[0x1E695DF00] distantPast];
            }

            v23 = v22;
            v24 = [v11 objectForKeyedSubscript:@"badge-after-invite-delay"];
            if (!v24)
            {
              v24 = +[FAFamilyMember defaultInvitationDelay];
            }

            [(FAFamilyInvite *)v12 setInviteDate:v23];
            [(FAFamilyInvite *)v12 setBadgeAfter:v24];
            [v6 addObject:v12];
          }

          v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v8);
      }

      v1 = v28;
    }

    v25 = [v6 copy];
    v26 = *(v1 + 32);
    v27 = *(v26 + 64);
    *(v26 + 64) = v25;

    v3 = *(*(v1 + 32) + 64);
  }

  objc_storeStrong((*(*(v1 + 40) + 8) + 40), v3);
}

- (FAFamilyCircle)initWithServerResponse:(id)response
{
  v122 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v113.receiver = self;
  v113.super_class = FAFamilyCircle;
  v6 = [(FAFamilyCircle *)&v113 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 9) = 257;
    objc_storeStrong(v6 + 20, response);
    v8 = [responseCopy objectForKeyedSubscript:@"family-id"];

    if (v8)
    {
      v9 = [responseCopy objectForKeyedSubscript:@"family-id"];
      familyID = v7->_familyID;
      v7->_familyID = v9;
    }

    v100 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"memberSortOrder" ascending:1];
    v11 = [responseCopy objectForKeyedSubscript:@"family-members"];
    v12 = v11;
    if (v11 && [v11 count])
    {
      array = [MEMORY[0x1E695DF70] array];
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v109 objects:v121 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v110;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v110 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [[FAFamilyMember alloc] initWithDictionaryRepresentation:*(*(&v109 + 1) + 8 * i)];
            [array addObject:v19];
          }

          v16 = [v14 countByEnumeratingWithState:&v109 objects:v121 count:16];
        }

        while (v16);
      }

      v120 = v100;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
      [array sortUsingDescriptors:v20];

      v21 = [array copy];
      members = v7->_members;
      v7->_members = v21;
    }

    v99 = v12;
    if (_os_feature_enabled_impl())
    {
      v23 = [responseCopy objectForKeyedSubscript:@"person-info"];
      v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if (v23 && [v23 count])
      {
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v98 = v23;
        v25 = v23;
        v26 = [v25 countByEnumeratingWithState:&v105 objects:v119 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v106;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v106 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = [[FAFamilyMember alloc] initWithDictionaryRepresentation:*(*(&v105 + 1) + 8 * j)];
              dsid = [(FAFamilyMember *)v30 dsid];
              [v24 setObject:v30 forKeyedSubscript:dsid];
            }

            v27 = [v25 countByEnumeratingWithState:&v105 objects:v119 count:16];
          }

          while (v27);
        }

        v23 = v98;
      }

      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v32 = v7->_members;
      v33 = [(NSArray *)v32 countByEnumeratingWithState:&v101 objects:v118 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v102;
        do
        {
          for (k = 0; k != v34; ++k)
          {
            if (*v102 != v35)
            {
              objc_enumerationMutation(v32);
            }

            [*(*(&v101 + 1) + 8 * k) finishWith:v24];
          }

          v34 = [(NSArray *)v32 countByEnumeratingWithState:&v101 objects:v118 count:16];
        }

        while (v34);
      }

      if (![(NSArray *)v7->_members count])
      {
        v37 = [responseCopy objectForKeyedSubscript:@"member-guardian"];
        v38 = v37;
        if (v37)
        {
          v39 = _FALogSystem(v37);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B70B0000, v39, OS_LOG_TYPE_DEFAULT, "Remote guardian key found", buf, 2u);
          }

          v40 = [[FAFamilyMember alloc] initWithDictionaryRepresentation:v38];
          remoteGuardianPerson = v7->_remoteGuardianPerson;
          v7->_remoteGuardianPerson = v40;

          [(FAFamilyMember *)v7->_remoteGuardianPerson finishWith:v24];
        }
      }

      remoteGuardian = [(FAFamilyCircle *)v7 remoteGuardian];

      if (v23 && !remoteGuardian)
      {
        v44 = _FALogSystem(v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [FAFamilyCircle initWithServerResponse:v44];
        }
      }
    }

    v45 = [responseCopy objectForKeyedSubscript:@"ck-handles"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = [responseCopy objectForKeyedSubscript:@"ck-handles"];
    }

    else
    {
      v46 = 0;
    }

    v47 = [[FAFamilyCloudKitProperties alloc] initWithDictionaryRepresentation:v46];
    cloudKitProperties = v7->_cloudKitProperties;
    v7->_cloudKitProperties = v47;

    v49 = [responseCopy objectForKeyedSubscript:@"family-recommendation-info"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = [responseCopy objectForKeyedSubscript:@"family-recommendation-info"];
    }

    else
    {
      v50 = 0;
    }

    v51 = [[FAEligibilityRequirements alloc] initWithDictionaryRepresentation:v50];
    eligibilityRequirements = v7->_eligibilityRequirements;
    v7->_eligibilityRequirements = v51;

    v53 = [responseCopy objectForKeyedSubscript:@"show-location-splash-screen"];

    if (v53)
    {
      v54 = [responseCopy objectForKeyedSubscript:@"show-location-splash-screen"];
      v7->_showLocationSplashScreen = [v54 BOOLValue];
    }

    else
    {
      v7->_showLocationSplashScreen = 0;
    }

    v55 = [responseCopy objectForKeyedSubscript:@"age-category"];
    v56 = [v55 isEqualToString:@"ADULT"];
    if (v56)
    {
      v7->_ageCategory = 0;
    }

    else
    {
      v56 = [v55 isEqualToString:@"TEEN"];
      if (v56)
      {
        v57 = 1;
      }

      else
      {
        v56 = [v55 isEqualToString:@"CHILD"];
        if (v56)
        {
          v57 = 2;
        }

        else
        {
          v57 = -1;
        }
      }

      v7->_ageCategory = v57;
    }

    v58 = _FALogSystem(v56);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      ageCategory = v7->_ageCategory;
      *buf = 138412546;
      v115 = v55;
      v116 = 2048;
      v117 = ageCategory;
      _os_log_impl(&dword_1B70B0000, v58, OS_LOG_TYPE_DEFAULT, "Current user age category is %@, FAMemberType %ld", buf, 0x16u);
    }

    v60 = [responseCopy objectForKeyedSubscript:@"age-category-enum"];
    intValue = [v60 intValue];

    v7->_ageCategoryEnum = intValue;
    v62 = [responseCopy objectForKey:@"family-meta-info"];
    if (v62)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v63 = [v62 objectForKeyedSubscript:@"childCutOffAge"];
        childCutOffAge = v7->_childCutOffAge;
        v7->_childCutOffAge = v63;

        v65 = [v62 objectForKeyedSubscript:@"add-member-enabled"];
        v7->_canAddMembers = [v65 BOOLValue];

        v66 = [v62 objectForKeyedSubscript:@"add-member-label"];
        addMemberButtonLabel = v7->_addMemberButtonLabel;
        v7->_addMemberButtonLabel = v66;

        v68 = [v62 objectForKeyedSubscript:@"family-members-footer"];
        familyMembersFooterLabel = v7->_familyMembersFooterLabel;
        v7->_familyMembersFooterLabel = v68;

        v70 = [v62 objectForKeyedSubscript:@"allowed-apple-subscriptions"];

        if (v70)
        {
          v71 = [v62 objectForKeyedSubscript:@"allowed-apple-subscriptions"];
        }

        else
        {
          v71 = 0;
        }

        allowedSubscriptions = v7->_allowedSubscriptions;
        v7->_allowedSubscriptions = v71;

        v73 = [v62 objectForKeyedSubscript:@"show-add-member-button"];

        if (v73)
        {
          v74 = [v62 objectForKeyedSubscript:@"show-add-member-button"];
          v7->_showAddMemberButton = [v74 BOOLValue];
        }

        else
        {
          v7->_showAddMemberButton = 1;
        }

        v75 = [v62 objectForKeyedSubscript:@"should-show-invites"];

        if (v75)
        {
          v76 = [v62 objectForKeyedSubscript:@"should-show-invites"];
          v7->_shouldShowInvites = [v76 BOOLValue];
        }

        else
        {
          v7->_shouldShowInvites = 0;
        }

        v77 = [v62 objectForKeyedSubscript:@"use-rui-pages"];

        if (v77)
        {
          v78 = [v62 objectForKeyedSubscript:@"use-rui-pages"];
          v7->_showRUIPages = [v78 BOOLValue];
        }

        else
        {
          v7->_showRUIPages = 0;
        }

        v79 = [v62 objectForKeyedSubscript:@"family-share-payment-enabled"];

        if (v79)
        {
          v80 = [v62 objectForKeyedSubscript:@"family-share-payment-enabled"];
          v7->_sharedPayementEnabled = [v80 BOOLValue];
        }

        else
        {
          v7->_sharedPayementEnabled = 0;
        }

        v81 = [v62 objectForKeyedSubscript:@"checklist-ranking-bucket-type"];

        if (v81)
        {
          v82 = [v62 objectForKeyedSubscript:@"checklist-ranking-bucket-type"];
          checklistRankingBucketType = v7->_checklistRankingBucketType;
          v7->_checklistRankingBucketType = v82;
        }

        v84 = [v62 objectForKeyedSubscript:@"checklist-ranking-version"];

        if (v84)
        {
          v85 = [v62 objectForKeyedSubscript:@"checklist-ranking-version"];
          checklistRankingVersion = v7->_checklistRankingVersion;
          v7->_checklistRankingVersion = v85;
        }

        v7->_shouldBadgeOrganizer = 1;
        v87 = [v62 objectForKeyedSubscript:@"is-badging-disabled-organizer"];

        if (v87)
        {
          v88 = [v62 objectForKeyedSubscript:@"is-badging-disabled-organizer"];
          v7->_shouldBadgeOrganizer = [v88 BOOLValue] ^ 1;
        }

        v7->_shouldBadgeInvitee = 1;
        v89 = [v62 objectForKeyedSubscript:@"is-badging-disabled-invitee"];

        if (v89)
        {
          v90 = [v62 objectForKeyedSubscript:@"is-badging-disabled-invitee"];
          v7->_shouldBadgeInvitee = [v90 BOOLValue] ^ 1;
        }
      }
    }

    v91 = [responseCopy objectForKey:@"child-bot-details"];
    if (v91)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v92 = [v91 objectForKey:@"allowListed-parents"];
        if (v92)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(&v7->_childBotAllowlistedParents, v92);
          }
        }

        v93 = [v91 objectForKey:@"allowListed-child"];
        if (v93)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(&v7->_parentAllowlistedChildBots, v93);
          }
        }
      }
    }

    v94 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v95 = dispatch_queue_create("com.apple.family.familyCircle", v94);
    processingQueue = v7->_processingQueue;
    v7->_processingQueue = v95;
  }

  return v7;
}

- (FAFamilyMember)remoteGuardian
{
  v18 = *MEMORY[0x1E69E9840];
  remoteGuardianPerson = self->_remoteGuardianPerson;
  if (remoteGuardianPerson)
  {
    v3 = remoteGuardianPerson;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = self->_members;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if ([v9 isMe])
          {
            remoteChildren = [v9 remoteChildren];
            v11 = [remoteChildren count];

            if (v11)
            {
              v3 = v9;

              goto LABEL_14;
            }
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v3 = 0;
  }

LABEL_14:

  return v3;
}

- (BOOL)anyChildHasRemoteGuardians
{
  v15 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = self->_members;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v3);
          }

          remoteGuardians = [*(*(&v10 + 1) + 8 * i) remoteGuardians];
          v8 = [remoteGuardians count];

          if (v8)
          {
            LOBYTE(v4) = 1;
            goto LABEL_13;
          }
        }

        v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)memberForAltDSID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__0;
    v16 = __Block_byref_object_dispose__0;
    v17 = 0;
    members = self->_members;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __35__FAFamilyCircle_memberForAltDSID___block_invoke;
    v9[3] = &unk_1E7CA49D0;
    v10 = dCopy;
    v11 = &v12;
    [(NSArray *)members enumerateObjectsUsingBlock:v9];
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __35__FAFamilyCircle_memberForAltDSID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 altDSID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)memberForDSID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy && [dCopy intValue])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__0;
    v16 = __Block_byref_object_dispose__0;
    v17 = 0;
    members = self->_members;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __32__FAFamilyCircle_memberForDSID___block_invoke;
    v9[3] = &unk_1E7CA49D0;
    v10 = v5;
    v11 = &v12;
    [(NSArray *)members enumerateObjectsUsingBlock:v9];
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __32__FAFamilyCircle_memberForDSID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 dsid];
  v8 = [v7 intValue];
  v9 = [*(a1 + 32) intValue];

  if (v8 == v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)memberForPhoneNumber:(id)number
{
  v35 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v5 = [objc_alloc(MEMORY[0x1E695CF50]) initWithStringValue:numberCopy];
  fullyQualifiedDigits = [v5 fullyQualifiedDigits];

  if (fullyQualifiedDigits)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    members = [(FAFamilyCircle *)self members];
    v23 = [members countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v23)
    {
      v8 = *v30;
      v24 = members;
      v22 = *v30;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(members);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          memberPhoneNumbers = [v10 memberPhoneNumbers];
          v12 = [memberPhoneNumbers componentsSeparatedByString:{@", "}];

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v26;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v26 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v25 + 1) + 8 * j);
                if ([v18 length])
                {
                  v19 = [objc_alloc(MEMORY[0x1E695CF50]) initWithStringValue:v18];
                  if ([v5 isLikePhoneNumber:v19])
                  {
                    v20 = v10;

                    members = v24;
                    goto LABEL_23;
                  }
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          members = v24;
          v8 = v22;
        }

        v20 = 0;
        v23 = [v24 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v23);
    }

    else
    {
      v20 = 0;
    }

LABEL_23:
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (NSArray)firstNames
{
  v24 = *MEMORY[0x1E69E9840];
  members = [(FAFamilyCircle *)self members];
  v4 = [members count];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    members2 = [(FAFamilyCircle *)self members];
    v7 = [members2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = v7;
    v9 = *v20;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(members2);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if (([v11 isMe] & 1) == 0)
        {
          contact = [v11 contact];
          givenName = [contact givenName];

          firstName = [v11 firstName];
          if ([givenName length])
          {
            v15 = v5;
            v16 = givenName;
            goto LABEL_12;
          }

          if (firstName)
          {
            v15 = v5;
            v16 = firstName;
LABEL_12:
            [v15 addObject:v16];
          }

          continue;
        }
      }

      v8 = [members2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v8)
      {
LABEL_16:

        v17 = [v5 copy];
        goto LABEL_18;
      }
    }
  }

  v17 = 0;
LABEL_18:

  return v17;
}

uint64_t __36__FAFamilyCircle_pendingInvitesOnly__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 inviteStatus];
  v3 = [v2 isEqual:@"Pending"];

  return v3;
}

- (NSArray)pendingMembersWithAllStatues
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  processingQueue = self->_processingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__FAFamilyCircle_pendingMembersWithAllStatues__block_invoke;
  v5[3] = &unk_1E7CA4A18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(processingQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__FAFamilyCircle_pendingMembersWithAllStatues__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 56);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = [*(a1 + 32) _serverResponse];
    v5 = [v4 objectForKey:@"pending-members"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v17;
        do
        {
          v10 = 0;
          do
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v16 + 1) + 8 * v10);
            v12 = [FAFamilyMember alloc];
            v13 = [(FAFamilyMember *)v12 initWithDictionaryRepresentation:v11, v16];
            [v3 addObject:v13];

            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v8);
      }
    }

    v14 = *(a1 + 32);
    v15 = *(v14 + 56);
    *(v14 + 56) = v3;

    v2 = *(*(a1 + 32) + 56);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (FAFamilyMember)me
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  processingQueue = self->_processingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __20__FAFamilyCircle_me__block_invoke;
  v5[3] = &unk_1E7CA4A18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(processingQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __20__FAFamilyCircle_me__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (!v3)
  {
    v4 = *(v2 + 24);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __20__FAFamilyCircle_me__block_invoke_2;
    v5[3] = &unk_1E7CA4A40;
    v5[4] = v2;
    [v4 enumerateObjectsUsingBlock:v5];
    v3 = *(*(a1 + 32) + 72);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
}

void __20__FAFamilyCircle_me__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isMe])
  {
    objc_storeStrong((*(a1 + 32) + 72), a2);
    *a4 = 1;
  }
}

- (BOOL)currentUserIsU13
{
  v3 = [(FAFamilyCircle *)self me];
  if (v3)
  {
    v4 = [(FAFamilyCircle *)self me];
    isChildAccount = [v4 isChildAccount];
  }

  else
  {
    isChildAccount = 0;
  }

  return isChildAccount;
}

- (BOOL)familyHasU13Member
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_members;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isChildAccount])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  members = self->_members;
  coderCopy = coder;
  [coderCopy encodeObject:members forKey:@"_members"];
  [coderCopy encodeObject:self->_cloudKitProperties forKey:@"_cloudKitProperties"];
  [coderCopy encodeObject:self->__serverResponse forKey:@"__serverResponse"];
  [coderCopy encodeObject:self->_childCutOffAge forKey:@"_childCutOffAge"];
  [coderCopy encodeBool:self->_canAddMembers forKey:@"_canAddMembers"];
  [coderCopy encodeObject:self->_addMemberButtonLabel forKey:@"_addMemberButtonLabel"];
  [coderCopy encodeObject:self->_eligibilityRequirements forKey:@"family-recommendation-info"];
  [coderCopy encodeObject:self->_familyMembersFooterLabel forKey:@"_familyMembersFooterLabel"];
  [coderCopy encodeObject:self->_allowedSubscriptions forKey:@"_allowedSubscriptions"];
  [coderCopy encodeBool:self->_showAddMemberButton forKey:@"_showAddMemberButton"];
  [coderCopy encodeBool:self->_shouldShowInvites forKey:@"_shouldShowInvites"];
  [coderCopy encodeBool:self->_showLocationSplashScreen forKey:@"_showLocationSplashScreen"];
  [coderCopy encodeBool:self->_showRUIPages forKey:@"_showRUIPages"];
  [coderCopy encodeObject:self->_familyID forKey:@"_familyID"];
  [coderCopy encodeInteger:self->_ageCategory forKey:@"_ageCategory"];
  [coderCopy encodeBool:self->_sharedPayementEnabled forKey:@"_sharedPayementEnabled"];
  [coderCopy encodeObject:self->_checklistRankingBucketType forKey:@"_checklistRankingBucketType"];
  [coderCopy encodeObject:self->_checklistRankingVersion forKey:@"_checklistRankingVersion"];
  [coderCopy encodeBool:self->_shouldBadgeOrganizer forKey:@"_shouldBadgeOrganizer"];
  [coderCopy encodeBool:self->_shouldBadgeInvitee forKey:@"_shouldBadgeInvitee"];
  [coderCopy encodeObject:self->_childBotAllowlistedParents forKey:@"_childBotAllowlistedParents"];
  [coderCopy encodeObject:self->_parentAllowlistedChildBots forKey:@"_parentAllowlistedChildBots"];
}

- (FAFamilyCircle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v49.receiver = self;
  v49.super_class = FAFamilyCircle;
  v5 = [(FAFamilyCircle *)&v49 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_members"];
    members = v5->_members;
    v5->_members = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_cloudKitProperties"];
    cloudKitProperties = v5->_cloudKitProperties;
    v5->_cloudKitProperties = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v13 setWithObjects:{v14, v15, v16, v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"__serverResponse"];
    serverResponse = v5->__serverResponse;
    v5->__serverResponse = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"family-recommendation-info"];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = objc_alloc_init(FAEligibilityRequirements);
    }

    eligibilityRequirements = v5->_eligibilityRequirements;
    v5->_eligibilityRequirements = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_childCutOffAge"];
    childCutOffAge = v5->_childCutOffAge;
    v5->_childCutOffAge = v25;

    v5->_canAddMembers = [coderCopy decodeBoolForKey:@"_canAddMembers"];
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_addMemberButtonLabel"];
    addMemberButtonLabel = v5->_addMemberButtonLabel;
    v5->_addMemberButtonLabel = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_familyMembersFooterLabel"];
    familyMembersFooterLabel = v5->_familyMembersFooterLabel;
    v5->_familyMembersFooterLabel = v29;

    v31 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_allowedSubscriptions"];
    allowedSubscriptions = v5->_allowedSubscriptions;
    v5->_allowedSubscriptions = v31;

    v5->_showAddMemberButton = [coderCopy decodeBoolForKey:@"_showAddMemberButton"];
    v5->_shouldShowInvites = [coderCopy decodeBoolForKey:@"_shouldShowInvites"];
    v5->_showLocationSplashScreen = [coderCopy decodeBoolForKey:@"_showLocationSplashScreen"];
    v5->_showRUIPages = [coderCopy decodeBoolForKey:@"_showRUIPages"];
    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_familyID"];
    familyID = v5->_familyID;
    v5->_familyID = v33;

    v5->_ageCategory = [coderCopy decodeIntegerForKey:@"_ageCategory"];
    v5->_sharedPayementEnabled = [coderCopy decodeBoolForKey:@"_sharedPayementEnabled"];
    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_checklistRankingBucketType"];
    checklistRankingBucketType = v5->_checklistRankingBucketType;
    v5->_checklistRankingBucketType = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_checklistRankingVersion"];
    checklistRankingVersion = v5->_checklistRankingVersion;
    v5->_checklistRankingVersion = v37;

    if ([coderCopy containsValueForKey:@"_shouldBadgeOrganizer"])
    {
      v39 = [coderCopy decodeBoolForKey:@"_shouldBadgeOrganizer"];
    }

    else
    {
      v39 = 1;
    }

    v5->_shouldBadgeOrganizer = v39;
    if ([coderCopy containsValueForKey:@"_shouldBadgeInvitee"])
    {
      v40 = [coderCopy decodeBoolForKey:@"_shouldBadgeInvitee"];
    }

    else
    {
      v40 = 1;
    }

    v5->_shouldBadgeInvitee = v40;
    v41 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_childBotAllowlistedParents"];
    childBotAllowlistedParents = v5->_childBotAllowlistedParents;
    v5->_childBotAllowlistedParents = v41;

    v43 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_parentAllowlistedChildBots"];
    parentAllowlistedChildBots = v5->_parentAllowlistedChildBots;
    v5->_parentAllowlistedChildBots = v43;

    v45 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v46 = dispatch_queue_create("com.apple.family.familyCircle", v45);
    processingQueue = v5->_processingQueue;
    v5->_processingQueue = v46;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(FAFamilyCircle *)self isEqualToFAFamilyCircle:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToFAFamilyCircle:(id)circle
{
  circleCopy = circle;
  _serverResponse = [(FAFamilyCircle *)self _serverResponse];
  _serverResponse2 = [circleCopy _serverResponse];

  LOBYTE(circleCopy) = [_serverResponse isEqual:_serverResponse2];
  return circleCopy;
}

@end