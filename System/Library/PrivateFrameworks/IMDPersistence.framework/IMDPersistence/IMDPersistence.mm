void IMDMessageRecordClearDeleteTombStones()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v0 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDMessageRecordClearDeleteTombStones", v2, 2u);
      }
    }

    memset(v2, 0, sizeof(v2));
    IMDSqlOperationInitWithSharedCSDBDatabase(v2);
    IMDSqlOperationExecuteQuery(v2, @"delete from sync_deleted_messages;", &unk_1F2FA1490);
    IMDSqlOperationRelease(v2, 0);
  }

  else
  {
    __syncXPCIMDMessageRecordMarkDeletedTombStonedMessagesAsNeedingCloudKitSync_IPCAction(0);
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "Returned from DB call after marking clearing all tombstones", v2, 2u);
      }
    }
  }
}

void __syncXPCIMDMessageRecordMarkDeletedTombStonedMessagesAsNeedingCloudKitSync_IPCAction(void (**a1)(void, void))
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 171);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __XPCIMDMessageStoreSendXPCMessage(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v78 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v24 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF7304(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    return;
  }

  v4 = a3;
  v7 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], a2, a3, a4);
  if (objc_msgSend_isInternalInstall(v7, v8, v9, v10) && IMIsRunningInUnitTesting())
  {
    v60 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF72CC(v60, v61, v62, v63, v64, v65, v66, v67);
    }

    v68 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v61, @"IMDPersistenceXPCNotAllowedInTest", @"Called into IMDPersistence XPC layer while in a test", 0);
    objc_exception_throw(v68);
  }

  v14 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v11, v12, v13);
  if (objc_msgSend_isModernPersistenceXPCEnabled(v14, v15, v16, v17))
  {
    int64 = xpc_dictionary_get_int64(a1, "__xpc__event_code__");
    v19 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = int64;
      *&buf[12] = 1024;
      *&buf[14] = v4;
      _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_DEFAULT, "Sending legacy command %lli async %{BOOL}d", buf, 0x12u);
    }

    if (v4)
    {
      v23 = objc_msgSend_service(IMDPersistenceService, v20, v21, v22);
    }

    else
    {
      v23 = objc_msgSend_synchronousService(IMDPersistenceService, v20, v21, v22);
    }

    v41 = v23;
    v42 = objc_alloc(MEMORY[0x1E69A8368]);
    v47 = objc_msgSend_initWithXPCObject_(v42, v43, a1, v44);
    if (a2)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1B7AE15F8;
      v74 = &unk_1E7CBACE0;
      v75 = a2;
      v76 = int64;
      v77 = v4;
      objc_msgSend_sendLegacyXPCCommandWithObject_reply_(v41, v45, v47, buf);
    }

    else
    {
      objc_msgSend_sendLegacyXPCCommandWithObject_(v41, v45, v47, v46);
      v59 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        sub_1B7CF7240(v4, int64, v59);
      }
    }

    return;
  }

  xpc_dictionary_set_int64(a1, "__xpc_wants_reply__", 1);
  v32 = 0;
  v33 = MEMORY[0x1E69E9E98];
  do
  {
    v34 = _IMDPersistenceIPCCopyConnectionWithForceNew(v32 != 0);
    if (v34)
    {
      v35 = v34;
      if (v4)
      {
        xpc_connection_send_message_with_reply(v34, a1, MEMORY[0x1E69E96A0], a2);
      }

      else
      {
        v36 = xpc_connection_send_message_with_reply_sync(v34, a1);
        v37 = v36;
        if (!v36 || MEMORY[0x1B8CB1210](v36) == v33)
        {
          v38 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *&buf[4] = v32 + 1;
            _os_log_error_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_ERROR, "__syncXPCIMDMessageStoreSendXPCMessage has failed %lu time(s)!", buf, 0xCu);
            if (!v37)
            {
              goto LABEL_19;
            }
          }

          else if (!v37)
          {
LABEL_19:
            xpc_release(v35);
            goto LABEL_22;
          }

          xpc_release(v37);
          goto LABEL_19;
        }

        if (a2)
        {
          (*(a2 + 2))(a2, v37);
        }

        xpc_release(v37);
      }

      v58 = v35;
      goto LABEL_45;
    }

    v39 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF7188(&v71, v72, v39);
    }

LABEL_22:
    if (v32 >= 3)
    {
      v40 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF71C8(&v69, v70, v40);
      }

      sleep(0xBu);
    }

    sleep(1u);
    ++v32;
  }

  while (v32 != 5);
  v48 = IMDatabaseLogHandle();
  if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    if (!a2)
    {
      return;
    }

LABEL_35:
    v57 = xpc_dictionary_create(0, 0, 0);
    (*(a2 + 2))(a2, v57);
    if (!v57)
    {
      return;
    }

    v58 = v57;
LABEL_45:
    xpc_release(v58);
    return;
  }

  sub_1B7CF7208(v48, v50, v51, v52, v53, v54, v55, v56);
  if (a2)
  {
    goto LABEL_35;
  }
}

id sub_1B7AD7FD8(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (qword_1EDBE5968 != -1)
  {
    v4 = a3;
    swift_once();
    a3 = v4;
  }

  result = [qword_1EDBE79F0 *a3];
  if (result)
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B7AD80E0(void **a1@<X0>, void *a2@<X8>)
{
  sub_1B7AD8208(a1);
  v4 = *a1;
  if (!*a1 || (v7[4] = sub_1B7C4EC20, v7[5] = 0, v7[0] = MEMORY[0x1E69E9820], v7[1] = 1107296256, v7[2] = sub_1B7C4E668, v7[3] = &unk_1F2F9F8E8, v5 = _Block_copy(v7), v6 = [v4 synchronousRemoteObjectProxyWithErrorHandler_], _Block_release(v5), sub_1B7CFF0A0(), swift_unknownObjectRelease(), sub_1B7C107FC(&qword_1EBA52810, &qword_1B7D0D250), (swift_dynamicCast() & 1) == 0))
  {
    *a2 = 0;
  }
}

void sub_1B7AD8208(void *a1)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    sub_1B7CFF340();
    __break(1u);
  }

  else if (!*a1)
  {
    v3 = v1;
    if (qword_1EDBE5940 != -1)
    {
      swift_once();
    }

    v4 = sub_1B7CFE420();
    sub_1B7AD9040(v4, qword_1EDBE5950);
    v5 = sub_1B7CFE400();
    v6 = sub_1B7CFEED0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B7AD5000, v5, v6, "Connecting to persistence agent", v7, 2u);
      MEMORY[0x1B8CB0E70](v7, -1, -1);
    }

    v8 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v9 = sub_1B7CFEA30();
    v10 = [v8 initWithServiceName_];

    *a1 = v10;
    v11 = v10;
    v12 = sub_1B7CE04F8();
    [v11 setRemoteObjectInterface_];

    v13 = sub_1B7CFE400();
    v14 = sub_1B7CFEF00();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B7AD5000, v13, v14, "Resuming connection to persistence service", v15, 2u);
      MEMORY[0x1B8CB0E70](v15, -1, -1);
    }

    [v11 resume];
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    v24 = sub_1B7C4EFB8;
    v25 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_1B7AE14D0;
    v23 = &unk_1F2FA4758;
    v17 = _Block_copy(&aBlock);
    v18 = v3;

    [v11 setInvalidationHandler_];
    _Block_release(v17);
    v24 = sub_1B7C4EABC;
    v25 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_1B7AE14D0;
    v23 = &unk_1F2FA4780;
    v19 = _Block_copy(&aBlock);
    [v11 setInterruptionHandler_];

    _Block_release(v19);
  }
}

uint64_t sub_1B7AD8574()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__CFString *sub_1B7AD85AC(unint64_t a1)
{
  if (a1 > 0xEB)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7CBDF88[a1];
  }
}

uint64_t sub_1B7AD85EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD85FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD860C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD861C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD862C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD864C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD865C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD866C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD867C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD868C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD869C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD86AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD86BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD86CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD86DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __IMDPersistenceCheckGreaterEntitlements(void *a1, const char *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1EDBE62F8 != -1)
  {
    sub_1B7AF2794();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = qword_1EDBE62E8;
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(qword_1EDBE62E8, a2, &v13, v17, 16);
  if (result)
  {
    v7 = result;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = objc_msgSend_objectForKey_(a1, v5, *(*(&v13 + 1) + 8 * v9), v6);
        if (v10)
        {
          v11 = v10;
          v12 = CFGetTypeID(v10);
          if (v12 == CFBooleanGetTypeID())
          {
            if (CFBooleanGetValue(v11))
            {
              return 1;
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v13, v17, 16);
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void IMDAttachmentRecordClearDeleteTombStones()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v0 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDAttachmentRecordClearDeleteTombStones", v2, 2u);
      }
    }

    memset(v2, 0, sizeof(v2));
    IMDSqlOperationInitWithSharedCSDBDatabase(v2);
    IMDSqlOperationExecuteQuery(v2, @"delete from sync_deleted_attachments;", &unk_1F2FA1550);
    IMDSqlOperationRelease(v2, 0);
  }

  else
  {
    __syncXPCMDAttachmentRecordDeleteTombStonedAttachmentsToDeleteFromCloudKit_IPCAction(0);
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "Returned from DB call after clearing all tombstones", v2, 2u);
      }
    }
  }
}

void __syncXPCMDAttachmentRecordDeleteTombStonedAttachmentsToDeleteFromCloudKit_IPCAction(void (**a1)(void, void))
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 187);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void _sSo21IMDPersistenceServiceC0A0E20sendLegacyXPCCommand10withObject5replyySo15IMXPCDictionaryC_yAHctF_0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() currentConnection];
  if (v6)
  {
    v7 = v6;
    v8 = [a1 object];
    empty = xpc_dictionary_create_empty();
    int64 = xpc_dictionary_get_int64(v8, "__xpc__event_code__");
    [v7 auditToken];
    if (__IMDPersistenceCheckEntitlements(aBlock, int64))
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v11 = sub_1B7CFE420();
      sub_1B7AD9040(v11, qword_1EDBE79D0);
      v12 = v7;
      v13 = sub_1B7CFE400();
      v14 = sub_1B7CFEED0();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134218240;
        *(v15 + 4) = int64;
        *(v15 + 12) = 1024;
        *(v15 + 14) = [v12 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v13, v14, "Received command %ld from PID %d", v15, 0x12u);
        MEMORY[0x1B8CB0E70](v15, -1, -1);
      }

      else
      {

        v13 = v12;
      }

      v24 = [v12 _xpcConnection];
      v25 = swift_allocObject();
      v25[2] = empty;
      v25[3] = a2;
      v25[4] = a3;
      aBlock[4] = sub_1B7AE1514;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B7AE14D0;
      aBlock[3] = &unk_1F2FA60E8;
      v26 = _Block_copy(aBlock);
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();
      sub_1B7AD8F38(a2, a3);

      __IMDPersistenceIPCServer_command_dispatcher(int64, v24, v8, a2 != 0, empty, v26);
      _Block_release(v26);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease_n();
    }

    else
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v19 = sub_1B7CFE420();
      sub_1B7AD9040(v19, qword_1EDBE79D0);
      v20 = v7;
      v21 = sub_1B7CFE400();
      v22 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 67109120;
        *(v23 + 4) = [v20 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v21, v22, "Command from %d denied, lacks entitlements", v23, 8u);
        MEMORY[0x1B8CB0E70](v23, -1, -1);
      }

      else
      {

        v21 = v20;
      }

      [v20 invalidate];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1EDBE3808 != -1)
    {
      swift_once();
    }

    v16 = sub_1B7CFE420();
    sub_1B7AD9040(v16, qword_1EDBE79D0);
    oslog = sub_1B7CFE400();
    v17 = sub_1B7CFEEF0();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1B7AD5000, oslog, v17, "No current NSXPCConnection", v18, 2u);
      MEMORY[0x1B8CB0E70](v18, -1, -1);
    }
  }
}

