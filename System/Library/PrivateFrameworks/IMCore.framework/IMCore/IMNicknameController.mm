@interface IMNicknameController
+ (BOOL)accountsMatchUpToUseNicknames;
+ (BOOL)multiplePhoneNumbersTiedToAppleID;
+ (id)sharedInstance;
- (BOOL)_canUpdatePersonalNickname;
- (BOOL)handleIsAllowedForSharing:(id)sharing;
- (BOOL)handleIsDeniedForSharing:(id)sharing;
- (BOOL)hasObservedTransitionForHandleID:(id)d;
- (BOOL)iCloudSignedInToUseNicknames;
- (BOOL)isActiveForNickname:(id)nickname;
- (BOOL)isIgnoredForNickname:(id)nickname;
- (BOOL)shouldOfferNicknameSharingForChat:(id)chat;
- (BOOL)shouldOfferNicknameSharingForHandles:(id)handles;
- (IMNicknameController)init;
- (id)_changedKeysForNewNicknameDictionary:(id)dictionary oldNicknameDictionary:(id)nicknameDictionary withComparisonOptions:(unint64_t)options;
- (id)_handleIDsForHandle:(id)handle;
- (id)archivedNicknameForHandleIDs:(id)ds;
- (id)createSharedProfileStateOracleForHandles:(id)handles;
- (id)currentNicknameForHandleIDs:(id)ds;
- (id)handlesForNicknamesUnderScrutiny;
- (id)imageDataForHandle:(id)handle;
- (id)nicknameForHandle:(id)handle;
- (id)nicknameForHandleIDs:(id)ds;
- (id)pendingNicknameForHandleIDs:(id)ds;
- (id)personNameComponentsForHandle:(id)handle;
- (id)remoteDaemon;
- (id)truncateNameIfNeeded:(id)needed;
- (id)unknownSenderRecordInfoFor:(id)for;
- (unint64_t)nicknameUpdateForHandle:(id)handle nicknameIfAvailable:(id *)available;
- (void)_broadcastNicknamePreferencesDidChange:(id)change;
- (void)acceptPendingNicknameForHandleID:(id)d updateType:(unint64_t)type;
- (void)allowHandlesForNicknameSharing:(id)sharing forChat:(id)chat fromHandle:(id)handle forceSend:(BOOL)send;
- (void)allowHandlesForNicknameSharing:(id)sharing fromHandle:(id)handle forceSend:(BOOL)send;
- (void)clearHandleFromScrutiny:(id)scrutiny;
- (void)clearPendingNicknameUpdatesForHandle:(id)handle forceClear:(BOOL)clear;
- (void)clearPendingNicknameUpdatesForHandleIDs:(id)ds;
- (void)denyHandlesForNicknameSharing:(id)sharing;
- (void)fetchPersonalNicknameWithCompletion:(id)completion;
- (void)ignorePendingNicknameUpdatesForHandle:(id)handle;
- (void)ignorePendingNicknameUpdatesForHandleIDs:(id)ds;
- (void)markAllAsPending;
- (void)markHandleUnderScrutiny:(id)scrutiny;
- (void)markNickname:(id)nickname asActive:(BOOL)active;
- (void)markNicknameAsIgnored:(id)ignored;
- (void)markTransitionAsObservedForHandleID:(id)d isAutoUpdate:(BOOL)update;
- (void)sendNameOnlyToHandleIDs:(id)ds fromHandleID:(id)d;
- (void)sendPersonalNicknameToHandle:(id)handle fromHandle:(id)fromHandle;
- (void)setNicknameHandlesUnderScrutiny;
- (void)setPersonalNickname:(id)nickname;
- (void)setPersonalNicknameFromOnboardingResult:(id)result;
- (void)updateIsActiveList:(id)list;
- (void)updateIsIgnoredList:(id)list;
- (void)updateLocalNicknameStore;
- (void)updatePendingNicknameForHandleIDs:(id)ds;
- (void)updatePendingNicknames:(id)nicknames handledNicknames:(id)handledNicknames archivedNicknames:(id)archivedNicknames;
- (void)updatePersonalNickname:(id)nickname;
- (void)updatePersonalNicknameIfNecessaryWithMeCardSharingResult:(id)result;
- (void)updateSharingAllowList:(id)list denyList:(id)denyList;
- (void)updateTransitionedNicknameHandles:(id)handles;
- (void)updateUnknownSenderRecords:(id)records;
@end

@implementation IMNicknameController

+ (id)sharedInstance
{
  if (qword_1ED767920 != -1)
  {
    sub_1A8242EC4();
  }

  v3 = qword_1ED7678C0;

  return v3;
}

- (IMNicknameController)init
{
  v7.receiver = self;
  v7.super_class = IMNicknameController;
  v2 = [(IMNicknameController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    if ([(IMNicknameController *)v2 _nicknameFeatureEnabled])
    {
      [(IMNicknameController *)v3 setIsInitialLoad:1];
      [(IMNicknameController *)v3 updateLocalNicknameStore];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v3 selector:sel__broadcastNicknamePreferencesDidChange_ name:*MEMORY[0x1E69A77F0] object:0];
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
        return v3;
      }

      defaultCenter = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_1A823F000, defaultCenter, OS_LOG_TYPE_INFO, "Nickname feature is disabled, not loading IMNicknameController", v6, 2u);
      }
    }
  }

  return v3;
}

- (void)updateLocalNicknameStore
{
  _nicknameFeatureEnabled = [(IMNicknameController *)self _nicknameFeatureEnabled];
  v4 = IMOSLoggingEnabled();
  if (_nicknameFeatureEnabled)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Updating nickname store!", buf, 2u);
      }
    }

    remoteDaemon = [(IMNicknameController *)self remoteDaemon];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1A824FA78;
    v20[3] = &unk_1E7810ED8;
    v20[4] = self;
    [remoteDaemon fetchPersonalNicknameWithReply:v20];

    remoteDaemon2 = [(IMNicknameController *)self remoteDaemon];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A824B500;
    v19[3] = &unk_1E7810F00;
    v19[4] = self;
    [remoteDaemon2 fetchNicknamesWithReply:v19];

    remoteDaemon3 = [(IMNicknameController *)self remoteDaemon];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1A82B7390;
    v18[3] = &unk_1E7810F28;
    v18[4] = self;
    [remoteDaemon3 fetchHandleSharingStateWithReply:v18];

    remoteDaemon4 = [(IMNicknameController *)self remoteDaemon];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1A82B7468;
    v17[3] = &unk_1E7810F50;
    v17[4] = self;
    [remoteDaemon4 fetchTransitionedNicknameHandlesWithReply:v17];

    remoteDaemon5 = [(IMNicknameController *)self remoteDaemon];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A824B5E8;
    v16[3] = &unk_1E78100B8;
    v16[4] = self;
    [remoteDaemon5 fetchActiveNicknamesWithReply:v16];

    remoteDaemon6 = [(IMNicknameController *)self remoteDaemon];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1A824B684;
    v15[3] = &unk_1E78100B8;
    v15[4] = self;
    [remoteDaemon6 fetchIgnoredNicknameHandlesWithReply:v15];

    remoteDaemon7 = [(IMNicknameController *)self remoteDaemon];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A824DC9C;
    v14[3] = &unk_1E78100B8;
    v14[4] = self;
    [remoteDaemon7 fetchUnknownSenderRecordsWithReply:v14];
  }

  else if (v4)
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating nickname store", buf, 2u);
    }
  }
}

- (BOOL)_canUpdatePersonalNickname
{
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isAllowMultiplePhoneNumbersSNaPEnabled = [mEMORY[0x1E69A8070] isAllowMultiplePhoneNumbersSNaPEnabled];

    iCloudSignedInToUseNicknames = [(IMNicknameController *)self iCloudSignedInToUseNicknames];
    LOBYTE(v6) = isAllowMultiplePhoneNumbersSNaPEnabled & iCloudSignedInToUseNicknames;
    if ((isAllowMultiplePhoneNumbersSNaPEnabled & 1) == 0 && iCloudSignedInToUseNicknames)
    {
      LOBYTE(v6) = [objc_opt_class() multiplePhoneNumbersTiedToAppleID] ^ 1;
    }
  }

  else
  {
    v6 = IMOSLoggingEnabled();
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Nickname feature not enabled, not updating personal nickname", v9, 2u);
      }

      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (BOOL)iCloudSignedInToUseNicknames
{
  v9 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8018] = [MEMORY[0x1E69A8018] sharedInstance];
  v3 = [mEMORY[0x1E69A8018] getBoolFromDomain:*MEMORY[0x1E69A77F8] forKey:*MEMORY[0x1E69A7810]];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      if (v3)
      {
        v5 = @"YES";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "iCloud signed in for nicknames: %@", &v7, 0xCu);
    }
  }

  return v3;
}

