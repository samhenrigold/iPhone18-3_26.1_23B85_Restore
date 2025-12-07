@interface ICDMediaUserStateCenterServer
- (BOOL)_locked_userStatesChanged:(id)changed;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (ICDMediaUserStateCenterServer)init;
- (NSArray)userStatesCache;
- (id)_getUserIdentitiesfromDefaultStore;
- (id)_sanitizedUserStatesForRemoteClientConnection:(id)connection;
- (id)_storeRequestContextFromUserIdentity:(id)identity;
- (id)_supportedInterfaceForXPCConnection;
- (id)_updatedUserStateFromState:(id)state withUserProfile:(id)profile;
- (unint64_t)_userStateAccessForConnection:(id)connection;
- (void)_buildUserStateFromUserIdentity:(id)identity storeRequestContext:(id)context tokensDictionary:(id)dictionary ignoreResponseCache:(BOOL)cache completion:(id)completion;
- (void)_fetchAccountsWithForceRefresh:(BOOL)refresh ignoreResponseCache:(BOOL)cache completion:(id)completion;
- (void)_fetchUpdatedUserProfilesForUserStates:(id)states completion:(id)completion;
- (void)_getTokenStatusesForDSIDs:(id)ds forceRefresh:(BOOL)refresh completion:(id)completion;
- (void)_getUserStateFromIdentity:(id)identity tokensDictionary:(id)dictionary ignoreResponseCache:(BOOL)cache completion:(id)completion;
- (void)_notifyServerStateUpdatedIfNeeded:(id)needed;
- (void)getCachedUserStatesWithReply:(id)reply;
- (void)getUserStatesForcingRefresh:(BOOL)refresh withReply:(id)reply;
- (void)notificationsManager:(id)manager didReceiveNotificationChangingUserState:(id)state;
- (void)refreshSocialProfilesWithReply:(id)reply;
- (void)start;
- (void)stop;
- (void)updateUserProfile:(id)profile forRequestContext:(id)context;
@end

@implementation ICDMediaUserStateCenterServer

- (NSArray)userStatesCache
{
  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSDictionary *)self->_cachedUserStateByDSID allValues];
  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (id)_getUserIdentitiesfromDefaultStore
{
  v3 = +[ICUserIdentityStore defaultIdentityStore];
  v9 = 0;
  v4 = [v3 userIdentitiesForManageableAccountsWithError:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch user state identities, err=%{public}@", buf, 0x16u);
    }

    v7 = &__NSArray0__struct;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (id)_supportedInterfaceForXPCConnection
{
  if (qword_100213BB8 != -1)
  {
    dispatch_once(&qword_100213BB8, &stru_1001DB310);
  }

  v3 = qword_100213BB0;

  return v3;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_lock);
  hasStarted = self->_hasStarted;
  os_unfair_lock_unlock(&self->_lock);
  if (!hasStarted || [(ICDMediaUserStateCenterServer *)self _userStateAccessForConnection:connectionCopy]!= -1)
  {
    if (![(ICDMediaUserStateCenterServer *)self _userStateAccessForConnection:connectionCopy])
    {
      v7 = os_log_create("com.apple.amp.itunescloudd", "UserState");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v19 = 2114;
        v20 = connectionCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@: Refused new client connection: %{public}@. Entitlements error.", buf, 0x16u);
      }
    }

    goto LABEL_11;
  }

  if (![connectionCopy icd_isConnectionAllowedForService:5])
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  processIdentifier = [connectionCopy processIdentifier];
  _supportedInterfaceForXPCConnection = [(ICDMediaUserStateCenterServer *)self _supportedInterfaceForXPCConnection];
  [connectionCopy setExportedInterface:_supportedInterfaceForXPCConnection];

  [connectionCopy setExportedObject:self];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004D364;
  v15[3] = &unk_1001DF780;
  v15[4] = self;
  v16 = processIdentifier;
  [connectionCopy setInvalidationHandler:v15];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004D428;
  v13[3] = &unk_1001DF780;
  v13[4] = self;
  v14 = processIdentifier;
  [connectionCopy setInterruptionHandler:v13];
  [connectionCopy resume];
  v10 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v19 = 2114;
    v20 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Accepted new client connection: %{public}@.", buf, 0x16u);
  }

  v11 = 1;
LABEL_12:

  return v11;
}

