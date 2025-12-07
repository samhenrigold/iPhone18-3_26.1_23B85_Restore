void __BTPairingAgentDeletePairedDevice_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTPairingAgentDeletePairedDevice_block_invoke_cold_2();
  }
}

uint64_t BTPairingAgentSetIOCapability(uint64_t a1, unsigned int a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTPairingAgentSetIOCapability_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgPairingAgentID", a1);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgIOCapabilities", a2);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTPairingAgentSetIOCapability_block_invoke;
    v9[3] = &unk_1E8518748;
    v9[4] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdPairingAgentSetIOCapabilityMsg", v6, v9);
    if (v6)
    {
      xpc_release(v6);
    }

    v7 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v7;
}

void __BTPairingAgentSetIOCapability_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTPairingAgentSetIOCapability_block_invoke_cold_2();
  }
}

uint64_t BTPairingAgentClearOOBDataForDevice(uint64_t a1, uint64_t a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTPairingAgentClearOOBDataForDevice_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgPairingAgentID", a1);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgBTDevice", a2);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTPairingAgentClearOOBDataForDevice_block_invoke;
    v9[3] = &unk_1E8518770;
    v9[4] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdPairingAgentClearOOBDataForDeviceMsg", v6, v9);
    if (v6)
    {
      xpc_release(v6);
    }

    v7 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v7;
}

void __BTPairingAgentClearOOBDataForDevice_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTPairingAgentClearOOBDataForDevice_block_invoke_cold_2();
  }
}

uint64_t BTPairingAgentSetOOBDataForDevice(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTPairingAgentSetOOBDataForDevice_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v13 = MBXpcConnection;
    v14 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v14, "kCBMsgArgPairingAgentID", a1);
    xpc_dictionary_set_uint64(v14, "kCBMsgArgBTDevice", a2);
    if (a3)
    {
      xpc_dictionary_set_data(v14, "kCBMsgArgC192", a3, 0x10uLL);
    }

    if (a5)
    {
      xpc_dictionary_set_data(v14, "kCBMsgArgC256", a5, 0x10uLL);
    }

    if (a4)
    {
      xpc_dictionary_set_data(v14, "kCBMsgArgR192", a4, 0x10uLL);
    }

    if (a6)
    {
      xpc_dictionary_set_data(v14, "kCBMsgArgR256", a6, 0x10uLL);
    }

    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = __BTPairingAgentSetOOBDataForDevice_block_invoke;
    v17[3] = &unk_1E8518798;
    v17[4] = &v18;
    sendMessageWithReplySync(v13, "kCBMsgIdPairingAgentSetOOBDataForDeviceMsg", v14, v17);
    if (v14)
    {
      xpc_release(v14);
    }

    v15 = *(v19 + 6);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v15;
}

void __BTPairingAgentSetOOBDataForDevice_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTPairingAgentSetOOBDataForDevice_block_invoke_cold_2();
  }
}

uint64_t BTPairingAgentGetLocalOOBData(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTPairingAgentGetLocalOOBData_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v3 = MBXpcConnection;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "kCBMsgArgPairingAgentID", a1);
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __BTPairingAgentGetLocalOOBData_block_invoke;
    v7[3] = &unk_1E85187C0;
    v7[4] = &v8;
    sendMessageWithReplySync(v3, "kCBMsgIdPairingAgentGetLocalOOBDataMsg", v4, v7);
    if (v4)
    {
      xpc_release(v4);
    }

    v5 = *(v9 + 6);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v5;
}

void __BTPairingAgentGetLocalOOBData_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTPairingAgentGetLocalOOBData_block_invoke_cold_2();
  }
}

uint64_t pairingAgentXpcDisconnectedHandler(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
  {
    pairingAgentXpcDisconnectedHandler_cold_2();
  }

  return _localBTPairingAgentRemoveCallbacksByXpcConnection(a1);
}