- (void)_broadcastNicknamePreferencesDidChange:(id)change
{
  changeCopy = change;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Got IMNicknamePreferencesDidChangeNotification so syncing preferences", v7, 2u);
    }
  }

  remoteDaemon = [(IMNicknameController *)self remoteDaemon];
  [remoteDaemon nicknamePreferencesDidChange];
}

- (id)nicknameForHandle:(id)handle
{
  v13 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    if (!IMSharedHelperCurrentRegionRequiresKnownSenderForNickname() || (v5 = MEMORY[0x1E69A7FD0], [handleCopy cnContactWithKeys:MEMORY[0x1E695E0F0]], v6 = objc_claimAutoreleasedReturnValue(), LOBYTE(v5) = objc_msgSend(v5, "isCNContactAKnownContact:", v6), v6, (v5 & 1) != 0))
    {
      v7 = [(IMNicknameController *)self _handleIDsForHandle:handleCopy];
      v8 = [(IMNicknameController *)self nicknameForHandleIDs:v7];

      goto LABEL_14;
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = handleCopy;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Not returning nickname for handle %@, because their is no contact for the handle.", &v11, 0xCu);
      }

LABEL_12:
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = handleCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Nickname feature not enabled, returning nil nickname for handle %@", &v11, 0xCu);
    }

    goto LABEL_12;
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (unint64_t)nicknameUpdateForHandle:(id)handle nicknameIfAvailable:(id *)available
{
  v92 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    v72 = handleCopy;
    [(IMNicknameController *)self _handleIDsForHandle:handleCopy];
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v6 = v81 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v80 objects:v91 count:16];
    if (v7)
    {
      v8 = *v81;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v81 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v80 + 1) + 8 * v9);
        pendingNicknameUpdates = [(IMNicknameController *)self pendingNicknameUpdates];
        v12 = [pendingNicknameUpdates objectForKey:v10];

        if (v12)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v6 countByEnumeratingWithState:&v80 objects:v91 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      if (available)
      {
        v15 = v12;
        *available = v12;
      }

      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isNameAndPhotoC3Enabled = [mEMORY[0x1E69A8070] isNameAndPhotoC3Enabled];

      v18 = *MEMORY[0x1E695C230];
      if (isNameAndPhotoC3Enabled)
      {
        v90[0] = *MEMORY[0x1E695C240];
        v90[1] = v18;
        v19 = *MEMORY[0x1E695C420];
        v90[2] = *MEMORY[0x1E695C278];
        v90[3] = v19;
        v90[4] = *MEMORY[0x1E695C280];
        [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:5];
      }

      else
      {
        v89[0] = *MEMORY[0x1E695C240];
        v89[1] = v18;
        v20 = *MEMORY[0x1E695C280];
        v89[2] = *MEMORY[0x1E695C278];
        v89[3] = v20;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:4];
      }
      v21 = ;
      v73 = [v72 cnContactWithKeys:v21];

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v22 = v6;
      v23 = [v22 countByEnumeratingWithState:&v76 objects:v88 count:16];
      if (v23)
      {
        v24 = *v77;
LABEL_23:
        v25 = 0;
        while (1)
        {
          if (*v77 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v76 + 1) + 8 * v25);
          handledNicknames = [(IMNicknameController *)self handledNicknames];
          v28 = [handledNicknames objectForKey:v26];

          if (v28)
          {
            break;
          }

          if (v23 == ++v25)
          {
            v23 = [v22 countByEnumeratingWithState:&v76 objects:v88 count:16];
            if (v23)
            {
              goto LABEL_23;
            }

            goto LABEL_29;
          }
        }

        if ([MEMORY[0x1E69A7FD0] isCNContactAKnownContact:v73])
        {
          v69 = 0;
          goto LABEL_32;
        }

        if (IMOSLoggingEnabled())
        {
          v50 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v85 = v28;
            _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_INFO, "Not displaying nickname update banner for unknown contact with previously handled nickname: %@", buf, 0xCu);
          }
        }

        [(IMNicknameController *)self clearPendingNicknameUpdatesForHandle:v72 forceClear:1];
        v13 = 0;
        if (available)
        {
          *available = 0;
        }

        goto LABEL_137;
      }

LABEL_29:

      v28 = 0;
      v69 = 1;
LABEL_32:
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v85 = v28;
          _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Last handled nickname: %@", buf, 0xCu);
        }
      }

      v30 = [v12 isUpdateFromNickname:v28 withOptions:4];
      v31 = [v12 isUpdateFromNickname:v28 withOptions:2];
      mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isNameAndPhotoC3Enabled2 = [mEMORY[0x1E69A8070]2 isNameAndPhotoC3Enabled];

      if (isNameAndPhotoC3Enabled2)
      {
        v75 = [v12 isUpdateFromNickname:v28 withOptions:32];
      }

      else
      {
        v75 = 0;
      }

      v71 = [v12 isUpdateFromNickname:v28 withOptions:16];
      if (v30)
      {
        if (IMOSLoggingEnabled())
        {
          v34 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v85 = v12;
            v86 = 2112;
            v87 = v73;
            _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, "Pending nickname update %@ does not match previously handled nickname for contact %@", buf, 0x16u);
          }
        }

        givenName = [v73 givenName];
        firstName = [v12 firstName];
        if ([givenName isEqualToString:firstName])
        {
          familyName = [v73 familyName];
          lastName = [v12 lastName];
          v39 = [familyName isEqualToString:lastName];

          if (v39)
          {
            if (IMOSLoggingEnabled())
            {
              v40 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1A823F000, v40, OS_LOG_TYPE_INFO, "Pending nickname name matches names for contact. Setting nameChanged to NO", buf, 2u);
              }
            }

            goto LABEL_50;
          }
        }

        else
        {
        }

        if (IMOSLoggingEnabled())
        {
          v51 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v85 = v12;
            v86 = 2112;
            v87 = v73;
            _os_log_impl(&dword_1A823F000, v51, OS_LOG_TYPE_INFO, "Pending nickname name %@ does not match current contact name %@", buf, 0x16u);
          }
        }

        [v12 updateNameFromContact:v73];
        v70 = 2;
        if (v31)
        {
LABEL_51:
          imageData = [v73 imageData];
          if (![imageData length])
          {
            if (IMOSLoggingEnabled())
            {
              v52 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v85 = v73;
                v86 = 2112;
                v87 = v12;
                _os_log_impl(&dword_1A823F000, v52, OS_LOG_TYPE_INFO, "Existing contact does not have an image, not suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
              }
            }

            v49 = 1;
            goto LABEL_92;
          }

          imageHash = [v12 imageHash];
          imageHash2 = [v73 imageHash];
          v44 = imageHash2 == 0;

          if (v44)
          {
            if (IMOSLoggingEnabled())
            {
              v53 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v85 = v73;
                v86 = 2112;
                v87 = v12;
                _os_log_impl(&dword_1A823F000, v53, OS_LOG_TYPE_INFO, "Could not determine md5 hash of existing image data, not suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
              }

              goto LABEL_89;
            }
          }

          else if ([imageHash length])
          {
            imageHash3 = [v73 imageHash];
            v46 = [imageHash3 isEqual:imageHash];

            v47 = IMOSLoggingEnabled();
            if (v46)
            {
              if (v47)
              {
                v48 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v85 = v73;
                  v86 = 2112;
                  v87 = v12;
                  _os_log_impl(&dword_1A823F000, v48, OS_LOG_TYPE_INFO, "Photo update has a the same md5 hash as the existing contact photo, suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
                }
              }

              v49 = 0;
              goto LABEL_91;
            }

            if (v47)
            {
              v53 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v85 = v73;
                v86 = 2112;
                v87 = v12;
                _os_log_impl(&dword_1A823F000, v53, OS_LOG_TYPE_INFO, "Photo update has a distinct md5 hash from the existing contact photo, not suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
              }

LABEL_89:
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v53 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v85 = v73;
              v86 = 2112;
              v87 = v12;
              _os_log_impl(&dword_1A823F000, v53, OS_LOG_TYPE_INFO, "Could not determine md5 hash of suggested update image data, not suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
            }

            goto LABEL_89;
          }

          v49 = 1;
LABEL_91:

LABEL_92:
LABEL_93:
          if (!v75)
          {
            v61 = 0;
LABEL_124:
            if (!v71 || v69 && ([v12 pronouns], v64 = objc_claimAutoreleasedReturnValue(), v65 = v64 == 0, v64, v65))
            {
              v67 = v70 | 4;
              if (!v49)
              {
                v67 = v70;
              }

              if (v61)
              {
                v13 = v67 | 8;
              }

              else
              {
                v13 = v67;
              }
            }

            else
            {
              v66 = v70 | 4;
              if (!v49)
              {
                v66 = v70;
              }

              if (v61)
              {
                v66 |= 8uLL;
              }

              v13 = v66 | 0x10;
            }

LABEL_137:

            goto LABEL_138;
          }

          wallpaper = [v73 wallpaper];
          dataRepresentation = [wallpaper dataRepresentation];
          if (![dataRepresentation length])
          {
            if (IMOSLoggingEnabled())
            {
              v62 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v85 = v73;
                v86 = 2112;
                v87 = v12;
                _os_log_impl(&dword_1A823F000, v62, OS_LOG_TYPE_INFO, "Existing contact does not have a wallpaper, not suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
              }
            }

            v61 = 1;
            goto LABEL_123;
          }

          v56 = IMSharedHelperMD5OfDataInBytes();
          wallpaperImageHash = [v12 wallpaperImageHash];
          if ([v56 length])
          {
            if ([wallpaperImageHash length])
            {
              v58 = [v56 isEqual:wallpaperImageHash];
              v59 = IMOSLoggingEnabled();
              if (v58)
              {
                if (v59)
                {
                  v60 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v85 = v73;
                    v86 = 2112;
                    v87 = v12;
                    _os_log_impl(&dword_1A823F000, v60, OS_LOG_TYPE_INFO, "Wallpaper update has a the same md5 hash as the existing wallpaper, suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
                  }
                }

                v61 = 0;
                goto LABEL_122;
              }

              if (v59)
              {
                v63 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v85 = v73;
                  v86 = 2112;
                  v87 = v12;
                  _os_log_impl(&dword_1A823F000, v63, OS_LOG_TYPE_INFO, "Wallpaper update has a distinct md5 hash from the existing wallpaper, not suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
                }

LABEL_120:
              }
            }

            else if (IMOSLoggingEnabled())
            {
              v63 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v85 = v73;
                v86 = 2112;
                v87 = v12;
                _os_log_impl(&dword_1A823F000, v63, OS_LOG_TYPE_INFO, "Could not determine md5 hash of suggested update wallpaper data, not suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
              }

              goto LABEL_120;
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v63 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v85 = v73;
              v86 = 2112;
              v87 = v12;
              _os_log_impl(&dword_1A823F000, v63, OS_LOG_TYPE_INFO, "Could not determine md5 hash of existing wallpaper data, not suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
            }

            goto LABEL_120;
          }

          v61 = 1;
LABEL_122:

LABEL_123:
          goto LABEL_124;
        }

LABEL_72:
        v49 = 0;
        goto LABEL_93;
      }

LABEL_50:
      v70 = 0;
      if (v31)
      {
        goto LABEL_51;
      }

      goto LABEL_72;
    }