- (unint64_t)_userStateAccessForConnection:(id)connection
{
  v3 = [connection valueForEntitlement:@"com.apple.itunescloudd.private"];
  if (v3)
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_updatedUserStateFromState:(id)state withUserProfile:(id)profile
{
  stateCopy = state;
  profileCopy = profile;
  if (stateCopy && ([stateCopy music], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    music = [stateCopy music];
    userProfile = [music userProfile];
    v11 = userProfile;
    if (userProfile == profileCopy)
    {
    }

    else
    {
      v12 = [userProfile isEqual:profileCopy];

      if ((v12 & 1) == 0)
      {
        music2 = [stateCopy music];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_10004D7D4;
        v25[3] = &unk_1001DB2F0;
        v26 = profileCopy;
        v14 = [music2 copyWithBlock:v25];

        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10004D7E0;
        v23[3] = &unk_1001DB2C8;
        v24 = v14;
        v15 = v14;
        v16 = [stateCopy copyWithBlock:v23];

        goto LABEL_13;
      }
    }

    v17 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      v18 = "%{public}@ User profile unchanged. Returning state.";
      v19 = v17;
      v20 = OS_LOG_TYPE_DEFAULT;
      v21 = 12;
      goto LABEL_11;
    }
  }

  else
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v29 = 2114;
      v30 = stateCopy;
      v18 = "%{public}@ cannot update state. Unexpected nil ICMusicUserState for mediaUserState=%{public}@";
      v19 = v17;
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 22;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v19, v20, v18, buf, v21);
    }
  }

  v16 = stateCopy;
LABEL_13:

  return v16;
}

- (id)_storeRequestContextFromUserIdentity:(id)identity
{
  identityCopy = identity;
  v4 = [ICStoreRequestContext alloc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004D8A8;
  v8[3] = &unk_1001DEFB8;
  v9 = identityCopy;
  v5 = identityCopy;
  v6 = [v4 initWithBlock:v8];

  return v6;
}

- (id)_sanitizedUserStatesForRemoteClientConnection:(id)connection
{
  connectionCopy = connection;
  userStatesCache = [(ICDMediaUserStateCenterServer *)self userStatesCache];
  v6 = [connectionCopy valueForEntitlement:ICMediaUserStateCenterEntitlementSiri];

  if (connectionCopy && !v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543874;
      selfCopy = self;
      v12 = 2114;
      v13 = connectionCopy;
      v14 = 1024;
      v15 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Sanitizing user state for client connection %{public}@. hasSiriDataEntitlement=%{BOOL}u", &v10, 0x1Cu);
    }

    v8 = [userStatesCache msv_map:&stru_1001DB260];

    userStatesCache = v8;
  }

  return userStatesCache;
}