uint64_t pairingAgentXpcMsgHandler(uint64_t a1, const char *a2, xpc_object_t xdict)
{
  v63 = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgPairingAgentID");
  v7 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgID");
  Callbacks = _localBTPairingAgentGetCallbacks(uint64, v7);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v9 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    *length = 136316418;
    *&length[4] = a2;
    v51 = 2080;
    v52 = (a1 + 2080);
    v53 = 2080;
    v54 = a1 + 2336;
    v55 = 2048;
    v56 = uint64;
    v57 = 2048;
    v58 = v7;
    v59 = 2048;
    v60 = Callbacks;
    _os_log_debug_impl(&dword_1D85D5000, v9, OS_LOG_TYPE_DEBUG, "pairingAgentXpcMsgHandler msg:%s sessionName:%s serviceName:%s agentID:%llx cbid:%llx cbs:%llx", length, 0x3Eu);
  }

  if (!strcmp(a2, "kCBMsgIdPairingAgentStatusEvent"))
  {
    if (!Callbacks || !*Callbacks)
    {
      goto LABEL_35;
    }

    v21 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
    v22 = a1;
    v23 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
    v24 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgEvent");
    v25 = *Callbacks;
    UserData = _localBTPairingAgentGetUserData(uint64);
    v27 = v23;
    a1 = v22;
    v25(uint64, v24, v27, v21, UserData);
    goto LABEL_34;
  }

  if (!strcmp(a2, "kCBMsgIdPairingAgentPincode"))
  {
    if (!Callbacks || !*(Callbacks + 1))
    {
      goto LABEL_35;
    }

    v28 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgMinLength");
    v29 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
    v30 = *(Callbacks + 1);
    v31 = _localBTPairingAgentGetUserData(uint64);
    v30(uint64, v29, v28, v31);
    goto LABEL_34;
  }

  if (!strcmp(a2, "kCBMsgIdPairingAgentAuthorization"))
  {
    if (Callbacks && *(Callbacks + 2))
    {
      v32 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
      v33 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgServices");
      v34 = *(Callbacks + 2);
LABEL_33:
      v42 = _localBTPairingAgentGetUserData(uint64);
      v34(uint64, v32, v33, v42);
      goto LABEL_34;
    }

LABEL_35:
    v10 = 0;
    goto LABEL_36;
  }

  if (!strcmp(a2, "kCBMsgIdPairingAgentUserConfirmation"))
  {
    if (!Callbacks || !*(Callbacks + 3))
    {
      goto LABEL_35;
    }

    v35 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
    v36 = a1;
    v37 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgValue");
    v38 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgMITM");
    v39 = *(Callbacks + 3);
    v40 = _localBTPairingAgentGetUserData(uint64);
    v41 = v37;
    a1 = v36;
    v39(uint64, v35, v41, v38, v40);
LABEL_34:
    v10 = 1;
    goto LABEL_36;
  }

  if (!strcmp(a2, "kCBMsgIdPairingAgentPassKeyDisplay"))
  {
    if (Callbacks && *(Callbacks + 4))
    {
      v32 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
      v33 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgValue");
      v34 = *(Callbacks + 4);
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  v10 = 0;
  if (strcmp(a2, "kCBMsgIdPairingAgentOOBDataReady") || !Callbacks)
  {
    goto LABEL_36;
  }

  if (!*(Callbacks + 5))
  {
    goto LABEL_35;
  }

  *length = 0;
  data = xpc_dictionary_get_data(xdict, "kCBMsgArgC192", length);
  if (*length != 16)
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_FAULT))
    {
      pairingAgentXpcMsgHandler_cold_3();
    }

    return 0;
  }

  v12 = data;
  v13 = a1;
  v49 = 0;
  v14 = xpc_dictionary_get_data(xdict, "kCBMsgArgC256", &v49);
  if (v49 != 16)
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_FAULT))
    {
      pairingAgentXpcMsgHandler_cold_5();
    }

    return 0;
  }

  v15 = v14;
  v48 = 0;
  v16 = xpc_dictionary_get_data(xdict, "kCBMsgArgR192", &v48);
  if (v48 != 16)
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_FAULT))
    {
      pairingAgentXpcMsgHandler_cold_7();
    }

    return 0;
  }

  v46 = v16;
  v47 = 0;
  v17 = xpc_dictionary_get_data(xdict, "kCBMsgArgR256", &v47);
  if (v47 != 16)
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_FAULT))
    {
      pairingAgentXpcMsgHandler_cold_9();
    }

    return 0;
  }

  v18 = v17;
  v19 = *(Callbacks + 5);
  v20 = _localBTPairingAgentGetUserData(uint64);
  v19(uint64, v12, v46, v15, v18, v20);
  v10 = 1;
  a1 = v13;
