@interface SLDFaceTimeService
+ (id)sharedService;
- (SLDFaceTimeService)init;
- (id)_applicationIdentifierForConnection:(id)connection;
- (id)_bundleIdentifierForConnection:(id)connection;
- (void)initiateTUConversationForAttributionIdentifier:(id)identifier videoEnabled:(BOOL)enabled completion:(id)completion;
- (void)refreshShareableContentMetadataInJoinedConversation;
@end

@implementation SLDFaceTimeService

+ (id)sharedService
{
  if (sharedService_onceToken_4 != -1)
  {
    +[SLDFaceTimeService sharedService];
  }

  v3 = sharedService_sService_4;

  return v3;
}

uint64_t __35__SLDFaceTimeService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(SLDFaceTimeService);
  v1 = sharedService_sService_4;
  sharedService_sService_4 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SLDFaceTimeService)init
{
  v6.receiver = self;
  v6.super_class = SLDFaceTimeService;
  v2 = [(SLDFaceTimeService *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)initiateTUConversationForAttributionIdentifier:(id)identifier videoEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  v81 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  IMSPILastAddressedHandleForChatWithGUIDSymbolLoc = IMCoreLibraryCore(0);
  if (IMSPILastAddressedHandleForChatWithGUIDSymbolLoc && (IMSPILastAddressedHandleForChatWithGUIDSymbolLoc = getIMSPILastAddressedHandleForChatWithGUIDSymbolLoc()) != 0 && (IMSPILastAddressedHandleForChatWithGUIDSymbolLoc = IMCoreLibraryCore(0)) != 0 && (IMSPILastAddressedHandleForChatWithGUIDSymbolLoc = getIMSPIResetChatRegistrySymbolLoc()) != 0)
  {
    v52 = [(SLDFaceTimeService *)self _applicationIdentifierForConnection:currentConnection];
    v51 = [[SLInteractionHandler alloc] initWithAppIdentifier:v52];
    v8 = [(SLInteractionHandler *)v51 fetchAttributionForAttributionIdentifier:identifierCopy];
    v9 = SLDaemonLogHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      *buf = 136315650;
      *&buf[4] = "[SLDFaceTimeService initiateTUConversationForAttributionIdentifier:videoEnabled:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = identifierCopy;
      if (enabledCopy)
      {
        v10 = @"YES";
      }

      *&buf[22] = 2112;
      v78 = v10;
      _os_log_impl(&dword_231772000, v9, OS_LOG_TYPE_DEFAULT, "%s: Initiating FaceTime conversation for attribution identifier %@ {videoEnabled: %@}", buf, 0x20u);
    }

    relatedPersons = [v8 relatedPersons];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v78 = __Block_byref_object_copy__10;
    v79 = __Block_byref_object_dispose__10;
    v80 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__SLDFaceTimeService_initiateTUConversationForAttributionIdentifier_videoEnabled_completion___block_invoke;
    block[3] = &unk_278925D18;
    v69 = buf;
    v53 = v8;
    v68 = v53;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    IMSPIResetChatRegistrySymbolLoc = getIMSPIResetChatRegistrySymbolLoc();
    if (!IMSPIResetChatRegistrySymbolLoc)
    {
      v50 = dlerror();
      abort_report_np("%s", v50);
      __break(1u);
    }

    v13 = IMSPIResetChatRegistrySymbolLoc();
    if (*(*&buf[8] + 40))
    {
      v14 = SLDaemonLogHandle(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(*&buf[8] + 40);
        conversationIdentifier = [v53 conversationIdentifier];
        *v71 = 136315650;
        v72 = "[SLDFaceTimeService initiateTUConversationForAttributionIdentifier:videoEnabled:completion:]";
        v73 = 2112;
        v74 = v15;
        v75 = 2112;
        v76 = conversationIdentifier;
        _os_log_impl(&dword_231772000, v14, OS_LOG_TYPE_DEFAULT, "%s: Using last addressed handle: %@ for chat GUID: %@", v71, 0x20u);
      }

      v17 = [MEMORY[0x277D6EEE8] normalizedHandleWithDestinationID:*(*&buf[8] + 40)];
    }

    else
    {
      v19 = SLDaemonLogHandle(v13);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v71 = 136315394;
        v72 = "[SLDFaceTimeService initiateTUConversationForAttributionIdentifier:videoEnabled:completion:]";
        v73 = 2112;
        v74 = identifierCopy;
        _os_log_impl(&dword_231772000, v19, OS_LOG_TYPE_DEFAULT, "%s: Did not receive a last addressed handle string from imagent. This may result in a FaceTime call including the local user. Attribution identifier: %@", v71, 0x16u);
      }

      v17 = 0;
    }

    v59 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(relatedPersons, "count")}];
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = relatedPersons;
    v20 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v20)
    {
      v21 = *v64;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v64 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = MEMORY[0x277D6EEE8];
          handle = [*(*(&v63 + 1) + 8 * i) handle];
          v25 = [v23 normalizedHandleWithDestinationID:handle];

          if (v17 && (v26 = [v25 isEquivalentToHandle:v17], v26))
          {
            v27 = SLDaemonLogHandle(v26);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *v71 = 136315394;
              v72 = "[SLDFaceTimeService initiateTUConversationForAttributionIdentifier:videoEnabled:completion:]";
              v73 = 2112;
              v74 = v25;
              _os_log_impl(&dword_231772000, v27, OS_LOG_TYPE_DEFAULT, "%s: Skipping handle %@ when initiating FaceTime conversation because it matches my last addressed handle.", v71, 0x16u);
            }
          }

          else
          {
            v28 = objc_alloc(MEMORY[0x277D6EEA0]);
            v29 = [MEMORY[0x277CBEB98] setWithObject:v25];
            v27 = [v28 initWithHandles:v29];

            [v59 addObject:v27];
          }
        }

        v20 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v20);
    }

    v30 = [objc_alloc(MEMORY[0x277D6EEF0]) initWithRemoteMembers:v59];
    v31 = v30;
    if (enabledCopy)
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    [v30 setAvMode:v32];
    [v31 setVideoEnabled:enabledCopy];
    [v31 setShouldSuppressInCallUI:1];
    expanseProvider = [MEMORY[0x277D6EEB0] expanseProvider];
    [v31 setProvider:expanseProvider];

    if (enabledCopy)
    {
      [v31 setShouldLaunchBackgroundInCallUI:1];
    }

    if (v17)
    {
      [v31 setCallerID:v17];
    }

    v34 = [v59 count];
    if (v34 < 2 || ([v53 groupID], v35 = objc_claimAutoreleasedReturnValue(), v36 = v35 == 0, v35, v36))
    {
      v42 = SLDaemonLogHandle(v34);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v71 = 136315138;
        v72 = "[SLDFaceTimeService initiateTUConversationForAttributionIdentifier:videoEnabled:completion:]";
        _os_log_impl(&dword_231772000, v42, OS_LOG_TYPE_DEFAULT, "%s: FaceTime conversation being initiated is a 1:1.", v71, 0xCu);
      }

      v41 = [MEMORY[0x277D6EE88] invitationPreferencesForAllHandlesWithStyles:4];
    }

    else
    {
      groupDisplayName = [v53 groupDisplayName];
      v38 = SLDaemonLogHandle(groupDisplayName);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        groupID = [v53 groupID];
        *v71 = 136315650;
        v72 = "[SLDFaceTimeService initiateTUConversationForAttributionIdentifier:videoEnabled:completion:]";
        v73 = 2112;
        v74 = groupID;
        v75 = 2112;
        v76 = groupDisplayName;
        _os_log_impl(&dword_231772000, v38, OS_LOG_TYPE_DEFAULT, "%s: FaceTime conversation being initiated is a group, setting group ID to %@ and messages group name to %@.", v71, 0x20u);
      }

      groupID2 = [v53 groupID];
      [v31 setMessagesGroupUUID:groupID2];

      [v31 setMessagesGroupName:groupDisplayName];
      v41 = [MEMORY[0x277D6EE88] invitationPreferencesForAllHandlesWithStyles:2];
    }

    [v31 setInvitationPreferences:v41];
    v43 = objc_opt_respondsToSelector();
    if (v43)
    {
      collaborationMetadata = [v53 collaborationMetadata];
      collaborationIdentifier = [collaborationMetadata collaborationIdentifier];
      [v31 setCollaborationIdentifier:collaborationIdentifier];
    }

    v46 = SLDaemonLogHandle(v43);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *v71 = 136315394;
      v72 = "[SLDFaceTimeService initiateTUConversationForAttributionIdentifier:videoEnabled:completion:]";
      v73 = 2112;
      v74 = v31;
      _os_log_impl(&dword_231772000, v46, OS_LOG_TYPE_DEFAULT, "%s: FaceTime conversation being initiated using join request %@", v71, 0x16u);
    }

    mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
    queue = [mEMORY[0x277D6EDF8] queue];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __93__SLDFaceTimeService_initiateTUConversationForAttributionIdentifier_videoEnabled_completion___block_invoke_162;
    v60[3] = &unk_2789266B0;
    v61 = v31;
    v62 = completionCopy;
    v49 = v31;
    dispatch_async(queue, v60);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v18 = SLDaemonLogHandle(IMSPILastAddressedHandleForChatWithGUIDSymbolLoc);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SLDFaceTimeService initiateTUConversationForAttributionIdentifier:videoEnabled:completion:];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __93__SLDFaceTimeService_initiateTUConversationForAttributionIdentifier_videoEnabled_completion___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) conversationIdentifier];
  IMSPILastAddressedHandleForChatWithGUIDSymbolLoc = getIMSPILastAddressedHandleForChatWithGUIDSymbolLoc();
  if (IMSPILastAddressedHandleForChatWithGUIDSymbolLoc)
  {
    v3 = IMSPILastAddressedHandleForChatWithGUIDSymbolLoc(v7);

    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    SLDCreateGroupPhotoImageWithGroupID_cold_2();
    __93__SLDFaceTimeService_initiateTUConversationForAttributionIdentifier_videoEnabled_completion___block_invoke_162(v6);
  }
}

