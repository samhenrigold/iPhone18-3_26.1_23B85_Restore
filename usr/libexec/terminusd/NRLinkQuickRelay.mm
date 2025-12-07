@interface NRLinkQuickRelay
- (BOOL)cancelWithReason:(id)reason;
- (BOOL)resume;
- (BOOL)sendControlData:(id)data;
- (BOOL)sendPacketData:(id)data;
- (BOOL)start;
- (BOOL)suspend;
- (id)copyStatusString;
- (id)initLinkWithQueue:(id)queue linkDelegate:(id)delegate nrUUID:(id)d;
- (void)invalidateIKESessionForClass:(unsigned __int8)class;
- (void)invalidateLink;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock;
- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withOptions:(id)options;
- (void)session:(id)session didReceiveData:(id)data;
- (void)session:(id)session receivedInvitationAcceptFromID:(id)d;
- (void)session:(id)session receivedInvitationCancelFromID:(id)d;
- (void)session:(id)session receivedInvitationDeclineFromID:(id)d;
- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error;
- (void)sessionStarted:(id)started;
- (void)setPacketReceiver:(id)receiver;
@end

@implementation NRLinkQuickRelay

- (void)session:(id)session receivedInvitationDeclineFromID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NRLink *)self state]== 255)
  {
    v13 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_14;
    }

    v11 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v11, 1, "%s%.30s:%-4d %@: Ignoring callback as link is cancelled", ", "[NRLinkQuickRelay session:receivedInvitationDeclineFromID:]"", 2779, copyDescription);
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  if (sessionCopy)
  {
    if (self)
    {
      v8 = *(&self->_idsService + 7);
    }

    else
    {
      v8 = 0;
    }

    v9 = _NRCopyLogObjectForNRUUID();
    if (v8 != sessionCopy)
    {
      v10 = _NRLogIsLevelEnabled();

      if (!v10)
      {
        goto LABEL_14;
      }

      v11 = _NRCopyLogObjectForNRUUID();
      copyDescription2 = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v11, 17, "%@: Sessions do not match: expected %@, started %@", copyDescription2, *(&self->_idsService + 7), sessionCopy);

      goto LABEL_13;
    }

    v16 = _NRLogIsLevelEnabled();

    if (!v16)
    {
      goto LABEL_14;
    }

    v11 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: Destination %@ declined invitation for session %@", ", "[NRLinkQuickRelay session:receivedInvitationDeclineFromID:]"", 2785, copyDescription, dCopy, sessionCopy);
    goto LABEL_12;
  }

  v17 = sub_100046E64();
  v18 = _NRLogIsLevelEnabled();

  if (v18)
  {
    v11 = sub_100046E64();
    _NRLogWithArgs(v11, 17, "%s called with null session", "[NRLinkQuickRelay session:receivedInvitationDeclineFromID:]");
    goto LABEL_13;
  }

LABEL_14:
}

- (void)session:(id)session receivedInvitationCancelFromID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NRLink *)self state]== 255)
  {
    v13 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_14;
    }

    v11 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v11, 1, "%s%.30s:%-4d %@: Ignoring callback as link is cancelled", ", "[NRLinkQuickRelay session:receivedInvitationCancelFromID:]"", 2766, copyDescription);
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  if (sessionCopy)
  {
    if (self)
    {
      v8 = *(&self->_idsService + 7);
    }

    else
    {
      v8 = 0;
    }

    v9 = _NRCopyLogObjectForNRUUID();
    if (v8 != sessionCopy)
    {
      v10 = _NRLogIsLevelEnabled();

      if (!v10)
      {
        goto LABEL_14;
      }

      v11 = _NRCopyLogObjectForNRUUID();
      copyDescription2 = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v11, 17, "%@: Sessions do not match: expected %@, started %@", copyDescription2, *(&self->_idsService + 7), sessionCopy);

      goto LABEL_13;
    }

    v16 = _NRLogIsLevelEnabled();

    if (!v16)
    {
      goto LABEL_14;
    }

    v11 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: Destination %@ cancelled invitation for session %@", ", "[NRLinkQuickRelay session:receivedInvitationCancelFromID:]"", 2772, copyDescription, dCopy, sessionCopy);
    goto LABEL_12;
  }

  v17 = sub_100046E64();
  v18 = _NRLogIsLevelEnabled();

  if (v18)
  {
    v11 = sub_100046E64();
    _NRLogWithArgs(v11, 17, "%s called with null session", "[NRLinkQuickRelay session:receivedInvitationCancelFromID:]");
    goto LABEL_13;
  }

LABEL_14:
}

- (void)session:(id)session receivedInvitationAcceptFromID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NRLink *)self state]== 255)
  {
    v13 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_14;
    }

    v11 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v11, 1, "%s%.30s:%-4d %@: Ignoring callback as link is cancelled", ", "[NRLinkQuickRelay session:receivedInvitationAcceptFromID:]"", 2753, copyDescription);
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  if (sessionCopy)
  {
    if (self)
    {
      v8 = *(&self->_idsService + 7);
    }

    else
    {
      v8 = 0;
    }

    v9 = _NRCopyLogObjectForNRUUID();
    if (v8 != sessionCopy)
    {
      v10 = _NRLogIsLevelEnabled();

      if (!v10)
      {
        goto LABEL_14;
      }

      v11 = _NRCopyLogObjectForNRUUID();
      copyDescription2 = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v11, 17, "%@: Sessions do not match: expected %@, started %@", copyDescription2, *(&self->_idsService + 7), sessionCopy);

      goto LABEL_13;
    }

    v16 = _NRLogIsLevelEnabled();

    if (!v16)
    {
      goto LABEL_14;
    }

    v11 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: Destination %@ accepted invitation for session %@", ", "[NRLinkQuickRelay session:receivedInvitationAcceptFromID:]"", 2759, copyDescription, dCopy, sessionCopy);
    goto LABEL_12;
  }

  v17 = sub_100046E64();
  v18 = _NRLogIsLevelEnabled();

  if (v18)
  {
    v11 = sub_100046E64();
    _NRLogWithArgs(v11, 17, "%s called with null session", "[NRLinkQuickRelay session:receivedInvitationAcceptFromID:]");
    goto LABEL_13;
  }

LABEL_14:
}

