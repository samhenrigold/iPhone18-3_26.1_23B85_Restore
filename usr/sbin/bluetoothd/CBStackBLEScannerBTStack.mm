@interface CBStackBLEScannerBTStack
- ($D91DDCA3822F03E96939068EA8DE741A)aggregateDiscoveryTypes;
- (BOOL)_addMfgScanIfNeeded:(unint64_t)needed scanRequest:(void *)request;
- (CBStackBLEScannerBTStack)init;
- (id).cxx_construct;
- (id)_deviceFilterUUIDs:(id)ds;
- (id)_packetTypeForDiscovery:(id)discovery;
- (id)_scanSummary:(void *)summary;
- (id)descriptionWithLevel:(int)level;
- (unint64_t)aggregateDiscoveryFlags;
- (void)_activate:(BOOL)_activate;
- (void)_addBufferedTypesIfNeeded:(id *)needed scanRequest:(void *)request;
- (void)_addServiceUUIDsWithParametersToScanRequestIfNeeded:(void *)needed matchFlags:(unint64_t)flags matchTypes:(id *)types uuids:(void *)uuids;
- (void)_addTypeIfNeeded:(unsigned __int8)needed matchFlags:(unint64_t)flags matchTypes:(id *)types scanRequest:(void *)request;
- (void)_addTypeWithParamsIfNeeded:(unsigned __int8)needed matchFlags:(unint64_t)flags matchTypes:(id *)types scanRequest:(void *)request;
- (void)_addUUIDIfNeeded:(LeUuid *)needed matchFlags:(unint64_t)flags matchTypes:(id *)types uuids:(void *)uuids;
- (void)_addUUIDIfNeededWithParams:(LeUuid *)params matchFlags:(unint64_t)flags matchTypes:(id *)types scanRequest:(void *)request;
- (void)_advBufferDrained;
- (void)_aopBTBufferDrained;
- (void)_deviceSegmentFound:(id)found;
- (void)_invalidated;
- (void)_oobKeysRemoveAll;
- (void)_oobKeysUpdate;
- (void)_proxyOOBKeysUpdateOnDeviceFound:(id)found;
- (void)_reportAggressiveScanIfNeeded;
- (void)_rescanTimerFired;
- (void)_rescanTimerUpdate:(BOOL)update;
- (void)_sensorTrackingUpdate;
- (void)_updateBufferedConfigsForAOP;
- (void)_updateBufferedFlags:(id)flags type:(int)type;
- (void)clearDuplicateFilterCache:(id)cache;
- (void)deviceBuffered:(id)buffered;
- (void)deviceFound:(id)found;
- (void)deviceLost:(id)lost;
- (void)finishDiscovery:(id)discovery completionHandler:(id)handler;
- (void)handleInjectedAOPBufAdv:(id)adv;
- (void)invalidate;
@end

@implementation CBStackBLEScannerBTStack

- (void)_oobKeysUpdate
{
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = self->_discoveryArray;
  v60 = [(NSArray *)obj countByEnumeratingWithState:&v88 objects:v93 count:16];
  if (v60)
  {
    v63 = 0;
    v64 = 0;
    v2 = 0;
    v66 = 0;
    v62 = 0;
    v65 = 0;
    v59 = *v89;
    do
    {
      for (i = 0; i != v60; i = i + 1)
      {
        v68 = v2;
        if (*v89 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v88 + 1) + 8 * i);
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        oobKeys = [v3 oobKeys];
        v4 = [oobKeys countByEnumeratingWithState:&v84 objects:v92 count:16];
        if (v4)
        {
          v70 = *v85;
          do
          {
            for (j = 0; j != v4; j = j + 1)
            {
              if (*v85 != v70)
              {
                objc_enumerationMutation(oobKeys);
              }

              v6 = *(*(&v84 + 1) + 8 * j);
              btAddressType = [v6 btAddressType];
              addressType = [v6 addressType];
              btAddressData = [v6 btAddressData];
              if ([btAddressData length] == 6 || objc_msgSend(btAddressData, "length") == 7)
              {
                v10 = addressType | btAddressType;
                if (v10)
                {
                  LOBYTE(v80) = v10;
                  v11 = btAddressData;
                  v12 = v11;
                  if (v11)
                  {
                    if ([v11 length] != 7 && v10 == 1 && objc_msgSend(v12, "length") == 6)
                    {
                      v13 = [NSMutableData dataWithBytes:&v80 length:1];
                      v14 = v12;
                      [v13 appendBytes:objc_msgSend(v12 length:{"bytes"), 6}];
                      btAddressData = [v13 copy];
                    }

                    else
                    {
                      btAddressData = v12;
                    }
                  }

                  else
                  {
                    btAddressData = 0;
                  }
                }

                if ([btAddressData length] == 7)
                {
                  v15 = [btAddressData subdataWithRange:{1, 6}];
                }

                else
                {
                  v15 = btAddressData;
                }

                v16 = v15;
                irkData = [v6 irkData];
                if ([irkData length] == 16)
                {
                  keyType = [v6 keyType];
                  v19 = keyType;
                  if (keyType)
                  {
                    if (keyType == 255)
                    {
                      if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
                      {
                        v20 = CUPrintNSDataAddress();
                        v21 = CUPrintNSObjectMasked();
                        v22 = CUPrintFlags32();
                        LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _oobKeysUpdate]", 30, "OOB key skip: something went wrong with oobkey type, Addr %@, IRK %@, keyType: %@", v20, v21, v22);
                      }
                    }

                    else
                    {
                      v25 = [NSNumber numberWithUnsignedInt:keyType];
                      v26 = v66;
                      if (!v66)
                      {
                        v26 = objc_alloc_init(NSMutableDictionary);
                      }

                      v66 = v26;
                      v27 = [v26 objectForKeyedSubscript:v25];
                      v28 = v27 == 0;

                      if (v28)
                      {
                        v29 = objc_alloc_init(NSMutableArray);
                        [v66 setObject:v29 forKeyedSubscript:v25];
                      }

                      v30 = v68;
                      if (!v68)
                      {
                        v30 = objc_alloc_init(NSMutableDictionary);
                      }

                      v68 = v30;
                      v31 = [v30 objectForKeyedSubscript:v25];
                      v32 = v31 == 0;

                      if (v32)
                      {
                        v33 = objc_alloc_init(NSMutableOrderedSet);
                        [v68 setObject:v33 forKeyedSubscript:v25];
                      }

                      v34 = [v68 objectForKeyedSubscript:v25];
                      v35 = [v34 count];

                      v36 = [v68 objectForKeyedSubscript:v25];
                      [v36 addObject:irkData];

                      v37 = [v68 objectForKeyedSubscript:v25];
                      LODWORD(v35) = v35 == [v37 count];

                      if (v35)
                      {
                        if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
                        {
                          v38 = CUPrintNSObjectMasked();
                          v39 = CUPrintNSDataAddress();
                          v40 = CUPrintFlags32();
                          LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _oobKeysUpdate]", 30, "OOB key skip: Duplicate irkData %@, its address %@ and keyType %@", v38, v39, v40);
                        }
                      }

                      else
                      {
                        if (v19 == 1)
                        {
                          v42 = [v66 objectForKeyedSubscript:v25];
                          [v42 addObject:v6];

                          v62 = (v62 + 1);
                          if (dword_100B50FA0 <= 20 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
                          {
                            v43 = CUPrintNSDataAddress();
                            v44 = CUPrintNSObjectMasked();
                            v45 = CUPrintFlags32();
                            LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _oobKeysUpdate]", 20, "OOB key add: Addr %@, IRK %@, keyType: %@", v43, v44, v45);
                          }
                        }

                        v63 ^= [v6 hash];
                      }
                    }
                  }

                  else if (v65 < 10)
                  {
                    v41 = v64;
                    if (!v64)
                    {
                      v41 = objc_alloc_init(NSMutableDictionary);
                    }

                    v64 = v41;
                    [v41 setObject:irkData forKeyedSubscript:btAddressData];
                    ++v65;
                  }

                  else if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
                  {
                    v23 = CUPrintNSDataAddress();
                    v24 = CUPrintNSObjectMasked();
                    LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _oobKeysUpdate]", 30, "OOB key skip: too many, Addr %@, IRK %@", v23, v24);
                  }
                }
              }
            }

            v4 = [oobKeys countByEnumeratingWithState:&v84 objects:v92 count:16];
          }

          while (v4);
        }

        v2 = v68;
      }

      v60 = [(NSArray *)obj countByEnumeratingWithState:&v88 objects:v93 count:16];
    }

    while (v60);
  }

  else
  {
    v63 = 0;
    v64 = 0;
    v2 = 0;
    v66 = 0;
    v62 = 0;
  }

  v69 = v2;

  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 0;
  oobKeyMap = self->_oobKeyMap;
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_100130888;
  v77[3] = &unk_100AE1628;
  v47 = v64;
  v78 = v47;
  v79 = &v80;
  [(NSMutableDictionary *)oobKeyMap enumerateKeysAndObjectsUsingBlock:v77];
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_100130DEC;
  v72[3] = &unk_100AE1628;
  v72[4] = self;
  v72[5] = &v73;
  [(NSMutableDictionary *)v47 enumerateKeysAndObjectsUsingBlock:v72];
  if (*(v74 + 6) || *(v81 + 6) || v63 != self->_proxyoobKeysHash)
  {
    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      v51 = [(NSMutableDictionary *)self->_oobKeyMap count];
      v52 = [(NSMutableDictionary *)v47 count];
      LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _oobKeysUpdate]", 30, "OOB keys update: changed, %d -> %d total, %d started, %d stopped", v51, v52, *(v74 + 6), *(v81 + 6));
    }

    if (v62 && dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      v49 = "Non Default OOB keys wiped and replaced: %d";
      v50 = 30;
      goto LABEL_84;
    }
  }

  else if (dword_100B50FA0 <= 10 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    v48 = [(NSMutableDictionary *)v47 count];
    v49 = "OOB keys update: unchanged, %d total";
    v50 = 10;
    v62 = v48;
LABEL_84:
    LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _oobKeysUpdate]", v50, v49, v62);
  }

  if (v63 == self->_proxyoobKeysHash && (v53 = atomic_load(&self->_aopProxyOOBKeyUpdatePending), (v53 & 1) == 0))
  {
    selfCopy2 = self;
  }

  else
  {
    if (!v66)
    {
      v66 = objc_alloc_init(NSMutableDictionary);
    }

    if (qword_100B51098 != -1)
    {
      sub_10080AB4C();
    }

    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_1000D6698;
    v71[3] = &unk_100ADF848;
    v71[4] = self;
    sub_1000C8F9C(qword_100B51090, v66, v71);
    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _oobKeysUpdate]", 30, "proxy oob hash updated from %ld to %ld", self->_proxyoobKeysHash, v63);
    }

    selfCopy2 = self;
    self->_proxyoobKeysHash = v63;
  }

  v55 = selfCopy2->_oobKeyMap;
  selfCopy2->_oobKeyMap = v47;
  v56 = v47;

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v80, 8);
}

- (void)_sensorTrackingUpdate
{
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = self->_discoveryArray;
  v2 = [(NSArray *)obj countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (!v2)
  {
    v3 = 0;
    goto LABEL_30;
  }

  v3 = 0;
  v31 = *v51;
  v32 = v2;
  do
  {
    for (i = 0; i != v32; i = i + 1)
    {
      if (*v51 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v50 + 1) + 8 * i);
      if (([v35 discoveryFlags] & 0x20000000) != 0)
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        deviceFilter = [v35 deviceFilter];
        v4 = [deviceFilter countByEnumeratingWithState:&v46 objects:v59 count:16];
        if (!v4)
        {
          goto LABEL_25;
        }

        v5 = *v47;
        while (1)
        {
          v6 = 0;
          do
          {
            if (*v47 != v5)
            {
              objc_enumerationMutation(deviceFilter);
            }

            v7 = *(*(&v46 + 1) + 8 * v6);
            v8 = [[NSUUID alloc] initWithUUIDString:v7];
            if (v8)
            {
              goto LABEL_13;
            }

            v45 = 0;
            v44 = 0;
            v9 = v7;
            [v7 UTF8String];
            if (TextToHardwareAddress())
            {
              v8 = 0;
              goto LABEL_18;
            }

            v54 = 0;
            v55 = 0;
            if (qword_100B508D0 != -1)
            {
              sub_10080AC24();
            }

            sub_1000498D4(off_100B508C8, (v44 << 40) | (BYTE1(v44) << 32) | (BYTE2(v44) << 24) | (HIBYTE(v44) << 16) | (v45 << 8) | HIBYTE(v45), 1u, 1u, 0, 0, &v54);
            v8 = sub_10004DF60(&v54);
            if (v8)
            {
LABEL_13:
              if (!v3)
              {
                v3 = objc_alloc_init(NSMutableDictionary);
              }

              [v3 setObject:v35 forKeyedSubscript:v8];
            }

LABEL_18:

            v6 = v6 + 1;
          }

          while (v4 != v6);
          v10 = [deviceFilter countByEnumeratingWithState:&v46 objects:v59 count:16];
          v4 = v10;
          if (!v10)
          {
LABEL_25:

            break;
          }
        }
      }
    }

    v32 = [(NSArray *)obj countByEnumeratingWithState:&v50 objects:v60 count:16];
  }

  while (v32);
LABEL_30:

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = self->_sensorTrackingDevices;
  v12 = [(NSSet *)v11 countByEnumeratingWithState:&v40 objects:v58 count:16];
  v13 = 0;
  if (v12)
  {
    v14 = *v41;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v40 + 1) + 8 * j);
        v17 = [v3 objectForKeyedSubscript:v16];
        v18 = v17 == 0;

        if (v18)
        {
          if (dword_100B50FA0 <= 30)
          {
            if (dword_100B50FA0 != -1 || (v19 = _LogCategory_Initialize(), v19))
            {
              v19 = LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _sensorTrackingUpdate]", 30, "SensorTracking stop %@", v16);
            }
          }

          sessionHandle = self->_sessionHandle;
          v22 = sub_100007EE8(v19, v20);
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_100137C74;
          v39[3] = &unk_100AE1200;
          v39[4] = v16;
          v39[5] = sessionHandle;
          sub_10000CA94(v22, v39);
          ++v13;
        }
      }

      v12 = [(NSSet *)v11 countByEnumeratingWithState:&v40 objects:v58 count:16];
    }

    while (v12);
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100137CCC;
  v36[3] = &unk_100AE1728;
  v38 = 1;
  v37 = -127;
  v36[4] = self;
  v36[5] = &v54;
  [v3 enumerateKeysAndObjectsUsingBlock:v36];
  if (*(v55 + 6) | v13)
  {
    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      v23 = [(NSSet *)self->_sensorTrackingDevices count];
      v24 = [v3 count];
      LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _sensorTrackingUpdate]", 30, "SensorTracking update: %d -> %d total, %d started, %d stopped", v23, v24, *(v55 + 6), v13);
    }
  }

  else if (dword_100B50FA0 <= 10 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B50FA0, "-[CBStackBLEScannerBTStack _sensorTrackingUpdate]", 10, "SensorTracking update: unchanged, %d total", [v3 count]);
  }

  if (v3)
  {
    v25 = [NSSet alloc];
    allKeys = [v3 allKeys];
    v27 = [v25 initWithArray:allKeys];
    sensorTrackingDevices = self->_sensorTrackingDevices;
    self->_sensorTrackingDevices = v27;
  }

  else
  {
    allKeys = self->_sensorTrackingDevices;
    self->_sensorTrackingDevices = 0;
  }

  self->_aggregateDiscoveryFlags = self->_aggregateDiscoveryFlags & 0xFFFFFFFFDFFFFFFFLL | (([v3 count] != 0) << 29);
  _Block_object_dispose(&v54, 8);
}