uint64_t __93__SLDFaceTimeService_initiateTUConversationForAttributionIdentifier_videoEnabled_completion___block_invoke_162(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 launchAppForJoinRequest:*(a1 + 32)];

  v5 = SLDaemonLogHandle(v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[SLDFaceTimeService initiateTUConversationForAttributionIdentifier:videoEnabled:completion:]_block_invoke";
      _os_log_impl(&dword_231772000, v6, OS_LOG_TYPE_DEFAULT, "%s: FaceTime conversation successfully initiated", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __93__SLDFaceTimeService_initiateTUConversationForAttributionIdentifier_videoEnabled_completion___block_invoke_162_cold_1();
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)refreshShareableContentMetadataInJoinedConversation
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v4 = [(SLDFaceTimeService *)self _bundleIdentifierForConnection:currentConnection];

  if (v4)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__SLDFaceTimeService_refreshShareableContentMetadataInJoinedConversation__block_invoke;
    block[3] = &unk_278925D90;
    v8 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v6 = v8;
  }

  else
  {
    v6 = SLDaemonLogHandle(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SLDFaceTimeService refreshShareableContentMetadataInJoinedConversation];
    }
  }
}

void __73__SLDFaceTimeService_refreshShareableContentMetadataInJoinedConversation__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__SLDFaceTimeService_refreshShareableContentMetadataInJoinedConversation__block_invoke_2;
  v5[3] = &unk_278925CF0;
  v6 = v2;
  v7 = *(a1 + 32);
  v4 = v2;
  dispatch_async(v3, v5);
}