LABEL_36:
  if (MBFLogInitOnce != -1)
  {
    BTDiscoveryAgentCreate_cold_2();
  }

  v43 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    v45 = "did not handle";
    *length = 136316674;
    if (v10)
    {
      v45 = "handled";
    }

    *&length[4] = v45;
    v51 = 2080;
    v52 = a2;
    v53 = 2080;
    v54 = a1 + 2080;
    v55 = 2080;
    v56 = a1 + 2336;
    v57 = 2048;
    v58 = uint64;
    v59 = 2048;
    v60 = v7;
    v61 = 2048;
    v62 = Callbacks;
    _os_log_debug_impl(&dword_1D85D5000, v43, OS_LOG_TYPE_DEBUG, "pairingAgentXpcMsgHandler %s %s sessionName:%s serviceName:%s agentID:%llx cbid:%llx cbs:%llx", length, 0x48u);
  }

  return v10;
}

void OUTLINED_FUNCTION_8_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

uint64_t removeFWSession(uint64_t a1)
{
  if (!a1)
  {
    return 3;
  }

  pthread_mutex_lock(&gLock_4);
  v2 = 0;
  do
  {
    v3 = v2++;
  }

  while (v3 <= 0x63 && gFWSessionList[v3] != a1);
  if (v3 > 0x63)
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
    --sessionCount;
    gFWSessionList[v2 - 1] = 0;
  }

  pthread_mutex_unlock(&gLock_4);
  return v4;
}

BOOL isSessionValid(int a1)
{
  pthread_mutex_lock(&gLock_4);
  v2 = 0;
  v3 = a1 & 0xFFFF0000;
  v4 = 1;
  do
  {
    v5 = gFWSessionList[v2];
    if (v5 && *v5 == v3)
    {
      break;
    }

    v4 = v2++ < 0x63;
  }

  while (v2 != 100);
  pthread_mutex_unlock(&gLock_4);
  return v4;
}

uint64_t getFWSessionByXpcConnection(uint64_t a1)
{
  pthread_mutex_lock(&gLock_4);
  v2 = 0;
  while (1)
  {
    v3 = gFWSessionList[v2];
    if (v3)
    {
      if (*(v3 + 88) == a1)
      {
        break;
      }
    }

    if (++v2 == 100)
    {
      v3 = 0;
      break;
    }
  }

  pthread_mutex_unlock(&gLock_4);
  return v3;
}

uint64_t getFirstFWSession()
{
  pthread_mutex_lock(&gLock_4);
  v0 = 0;
  do
  {
    v1 = gFWSessionList[v0];
    if (v1)
    {
      break;
    }
  }

  while (v0++ != 99);
  pthread_mutex_unlock(&gLock_4);
  return v1;
}

uint64_t addXpcMsgHandler(uint64_t a1, uint64_t a2)
{
  result = 3;
  if (a1 && a2)
  {
    v4 = 0;
    v5 = a1 + 8;
    v6 = -1;
    do
    {
      v7 = *(v5 + 8 * v4);
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = v6 == -1;
      }

      if (v8)
      {
        v6 = v4;
      }

      else if (v7 == a2)
      {
        return 15;
      }

      ++v4;
    }

    while (v4 != 256);
    if (v6 == -1)
    {
      return 4;
    }

    else
    {
      result = 0;
      *(v5 + 8 * v6) = a2;
    }
  }

  return result;
}

uint64_t removeXpcMsgHandler(uint64_t a1, uint64_t a2)
{
  result = 3;
  if (a1 && a2)
  {
    v4 = 0;
    v5 = a1 + 8;
    while (*(v5 + v4) != a2)
    {
      v4 += 8;
      if (v4 == 2048)
      {
        return 3;
      }
    }

    result = 0;
    *(v5 + v4) = 0;
  }

  return result;
}

uint64_t BTSessionDetachWithQueue(uint64_t *a1)
{
  if (!a1)
  {
    return 3;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 3;
  }

  if (!isDispatchSessionValid(*a1))
  {
    if (MBFLogInitOnce != -1)
    {
      _localBTAccessoryManagerAddCallbacks_cold_1();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      BTSessionDetachWithQueue_cold_2();
    }

    return 3;
  }

  *a1 = 0;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTSessionDetachWithQueue_cold_4();
  }

  notifyStubsOfDisconnection(*(v2 + 88));
  *(v2 + 84) = 1;
  disconnect(*(v2 + 88));
  return 0;
}

