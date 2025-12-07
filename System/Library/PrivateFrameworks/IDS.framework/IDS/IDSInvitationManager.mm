@interface IDSInvitationManager
- (BOOL)validateReceivedInvitation:(id)invitation;
- (IDSInvitationManager)initWithServiceIdentifier:(id)identifier;
- (IDSInvitationManagerDelegate)delegate;
- (NSSet)pendingInvitations;
- (NSSet)receivedInvitations;
- (id)validateStrictDecodingForSentInvitation:(id)invitation;
- (void)acceptInvitation:(id)invitation withContext:(id)context options:(id)options serverAcknowledgedBlock:(id)block;
- (void)cancelInvitation:(id)invitation withContext:(id)context options:(id)options serverAcknowledgedBlock:(id)block;
- (void)declineInvitation:(id)invitation withContext:(id)context options:(id)options serverAcknowledgedBlock:(id)block;
- (void)removePendingInvitation:(id)invitation;
- (void)removeReceivedInvitation:(id)invitation;
- (void)sendInvitationToDestination:(id)destination expirationDate:(id)date context:(id)context options:(id)options serverAcknowledgedBlock:(id)block;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account incomingInvitation:(id)invitation withContext:(id)context;
- (void)service:(id)service account:(id)account incomingInvitationUpdate:(id)update withContext:(id)context;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)setupInvitationsForService:(id)service;
@end

@implementation IDSInvitationManager

- (IDSInvitationManager)initWithServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = IDSInvitationManager;
  v5 = [(IDSInvitationManager *)&v11 init];
  if (v5)
  {
    v6 = +[IDSInternalQueueController sharedInstance];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_195A3A49C;
    v8[3] = &unk_1E743EA30;
    v9 = v5;
    v10 = identifierCopy;
    [v6 performBlock:v8 waitUntilDone:1];
  }

  return v5;
}

- (NSSet)pendingInvitations
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A3A688;
  v8[3] = &unk_1E743E878;
  v8[4] = self;
  [v3 performBlock:v8 waitUntilDone:1];

  v4 = MEMORY[0x1E695DFD8];
  allValues = [(NSMutableDictionary *)self->_pendingInvitations allValues];
  v6 = [v4 setWithArray:allValues];

  return v6;
}

- (NSSet)receivedInvitations
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A3A7E0;
  v8[3] = &unk_1E743E878;
  v8[4] = self;
  [v3 performBlock:v8 waitUntilDone:1];

  v4 = MEMORY[0x1E695DFD8];
  allValues = [(NSMutableDictionary *)self->_receivedInvitations allValues];
  v6 = [v4 setWithArray:allValues];

  return v6;
}

- (void)setupInvitationsForService:(id)service
{
  v66 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  selfCopy = self;
  if (!self->_invitationsLoadedFromDisk)
  {
    v5 = +[IDSDaemonController sharedInstance];
    [v5 blockUntilConnected];

    v6 = +[IDSDaemonController sharedInstance];
    listener = [v6 listener];
    v47 = [listener pendingInvitationsForService:serviceCopy];

    v8 = +[IDSDaemonController sharedInstance];
    listener2 = [v8 listener];
    v46 = [listener2 receivedInvitationsForService:serviceCopy];

    v10 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [v47 allKeys];
      *buf = 138412290;
      v62 = allKeys;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "setupInvitationsForService: Fetched pending invitations from daemon: %@", buf, 0xCu);
    }

    v12 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      allKeys2 = [v46 allKeys];
      *buf = 138412290;
      v62 = allKeys2;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "setupInvitationsForService: Fetched received invitations from daemon: %@", buf, 0xCu);
    }

    v42 = serviceCopy;

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = [v47 allKeys];
    v14 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v57;
      v17 = *MEMORY[0x1E696A508];
      do
      {
        v18 = 0;
        do
        {
          if (*v57 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v56 + 1) + 8 * v18);
          v20 = objc_alloc(MEMORY[0x1E696ACD0]);
          v21 = [v47 objectForKey:v19];
          v55 = 0;
          v22 = [v20 initForReadingFromData:v21 error:&v55];
          v23 = v55;

          [v22 _enableStrictSecureDecodingMode];
          [v22 setDecodingFailurePolicy:0];
          v24 = objc_opt_class();
          v54 = v23;
          v25 = [v22 decodeTopLevelObjectOfClass:v24 forKey:v17 error:&v54];
          v26 = v54;

          if (v26)
          {
            v27 = +[IDSLogging IDSService];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v62 = v19;
              v63 = 2112;
              v64 = v26;
              _os_log_error_impl(&dword_1959FF000, v27, OS_LOG_TYPE_ERROR, "setupInvitationsForService: Failed to unarchive pending invitation {%@} with error {%@}", buf, 0x16u);
            }
          }

          else
          {
            [(NSMutableDictionary *)selfCopy->_pendingInvitations setObject:v25 forKey:v19];
          }

          ++v18;
        }

        while (v15 != v18);
        v15 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v15);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obja = [v46 allKeys];
    v28 = [obja countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v51;
      v31 = *MEMORY[0x1E696A508];
      do
      {
        v32 = 0;
        do
        {
          if (*v51 != v30)
          {
            objc_enumerationMutation(obja);
          }

          v33 = *(*(&v50 + 1) + 8 * v32);
          v34 = objc_alloc(MEMORY[0x1E696ACD0]);
          v35 = [v46 objectForKey:v33];
          v49 = 0;
          v36 = [v34 initForReadingFromData:v35 error:&v49];
          v37 = v49;

          [v36 _enableStrictSecureDecodingMode];
          [v36 setDecodingFailurePolicy:0];
          v38 = objc_opt_class();
          v48 = v37;
          v39 = [v36 decodeTopLevelObjectOfClass:v38 forKey:v31 error:&v48];
          v40 = v48;

          if (v40)
          {
            v41 = +[IDSLogging IDSService];
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v62 = v33;
              v63 = 2112;
              v64 = v40;
              _os_log_error_impl(&dword_1959FF000, v41, OS_LOG_TYPE_ERROR, "setupInvitationsForService: Failed to unarchive received invitation {%@} with error {%@}", buf, 0x16u);
            }
          }

          else
          {
            [(NSMutableDictionary *)selfCopy->_receivedInvitations setObject:v39 forKey:v33];
          }

          ++v32;
        }

        while (v29 != v32);
        v29 = [obja countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v29);
    }

    selfCopy->_invitationsLoadedFromDisk = 1;
    serviceCopy = v42;
  }
}