- (void)session:(id)session didReceiveData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NRLink *)self state]== 255)
  {
    v20 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_15;
    }

    v18 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v18, 1, "%s%.30s:%-4d %@: Ignoring callback as link is cancelled", ", "[NRLinkQuickRelay session:didReceiveData:]"", 2734, copyDescription);
    goto LABEL_13;
  }

  if (sessionCopy)
  {
    if (dataCopy)
    {
      if (self)
      {
        v8 = *(&self->_idsService + 7);
      }

      else
      {
        v8 = 0;
      }

      sessionID = [v8 sessionID];
      v10 = [sessionID isEqualToString:sessionCopy];

      if ((v10 & 1) == 0)
      {
        v11 = _NRCopyLogObjectForNRUUID();
        v12 = _NRLogIsLevelEnabled();

        if (v12)
        {
          v13 = _NRCopyLogObjectForNRUUID();
          copyDescription2 = [(NRLink *)self copyDescription];
          sessionID2 = [*(&self->_idsService + 7) sessionID];
          _NRLogWithArgs(v13, 17, "%@: Received data from a different session: %@, expected %@", copyDescription2, sessionCopy, sessionID2);
        }
      }

      v16 = _NRCopyLogObjectForNRUUID();
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
        v18 = _NRCopyLogObjectForNRUUID();
        copyDescription = [(NRLink *)self copyDescription];
        _NRLogWithArgs(v18, 0, "%s%.30s:%-4d %@: Session for %@ received data %@", ", "[NRLinkQuickRelay session:didReceiveData:]"", 2746, copyDescription, sessionCopy, dataCopy);
LABEL_13:

LABEL_14:
      }
    }

    else
    {
      v24 = sub_100046E64();
      v25 = _NRLogIsLevelEnabled();

      if (v25)
      {
        v18 = sub_100046E64();
        _NRLogWithArgs(v18, 17, "%s called with null data");
        goto LABEL_14;
      }
    }
  }

  else
  {
    v22 = sub_100046E64();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      v18 = sub_100046E64();
      _NRLogWithArgs(v18, 17, "%s called with null uniqueID");
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error
{
  v6 = *&reason;
  endedCopy = ended;
  errorCopy = error;
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NRLink *)self state]== 255)
  {
    v16 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v18 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v18, 1, "%s%.30s:%-4d %@: Ignoring callback as link is cancelled", ", "[NRLinkQuickRelay sessionEnded:withReason:error:]"", 2675, copyDescription);
    }
  }

  else
  {
    if (endedCopy)
    {
      sessionID = [endedCopy sessionID];
      sub_100047AF0(self, 10009, sessionID);

      [(NRLink *)self reportEvent:10009 detailsFormat:@"%@, %u, %@", endedCopy, v6, errorCopy];
      if (self)
      {
        v11 = *(&self->_idsService + 7);
      }

      else
      {
        v11 = 0;
      }

      v12 = _NRCopyLogObjectForNRUUID();
      if (v11 != endedCopy)
      {
        v13 = _NRLogIsLevelEnabled();

        if (v13)
        {
          v14 = _NRCopyLogObjectForNRUUID();
          copyDescription2 = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v14, 17, "%@: Sessions do not match: expected %@, started %@", copyDescription2, *(&self->_idsService + 7), endedCopy);
        }

        goto LABEL_37;
      }

      v20 = _NRLogIsLevelEnabled();

      if (v20)
      {
        v21 = _NRCopyLogObjectForNRUUID();
        copyDescription3 = [(NRLink *)self copyDescription];
        _NRLogWithArgs(v21, 0, "%s%.30s:%-4d %@: Session ended: %@ with reason %u, error %@", ", "[NRLinkQuickRelay sessionEnded:withReason:error:]"", 2684, copyDescription3, endedCopy, v6, errorCopy);
      }

      self->_idsSessionStarted = 0;
      self->_invitationInProgress = 0;
      v23 = *(&self->_pathEvaluator + 7);
      if (!v23)
      {
        goto LABEL_20;
      }

      if (*(v23 + 152))
      {
        v24 = nr_absolute_time();
        v25 = *(&self->_pathEvaluator + 7);
        if (!v25)
        {
LABEL_20:
          v27 = *(&self->_pathEvaluator + 7);
          if (v27)
          {
            *(v27 + 108) = v6;
          }

          if (self->_dNexusReadSourceSuspended)
          {
            dispatch_resume(*(&self->_nexusOutputRing + 7));
            self->_dNexusReadSourceSuspended = 0;
          }

          if (v6 == 21 && ([(NRLink *)self ikeClassCEstablished]|| [(NRLink *)self ikeClassDEstablished]))
          {
            sub_100047C04(self);
          }

          else
          {
            if ([(NRLink *)self ikeClassCEstablished]|| [(NRLink *)self ikeClassDEstablished])
            {
              v28 = _NRCopyLogObjectForNRUUID();
              v29 = _NRLogIsLevelEnabled();

              if (v29)
              {
                v30 = _NRCopyLogObjectForNRUUID();
                copyDescription4 = [(NRLink *)self copyDescription];
                _NRLogWithArgs(v30, 0, "%s%.30s:%-4d %@: Not tearing down IKE", ", "[NRLinkQuickRelay sessionEnded:withReason:error:]"", 2714, copyDescription4);
              }

              sub_100047D2C(self);
            }

            else
            {
              v32 = _NRCopyLogObjectForNRUUID();
              v33 = _NRLogIsLevelEnabled();

              if (v33)
              {
                v34 = _NRCopyLogObjectForNRUUID();
                copyDescription5 = [(NRLink *)self copyDescription];
                _NRLogWithArgs(v34, 0, "%s%.30s:%-4d %@: Tearing down everything", ", "[NRLinkQuickRelay sessionEnded:withReason:error:]"", 2719, copyDescription5);
              }

              sub_100047D2C(self);
              [(NRLinkQuickRelay *)self invalidateIKESessionForClass:4];
              [(NRLinkQuickRelay *)self invalidateIKESessionForClass:3];
            }

            [(NRLinkQuickRelay *)self suspend];
          }

          goto LABEL_37;
        }

        v26 = &OBJC_IVAR___NRAnalyticsCmpnLinkQuickRelay__idsSessionEnd;
      }

      else
      {
        if (!*(v23 + 120))
        {
          goto LABEL_20;
        }

        *(v23 + 104) = 1;
        v24 = nr_absolute_time();
        v25 = *(&self->_pathEvaluator + 7);
        if (!v25)
        {
          goto LABEL_20;
        }

        v26 = &OBJC_IVAR___NRAnalyticsCmpnLinkQuickRelay__idsSessionSendInvitationEnd;
      }

      *(v25 + *v26) = v24;
      goto LABEL_20;
    }

    v36 = sub_100046E64();
    v37 = _NRLogIsLevelEnabled();

    if (v37)
    {
      v38 = sub_100046E64();
      _NRLogWithArgs(v38, 17, "%s called with null session", "[NRLinkQuickRelay sessionEnded:withReason:error:]");
    }
  }

LABEL_37:
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"_connection.connectionState", object, change, context}])
  {
    queue = [(NRLink *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100048164;
    block[3] = &unk_1001FD3C8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)sessionStarted:(id)started
{
  startedCopy = started;
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NRLink *)self state]== 255)
  {
    v16 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v14, 1, "%s%.30s:%-4d %@: Ignoring callback as link is cancelled", ", "[NRLinkQuickRelay sessionStarted:]"", 2510, copyDescription);