- (void)_updateBufferedConfigsForAOP
{
  v30 = objc_alloc_init(NSMutableDictionary);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  selfCopy = self;
  obj = self->_discoveryArray;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v49 count:16];
  if (v3)
  {
    v31 = 0;
    v27 = *v39;
    v28 = v3;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v38 + 1) + 8 * i);
        bufferedAdvConfigsForAOP = [v4 bufferedAdvConfigsForAOP];
        if (bufferedAdvConfigsForAOP)
        {
          v6 = v4;
          v7 = (*([v4 discoveryTypesInternalPtr] + 3) & 8) == 0;

          if (!v7)
          {
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            bufferedAdvConfigsForAOP2 = [v4 bufferedAdvConfigsForAOP];
            v9 = [bufferedAdvConfigsForAOP2 countByEnumeratingWithState:&v34 objects:v48 count:16];
            if (v9)
            {
              v10 = *v35;
              do
              {
                for (j = 0; j != v9; j = j + 1)
                {
                  if (*v35 != v10)
                  {
                    objc_enumerationMutation(bufferedAdvConfigsForAOP2);
                  }

                  v12 = *(*(&v34 + 1) + 8 * j);
                  if ([v12 applePayloadType] && objc_msgSend(v12, "applePayloadType") <= 0x64)
                  {
                    v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 applePayloadType]);
                    v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 rssiThreshold]);
                    v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 maxAge]);
                    v46[0] = @"rssiThreshold";
                    v46[1] = @"maxAge";
                    v47[0] = v14;
                    v47[1] = v15;
                    v16 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];
                    [v30 setObject:v16 forKey:v13];
                    v17 = [v12 hash];

                    v31 ^= v17;
                  }
                }

                v9 = [bufferedAdvConfigsForAOP2 countByEnumeratingWithState:&v34 objects:v48 count:16];
              }

              while (v9);
            }
          }
        }
      }

      v28 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v49 count:16];
    }

    while (v28);
  }

  else
  {
    v31 = 0;
  }

  if (selfCopy->_bufferedTypeConfigHash != v31)
  {
    v44[1] = @"descriptor";
    v45[0] = &off_100B33618;
    v44[0] = @"type";
    v42 = @"bufferedAdvConfigDict";
    v18 = [v30 copy];
    v43 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v45[1] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];

    if (dword_100B50FA0 <= 40)
    {
      if (dword_100B50FA0 != -1 || (v21 = _LogCategory_Initialize(), v21))
      {
        v21 = LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _updateBufferedConfigsForAOP]", 40, "bufferedTypeConfigHash changed from %ld to %ld. Sending report : %@", selfCopy->_bufferedTypeConfigHash, v31, v20);
      }
    }

    v23 = sub_1000C9B4C(v21, v22);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1001321FC;
    v32[3] = &unk_100ADF820;
    v24 = v20;
    v33 = v24;
    sub_10000CA94(v23, v32);
    selfCopy->_bufferedTypeConfigHash = v31;
  }
}

- (void)_reportAggressiveScanIfNeeded
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_discoveryArray;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = *v16;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        bleScanRateOverride = [v6 bleScanRateOverride];
        if (!bleScanRateOverride && (self->_screenOn || (bleScanRateOverride = [v6 bleScanRateScreenOff]) == 0))
        {
          bleScanRateOverride = [v6 bleScanRate];
        }

        screenOn = self->_screenOn;
        if (screenOn)
        {
          v9 = 31;
        }

        else
        {
          v9 = 21;
        }

        if (bleScanRateOverride < v9)
        {
          if (([v6 discoveryFlags] & 0x200000000) == 0)
          {
            continue;
          }

          screenOn = self->_screenOn;
        }

        v10 = !screenOn;
        v11 = @"agsF";
        if (!v10)
        {
          v11 = @"agsN";
        }

        v12 = v11;
        v13 = +[CBMetricsDaemon sharedCBMetricsDaemon];
        [v13 reportAggressiveScan:v6 action:v12];
      }

      v3 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }
}

- (void)_rescanTimerFired
{
  if (dword_100B50FA0 <= 15 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100071140(self);
  }

  v30 = objc_retainBlock(self->_deviceLostHandler);
  scanTicks = self->_scanTicks;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  allKeys = [(NSMutableDictionary *)self->_deviceMap allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v5)
  {
    v6 = *v40;
    do
    {
      v7 = 0;
      do
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v39 + 1) + 8 * v7);
        v9 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:v8];
        if ([v9 lastSeenTicks] < scanTicks)
        {
          if (([v9 discoveryFlags] & 0x1400000) == 0)
          {
            goto LABEL_19;
          }

          v10 = [[NSUUID alloc] initWithUUIDString:v8];
          if (!v10)
          {
            goto LABEL_19;
          }

          if (qword_100B508B0 != -1)
          {
            sub_10080ABE0();
          }

          v11 = off_100B508A8;
          sub_10004DFB4(v45, v10);
          LOBYTE(v11) = sub_100050290(v11, v45);

          if (v11)
          {
            if (dword_100B50FA0 <= 20 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _rescanTimerFired]", 20, "Device connected without adv: %@", v9);
            }

            [v9 setLastSeenTicks:mach_absolute_time()];
          }

          else
          {
LABEL_19:
            [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:v8];
            if (dword_100B50FA0 <= 20 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
            {
              mach_absolute_time();
              [v9 lastSeenTicks];
              UpTicksToSeconds();
              v12 = CUPrintDuration64();
              LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _rescanTimerFired]", 20, "Device lost: %@, lastSeen %@", v9, v12);
            }

            if (v30)
            {
              v30[2](v30, v9);
            }
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v5);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  allKeys2 = [(NSMutableDictionary *)self->_safetyAlertsDevices allKeys];
  obj = allKeys2;
  v28 = [allKeys2 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v28)
  {
    v27 = *v36;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v15 = [(NSMutableDictionary *)self->_safetyAlertsDevices objectForKeyedSubscript:v14];
        allKeys3 = [v15 allKeys];

        v17 = [allKeys3 countByEnumeratingWithState:&v31 objects:v43 count:16];
        if (v17)
        {
          v18 = *v32;
          do
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v32 != v18)
              {
                objc_enumerationMutation(allKeys3);
              }

              v20 = *(*(&v31 + 1) + 8 * j);
              v21 = [(NSMutableDictionary *)self->_safetyAlertsDevices objectForKeyedSubscript:v14];
              v22 = [v21 objectForKeyedSubscript:v20];

              if ([v22 lastSeenTicks] < scanTicks)
              {
                v23 = [(NSMutableDictionary *)self->_safetyAlertsDevices objectForKeyedSubscript:v14];
                [v23 removeObjectForKey:v20];
              }
            }

            v17 = [allKeys3 countByEnumeratingWithState:&v31 objects:v43 count:16];
          }

          while (v17);
        }

        v24 = [(NSMutableDictionary *)self->_safetyAlertsDevices objectForKeyedSubscript:v14];
        v25 = [v24 count] == 0;

        if (v25)
        {
          [(NSMutableDictionary *)self->_safetyAlertsDevices removeObjectForKey:v14];
        }
      }

      allKeys2 = obj;
      v28 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v28);
  }

  [(CBStackBLEScannerBTStack *)self _activate:1];
}

- (void)_invalidated
{
  if (!self->_scanning && !self->_invalidateDone)
  {
    btSession = self->_btSession;
    if (btSession)
    {
      sessionHandle = self->_sessionHandle;
      v5 = sub_100007EE8(self, a2);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000C3138;
      v14[3] = &unk_100AE0860;
      v14[4] = sessionHandle;
      v14[5] = btSession;
      sub_10000CA94(v5, v14);
      self->_btSession = 0;
    }

    [(CBStackBLEScannerBTStack *)self _oobKeysRemoveAll];
    v6 = objc_retainBlock(self->_invalidationHandler);
    self->_sessionHandle = 0;
    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    devicesBufferedHandler = self->_devicesBufferedHandler;
    self->_devicesBufferedHandler = 0;

    discoveryArray = self->_discoveryArray;
    self->_discoveryArray = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    suppressedOobKeys = self->_suppressedOobKeys;
    self->_suppressedOobKeys = 0;

    suppressedDeviceFilter = self->_suppressedDeviceFilter;
    self->_suppressedDeviceFilter = 0;

    self->_invalidateDone = 1;
    if (v6)
    {
      v6[2](v6);
    }

    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _invalidated]", 30, "Invalidated");
    }
  }
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    profileChangedToken = self->_profileChangedToken;
    if (profileChangedToken != -1)
    {
      profileChangedToken = notify_cancel(profileChangedToken);
      self->_profileChangedToken = -1;
    }

    if (self->_bleScannerCPP._bleScannerObjC)
    {
      if (dword_100B50FA0 <= 30)
      {
        if (dword_100B50FA0 != -1 || (profileChangedToken = _LogCategory_Initialize(), profileChangedToken))
        {
          sub_1000C8C9C(profileChangedToken, v3, v4);
        }
      }

      if (qword_100B51078 != -1)
      {
        sub_10080AA5C();
      }

      sub_10007A3F0(off_100B51070 + 1896, &self->_bleScannerCPP);
      bleScannerObjC = self->_bleScannerCPP._bleScannerObjC;
      self->_bleScannerCPP._bleScannerObjC = 0;

      selfCopy = self;
      v9 = sub_100007EE8(selfCopy, v8);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = nullsub_54;
      v16[3] = &unk_100ADF820;
      v16[4] = selfCopy;
      sub_10000CA94(v9, v16);
    }

    if (self->_scanning)
    {
      sessionHandle = self->_sessionHandle;
      v11 = sub_100007EE8(profileChangedToken, v3);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000C8DF8;
      v15[3] = &unk_100AE1200;
      v15[4] = self;
      v15[5] = sessionHandle;
      sub_10000CA94(v11, v15);
    }

    rescanTimer = self->_rescanTimer;
    if (rescanTimer)
    {
      v13 = rescanTimer;
      dispatch_source_cancel(v13);
      v14 = self->_rescanTimer;
      self->_rescanTimer = 0;
    }

    [(CBStackBLEScannerBTStack *)self _invalidated];
  }
}

- (void)_oobKeysRemoveAll
{
  [(NSMutableDictionary *)self->_oobKeyMap enumerateKeysAndObjectsUsingBlock:&stru_100AE1668];
  oobKeyMap = self->_oobKeyMap;
  self->_oobKeyMap = 0;

  if (qword_100B51098 != -1)
  {
    sub_10080ABCC();
  }

  v4 = qword_100B51090;
  v5 = objc_alloc_init(NSMutableDictionary);
  sub_1000C8F9C(v4, v5, &stru_100AE1688);

  self->_proxyoobKeysHash = 0;
}

- (id).cxx_construct
{
  self->_bleScannerCPP._vptr$LeObserverListener = &off_100AE1780;
  self->_bleScannerCPP._bleScannerObjC = 0;
  v3 = &_dispatch_main_q;
  self->_bleScannerCPP._dispatchQueue = &_dispatch_main_q;
  self->_bleScannerCPP._reportedNonLeech = 0;
  return self;
}

- (CBStackBLEScannerBTStack)init
{
  v7.receiver = self;
  v7.super_class = CBStackBLEScannerBTStack;
  v2 = [(CBStackBLEScannerBTStack *)&v7 init];
  if (v2)
  {
    v3 = [CBUtil getBluetoothDebugSettingString:@"BluetoothCustomerLogging" InKey:@"PrivateDataLogging"];
    privateDataLoggingEnabled = v2->_privateDataLoggingEnabled;
    v2->_privateDataLoggingEnabled = v3;

    v2->_profileChangedToken = -1;
    v5 = v2;
  }

  return v2;
}

- (id)descriptionWithLevel:(int)level
{
  levelCopy = level;
  v5 = [(NSMutableDictionary *)self->_deviceMap count];
  bufferedDevices = self->_bufferedDevices;
  if (bufferedDevices)
  {
    bufferedDevices = [(NSMutableArray *)bufferedDevices count];
  }

  if (levelCopy < 0x15)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_100042224;
    v30 = sub_1000425A4;
    v31 = 0;
    v25 = 0;
    v9 = "no";
    if (self->_screenOn)
    {
      v9 = "yes";
    }

    NSAppendPrintF_safe(&v25, "== CBStackBLEScanner: ID %@, devices %d, bufferedDevices %d, screenOn %s, scan %@ ==", self->_identifier, v5, bufferedDevices, v9, self->_scanSummary);
    objc_storeStrong(&v31, v25);
    v10 = v27;
    v24 = v27[5];
    NSAppendPrintF_safe(&v24, "\n");
    objc_storeStrong(v10 + 5, v24);
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    deviceMap = self->_deviceMap;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10012EC84;
    v18[3] = &unk_100ADF7F8;
    v18[4] = &v26;
    v18[5] = &v20;
    v19 = levelCopy;
    [(NSMutableDictionary *)deviceMap enumerateKeysAndObjectsUsingBlock:v18];
    v12 = v21[3];
    v13 = v5 >= v12;
    v14 = &v5[-v12];
    if (v14 != 0 && v13)
    {
      v15 = v27;
      obj = v27[5];
      NSAppendPrintF_safe(&obj, "... %d more, %d total\n", v14, v5);
      objc_storeStrong(v15 + 5, obj);
    }

    _Block_object_dispose(&v20, 8);
    v8 = v27[5];
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v7 = "no";
    if (self->_screenOn)
    {
      v7 = "yes";
    }

    v8 = NSPrintF_safe("CBStackBLEScanner: ID %@, devices %d, buffered devices %d, screenOn %s, scan %@", self->_identifier, v5, bufferedDevices, v7, self->_scanSummary);
  }

  return v8;
}

- (void)_activate:(BOOL)_activate
{
  if (!self->_deviceFoundHandler)
  {
    self = sub_10080A988(self, a2);
    goto LABEL_34;
  }

  selfCopy = self;
  if (!self->_deviceLostHandler)
  {
LABEL_34:
    self = sub_10080A970(self, a2);
    goto LABEL_35;
  }

  if (!self->_discoveryArray)
  {
LABEL_35:
    dispatchQueue = sub_10080A958(self, a2);
    goto LABEL_36;
  }

  dispatchQueue = self->_dispatchQueue;
  if (!dispatchQueue)
  {
LABEL_36:
    dispatchQueue = sub_10080A940(dispatchQueue, a2);
    goto LABEL_37;
  }

  if (!selfCopy->_identifier)
  {
LABEL_37:
    v9 = sub_10080A928(dispatchQueue, a2);
    goto LABEL_38;
  }

  _activateCopy = _activate;
  dispatch_assert_queue_V2(dispatchQueue);
  if (selfCopy->_invalidateCalled)
  {
LABEL_38:
    sub_10080A910(v9, v10);
LABEL_39:
    sub_10080A878();
    goto LABEL_9;
  }

  v11 = sub_10000E92C();
  byte_100B55320 = (*(*v11 + 160))(v11);
  p_btSession = &selfCopy->_btSession;
  if (selfCopy->_btSession)
  {
    goto LABEL_14;
  }

  v4 = [[NSString alloc] initWithFormat:@"%@-0x%X", selfCopy->_identifier, CBXPCGetNextClientID()];
  p_info = &OBJC_METACLASS___BTVCDevice.info;
  if (qword_100B50B88 != -1)
  {
    goto LABEL_39;
  }

LABEL_9:
  v12 = qword_100B50B80;
  sub_100007E30(v26, [v4 UTF8String]);
  sub_100044414(v12, v26, p_btSession, 2);
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (p_info[369] != -1)
  {
    sub_10080A88C();
  }

  v13 = sub_1000117DC(qword_100B50B80, *p_btSession);
  selfCopy->_proxyoobKeysHash = 0;
  selfCopy->_sessionHandle = v13;
  selfCopy->_bufferedTypeConfigHash = 0;

LABEL_14:
  if (!selfCopy->_bleScannerCPP._bleScannerObjC)
  {
    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080A8B4();
    }

    objc_storeStrong(&selfCopy->_bleScannerCPP._bleScannerObjC, selfCopy);
    objc_storeStrong(&selfCopy->_bleScannerCPP._dispatchQueue, selfCopy->_dispatchQueue);
    if (qword_100B51078 != -1)
    {
      sub_10080A8E8();
    }

    sub_1000DB5D8(off_100B51070 + 1896, &selfCopy->_bleScannerCPP);
  }

  *(&selfCopy->_aggregateDiscoveryFlags + 6) = 0;
  selfCopy->_aggregateDiscoveryFlags = 0;
  [(CBStackBLEScannerBTStack *)selfCopy _oobKeysUpdate];
  [(CBStackBLEScannerBTStack *)selfCopy _sensorTrackingUpdate];
  _scanRequestCreate = [(CBStackBLEScannerBTStack *)selfCopy _scanRequestCreate];
  scanning = selfCopy->_scanning;
  selfCopy->_scanning = _scanRequestCreate != 0;
  sessionHandle = selfCopy->_sessionHandle;
  v17 = [(CBStackBLEScannerBTStack *)selfCopy _scanSummary:_scanRequestCreate];
  objc_storeStrong(&selfCopy->_scanSummary, v17);
  v20 = sub_100007EE8(v18, v19);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10012F144;
  v23[3] = &unk_100AE15B8;
  v24 = scanning;
  v25 = _activateCopy;
  v23[4] = v17;
  v23[5] = _scanRequestCreate;
  v23[6] = sessionHandle;
  sub_10000CA94(v20, v23);
  if (!scanning || _activateCopy)
  {
    selfCopy->_scanTicks = mach_absolute_time();
    [(CBStackBLEScannerBTStack *)selfCopy _rescanTimerUpdate:1];
  }

  else
  {
    [(CBStackBLEScannerBTStack *)selfCopy _rescanTimerUpdate:0];
    if (dword_100B50FA0 <= 15 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _activate:]", 15, "Don't reset rescan timer: wasScanning %d, inRescan %d", 1, 0);
    }
  }

  if (selfCopy->_profileChangedToken == -1)
  {
    v21 = selfCopy->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10012F3A0;
    handler[3] = &unk_100ADF848;
    handler[4] = selfCopy;
    notify_register_dispatch("com.apple.MCX._managementStatusChangedForDomains", &selfCopy->_profileChangedToken, v21, handler);
  }
}

