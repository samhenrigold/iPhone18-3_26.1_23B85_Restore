@interface MSDAccount
+ (ACAccount)activeiTunesAccount;
- (BOOL)_accountHasLocalPlayableContent:(id)content;
- (BOOL)hasValidSubscription;
- (MSDAccount)initWithHomeIdentifier:(id)identifier;
- (MSDAccount)initWithHomeUserIdentifier:(id)identifier;
- (NSString)iTunesAccountName;
@end

@implementation MSDAccount

- (MSDAccount)initWithHomeUserIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = MSDAccount;
  v6 = [(MSDAccount *)&v11 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  if (identifierCopy)
  {
    objc_storeStrong(&v6->_homeUserIdentifier, identifier);
    v7->_syncLock._os_unfair_lock_opaque = 0;
LABEL_4:
    v8 = v7;
    goto LABEL_8;
  }

  v9 = sub_100030FE4(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1000195B8();
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (MSDAccount)initWithHomeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = MSDAccount;
  v6 = [(MSDAccount *)&v11 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  if (identifierCopy)
  {
    objc_storeStrong(&v6->_homeIdentifier, identifier);
LABEL_4:
    v8 = v7;
    goto LABEL_8;
  }

  v9 = sub_100030FE4(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1000195F8();
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (NSString)iTunesAccountName
{
  v3 = +[ACAccountStore ams_sharedAccountStore];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100018C70;
  v16 = sub_100018C80;
  v17 = 0;
  os_unfair_lock_lock(&self->_syncLock);
  objc_initWeak(&location, self);
  v4 = [v3 ams_mediaAccountForHomeWithIdentifier:self->_homeIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100018C88;
  v9[3] = &unk_100051818;
  objc_copyWeak(&v10, &location);
  v9[4] = &v12;
  v5 = sub_100030FE4([v4 resultWithTimeout:v9 completion:2.0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    username = [v13[5] username];
    *buf = 138412290;
    v19 = username;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User Active iTunes Account: %@", buf, 0xCu);
  }

  username2 = [v13[5] username];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v12, 8);

  return username2;
}

- (BOOL)hasValidSubscription
{
  if (qword_100059A80 != -1)
  {
    sub_1000196C4();
  }

  v3 = +[ACAccountStore ams_sharedAccountStore];
  v4 = [v3 ams_iTunesAccountWithHomeUserIdentifier:self->_homeUserIdentifier];

  if (v4)
  {
    ams_DSID = [v4 ams_DSID];
    v7 = [qword_100059A78 objectForKey:ams_DSID];
    v8 = v7;
    if (v7)
    {
      bOOLValue = [v7 BOOLValue];
    }

    else
    {
      v31 = 0;
      v32 = &v31;
      v33 = 0x2020000000;
      v34 = 1;
      v10 = dispatch_semaphore_create(0);
      v11 = sub_100030FE4(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138478083;
        v36 = v4;
        v37 = 2113;
        v38 = ams_DSID;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "UserAccount %{private}@ with DSID %{private}@", buf, 0x16u);
      }

      v12 = [ICUserIdentity specificAccountWithDSID:ams_DSID];
      v13 = sub_100030FE4(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v36 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "UserIdentity %{private}@", buf, 0xCu);
      }

      v25 = [[ICStoreRequestContext alloc] initWithIdentity:v12];
      v14 = [[ICMusicSubscriptionStatusRequest alloc] initWithStoreRequestContext:v25];
      v15 = MSDGenerateSignpostID([v14 setShouldReturnLastKnownStatusOnly:1]);
      v16 = MSDSignpostFacility(v15);
      v17 = v16;
      if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "CheckSubscriptionStatus", &unk_10003DCC2, buf, 2u);
      }

      objc_initWeak(buf, self);
      v18 = +[ICMusicSubscriptionStatusController sharedStatusController];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000191FC;
      v26[3] = &unk_100051860;
      v29 = &v31;
      objc_copyWeak(v30, buf);
      v19 = v12;
      v27 = v19;
      v30[1] = v15;
      v20 = v10;
      v28 = v20;
      [v18 performSubscriptionStatusRequest:v14 withStatusHandler:v26];
      v21 = dispatch_time(0, 1000000000 * MSiTunesCloudSubscriptionStatusMaxTimeOut);
      dispatch_semaphore_wait(v20, v21);
      v22 = qword_100059A78;
      v23 = [NSNumber numberWithBool:*(v32 + 24)];
      [v22 setObject:v23 forKey:ams_DSID];

      bOOLValue = *(v32 + 24);
      objc_destroyWeak(v30);

      objc_destroyWeak(buf);
      _Block_object_dispose(&v31, 8);
    }
  }

  else
  {
    ams_DSID = sub_100030FE4(v5);
    if (os_log_type_enabled(ams_DSID, OS_LOG_TYPE_ERROR))
    {
      sub_1000196D8();
    }

    bOOLValue = 0;
  }

  return bOOLValue & 1;
}

- (BOOL)_accountHasLocalPlayableContent:(id)content
{
  contentCopy = content;
  v4 = +[MPMediaQuery songsQuery];
  v5 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:contentCopy];

  [v4 setIgnoreSystemFilterPredicates:1];
  [v4 setMediaLibrary:v5];
  v6 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:MPMediaItemPropertyHasNonPurgeableAsset];
  [v4 addFilterPredicate:v6];

  LOBYTE(v6) = [v4 _hasItems];
  return v6;
}

+ (ACAccount)activeiTunesAccount
{
  v2 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiTunesAccount = [v2 ams_activeiTunesAccount];

  return ams_activeiTunesAccount;
}

@end