- (id)validateStrictDecodingForSentInvitation:(id)invitation
{
  v26[2] = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  v24 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:invitationCopy requiringSecureCoding:1 error:&v24];
  v5 = v24;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v23 = 0;
    v7 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v4 error:&v23];
    v8 = v23;
    [v7 _enableStrictSecureDecodingMode];
    [v7 setDecodingFailurePolicy:0];
    v9 = objc_opt_class();
    v10 = *MEMORY[0x1E696A508];
    v22 = v8;
    v11 = [v7 decodeTopLevelObjectOfClass:v9 forKey:v10 error:&v22];
    v6 = v22;

    if (!v6)
    {
      v20 = 0;
      invitationCopy = v11;
      goto LABEL_8;
    }

    invitationCopy = v11;
  }

  v12 = +[IDSLogging IDSService];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_195B29858();
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to validate strict decoding for invitation"];
  v14 = objc_alloc(MEMORY[0x1E696ABC0]);
  v15 = *MEMORY[0x1E696A578];
  v26[0] = v13;
  v16 = *MEMORY[0x1E696AA08];
  v25[0] = v15;
  v25[1] = v16;
  userInfo = [v6 userInfo];
  v18 = [userInfo objectForKey:*MEMORY[0x1E696A278]];
  v26[1] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v20 = [v14 initWithDomain:@"com.apple.identityservices.error" code:55 userInfo:v19];

LABEL_8:

  return v20;
}