- (void)deviceFound:(id)found
{
  foundCopy = found;
  v5 = foundCopy;
  if (!self->_invalidateCalled)
  {
    identifier = [foundCopy identifier];
    if (!identifier)
    {
LABEL_40:

      goto LABEL_41;
    }

    v7 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:identifier];
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v9 = objc_alloc_init(CBDevice);
      [v9 setIdentifier:identifier];
      [v9 setInternalFlags:{objc_msgSend(v5, "internalFlags")}];
      v8 = 0x4000000;
      v7 = v9;
    }

    [v7 changedTypesRemoveAll];
    v10 = [v7 updateWithCBDevice:v5];
    v11 = v10 | v8;
    [v7 setChangeFlags:{objc_msgSend(v7, "changeFlags") | v10 | v8}];
    [v7 setLastSeenTicks:mach_absolute_time()];
    discoveryFlags = [v7 discoveryFlags];
    aggregateDiscoveryFlags = self->_aggregateDiscoveryFlags;
    v22 = 0;
    v21 = 0;
    CBDiscoveryTypesAddTypes();
    if ((aggregateDiscoveryFlags & 0x7CFAAEC5B14FFFFFLL & (discoveryFlags | v10)) == 0 && ([v7 discoveryTypesContainTypes:&v21] & 1) == 0 && (objc_msgSend(v7, "changedTypesContainTypes:", &v21) & 1) == 0)
    {
      if (dword_100B50FA0 <= 5 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
      {
        v17 = CUPrintFlags64();
        v18 = CBDiscoveryTypesToString();
        LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack deviceFound:]", 5, "Device found mismatch: %@, DsFl %@, DsTy %@", v7, v17, v18);
      }

      goto LABEL_39;
    }

    if ((v11 & 0x4000000) != 0)
    {
      deviceMap = self->_deviceMap;
      if (!deviceMap)
      {
        v15 = objc_alloc_init(NSMutableDictionary);
        v16 = self->_deviceMap;
        self->_deviceMap = v15;

        deviceMap = self->_deviceMap;
      }

      [(NSMutableDictionary *)deviceMap setObject:v7 forKeyedSubscript:identifier];
      if (dword_100B50FA0 <= 20 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack deviceFound:]", 20, "Device found new: %@", v7);
      }

      if (([v7 internalFlags] & 0x4000) == 0)
      {
        v19 = objc_retainBlock(self->_deviceFoundHandler);
        v20 = v19;
        if (v19)
        {
          goto LABEL_33;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if ((self->_aggregateDiscoveryFlags & (v11 | 0x100000)) == 0 && ![v7 changedTypesContainTypes:&v21])
      {
        if (dword_100B50FA0 <= 10 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack deviceFound:]", 10, "Device found unchanged: %@", v7);
        }

        goto LABEL_36;
      }

      if (dword_100B50FA0 <= 15 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack deviceFound:]", 15, "Device found changed: %@", v7);
      }

      if (([v7 internalFlags] & 0x4000) == 0)
      {
        v19 = objc_retainBlock(self->_deviceFoundHandler);
        v20 = v19;
        if (v19)
        {
LABEL_33:
          (*(v19 + 2))(v19, v7);
        }

LABEL_34:

LABEL_36:
        if (([v5 internalFlags] & 0x1000) != 0)
        {
          [(CBStackBLEScannerBTStack *)self _proxyOOBKeysUpdateOnDeviceFound:v7];
        }

        [(CBStackBLEScannerBTStack *)self _rescanTimerUpdate:0];
LABEL_39:

        goto LABEL_40;
      }
    }

    [(CBStackBLEScannerBTStack *)self _deviceSegmentFound:v7];
    goto LABEL_36;
  }

LABEL_41:
}

- (void)deviceLost:(id)lost
{
  lostCopy = lost;
  uUIDString = [lostCopy UUIDString];
  v5 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:uUIDString];
  if (v5)
  {
    [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:uUIDString];
    if (dword_100B50FA0 <= 15 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack deviceLost:]", 15, "Device lost: %@", v5);
    }

    v6 = objc_retainBlock(self->_deviceLostHandler);
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6, v5);
    }
  }

  else if (dword_100B50FA0 <= 20 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack deviceLost:]", 20, "Device lost unknown: %@", uUIDString);
  }
}

- (void)deviceBuffered:(id)buffered
{
  bufferedCopy = buffered;
  if (!self->_invalidateCalled)
  {
    bufferedDevices = self->_bufferedDevices;
    if (!bufferedDevices)
    {
      v5 = objc_alloc_init(NSMutableArray);
      v6 = self->_bufferedDevices;
      self->_bufferedDevices = v5;

      bufferedDevices = self->_bufferedDevices;
    }

    [(NSMutableArray *)bufferedDevices addObject:bufferedCopy];
    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack deviceBuffered:]", 30, "inDevice buffered: %@", bufferedCopy);
    }
  }
}

- (void)_deviceSegmentFound:(id)found
{
  foundCopy = found;
  if ([foundCopy discoveryTypesContainType:26])
  {
    if (!self->_safetyAlertsDevices)
    {
      v5 = objc_alloc_init(NSMutableDictionary);
      safetyAlertsDevices = self->_safetyAlertsDevices;
      self->_safetyAlertsDevices = v5;
    }

    safetyAlertsAlertID = [foundCopy safetyAlertsAlertID];
    if (safetyAlertsAlertID)
    {
      safetyAlertsVersion = [foundCopy safetyAlertsVersion];
      v28 = safetyAlertsVersion;
      if (safetyAlertsVersion)
      {
        v9 = [safetyAlertsAlertID mutableCopy];
        [v9 appendBytes:&v28 length:1];
        v10 = [(NSMutableDictionary *)self->_safetyAlertsDevices objectForKeyedSubscript:v9];

        if (!v10)
        {
          v11 = objc_alloc_init(NSMutableDictionary);
          [(NSMutableDictionary *)self->_safetyAlertsDevices setObject:v11 forKeyedSubscript:v9];
        }

        v26 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [foundCopy safetyAlertsSegmentSegmentNumber]);
        v12 = objc_alloc_init(CBDevice);
        identifier = [foundCopy identifier];
        [v12 setIdentifier:identifier];

        [v12 setInternalFlags:{objc_msgSend(foundCopy, "internalFlags")}];
        [v12 updateWithCBDevice:foundCopy];
        v14 = [(NSMutableDictionary *)self->_safetyAlertsDevices objectForKeyedSubscript:v9];
        [v14 setObject:v12 forKeyedSubscript:v26];

        if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _deviceSegmentFound:]", 30, "Safety Alerts segment found: %@", v12);
        }

        v15 = [(NSMutableDictionary *)self->_safetyAlertsDevices objectForKeyedSubscript:v9];
        v16 = [v15 count];
        safetyAlertsSegmentSegmentsTotal = [foundCopy safetyAlertsSegmentSegmentsTotal];

        if (v16 == safetyAlertsSegmentSegmentsTotal)
        {
          v18 = [(NSMutableDictionary *)self->_safetyAlertsDevices objectForKeyedSubscript:v9];
          v19 = [v18 objectForKeyedSubscript:&off_100B33450];

          if (v19)
          {
            v20 = objc_alloc_init(CBDevice);
            identifier2 = [v19 identifier];
            [v20 setIdentifier:identifier2];

            [v20 setInternalFlags:{objc_msgSend(v19, "internalFlags")}];
            [v20 updateWithCBDevice:v19];
            v22 = [(NSMutableDictionary *)self->_safetyAlertsDevices objectForKeyedSubscript:v9];
            v27 = 0;
            [v20 updateWithSafetyAlertsSegments:v22 error:&v27];
            v23 = v27;

            if (v23)
            {
              if (dword_100B50FA0 <= 90 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _deviceSegmentFound:]", 90, "Safety Alerts update failed with error: %@", v23);
              }
            }

            else
            {
              if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _deviceSegmentFound:]", 30, "Safety Alerts found: %@", v20);
              }

              v24 = objc_retainBlock(self->_deviceFoundHandler);
              v25 = v24;
              if (v24)
              {
                (*(v24 + 2))(v24, v20);
              }
            }
          }

          else if (dword_100B50FA0 <= 90 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _deviceSegmentFound:]", 90, "Safety Alerts first segment not found");
          }
        }
      }

      else if (dword_100B50FA0 <= 90 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _deviceSegmentFound:]", 90, "Safety Alerts segment has no version");
      }
    }

    else if (dword_100B50FA0 <= 90 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _deviceSegmentFound:]", 90, "Safety Alerts segment has no alert ID");
    }
  }
}

- (void)finishDiscovery:(id)discovery completionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = objc_alloc_init(CBDiscoverySummary);
  handlerCopy[2](handlerCopy, v5, 0);
}

- (id)_packetTypeForDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  v4 = objc_alloc_init(NSMutableArray);
  discoveryFlags = [discoveryCopy discoveryFlags];
  v6 = [discoveryCopy extraDiscoveryFlags] | discoveryFlags;
  if ((v6 & 0x4000000000) != 0)
  {
    [v4 addObject:&off_100B33468];
  }

  if ((v6 & 0x8000000000) != 0)
  {
    [v4 addObject:&off_100B33480];
  }

  if ((v6 & 0x800000000000000) != 0)
  {
    [v4 addObject:&off_100B33498];
  }

  if ((v6 & 0x400000000000000) != 0)
  {
    [v4 addObject:&off_100B334B0];
  }

  if ((v6 & 0x400000) != 0)
  {
    [v4 addObject:&off_100B334C8];
  }

  if ((v6 & 0x1000000) != 0)
  {
    [v4 addObject:&off_100B334E0];
  }

  if ((v6 & 0x40) != 0)
  {
    [v4 addObject:&off_100B334F8];
  }

  if ((v6 & 0x60000000000) != 0)
  {
    [v4 addObject:&off_100B33510];
  }

  if ((v6 & 0x40) != 0)
  {
    [v4 addObject:&off_100B334F8];
  }

  if ((v6 & 0x40000) != 0)
  {
    [v4 addObject:&off_100B33528];
  }

  if ((v6 & 0x5030800010083E37) != 0)
  {
    [v4 addObject:&off_100B33540];
  }

  if ((v6 & 0x2000000400020108) != 0)
  {
    [v4 addObject:&off_100B33558];
  }

  if ((v6 & 0x5030800010083E37) != 0 || [discoveryCopy discoveryTypesContainTypes:CBDiscoveryTypesNearbyActionV1()])
  {
    [v4 addObject:&off_100B33540];
  }

  if ((v6 & 0x2000000400020108) != 0 || [discoveryCopy discoveryTypesContainTypes:CBDiscoveryTypesNearbyActionV2()])
  {
    [v4 addObject:&off_100B33558];
  }

  v19 = 1024;
  v20 = 0;
  if ((v6 & 0x1C080) != 0 || [discoveryCopy discoveryTypesContainTypes:&v19])
  {
    [v4 addObject:&off_100B33570];
  }

  v18 = 0;
  v17 = 0;
  v16 = 0x80;
  if ([discoveryCopy discoveryTypesContainTypes:&v16])
  {
    [v4 addObject:&off_100B33588];
  }

  v15 = 0;
  v14 = 0;
  v13 = 2;
  if ([discoveryCopy discoveryTypesContainTypes:&v13])
  {
    [v4 addObject:&off_100B335A0];
  }

  if ([discoveryCopy discoveryTypesContainTypes:CBDiscoveryTypesNearbyInfoV2()])
  {
    [v4 addObject:&off_100B335B8];
  }

  v12 = 0;
  v11 = 0;
  v10 = 32;
  if ([discoveryCopy discoveryTypesContainTypes:&v10])
  {
    [v4 addObject:&off_100B335D0];
  }

  v8 = 768;
  v9 = 0;
  if ([discoveryCopy discoveryTypesContainTypes:&v8])
  {
    [v4 addObject:&off_100B335E8];
  }

  if (_os_feature_enabled_impl() && [discoveryCopy discoveryTypesContainTypes:CBDiscoveryTypesSoftwareUpdate()])
  {
    [v4 addObject:&off_100B33600];
  }

  return v4;
}

- (void)clearDuplicateFilterCache:(id)cache
{
  cacheCopy = cache;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  sessionHandle = self->_sessionHandle;
  [(CBStackBLEScannerBTStack *)self _packetTypeForDiscovery:cacheCopy];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v6 = v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        unsignedCharValue = [*(*(&v16 + 1) + 8 * v9) unsignedCharValue];
        v11 = unsignedCharValue;
        v13 = sub_100007EE8(unsignedCharValue, v12);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1001306B0;
        v14[3] = &unk_100AE15D8;
        v15 = v11;
        v14[4] = sessionHandle;
        sub_10000CA94(v13, v14);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)_advBufferDrained
{
  if (dword_100B50FA0 <= 30)
  {
    if (dword_100B50FA0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10080AADC(self, a2, v2);
    }
  }
}

- (void)_aopBTBufferDrained
{
  bufferedDevices = self->_bufferedDevices;
  if (!bufferedDevices)
  {
    sub_10080AAF8(dword_100B50FA0 < 31, dword_100B50FA0, v2);
    return;
  }

  if (dword_100B50FA0 <= 30)
  {
    if (dword_100B50FA0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      bufferedDevices = self->_bufferedDevices;
    }

    LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _aopBTBufferDrained]", 30, "AOP BT buffer drained reporting %d devices", [(NSMutableArray *)bufferedDevices count]);
  }

LABEL_6:
  v5 = objc_retainBlock(self->_devicesBufferedHandler);
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, self->_bufferedDevices);
  }

  v7 = self->_bufferedDevices;
  self->_bufferedDevices = 0;
}

- (void)_proxyOOBKeysUpdateOnDeviceFound:(id)found
{
  foundCopy = found;
  nearbyActionNoWakeAuthTagData = [foundCopy nearbyActionNoWakeAuthTagData];
  btAddressData = [foundCopy btAddressData];
  v5 = sub_10000C7D0(btAddressData, v4);
  v6 = (*(*v5 + 2744))(v5);
  if (btAddressData)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) != 0 && [foundCopy nearbyActionNoWakeType] == 1 && nearbyActionNoWakeAuthTagData)
  {
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = sub_100042224;
    v29[4] = sub_1000425A4;
    v30 = 0;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = self->_discoveryArray;
    v8 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v8)
    {
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          v19 = 0;
          v20 = &v19;
          v21 = 0x3032000000;
          v22 = sub_100042224;
          v23 = sub_1000425A4;
          v24 = 0;
          oobKeys = [v11 oobKeys];
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_100131B7C;
          v18[3] = &unk_100AE16B0;
          v18[4] = btAddressData;
          v18[5] = nearbyActionNoWakeAuthTagData;
          v18[7] = v29;
          v18[8] = &v19;
          v18[6] = v11;
          [oobKeys enumerateObjectsUsingBlock:v18];

          if (v20[5])
          {
            [v11 setOobKeys:?];
            if (dword_100B50FA0 <= 20 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
            {
              oobKeys2 = [v11 oobKeys];
              LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _proxyOOBKeysUpdateOnDeviceFound:]", 20, "Updated discoveryObject.oobKeys: %@", oobKeys2);
            }
          }

          _Block_object_dispose(&v19, 8);
        }

        v8 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v8);
    }

    _Block_object_dispose(v29, 8);
  }
}