uint64_t sub_1B7AD8F38(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B7AD8F48()
{
  swift_unknownObjectRelease();
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t __IMDPersistenceCheckEntitlements(uint64_t a1, const char *a2)
{
  if (qword_1EDBE62F8 != -1)
  {
    sub_1B7AF2794();
  }

  v3 = IMDAuditTokenTaskCopyValuesForEntitlements();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (__IMDPersistenceCheckGreaterEntitlements(v4, v5))
    {
      v8 = 1;
    }

    else
    {
      v8 = __IMDPersistenceCheckLesserEntitlements(v4, a2, v6, v7);
    }
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v4);
  return v8;
}

uint64_t sub_1B7AD9040(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __IMDPersistenceIPCServer_command_dispatcher(uint64_t a1, _xpc_connection_s *a2, void *a3, int a4, uint64_t a5, uint64_t a6)
{
  v1261 = *MEMORY[0x1E69E9840];
  v12 = _os_activity_create(&dword_1B7AD5000, "com.apple.messages.IMDPCommandDispatcher", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  pid = xpc_connection_get_pid(a2);
  v14 = IMOSLoggingEnabled();
  if (v14)
  {
    v18 = OSLogHandleForIMFoundationCategory();
    v14 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v14)
    {
      *buf = 134218496;
      v1256 = a1;
      v1257 = 1024;
      v1258 = pid;
      v1259 = 1024;
      v1260 = a4;
      _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Handling message %ld from (%d) wantsReply %{BOOL}d", buf, 0x18u);
    }
  }

  v19 = -1;
  switch(a1)
  {
    case 0:
      if (a4)
      {
        v20 = a5;
      }

      else
      {
        v20 = 0;
      }

      if (a4)
      {
        v21 = a6;
      }

      else
      {
        v21 = 0;
      }

      __XPCServerIMDMessageStoreSave_IPCAction(v14, v15, v20, v21);
      v19 = 0;
      break;
    case 1:
      if (a4)
      {
        v809 = a5;
      }

      else
      {
        v809 = 0;
      }

      if (a4)
      {
        v810 = a6;
      }

      else
      {
        v810 = 0;
      }

      __XPCServerIMDMessageStoreIsFull_IPCAction(v14, v15, v809, v810);
      v19 = 1;
      break;
    case 2:
      if (a4)
      {
        v169 = a5;
      }

      else
      {
        v169 = 0;
      }

      if (a4)
      {
        v170 = a6;
      }

      else
      {
        v170 = 0;
      }

      __XPCServerIMDMessageStoreSchemaVersion_IPCAction(v14, v15, v169, v170);
      v19 = 2;
      break;
    case 3:
      if (a4)
      {
        v929 = a5;
      }

      else
      {
        v929 = 0;
      }

      if (a4)
      {
        v930 = a6;
      }

      else
      {
        v930 = 0;
      }

      __XPCServerIMDMessageStoreSchema_IPCAction(v14, v15, v929, v930);
      v19 = 3;
      break;
    case 4:
      v1244 = IMGetXPCStringFromDictionary();
      int64 = xpc_dictionary_get_int64(a3, "createdDate");
      v1225 = xpc_dictionary_get_int64(a3, "startDate");
      v1218 = IMGetXPCStringFromDictionary();
      v1212 = IMGetXPCStringFromDictionary();
      v1206 = IMGetXPCStringFromDictionary();
      v1200 = IMGetXPCStringFromDictionary();
      v1194 = xpc_dictionary_get_int64(a3, "transferState");
      v1188 = xpc_dictionary_get_BOOL(a3, "isOutgoing");
      v1182 = IMGetXPCDictionaryFromDictionary();
      v1176 = IMGetXPCIntFromDictionary();
      v1170 = xpc_dictionary_get_BOOL(a3, "isSticker");
      v1164 = IMGetXPCDictionaryFromDictionary();
      v1158 = IMGetXPCDictionaryFromDictionary();
      v1152 = xpc_dictionary_get_BOOL(a3, "hideAttachment");
      v1146 = xpc_dictionary_get_int64(a3, "cloudKitSyncState");
      v1140 = IMGetXPCDataFromDictionary();
      v1134 = IMGetXPCStringFromDictionary();
      v1128 = IMGetXPCStringFromDictionary();
      v226 = xpc_dictionary_get_int64(a3, "isCommSafetySensitive");
      v227 = IMGetXPCStringFromDictionary();
      v228 = IMGetXPCStringFromDictionary();
      v229 = xpc_dictionary_get_int64(a3, "previewGenerationState");
      if (a4)
      {
        v231 = a5;
      }

      else
      {
        v231 = 0;
      }

      if (a4)
      {
        v232 = a6;
      }

      else
      {
        v232 = 0;
      }

      *&v1033 = v1140;
      *(&v1033 + 1) = v1134;
      *(&v1016 + 1) = v1206;
      *&v1016 = v1212;
      __XPCServerIMDAttachmentRecordCreate_IPCAction(v229, v230, v231, v232, v1244, int64, v1225, v1218, v1016, v1200, v1194, v1188, v1176, v1182, v1170, v1164, v1158, v1152, v1146, v1033, v1128, v226, v227, v228, v229);
      v19 = 4;
      break;
    case 5:
      v913 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v915 = a5;
      }

      else
      {
        v915 = 0;
      }

      if (a4)
      {
        v916 = a6;
      }

      else
      {
        v916 = 0;
      }

      __XPCServerIMDAttachmentRecordRIDForGUID_IPCAction(v913, v914, v915, v916, v913);
      v19 = 5;
      break;
    case 6:
      v261 = IMGetXPCStringFromDictionary();
      v262 = xpc_dictionary_get_BOOL(a3, "isLegacyGUID");
      if (a4)
      {
        v264 = a5;
      }

      else
      {
        v264 = 0;
      }

      if (a4)
      {
        v265 = a6;
      }

      else
      {
        v265 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyAttachmentForGUID_IPCAction(v262, v263, v264, v265, v261, v262);
      v19 = 6;
      break;
    case 7:
      v22 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v24 = a5;
      }

      else
      {
        v24 = 0;
      }

      if (a4)
      {
        v25 = a6;
      }

      else
      {
        v25 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyStickerAttachmentForStickerCachePath_IPCAction(v22, v23, v24, v25, v22);
      v19 = 7;
      break;
    case 8:
      v472 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v474 = a5;
      }

      else
      {
        v474 = 0;
      }

      if (a4)
      {
        v475 = a6;
      }

      else
      {
        v475 = 0;
      }

      __XPCServerIMDAttachmentRecordDeleteAttachmentForGUID_IPCAction(v472, v473, v474, v475, v472);
      v19 = 8;
      break;
    case 9:
      v747 = xpc_dictionary_get_int64(a3, "days");
      if (a4)
      {
        v749 = a5;
      }

      else
      {
        v749 = 0;
      }

      if (a4)
      {
        v750 = a6;
      }

      else
      {
        v750 = 0;
      }

      __XPCServerIMDAttachmentRecordDeleteAttachmentsOlderThanDays_IPCAction(v747, v748, v749, v750, v747);
      v19 = 9;
      break;
    case 10:
      v98 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v100 = a5;
      }

      else
      {
        v100 = 0;
      }

      if (a4)
      {
        v101 = a6;
      }

      else
      {
        v101 = 0;
      }

      __XPCServerIMDAttachmentRecordDoesAttachmentWithGUIDExist_IPCAction(v98, v99, v100, v101, v98);
      v19 = 10;
      break;
    case 11:
      v375 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v377 = a5;
      }

      else
      {
        v377 = 0;
      }

      if (a4)
      {
        v378 = a6;
      }

      else
      {
        v378 = 0;
      }

      __XPCServerIMDAttachmentRecordDoesStickerPathHaveAttachments_IPCAction(v375, v376, v377, v378, v375);
      v19 = 11;
      break;
    case 12:
      v300 = xpc_dictionary_get_int64(a3, "numRecents");
      if (a4)
      {
        v302 = a5;
      }

      else
      {
        v302 = 0;
      }

      if (a4)
      {
        v303 = a6;
      }

      else
      {
        v303 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyRecentFilenames_IPCAction(v300, v301, v302, v303, v300);
      v19 = 12;
      break;
    case 13:
      if (IMOSLoggingEnabled())
      {
        v123 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v123, OS_LOG_TYPE_INFO, "IMDAttachmentRecordCopyAttachmentsForQueryWithLimit_IPCAction", buf, 2u);
        }
      }

      v124 = xpc_dictionary_get_int64(a3, "queryType");
      if (xpc_dictionary_get_value(a3, "afterRow"))
      {
        v125 = xpc_dictionary_get_int64(a3, "afterRow");
        v128 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v126, v125, v127);
      }

      else
      {
        v128 = 0;
      }

      v1008 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v1010 = a5;
      }

      else
      {
        v1010 = 0;
      }

      if (a4)
      {
        v1011 = a6;
      }

      else
      {
        v1011 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyAttachmentsForQueryWithLimit_IPCAction(v1008, v1009, v1010, v1011, v124, v128, v1008);
      v19 = 13;
      break;
    case 14:
      if (IMOSLoggingEnabled())
      {
        v220 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v220, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v220, OS_LOG_TYPE_INFO, "IMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState_IPCAction", buf, 2u);
        }
      }

      v221 = xpc_dictionary_get_int64(a3, "rowid");
      v222 = xpc_dictionary_get_int64(a3, "syncState");
      if (a4)
      {
        v224 = a5;
      }

      else
      {
        v224 = 0;
      }

      if (a4)
      {
        v225 = a6;
      }

      else
      {
        v225 = 0;
      }

      __XPCServerIMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState_IPCAction(v222, v223, v224, v225, v221, v222);
      v19 = 14;
      break;
    case 15:
      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v48, OS_LOG_TYPE_INFO, "IMDAttachmentRecordMarkAttachmentWithROWIDAsSyncedWithCloudKit_IPCAction", buf, 2u);
        }
      }

      v49 = xpc_dictionary_get_int64(a3, "rowid");
      if (a4)
      {
        v51 = a5;
      }

      else
      {
        v51 = 0;
      }

      if (a4)
      {
        v52 = a6;
      }

      else
      {
        v52 = 0;
      }

      __XPCServerIMDAttachmentRecordMarkAttachmentWithROWIDAsSyncedWithCloudKit_IPCAction(v49, v50, v51, v52, v49);
      v19 = 15;
      break;
    case 16:
      v995 = IMOSLoggingEnabled();
      if (v995)
      {
        v997 = OSLogHandleForIMFoundationCategory();
        v995 = os_log_type_enabled(v997, OS_LOG_TYPE_INFO);
        if (v995)
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v997, OS_LOG_TYPE_INFO, "IMDAttachmentRecordMarkAllAttachmentsAsNeedingCloudKitSync_IPCAction", buf, 2u);
        }
      }

      if (a4)
      {
        v998 = a5;
      }

      else
      {
        v998 = 0;
      }

      if (a4)
      {
        v999 = a6;
      }

      else
      {
        v999 = 0;
      }

      __XPCServerIMDAttachmentRecordMarkAllAttachmentsAsNeedingCloudKitSync_IPCAction(v995, v996, v998, v999);
      v19 = 16;
      break;
    case 17:
      v619 = IMOSLoggingEnabled();
      if (v619)
      {
        v621 = OSLogHandleForIMFoundationCategory();
        v619 = os_log_type_enabled(v621, OS_LOG_TYPE_INFO);
        if (v619)
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v621, OS_LOG_TYPE_INFO, "IMDAttachmentResetAllAttachmentsInFailedCloudDownloadState_IPCAction", buf, 2u);
        }
      }

      if (a4)
      {
        v622 = a5;
      }

      else
      {
        v622 = 0;
      }

      if (a4)
      {
        v623 = a6;
      }

      else
      {
        v623 = 0;
      }

      __XPCServerIMDAttachmentResetAllAttachmentsInFailedCloudDownloadState_IPCAction(v619, v620, v622, v623);
      v19 = 17;
      break;
    case 18:
      if (IMOSLoggingEnabled())
      {
        v693 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v693, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v693, OS_LOG_TYPE_INFO, "IMDAttachmentRecordCopyMessageForAttachmentGUID_IPCAction", buf, 2u);
        }
      }

      v694 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v696 = a5;
      }

      else
      {
        v696 = 0;
      }

      if (a4)
      {
        v697 = a6;
      }

      else
      {
        v697 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyMessageForAttachmentGUID_IPCAction(v694, v695, v696, v697, v694);
      v19 = 18;
      break;
    case 19:
      if (IMOSLoggingEnabled())
      {
        v963 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v963, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v963, OS_LOG_TYPE_INFO, "IMDAttachmentRecordUpdateAttachmentGUIDWithGUID_IPCAction", buf, 2u);
        }
      }

      v964 = IMGetXPCStringFromDictionary();
      v965 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v967 = a5;
      }

      else
      {
        v967 = 0;
      }

      if (a4)
      {
        v968 = a6;
      }

      else
      {
        v968 = 0;
      }

      __XPCServerIMDAttachmentRecordUpdateAttachmentGUIDWithGUID_IPCAction(v965, v966, v967, v968, v964, v965);
      v19 = 19;
      break;
    case 20:
      v152 = IMOSLoggingEnabled();
      if (v152)
      {
        v154 = OSLogHandleForIMFoundationCategory();
        v152 = os_log_type_enabled(v154, OS_LOG_TYPE_INFO);
        if (v152)
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v154, OS_LOG_TYPE_INFO, "IMDAttachmentRecordGetPurgeableDiskSpace_IPCAction", buf, 2u);
        }
      }

      if (a4)
      {
        v155 = a5;
      }

      else
      {
        v155 = 0;
      }

      if (a4)
      {
        v156 = a6;
      }

      else
      {
        v156 = 0;
      }

      __XPCServerIMDAttachmentRecordGetPurgeableDiskSpace_IPCAction(v152, v153, v155, v156);
      v19 = 20;
      break;
    case 21:
      v990 = IMOSLoggingEnabled();
      if (v990)
      {
        v992 = OSLogHandleForIMFoundationCategory();
        v990 = os_log_type_enabled(v992, OS_LOG_TYPE_INFO);
        if (v990)
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v992, OS_LOG_TYPE_INFO, "IMDAttachmentRecordGetNonSyncedAttachmentDiskSpace_IPCAction", buf, 2u);
        }
      }

      if (a4)
      {
        v993 = a5;
      }

      else
      {
        v993 = 0;
      }

      if (a4)
      {
        v994 = a6;
      }

      else
      {
        v994 = 0;
      }

      __XPCServerIMDAttachmentRecordGetNonSyncedAttachmentDiskSpace_IPCAction(v990, v991, v993, v994);
      v19 = 21;
      break;
    case 22:
      if (IMOSLoggingEnabled())
      {
        v980 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v980, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v980, OS_LOG_TYPE_INFO, "IMDAttachmentRecordCopyAttachmentsToMetricForDiskSpace_IPCAction", buf, 2u);
        }
      }

      v981 = xpc_dictionary_get_int64(a3, "bytesToFreeUp");
      if (a4)
      {
        v983 = a5;
      }

      else
      {
        v983 = 0;
      }

      if (a4)
      {
        v984 = a6;
      }

      else
      {
        v984 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyAttachmentsToMetricForDiskSpace_IPCAction(v981, v982, v983, v984, v981);
      v19 = 22;
      break;
    case 23:
      if (IMOSLoggingEnabled())
      {
        v419 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v419, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v419, OS_LOG_TYPE_INFO, "IMDAttachmentRecordCopyMostRecentAttachmentsInMostRecentChats_IPCAction", buf, 2u);
        }
      }

      v420 = xpc_dictionary_get_int64(a3, "chatLimit");
      v421 = xpc_dictionary_get_int64(a3, "attachmentLimit");
      if (a4)
      {
        v423 = a5;
      }

      else
      {
        v423 = 0;
      }

      if (a4)
      {
        v424 = a6;
      }

      else
      {
        v424 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyMostRecentAttachmentsInMostRecentChats_IPCAction(v421, v422, v423, v424, v420, v421);
      v19 = 23;
      break;
    case 24:
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_INFO, "IMDAttachmentUpdateAttachmentFileSizeWithRowIDGreaterThanWatermark_IPCAction", buf, 2u);
        }
      }

      v38 = xpc_dictionary_get_int64(a3, "watermark");
      if (a4)
      {
        v40 = a5;
      }

      else
      {
        v40 = 0;
      }

      if (a4)
      {
        v41 = a6;
      }

      else
      {
        v41 = 0;
      }

      __XPCServerIMDAttachmentUpdateAttachmentFileSizeWithRowIDGreaterThanWatermark_IPCAction(v38, v39, v40, v41, v38);
      v19 = 24;
      break;
    case 25:
      if (IMOSLoggingEnabled())
      {
        v57 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v57, OS_LOG_TYPE_INFO, "IMDAttachmentRecordCopyAttachmentsToPurgeForDiskSpace_IPCAction", buf, 2u);
        }
      }

      v58 = xpc_dictionary_get_int64(a3, "bytesToFreeUp");
      v59 = xpc_dictionary_get_int64(a3, "startingOffset");
      if (a4)
      {
        v61 = a5;
      }

      else
      {
        v61 = 0;
      }

      if (a4)
      {
        v62 = a6;
      }

      else
      {
        v62 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyAttachmentsToPurgeForDiskSpace_IPCAction(v59, v60, v61, v62, v58, v59);
      v19 = 25;
      break;
    case 26:
      v136 = xpc_dictionary_get_int64(a3, "numRecents");
      if (a4)
      {
        v138 = a5;
      }

      else
      {
        v138 = 0;
      }

      if (a4)
      {
        v139 = a6;
      }

      else
      {
        v139 = 0;
      }

      __XPCServerIMDAttachmentRecordDeleteAttachmentPreviewsOlderThan_IPCAction(v136, v137, v138, v139, v136);
      v19 = 26;
      break;
    case 27:
      v171 = IMGetXPCArrayFromDictionary();
      v172 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v174 = a5;
      }

      else
      {
        v174 = 0;
      }

      if (a4)
      {
        v175 = a6;
      }

      else
      {
        v175 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServices_IPCAction(v172, v173, v174, v175, v171, v172);
      v19 = 27;
      break;
    case 28:
      v42 = IMGetXPCArrayFromDictionary();
      v43 = IMGetXPCArrayFromDictionary();
      v44 = IMGetXPCIntFromDictionary();
      if (a4)
      {
        v46 = a5;
      }

      else
      {
        v46 = 0;
      }

      if (a4)
      {
        v47 = a6;
      }

      else
      {
        v47 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyPurgedAttachmentsForChatIdentifiersOnServices_IPCAction(v44, v45, v46, v47, v42, v43, v44);
      v19 = 28;
      break;
    case 29:
      v742 = IMGetXPCArrayFromDictionary();
      v743 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v745 = a5;
      }

      else
      {
        v745 = 0;
      }

      if (a4)
      {
        v746 = a6;
      }

      else
      {
        v746 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyPurgedAttachmentsCountForChatIdentifiersOnServices_IPCAction(v743, v744, v745, v746, v742, v743);
      v19 = 29;
      break;
    case 30:
      v33 = xpc_dictionary_get_int64(a3, "numRecents");
      if (a4)
      {
        v35 = a5;
      }

      else
      {
        v35 = 0;
      }

      if (a4)
      {
        v36 = a6;
      }

      else
      {
        v36 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyStickers_IPCAction(v33, v34, v35, v36, v33);
      v19 = 30;
      break;
    case 31:
      v1252 = IMGetXPCStringFromDictionary();
      v1239 = xpc_dictionary_get_int64(a3, "createdDate");
      v1229 = xpc_dictionary_get_int64(a3, "startDate");
      v1221 = IMGetXPCStringFromDictionary();
      v1215 = IMGetXPCStringFromDictionary();
      v1209 = IMGetXPCStringFromDictionary();
      v1203 = IMGetXPCStringFromDictionary();
      v1197 = xpc_dictionary_get_int64(a3, "transferState");
      v1191 = xpc_dictionary_get_BOOL(a3, "isOutgoing");
      v1185 = IMGetXPCDictionaryFromDictionary();
      v1179 = IMGetXPCIntFromDictionary();
      v1173 = xpc_dictionary_get_BOOL(a3, "isSticker");
      v1167 = IMGetXPCDictionaryFromDictionary();
      v1161 = IMGetXPCDictionaryFromDictionary();
      v1155 = xpc_dictionary_get_BOOL(a3, "hideAttachment");
      v1149 = xpc_dictionary_get_int64(a3, "cloudKitSyncState");
      v1143 = IMGetXPCDataFromDictionary();
      v1137 = IMGetXPCStringFromDictionary();
      v1131 = IMGetXPCStringFromDictionary();
      v885 = xpc_dictionary_get_int64(a3, "isCommSafetySensitive");
      v886 = IMGetXPCStringFromDictionary();
      v887 = IMGetXPCStringFromDictionary();
      v888 = xpc_dictionary_get_int64(a3, "previewGenerationState");
      if (a4)
      {
        v890 = a5;
      }

      else
      {
        v890 = 0;
      }

      if (a4)
      {
        v891 = a6;
      }

      else
      {
        v891 = 0;
      }

      *&v1034 = v1143;
      *(&v1034 + 1) = v1137;
      *(&v1019 + 1) = v1209;
      *&v1019 = v1215;
      __XPCServerIMDAttachmentRecordBulkUpdate_IPCAction(v888, v889, v890, v891, v1252, v1239, v1229, v1221, v1019, v1203, v1197, v1191, v1179, v1185, v1173, v1167, v1161, v1155, v1149, v1034, v1131, v885, v886, v887, v888);
      v19 = 31;
      break;
    case 32:
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_INFO, "In server for IMDAttachmentRecordDeleteAttachmentsDirectWithPredicate_IPCAction", buf, 2u);
        }
      }

      v30 = objc_msgSend_sharedServer(IMDDatabaseServer, v26, v27, v28);
      if (a4)
      {
        v32 = a5;
      }

      else
      {
        v32 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleDeleteAttachmentsDirectWithPredicate_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v30, v31, a2, a3, v32, a6);
      }

      else
      {
        objc_msgSend_handleDeleteAttachmentsDirectWithPredicate_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v30, v31, a2, a3, v32, 0);
      }

      v19 = 32;
      break;
    case 33:
      if (IMOSLoggingEnabled())
      {
        v765 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v765, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v765, OS_LOG_TYPE_INFO, "In server for IMDAttachmentRecordCopyAttachmentsDirectWithPredicate_IPCAction", buf, 2u);
        }
      }

      v766 = objc_msgSend_sharedServer(IMDDatabaseServer, v762, v763, v764);
      if (a4)
      {
        v768 = a5;
      }

      else
      {
        v768 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDAttachmentRecordCopyFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v766, v767, a2, a3, v768, a6);
      }

      else
      {
        objc_msgSend_handleIMDAttachmentRecordCopyFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v766, v767, a2, a3, v768, 0);
      }

      v19 = 33;
      break;
    case 34:
      if (IMOSLoggingEnabled())
      {
        v81 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v81, OS_LOG_TYPE_INFO, "In server for IMDAttachmentRecordCopySortedAttachmentsFilteredUsingPredicateWithLimit_IPCAction", buf, 2u);
        }
      }

      v82 = objc_msgSend_sharedServer(IMDDatabaseServer, v78, v79, v80);
      if (a4)
      {
        v84 = a5;
      }

      else
      {
        v84 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDAttachmentRecordCopySortedAttachmentsFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v82, v83, a2, a3, v84, a6);
      }

      else
      {
        objc_msgSend_handleIMDAttachmentRecordCopySortedAttachmentsFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v82, v83, a2, a3, v84, 0);
      }

      v19 = 34;
      break;
    case 35:
      v708 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v710 = a5;
      }

      else
      {
        v710 = 0;
      }

      if (a4)
      {
        v711 = a6;
      }

      else
      {
        v711 = 0;
      }

      __XPCServerIMDCNRecordIDAndHistoryTokenForAliases_IPAction(v708, v709, v710, v711, v708);
      v19 = 35;
      break;
    case 36:
      v985 = IMGetXPCDictionaryFromDictionary();
      v986 = IMGetXPCDataFromDictionary();
      if (a4)
      {
        v988 = a5;
      }

      else
      {
        v988 = 0;
      }

      if (a4)
      {
        v989 = a6;
      }

      else
      {
        v989 = 0;
      }

      __XPCServerIMDCNRecordIDAndHistoryTokenForAliases_asyncIPAction(v986, v987, v988, v989, v985, v986);
      v19 = 36;
      break;
    case 37:
      v349 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v351 = a5;
      }

      else
      {
        v351 = 0;
      }

      if (a4)
      {
        v352 = a6;
      }

      else
      {
        v352 = 0;
      }

      __XPCServerIMDCNRecordIDForAliases_IPAction(v349, v350, v351, v352, v349);
      v19 = 37;
      break;
    case 38:
      v408 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v410 = a5;
      }

      else
      {
        v410 = 0;
      }

      if (a4)
      {
        v411 = a6;
      }

      else
      {
        v411 = 0;
      }

      __XPCServerIMDIsFavoritedContact_IPCAction(v408, v409, v410, v411, v408);
      v19 = 38;
      break;
    case 39:
      v1250 = IMGetXPCStringFromDictionary();
      v755 = IMGetXPCStringFromDictionary();
      v756 = IMGetXPCStringFromDictionary();
      v757 = IMGetXPCStringFromDictionary();
      v758 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v760 = a5;
      }

      else
      {
        v760 = 0;
      }

      if (a4)
      {
        v761 = a6;
      }

      else
      {
        v761 = 0;
      }

      __XPCServerIMDHandleRecordCreate_IPCAction(v758, v759, v760, v761, v1250, v755, v756, v757, v758);
      v19 = 39;
      break;
    case 40:
      v1247 = xpc_dictionary_get_int64(a3, "handleID");
      v1236 = IMGetXPCStringFromDictionary();
      v608 = IMGetXPCStringFromDictionary();
      v609 = IMGetXPCStringFromDictionary();
      v610 = IMGetXPCStringFromDictionary();
      v611 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v613 = a5;
      }

      else
      {
        v613 = 0;
      }

      if (a4)
      {
        v614 = a6;
      }

      else
      {
        v614 = 0;
      }

      __XPCServerIMDHandleRecordBulkUpdate_IPCAction(v611, v612, v613, v614, v1247, v1236, v608, v609, v610, v611);
      v19 = 40;
      break;
    case 41:
      v102 = IMGetXPCStringFromDictionary();
      v103 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v105 = a5;
      }

      else
      {
        v105 = 0;
      }

      if (a4)
      {
        v106 = a6;
      }

      else
      {
        v106 = 0;
      }

      __XPCServerIMDHandleRecordCopyHandleForIDOnService_IPCAction(v103, v104, v105, v106, v102, v103);
      v19 = 41;
      break;
    case 42:
      v892 = IMGetXPCStringFromDictionary();
      v893 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v895 = a5;
      }

      else
      {
        v895 = 0;
      }

      if (a4)
      {
        v896 = a6;
      }

      else
      {
        v896 = 0;
      }

      __XPCServerIMDMessageRecordUnassociateMessageWithGUIDFromAttachmentWithGUID_IPCAction(v893, v894, v895, v896, v892, v893);
      v19 = 42;
      break;
    case 43:
      v204 = IMGetXPCStringFromDictionary();
      v205 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v207 = a5;
      }

      else
      {
        v207 = 0;
      }

      if (a4)
      {
        v208 = a6;
      }

      else
      {
        v208 = 0;
      }

      __XPCServerIMDMessageRecordAssociateMessageWithGUIDToAttachmentWithGUID_IPCAction(v205, v206, v207, v208, v204, v205);
      v19 = 43;
      break;
    case 44:
      v646 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v648 = a5;
      }

      else
      {
        v648 = 0;
      }

      if (a4)
      {
        v649 = a6;
      }

      else
      {
        v649 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesForGUIDs_IPCAction(v646, v647, v648, v649, v646);
      v19 = 44;
      break;
    case 45:
      v53 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v55 = a5;
      }

      else
      {
        v55 = 0;
      }

      if (a4)
      {
        v56 = a6;
      }

      else
      {
        v56 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesForAssociatedGUID_IPCAction(v53, v54, v55, v56, v53);
      v19 = 45;
      break;
    case 46:
      v867 = xpc_dictionary_get_int64(a3, "lowerRowID");
      v868 = xpc_dictionary_get_int64(a3, "maxRowID");
      if (a4)
      {
        v870 = a5;
      }

      else
      {
        v870 = 0;
      }

      if (a4)
      {
        v871 = a6;
      }

      else
      {
        v871 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesBetweenRowIDs_IPCAction(v868, v869, v870, v871, v867, v868);
      v19 = 46;
      break;
    case 47:
      v805 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v807 = a5;
      }

      else
      {
        v807 = 0;
      }

      if (a4)
      {
        v808 = a6;
      }

      else
      {
        v808 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessageForGUID_IPCAction(v805, v806, v807, v808, v805);
      v19 = 47;
      break;
    case 48:
      v90 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v92 = a5;
      }

      else
      {
        v92 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordCopyLastMessageForChatWithRowID_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v90, v91, a2, a3, v92, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordCopyLastMessageForChatWithRowID_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v90, v91, a2, a3, v92, 0);
      }

      goto LABEL_145;
    case 49:
      if (a4)
      {
        v911 = a5;
      }

      else
      {
        v911 = 0;
      }

      if (a4)
      {
        v912 = a6;
      }

      else
      {
        v912 = 0;
      }

      __XPCServerIMDMessageRecordCopyLastReceivedMessage_IPCAction(v14, v15, v911, v912);
      v19 = 49;
      break;
    case 50:
      v180 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v182 = a5;
      }

      else
      {
        v182 = 0;
      }

      if (a4)
      {
        v183 = a6;
      }

      else
      {
        v183 = 0;
      }

      __XPCServerIMDMessageRecordCopyLastReceivedMessageLimit_IPCAction(v180, v181, v182, v183, v180);
      v19 = 50;
      break;
    case 51:
      v845 = xpc_dictionary_get_int64(a3, "rowID");
      if (a4)
      {
        v847 = a5;
      }

      else
      {
        v847 = 0;
      }

      if (a4)
      {
        v848 = a6;
      }

      else
      {
        v848 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessageForRowID_IPCAction(v845, v846, v847, v848, v845);
      v19 = 51;
      break;
    case 52:
      v107 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v109 = a5;
      }

      else
      {
        v109 = 0;
      }

      if (a4)
      {
        v110 = a6;
      }

      else
      {
        v110 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesForRowIDs_IPCAction(v107, v108, v109, v110, v107);
      v19 = 52;
      break;
    case 53:
      v236 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v238 = a5;
      }

      else
      {
        v238 = 0;
      }

      if (a4)
      {
        v239 = a6;
      }

      else
      {
        v239 = 0;
      }

      __XPCServerIMDMessageRecordDeleteMessagesForGUIDs_IPCAction(v236, v237, v238, v239, v236);
      v19 = 53;
      break;
    case 54:
      v936 = xpc_dictionary_get_int64(a3, "days");
      if (a4)
      {
        v938 = a5;
      }

      else
      {
        v938 = 0;
      }

      if (a4)
      {
        v939 = a6;
      }

      else
      {
        v939 = 0;
      }

      __XPCServerIMDMessageRecordDeleteMessagesOlderThanDays_IPCAction(v936, v937, v938, v939, v936);
      v19 = 54;
      break;
    case 55:
      v861 = IMGetXPCStringFromDictionary();
      v862 = IMGetXPCStringFromDictionary();
      v863 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v865 = a5;
      }

      else
      {
        v865 = 0;
      }

      if (a4)
      {
        v866 = a6;
      }

      else
      {
        v866 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesWithRoomnameOnServiceLimit_IPCAction(v863, v864, v865, v866, v861, v862, v863);
      v19 = 55;
      break;
    case 56:
      v1242 = IMGetXPCArrayFromDictionary();
      v1231 = IMGetXPCArrayFromDictionary();
      v1223 = xpc_dictionary_get_int64(a3, "limit");
      v145 = IMGetXPCStringFromDictionary();
      v146 = IMGetXPCStringFromDictionary();
      v147 = xpc_dictionary_get_BOOL(a3, "only_messages");
      v148 = xpc_dictionary_get_BOOL(a3, "only_unread");
      if (a4)
      {
        v150 = a5;
      }

      else
      {
        v150 = 0;
      }

      if (a4)
      {
        v151 = a6;
      }

      else
      {
        v151 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesWithOptionalThreadIdentifierAndLimit_IPCAction(v148, v149, v150, v151, v1242, v1231, v145, v146, v1223, v147, v148);
      v19 = 56;
      break;
    case 57:
      v1253 = IMGetXPCArrayFromDictionary();
      v1240 = IMGetXPCArrayFromDictionary();
      v973 = xpc_dictionary_get_int64(a3, "numberOfMessagesBefore");
      v974 = xpc_dictionary_get_int64(a3, "numberOfMessagesAfter");
      v975 = IMGetXPCStringFromDictionary();
      v976 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v978 = a5;
      }

      else
      {
        v978 = 0;
      }

      if (a4)
      {
        v979 = a6;
      }

      else
      {
        v979 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier_IPCAction(v976, v977, v978, v979, v1253, v1240, v975, v976, v973, v974);
      v19 = 57;
      break;
    case 58:
      v840 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v842 = a5;
      }

      else
      {
        v842 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordCopyMessageWithGUIDExcludingRecoverableMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v840, v841, a2, a3, v842, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordCopyMessageWithGUIDExcludingRecoverableMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v840, v841, a2, a3, v842, 0);
      }

      v19 = 58;
      break;
    case 59:
      v687 = IMGetXPCArrayFromDictionary();
      v688 = IMGetXPCArrayFromDictionary();
      v689 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v691 = a5;
      }

      else
      {
        v691 = 0;
      }

      if (a4)
      {
        v692 = a6;
      }

      else
      {
        v692 = 0;
      }

      __XPCServerIMDMessageRecordCopyFrequentRepliesForChatIdentifiersOnServicesLimit_IPCAction(v689, v690, v691, v692, v687, v688, v689);
      v19 = 59;
      break;
    case 60:
      v63 = IMGetXPCArrayFromDictionary();
      v64 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v66 = a5;
      }

      else
      {
        v66 = 0;
      }

      if (a4)
      {
        v67 = a6;
      }

      else
      {
        v67 = 0;
      }

      __XPCServerIMDMessageRecordCopyGUIDsForMessagesWithChatIdentifiersOnServices_IPCAction(v64, v65, v66, v67, v63, v64);
      v19 = 60;
      break;
    case 61:
      v949 = IMGetXPCArrayFromDictionary();
      v950 = IMGetXPCArrayFromDictionary();
      v951 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v953 = a5;
      }

      else
      {
        v953 = 0;
      }

      if (a4)
      {
        v954 = a6;
      }

      else
      {
        v954 = 0;
      }

      __XPCServerIMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServices_IPCAction(v951, v952, v953, v954, v949, v950, v951);
      v19 = 61;
      break;
    case 62:
      v74 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v76 = a5;
      }

      else
      {
        v76 = 0;
      }

      if (a4)
      {
        v77 = a6;
      }

      else
      {
        v77 = 0;
      }

      __XPCServerIMDChatGetChatsThatContainRecipient_IPCAction(v74, v75, v76, v77, v74);
      v19 = 62;
      break;
    case 63:
      v68 = IMGetXPCStringFromDictionary();
      v69 = IMGetXPCStringFromDictionary();
      v70 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v72 = a5;
      }

      else
      {
        v72 = 0;
      }

      if (a4)
      {
        v73 = a6;
      }

      else
      {
        v73 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesWithHandleOnServiceLimit_IPCAction(v70, v71, v72, v73, v68, v69, v70);
      v19 = 63;
      break;
    case 64:
      v1246 = IMGetXPCStringFromDictionary();
      v1235 = IMGetXPCStringFromDictionary();
      v1227 = IMGetXPCArrayFromDictionary();
      v539 = IMGetXPCArrayFromDictionary();
      v540 = xpc_dictionary_get_double(a3, "searchAfter");
      v541 = IMGetXPCArrayFromDictionary();
      v542 = IMGetXPCArrayFromDictionary();
      v543 = xpc_dictionary_get_BOOL(a3, "includeFromMe");
      if (a4)
      {
        v545 = a5;
      }

      else
      {
        v545 = 0;
      }

      if (a4)
      {
        v546 = a6;
      }

      else
      {
        v546 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessageMatchingBodyStringWithChatIdentifiersServicesSkippingGUIDs_IPCAction(v540, v543, v544, v545, v546, v1246, v1235, v1227, v539, v543, v541, v542);
      v19 = 64;
      break;
    case 65:
      v1248 = IMGetXPCStringFromDictionary();
      v655 = IMGetXPCStringFromDictionary();
      v656 = IMGetXPCArrayFromDictionary();
      v657 = IMGetXPCArrayFromDictionary();
      v660 = xpc_dictionary_get_double(a3, "searchAfter");
      if (a4)
      {
        v661 = a5;
      }

      else
      {
        v661 = 0;
      }

      if (a4)
      {
        v662 = a6;
      }

      else
      {
        v662 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessageMatchingBodyStringWithHandleSkippingServicesSkippingGUIDs_IPCAction(v660, v658, v659, v661, v662, v1248, v655, v656, v657);
      v19 = 65;
      break;
    case 66:
      v1249 = IMGetXPCStringFromDictionary();
      v1237 = IMGetXPCStringFromDictionary();
      v723 = IMGetXPCStringFromDictionary();
      v724 = xpc_dictionary_get_BOOL(a3, "matchingIsSOS");
      v725 = IMGetXPCStringFromDictionary();
      v728 = xpc_dictionary_get_double(a3, "searchAfter");
      if (a4)
      {
        v729 = a5;
      }

      else
      {
        v729 = 0;
      }

      if (a4)
      {
        v730 = a6;
      }

      else
      {
        v730 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessageMatchingBodyStringWithHandleMatchingServiceMatchingSOSSkippingGUID_IPCAction(v728, v726, v727, v729, v730, v1249, v1237, v723, v724, v725);
      v19 = 66;
      break;
    case 67:
      v336 = IMGetXPCStringFromDictionary();
      v337 = IMGetXPCStringFromDictionary();
      v338 = xpc_dictionary_get_int64(a3, "replaceID");
      if (a4)
      {
        v340 = a5;
      }

      else
      {
        v340 = 0;
      }

      if (a4)
      {
        v341 = a6;
      }

      else
      {
        v341 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessageWithHandleOnServiceWithReplaceID_IPCAction(v338, v339, v340, v341, v336, v337, v338);
      v19 = 67;
      break;
    case 68:
      v129 = xpc_dictionary_get_int64(a3, "limit");
      v130 = IMGetXPCArrayFromDictionary();
      v131 = IMGetXPCArrayFromDictionary();
      v132 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v134 = a5;
      }

      else
      {
        v134 = 0;
      }

      if (a4)
      {
        v135 = a6;
      }

      else
      {
        v135 = 0;
      }

      __XPCServerIMDMessageRecordCopyUnreadIncomingMessagesWithChatIdentifiersOnServicesToLimitFallbackGUID_IPCAction(v132, v133, v134, v135, v130, v131, v129, v132);
      v19 = 68;
      break;
    case 69:
      v551 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v553 = a5;
      }

      else
      {
        v553 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordCopyScheduledMessagesForChatGUIDToLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v551, v552, a2, a3, v553, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordCopyScheduledMessagesForChatGUIDToLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v551, v552, a2, a3, v553, 0);
      }

      v19 = 69;
      break;
    case 70:
      v283 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v285 = a5;
      }

      else
      {
        v285 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordCopyScheduledMessagesToDeleteFromCloudKitToLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v283, v284, a2, a3, v285, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordCopyScheduledMessagesToDeleteFromCloudKitToLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v283, v284, a2, a3, v285, 0);
      }

      v19 = 70;
      break;
    case 71:
      v87 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v89 = a5;
      }

      else
      {
        v89 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordAddScheduledMessageGUIDandCKRecordToDeleteFromCloudKit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v87, v88, a2, a3, v89, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordAddScheduledMessageGUIDandCKRecordToDeleteFromCloudKit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v87, v88, a2, a3, v89, 0);
      }

      v19 = 71;
      break;
    case 72:
      v463 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v465 = a5;
      }

      else
      {
        v465 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageDeleteTombstonedScheduledMessagesWithRecordIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v463, v464, a2, a3, v465, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageDeleteTombstonedScheduledMessagesWithRecordIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v463, v464, a2, a3, v465, 0);
      }

      v19 = 72;
      break;
    case 73:
      v945 = xpc_dictionary_get_int64(a3, "afterRowID");
      if (a4)
      {
        v947 = a5;
      }

      else
      {
        v947 = 0;
      }

      if (a4)
      {
        v948 = a6;
      }

      else
      {
        v948 = 0;
      }

      __XPCServerIMDMessageRecordCopyUndeliveredOneToOneiMessages_IPCAction(v945, v946, v947, v948, v945);
      v19 = 73;
      break;
    case 74:
      v959 = xpc_dictionary_get_int64(a3, "afterRowID");
      if (a4)
      {
        v961 = a5;
      }

      else
      {
        v961 = 0;
      }

      if (a4)
      {
        v962 = a6;
      }

      else
      {
        v962 = 0;
      }

      __XPCServerIMDMessageRecordCopyExpiringOrExpiredMessages_IPCAction(v959, v960, v961, v962, v959);
      v19 = 74;
      break;
    case 75:
      v921 = xpc_dictionary_get_int64(a3, "afterRowID");
      if (a4)
      {
        v923 = a5;
      }

      else
      {
        v923 = 0;
      }

      if (a4)
      {
        v924 = a6;
      }

      else
      {
        v924 = 0;
      }

      __XPCServerIMDMessageRecordCopyUnsentUnfailedMessages_IPCAction(v921, v922, v923, v924, v921);
      v19 = 75;
      break;
    case 76:
      v184 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v186 = a5;
      }

      else
      {
        v186 = 0;
      }

      if (a4)
      {
        v187 = a6;
      }

      else
      {
        v187 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessageActionItemsForOriginalMessageGUID_IPCAction(v184, v185, v186, v187, v184);
      v19 = 76;
      break;
    case 77:
      v247 = IMGetXPCArrayFromDictionary();
      v248 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v250 = a5;
      }

      else
      {
        v250 = 0;
      }

      if (a4)
      {
        v251 = a6;
      }

      else
      {
        v251 = 0;
      }

      __XPCServerIMDChatGetMessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles_IPCAction(v248, v249, v250, v251, v247, v248);
      v19 = 77;
      break;
    case 78:
      v880 = IMGetXPCArrayFromDictionary();
      v881 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v883 = a5;
      }

      else
      {
        v883 = 0;
      }

      if (a4)
      {
        v884 = a6;
      }

      else
      {
        v884 = 0;
      }

      __XPCServerIMDChatGetMessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs_IPCAction(v881, v882, v883, v884, v880, v881);
      v19 = 78;
      break;
    case 79:
      v855 = IMGetXPCStringFromDictionary();
      v856 = IMGetXPCStringFromDictionary();
      v857 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v859 = a5;
      }

      else
      {
        v859 = 0;
      }

      if (a4)
      {
        v860 = a6;
      }

      else
      {
        v860 = 0;
      }

      __XPCServerIMDChatRemapChatsWithLastAddressedSIMIDToNewLastAddressedIDs_IPCAction(v857, v858, v859, v860, v855, v856, v857);
      v19 = 79;
      break;
    case 80:
      if (a4)
      {
        v85 = a5;
      }

      else
      {
        v85 = 0;
      }

      if (a4)
      {
        v86 = a6;
      }

      else
      {
        v86 = 0;
      }

      __XPCServerIMDMessageRecordCountAllUnreadMessages_IPCAction(v14, v15, v85, v86);
      v19 = 80;
      break;
    case 81:
      v969 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v971 = a5;
      }

      else
      {
        v971 = 0;
      }

      if (a4)
      {
        v972 = a6;
      }

      else
      {
        v972 = 0;
      }

      __XPCServerIMDMessageRecordCountAllUnreadMessagesForChatGUID_IPCAction(v969, v970, v971, v972, v969);
      v19 = 81;
      break;
    case 82:
      v439 = xpc_dictionary_get_int64(a3, "chatID");
      if (a4)
      {
        v441 = a5;
      }

      else
      {
        v441 = 0;
      }

      if (a4)
      {
        v442 = a6;
      }

      else
      {
        v442 = 0;
      }

      __XPCServerIMDMessageRecordCountAllUnreadMessagesForChatRowID_IPCAction(v439, v440, v441, v442, v439);
      v19 = 82;
      break;
    case 83:
      v95 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v97 = a5;
      }

      else
      {
        v97 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordCopyAllUnreadMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v95, v96, a2, a3, v97, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordCopyAllUnreadMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v95, v96, a2, a3, v97, 0);
      }

