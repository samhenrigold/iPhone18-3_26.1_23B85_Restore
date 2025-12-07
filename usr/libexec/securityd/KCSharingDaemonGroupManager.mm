@interface KCSharingDaemonGroupManager
+ (KCSharingDaemonGroupManager)sharedInstance;
- (KCSharingDaemonGroupManager)initWithSyncController:(id)controller messagingdConnection:(id)connection;
- (KCSharingXPCListenerDelegate)xpcListenerDelegate;
- (id)fetchLocalShareForGroupID:(id)d;
- (id)translateSyncErrorForGroupRequest:(id)request zoneID:(id)d;
- (void)acceptGroupInvite:(id)invite completion:(id)completion;
- (void)acceptGroupInvite:(id)invite startTime:(unint64_t)time completion:(id)completion;
- (void)acceptInviteForGroupID:(id)d completion:(id)completion;
- (void)checkAvailabilityForHandles:(id)handles completion:(id)completion;
- (void)declineGroupInvite:(id)invite startTime:(unint64_t)time completion:(id)completion;
- (void)declineInviteForGroupID:(id)d completion:(id)completion;
- (void)fetchAndUpdateParticipantsForGroup:(id)group share:(id)share isCreateOperation:(BOOL)operation startTime:(unint64_t)time completion:(id)completion;
- (void)fetchCKShareMetadataForGroupInvites:(id)invites completion:(id)completion;
- (void)fetchReceivedPendingGroupsExcludingGroupIDs:(id)ds completion:(id)completion;
- (void)fetchShareParticipantsForParticipants:(id)participants completion:(id)completion;
- (void)getGroupByGroupID:(id)d completion:(id)completion;
- (void)handleGroupCreateRequest:(id)request completion:(id)completion;
- (void)handleGroupDeleteRequest:(id)request completion:(id)completion;
- (void)handleGroupFetchRequest:(id)request completion:(id)completion;
- (void)handleGroupLeaveRequest:(id)request completion:(id)completion;
- (void)handleGroupUpdateRequest:(id)request completion:(id)completion;
- (void)sendGroupsUpdatedNotifications;
@end

@implementation KCSharingDaemonGroupManager

- (KCSharingXPCListenerDelegate)xpcListenerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcListenerDelegate);

  return WeakRetained;
}