- (void)sendInvitationToDestination:(id)destination expirationDate:(id)date context:(id)context options:(id)options serverAcknowledgedBlock:(id)block
{
  v67 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  dateCopy = date;
  contextCopy = context;
  optionsCopy = options;
  blockCopy = block;
  v14 = +[IDSDaemonController sharedInstance];
  [v14 blockUntilConnected];

  v15 = [[IDSSentInvitation alloc] initWithDestination:destinationCopy state:1 expirationDate:dateCopy uniqueID:0 context:contextCopy];
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_195A006D4;
  v61 = sub_195A03D10;
  v62 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = sub_195A006D4;
  v55[4] = sub_195A03D10;
  uniqueID = [(IDSInvitation *)v15 uniqueID];
  uUIDString = [uniqueID UUIDString];

  if (optionsCopy)
  {
    v17 = [optionsCopy mutableCopy];
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  uniqueID2 = [(IDSInvitation *)v15 uniqueID];
  uUIDString2 = [uniqueID2 UUIDString];
  v20 = IDSGetUUIDData();
  [v17 setValue:v20 forKey:@"IDSSendMessageOptionUUID"];

  [v17 setValue:&unk_1F0A29870 forKey:@"IDSSendMessageOptionCommand"];
  v21 = [(IDSInvitationManager *)self validateStrictDecodingForSentInvitation:v15];
  if (!v21)
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = -86;
    v23 = +[IDSInternalQueueController sharedInstance];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = sub_195A3B65C;
    v40[3] = &unk_1E743F7F8;
    v45 = v55;
    v24 = blockCopy;
    v44 = v24;
    v40[4] = self;
    v46 = &v48;
    v25 = v15;
    v41 = v25;
    v42 = destinationCopy;
    v43 = v17;
    v47 = &v57;
    [v23 performBlock:v40 waitUntilDone:1];

    v26 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v49 + 24))
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      v28 = v58[5];
      *buf = 138412546;
      v64 = v27;
      v65 = 2112;
      v66 = v28;
      _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "sendInvitationToDestination: received %@ from IDSService with error {%@}", buf, 0x16u);
    }

    if (*(v49 + 24) == 1)
    {
      pendingInvitations = self->_pendingInvitations;
      uniqueID3 = [(IDSInvitation *)v25 uniqueID];
      uUIDString3 = [uniqueID3 UUIDString];
      [(NSMutableDictionary *)pendingInvitations setObject:v25 forKey:uUIDString3];
    }

    else
    {
      v32 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_195B298C8();
      }

      if (!v24)
      {
        goto LABEL_19;
      }

      delegateQueue = self->_delegateQueue;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = sub_195A3B774;
      v37[3] = &unk_1E743F820;
      v38 = v24;
      v39 = &v57;
      dispatch_async(delegateQueue, v37);
      uniqueID3 = v38;
    }

LABEL_19:
    _Block_object_dispose(&v48, 8);
    goto LABEL_20;
  }

  if (blockCopy)
  {
    v22 = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A3B644;
    block[3] = &unk_1E743F110;
    v54 = blockCopy;
    v53 = v21;
    dispatch_async(v22, block);
  }

LABEL_20:

  _Block_object_dispose(v55, 8);
  _Block_object_dispose(&v57, 8);
}

- (void)cancelInvitation:(id)invitation withContext:(id)context options:(id)options serverAcknowledgedBlock:(id)block
{
  v56 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  contextCopy = context;
  optionsCopy = options;
  blockCopy = block;
  v14 = +[IDSDaemonController sharedInstance];
  [v14 blockUntilConnected];

  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_195A006D4;
  v50 = sub_195A03D10;
  v51 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = sub_195A006D4;
  v44[4] = sub_195A03D10;
  uniqueID = [invitationCopy uniqueID];
  uUIDString = [uniqueID UUIDString];

  if (optionsCopy)
  {
    v16 = [optionsCopy mutableCopy];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  uniqueID2 = [invitationCopy uniqueID];
  uUIDString2 = [uniqueID2 UUIDString];
  v19 = IDSGetUUIDData();
  [v16 setValue:v19 forKey:@"IDSSendMessageOptionUUID"];

  [v16 setValue:&unk_1F0A29888 forKey:@"IDSSendMessageOptionCommand"];
  [invitationCopy setState:3];
  context = contextCopy;
  if (!contextCopy)
  {
    context = [invitationCopy context];
  }

  [invitationCopy setContext:context];
  if (!contextCopy)
  {
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = -86;
  v21 = +[IDSInternalQueueController sharedInstance];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_195A3BC68;
  v33[3] = &unk_1E743F848;
  v37 = v44;
  v22 = blockCopy;
  v36 = v22;
  v33[4] = self;
  v38 = &v40;
  v23 = invitationCopy;
  v34 = v23;
  v24 = v16;
  v35 = v24;
  v39 = &v46;
  [v21 performBlock:v33 waitUntilDone:1];

  v25 = +[IDSLogging IDSService];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v41 + 24))
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    v27 = v47[5];
    *buf = 138412546;
    v53 = v26;
    v54 = 2112;
    v55 = v27;
    _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "cancelInvitation: received %@ from IDSService with error {%@}", buf, 0x16u);
  }

  if ((v41[3] & 1) == 0)
  {
    v28 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_195B29938();
    }

    if (v22)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195A3BDB0;
      block[3] = &unk_1E743F820;
      v31 = v22;
      v32 = &v46;
      dispatch_async(delegateQueue, block);
    }
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(v44, 8);

  _Block_object_dispose(&v46, 8);
}