LABEL_145:
      v19 = 48;
      break;
    case 84:
      if (a4)
      {
        v917 = a5;
      }

      else
      {
        v917 = 0;
      }

      if (a4)
      {
        v918 = a6;
      }

      else
      {
        v918 = 0;
      }

      __XPCServerIMDMessageRecordLastFailedMessageRowID_IPCAction(v14, v15, v917, v918);
      v19 = 84;
      break;
    case 85:
      if (a4)
      {
        v769 = a5;
      }

      else
      {
        v769 = 0;
      }

      if (a4)
      {
        v770 = a6;
      }

      else
      {
        v770 = 0;
      }

      __XPCServerIMDMessageRecordLastSyncedMessageRowID_IPCAction(v14, v15, v769, v770);
      v19 = 85;
      break;
    case 86:
      if (a4)
      {
        v919 = a5;
      }

      else
      {
        v919 = 0;
      }

      if (a4)
      {
        v920 = a6;
      }

      else
      {
        v920 = 0;
      }

      __XPCServerIMDMessageRecordLastFailedMessageDate_IPCAction(v14, v15, v919, v920);
      v19 = 86;
      break;
    case 87:
      if (a4)
      {
        v826 = a5;
      }

      else
      {
        v826 = 0;
      }

      if (a4)
      {
        v827 = a6;
      }

      else
      {
        v827 = 0;
      }

      __XPCServerIMDMessageRecordGetMostRecentMessageDate_IPCAction(v14, v15, v826, v827);
      v19 = 87;
      break;
    case 88:
      v955 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v957 = a5;
      }

      else
      {
        v957 = 0;
      }

      if (a4)
      {
        v958 = a6;
      }

      else
      {
        v958 = 0;
      }

      __XPCServerIMDMessageRecordGetIndentifierForMessageWithGUID_IPCAction(v955, v956, v957, v958, v955);
      v19 = 88;
      break;
    case 89:
      if (a4)
      {
        v214 = a5;
      }

      else
      {
        v214 = 0;
      }

      if (a4)
      {
        v215 = a6;
      }

      else
      {
        v215 = 0;
      }

      __XPCServerIMDMessageRecordMaxMessageIDFromChatMessageJoin_IPCAction(v14, v15, v214, v215);
      v19 = 89;
      break;
    case 90:
      if (a4)
      {
        v93 = a5;
      }

      else
      {
        v93 = 0;
      }

      if (a4)
      {
        v94 = a6;
      }

      else
      {
        v94 = 0;
      }

      __XPCServerIMDMessageRecordGetMessagesSequenceNumber_IPCAction(v14, v15, v93, v94);
      v19 = 90;
      break;
    case 91:
      v307 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v309 = a5;
      }

      else
      {
        v309 = 0;
      }

      if (a4)
      {
        v310 = a6;
      }

      else
      {
        v310 = 0;
      }

      __XPCServerIMDMessageRecordMarkMessageGUIDAsDeduplicated_IPCAction(v307, v308, v309, v310, v307);
      v19 = 91;
      break;
    case 92:
      if (a4)
      {
        v178 = a5;
      }

      else
      {
        v178 = 0;
      }

      if (a4)
      {
        v179 = a6;
      }

      else
      {
        v179 = 0;
      }

      __XPCServerIMDMessageRecordMarkFailedAllUnsentUnfailedMessages_IPCAction(v14, v15, v178, v179);
      v19 = 92;
      break;
    case 93:
      if (a4)
      {
        v342 = a5;
      }

      else
      {
        v342 = 0;
      }

      if (a4)
      {
        v343 = a6;
      }

      else
      {
        v343 = 0;
      }

      __XPCServerIMDMessageRecordDeleteOrphanedMessages_IPCAction(v14, v15, v342, v343);
      v19 = 93;
      break;
    case 94:
      v776 = IMGetXPCStringFromDictionary();
      v777 = IMGetXPCArrayFromDictionary();
      v778 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
      v779 = xpc_dictionary_get_BOOL(a3, "fromMe");
      if (a4)
      {
        v781 = a5;
      }

      else
      {
        v781 = 0;
      }

      if (a4)
      {
        v782 = a6;
      }

      else
      {
        v782 = 0;
      }

      __XPCServerIMDMessageRecordCopyAndMarkAsReadMessagesPriorToGuidMatchingChatGUIDs_IPCAction(v779, v780, v781, v782, v776, v777, v778, v779);
      v19 = 94;
      break;
    case 95:
      v535 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v537 = a5;
      }

      else
      {
        v537 = 0;
      }

      if (a4)
      {
        v538 = a6;
      }

      else
      {
        v538 = 0;
      }

      __XPCServerIMDMessageRecordCopyAllUnplayedMessageGUIDsForChatGUID_IPCAction(v535, v536, v537, v538, v535);
      v19 = 95;
      break;
    case 96:
      v731 = xpc_dictionary_get_int64(a3, "limit");
      v732 = xpc_dictionary_get_int64(a3, "rowID");
      if (a4)
      {
        v734 = a5;
      }

      else
      {
        v734 = 0;
      }

      if (a4)
      {
        v735 = a6;
      }

      else
      {
        v735 = 0;
      }

      __XPCServerIMDMessageRecordCopyNewestUnreadIncomingMessagesToLimitAfterRowID_IPCAction(v732, v733, v734, v735, v731, v732);
      v19 = 96;
      break;
    case 97:
      v358 = xpc_dictionary_get_int64(a3, "limit");
      v359 = xpc_dictionary_get_int64(a3, "date");
      if (a4)
      {
        v361 = a5;
      }

      else
      {
        v361 = 0;
      }

      if (a4)
      {
        v362 = a6;
      }

      else
      {
        v362 = 0;
      }

      __XPCServerIMDMessageRecordCopyNewestFailedOutgoingMessagesToLimitAfterDate_IPCAction(v359, v360, v361, v362, v358, v359);
      v19 = 97;
      break;
    case 98:
      v400 = xpc_dictionary_get_int64(a3, "limit");
      v401 = xpc_dictionary_get_int64(a3, "rowID");
      if (a4)
      {
        v403 = a5;
      }

      else
      {
        v403 = 0;
      }

      if (a4)
      {
        v404 = a6;
      }

      else
      {
        v404 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesDataDetectionResults_IPCAction(v401, v402, v403, v404, v400, v401);
      v19 = 98;
      break;
    case 99:
      v272 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v274 = a5;
      }

      else
      {
        v274 = 0;
      }

      if (a4)
      {
        v275 = a6;
      }

      else
      {
        v275 = 0;
      }

      __XPCServerIMDMessageRecordCopyMostRecentUseageOfAddresses_IPCAction(v272, v273, v274, v275, v272);
      v19 = 99;
      break;
    case 100:
      v1251 = IMGetXPCStringFromDictionary();
      v1238 = xpc_dictionary_get_int64(a3, "date");
      v1228 = xpc_dictionary_get_int64(a3, "dateRead");
      v1220 = xpc_dictionary_get_int64(a3, "dateDelivered");
      v1214 = xpc_dictionary_get_int64(a3, "datePlayed");
      v1208 = xpc_dictionary_get_int64(a3, "error");
      v1202 = xpc_dictionary_get_int64(a3, "type");
      v1196 = xpc_dictionary_get_int64(a3, "replaceID");
      v1190 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
      v1184 = IMGetXPCStringFromDictionary();
      v1178 = IMGetXPCDataFromDictionary();
      v1172 = IMGetXPCStringFromDictionary();
      v1166 = IMGetXPCStringFromDictionary();
      v1160 = IMGetXPCStringFromDictionary();
      v1154 = IMGetXPCStringFromDictionary();
      v1148 = IMGetXPCStringFromDictionary();
      v1142 = IMGetXPCStringFromDictionary();
      v1136 = IMGetXPCStringFromDictionary();
      v1130 = IMGetXPCStringFromDictionary();
      v1125 = xpc_dictionary_get_int64(a3, "groupActionType");
      v1121 = xpc_dictionary_get_int64(a3, "itemType");
      v1117 = IMGetXPCStringFromDictionary();
      v1113 = xpc_dictionary_get_int64(a3, "shareStatus");
      v1109 = xpc_dictionary_get_int64(a3, "shareDirection");
      v1106 = xpc_dictionary_get_int64(a3, "expireState");
      v1104 = xpc_dictionary_get_int64(a3, "messageActionType");
      v1102 = IMGetXPCStringFromDictionary();
      v1100 = xpc_dictionary_get_int64(a3, "associatedMessageType");
      v1098 = xpc_dictionary_get_int64(a3, "associatedMessageRangeLocation");
      v1096 = xpc_dictionary_get_int64(a3, "associatedMessageRangeLength");
      v1094 = IMGetXPCStringFromDictionary();
      v1092 = IMGetXPCDataFromDictionary();
      v1090 = IMGetXPCStringFromDictionary();
      v1088 = xpc_dictionary_get_int64(a3, "timeExpressiveSendPlayed");
      v1086 = IMGetXPCDataFromDictionary();
      v1084 = xpc_dictionary_get_int64(a3, "cloudKitSyncState");
      v1082 = IMGetXPCStringFromDictionary();
      v1080 = IMGetXPCDataFromDictionary();
      v1078 = IMGetXPCStringFromDictionary();
      v1076 = IMGetXPCDictionaryFromDictionary();
      v1074 = IMGetXPCStringFromDictionary();
      v1072 = IMGetXPCStringFromDictionary();
      v1070 = xpc_dictionary_get_int64(a3, "sortID");
      v1068 = IMGetXPCStringFromDictionary();
      v1066 = IMGetXPCStringFromDictionary();
      v1064 = IMGetXPCStringFromDictionary();
      v1062 = IMGetXPCStringFromDictionary();
      v1060 = xpc_dictionary_get_int64(a3, "partCount");
      v1058 = xpc_dictionary_get_int64(a3, "dateEdited");
      v1056 = xpc_dictionary_get_int64(a3, "dateRecovered");
      v1055 = IMGetXPCStringFromDictionary();
      v1054 = IMGetXPCStringFromDictionary();
      v811 = IMGetXPCStringFromDictionary();
      v812 = xpc_dictionary_get_int64(a3, "scheduleType");
      v813 = xpc_dictionary_get_int64(a3, "scheduleState");
      v814 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v816 = a5;
      }

      else
      {
        v816 = 0;
      }

      if (a4)
      {
        v817 = a6;
      }

      else
      {
        v817 = 0;
      }

      *&v1053 = v1055;
      *(&v1053 + 1) = v1054;
      *(&v1052 + 1) = v1058;
      *&v1052 = v1060;
      *(&v1049 + 1) = v1066;
      *&v1049 = v1068;
      *&v1047 = v1082;
      *(&v1047 + 1) = v1080;
      *&v1038 = v1125;
      *(&v1038 + 1) = v1113;
      *(&v1032 + 1) = v1154;
      *(&v1029 + 1) = v1166;
      *&v1032 = v1160;
      *&v1029 = v1172;
      *(&v1018 + 1) = v1208;
      *&v1018 = v1214;
      __XPCServerIMDMessageRecordCreate_IPCAction(v814, v815, v816, v817, v1251, v1238, v1228, v1220, v1018, v1202, v1196, v1190, v1184, v1178, v1029, v1032, v1148, v1142, v1136, v1121, v1117, v1038, v1109, v1130, v1106, v1104, v1102, v1100, v1098, v1096, v1094, v1092, v1090, v1088, v1086, v1084, v1047, v1078, v1076, v1074, v1072, v1070, v1049, v1064, v1062, v1052, v1056, v1053, v811, v812, v813, v814);
      v19 = 100;
      break;
    case 101:
      v311 = xpc_dictionary_get_int64(a3, "messageID");
      if (a4)
      {
        v313 = a5;
      }

      else
      {
        v313 = 0;
      }

      if (a4)
      {
        v314 = a6;
      }

      else
      {
        v314 = 0;
      }

      __XPCServerIMDMessageRecordCopyChats_IPCAction(v311, v312, v313, v314, v311);
      v19 = 101;
      break;
    case 102:
      v216 = xpc_dictionary_get_int64(a3, "messageID");
      if (a4)
      {
        v218 = a5;
      }

      else
      {
        v218 = 0;
      }

      if (a4)
      {
        v219 = a6;
      }

      else
      {
        v219 = 0;
      }

      __XPCServerIMDMessageRecordCopyAttachments_IPCAction(v216, v217, v218, v219, v216);
      v19 = 102;
      break;
    case 103:
      v771 = xpc_dictionary_get_int64(a3, "messageID");
      v772 = xpc_dictionary_get_int64(a3, "handleID");
      if (a4)
      {
        v774 = a5;
      }

      else
      {
        v774 = 0;
      }

      if (a4)
      {
        v775 = a6;
      }

      else
      {
        v775 = 0;
      }

      __XPCServerIMDMessageRecordSetHandle_IPCAction(v772, v773, v774, v775, v771, v772);
      v19 = 103;
      break;
    case 104:
      v925 = xpc_dictionary_get_int64(a3, "messageID");
      if (a4)
      {
        v927 = a5;
      }

      else
      {
        v927 = 0;
      }

      if (a4)
      {
        v928 = a6;
      }

      else
      {
        v928 = 0;
      }

      __XPCServerIMDMessageRecordCopyHandle_IPCAction(v925, v926, v927, v928, v925);
      v19 = 104;
      break;
    case 105:
      v901 = xpc_dictionary_get_int64(a3, "messageID");
      if (a4)
      {
        v903 = a5;
      }

      else
      {
        v903 = 0;
      }

      if (a4)
      {
        v904 = a6;
      }

      else
      {
        v904 = 0;
      }

      __XPCServerIMDMessageRecordCopyOtherHandle_IPCAction(v901, v902, v903, v904, v901);
      v19 = 105;
      break;
    case 106:
      v1245 = xpc_dictionary_get_int64(a3, "messageID");
      v1234 = xpc_dictionary_get_int64(a3, "replaceID");
      v1226 = IMGetXPCStringFromDictionary();
      v1219 = xpc_dictionary_get_int64(a3, "fzDate");
      v1213 = xpc_dictionary_get_int64(a3, "fzDateRead");
      v1207 = xpc_dictionary_get_int64(a3, "fzDateDelivered");
      v1201 = xpc_dictionary_get_int64(a3, "fzDatePlayed");
      v1195 = IMGetXPCStringFromDictionary();
      v1189 = IMGetXPCDataFromDictionary();
      v1183 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
      v1177 = IMGetXPCStringFromDictionary();
      v1171 = IMGetXPCStringFromDictionary();
      v1165 = IMGetXPCStringFromDictionary();
      v1159 = xpc_dictionary_get_int64(a3, "handleID");
      v1153 = IMGetXPCStringFromDictionary();
      v1147 = xpc_dictionary_get_int64(a3, "fzError");
      v1141 = xpc_dictionary_get_int64(a3, "fzType");
      v1135 = IMGetXPCStringFromDictionary();
      v1129 = xpc_dictionary_get_int64(a3, "groupActionType");
      v1124 = xpc_dictionary_get_int64(a3, "otherHandleID");
      v1120 = xpc_dictionary_get_int64(a3, "shareStatus");
      v1116 = xpc_dictionary_get_int64(a3, "shareDirection");
      v1112 = xpc_dictionary_get_int64(a3, "expireState");
      v1108 = xpc_dictionary_get_int64(a3, "messageActionType");
      v1105 = IMGetXPCStringFromDictionary();
      v1103 = xpc_dictionary_get_int64(a3, "associatedMessageType");
      v1101 = IMGetXPCStringFromDictionary();
      v1099 = xpc_dictionary_get_int64(a3, "timePlayedExpressiveSend");
      v1097 = xpc_dictionary_get_int64(a3, "associatedMessageRangeLocation");
      v1095 = xpc_dictionary_get_int64(a3, "associatedMessageRangeLength");
      v1093 = IMGetXPCStringFromDictionary();
      v1091 = IMGetXPCDataFromDictionary();
      v1089 = IMGetXPCDataFromDictionary();
      v1087 = xpc_dictionary_get_int64(a3, "cloudKitSyncState");
      v1085 = IMGetXPCStringFromDictionary();
      v1083 = IMGetXPCDataFromDictionary();
      v1081 = IMGetXPCStringFromDictionary();
      v1079 = IMGetXPCStringFromDictionary();
      v1077 = IMGetXPCStringFromDictionary();
      v1075 = xpc_dictionary_get_int64(a3, "sortID");
      v1073 = IMGetXPCStringFromDictionary();
      v1071 = IMGetXPCStringFromDictionary();
      v1069 = IMGetXPCStringFromDictionary();
      v1067 = IMGetXPCStringFromDictionary();
      v1065 = xpc_dictionary_get_int64(a3, "partCount");
      v1063 = xpc_dictionary_get_int64(a3, "dateEdited");
      v1061 = xpc_dictionary_get_int64(a3, "dateRecovered");
      v1059 = IMGetXPCStringFromDictionary();
      v1057 = IMGetXPCStringFromDictionary();
      v494 = IMGetXPCStringFromDictionary();
      v495 = xpc_dictionary_get_int64(a3, "scheduleType");
      v496 = xpc_dictionary_get_int64(a3, "scheduleState");
      v497 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v499 = a5;
      }

      else
      {
        v499 = 0;
      }

      if (a4)
      {
        v500 = a6;
      }

      else
      {
        v500 = 0;
      }

      *&v1051 = v1059;
      *(&v1051 + 1) = v1057;
      *(&v1050 + 1) = v1063;
      *&v1050 = v1065;
      *(&v1048 + 1) = v1071;
      *&v1048 = v1073;
      *(&v1046 + 1) = v1079;
      *(&v1045 + 1) = v1083;
      *&v1046 = v1081;
      *&v1045 = v1085;
      *(&v1044 + 1) = v1091;
      *&v1044 = v1093;
      *&v1043 = v1103;
      *(&v1043 + 1) = v1097;
      *(&v1037 + 1) = v1120;
      *&v1037 = v1129;
      *&v1036 = v1147;
      *(&v1036 + 1) = v1141;
      *(&v1028 + 1) = v1165;
      *&v1028 = v1171;
      *(&v1025 + 1) = v1177;
      *&v1025 = v1183;
      *(&v1022 + 1) = v1189;
      *&v1022 = v1195;
      *(&v1017 + 1) = v1207;
      *&v1017 = v1213;
      __XPCServerIMDMessageRecordBulkUpdate_IPCAction(v497, v498, v499, v500, v1245, v1234, v1226, v1219, v1017, v1201, v1022, v1025, v1028, v1159, v1153, v1036, v1124, v1037, v1116, v1135, v1112, v1108, v1105, v1043, v1095, v1044, v1101, v1099, v1089, v1087, v1045, v1046, v1077, v1075, v1048, v1069, v1067, v1050, v1061, v1051, v494, v495, v496, v497);
      v19 = 106;
      break;
    case 107:
      v489 = IMGetXPCStringFromDictionary();
      v490 = xpc_dictionary_get_int64(a3, "task_flags");
      if (a4)
      {
        v492 = a5;
      }

      else
      {
        v492 = 0;
      }

      if (a4)
      {
        v493 = a6;
      }

      else
      {
        v493 = 0;
      }

      __XPCServerIMDMessagePTaskInsertRow_IPCAction(v490, v491, v492, v493, v489, v490);
      v19 = 107;
      break;
    case 108:
      v897 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v899 = a5;
      }

      else
      {
        v899 = 0;
      }

      if (a4)
      {
        v900 = a6;
      }

      else
      {
        v900 = 0;
      }

      __XPCServerIMDMessagePTaskSelectWithLimit_IPCAction(v897, v898, v899, v900, v897);
      v19 = 108;
      break;
    case 109:
      v940 = IMGetXPCStringFromDictionary();
      v941 = xpc_dictionary_get_int64(a3, "task_flags");
      if (a4)
      {
        v943 = a5;
      }

      else
      {
        v943 = 0;
      }

      if (a4)
      {
        v944 = a6;
      }

      else
      {
        v944 = 0;
      }

      __XPCServerIMDMessagePTaskUpdateTaskFlagsForGUID_IPCAction(v941, v942, v943, v944, v940, v941);
      v19 = 109;
      break;
    case 110:
      if (a4)
      {
        v176 = a5;
      }

      else
      {
        v176 = 0;
      }

      if (a4)
      {
        v177 = a6;
      }

      else
      {
        v177 = 0;
      }

      __XPCServerIMDMessagePTaskDeleteAllCompletedTask_IPCAction(v14, v15, v176, v177);
      v19 = 110;
      break;
    case 111:
      v1241 = xpc_dictionary_get_int64(a3, "style");
      v1230 = xpc_dictionary_get_int64(a3, "state");
      v1222 = IMGetXPCStringFromDictionary();
      v1216 = IMGetXPCDataFromDictionary();
      v1210 = IMGetXPCStringFromDictionary();
      v1204 = IMGetXPCStringFromDictionary();
      v1198 = IMGetXPCStringFromDictionary();
      v1192 = IMGetXPCStringFromDictionary();
      v1186 = IMGetXPCStringFromDictionary();
      v1180 = IMGetXPCStringFromDictionary();
      v1174 = IMGetXPCStringFromDictionary();
      v1168 = IMGetXPCStringFromDictionary();
      v1162 = xpc_dictionary_get_int64(a3, "isArchived");
      v1156 = xpc_dictionary_get_int64(a3, "isFiltered");
      v1150 = xpc_dictionary_get_int64(a3, "isBlackholed");
      v1144 = xpc_dictionary_get_int64(a3, "hasHadSuccessfulQuery");
      v1138 = IMGetXPCStringFromDictionary();
      v1132 = IMGetXPCStringFromDictionary();
      v1126 = xpc_dictionary_get_int64(a3, "ckSyncState");
      v1122 = IMGetXPCStringFromDictionary();
      v1118 = xpc_dictionary_get_int64(a3, "lastReadMessageTimeStamp");
      v1114 = IMGetXPCStringFromDictionary();
      v1110 = IMGetXPCStringFromDictionary();
      v116 = xpc_dictionary_get_int64(a3, "syndicationType");
      v117 = xpc_dictionary_get_int64(a3, "syndicationDate");
      v118 = xpc_dictionary_get_int64(a3, "isRecovered");
      v119 = xpc_dictionary_get_int64(a3, "isDeletingIncomingMessages");
      if (a4)
      {
        v121 = a5;
      }

      else
      {
        v121 = 0;
      }

      if (a4)
      {
        v122 = a6;
      }

      else
      {
        v122 = 0;
      }

      *(&v1041 + 1) = v118;
      *(&v1039 + 1) = v116;
      *&v1041 = v117;
      *&v1039 = v1150;
      *&v1035 = v1138;
      *(&v1035 + 1) = v1132;
      *(&v1030 + 1) = v1156;
      *&v1030 = v1162;
      *(&v1026 + 1) = v1168;
      *&v1026 = v1174;
      *(&v1023 + 1) = v1180;
      *&v1023 = v1186;
      *(&v1020 + 1) = v1192;
      *&v1020 = v1198;
      *(&v1014 + 1) = v1204;
      *&v1014 = v1210;
      __XPCServerIMDChatRecordCreate_IPCAction(v119, v120, v121, v122, v1241, v1230, v1222, v1216, v1014, v1020, v1023, v1026, v1030, v1144, v1035, v1126, v1122, v1118, v1114, v1110, v1039, v1041, v119);
      v19 = 111;
      break;
    case 112:
      v240 = xpc_dictionary_get_int64(a3, "chatRowID");
      if (a4)
      {
        v242 = a5;
      }

      else
      {
        v242 = 0;
      }

      if (a4)
      {
        v243 = a6;
      }

      else
      {
        v243 = 0;
      }

      __XPCServerIMDChatRecordCopyHandles_IPCAction(v240, v241, v242, v243, v240);
      v19 = 112;
      break;
    case 113:
      v111 = xpc_dictionary_get_int64(a3, "chatRowID");
      v112 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v114 = a5;
      }

      else
      {
        v114 = 0;
      }

      if (a4)
      {
        v115 = a6;
      }

      else
      {
        v115 = 0;
      }

      __XPCServerIMDChatRecordCopyMessagesWithLimit_IPCAction(v112, v113, v114, v115, v111, v112);
      v19 = 113;
      break;
    case 114:
      v650 = xpc_dictionary_get_int64(a3, "chatRowID");
      v651 = xpc_dictionary_get_int64(a3, "isArchived");
      if (a4)
      {
        v653 = a5;
      }

      else
      {
        v653 = 0;
      }

      if (a4)
      {
        v654 = a6;
      }

      else
      {
        v654 = 0;
      }

      __XPCServerIMDChatRecordSetIsArchived_IPCAction(v651, v652, v653, v654, v650, v651);
      v19 = 114;
      break;
    case 115:
      v931 = xpc_dictionary_get_int64(a3, "chatRowID");
      v932 = xpc_dictionary_get_int64(a3, "handleID");
      if (a4)
      {
        v934 = a5;
      }

      else
      {
        v934 = 0;
      }

      if (a4)
      {
        v935 = a6;
      }

      else
      {
        v935 = 0;
      }

      __XPCServerIMDChatRecordAddHandle_IPCAction(v932, v933, v934, v935, v931, v932);
      v19 = 115;
      break;
    case 116:
      v353 = xpc_dictionary_get_int64(a3, "chatRowID");
      v354 = xpc_dictionary_get_int64(a3, "handleID");
      if (a4)
      {
        v356 = a5;
      }

      else
      {
        v356 = 0;
      }

      if (a4)
      {
        v357 = a6;
      }

      else
      {
        v357 = 0;
      }

      __XPCServerIMDChatRecordRemoveHandle_IPCAction(v354, v355, v356, v357, v353, v354);
      v19 = 116;
      break;
    case 117:
      v1243 = xpc_dictionary_get_int64(a3, "identifier");
      v1232 = xpc_dictionary_get_int64(a3, "style");
      v1224 = xpc_dictionary_get_int64(a3, "state");
      v1217 = IMGetXPCStringFromDictionary();
      v1211 = IMGetXPCDataFromDictionary();
      v1205 = IMGetXPCStringFromDictionary();
      v1199 = IMGetXPCStringFromDictionary();
      v1193 = IMGetXPCStringFromDictionary();
      v1187 = IMGetXPCStringFromDictionary();
      v1181 = IMGetXPCStringFromDictionary();
      v1175 = IMGetXPCStringFromDictionary();
      v1169 = IMGetXPCStringFromDictionary();
      v1163 = IMGetXPCStringFromDictionary();
      v1157 = xpc_dictionary_get_int64(a3, "isArchived");
      v1151 = xpc_dictionary_get_int64(a3, "isFiltered");
      v1145 = xpc_dictionary_get_int64(a3, "isBlackholed");
      v1139 = xpc_dictionary_get_int64(a3, "hasHadSuccessfulQuery");
      v1133 = IMGetXPCStringFromDictionary();
      v1127 = IMGetXPCStringFromDictionary();
      v1123 = xpc_dictionary_get_int64(a3, "ckSyncState");
      v1119 = IMGetXPCStringFromDictionary();
      v1115 = xpc_dictionary_get_int64(a3, "lastReadMessageTimeStamp");
      v1111 = IMGetXPCStringFromDictionary();
      v1107 = IMGetXPCStringFromDictionary();
      v162 = xpc_dictionary_get_int64(a3, "syndicationType");
      v163 = xpc_dictionary_get_int64(a3, "syndicationDate");
      v164 = xpc_dictionary_get_int64(a3, "isRecovered");
      v165 = xpc_dictionary_get_int64(a3, "isDeletingIncomingMessages");
      if (a4)
      {
        v167 = a5;
      }

      else
      {
        v167 = 0;
      }

      if (a4)
      {
        v168 = a6;
      }

      else
      {
        v168 = 0;
      }

      *(&v1042 + 1) = v164;
      *(&v1040 + 1) = v162;
      *&v1042 = v163;
      *&v1040 = v1145;
      *(&v1031 + 1) = v1151;
      *&v1031 = v1157;
      *(&v1027 + 1) = v1169;
      *&v1027 = v1175;
      *(&v1024 + 1) = v1181;
      *&v1024 = v1187;
      *(&v1021 + 1) = v1193;
      *&v1021 = v1199;
      *(&v1015 + 1) = v1205;
      *&v1015 = v1211;
      __XPCServerIMDChatRecordBulkUpdate_IPCAction(v165, v166, v167, v168, v1243, v1232, v1224, v1217, v1015, v1021, v1024, v1027, v1163, v1031, v1139, v1133, v1127, v1123, v1119, v1115, v1111, v1107, v1040, v1042, v165);
      v19 = 117;
      break;
    case 118:
      if (a4)
      {
        v599 = a5;
      }

      else
      {
        v599 = 0;
      }

      if (a4)
      {
        v600 = a6;
      }

      else
      {
        v600 = 0;
      }

      __XPCServerIMDChatRecordCopyAllChats_IPCAction(v14, v15, v599, v600);
      v19 = 118;
      break;
    case 119:
      v547 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v549 = a5;
      }

      else
      {
        v549 = 0;
      }

      if (a4)
      {
        v550 = a6;
      }

      else
      {
        v550 = 0;
      }

      __XPCServerIMDChatRecordCopyAllActiveChatsWithLimit_IPCAction(v547, v548, v549, v550, v547);
      v19 = 119;
      break;
    case 120:
      v209 = xpc_dictionary_get_int64(a3, "request");
      v210 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v212 = a5;
      }

      else
      {
        v212 = 0;
      }

      if (a4)
      {
        v213 = a6;
      }

      else
      {
        v213 = 0;
      }

      __XPCServerIMDChatRecordCopyAllActiveChatsProgressivelyWithLimit_IPCAction(v210, v211, v212, v213, v209, v210);
      v19 = 120;
      break;
    case 121:
      v290 = xpc_dictionary_get_int64(a3, "knownSenderLimit");
      v291 = xpc_dictionary_get_int64(a3, "otherFilterLimit");
      if (a4)
      {
        v293 = a5;
      }

      else
      {
        v293 = 0;
      }

      if (a4)
      {
        v294 = a6;
      }

      else
      {
        v294 = 0;
      }

      __XPCServerIMDChatRecordCopyAllUnreadChatsAndRecentChatsWithLimit_IPCAction(v291, v292, v293, v294, v290, v291);
      v19 = 121;
      break;
    case 122:
      v140 = IMGetXPCStringFromDictionary();
      v141 = IMGetXPCBoolFromDictionary();
      if (a4)
      {
        v143 = a5;
      }

      else
      {
        v143 = 0;
      }

      if (a4)
      {
        v144 = a6;
      }

      else
      {
        v144 = 0;
      }

      __XPCServerIMDChatRecordCopyChatForGUID_IPCAction(v141, v142, v143, v144, v140, v141);
      v19 = 122;
      break;
    case 123:
      v601 = xpc_dictionary_get_int64(a3, "messageID");
      if (a4)
      {
        v603 = a5;
      }

      else
      {
        v603 = 0;
      }

      if (a4)
      {
        v604 = a6;
      }

      else
      {
        v604 = 0;
      }

      __XPCServerIMDChatRecordCopyChatForMessageID_IPCAction(v601, v602, v603, v604, v601);
      v19 = 123;
      break;
    case 124:
      v786 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v788 = a5;
      }

      else
      {
        v788 = 0;
      }

      if (a4)
      {
        v789 = a6;
      }

      else
      {
        v789 = 0;
      }

      __XPCServerIMDChatRecordCopyChatForMessageGUID_IPCAction(v786, v787, v788, v789, v786);
      v19 = 124;
      break;
    case 125:
      v327 = IMGetXPCStringFromDictionary();
      v328 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v330 = a5;
      }

      else
      {
        v330 = 0;
      }

      if (a4)
      {
        v331 = a6;
      }

      else
      {
        v331 = 0;
      }

      __XPCServerIMDChatRecordCopyChatsWithHandleOnService_IPCAction(v328, v329, v330, v331, v327, v328);
      v19 = 125;
      break;
    case 126:
      v582 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v584 = a5;
      }

      else
      {
        v584 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordCopyChatsWithHandlesOnServiceWithDisplayNameGroupIDStyle_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v582, v583, a2, a3, v584, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordCopyChatsWithHandlesOnServiceWithDisplayNameGroupIDStyle_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v582, v583, a2, a3, v584, 0);
      }

      v19 = 126;
      break;
    case 127:
      v675 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v677 = a5;
      }

      else
      {
        v677 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordCopyChatsWithAtLeastHandlesOnServiceWithStyle_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v675, v676, a2, a3, v677, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordCopyChatsWithAtLeastHandlesOnServiceWithStyle_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v675, v676, a2, a3, v677, 0);
      }

      v19 = 127;
      break;
    case 128:
      v244 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v246 = a5;
      }

      else
      {
        v246 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordCopyChatsFilteredUsingPredicate_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v244, v245, a2, a3, v246, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordCopyChatsFilteredUsingPredicate_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v244, v245, a2, a3, v246, 0);
      }

      v19 = 128;
      break;
    case 129:
      v837 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v839 = a5;
      }

      else
      {
        v839 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordCopySortedChatsFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v837, v838, a2, a3, v839, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordCopySortedChatsFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v837, v838, a2, a3, v839, 0);
      }

      v19 = 129;
      break;
    case 130:
      v304 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v306 = a5;
      }

      else
      {
        v306 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordCopyChatsSortedByLastMessageDateAndFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v304, v305, a2, a3, v306, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordCopyChatsSortedByLastMessageDateAndFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v304, v305, a2, a3, v306, 0);
      }

      v19 = 130;
      break;
    case 131:
      v849 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v851 = a5;
      }

      else
      {
        v851 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordCopyChatsWithIdentifier_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v849, v850, a2, a3, v851, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordCopyChatsWithIdentifier_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v849, v850, a2, a3, v851, 0);
      }

      v19 = 131;
      break;
    case 132:
      v476 = IMGetXPCStringFromDictionary();
      v477 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v479 = a5;
      }

      else
      {
        v479 = 0;
      }

      if (a4)
      {
        v480 = a6;
      }

      else
      {
        v480 = 0;
      }

      __XPCServerIMDChatRecordCopyChatsWithIdentifierOnService_IPCAction(v477, v478, v479, v480, v476, v477);
      v19 = 132;
      break;
    case 133:
      v877 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v879 = a5;
      }

      else
      {
        v879 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordCopyChatsWithPinningIdentifier_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v877, v878, a2, a3, v879, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordCopyChatsWithPinningIdentifier_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v877, v878, a2, a3, v879, 0);
      }

      v19 = 133;
      break;
    case 134:
      v157 = IMGetXPCStringFromDictionary();
      v158 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v160 = a5;
      }

      else
      {
        v160 = 0;
      }

      if (a4)
      {
        v161 = a6;
      }

      else
      {
        v161 = 0;
      }

      __XPCServerIMDChatRecordCopyChatsWithRoomnameOnService_IPCAction(v158, v159, v160, v161, v157, v158);
      v19 = 134;
      break;
    case 135:
      v818 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v820 = a5;
      }

      else
      {
        v820 = 0;
      }

      if (a4)
      {
        v821 = a6;
      }

      else
      {
        v821 = 0;
      }

      __XPCServerIMDChatRecordCopyChatsWithGroupID_IPCAction(v818, v819, v820, v821, v818);
      v19 = 135;
      break;
    case 136:
      v908 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v910 = a5;
      }

      else
      {
        v910 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordCopyDuplicateGroupChatRecords_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v908, v909, a2, a3, v910, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordCopyDuplicateGroupChatRecords_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v908, v909, a2, a3, v910, 0);
      }

      v19 = 136;
      break;
    case 137:
      v852 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v854 = a5;
      }

      else
      {
        v854 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordCopyGroupPhotoPaths_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v852, v853, a2, a3, v854, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordCopyGroupPhotoPaths_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v852, v853, a2, a3, v854, 0);
      }

      v19 = 137;
      break;
    case 138:
      v188 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v190 = a5;
      }

      else
      {
        v190 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordResolveInconsistentGUID_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v188, v189, a2, a3, v190, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordResolveInconsistentGUID_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v188, v189, a2, a3, v190, 0);
      }

      v19 = 138;
      break;
    case 139:
      v321 = IMGetXPCStringFromDictionary();
      v322 = IMGetXPCStringFromDictionary();
      v323 = IMGetXPCBoolFromDictionary();
      if (a4)
      {
        v325 = a5;
      }

      else
      {
        v325 = 0;
      }

      if (a4)
      {
        v326 = a6;
      }

      else
      {
        v326 = 0;
      }

      __XPCServerIMDChatRecordCopyNewestChatForGroupIDOnService_IPCAction(v323, v324, v325, v326, v321, v322, v323);
      v19 = 139;
      break;
    case 140:
      v257 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v259 = a5;
      }

      else
      {
        v259 = 0;
      }

      if (a4)
      {
        v260 = a6;
      }

      else
      {
        v260 = 0;
      }

      __XPCServerIMDChatRecordDeleteChatForGUID_IPCAction(v257, v258, v259, v260, v257);
      v19 = 140;
      break;
    case 141:
      v191 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v193 = a5;
      }

      else
      {
        v193 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordMoveMessagesToRecoverableMessage_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v191, v192, a2, a3, v193, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordMoveMessagesToRecoverableMessage_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v191, v192, a2, a3, v193, 0);
      }

      v19 = 141;
      break;
    case 142:
      v905 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v907 = a5;
      }

      else
      {
        v907 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordRecoverMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v905, v906, a2, a3, v907, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordRecoverMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v905, v906, a2, a3, v907, 0);
      }

      v19 = 142;
      break;
    case 143:
      v233 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v235 = a5;
      }

      else
      {
        v235 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordPermanentlyDeleteRecoverableMessagesInChatsWithGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v233, v234, a2, a3, v235, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordPermanentlyDeleteRecoverableMessagesInChatsWithGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v233, v234, a2, a3, v235, 0);
      }

      v19 = 143;
      break;
    case 144:
      v669 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v671 = a5;
      }

      else
      {
        v671 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordLoadRecoverableMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v669, v670, a2, a3, v671, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordLoadRecoverableMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v669, v670, a2, a3, v671, 0);
      }

      v19 = 144;
      break;
    case 145:
      v295 = IMGetXPCStringFromDictionary();
      v296 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v298 = a5;
      }

      else
      {
        v298 = 0;
      }

      if (a4)
      {
        v299 = a6;
      }

      else
      {
        v299 = 0;
      }

      __XPCServerIMDChatRecordAssociateMessageWithGUIDToChatWithGUIDIfNeeded_IPCAction(v296, v297, v298, v299, v295, v296);
      v19 = 145;
      break;
    case 146:
      v443 = IMGetXPCStringFromDictionary();
      v444 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v446 = a5;
      }

      else
      {
        v446 = 0;
      }

      if (a4)
      {
        v447 = a6;
      }

      else
      {
        v447 = 0;
      }

      __XPCServerIMDChatRecordDisassociateMessageWithGUIDFromChatWithGUIDIfNeeded_IPCAction(v444, v445, v446, v447, v443, v444);
      v19 = 146;
      break;
    case 147:
      if (a4)
      {
        v828 = a5;
      }

      else
      {
        v828 = 0;
      }

      if (a4)
      {
        v829 = a6;
      }

      else
      {
        v829 = 0;
      }

      __XPCServerIMDChatRecordCopyChatGUIDsWithUnplayedAudioMessages_IPCAction(v14, v15, v828, v829);
      v19 = 147;
      break;
    case 148:
      v194 = IMGetXPCStringFromDictionary();
      v195 = xpc_dictionary_get_int64(a3, "isFiltered");
      if (a4)
      {
        v197 = a5;
      }

      else
      {
        v197 = 0;
      }

      if (a4)
      {
        v198 = a6;
      }

      else
      {
        v198 = 0;
      }

      __XPCServerIMDChatRecordSetIsFiltered_IPCAction(v195, v196, v197, v198, v194, v195);
      v19 = 148;
      break;
    case 149:
      if (a4)
      {
        v363 = a5;
      }

      else
      {
        v363 = 0;
      }

      if (a4)
      {
        v364 = a6;
      }

      else
      {
        v364 = 0;
      }

      __XPCServerIMDChatRecordDeleteEmptyChats_IPCAction(v14, v15, v363, v364);
      v19 = 149;
      break;
    case 150:
      v280 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v282 = a5;
      }

      else
      {
        v282 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v280, v281, a2, a3, v282, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v280, v281, a2, a3, v282, 0);
      }

      goto LABEL_1304;
    case 151:
      v629 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v631 = a5;
      }

      else
      {
        v631 = 0;
      }

      if (a4)
      {
        v632 = a6;
      }

      else
      {
        v632 = 0;
      }

      __XPCServerIMDMessageRecordCopyLastReadMessageForChatIdentifier_IPCAction(v629, v630, v631, v632, v629);
      v19 = 151;
      break;
    case 152:
      v383 = IMGetXPCStringFromDictionary();
      v384 = IMGetXPCArrayFromDictionary();
      v385 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v387 = a5;
      }

      else
      {
        v387 = 0;
      }

      if (a4)
      {
        v388 = a6;
      }

      else
      {
        v388 = 0;
      }

      __XPCServerIMDChatRecordRepairDuplicateChats_IPCAction(v385, v386, v387, v388, v384, v383, v385);
      v19 = 152;
      break;
    case 153:
      v252 = IMGetXPCStringFromDictionary();
      v253 = xpc_dictionary_get_int64(a3, "days");
      if (a4)
      {
        v255 = a5;
      }

      else
      {
        v255 = 0;
      }

      if (a4)
      {
        v256 = a6;
      }

      else
      {
        v256 = 0;
      }

      __XPCServerIMDChatRecordSplitDatabaseByDays_IPCAction(v253, v254, v255, v256, v253, v252);
      v19 = 153;
      break;
    case 154:
      v199 = IMGetXPCStringFromDictionary();
      v200 = xpc_dictionary_get_int64(a3, "message_count");
      if (a4)
      {
        v202 = a5;
      }

      else
      {
        v202 = 0;
      }

      if (a4)
      {
        v203 = a6;
      }

      else
      {
        v203 = 0;
      }

      __XPCServerIMDChatRecordSplitDatabaseByRecentCount_IPCAction(v200, v201, v202, v203, v200, v199);
      v19 = 154;
      break;
    case 155:
      v451 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v453 = a5;
      }

      else
      {
        v453 = 0;
      }

      if (a4)
      {
        v454 = a6;
      }

      else
      {
        v454 = 0;
      }

      __XPCServerIMDSwitchDatabase_IPCAction(v451, v452, v453, v454, v451);
      v19 = 155;
      break;
    case 156:
      if (a4)
      {
        v266 = a5;
      }

      else
      {
        v266 = 0;
      }

      if (a4)
      {
        v267 = a6;
      }

      else
      {
        v267 = 0;
      }

      __XPCServerIMDChatRecordCopyAllNamedChats_IPCAction(v14, v15, v266, v267);
      v19 = 156;
      break;
    case 157:
      v872 = IMGetXPCStringFromDictionary();
      v873 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v875 = a5;
      }

      else
      {
        v875 = 0;
      }

      if (a4)
      {
        v876 = a6;
      }

      else
      {
        v876 = 0;
      }

      __XPCServerIMDMessageRecordCopyArrayOfAssociatedMessagesForMessageGUIDFromSender_IPCAction(v873, v874, v875, v876, v872, v873);
      v19 = 157;
      break;
    case 158:
      v315 = IMGetXPCStringFromDictionary();
      v316 = IMGetXPCStringFromDictionary();
      v317 = xpc_dictionary_get_int64(a3, "version");
      if (a4)
      {
        v319 = a5;
      }

      else
      {
        v319 = 0;
      }

      if (a4)
      {
        v320 = a6;
      }

      else
      {
        v320 = 0;
      }

      __XPCServerIMDDowngradeDatabase_IPCAction(v317, v318, v319, v320, v315, v316, v317);
      v19 = 158;
      break;
    case 159:
      v624 = xpc_dictionary_get_int64(a3, "limit");
      v625 = xpc_dictionary_get_int64(a3, "filter");
      if (a4)
      {
        v627 = a5;
      }

      else
      {
        v627 = 0;
      }

      if (a4)
      {
        v628 = a6;
      }

      else
      {
        v628 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesToUploadToCloudKit_IPCAction(v625, v626, v627, v628, v624, v625);
      v19 = 159;
      break;
    case 160:
      v415 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v417 = a5;
      }

      else
      {
        v417 = 0;
      }

      if (a4)
      {
        v418 = a6;
      }

      else
      {
        v418 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesPendingUpdateT1ToCloudKit_IPCAction(v415, v416, v417, v418, v415);
      v19 = 160;
      break;
    case 161:
      v286 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v288 = a5;
      }

      else
      {
        v288 = 0;
      }

      if (a4)
      {
        v289 = a6;
      }

      else
      {
        v289 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesPendingUpdateT2ToCloudKit_IPCAction(v286, v287, v288, v289, v286);
      v19 = 161;
      break;
    case 162:
      v719 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v721 = a5;
      }

      else
      {
        v721 = 0;
      }

      if (a4)
      {
        v722 = a6;
      }

      else
      {
        v722 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesPendingUpdateT3ToCloudKit_IPCAction(v719, v720, v721, v722, v719);
      v19 = 162;
      break;
    case 163:
      if (a4)
      {
        v843 = a5;
      }

      else
      {
        v843 = 0;
      }

      if (a4)
      {
        v844 = a6;
      }

      else
      {
        v844 = 0;
      }

      __XPCServerIMDMessageRecordMarkAllMessagesAsNeedingCloudKitSync_IPCAction(v14, v15, v843, v844);
      v19 = 163;
      break;
    case 164:
      v526 = xpc_dictionary_get_int64(a3, "days");
      if (a4)
      {
        v528 = a5;
      }

      else
      {
        v528 = 0;
      }

      if (a4)
      {
        v529 = a6;
      }

      else
      {
        v529 = 0;
      }

      __XPCServerIMDAttachmentRecordEstimateSpaceTakenByAttachmentsOlderThanDays_IPCAction(v526, v527, v528, v529, v526);
      v19 = 164;
      break;
    case 165:
      v822 = xpc_dictionary_get_int64(a3, "options");
      if (a4)
      {
        v824 = a5;
      }

      else
      {
        v824 = 0;
      }

      if (a4)
      {
        v825 = a6;
      }

      else
      {
        v825 = 0;
      }

      __XPCServerIMDAttachmentRecordFindLargestConversations_IPCAction(v822, v823, v824, v825, v822);
      v19 = 165;
      break;
    case 166:
      v790 = xpc_dictionary_get_int64(a3, "options");
      v791 = xpc_dictionary_get_int64(a3, "limit");
      v792 = xpc_dictionary_get_int64(a3, "offset");
      if (a4)
      {
        v793 = a5;
      }

      else
      {
        v793 = 0;
      }

      if (a4)
      {
        v794 = a6;
      }

      else
      {
        v794 = 0;
      }

      __XPCServerIMDAttachmentRecordFindLargestAttachmentGUIDsWithLimitAndOffset_IPCAction(v792, a3, v793, v794, v790, v791, v792);
      v19 = 166;
      break;
    case 167:
      v276 = xpc_dictionary_get_int64(a3, "options");
      if (a4)
      {
        v278 = a5;
      }

      else
      {
        v278 = 0;
      }

      if (a4)
      {
        v279 = a6;
      }

      else
      {
        v279 = 0;
      }

      __XPCServerIMDAttachmentRecordSpaceTakenByAttachmentClass_IPCAction(v276, v277, v278, v279, v276);
      v19 = 167;
      break;
    case 168:
      v751 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v753 = a5;
      }

      else
      {
        v753 = 0;
      }

      if (a4)
      {
        v754 = a6;
      }

      else
      {
        v754 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesToDeleteFromCloudKit_IPCAction(v751, v752, v753, v754, v751);
      v19 = 168;
      break;
    case 169:
      v434 = IMGetXPCStringFromDictionary();
      v435 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v437 = a5;
      }

      else
      {
        v437 = 0;
      }

      if (a4)
      {
        v438 = a6;
      }

      else
      {
        v438 = 0;
      }

      __XPCServerIMDMessageRecordAddGUIDAndCKRecordIDToDeleteFromCloudKit_IPCAction(v435, v436, v437, v438, v434, v435);
      v19 = 169;
      break;
    case 170:
      if (a4)
      {
        v712 = a5;
      }

      else
      {
        v712 = 0;
      }

      if (a4)
      {
        v713 = a6;
      }

      else
      {
        v713 = 0;
      }

      __XPCServerIMDAddIncompatibleGroupPhotoChangedMessagesToDeleteFromCloudKit_IPCAction(v14, v15, v712, v713);
      v19 = 170;
      break;
    case 171:
      if (a4)
      {
        v706 = a5;
      }

      else
      {
        v706 = 0;
      }

      if (a4)
      {
        v707 = a6;
      }

      else
      {
        v707 = 0;
      }

      __XPCServerIMDMessageRecordMarkDeletedTombStonedMessages_IPCAction(v14, v15, v706, v707);
      v19 = 171;
      break;
    case 172:
      v833 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v835 = a5;
      }

      else
      {
        v835 = 0;
      }

      if (a4)
      {
        v836 = a6;
      }

      else
      {
        v836 = 0;
      }

      __XPCServerIMDMessageRecordDeleteTombStonedMessagesWithRecordIDs_IPCAction(v833, v834, v835, v836, v833);
      v19 = 172;
      break;
    case 173:
      v799 = IMGetXPCStringFromDictionary();
      v800 = IMGetXPCStringFromDictionary();
      v801 = xpc_dictionary_get_int64(a3, "timeStamp");
      if (a4)
      {
        v803 = a5;
      }

      else
      {
        v803 = 0;
      }

      if (a4)
      {
        v804 = a6;
      }

      else
      {
        v804 = 0;
      }

      __XPCServerInsertIntoDeletedChatsTable_IPCAction(v801, v802, v803, v804, v799, v800, v801);
      v19 = 173;
      break;
    case 174:
      v268 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v270 = a5;
      }

      else
      {
        v270 = 0;
      }

      if (a4)
      {
        v271 = a6;
      }

      else
      {
        v271 = 0;
      }

      __XPCServerIMDChatRecordCopyChatRecordIDsAndGUIDsToDeleteFromCloudKitWithLimit_IPCAction(v268, v269, v270, v271, v268);
      break;
    case 175:
      if (a4)
      {
        v717 = a5;
      }

      else
      {
        v717 = 0;
      }

      if (a4)
      {
        v718 = a6;
      }

      else
      {
        v718 = 0;
      }

      __XPCServerIMDChatClearPendingDeleteChatsTable_IPCAction(v14, v15, v717, v718);
      break;
    case 176:
      v736 = IMGetXPCArrayFromDictionary();
      v737 = xpc_dictionary_get_int64(a3, "fromError");
      v738 = xpc_dictionary_get_int64(a3, "toError");
      if (a4)
      {
        v740 = a5;
      }

      else
      {
        v740 = 0;
      }

      if (a4)
      {
        v741 = a6;
      }

      else
      {
        v741 = 0;
      }

      __XPCServerIMDChatRemapMessagesWithErrorCodeToErrorCode_IPCAction(v738, v739, v740, v741, v736, v737, v738);
      break;
    case 177:
      if (a4)
      {
        v365 = a5;
      }

      else
      {
        v365 = 0;
      }

      if (a4)
      {
        v366 = a6;
      }

      else
      {
        v366 = 0;
      }

      __XPCServerIMDMessageRecordCalculateLocalCloudKitStatistics_IPCAction(v14, v15, v365, v366);
      break;
    case 178:
      v698 = xpc_dictionary_get_int64(a3, "rowID");
      if (a4)
      {
        v700 = a5;
      }

      else
      {
        v700 = 0;
      }

      if (a4)
      {
        v701 = a6;
      }

      else
      {
        v701 = 0;
      }

      __XPCServerIMDMessageRecordMarkMessageWithROWIDAsSyncedWithCloudKit_IPCAction(v698, v699, v700, v701, v698);
      break;
    case 179:
      v642 = xpc_dictionary_get_int64(a3, "rowID");
      if (a4)
      {
        v644 = a5;
      }

      else
      {
        v644 = 0;
      }

      if (a4)
      {
        v645 = a6;
      }

      else
      {
        v645 = 0;
      }

      __XPCServerIMDMessageRecordMarkMessageWithROWIDAsIgnoreButNeedingSyncWithCloudKit_IPCAction(v642, v643, v644, v645, v642);
      break;
    case 180:
      v367 = IMGetXPCDictionaryFromDictionary();
      if (a4)
      {
        v369 = a5;
      }

      else
      {
        v369 = 0;
      }

      if (a4)
      {
        v370 = a6;
      }

      else
      {
        v370 = 0;
      }

      __XPCServerIMDMessageRecordSetCloudKitSyncCounts_IPCAction(v367, v368, v369, v370, v367);
      break;
    case 181:
      v783 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v785 = a5;
      }

      else
      {
        v785 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v783, v784, a2, a3, v785, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v783, v784, a2, a3, v785, 0);
      }