void notifyStubsOfDisconnection(uint64_t a1)
{
  FWSessionByXpcConnection = getFWSessionByXpcConnection(a1);
  if (FWSessionByXpcConnection)
  {
    v3 = FWSessionByXpcConnection;
    for (i = 8; i != 2056; i += 8)
    {
      v5 = *(*(v3 + 88) + i);
      if (v5)
      {
        (*v5)(a1);
      }
    }
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      _localBTAccessoryManagerAddCallbacks_cold_1();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      notifyStubsOfDisconnection_cold_2();
    }
  }
}

void xpcConnectionDidReset(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    xpcConnectionDidReset_cold_2();
  }

  FWSessionByXpcConnection = getFWSessionByXpcConnection(a1);
  if (FWSessionByXpcConnection)
  {
    v3 = FWSessionByXpcConnection;
    notifyStubsOfDisconnection(a1);
    *(v3 + 84) = 2;
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      xpcConnectionDidReset_cold_4();
    }

    disconnect(*(v3 + 88));
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      xpcConnectionDidReset_cold_6();
    }
  }
}

void xpcConnectionInvalid(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    xpcConnectionInvalid_cold_2();
  }

  FWSessionByXpcConnection = getFWSessionByXpcConnection(a1);
  if (FWSessionByXpcConnection)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __xpcConnectionInvalid_block_invoke;
    v3[3] = &__block_descriptor_tmp_5;
    v3[4] = FWSessionByXpcConnection;
    _MBTDispachAsyncAttachCompletionBlock(FWSessionByXpcConnection, v3);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      xpcConnectionInvalid_cold_4();
    }
  }
}

void __xpcConnectionInvalid_block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 84);
  switch(v2)
  {
    case 3:
      if (MBFLogInitOnce != -1)
      {
        _localBTAccessoryManagerAddCallbacks_cold_1();
      }

      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
      {
        __xpcConnectionInvalid_block_invoke_cold_4();
      }

      _MBTSignalSessionEvent(*v1, 0, 1);
      ++gSessionAttachTries;
      break;
    case 2:
      if (MBFLogInitOnce != -1)
      {
        _localBTAccessoryManagerAddCallbacks_cold_1();
      }

      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
      {
        __xpcConnectionInvalid_block_invoke_cold_2();
      }

      _MBTSignalSessionEvent(*v1, 2, 0);
      gSessionAttachTries = 0;
      break;
    case 1:
      if (MBFLogInitOnce != -1)
      {
        _localBTAccessoryManagerAddCallbacks_cold_1();
      }

      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
      {
        __xpcConnectionInvalid_block_invoke_cold_6();
      }

      _MBTSignalSessionEvent(*v1, 1, 0);
      break;
    default:
      if (MBFLogInitOnce != -1)
      {
        _localBTAccessoryManagerAddCallbacks_cold_1();
      }

      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
      {
        __xpcConnectionInvalid_block_invoke_cold_8();
      }

      break;
  }

  removeFWSession(*v1);
  releaseXPCConnection(*(*v1 + 88));
  dispatch_release(*(*v1 + 32));
  free(*(*v1 + 8));
  free(*v1);
}

void BTAccessoryManagerGetDefault_cold_3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(&dword_1D85D5000, v0, OS_LOG_TYPE_ERROR, "Failed to get a valid XPC connection for session %llx sessionHandle:%llx", v1, 0x16u);
}

void __BTAccessoryManagerGetDefault_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  WORD2(v4) = 2048;
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_9(&dword_1D85D5000, v1, v2, "kCBMsgIdAccessoryGetDefaultMsg reply accessoryManagerID:%llx result:%llx", v3, v4);
}

void BTAccessoryManagerAddCallbacks_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerAddCallbacks_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerAddCallbacks_cold_6()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerAddCallbacks_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerRemoveCallbacks_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerRemoveCallbacks_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerRegisterDevice_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerRegisterDevice_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerRegisterDevice_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerPlugInDevice_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerPlugInDevice_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerUnplugDevice_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerUnplugDevice_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetDeviceState_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetDeviceState_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetDevices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetDevices_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_9(&dword_1D85D5000, v0, v1, "kCBMsgIdAccessoryGetDevicesMsg reply result:%llx count:%lx", v2, v3);
}