- (void)fetchShareParticipantsForParticipants:(id)participants completion:(id)completion
{
  participantsCopy = participants;
  completionCopy = completion;
  v40 = participantsCopy;
  if (completionCopy)
  {
    v39 = completionCopy;
    if (participantsCopy && [participantsCopy count])
    {
      v42 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [participantsCopy count]);
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v8 = participantsCopy;
      v9 = [v8 countByEnumeratingWithState:&v59 objects:v69 count:16];
      if (v9)
      {
        v10 = *v60;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v60 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v59 + 1) + 8 * i);
            handle = [v12 handle];
            v14 = handle == 0;

            if (v14)
            {
              handle2 = KCSharingLogObject();
              if (os_log_type_enabled(handle2, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138477827;
                *(&buf + 4) = v12;
                _os_log_error_impl(&_mh_execute_header, handle2, OS_LOG_TYPE_ERROR, "Skipping participant without handle. This is a bug! %{private}@", &buf, 0xCu);
              }
            }

            else
            {
              handle2 = [v12 handle];
              [v42 setObject:v12 forKeyedSubscript:handle2];
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v59 objects:v69 count:16];
        }

        while (v9);
      }

      v41 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v16 = v8;
      v17 = [v16 countByEnumeratingWithState:&v55 objects:v68 count:16];
      if (v17)
      {
        v18 = *v56;
        do
        {
          for (j = 0; j != v17; j = j + 1)
          {
            if (*v56 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v55 + 1) + 8 * j);
            if (([v20 isCurrentUser] & 1) == 0)
            {
              handle3 = [v20 handle];
              if (objc_opt_respondsToSelector())
              {
                _appearsToBeEmail = [handle3 _appearsToBeEmail];

                if (_appearsToBeEmail)
                {
                  v23 = [CKUserIdentityLookupInfo alloc];
                  handle4 = [v20 handle];
                  v25 = [v23 initWithEmailAddress:handle4];
                  [v41 addObject:v25];

LABEL_35:
                  continue;
                }
              }

              else
              {
                v26 = KCSharingLogObject();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buf) = 0;
                  _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "IMFoundation not linked correctly. Returning NO from KCSharingHandleIsEmail", &buf, 2u);
                }
              }

              handle5 = [v20 handle];
              if (objc_opt_respondsToSelector())
              {
                _appearsToBePhoneNumber = [handle5 _appearsToBePhoneNumber];

                if (_appearsToBePhoneNumber)
                {
                  v29 = [CKUserIdentityLookupInfo alloc];
                  handle4 = [v20 handle];
                  v30 = [v29 initWithPhoneNumber:handle4];
                  [v41 addObject:v30];

                  goto LABEL_35;
                }
              }

              else
              {
                v31 = KCSharingLogObject();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buf) = 0;
                  _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "IMFoundation not linked correctly. Returning NO from KCSharingHandleIsPhoneNumber", &buf, 2u);
                }
              }

              handle4 = KCSharingLogObject();
              if (os_log_type_enabled(handle4, OS_LOG_TYPE_ERROR))
              {
                handle6 = [v20 handle];
                LODWORD(buf) = 138477827;
                *(&buf + 4) = handle6;
                _os_log_error_impl(&_mh_execute_header, handle4, OS_LOG_TYPE_ERROR, "Participant handle %{private}@ appears to be neither an email or phone number, not looking it up in CloudKit", &buf, 0xCu);
              }

              goto LABEL_35;
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v55 objects:v68 count:16];
        }

        while (v17);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v64 = 0x3032000000;
      v65 = sub_10004EAB8;
      v66 = sub_10004EAC8;
      v67 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v16 count]);
      if (sub_10001078C())
      {
        objc_initWeak(&location, self);
        syncController = [(KCSharingDaemonGroupManager *)self syncController];
        cloudCoreUtilities = [syncController cloudCoreUtilities];
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_10004EAD0;
        v49[3] = &unk_1003349E8;
        objc_copyWeak(&v53, &location);
        v51 = v39;
        v50 = v42;
        p_buf = &buf;
        [cloudCoreUtilities fetchShareParticipantsFor:v41 completionHandler:v49];

        objc_destroyWeak(&v53);
        objc_destroyWeak(&location);
      }

      else
      {
        syncController2 = [(KCSharingDaemonGroupManager *)self syncController];
        container = [syncController2 container];

        v38 = [[CKFetchShareParticipantsOperation alloc] initWithUserIdentityLookupInfos:v41];
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_10004EFAC;
        v46[3] = &unk_100334A10;
        v46[4] = self;
        v47 = v42;
        v48 = &buf;
        [v38 setPerShareParticipantCompletionBlock:v46];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_10004F240;
        v43[3] = &unk_100335FD8;
        v43[4] = self;
        v44 = v39;
        v45 = &buf;
        [v38 setFetchShareParticipantsCompletionBlock:v43];
        [container addOperation:v38];
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v35 = KCSharingLogObject();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "No or empty participant list for which to fetch share participants", &buf, 2u);
      }

      v42 = +[NSDictionary dictionary];
      (*(v39 + 2))(v39, v42, 0);
    }

    completionCopy = v39;
  }
}

- (id)fetchLocalShareForGroupID:(id)d
{
  dCopy = d;
  syncController = [(KCSharingDaemonGroupManager *)self syncController];
  store = [syncController store];
  v11 = 0;
  v7 = [store fetchCKShareFromMirrorForGroupID:dCopy error:&v11];
  v8 = v11;

  if (!v7 || v8)
  {
    v9 = KCSharingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v13 = dCopy;
      v14 = 2114;
      v15 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to find local share for groupID %{public}@ (%{public}@)", buf, 0x16u);
    }
  }

  return v7;
}