- (void)_rescanTimerUpdate:(BOOL)update
{
  updateCopy = update;
  v5 = [(NSMutableDictionary *)self->_deviceMap count];
  if (v5)
  {
    v8 = self->_rescanTimer;
    if (v8)
    {
      v9 = v8;
      if (updateCopy)
      {
        if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _rescanTimerUpdate:]", 30, "Rescan - reset rescan timer");
        }

        CUDispatchTimerSet();
      }
    }

    else
    {
      v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      rescanTimer = self->_rescanTimer;
      self->_rescanTimer = v12;

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1001321E4;
      handler[3] = &unk_100AE0B60;
      v9 = v12;
      v16 = v9;
      selfCopy = self;
      dispatch_source_set_event_handler(v9, handler);
      if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _rescanTimerUpdate:]", 30, "Initial scan - start rescan timer");
      }

      CUDispatchTimerSet();
      dispatch_activate(v9);
    }
  }

  else
  {
    if (dword_100B50FA0 <= 30)
    {
      if (dword_100B50FA0 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_10080AC08(v5, v6, v7);
      }
    }

    v10 = self->_rescanTimer;
    if (v10)
    {
      v14 = v10;
      dispatch_source_cancel(v14);
      v11 = self->_rescanTimer;
      self->_rescanTimer = 0;
    }
  }
}

- (BOOL)_addMfgScanIfNeeded:(unint64_t)needed scanRequest:(void *)request
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_discoveryArray;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        discoveryFlags = [v10 discoveryFlags];
        v12 = [v10 extraDiscoveryFlags] | discoveryFlags;
        if ((v12 & needed) != 0)
        {
          self->_aggregateDiscoveryFlags |= v12;
          v13 = 1;
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)_addTypeIfNeeded:(unsigned __int8)needed matchFlags:(unint64_t)flags matchTypes:(id *)types scanRequest:(void *)request
{
  neededCopy = needed;
  if (types)
  {
    v139 = types->var0[4] >> 7;
  }

  else
  {
    v139 = 0;
  }

  neededCopy2 = needed;
  v9 = "Invalid";
  switch(neededCopy)
  {
    case 0u:
      break;
    case 1u:
      v9 = "Hash";
      break;
    case 2u:
      v9 = "iBeacon";
      break;
    case 3u:
      v9 = "AirPrint";
      break;
    case 4u:
      v9 = "LegacyATVSetup";
      break;
    case 5u:
      v9 = "AirDrop";
      break;
    case 6u:
      v9 = "HomeKitV1";
      break;
    case 7u:
      v9 = "ProxPairing";
      break;
    case 8u:
      v9 = "HeySiri";
      break;
    case 9u:
      v9 = "AirPlayTarget";
      break;
    case 0xAu:
      v9 = "AirPlaySource";
      break;
    case 0xBu:
      v9 = "MagicSwitch";
      break;
    case 0xCu:
      v9 = "Continuity";
      break;
    case 0xDu:
      v9 = "TetheringTarget";
      break;
    case 0xEu:
      v9 = "TetheringSource";
      break;
    case 0xFu:
      v9 = "NearbyAction";
      break;
    case 0x10u:
      v9 = "NearbyInfo";
      break;
    case 0x11u:
      v9 = "HomeKitV2";
      break;
    case 0x12u:
      v9 = "ObjectDiscovery";
      break;
    case 0x13u:
      v9 = "SpatialInteraction";
      break;
    case 0x14u:
      v9 = "DCKit";
      break;
    case 0x15u:
      v9 = "NearbyActionV2";
      break;
    case 0x16u:
      v9 = "NearbyInfoV2";
      break;
    case 0x17u:
    case 0x19u:
      goto LABEL_8;
    case 0x18u:
      v9 = "DSInfo";
      break;
    case 0x1Au:
      v9 = "NearbyActionNoWake";
      break;
    case 0x1Bu:
      v9 = "SoftwareUpdate";
      break;
    default:
      if (neededCopy2 == 100)
      {
        v9 = "FastLEConnection";
      }

      else
      {
LABEL_8:
        v9 = "?";
      }

      break;
  }

  v144 = [NSString stringWithCString:v9 encoding:4];
  v10 = sub_10000E92C();
  v132 = (*(*v10 + 896))(v10);
  __dst = 0;
  v168[0] = 0;
  *(v168 + 6) = 0;
  v165 = 0;
  v166[0] = 0;
  *(v166 + 6) = 0;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  obj = self->_discoveryArray;
  v11 = [(NSArray *)obj countByEnumeratingWithState:&v159 objects:v164 count:16];
  if (!v11)
  {

    v128 = 0;
    v129 = 0;
    v95 = 0;
    goto LABEL_253;
  }

  v128 = 0;
  v129 = 0;
  v146 = 0;
  v127 = 0;
  v133 = 0;
  v134 = 0;
  v138 = 0;
  v141 = 0;
  v142 = 0;
  v12 = 0;
  v13 = *v160;
  v15 = (flags & 0x40000) == 0 || neededCopy != 19;
  v135 = 1;
  v136 = 0;
  v143 = 1;
  v130 = v15;
  v131 = 1;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v160 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v159 + 1) + 8 * i);
      discoveryFlags = [v17 discoveryFlags];
      v19 = [v17 extraDiscoveryFlags] | discoveryFlags;
      v20 = (v19 & flags) != 0;
      if (types && (v19 & flags) == 0)
      {
        v20 = [v17 discoveryTypesContainTypes:types];
      }

      if (v20)
      {
        self->_aggregateDiscoveryFlags |= v19;
        if (types)
        {
          v21 = v17;
          [v17 discoveryTypesInternalPtr];
          CBDiscoveryTypesAddTypes();
        }

        if ((v19 & 0x100000000000) == 0)
        {
          v22 = v17;
          v145 = *([v17 discoveryTypesInternalPtr] + 4);
          if (v139 == v145 >> 7)
          {
            if (neededCopy > 20)
            {
              if (neededCopy != 21)
              {
                if (neededCopy != 22)
                {
                  goto LABEL_97;
                }

                v34 = v17;
                v35 = *([v17 discoveryTypesInternalPtr] + 2);
                v36 = v17;
                v133 |= ((v35 & 0x40) >> 6) | ((*[v17 discoveryTypesInternalPtr] & 0x10) >> 4);
                if ((self->_aggregateDiscoveryFlags & 0x40000) != 0)
                {
                  oobKeys = [v17 oobKeys];
                  v51 = oobKeys == 0;

                  if (v51)
                  {
                    goto LABEL_97;
                  }

                  if (!self->_suppressedOobKeys)
                  {
                    v52 = objc_alloc_init(NSMutableDictionary);
                    suppressedOobKeys = self->_suppressedOobKeys;
                    self->_suppressedOobKeys = v52;

                    v54 = objc_alloc_init(NSMutableDictionary);
                    suppressedDeviceFilter = self->_suppressedDeviceFilter;
                    self->_suppressedDeviceFilter = v54;
                  }

                  oobKeys2 = [v17 oobKeys];
                  v57 = self->_suppressedOobKeys;
                  v58 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 useCase]);
                  [(NSMutableDictionary *)v57 setObject:oobKeys2 forKeyedSubscript:v58];

                  deviceFilter = [v17 deviceFilter];
                  v60 = self->_suppressedDeviceFilter;
                  v61 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 useCase]);
                  [(NSMutableDictionary *)v60 setObject:deviceFilter forKeyedSubscript:v61];

                  if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
                  {
                    oobKeys3 = [v17 oobKeys];
                    v63 = [oobKeys3 count];
                    deviceFilter2 = [v17 deviceFilter];
                    LogPrintF_safe(&dword_100B50FA0, "-[CBStackBLEScannerBTStack _addTypeIfNeeded:matchFlags:matchTypes:scanRequest:]", 30, "Removing oob keys count :%lu and device filter count:%lu from controller", v63, [deviceFilter2 count]);
                  }

                  [v17 setOobKeys:0];
                  [v17 setDeviceFilter:0];
                }

                else
                {
                  v37 = self->_suppressedOobKeys;
                  if (!v37)
                  {
                    goto LABEL_97;
                  }

                  v38 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 useCase]);
                  v39 = [(NSMutableDictionary *)v37 objectForKeyedSubscript:v38];
                  v40 = v39 == 0;

                  if (v40)
                  {
                    goto LABEL_97;
                  }

                  v41 = self->_suppressedOobKeys;
                  v42 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 useCase]);
                  v43 = [(NSMutableDictionary *)v41 objectForKeyedSubscript:v42];
                  [v17 setOobKeys:v43];

                  v44 = self->_suppressedDeviceFilter;
                  v45 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 useCase]);
                  v46 = [(NSMutableDictionary *)v44 objectForKeyedSubscript:v45];
                  [v17 setDeviceFilter:v46];

                  if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
                  {
                    oobKeys4 = [v17 oobKeys];
                    v48 = [oobKeys4 count];
                    deviceFilter3 = [v17 deviceFilter];
                    LogPrintF_safe(&dword_100B50FA0, "-[CBStackBLEScannerBTStack _addTypeIfNeeded:matchFlags:matchTypes:scanRequest:]", 30, "Adding oob keys count :%lu and device filter count:%lu to controller", v48, [deviceFilter3 count]);
                  }

                  v69 = self->_suppressedOobKeys;
                  v70 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 useCase]);
                  [(NSMutableDictionary *)v69 setObject:0 forKeyedSubscript:v70];

                  v71 = self->_suppressedDeviceFilter;
                  v72 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 useCase]);
                  [(NSMutableDictionary *)v71 setObject:0 forKeyedSubscript:v72];
                }

                [(CBStackBLEScannerBTStack *)self _oobKeysUpdate];
                goto LABEL_97;
              }

              if ((v19 & 0x2000000400020108) != 0 || [v17 discoveryTypesContainTypes:CBDiscoveryTypesNearbyActionV2()])
              {
                if (v129)
                {
                  continue;
                }

                if ([(NSData *)self->_selfAuthTag length]!= 3)
                {
                  v129 = 0;
                  continue;
                }

                v129 = self->_selfAuthTag;
              }
            }

            else if (neededCopy == 15)
            {
              if ((v19 & 0x2000000) != 0)
              {
                if (v127)
                {
                  v127 = 1;
                }

                else
                {
                  v65 = v17;
                  if ((*[v17 discoveryTypesInternalPtr] & 4) != 0)
                  {
                    deviceFilter4 = [v17 deviceFilter];
                    v67 = [(CBStackBLEScannerBTStack *)self _deviceFilterUUIDs:deviceFilter4];

                    v127 = 1;
                    v146 = v67;
                  }

                  else
                  {
                    v127 = 0;
                  }
                }

                if (!v128)
                {
                  if (-[NSData length](self->_selfAuthTagNonConnectable, "length") == 3 && (v68 = v17, (*([v17 discoveryTypesInternalPtr] + 1) & 0x40) != 0))
                  {
                    v128 = self->_selfAuthTagNonConnectable;
                  }

                  else
                  {
                    v128 = 0;
                  }
                }
              }
            }

            else if (neededCopy == 19)
            {
              bleRSSIThresholdOrder = [v17 bleRSSIThresholdOrder];
              BYTE4(v134) = [v17 bleRSSIThresholdOrder] < 0;
              spatialInteractionfilter = [v17 spatialInteractionfilter];
              v25 = spatialInteractionfilter == 0;

              LODWORD(v134) = (bleRSSIThresholdOrder >> 2) & 1;
              if (!v25)
              {
                for (j = 0; j != 22; ++j)
                {
                  *(&v168[-1] + j) = 0;
                }

                for (k = 0; k != 22; ++k)
                {
                  *(&v166[-1] + k) = 0;
                }

                spatialInteractionfilter2 = [v17 spatialInteractionfilter];
                blob = [spatialInteractionfilter2 blob];

                spatialInteractionfilter3 = [v17 spatialInteractionfilter];
                mask = [spatialInteractionfilter3 mask];

                v32 = blob;
                memcpy(&__dst, [blob bytes], objc_msgSend(blob, "length"));
                v33 = mask;
                memcpy(&v165, [mask bytes], objc_msgSend(mask, "length"));
              }
            }

