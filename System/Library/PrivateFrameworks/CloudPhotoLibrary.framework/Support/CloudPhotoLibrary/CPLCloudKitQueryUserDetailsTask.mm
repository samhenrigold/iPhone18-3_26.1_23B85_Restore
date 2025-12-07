@interface CPLCloudKitQueryUserDetailsTask
- (CPLCloudKitQueryUserDetailsTask)initWithController:(id)controller participants:(id)participants completionHandler:(id)handler;
- (void)queryUserDetailsWithCurrentUserID:(id)d;
- (void)runOperations;
@end

@implementation CPLCloudKitQueryUserDetailsTask

- (CPLCloudKitQueryUserDetailsTask)initWithController:(id)controller participants:(id)participants completionHandler:(id)handler
{
  participantsCopy = participants;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = CPLCloudKitQueryUserDetailsTask;
  v11 = [(CPLCloudKitTransportTask *)&v16 initWithController:controller];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_participants, participants);
    v13 = [handlerCopy copy];
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v13;
  }

  return v12;
}

- (void)runOperations
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000A8140;
  v2[3] = &unk_100274018;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v2];
}

- (void)queryUserDetailsWithCurrentUserID:(id)d
{
  dCopy = d;
  selfCopy = self;
  v37 = 0;
  LOBYTE(self) = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v37];
  v26 = v37;
  if ((self & 1) == 0)
  {
    (*(selfCopy->_completionHandler + 2))();
    goto LABEL_26;
  }

  v25 = 272;
  if (!selfCopy->_participants)
  {
    completionHandler = selfCopy->_completionHandler;
    v24 = [CPLErrors incorrectParametersErrorForParameter:@"participants"];
    completionHandler[2](completionHandler, 0, v24);

    goto LABEL_26;
  }

  v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](selfCopy->_participants, "count")}];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = selfCopy->_participants;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = *v34;
  do
  {
    v8 = 0;
    do
    {
      if (*v34 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v33 + 1) + 8 * v8);
      email = [v9 email];

      if (email)
      {
        v11 = [CKUserIdentityLookupInfo alloc];
        email2 = [v9 email];
        v13 = [v11 initWithEmailAddress:email2];
LABEL_14:
        v20 = v13;

        if (!v20)
        {
          goto LABEL_17;
        }

        [v4 addObject:v20];
        goto LABEL_16;
      }

      phoneNumber = [v9 phoneNumber];

      if (phoneNumber)
      {
        v15 = [CKUserIdentityLookupInfo alloc];
        email2 = [v9 phoneNumber];
        v13 = [v15 initWithPhoneNumber:email2];
        goto LABEL_14;
      }

      userIdentifier = [v9 userIdentifier];

      if (userIdentifier)
      {
        v18 = [CKRecordID alloc];
        userIdentifier2 = [v9 userIdentifier];
        email2 = [v18 initWithRecordName:userIdentifier2];

        v13 = [[CKUserIdentityLookupInfo alloc] initWithUserRecordID:email2];
        goto LABEL_14;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v20 = sub_100003B40(v17);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v9;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Missing information to query for user identity for %@", &buf, 0xCu);
        }

LABEL_16:
      }

LABEL_17:
      v8 = v8 + 1;
    }

    while (v6 != v8);
    v21 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v43 count:16];
    v6 = v21;
  }

  while (v21);
LABEL_23:

  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x3032000000;
  v40 = sub_100004520;
  v41 = sub_100005374;
  v42 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(&selfCopy->super.super.isa + v25), "count")}];
  v22 = [[CKFetchShareParticipantsOperation alloc] initWithUserIdentityLookupInfos:v4];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1001AD4F4;
  v30[3] = &unk_100276BB8;
  v31 = dCopy;
  p_buf = &buf;
  [v22 setPerShareParticipantCompletionBlock:v30];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000A8668;
  v29[3] = &unk_100276BE0;
  v29[4] = selfCopy;
  v29[5] = &buf;
  [v22 setFetchShareParticipantsCompletionBlock:v29];
  [(CPLCloudKitTransportTask *)selfCopy launchOperation:v22 type:0 withContext:0];

  _Block_object_dispose(&buf, 8);
LABEL_26:
}

@end