LABEL_1304:
      v19 = 150;
      break;
    case 182:
      v830 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v832 = a5;
      }

      else
      {
        v832 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordsUpdateSyncedSyndicationRangesForGUIDsToStatus_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v830, v831, a2, a3, v832, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordsUpdateSyncedSyndicationRangesForGUIDsToStatus_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v830, v831, a2, a3, v832, 0);
      }

      v19 = 182;
      break;
    case 183:
      if (a4)
      {
        v334 = a5;
      }

      else
      {
        v334 = 0;
      }

      if (a4)
      {
        v335 = a6;
      }

      else
      {
        v335 = 0;
      }

      __XPCServerIMDAttachmentRecordMarkFailedAttachmentsAsNeedingSync_IPCAction(v14, v15, v334, v335);
      v19 = 183;
      break;
    case 184:
      if (xpc_dictionary_get_value(a3, "afterRow"))
      {
        v371 = xpc_dictionary_get_int64(a3, "afterRow");
        v374 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v372, v371, v373);
      }

      else
      {
        v374 = 0;
      }

      v1000 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v1002 = a5;
      }

      else
      {
        v1002 = 0;
      }

      if (a4)
      {
        v1003 = a6;
      }

      else
      {
        v1003 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyAttachmentsToDeleteFromCloudKit(v1000, v1001, v1002, v1003, v374, v1000);
      v19 = 184;
      break;
    case 185:
      if (xpc_dictionary_get_value(a3, "afterRow"))
      {
        v615 = xpc_dictionary_get_int64(a3, "afterRow");
        v618 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v616, v615, v617);
      }

      else
      {
        v618 = 0;
      }

      v1004 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v1006 = a5;
      }

      else
      {
        v1006 = 0;
      }

      if (a4)
      {
        v1007 = a6;
      }

      else
      {
        v1007 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyAttachmentGUIDs(v1004, v1005, v1006, v1007, v618, v1004);
      v19 = 185;
      break;
    case 186:
      v795 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v797 = a5;
      }

      else
      {
        v797 = 0;
      }

      if (a4)
      {
        v798 = a6;
      }

      else
      {
        v798 = 0;
      }

      __XPCServerIMDAttachmentRecordDeleteTombStonedAttachmentsWithRecordIDs_IPCAction(v795, v796, v797, v798, v795);
      v19 = 186;
      break;
    case 187:
      if (a4)
      {
        v633 = a5;
      }

      else
      {
        v633 = 0;
      }

      if (a4)
      {
        v634 = a6;
      }

      else
      {
        v634 = 0;
      }

      __XPCServerIMDAttachmentRecordDeleteTombStonedAttachmentsToDeleteFromCloudKit_IPCAction(v14, v15, v633, v634);
      v19 = 187;
      break;
    case 188:
      v605 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v607 = a5;
      }

      else
      {
        v607 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDAttachmentRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v605, v606, a2, a3, v607, a6);
      }

      else
      {
        objc_msgSend_handleIMDAttachmentRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v605, v606, a2, a3, v607, 0);
      }

      v19 = 188;
      break;
    case 189:
      v425 = IMOSLoggingEnabled();
      if (v425)
      {
        v427 = OSLogHandleForIMFoundationCategory();
        v425 = os_log_type_enabled(v427, OS_LOG_TYPE_INFO);
        if (v425)
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v427, OS_LOG_TYPE_INFO, "Clean database requested", buf, 2u);
        }
      }

      if (a4)
      {
        v428 = a5;
      }

      else
      {
        v428 = 0;
      }

      if (a4)
      {
        v429 = a6;
      }

      else
      {
        v429 = 0;
      }

      __XPCServerIMDDatabaseClean_IPCAction(v425, v426, v428, v429);
      v19 = 189;
      break;
    case 190:
      if (a4)
      {
        v332 = a5;
      }

      else
      {
        v332 = 0;
      }

      if (a4)
      {
        v333 = a6;
      }

      else
      {
        v333 = 0;
      }

      __XPCServerIMDMessageRecordMarkAllUnsuccessFullSyncMessagesAsNeedingSync_IPCAction(v14, v15, v332, v333);
      v19 = 190;
      break;
    case 191:
      v702 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v704 = a5;
      }

      else
      {
        v704 = 0;
      }

      if (a4)
      {
        v705 = a6;
      }

      else
      {
        v705 = 0;
      }

      __XPCServerIMDKVValueForKey_IPCAction(v702, v703, v704, v705, v702);
      goto LABEL_1175;
    case 192:
      v596 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v598 = a5;
      }

      else
      {
        v598 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDKVIntegerForKey_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v596, v597, a2, a3, v598, a6);
      }

      else
      {
        objc_msgSend_handleIMDKVIntegerForKey_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v596, v597, a2, a3, v598, 0);
      }

      v19 = 192;
      break;
    case 193:
      v508 = IMGetXPCStringFromDictionary();
      v509 = IMGetXPCDataFromDictionary();
      if (a4)
      {
        v511 = a5;
      }

      else
      {
        v511 = 0;
      }

      if (a4)
      {
        v512 = a6;
      }

      else
      {
        v512 = 0;
      }

      __XPCServerIMDKVPersistValueForKey_IPCAction(v509, v510, v511, v512, v508, v509);