LABEL_24:
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  if (!startedCopy)
  {
    v30 = sub_100046E64();
    v31 = _NRLogIsLevelEnabled();

    if (v31)
    {
      v32 = sub_100046E64();
      _NRLogWithArgs(v32, 17, "%s called with null session", "[NRLinkQuickRelay sessionStarted:]");
    }

    goto LABEL_25;
  }

  v7 = _NRCopyLogObjectForNRUUID();
  v8 = _NRLogIsLevelEnabled();

  if (v8)
  {
    v9 = _NRCopyLogObjectForNRUUID();
    copyDescription2 = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v9, 0, "%s%.30s:%-4d %@: Session started: %@", ", "[NRLinkQuickRelay sessionStarted:]"", 2515, copyDescription2, startedCopy);
  }

  v11 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  if (*(&self->_idsService + 7) == startedCopy)
  {
    self->_idsSessionStarted = 1;
    self->_invitationInProgress = 0;
    self->_invitationRetryCounter = 0;
    v14 = +[NSDate date];
    objc_storeStrong((&self->_idsDestination + 7), v14);
    v19 = *(&self->_pathEvaluator + 7);
    if (!v19)
    {
      goto LABEL_18;
    }

    if (*(v19 + 120))
    {
      v20 = nr_absolute_time();
      v21 = *(&self->_pathEvaluator + 7);
      if (!v21)
      {
        goto LABEL_18;
      }

      v22 = &OBJC_IVAR___NRAnalyticsCmpnLinkQuickRelay__idsSessionSendInvitationEnd;
    }

    else
    {
      if (!*(v19 + 136) || (v20 = nr_absolute_time(), (v21 = *(&self->_pathEvaluator + 7)) == 0))
      {
LABEL_18:
        v23 = nr_absolute_time();
        v24 = *(&self->_pathEvaluator + 7);
        if (v24)
        {
          *(v24 + 152) = v23;
        }

        sub_100047F74(self);
        nrUUID = [(NRLink *)self nrUUID];
        copyDescription3 = sub_100163A30(NRDLocalDevice, nrUUID);

        if (copyDescription3)
        {
          sub_100168638(copyDescription3, (&self->_connection + 7));
          sub_100167D5C(copyDescription3, (&self->_localAddrClassD.__u6_addr32[3] + 3));
          nrUUID = *(&self->_ipHeaderOffset + 7);
          v11 = *(&self->_idsService + 7);
          queue2 = [(NRLink *)self queue];
          if (qword_1002292C0 == -1)
          {
LABEL_22:
            v26 = qword_1002292C8;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100050704;
            block[3] = &unk_1001FCE28;
            v40 = nrUUID;
            v41 = v11;
            v42 = queue2;
            selfCopy = self;
            v27 = queue2;
            v28 = v11;
            v29 = nrUUID;
            dispatch_async(v26, block);

            goto LABEL_23;
          }
        }

        else
        {
          v33 = sub_100046E64();
          v34 = _NRLogIsLevelEnabled();

          v14 = "[NRLinkQuickRelay sessionStarted:]";
          if (v34)
          {
            v35 = sub_100046E64();
            _NRLogWithArgs(v35, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", ", "[NRLinkQuickRelay sessionStarted:]"", 2535);
          }

          startedCopy = _os_log_pack_size();
          self = (&block[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
          v36 = __error();
          v37 = _os_log_pack_fill(self, startedCopy, *v36, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
          *v37 = 136446210;
          *(v37 + 4) = "[NRLinkQuickRelay sessionStarted:]";
          sub_100046E64();
          _NRLogAbortWithPack();
        }

        dispatch_once(&qword_1002292C0, &stru_1001FC4B0);
        goto LABEL_22;
      }

      v22 = &OBJC_IVAR___NRAnalyticsCmpnLinkQuickRelay__idsSessionReceiveInvitationEnd;
    }

    *(v21 + *v22) = v20;
    goto LABEL_18;
  }

  v12 = _NRCopyLogObjectForNRUUID();
  v13 = _NRLogIsLevelEnabled();

  if (v13)
  {
    v14 = _NRCopyLogObjectForNRUUID();
    copyDescription3 = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v14, 17, "%@: Sessions do not match: expected %@, started %@", copyDescription3, *(&self->_idsService + 7), startedCopy);
LABEL_23:

    goto LABEL_24;
  }

LABEL_25:
}

- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withOptions:(id)options
{
  serviceCopy = service;
  accountCopy = account;
  sessionCopy = session;
  dCopy = d;
  optionsCopy = options;
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NRLink *)self state]!= 255)
  {
    if (serviceCopy)
    {
      if (accountCopy)
      {
        if (sessionCopy)
        {
          v18 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v20 = _NRCopyLogObjectForNRUUID();
            copyDescription = [(NRLink *)self copyDescription];
            _NRLogWithArgs(v20, 1, "%s%.30s:%-4d %@: Invite received", ", "[NRLinkQuickRelay service:account:inviteReceivedForSession:fromID:withOptions:]"", 2433, copyDescription);
          }

          v22 = _NRCopyLogObjectForNRUUID();
          v23 = _NRLogIsLevelEnabled();

          if (v23)
          {
            v24 = _NRCopyLogObjectForNRUUID();
            copyDescription2 = [(NRLink *)self copyDescription];
            _NRLogWithArgs(v24, 1, "%s%.30s:%-4d %@: \tservice: %@", ", "[NRLinkQuickRelay service:account:inviteReceivedForSession:fromID:withOptions:]"", 2434, copyDescription2, serviceCopy);
          }

          v26 = _NRCopyLogObjectForNRUUID();
          v27 = _NRLogIsLevelEnabled();

          if (v27)
          {
            v28 = _NRCopyLogObjectForNRUUID();
            copyDescription3 = [(NRLink *)self copyDescription];
            _NRLogWithArgs(v28, 1, "%s%.30s:%-4d %@: \taccount: %@", ", "[NRLinkQuickRelay service:account:inviteReceivedForSession:fromID:withOptions:]"", 2435, copyDescription3, accountCopy);
          }

          v30 = _NRCopyLogObjectForNRUUID();
          v31 = _NRLogIsLevelEnabled();

          if (v31)
          {
            v32 = _NRCopyLogObjectForNRUUID();
            copyDescription4 = [(NRLink *)self copyDescription];
            _NRLogWithArgs(v32, 1, "%s%.30s:%-4d %@: \tsession: %@", ", "[NRLinkQuickRelay service:account:inviteReceivedForSession:fromID:withOptions:]"", 2436, copyDescription4, sessionCopy);
          }

          v34 = _NRCopyLogObjectForNRUUID();
          v35 = _NRLogIsLevelEnabled();

          if (v35)
          {
            v36 = _NRCopyLogObjectForNRUUID();
            copyDescription5 = [(NRLink *)self copyDescription];
            _NRLogWithArgs(v36, 1, "%s%.30s:%-4d %@: \tfrom: %@", ", "[NRLinkQuickRelay service:account:inviteReceivedForSession:fromID:withOptions:]"", 2437, copyDescription5, dCopy);
          }

          v38 = _NRCopyLogObjectForNRUUID();
          v39 = _NRLogIsLevelEnabled();

          if (v39)
          {
            v40 = _NRCopyLogObjectForNRUUID();
            copyDescription6 = [(NRLink *)self copyDescription];
            _NRLogWithArgs(v40, 1, "%s%.30s:%-4d %@: \toptions: %@", ", "[NRLinkQuickRelay service:account:inviteReceivedForSession:fromID:withOptions:]"", 2438, copyDescription6, optionsCopy);
          }

          sessionID = [sessionCopy sessionID];
          sub_100047AF0(self, 10004, sessionID);

          [(NRLink *)self reportEvent:10004 detailsFormat:@"%@", sessionCopy];
          v43 = [*(&self->_ipHeaderOffset + 7) deviceForFromID:dCopy];
          if ([v43 isDefaultPairedDevice])
          {
            if (self->_invitationInProgress)
            {
              v44 = *(&self->_pathEvaluator + 7);
              if (v44)
              {
                ++v44[14];
              }

              [(NRLink *)self reportEvent:10005 detailsFormat:@"Cancelling sent: %@, keep received: %@", *(&self->_idsService + 7), sessionCopy];
              [(NRLink *)self reportEvent:10007 detailsFormat:@"%@", *(&self->_idsService + 7)];
              [*(&self->_idsService + 7) cancelInvitation];
              v45 = *(&self->_pathEvaluator + 7);
              if (v45)
              {
                *(v45 + 120) = 0;
              }
            }

            if (*(&self->_idsService + 7))
            {
              [(NRLink *)self reportEvent:10019];
              sub_100047D2C(self);
            }

            objc_storeStrong((&self->_idsService + 7), session);
            self->_idsSessionIsIncoming = 1;
            v46 = *(&self->_idsService + 7);
            queue2 = [(NRLink *)self queue];
            [v46 setDelegate:self queue:queue2];

            v62 = IDSSessionForceInternetInvitationKey;
            v63 = &__kCFBooleanTrue;
            v48 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
            [sessionCopy setPreferences:v48];

            [sessionCopy acceptInvitation];
            [(NRLink *)self reportEvent:10006 detailsFormat:@"%@", *(&self->_idsService + 7)];
            v49 = nr_absolute_time();
            v50 = *(&self->_pathEvaluator + 7);
            if (v50)
            {
              *(v50 + 136) = v49;
            }
          }

          else
          {
            [(NRLink *)self reportEvent:10026 detailsFormat:@"Remote device is not the default paired device: %@/%@", sessionCopy, dCopy];
            [sessionCopy declineInvitation];
          }

          goto LABEL_32;
        }

        v60 = sub_100046E64();
        v61 = _NRLogIsLevelEnabled();

        if (!v61)
        {
          goto LABEL_32;
        }

        v57 = sub_100046E64();
        _NRLogWithArgs(v57, 17, "%s called with null session");
      }

      else
      {
        v58 = sub_100046E64();
        v59 = _NRLogIsLevelEnabled();

        if (!v59)
        {
          goto LABEL_32;
        }

        v57 = sub_100046E64();
        _NRLogWithArgs(v57, 17, "%s called with null account");
      }
    }

    else
    {
      v55 = sub_100046E64();
      v56 = _NRLogIsLevelEnabled();

      if (!v56)
      {
        goto LABEL_32;
      }

      v57 = sub_100046E64();
      _NRLogWithArgs(v57, 17, "%s called with null service");
    }

    goto LABEL_32;
  }

  v51 = _NRCopyLogObjectForNRUUID();
  v52 = _NRLogIsLevelEnabled();

  if (v52)
  {
    v53 = _NRCopyLogObjectForNRUUID();
    copyDescription7 = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v53, 1, "%s%.30s:%-4d %@: Declining session invite due to link state", ", "[NRLinkQuickRelay service:account:inviteReceivedForSession:fromID:withOptions:]"", 2422, copyDescription7);
  }

  [(NRLink *)self reportEvent:10026 detailsFormat:@"Link is cancelled: %@/%@/%@", self, sessionCopy, dCopy];
  [sessionCopy declineInvitation];
LABEL_32:
}

- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock
{
  listenerCopy = listener;
  sessionCopy = session;
  configCopy = config;
  childConfigCopy = childConfig;
  blockCopy = block;
  responseBlockCopy = responseBlock;
  v20 = responseBlockCopy;
  if (!listenerCopy)
  {
    v105 = sub_100046E64();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_23;
    }

    v107 = sub_100046E64();
    _NRLogWithArgs(v107, 17, "%s called with null listener");
LABEL_78:

    goto LABEL_23;
  }

  if (!sessionCopy)
  {
    v108 = sub_100046E64();
    v109 = _NRLogIsLevelEnabled();

    if (!v109)
    {
      goto LABEL_23;
    }

    v107 = sub_100046E64();
    _NRLogWithArgs(v107, 17, "%s called with null session");
    goto LABEL_78;
  }

  if (!configCopy)
  {
    v110 = sub_100046E64();
    v111 = _NRLogIsLevelEnabled();

    if (!v111)
    {
      goto LABEL_23;
    }

    v107 = sub_100046E64();
    _NRLogWithArgs(v107, 17, "%s called with null sessionConfig");
    goto LABEL_78;
  }

  if (!blockCopy)
  {
    v112 = sub_100046E64();
    v113 = _NRLogIsLevelEnabled();

    if (!v113)
    {
      goto LABEL_23;
    }

    v107 = sub_100046E64();
    _NRLogWithArgs(v107, 17, "%s called with null validateAuthBlock");
    goto LABEL_78;
  }

  if (!responseBlockCopy)
  {
    v114 = sub_100046E64();
    v115 = _NRLogIsLevelEnabled();

    if (!v115)
    {
      goto LABEL_23;
    }

    v107 = sub_100046E64();
    _NRLogWithArgs(v107, 17, "%s called with null responseBlock");
    goto LABEL_78;
  }

  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  v22 = _NRCopyLogObjectForNRUUID();
  v23 = _NRLogIsLevelEnabled();

  if (v23)
  {
    v24 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs(v24, 0, "%s%.30s:%-4d %@: Got config request for listener %@ session %@ sessionConfig %@ childConfig %@", ", "[NRLinkQuickRelay requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 2263, copyDescription, listenerCopy, sessionCopy, configCopy, childConfigCopy);
  }

  state = self->super._state;
  v142 = childConfigCopy;
  if (state == 255)
  {
    goto LABEL_20;
  }

  localIdentifier = [configCopy localIdentifier];
  identifierType = [localIdentifier identifierType];

  if (identifierType == 11)
  {
    remoteIdentifier = [configCopy remoteIdentifier];
    identifierType2 = [remoteIdentifier identifierType];

    if (identifierType2 == 11)
    {
      nrUUID = [(NRLink *)self nrUUID];
      localIdentifier4 = sub_100163A30(NRDLocalDevice, nrUUID);

      v141 = localIdentifier4;
      if (!localIdentifier4)
      {
        v116 = sub_100046E64();
        v117 = _NRLogIsLevelEnabled();

        if (v117)
        {
          v118 = sub_100046E64();
          _NRLogWithArgs(v118, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", ", "[NRLinkQuickRelay requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 2283);
        }

        v119 = _os_log_pack_size();
        sessionCopy = &v136 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v120 = __error();
        v121 = _os_log_pack_fill(sessionCopy, v119, *v120, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
        *v121 = 136446210;
        *(v121 + 4) = "[NRLinkQuickRelay requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]";
        sub_100046E64();
        _NRLogAbortWithPack();
LABEL_82:
        dispatch_once(&qword_1002292E8, &stru_1001FC558);
LABEL_38:
        v62 = v142;
        v63 = qword_1002292E0;
        v64 = [localIdentifier4 isEqual:v63];

        if (v64)
        {
          v65 = nr_absolute_time();
          v66 = *(&self->_pathEvaluator + 7);
          if (v66)
          {
            *(v66 + 56) = v65;
            v67 = *(&self->_pathEvaluator + 7);
            if (v67)
            {
              ++v67[10];
            }

            if (v62)
            {
              goto LABEL_43;
            }
          }

          else
          {

            if (v62)
            {
              goto LABEL_43;
            }
          }

          if ([(NRLink *)self hasCompanionDatapath])
          {
            [(NRLink *)self reportEvent:3024 detailsFormat:@"ClassD %@", sessionCopy];
LABEL_101:
            v36 = childConfigCopy;
            goto LABEL_94;
          }

LABEL_43:
          v68 = sub_100003490();
          dispatch_assert_queue_V2(v68);

          v69 = sub_1001672A0(childConfigCopy, @"0");
          v70 = sub_100003490();
          dispatch_assert_queue_V2(v70);

          v71 = sub_1001677D0(childConfigCopy, @"0");
          v37 = sub_100147400(0, childConfigCopy, 4);
          v72 = [NEIKEv2ConfigurationMessage alloc];
          v73 = [NEIKEv2InitiatorTransportIPv6Address alloc];
          v137 = v71;
          v74 = [v73 initWithAddress:v71];
          v144[0] = v74;
          v75 = [NEIKEv2ResponderTransportIPv6Address alloc];
          v138 = v69;
          v76 = [v75 initWithAddress:v69];
          v144[1] = v76;
          v77 = [NSArray arrayWithObjects:v144 count:2];
          v78 = [v72 initWithWithAttributes:v77];
          [v37 setConfigurationReply:v78];

          blockCopy = v139;
          if (v139[2](v139, v37))
          {
            v79 = 4;
            [(NRLinkQuickRelay *)self invalidateIKESessionForClass:4];
            objc_storeStrong((&self->_ikeListener + 7), session);
            v80 = @"ClassD %@";
LABEL_54:
            listenerCopy = v140;
            sub_10004A3CC(self, v79);
            [(NRLink *)self reportEvent:3016 detailsFormat:v80, sessionCopy];

LABEL_56:
            if (self->super._virtualInterface)
            {

              virtualInterface = self->super._virtualInterface;
              v98 = sub_100146D34(1, 0);
              if (![(NRLink *)self hasCompanionDatapath])
              {

                virtualInterface = 0;
                v98 = 0;
              }

              (v20)[2](v20, v37, v98, virtualInterface);

              goto LABEL_22;
            }

            v122 = _NRCopyLogObjectForNRUUID();
            v123 = _NRLogIsLevelEnabled();

            if (v123)
            {
              v124 = _NRCopyLogObjectForNRUUID();
              copyDescription2 = [(NRLink *)self copyDescription];
              _NRLogWithArgs(v124, 17, "%@: virtualInterface is NULL", copyDescription2);
            }

            goto LABEL_64;
          }

          [(NRLink *)self reportEvent:3021 detailsFormat:@"ClassD %@", sessionCopy];

          goto LABEL_66;
        }

        localIdentifier2 = [configCopy localIdentifier];
        if (qword_1002292F8 != -1)
        {
          dispatch_once(&qword_1002292F8, &stru_1001FC578);
        }

        v82 = qword_1002292F0;
        v83 = [localIdentifier2 isEqual:v82];

        if (!v83)
        {
          v37 = 0;
          blockCopy = v139;
          listenerCopy = v140;
          goto LABEL_56;
        }

        v84 = nr_absolute_time();
        v85 = *(&self->_pathEvaluator + 7);
        if (v85)
        {
          *(v85 + 40) = v84;
          v86 = *(&self->_pathEvaluator + 7);
          if (v86)
          {
            ++v86[9];
          }

          if (v62)
          {
            goto LABEL_52;
          }
        }

        else
        {

          if (v62)
          {
            goto LABEL_52;
          }
        }

        if ([(NRLink *)self hasCompanionDatapath])
        {
          [(NRLink *)self reportEvent:3024 detailsFormat:@"ClassC %@", sessionCopy];
          goto LABEL_101;
        }

LABEL_52:
        v87 = sub_100003490();
        dispatch_assert_queue_V2(v87);

        v88 = sub_1001679E0(childConfigCopy, @"0");
        v89 = sub_100003490();
        dispatch_assert_queue_V2(v89);

        v90 = sub_100167B9C(childConfigCopy, @"0");
        v37 = sub_100147400(0, childConfigCopy, 3);
        v91 = [NEIKEv2ConfigurationMessage alloc];
        v92 = [[NEIKEv2InitiatorTransportIPv6Address alloc] initWithAddress:v90];
        v143[0] = v92;
        v93 = [NEIKEv2ResponderTransportIPv6Address alloc];
        v138 = v88;
        v94 = [v93 initWithAddress:v88];
        v143[1] = v94;
        v95 = [NSArray arrayWithObjects:v143 count:2];
        v96 = [v91 initWithWithAttributes:v95];
        [v37 setConfigurationReply:v96];

        blockCopy = v139;
        if (v139[2](v139, v37))
        {
          v137 = v90;
          v79 = 3;
          [(NRLinkQuickRelay *)self invalidateIKESessionForClass:3];
          sub_1000522F4(self, sessionCopy);
          v80 = @"ClassC %@";
          goto LABEL_54;
        }

        [(NRLink *)self reportEvent:3021 detailsFormat:@"ClassC %@", sessionCopy];

LABEL_66:
        listenerCopy = v140;
        v36 = v141;
        goto LABEL_67;
      }

      localIdentifier3 = [configCopy localIdentifier];
      remoteIdentifier2 = [configCopy remoteIdentifier];
      v35 = [localIdentifier3 isEqual:remoteIdentifier2];

      v139 = blockCopy;
      v140 = listenerCopy;
      if (v35)
      {
        childConfigCopy = v141;
        if ((*(v141 + 49) & 2) != 0)
        {
          [(NRLink *)self reportEvent:3022 detailsFormat:@"%@ %@", sessionCopy, v141];
          v36 = v141;
          v37 = 0;
LABEL_67:

          goto LABEL_21;
        }

LABEL_37:
        localIdentifier4 = [configCopy localIdentifier];
        if (qword_1002292E8 == -1)
        {
          goto LABEL_38;
        }

        goto LABEL_82;
      }

      localIdentifier5 = [configCopy localIdentifier];
      if (qword_1002292E8 != -1)
      {
        dispatch_once(&qword_1002292E8, &stru_1001FC558);
      }

      v46 = qword_1002292E0;
      if ([localIdentifier5 isEqual:v46])
      {
      }

      else
      {
        localIdentifier6 = [configCopy localIdentifier];
        if (qword_1002292F8 != -1)
        {
          dispatch_once(&qword_1002292F8, &stru_1001FC578);
        }

        v48 = qword_1002292F0;
        v49 = [localIdentifier6 isEqual:v48];

        if ((v49 & 1) == 0)
        {
          v99 = _NRCopyLogObjectForNRUUID();
          v100 = _NRLogIsLevelEnabled();

          if (v100)
          {
            v101 = _NRCopyLogObjectForNRUUID();
            copyDescription3 = [(NRLink *)self copyDescription];
            localIdentifier7 = [configCopy localIdentifier];
            remoteIdentifier3 = [configCopy remoteIdentifier];
            _NRLogWithArgs(v101, 16, "%s%.30s:%-4d %@: Local identifier %@ does not match remote identifier %@", ", "[NRLinkQuickRelay requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 2291, copyDescription3, localIdentifier7, remoteIdentifier3);
          }

          v37 = 0;
LABEL_64:
          blockCopy = v139;
          listenerCopy = v140;
          v36 = v141;
          goto LABEL_67;
        }
      }

      remoteIdentifier4 = [configCopy remoteIdentifier];
      localIdentifier8 = [configCopy localIdentifier];
      v52 = sub_1001646B4(NRDLocalDevice, remoteIdentifier4, localIdentifier8, sessionCopy);

      v53 = _NRCopyLogObjectForNRUUID();
      if (v52)
      {
        v54 = _NRLogIsLevelEnabled();

        if (v54)
        {
          v55 = _NRCopyLogObjectForNRUUID();
          copyDescription4 = [(NRLink *)self copyDescription];
          v57 = v52->_identity;
          _NRLogWithArgs(v55, 1, "%s%.30s:%-4d %@: Decrypted device identity %@", ", "[NRLinkQuickRelay requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 2303, copyDescription4, v57);
        }

        v58 = v52->_nrUUID;

        if (v58)
        {
          v59 = v52->_nrUUID;
          nrUUID2 = [(NRLink *)self nrUUID];
          v61 = [(NSUUID *)v59 isEqual:nrUUID2];

          if (v61)
          {

            childConfigCopy = v141;
            goto LABEL_37;
          }

          v132 = _NRCopyLogObjectForNRUUID();
          v133 = _NRLogIsLevelEnabled();

          if (v133)
          {
            v127 = _NRCopyLogObjectForNRUUID();
            copyDescription5 = [(NRLink *)self copyDescription];
            v131 = v52->_identity;
            v134 = v52->_nrUUID;
            nrUUID3 = [(NRLink *)self nrUUID];
            _NRLogWithArgs(v127, 16, "%s%.30s:%-4d %@: Different device found for identity %@ (%@ != %@)", ", "[NRLinkQuickRelay requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 2314, copyDescription5, v131, v134, nrUUID3);

            goto LABEL_91;
          }
        }

        else
        {
          v129 = _NRCopyLogObjectForNRUUID();
          v130 = _NRLogIsLevelEnabled();

          if (v130)
          {
            v127 = _NRCopyLogObjectForNRUUID();
            copyDescription5 = [(NRLink *)self copyDescription];
            v131 = v52->_identity;
            _NRLogWithArgs(v127, 16, "%s%.30s:%-4d %@: No device found for identity %@", ", "[NRLinkQuickRelay requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 2307, copyDescription5, v131);
LABEL_91:

            goto LABEL_92;
          }
        }
      }

      else
      {
        v126 = _NRLogIsLevelEnabled();

        if (v126)
        {
          v127 = _NRCopyLogObjectForNRUUID();
          copyDescription5 = [(NRLink *)self copyDescription];
          _NRLogWithArgs(v127, 16, "%s%.30s:%-4d %@: Failed to decrypt device identity", ", "[NRLinkQuickRelay requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 2299, copyDescription5);
LABEL_92:
        }
      }

      v36 = v141;
      [(NRLink *)self reportEvent:3023 detailsFormat:@"%@ %@", sessionCopy, v141];

LABEL_94:
      v37 = 0;
      blockCopy = v139;
      listenerCopy = v140;
      goto LABEL_67;
    }

    v43 = _NRCopyLogObjectForNRUUID();
    v44 = _NRLogIsLevelEnabled();

    if (v44)
    {
      v40 = _NRCopyLogObjectForNRUUID();
      copyDescription6 = [(NRLink *)self copyDescription];
      remoteIdentifier5 = [configCopy remoteIdentifier];
      _NRLogWithArgs(v40, 16, "%s%.30s:%-4d %@: Remote identifier has wrong type %zu", ", "-[NRLinkQuickRelay requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 2278, copyDescription6, [remoteIdentifier5 identifierType]);
      goto LABEL_19;
    }
  }

  else
  {
    v38 = _NRCopyLogObjectForNRUUID();
    v39 = _NRLogIsLevelEnabled();

    if (v39)
    {
      v40 = _NRCopyLogObjectForNRUUID();
      copyDescription6 = [(NRLink *)self copyDescription];
      remoteIdentifier5 = [configCopy localIdentifier];
      _NRLogWithArgs(v40, 16, "%s%.30s:%-4d %@: Local identifier has wrong type %zu", ", "-[NRLinkQuickRelay requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 2274, copyDescription6, [remoteIdentifier5 identifierType]);
LABEL_19:
    }
  }

LABEL_20:
  v37 = 0;
LABEL_21:
  v20[2](v20, 0, 0, 0);
LABEL_22:

  childConfigCopy = v142;
LABEL_23:
}

- (void)setPacketReceiver:(id)receiver
{
  receiverCopy = receiver;
  if (receiverCopy)
  {
    queue = [(NRLink *)self queue];
    dispatch_assert_queue_V2(queue);

    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v9, 0, "%s%.30s:%-4d %@: Setting IKEv2 packet receiver", ", "[NRLinkQuickRelay setPacketReceiver:]"", 2221, copyDescription);
    }

    objc_storeStrong((&self->_packetNexus + 7), receiver);
    if ([*(&self->_ikeSessionTimeoutSource + 7) count])
    {
      v11 = _NRCopyLogObjectForNRUUID();
      v12 = _NRLogIsLevelEnabled();

      if (v12)
      {
        v13 = _NRCopyLogObjectForNRUUID();
        copyDescription2 = [(NRLink *)self copyDescription];
        _NRLogWithArgs(v13, 1, "%s%.30s:%-4d %@: processing %llu previously received IKE packets", ", "-[NRLinkQuickRelay setPacketReceiver:]"", 2225, copyDescription2, [*(&self->_ikeSessionTimeoutSource + 7) count]);
      }
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = *(&self->_ikeSessionTimeoutSource + 7);
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(&self->_packetNexus + 7) receivePacketData:*(*(&v23 + 1) + 8 * i)];
        }

        v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }

    [*(&self->_ikeSessionTimeoutSource + 7) removeAllObjects];
  }

  else
  {
    v20 = sub_100046E64();
    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
      v22 = sub_100046E64();
      _NRLogWithArgs(v22, 17, "%s called with null receiver", "[NRLinkQuickRelay setPacketReceiver:]");
    }
  }
}

- (BOOL)sendPacketData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    v38 = sub_100046E64();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v40 = sub_100046E64();
      _NRLogWithArgs(v40, 17, "%s called with null data", "[NRLinkQuickRelay sendPacketData:]");

      v17 = 0;
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->super._state != 255)
  {
    v6 = *(&self->_nexusOutputAvailableCount + 7);
    IKEv2PacketString = createIKEv2PacketString();
    v8 = [dataCopy length];
    connection = [(NRLinkQuickRelay *)self connection];
    connection2 = [(NRLinkQuickRelay *)self connection];
    connectionState = [connection2 connectionState];
    if (connectionState >= 6)
    {
      v12 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", connectionState];
    }

    else
    {
      v12 = *(&off_1001FAB20 + connectionState);
    }

    [(NRLink *)self reportEvent:3006 detailsFormat:@"Sending IKEv2 packet #%llu %@ len %u connection %@ state %@", v6, IKEv2PacketString, v8, connection, v12];

    ++*(&self->_nexusOutputAvailableCount + 7);
    v18 = objc_alloc_init(NSMutableData);
    v52 = 4;
    v51 = bswap32([dataCopy length]) >> 16;
    [v18 appendBytes:&v52 length:1];
    [v18 appendBytes:&v51 length:2];
    [v18 appendData:dataCopy];
    [v18 bytes];
    if (![v18 length])
    {
      v42 = sub_100046E64();
      v43 = _NRLogIsLevelEnabled();

      if (v43)
      {
        v44 = sub_100046E64();
        _NRLogWithArgs(v44, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen > 0", ", "nrChecksumFull"", 109);
      }

      v45 = _os_log_pack_size();
      v46 = &v49 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = __error();
      v48 = _os_log_pack_fill(v46, v45, *v47, &_mh_execute_header, "%{public}s Assertion Failed: dataLen > 0");
      *v48 = 136446210;
      *(v48 + 4) = "nrChecksumFull";
      sub_100046E64();
      _NRLogAbortWithPack();
    }

    v50 = ~os_inet_checksum();
    [v18 appendBytes:&v50 length:2];
    v19 = v18;
    dispatch_assert_queue_V2(self->super._queue);
    if (self->super._state == 255)
    {
      v23 = _NRCopyLogObjectForNRUUID();
      v24 = _NRLogIsLevelEnabled();

      if (!v24)
      {
        goto LABEL_27;
      }

      v25 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v25, 16, "%s%.30s:%-4d %@: Cannot write datagram as link is cancelled", ", "[NRLinkQuickRelay writeDatagramToSession:]"", 1678, copyDescription);
    }

    else
    {
      v20 = *(&self->_linkAnalytics + 7);
      if (v20)
      {
        if ([v20 connectionState] == 3)
        {
          *(&self->_lastRecordedSessionInvitationCounter + 7) += [v19 length];
          v21 = *(&self->_linkAnalytics + 7);
          v55 = v19;
          v22 = [NSArray arrayWithObjects:&v55 count:1];
          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_100052CA0;
          v53[3] = &unk_1001FAA58;
          v53[4] = self;
          v54 = v19;
          [v21 writeDatagrams:v22 completionHandler:v53];

LABEL_27:
          v17 = 1;
          goto LABEL_31;
        }

        v29 = *(&self->_linkAnalytics + 7);
        connectionState2 = [v29 connectionState];
        if (connectionState2 >= 6)
        {
          v31 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", connectionState2];
        }

        else
        {
          v31 = *(&off_1001FAB20 + connectionState2);
        }

        [(NRLink *)self reportEvent:10022 detailsFormat:@"cannot write to connection %@ state %@", v29, v31];

        v32 = _NRCopyLogObjectForNRUUID();
        v33 = _NRLogIsLevelEnabled();

        if (!v33)
        {
          goto LABEL_27;
        }

        v25 = _NRCopyLogObjectForNRUUID();
        copyDescription2 = [(NRLink *)self copyDescription];
        v35 = *(&self->_linkAnalytics + 7);
        connectionState3 = [v35 connectionState];
        if (connectionState3 >= 6)
        {
          v37 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", connectionState3];
        }

        else
        {
          v37 = *(&off_1001FAB20 + connectionState3);
        }

        _NRLogWithArgs(v25, 16, "%s%.30s:%-4d %@: Cannot write to connection %@ state %@", ", "[NRLinkQuickRelay writeDatagramToSession:]"", 1694, copyDescription2, v35, v37);

LABEL_26:
        goto LABEL_27;
      }

      v27 = _NRCopyLogObjectForNRUUID();
      v28 = _NRLogIsLevelEnabled();

      if (!v28)
      {
        goto LABEL_27;
      }

      v25 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v25, 0, "%s%.30s:%-4d %@: Ignoring writing datagrams as connection does not exist", ", "[NRLinkQuickRelay writeDatagramToSession:]"", 1685, copyDescription);
    }

    goto LABEL_26;
  }

  v13 = _NRCopyLogObjectForNRUUID();
  v14 = _NRLogIsLevelEnabled();

  if (!v14)
  {
LABEL_30:
    v17 = 0;
    goto LABEL_31;
  }

  v15 = _NRCopyLogObjectForNRUUID();
  copyDescription3 = [(NRLink *)self copyDescription];
  _NRLogWithArgs(v15, 16, "%s%.30s:%-4d %@: Asked to send IKEv2 data but cancelled", ", "[NRLinkQuickRelay sendPacketData:]"", 2188, copyDescription3);

  v17 = 0;
LABEL_31:

  return v17;
}

- (BOOL)sendControlData:(id)data
{
  dataCopy = data;
  connection = [(NRLinkQuickRelay *)self connection];

  if (connection)
  {
    if (dataCopy)
    {
      v6 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50702 notifyData:dataCopy];
      v7 = v6 != 0;
      if (v6)
      {
        objc_initWeak(&location, self);
        v8 = *(&self->_ikeListener + 7);
        v25 = v6;
        v9 = [NSArray arrayWithObjects:&v25 count:1];
        queue = [(NRLink *)self queue];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100053248;
        v22[3] = &unk_1001FC018;
        objc_copyWeak(&v23, &location);
        [v8 sendPrivateNotifies:v9 maxRetries:10 retryIntervalInMilliseconds:1000 callbackQueue:queue callback:v22];

        objc_destroyWeak(&v23);
        objc_destroyWeak(&location);
      }

      else
      {
        v19 = sub_100046E64();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v21 = sub_100046E64();
          _NRLogWithArgs(v21, 17, "NEIKEv2PrivateNotify init %u %@ failed", 50702, dataCopy);
        }
      }
    }

    else
    {
      v16 = sub_100046E64();
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
        v18 = sub_100046E64();
        _NRLogWithArgs(v18, 17, "%s called with null data", "[NRLinkQuickRelay sendControlData:]");
      }

      v7 = 0;
    }
  }

  else
  {
    v11 = _NRCopyLogObjectForNRUUID();
    v7 = 1;
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v13 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v13, 1, "%s%.30s:%-4d %@: Not sending control data as there is no IDS session", ", "[NRLinkQuickRelay sendControlData:]"", 1642, copyDescription);
    }
  }

  return v7;
}