- (void)checkAvailabilityForHandles:(id)handles completion:(id)completion
{
  completionCopy = completion;
  v7 = [NSSet setWithArray:handles];
  allObjects = [v7 allObjects];

  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [allObjects count]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = allObjects;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [[KCSharingParticipant alloc] initWithHandle:*(*(&v22 + 1) + 8 * v14) permissionLevel:0];
        [v9 addObject:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10004F68C;
  v18[3] = &unk_1003349C0;
  selfCopy = self;
  v21 = completionCopy;
  v19 = v10;
  v16 = v10;
  v17 = completionCopy;
  [(KCSharingDaemonGroupManager *)self fetchShareParticipantsForParticipants:v9 completion:v18];
}

- (void)declineGroupInvite:(id)invite startTime:(unint64_t)time completion:(id)completion
{
  inviteCopy = invite;
  completionCopy = completion;
  v10 = KCSharingLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    groupID = [inviteCopy groupID];
    *buf = 138543619;
    v21 = groupID;
    v22 = 2113;
    v23 = inviteCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Declining invite for group: %{public}@, %{private}@", buf, 0x16u);
  }

  v19 = inviteCopy;
  v12 = [NSArray arrayWithObjects:&v19 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004FAC8;
  v15[3] = &unk_1003348D0;
  v15[4] = self;
  v16 = inviteCopy;
  v17 = completionCopy;
  timeCopy = time;
  v13 = completionCopy;
  v14 = inviteCopy;
  [(KCSharingDaemonGroupManager *)self fetchCKShareMetadataForGroupInvites:v12 completion:v15];
}

- (void)declineInviteForGroupID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = mach_absolute_time();
    v9 = KCSharingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = dCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Declining group invite for %{public}@", buf, 0xCu);
    }

    messagingdConnection = [(KCSharingDaemonGroupManager *)self messagingdConnection];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100050E0C;
    v11[3] = &unk_100334808;
    v11[4] = self;
    v13 = completionCopy;
    v14 = v8;
    v12 = dCopy;
    [messagingdConnection fetchReceivedInviteWithGroupID:v12 completion:v11];
  }
}

- (void)acceptGroupInvite:(id)invite startTime:(unint64_t)time completion:(id)completion
{
  inviteCopy = invite;
  completionCopy = completion;
  v10 = KCSharingLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    groupID = [inviteCopy groupID];
    *buf = 138543619;
    v21 = groupID;
    v22 = 2113;
    v23 = inviteCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Accepting invite for %{public}@: %{private}@", buf, 0x16u);
  }

  v19 = inviteCopy;
  v12 = [NSArray arrayWithObjects:&v19 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100051230;
  v15[3] = &unk_1003348D0;
  v15[4] = self;
  v16 = inviteCopy;
  v17 = completionCopy;
  timeCopy = time;
  v13 = completionCopy;
  v14 = inviteCopy;
  [(KCSharingDaemonGroupManager *)self fetchCKShareMetadataForGroupInvites:v12 completion:v15];
}

- (void)acceptGroupInvite:(id)invite completion:(id)completion
{
  completionCopy = completion;
  inviteCopy = invite;
  [(KCSharingDaemonGroupManager *)self acceptGroupInvite:inviteCopy startTime:mach_absolute_time() completion:completionCopy];
}

- (void)acceptInviteForGroupID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = mach_absolute_time();
    v9 = KCSharingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = dCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Accepting group invite for %{public}@", buf, 0xCu);
    }

    messagingdConnection = [(KCSharingDaemonGroupManager *)self messagingdConnection];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000527B4;
    v11[3] = &unk_100334808;
    v11[4] = self;
    v13 = completionCopy;
    v14 = v8;
    v12 = dCopy;
    [messagingdConnection fetchReceivedInviteWithGroupID:v12 completion:v11];
  }
}