- (void)acceptInvitation:(id)invitation withContext:(id)context options:(id)options serverAcknowledgedBlock:(id)block
{
  v60 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  contextCopy = context;
  optionsCopy = options;
  blockCopy = block;
  v14 = +[IDSDaemonController sharedInstance];
  [v14 blockUntilConnected];

  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_195A006D4;
  v54 = sub_195A03D10;
  v55 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = sub_195A006D4;
  v48[4] = sub_195A03D10;
  uniqueID = [invitationCopy uniqueID];
  uUIDString = [uniqueID UUIDString];

  if (optionsCopy)
  {
    v16 = [optionsCopy mutableCopy];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  uniqueID2 = [invitationCopy uniqueID];
  uUIDString2 = [uniqueID2 UUIDString];
  v19 = IDSGetUUIDData();
  [v16 setValue:v19 forKey:@"IDSSendMessageOptionUUID"];

  [v16 setValue:&unk_1F0A298A0 forKey:@"IDSSendMessageOptionCommand"];
  [invitationCopy setState:4];
  [invitationCopy setContext:contextCopy];
  v20 = MEMORY[0x1E69A5240];
  fromID = [invitationCopy fromID];
  v22 = [v20 destinationWithURI:fromID];

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = -86;
  v23 = +[IDSInternalQueueController sharedInstance];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = sub_195A3C2BC;
  v36[3] = &unk_1E743F7F8;
  v41 = v48;
  v24 = blockCopy;
  v40 = v24;
  v36[4] = self;
  v42 = &v44;
  v25 = invitationCopy;
  v37 = v25;
  v26 = v22;
  v38 = v26;
  v27 = v16;
  v39 = v27;
  v43 = &v50;
  [v23 performBlock:v36 waitUntilDone:1];

  v28 = +[IDSLogging IDSService];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v45 + 24))
    {
      v29 = @"YES";
    }

    else
    {
      v29 = @"NO";
    }

    v30 = v51[5];
    *buf = 138412546;
    v57 = v29;
    v58 = 2112;
    v59 = v30;
    _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_DEFAULT, "acceptInvitation: received %@ from IDSService with error {%@}", buf, 0x16u);
  }

  if ((v45[3] & 1) == 0)
  {
    v31 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_195B299A8();
    }

    if (v24)
    {
      delegateQueue = self->_delegateQueue;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = sub_195A3C3DC;
      v33[3] = &unk_1E743F820;
      v34 = v24;
      v35 = &v50;
      dispatch_async(delegateQueue, v33);
    }
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(v48, 8);

  _Block_object_dispose(&v50, 8);
}

- (void)declineInvitation:(id)invitation withContext:(id)context options:(id)options serverAcknowledgedBlock:(id)block
{
  v61 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  contextCopy = context;
  optionsCopy = options;
  blockCopy = block;
  v14 = +[IDSDaemonController sharedInstance];
  [v14 blockUntilConnected];

  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_195A006D4;
  v55 = sub_195A03D10;
  v56 = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = sub_195A006D4;
  v49[4] = sub_195A03D10;
  uniqueID = [invitationCopy uniqueID];
  uUIDString = [uniqueID UUIDString];

  if (optionsCopy)
  {
    v16 = [optionsCopy mutableCopy];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  uniqueID2 = [invitationCopy uniqueID];
  uUIDString2 = [uniqueID2 UUIDString];
  v19 = IDSGetUUIDData();
  [v16 setValue:v19 forKey:@"IDSSendMessageOptionUUID"];

  [v16 setValue:&unk_1F0A298B8 forKey:@"IDSSendMessageOptionCommand"];
  [invitationCopy setState:5];
  context = contextCopy;
  if (!contextCopy)
  {
    context = [invitationCopy context];
  }

  [invitationCopy setContext:context];
  if (!contextCopy)
  {
  }

  v21 = MEMORY[0x1E69A5240];
  fromID = [invitationCopy fromID];
  v23 = [v21 destinationWithURI:fromID];

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = -86;
  v24 = +[IDSInternalQueueController sharedInstance];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_195A3C924;
  v37[3] = &unk_1E743F7F8;
  v42 = v49;
  v25 = blockCopy;
  v41 = v25;
  v37[4] = self;
  v43 = &v45;
  v26 = invitationCopy;
  v38 = v26;
  v27 = v23;
  v39 = v27;
  v28 = v16;
  v40 = v28;
  v44 = &v51;
  [v24 performBlock:v37 waitUntilDone:1];

  v29 = +[IDSLogging IDSService];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v46 + 24))
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    v31 = v52[5];
    *buf = 138412546;
    v58 = v30;
    v59 = 2112;
    v60 = v31;
    _os_log_impl(&dword_1959FF000, v29, OS_LOG_TYPE_DEFAULT, "declineInvitation: received %@ from IDSService with error {%@}", buf, 0x16u);
  }

  if ((v46[3] & 1) == 0)
  {
    v32 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_195B29A18();
    }

    if (v25)
    {
      delegateQueue = self->_delegateQueue;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = sub_195A3CA44;
      v34[3] = &unk_1E743F820;
      v35 = v25;
      v36 = &v51;
      dispatch_async(delegateQueue, v34);
    }
  }

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(v49, 8);

  _Block_object_dispose(&v51, 8);
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  objc_storeWeak(&self->_delegate, delegate);
  if (queueCopy)
  {
    objc_storeStrong(&self->_delegateQueue, queue);
  }

  v8 = +[IDSDaemonController sharedInstance];
  [v8 blockUntilConnected];

  v9 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A3CB48;
  v10[3] = &unk_1E743E878;
  v10[4] = self;
  [v9 performBlock:v10 waitUntilDone:1];
}