- (void)invalidateIKESessionForClass:(unsigned __int8)class
{
  classCopy = class;
  v6.receiver = self;
  v6.super_class = NRLinkQuickRelay;
  [(NRLink *)&v6 invalidateIKESessionForClass:?];
  sub_10004A258(self, classCopy);
  [(NRLink *)self invalidateIKESession:v5];
}

- (BOOL)resume
{
  if ([(NRLink *)self state]== 255)
  {
    v9 = _NRCopyLogObjectForNRUUID();
    LOBYTE(idsSessionIsIncoming) = 1;
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v7, 1, "%s%.30s:%-4d %@: Already cancelled. Ignoring 'resume'", ", "[NRLinkQuickRelay resume]"", 540, copyDescription);
      goto LABEL_11;
    }
  }

  else if ([(NRLink *)self state]== 9)
  {
    if (!self)
    {
      goto LABEL_15;
    }

    LOBYTE(idsSessionIsIncoming) = 1;
    if (self->_resumeRequested)
    {
      return idsSessionIsIncoming;
    }

    self->_resumeRequested = 1;
    v4 = *(&self->_idsService + 7);
    if (!v4 || (idsSessionIsIncoming = self->_idsSessionIsIncoming, v4, !idsSessionIsIncoming))
    {
LABEL_15:
      sub_1000535E8(self);
      LOBYTE(idsSessionIsIncoming) = 1;
      return idsSessionIsIncoming;
    }

    v5 = _NRCopyLogObjectForNRUUID();
    v6 = _NRLogIsLevelEnabled();

    if (v6)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      LOBYTE(idsSessionIsIncoming) = 1;
      _NRLogWithArgs(v7, 1, "%s%.30s:%-4d %@: No need to send invitation as we are processing a received invite", ", "[NRLinkQuickRelay resume]"", 561, copyDescription);
LABEL_11:
    }
  }

  else
  {
    v11 = _NRCopyLogObjectForNRUUID();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v13 = _NRCopyLogObjectForNRUUID();
      copyDescription2 = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v13, 1, "%s%.30s:%-4d %@: link not suspended for resuming", ", "[NRLinkQuickRelay resume]"", 545, copyDescription2);
    }

    LOBYTE(idsSessionIsIncoming) = 0;
  }

  return idsSessionIsIncoming;
}