void __73__SLDFaceTimeService_refreshShareableContentMetadataInJoinedConversation__block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) conversationManager];
  v3 = [v2 activeConversations];

  v4 = [v3 objectsPassingTest:&__block_literal_global_165];
  v5 = [v4 anyObject];
  if (v5)
  {
    v6 = objc_opt_respondsToSelector();
    if (v6)
    {
      v7 = [MEMORY[0x277CBEBC0] faceTimeRefreshShareableContentURLForBundleIdentifier:*(a1 + 40)];
      v8 = SLDaemonLogHandle(v7);
      v9 = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v15 = "[SLDFaceTimeService refreshShareableContentMetadataInJoinedConversation]_block_invoke";
          v16 = 2112;
          v17 = v7;
          _os_log_impl(&dword_231772000, v9, OS_LOG_TYPE_DEFAULT, "%s: Opening URL %@.", buf, 0x16u);
        }

        v9 = objc_alloc_init(MEMORY[0x277CC1F00]);
        v12 = *MEMORY[0x277D0ABF0];
        v13 = MEMORY[0x277CBEC38];
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
        [v9 setFrontBoardOptions:v10];

        v11 = [MEMORY[0x277CC1E80] defaultWorkspace];
        [v11 openURL:v7 configuration:v9 completionHandler:0];
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __73__SLDFaceTimeService_refreshShareableContentMetadataInJoinedConversation__block_invoke_2_cold_2();
      }
    }

    else
    {
      v7 = SLDaemonLogHandle(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __73__SLDFaceTimeService_refreshShareableContentMetadataInJoinedConversation__block_invoke_2_cold_1();
      }
    }
  }

  else
  {
    v7 = SLDaemonLogHandle(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __73__SLDFaceTimeService_refreshShareableContentMetadataInJoinedConversation__block_invoke_2_cold_3();
    }
  }
}