LABEL_10:
    v13 = 0;
    v12 = v6;
LABEL_138:

    handleCopy = v72;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v85 = handleCopy;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Nickname feature not enabled, no update for handle %@", buf, 0xCu);
      }
    }

    v13 = 0;
  }

  return v13;
}

- (void)clearPendingNicknameUpdatesForHandle:(id)handle forceClear:(BOOL)clear
{
  clearCopy = clear;
  v28 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v7 = [(IMNicknameController *)self _handleIDsForHandle:handleCopy];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v22 = 138412802;
      v23 = v7;
      v24 = 2112;
      v25 = handleCopy;
      v26 = 1024;
      v27 = clearCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Clearing pending nickname update for handle IDs %@ on handle %@, force clear: %{BOOL}d", &v22, 0x1Cu);
    }
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isNameAndPhotoC3Enabled = [mEMORY[0x1E69A8070] isNameAndPhotoC3Enabled];

  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    if (!isNameAndPhotoC3Enabled || clearCopy)
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v22 = 138412290;
          v23 = v7;
          _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Asking the daemon to clear handle IDs: %@", &v22, 0xCu);
        }
      }

      remoteDaemon = [(IMNicknameController *)self remoteDaemon];
      allObjects = [v7 allObjects];
      [remoteDaemon clearPendingNicknameUpdatesForHandleIDs:allObjects];
    }

    else
    {
      remoteDaemon = [(IMNicknameController *)self pendingNicknameForHandleIDs:v7];
      allObjects = [(IMNicknameController *)self currentNicknameForHandleIDs:v7];
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v22 = 138412546;
          v23 = remoteDaemon;
          v24 = 2112;
          v25 = allObjects;
          _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Found pending nickname: %@, and current nickname %@", &v22, 0x16u);
        }
      }

      v14 = [remoteDaemon isUpdateFromNickname:allObjects withOptions:8];
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v22 = 67109120;
          LODWORD(v23) = v14;
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Nicknames are different: %{BOOL}d", &v22, 8u);
        }
      }

      v16 = IMOSLoggingEnabled();
      if (v14)
      {
        if (v16)
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v22 = 138412290;
            v23 = v7;
            _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Because the nicknames are different, we're asking the daemon to clear handle IDs: %@", &v22, 0xCu);
          }
        }

        remoteDaemon2 = [(IMNicknameController *)self remoteDaemon];
        allObjects2 = [v7 allObjects];
        [remoteDaemon2 clearPendingNicknameUpdatesForHandleIDs:allObjects2];
      }

      else if (v16)
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          LOWORD(v22) = 0;
          _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Nicknames were the same, no need to clear.", &v22, 2u);
        }
      }
    }
  }
}

- (void)clearPendingNicknameUpdatesForHandleIDs:(id)ds
{
  v21 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = dsCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Clearing pending nickname update for handle IDs %@", buf, 0xCu);
    }
  }

  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = dsCopy;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          v11 = +[IMNicknameController sharedInstance];
          [v11 markTransitionAsObservedForHandleID:v10 isAutoUpdate:0];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    remoteDaemon = [(IMNicknameController *)self remoteDaemon];
    allObjects = [v6 allObjects];
    [remoteDaemon clearPendingNicknameUpdatesForHandleIDs:allObjects];
  }
}

- (void)ignorePendingNicknameUpdatesForHandle:(id)handle
{
  v4 = [(IMNicknameController *)self _handleIDsForHandle:handle];
  [(IMNicknameController *)self ignorePendingNicknameUpdatesForHandleIDs:v4];
}

- (void)ignorePendingNicknameUpdatesForHandleIDs:(id)ds
{
  v10 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = dsCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Ignoring pending nickname update for handle IDs %@", &v8, 0xCu);
    }
  }

  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    remoteDaemon = [(IMNicknameController *)self remoteDaemon];
    allObjects = [dsCopy allObjects];
    [remoteDaemon ignorePendingNicknameUpdatesForHandleIDs:allObjects];
  }
}

- (void)acceptPendingNicknameForHandleID:(id)d updateType:(unint64_t)type
{
  dCopy = d;
  _nicknameFeatureEnabled = [(IMNicknameController *)self _nicknameFeatureEnabled];
  if (dCopy && _nicknameFeatureEnabled)
  {
    remoteDaemon = [(IMNicknameController *)self remoteDaemon];
    [remoteDaemon acceptPendingNicknameForHandleID:dCopy updateType:type];
  }
}

- (BOOL)handleIsAllowedForSharing:(id)sharing
{
  v4 = [(IMNicknameController *)self _handleIDsForHandle:sharing];
  allowListedHandlesForSharing = [(IMNicknameController *)self allowListedHandlesForSharing];
  v6 = [v4 intersectsSet:allowListedHandlesForSharing];

  return v6;
}

- (BOOL)handleIsDeniedForSharing:(id)sharing
{
  v4 = [(IMNicknameController *)self _handleIDsForHandle:sharing];
  denyListedHandlesForSharing = [(IMNicknameController *)self denyListedHandlesForSharing];
  v6 = [v4 intersectsSet:denyListedHandlesForSharing];

  return v6;
}

- (void)allowHandlesForNicknameSharing:(id)sharing forChat:(id)chat fromHandle:(id)handle forceSend:(BOOL)send
{
  sendCopy = send;
  v28 = *MEMORY[0x1E69E9840];
  sharingCopy = sharing;
  chatCopy = chat;
  handleCopy = handle;
  v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = sharingCopy;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [(IMNicknameController *)self _handleIDsForHandle:*(*(&v23 + 1) + 8 * v18), v23];
        [v13 unionSet:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    if (chatCopy)
    {
      v20 = +[IMChatRegistry sharedRegistry];
      v21 = [v20 allGUIDsForChat:chatCopy];
    }

    else
    {
      v21 = 0;
    }

    remoteDaemon = [(IMNicknameController *)self remoteDaemon];
    [remoteDaemon allowHandleIDsForNicknameSharing:v13 onChatGUIDs:v21 fromHandle:handleCopy forceSend:sendCopy];
  }
}

- (void)allowHandlesForNicknameSharing:(id)sharing fromHandle:(id)handle forceSend:(BOOL)send
{
  sendCopy = send;
  v23 = *MEMORY[0x1E69E9840];
  sharingCopy = sharing;
  handleCopy = handle;
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = sharingCopy;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(IMNicknameController *)self _handleIDsForHandle:*(*(&v18 + 1) + 8 * v15), v18];
        [v10 unionSet:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    remoteDaemon = [(IMNicknameController *)self remoteDaemon];
    [remoteDaemon allowHandleIDsForNicknameSharing:v10 onChatGUIDs:MEMORY[0x1E695E0F0] fromHandle:handleCopy forceSend:sendCopy];
  }
}