- (BOOL)_locked_userStatesChanged:(id)changed
{
  changedCopy = changed;
  v5 = [changedCopy count];
  if (v5 == [(NSDictionary *)self->_cachedUserStateByDSID count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = changedCopy;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          cachedUserStateByDSID = self->_cachedUserStateByDSID;
          dsid = [v11 dsid];
          v14 = [(NSDictionary *)cachedUserStateByDSID objectForKeyedSubscript:dsid];

          LODWORD(v11) = [v14 isEqual:v11];
          if (!v11)
          {
            v15 = 1;
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_13:
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)_getUserStateFromIdentity:(id)identity tokensDictionary:(id)dictionary ignoreResponseCache:(BOOL)cache completion:(id)completion
{
  cacheCopy = cache;
  identityCopy = identity;
  completionCopy = completion;
  dictionaryCopy = dictionary;
  v13 = [(ICDMediaUserStateCenterServer *)self _storeRequestContextFromUserIdentity:identityCopy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10004DE4C;
  v16[3] = &unk_1001DB220;
  v16[4] = self;
  v17 = identityCopy;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = identityCopy;
  [(ICDMediaUserStateCenterServer *)self _buildUserStateFromUserIdentity:v15 storeRequestContext:v13 tokensDictionary:dictionaryCopy ignoreResponseCache:cacheCopy completion:v16];
}

- (void)_getTokenStatusesForDSIDs:(id)ds forceRefresh:(BOOL)refresh completion:(id)completion
{
  refreshCopy = refresh;
  dsCopy = ds;
  completionCopy = completion;
  v10 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = dsCopy;
    *&buf[22] = 1024;
    LODWORD(v17) = refreshCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ _getTokenStatusesForDSIDs:%{public}@, forceRefresh: %{BOOL}u", buf, 0x1Cu);
  }

  v11 = +[ICLibraryAuthServiceClientTokenProvider sharedProvider];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v17 = sub_10004E7DC;
  v18 = sub_10004E7EC;
  v19 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004E7F4;
  v13[3] = &unk_1001DB1F8;
  v13[4] = self;
  v12 = completionCopy;
  v14 = v12;
  v15 = buf;
  [v11 getTokenStatusForDSIDs:dsCopy forcingRefresh:refreshCopy completion:v13];

  _Block_object_dispose(buf, 8);
}

- (void)_fetchUpdatedUserProfilesForUserStates:(id)states completion:(id)completion
{
  statesCopy = states;
  completionCopy = completion;
  _getUserIdentitiesfromDefaultStore = [(ICDMediaUserStateCenterServer *)self _getUserIdentitiesfromDefaultStore];
  v24 = [statesCopy mutableCopy];
  v8 = dispatch_group_create();
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2810000000;
  v39[3] = "";
  v40 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = _getUserIdentitiesfromDefaultStore;
  v9 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v9)
  {
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = [(ICDMediaUserStateCenterServer *)self _storeRequestContextFromUserIdentity:v12];
        dSID = [v12 DSID];
        v15 = [statesCopy objectForKeyedSubscript:dSID];

        if (!v15 || ([v15 music], v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, v17))
        {
          v19 = os_log_create("com.apple.amp.itunescloudd", "UserState");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543619;
            selfCopy = self;
            v43 = 2113;
            v44 = v12;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ No ICMusicUserState for userIdentity=%{private}@ Returning cached userState.", buf, 0x16u);
          }
        }

        else
        {
          dispatch_group_enter(v8);
          userSocialProfileProvider = self->_userSocialProfileProvider;
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_10004F0F0;
          v29[3] = &unk_1001DB158;
          v29[4] = self;
          v30 = v15;
          v34 = v39;
          v31 = v24;
          v32 = v12;
          v33 = v8;
          [(ICDMusicUserSocialProfileProvider *)userSocialProfileProvider fetchMusicUserProfileWithStoreRequestContext:v13 ignoreCache:1 completion:v29];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v9);
  }

  v20 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004F2C4;
  block[3] = &unk_1001DF5A0;
  v27 = v24;
  v28 = completionCopy;
  v21 = v24;
  v22 = completionCopy;
  dispatch_group_notify(v8, v20, block);

  _Block_object_dispose(v39, 8);
}

- (void)_fetchAccountsWithForceRefresh:(BOOL)refresh ignoreResponseCache:(BOOL)cache completion:(id)completion
{
  cacheCopy = cache;
  refreshCopy = refresh;
  completionCopy = completion;
  v9 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy4 = self;
    v36 = 1024;
    *v37 = refreshCopy;
    *&v37[4] = 1024;
    *&v37[6] = cacheCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ _fetchAccountsWithForceRefresh: %{BOOL}u ignoreResponseCache:%{BOOL}u", buf, 0x18u);
  }

  _getUserIdentitiesfromDefaultStore = [(ICDMediaUserStateCenterServer *)self _getUserIdentitiesfromDefaultStore];
  if ([_getUserIdentitiesfromDefaultStore count])
  {
    os_unfair_lock_lock(&self->_lock);
    v11 = [(NSMutableArray *)self->_pendingCompletionHandlers count];
    if (v11)
    {
      v12 = v11;
      self->_coalescedIgnoreCacheValue |= cacheCopy;
      self->_coalescedForceRefreshValue |= refreshCopy;
      pendingCompletionHandlers = self->_pendingCompletionHandlers;
      v14 = objc_retainBlock(completionCopy);
      [(NSMutableArray *)pendingCompletionHandlers addObject:v14];

      os_unfair_lock_unlock(&self->_lock);
      v15 = os_log_create("com.apple.amp.itunescloudd", "UserState");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy4 = self;
        v36 = 2048;
        *v37 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ userState account fetch in-flight with %lu pending completions. Coalescing request.", buf, 0x16u);
      }
    }

    else
    {
      v17 = self->_pendingCompletionHandlers;
      v18 = objc_retainBlock(completionCopy);
      [(NSMutableArray *)v17 addObject:v18];

      os_unfair_lock_unlock(&self->_lock);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10004F6F8;
      v31[3] = &unk_1001DB0A0;
      v31[4] = self;
      v32 = refreshCopy;
      v33 = cacheCopy;
      v19 = objc_retainBlock(v31);
      v20 = [_getUserIdentitiesfromDefaultStore msv_map:&stru_1001DB0E0];
      v21 = [NSSet setWithArray:v20];

      v22 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [_getUserIdentitiesfromDefaultStore count]);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10004F958;
      v25[3] = &unk_1001DB130;
      v29 = v19;
      v26 = _getUserIdentitiesfromDefaultStore;
      selfCopy3 = self;
      v30 = cacheCopy;
      v28 = v22;
      v23 = v22;
      v24 = v19;
      [(ICDMediaUserStateCenterServer *)self _getTokenStatusesForDSIDs:v21 forceRefresh:refreshCopy completion:v25];
    }
  }

  else
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@ No user identities are found.", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, &__NSArray0__struct, 0);
  }
}