- (BOOL)validateReceivedInvitation:(id)invitation
{
  v35 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  v5 = +[IDSInternalQueueController sharedInstance];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_195A3CF4C;
  v30[3] = &unk_1E743E878;
  v30[4] = self;
  [v5 performBlock:v30 waitUntilDone:1];

  if (!invitationCopy)
  {
    v16 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_195B29D08();
    }

    goto LABEL_27;
  }

  expirationDate = [invitationCopy expirationDate];
  if (expirationDate)
  {
    v7 = expirationDate;
    expirationDate2 = [invitationCopy expirationDate];
    date = [MEMORY[0x1E695DF00] date];
    v10 = [expirationDate2 compare:date];

    if (v10 == -1)
    {
      v16 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_195B29A88(invitationCopy);
      }

      goto LABEL_27;
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = 32;
  if (isKindOfClass)
  {
    v12 = 24;
  }

  v13 = *(&self->super.isa + v12);
  uniqueID = [invitationCopy uniqueID];
  uUIDString = [uniqueID UUIDString];
  v16 = [v13 objectForKey:uUIDString];

  if ([invitationCopy state] != 1)
  {
    if (!v16)
    {
      v21 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_195B29C64(invitationCopy);
      }

      goto LABEL_26;
    }

    if (_os_feature_enabled_impl())
    {
      senderMergeID = [v16 senderMergeID];

      if (senderMergeID)
      {
        senderMergeID2 = [v16 senderMergeID];
        senderMergeID3 = [invitationCopy senderMergeID];
        v20 = [senderMergeID2 isEqualToString:senderMergeID3];

        if ((v20 & 1) == 0)
        {
          v21 = +[IDSLogging IDSService];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_195B29B14(invitationCopy);
          }

LABEL_26:

LABEL_27:
          v28 = 0;
          goto LABEL_28;
        }
      }

      else
      {
        v22 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          senderMergeID4 = [v16 senderMergeID];
          senderMergeID5 = [invitationCopy senderMergeID];
          *buf = 138412546;
          v32 = senderMergeID4;
          v33 = 2112;
          v34 = senderMergeID5;
          _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "Validating Invitation: Stored invitation's sender mergeId {%@} is invalid. Could not compare to received invitation's sender mergeId {%@}", buf, 0x16u);
        }
      }
    }

    uniqueID2 = [invitationCopy uniqueID];
    uniqueID3 = [v16 uniqueID];
    v27 = [uniqueID2 isEqual:uniqueID3];

    if ((v27 & 1) == 0)
    {
      v21 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_195B29BBC(invitationCopy);
      }

      goto LABEL_26;
    }
  }

  v28 = 1;
LABEL_28:

  return v28;
}