- (void)sendPersonalNicknameToHandle:(id)handle fromHandle:(id)fromHandle
{
  v13[1] = *MEMORY[0x1E69E9840];
  fromHandleCopy = fromHandle;
  handleCopy = handle;
  v8 = +[IMAccountController sharedInstance];
  v9 = +[IMServiceImpl iMessageService];
  v10 = [v8 bestAccountForService:v9];

  v11 = [v10 imHandleWithID:handleCopy alreadyCanonical:0];

  if (v11)
  {
    v13[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [(IMNicknameController *)self allowHandlesForNicknameSharing:v12 fromHandle:fromHandleCopy forceSend:1];
  }
}

- (void)sendNameOnlyToHandleIDs:(id)ds fromHandleID:(id)d
{
  dsCopy = ds;
  dCopy = d;
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    remoteDaemon = [(IMNicknameController *)self remoteDaemon];
    [remoteDaemon sendNameOnlyToHandleIDs:dsCopy fromHandleID:dCopy];
  }
}

- (void)denyHandlesForNicknameSharing:(id)sharing
{
  v19 = *MEMORY[0x1E69E9840];
  sharingCopy = sharing;
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = sharingCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [(IMNicknameController *)self _handleIDsForHandle:*(*(&v13 + 1) + 8 * v9), v13];
          [v5 unionSet:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v7);
    }

    if ([(IMNicknameController *)self _nicknameFeatureEnabled])
    {
      remoteDaemon = [(IMNicknameController *)self remoteDaemon];
      [remoteDaemon denyHandleIDsForNicknameSharing:v5];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Nickname feature disabled, not denying handles", buf, 2u);
    }
  }
}

- (void)markNickname:(id)nickname asActive:(BOOL)active
{
  activeCopy = active;
  v21[1] = *MEMORY[0x1E69E9840];
  nicknameCopy = nickname;
  if (![(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_13;
    }

    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Nickname feature disabled, not setting personal nickname", &v16, 2u);
    }

LABEL_12:

    goto LABEL_13;
  }

  recordID = [nicknameCopy recordID];
  if (!recordID || ([nicknameCopy handle], v8 = objc_claimAutoreleasedReturnValue(), v8, recordID, !v8))
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_13;
    }

    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      handle = [nicknameCopy handle];
      recordID2 = [nicknameCopy recordID];
      v16 = 138412546;
      v17 = handle;
      v18 = 2112;
      v19 = recordID2;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Tried marking a nickname as active that is missing a handle or record ID. Handle: %@, RecordID: %@", &v16, 0x16u);
    }

    goto LABEL_12;
  }

  remoteDaemon = [(IMNicknameController *)self remoteDaemon];
  handle2 = [nicknameCopy handle];
  v20 = handle2;
  recordID3 = [nicknameCopy recordID];
  v21[0] = recordID3;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  [remoteDaemon markProfileRecords:v12 asActive:activeCopy];

LABEL_13:
}

- (BOOL)isActiveForNickname:(id)nickname
{
  nicknameCopy = nickname;
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    activeRecords = [(IMNicknameController *)self activeRecords];
    handle = [nicknameCopy handle];
    v7 = [activeRecords objectForKey:handle];

    if (v7)
    {
      recordID = [nicknameCopy recordID];
      v9 = [v7 isEqualToString:recordID];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Nickname feature disabled, nickname is not active.", v12, 2u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (void)markNicknameAsIgnored:(id)ignored
{
  v19[1] = *MEMORY[0x1E69E9840];
  ignoredCopy = ignored;
  if (![(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_13;
    }

    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Nickname feature disabled, not setting personal nickname", &v14, 2u);
    }

LABEL_12:

    goto LABEL_13;
  }

  recordID = [ignoredCopy recordID];
  if (!recordID || ([ignoredCopy handle], v6 = objc_claimAutoreleasedReturnValue(), v6, recordID, !v6))
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_13;
    }

    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      handle = [ignoredCopy handle];
      recordID2 = [ignoredCopy recordID];
      v14 = 138412546;
      v15 = handle;
      v16 = 2112;
      v17 = recordID2;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Tried marking a nickname as ignored that is missing a handle or record ID. Handle: %@, RecordID: %@", &v14, 0x16u);
    }

    goto LABEL_12;
  }

  remoteDaemon = [(IMNicknameController *)self remoteDaemon];
  handle2 = [ignoredCopy handle];
  v18 = handle2;
  recordID3 = [ignoredCopy recordID];
  v19[0] = recordID3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  [remoteDaemon markProfileRecordsAsIgnored:v10];

LABEL_13:
}

- (BOOL)isIgnoredForNickname:(id)nickname
{
  nicknameCopy = nickname;
  ignoredRecords = [(IMNicknameController *)self ignoredRecords];
  handle = [nicknameCopy handle];
  v7 = [ignoredRecords objectForKey:handle];

  if (v7)
  {
    recordID = [nicknameCopy recordID];
    v9 = [v7 isEqualToString:recordID];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setPersonalNickname:(id)nickname
{
  v17 = *MEMORY[0x1E69E9840];
  nicknameCopy = nickname;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "[IMNicknameController setPersonalNickname:]";
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Setting personal nickname for %s", &v15, 0xCu);
    }
  }

  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    _canUpdatePersonalNickname = [(IMNicknameController *)self _canUpdatePersonalNickname];
    v8 = IMOSLoggingEnabled();
    if (_canUpdatePersonalNickname)
    {
      if (v8)
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v15 = 138412290;
          v16 = nicknameCopy;
          _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Setting new personal nickname and notifying daemon %@", &v15, 0xCu);
        }
      }

      if (nicknameCopy)
      {
        objc_storeStrong(&self->_personalNickname, nickname);
        remoteDaemon = [(IMNicknameController *)self remoteDaemon];
        [remoteDaemon setNewPersonalNickname:nicknameCopy];

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"__kIMPersonalNicknameDidChangeNotification" object:0];
      }
    }

    else if (v8)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(objc_opt_class(), "multiplePhoneNumbersTiedToAppleID")}];
        v15 = 138412290;
        v16 = v14;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "We can't update the personal nickname - multiplePhoneNumbers: %@}", &v15, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Nickname feature disabled, not setting personal nickname", &v15, 2u);
    }
  }
}

- (void)fetchPersonalNicknameWithCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    _canUpdatePersonalNickname = [(IMNicknameController *)self _canUpdatePersonalNickname];
    v6 = IMOSLoggingEnabled();
    if (_canUpdatePersonalNickname)
    {
      if (v6)
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v18 = "[IMNicknameController fetchPersonalNicknameWithCompletion:]";
          _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Fetching personal nickname for %s", buf, 0xCu);
        }
      }

      personalNickname = [(IMNicknameController *)self personalNickname];

      if (personalNickname)
      {
        if (IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Personal nickname found", buf, 2u);
          }
        }

        if (completionCopy)
        {
          personalNickname2 = [(IMNicknameController *)self personalNickname];
          completionCopy[2](completionCopy, personalNickname2);
        }
      }

      else if (completionCopy)
      {
        remoteDaemon = [(IMNicknameController *)self remoteDaemon];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = sub_1A82B4FC4;
        v15[3] = &unk_1E7810EB0;
        v15[4] = self;
        v16 = completionCopy;
        [remoteDaemon fetchPersonalNicknameWithReply:v15];
      }

      goto LABEL_28;
    }

    if (v6)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(objc_opt_class(), "multiplePhoneNumbersTiedToAppleID")}];
        *buf = 138412290;
        v18 = v13;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "We can't fetch the personal nickname - multiplePhoneNumbers: %@", buf, 0xCu);
      }
    }

    if (completionCopy)
    {
LABEL_19:
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Nickname feature disabled, not fetching personal nickname", buf, 2u);
      }
    }

    if (completionCopy)
    {
      goto LABEL_19;
    }
  }

LABEL_28:
}

- (void)updatePersonalNickname:(id)nickname
{
  v16 = *MEMORY[0x1E69E9840];
  nicknameCopy = nickname;
  _nicknameFeatureEnabled = [(IMNicknameController *)self _nicknameFeatureEnabled];
  if (!nicknameCopy || _nicknameFeatureEnabled)
  {
    _canUpdatePersonalNickname = [(IMNicknameController *)self _canUpdatePersonalNickname];
    v9 = IMOSLoggingEnabled();
    if (!nicknameCopy || _canUpdatePersonalNickname)
    {
      if (v9)
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v14 = 138412290;
          v15 = nicknameCopy;
          _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Received personal nickname from daemon: %@", &v14, 0xCu);
        }
      }

      objc_storeStrong(&self->_personalNickname, nickname);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"__kIMPersonalNicknameDidChangeNotification" object:0];
    }

    else if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(objc_opt_class(), "multiplePhoneNumbersTiedToAppleID")}];
        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "We can't update the personal nickname - multiplePhoneNumbers: %@", &v14, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating personal nickname", &v14, 2u);
    }
  }
}