- (void)_buildUserStateFromUserIdentity:(id)identity storeRequestContext:(id)context tokensDictionary:(id)dictionary ignoreResponseCache:(BOOL)cache completion:(id)completion
{
  cacheCopy = cache;
  identityCopy = identity;
  contextCopy = context;
  dictionaryCopy = dictionary;
  completionCopy = completion;
  v15 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = identityCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ _buildUserStateFromUserIdentity: building userState for userIdentity=%{public}@", buf, 0x16u);
  }

  group = dispatch_group_create();
  v40 = +[ICUserIdentityStore defaultIdentityStore];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v86 = sub_10004E7DC;
  v87 = sub_10004E7EC;
  v88 = 0;
  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x3032000000;
  v79[3] = sub_10004E7DC;
  v79[4] = sub_10004E7EC;
  v80 = 0;
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x3032000000;
  v77[3] = sub_10004E7DC;
  v77[4] = sub_10004E7EC;
  v78 = 0;
  v76 = 0;
  v38 = [v40 getPropertiesForUserIdentity:identityCopy error:&v76];
  v16 = v76;
  if (v16)
  {
    completionCopy[2](completionCopy, 0, v16);
  }

  else
  {
    v17 = +[ICAgeVerificationManager defaultManager];
    v18 = [v17 ageVerificationStateForUserIdentity:identityCopy];
    v35 = [v18 status] == 2;

    dispatch_group_enter(group);
    v36 = [[ICMusicSubscriptionStatusRequest alloc] initWithStoreRequestContext:contextCopy];
    v19 = +[ICMusicSubscriptionStatusController sharedStatusController];
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_100050714;
    v70[3] = &unk_1001DAED0;
    v70[4] = self;
    v20 = contextCopy;
    v71 = v20;
    v73 = buf;
    v74 = v77;
    v21 = group;
    v72 = v21;
    v75 = v79;
    [v19 performSubscriptionStatusRequest:v36 withCompletionHandler:v70];

    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x3032000000;
    v68[3] = sub_10004E7DC;
    v68[4] = sub_10004E7EC;
    v69 = 0;
    dispatch_group_enter(v21);
    userSocialProfileProvider = self->_userSocialProfileProvider;
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100050A54;
    v64[3] = &unk_1001DAEF8;
    v64[4] = self;
    v23 = v20;
    v65 = v23;
    v67 = v68;
    v24 = v21;
    v66 = v24;
    [(ICDMusicUserSocialProfileProvider *)userSocialProfileProvider fetchMusicUserProfileWithStoreRequestContext:v23 ignoreCache:cacheCopy completion:v64];
    v62[0] = 0;
    v62[1] = v62;
    v62[2] = 0x3032000000;
    v62[3] = sub_10004E7DC;
    v62[4] = sub_10004E7EC;
    v63 = 0;
    dispatch_group_enter(v24);
    v25 = +[ICURLBagProvider sharedBagProvider];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100050CF8;
    v59[3] = &unk_1001DAF20;
    v59[4] = self;
    v61 = v62;
    v26 = v24;
    v60 = v26;
    [v25 getBagForRequestContext:v23 withCompletionHandler:v59];

    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    if ([v38 isActive] && (MSVDeviceIsAudioAccessory() & 1) == 0)
    {
      v81 = 0;
      v82 = &v81;
      v83 = 0x2050000000;
      v27 = qword_100213BC0;
      v84 = qword_100213BC0;
      if (!qword_100213BC0)
      {
        *&v89 = _NSConcreteStackBlock;
        *(&v89 + 1) = 3221225472;
        v90 = sub_100050E7C;
        v91 = &unk_1001DF318;
        v92 = &v81;
        sub_100050E7C(&v89);
        v27 = v82[3];
      }

      v28 = v27;
      _Block_object_dispose(&v81, 8);
      sharedInstance = [v27 sharedInstance];
      storedConfiguration = [sharedInstance storedConfiguration];

      if (storedConfiguration)
      {
        activeUser = [storedConfiguration activeUser];
        *(v56 + 24) = activeUser;
      }

      else if (sub_100050F44())
      {
        dispatch_group_enter(v26);
        v32 = os_log_create("com.apple.amp.itunescloudd", "UserState");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v89) = 138543362;
          *(&v89 + 4) = self;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetching watchKit configuration", &v89, 0xCu);
        }

        sharedInstance2 = [sub_100050F44() sharedInstance];
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_100051024;
        v52[3] = &unk_1001DAF48;
        v52[4] = self;
        v54 = &v55;
        v53 = v26;
        [sharedInstance2 fetchConfigurationWithCompletionHandler:v52];
      }
    }

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100051190;
    block[3] = &unk_1001DB050;
    block[4] = self;
    v42 = v38;
    v45 = v62;
    v51 = v35;
    v46 = v79;
    v47 = v77;
    v43 = dictionaryCopy;
    v48 = v68;
    v49 = &v55;
    v50 = buf;
    v44 = completionCopy;
    dispatch_group_notify(v26, queue, block);

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(v62, 8);

    _Block_object_dispose(v68, 8);
  }

  _Block_object_dispose(v77, 8);
  _Block_object_dispose(v79, 8);

  _Block_object_dispose(buf, 8);
}

