@interface SFNotificationProxy
- (SFNotificationProxy)init;
- (id)externalID;
- (void)_requestPostOrUpdate:(id)update info:(id)info mediumVariant:(BOOL)variant canPost:(BOOL)post;
- (void)handleNotificationWasDismissed:(id)dismissed reason:(int64_t)reason;
- (void)handleNotificationWasTapped:(id)tapped;
- (void)requestRemove:(id)remove withReason:(int64_t)reason;
- (void)requestRemoveAll;
- (void)reset;
@end

@implementation SFNotificationProxy

- (void)requestRemoveAll
{
  selfCopy = self;
  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100008BC8(self, a2, v2);
    }
  }

  v4 = +[SDNotificationManager sharedManager];
  [v4 homePodHandoffRemoveAll];

  [(SFNotificationProxy *)selfCopy reset];
}

- (void)reset
{
  selfCopy = self;
  if (dword_1009708B0 <= 30)
  {
    if (dword_1009708B0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100008BAC(self, a2, v2);
    }
  }

  [(NSMutableArray *)selfCopy->_internalIDs removeAllObjects];
  internalIDs = selfCopy->_internalIDs;
  selfCopy->_internalIDs = 0;

  externalID = selfCopy->_externalID;
  selfCopy->_externalID = 0;

  selfCopy->_showingMedium = 0;
  triggeredID = selfCopy->_triggeredID;
  selfCopy->_triggeredID = 0;
}

- (SFNotificationProxy)init
{
  v6.receiver = self;
  v6.super_class = SFNotificationProxy;
  v2 = [(SFNotificationProxy *)&v6 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)_requestPostOrUpdate:(id)update info:(id)info mediumVariant:(BOOL)variant canPost:(BOOL)post
{
  postCopy = post;
  variantCopy = variant;
  updateCopy = update;
  infoCopy = info;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  externalID = self->_externalID;
  if (externalID)
  {
    v16 = !variantCopy;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    if (dword_1009708B0 <= 30)
    {
      if (dword_1009708B0 != -1 || (v12 = _LogCategory_Initialize(), v12))
      {
        sub_1000F5EE0(v12, v13, v14);
      }
    }

    goto LABEL_29;
  }

  if (externalID)
  {
    internalIDs = self->_internalIDs;
    if (!internalIDs)
    {
      v18 = objc_alloc_init(NSMutableArray);
      v19 = self->_internalIDs;
      self->_internalIDs = v18;

      internalIDs = self->_internalIDs;
    }

    if (([(NSMutableArray *)internalIDs containsObject:updateCopy]& 1) == 0)
    {
      [(NSMutableArray *)self->_internalIDs addObject:updateCopy];
    }

    externalID = [(SFNotificationProxy *)self externalID];
    if (externalID)
    {
      v21 = externalID;
      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F5EA0(v21);
      }

      v22 = +[SDNotificationManager sharedManager];
      [v22 homePodHandoffUpdateIfNeeded:v21 info:infoCopy];
LABEL_28:

      self->_showingMedium = variantCopy;
      objc_storeStrong(&self->_triggeredID, update);
    }
  }

  else if (postCopy)
  {
    v23 = self->_internalIDs;
    if (!v23)
    {
      v24 = objc_alloc_init(NSMutableArray);
      v25 = self->_internalIDs;
      self->_internalIDs = v24;

      v23 = self->_internalIDs;
    }

    [(NSMutableArray *)v23 addObject:updateCopy];
    externalID2 = [(SFNotificationProxy *)self externalID];
    if (externalID2)
    {
      v21 = externalID2;
      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F5E60(v21);
      }

      v22 = +[SDNotificationManager sharedManager];
      [v22 homePodHandoffPostIfNeeded:v21 info:infoCopy];
      goto LABEL_28;
    }
  }

  else if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1009708B0, "[SFNotificationProxy _requestPostOrUpdate:info:mediumVariant:canPost:]", 30, "NotifProx: Not handling %@: %@\n", updateCopy, infoCopy);
  }

LABEL_29:
}

