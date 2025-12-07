@interface ACCBLEPairingShim
- (ACCBLEPairingShim)initWithDelegate:(id)delegate;
- (ACCBLEPairingShimProtocol)delegate;
- (BOOL)tryProcessXPCMessage:(id)message connection:(id)connection server:(id)server;
- (id)description;
- (void)accessoryAttached:(id)attached blePairingUUID:(id)d accInfoDict:(id)dict supportedPairTypes:(id)types;
- (void)accessoryDetached:(id)detached blePairingUUID:(id)d;
- (void)dataUpdate:(id)update blePairingUUID:(id)d pairType:(int)type pairData:(id)data;
- (void)dealloc;
- (void)stateUpdate:(id)update blePairingUUID:(id)d pairType:(int)type pairInfoList:(id)list;
- (void)stateUpdate:(id)update blePairingUUID:(id)d validMask:(unsigned int)mask btRadioOn:(BOOL)on pairingState:(int)state pairingModeOn:(BOOL)modeOn;
@end

@implementation ACCBLEPairingShim

- (ACCBLEPairingShim)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = ACCBLEPairingShim;
  v5 = [(ACCBLEPairingShim *)&v10 init];
  if (v5)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    uid = v5->_uid;
    v5->_uid = uUIDString;

    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v5;
}

- (void)dealloc
{
  uid = self->_uid;
  self->_uid = 0;

  objc_storeWeak(&self->_delegate, 0);
  v4.receiver = self;
  v4.super_class = ACCBLEPairingShim;
  [(ACCBLEPairingShim *)&v4 dealloc];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  uid = self->_uid;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  weakRetained = [v2 stringWithFormat:@"<ACCBLEPairingShim>[_uid=%@ _delegate=%@]", uid, WeakRetained];

  return weakRetained;
}

- (void)accessoryAttached:(id)attached blePairingUUID:(id)d accInfoDict:(id)dict supportedPairTypes:(id)types
{
  v46 = *MEMORY[0x277D85DE8];
  attachedCopy = attached;
  dCopy = d;
  dictCopy = dict;
  typesCopy = types;
  if (gLogObjects)
  {
    v13 = gNumLogObjects < 1;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v15 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  else
  {
    v15 = *gLogObjects;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v39 = attachedCopy;
    v40 = 2112;
    v41 = dCopy;
    v42 = 2112;
    v43 = dictCopy;
    v44 = 2112;
    v45 = typesCopy;
    _os_log_impl(&dword_2335AD000, v15, OS_LOG_TYPE_INFO, "accessoryAttached: %@, blePairingUUID=%@, accInfoDict=%@ supportedPairTypes=%@", buf, 0x2Au);
  }

  if (attachedCopy && dCopy && typesCopy)
  {
    v34 = dictCopy;
    v35 = dCopy;
    [MEMORY[0x277CE84E8] postNotifydNotificationType:*MEMORY[0x277CE80C0]];
    iap2ShimAccessory = [attachedCopy iap2ShimAccessory];
    accessoryInfoDict = [iap2ShimAccessory accessoryInfoDict];
    v18 = [accessoryInfoDict mutableCopy];

    v19 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v18 setObject:v19 forKey:*MEMORY[0x277CE80B8]];

    v20 = MEMORY[0x277CCABB0];
    iap2ShimAccessory2 = [attachedCopy iap2ShimAccessory];
    v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(iap2ShimAccessory2, "connectionID")}];

    v36[0] = *MEMORY[0x277CE8068];
    iap2ShimAccessory3 = [attachedCopy iap2ShimAccessory];
    manufacturer = [iap2ShimAccessory3 manufacturer];
    null = manufacturer;
    if (!manufacturer)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v37[0] = null;
    v36[1] = *MEMORY[0x277CE8070];
    iap2ShimAccessory4 = [attachedCopy iap2ShimAccessory];
    model = [iap2ShimAccessory4 model];
    null2 = model;
    if (!model)
    {
      null2 = [MEMORY[0x277CBEB68] null];
    }

    v29 = *MEMORY[0x277CE8088];
    v37[1] = null2;
    v37[2] = v22;
    v33 = v22;
    v30 = *MEMORY[0x277CE80F8];
    v36[2] = v29;
    v36[3] = v30;
    v36[4] = *MEMORY[0x277CE80F0];
    v37[3] = v35;
    v37[4] = typesCopy;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:5];
    if (!model)
    {
    }

    if (!manufacturer)
    {
    }

    [MEMORY[0x277CE84E8] notifyInterestedClientsOfACCBLEAccessoryEvent:*MEMORY[0x277CE8090] withPayload:v31];
    dictCopy = v34;
    dCopy = v35;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v18 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v18 = MEMORY[0x277D86220];
      v32 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v39 = attachedCopy;
      v40 = 2112;
      v41 = dCopy;
      v42 = 2112;
      v43 = typesCopy;
      _os_log_impl(&dword_2335AD000, v18, OS_LOG_TYPE_DEFAULT, "Invalid bleAccessory(%@) or blePairingUUID(%@) or supportedPairTypes(%@)", buf, 0x20u);
    }
  }
}