- (void)_notifyServerStateUpdatedIfNeeded:(id)needed
{
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100053424;
  v22[3] = &unk_1001DAE60;
  neededCopy = needed;
  v23 = neededCopy;
  v5 = [neededCopy msv_filter:v22];
  os_unfair_lock_lock(&self->_lock);
  if ([(ICDMediaUserStateCenterServer *)self _locked_userStatesChanged:v5])
  {
    v6 = +[NSMutableDictionary dictionary];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          dsid = [v12 dsid];
          [v6 setObject:v12 forKeyedSubscript:dsid];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v9);
    }

    v14 = [v6 copy];
    cachedUserStateByDSID = self->_cachedUserStateByDSID;
    self->_cachedUserStateByDSID = v14;

    os_unfair_lock_unlock(&self->_lock);
    v16 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ User states changed - posting notification", buf, 0xCu);
    }

    v17 = dispatch_get_global_queue(0, 0);
    dispatch_async(v17, &stru_1001DAE80);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v17 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ No change in user state detected", buf, 0xCu);
    }
  }
}

- (void)updateUserProfile:(id)profile forRequestContext:(id)context
{
  profileCopy = profile;
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSDictionary *)self->_cachedUserStateByDSID mutableCopy];
  os_unfair_lock_unlock(&self->_lock);
  identity = [contextCopy identity];

  dSID = [identity DSID];

  v11 = [v8 objectForKeyedSubscript:dSID];
  v12 = v11;
  if (v11 && ([v11 music], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = [(ICDMediaUserStateCenterServer *)self _updatedUserStateFromState:v12 withUserProfile:profileCopy];
    [v8 setObject:v14 forKeyedSubscript:dSID];

    allValues = [v8 allValues];
    [(ICDMediaUserStateCenterServer *)self _notifyServerStateUpdatedIfNeeded:allValues];
  }

  else
  {
    allValues = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(allValues, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, allValues, OS_LOG_TYPE_ERROR, "%{public}@ updateUserProfile:forRequestContext: unexpected nil ICMusicUserState for cachedUserState=%{public}@", &v16, 0x16u);
    }
  }
}

- (void)notificationsManager:(id)manager didReceiveNotificationChangingUserState:(id)state
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100053724;
  v4[3] = &unk_1001DEAC8;
  v4[4] = self;
  [(ICDMediaUserStateCenterServer *)self _fetchAccountsWithForceRefresh:0 completion:v4];
}

- (void)stop
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping server:", &v5, 0xCu);
  }

  serverNotificationsManager = self->_serverNotificationsManager;
  self->_serverNotificationsManager = 0;
}