void BTAccessoryManagerGetTimeSyncId_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetTimeSyncId_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetDeviceBatteryLevel_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetDeviceBatteryLevel_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerIsAccessory_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerIsAccessory_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGenerateLinkKey_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGenerateLinkKey_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerSetLinkKeyEx_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerSetLinkKeyEx_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetLinkKeyEx_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerSetDoubleTapAction_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetDoubleTapAction_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerSetDoubleTapActionEx_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetDoubleTapActionEx_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerSetMicMode_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetMicMode_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerRemoteTimeSyncEnable_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerRemoteTimeSyncEnable_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerSensorStreamTimeSyncEnable_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSensorStreamTimeSyncEnable_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerSetInEarDetectionEnable_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetInEarDetectionEnable_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerSetIsHidden_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetIsHidden_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetDoubleTapAction_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetDoubleTapAction_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetDoubleTapActionEx_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetDoubleTapActionEx_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetDoubleTapCapability_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetDoubleTapCapability_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetFeatureCapability_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetFeatureCapability_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetAnnounceMessagesSupport_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetAnnounceMessagesSupport_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetMicMode_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetMicMode_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetInEarDetectionEnable_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerGetInEarStatus_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetInEarStatus_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerRegisterCustomMessageClient_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerRegisterCustomMessageClient_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerRegisterCustomMessageClient_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerDeregisterCustomMessageClient_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerDeregisterCustomMessageClient_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerSendCustomMessage_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSendCustomMessage_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerSimulateAACP_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSimulateAACP_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerSendAdaptiveVolumeMessage_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerSendPMEConfigMessage_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerGetDeviceDiagnostics_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetDeviceDiagnostics_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerSendRequestPeriodically_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSendRequestPeriodically_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerCancelRequestPeriodically_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerCancelRequestPeriodically_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerSendControlCommand_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSendControlCommand_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetControlCommand_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetControlCommand_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetSettingFeatureBitMask_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetSettingFeatureBitMask_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetAccessoryInfo_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetAccessoryInfo_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetAACPCapabilityBits_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetAACPCapabilityBits_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerReadDeviceVersionInfo_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerReadDeviceVersionInfo_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetDeviceColor_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetDeviceColor_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerSetupCommand_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetupCommand_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerSendRelayMsg_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSendRelayMsg_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerUpdateConnPriorityList_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerUpdateConnPriorityList_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetNonAppleHAEPairedDevices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetNonAppleHAEPairedDevices_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_9(&dword_1D85D5000, v0, v1, "kCBMsgIdAccessoryGetNonAppleHAEPairedDevicesMsg reply result:%llx count:%lx", v2, v3);
}

void BTAccessoryManagerSmartRouteMode_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSmartRouteMode_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetSmartRouteMode_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetSmartRouteMode_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetSmartRouteSupport_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetSmartRouteSupport_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerSetDeviceStateOnPeerSrc_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetDeviceStateOnPeerSrc_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetStereoHFPSupport_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetStereoHFPSupport_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetCallManagementConfig_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerGetFeatureProxCardStatus_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerSetFeatureProxCardStatus_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetFeatureProxCardStatus_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetDeviceSoundProfileSupport_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetDeviceSoundProfileSupport_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetDeviceSoundProfileAllowed_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetDeviceSoundProfileAllowed_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerSetDeviceSoundProfileAllowed_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetDeviceSoundProfileAllowed_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetSpatialAudioPlatformSupport_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerGetAnnounceCallsSupport_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetAnnounceCallsSupport_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetGyroInformation_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetGyroInformation_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void BTAccessoryManagerGetCaseSerialNumbersForAppleProductId_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetCaseSerialNumbersForAppleProductId_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetCaseSerialNumbersForAppleProductIds_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerGetCaseSerialNumbersForAppleProductIds_cold_4()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&dword_1D85D5000, v1, OS_LOG_TYPE_ERROR, "Invalid product ID parameters. productID = %p, numProductIds = %u", v2, 0x12u);
}

void __BTAccessoryManagerGetCaseSerialNumbersForAppleProductIds_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTAccessoryManagerGetPrimaryBudSide_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetPrimaryBudSide_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __BTAccessoryManagerSetHeadphoneFeatureValue_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void accessoryManagerXpcDisconnectedHandler_cold_2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void accessoryManagerXpcMsgHandler_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void attachSession_cold_2()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void attachSession_cold_4()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sendMessageWithReplySync_cold_2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void sendMessageWithReplySync_cold_4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void handleReset_cold_2()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void handleInvalid_cold_2()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void handleMsg_cold_2()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void handleConnectionEvent_cold_2()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void handleConnectionEvent_cold_4()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(&dword_1D85D5000, v0, OS_LOG_TYPE_ERROR, "Unexpected XPC type: %@", v1, 0xCu);
}