- (void)service:(id)service account:(id)account incomingInvitation:(id)invitation withContext:(id)context
{
  v51 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  v8 = +[IDSDaemonController sharedInstance];
  [v8 blockUntilConnected];

  if ([(IDSInvitationManager *)self validateReceivedInvitation:invitationCopy])
  {
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:invitationCopy requiringSecureCoding:1 error:0];
    state = [invitationCopy state];
    if (state == 3)
    {
      v30 = +[IDSDaemonController sharedInstance];
      uniqueID = [invitationCopy uniqueID];
      uUIDString = [uniqueID UUIDString];
      v46 = uUIDString;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      accounts = [(IDSService *)self->_internal accounts];
      anyObject = [accounts anyObject];
      serviceName = [anyObject serviceName];
      [v30 removeReceivedInvitation:v33 forService:serviceName];

      receivedInvitations = self->_receivedInvitations;
      uniqueID2 = [invitationCopy uniqueID];
      uUIDString2 = [uniqueID2 UUIDString];
      [(NSMutableDictionary *)receivedInvitations removeObjectForKey:uUIDString2];

      delegate = [(IDSInvitationManager *)self delegate];
      if (!delegate || (v41 = delegate, [(IDSInvitationManager *)self delegate], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_opt_respondsToSelector(), v42, v41, (v43 & 1) == 0))
      {
        v25 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_195B29D44();
        }

        goto LABEL_19;
      }

      delegate2 = [(IDSInvitationManager *)self delegate];
      [delegate2 manager:self senderDidCancelInvitation:invitationCopy];

      v25 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        state2 = [invitationCopy state];
        uniqueID3 = [invitationCopy uniqueID];
        uUIDString3 = [uniqueID3 UUIDString];
        *buf = 134218242;
        v48 = state2;
        v49 = 2112;
        v50 = uUIDString3;
        v29 = "IncomingInvitation: Invitation state %ld. Delivered {%@} to delegate senderDidCancelInvitation";
        goto LABEL_12;
      }
    }

    else
    {
      if (state != 1)
      {
        v25 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_195B29DBC(invitationCopy);
        }

        goto LABEL_19;
      }

      v11 = +[IDSDaemonController sharedInstance];
      accounts2 = [(IDSService *)self->_internal accounts];
      anyObject2 = [accounts2 anyObject];
      serviceName2 = [anyObject2 serviceName];
      uniqueID4 = [invitationCopy uniqueID];
      uUIDString4 = [uniqueID4 UUIDString];
      [v11 persistReceivedInvitation:v9 forService:serviceName2 withUniqueID:uUIDString4];

      v17 = self->_receivedInvitations;
      uniqueID5 = [invitationCopy uniqueID];
      uUIDString5 = [uniqueID5 UUIDString];
      [(NSMutableDictionary *)v17 setObject:invitationCopy forKey:uUIDString5];

      delegate3 = [(IDSInvitationManager *)self delegate];
      if (!delegate3 || (v21 = delegate3, [(IDSInvitationManager *)self delegate], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_opt_respondsToSelector(), v22, v21, (v23 & 1) == 0))
      {
        v25 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_195B29D80();
        }

        goto LABEL_19;
      }

      delegate4 = [(IDSInvitationManager *)self delegate];
      [delegate4 manager:self incomingInvitation:invitationCopy];

      v25 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        state3 = [invitationCopy state];
        uniqueID3 = [invitationCopy uniqueID];
        uUIDString3 = [uniqueID3 UUIDString];
        *buf = 134218242;
        v48 = state3;
        v49 = 2112;
        v50 = uUIDString3;
        v29 = "IncomingInvitation: Invitation state %ld. Delivered {%@} to delegate incomingInvitation";
LABEL_12:
        _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
      }
    }

LABEL_19:
  }
}

- (void)service:(id)service account:(id)account incomingInvitationUpdate:(id)update withContext:(id)context
{
  v51[1] = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v8 = +[IDSDaemonController sharedInstance];
  [v8 blockUntilConnected];

  if ([(IDSInvitationManager *)self validateReceivedInvitation:updateCopy])
  {
    state = [updateCopy state];
    if (state == 5)
    {
      v30 = +[IDSDaemonController sharedInstance];
      uniqueID = [updateCopy uniqueID];
      uUIDString = [uniqueID UUIDString];
      v46 = uUIDString;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      accounts = [(IDSService *)self->_internal accounts];
      anyObject = [accounts anyObject];
      serviceName = [anyObject serviceName];
      [v30 removePendingInvitation:v33 forService:serviceName];

      pendingInvitations = self->_pendingInvitations;
      uniqueID2 = [updateCopy uniqueID];
      uUIDString2 = [uniqueID2 UUIDString];
      [(NSMutableDictionary *)pendingInvitations removeObjectForKey:uUIDString2];

      delegate = [(IDSInvitationManager *)self delegate];
      if (!delegate || (v41 = delegate, [(IDSInvitationManager *)self delegate], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_opt_respondsToSelector(), v42, v41, (v43 & 1) == 0))
      {
        v25 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_195B29E6C();
        }

        goto LABEL_19;
      }

      delegate2 = [(IDSInvitationManager *)self delegate];
      [delegate2 manager:self receiverDidDeclineInvitation:updateCopy];

      v25 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        state2 = [updateCopy state];
        uniqueID3 = [updateCopy uniqueID];
        uUIDString3 = [uniqueID3 UUIDString];
        *buf = 134218242;
        v48 = state2;
        v49 = 2112;
        v50 = uUIDString3;
        v29 = "IncomingInvitationUpdate: Invitation state %ld. Delivered {%@} to delegate receiverDidDeclineInvitation";
        goto LABEL_12;
      }
    }

    else
    {
      if (state != 4)
      {
        v25 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_195B29EE4(updateCopy);
        }

        goto LABEL_19;
      }

      v10 = +[IDSDaemonController sharedInstance];
      uniqueID4 = [updateCopy uniqueID];
      uUIDString4 = [uniqueID4 UUIDString];
      v51[0] = uUIDString4;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
      accounts2 = [(IDSService *)self->_internal accounts];
      anyObject2 = [accounts2 anyObject];
      serviceName2 = [anyObject2 serviceName];
      [v10 removePendingInvitation:v13 forService:serviceName2];

      v17 = self->_pendingInvitations;
      uniqueID5 = [updateCopy uniqueID];
      uUIDString5 = [uniqueID5 UUIDString];
      [(NSMutableDictionary *)v17 removeObjectForKey:uUIDString5];

      delegate3 = [(IDSInvitationManager *)self delegate];
      if (!delegate3 || (v21 = delegate3, [(IDSInvitationManager *)self delegate], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_opt_respondsToSelector(), v22, v21, (v23 & 1) == 0))
      {
        v25 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_195B29EA8();
        }

        goto LABEL_19;
      }

      delegate4 = [(IDSInvitationManager *)self delegate];
      [delegate4 manager:self receiverDidAcceptInvitation:updateCopy];

      v25 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        state3 = [updateCopy state];
        uniqueID3 = [updateCopy uniqueID];
        uUIDString3 = [uniqueID3 UUIDString];
        *buf = 134218242;
        v48 = state3;
        v49 = 2112;
        v50 = uUIDString3;
        v29 = "IncomingInvitationUpdate: Invitation state %ld. Delivered {%@} to delegate receiverDidAcceptInvitation";