+ (BOOL)accountsMatchUpToUseNicknames
{
  mEMORY[0x1E69A8018] = [MEMORY[0x1E69A8018] sharedInstance];
  v3 = [mEMORY[0x1E69A8018] getBoolFromDomain:*MEMORY[0x1E69A77F8] forKey:*MEMORY[0x1E69A7810]];

  return v3;
}

+ (BOOL)multiplePhoneNumbersTiedToAppleID
{
  v9 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8018] = [MEMORY[0x1E69A8018] sharedInstance];
  v3 = [mEMORY[0x1E69A8018] getBoolFromDomain:*MEMORY[0x1E69A77F8] forKey:*MEMORY[0x1E69A7808]];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      if (v3)
      {
        v5 = @"YES";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "multiplePhoneNumbersTiedToAppleID: %@", &v7, 0xCu);
    }
  }

  return v3;
}

- (BOOL)shouldOfferNicknameSharingForChat:(id)chat
{
  chatCopy = chat;
  if (![(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_11;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
LABEL_10:

      goto LABEL_11;
    }

    *buf = 0;
    v8 = "Nickname feature disabled, not offering nickname sharing";
    v9 = buf;
LABEL_9:
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
    goto LABEL_10;
  }

  if (IMSharedHelperCurrentRegionRequiresKnownSenderForNickname() && ([chatCopy hasKnownParticipantsCache] & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_11;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v11 = 0;
    v8 = "Chat has known participants, and IMSharedHelperCurrentRegionRequiresKnownSenderForNickname is YES. Refusing to offer sharing.";
    v9 = &v11;
    goto LABEL_9;
  }

  if (![chatCopy hasMessageFromMe])
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  participants = [chatCopy participants];
  v6 = [(IMNicknameController *)self shouldOfferNicknameSharingForHandles:participants];

LABEL_12:
  return v6;
}

- (BOOL)shouldOfferNicknameSharingForHandles:(id)handles
{
  v42 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    v27 = handlesCopy;
    personalNickname = [(IMNicknameController *)self personalNickname];

    if (personalNickname)
    {
      allowListedHandlesForSharing = [(IMNicknameController *)self allowListedHandlesForSharing];
      if (allowListedHandlesForSharing)
      {

LABEL_11:
        mEMORY[0x1E69A8108] = [MEMORY[0x1E69A8108] sharedInstance];
        sharingAudience = [mEMORY[0x1E69A8108] sharingAudience];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        obj = handlesCopy;
        v12 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v12)
        {
          v13 = *v30;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v30 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v29 + 1) + 8 * i);
              isContact = [v15 isContact];
              v17 = [(IMNicknameController *)self handleIsAllowedForSharing:v15];
              v18 = [(IMNicknameController *)self handleIsDeniedForSharing:v15];
              v19 = isContact & (sharingAudience < 2);
              if (IMOSLoggingEnabled())
              {
                v20 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  v21 = [v15 ID];
                  v22 = v21;
                  v23 = @"NO";
                  if (v19)
                  {
                    v24 = @"YES";
                  }

                  else
                  {
                    v24 = @"NO";
                  }

                  *buf = 138413058;
                  v34 = v21;
                  if (v17)
                  {
                    v25 = @"YES";
                  }

                  else
                  {
                    v25 = @"NO";
                  }

                  v35 = 2112;
                  if (v18)
                  {
                    v23 = @"YES";
                  }

                  v36 = v24;
                  v37 = 2112;
                  v38 = v25;
                  v39 = 2112;
                  v40 = v23;
                  _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Handle ID %@ contact %@ allow listed %@ deny listed %@", buf, 0x2Au);
                }
              }

              if (((v19 | v17 | v18) & 1) == 0)
              {
                v8 = 1;
                goto LABEL_34;
              }
            }

            v12 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v8 = 0;
LABEL_34:

        goto LABEL_35;
      }

      denyListedHandlesForSharing = [(IMNicknameController *)self denyListedHandlesForSharing];

      if (denyListedHandlesForSharing)
      {
        goto LABEL_11;
      }
    }

    v8 = 0;
LABEL_35:
    handlesCopy = v27;
    goto LABEL_36;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Nickname feature disabled, not offering nickname sharing", buf, 2u);
    }
  }

  v8 = 0;
LABEL_36:

  return v8;
}

- (void)setNicknameHandlesUnderScrutiny
{
  scrutinyNicknameHandles = [(IMNicknameController *)self scrutinyNicknameHandles];
  allObjects = [scrutinyNicknameHandles allObjects];
  IMSetDomainValueForKey();
}

- (id)handlesForNicknamesUnderScrutiny
{
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    scrutinyNicknameHandles = self->_scrutinyNicknameHandles;
    if (!scrutinyNicknameHandles)
    {
      getNicknameHandlesUnderScrutiny = [(IMNicknameController *)self getNicknameHandlesUnderScrutiny];
      if (getNicknameHandlesUnderScrutiny)
      {
        v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:getNicknameHandlesUnderScrutiny];
      }

      else
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      }

      v8 = self->_scrutinyNicknameHandles;
      self->_scrutinyNicknameHandles = v5;

      scrutinyNicknameHandles = self->_scrutinyNicknameHandles;
    }

    v7 = scrutinyNicknameHandles;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Nickname feature disabled, not offering handles for nicknames under scrutiny", v10, 2u);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (void)markHandleUnderScrutiny:(id)scrutiny
{
  v5 = [scrutiny ID];
  scrutinyNicknameHandles = [(IMNicknameController *)self scrutinyNicknameHandles];
  [scrutinyNicknameHandles addObject:v5];

  [(IMNicknameController *)self setNicknameHandlesUnderScrutiny];
}

- (void)clearHandleFromScrutiny:(id)scrutiny
{
  v5 = [scrutiny ID];
  if ([v5 length])
  {
    scrutinyNicknameHandles = [(IMNicknameController *)self scrutinyNicknameHandles];
    [scrutinyNicknameHandles removeObject:v5];

    [(IMNicknameController *)self setNicknameHandlesUnderScrutiny];
  }
}

- (id)personNameComponentsForHandle:(id)handle
{
  v3 = [(IMNicknameController *)self nicknameForHandle:handle];
  firstName = [v3 firstName];
  lastName = [v3 lastName];
  v6 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  v7 = v6;
  if (firstName)
  {
    [v6 setGivenName:firstName];
  }

  if (lastName)
  {
    [v7 setFamilyName:lastName];
  }

  return v7;
}

- (id)imageDataForHandle:(id)handle
{
  v3 = [(IMNicknameController *)self nicknameForHandle:handle];
  avatar = [v3 avatar];
  hasImage = [avatar hasImage];

  if (hasImage)
  {
    avatar2 = [v3 avatar];
    imageData = [avatar2 imageData];
  }

  else
  {
    imageData = 0;
  }

  return imageData;
}

- (id)unknownSenderRecordInfoFor:(id)for
{
  forCopy = for;
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    unknownSenderRecords = [(IMNicknameController *)self unknownSenderRecords];
    v6 = [unknownSenderRecords objectForKey:forCopy];

    v7 = [MEMORY[0x1E69A8190] processSetOfUnknownSenderRecords:v6];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Nickname feature disabled, no unknown sender records", v10, 2u);
      }
    }

    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)nicknameForHandleIDs:(id)ds
{
  v31 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = dsCopy;
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v6)
    {
      v8 = *v25;
      *&v7 = 138412290;
      v23 = v7;
      do
      {
        v9 = 0;
        do
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v24 + 1) + 8 * v9);
          if (IMSharedHelperCurrentRegionRequiresKnownSenderForNickname() && ([MEMORY[0x1E69A7FD0] sharedInstance], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isIDAKnownContact:", v10), v11, (v12 & 1) == 0))
          {
            if (IMOSLoggingEnabled())
            {
              v18 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                *buf = v23;
                v30 = v10;
                _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Skipping handle %@ because we do not have a contact for it.", buf, 0xCu);
              }
            }
          }

          else
          {
            v13 = [(IMNicknameController *)self pendingNicknameUpdates:v23];
            v14 = [v13 objectForKey:v10];

            if (v14)
            {
              v16 = 0;
              v17 = v14;
LABEL_25:
              v20 = v17;

              v5 = v14;
              goto LABEL_26;
            }

            handledNicknames = [(IMNicknameController *)self handledNicknames];
            v16 = [handledNicknames objectForKey:v10];

            v17 = v16;
            if (v16)
            {
              goto LABEL_25;
            }
          }

          ++v9;
        }

        while (v6 != v9);
        v19 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
        v6 = v19;
      }

      while (v19);
    }

    v20 = 0;
LABEL_26:
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v30 = dsCopy;
        _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Nickname feature disabled, returning nil for nickname for handles %@", buf, 0xCu);
      }
    }

    v20 = 0;
  }

  return v20;
}