- (void)accessoryDetached:(id)detached blePairingUUID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  detachedCopy = detached;
  dCopy = d;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v19 = detachedCopy;
    v20 = 2112;
    v21 = dCopy;
    _os_log_impl(&dword_2335AD000, v9, OS_LOG_TYPE_INFO, "accessoryDetached: %@, blePairingUUID=%@", buf, 0x16u);
  }

  if (detachedCopy && dCopy)
  {
    v10 = MEMORY[0x277CCABB0];
    iap2ShimAccessory = [detachedCopy iap2ShimAccessory];
    v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(iap2ShimAccessory, "connectionID")}];

    v13 = *MEMORY[0x277CE80F8];
    v16[0] = *MEMORY[0x277CE8088];
    v16[1] = v13;
    v17[0] = v12;
    v17[1] = dCopy;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    [MEMORY[0x277CE84E8] notifyInterestedClientsOfACCBLEAccessoryEvent:*MEMORY[0x277CE8098] withPayload:v14];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v12 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v12 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = detachedCopy;
      v20 = 2112;
      v21 = dCopy;
      _os_log_impl(&dword_2335AD000, v12, OS_LOG_TYPE_DEFAULT, "Invalid bleAccessory(%@) or blePairingUUID(%@)", buf, 0x16u);
    }
  }
}

- (void)stateUpdate:(id)update blePairingUUID:(id)d validMask:(unsigned int)mask btRadioOn:(BOOL)on pairingState:(int)state pairingModeOn:(BOOL)modeOn
{
  modeOnCopy = modeOn;
  onCopy = on;
  v42 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  dCopy = d;
  if (gLogObjects)
  {
    v15 = gNumLogObjects < 1;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v17 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  else
  {
    v17 = *gLogObjects;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138413570;
    v31 = updateCopy;
    v32 = 2112;
    v33 = dCopy;
    v34 = 1024;
    maskCopy2 = mask;
    v36 = 1024;
    v37 = onCopy;
    v38 = 1024;
    stateCopy = state;
    v40 = 1024;
    v41 = modeOnCopy;
    _os_log_impl(&dword_2335AD000, v17, OS_LOG_TYPE_INFO, "stateUpdate: %@ blePairingUUID:%@ validMask:%xh btRadioOn:%d pairingState:%d pairingModeOn:%d", buf, 0x2Eu);
  }

  if (updateCopy && dCopy && mask)
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v19 = MEMORY[0x277CCABB0];
    iap2ShimAccessory = [updateCopy iap2ShimAccessory];
    v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(iap2ShimAccessory, "connectionID")}];

    v22 = *MEMORY[0x277CE80F8];
    v28[0] = *MEMORY[0x277CE8088];
    v28[1] = v22;
    v29[0] = v21;
    v29[1] = dCopy;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    [v18 addEntriesFromDictionary:v23];

    if (mask)
    {
      v26 = [MEMORY[0x277CCABB0] numberWithBool:onCopy];
      [v18 setObject:v26 forKey:*MEMORY[0x277CE80E8]];

      if ((mask & 2) == 0)
      {
LABEL_16:
        if ((mask & 4) == 0)
        {
LABEL_18:
          [MEMORY[0x277CE84E8] notifyInterestedClientsOfACCBLEAccessoryEvent:*MEMORY[0x277CE80B0] withPayload:v18];

          goto LABEL_27;
        }

LABEL_17:
        v24 = [MEMORY[0x277CCABB0] numberWithBool:modeOnCopy];
        [v18 setObject:v24 forKey:*MEMORY[0x277CE80D8]];

        goto LABEL_18;
      }
    }

    else if ((mask & 2) == 0)
    {
      goto LABEL_16;
    }

    v27 = [MEMORY[0x277CCABB0] numberWithChar:state];
    [v18 setObject:v27 forKey:*MEMORY[0x277CE80E0]];

    if ((mask & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v18 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v18 = MEMORY[0x277D86220];
    v25 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v31 = updateCopy;
    v32 = 2112;
    v33 = dCopy;
    v34 = 1024;
    maskCopy2 = mask;
    _os_log_impl(&dword_2335AD000, v18, OS_LOG_TYPE_DEFAULT, "Invalid bleAccessory(%@) or blePairingUUID(%@) or validMask(%x)", buf, 0x1Cu);
  }

LABEL_27:
}