LABEL_97:
            if ((v19 & 0x2000000000) != 0)
            {
              self->_anyActiveScan = 1;
            }

            if (v143)
            {
              v143 = ([v17 discoveryFlags] & 0x200000000) == 0;
              if ((v19 & 0x40000) != 0)
              {
LABEL_104:
                if (neededCopy == 26)
                {
                  v73 = sub_10000E92C();
                  v138 = (*(*v73 + 904))(v73);
                  v74 = sub_10000E92C();
                  v135 = (*(*v74 + 904))(v74);
                  v75 = v17;
                  discoveryTypesInternalPtr = [v17 discoveryTypesInternalPtr];
                  v136 = 1;
                  if (v19 & 0x200000000) != 0 && (discoveryTypesInternalPtr[1])
                  {
                    self->_aopBTTypes |= 0x100u;
                    goto LABEL_110;
                  }
                }

                else
                {
                  if (!v130)
                  {
                    v138 |= [v17 bleRSSIThresholdHint] < 0;
                  }

LABEL_110:
                  v136 = 1;
                }

LABEL_111:
                if ((v19 & 0x100000000000000) != 0)
                {
                  self->_objectDiscoveryFlags |= 2u;
                  if ((v19 & 0x200000000000000) != 0)
                  {
                    goto LABEL_132;
                  }

LABEL_113:
                  if ((v19 & 0x10000000000) == 0)
                  {
LABEL_115:
                    bleRSSIThresholdHint = [v17 bleRSSIThresholdHint];
                    if (v138)
                    {
                      v78 = -120;
                    }

                    else
                    {
                      v78 = -90;
                    }

                    if (v78 <= (bleRSSIThresholdHint & (bleRSSIThresholdHint >> 31)))
                    {
                      v78 = bleRSSIThresholdHint & (bleRSSIThresholdHint >> 31);
                    }

                    v79 = v78 == 0;
                    if (v78 >= v142)
                    {
                      LOBYTE(v78) = v142;
                    }

                    v142 = v78;
                    bleScanRateOverride = [v17 bleScanRateOverride];
                    if (!bleScanRateOverride && (self->_screenOn || (bleScanRateOverride = [v17 bleScanRateScreenOff]) == 0))
                    {
                      bleScanRateOverride = [v17 bleScanRate];
                      if (!bleScanRateOverride)
                      {
                        self->_scanRateAnyDefault = 1;
                      }
                    }

                    if (bleScanRateOverride > self->_scanRateHighest)
                    {
                      self->_scanRateHighest = bleScanRateOverride;
                    }

                    v141 |= v79;
                    if (v145 < 0)
                    {
                      v157 = 0;
                      v158 = 0;
                      sub_10000C704(&v157, &__dst, 0x16uLL);
                      v155 = 0;
                      v156 = 0;
                      sub_10000C704(&v155, &v165, 0x16uLL);
                      v81 = [v146 count];
                      if (v81)
                      {
                        v83 = 3;
                      }

                      else
                      {
                        v83 = 2;
                      }

                      v84 = v142;
                      if (v141)
                      {
                        v84 = -90;
                      }

                      if (v132)
                      {
                        v85 = -120;
                      }

                      else
                      {
                        v85 = v84;
                      }

                      targetCore = self->_targetCore;
                      if (v136)
                      {
                        v87 = sub_10000C7D0(v81, v82);
                        v88 = (*(*v87 + 2712))(v87);
                      }

                      else
                      {
                        v88 = 0;
                      }

                      *(&v123 + 1) = *(&v134 + 3) & 0x100;
                      LOBYTE(v123) = v88;
                      sub_100032784(request, v144, neededCopy, v83, &v157, &v155, v85, 0, !v143, targetCore, 1, v146, v123, (*(&v134 + 3) & 0x100) >> 8, v134 & 1, v135 & 1, 0, 0xFFFF0000FFFFLL, 0xFFFF);
                      for (m = 0; m != 22; ++m)
                      {
                        *(&v168[-1] + m) = 0;
                      }

                      for (n = 0; n != 22; ++n)
                      {
                        *(&v166[-1] + n) = 0;
                      }

                      v155 = &off_100AE0A78;
                      if (v156)
                      {
                        sub_10000C808(v156);
                      }

                      v157 = &off_100AE0A78;
                      if (v158)
                      {
                        sub_10000C808(v158);
                      }

                      v131 = 0;
                      v12 = 0;
                    }

                    else
                    {
                      v12 = 1;
                    }

                    continue;
                  }
                }

                else
                {
                  if ((v19 & 0x200000000000000) == 0)
                  {
                    goto LABEL_113;
                  }

LABEL_132:
                  self->_objectDiscoveryFlags |= 1u;
                  if ((v19 & 0x10000000000) == 0)
                  {
                    goto LABEL_115;
                  }
                }

                self->_anyRangeScan = 1;
                goto LABEL_115;
              }
            }

            else
            {
              v143 = 0;
              if ((v19 & 0x40000) != 0)
              {
                goto LABEL_104;
              }
            }

            if ([v17 discoveryTypesContainTypes:CBDiscoveryTypesNeedsObjectLocator()])
            {
              goto LABEL_104;
            }

            goto LABEL_111;
          }
        }
      }
    }

    v11 = [(NSArray *)obj countByEnumeratingWithState:&v159 objects:v164 count:16];
  }

  while (v11);

  if (v12)
  {
    if (v136)
    {
      v93 = sub_10000C7D0(v91, v92);
      v94 = (*(*v93 + 2712))(v93);
    }

    else
    {
      v94 = 0;
    }

    v96 = !v143;
    if ((self->_aggregateDiscoveryTypes.bitArray[1] & 0x40) != 0 && !self->_screenOn && v128)
    {

      BYTE1(__dst) = 56;
      BYTE5(__dst) = 2;
      BYTE1(v165) = 56;
      BYTE5(v165) = 2;
      v97 = [(NSData *)v128 length];
      v98 = v128;
      memcpy(&__dst + 6, [(NSData *)v128 bytes], v97);
      if (v97)
      {
        memset(&v165 + 6, 255, v97);
      }

      v157 = 0;
      v158 = 0;
      sub_10000C704(&v157, &__dst, 0x16uLL);
      v155 = 0;
      v156 = 0;
      sub_10000C704(&v155, &v165, 0x16uLL);
      v99 = [v146 count];
      if (v141)
      {
        v100 = -90;
      }

      else
      {
        v100 = v142;
      }

      if (v132)
      {
        v100 = -120;
      }

      *&v124[1] = 0x1000000;
      v124[0] = v94;
      if (v99)
      {
        v101 = 3;
      }

      else
      {
        v101 = 2;
      }

      sub_100032784(request, @"AcceptedInvitation", neededCopy, v101, &v157, &v155, v100, 0, v96, self->_targetCore, 1, 0, *v124, v124[2], v124[3], v124[4], 0, 0xFFFF0000FFFFLL, 0xFFFF);
      for (ii = 0; ii != 22; ++ii)
      {
        *(&v168[-1] + ii) = 0;
      }

      for (jj = 0; jj != 22; ++jj)
      {
        *(&v166[-1] + jj) = 0;
      }

      v155 = &off_100AE0A78;
      if (v156)
      {
        sub_10000C808(v156);
      }

      v157 = &off_100AE0A78;
      if (v158)
      {
        sub_10000C808(v158);
      }

      v131 = 0;
      v144 = @"AcceptedInvitation";
    }

    if (neededCopy == 22)
    {
      if (v133)
      {

        v157 = 0;
        v158 = 0;
        sub_10000C704(&v157, &__dst, 0x16uLL);
        v155 = 0;
        v156 = 0;
        sub_10000C704(&v155, &v165, 0x16uLL);
        if (v141)
        {
          v104 = -90;
        }

        else
        {
          v104 = v142;
        }

        if (v132)
        {
          v104 = -120;
        }

        *(&v125 + 1) = v131 & 1;
        LOBYTE(v125) = v94;
        sub_100032784(request, @"NearbyInfoV2", 22, 2, &v157, &v155, v104, 0, v96, self->_targetCore, 1, 0, v125, 0, 0, 1, 0, 0xFFFF0000FFFFLL, 0xFFFF);
        v155 = &off_100AE0A78;
        if (v156)
        {
          sub_10000C808(v156);
        }

        v157 = &off_100AE0A78;
        if (v158)
        {
          sub_10000C808(v158);
        }

        v144 = @"NearbyInfoV2";
      }

      else
      {
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v150 = self->_discoveryArray;
        v107 = [(NSArray *)v150 countByEnumeratingWithState:&v151 objects:v163 count:16];
        if (v107)
        {
          if (v138)
          {
            v108 = -120;
          }

          else
          {
            v108 = -90;
          }

          obja = v108;
          v109 = *v152;
          do
          {
            for (kk = 0; kk != v107; kk = kk + 1)
            {
              if (*v152 != v109)
              {
                objc_enumerationMutation(v150);
              }

              v111 = *(*(&v151 + 1) + 8 * kk);
              if ([v111 bleRSSIThresholdHint] > 0 || (v112 = obja, obja <= objc_msgSend(v111, "bleRSSIThresholdHint")))
              {
                if ([v111 bleRSSIThresholdHint] > 0 || (v112 = objc_msgSend(v111, "bleRSSIThresholdHint")) == 0)
                {
                  v112 = -90;
                }
              }

              deviceFilter5 = [v111 deviceFilter];
              v114 = [(CBStackBLEScannerBTStack *)self _deviceFilterUUIDs:deviceFilter5];

              v146 = v114;
              if ([v114 count])
              {
                v115 = 3;
              }

              else
              {
                v115 = 2;
              }

              v116 = v111;
              if ((*([v111 discoveryTypesInternalPtr] + 2) & 0x20) != 0)
              {

                bzero(&__dst, 0x16uLL);
                bzero(&v165, 0x16uLL);
                v157 = 0;
                v158 = 0;
                sub_10000C704(&v157, &__dst, 0x16uLL);
                v155 = 0;
                v156 = 0;
                sub_10000C704(&v155, &v165, 0x16uLL);
                sub_100032784(request, @"MiLo", 22, v115, &v157, &v155, v112, 0, v96, self->_targetCore, 1, v146, v94, 0, 0, 1, 0, 0xFFFF0000FFFFLL, 0xFFFF);
                v155 = &off_100AE0A78;
                if (v156)
                {
                  sub_10000C808(v156);
                }

                v157 = &off_100AE0A78;
                if (v158)
                {
                  sub_10000C808(v158);
                }

                v144 = @"MiLo";
              }

              v117 = v111;
              if ((*([v111 discoveryTypesInternalPtr] + 2) & 8) != 0)
              {

                LOBYTE(__dst) = 4;
                LOBYTE(v165) = 4;
                v157 = 0;
                v158 = 0;
                sub_10000C704(&v157, &__dst, 0x16uLL);
                v155 = 0;
                v156 = 0;
                sub_10000C704(&v155, &v165, 0x16uLL);
                sub_100032784(request, @"Invitation", 22, v115, &v157, &v155, v112, 0, v96, self->_targetCore, 1, v146, v94, 0, 0, 1, 0, 0xFFFF0000FFFFLL, 0xFFFF);
                v155 = &off_100AE0A78;
                if (v156)
                {
                  sub_10000C808(v156);
                }

                v157 = &off_100AE0A78;
                if (v158)
                {
                  sub_10000C808(v158);
                }

                v144 = @"Invitation";
              }

              v118 = v111;
              if ((*([v111 discoveryTypesInternalPtr] + 4) & 2) == 0)
              {
                v119 = v111;
                if ((*([v111 discoveryTypesInternalPtr] + 4) & 1) == 0)
                {
                  continue;
                }
              }

              bzero(&__dst, 0x16uLL);
              bzero(&v165, 0x16uLL);
              v157 = 0;
              v158 = 0;
              sub_10000C704(&v157, &__dst, 0x16uLL);
              v155 = 0;
              v156 = 0;
              sub_10000C704(&v155, &v165, 0x16uLL);
              sub_100032784(request, @"FaceTime", 22, v115, &v157, &v155, v112, 0, v96, self->_targetCore, 1, v146, v94, 0, 0, 1, 0, 0xFFFF0000FFFFLL, 0xFFFF);
              v155 = &off_100AE0A78;
              if (v156)
              {
                sub_10000C808(v156);
              }

              v157 = &off_100AE0A78;
              if (v158)
              {
                sub_10000C808(v158);
              }

              v144 = @"FaceTime";
            }

            v107 = [(NSArray *)v150 countByEnumeratingWithState:&v151 objects:v163 count:16];
          }

          while (v107);
        }
      }
    }

    else
    {
      if ((v127 & 1) != 0 && !self->_screenOn)
      {

        v131 = 0;
        LOWORD(__dst) = 14080;
        LOWORD(v165) = 14080;
        v144 = @"AUAction";
      }

      else if (v129)
      {
        LOBYTE(__dst) = 1;
        LOBYTE(v165) = 1;
        v105 = [(NSData *)v129 length];
        v106 = v129;
        memcpy(&__dst + 2, [(NSData *)v129 bytes], v105);
        if (v105)
        {
          memset(&v165 + 2, 255, v105);
        }

        v146 = 0;
      }

      v157 = 0;
      v158 = 0;
      sub_10000C704(&v157, &__dst, 0x16uLL);
      v155 = 0;
      v156 = 0;
      sub_10000C704(&v155, &v165, 0x16uLL);
      v120 = [v146 count];
      if (v141)
      {
        v121 = -90;
      }

      else
      {
        v121 = v142;
      }

      if (v132)
      {
        v121 = -120;
      }

      v126[4] = v135 & 1;
      v126[3] = v134 & 1;
      v126[2] = BYTE4(v134) & 1;
      v126[1] = v131 & 1;
      v126[0] = v94;
      if (v120)
      {
        v122 = 3;
      }

      else
      {
        v122 = 2;
      }

      sub_100032784(request, v144, neededCopy, v122, &v157, &v155, v121, 0, v96, self->_targetCore, 1, v146, *v126, v126[2], v126[3], v126[4], 0, 0xFFFF0000FFFFLL, 0xFFFF);
      v155 = &off_100AE0A78;
      if (v156)
      {
        sub_10000C808(v156);
      }

      v157 = &off_100AE0A78;
      if (v158)
      {
        sub_10000C808(v158);
      }
    }
  }

  v95 = v146;
LABEL_253:
}