- (id)translateSyncErrorForGroupRequest:(id)request zoneID:(id)d
{
  requestCopy = request;
  dCopy = d;
  if (!requestCopy)
  {
    goto LABEL_19;
  }

  domain = [requestCopy domain];
  if (domain != @"KCSharingErrorDomain")
  {

LABEL_19:
    v20 = requestCopy;
    goto LABEL_20;
  }

  code = [requestCopy code];

  if (code != 14)
  {
    goto LABEL_19;
  }

  userInfo = [requestCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:NSMultipleUnderlyingErrorsKey];

  if (!v10 || ![v10 count])
  {
    v20 = requestCopy;
    goto LABEL_32;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = v11;
  v13 = *v27;
  v24 = v10;
  while (2)
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v27 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v26 + 1) + 8 * i);
      if ((CKErrorIsCode() & 1) == 0)
      {
        v20 = requestCopy;
LABEL_31:

        v10 = v24;
        goto LABEL_32;
      }

      userInfo2 = [v15 userInfo];
      v17 = [userInfo2 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v18 = [v17 objectForKeyedSubscript:dCopy];

      if (v18)
      {
        if (CKErrorIsCode())
        {
          v22 = KCSharingLogObject();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v31 = dCopy;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Sync error translation: seems we were offline for zoneID=%{public}@, returning translated error", buf, 0xCu);
          }

          v23 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:36 userInfo:0];
        }

        else
        {
          v23 = requestCopy;
        }

        v20 = v23;

        goto LABEL_31;
      }
    }

    v12 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    v10 = v24;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_16:

  v19 = KCSharingLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = dCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sync error translation: zoneID=%{public}@ did not error, returning nil", buf, 0xCu);
  }

  v20 = 0;
LABEL_32:

LABEL_20:

  return v20;
}

- (void)handleGroupDeleteRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = mach_absolute_time();
    v9 = KCSharingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      groupID = [requestCopy groupID];
      *buf = 138543362;
      v37 = groupID;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Group delete request for %{public}@", buf, 0xCu);
    }

    groupID2 = [requestCopy groupID];
    v12 = [(KCSharingDaemonGroupManager *)self fetchLocalShareForGroupID:groupID2];

    if (!v12)
    {
      v23 = KCSharingLogObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        groupID3 = [requestCopy groupID];
        *buf = 138543362;
        v37 = groupID3;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to fetch local share for %{public}@", buf, 0xCu);
      }

      v19 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:9 userInfo:0];
      completionCopy[2](completionCopy, v19);
      sub_10005019C(@"delete", 0, v8, v19);
      goto LABEL_19;
    }

    owner = [v12 owner];
    currentUserParticipant = [v12 currentUserParticipant];
    v15 = [owner isEqual:currentUserParticipant];

    if (v15)
    {
      syncController = [(KCSharingDaemonGroupManager *)self syncController];
      v40 = v12;
      v17 = [NSArray arrayWithObjects:&v40 count:1];
      v35 = 0;
      v18 = [syncController stageOutgoingShares:0 deletionsForShares:v17 error:&v35];
      v19 = v35;

      if (v18)
      {
        v20 = sub_1000314F8(v12);
        syncController2 = [(KCSharingDaemonGroupManager *)self syncController];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1000531A4;
        v29[3] = &unk_1003347E0;
        v29[4] = self;
        v30 = v12;
        v31 = v20;
        v32 = requestCopy;
        v33 = completionCopy;
        v34 = v8;
        participants = v20;
        [syncController2 saveStagedOutgoingChangesWithCompletion:v29];

LABEL_18:
LABEL_19:

        goto LABEL_20;
      }

      v25 = KCSharingLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        groupID4 = [requestCopy groupID];
        *buf = 138543618;
        v37 = groupID4;
        v38 = 2114;
        v39 = v19;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to stage outgoing changes for group delete request for %{public}@: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v24 = KCSharingLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        groupID5 = [requestCopy groupID];
        *buf = 138543362;
        v37 = groupID5;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Rejected group delete request for non-owned group: %{public}@", buf, 0xCu);
      }

      v19 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:15 userInfo:0];
    }

    completionCopy[2](completionCopy, v19);
    participants = [v12 participants];
    sub_10005019C(@"delete", [participants count], v8, v19);
    goto LABEL_18;
  }

LABEL_20:
}