- (void)stateUpdate:(id)update blePairingUUID:(id)d pairType:(int)type pairInfoList:(id)list
{
  v30 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  dCopy = d;
  listCopy = list;
  if (gLogObjects)
  {
    v12 = gNumLogObjects < 1;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v14 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  else
  {
    v14 = *gLogObjects;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v23 = updateCopy;
    v24 = 2112;
    v25 = dCopy;
    v26 = 1024;
    typeCopy = type;
    v28 = 2112;
    v29 = listCopy;
    _os_log_impl(&dword_2335AD000, v14, OS_LOG_TYPE_INFO, "stateUpdate: %@ blePairingUUID:%@ pairType:%d pairInfoList:%@", buf, 0x26u);
  }

  if (updateCopy && dCopy && type <= 1)
  {
    v15 = MEMORY[0x277CCABB0];
    iap2ShimAccessory = [updateCopy iap2ShimAccessory];
    v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(iap2ShimAccessory, "connectionID")}];

    v18 = *MEMORY[0x277CE80F8];
    v20[0] = *MEMORY[0x277CE8088];
    v20[1] = v18;
    v21[0] = v17;
    v21[1] = dCopy;
    v20[2] = *MEMORY[0x277CE80D0];
    v21[2] = listCopy;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    [MEMORY[0x277CE84E8] notifyInterestedClientsOfACCBLEAccessoryEvent:*MEMORY[0x277CE80A8] withPayload:v19];
  }
}

- (void)dataUpdate:(id)update blePairingUUID:(id)d pairType:(int)type pairData:(id)data
{
  v30 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  dCopy = d;
  dataCopy = data;
  if (gLogObjects)
  {
    v12 = gNumLogObjects < 1;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v14 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  else
  {
    v14 = *gLogObjects;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v23 = updateCopy;
    v24 = 2112;
    v25 = dCopy;
    v26 = 1024;
    typeCopy = type;
    v28 = 2112;
    v29 = dataCopy;
    _os_log_impl(&dword_2335AD000, v14, OS_LOG_TYPE_INFO, "dataUpdate: %@ blePairingUUID:%@ pairType:%d pairData:%@", buf, 0x26u);
  }

  if (updateCopy && dCopy && type <= 1)
  {
    v15 = MEMORY[0x277CCABB0];
    iap2ShimAccessory = [updateCopy iap2ShimAccessory];
    v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(iap2ShimAccessory, "connectionID")}];

    v18 = *MEMORY[0x277CE80F8];
    v20[0] = *MEMORY[0x277CE8088];
    v20[1] = v18;
    v21[0] = v17;
    v21[1] = dCopy;
    v20[2] = *MEMORY[0x277CE80C8];
    v21[2] = dataCopy;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    [MEMORY[0x277CE84E8] notifyInterestedClientsOfACCBLEAccessoryEvent:*MEMORY[0x277CE80A0] withPayload:v19];
  }
}