LABEL_1175:
      v19 = 191;
      break;
    case 194:
      v379 = IMGetXPCDictionaryFromDictionary();
      if (a4)
      {
        v381 = a5;
      }

      else
      {
        v381 = 0;
      }

      if (a4)
      {
        v382 = a6;
      }

      else
      {
        v382 = 0;
      }

      __XPCServerIMDNotificationsPostNotifications_asyncIPCAction(v379, v380, v381, v382, v379);
      v19 = 194;
      break;
    case 195:
      v392 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v394 = a5;
      }

      else
      {
        v394 = 0;
      }

      if (a4)
      {
        v395 = a6;
      }

      else
      {
        v395 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesWithReplyToGUIDs(v392, v393, v394, v395, v392);
      v19 = 195;
      break;
    case 196:
      v635 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v637 = a5;
      }

      else
      {
        v637 = 0;
      }

      if (a4)
      {
        v638 = a6;
      }

      else
      {
        v638 = 0;
      }

      __XPCServerIMDNotificationsRetractNotificationsForReadMessages_asyncIPCAction(v635, v636, v637, v638, v635);
      v19 = 196;
      break;
    case 197:
      v396 = IMGetXPCDictionaryFromDictionary();
      if (a4)
      {
        v398 = a5;
      }

      else
      {
        v398 = 0;
      }

      if (a4)
      {
        v399 = a6;
      }

      else
      {
        v399 = 0;
      }

      __XPCServerIMDNotificationsRetractNotificationsFromFirstUnlock_IPCAction(v396, v397, v398, v399, v396);
      v19 = 197;
      break;
    case 198:
      v344 = IMGetXPCArrayFromDictionary();
      v345 = IMGetXPCDictionaryFromDictionary();
      if (a4)
      {
        v347 = a5;
      }

      else
      {
        v347 = 0;
      }

      if (a4)
      {
        v348 = a6;
      }

      else
      {
        v348 = 0;
      }

      __XPCServerIMDNotificationsPostUrgentNotificationsForMessages_IPCAction(v345, v346, v347, v348, v344, v345);
      goto LABEL_1143;
    case 199:
      v682 = IMGetXPCArrayFromDictionary();
      v683 = IMGetXPCDictionaryFromDictionary();
      if (a4)
      {
        v685 = a5;
      }

      else
      {
        v685 = 0;
      }

      if (a4)
      {
        v686 = a6;
      }

      else
      {
        v686 = 0;
      }

      __XPCServerIMDNotificationsUpdatePostedNotificationsForMessages_IPCAction(v683, v684, v685, v686, v682, v683);
      goto LABEL_1143;
    case 200:
      v484 = IMGetXPCStringFromDictionary();
      v485 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v487 = a5;
      }

      else
      {
        v487 = 0;
      }

      if (a4)
      {
        v488 = a6;
      }

      else
      {
        v488 = 0;
      }

      __XPCServerIMDNotificationsPostFirstUnlockMessage_IPCAction(v485, v486, v487, v488, v484, v485);