- (void)start
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting server:", &v6, 0xCu);
  }

  v4 = [[ICDMediaUserStateCenterServerNotificationsManager alloc] initWithDelegate:self];
  serverNotificationsManager = self->_serverNotificationsManager;
  self->_serverNotificationsManager = v4;

  os_unfair_lock_lock(&self->_lock);
  self->_hasStarted = 1;
  os_unfair_lock_unlock(&self->_lock);
  [(ICDMediaUserStateCenterServer *)self getUserStatesForcingRefresh:0 withReply:&stru_1001DAE38];
}

- (void)refreshSocialProfilesWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[NSXPCConnection currentConnection];
  v6 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ refreshSocialProfilesWithReply: Received request for social profile refresh from client connection %{public}@.", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSDictionary *)self->_cachedUserStateByDSID copy];
  os_unfair_lock_unlock(&self->_lock);
  if ([v7 count])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100053BD8;
    v17[3] = &unk_1001DADF8;
    v8 = &v18;
    v17[4] = self;
    v18 = v5;
    v9 = &v19;
    v19 = replyCopy;
    v10 = replyCopy;
    v11 = v5;
    [(ICDMediaUserStateCenterServer *)self _fetchUpdatedUserProfilesForUserStates:v7 completion:v17];
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100053CE0;
    v14[3] = &unk_1001DADD0;
    v8 = &v16;
    v15 = v5;
    v16 = replyCopy;
    v9 = &v15;
    v14[4] = self;
    v12 = replyCopy;
    v13 = v5;
    [(ICDMediaUserStateCenterServer *)self _fetchAccountsWithForceRefresh:1 ignoreResponseCache:1 completion:v14];
  }
}

- (void)getUserStatesForcingRefresh:(BOOL)refresh withReply:(id)reply
{
  refreshCopy = refresh;
  replyCopy = reply;
  v7 = +[NSXPCConnection currentConnection];
  v8 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v18 = 2114;
    v19 = v7;
    v20 = 1024;
    LODWORD(v21) = refreshCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Received request for user states from client connection %{public}@. forceRefresh=%{BOOL}u", buf, 0x1Cu);
  }

  if (refreshCopy || (-[ICDMediaUserStateCenterServer userStatesCache](self, "userStatesCache"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, !v10))
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000540D8;
    v13[3] = &unk_1001DADD0;
    v13[4] = self;
    v15 = replyCopy;
    v14 = v7;
    [(ICDMediaUserStateCenterServer *)self _fetchAccountsWithForceRefresh:refreshCopy completion:v13];
  }

  else
  {
    v11 = [(ICDMediaUserStateCenterServer *)self _sanitizedUserStatesForRemoteClientConnection:v7];
    v12 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v18 = 2114;
      v19 = v7;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Returning cached user states to client connection %{public}@: %{public}@", buf, 0x20u);
    }

    (*(replyCopy + 2))(replyCopy, v11, 0);
  }
}

- (void)getCachedUserStatesWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[NSXPCConnection currentConnection];
  v6 = [(ICDMediaUserStateCenterServer *)self _sanitizedUserStatesForRemoteClientConnection:v5];

  replyCopy[2](replyCopy, v6);
  if (!v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ Lazily fetching user states", buf, 0xCu);
    }

    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100054404;
    block[3] = &unk_1001DF578;
    block[4] = self;
    dispatch_async(v8, block);
  }
}

- (ICDMediaUserStateCenterServer)init
{
  v13.receiver = self;
  v13.super_class = ICDMediaUserStateCenterServer;
  v2 = [(ICDMediaUserStateCenterServer *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_hasStarted = 0;
    v4 = dispatch_queue_create("com.apple.amp.iTunesCloud.ICDMediaUserStateCenterServer", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = +[NSDictionary dictionary];
    cachedUserStateByDSID = v3->_cachedUserStateByDSID;
    v3->_cachedUserStateByDSID = v6;

    v8 = [[ICDMusicUserSocialProfileProvider alloc] initWithDelegate:v3];
    userSocialProfileProvider = v3->_userSocialProfileProvider;
    v3->_userSocialProfileProvider = v8;

    v10 = +[NSMutableArray array];
    pendingCompletionHandlers = v3->_pendingCompletionHandlers;
    v3->_pendingCompletionHandlers = v10;

    *&v3->_coalescedForceRefreshValue = 0;
  }

  return v3;
}

@end