LABEL_12:
        _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
      }
    }

LABEL_19:
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  v89 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  contextCopy = context;
  v15 = +[IDSDaemonController sharedInstance];
  [v15 blockUntilConnected];

  v16 = +[IDSLogging IDSService];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    *buf = 138412802;
    *&buf[4] = identifierCopy;
    *&buf[12] = 2112;
    if (successCopy)
    {
      v17 = @"YES";
    }

    *&buf[14] = v17;
    *&buf[22] = 2112;
    v86 = errorCopy;
    _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "InvitationManager didSendWithSuccess: Identifier {%@}. didSendWithSuccess {%@} with error %@", buf, 0x20u);
  }

  v18 = [(NSMutableDictionary *)self->_pendingInvitations objectForKey:identifierCopy];
  if (v18 || ([(NSMutableDictionary *)self->_receivedInvitations objectForKey:identifierCopy], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v86 = sub_195A3E220;
    v87 = sub_195A3E24C;
    v88 = 0;
    v73 = 0;
    v74 = &v73;
    v75 = 0x3032000000;
    v76 = sub_195A3E220;
    v77 = sub_195A3E24C;
    v78 = 0;
    v19 = +[IDSInternalQueueController sharedInstance];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = sub_195A3E254;
    v69[3] = &unk_1E743F870;
    v71 = buf;
    v69[4] = self;
    v57 = identifierCopy;
    v70 = v57;
    v72 = &v73;
    [v19 performBlock:v69 waitUntilDone:1];

    if ([v18 state]== 1)
    {
      if (errorCopy)
      {
        [(NSMutableDictionary *)self->_pendingInvitations removeObjectForKey:v57];
      }

      else
      {
        destinationCorrelationIdentifier = [contextCopy destinationCorrelationIdentifier];
        [v18 setSenderMergeID:destinationCorrelationIdentifier];

        fromID = [contextCopy fromID];
        _stripFZIDPrefix = [fromID _stripFZIDPrefix];
        _bestGuessURI = [_stripFZIDPrefix _bestGuessURI];
        [v18 setSelfHandle:_bestGuessURI];

        v35 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v18 requiringSecureCoding:1 error:0];
        v36 = +[IDSDaemonController sharedInstance];
        accounts = [(IDSService *)self->_internal accounts];
        anyObject = [accounts anyObject];
        serviceName = [anyObject serviceName];
        uniqueID = [v18 uniqueID];
        uUIDString = [uniqueID UUIDString];
        [v36 persistPendingInvitation:v35 forService:serviceName withUniqueID:uUIDString];
      }

      if (*(*&buf[8] + 40))
      {
        v42 = +[IDSLogging IDSService];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          state = [v18 state];
          *v81 = 138412546;
          v82 = v57;
          v83 = 2048;
          v84 = state;
          _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "InvitationManager didSendWithSuccess: Calling block for invitation with identifier {%@} and state {%ld}", v81, 0x16u);
        }

        delegateQueue = self->_delegateQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_195A3E2F8;
        block[3] = &unk_1E743EF60;
        v66 = errorCopy;
        v68 = buf;
        v67 = v18;
        dispatch_async(delegateQueue, block);

        v45 = v66;
        goto LABEL_32;
      }

      v45 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *v81 = 138412290;
        v82 = v57;