- (id)pendingNicknameForHandleIDs:(id)ds
{
  v27 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = dsCopy;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v6)
    {
      v7 = *v19;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          pendingNicknameUpdates = [(IMNicknameController *)self pendingNicknameUpdates];
          v11 = [pendingNicknameUpdates objectForKey:v9];

          if (v11)
          {
            if (IMOSLoggingEnabled())
            {
              v15 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v23 = v11;
                _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Found a pending nickname: %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v16 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v23 = v9;
                _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Handle ID: %@", buf, 0xCu);
              }
            }

            v14 = v11;

            goto LABEL_28;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v23 = 0;
        v24 = 2112;
        v25 = v5;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Found no pending nickname(%@) for handle IDs: %@", buf, 0x16u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = dsCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Nickname feature disabled, returning nil for pending nickname for %@", buf, 0xCu);
    }
  }

  v14 = 0;
LABEL_28:

  return v14;
}

- (id)currentNicknameForHandleIDs:(id)ds
{
  v27 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = dsCopy;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v6)
    {
      v7 = *v19;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          handledNicknames = [(IMNicknameController *)self handledNicknames];
          v11 = [handledNicknames objectForKey:v9];

          if (v11)
          {
            if (IMOSLoggingEnabled())
            {
              v15 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v23 = v11;
                _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Found a current nickname: %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v16 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v23 = v9;
                _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Handle ID: %@", buf, 0xCu);
              }
            }

            v14 = v11;

            goto LABEL_28;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v23 = 0;
        v24 = 2112;
        v25 = v5;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Found no current nickname(%@) for handle IDs: %@", buf, 0x16u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = dsCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Nickname feature disabled, returning nil for current nickname for %@", buf, 0xCu);
    }
  }

  v14 = 0;
LABEL_28:

  return v14;
}

- (id)archivedNicknameForHandleIDs:(id)ds
{
  v27 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = dsCopy;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v6)
    {
      v7 = *v19;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          archivedNicknames = [(IMNicknameController *)self archivedNicknames];
          v11 = [archivedNicknames objectForKey:v9];

          if (v11)
          {
            if (IMOSLoggingEnabled())
            {
              v15 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v23 = v11;
                _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Found an archived nickname: %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v16 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v23 = v9;
                _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Handle ID: %@", buf, 0xCu);
              }
            }

            v14 = v11;

            goto LABEL_28;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v23 = 0;
        v24 = 2112;
        v25 = v5;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Found no archived nickname(%@) for handle IDs: %@", buf, 0x16u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = dsCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Nickname feature disabled, returning nil for archived nickname for %@", buf, 0xCu);
    }
  }

  v14 = 0;
LABEL_28:

  return v14;
}

- (BOOL)hasObservedTransitionForHandleID:(id)d
{
  v11 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    transitionedHandles = [(IMNicknameController *)self transitionedHandles];
    v6 = [transitionedHandles containsObject:dCopy];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = dCopy;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Nickname feature disabled, returning NO for observed transition for %@", &v9, 0xCu);
      }
    }

    v6 = 0;
  }

  return v6;
}

- (void)markTransitionAsObservedForHandleID:(id)d isAutoUpdate:(BOOL)update
{
  updateCopy = update;
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (![dCopy length])
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1A84DF7E8(v16);
    }

    goto LABEL_21;
  }

  if (![(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1A84DF7A4(v16);
    }

LABEL_21:

    goto LABEL_22;
  }

  if (![(IMNicknameController *)self hasObservedTransitionForHandleID:dCopy])
  {
LABEL_15:
    remoteDaemon = [(IMNicknameController *)self remoteDaemon];
    v15 = [MEMORY[0x1E695DFD8] setWithObject:dCopy];
    [remoteDaemon markNicknamesAsTransitionedForHandleIDs:v15 isAutoUpdate:updateCopy];

    goto LABEL_22;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = dCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Handle ID has already transitioned: %@", buf, 0xCu);
    }
  }

  if (updateCopy)
  {
    v8 = MEMORY[0x1E695DFD8];
    v18 = dCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v10 = [v8 setWithArray:v9];

    v11 = [(IMNicknameController *)self currentNicknameForHandleIDs:v10];
    v12 = [(IMNicknameController *)self pendingNicknameForHandleIDs:v10];
    if (![v12 isUpdateFromNickname:v11 withOptions:34])
    {

      goto LABEL_22;
    }

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "There is a new pending photo or wallpaper", buf, 2u);
      }
    }

    goto LABEL_15;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Auto-update off", buf, 2u);
    }
  }

LABEL_22:
}

- (id)createSharedProfileStateOracleForHandles:(id)handles
{
  v33 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    if (IMSharedHelperCurrentRegionRequiresKnownSenderForNickname())
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v5 = handlesCopy;
      v6 = [v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v6)
      {
        v7 = *v27;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v27 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v26 + 1) + 8 * i);
            mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
            LOBYTE(v9) = [mEMORY[0x1E69A7FD0] isIDAKnownContact:v9];

            if (v9)
            {

              goto LABEL_20;
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_25;
      }

      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Recipients list does not contain contact, refuse to create a state oracle.", buf, 2u);
      }
    }

    else
    {
LABEL_20:
      if ([handlesCopy count])
      {
        mEMORY[0x1E69A7FD0]2 = [MEMORY[0x1E69A7FD0] sharedInstance];
        firstObject = [handlesCopy firstObject];
        v15 = *MEMORY[0x1E695C208];
        v31[0] = *MEMORY[0x1E695C330];
        v31[1] = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
        v17 = [mEMORY[0x1E69A7FD0]2 fetchCNContactForHandleID:firstObject withKeys:v16];

        mEMORY[0x1E69A7FD0]3 = [MEMORY[0x1E69A7FD0] sharedInstance];
        getContactStore = [mEMORY[0x1E69A7FD0]3 getContactStore];

        v20 = [MEMORY[0x1E695DFD8] setWithArray:handlesCopy];
        v21 = [(IMNicknameController *)self currentNicknameForHandleIDs:v20];
        v22 = [(IMNicknameController *)self pendingNicknameForHandleIDs:v20];
        v23 = [(IMNicknameController *)self archivedNicknameForHandleIDs:v20];
        v24 = [objc_alloc(MEMORY[0x1E695CF98]) initWithContact:v17 contactStore:getContactStore archivedNickname:v23 currentNickname:v21 pendingNickname:v22];

        goto LABEL_26;
      }

      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DF82C(v11);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Nickname feature is not enabled, no state oracle.", buf, 2u);
    }
  }

LABEL_25:
  v24 = 0;
LABEL_26:

  return v24;
}

- (id)_changedKeysForNewNicknameDictionary:(id)dictionary oldNicknameDictionary:(id)nicknameDictionary withComparisonOptions:(unint64_t)options
{
  v42 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  nicknameDictionaryCopy = nicknameDictionary;
  v29 = [MEMORY[0x1E695DFA8] set];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = dictionaryCopy;
  v8 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v37;
    do
    {
      v13 = 0;
      v14 = v10;
      v15 = v11;
      do
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v36 + 1) + 8 * v13);
        v10 = [obj objectForKeyedSubscript:v16];

        v11 = [nicknameDictionaryCopy objectForKeyedSubscript:v16];

        if (!v11 || [v11 isUpdateFromNickname:v10 withOptions:options])
        {
          [v29 addObject:v16];
        }

        ++v13;
        v14 = v10;
        v15 = v11;
      }

      while (v9 != v13);
      v9 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = nicknameDictionaryCopy;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    v21 = v29;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v32 + 1) + 8 * i);
        if (([v29 containsObject:v23] & 1) == 0)
        {
          v24 = v17;
          v25 = [v17 objectForKeyedSubscript:v23];

          v26 = [obj objectForKeyedSubscript:v23];

          if (!v26 || [v26 isUpdateFromNickname:v25 withOptions:options])
          {
            [v29 addObject:v23];
          }

          v10 = v25;
          v11 = v26;
          v17 = v24;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v19);
  }

  else
  {
    v21 = v29;
  }

  allObjects = [v21 allObjects];

  return allObjects;
}