void handleConnectionEvent_cold_6()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(&dword_1D85D5000, v0, OS_LOG_TYPE_ERROR, "Unexpected XPC error: %s", v1, 0xCu);
}

void handleConnectionEvent_cold_8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void handleConnectionEvent_cold_10()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void handleConnectionEvent_cold_12()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(&dword_1D85D5000, v0, OS_LOG_TYPE_FAULT, "MBFXPC LOG Skipped handleConnectionEvent because MBXpcConnection for connection %p was NULL", v1, 0xCu);
}

void createXpcConnection_cold_5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void releaseMBXpcConnection_cold_2()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void releaseXPCConnection_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sendMsg_cold_2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void disconnect_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void BTDeviceAddressToString_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceAddressToString_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceAddressFromString_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceAddressFromString_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  v8 = 1024;
  v9 = v0;
  v10 = 1024;
  v11 = v1;
  v12 = 1024;
  v13 = v2;
  v14 = 1024;
  v15 = v3;
  v16 = 1024;
  v17 = v4;
  v18 = 1024;
  v19 = v5;
  _os_log_debug_impl(&dword_1D85D5000, v6, OS_LOG_TYPE_DEBUG, "kCBMsgIdDeviceAddressFromStringMsg reply result:%llx address:%x%x%x%x%x%x", v7, 0x30u);
}

void BTDeviceFromAddress_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceFromAddress_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceFromIdentifier_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceFromIdentifier_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetAddressString_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetAddressString_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetDeviceType_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetDeviceType_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetDeviceClass_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetDeviceClass_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetDefaultName_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetDefaultName_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetProductName_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetProductName_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetName_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetName_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceSetUserName_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSetUserName_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetSyncSettings_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetSyncSettings_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceSetSyncSettings_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSetSyncSettings_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetGroups_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetGroups_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceSetGroup_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSetGroup_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetPairingStatus_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetPairingStatus_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetCloudPairingStatus_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetCloudPairingStatus_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetMagicPairingStatus_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetMagicPairingStatus_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __BTDeviceGetConnectionStatus_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceIsAppleAudioDevice_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceIsAppleAudioDevice_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceSupportsHS_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSupportsHS_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceIsProController_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceIsProController_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTServiceAddCallbacksWithFilter_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTServiceAddCallbacksWithFilter_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTServiceAddCallbacksWithFilter_cold_6()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTServiceAddCallbacksWithFilter_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTServiceAddCallbacks_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTServiceRemoveCallbacks_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTServiceRemoveCallbacks_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceConnect_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceConnect_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceConnectServices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceConnectServices_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceConnectServicesWithParameters_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceConnectServicesWithParameters_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceDisconnect_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceDisconnect_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDevicePhysicalLinkDisconnect_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDevicePhysicalLinkDisconnect_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceDisconnectServices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceDisconnectServices_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetConnectedServices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetConnectedServices_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetSupportedServices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetSupportedServices_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceSetServiceSettings_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSetServiceSettings_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetServiceSettings_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetServiceSettings_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetComPortForService_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetComPortForService_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetComPortForServiceWithSandboxExtension_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetComPortForServiceWithSandboxExtension_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceSetVirtualType_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSetVirtualType_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetVirtualType_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetVirtualType_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceMatchesAdvertisedKey_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceMatchesAdvertisedKey_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetAdvertisedValueForKey_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetAdvertisedValueForKey_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetDeviceId_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetDeviceId_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceSetHIDProperties_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSetHIDProperties_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceConfigureLinkKey_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceConfigureLinkKey_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceIsTemporaryPaired_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceIsTemporaryPaired_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceIsWirelessSplitterSupported_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceIsWirelessSplitterSupported_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceIsTemporaryPairedNotInContacts_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceIsTemporaryPairedNotInContacts_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetLowSecurityStatus_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetLowSecurityStatus_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetHIDDeviceBehavior_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetHIDDeviceBehavior_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceSetHijackAudioRoute_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSetHijackAudioRoute_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceSetACLHighPriority_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSetACLHighPriority_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceIsCentral_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceIsCentral_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceGetUserSelectedDeviceType_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetUserSelectedDeviceType_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceSetUserSelectedDeviceType_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSetUserSelectedDeviceType_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDeviceIsGenuineAirPods_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceIsGenuineAirPods_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&dword_1D85D5000, v1, OS_LOG_TYPE_DEBUG, "kCBMsgIdDeviceIsGenuineAirPodsMsg reply result:%llx genuine:%u", v2, 0x12u);
}