LABEL_1143:
      v19 = 198;
      break;
    case 202:
      v591 = xpc_dictionary_get_int64(a3, "chatRowID");
      v592 = xpc_dictionary_get_int64(a3, "isBlackholed");
      if (a4)
      {
        v594 = a5;
      }

      else
      {
        v594 = 0;
      }

      if (a4)
      {
        v595 = a6;
      }

      else
      {
        v595 = 0;
      }

      __XPCServerIMDChatRecordSetIsBlackholed_IPCAction(v592, v593, v594, v595, v591, v592);
      v19 = 202;
      break;
    case 203:
      v522 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v524 = a5;
      }

      else
      {
        v524 = 0;
      }

      if (a4)
      {
        v525 = a6;
      }

      else
      {
        v525 = 0;
      }

      __XPCServerIMDMessageRecordMarkMessageGUIDUnread_IPCAction(v522, v523, v524, v525, v522);
      v19 = 203;
      break;
    case 204:
      v585 = IMGetXPCStringFromDictionary();
      v586 = IMGetXPCStringFromDictionary();
      v587 = xpc_dictionary_get_BOOL(a3, "fromMe");
      if (a4)
      {
        v589 = a5;
      }

      else
      {
        v589 = 0;
      }

      if (a4)
      {
        v590 = a6;
      }

      else
      {
        v590 = 0;
      }

      __XPCServerIMDMessageRecordMarkMessagesAsUnreadWithChatGUIDUpToGUIDFromMe_IPCAction(v587, v588, v589, v590, v585, v586, v587);
      v19 = 204;
      break;
    case 205:
      v678 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v680 = a5;
      }

      else
      {
        v680 = 0;
      }

      if (a4)
      {
        v681 = a6;
      }

      else
      {
        v681 = 0;
      }

      __XPCServerIMDChatRecordPurgeAttachments_IPCAction(v678, v679, v680, v681, v678);
      v19 = 205;
      break;
    case 206:
      v672 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v674 = a5;
      }

      else
      {
        v674 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordUpdateAttachmentSyndicationRanges_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v672, v673, a2, a3, v674, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordUpdateAttachmentSyndicationRanges_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v672, v673, a2, a3, v674, 0);
      }

      v19 = 206;
      break;
    case 207:
      v389 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v391 = a5;
      }

      else
      {
        v391 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordMoveToRecoverableMessage_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v389, v390, a2, a3, v391, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordMoveToRecoverableMessage_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v389, v390, a2, a3, v391, 0);
      }

      v19 = 207;
      break;
    case 208:
      v714 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v716 = a5;
      }

      else
      {
        v716 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordDeleteRecoverableMessagesOlderThanDays_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v714, v715, a2, a3, v716, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordDeleteRecoverableMessagesOlderThanDays_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v714, v715, a2, a3, v716, 0);
      }

      v19 = 208;
      break;
    case 210:
      v466 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v468 = a5;
      }

      else
      {
        v468 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordLoadRecoverableMessagesPendingCloudKitUpdate_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v466, v467, a2, a3, v468, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordLoadRecoverableMessagesPendingCloudKitUpdate_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v466, v467, a2, a3, v468, 0);
      }

      v19 = 210;
      break;
    case 211:
      v469 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v471 = a5;
      }

      else
      {
        v471 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordUpdateRecoverableMessageSyncState_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v469, v470, a2, a3, v471, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordUpdateRecoverableMessageSyncState_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v469, v470, a2, a3, v471, 0);
      }

      v19 = 211;
      break;
    case 212:
      v666 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v668 = a5;
      }

      else
      {
        v668 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordStoreRecoverableMessagePartBody_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v666, v667, a2, a3, v668, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordStoreRecoverableMessagePartBody_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v666, v667, a2, a3, v668, 0);
      }

      v19 = 212;
      break;
    case 213:
      v639 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v641 = a5;
      }

      else
      {
        v641 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordLoadRecoverableMessagesPendingCloudKitDelete_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v639, v640, a2, a3, v641, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordLoadRecoverableMessagesPendingCloudKitDelete_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v639, v640, a2, a3, v641, 0);
      }

      v19 = 213;
      break;
    case 214:
      v561 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v563 = a5;
      }

      else
      {
        v563 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordClearUnsyncedRemovedRecoverableMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v561, v562, a2, a3, v563, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordClearUnsyncedRemovedRecoverableMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v561, v562, a2, a3, v563, 0);
      }

      v19 = 214;
      break;
    case 215:
      v554 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v556 = a5;
      }

      else
      {
        v556 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDNotificationsPostSharePlayNotification_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v554, v555, a2, a3, v556, a6);
      }

      else
      {
        objc_msgSend_handleIMDNotificationsPostSharePlayNotification_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v554, v555, a2, a3, v556, 0);
      }

      v19 = 215;
      break;
    case 216:
      v663 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v665 = a5;
      }

      else
      {
        v665 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordUpdateMessagesSyndicationRanges_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v663, v664, a2, a3, v665, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordUpdateMessagesSyndicationRanges_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v663, v664, a2, a3, v665, 0);
      }

      v19 = 216;
      break;
    case 217:
      v570 = xpc_dictionary_get_int64(a3, "chatRowID");
      v571 = xpc_dictionary_get_int64(a3, "isRecovered");
      if (a4)
      {
        v573 = a5;
      }

      else
      {
        v573 = 0;
      }

      if (a4)
      {
        v574 = a6;
      }

      else
      {
        v574 = 0;
      }

      __XPCServerIMDChatRecordSetIsRecovered_IPCAction(v571, v572, v573, v574, v570, v571);
      v19 = 217;
      break;
    case 218:
      v530 = xpc_dictionary_get_int64(a3, "chatRowID");
      v531 = xpc_dictionary_get_int64(a3, "isDeletingIncomingMessages");
      if (a4)
      {
        v533 = a5;
      }

      else
      {
        v533 = 0;
      }

      if (a4)
      {
        v534 = a6;
      }

      else
      {
        v534 = 0;
      }

      __XPCServerIMDChatRecordSetIsDeletingIncomingMessages_IPCAction(v531, v532, v533, v534, v530, v531);
      v19 = 218;
      break;
    case 219:
      v405 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v407 = a5;
      }

      else
      {
        v407 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordDeleteJunkMessagesOlderThanDays_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v405, v406, a2, a3, v407, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordDeleteJunkMessagesOlderThanDays_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v405, v406, a2, a3, v407, 0);
      }

      v19 = 219;
      break;
    case 220:
      v501 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v503 = a5;
      }

      else
      {
        v503 = 0;
      }

      if (a4)
      {
        v504 = a6;
      }

      else
      {
        v504 = 0;
      }

      __XPCServerIMDMessageRecordRetractNotificationsForChatGuids_asyncIPCAction(v501, v502, v503, v504, v501);
      v19 = 220;
      break;
    case 221:
      v412 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v414 = a5;
      }

      else
      {
        v414 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordUpdateRecoverableMessageSyncStateForMessageGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v412, v413, a2, a3, v414, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordUpdateRecoverableMessageSyncStateForMessageGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v412, v413, a2, a3, v414, 0);
      }

      v19 = 221;
      break;
    case 222:
      v564 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v566 = a5;
      }

      else
      {
        v566 = 0;
      }

      if (a4)
      {
        objc_msgSend_notifyFirstUnlockComplete_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v564, v565, a2, a3, v566, a6);
      }

      else
      {
        objc_msgSend_notifyFirstUnlockComplete_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v564, v565, a2, a3, v566, 0);
      }

      v19 = 222;
      break;
    case 223:
      v455 = IMGetXPCStringFromDictionary();
      v456 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v458 = a5;
      }

      else
      {
        v458 = 0;
      }

      if (a4)
      {
        v459 = a6;
      }

      else
      {
        v459 = 0;
      }

      __XPCServerIMDUpdateWallpaperForCNContact_IPCAction(v456, v457, v458, v459, v455, v456);
      v19 = 223;
      break;
    case 224:
      v430 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v432 = a5;
      }

      else
      {
        v432 = 0;
      }

      if (a4)
      {
        v433 = a6;
      }

      else
      {
        v433 = 0;
      }

      __XPCServerIMDCNGivenNameAndBirthdayForHandleID_IPCAction(v430, v431, v432, v433, v430);
      v19 = 224;
      break;
    case 225:
      v575 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v577 = a5;
      }

      else
      {
        v577 = 0;
      }

      if (a4)
      {
        v578 = a6;
      }

      else
      {
        v578 = 0;
      }

      __XPCServerIMDCNFullNameAndOrganizationNameForHandleID_IPCAction(v575, v576, v577, v578, v575);
      v19 = 225;
      break;
    case 226:
      v460 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v462 = a5;
      }

      else
      {
        v462 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDCountOfRecordType_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v460, v461, a2, a3, v462, a6);
      }

      else
      {
        objc_msgSend_handleIMDCountOfRecordType_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v460, v461, a2, a3, v462, 0);
      }

      v19 = 226;
      break;
    case 227:
      v579 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v581 = a5;
      }

      else
      {
        v581 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDHandleRecordCopyHandlesFilteredUsingPredicate_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v579, v580, a2, a3, v581, a6);
      }

      else
      {
        objc_msgSend_handleIMDHandleRecordCopyHandlesFilteredUsingPredicate_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v579, v580, a2, a3, v581, 0);
      }

      v19 = 227;
      break;
    case 228:
      v513 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v515 = a5;
      }

      else
      {
        v515 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDHandleRecordCopySortedHandlesFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v513, v514, a2, a3, v515, a6);
      }

      else
      {
        objc_msgSend_handleIMDHandleRecordCopySortedHandlesFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v513, v514, a2, a3, v515, 0);
      }

      v19 = 228;
      break;
    case 229:
      v567 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v569 = a5;
      }

      else
      {
        v569 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordMarkGUIDsAsRead_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v567, v568, a2, a3, v569, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordMarkGUIDsAsRead_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v567, v568, a2, a3, v569, 0);
      }

      v19 = 229;
      break;
    case 230:
      v557 = xpc_dictionary_get_int64(a3, "identifier");
      if (a4)
      {
        v559 = a5;
      }

      else
      {
        v559 = 0;
      }

      if (a4)
      {
        v560 = a6;
      }

      else
      {
        v560 = 0;
      }

      __XPCServerIMDChatRecordCopyChatRecordForIdentifier_IPCAction(v557, v558, v559, v560, v557);
      v19 = 230;
      break;
    case 231:
      v448 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v450 = a5;
      }

      else
      {
        v450 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDFetchContactsForIdentifiers_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v448, v449, a2, a3, v450, a6);
      }

      else
      {
        objc_msgSend_handleIMDFetchContactsForIdentifiers_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v448, v449, a2, a3, v450, 0);
      }

      v19 = 231;
      break;
    case 232:
      v505 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v507 = a5;
      }

      else
      {
        v507 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDDeleteDatabase_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v505, v506, a2, a3, v507, a6);
      }

      else
      {
        objc_msgSend_handleIMDDeleteDatabase_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v505, v506, a2, a3, v507, 0);
      }

      v19 = 232;
      break;
    case 233:
      v481 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v483 = a5;
      }

      else
      {
        v483 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDVerifyDatabase_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v481, v482, a2, a3, v483, a6);
      }

      else
      {
        objc_msgSend_handleIMDVerifyDatabase_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v481, v482, a2, a3, v483, 0);
      }

      v19 = 233;
      break;
    case 234:
      v516 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v518 = a5;
      }

      else
      {
        v518 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordCalculateTotalMessageCount_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v516, v517, a2, a3, v518, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordCalculateTotalMessageCount_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v516, v517, a2, a3, v518, 0);
      }

      v19 = 234;
      break;
    case 235:
      v519 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16, v17);
      if (a4)
      {
        v521 = a5;
      }

      else
      {
        v521 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordCalculateMessagesWithoutChatsCount_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v519, v520, a2, a3, v521, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordCalculateMessagesWithoutChatsCount_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v519, v520, a2, a3, v521, 0);
      }

      v19 = 235;
      break;
    default:
      break;
  }

  if (IMOSLoggingEnabled())
  {
    v1012 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1012, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      v1256 = a1;
      v1257 = 1024;
      v1258 = pid;
      v1259 = 1024;
      v1260 = a4;
      _os_log_impl(&dword_1B7AD5000, v1012, OS_LOG_TYPE_INFO, "Handled message %ld from (%d) wantsReply %{BOOL}d", buf, 0x18u);
    }
  }

  os_activity_scope_leave(&state);
  return v19;
}

void __XPCServerIMDMessageRecordMarkDeletedTombStonedMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7ADEEDC;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v4, v5, v6);
}

BOOL sub_1B7ADEAB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a1 != 0;
  v6 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], a2, a3, a4);
  if (objc_msgSend_isInternalInstall(v6, v7, v8, v9))
  {
    if (qword_1EDBE5BE8 != -1)
    {
      sub_1B7AF27A8();
    }

    if (byte_1EBA53BA0 == 1)
    {
      v10 = IMDatabaseLogHandle();
      v5 = 0;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = @"NO";
        if (a1)
        {
          v11 = @"YES";
        }

        v13 = 138412290;
        v14 = v11;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_DEFAULT, "Database client wants response: %@, but DisablePriorityInversionFixIMDP is YES", &v13, 0xCu);
        return 0;
      }
    }
  }

  return v5;
}

void IMDPersistencePerformBlock(dispatch_block_t block, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!block)
  {
    return;
  }

  v4 = a2;
  if (byte_1EDBE7948 == 1)
  {
    v8 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
    IMDSharedThreadedRecordStore();
    CSDBPerformBlock();
LABEL_13:

    return;
  }

  v5 = objc_msgSend_copy(block, a2, a3, a4);
  if (qword_1EBA54330[0] != -1)
  {
    sub_1B7CFDA3C();
  }

  v6 = qword_1EBA54328;
  if (qword_1EBA54328)
  {
    if (!v4)
    {
      v8 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v5);
      dispatch_async(v6, v8);
      goto LABEL_13;
    }

    v7 = qword_1EBA54328;

    dispatch_sync(v7, v5);
  }
}

uint64_t IMDSharedThreadedRecordStore()
{
  v16 = *MEMORY[0x1E69E9840];
  if (!IMDIsRunningInDatabaseServerProcess())
  {
    return 0;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  block = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = sub_1B7B6A70C;
  v9 = &unk_1E7CB6EA8;
  v10 = &v11;
  if (qword_1EDBE6308 != -1)
  {
    dispatch_once(&qword_1EDBE6308, &block);
  }

  if (!qword_1EDBE6300)
  {
    v0 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      if (*(v12 + 24))
      {
        v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v1, @"CSDBCreateThreadedRecordStore should not be nil. Did attempt to init: %@", v2, @"YES", block, v7, v8, v9, v10, v11);
      }

      else
      {
        v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v1, @"CSDBCreateThreadedRecordStore should not be nil. Did attempt to init: %@", v2, @"NO", block, v7, v8, v9, v10, v11);
      }

      sub_1B7CF54FC(v3, buf, v0);
    }
  }

  v4 = qword_1EDBE6300;
  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t sub_1B7ADEEDC(uint64_t a1)
{
  IMDMessageRecordClearDeleteTombStones();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

BOOL IMDPersistenceCheckDatabaseThread(uint64_t a1)
{
  if (byte_1EDBE7948 != 1)
  {
    return 1;
  }

  IMDSharedThreadedRecordStore();
  if (CSDBThreadedRecordStoreOwnsCurrentThread())
  {
    return 1;
  }

  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "**************************************************************************", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "****** Database access off the database thread, please file a radar ******", v7, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "**************************************************************************", v6, 2u);
    }
  }

  if (qword_1EBA54318 != -1)
  {
    sub_1B7CFD98C();
  }

  v5 = qword_1EBA54320;
  result = os_log_type_enabled(qword_1EBA54320, OS_LOG_TYPE_FAULT);
  if (result)
  {
    sub_1B7CFD9F8(v5);
    return 0;
  }

  return result;
}

uint64_t _IMDSMSRecordStoreInitializeSharedThreadedRecordStore()
{
  result = IMDIsRunningInDatabaseServerProcess();
  if (result)
  {
    v4 = IMDSMSRecordStoreUseProtectedDatabase(result, v1, v2, v3);
    v5 = IMDSharedThreadedRecordStore();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B6BB64;
    v10[3] = &unk_1E7CBA308;
    v11 = v4;
    v9 = objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v6, v7, v8);
    return _IMDInitializeMessagesRecordStoreWithVersion(v5, v10, v4, v9);
  }

  return result;
}

uint64_t IMDSMSRecordStoreUseProtectedDatabase(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], a2, a3, a4);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v4, v5, v6, v7);

  return isUnderFirstDataProtectionLock ^ 1u;
}

uint64_t _IMDInitializeMessagesRecordStoreWithVersion(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  _IMDAllowLocalMigration();
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = sub_1B7B6BAE8;
  v52[3] = &unk_1E7CBA2E8;
  v52[4] = &v53;
  LODWORD(v50) = v5;
  CSDBThreadedRecordStoreEnsureDatabaseSetupWithProtection();
  if (*(v54 + 24) == 1)
  {
    v51 = 0;
    IMDCreateTriggers(&v51, 0);
    if (v51)
    {
      v6 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = IMDSharedThreadedRecordStore();
        v11 = objc_msgSend_localizedDescription(v51, v8, v9, v10, v50, v52);
        sub_1B7CF5B64(v7, v11, buf, v6);
      }
    }

    IMDSharedThreadedRecordStore();
    CSDBSqliteDatabaseFromThreadedRecordStoreRef();
    v12 = CSDBSqliteDatabaseConnectionForWriting();
    v16 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v13, v14, v15);
    if (objc_msgSend_isMissingMessagesEnabled(v16, v17, v18, v19))
    {
      v23 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v20, v21, v22);
      if (objc_msgSend_isInternalInstall(v23, v24, v25, v26))
      {
        if (objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v20, v21, v22) <= 19999)
        {
          objc_msgSend_migrateChatLookupIfNeededUsingConnection_(IMDLegacyRecordBridge, v20, v12, v22);
        }
      }
    }

    v27 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v20, v21, v22, v50);
    if (objc_msgSend_isInternalInstall(v27, v28, v29, v30) && objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v31, v32, v33) <= 19999)
    {
      objc_msgSend_migrateChatTableIfNeededUsingConnection_(IMDLegacyRecordBridge, v31, v12, v33);
    }

    objc_msgSend_registerChatTableVersionUsingConnection_(IMDLegacyRecordBridge, v31, v12, v33);
    v37 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v34, v35, v36);
    if ((objc_msgSend_isOneChatEnabled(v37, v38, v39, v40) & 1) == 0)
    {
      v41 = objc_autoreleasePoolPush();
      if (objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v42, v43, v44) <= 19999)
      {
        objc_msgSend_runMigrationTrial(IMDLegacyRecordBridge, v45, v46, v47);
      }

      objc_autoreleasePoolPop(v41);
    }

    v48 = *(v54 + 24);
  }

  else
  {
    v48 = 0;
  }

  _Block_object_dispose(&v53, 8);
  return v48 & 1;
}

void sub_1B7ADF454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7ADF510(int a1)
{
  if (!IMDSharedThreadedRecordStore())
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF523C(v2, v3, v4, v5);
    }
  }

  v6 = CSDBSqliteDatabaseFromThreadedRecordStoreRef();
  if (!v6 && a1)
  {
    CSDBPerformBlock();
    v6 = CSDBSqliteDatabaseFromThreadedRecordStoreRef();
  }

  if (!v6)
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF52EC(v7, v8, v9, v10);
    }
  }

  return v6;
}