- (void)_addTypeWithParamsIfNeeded:(unsigned __int8)needed matchFlags:(unint64_t)flags matchTypes:(id *)types scanRequest:(void *)request
{
  neededCopy = needed;
  v74 = 0;
  v75[0] = 0;
  *(v75 + 6) = 0;
  v72 = 0;
  v73[0] = 0;
  *(v73 + 6) = 0;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = self->_discoveryArray;
  v50 = [(NSArray *)obj countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (!v50)
  {
    v44 = 0;
    goto LABEL_142;
  }

  v44 = 0;
  v46 = 0;
  v48 = *v67;
LABEL_3:
  v52 = 0;
  while (1)
  {
    if (*v67 != v48)
    {
      objc_enumerationMutation(obj);
    }

    v6 = *(*(&v66 + 1) + 8 * v52);
    discoveryFlags = [v6 discoveryFlags];
    v8 = [v6 extraDiscoveryFlags] | discoveryFlags;
    v9 = (v8 & flags) != 0;
    if (types && (v8 & flags) == 0)
    {
      v9 = [v6 discoveryTypesContainTypes:types];
    }

    if (v9)
    {
      self->_aggregateDiscoveryFlags |= v8;
      if (types)
      {
        v10 = v6;
        [v6 discoveryTypesInternalPtr];
        CBDiscoveryTypesAddTypes();
      }

      if ((v8 & 0x100000000000) == 0)
      {
        break;
      }
    }

LABEL_133:
    if (++v52 == v50)
    {
      v50 = [(NSArray *)obj countByEnumeratingWithState:&v66 objects:v71 count:16];
      if (!v50)
      {
        goto LABEL_142;
      }

      goto LABEL_3;
    }
  }

  if ((v8 & 0x2000000000) != 0)
  {
    self->_anyActiveScan = 1;
    if ((v8 & 0x100000000000000) == 0)
    {
LABEL_15:
      if ((v8 & 0x200000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((v8 & 0x100000000000000) == 0)
  {
    goto LABEL_15;
  }

  self->_objectDiscoveryFlags |= 2u;
  if ((v8 & 0x200000000000000) == 0)
  {
LABEL_16:
    if ((v8 & 0x10000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_32:
  self->_objectDiscoveryFlags |= 1u;
  if ((v8 & 0x10000000000) != 0)
  {
LABEL_17:
    self->_anyRangeScan = 1;
  }

LABEL_18:
  bleRSSIThresholdHint = [v6 bleRSSIThresholdHint];
  if ((bleRSSIThresholdHint & (bleRSSIThresholdHint >> 31)) <= -90)
  {
    v12 = -90;
  }

  else
  {
    v12 = bleRSSIThresholdHint & (bleRSSIThresholdHint >> 31);
  }

  bleScanRateOverride = [v6 bleScanRateOverride];
  if (!bleScanRateOverride)
  {
    if (self->_screenOn || (bleScanRateOverride = [v6 bleScanRateScreenOff], !bleScanRateOverride))
    {
      bleScanRateOverride = [v6 bleScanRate];
      if (!bleScanRateOverride)
      {
        self->_scanRateAnyDefault = 1;
      }
    }
  }

  if (bleScanRateOverride > self->_scanRateHighest)
  {
    self->_scanRateHighest = bleScanRateOverride;
  }

  v46 |= (v8 >> 18) & 1;
  if (v46)
  {
    v15 = sub_10000C7D0(bleScanRateOverride, v14);
    v55 = (*(*v15 + 2712))(v15);
  }

  else
  {
    v55 = 0;
  }

  deviceFilter = [v6 deviceFilter];
  v56 = [(CBStackBLEScannerBTStack *)self _deviceFilterUUIDs:deviceFilter];

  v54 = (v8 >> 33) & 1;
  if ([v56 count])
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  if (neededCopy != 21)
  {
    v21 = _os_feature_enabled_impl() ^ 1;
    if (neededCopy != 27)
    {
      LOBYTE(v21) = 1;
    }

    if (v21)
    {
      bzero(&v74, 0x16uLL);
      bzero(&v72, 0x16uLL);
      v64 = 0;
      v65 = 0;
      sub_10000C704(&v64, &v74, 0x16uLL);
      v62 = 0;
      v63 = 0;
      sub_10000C704(&v62, &v72, 0x16uLL);
      if (bleRSSIThresholdHint < 0)
      {
        v22 = v12;
      }

      else
      {
        v22 = -90;
      }

      sub_100032784(request, @"Placeholder", neededCopy, v17, &v64, &v62, v22, 0, (v8 & 0x200000000) != 0, self->_targetCore, 1, v56, v55, 0, 0, 1, 0, 0xFFFF0000FFFFLL, 0xFFFF);
LABEL_95:
      v62 = &off_100AE0A78;
      if (v63)
      {
        sub_10000C808(v63);
      }

      v64 = &off_100AE0A78;
      if (v65)
      {
        sub_10000C808(v65);
      }

      goto LABEL_132;
    }

    softwareUpdatePayloads = [v6 softwareUpdatePayloads];
    if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _addTypeWithParamsIfNeeded:matchFlags:matchTypes:scanRequest:]", 30, "SWUP start scan  %@", softwareUpdatePayloads);
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v28 = softwareUpdatePayloads;
    v29 = [v28 countByEnumeratingWithState:&v58 objects:v70 count:16];
    if (!v29)
    {
LABEL_131:

      goto LABEL_132;
    }

    v30 = *v59;
    if (bleRSSIThresholdHint < 0)
    {
      v31 = v12;
    }

    else
    {
      v31 = -90;
    }

    v32 = v31;
LABEL_105:
    v33 = 0;
    while (1)
    {
      if (*v59 != v30)
      {
        objc_enumerationMutation(v28);
      }

      v34 = *(*(&v58 + 1) + 8 * v33);
      softwareUpdateActionType = [v34 softwareUpdateActionType];
      softwareUpdateDataBlob = [v34 softwareUpdateDataBlob];
      softwareUpdateDataMask = [v34 softwareUpdateDataMask];
      if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _addTypeWithParamsIfNeeded:matchFlags:matchTypes:scanRequest:]", 30, "SWUP action %d, blob  %@, mask %@", softwareUpdateActionType, softwareUpdateDataBlob, softwareUpdateDataMask);
      }

      if (!softwareUpdateActionType)
      {
        goto LABEL_129;
      }

      LOBYTE(v74) = softwareUpdateActionType;
      LOBYTE(v72) = -1;
      if (softwareUpdateDataBlob)
      {
        v38 = [softwareUpdateDataBlob length];
        v39 = softwareUpdateDataBlob;
        memcpy(&v74 + 1, [softwareUpdateDataBlob bytes], v38);
        if ([softwareUpdateDataMask length])
        {
          if ([softwareUpdateDataMask length] >= v38)
          {
            v40 = softwareUpdateDataMask;
            memcpy(&v72 + 1, [softwareUpdateDataMask bytes], v38);
            goto LABEL_119;
          }
        }

        else if (!v38)
        {
          goto LABEL_119;
        }

        memset(&v72 + 1, 255, v38);
      }

LABEL_119:
      v64 = 0;
      v65 = 0;
      sub_10000C704(&v64, &v74, 0x16uLL);
      v62 = 0;
      v63 = 0;
      sub_10000C704(&v62, &v72, 0x16uLL);
      if (dword_100B50FA0 <= 30 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _addTypeWithParamsIfNeeded:matchFlags:matchTypes:scanRequest:]", 30, "SWUP: adding to puck filter");
      }

      v41 = "?";
      if (softwareUpdateActionType <= 3)
      {
        v41 = off_100AE18B0[softwareUpdateActionType - 1];
      }

      v42 = [NSString stringWithUTF8String:v41];
      sub_100032784(request, v42, 27, v17, &v64, &v62, v32, 0, v54, self->_targetCore, 1, v56, v55, 0, 0, 1, 0, 0xFFFF0000FFFFLL, 0xFFFF);

      v62 = &off_100AE0A78;
      if (v63)
      {
        sub_10000C808(v63);
      }

      v64 = &off_100AE0A78;
      if (v65)
      {
        sub_10000C808(v65);
      }

LABEL_129:

      if (v29 == ++v33)
      {
        v29 = [v28 countByEnumeratingWithState:&v58 objects:v70 count:16];
        if (!v29)
        {
          goto LABEL_131;
        }

        goto LABEL_105;
      }
    }
  }

  bzero(&v74, 0x16uLL);
  bzero(&v72, 0x16uLL);
  if ((v8 & 0x2000000400020108) == 0 && (![v6 discoveryTypesContainTypes:CBDiscoveryTypesNearbyActionV2()] || !objc_msgSend(v6, "discoveryTypesContainTypes:", CBDiscoveryTypesNeedsIdentify())))
  {
    goto LABEL_57;
  }

  if ([(NSData *)self->_selfAuthTag length]== 3)
  {
    v18 = self->_selfAuthTag;

    LOBYTE(v74) = 1;
    LOBYTE(v72) = 1;
    v19 = [(NSData *)v18 length];
    v20 = v18;
    v44 = v18;
    memcpy(&v74 + 2, [(NSData *)v18 bytes], v19);
    if (v19)
    {
      memset(&v72 + 2, 255, v19);
    }

    if ((v8 & 0x2000000400020108) != 0)
    {
      goto LABEL_58;
    }

LABEL_57:
    if ([v6 discoveryTypesContainTypes:CBDiscoveryTypesNearbyActionV2()])
    {
LABEL_58:
      if ((v8 & 0x400000000) != 0)
      {
        BYTE1(v74) = 38;
        BYTE1(v72) = 38;
        v64 = 0;
        v65 = 0;
        sub_10000C704(&v64, &v74, 0x16uLL);
        v62 = 0;
        v63 = 0;
        sub_10000C704(&v62, &v72, 0x16uLL);
        if (bleRSSIThresholdHint < 0)
        {
          v23 = v12;
        }

        else
        {
          v23 = -90;
        }

        sub_100032784(request, @"Ensemble", 21, v17, &v64, &v62, v23, 0, (v8 & 0x200000000) != 0, self->_targetCore, 1, v56, v55, 0, 0, 1, 0, 0xFFFF0000FFFFLL, 0xFFFF);
        v62 = &off_100AE0A78;
        if (v63)
        {
          sub_10000C808(v63);
        }

        v64 = &off_100AE0A78;
        if (v65)
        {
          sub_10000C808(v65);
        }
      }

      if ((v8 & 8) != 0)
      {
        BYTE1(v74) = 51;
        BYTE1(v72) = 51;
        v64 = 0;
        v65 = 0;
        sub_10000C704(&v64, &v74, 0x16uLL);
        v62 = 0;
        v63 = 0;
        sub_10000C704(&v62, &v72, 0x16uLL);
        if (bleRSSIThresholdHint < 0)
        {
          v24 = v12;
        }

        else
        {
          v24 = -90;
        }

        sub_100032784(request, @"CLink", 21, v17, &v64, &v62, v24, 0, (v8 & 0x200000000) != 0, self->_targetCore, 1, v56, v55, 0, 0, 1, 0, 0xFFFF0000FFFFLL, 0xFFFF);
        v62 = &off_100AE0A78;
        if (v63)
        {
          sub_10000C808(v63);
        }

        v64 = &off_100AE0A78;
        if (v65)
        {
          sub_10000C808(v65);
        }
      }

      if ((v8 & 0x100) != 0)
      {
        BYTE1(v74) = 50;
        BYTE1(v72) = 50;
        v64 = 0;
        v65 = 0;
        sub_10000C704(&v64, &v74, 0x16uLL);
        v62 = 0;
        v63 = 0;
        sub_10000C704(&v62, &v72, 0x16uLL);
        if (bleRSSIThresholdHint < 0)
        {
          v25 = v12;
        }

        else
        {
          v25 = -90;
        }

        sub_100032784(request, @"RDisplay", 21, v17, &v64, &v62, v25, 0, (v8 & 0x200000000) != 0, self->_targetCore, 1, v56, v55, 0, 0, 1, 0, 0xFFFF0000FFFFLL, 0xFFFF);
        v62 = &off_100AE0A78;
        if (v63)
        {
          sub_10000C808(v63);
        }

        v64 = &off_100AE0A78;
        if (v65)
        {
          sub_10000C808(v65);
        }
      }

      if ((v8 & 0x20000) != 0)
      {
        BYTE1(v74) = 41;
        BYTE1(v72) = 41;
        v64 = 0;
        v65 = 0;
        sub_10000C704(&v64, &v74, 0x16uLL);
        v62 = 0;
        v63 = 0;
        sub_10000C704(&v62, &v72, 0x16uLL);
        if (bleRSSIThresholdHint < 0)
        {
          v26 = v12;
        }

        else
        {
          v26 = -90;
        }

        sub_100032784(request, @"RemotePairing", 21, v17, &v64, &v62, v26, 0, (v8 & 0x200000000) != 0, self->_targetCore, 1, v56, v55, 0, 0, 1, 0, 0xFFFF0000FFFFLL, 0xFFFF);
        v62 = &off_100AE0A78;
        if (v63)
        {
          sub_10000C808(v63);
        }

        v64 = &off_100AE0A78;
        if (v65)
        {
          sub_10000C808(v65);
        }
      }

      if ((v8 & 0x2000000000000000) == 0)
      {
        goto LABEL_132;
      }

      BYTE1(v74) = 40;
      BYTE1(v72) = 40;
      v64 = 0;
      v65 = 0;
      sub_10000C704(&v64, &v74, 0x16uLL);
      v62 = 0;
      v63 = 0;
      sub_10000C704(&v62, &v72, 0x16uLL);
      if (bleRSSIThresholdHint < 0)
      {
        v27 = v12;
      }

      else
      {
        v27 = -90;
      }

      sub_100032784(request, @"Wombat", 21, v17, &v64, &v62, v27, 0, (v8 & 0x200000000) != 0, self->_targetCore, 1, v56, v55, 0, 0, 1, 0, 0xFFFF0000FFFFLL, 0xFFFF);
      goto LABEL_95;
    }

LABEL_132:

    goto LABEL_133;
  }

  if (dword_100B50FA0 <= 90 && (dword_100B50FA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B50FA0, "[CBStackBLEScannerBTStack _addTypeWithParamsIfNeeded:matchFlags:matchTypes:scanRequest:]", 90, "Authtag length doesn't match set: %lu, required: %d", [(NSData *)self->_selfAuthTag length], 3);
  }

LABEL_142:
}

- (void)_addUUIDIfNeeded:(LeUuid *)needed matchFlags:(unint64_t)flags matchTypes:(id *)types uuids:(void *)uuids
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = self->_discoveryArray;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v11)
  {
    goto LABEL_28;
  }

  v12 = *v22;
  while (2)
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v22 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v21 + 1) + 8 * i);
      discoveryFlags = [v14 discoveryFlags];
      v16 = [v14 extraDiscoveryFlags] | discoveryFlags;
      v17 = (v16 & flags) != 0;
      if (types && (v16 & flags) == 0)
      {
        v17 = [v14 discoveryTypesContainTypes:types];
      }

      if (v17)
      {
        self->_aggregateDiscoveryFlags |= v16;
        if (types)
        {
          v18 = v14;
          [v14 discoveryTypesInternalPtr];
          CBDiscoveryTypesAddTypes();
        }

        if ((v16 & 0x100000000000) == 0)
        {
          if ((v16 & 0x2000000000) != 0)
          {
            self->_anyActiveScan = 1;
            if ((v16 & 0x200000000) == 0)
            {
LABEL_18:
              if ((v16 & 0x10000000000) == 0)
              {
LABEL_20:
                bleScanRateOverride = [v14 bleScanRateOverride];
                if (!bleScanRateOverride && (self->_screenOn || (bleScanRateOverride = [v14 bleScanRateScreenOff]) == 0))
                {
                  bleScanRateOverride = [v14 bleScanRate];
                  if (!bleScanRateOverride)
                  {
                    self->_scanRateAnyDefault = 1;
                  }
                }

                if (bleScanRateOverride > self->_scanRateHighest)
                {
                  self->_scanRateHighest = bleScanRateOverride;
                }

                sub_10000CDB8(uuids, needed);
                goto LABEL_28;
              }

LABEL_19:
              self->_anyRangeScan = 1;
              goto LABEL_20;
            }
          }

          else if ((v16 & 0x200000000) == 0)
          {
            goto LABEL_18;
          }

          self->_anyNeedsDups = 1;
          if ((v16 & 0x10000000000) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }
      }
    }

    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_28:
}

- (void)_addUUIDIfNeededWithParams:(LeUuid *)params matchFlags:(unint64_t)flags matchTypes:(id *)types scanRequest:(void *)request
{
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self->_discoveryArray;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v9)
  {
    v10 = *v35;
    do
    {
      v11 = 0;
      do
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * v11);
        discoveryFlags = [v12 discoveryFlags];
        v14 = [v12 extraDiscoveryFlags] | discoveryFlags;
        v15 = (v14 & flags) != 0;
        if (types && (v14 & flags) == 0)
        {
          v15 = [v12 discoveryTypesContainTypes:types];
        }

        if (v15)
        {
          self->_aggregateDiscoveryFlags |= v14;
          if (types)
          {
            v16 = v12;
            [v12 discoveryTypesInternalPtr];
            CBDiscoveryTypesAddTypes();
          }

          if ((v14 & 0x100000000000) == 0)
          {
            if ((v14 & 0x2000000000) != 0)
            {
              self->_anyActiveScan = 1;
              if ((v14 & 0x200000000) != 0)
              {
                goto LABEL_41;
              }

LABEL_15:
              if ((v14 & 0x10000000000) == 0)
              {
LABEL_17:
                bleScanRateOverride = [v12 bleScanRateOverride];
                if (!bleScanRateOverride && (self->_screenOn || (bleScanRateOverride = [v12 bleScanRateScreenOff]) == 0))
                {
                  bleScanRateOverride = [v12 bleScanRate];
                  if (!bleScanRateOverride)
                  {
                    self->_scanRateAnyDefault = 1;
                  }
                }

                if (bleScanRateOverride > self->_scanRateHighest)
                {
                  self->_scanRateHighest = bleScanRateOverride;
                }

                bleRSSIThresholdHint = [v12 bleRSSIThresholdHint];
                if ((bleRSSIThresholdHint & (bleRSSIThresholdHint >> 31)) <= -90)
                {
                  v19 = -90;
                }

                else
                {
                  v19 = bleRSSIThresholdHint & (bleRSSIThresholdHint >> 31);
                }

                sub_10006C96C(&v42, 65061);
                if (sub_10004E15C(&params->var0.var0, &v42))
                {
                  if ([v12 discoveryTypesContainTypes:CBDiscoveryTypesProximityService()])
                  {
                    v42 = 0;
                    v43[0] = 0;
                    *(v43 + 6) = 0;
                    v40 = 0;
                    v41[0] = 0;
                    *(v41 + 6) = 0;
                    v20 = v12;
                    if ((*([v12 discoveryTypesInternalPtr] + 2) & 2) != 0)
                    {
                      v21 = 0;
                      v22 = v19 & (bleRSSIThresholdHint >> 7);
                      do
                      {
                        *(&v43[-1] + v21++) = 0;
                      }

                      while (v21 != 22);
                      for (i = 0; i != 22; ++i)
                      {
                        *(&v41[-1] + i) = 0;
                      }

                      LOBYTE(v42) = 6;
                      LOBYTE(v40) = 6;
                      v32 = 0;
                      v33 = 0;
                      sub_10000C704(&v32, &v42, 0x16uLL);
                      v30 = 0;
                      v31 = 0;
                      sub_10000C704(&v30, &v40, 0x16uLL);
                      stringValue = [&off_100B33630 stringValue];
                      v25 = [NSString stringWithUTF8String:"WatchSetup"];
                      v38 = *&params->var0.var0;
                      v39 = *&params->var0.var1.var2[12];
                      sub_10003B48C(request, stringValue, v25, &v38, &v32, &v30, v22, 0, self->_targetCore, 1, 0, 0, 1);

                      v30 = &off_100AE0A78;
                      if (v31)
                      {
                        sub_10000C808(v31);
                      }

                      v32 = &off_100AE0A78;
                      if (v33)
                      {
                        sub_10000C808(v33);
                      }
                    }
                  }
                }

                goto LABEL_38;
              }
            }

            else
            {
              if ((v14 & 0x200000000) == 0)
              {
                goto LABEL_15;
              }

LABEL_41:
              self->_anyNeedsDups = 1;
              if ((v14 & 0x10000000000) == 0)
              {
                goto LABEL_17;
              }
            }

            self->_anyRangeScan = 1;
            goto LABEL_17;
          }
        }

LABEL_38:
        v11 = v11 + 1;
      }

      while (v11 != v9);
      v26 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v44 count:16];
      v9 = v26;
    }

    while (v26);
  }
}