void deviceServiceXpcDisconnectedHandler_cold_2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  v3 = 2080;
  v4 = v0;
  _os_log_error_impl(&dword_1D85D5000, v1, OS_LOG_TYPE_ERROR, "WARNING: deviceServiceXpcDisconnectedHandler Disconnected from bluetoothd serviceName:%s sessionName:%s", v2, 0x16u);
}

void BTDiscoveryAgentCreate_cold_3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTDiscoveryAgentCreate_cold_7()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __BTDiscoveryAgentCreate_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDiscoveryAgentDestroy_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTDiscoveryAgentDestroy_cold_4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __BTDiscoveryAgentDestroy_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDiscoveryAgentStartScan_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDiscoveryAgentStartScan_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDiscoveryAgentStartScanForAdvertizedData_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDiscoveryAgentStartScanForAdvertizedData_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDiscoveryAgentStopScan_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDiscoveryAgentStopScan_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDiscoveryAgentGetDevices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDiscoveryAgentGetDevices_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&dword_1D85D5000, v1, OS_LOG_TYPE_DEBUG, "kCBMsgIdDiscoveryAgentGetDevicesMsg reply result:%llx count:%lx", v2, 0x16u);
}

void BTDiscoveryAgentAddKey_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTDiscoveryAgentAddKey_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void BTDiscoveryAgentAddKey_cold_6()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDiscoveryAgentAddKey_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTDiscoveryAgentRemoveKey_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void discoveryAgentXpcDisconnectedHandler_cold_2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void BTLocalDeviceGetDefault_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetDefault_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  WORD2(v4) = 2048;
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_9(&dword_1D85D5000, v1, v2, "kCBMsgIdLocalDeviceGetDefaultMsg reply deviceID:%llx result:%llx", v3, v4);
}

void BTLocalDeviceAddCallbacks_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceAddCallbacks_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceRemoveCallbacks_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceRemoveCallbacks_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceMaskCallbacks_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceMaskCallbacks_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceSetModulePower_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceSetModulePower_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceGetModulePower_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetSpatialPlatformSupport_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __BTLocalDevicePowerReset_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __BTLocalDeviceGetAirplaneModeStatus_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceGetAddressString_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetAddressString_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceGetName_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetName_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __BTLocalDeviceSetDiscoverable_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __BTLocalDeviceGetDiscoverable_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __BTLocalDeviceSetConnectable_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __BTLocalDeviceGetConnectable_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __BTLocalDeviceGetPairingStatus_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceGetPairedDevices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetPairedDevices_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_9(&dword_1D85D5000, v0, v1, "kCBMsgIdLocalDeviceGetPairedDevicesMsg reply result:%llx count:%lx", v2, v3);
}

void __BTLocalDeviceGetConnectionStatus_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceGetConnectedDevices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetConnectedDevices_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_9(&dword_1D85D5000, v0, v1, "kCBMsgIdLocalDeviceGetConnectedDevicesMsg reply result:%llx count:%lx", v2, v3);
}

void BTLocalDeviceGetConnectingDevices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetConnectingDevices_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_9(&dword_1D85D5000, v0, v1, "kCBMsgIdLocalDeviceGetConnectingDevicesMsg reply result:%llx count:%lx", v2, v3);
}