void IMDSqlOperationInitWithCSDBDatabase(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *buf = xmmword_1E7CB80C0;
    *&buf[16] = *off_1E7CB80D0;
    *&buf[32] = 89;
    v4 = MEMORY[0x1E696AEC0];
    v5 = IMFileLocationTrimFileName();
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, &stru_1F2FA9728, v7);
    v11 = objc_msgSend_stringWithFormat_(v4, v9, @"Unexpected nil '%@' in %s at %s:%d. %@", v10, @"database", "IMDSqlOperation IMDSqlOperationInitWithCSDBDatabase(CSDBSqliteDatabase *)", v5, 89, v8);
    v12 = IMGetAssertionFailureHandler();
    if (v12)
    {
      v12(v11);
    }

    else
    {
      v16 = objc_msgSend_warning(MEMORY[0x1E69A6138], v13, v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  v20 = CSDBSqliteDatabaseConnectionForWriting();
  if (!v20)
  {
    v44 = 0;
    v21 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v17, v18, v19);
    v23 = objc_msgSend_attributesOfItemAtPath_error_(v21, v22, *a1, &v44);
    v26 = objc_msgSend_objectForKey_(v23, v24, *MEMORY[0x1E696A360], v25);
    v29 = objc_msgSend_objectForKey_(v23, v27, *MEMORY[0x1E696A328], v28);
    v32 = objc_msgSend_objectForKey_(v23, v30, *MEMORY[0x1E696A370], v31);
    v36 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v33, v34, v35);
    v45[0] = @"dbOwner";
    v45[1] = @"dbGroup";
    v46[0] = v26;
    v46[1] = v29;
    v45[2] = @"permission";
    v46[2] = v32;
    v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v37, v46, v45, 3);
    objc_msgSend_forceAutoBugCaptureWithSubType_errorPayload_type_context_metadata_(v36, v39, @"Connection error to database", 0, @"Database", @"CSDBSqliteConnection is nil, there's an issue accessing the DB file", v38);
    v40 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v43 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v41, @"CSDBSqliteDatabaseConnectionForWriting returned a nil CSDBSqliteConnection, owner: %@, group: %@, permission: %@", v42, v26, v29, v32);
      *buf = 136315906;
      *&buf[4] = "sqlConnection";
      *&buf[12] = 2080;
      *&buf[14] = "IMDSqlOperation IMDSqlOperationInitWithCSDBDatabase(CSDBSqliteDatabase *)";
      *&buf[22] = 1024;
      *&buf[24] = 100;
      *&buf[28] = 2112;
      *&buf[30] = v43;
      _os_log_error_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", buf, 0x26u);
    }
  }

  IMDSqlOperationInitWithCSDBConnection(v20, a1, a2);
}

void IMDSqlOperationInitWithCSDBConnection(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    goto LABEL_6;
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = IMFileLocationTrimFileName();
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, &stru_1F2FA9728, v9);
  v13 = objc_msgSend_stringWithFormat_(v6, v11, @"Unexpected nil '%@' in %s at %s:%d. %@", v12, @"db", "IMDSqlOperation IMDSqlOperationInitWithCSDBConnection(CSDBSqliteConnection *, CSDBSqliteDatabase *)", v7, 74, v10);
  v14 = IMGetAssertionFailureHandler();
  if (v14)
  {
    v14(v13);
    if (a1)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v18 = objc_msgSend_warning(MEMORY[0x1E69A6138], v15, v16, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEE318();
    if (a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
LABEL_6:
    if (a1)
    {
      goto LABEL_11;
    }
  }

LABEL_7:
  v19 = MEMORY[0x1E696AEC0];
  v20 = IMFileLocationTrimFileName();
  v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21, &stru_1F2FA9728, v22);
  v26 = objc_msgSend_stringWithFormat_(v19, v24, @"Unexpected nil '%@' in %s at %s:%d. %@", v25, @"connection", "IMDSqlOperation IMDSqlOperationInitWithCSDBConnection(CSDBSqliteConnection *, CSDBSqliteDatabase *)", v20, 75, v23);
  v27 = IMGetAssertionFailureHandler();
  if (v27)
  {
    v27(v26);
  }

  else
  {
    v31 = objc_msgSend_warning(MEMORY[0x1E69A6138], v28, v29, v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE318();
    }
  }

LABEL_11:
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = a2;
  *(a3 + 8) = a1;
  IMDSqlOperationWasInitialized(a3);
}

void IMDSqlOperationWasInitialized(void *result)
{
  if (!result || !result[1] || !*result)
  {
    v1 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE244(v1, v2, v3, v4);
    }
  }
}

void sub_1B7ADFAC0(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "IMDMessageRecordMarkAllMessagesAsNeedingCloudKitSync deleted pending sync table", v2, 2u);
    }
  }
}

BOOL IMDSqlOperationFinishQuery(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 168) && *(a1 + 32))
    {
        ;
      }
    }

    sub_1B7ADFD40(a1);
    return *(a1 + 168) == 0;
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF2480(v3, v4, v5, v6);
    }

    return 0;
  }
}

BOOL IMDSqlOperationHasRows(uint64_t a1)
{
  if (!a1)
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF25F8(v9, v10, v11, v12);
    }

    return 0;
  }

  if (*(a1 + 48) && *(a1 + 32))
  {
    goto LABEL_12;
  }

  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF253C(v2, v3, v4, v5);
  }

  if (*(a1 + 32))
  {
LABEL_12:
    if (!*(a1 + 72) || (v6 = *(a1 + 40), v6 == 100))
    {
      v6 = CSDBSqliteStepWithConnection();
      *(a1 + 40) = v6;
      ++*(a1 + 72);
      if ((v6 - 100) >= 2 && v6 != 0)
      {
        ErrorCode = IMDCreateCFErrorWithQueryErrorCode(v6, *(a1 + 56), *(a1 + 48));
        if (ErrorCode)
        {
          v14 = ErrorCode;
          IMDSqlOperationSetError(a1, ErrorCode);
          CFRelease(v14);
          return 0;
        }

        v6 = *(a1 + 40);
      }
    }

    return v6 == 100;
  }

  return 0;
}

sqlite3_stmt *sub_1B7ADFD40(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 48) = 0;
    if (!*(a1 + 168) && !*(a1 + 72))
    {
      v3 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF26B4(v3, v4, v5, v6);
      }
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    result = sqlite3_finalize(result);
    *(a1 + 32) = 0;
  }

  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return result;
}

void IMDSqlOperationInitWithSharedCSDBDatabase(uint64_t a1@<X8>)
{
  IMDEnsureSharedRecordStoreInitialized();
  v2 = IMDSharedSqliteDatabase();
  if (!v2)
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF290(v3, v4, v5, v6);
    }
  }

  IMDSqlOperationInitWithCSDBDatabase(v2, a1);
}

void IMDEnsureSharedRecordStoreInitialized()
{
  IMDPersistenceCheckDatabaseThread(0);
  if (IMDSharedThreadedRecordStore())
  {

    _IMDSMSRecordStoreInitializeSharedThreadedRecordStore();
  }

  else
  {
    v0 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF578C(v0, v1, v2, v3);
    }
  }
}

BOOL IMDSqlOperationExecuteQuery(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = IMFileLocationTrimFileName();
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, &stru_1F2FA9728, v10);
    v14 = objc_msgSend_stringWithFormat_(v7, v12, @"Unexpected nil '%@' in %s at %s:%d. %@", v13, @"query", "BOOL IMDSqlOperationExecuteQuery(IMDSqlOperation *, NSString *__strong, __strong IMDBlock)", v8, 386, v11);

    v15 = IMGetAssertionFailureHandler();
    if (v15)
    {
      v15(v14);
    }

    else
    {
      v19 = objc_msgSend_warning(MEMORY[0x1E69A6138], v16, v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }

    v20 = MEMORY[0x1E696AEC0];
    v21 = IMFileLocationTrimFileName();
    v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v22, &stru_1F2FA9728, v23);
    v27 = objc_msgSend_stringWithFormat_(v20, v25, @"Unexpected nil '%@' in %s at %s:%d. %@", v26, @"query", "BOOL IMDSqlOperationExecuteQuery(IMDSqlOperation *, NSString *__strong, __strong IMDBlock)", v21, 387, v24);

    v28 = IMGetAssertionFailureHandler();
    if (v28)
    {
      v28(v27);
    }

    else
    {
      v32 = objc_msgSend_warning(MEMORY[0x1E69A6138], v29, v30, v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  _IMDSqlOperationBeginQuery(a1, v5);
  if (v6)
  {
    v6[2](v6);
  }

  v33 = IMDSqlOperationFinishQuery(a1);

  return v33;
}

BOOL _IMDSqlOperationBeginQuery(void *a1, CFStringRef theString)
{
  if (a1)
  {
    if (theString)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF1E14(v8, v9, v10, v11);
    }

    if (!a1)
    {
      return 0;
    }

    goto LABEL_11;
  }

  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF1D58(v4, v5, v6, v7);
  }

  if (!theString)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (!a1)
  {
    return 0;
  }

LABEL_11:
  if (a1[4])
  {
    v12 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF1ED0(v12, v13, v14, v15);
    }
  }

  if (!a1[1])
  {
    v16 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF1F8C(v16, v17, v18, v19);
    }

    if (!a1[1])
    {
      return 0;
    }
  }

  if (a1[21])
  {
    v20 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF2048(a1, v20, v21, v22);
    }

    v23 = a1[21];
    if (v23)
    {
      CFRelease(v23);
      a1[21] = 0;
    }
  }

  v24 = a1[1];
  a1[7] = *(v24 + 8);
  a1[8] = 0;
  *(a1 + 10) = 100;
  *(a1 + 18) = 0;
  if (theString)
  {
    v25 = a1[6];
    if (v25 == theString)
    {
      goto LABEL_41;
    }

    if (v25)
    {
      v26 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF20D4(v26, v27, v28, v29);
      }

      v30 = a1[6];
      if (v30)
      {
        CFRelease(v30);
        a1[6] = 0;
      }
    }

    Length = CFStringGetLength(theString);
    v32 = CFStringGetCharacterAtIndex(theString, Length - 1) == 59 ? CFRetain(theString) : CFStringCreateWithFormat(0, 0, @"%@;", theString);
    a1[6] = v32;
    if (v32)
    {
      goto LABEL_41;
    }

    v34 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF2190(v34, v38, v39, v40);
    }
  }

  else
  {
    v34 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF224C(v34, v35, v36, v37);
    }
  }

LABEL_41:
  v41 = CSDBCreateUTF8StringFromCFString();
  ppStmt = 0;
  do
  {
    v42 = sqlite3_prepare_v2(*(v24 + 8), v41, -1, &ppStmt, 0);
  }

  while ((v42 - 5) < 2);
  v43 = v42;
  if (v41)
  {
    free(v41);
  }

  v44 = (v43 - 100) < 2 || v43 == 0;
  if (v44 || (ErrorCode = IMDCreateCFErrorWithQueryErrorCode(v43, a1[7], a1[6])) == 0)
  {
    v45 = ppStmt;
    a1[4] = ppStmt;
    if (!v45)
    {
      v46 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF2308(v46, v47, v48, v49);
      }
    }
  }

  else
  {
    v51 = ErrorCode;
    IMDSqlOperationSetError(a1, ErrorCode);
    CFRelease(v51);
  }

  return a1[21] == 0;
}

void __XPCServerIMDAttachmentRecordDeleteTombStonedAttachmentsToDeleteFromCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7AE0638;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v4, v5, v6);
}

uint64_t sub_1B7AE0448(int a1, int a2, sqlite3_stmt *pStmt, unint64_t *a4)
{
  if (a1 == 2)
  {
    v4 = *a4;
    if (*a4 >= 0x3BAA0C40)
    {
      v5 = sqlite3_expanded_sql(pStmt);
      v6 = objc_alloc(MEMORY[0x1E696AEC0]);
      v9 = objc_msgSend_initWithFormat_(v6, v7, @"%s", v8, v5);
      sqlite3_free(v5);
      if ((objc_msgSend_containsString_(v9, v10, @"EXPLAIN QUERY PLAN", v11) & 1) == 0)
      {
        sub_1B7B6AC34(v9, v4 / 0xF4240);
      }
    }
  }

  return 0;
}

BOOL IMDSqlOperationRelease(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1B7ADFD40(a1);
    v4 = *(a1 + 168);
    v5 = v4 == 0;
    if (v4)
    {
      IMDSqlOperationGetError(a1, a2);
    }

    if (*(a1 + 16))
    {
      v6 = *(a1 + 168);
      v7 = IMDatabaseLogHandle();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (v6)
      {
        if (v8)
        {
          sub_1B7CF2E0C(a1, v7, v9, v10);
        }

        IMDSqlOperationRevertTransaction(a1);
      }

      else
      {
        if (v8)
        {
          sub_1B7CF2E98(v7);
        }

        IMDSqlOperationCommitTransaction(a1);
      }

      v15 = *(a1 + 16);
      if (v15)
      {
        CFRelease(v15);
        *(a1 + 16) = 0;
      }
    }

    if (*(a1 + 8))
    {
      CSDBSqliteDatabaseReleaseSqliteConnection();
      *(a1 + 8) = 0;
    }

    v16 = *(a1 + 168);
    if (v16)
    {
      CFRelease(v16);
    }

    *(a1 + 144) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    v11 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF2EDC(v11, v12, v13, v14);
    }

    return 0;
  }

  return v5;
}

uint64_t sub_1B7AE0638(uint64_t a1)
{
  IMDAttachmentRecordClearDeleteTombStones();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1B7AE0688(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "IMDAttachmentRecordClearDeleteTombStones deleted pending sync table", v2, 2u);
    }
  }
}

id sub_1B7AE07C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend__legacyDatabaseClient(*(a1 + 32), a2, a3, a4);
  if (objc_opt_respondsToSelector())
  {
    v8 = v4;
  }

  else
  {
    v8 = objc_msgSend_synchronousDatabaseQueryProvider(IMDPersistenceService, v5, v6, v7);
  }

  v9 = v8;

  return v9;
}

uint64_t sub_1B7AE0928()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1B7AE0A6C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

void sub_1B7AE0AC0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, v10, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

void sub_1B7AE0AE0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1B7AE0B74(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

float *sub_1B7AE0BA4(float *result, _DWORD *a2, float a3)
{
  *result = a3;
  *a2 = 1;
  return result;
}

void sub_1B7AE0BB4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t IMDChatRecordCopyChatsSortedByLastMessageDateAndFilteredUsingPredicateWithLimitQuery(int a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"AND (%@)", a4, a3);
  }

  else
  {
    v6 = &stru_1F2FA9728;
  }

  if (a1)
  {
    v7 = @"ASC";
  }

  else
  {
    v7 = @"DESC";
  }

  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (a2)
  {
    return objc_msgSend_initWithFormat_(v8, v9, @"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat LEFT OUTER JOIN chat_message_join ON    chat_message_join.chat_id == chat.rowid    AND chat_message_join.message_date = (SELECT MAX(message_date) FROM chat_message_join WHERE chat_message_join.chat_id = chat.rowid) WHERE    chat.is_archived = 0 %@ GROUP BY    chat.rowid HAVING    chat_message_join.message_date < ? ORDER BY    chat_message_join.message_date %@ LIMIT    ?;", v10, v6, v7);
  }

  else
  {
    return objc_msgSend_initWithFormat_(v8, v9, @"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat LEFT OUTER JOIN chat_message_join ON    chat_message_join.chat_id == chat.rowid    AND chat_message_join.message_date = (SELECT MAX(message_date) FROM chat_message_join WHERE chat_message_join.chat_id = chat.rowid) WHERE    chat.is_archived = 0 %@ GROUP BY    chat.rowid ORDER BY    chat_message_join.message_date %@ LIMIT    ?;", v10, v6, v7);
  }
}

uint64_t _IMDPerformLockedStatementBlockWithQuery(uint64_t a1, uint64_t a2)
{
  if (!a2 && (v3 = IMDatabaseLogHandle(), os_log_type_enabled(v3, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CEEB08(v3, v4, v5, v6);
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEEBB0(v7, v8, v9, v10);
  }

LABEL_6:
  IMDEnsureSharedRecordStoreInitialized();
  IMDSharedThreadedRecordStore();
  return CSDBPerformLockedSectionForQueryForReading();
}

uint64_t sub_1B7AE0DCC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v7 = a1(0);
  sub_1B7C4BE44(a2, a3, a4);
  if (qword_1EDBE3F50 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDBE3AE0;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = off_1EDBE3AE8;

  os_unfair_lock_lock(v9 + 8);
  v10 = *&v9[6]._os_unfair_lock_opaque;
  if (*(v10 + 16))
  {
    v11 = sub_1B7AFEA28(v7);
    if (v12)
    {
      v13 = *&v9[4]._os_unfair_lock_opaque;
      if (*(v13 + 16))
      {
        v14 = (*(v10 + 56) + 16 * v11);
        v15 = *v14;
        v16 = v14[1];

        v17 = sub_1B7AE11D0(v15, v16);
        v19 = v18;

        if (v19)
        {
          v20 = *(*(v13 + 56) + 8 * v17);

LABEL_12:
          os_unfair_lock_unlock(v9 + 8);

          v27 = *(v20 + 16);

          return v27;
        }
      }
    }
  }

  v21 = sub_1B7CFE8A0();
  if (v21)
  {
    v22 = v21;
    v23 = sub_1B7CFE880();
    v25 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *&v9[6]._os_unfair_lock_opaque;
    *&v9[6]._os_unfair_lock_opaque = 0x8000000000000000;
    sub_1B7AE9C00(v23, v25, v7, isUniquelyReferenced_nonNull_native);
    *&v9[6]._os_unfair_lock_opaque = v30;
    v20 = sub_1B7AE9FE4(v22, &v9[4]._os_unfair_lock_opaque);

    goto LABEL_12;
  }

  sub_1B7CFF210();

  sub_1B7C107FC(&qword_1EBA524C8, &qword_1B7D0CAB0);
  v29 = sub_1B7CFEAB0();
  MEMORY[0x1B8CADCA0](v29);

  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ChatRecord(uint64_t a1)
{
  result = qword_1EDBE56F0;
  if (!qword_1EDBE56F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7AE10D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B7AE1118(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7AE1164(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B7AE11D0(uint64_t a1, uint64_t a2)
{
  sub_1B7CFF7C0();
  sub_1B7CFEB10();
  v4 = sub_1B7CFF800();

  return sub_1B7AE1248(a1, a2, v4);
}

unint64_t sub_1B7AE1248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B7CFF590())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id _IMDChatRecordCopyChatsFromRecords(void *a1)
{
  if (a1)
  {
    v3 = objc_alloc(MEMORY[0x1E695DF70]);
    v7 = objc_msgSend_count(a1, v4, v5, v6);
    v10 = objc_msgSend_initWithCapacity_(v3, v8, v7, v9);
    if (objc_msgSend_count(a1, v11, v12, v13))
    {
      v16 = 0;
      v17 = *MEMORY[0x1E695E480];
      do
      {
        objc_msgSend_objectAtIndex_(a1, v14, v16, v15);
        ID = CSDBRecordGetID();
        v19 = sub_1B7AEF890(v17, ID, 0);
        if (v19)
        {
          v23 = v19;
          objc_msgSend_addObject_(v10, v20, v19, v22);
          CFRelease(v23);
        }

        ++v16;
      }

      while (v16 < objc_msgSend_count(a1, v20, v21, v22));
    }

    return v10;
  }

  else
  {
    v25 = MEMORY[0x1E695DEC8];

    return objc_alloc_init(v25);
  }
}

void _IMDChatRecordCopyChatsToXPCArray(const __CFArray *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a1)
  {
    if (a2)
    {
      v7 = a5;
      v8 = a4;
      v9 = a3;
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v12 = Count;
        for (i = 0; i != v12; ++i)
        {
          v14 = objc_autoreleasePoolPush();
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v16 = xpc_dictionary_create(0, 0, 0);
          if (v16)
          {
            v17 = v16;
            _IMDChatRecordBulkCopyXPCDictionary(ValueAtIndex, v16, v9, v8, v7, a6);
            xpc_array_append_value(a2, v17);
            xpc_release(v17);
          }

          objc_autoreleasePoolPop(v14);
        }
      }
    }
  }
}

uint64_t sub_1B7AE14D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1B7AE1520(uint64_t a1, void (*a2)(id), uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69A8368]) initWithXPCObject_];
  if (a2)
  {
    v6 = v5;

    a2(v6);

    sub_1B7AE15D4(a2, a3);
  }

  else
  {
  }
}

uint64_t sub_1B7AE15D4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1B7AE15F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_object(a2, a2, a3, a4);
  (*(v5 + 16))(v5, v6);
  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1B7CF733C(a1, v7);
  }
}

id _IMDChatRecordCopyChatsFromXPCArray(void *a1)
{
  if (a1)
  {
    v3 = objc_alloc(MEMORY[0x1E695DF70]);
    count = xpc_array_get_count(a1);
    v7 = objc_msgSend_initWithCapacity_(v3, v5, count, v6);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7AF2A34;
    applier[3] = &unk_1E7CB8400;
    applier[4] = v7;
    xpc_array_apply(a1, applier);
    return v7;
  }

  else
  {
    v9 = MEMORY[0x1E695DEC8];

    return objc_alloc_init(v9);
  }
}