BOOL __73__SLDFaceTimeService_refreshShareableContentMetadataInJoinedConversation__block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 state] == 3;
  *a3 = result;
  return result;
}

- (id)_applicationIdentifierForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = connectionCopy;
  v6 = MEMORY[0x277CC1E90];
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  v14 = 0;
  v7 = [v6 bundleRecordForAuditToken:v15 error:&v14];
  v8 = v14;
  applicationIdentifier = [v7 applicationIdentifier];

  if (!applicationIdentifier)
  {
    v11 = SLDaemonLogHandle(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SLDFaceTimeService *)self _applicationIdentifierForConnection:v8, v11];
    }
  }

  applicationIdentifier2 = [v7 applicationIdentifier];

  return applicationIdentifier2;
}

- (id)_bundleIdentifierForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = connectionCopy;
  v6 = MEMORY[0x277CC1E90];
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  v14 = 0;
  v7 = [v6 bundleRecordForAuditToken:v15 error:&v14];
  v8 = v14;
  bundleIdentifier = [v7 bundleIdentifier];

  if (!bundleIdentifier)
  {
    v11 = SLDaemonLogHandle(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SLDFaceTimeService *)self _bundleIdentifierForConnection:v8, v11];
    }
  }

  bundleIdentifier2 = [v7 bundleIdentifier];

  return bundleIdentifier2;
}

void __93__SLDFaceTimeService_initiateTUConversationForAttributionIdentifier_videoEnabled_completion___block_invoke_162_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __73__SLDFaceTimeService_refreshShareableContentMetadataInJoinedConversation__block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_applicationIdentifierForConnection:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_231772000, log, OS_LOG_TYPE_ERROR, "[SLDCollaborationAttributionViewService: %p] Failed to generate a bundle record, or the record's app ID is nil. This is required to look up attribution data. Error: %@", &v3, 0x16u);
}

- (void)_bundleIdentifierForConnection:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138412802;
  v9 = v7;
  v10 = 2048;
  v11 = a1;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&dword_231772000, a3, OS_LOG_TYPE_ERROR, "[%@: %p] Failed to generate a bundle record, or the record's bundle ID is nil. This is required to look up attribution data. Error: %@", &v8, 0x20u);
}

@end