- (BOOL)suspend
{
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self && self->_shouldCancelOnSuspend)
  {
    self->_shouldCancelOnSuspend = 0;
    [(NRLinkQuickRelay *)self cancelWithReason:@"Cancelling after link timeout and after suspend"];
  }

  if ([(NRLink *)self state]== 255)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v10, 1, "%s%.30s:%-4d %@: Already cancelled. Ignoring 'suspend'", ", "[NRLinkQuickRelay suspend]"", 481, copyDescription);
    }
  }

  else
  {
    if (![(NRLink *)self changeStateTo:9])
    {
      v4 = _NRCopyLogObjectForNRUUID();
      v5 = _NRLogIsLevelEnabled();

      if (v5)
      {
        v6 = _NRCopyLogObjectForNRUUID();
        copyDescription2 = [(NRLink *)self copyDescription];
        _NRLogWithArgs(v6, 1, "%s%.30s:%-4d %@: link already suspended", ", "[NRLinkQuickRelay suspend]"", 486, copyDescription2);
      }
    }

    if (self->_dNexusReadSourceSuspended)
    {
      dispatch_resume(*(&self->_nexusOutputRing + 7));
      self->_dNexusReadSourceSuspended = 0;
    }

    if (![(NRLink *)self ikeClassDEstablished])
    {
      [(NRLinkQuickRelay *)self invalidateIKESessionForClass:4];
    }

    if (![(NRLink *)self ikeClassCEstablished])
    {
      [(NRLinkQuickRelay *)self invalidateIKESessionForClass:3];
    }

    self->_resumeRequested = 0;
    self->_hasPendingInputAvailable = 0;
    self->_ikeClassCRetryCounter = 0;
    self->_ikeClassDRetryCounter = 0;
    self->_invitationRetryCounter = 0;
    if ([(NRLink *)self hasCompanionDatapath])
    {
      [*(&self->_ikeSessionClassC + 7) setAvailability:0];
    }

    else if ([(NRLink *)self virtualInterface])
    {
      [(NRLink *)self virtualInterface];
      NEVirtualInterfaceSetRankNever();
      [(NRLink *)self virtualInterface];
      NEVirtualInterfaceUpdateAdHocService();
    }

    sub_100047D2C(self);
    v12 = *(&self->_pathEvaluator + 7);
    if (v12)
    {
      *(v12 + 32) = *(&self->_sentIKEv2PointToPoint + 7) + *(&self->_nexusOutputAvailableCount + 7);
      v13 = *(&self->_pathEvaluator + 7);
      if (v13)
      {
        *(v13 + 88) = *(&self->_lastRecordedBytesFromQR + 7);
        v14 = *(&self->_pathEvaluator + 7);
        if (v14)
        {
          *(v14 + 96) = *(&self->_bytesFromNexus + 7);
        }
      }
    }

    [(NRLink *)self linkTotalReadyTimeInSec];
    v16 = *(&self->_pathEvaluator + 7);
    if (v16)
    {
      *(v16 + 24) = v15;
    }

    linkDelegate = [(NRLink *)self linkDelegate];
    [linkDelegate linkIsSuspended:self];

    [*(&self->_pathEvaluator + 7) submit];
    [*(&self->_pathEvaluator + 7) reset];
    self->super._linkTotalReadyTimeInSec = 0.0;
    *(&self->_nexusOutputAvailableCount + 7) = 0;
    *(&self->_sentIKEv2PointToPoint + 7) = 0;
    *(&self->_lastRecordedBytesFromQR + 7) = 0;
    *(&self->_bytesFromNexus + 7) = 0;
  }

  return 1;
}