- (void)requestRemove:(id)remove withReason:(int64_t)reason
{
  removeCopy = remove;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (([(NSMutableArray *)self->_internalIDs containsObject:removeCopy]& 1) != 0)
  {
    v6 = self->_externalID;
    v9 = v6;
    if (!v6)
    {
      if (dword_1009708B0 <= 90)
      {
        if (dword_1009708B0 != -1 || (v6 = _LogCategory_Initialize(), v6))
        {
          sub_1000F5F98(v6, v7, v8);
        }
      }

      goto LABEL_46;
    }

    if (!self->_showingMedium)
    {
      triggeredID = self->_triggeredID;
      v11 = removeCopy;
      v12 = triggeredID;
      v13 = v12;
      if (v12 == v11)
      {
      }

      else
      {
        if ((v11 != 0) == (v12 == 0))
        {

          goto LABEL_23;
        }

        v14 = [(NSString *)v11 isEqual:v12];

        if ((v14 & 1) == 0)
        {
LABEL_23:
          if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            sub_1000F5F3C(v11);
          }

          [(NSMutableArray *)self->_internalIDs removeObject:v11];
          v23 = objc_retainBlock(self->_dismissedHandler);
          v24 = v23;
          if (v23)
          {
            (*(v23 + 2))(v23, v11, reason);
          }

          goto LABEL_45;
        }
      }
    }

    if (!self->_showingMedium)
    {
      v15 = self->_triggeredID;
      v16 = removeCopy;
      v17 = v15;
      v18 = v17;
      if (v17 == v16)
      {

        goto LABEL_29;
      }

      if ((v16 != 0) != (v17 == 0))
      {
        v19 = [(NSString *)v16 isEqual:v17];

        if (!v19)
        {
          goto LABEL_34;
        }

LABEL_29:
        if (dword_1009708B0 > 30)
        {
          goto LABEL_44;
        }

        if (dword_1009708B0 == -1)
        {
          v20 = _LogCategory_Initialize();
          if (!v20)
          {
            goto LABEL_44;
          }
        }

        goto LABEL_32;
      }
    }

LABEL_34:
    if (!self->_showingMedium)
    {
      goto LABEL_46;
    }

    v25 = self->_triggeredID;
    v26 = removeCopy;
    v27 = v25;
    v28 = v27;
    if (v27 == v26)
    {
    }

    else
    {
      if ((v26 != 0) == (v27 == 0))
      {

        goto LABEL_46;
      }

      v29 = [(NSString *)v26 isEqual:v27];

      if (!v29)
      {
        goto LABEL_46;
      }
    }

    v20 = [(NSMutableArray *)self->_internalIDs count];
    if (v20 != 1)
    {
LABEL_46:

      goto LABEL_47;
    }

    if (dword_1009708B0 > 30)
    {
      goto LABEL_44;
    }

    if (dword_1009708B0 == -1)
    {
      v20 = _LogCategory_Initialize();
      if (!v20)
      {
        goto LABEL_44;
      }
    }

LABEL_32:
    sub_1000F5F7C(v20, v21, v22);
LABEL_44:
    v24 = +[SDNotificationManager sharedManager];
    [v24 homePodHandoffRemove:v9 reason:reason];
LABEL_45:

    goto LABEL_46;
  }

  if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F5EFC(removeCopy);
  }

LABEL_47:
}

- (void)handleNotificationWasTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = tappedCopy;
  externalID = self->_externalID;
  v14 = tappedCopy;
  if (externalID)
  {
    v7 = tappedCopy;
    v8 = externalID;
    v9 = v8;
    if (v8 == v7)
    {

      goto LABEL_7;
    }

    if (v7)
    {
      v10 = [(NSString *)v7 isEqual:v8];

      v5 = v14;
      if ((v10 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_7:
      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F5FB4(v7);
      }

      v11 = objc_retainBlock(self->_tappedHandler);
      if (v11)
      {
        v12 = [(NSMutableArray *)self->_internalIDs copy];
        v11[2](v11, v12);
      }

      [(SFNotificationProxy *)self reset];
      goto LABEL_13;
    }

    v5 = v14;
  }

LABEL_15:
  if (dword_1009708B0 <= 90)
  {
    if (dword_1009708B0 != -1 || (v13 = _LogCategory_Initialize(), v5 = v14, v13))
    {
      sub_1000F5FF4(v5);
LABEL_13:
      v5 = v14;
    }
  }
}

- (void)handleNotificationWasDismissed:(id)dismissed reason:(int64_t)reason
{
  dismissedCopy = dismissed;
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F6034(reason, dismissedCopy);
  }

  v7 = objc_retainBlock(self->_dismissedHandler);
  if (v7)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = self->_internalIDs;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v7[2](v7, *(*(&v13 + 1) + 8 * i), reason);
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }

  [(SFNotificationProxy *)self reset];
}

- (id)externalID
{
  externalID = self->_externalID;
  if (!externalID)
  {
    v4 = +[NSUUID UUID];
    uUIDString = [v4 UUIDString];
    v6 = self->_externalID;
    self->_externalID = uUIDString;

    externalID = self->_externalID;
  }

  return externalID;
}

@end