- (void)updatePendingNicknames:(id)nicknames handledNicknames:(id)handledNicknames archivedNicknames:(id)archivedNicknames
{
  v44 = *MEMORY[0x1E69E9840];
  nicknamesCopy = nicknames;
  handledNicknamesCopy = handledNicknames;
  archivedNicknamesCopy = archivedNicknames;
  _nicknameFeatureEnabled = [(IMNicknameController *)self _nicknameFeatureEnabled];
  v12 = IMOSLoggingEnabled();
  if (_nicknameFeatureEnabled)
  {
    if (v12)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        v39 = [nicknamesCopy count];
        v40 = 2048;
        v41 = [handledNicknamesCopy count];
        v42 = 2048;
        v43 = [archivedNicknamesCopy count];
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Nickname store updated, got %lu pending, %lu handled nicknames, %lu archived nicknames", buf, 0x20u);
      }
    }

    v14 = [MEMORY[0x1E695DFA8] set];
    pendingNicknameUpdates = [(IMNicknameController *)self pendingNicknameUpdates];
    v16 = [(IMNicknameController *)self _changedKeysForNewNicknameDictionary:nicknamesCopy oldNicknameDictionary:pendingNicknameUpdates withComparisonOptions:4];
    [v14 addObjectsFromArray:v16];

    handledNicknames = [(IMNicknameController *)self handledNicknames];
    v18 = [(IMNicknameController *)self _changedKeysForNewNicknameDictionary:handledNicknamesCopy oldNicknameDictionary:handledNicknames withComparisonOptions:4];
    [v14 addObjectsFromArray:v18];

    archivedNicknames = [(IMNicknameController *)self archivedNicknames];
    v20 = [(IMNicknameController *)self _changedKeysForNewNicknameDictionary:archivedNicknamesCopy oldNicknameDictionary:archivedNicknames withComparisonOptions:4];
    [v14 addObjectsFromArray:v20];

    [(IMNicknameController *)self setPendingNicknameUpdates:nicknamesCopy];
    [(IMNicknameController *)self setHandledNicknames:handledNicknamesCopy];
    [(IMNicknameController *)self setArchivedNicknames:archivedNicknamesCopy];
    v36[0] = @"handleIDs";
    allKeys = [handledNicknamesCopy allKeys];
    null = allKeys;
    if (!allKeys)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v36[1] = @"__kIMNicknameDidChangeNotificationHandleIDsWithUpdatedNamesUserInfoKey";
    v37[0] = null;
    allObjects = [v14 allObjects];
    null2 = allObjects;
    if (!allObjects)
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    v37[1] = null2;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
    if (!allObjects)
    {
    }

    if (!allKeys)
    {
    }

    v34[0] = @"pendingNicknames";
    null3 = nicknamesCopy;
    if (!nicknamesCopy)
    {
      null3 = [MEMORY[0x1E695DFB0] null];
    }

    v35[0] = null3;
    v34[1] = @"handledNicknames";
    null4 = handledNicknamesCopy;
    if (!handledNicknamesCopy)
    {
      null4 = [MEMORY[0x1E695DFB0] null];
    }

    v35[1] = null4;
    v34[2] = @"archivedNicknames";
    null5 = archivedNicknamesCopy;
    if (!archivedNicknamesCopy)
    {
      null5 = [MEMORY[0x1E695DFB0] null];
    }

    v35[2] = null5;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];
    if (!archivedNicknamesCopy)
    {
    }

    if (!handledNicknamesCopy)
    {
    }

    if (!nicknamesCopy)
    {
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"__kIMNicknameDidChangeNotification" object:0 userInfo:v33];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"__kIMPendingNicknamesDidChangeNotification" object:0 userInfo:v28];

    if ([(IMNicknameController *)self isInitialLoad])
    {
      [(IMNicknameController *)self setIsInitialLoad:0];
      defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter3 postNotificationName:@"__kIMNicknameControllerDidLoadNotification" object:0];
    }
  }

  else if (v12)
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating nicknames", buf, 2u);
    }
  }
}

- (void)updateSharingAllowList:(id)list denyList:(id)denyList
{
  v23 = *MEMORY[0x1E69E9840];
  listCopy = list;
  denyListCopy = denyList;
  _nicknameFeatureEnabled = [(IMNicknameController *)self _nicknameFeatureEnabled];
  v9 = IMOSLoggingEnabled();
  if (_nicknameFeatureEnabled)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v20 = [listCopy count];
        v21 = 2048;
        v22 = [denyListCopy count];
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Got new allow list data, count: %lu, deny list count: %lu", buf, 0x16u);
      }
    }

    [(IMNicknameController *)self setAllowListedHandlesForSharing:listCopy];
    [(IMNicknameController *)self setDenyListedHandlesForSharing:denyListCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    handledNicknames = [(IMNicknameController *)self handledNicknames];
    allKeys = [handledNicknames allKeys];
    null = allKeys;
    if (!allKeys)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v18 = null;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [defaultCenter postNotificationName:@"__kIMNicknameDidChangeNotification" object:0 userInfo:v15];

    if (!allKeys)
    {
    }
  }

  else if (v9)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating allow list", buf, 2u);
    }
  }
}

- (void)updateTransitionedNicknameHandles:(id)handles
{
  v12 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  _nicknameFeatureEnabled = [(IMNicknameController *)self _nicknameFeatureEnabled];
  v6 = IMOSLoggingEnabled();
  if (_nicknameFeatureEnabled)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(handlesCopy, "count")}];
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Got new transitioned list data, count: %@", &v10, 0xCu);
      }
    }

    [(IMNicknameController *)self setTransitionedHandles:handlesCopy];
  }

  else if (v6)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating transitioned handles", &v10, 2u);
    }
  }
}

- (void)updateIsActiveList:(id)list
{
  v16[2] = *MEMORY[0x1E69E9840];
  listCopy = list;
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    v15[0] = @"activeRecords";
    null = listCopy;
    if (!listCopy)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v15[1] = @"previousActiveRecords";
    v16[0] = null;
    activeRecords = [(IMNicknameController *)self activeRecords];
    v7 = [activeRecords copy];
    null2 = v7;
    if (!v7)
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    v16[1] = null2;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    if (!v7)
    {
    }

    if (!listCopy)
    {
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"__kIMActiveNicknamesDidChangeNotification" object:0 userInfo:v9];

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 134217984;
        v14 = [listCopy count];
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Got new active list data, count: %lu", &v13, 0xCu);
      }
    }

    [(IMNicknameController *)self setActiveRecords:listCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating active handles", &v13, 2u);
    }
  }
}

- (void)updateIsIgnoredList:(id)list
{
  v11 = *MEMORY[0x1E69E9840];
  listCopy = list;
  _nicknameFeatureEnabled = [(IMNicknameController *)self _nicknameFeatureEnabled];
  v6 = IMOSLoggingEnabled();
  if (_nicknameFeatureEnabled)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 134217984;
        v10 = [listCopy count];
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Got new ignored list data, count: %lu", &v9, 0xCu);
      }
    }

    [(IMNicknameController *)self setIgnoredRecords:listCopy];
  }

  else if (v6)
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating ignored handles", &v9, 2u);
    }
  }
}

- (void)updateUnknownSenderRecords:(id)records
{
  v11 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  _nicknameFeatureEnabled = [(IMNicknameController *)self _nicknameFeatureEnabled];
  v6 = IMOSLoggingEnabled();
  if (_nicknameFeatureEnabled)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 134217984;
        v10 = [recordsCopy count];
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Got new unknown senders list data, count: %lu", &v9, 0xCu);
      }
    }

    [(IMNicknameController *)self setUnknownSenderRecords:recordsCopy];
  }

  else if (v6)
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating unknown sender records", &v9, 2u);
    }
  }
}

- (id)_handleIDsForHandle:(id)handle
{
  v32 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (handleCopy)
  {
    v5 = [handleCopy ID];
    [v4 addObject:v5];

    v6 = [handleCopy cnContactWithKeys:MEMORY[0x1E695E0F0]];
    v7 = [MEMORY[0x1E69A7FD0] phoneNumbersForCNContact:v6];
    v8 = [MEMORY[0x1E69A7FD0] emailsForCNContact:v6];
    if ([v7 count])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v27;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v27 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = IMCanonicalizeFormattedString();
            [v4 addObject:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v11);
      }
    }

    if ([v8 count])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v15 = v8;
      v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v23;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = IMCanonicalizeFormattedString();
            [v4 addObject:{v20, v22}];
          }

          v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v17);
      }
    }
  }

  return v4;
}

- (void)updatePendingNicknameForHandleIDs:(id)ds
{
  dsCopy = ds;
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    remoteDaemon = [(IMNicknameController *)self remoteDaemon];
    [remoteDaemon clearPendingNicknamePhotoUpdateForHandleIDs:dsCopy];
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_7;
    }

    remoteDaemon = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(remoteDaemon, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, remoteDaemon, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating pending nickname", v6, 2u);
    }
  }

LABEL_7:
}