void sub_1B7AE188C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7AE18C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE18D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE18E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE18F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1914(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1954(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1964(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1984(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1994(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE19B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE19C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE19D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1A04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1A14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1A24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1A34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1A44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1A54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1A64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1A74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_1B7AE1A84(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1B7AE1AB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1AC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1AD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1AE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1AF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1B00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1B10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1B20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1B60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1B70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B7AE1D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL IMDRunSqlOperation(uint64_t a1)
{
  if (a1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    IMDSqlOperationInitWithSharedCSDBDatabase();
    (*(a1 + 16))(a1, &v7);
  }

  else
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CED878(v2, v3, v4, v5);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    IMDSqlOperationInitWithSharedCSDBDatabase();
  }

  return IMDSqlOperationRelease(&v7, 0);
}

BOOL _IMDSqlOperationRunQuery(void *a1, CFStringRef theString, uint64_t a3, uint64_t a4)
{
  if (!a1 && (v8 = IMDatabaseLogHandle(), os_log_type_enabled(v8, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CED568(v8, v9, v10, v11);
    if (theString)
    {
      goto LABEL_6;
    }
  }

  else if (theString)
  {
    goto LABEL_6;
  }

  v12 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CED618(v12, v13, v14, v15);
  }

LABEL_6:
  if (!a1)
  {
    return 0;
  }

  _IMDSqlOperationBeginQuery(a1, theString);
  v16 = a1[21];
  if (a3 && !v16)
  {
    (*(a3 + 16))(a3);
    v16 = a1[21];
  }

  if (a4 && !v16)
  {
    (*(a4 + 16))(a4);
  }

  IMDSqlOperationFinishQuery(a1);
  if (a1[21])
  {
    v17 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CED6C8(a1, v17, v18, v19);
    }
  }

  return a1[21] == 0;
}

BOOL sub_1B7AE1EF4(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7AE1F84;
  v3[3] = &unk_1E7CB7920;
  v3[4] = *(a1 + 32);
  v3[5] = a2;
  return _IMDSqlOperationRunQuery(a2, @"WITH recoverable_tables_union_all (chat_guid, message_id, delete_date) as( SELECT c.guid, crmj.message_id, crmj.delete_date  FROM chat_recoverable_message_join AS crmj  JOIN chat AS c  ON c.ROWID = crmj.chat_id   UNION ALL  SELECT c.guid, rmp.message_id, rmp.delete_date  FROM recoverable_message_part AS rmp  JOIN chat AS c  ON c.ROWID = rmp.chat_id) SELECT chat_guid, COUNT(message_id), SUM(m.is_read), MIN(delete_date), MAX(delete_date)  FROM recoverable_tables_union_all AS rtua  JOIN message as m  ON rtua.message_id = m.ROWID  WHERE m.item_type == 0 AND NOT (m.group_action_type IN (1,3) AND (m.ROWID IN (SELECT message_id FROM message_attachment_join)))  GROUP BY rtua.chat_guid;", &unk_1F2FA0C70, v3);
}

BOOL sub_1B7AE1F84(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v32 = MEMORY[0x1E69E9820];
    v30 = *MEMORY[0x1E69A78A0];
    v31 = *MEMORY[0x1E69A7898];
    v28 = *MEMORY[0x1E69A7890];
    v29 = *MEMORY[0x1E69A7888];
    do
    {
      v50 = 0;
      v51 = &v50;
      v52 = 0x3032000000;
      v53 = sub_1B7AE1A14;
      v54 = sub_1B7AE2520;
      v55 = 0;
      v46 = 0;
      v47 = &v46;
      v48 = 0x2020000000;
      v49 = 0;
      v42 = 0;
      v43 = &v42;
      v44 = 0x2020000000;
      v45 = 0;
      v38 = 0;
      v39 = &v38;
      v40 = 0x2020000000;
      v41 = 0;
      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v37 = 0;
      v3 = *(a1 + 40);
      v33[0] = v32;
      v33[1] = 3221225472;
      v33[2] = sub_1B7B7F180;
      v33[3] = &unk_1E7CBAE08;
      v33[4] = &v50;
      v33[5] = &v46;
      v33[6] = &v42;
      v33[7] = &v38;
      v33[8] = &v34;
      IMDSqlOperationIterateRow(v3, v33);
      if (objc_msgSend_length(v51[5], v4, v5, v6) && (v9 = v47[3]) != 0 && v39[3] && v35[3])
      {
        v10 = v43[3];
        v56[0] = v31;
        v11 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v7, v9, v8);
        v57[0] = v11;
        v56[1] = v30;
        v14 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v12, v9 - v10, v13);
        v57[1] = v14;
        v56[2] = v29;
        v17 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v15, v39[3], v16);
        v57[2] = v17;
        v56[3] = v28;
        v20 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v18, v35[3], v19);
        v57[3] = v20;
        v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, v57, v56, 4);

        objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 32) + 8) + 40), v23, v22, v51[5]);
      }

      else
      {
        v22 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v51[5];
          v25 = v47[3];
          v26 = v39[3];
          v27 = v35[3];
          *buf = 138413058;
          v59 = v24;
          v60 = 2048;
          v61 = v25;
          v62 = 2048;
          v63 = v26;
          v64 = 2048;
          v65 = v27;
          _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_DEFAULT, "Error in column values returned: %@|%llu|%llu|%llu", buf, 0x2Au);
        }
      }

      _Block_object_dispose(&v34, 8);
      _Block_object_dispose(&v38, 8);
      _Block_object_dispose(&v42, 8);
      _Block_object_dispose(&v46, 8);
      _Block_object_dispose(&v50, 8);

      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7AE2354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7AE23AC(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "recoverableMessagesMetadataDictionary");
  if (v3)
  {
    v4 = *(a1 + 32);
    v10 = v3;
    v5 = objc_opt_class();
    v7 = objc_msgSend__codableDictionaryCopiedFromXPCDictionary_objectClass_(v4, v6, v10, v5);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v3 = v10;
  }
}

uint64_t type metadata accessor for MessageRecord(uint64_t a1)
{
  result = qword_1EDBE5640;
  if (!qword_1EDBE5640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

CFArrayRef *sub_1B7AE267C(CFArrayRef *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a1)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = -1;
    if (a1[3])
    {
      v5 = *(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3, a4) + 80) + 176);
      ValueAtIndex = CFArrayGetValueAtIndex(v4[3], 4);
      v7 = ValueAtIndex;
      if (ValueAtIndex && v5 && *v5)
      {
        v7 = (*v5)(ValueAtIndex);
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = sub_1B7AEED40;
      v14 = &unk_1E7CB7920;
      v15 = &v17;
      v16 = a1;
      if (a2)
      {
        _IMDPerformBlock(&v11);
      }

      else
      {
        sub_1B7AEED40(&v11);
      }

      v7 = v18[3];
    }

    _Block_object_dispose(&v17, 8);
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v4 = IMDHandleRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], v7);
      *(v12 + 24) = v4;
    }

    else
    {
      v8 = v4[4];
      if (v8)
      {
        v4 = CFRetain(v8);
      }

      else
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = sub_1B7B38970;
        v10[3] = &unk_1E7CB6838;
        v10[4] = &v11;
        __syncXPCIMDMessageRecordCopyHandle_IPCAction(v10, v4[2]);
        v4 = *(v12 + 24);
      }
    }

    _Block_object_dispose(&v11, 8);
  }

  return v4;
}

void IMDMessageRecordBulkCopy(uint64_t a1, void *a2, void *a3, void *a4, uint64_t *a5, void *a6, void *a7, void *a8, void *a9, uint64_t *a10, uint64_t *a11, CFNumberRef *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, const void **a16, uint64_t *a17, void *a18, void *a19, _BYTE *a20, _BYTE *a21, uint64_t *a22, void *a23, uint64_t *a24, void *a25, void *a26, void *a27, void *a28, void *a29, uint64_t *a30, void *a31, void *a32, uint64_t *a33, uint64_t *a34, uint64_t *a35, void *a36, uint64_t *a37, const void **a38, uint64_t *a39, uint64_t a40, uint64_t *a41, uint64_t *a42, uint64_t *a43, void *a44, uint64_t *a45, uint64_t *a46, uint64_t *a47, uint64_t *a48, void *a49, void *a50, void *a51, uint64_t *a52, uint64_t *a53, uint64_t *a54, const void **a55, const void **a56, uint64_t *a57)
{
  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v171[0] = MEMORY[0x1E69E9820];
      v171[1] = 3221225472;
      v171[2] = sub_1B7B36300;
      v171[3] = &unk_1E7CB81A8;
      v171[4] = a1;
      v171[5] = a3;
      v171[6] = a6;
      v171[7] = a7;
      v171[8] = a8;
      v171[9] = a9;
      v171[10] = a4;
      v171[11] = a18;
      v171[12] = a19;
      v171[13] = a5;
      v171[14] = a10;
      v171[15] = a16;
      v171[16] = a20;
      v171[17] = a21;
      v171[18] = a2;
      v171[19] = a23;
      v171[20] = a25;
      v171[21] = a26;
      v171[22] = a27;
      v171[23] = a28;
      v171[24] = a29;
      v171[25] = a31;
      v171[26] = a32;
      v171[27] = a49;
      v171[28] = a50;
      v171[29] = a51;
      v171[30] = a53;
      v171[31] = a12;
      v171[32] = a11;
      v171[33] = a14;
      v171[34] = a15;
      v171[35] = a17;
      v171[36] = a13;
      v171[37] = a22;
      v171[38] = a24;
      v171[39] = a30;
      v171[40] = a33;
      v171[41] = a34;
      v171[42] = a35;
      v171[43] = a36;
      v171[44] = a37;
      v171[45] = a38;
      v171[46] = a39;
      v171[47] = a41;
      v171[48] = a42;
      v171[49] = a43;
      v171[50] = a44;
      v171[51] = a45;
      v171[52] = a46;
      v171[53] = a47;
      v171[54] = a48;
      v171[55] = a52;
      v171[56] = a54;
      v171[57] = a55;
      v171[58] = a56;
      v171[59] = a57;
      _IMDPerformBlock(v171);
    }

    else
    {
      v65 = *(a1 + 24);
      if (v65)
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v65, 18);
        v161 = CFArrayGetValueAtIndex(*(a1 + 24), 19);
        v160 = CFArrayGetValueAtIndex(*(a1 + 24), 20);
        v159 = CFArrayGetValueAtIndex(*(a1 + 24), 21);
        v158 = CFArrayGetValueAtIndex(*(a1 + 24), 22);
        v157 = CFArrayGetValueAtIndex(*(a1 + 24), 23);
        v156 = CFArrayGetValueAtIndex(*(a1 + 24), 24);
        v155 = CFArrayGetValueAtIndex(*(a1 + 24), 25);
        v154 = CFArrayGetValueAtIndex(*(a1 + 24), 26);
        v153 = CFArrayGetValueAtIndex(*(a1 + 24), 27);
        v152 = CFArrayGetValueAtIndex(*(a1 + 24), 28);
        v67 = CFArrayGetValueAtIndex(*(a1 + 24), 35);
        v149 = CFArrayGetValueAtIndex(*(a1 + 24), 29);
        v146 = CFArrayGetValueAtIndex(*(a1 + 24), 30);
        v143 = CFArrayGetValueAtIndex(*(a1 + 24), 31);
        v141 = CFArrayGetValueAtIndex(*(a1 + 24), 17);
        v139 = CFArrayGetValueAtIndex(*(a1 + 24), 72);
        v137 = CFArrayGetValueAtIndex(*(a1 + 24), 73);
        v151 = CFArrayGetValueAtIndex(*(a1 + 24), 37);
        v150 = CFArrayGetValueAtIndex(*(a1 + 24), 38);
        v148 = CFArrayGetValueAtIndex(*(a1 + 24), 46);
        v145 = CFArrayGetValueAtIndex(*(a1 + 24), 63);
        v142 = CFArrayGetValueAtIndex(*(a1 + 24), 66);
        v140 = CFArrayGetValueAtIndex(*(a1 + 24), 67);
        v138 = CFArrayGetValueAtIndex(*(a1 + 24), 77);
        v136 = CFArrayGetValueAtIndex(*(a1 + 24), 79);
        v135 = CFArrayGetValueAtIndex(*(a1 + 24), 80);
        v134 = CFArrayGetValueAtIndex(*(a1 + 24), 81);
        v147 = CFArrayGetValueAtIndex(*(a1 + 24), 83);
        v144 = CFArrayGetValueAtIndex(*(a1 + 24), 86);
        v132 = CFArrayGetValueAtIndex(*(a1 + 24), 90);
        v133 = CFArrayGetValueAtIndex(*(a1 + 24), 87);
        v68 = CFArrayGetValueAtIndex(*(a1 + 24), 91);
        if (ValueAtIndex)
        {
          valuePtr |= 1uLL;
        }

        if (v161)
        {
          valuePtr |= 2uLL;
        }

        if (v160)
        {
          valuePtr |= 4uLL;
        }

        if (v159)
        {
          valuePtr |= 8uLL;
        }

        if (v158)
        {
          valuePtr |= 0x20uLL;
        }

        if (v157)
        {
          valuePtr |= 0x40uLL;
        }

        if (v156)
        {
          valuePtr |= 0x800uLL;
        }

        if (v155)
        {
          valuePtr |= 0x2000uLL;
        }

        if (v154)
        {
          valuePtr |= 0x4000uLL;
        }

        if (v153)
        {
          valuePtr |= 0x8000uLL;
        }

        if (v152)
        {
          valuePtr |= 0x10000uLL;
        }

        if (v149)
        {
          valuePtr |= 0x20000uLL;
        }

        if (v146)
        {
          valuePtr |= 0x40000uLL;
        }

        if (v143)
        {
          valuePtr |= 0x80000uLL;
        }

        if (v141)
        {
          valuePtr |= 0x1000uLL;
        }

        if (v139)
        {
          valuePtr |= 0x400000000uLL;
        }

        if (v137)
        {
          valuePtr |= 0x800000000uLL;
        }

        if (v67)
        {
          valuePtr |= 0x100000uLL;
        }

        if (v151)
        {
          valuePtr |= 0x200000uLL;
        }

        if (v150)
        {
          valuePtr |= 0x400000uLL;
        }

        if (v148)
        {
          valuePtr |= 0x1000000uLL;
        }

        if (v145)
        {
          valuePtr |= 0x4000000uLL;
        }

        if (v142)
        {
          valuePtr |= 0x8000000uLL;
        }

        if (v140)
        {
          valuePtr |= 0x10000000uLL;
        }

        if (v138)
        {
          valuePtr |= 0x1000000000uLL;
        }

        if (v136)
        {
          valuePtr |= 0x200000000uLL;
        }

        if (v135)
        {
          valuePtr |= 0x8000000000uLL;
        }

        if (v134)
        {
          valuePtr |= 0x4000000000uLL;
        }

        if (v132)
        {
          valuePtr |= 0x80000000000uLL;
        }

        if (v147)
        {
          valuePtr |= 0x2000000000uLL;
        }

        if (v144)
        {
          valuePtr |= 0x20000000000uLL;
        }

        if (v133)
        {
          valuePtr |= 0x40000000000uLL;
        }

        if (v68)
        {
          valuePtr |= 0x100000000000uLL;
        }

        if (CFArrayGetValueAtIndex(*(a1 + 24), 49) == 1)
        {
          valuePtr |= 0x2000000uLL;
        }

        if (a12)
        {
          *a12 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
        }

        if (a3)
        {
          *a3 = *(a1 + 16);
        }

        if (a6)
        {
          v69 = CFArrayGetValueAtIndex(*(a1 + 24), 14);
          if (v69)
          {
            CFNumberGetValue(v69, kCFNumberSInt64Type, a6);
          }
        }

        if (a7)
        {
          v70 = CFArrayGetValueAtIndex(*(a1 + 24), 15);
          if (v70)
          {
            CFNumberGetValue(v70, kCFNumberSInt64Type, a7);
          }
        }

        if (a8)
        {
          v71 = CFArrayGetValueAtIndex(*(a1 + 24), 16);
          if (v71)
          {
            CFNumberGetValue(v71, kCFNumberSInt64Type, a8);
          }
        }

        if (a9)
        {
          v72 = CFArrayGetValueAtIndex(*(a1 + 24), 39);
          if (v72)
          {
            CFNumberGetValue(v72, kCFNumberSInt64Type, a9);
          }
        }

        if (a36)
        {
          v73 = CFArrayGetValueAtIndex(*(a1 + 24), 57);
          if (v73)
          {
            CFNumberGetValue(v73, kCFNumberSInt64Type, a36);
          }
        }

        if (a4)
        {
          *a4 = CFArrayGetValueAtIndex(*(a1 + 24), 2);
        }

        if (a18)
        {
          *a18 = CFArrayGetValueAtIndex(*(a1 + 24), 13);
        }

        if (a19)
        {
          *a19 = CFArrayGetValueAtIndex(*(a1 + 24), 9);
        }

        if (a2)
        {
          *a2 = CFArrayGetValueAtIndex(*(a1 + 24), 40);
        }

        if (a23)
        {
          *a23 = CFArrayGetValueAtIndex(*(a1 + 24), 41);
        }

        if (a25)
        {
          *a25 = CFArrayGetValueAtIndex(*(a1 + 24), 43);
        }

        if (a27)
        {
          *a27 = CFArrayGetValueAtIndex(*(a1 + 24), 45);
        }

        if (a26)
        {
          *a26 = CFArrayGetValueAtIndex(*(a1 + 24), 44);
        }

        if (a29)
        {
          *a29 = CFArrayGetValueAtIndex(*(a1 + 24), 48);
        }

        if (a28)
        {
          *a28 = CFArrayGetValueAtIndex(*(a1 + 24), 47);
        }

        if (a5)
        {
          v74 = CFArrayGetValueAtIndex(*(a1 + 24), 0);
          v75 = v74;
          if (v74)
          {
            CFRetain(v74);
          }

          *a5 = v75;
        }

        if (a10)
        {
          v76 = CFArrayGetValueAtIndex(*(a1 + 24), 1);
          v77 = v76;
          if (v76)
          {
            CFRetain(v76);
          }

          *a10 = v77;
        }

        if (a16)
        {
          *a16 = CFArrayGetValueAtIndex(*(a1 + 24), 4);
        }

        if (a20)
        {
          *a20 = CFArrayGetValueAtIndex(*(a1 + 24), 33);
        }

        if (a21)
        {
          *a21 = CFArrayGetValueAtIndex(*(a1 + 24), 35);
        }

        if (a11)
        {
          v78 = CFArrayGetValueAtIndex(*(a1 + 24), 7);
          v79 = v78;
          if (v78)
          {
            CFRetain(v78);
          }

          *a11 = v79;
        }

        if (a24)
        {
          v80 = CFArrayGetValueAtIndex(*(a1 + 24), 42);
          v81 = v80;
          if (v80)
          {
            CFRetain(v80);
          }

          *a24 = v81;
        }

        if (a14)
        {
          v82 = CFArrayGetValueAtIndex(*(a1 + 24), 11);
          v83 = v82;
          if (v82)
          {
            CFRetain(v82);
          }

          *a14 = v83;
        }

        if (a15)
        {
          v84 = CFArrayGetValueAtIndex(*(a1 + 24), 12);
          v85 = v84;
          if (v84)
          {
            CFRetain(v84);
          }

          *a15 = v85;
        }

        if (a17)
        {
          v86 = CFArrayGetValueAtIndex(*(a1 + 24), 5);
          v87 = v86;
          if (v86)
          {
            CFRetain(v86);
          }

          *a17 = v87;
        }

        if (a13)
        {
          v88 = CFArrayGetValueAtIndex(*(a1 + 24), 10);
          v89 = v88;
          if (v88)
          {
            CFRetain(v88);
          }

          *a13 = v89;
        }

        if (a22)
        {
          v90 = CFArrayGetValueAtIndex(*(a1 + 24), 34);
          v91 = v90;
          if (v90)
          {
            CFRetain(v90);
          }

          *a22 = v91;
        }

        if (a30)
        {
          v92 = CFArrayGetValueAtIndex(*(a1 + 24), 50);
          v93 = v92;
          if (v92)
          {
            CFRetain(v92);
          }

          *a30 = v93;
        }

        if (a31)
        {
          *a31 = CFArrayGetValueAtIndex(*(a1 + 24), 51);
        }

        if (a32)
        {
          v94 = CFArrayGetValueAtIndex(*(a1 + 24), 55);
          v95 = CFArrayGetValueAtIndex(*(a1 + 24), 56);
          *a32 = v94;
          a32[1] = v95;
        }

        if (a33)
        {
          v96 = CFArrayGetValueAtIndex(*(a1 + 24), 52);
          v97 = v96;
          if (v96)
          {
            CFRetain(v96);
          }

          *a33 = v97;
        }

        if (a34)
        {
          v98 = CFArrayGetValueAtIndex(*(a1 + 24), 53);
          v99 = v98;
          if (v98)
          {
            CFRetain(v98);
          }

          *a34 = v99;
        }

        if (a35)
        {
          v100 = CFArrayGetValueAtIndex(*(a1 + 24), 54);
          v101 = v100;
          if (v100)
          {
            CFRetain(v100);
          }

          *a35 = v101;
        }

        if (a37)
        {
          v102 = CFArrayGetValueAtIndex(*(a1 + 24), 58);
          v103 = v102;
          if (v102)
          {
            CFRetain(v102);
          }

          *a37 = v103;
        }

        if (a38)
        {
          *a38 = CFArrayGetValueAtIndex(*(a1 + 24), 59);
        }

        if (a39)
        {
          v104 = CFArrayGetValueAtIndex(*(a1 + 24), 60);
          v105 = v104;
          if (v104)
          {
            CFRetain(v104);
          }

          *a39 = v105;
        }

        if (a41)
        {
          v106 = CFArrayGetValueAtIndex(*(a1 + 24), 61);
          v107 = v106;
          if (v106)
          {
            CFRetain(v106);
          }

          *a41 = v107;
        }

        if (a42)
        {
          v108 = CFArrayGetValueAtIndex(*(a1 + 24), 62);
          v109 = v108;
          if (v108)
          {
            CFRetain(v108);
          }

          *a42 = v109;
        }

        if (a43)
        {
          v110 = CFArrayGetValueAtIndex(*(a1 + 24), 64);
          v111 = v110;
          if (v110)
          {
            CFRetain(v110);
          }

          *a43 = v111;
        }

        if (a44)
        {
          v112 = CFArrayGetValueAtIndex(*(a1 + 24), 65);
          if (v112)
          {
            CFNumberGetValue(v112, kCFNumberSInt64Type, a44);
          }
        }

        if (a45)
        {
          v113 = CFArrayGetValueAtIndex(*(a1 + 24), 68);
          v114 = v113;
          if (v113)
          {
            CFRetain(v113);
          }

          *a45 = v114;
        }

        if (a46)
        {
          v115 = CFArrayGetValueAtIndex(*(a1 + 24), 69);
          v116 = v115;
          if (v115)
          {
            CFRetain(v115);
          }

          *a46 = v116;
        }

        if (a47)
        {
          v117 = CFArrayGetValueAtIndex(*(a1 + 24), 70);
          v118 = v117;
          if (v117)
          {
            CFRetain(v117);
          }

          *a47 = v118;
        }

        if (a48)
        {
          v119 = CFArrayGetValueAtIndex(*(a1 + 24), 71);
          v120 = v119;
          if (v119)
          {
            CFRetain(v119);
          }

          *a48 = v120;
        }

        if (a49)
        {
          v121 = CFArrayGetValueAtIndex(*(a1 + 24), 78);
          if (v121)
          {
            CFNumberGetValue(v121, kCFNumberSInt64Type, a49);
          }
        }

        if (a50)
        {
          v122 = CFArrayGetValueAtIndex(*(a1 + 24), 75);
          if (v122)
          {
            CFNumberGetValue(v122, kCFNumberSInt64Type, a50);
          }
        }

        if (a51)
        {
          v123 = CFArrayGetValueAtIndex(*(a1 + 24), 76);
          if (v123)
          {
            CFNumberGetValue(v123, kCFNumberSInt64Type, a51);
          }
        }

        if (a52)
        {
          v124 = CFArrayGetValueAtIndex(*(a1 + 24), 82);
          v125 = v124;
          if (v124)
          {
            CFRetain(v124);
          }

          *a52 = v125;
        }

        if (a53)
        {
          v126 = CFArrayGetValueAtIndex(*(a1 + 24), 84);
          v127 = v126;
          if (v126)
          {
            CFRetain(v126);
          }

          *a53 = v127;
        }

        if (a54)
        {
          v128 = CFArrayGetValueAtIndex(*(a1 + 24), 85);
          v129 = v128;
          if (v128)
          {
            CFRetain(v128);
          }

          *a54 = v129;
        }

        if (a55)
        {
          *a55 = CFArrayGetValueAtIndex(*(a1 + 24), 88);
        }

        if (a56)
        {
          *a56 = CFArrayGetValueAtIndex(*(a1 + 24), 89);
        }

        if (a57)
        {
          v130 = CFArrayGetValueAtIndex(*(a1 + 24), 92);
          v131 = v130;
          if (v130)
          {
            CFRetain(v130);
          }

          *a57 = v131;
        }
      }
    }
  }

  else
  {
    v57 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF808(v57, v58, v59, v60, v61, v62, v63, v64);
    }
  }
}