- (BOOL)tryProcessXPCMessage:(id)message connection:(id)connection server:(id)server
{
  messageCopy = message;
  connectionCopy = connection;
  string = xpc_dictionary_get_string(messageCopy, MEMORY[0x277CE8508]);
  v10 = 0x2812FE000uLL;
  v11 = 0x2812FE000uLL;
  if (!string)
  {
    if (gLogObjects)
    {
      v12 = gNumLogObjects < 1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingFeaturePlugin startPlugin];
      }

      v14 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    else
    {
      v14 = *gLogObjects;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v65[0]) = 0;
      _os_log_impl(&dword_2335AD000, v14, OS_LOG_TYPE_DEFAULT, "RequestType not specified in xpc message!", v65, 2u);
    }

    string = "<nil>";
  }

  if (gLogObjects)
  {
    v15 = gNumLogObjects < 1;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v17 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  else
  {
    v17 = *gLogObjects;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [ACCBLEPairingShim tryProcessXPCMessage:v17 connection:? server:?];
  }

  if (!strcmp(string, "IAPBluetoothDeviceGetAccessoryPairingInfo"))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (reply)
    {
      uint64 = xpc_dictionary_get_uint64(messageCopy, MEMORY[0x277CE8500]);
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v22 = [WeakRetained bleAccessoryForConnectionID:uint64];

      if (v22)
      {
        blePairingUUID = [v22 blePairingUUID];
        supportedPairTypes = [v22 supportedPairTypes];
        iap2ShimAccessory = [v22 iap2ShimAccessory];
        manufacturer = [iap2ShimAccessory manufacturer];
        xpc_dictionary_set_string(reply, "btInfoAccessoryMfg", [manufacturer UTF8String]);

        iap2ShimAccessory2 = [v22 iap2ShimAccessory];
        model = [iap2ShimAccessory2 model];
        xpc_dictionary_set_string(reply, "btInfoAccessoryModel", [model UTF8String]);

        v11 = 0x2812FE000;
        xpc_dictionary_set_data(reply, "btInfoPairUUID", [blePairingUUID bytes], objc_msgSend(blePairingUUID, "length"));
        xpc_dictionary_set_data(reply, "btInfoPairTypes", [supportedPairTypes bytes], objc_msgSend(supportedPairTypes, "length"));

        v10 = 0x2812FE000;
        v29 = 0;
      }

      else
      {
        v29 = 19;
      }

      xpc_dictionary_set_uint64(reply, MEMORY[0x277CE8500], uint64);
      xpc_dictionary_set_uint64(reply, MEMORY[0x277CE8510], v29);
      xpc_connection_send_message(connectionCopy, reply);
      [MEMORY[0x277CE84E8] markClientAsInterestedInBleNotifications:connectionCopy];
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v22 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCBLEPairingFeaturePlugin startPlugin];
        }

        v22 = MEMORY[0x277D86220];
        v50 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingShim tryProcessXPCMessage:connection:server:];
      }
    }

    goto LABEL_102;
  }

  if (!strcmp(string, "IAPBluetoothDeviceStartBLEUpdates"))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v22 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCBLEPairingFeaturePlugin startPlugin];
        }

        v22 = MEMORY[0x277D86220];
        v55 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingShim tryProcessXPCMessage:connection:server:];
      }

      goto LABEL_102;
    }

    v30 = xpc_dictionary_get_uint64(messageCopy, MEMORY[0x277CE8500]);
    v31 = objc_loadWeakRetained(&self->_delegate);
    v22 = [v31 bleAccessoryForConnectionID:v30];

    if (!v22)
    {
      NSLog(&cfstr_ErrorDevicesta.isa);
      goto LABEL_100;
    }

    v32 = xpc_dictionary_get_uint64(messageCopy, "btParmPairType");
    v33 = xpc_dictionary_get_BOOL(messageCopy, "btParmUpdatesRadio");
    v34 = xpc_dictionary_get_BOOL(messageCopy, "btParmUpdatesPairInfo");
    [v22 setSelectedPairType:v32];
    v35 = objc_loadWeakRetained(&self->_delegate);
    v36 = v33;
    v10 = 0x2812FE000;
    [v35 deviceStartBLEUpdates:v22 pairType:v32 btRadio:v36 pairInfo:v34];
LABEL_39:

LABEL_60:
    v54 = 0;
LABEL_101:
    xpc_dictionary_set_uint64(reply, MEMORY[0x277CE8510], v54);
    xpc_connection_send_message(connectionCopy, reply);
LABEL_102:

    v18 = 1;
    goto LABEL_103;
  }

  if (!strcmp(string, "IAPBluetoothDeviceStateUpdate"))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v22 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCBLEPairingFeaturePlugin startPlugin];
        }

        v22 = MEMORY[0x277D86220];
        v58 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingShim tryProcessXPCMessage:connection:server:];
      }

      goto LABEL_102;
    }

    v37 = xpc_dictionary_get_uint64(messageCopy, MEMORY[0x277CE8500]);
    v38 = objc_loadWeakRetained(&self->_delegate);
    v22 = [v38 bleAccessoryForConnectionID:v37];

    if (!v22)
    {
      NSLog(&cfstr_ErrorDevicesta_0.isa);
      goto LABEL_100;
    }

    v39 = xpc_dictionary_get_uint64(messageCopy, "btParmPairStatus");
    v40 = xpc_dictionary_get_BOOL(messageCopy, "btParmRadioOn");
    v41 = xpc_dictionary_get_BOOL(messageCopy, "btParmPairModeOn");
    v42 = xpc_dictionary_get_BOOL(messageCopy, "bParmForceUpdates");
    v35 = objc_loadWeakRetained(&self->_delegate);
    v43 = v40;
    v10 = 0x2812FE000;
    v44 = v42;
    v11 = 0x2812FE000;
    [v35 deviceStateUpdate:v22 btRadio:v43 pairStatus:v39 pairModeOn:v41 forceUpdates:v44];
    goto LABEL_39;
  }

  if (!strcmp(string, "IAPBluetoothDevicePairingData"))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v22 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCBLEPairingFeaturePlugin startPlugin];
        }

        v22 = MEMORY[0x277D86220];
        v59 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingShim tryProcessXPCMessage:connection:server:];
      }

      goto LABEL_102;
    }

    v45 = xpc_dictionary_get_uint64(messageCopy, MEMORY[0x277CE8500]);
    v46 = objc_loadWeakRetained(&self->_delegate);
    v22 = [v46 bleAccessoryForConnectionID:v45];

    if (!v22)
    {
      NSLog(&cfstr_ErrorDevicepai.isa);
      goto LABEL_100;
    }

    v65[0] = 0;
    data = xpc_dictionary_get_data(messageCopy, "btParmPairData", v65);
    v48 = [MEMORY[0x277CBEA90] dataWithBytes:data length:v65[0]];
    v49 = objc_loadWeakRetained(&self->_delegate);
    [v49 deviceSend:v22 pairType:-[NSObject selectedPairType](v22 pairingData:{"selectedPairType"), v48}];
