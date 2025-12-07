@interface BTIdentityDaemon
+ (id)sharedBTIdentityDaemon;
- (BOOL)diagnosticControl:(id)control completion:(id)completion;
- (BTIdentityDaemon)init;
- (id)descriptionWithLevel:(int)level;
- (void)_idsDevicesChanged:(id)changed;
- (void)_idsScheduleUpdateIdentities;
- (void)_idsUpdateIdentities;
- (void)activate;
- (void)invalidate;
@end

@implementation BTIdentityDaemon

+ (id)sharedBTIdentityDaemon
{
  if (qword_1002FA1D8 != -1)
  {
    sub_1001F72FC();
  }

  v3 = qword_1002FA1D0;

  return v3;
}

- (BTIdentityDaemon)init
{
  v8.receiver = self;
  v8.super_class = BTIdentityDaemon;
  v2 = [(BTIdentityDaemon *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("BTIdentityDaemon", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v2->_cbDaemonNotifyToken = -1;
    v6 = v2;
  }

  return v2;
}

- (id)descriptionWithLevel:(int)level
{
  v5 = 0;
  NSAppendPrintF(&v5, "-- BTIdentityDaemon: IDS devices %d, Identities %d --\n", [(NSArray *)self->_idsDevices count], [(NSMutableDictionary *)self->_identityMap count]);
  v3 = v5;

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C4A64;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C4E74;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_idsDevicesChanged:(id)changed
{
  changedCopy = changed;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C509C;
  v7[3] = &unk_1002B6D18;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_idsScheduleUpdateIdentities
{
  v3 = self->_idsDeviceCoalescer;
  if (!v3)
  {
    v4 = objc_alloc_init(CUCoalescer);
    idsDeviceCoalescer = self->_idsDeviceCoalescer;
    self->_idsDeviceCoalescer = v4;

    [(CUCoalescer *)v4 setDispatchQueue:self->_dispatchQueue];
    [(CUCoalescer *)v4 setMinDelay:2.0];
    [(CUCoalescer *)v4 setMaxDelay:5.0];
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_1000C525C;
    v9 = &unk_1002B6D18;
    v3 = v4;
    v10 = v3;
    selfCopy = self;
    [(CUCoalescer *)v3 setActionHandler:&v6];
  }

  [(CUCoalescer *)v3 trigger:v6];
}

- (void)_idsUpdateIdentities
{
  selfCopy = self;
  [(NSMutableDictionary *)self->_identityMap enumerateKeysAndObjectsUsingBlock:&stru_1002BADF0];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = selfCopy->_idsDevices;
  v49 = [(NSArray *)obj countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (!v49)
  {
    v44 = 0;
    v45 = 0;
    goto LABEL_56;
  }

  v44 = 0;
  v45 = 0;
  v47 = selfCopy;
  v48 = *v57;
  do
  {
    v3 = 0;
    do
    {
      if (*v57 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v4 = *(*(&v56 + 1) + 8 * v3);
      uniqueIDOverride = [v4 uniqueIDOverride];
      if (uniqueIDOverride)
      {
        v6 = [(NSMutableDictionary *)selfCopy->_identityMap objectForKeyedSubscript:uniqueIDOverride];
        v7 = v6;
        if (!v6)
        {
          v7 = objc_alloc_init(CBDeviceIdentity);
          [v7 setIdentifier:uniqueIDOverride];
          [v7 setIdsDeviceID:uniqueIDOverride];
          identityMap = selfCopy->_identityMap;
          if (!identityMap)
          {
            v9 = objc_alloc_init(NSMutableDictionary);
            v10 = selfCopy->_identityMap;
            selfCopy->_identityMap = v9;

            identityMap = selfCopy->_identityMap;
          }

          [(NSMutableDictionary *)identityMap setObject:v7 forKeyedSubscript:uniqueIDOverride];
        }

        [v7 setType:2];
        nsuuid = [v4 nsuuid];
        if (nsuuid)
        {
          bluetoothIdentifier = [v7 bluetoothIdentifier];
          v13 = nsuuid;
          v14 = bluetoothIdentifier;
          v15 = v14;
          if (v13 == v14)
          {
          }

          else
          {
            if (!v14)
            {

              goto LABEL_19;
            }

            v16 = [v13 isEqual:v14];

            if ((v16 & 1) == 0)
            {
LABEL_19:
              [v7 setBluetoothIdentifier:v13];
              v50 = 1;
LABEL_20:
              modelIdentifier = [v4 modelIdentifier];
              if (modelIdentifier)
              {
                model = [v7 model];
                v19 = modelIdentifier;
                v20 = model;
                v21 = v20;
                if (v19 == v20)
                {

                  goto LABEL_28;
                }

                if (v20)
                {
                  v22 = [v19 isEqual:v20];

                  if (v22)
                  {
                    goto LABEL_28;
                  }
                }

                else
                {
                }

                [v7 setModel:v19];
                v50 = 1;
              }

LABEL_28:
              name = [v4 name];
              if (name)
              {
                name2 = [v7 name];
                v25 = name;
                v26 = name2;
                v27 = v26;
                if (v25 != v26)
                {
                  if (v26)
                  {
                    v28 = [v25 isEqual:v26];

                    if (v28)
                    {
                      goto LABEL_32;
                    }
                  }

                  else
                  {
                  }

                  [v7 setName:v25];
                  if (v6)
                  {
LABEL_42:
                    ++v45;
                    if (dword_1002F7148 <= 20 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
                    {
                      sub_1001F7484(v7);
                    }

                    goto LABEL_49;
                  }

LABEL_46:
                  ++v44;
                  if (dword_1002F7148 <= 20 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
                  {
                    sub_1001F74C4(v7);
                  }

LABEL_49:

                  selfCopy = v47;
                  goto LABEL_50;
                }

                if (!v6)
                {
                  goto LABEL_46;
                }
              }

              else
              {
LABEL_32:
                if (!v6)
                {
                  goto LABEL_46;
                }
              }

              if (v50)
              {
                goto LABEL_42;
              }

              if (dword_1002F7148 <= 10 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
              {
                sub_1001F7444(v7);
              }

              goto LABEL_49;
            }
          }
        }

        v50 = 0;
        goto LABEL_20;
      }

LABEL_50:

      v3 = v3 + 1;
    }

    while (v49 != v3);
    v29 = [(NSArray *)obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    v49 = v29;
  }

  while (v29);
LABEL_56:

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_identityMap allKeys];
  v31 = [allKeys countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = 0;
    v34 = *v53;
    do
    {
      v35 = 0;
      do
      {
        if (*v53 != v34)
        {
          objc_enumerationMutation(allKeys);
        }

        v36 = *(*(&v52 + 1) + 8 * v35);
        v37 = [(NSMutableDictionary *)selfCopy->_identityMap objectForKeyedSubscript:v36];
        if (![v37 type])
        {
          [(NSMutableDictionary *)selfCopy->_identityMap setObject:0 forKeyedSubscript:v36];
          ++v33;
          if (dword_1002F7148 <= 20 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
          {
            sub_1001F7504(v37);
          }
        }

        v35 = v35 + 1;
      }

      while (v32 != v35);
      v38 = [allKeys countByEnumeratingWithState:&v52 objects:v60 count:16];
      v32 = v38;
    }

    while (v38);
  }

  else
  {
    v33 = 0;
  }

  if (dword_1002F7148 <= 30 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
  {
    if (selfCopy->_cbDaemonUpdated)
    {
      v39 = "yes";
    }

    else
    {
      v39 = "no";
    }

    LogPrintF(&dword_1002F7148, "[BTIdentityDaemon _idsUpdateIdentities]", 30, "UpdateIdentities: summary: added %d, removed %d, changed %d, daemon updated %s", v44, v33, v45, v39);
  }

  if (v44 || v33 || v45 || !selfCopy->_cbDaemonUpdated)
  {
    v40 = objc_alloc_init(CBController);
    [v40 setDispatchQueue:selfCopy->_dispatchQueue];
    allValues = [(NSMutableDictionary *)selfCopy->_identityMap allValues];
    v42 = allValues;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1000C5954;
    v51[3] = &unk_1002B68A8;
    if (allValues)
    {
      v43 = allValues;
    }

    else
    {
      v43 = &__NSArray0__struct;
    }

    v51[4] = v40;
    v51[5] = selfCopy;
    [v40 updateIdentities:v43 completion:v51];
  }
}

- (BOOL)diagnosticControl:(id)control completion:(id)completion
{
  completionCopy = completion;
  controlCopy = control;
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();

  if (!v8 || [v8 caseInsensitiveCompare:@"idsUp"] && objc_msgSend(v8, "caseInsensitiveCompare:", @"idsUpForce"))
  {
    v9 = 0;
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C4F64;
    block[3] = &unk_1002B6BB0;
    block[4] = v8;
    block[5] = self;
    v13 = completionCopy;
    dispatch_async(dispatchQueue, block);

    v9 = 1;
  }

  return v9;
}

@end