- (BOOL)start
{
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NRLink *)self state]== 255)
  {
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs(v8, 1, "%s%.30s:%-4d %@: Ignoring start request as link is cancelled", ", "[NRLinkQuickRelay start]"", 431, copyDescription);
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    if ([(NRLink *)self state]== 8)
    {
      linkDelegate = [(NRLink *)self linkDelegate];
      [linkDelegate linkIsReady:self];
      goto LABEL_4;
    }

    if ([(NRLink *)self state]!= 9)
    {
      if ([(NRLink *)self startRequested])
      {
        goto LABEL_5;
      }

      v5 = sub_1000539DC(self);
      if (!v5)
      {
        return v5;
      }

      [(NRLink *)self setStartRequested:1];
      [(NRLink *)self reportEvent:3001];
      if (!self || (v10 = *(&self->_idsService + 7)) == 0 || (idsSessionIsIncoming = self->_idsSessionIsIncoming, v10, !idsSessionIsIncoming))
      {
        sub_1000535E8(self);
        goto LABEL_5;
      }

      v12 = _NRCopyLogObjectForNRUUID();
      v13 = _NRLogIsLevelEnabled();

      LOBYTE(v5) = 1;
      if (!v13)
      {
        return v5;
      }

      linkDelegate = _NRCopyLogObjectForNRUUID();
      copyDescription2 = [(NRLink *)self copyDescription];
      _NRLogWithArgs(linkDelegate, 1, "%s%.30s:%-4d %@: No need to send invitation as we are processing a received invite", ", "[NRLinkQuickRelay start]"", 460, copyDescription2);

LABEL_4:
LABEL_5:
      LOBYTE(v5) = 1;
      return v5;
    }

    LOBYTE(v5) = [(NRLinkQuickRelay *)self resume];
  }

  return v5;
}