- (void)_addServiceUUIDsWithParametersToScanRequestIfNeeded:(void *)needed matchFlags:(unint64_t)flags matchTypes:(id *)types uuids:(void *)uuids
{
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = self->_discoveryArray;
  v43 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v72 count:16];
  if (v43)
  {
    v41 = *v62;
    do
    {
      v45 = 0;
      do
      {
        if (*v62 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v61 + 1) + 8 * v45);
        discoveryFlags = [v6 discoveryFlags];
        v50 = v6;
        v8 = [v6 extraDiscoveryFlags] | discoveryFlags;
        v9 = (v8 & flags) != 0;
        if (types && (v8 & flags) == 0)
        {
          v9 = [v50 discoveryTypesContainTypes:types];
        }

        if (!v9)
        {
          goto LABEL_51;
        }

        self->_aggregateDiscoveryFlags |= v8;
        if (types)
        {
          v10 = v50;
          [v50 discoveryTypesInternalPtr];
          CBDiscoveryTypesAddTypes();
        }

        if ((v8 & 0x100000000000) != 0)
        {
          goto LABEL_51;
        }

        if ((v8 & 0x2000000000) != 0)
        {
          self->_anyActiveScan = 1;
          if ((v8 & 0x200000000) != 0)
          {
LABEL_54:
            self->_anyNeedsDups = 1;
            if ((v8 & 0x10000000000) == 0)
            {
              goto LABEL_17;
            }

LABEL_16:
            self->_anyRangeScan = 1;
            goto LABEL_17;
          }
        }

        else if ((v8 & 0x200000000) != 0)
        {
          goto LABEL_54;
        }

        if ((v8 & 0x10000000000) != 0)
        {
          goto LABEL_16;
        }

LABEL_17:
        bleScanRateOverride = [v50 bleScanRateOverride];
        if (!bleScanRateOverride && (self->_screenOn || (bleScanRateOverride = [v50 bleScanRateScreenOff]) == 0))
        {
          bleScanRateOverride = [v50 bleScanRate];
          if (!bleScanRateOverride)
          {
            self->_scanRateAnyDefault = 1;
          }
        }

        if (bleScanRateOverride > self->_scanRateHighest)
        {
          self->_scanRateHighest = bleScanRateOverride;
        }

        bleRSSIThresholdHint = [v50 bleRSSIThresholdHint];
        v59 = 0u;
        v60 = 0u;
        if ((bleRSSIThresholdHint & (bleRSSIThresholdHint >> 31)) <= -90)
        {
          v13 = -90;
        }

        else
        {
          v13 = bleRSSIThresholdHint & (bleRSSIThresholdHint >> 31);
        }

        v57 = 0uLL;
        v58 = 0uLL;
        serviceUUIDs = [v50 serviceUUIDs];
        v15 = [serviceUUIDs countByEnumeratingWithState:&v57 objects:v71 count:16];
        if (v15)
        {
          LODWORD(v16) = 0;
          v51 = serviceUUIDs;
          v52 = *v58;
          v48 = v13 & (bleRSSIThresholdHint >> 7);
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v58 != v52)
              {
                objc_enumerationMutation(v51);
              }

              v18 = *(*(&v57 + 1) + 8 * i);
              serviceUUID = [v18 serviceUUID];
              v20 = serviceUUID;
              if (serviceUUID && [serviceUUID length] <= 0xFF)
              {
                v69 = 0uLL;
                v70 = 0;
                v21 = v20;
                sub_100065F40(&v69, [v20 bytes], objc_msgSend(v20, "length"));
                blobData = [v18 blobData];
                if ([blobData length])
                {
                }

                else
                {
                  maskData = [v18 maskData];
                  v24 = [maskData length] == 0;

                  if (v24)
                  {
                    sub_10000CDB8(uuids, &v69);
                    goto LABEL_48;
                  }
                }

                memset(__dst, 0, 22);
                memset(v67, 0, 22);
                blobData2 = [v18 blobData];
                v26 = blobData2;
                bytes = [blobData2 bytes];
                blobData3 = [v18 blobData];
                if ([blobData3 length] > 0x15)
                {
                  v30 = *bytes;
                  *(__dst + 14) = *(bytes + 14);
                  __dst[0] = v30;
                }

                else
                {
                  blobData4 = [v18 blobData];
                  memcpy(__dst, bytes, [blobData4 length]);
                }

                maskData2 = [v18 maskData];
                v32 = maskData2;
                bytes2 = [maskData2 bytes];
                maskData3 = [v18 maskData];
                if ([maskData3 length] > 0x15)
                {
                  v36 = *bytes2;
                  *(v67 + 14) = *(bytes2 + 14);
                  v67[0] = v36;
                }

                else
                {
                  maskData4 = [v18 maskData];
                  memcpy(v67, bytes2, [maskData4 length]);
                }

                v55 = 0;
                v56 = 0;
                sub_10000C704(&v55, __dst, 0x16uLL);
                v53 = 0;
                v54 = 0;
                sub_10000C704(&v53, v67, 0x16uLL);
                v16 = (v16 + 1);
                v37 = [NSString stringWithFormat:@"ServiceUUIDwithBlobMask-%d", v16];
                appID = [v50 appID];
                v65 = v69;
                v66 = v70;
                sub_10003B48C(needed, v37, appID, &v65, &v55, &v53, v48, 0, self->_targetCore, 1, 0, 0, 1);

                v53 = &off_100AE0A78;
                if (v54)
                {
                  sub_10000C808(v54);
                }

                v55 = &off_100AE0A78;
                if (v56)
                {
                  sub_10000C808(v56);
                }
              }

LABEL_48:
            }

            serviceUUIDs = v51;
            v15 = [v51 countByEnumeratingWithState:&v57 objects:v71 count:16];
          }

          while (v15);
        }

LABEL_51:
        v45 = v45 + 1;
      }

      while (v45 != v43);
      v39 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v72 count:16];
      v43 = v39;
    }

    while (v39);
  }
}

- (void)_addBufferedTypesIfNeeded:(id *)needed scanRequest:(void *)request
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_discoveryArray;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 discoveryTypesContainTypes:{needed, v15}])
        {
          v11 = v10;
          [v10 discoveryTypesInternalPtr];
          CBDiscoveryTypesAddTypes();
          discoveryFlags = [v10 discoveryFlags];
          v13 = [v10 extraDiscoveryFlags] | discoveryFlags;
          self->_aggregateDiscoveryFlags |= v13;
          if ((v13 & 0x100000000000) == 0)
          {
            [(CBStackBLEScannerBTStack *)self _updateBufferedFlags:v10 type:11];
            [(CBStackBLEScannerBTStack *)self _updateBufferedFlags:v10 type:25];
            [(CBStackBLEScannerBTStack *)self _updateBufferedFlags:v10 type:29];
            [(CBStackBLEScannerBTStack *)self _updateBufferedFlags:v10 type:35];
            [(CBStackBLEScannerBTStack *)self _updateBufferedFlags:v10 type:36];
            [(CBStackBLEScannerBTStack *)self _updateBufferedFlags:v10 type:37];
            if ([v10 useCase] == 269)
            {
              self->_anyLeechBufferScan = 1;
            }

            else
            {
              self->_anyNonLeechBufferScan = 1;
              bleScanRateOverride = [v10 bleScanRateOverride];
              if (!bleScanRateOverride && (self->_screenOn || (bleScanRateOverride = [v10 bleScanRateScreenOff]) == 0))
              {
                bleScanRateOverride = [v10 bleScanRate];
                if (!bleScanRateOverride)
                {
                  self->_scanRateAnyDefault = 1;
                }
              }

              if (bleScanRateOverride > self->_scanRateHighest)
              {
                self->_scanRateHighest = bleScanRateOverride;
              }
            }
          }
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)_updateBufferedFlags:(id)flags type:(int)type
{
  flagsCopy = flags;
  v7 = flagsCopy;
  v15 = 0;
  v14 = 0;
  if ((type - 45) >= 0xFFFFFFD4)
  {
    *(&v14 + ((type - 1) >> 3)) |= 1 << (-type & 7);
  }

  v8 = [flagsCopy discoveryTypesContainTypes:&v14];
  if (type == 36)
  {
    v9 = 16;
  }

  else
  {
    v9 = type == 37;
  }

  if (type == 35)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  if (type == 29)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  if (type == 25)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11;
  }

  if (type == 11)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (type <= 34)
  {
    v10 = v13;
  }

  if (!v8)
  {
    v10 = 0;
  }

  self->_aopBTTypes |= v10;
}