- (void)handleGroupLeaveRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = mach_absolute_time();
    v9 = KCSharingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      groupID = [requestCopy groupID];
      *buf = 138543362;
      v35 = groupID;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Group leave request for %{public}@", buf, 0xCu);
    }

    groupID2 = [requestCopy groupID];
    v12 = [(KCSharingDaemonGroupManager *)self fetchLocalShareForGroupID:groupID2];

    if (!v12)
    {
      v18 = KCSharingLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        groupID3 = [requestCopy groupID];
        *buf = 138543362;
        v35 = groupID3;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to fetch local share for %{public}@", buf, 0xCu);
      }

      v17 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:9 userInfo:0];
      completionCopy[2](completionCopy, v17);
      sub_10005019C(@"leave", 0, v8, v17);
      goto LABEL_18;
    }

    owner = [v12 owner];
    currentUserParticipant = [v12 currentUserParticipant];
    v15 = [owner isEqual:currentUserParticipant];

    if (v15)
    {
      v16 = KCSharingLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        groupID4 = [requestCopy groupID];
        *buf = 138543362;
        v35 = groupID4;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Rejected group leave request for owned group: %{public}@", buf, 0xCu);
      }

      v17 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:15 userInfo:0];
    }

    else
    {
      syncController = [(KCSharingDaemonGroupManager *)self syncController];
      v38 = v12;
      v20 = [NSArray arrayWithObjects:&v38 count:1];
      v33 = 0;
      v21 = [syncController stageOutgoingShares:0 deletionsForShares:v20 error:&v33];
      v17 = v33;

      if (v21)
      {
        syncController2 = [(KCSharingDaemonGroupManager *)self syncController];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_100053A64;
        v28[3] = &unk_1003347B8;
        v28[4] = self;
        v29 = v12;
        v30 = requestCopy;
        v31 = completionCopy;
        v32 = v8;
        [syncController2 saveStagedOutgoingChangesWithCompletion:v28];

LABEL_18:
        goto LABEL_19;
      }

      v23 = KCSharingLogObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        groupID5 = [requestCopy groupID];
        *buf = 138543618;
        v35 = groupID5;
        v36 = 2114;
        v37 = v17;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to stage outgoing changes for group leave request for %{public}@: %{public}@", buf, 0x16u);
      }
    }

    completionCopy[2](completionCopy, v17);
    participants = [v12 participants];
    sub_10005019C(@"leave", [participants count], v8, v17);

    goto LABEL_18;
  }

LABEL_19:
}

- (void)fetchAndUpdateParticipantsForGroup:(id)group share:(id)share isCreateOperation:(BOOL)operation startTime:(unint64_t)time completion:(id)completion
{
  groupCopy = group;
  shareCopy = share;
  completionCopy = completion;
  v15 = KCSharingLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    groupID = [groupCopy groupID];
    *buf = 138543875;
    v28 = groupID;
    v29 = 2113;
    v30 = groupCopy;
    v31 = 2113;
    v32 = shareCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Fetching and updating participants for %{public}@, %{private}@\n%{private}@", buf, 0x20u);
  }

  participants = [groupCopy participants];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100053DBC;
  v21[3] = &unk_100334790;
  v21[4] = self;
  v22 = groupCopy;
  operationCopy = operation;
  v23 = shareCopy;
  v24 = completionCopy;
  timeCopy = time;
  v18 = shareCopy;
  v19 = completionCopy;
  v20 = groupCopy;
  [(KCSharingDaemonGroupManager *)self fetchShareParticipantsForParticipants:participants completion:v21];
}