void __BTLocalDeviceGetAdvertisingStatus_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __BTLocalDeviceGetScanning_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __BTLocalDeviceGetDUTModeEnabled_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __BTLocalDeviceEnableLeTxTestMode_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __BTLocalDeviceEnableLeRxTestMode_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __BTLocalDeviceDisableLeTestMode_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __BTLocalDeviceSupportsService_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __BTLocalDeviceAdvertiseData_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __BTLocalDeviceRemoveData_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceRegisterForPowerUpdates_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceRegisterForPowerUpdates_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceUnregisterForPowerUpdates_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceUnregisterForPowerUpdates_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceReadPowerConsumption_cold_3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceReadPowerConsumption_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceRegisterForPowerProfileStatistics_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceRegisterForPowerProfileStatistics_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceUnregisterForPowerProfileStatistics_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceUnregisterForPowerProfileStatistics_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceReadPowerProfileStatistics_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceReadPowerProfileStatistics_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceReadEnhancedPowerProfileStatistics_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceReadEnhancedPowerProfileStatistics_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceReadEnhancedPowerStatsPerCore_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceReadEnhancedPowerStatsPerCore_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceReadTransportSwitchStatistics_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceReadTransportSwitchStatistics_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceReadDetailedPowerProfileStatistics_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceReadDetailedPowerProfileStatistics_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTStartHCITraces_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTStartHCITraces_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTStopHCITraces_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTStopHCITraces_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceShowPowerPrompt_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceShowPowerPrompt_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceSetAFHMap_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceSetAFHMap_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceReadAFHMap_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceReadAFHMap_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceSetDelayedWake_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceSetDelayedWake_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceSetDenylistEnabled_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceSetDenylistEnabled_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceGetDenylistEnabled_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetDenylistEnabled_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceGetDeviceNamesThatMayBeDenylisted_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetDeviceNamesThatMayBeDenylisted_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceGetSharingAddresses_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetSharingAddresses_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceIsSharingEnabled_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceIsSharingEnabled_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceDumpExposureNotificationDatabase_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceDumpExposureNotificationDatabase_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTLocalDeviceLinkQualityGetData_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceLinkQualityGetData_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __BTLocalDeviceSetCallScreening_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void localDeviceXpcDisconnectedHandler_cold_2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  v3 = 2080;
  v4 = v0;
  _os_log_error_impl(&dword_1D85D5000, v1, OS_LOG_TYPE_ERROR, "WARNING: localDeviceXpcDisconnectedHandler Disconnected from bluetoothd serviceName:%s sessionName:%s", v2, 0x16u);
}

void BTPairingAgentCreate_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentCreate_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTPairingAgentDestroy_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentDestroy_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTPairingAgentStart_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentStart_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTPairingAgentStop_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentStop_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTPairingAgentCancelPairing_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentCancelPairing_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTPairingAgentSetPincode_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentSetPincode_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTPairingAgentAcceptSSP_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentAcceptSSP_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTPairingAgentDeletePairedDevice_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentDeletePairedDevice_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTPairingAgentSetIOCapability_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentSetIOCapability_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTPairingAgentClearOOBDataForDevice_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentClearOOBDataForDevice_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTPairingAgentSetOOBDataForDevice_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentSetOOBDataForDevice_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void BTPairingAgentGetLocalOOBData_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentGetLocalOOBData_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void pairingAgentXpcDisconnectedHandler_cold_2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  v3 = 2080;
  v4 = v0;
  _os_log_error_impl(&dword_1D85D5000, v1, OS_LOG_TYPE_ERROR, "WARNING: pairingAgentXpcDisconnectedHandler Disconnected from bluetoothd serviceName:%s sessionName:%s", v2, 0x16u);
}

void _MBTGetAsyncAttachQueue_cold_2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _MBTGetAsyncAttachQueue_cold_4()
{
  OUTLINED_FUNCTION_9_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _MBTGetAsyncAttachQueue_cold_6()
{
  OUTLINED_FUNCTION_9_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _MBTAsyncAttach_cold_2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _MBTAsyncAttach_cold_7()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void BTSessionDetachWithQueue_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTSessionDetachWithQueue_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void notifyStubsOfDisconnection_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _MBTDispachAsyncAttachCompletionBlock_cold_2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _MBTDispachAsyncAttachCompletionBlock_cold_4()
{
  OUTLINED_FUNCTION_9_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _MBTDispachAsyncAttachCompletionBlock_cold_6()
{
  OUTLINED_FUNCTION_9_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _MBTSignalSessionEvent_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void xpcConnectionDidReset_cold_2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void xpcConnectionDidReset_cold_4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void xpcConnectionDidReset_cold_6()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(&dword_1D85D5000, v0, OS_LOG_TYPE_ERROR, "MBFXPC LOG Skipped xpcConnectionDidReset because fwSession for connection %p was NULL", v1, 0xCu);
}

void xpcConnectionInvalid_cold_2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void xpcConnectionInvalid_cold_4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __xpcConnectionInvalid_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __xpcConnectionInvalid_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_6_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __xpcConnectionInvalid_block_invoke_cold_6()
{
  OUTLINED_FUNCTION_6_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}