- (id)copyStatusString
{
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [NSMutableString alloc];
  v5 = [(NRLink *)self description];
  v6 = [v4 initWithString:v5];

  [v6 appendFormat:@"\n %35s = %@", "nrUUID", self->super._nrUUID];
  if (self->super._startRequested)
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "startRequested", v7];
  if (self->_resumeRequested)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "resumeRequested", v8];
  [v6 appendFormat:@"\n %35s = %@", "idsService", *(&self->_ipHeaderOffset + 7)];
  [v6 appendFormat:@"\n %35s = %@", "idsSession", *(&self->_idsService + 7)];
  [v6 appendFormat:@"\n %35s = %@", "idsDestination", *(&self->_idsSession + 7)];
  if (self->_idsSessionStarted)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "idsSessionStarted", v9];
  if (self->_invitationInProgress)
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "invitationInProgress", v10];
  [v6 appendFormat:@"\n %35s = %llu", "sessionInvitationCounter", *(&self->_ikeClassCEstablishedTime + 7)];
  [v6 appendFormat:@"\n %35s = %@", "idsSessionStartTime", *(&self->_idsDestination + 7)];
  [v6 appendFormat:@"\n %35s = %@", "connection", *(&self->_linkAnalytics + 7)];
  v11 = *(&self->_linkAnalytics + 7);
  if (v11)
  {
    connectionState = [v11 connectionState];
    if (connectionState >= 6)
    {
      v13 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", connectionState];
    }

    else
    {
      v13 = *(&off_1001FAB20 + connectionState);
    }

    [v6 appendFormat:@"\n %35s = %@", "connectionState", v13];
  }

  [v6 appendFormat:@"\n %35s = %@", "ikeListener", *(&self->_idsSessionStartTime + 7)];
  [v6 appendFormat:@"\n %35s = %@", "ikeSessionClassD", *(&self->_ikeListener + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "ikeClassDRetryCounter", self->_ikeClassDRetryCounter];
  if (self->super._ikeClassDEstablished)
  {
    v14 = "YES";
  }

  else
  {
    v14 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "ikeClassDEstablished", v14];
  [v6 appendFormat:@"\n %35s = %@", "ikeClassDEstablishedTime", *(&self->_receivedDatagrams + 7)];
  [v6 appendFormat:@"\n %35s = %@", "ikeSessionClassC", *(&self->_ikeSessionClassD + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "ikeClassCRetryCounter", self->_ikeClassCRetryCounter];
  if (self->super._ikeClassCEstablished)
  {
    v15 = "YES";
  }

  else
  {
    v15 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "ikeClassCEstablished", v15];
  [v6 appendFormat:@"\n %35s = %@", "ikeClassCEstablishedTime", *(&self->_ikeClassDEstablishedTime + 7)];
  if (self->_isResponder)
  {
    v16 = "YES";
  }

  else
  {
    v16 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "isResponder", v16];
  [v6 appendFormat:@"\n %35s = %@", "packetNexus", *(&self->_ikeSessionClassC + 7)];
  [v6 appendFormat:@"\n %35s = %@", "ikePacketReceiver", *(&self->_packetNexus + 7)];
  if (self->super._virtualInterface)
  {
    v17 = NEVirtualInterfaceCopyName();
    [v6 appendFormat:@"\n %35s = %@", "virtualInterfaceName", v17];
  }

  [v6 appendFormat:@"\n %35s = %p", "nexusChannel", *(&self->_ikePacketReceiver + 7)];
  [v6 appendFormat:@"\n %35s = %p", "nexusInputRing", *(&self->_nexusChannel + 7)];
  [v6 appendFormat:@"\n %35s = %p", "dNexusReadSource", *(&self->_nexusOutputRing + 7)];
  [v6 appendFormat:@"\n %35s = %p", "dNexusWriteSource", *(&self->_dNexusReadSource + 7)];
  if (self->_dNexusReadSourceSuspended)
  {
    v18 = "YES";
  }

  else
  {
    v18 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "dNexusReadSourceSuspended", v18];
  if (self->_dNexusWriteSourceSuspended)
  {
    v19 = "YES";
  }

  else
  {
    v19 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "dNexusWriteSourceSuspended", v19];
  if (self->_hasPendingInputAvailable)
  {
    v20 = "YES";
  }

  else
  {
    v20 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "hasPendingInputAvailable", v20];
  [v6 appendFormat:@"\n %35s = %llu", "bytesFromNexus", *(&self->_lastRecordedBytesFromQR + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "bytesFromQR", *(&self->_bytesToQRSendFailed + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "bytesToQRBeforeSend", *(&self->_lastRecordedSessionInvitationCounter + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "bytesToQRSent", *(&self->_bytesToQRBeforeSend + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "bytesToQRSendFailed", *(&self->_bytesToQRSent + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "bytesToNexus", *(&self->_bytesFromNexus + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "receivedDatagrams.count", objc_msgSend(*(&self->_nexusGroup + 7), "count")];
  [v6 appendFormat:@"\n %35s = %llu", "nexusInputAvailableCount", *(&self->_bytesToNexus + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "nexusOutputAvailableCount", *(&self->_nexusInputAvailableCount + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "sentIKEv2PointToPoint", *(&self->_nexusOutputAvailableCount + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "recvIKEv2PointToPoint", *(&self->_sentIKEv2PointToPoint + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "sentUncompressedIP", *(&self->_recvIKEv2PointToPoint + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "recvUncompressedIP", *(&self->_sentKnownIPv6Hdr_TCP_ECT0 + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "sentEncapsulated6LoWPAN", *(&self->_sentUncompressedIP + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "recvEncapsulated6LoWPAN", *(&self->_recvUncompressedIP + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_ESP", *(&self->_sentEncapsulated6LoWPAN + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_ESP", *(&self->_recvEncapsulated6LoWPAN + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_ESP_ECT0", *(&self->_sentKnownIPv6Hdr_ESP + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_ESP_ECT0", *(&self->_recvKnownIPv6Hdr_ESP + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_ESP_ClassC", *(&self->_sentKnownIPv6Hdr_ESP_ECT0 + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_ESP_ClassC", *(&self->_recvKnownIPv6Hdr_ESP_ECT0 + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_ESP_ClassC_ECT0", *(&self->_sentKnownIPv6Hdr_ESP_ClassC + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_ESP_ClassC_ECT0", *(&self->_recvKnownIPv6Hdr_ESP_ClassC + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_TCP", *(&self->_sentKnownIPv6Hdr_ESP_ClassC_ECT0 + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_TCP", *(&self->_recvKnownIPv6Hdr_ESP_ClassC_ECT0 + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_TCP_ECT0", *(&self->_sentKnownIPv6Hdr_TCP + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_TCP_ECT0", *(&self->_recvKnownIPv6Hdr_TCP + 7)];
  return v6;
}

- (BOOL)cancelWithReason:(id)reason
{
  reasonCopy = reason;
  if (reasonCopy)
  {
    queue = [(NRLink *)self queue];
    dispatch_assert_queue_V2(queue);

    v6 = [[NSString alloc] initWithFormat:reasonCopy arguments:&v22];
    if ([(NRLink *)self changeStateTo:255 details:v6])
    {
      if (self)
      {
        v7 = *(&self->_pathEvaluator + 7);
        if (v7)
        {
          *(v7 + 32) = *(&self->_sentIKEv2PointToPoint + 7) + *(&self->_nexusOutputAvailableCount + 7);
          v8 = *(&self->_pathEvaluator + 7);
          if (v8)
          {
            *(v8 + 88) = *(&self->_lastRecordedBytesFromQR + 7);
            v9 = *(&self->_pathEvaluator + 7);
            if (v9)
            {
              *(v9 + 96) = *(&self->_bytesFromNexus + 7);
            }
          }
        }

        [(NRLink *)self linkTotalReadyTimeInSec];
        v11 = *(&self->_pathEvaluator + 7);
        if (v11)
        {
          *(v11 + 24) = v10;
        }

        linkDelegate = [(NRLink *)self linkDelegate];
        [linkDelegate linkIsUnavailable:self];

        [(NRLinkQuickRelay *)self invalidateLink];
        v13 = *(&self->_pathEvaluator + 7);
      }

      else
      {
        [0 linkTotalReadyTimeInSec];
        linkDelegate2 = [0 linkDelegate];
        [linkDelegate2 linkIsUnavailable:0];

        [0 invalidateLink];
        v13 = 0;
      }

      [v13 submit];
    }

    else
    {
      v14 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v16 = _NRCopyLogObjectForNRUUID();
        copyDescription = [(NRLink *)self copyDescription];
        _NRLogWithArgs(v16, 0, "%s%.30s:%-4d %@: link already cancelled", ", "[NRLinkQuickRelay cancelWithReason:]"", 314, copyDescription);
      }
    }
  }

  else
  {
    v19 = sub_100046E64();
    v20 = _NRLogIsLevelEnabled();

    if (!v20)
    {
      goto LABEL_15;
    }

    v6 = sub_100046E64();
    _NRLogWithArgs(v6, 17, "%s called with null reasonFormat", "[NRLinkQuickRelay cancelWithReason:]");
  }

LABEL_15:
  return reasonCopy != 0;
}

- (void)invalidateLink
{
  v29.receiver = self;
  v29.super_class = NRLinkQuickRelay;
  [(NRLink *)&v29 invalidateLink];
  sub_100047D2C(self);
  if (self)
  {
    v3 = *(&self->_ipHeaderOffset + 7);
    if (v3)
    {
      v4 = v3;
      v5 = *(&self->_ipHeaderOffset + 7);
      *(&self->_ipHeaderOffset + 7) = 0;

      if (qword_1002292C0 != -1)
      {
        dispatch_once(&qword_1002292C0, &stru_1001FC4B0);
      }

      v6 = qword_1002292C8;
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_100055C14;
      v26 = &unk_1001FD060;
      v27 = v4;
      selfCopy = self;
      v7 = v4;
      dispatch_async(v6, &v23);
    }

    v8 = *(&self->_idsSessionStartTime + 7);
    if (v8)
    {
      [v8 cancel];
      v9 = *(&self->_idsSessionStartTime + 7);
      *(&self->_idsSessionStartTime + 7) = 0;
    }

    [(NRLinkQuickRelay *)self invalidateIKESessionForClass:4, v23, v24, v25, v26];
    [(NRLinkQuickRelay *)self invalidateIKESessionForClass:3];
    v10 = *(&self->_nexusOutputRing + 7);
    if (v10)
    {
      if (self->_dNexusReadSourceSuspended)
      {
        dispatch_resume(v10);
        self->_dNexusReadSourceSuspended = 0;
        v10 = *(&self->_nexusOutputRing + 7);
      }

      dispatch_source_cancel(v10);
      v11 = *(&self->_nexusOutputRing + 7);
      *(&self->_nexusOutputRing + 7) = 0;
    }

    v12 = *(&self->_dNexusReadSource + 7);
    if (v12)
    {
      if (self->_dNexusWriteSourceSuspended)
      {
        dispatch_resume(v12);
        self->_dNexusWriteSourceSuspended = 0;
        v12 = *(&self->_dNexusReadSource + 7);
      }

      dispatch_source_cancel(v12);
      v13 = *(&self->_dNexusReadSource + 7);
      *(&self->_dNexusReadSource + 7) = 0;
    }

    if (*(&self->_ikePacketReceiver + 7))
    {
      if (!*(&self->_dNexusWriteSource + 7))
      {
        os_channel_destroy();
      }

      *(&self->_ikePacketReceiver + 7) = 0;
    }

    v14 = *(&self->_nexusGroup + 7);
    *(&self->_nexusGroup + 7) = 0;

    v15 = *(&self->_ikeSessionTimeoutSource + 7);
    *(&self->_ikeSessionTimeoutSource + 7) = 0;

    v16 = *(&self->_recvKnownIPv6Hdr_TCP_ECT0 + 7);
    if (v16)
    {
      dispatch_source_cancel(v16);
      v17 = *(&self->_recvKnownIPv6Hdr_TCP_ECT0 + 7);
      *(&self->_recvKnownIPv6Hdr_TCP_ECT0 + 7) = 0;
    }

    v18 = *(&self->_linkIdleTimerSource + 7);
    if (v18)
    {
      dispatch_source_cancel(v18);
      v19 = *(&self->_linkIdleTimerSource + 7);
      *(&self->_linkIdleTimerSource + 7) = 0;
    }
  }

  else
  {
    [0 invalidateIKESessionForClass:4];
    [0 invalidateIKESessionForClass:3];
  }

  if (![(NRLink *)self hasCompanionDatapath])
  {
    [(NRLink *)self virtualInterface];
    NEVirtualInterfaceInvalidate();
    if ([(NRLink *)self virtualInterface])
    {
      free([(NRLink *)self virtualInterface]);
      [(NRLink *)self setVirtualInterface:0];
    }
  }

  [(NRLink *)self setVirtualInterface:0];
  if (self)
  {
    v20 = *(&self->_ikeSessionClassC + 7);
    if (v20)
    {
      [v20 setAvailability:0];
      [*(&self->_ikeSessionClassC + 7) cancel];
      v21 = *(&self->_ikeSessionClassC + 7);
      *(&self->_ikeSessionClassC + 7) = 0;
    }

    if (*(&self->_receivedIKEPackets + 7))
    {
      nw_path_evaluator_cancel();
      v22 = *(&self->_receivedIKEPackets + 7);
      *(&self->_receivedIKEPackets + 7) = 0;
    }
  }
}

- (id)initLinkWithQueue:(id)queue linkDelegate:(id)delegate nrUUID:(id)d
{
  queueCopy = queue;
  delegateCopy = delegate;
  dCopy = d;
  if (!queueCopy)
  {
    v27 = sub_100046E64();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_24;
    }

    v29 = sub_100046E64();
    _NRLogWithArgs(v29, 17, "%s called with null queue");
LABEL_20:

    goto LABEL_24;
  }

  dispatch_assert_queue_V2(queueCopy);
  if (!delegateCopy)
  {
    v30 = sub_100046E64();
    v31 = _NRLogIsLevelEnabled();

    if (!v31)
    {
      goto LABEL_24;
    }

    v29 = sub_100046E64();
    _NRLogWithArgs(v29, 17, "%s called with null linkDelegate");
    goto LABEL_20;
  }

  if (!dCopy)
  {
    v32 = sub_100046E64();
    v33 = _NRLogIsLevelEnabled();

    if (!v33)
    {
      goto LABEL_24;
    }

    v29 = sub_100046E64();
    _NRLogWithArgs(v29, 17, "%s called with null nrUUID");
    goto LABEL_20;
  }

  if ((_NRIsUUIDNonZero() & 1) == 0)
  {
    v34 = sub_100046E64();
    v35 = _NRLogIsLevelEnabled();

    if (!v35)
    {
      goto LABEL_24;
    }

    v29 = sub_100046E64();
    _NRLogWithArgs(v29, 17, "called with all-zero nrUUID");
    goto LABEL_20;
  }

  v40.receiver = self;
  v40.super_class = NRLinkQuickRelay;
  v11 = [(NRLink *)&v40 initLinkWithQueue:queueCopy linkDelegate:delegateCopy nrUUID:dCopy];
  if (!v11)
  {
    v36 = sub_100046E64();
    v37 = _NRLogIsLevelEnabled();

    if (v37)
    {
      v38 = sub_100046E64();
      _NRLogWithArgs(v38, 17, "[NRLink initLinkWithQueue:] failed");
    }

    self = 0;
    goto LABEL_24;
  }

  self = v11;
  [(NRLink *)v11 setType:4];
  v12 = objc_alloc_init(NSMutableArray);
  v13 = *(&self->_nexusGroup + 7);
  *(&self->_nexusGroup + 7) = v12;

  v14 = objc_alloc_init(NSMutableArray);
  v15 = *(&self->_ikeSessionTimeoutSource + 7);
  *(&self->_ikeSessionTimeoutSource + 7) = v14;

  v16 = objc_alloc_init(NRAnalyticsCmpnLinkQuickRelay);
  v17 = *(&self->_pathEvaluator + 7);
  *(&self->_pathEvaluator + 7) = v16;

  if (!sub_1000539DC(self))
  {
LABEL_24:
    selfCopy = 0;
    goto LABEL_25;
  }

  if (![(NRLink *)self hasCompanionDatapath])
  {
    *(&self->_ikeSessionTimeoutScheduledOnce + 1) = 4;
    nrUUID = [(NRLink *)self nrUUID];
    v19 = sub_100163A30(NRDLocalDevice, nrUUID);

    if (v19)
    {
      v20 = sub_100003490();
      dispatch_assert_queue_V2(v20);

      v21 = sub_1001672A0(v19, @"0");
      [(NRLink *)self setLocalOuterEndpoint:v21];

      v22 = sub_100003490();
      dispatch_assert_queue_V2(v22);

      v23 = sub_1001677D0(v19, @"0");
    }

    else
    {
      [(NRLink *)self setLocalOuterEndpoint:0];
      v23 = 0;
    }

    [(NRLink *)self setRemoteOuterEndpoint:v23];
  }

  [(NRLink *)self updateIKEv2Role:&self->_isResponder];
  uUIDString = [dCopy UUIDString];
  [(NRLink *)self reportEvent:3000 details:uUIDString];

  linkDelegate = [(NRLink *)self linkDelegate];
  [linkDelegate linkIsAvailable:self];

  self = self;
  selfCopy = self;
LABEL_25:

  return selfCopy;
}

@end