- (void)handleGroupUpdateRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    requestCopy = request;
    v8 = mach_absolute_time();
    group = [requestCopy group];

    v10 = KCSharingLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      groupID = [group groupID];
      v25 = 138543362;
      v26 = groupID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Group update request for %{public}@", &v25, 0xCu);
    }

    groupID2 = [group groupID];
    v13 = [(KCSharingDaemonGroupManager *)self fetchLocalShareForGroupID:groupID2];

    if (v13)
    {
      owner = [v13 owner];
      currentUserParticipant = [v13 currentUserParticipant];
      v16 = [owner isEqual:currentUserParticipant];

      if (v16)
      {
        sub_100031204(v13, group);
        [(KCSharingDaemonGroupManager *)self fetchAndUpdateParticipantsForGroup:group share:v13 isCreateOperation:0 startTime:v8 completion:completionCopy];
      }

      else
      {
        v20 = KCSharingLogObject();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          groupID3 = [group groupID];
          v25 = 138543619;
          v26 = groupID3;
          v27 = 2113;
          v28 = v13;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Rejected group update request for non-owned group: %{public}@, %{private}@", &v25, 0x16u);
        }

        v21 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:15 userInfo:0];
        completionCopy[2](completionCopy, 0, v21);
        participants = [group participants];
        sub_10005019C(@"update", [participants count], v8, v21);
      }
    }

    else
    {
      v17 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:9 userInfo:0];
      v18 = KCSharingLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        groupID4 = [group groupID];
        v25 = 138543362;
        v26 = groupID4;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to fetch local share for %{public}@", &v25, 0xCu);
      }

      completionCopy[2](completionCopy, 0, v17);
      participants2 = [group participants];
      sub_10005019C(@"update", [participants2 count], v8, v17);
    }
  }
}

- (void)handleGroupCreateRequest:(id)request completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    requestCopy = request;
    v8 = mach_absolute_time();
    group = [requestCopy group];

    v10 = KCSharingLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      groupID = [group groupID];
      *buf = 138543362;
      v19 = groupID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Group create request for %{public}@", buf, 0xCu);
    }

    v12 = group;
    v13 = [CKRecordZoneID alloc];
    groupID2 = [v12 groupID];
    v15 = [NSString stringWithFormat:@"%@%@", @"group-", groupID2];
    v16 = [v13 initWithZoneName:v15 ownerName:CKCurrentUserDefaultName];

    v17 = [[CKShare alloc] initWithRecordZoneID:v16];
    [v17 setParticipantSelfRemovalBehavior:3];
    sub_100031204(v17, v12);

    [(KCSharingDaemonGroupManager *)self fetchAndUpdateParticipantsForGroup:v12 share:v17 isCreateOperation:1 startTime:v8 completion:completionCopy];
  }
}

- (void)fetchCKShareMetadataForGroupInvites:(id)invites completion:(id)completion
{
  invitesCopy = invites;
  completionCopy = completion;
  v30 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [invitesCopy count]);
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [invitesCopy count]);
  v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [invitesCopy count]);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = invitesCopy;
  v8 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v8)
  {
    v9 = *v47;
    do
    {
      v10 = 0;
      do
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v46 + 1) + 8 * v10);
        v12 = [CKDeviceToDeviceShareInvitationToken alloc];
        inviteToken = [v11 inviteToken];
        shareURL = [v11 shareURL];
        v15 = [v12 initWithSharingInvitationData:inviteToken shareURL:shareURL];

        shareURL2 = [v11 shareURL];
        [v30 setObject:v15 forKeyedSubscript:shareURL2];

        shareURL3 = [v11 shareURL];
        [v6 addObject:shareURL3];

        groupID = [v11 groupID];
        shareURL4 = [v11 shareURL];
        [v7 setObject:groupID forKeyedSubscript:shareURL4];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v8);
  }

  v20 = objc_alloc_init(NSMutableArray);
  if (sub_10001078C())
  {
    objc_initWeak(&location, self);
    syncController = [(KCSharingDaemonGroupManager *)self syncController];
    cloudCoreUtilities = [syncController cloudCoreUtilities];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100055B60;
    v39[3] = &unk_100334718;
    objc_copyWeak(&v44, &location);
    v43 = completionCopy;
    v40 = v7;
    v41 = obj;
    v42 = v20;
    [cloudCoreUtilities fetchCKShareMetadatas:v6 invitationTokensByShareURL:v30 completionHandler:v39];

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  else
  {
    syncController2 = [(KCSharingDaemonGroupManager *)self syncController];
    container = [syncController2 container];

    v25 = [[CKFetchShareMetadataOperation alloc] initWithShareURLs:v6 invitationTokensByShareURL:v30];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000561FC;
    v35[3] = &unk_100334740;
    v36 = v7;
    selfCopy = self;
    v26 = v20;
    v38 = v26;
    [v25 setPerShareMetadataBlock:v35];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100056428;
    v31[3] = &unk_100334880;
    v31[4] = self;
    v32 = obj;
    v34 = completionCopy;
    v33 = v26;
    [v25 setFetchShareMetadataCompletionBlock:v31];
    [container addOperation:v25];
  }
}