LABEL_59:

    goto LABEL_60;
  }

  if (!strcmp(string, "IAPBluetoothDevicePairingInfoUpdate"))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v22 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCBLEPairingFeaturePlugin startPlugin];
        }

        v22 = MEMORY[0x277D86220];
        v60 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingShim tryProcessXPCMessage:connection:server:];
      }

      goto LABEL_102;
    }

    v51 = xpc_dictionary_get_uint64(messageCopy, MEMORY[0x277CE8500]);
    v52 = objc_loadWeakRetained(&self->_delegate);
    v22 = [v52 bleAccessoryForConnectionID:v51];

    if (!v22)
    {
      NSLog(&cfstr_ErrorDevicepai_0.isa);
      goto LABEL_100;
    }

    v65[0] = 0;
    v53 = xpc_dictionary_get_data(messageCopy, "btParmPairInfo", v65);
    v48 = [MEMORY[0x277CBEA90] dataWithBytes:v53 length:v65[0]];
    v49 = objc_loadWeakRetained(&self->_delegate);
    [v49 deviceUpdate:v22 pairType:-[NSObject selectedPairType](v22 pairInfo:{"selectedPairType"), v48}];
    goto LABEL_59;
  }

  if (!strcmp(string, "IAPBluetoothDeviceStopBLEUpdates"))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      v22 = logObjectForModule();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [ACCBLEPairingShim tryProcessXPCMessage:connection:server:];
      }

      goto LABEL_102;
    }

    v56 = xpc_dictionary_get_uint64(messageCopy, MEMORY[0x277CE8500]);
    v57 = objc_loadWeakRetained(&self->_delegate);
    v22 = [v57 bleAccessoryForConnectionID:v56];

    if (v22)
    {
      v35 = objc_loadWeakRetained(&self->_delegate);
      [v35 deviceStopBLEUpdates:v22];
      goto LABEL_39;
    }

    NSLog(&cfstr_ErrorDevicesto.isa);
LABEL_100:
    v54 = 19;
    goto LABEL_101;
  }

  v18 = 0;
LABEL_103:
  v61 = *(v10 + 3936);
  if (v61 && *(v11 + 3928) >= 1)
  {
    v62 = *v61;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCBLEPairingFeaturePlugin startPlugin];
    }

    v62 = MEMORY[0x277D86220];
    v63 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    [ACCBLEPairingShim tryProcessXPCMessage:v18 connection:v62 server:?];
  }

  return v18;
}

- (ACCBLEPairingShimProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tryProcessXPCMessage:(uint64_t)a1 connection:(NSObject *)a2 server:.cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&dword_2335AD000, a2, OS_LOG_TYPE_DEBUG, "tryProcessXPCMessage: messagetype=%s", &v2, 0xCu);
}

- (void)tryProcessXPCMessage:connection:server:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)tryProcessXPCMessage:connection:server:.cold.6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)tryProcessXPCMessage:connection:server:.cold.8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)tryProcessXPCMessage:connection:server:.cold.10()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)tryProcessXPCMessage:connection:server:.cold.12()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)tryProcessXPCMessage:connection:server:.cold.14()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)tryProcessXPCMessage:(uint64_t)a1 connection:(char)a2 server:(os_log_t)log .cold.16(uint64_t a1, char a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = a1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_debug_impl(&dword_2335AD000, log, OS_LOG_TYPE_DEBUG, "tryProcessXPCMessage: messagetype=%s processed=%d", &v3, 0x12u);
}

@end