- (id)_deviceFilterUUIDs:(id)ds
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  dsCopy = ds;
  v4 = 0;
  v5 = [dsCopy countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(dsCopy);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [NSUUID alloc];
        v10 = [v9 initWithUUIDString:{v8, v14}];
        if (v10)
        {
          goto LABEL_10;
        }

        v11 = sub_100777FF4(v8);
        v18[0] = 0;
        v18[1] = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10080AC24();
        }

        sub_1000498D4(off_100B508C8, v11, 1u, 1u, 0, 0, v18);
        v10 = sub_10004DF60(v18);
        if (v10)
        {
LABEL_10:
          if (!v4)
          {
            v4 = objc_alloc_init(NSMutableSet);
          }

          [v4 addObject:v10];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [dsCopy countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v5);
  }

  if ([v4 count])
  {
    allObjects = [v4 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (id)_scanSummary:(void *)summary
{
  v132 = 0;
  v133 = &v132;
  v134 = 0x3032000000;
  v135 = sub_100042224;
  v136 = sub_1000425A4;
  v137 = 0;
  obj = 0;
  v5 = CUPrintFlags64();
  summaryCopy = summary;
  NSAppendPrintF_safe(&obj, "DsFl %@", v5);
  objc_storeStrong(&v137, obj);

  v6 = (v133 + 5);
  v130 = v133[5];
  CBDiscoveryTypesAppendString();
  objc_storeStrong(v6, v130);
  if ([(NSSet *)self->_sensorTrackingDevices count])
  {
    v7 = (v133 + 5);
    v129 = v133[5];
    NSAppendPrintF_safe(&v129, ", DeviceFilter: [ ");
    objc_storeStrong(v7, v129);
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v8 = self->_sensorTrackingDevices;
    v9 = [(NSSet *)v8 countByEnumeratingWithState:&v125 objects:v138 count:16];
    if (v9)
    {
      v10 = *v126;
      v11 = "";
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v126 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v125 + 1) + 8 * i);
          v14 = (v133 + 5);
          v124 = v133[5];
          uUIDString = [v13 UUIDString];
          NSAppendPrintF_safe(&v124, "%s%@", v11, uUIDString);
          objc_storeStrong(v14, v124);

          v11 = ", ";
        }

        v9 = [(NSSet *)v8 countByEnumeratingWithState:&v125 objects:v138 count:16];
        v11 = ", ";
      }

      while (v9);
    }

    v16 = (v133 + 5);
    v123 = v133[5];
    NSAppendPrintF_safe(&v123, " ]");
    objc_storeStrong(v16, v123);
  }

  if ([(NSMutableDictionary *)self->_oobKeyMap count])
  {
    v17 = (v133 + 5);
    v122 = v133[5];
    NSAppendPrintF_safe(&v122, ", OOBKeys: [ ");
    objc_storeStrong(v17, v122);
    v118 = 0;
    v119 = &v118;
    v120 = 0x2020000000;
    v121 = 1;
    oobKeyMap = self->_oobKeyMap;
    v117[0] = _NSConcreteStackBlock;
    v117[1] = 3221225472;
    v117[2] = sub_100137AC8;
    v117[3] = &unk_100AE16D8;
    v117[4] = &v132;
    v117[5] = &v118;
    [(NSMutableDictionary *)oobKeyMap enumerateKeysAndObjectsUsingBlock:v117];
    v19 = (v133 + 5);
    v116 = v133[5];
    NSAppendPrintF_safe(&v116, " ]");
    objc_storeStrong(v19, v116);
    _Block_object_dispose(&v118, 8);
  }

  v20 = (v133 + 5);
  v115 = v133[5];
  if (self->_screenOn)
  {
    v21 = "yes";
  }

  else
  {
    v21 = "no";
  }

  NSAppendPrintF_safe(&v115, ", ScreenOn %s", v21);
  objc_storeStrong(v20, v115);
  summaryCopy7 = summary;
  if (summary)
  {
    if (*(summary + 173) == 1)
    {
      v23 = (v133 + 5);
      v114 = v133[5];
      NSAppendPrintF_safe(&v114, ", RetainDups %s", "yes");
      objc_storeStrong(v23, v114);
      summaryCopy7 = summary;
    }

    if (summaryCopy7[144] == 1)
    {
      v25 = *(summaryCopy7 + 38);
      v24 = *(summaryCopy7 + 39);
      v26 = v25 ? 100 * v24 / v25 : 0;
      v27 = summaryCopy7[160];
      v28 = (v133 + 5);
      v113 = v133[5];
      NSAppendPrintF_safe(&v113, ", %u/%u ms (%u%%)", v24, v25, v26);
      objc_storeStrong(v28, v113);
      summaryCopy7 = summary;
      if (v27)
      {
        v29 = (v133 + 5);
        v112 = v133[5];
        NSAppendPrintF_safe(&v112, ", ActiveScan %s", "yes");
        objc_storeStrong(v29, v112);
        summaryCopy7 = summary;
      }
    }

    if (*summaryCopy7 == 1)
    {
      v30 = (v133 + 5);
      v111 = v133[5];
      NSAppendPrintF_safe(&v111, ", OverallDups %s", "yes");
      objc_storeStrong(v30, v111);
      summaryCopy7 = summary;
    }

    if (summaryCopy7[164] == 1)
    {
      v31 = (v133 + 5);
      v110 = v133[5];
      NSAppendPrintF_safe(&v110, ", RangeScan %s", "yes");
      objc_storeStrong(v31, v110);
      summaryCopy7 = summary;
    }

    v118 = 0;
    v119 = 0;
    v120 = 0;
    sub_10006D7D8(&v118, *(summaryCopy7 + 11), *(summaryCopy7 + 12), 0xAAAAAAAAAAAAAAABLL * ((*(summaryCopy7 + 12) - *(summaryCopy7 + 11)) >> 5));
    v33 = v118;
    v32 = v119;
    if (v118 != v119)
    {
      v34 = (v133 + 5);
      v109 = v133[5];
      NSAppendPrintF_safe(&v109, ", Filters: ");
      objc_storeStrong(v34, v109);
      v33 = v118;
      v32 = v119;
    }

    if (v33 != v32)
    {
      v35 = "";
      v36 = " ";
      v37 = "";
      v83 = v32;
      do
      {
        v38 = (v133 + 5);
        v108 = v133[5];
        NSAppendPrintF_safe(&v108, "%s{Type %d", v37, *(v33 + 8));
        objc_storeStrong(v38, v108);
        v39 = (v133 + 5);
        v107 = v133[5];
        v40 = "no";
        if (*(v33 + 50))
        {
          v40 = "yes";
        }

        NSAppendPrintF_safe(&v107, ", Dups %s", v40);
        objc_storeStrong(v39, v107);
        v41 = (v133 + 5);
        v106 = v133[5];
        NSAppendPrintF_safe(&v106, ", RSSI %d", *(v33 + 48));
        objc_storeStrong(v41, v106);
        if (*(v33 + 64))
        {
          v42 = (v133 + 5);
          v105 = v133[5];
          NSAppendPrintF_safe(&v105, ", ObjL");
          objc_storeStrong(v42, v105);
        }

        if ((*(v33 + 68) & 1) == 0)
        {
          v43 = (v133 + 5);
          v104 = v133[5];
          NSAppendPrintF_safe(&v104, ", NoConfigController");
          objc_storeStrong(v43, v104);
        }

        if ((*(v33 + 65) & 1) == 0)
        {
          v44 = (v133 + 5);
          v103 = v133[5];
          NSAppendPrintF_safe(&v103, ", NoConsolidateRule");
          objc_storeStrong(v44, v103);
        }

        v45 = *(v33 + 40);
        v91 = &off_100AE0A78;
        v92 = v45;
        if (v45)
        {
          sub_10000C69C(v45);
        }

        v46 = sub_10000C5F8(&v91);
        v47 = sub_10000C5E0(&v91);
        v48 = v47;
        if (v47)
        {
          v49 = 0;
          while (!*(v46 + v49))
          {
            if (v47 == ++v49)
            {
              goto LABEL_80;
            }
          }

          if (v47 != v49)
          {
            if (v47 > v49)
            {
              while (!*(v46 - 1 + v48))
              {
                if (--v48 <= v49)
                {
                  v48 = v49;
                  break;
                }
              }
            }

            v50 = *(v33 + 24);
            __p = &off_100AE0A78;
            v87 = v50;
            if (v50)
            {
              sub_10000C69C(v50);
            }

            v84 = sub_10000C5F8(&__p);
            v51 = sub_10000C5E0(&__p);
            v52 = (v133 + 5);
            v102 = v133[5];
            NSAppendPrintF_safe(&v102, ", Blob [");
            objc_storeStrong(v52, v102);
            if (v49)
            {
              for (j = 0; j != v49; ++j)
              {
                v54 = (v133 + 5);
                v101 = v133[5];
                if (j)
                {
                  v55 = v36;
                }

                else
                {
                  v55 = v35;
                }

                NSAppendPrintF_safe(&v101, "%s..", v55);
                objc_storeStrong(v54, v101);
              }
            }

            v56 = v49;
            if (v49 < v48)
            {
              do
              {
                v57 = v36;
                v58 = v35;
                v59 = v57;
                if (!v56)
                {
                  v57 = v35;
                }

                v60 = (v133 + 5);
                if (v56 >= v51)
                {
                  v99 = v133[5];
                  v61 = &v99;
                  NSAppendPrintF_safe(&v99, "%s~~", v57);
                }

                else
                {
                  v100 = v133[5];
                  v61 = &v100;
                  NSAppendPrintF_safe(&v100, "%s%02X", v57, *(v84 + v56));
                }

                objc_storeStrong(v60, *v61);
                v35 = v58;
                v36 = v59;
                ++v56;
              }

              while (v48 != v56);
            }

            v62 = (v133 + 5);
            v98 = v133[5];
            NSAppendPrintF_safe(&v98, "], Mask [");
            objc_storeStrong(v62, v98);
            if (v49)
            {
              for (k = 0; k != v49; ++k)
              {
                v64 = (v133 + 5);
                v97 = v133[5];
                if (k)
                {
                  v65 = v36;
                }

                else
                {
                  v65 = v35;
                }

                NSAppendPrintF_safe(&v97, "%s..", v65);
                objc_storeStrong(v64, v97);
              }
            }

            if (v49 < v48)
            {
              do
              {
                v66 = (v133 + 5);
                v96 = v133[5];
                if (v49)
                {
                  v67 = v36;
                }

                else
                {
                  v67 = v35;
                }

                NSAppendPrintF_safe(&v96, "%s%02X", v67, *(v46 + v49));
                objc_storeStrong(v66, v96);
                ++v49;
              }

              while (v48 != v49);
            }

            v68 = (v133 + 5);
            v95 = v133[5];
            NSAppendPrintF_safe(&v95, "]");
            objc_storeStrong(v68, v95);
            __p = &off_100AE0A78;
            if (v87)
            {
              sub_10000C808(v87);
            }
          }
        }

LABEL_80:
        v69 = (v133 + 5);
        v94 = v133[5];
        NSAppendPrintF_safe(&v94, "}");
        objc_storeStrong(v69, v94);
        v91 = &off_100AE0A78;
        if (v92)
        {
          sub_10000C808(v92);
        }

        v33 += 96;
        v37 = ", ";
      }

      while (v33 != v83);
    }

    v91 = 0;
    v92 = 0;
    v93 = 0;
    sub_10000CB74(&v91, summaryCopy + 1);
    v70 = v91;
    v71 = v92;
    if (v91 != v92)
    {
      v72 = (v133 + 5);
      v90 = v133[5];
      NSAppendPrintF_safe(&v90, ", UUIDs: ");
      objc_storeStrong(v72, v90);
      v70 = v91;
      v71 = v92;
    }

    if (v70 != v71)
    {
      v73 = "";
      do
      {
        v74 = (v133 + 5);
        v89 = v133[5];
        sub_10003B85C(v70, &__p);
        if (v88 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        NSAppendPrintF_safe(&v89, "%s%s", v73, p_p);
        objc_storeStrong(v74, v89);
        if (v88 < 0)
        {
          operator delete(__p);
        }

        v70 += 5;
        v73 = ", ";
      }

      while (v70 != v71);
    }

    v76 = *(summaryCopy + 48);
    if (!v76)
    {
      goto LABEL_304;
    }

    v77 = (v133 + 5);
    v85 = v133[5];
    if (v76 < 0x20000)
    {
      if (v76 <= 0x20000)
      {
        switch(v76)
        {
          case 65536:
            v78 = "FindMyAction";
            break;
          case 65537:
            v78 = "FindMyBackground";
            break;
          case 65538:
            v78 = "FindMyActionHELE";
            break;
          case 65539:
            v78 = "FindMyBackgroundHELE";
            break;
          case 65540:
            v78 = "FindMyActionTransient";
            break;
          case 65541:
            v78 = "FindMyBackgroundTransient";
            break;
          case 65542:
            v78 = "FindMyActionHELETransient";
            break;
          case 65543:
            v78 = "FindMyBackgroundHELETransient";
            break;
          case 65544:
            v78 = "FindMyNotOptedIn";
            break;
          case 65545:
            v78 = "FindMyOptedIn";
            break;
          case 65546:
            v78 = "FindMySepAlertsEnabled";
            break;
          case 65547:
            v78 = "FindMyTemporaryAggressiveLegacy";
            break;
          case 65548:
            v78 = "FindMyTemporaryLongAggressive";
            break;
          case 65549:
            v78 = "FindMyBTFindingUserInitiated";
            break;
          case 65550:
            v78 = "FindMyHELE";
            break;
          case 65551:
            v78 = "FindMyBeaconOnDemand";
            break;
          case 65552:
            v78 = "FindMyWildTimedScan";
            break;
          case 65553:
            v78 = "FindMyBackgroundLeechScan";
            break;
          case 65554:
            v78 = "FindMySnifferMode";
            break;
          case 65555:
            v78 = "FindMyUnpair";
            break;
          case 65556:
            v78 = "FindMyUnpairHELE";
            break;
          case 65557:
            v78 = "FindMyPlaySound";
            break;
          case 65558:
            v78 = "FindMyPlaySoundHELE";
            break;
          case 65559:
            v78 = "FindMyNotOptedInBeepOnMoveWaking";
            break;
          case 65560:
            v78 = "FindMyUTTransient";
            break;
          case 65561:
            v78 = "FindMyUTHELETransient";
            break;
          case 65562:
            v78 = "FindMyActionExtendedRange";
            break;
          case 65563:
            v78 = "FindMyActionExtendedRangeLE2M";
            break;
          case 65564:
            v78 = "FindMyActionExtendedRangeTransient";
            break;
          case 65565:
            v78 = "FindMyPlaySoundExtendedRange";
            break;
          case 65566:
            v78 = "FindMyPair";
            break;
          case 65567:
            v78 = "FindMyTemporaryAggressiveLegacyExtendedRange";
            break;
          default:
            JUMPOUT(0);
        }
      }

      else
      {
        v79 = v76 - 1;
        v78 = "HealthKit";
        switch(v79)
        {
          case 0:
            goto LABEL_303;
          case 1:
            v78 = "HomeKit";
            break;
          case 2:
            v78 = "FindMyObjectConnection";
            break;
          case 3:
            v78 = "FindMyObjectConnectionTransient";
            break;
          case 4:
            v78 = "MIDI";
            break;
          case 5:
            v78 = "Continuity";
            break;
          case 6:
            v78 = "InstantHotSpot";
            break;
          case 7:
            v78 = "NearBy";
            break;
          case 8:
            v78 = "Sharing";
            break;
          case 9:
            v78 = "HearingSupport";
            break;
          case 10:
            v78 = "Magnet";
            break;
          case 11:
            v78 = "HID";
            break;
          case 12:
            v78 = "LEA";
            break;
          case 13:
            v78 = "External";
            break;
          case 14:
            v78 = "ExternalMedical";
            break;
          case 15:
            v78 = "ExternalLock";
            break;
          case 16:
            v78 = "ExternalWatch";
            break;
          case 17:
            v78 = "SmartRouting";
            break;
          case 18:
            v78 = "DigitalID";
            break;
          case 19:
            v78 = "DigitalKey";
            break;
          case 20:
            v78 = "DigitalCarKey";
            break;
          case 21:
            v78 = "HeySiri";
            break;
          case 22:
            v78 = "ThirdPartyApp";
            break;
          case 23:
            v78 = "CNJ";
            break;
          default:
            switch("HealthKit")
            {
              case 0x100u:
                v78 = "DevicePresenceDetection";
                break;
              case 0x101u:
                v78 = "AudioBox";
                break;
              case 0x102u:
                v78 = "SIMTransfer";
                break;
              case 0x103u:
                v78 = "ProximityScreenOnLeechScan";
                break;
              case 0x104u:
                v78 = "MacMigrate";
                break;
              case 0x107u:
                v78 = "HIDUARTService";
                break;
              case 0x108u:
                v78 = "AccessibilitySwitchControlPairing";
                break;
              case 0x109u:
                v78 = "BaseBandFastConnect";
                break;
              case 0x10Au:
                v78 = "SafetyAlerts";
                break;
              case 0x10Bu:
                v78 = "LECarPlay";
                break;
              case 0x10Cu:
                v78 = "TCCBluetooth";
                break;
              case 0x10Du:
                v78 = "AOPBufferLeech";
                break;
              case 0x10Eu:
                v78 = "HighPriorityScanWiFi";
                break;
              default:
                goto LABEL_302;
            }

            break;
        }
      }

      goto LABEL_303;
    }

    if (v76 > 0x80000)
    {
      if (v76 < 0x100000)
      {
        if (v76 <= 851968)
        {
          if (v76 >= 655360)
          {
            if (v76 <= 720896)
            {
              if (v76 == 655360)
              {
                v78 = "AccessDigitalHomeKey";
                goto LABEL_303;
              }

              if (v76 == 720896)
              {
                v78 = "SoftwareUpdateBTWake";
                goto LABEL_303;
              }
            }

            else
            {
              switch(v76)
              {
                case 720897:
                  v78 = "SofrwareUpdateOutboxControllerAuth";
                  goto LABEL_303;
                case 786432:
                  v78 = "ProxControlDeviceClose";
                  goto LABEL_303;
                case 851968:
                  v78 = "DCTProtocolTelephony";
                  goto LABEL_303;
              }
            }
          }

          else
          {
            if (v76 <= 524290)
            {
              if (v76 == 524289)
              {
                v78 = "ADPDBuffer";
              }

              else
              {
                v78 = "MicroLocation";
              }

              goto LABEL_303;
            }

            switch(v76)
            {
              case 524291:
                v78 = "MicroLocationLeech";
                goto LABEL_303;
              case 589824:
                v78 = "FindNearbyRemote";
                goto LABEL_303;
              case 589825:
                v78 = "FindNearbyPencil";
                goto LABEL_303;
            }
          }
        }

        else if (v76 <= 983041)
        {
          if (v76 <= 917504)
          {
            if (v76 == 851969)
            {
              v78 = "DCTProtocolDataAndTelephony";
              goto LABEL_303;
            }

            if (v76 == 917504)
            {
              v78 = "NearbyFaceTime";
              goto LABEL_303;
            }
          }

          else
          {
            switch(v76)
            {
              case 917505:
                v78 = "NearbyFaceTimeData";
                goto LABEL_303;
              case 983040:
                v78 = "SOSBeaconPartA";
                goto LABEL_303;
              case 983041:
                v78 = "SOSBeaconPartB";
                goto LABEL_303;
            }
          }
        }

        else
        {
          if (v76 <= 983044)
          {
            if (v76 == 983042)
            {
              v78 = "SOSBeaconPrecisionFindResponse";
            }

            else if (v76 == 983043)
            {
              v78 = "SOSBeaconPrecisionFindRequest";
            }

            else
            {
              v78 = "SOSBeaconScan";
            }

            goto LABEL_303;
          }

          switch(v76)
          {
            case 983045:
              v78 = "SOSBeaconActivateScan";
              goto LABEL_303;
            case 983046:
              v78 = "SOSBeaconActivateAdvA";
              goto LABEL_303;
            case 983047:
              v78 = "SOSBeaconActivateAdvB";
              goto LABEL_303;
          }
        }
      }

      else
      {
        if (v76 > 2147418111)
        {
          switch(v76)
          {
            case 2147418112:
              v78 = "InternalTestNoLockScan";
              break;
            case 2147418113:
              v78 = "InternalTestNoScreenOffScan";
              break;
            case 2147418114:
              v78 = "InternalTestScanWithNoDups";
              break;
            case 2147418115:
              v78 = "InternalTestScanWithDups";
              break;
            case 2147418116:
              v78 = "InternalTestScanFor20Seconds";
              break;
            case 2147418117:
              v78 = "InternalTestActiveScan";
              break;
            case 2147418118:
              v78 = "InternalTestUUIDScan";
              break;
            case 2147418119:
              v78 = "InternalTestScanFor10ClockSeconds";
              break;
            case 2147418120:
              v78 = "InternalTestScanBoost";
              break;
            case 2147418121:
              v78 = "InternalTestDiscoveryScanWithMRC";
              break;
            case 2147418122:
              v78 = "InternalTestAdvWithHigherPower";
              break;
            case 2147418123:
              v78 = "InternalTestScanLowDutyCycleMCOnly";
              break;
            case 2147418124:
              v78 = "InternalTestUUIDScanWithMinRSSI";
              break;
            case 2147418125:
              v78 = "InternalTestUUIDScanWithMinRSSIMediumLow";
              break;
            case 2147418126:
              v78 = "InternalTestAdvWithHigherPowerServiceDataConnectable";
              break;
            case 2147418127:
              v78 = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
              break;
            case 2147418128:
              v78 = "InternalTestAdvWithHigherPowerServiceDataS2";
              break;
            case 2147418129:
              v78 = "InternalTestAdvWithHigherPowerServiceDataS8";
              break;
            case 2147418130:
              v78 = "InternalTestDiscoveryScanCodedPHY";
              break;
            default:
              goto LABEL_302;
          }

          goto LABEL_303;
        }

        switch(v76)
        {
          case 1048576:
            v78 = "DOS";
            goto LABEL_303;
          case 1048577:
            v78 = "DOD";
            goto LABEL_303;
          case 1114112:
            v78 = "ProximityServiceDeviceSetup";
            goto LABEL_303;
        }
      }
    }

    else
    {
      if (v76 < 196608)
      {
        switch(v76)
        {
          case 131072:
            v78 = "SharingDefault";
            break;
          case 131073:
            v78 = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            v78 = "SharingSiriWatchAuth";
            break;
          case 131075:
            v78 = "SharingMacAutoUnlock";
            break;
          case 131076:
            v78 = "SharingEDTScreenOn";
            break;
          case 131077:
            v78 = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            v78 = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            v78 = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            v78 = "SharingWombatBackground";
            break;
          case 131081:
            v78 = "SharingUniversalControl";
            break;
          case 131082:
            v78 = "SharingPeopleProximity";
            break;
          case 131083:
            v78 = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            v78 = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            v78 = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            v78 = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            v78 = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            v78 = "SharingOYAutoUnlock";
            break;
          case 131090:
            v78 = "SharingAirDrop";
            break;
          case 131091:
            v78 = "SharingNearbyInvitationHost";
            break;
          case 131092:
            v78 = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            v78 = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            v78 = "SharingAirDropTempIdentity";
            break;
          case 131095:
            v78 = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            v78 = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            v78 = "SharingCountryCodeUpdate";
            break;
          case 131098:
            v78 = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            v78 = "SharingVisionProDiscovery";
            break;
          case 131100:
            v78 = "SharingVisionProStateChange";
            break;
          case 131101:
            v78 = "SharingContinuityScreen";
            break;
          case 131102:
            v78 = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            v78 = "SharingHomePodSetup";
            break;
          default:
            goto LABEL_302;
        }

        goto LABEL_303;
      }

      if (v76 > 393218)
      {
        if (v76 > 458752)
        {
          switch(v76)
          {
            case 0x70001:
              v78 = "PrecisionFindingFindee";
              goto LABEL_303;
            case 0x70002:
              v78 = "SpatialHandoffHome";
              goto LABEL_303;
            case 0x80000:
              v78 = "ADPD";
              goto LABEL_303;
          }
        }

        else
        {
          switch(v76)
          {
            case 393219:
              v78 = "AppleIDSignIn";
              goto LABEL_303;
            case 393220:
              v78 = "AppleIDSignInSettings";
              goto LABEL_303;
            case 458752:
              v78 = "PrecisionFindingFinder";
              goto LABEL_303;
          }
        }
      }

      else
      {
        if (v76 >= 393216)
        {
          if (v76 == 393216)
          {
            v78 = "CaptiveNetworkJoin";
          }

          else if (v76 == 393217)
          {
            v78 = "UseCaseSIMTransfer";
          }

          else
          {
            v78 = "MacSetup";
          }

          goto LABEL_303;
        }

        switch(v76)
        {
          case 196608:
            v78 = "DigitalIDTSA";
            goto LABEL_303;
          case 262144:
            v78 = "DigitalCarKeyThirdParty";
            goto LABEL_303;
          case 327680:
            v78 = "RapportThirdParty";
LABEL_303:
            NSAppendPrintF_safe(&v85, ", usecase %s", v78);
            objc_storeStrong(v77, v85);
LABEL_304:
            if (v91)
            {
              v92 = v91;
              operator delete(v91);
            }

            v91 = &v118;
            sub_10003B78C(&v91);
            goto LABEL_307;
        }
      }
    }

LABEL_302:
    v78 = "?";
    goto LABEL_303;
  }

LABEL_307:
  v80 = v133[5];
  _Block_object_dispose(&v132, 8);

  return v80;
}

- (unint64_t)aggregateDiscoveryFlags
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  aggregateDiscoveryFlags = selfCopy->_aggregateDiscoveryFlags;
  objc_sync_exit(selfCopy);

  return aggregateDiscoveryFlags;
}

- ($D91DDCA3822F03E96939068EA8DE741A)aggregateDiscoveryTypes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *selfCopy->_aggregateDiscoveryTypes.bitArray | (*&selfCopy->_aggregateDiscoveryTypes.bitArray[4] << 32);
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)handleInjectedAOPBufAdv:(id)adv
{
  advCopy = adv;
  v5 = advCopy;
  if (dword_100B50FA0 <= 40)
  {
    if (dword_100B50FA0 != -1 || (advCopy = _LogCategory_Initialize(), advCopy))
    {
      advCopy = LogPrintF_safe(&dword_100B50FA0, "-[CBStackBLEScannerBTStack handleInjectedAOPBufAdv:]", 40, "Posting %lu injected advertisements to AOPInterfaceManager", [v5 count]);
    }
  }

  v6 = sub_1000C9B4C(advCopy, v4);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001383C4;
  v8[3] = &unk_100ADF820;
  v7 = v5;
  v9 = v7;
  sub_10000CA94(v6, v8);
}

@end