- (void)fetchReceivedPendingGroupsExcludingGroupIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  messagingdConnection = [(KCSharingDaemonGroupManager *)self messagingdConnection];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100056968;
  v11[3] = &unk_1003346F0;
  v12 = dsCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = dsCopy;
  v10 = completionCopy;
  [messagingdConnection fetchReceivedInvitesWithCompletion:v11];
}

- (void)handleGroupFetchRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    syncController = [(KCSharingDaemonGroupManager *)self syncController];
    store = [syncController store];
    v28 = 0;
    v8 = [store fetchAllSharingGroupsInMirrorWithError:&v28];
    v9 = v28;
    v10 = [v8 mutableCopy];

    if (!v10 || v9)
    {
      v19 = KCSharingLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v31 = v9;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to fetch groups from mirror: %{public}@", buf, 0xCu);
      }

      if (v9)
      {
        completionCopy[2](completionCopy, 0, v9);
      }

      else
      {
        v20 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:20 userInfo:0];
        completionCopy[2](completionCopy, 0, v20);
      }
    }

    else
    {
      v11 = +[NSMutableArray array];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          v16 = 0;
          do
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            groupID = [*(*(&v24 + 1) + 8 * v16) groupID];
            [v11 addObject:groupID];

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v14);
      }

      if ([v12 count])
      {
        syncController2 = [(KCSharingDaemonGroupManager *)self syncController];
        [syncController2 setFeatureInUse];
      }

      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10005715C;
      v21[3] = &unk_1003346F0;
      v21[4] = self;
      v22 = v12;
      v23 = completionCopy;
      [(KCSharingDaemonGroupManager *)self fetchReceivedPendingGroupsExcludingGroupIDs:v11 completion:v21];
    }
  }
}

- (void)getGroupByGroupID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [(KCSharingDaemonGroupManager *)self fetchLocalShareForGroupID:dCopy];
  v9 = v8;
  if (v8)
  {
    v10 = sub_1000314F8(v8);
    v11 = KCSharingLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = dCopy;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Got group for groupID %{public}@: %@", &v12, 0x16u);
    }

    completionCopy[2](completionCopy, v10, 0);
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

- (void)sendGroupsUpdatedNotifications
{
  xpcListenerDelegate = [(KCSharingDaemonGroupManager *)self xpcListenerDelegate];
  [xpcListenerDelegate groupsUpdated];

  v3 = KCSharingLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = @"com.apple.security.kcsharing.groupsupdated";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "posting notification %@", &v4, 0xCu);
  }

  notify_post([@"com.apple.security.kcsharing.groupsupdated" UTF8String]);
}

- (KCSharingDaemonGroupManager)initWithSyncController:(id)controller messagingdConnection:(id)connection
{
  controllerCopy = controller;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = KCSharingDaemonGroupManager;
  v9 = [(KCSharingDaemonGroupManager *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_syncController, controller);
    objc_storeStrong(&v10->_messagingdConnection, connection);
    store = [controllerCopy store];
    getLoggingIdentifer = [store getLoggingIdentifer];
    loggingIdentifier = v10->_loggingIdentifier;
    v10->_loggingIdentifier = getLoggingIdentifer;
  }

  return v10;
}

+ (KCSharingDaemonGroupManager)sharedInstance
{
  if (qword_10039DBB0 != -1)
  {
    dispatch_once(&qword_10039DBB0, &stru_1003346C8);
  }

  v3 = qword_10039DBB8;

  return v3;
}

@end