LABEL_31:
        _os_log_impl(&dword_1959FF000, v45, OS_LOG_TYPE_DEFAULT, "InvitationManager didSendWithSuccess: No invitation ack block found with identifier {%@}", v81, 0xCu);
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    if (!errorCopy)
    {
      state2 = [v18 state];
      if ((state2 - 4) >= 2)
      {
        if (state2 != 3)
        {
          goto LABEL_25;
        }

        v46 = +[IDSDaemonController sharedInstance];
        uniqueID2 = [v18 uniqueID];
        uUIDString2 = [uniqueID2 UUIDString];
        v80 = uUIDString2;
        v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
        accounts2 = [(IDSService *)self->_internal accounts];
        anyObject2 = [accounts2 anyObject];
        serviceName2 = [anyObject2 serviceName];
        [v46 removePendingInvitation:v49 forService:serviceName2];

        pendingInvitations = self->_pendingInvitations;
        uniqueID3 = [v18 uniqueID];
        uUIDString3 = [uniqueID3 UUIDString];
        [(NSMutableDictionary *)pendingInvitations removeObjectForKey:uUIDString3];
      }

      else
      {
        v21 = +[IDSDaemonController sharedInstance];
        uniqueID4 = [v18 uniqueID];
        uUIDString4 = [uniqueID4 UUIDString];
        v79 = uUIDString4;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
        accounts3 = [(IDSService *)self->_internal accounts];
        anyObject3 = [accounts3 anyObject];
        serviceName3 = [anyObject3 serviceName];
        [v21 removeReceivedInvitation:v24 forService:serviceName3];

        receivedInvitations = self->_receivedInvitations;
        uniqueID3 = [v18 uniqueID];
        uUIDString3 = [uniqueID3 UUIDString];
        [(NSMutableDictionary *)receivedInvitations removeObjectForKey:uUIDString3];
      }
    }

LABEL_25:
    if (v74[5])
    {
      v54 = +[IDSLogging IDSService];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        state3 = [v18 state];
        *v81 = 138412546;
        v82 = v57;
        v83 = 2048;
        v84 = state3;
        _os_log_impl(&dword_1959FF000, v54, OS_LOG_TYPE_DEFAULT, "InvitationManager didSendWithSuccess: Calling block for invitation with identifier {%@} and state {%ld}", v81, 0x16u);
      }

      v56 = self->_delegateQueue;
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = sub_195A3E32C;
      v62[3] = &unk_1E743E670;
      v64 = &v73;
      v63 = errorCopy;
      dispatch_async(v56, v62);
      v45 = v63;
      goto LABEL_32;
    }

    v45 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *v81 = 138412290;
      v82 = v57;
      goto LABEL_31;
    }

LABEL_32:

    _Block_object_dispose(&v73, 8);
    _Block_object_dispose(buf, 8);

    goto LABEL_33;
  }

  v18 = +[IDSLogging IDSService];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_195B29F94();
  }

LABEL_33:
}

- (void)removePendingInvitation:(id)invitation
{
  invitationCopy = invitation;
  v4 = +[IDSDaemonController sharedInstance];
  [v4 blockUntilConnected];

  v5 = +[IDSDaemonController sharedInstance];
  accounts = [(IDSService *)self->_internal accounts];
  anyObject = [accounts anyObject];
  serviceName = [anyObject serviceName];
  [v5 removePendingInvitation:invitationCopy forService:serviceName];

  [(NSMutableDictionary *)self->_pendingInvitations removeObjectsForKeys:invitationCopy];
}

- (void)removeReceivedInvitation:(id)invitation
{
  invitationCopy = invitation;
  v4 = +[IDSDaemonController sharedInstance];
  [v4 blockUntilConnected];

  v5 = +[IDSDaemonController sharedInstance];
  accounts = [(IDSService *)self->_internal accounts];
  anyObject = [accounts anyObject];
  serviceName = [anyObject serviceName];
  [v5 removeReceivedInvitation:invitationCopy forService:serviceName];

  [(NSMutableDictionary *)self->_receivedInvitations removeObjectsForKeys:invitationCopy];
}

- (IDSInvitationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end