- (void)setPersonalNicknameFromOnboardingResult:(id)result
{
  v30 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    if ([(IMNicknameController *)self _canUpdatePersonalNickname])
    {
      mEMORY[0x1E69A8108] = [MEMORY[0x1E69A8108] sharedInstance];
      [mEMORY[0x1E69A8108] setSharingEnabled:1];

      mEMORY[0x1E69A8108]2 = [MEMORY[0x1E69A8108] sharedInstance];
      [mEMORY[0x1E69A8108]2 setSharingAudience:{objc_msgSend(resultCopy, "sharingAudience")}];

      didPersistImageToContact = [resultCopy didPersistImageToContact];
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = @"YES";
          if (didPersistImageToContact)
          {
            v9 = @"NO";
          }

          v28 = 138412290;
          v29 = v9;
          _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Nickname photo forked in onboarding: %@", &v28, 0xCu);
        }
      }

      meCardSharingState = [(IMNicknameController *)self meCardSharingState];
      [meCardSharingState setImageForkedFromMeCard:didPersistImageToContact ^ 1u];

      v11 = objc_alloc_init(MEMORY[0x1E695CF18]);
      givenName = [resultCopy givenName];
      v13 = [(IMNicknameController *)self truncateNameIfNeeded:givenName];

      familyName = [resultCopy familyName];
      v15 = [(IMNicknameController *)self truncateNameIfNeeded:familyName];

      [v11 setGivenName:v13];
      [v11 setFamilyName:v15];
      imageData = [resultCopy imageData];
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = @"YES";
          if (!imageData)
          {
            v18 = @"NO";
          }

          v28 = 138412290;
          v29 = v18;
          _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Onboarding result has imageData: %@", &v28, 0xCu);
        }
      }

      if (imageData)
      {
        [resultCopy cropRect];
        v19 = IMCroppedImageDataFromDataWithCropRect();

        [v11 setImageData:v19];
      }

      else
      {
        v19 = 0;
      }

      wallpaper = [resultCopy wallpaper];
      [v11 setWallpaper:wallpaper];

      watchWallpaperImageData = [resultCopy watchWallpaperImageData];
      [v11 setWatchWallpaperImageData:watchWallpaperImageData];

      v25 = [objc_alloc(MEMORY[0x1E69A8190]) initWithMeContact:v11];
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v28 = 138412290;
          v29 = v25;
          _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Setting personal nickname after onboarding to %@", &v28, 0xCu);
        }
      }

      [(IMNicknameController *)self setPersonalNickname:v25];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"__kIMNicknameOnboardingDidFinishNotification" object:0];
    }

    else if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(objc_opt_class(), "multiplePhoneNumbersTiedToAppleID")}];
        v28 = 138412290;
        v29 = v22;
        _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "We can't set the personal nickname after onboarding - multiplePhoneNumbers: %@", &v28, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Nickname feature is disabled, don't set personal nickname after onboarding", &v28, 2u);
    }
  }
}

- (void)updatePersonalNicknameIfNecessaryWithMeCardSharingResult:(id)result
{
  v62 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    if ([(IMNicknameController *)self _canUpdatePersonalNickname])
    {
      meCardSharingState = [(IMNicknameController *)self meCardSharingState];
      nameForkedFromMeCard = [meCardSharingState nameForkedFromMeCard];

      if (nameForkedFromMeCard)
      {
LABEL_22:
        meCardSharingState2 = [(IMNicknameController *)self meCardSharingState];
        imageForkedFromMeCard = [meCardSharingState2 imageForkedFromMeCard];

        didSaveImageToMeCard = [resultCopy didSaveImageToMeCard];
        if (imageForkedFromMeCard == didSaveImageToMeCard)
        {
          if (IMOSLoggingEnabled())
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = @"YES";
              if (didSaveImageToMeCard)
              {
                v24 = @"NO";
              }

              *buf = 138412290;
              v57 = v24;
              _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Nickname photo now forked: %@", buf, 0xCu);
            }
          }

          meCardSharingState3 = [(IMNicknameController *)self meCardSharingState];
          [meCardSharingState3 setImageForkedFromMeCard:didSaveImageToMeCard ^ 1u];
        }

        v26 = objc_alloc_init(MEMORY[0x1E695CF18]);
        givenName = [resultCopy givenName];
        v55 = [(IMNicknameController *)self truncateNameIfNeeded:givenName];

        familyName = [resultCopy familyName];
        v29 = [(IMNicknameController *)self truncateNameIfNeeded:familyName];

        [v26 setGivenName:v55];
        [v26 setFamilyName:v29];
        personalNickname = [(IMNicknameController *)self personalNickname];
        contactImage = [resultCopy contactImage];

        if (contactImage && ([resultCopy contactImage], v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "imageData"), v33 = objc_claimAutoreleasedReturnValue(), v34 = v33 == 0, v33, v32, v34))
        {
          v40 = 0;
          imageData = 0;
          v39 = 1;
        }

        else
        {
          avatar = [(__CFString *)personalNickname avatar];
          imageData = [avatar imageData];

          if (contactImage)
          {
            contactImage2 = [resultCopy contactImage];
            imageData2 = [contactImage2 imageData];

            v39 = 0;
            v40 = 1;
            imageData = imageData2;
          }

          else
          {
            v39 = 0;
            v40 = 0;
          }
        }

        if (IMOSLoggingEnabled())
        {
          v41 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = @"YES";
            if (contactImage)
            {
              v43 = @"YES";
            }

            else
            {
              v43 = @"NO";
            }

            if (v39)
            {
              v44 = @"YES";
            }

            else
            {
              v44 = @"NO";
            }

            *buf = 138412802;
            v57 = v43;
            v58 = 2112;
            v59 = v44;
            if (!v40)
            {
              v42 = @"NO";
            }

            v60 = 2112;
            v61 = v42;
            _os_log_impl(&dword_1A823F000, v41, OS_LOG_TYPE_INFO, "imageUpdated = %@, imageDeleted = %@, shouldCrop = %@", buf, 0x20u);
          }
        }

        if (v40)
        {
          contactImage3 = [resultCopy contactImage];
          [contactImage3 cropRect];
          v46 = IMCroppedImageDataFromDataWithCropRect();

          imageData = v46;
        }

        [v26 setImageData:imageData];
        wallpaper = [resultCopy wallpaper];
        [v26 setWallpaper:wallpaper];

        watchWallpaperImageData = [resultCopy watchWallpaperImageData];
        [v26 setWatchWallpaperImageData:watchWallpaperImageData];

        mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isSwiftUIAvatarRenderingEnabled = [mEMORY[0x1E69A8070] isSwiftUIAvatarRenderingEnabled];

        if (isSwiftUIAvatarRenderingEnabled && (objc_opt_respondsToSelector() & 1) != 0)
        {
          avatarRecipeData = [resultCopy avatarRecipeData];
          [v26 setAvatarRecipeData:avatarRecipeData];
        }

        v52 = [objc_alloc(MEMORY[0x1E69A8190]) initWithMeContact:v26];
        v53 = v52;
        if (!personalNickname || (v39 | [(__CFString *)v52 isUpdateFromNickname:personalNickname withOptions:8]) == 1)
        {
          if (IMOSLoggingEnabled())
          {
            v54 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v57 = personalNickname;
              v58 = 2112;
              v59 = v53;
              _os_log_impl(&dword_1A823F000, v54, OS_LOG_TYPE_INFO, "Updating personal nickname from %@ to %@", buf, 0x16u);
            }
          }

          [(IMNicknameController *)self setPersonalNickname:v53];
        }

        goto LABEL_61;
      }

      contactStore = [(IMNicknameController *)self contactStore];
      keysForNicknameHandling = [MEMORY[0x1E69A7FD0] keysForNicknameHandling];
      v9 = [contactStore fetchMeContactWithKeys:keysForNicknameHandling];

      givenName2 = [v9 givenName];
      givenName3 = [resultCopy givenName];
      if ([givenName2 isEqualToString:givenName3])
      {
        familyName2 = [v9 familyName];
        familyName3 = [resultCopy familyName];
        v14 = [familyName2 isEqualToString:familyName3];

        if (v14)
        {
LABEL_21:

          goto LABEL_22;
        }
      }

      else
      {
      }

      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Nickname name now forked", buf, 2u);
        }
      }

      meCardSharingState4 = [(IMNicknameController *)self meCardSharingState];
      [meCardSharingState4 setNameForkedFromMeCard:1];

      goto LABEL_21;
    }

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(objc_opt_class(), "multiplePhoneNumbersTiedToAppleID")}];
        *buf = 138412290;
        v57 = v17;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "We can't update the personal nickname if necessary - multiplePhoneNumbers: %@", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Nickname feature is disabled, don't update personal nickname with me card sharing result", buf, 2u);
    }
  }

LABEL_61:
}

- (id)truncateNameIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([neededCopy length] < 0xC9)
  {
    v4 = neededCopy;
  }

  else
  {
    v4 = [neededCopy substringToIndex:200];
  }

  v5 = v4;

  return v5;
}

- (id)remoteDaemon
{
  daemonController = [(IMNicknameController *)self daemonController];
  remoteDaemon = [daemonController remoteDaemon];

  return remoteDaemon;
}

- (void)markAllAsPending
{
  if ([(IMNicknameController *)self _nicknameFeatureEnabled])
  {
    remoteDaemon = [(IMNicknameController *)self remoteDaemon];
    [remoteDaemon markAllNicknamesAsPending];
  }

  else if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating all as pending", buf, 2u);
    }
  }
}

@end