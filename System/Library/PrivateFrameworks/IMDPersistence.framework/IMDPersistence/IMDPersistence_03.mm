void sub_1B7B22598(id *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1[4])
  {
    v5 = objc_msgSend_database(a1[5], a2, a3, a4);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B22684;
    v10[3] = &unk_1E7CB7238;
    v11 = a1[4];
    v12 = a1[6];
    objc_msgSend_fetchTotalMessageCountWithCompletionHandler_(v5, v6, v10, v7);
  }

  else
  {
    v8 = a1[6];
    if (v8)
    {
      v9 = *(v8 + 2);

      v9();
    }
  }
}

uint64_t sub_1B7B22684(uint64_t a1, int64_t value)
{
  xpc_dictionary_set_int64(*(a1 + 32), "total_messages", value);
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1B7B227A4(id *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1[4])
  {
    v5 = objc_msgSend_database(a1[5], a2, a3, a4);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B22890;
    v10[3] = &unk_1E7CB7238;
    v11 = a1[4];
    v12 = a1[6];
    objc_msgSend_fetchMessagesWithoutChatsCountWithCompletionHandler_(v5, v6, v10, v7);
  }

  else
  {
    v8 = a1[6];
    if (v8)
    {
      v9 = *(v8 + 2);

      v9();
    }
  }
}

uint64_t sub_1B7B22890(uint64_t a1, int64_t value)
{
  xpc_dictionary_set_int64(*(a1 + 32), "missing_messages", value);
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1B7B229B0(uint64_t a1)
{
  v9 = IMGetXPCArrayFromDictionary();
  objc_opt_class();
  v2 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  v6 = objc_msgSend_database(*(a1 + 40), v3, v4, v5);
  objc_msgSend_moveMessageRecordsToRecoveryForMessageGUIDs_deleteDate_(v6, v7, v9, v2);

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

void sub_1B7B22B30(uint64_t a1)
{
  v9 = IMGetXPCArrayFromDictionary();
  objc_opt_class();
  v2 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  v6 = objc_msgSend_database(*(a1 + 40), v3, v4, v5);
  objc_msgSend_moveMessageRecordsToRecoveryForChatRecordsWithGUIDs_deleteDate_(v6, v7, v9, v2);

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

void sub_1B7B22CB0(uint64_t a1)
{
  v9 = IMGetXPCArrayFromDictionary();
  v5 = objc_msgSend_database(*(a1 + 40), v2, v3, v4);
  objc_msgSend_recoverMessageRecordsForChatRecordsWithGUIDs_(v5, v6, v9, v7);

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

void sub_1B7B22DF4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_database(*(a1 + 32), a2, a3, a4);
  v14 = objc_msgSend_loadRecoverableMessagesMetadataGroupedByChatGUID(v5, v6, v7, v8);

  v11 = objc_msgSend__xpcDictionaryWithCodableObjects_(*(a1 + 32), v9, v14, v10);
  if (v11)
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      xpc_dictionary_set_value(v12, "recoverableMessagesMetadataDictionary", v11);
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))();
  }
}

uint64_t sub_1B7B22F58(uint64_t a1)
{
  v2 = IMGetXPCIntFromDictionary();
  v6 = objc_msgSend_database(*(a1 + 40), v3, v4, v5);
  objc_msgSend_deleteRecoverableMessagesOlderThanDays_(v6, v7, v2, v8);

  result = *(a1 + 48);
  if (result)
  {
    v10 = *(result + 16);

    return v10();
  }

  return result;
}

uint64_t sub_1B7B230A0(uint64_t a1)
{
  v2 = IMGetXPCIntFromDictionary();
  v6 = objc_msgSend_database(*(a1 + 40), v3, v4, v5);
  objc_msgSend_deleteJunkMessagesOlderThanDays_(v6, v7, v2, v8);

  result = *(a1 + 48);
  if (result)
  {
    v10 = *(result + 16);

    return v10();
  }

  return result;
}

void sub_1B7B23208(void **a1)
{
  v2 = IMGetXPCArrayFromDictionary();
  v6 = objc_msgSend_database(a1[5], v3, v4, v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B232E8;
  v10[3] = &unk_1E7CB7120;
  v7 = a1[6];
  v8 = a1[5];
  v11 = v7;
  v12 = v8;
  v13 = a1[7];
  objc_msgSend_permanentlyDeleteRecoverableMessagesInChatsWithGUIDs_completionHandler_(v6, v9, v2, v10);
}

void sub_1B7B232E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v8 = v3;
  if (v5)
  {
    v6 = objc_msgSend__xpcArrayWithCodableObjects_(*(a1 + 40), v3, v3, v4);
    xpc_dictionary_set_value(v5, "deletedChats", v6);

    v3 = v8;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
    v3 = v8;
  }
}

void sub_1B7B23464(uint64_t a1)
{
  v2 = IMGetXPCIntFromDictionary();
  v3 = IMGetXPCIntFromDictionary();
  v7 = objc_msgSend_database(*(a1 + 40), v4, v5, v6);
  v14 = objc_msgSend_recoverableMessagesMetadataPendingCloudKitSaveWithLimit_filter_(v7, v8, v2, v3);

  v11 = objc_msgSend__xpcArrayWithCodableObjects_(*(a1 + 40), v9, v14, v10);
  if (v11)
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      xpc_dictionary_set_value(v12, "recoverableMessagesMetadataPendingCloudKitSave", v11);
    }
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    (*(v13 + 16))();
  }
}

void sub_1B7B23620(uint64_t a1)
{
  v2 = IMGetXPCIntFromDictionary();
  v6 = objc_msgSend_database(*(a1 + 40), v3, v4, v5);
  v14 = objc_msgSend_recoverableMessagesMetadataPendingCloudKitDeleteWithLimit_(v6, v7, v2, v8);

  v11 = objc_msgSend__xpcArrayWithCodableObjects_(*(a1 + 40), v9, v14, v10);
  if (v11)
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      xpc_dictionary_set_value(v12, "recoverableMessagesMetadataPendingCloudKitDelete", v11);
    }
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    (*(v13 + 16))();
  }
}

uint64_t sub_1B7B23778(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_database(*(a1 + 32), a2, a3, a4);
  objc_msgSend_clearRecoverableMessageTombStones(v5, v6, v7, v8);

  result = *(a1 + 40);
  if (result)
  {
    v10 = *(result + 16);

    return v10();
  }

  return result;
}

uint64_t sub_1B7B2389C(uint64_t a1)
{
  v2 = IMGetXPCIntFromDictionary();
  v3 = IMGetXPCIntFromDictionary();
  v4 = IMGetXPCIntFromDictionary();
  v8 = objc_msgSend_database(*(a1 + 40), v5, v6, v7);
  objc_msgSend_updateRecoverableMessageSyncState_forMessageRowID_onPartIndex_(v8, v9, v2, v3, v4);

  result = *(a1 + 48);
  if (result)
  {
    v11 = *(result + 16);

    return v11();
  }

  return result;
}

void sub_1B7B23A20(uint64_t a1)
{
  v2 = IMGetXPCIntFromDictionary();
  v9 = IMGetXPCArrayFromDictionary();
  v6 = objc_msgSend_database(*(a1 + 40), v3, v4, v5);
  objc_msgSend_updateRecoverableMessageSyncState_forMessageGUIDs_(v6, v7, v2, v9);

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

void sub_1B7B23B84(uint64_t a1)
{
  v10 = IMGetXPCStringFromDictionary();
  objc_opt_class();
  v2 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  objc_opt_class();
  v3 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  v7 = objc_msgSend_database(*(a1 + 40), v4, v5, v6);
  objc_msgSend_storeRecoverableMessagePartWithBody_forMessageWithGUID_deleteDate_(v7, v8, v3, v10, v2);

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void sub_1B7B23D0C(uint64_t a1)
{
  v10 = IMGetXPCStringFromDictionary();
  v2 = IMGetXPCStringFromDictionary();
  v3 = IMGetXPCStringFromDictionary();
  v4 = IMGetXPCStringFromDictionary();
  v8 = objc_msgSend_database(*(a1 + 40), v5, v6, v7);
  objc_msgSend_postSharePlayNotificationForChatGUID_faceTimeConversationUUID_handleIdentifier_localizedApplicationName_(v8, v9, v10, v2, v3, v4);
}

void sub_1B7B23FC4(xpc_object_t *a1)
{
  uint64 = xpc_dictionary_get_uint64(a1[4], "tableName");
  v6 = objc_msgSend_database(a1[5], v3, v4, v5);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B24098;
  v8[3] = &unk_1E7CB7238;
  v9 = a1[6];
  v10 = a1[7];
  objc_msgSend_fetchCountOfRecordType_completionHandler_(v6, v7, uint64, v8);
}

uint64_t sub_1B7B24098(uint64_t a1, int64_t value)
{
  xpc_dictionary_set_int64(*(a1 + 32), "total", value);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1B7B241C8(uint64_t a1)
{
  objc_opt_class();
  v10 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  v5 = objc_msgSend_database(*(a1 + 40), v2, v3, v4);
  v8 = objc_msgSend_handleRecordsFilteredByPredicate_(v5, v6, v10, v7);

  objc_msgSend__respondWithHandleRecords_responseMessage_completionHandler_(*(a1 + 40), v9, v8, *(a1 + 48), *(a1 + 56));
}

void sub_1B7B24350(uint64_t a1)
{
  objc_opt_class();
  v2 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  v3 = *(a1 + 40);
  v4 = xpc_dictionary_get_value(*(a1 + 32), "sortDescriptors");
  v5 = objc_opt_class();
  v7 = objc_msgSend__codableObjectsCopiedFromXPCArray_objectClass_(v3, v6, v4, v5);

  int64 = xpc_dictionary_get_int64(*(a1 + 32), "limit");
  v12 = objc_msgSend_database(*(a1 + 40), v9, v10, v11);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7B244AC;
  v15[3] = &unk_1E7CB7120;
  v13 = *(a1 + 48);
  v15[4] = *(a1 + 40);
  v16 = v13;
  v17 = *(a1 + 56);
  objc_msgSend_fetchHandleRecordsFilteredUsingPredicate_sortedUsingDescriptors_limit_completionHandler_(v12, v14, v2, v7, int64, v15);
}

void sub_1B7B24580(uint64_t a1)
{
  v9 = IMGetXPCArrayFromDictionary();
  v2 = IMGetXPCIntFromDictionary();
  v6 = objc_msgSend_database(*(a1 + 40), v3, v4, v5);
  objc_msgSend_updateAttachmentsSyncStatusTo_forGUIDs_(v6, v7, v2, v9);

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

void sub_1B7B246E4(uint64_t a1)
{
  objc_opt_class();
  v9 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  v5 = objc_msgSend_database(*(a1 + 40), v2, v3, v4);
  objc_msgSend_deleteAttachmentsDirectWithPredicate_(v5, v6, v9, v7);

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

void sub_1B7B2485C(uint64_t a1)
{
  objc_opt_class();
  v2 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "limit");
  v7 = objc_msgSend_database(*(a1 + 40), v4, v5, v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B24968;
  v10[3] = &unk_1E7CB7120;
  v8 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v8;
  v12 = *(a1 + 56);
  objc_msgSend_fetchAttachmentRecordsFilteredUsingPredicate_limit_completionHandler_(v7, v9, v2, int64, v10);
}

void sub_1B7B24A5C(uint64_t a1)
{
  objc_opt_class();
  v2 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  v3 = *(a1 + 40);
  v4 = xpc_dictionary_get_value(*(a1 + 32), "sortDescriptors");
  v5 = objc_opt_class();
  v7 = objc_msgSend__codableObjectsCopiedFromXPCArray_objectClass_(v3, v6, v4, v5);

  int64 = xpc_dictionary_get_int64(*(a1 + 32), "limit");
  v12 = objc_msgSend_database(*(a1 + 40), v9, v10, v11);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7B24BB8;
  v15[3] = &unk_1E7CB7120;
  v13 = *(a1 + 48);
  v15[4] = *(a1 + 40);
  v16 = v13;
  v17 = *(a1 + 56);
  objc_msgSend_fetchAttachmentRecordsFilteredUsingPredicate_sortedUsingDescriptors_limit_completionHandler_(v12, v14, v2, v7, int64, v15);
}

void sub_1B7B24CAC(void **a1)
{
  v2 = IMGetXPCStringFromDictionary();
  v6 = objc_msgSend_database(a1[5], v3, v4, v5);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B24D88;
  v8[3] = &unk_1E7CB7238;
  v9 = a1[6];
  v10 = a1[7];
  objc_msgSend_fetchInteger64ForKey_completionHandler_(v6, v7, v2, v8);
}

uint64_t sub_1B7B24D88(uint64_t a1, int64_t value)
{
  xpc_dictionary_set_int64(*(a1 + 32), "result", value);
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1B7B24EC8(uint64_t a1)
{
  v2 = IMGetXPCArrayFromDictionary();
  v6 = objc_msgSend_database(*(a1 + 40), v3, v4, v5);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B24FA8;
  v9[3] = &unk_1E7CB7288;
  v7 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v7;
  v11 = *(a1 + 56);
  objc_msgSend_fetchContactsForIdentifiers_completionHandler_(v6, v8, v2, v9);
}

void sub_1B7B24FA8(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      v14 = objc_msgSend_count(v3, v7, v8, v9);
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "IMDContactQueries: Fetched %tu contacts from IMDP.", &v13, 0xCu);
    }
  }

  if (v3)
  {
    v10 = objc_msgSend__xpcDictionaryWithCodableObjects_(*(a1 + 32), v4, v3, v5);
    if (v10)
    {
      v11 = *(a1 + 40);
      if (v11)
      {
        xpc_dictionary_set_value(v11, "identifiersToContacts", v10);
      }
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))();
    }
  }
}

void sub_1B7B25178(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseMessageEventLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "About to close current DB", &v14, 2u);
  }

  IMDSMSRecordStoreClose(v3);
  v4 = IMMessagesDatabaseURL();
  v8 = objc_msgSend_path(v4, v5, v6, v7);
  v11 = IMDDatabaseDelete(v8, 0, v9, v10);

  if (!v11 && IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Could not delete database at path %@", &v14, 0xCu);
    }
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))();
  }
}

void sub_1B7B253B8(uint64_t a1)
{
  v5 = IMGetXPCDataFromDictionary();
  if (v5)
  {
    v13 = 0;
    v6 = objc_msgSend_createFromData_error_(_TtC14IMDPersistence16StorageInspector, v2, v5, &v13);
    v7 = v13;
    if (v6)
    {
      v8 = objc_msgSend_database(*(a1 + 40), v2, v3, v4);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1B7B254E4;
      v11[3] = &unk_1E7CB72B0;
      v12 = *(a1 + 48);
      objc_msgSend_inspectStorageWithStorageInspector_completionHandler_(v8, v9, v6, v11);
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, v2, v3, v4);
  }
}

void sub_1B7B254E4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = v5;
  v9 = v5;
  if (v4)
  {
    v9 = v5;
    if (!v5)
    {
      v11 = 0;
      v10 = objc_msgSend_encodeToData_(v4, v6, &v11, v7);
      v9 = v11;
      if (v10)
      {
        IMInsertDatasToXPCDictionary();
      }
    }
  }

  if (v9)
  {
    IMInsertCodableObjectsToXPCDictionary();
  }
}

uint64_t _IMDDatabasePerformOneMigration(unsigned int *a1, const char *a2, uint64_t a3, uint64_t a4, _DWORD *a5, void *a6)
{
  v6 = *a1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B25DE0;
  v8[3] = &unk_1E7CB72D0;
  v8[4] = a1;
  return sub_1B7B25A24(v6, a2, a3, a4, a5, a6, v8);
}

uint64_t sub_1B7B25A24(const char *a1, const char *a2, uint64_t a3, uint64_t a4, _DWORD *a5, void *a6, uint64_t a7)
{
  v52 = *MEMORY[0x1E69E9840];
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], a2, a3, a4);
  v15 = v14;
  v45 = 0u;
  memset(v44, 0, sizeof(v44));
  IMDSqlOperationInitWithCSDBConnection(a3, a2, v44);
  v18 = IMDSqlOperationBeginTransaction(v44);
  if ((v18 & 1) == 0 && !*(&v45 + 1))
  {
    v19 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEDA30(a4, a1, v19, v17);
    }
  }

  if (!v18)
  {
    goto LABEL_30;
  }

  v22 = IMDDropAllTriggersWithOperation(v44, 1, v16, v17);
  if (!v22 && !*(&v45 + 1))
  {
    v23 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEDAE0(a4, a1, v23, v21);
      goto LABEL_30;
    }
  }

  if (!v22)
  {
LABEL_30:
    v37 = IMLogHandleForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *&v41 = COERCE_DOUBLE(IMDSqlOperationErrorDescription(v44, v38, v39, v40));
      *buf = 67109634;
      v47 = a4;
      v48 = 1024;
      v49 = a1;
      v50 = 2112;
      v51 = *&v41;
      _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_INFO, "Migration from %d to %d failed with error: %@", buf, 0x18u);
    }

    IMDSqlOperationGetError(v44, a6);
    IMDSqlOperationRevertTransaction(v44);
    IMDSqlOperationRelease(v44, 0);
    v42 = IMLogHandleForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v47 = a4;
      v48 = 1024;
      v49 = a1;
      _os_log_impl(&dword_1B7AD5000, v42, OS_LOG_TYPE_INFO, "Unable to perform database migration from %d to %d", buf, 0xEu);
    }

    return 0;
  }

  v26 = IMDDropUnknownIndexesWithOperation(v44, 1, v20, v21);
  if (!v26 && !*(&v45 + 1))
  {
    v27 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEDB90(a4, a1, v27, v25);
      goto LABEL_30;
    }
  }

  if (!v26 || !IMDDropUnknownTablesWithOperation(v44, 1, v24, v25))
  {
    goto LABEL_30;
  }

  v28 = IMDCreateTablesWithOperation(v44, 1);
  if (a7)
  {
    if (v28)
    {
      v28 = (*(a7 + 16))(a7, v44, a4);
      if ((v28 & 1) == 0 && !*(&v45 + 1))
      {
        v29 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CEDC40(a4, a1, v29, v30);
        }

        goto LABEL_30;
      }
    }
  }

  if (!v28 || !IMDSqlOperationCommitTransaction(v44))
  {
    goto LABEL_30;
  }

  CSDBSqliteDatabaseSetVersion();
  if (a5)
  {
    *a5 = a1;
  }

  if (*(&v45 + 1))
  {
    goto LABEL_30;
  }

  IMDSqlOperationRelease(v44, 0);
  v31 = IMLogHandleForCategory();
  v32 = 1;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v33, v34, v35);
    *buf = 67109632;
    v47 = a4;
    v48 = 1024;
    v49 = a1;
    v50 = 2048;
    v51 = v36 - v15;
    _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Migrated from %d to %d ok in %f seconds", buf, 0x18u);
  }

  return v32;
}

uint64_t sub_1B7B25DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  if (v3)
  {
    return v3(a2, a3);
  }

  else
  {
    return 1;
  }
}

BOOL _IMDDatabaseCompleteMigration(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = 0u;
  memset(v20, 0, sizeof(v20));
  IMDSqlOperationInitWithCSDBConnection(a2, a1, v20);
  if (IMDCreateTablesWithOperation(v20, 1))
  {
    IMDCreateIndexesWithOperation(v20, 1);
    IMDCreateTriggersWithOperation(v20, 1);
  }

  else if (!*(&v21 + 1))
  {
    v22 = xmmword_1E7CB7318;
    v23 = *off_1E7CB7328;
    v24 = 240;
    v5 = MEMORY[0x1E696AEC0];
    v6 = IMFileLocationTrimFileName();
    v7 = v24;
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"can't have migration fail without error!!", v9);
    v13 = objc_msgSend_stringWithFormat_(v5, v11, @"Unexpected false '%@' in %s at %s:%d. %@", v12, @"success || operation->error != nil", "BOOL IMDCreateTriggersAndIndexes(IMDSqlOperation *, BOOL)", v6, v7, v10);
    v14 = IMGetAssertionFailureHandler();
    if (v14)
    {
      v14(v13);
    }

    else
    {
      v18 = objc_msgSend_warning(MEMORY[0x1E69A6138], v15, v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEC540(v13, v18);
      }
    }
  }

  return IMDSqlOperationRelease(v20, a4);
}

uint64_t _IMDDatabasePerformMigrations(const char *a1, const char *a2, uint64_t a3, _DWORD *a4, void *a5)
{
  v7 = a3;
  v72 = *MEMORY[0x1E69E9840];
  v65 = 0;
  v10 = dword_1EDBE1D68;
  if (!dword_1EDBE1D68)
  {
LABEL_7:
    v13 = 1;
    goto LABEL_9;
  }

  v11 = &dword_1EDBE1D68;
  while (v7 >= v10)
  {
LABEL_6:
    v12 = v11[6];
    v11 += 6;
    v10 = v12;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v66 = MEMORY[0x1E69E9820];
  v67 = 3221225472;
  v68 = sub_1B7B25DE0;
  v69 = &unk_1E7CB72D0;
  v70 = v11;
  if (sub_1B7B25A24(v10, a1, a2, v7, a4, &v65, &v66))
  {
    v7 = *v11;
    goto LABEL_6;
  }

  v13 = 0;
LABEL_9:
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  LODWORD(v69) = 0;
  v14 = objc_msgSend_schemaVersion(IMDLegacyRecordBridge, a2, a3, a4);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = sub_1B7B26318;
  v63[3] = &unk_1E7CB72F8;
  v64 = v7;
  v63[4] = &v66;
  v63[5] = a2;
  v18 = v13 & sub_1B7B25A24(v14, a1, a2, v7, a4, &v65, v63);
  if (*(v67 + 24))
  {
    LODWORD(v7) = *(v67 + 24);
  }

  if (v18)
  {
    _IMDDatabaseCompleteMigration(a1, a2, v16, &v65);
    v19 = v65;
    if (!a5)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (v19)
    {
      *a5 = v19;
    }
  }

  else
  {
    v19 = v65;
    if (v65)
    {
      if (!a5)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v19 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v15, *MEMORY[0x1E696A250], 3072, 0);
    v65 = v19;
    if (a5)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  if (!v18)
  {
LABEL_32:
    v23 = 0;
    goto LABEL_33;
  }

  if (objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v15, v16, v17) == v7)
  {
    goto LABEL_20;
  }

  v24 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v20, v21, v22);
  if (!objc_msgSend_isInternalInstall(v24, v25, v26, v27) || objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v28, v29, v30) >= v7)
  {
    v57 = IMLogHandleForCategory();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v61 = objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v58, v59, v60);
      sub_1B7CEDCF0(v61, buf, v57);
    }

    goto LABEL_32;
  }

  v31 = IMLogHandleForCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v35 = objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v32, v33, v34);
    sub_1B7CEDD38(v35, buf, v7, v31);
  }

  v36 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v32, v33, v34);
  if (objc_msgSend_isInternalInstall(v36, v37, v38, v39))
  {
    v43 = MEMORY[0x1E69A6188];
    v44 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v40, v41, v42);
    v46 = objc_msgSend_userNotificationWithIdentifier_title_message_defaultButton_alternateButton_otherButton_(v43, v45, v44, @"Messages Database Downgrade Detected", @"[Internal Only] Messages database is newer than expected version. This may have occurred due to a software downgrade.\n\nNo data has been removed but Messages may not behave as expected.", @"OK", 0, 0);
    v49 = v46;
    if (v46)
    {
      objc_msgSend_setUsesNotificationCenter_(v46, v47, 0, v48);
      objc_msgSend_setRepresentedApplicationBundle_(v49, v50, *MEMORY[0x1E69A61B8], v51);
      v55 = objc_msgSend_sharedInstance(MEMORY[0x1E69A6190], v52, v53, v54);
      objc_msgSend_addUserNotification_listener_completionHandler_(v55, v56, v49, 0, &unk_1F2FA0030);
    }
  }

LABEL_20:
  v23 = 1;
LABEL_33:
  _Block_object_dispose(&v66, 8);
  return v23;
}

void sub_1B7B262E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B2636C(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "User acknowledged database downgrade", v2, 2u);
    }
  }
}

uint64_t IMDChatRecordAddChat(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7B264EC;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7B264D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B264EC(uint64_t result, uint64_t a2)
{
  if (*(result + 40))
  {
    v2 = result;
    CSDBRecordStoreAddRecord();
    result = CSDBRecordSaveStore();
    *(*(*(v2 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t IMDChatRecordCopyAllChats(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_DEBUG, "IMDSMSRecordStoreCopyAllChats", buf, 2u);
    }
  }

  *buf = 0;
  v11 = buf;
  v12 = 0x2020000000;
  v13 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v5 = objc_msgSend_copyAllChatsQuery(IMDChatQueryStrings, v2, v3, v4);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7B266D8;
    v9[3] = &unk_1E7CB7390;
    v9[4] = buf;
    _IMDPerformLockedStatementBlockWithQuery(v5, v9);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7B267F4;
    v8[3] = &unk_1E7CB6838;
    v8[4] = buf;
    __syncXPCIMDChatRecordCopyAllChats_IPCAction(v8);
  }

  v6 = *(v11 + 3);
  _Block_object_dispose(buf, 8);
  return v6;
}

void sub_1B7B266D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7AE0D64(a1, a2, a3, a4);
  v5 = CSDBRecordStoreProcessStatement();
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v8 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v10 = Mutable;
        for (i = 0; i != Count; ++i)
        {
          CFArrayGetValueAtIndex(v6, i);
          ID = CSDBRecordGetID();
          v13 = IMDChatRecordCreateFromRecordIDUnlocked(v8, ID);
          if (v13)
          {
            v14 = v13;
            CFArrayAppendValue(v10, v13);
            CFRelease(v14);
          }
        }

        *(*(*(a1 + 32) + 8) + 24) = v10;
      }
    }

    CFRelease(v6);
  }
}

xpc_object_t sub_1B7B267F4(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B26888;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7B26888(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = _IMDCopyIMDChatRecordFromXPCObjectClient(a3);
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v6);
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

uint64_t IMDChatRecordCopyAllNamedChats(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_DEBUG, "IMDSMSRecordStoreCopyAllNamedChats", buf, 2u);
    }
  }

  *buf = 0;
  v11 = buf;
  v12 = 0x2020000000;
  v13 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v5 = objc_msgSend_copyAllNamedChatsQuery(IMDChatQueryStrings, v2, v3, v4);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7B26AC8;
    v9[3] = &unk_1E7CB7390;
    v9[4] = buf;
    _IMDPerformLockedStatementBlockWithQuery(v5, v9);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7B26BE4;
    v8[3] = &unk_1E7CB6838;
    v8[4] = buf;
    __syncXPCIMDChatRecordCopyAllNamedChats_IPCAction(v8);
  }

  v6 = *(v11 + 3);
  _Block_object_dispose(buf, 8);
  return v6;
}

void sub_1B7B26AC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7AE0D64(a1, a2, a3, a4);
  v5 = CSDBRecordStoreProcessStatement();
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v8 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v10 = Mutable;
        for (i = 0; i != Count; ++i)
        {
          CFArrayGetValueAtIndex(v6, i);
          ID = CSDBRecordGetID();
          v13 = IMDChatRecordCreateFromRecordIDUnlocked(v8, ID);
          if (v13)
          {
            v14 = v13;
            CFArrayAppendValue(v10, v13);
            CFRelease(v14);
          }
        }

        *(*(*(a1 + 32) + 8) + 24) = v10;
      }
    }

    CFRelease(v6);
  }
}

xpc_object_t sub_1B7B26BE4(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B26C78;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7B26C78(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = _IMDCopyIMDChatRecordFromXPCObjectClient(a3);
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v6);
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

uint64_t IMDChatRecordCopyAllActiveChats(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_DEBUG, "IMDSMSRecordStoreCopyAllActiveChats", buf, 2u);
    }
  }

  *buf = 0;
  v11 = buf;
  v12 = 0x2020000000;
  v13 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v5 = objc_msgSend_copyAllChatsQuery(IMDChatQueryStrings, v2, v3, v4);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7B26EC0;
    v9[3] = &unk_1E7CB7390;
    v9[4] = buf;
    _IMDPerformLockedStatementBlockWithQuery(v5, v9);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7B26FDC;
    v8[3] = &unk_1E7CB6838;
    v8[4] = buf;
    __syncXPCIMDChatRecordCopyAllActiveChatsProgressivelyWithLimit_IPCAction(v8, -1);
  }

  v6 = *(v11 + 3);
  _Block_object_dispose(buf, 8);
  return v6;
}

void sub_1B7B26EC0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7AE0D64(a1, a2, a3, a4);
  v5 = CSDBRecordStoreProcessStatement();
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v8 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v10 = Mutable;
        for (i = 0; i != Count; ++i)
        {
          CFArrayGetValueAtIndex(v6, i);
          ID = CSDBRecordGetID();
          v13 = IMDChatRecordCreateFromRecordIDUnlocked(v8, ID);
          if (v13)
          {
            v14 = v13;
            CFArrayAppendValue(v10, v13);
            CFRelease(v14);
          }
        }

        *(*(*(a1 + 32) + 8) + 24) = v10;
      }
    }

    CFRelease(v6);
  }
}

xpc_object_t sub_1B7B26FDC(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B27070;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7B27070(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = _IMDCopyIMDChatRecordFromXPCObjectClient(a3);
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v6);
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

uint64_t sub_1B7B2710C(uint64_t a1, const char *a2, IMDPredicateToSQLConverter *a3, uint64_t a4)
{
  v4 = a3;
  v10 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4);
  if (v4)
  {
    v11 = [IMDPredicateToSQLConverter alloc];
    v15 = objc_msgSend_keyPathsToColumns(IMDChatRecord, v12, v13, v14);
    v4 = objc_msgSend_initWithPredicate_keyPathsToColumns_columnPrefix_(v11, v16, v4, v15, @"c.");
  }

  v17 = objc_msgSend_expression(v4, v7, v8, v9);
  v19 = objc_msgSend_copyChatsWithUnreadMessagesWithLimit_beforeDate_extraCriteria_(IMDChatQueryStrings, v18, a1, a2, v17);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1B7B2721C;
  v21[3] = &unk_1E7CB6F58;
  v21[4] = v4;
  v21[5] = v10;
  _IMDPerformLockedStatementBlockWithQuery(v19, v21);

  return v10;
}

void sub_1B7B2721C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_bindParametersToSqliteWithStatement_(*(a1 + 32), a2, a4, a4);
  sub_1B7AE0D64(v5, v6, v7, v8);
  v9 = CSDBRecordStoreProcessStatement();
  v12 = _IMDChatRecordCopyChatsFromRecords(v9);
  if (!v12)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "No chats found with unread messages.", &v15, 2u);
      }
    }

LABEL_9:
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  objc_msgSend_addObjectsFromArray_(*(a1 + 40), v10, v12, v11);
  if (!IMOSLoggingEnabled())
  {
    goto LABEL_9;
  }

  v13 = OSLogHandleForIMFoundationCategory();
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    goto LABEL_9;
  }

  v15 = 134217984;
  Count = CFArrayGetCount(v12);
  _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Found %llu chats with unread messages.", &v15, 0xCu);
  if (v9)
  {
LABEL_10:
    CFRelease(v9);
  }

LABEL_11:
  if (v12)
  {
    CFRelease(v12);
  }
}

void sub_1B7B27390(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    if (!v2)
    {
      JUMPOUT(0x1B7B27354);
    }

    JUMPOUT(0x1B7B2734CLL);
  }

  _Unwind_Resume(a1);
}

void *IMDChatRecordCopyAllUnreadChatsAndRecentChatsWithLimit(int64_t a1, int64_t a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copying all unread chats and recent chats", buf, 2u);
    }
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    SMSFilterExtensionParams = objc_msgSend_fetchSMSFilterExtensionParams(MEMORY[0x1E69A8210], v6, v7, v8);
    v13 = objc_msgSend_copyAllRecentChatsWithLimitQuery(IMDChatQueryStrings, v10, v11, v12);
    v17 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15, v16);
    v18 = 0;
    v19 = MEMORY[0x1E69E9820];
    do
    {
      v66[0] = v19;
      if (v18)
      {
        v20 = a2;
      }

      else
      {
        v20 = a1;
      }

      v66[1] = 3221225472;
      v66[2] = sub_1B7B2D80C;
      v66[3] = &unk_1E7CB75F8;
      v66[5] = v18;
      v66[6] = v20;
      v66[4] = v17;
      _IMDPerformLockedStatementBlockWithQuery(v13, v66);
      ++v18;
    }

    while (v18 != 5);
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(SMSFilterExtensionParams, v21, &v62, buf, 16);
    v54 = a1;
    v55 = v5;
    if (v25)
    {
      v26 = *v63;
      do
      {
        v27 = 0;
        do
        {
          if (*v63 != v26)
          {
            objc_enumerationMutation(SMSFilterExtensionParams);
          }

          v28 = objc_msgSend_filterMode(*(*(&v62 + 1) + 8 * v27), v22, v23, v24, v54, v55);
          if (v28 >= 0x10)
          {
            v61[0] = MEMORY[0x1E69E9820];
            v61[1] = 3221225472;
            v61[2] = sub_1B7B2D958;
            v61[3] = &unk_1E7CB75F8;
            v61[5] = v28;
            v61[6] = a2;
            v61[4] = v17;
            _IMDPerformLockedStatementBlockWithQuery(v13, v61);
          }

          ++v27;
        }

        while (v25 != v27);
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(SMSFilterExtensionParams, v22, &v62, buf, 16);
      }

      while (v25);
    }

    if (v17)
    {
      v30 = v54;
      v29 = v55;
      v31 = objc_msgSend_count(v17, v22, v23, v24);
    }

    else
    {
      v31 = 0;
      v30 = v54;
      v29 = v55;
    }

    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *v67 = 134218496;
        v68 = v31;
        v69 = 2048;
        v70 = v30;
        v71 = 2048;
        v72 = a2;
        _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "Found %llu recent chats (knownSenderLimit: %lld, otherFilterLimit: %lld)", v67, 0x20u);
      }
    }

    if (v13)
    {
    }

    objc_msgSend_addObjectsFromArray_(v29, v32, v17, v33, v54, v55);
    v38 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v35, v36, v37);
    if ((objc_msgSend_isUnreadCountRefactorEnabled(v38, v39, v40, v41) & 1) == 0)
    {
      objc_msgSend_count(v29, v42, v43, v44);
      v48 = objc_msgSend_count(v29, v45, v46, v47);
      v50 = sub_1B7B2710C(2000 - v48, 0, 0, v49);
      objc_msgSend_addObjectsFromArray_(v29, v51, v50, v52);
    }

    v58[3] = v29;
  }

  else
  {
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = sub_1B7B27804;
    v56[3] = &unk_1E7CB6838;
    v56[4] = &v57;
    __syncXPCIMDChatRecordCopyAllUnreadChatsAndRecentChatsWithLimit_IPCAction(v56, a1, a2);
    v29 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  return v29;
}

xpc_object_t sub_1B7B27804(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    result = _IMDChatRecordCopyChatsFromXPCArray(result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

void IMDChatRemapChatsWithLastAddressedSIMIDToNewLastAddressedIDs(void *a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = a2;
      *&buf[22] = 2112;
      *&buf[24] = a3;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Trying to update chats wuth lastAddressedSIMID %@ to new simID %@ and new handle %@", buf, 0x20u);
    }
  }

  if (a1)
  {
    v10 = objc_msgSend_length(a1, v6, v7, v8) == 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 1;
    if (a2)
    {
LABEL_6:
      v11 = objc_msgSend_length(a2, v6, v7, v8) != 0;
      if (a3)
      {
        goto LABEL_7;
      }

LABEL_13:
      v12 = 0;
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  v11 = 0;
  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_7:
  v12 = objc_msgSend_length(a3, v6, v7, v8) != 0;
  if (v10)
  {
LABEL_8:
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v14 = "Old lastAddressedSIMID passed is nil, returning.";
        v15 = v13;
        v16 = 2;
LABEL_33:
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, v14, buf, v16);
        return;
      }
    }

    return;
  }

LABEL_14:
  if (v11 || v12)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v20 = objc_msgSend_copy(a2, v17, v18, v19);
      if (v20)
      {
        v24 = v20;
      }

      else
      {
        v24 = &stru_1F2FA9728;
      }

      v25 = objc_msgSend_copy(a3, v21, v22, v23);
      memset(&v40[7], 0, 32);
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = &stru_1F2FA9728;
      }

      memset(v40, 0, 112);
      memset(buf, 0, sizeof(buf));
      IMDSqlOperationInitWithSharedCSDBDatabase(buf);
      AddressedSIMIDToNewLastAddressedIDsQuery = objc_msgSend_remapChatsWithLastAddressedSIMIDToNewLastAddressedIDsQuery(IMDChatQueryStrings, v27, v28, v29);
      _IMDSqlOperationBeginQuery(buf, AddressedSIMIDToNewLastAddressedIDsQuery);
      IMDSqlStatementBindTextFromCFString(v40, v26);
      IMDSqlStatementBindTextFromCFString(v40, v24);
      IMDSqlStatementBindTextFromCFString(v40, *MEMORY[0x1E69A7AE0]);
      IMDSqlStatementBindTextFromCFString(v40, a1);
      IMDSqlOperationFinishQuery(buf);
      v34 = 0;
      IMDSqlOperationRelease(buf, &v34);
      if (v34)
      {
        if (IMOSLoggingEnabled())
        {
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *v35 = 138412290;
            v36 = v34;
            _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Error executing IMDChatRemapChatsWithLastAddressedSIMIDToNewLastAddressedIDs %@ ", v35, 0xCu);
          }
        }
      }

      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *v35 = 138412546;
          v36 = v26;
          v37 = 2112;
          v38 = v24;
          _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, "Last addressed handles/simIDs got modified to %@ and %@. Posting notification to reload chat registry.", v35, 0x16u);
        }
      }

      notify_post("com.apple.imdpersistenceagent.notification.lastaddressedidsmodified");
    }

    else
    {
      __syncXPCIMDChatRemapChatsWithLastAddressedSIMIDToNewLastAddressedIDs_IPCAction(0);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = a1;
      v14 = "Both new lastAddressedSIMID and lastAddressedSIMID are nil, not updating chats with simID %@ and returning.";
      v15 = v33;
      v16 = 12;
      goto LABEL_33;
    }
  }
}

uint64_t IMDChatGetMessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs(void *a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf[0]) = 138412546;
      *(buf + 4) = a1;
      WORD2(buf[1]) = 2112;
      *(&buf[1] + 6) = a2;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Trying to find last address labelID/date from chatIds %@ and labelIDs %@", buf, 0x16u);
    }
  }

  v8 = objc_msgSend_count(a1, v4, v5, v6);
  v12 = objc_msgSend_count(a2, v9, v10, v11);
  if (v8 && (v15 = v12) != 0)
  {
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AD60], v13, &stru_1F2FA9728, v14);
    if (v8 >= 2)
    {
      v19 = v8 - 1;
      do
      {
        objc_msgSend_appendString_(v18, v16, @"?, ", v17);
        --v19;
      }

      while (v19);
    }

    v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AD60], v16, &stru_1F2FA9728, v17);
    if (v15 >= 2)
    {
      v23 = v15 - 1;
      do
      {
        objc_msgSend_appendString_(v22, v20, @"?, ", v21);
        --v23;
      }

      while (v23);
    }

    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v26 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v24, @"select max(cm.message_date),last_addressed_sim_id from (select * from chat where chat_identifier in (%@?) AND style=45 and service_name=? and last_addressed_sim_id in (%@?)) c INNER JOIN chat_message_join cm ON c.ROWID=cm.chat_id;", v25, v18, v22);
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf[0]) = 138412290;
          *(buf + 4) = v26;
          _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "GetMessageDateAndLastAddressedLabelID: running with query %@", buf, 0xCu);
        }
      }

      memset(v55, 0, sizeof(v55));
      memset(buf, 0, sizeof(buf));
      IMDSqlOperationInitWithSharedCSDBDatabase(buf);
      _IMDSqlOperationBeginQuery(buf, v26);
      IMDSqlStatementBindTextFromArrayOfCFStrings(v55, a1);
      IMDSqlStatementBindTextFromCFString(v55, *MEMORY[0x1E69A7AE0]);
      IMDSqlStatementBindTextFromArrayOfCFStrings(v55, a2);
      if (IMDSqlOperationHasRows(buf))
      {
        Row = IMDSqlStatementGetRow(v55);
        v31 = Row;
        if (Row)
        {
          if (objc_msgSend_objectForKeyedSubscript_(Row, v29, @"last_addressed_sim_id", v30))
          {
            v34 = v50[3];
            v35 = objc_msgSend_objectForKeyedSubscript_(v31, v32, @"last_addressed_sim_id", v33);
            CFDictionarySetValue(v34, @"labelID", v35);
            if (objc_msgSend_objectForKeyedSubscript_(v31, v36, @"max(cm.message_date)", v37))
            {
              v40 = v50[3];
              v41 = objc_msgSend_objectForKeyedSubscript_(v31, v38, @"max(cm.message_date)", v39);
              CFDictionarySetValue(v40, @"date", v41);
            }
          }
        }

        if (IMOSLoggingEnabled())
        {
          v42 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            v43 = v50[3];
            *v53 = 138412290;
            *&v53[4] = v43;
            _os_log_impl(&dword_1B7AD5000, v42, OS_LOG_TYPE_INFO, "GetMessageDateAndLastAddressedLabelID: found results from db %@", v53, 0xCu);
          }
        }
      }

      IMDSqlOperationFinishQuery(buf);
      *v53 = 0;
      IMDSqlOperationRelease(buf, v53);
      if (*v53)
      {
        v44 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CEDD90();
        }
      }
    }

    else
    {
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = sub_1B7B28134;
      v48[3] = &unk_1E7CB6838;
      v48[4] = &v49;
      __syncXPCIMDChatGetMessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs_IPCAction(v48, a1, a2);
    }

    v46 = v50[3];
    _Block_object_dispose(&v49, 8);
  }

  else
  {
    v45 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEDE00();
    }

    return 0;
  }

  return v46;
}

void sub_1B7B28134(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "dictionary_result");
  if (value)
  {
    v4 = value;
    v5 = IMGetXPCStringFromDictionary();
    int64 = xpc_dictionary_get_int64(v4, "date");
    if (v5)
    {
      CFDictionarySetValue(*(*(*(a1 + 32) + 8) + 24), @"labelID", v5);
    }

    if (int64)
    {
      v9 = *(*(*(a1 + 32) + 8) + 24);
      v10 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v6, int64, v7);

      CFDictionarySetValue(v9, @"date", v10);
    }
  }
}

__CFArray *IMDChatGetChatsThatContainRecipient(uint64_t a1)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x3052000000;
    v51 = sub_1B7AE1924;
    v52 = sub_1B7AE248C;
    v53 = objc_msgSend_array(MEMORY[0x1E695DEC8], v3, v4, v5);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = sub_1B7B286E8;
    v47[3] = &unk_1E7CB73B8;
    v47[5] = &v48;
    v47[6] = @"SELECT guid,display_Name,chat_id from chat c INNER JOIN chat_handle_join ch ON c.ROWID = ch.chat_id INNER JOIN handle h on h.ROWID = ch.handle_id WHERE c.state = 3 AND h.id = ?";
    v47[4] = a1;
    IMDRunSqlOperation(v47);
    v9 = 0;
    v10 = *MEMORY[0x1E695E480];
    while (v9 < objc_msgSend_count(v49[5], v6, v7, v8))
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_msgSend_objectAtIndexedSubscript_(v49[5], v11, v9, v12);
      v17 = objc_msgSend_valueForKey_(v14, v15, @"chat_id", v16);
      v20 = objc_msgSend_stringWithFormat_(v13, v18, @"%@", v19, v17);
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = sub_1B7B28788;
      v46[3] = &unk_1E7CB6F30;
      v46[4] = v20;
      v46[5] = &v54;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT handle_id FROM chat_handle_join WHERE chat_id = ?", v46);
      v21 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v24 = objc_msgSend_objectAtIndexedSubscript_(v49[5], v22, v9, v23);
      v28 = objc_msgSend_valueForKey_(v24, v25, @"guid", v26);
      if (v28)
      {
        CFDictionarySetValue(v21, @"chatGUID", v28);
      }

      v30 = objc_msgSend_objectAtIndexedSubscript_(v49[5], v27, v9, v29);
      v33 = objc_msgSend_valueForKey_(v30, v31, @"display_name", v32);
      if (v33)
      {
        CFDictionarySetValue(v21, @"displayName", v33);
      }

      v34 = v55[3];
      if (v34)
      {
        Count = CFArrayGetCount(v34);
        v36 = CFArrayCreateMutable(v10, Count, MEMORY[0x1E695E9C0]);
        if (v36)
        {
          if (Count >= 1)
          {
            for (i = 0; i != Count; ++i)
            {
              CFArrayGetValueAtIndex(v55[3], i);
              ID = CSDBRecordGetID();
              v39 = IMDHandleRecordCreateFromRecordIDUnlocked(v10, ID);
              CFArrayAppendValue(v36, v39);
              if (v39)
              {
                CFRelease(v39);
              }
            }
          }

          CFDictionarySetValue(v21, @"handles", v36);
          CFRelease(v36);
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_INFO, "Handle records from kIMDChatTableSelectHandleIDFromChatID query is empty.", buf, 2u);
        }
      }

      v41 = v55[3];
      if (v41)
      {
        CFRelease(v41);
        v55[3] = 0;
      }

      CFArrayAppendValue(Mutable, v21);
      if (v21)
      {
        CFRelease(v21);
      }

      ++v9;
    }

    _Block_object_dispose(&v48, 8);
    v42 = &v54;
  }

  else
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = sub_1B7B287EC;
    v44[3] = &unk_1E7CB6838;
    v44[4] = &v48;
    __syncXPCIMDChatGetChatsThatContainRecipient_IPCAction(v44, a1);
    Mutable = v49[3];
    v42 = &v48;
  }

  _Block_object_dispose(v42, 8);
  return Mutable;
}

sqlite3_stmt **sub_1B7B286E8(void *a1, sqlite3_stmt **a2)
{
  v4 = a1[6];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7B2877C;
  v6[3] = &unk_1E7CB6FD0;
  v6[4] = a1[4];
  v6[5] = a2;
  result = _IMDSqlOperationGetRowsWithBindingBlock(a2, v4, v6);
  *(*(a1[5] + 8) + 40) = result;
  return result;
}

uint64_t sub_1B7B28788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  result = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1B7B287EC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    if (count)
    {
      v9 = count;
      for (i = 0; i != v9; ++i)
      {
        v11 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7, v8);
        v12 = xpc_array_get_value(v4, i);
        if (v12)
        {
          v13 = v12;
          v14 = IMGetXPCStringFromDictionary();
          if (v14)
          {
            CFDictionarySetValue(v11, @"chatGUID", v14);
          }

          v15 = IMGetXPCStringFromDictionary();
          if (v15)
          {
            CFDictionarySetValue(v11, @"displayName", v15);
          }

          v16 = xpc_dictionary_get_value(v13, "handles");
          if (v16)
          {
            v17 = v16;
            Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
            if (xpc_array_get_count(v17))
            {
              v19 = 0;
              do
              {
                v20 = xpc_array_get_value(v17, v19);
                v21 = _IMDCopyIMDHandleRecordFromXPCObjectClient(v20);
                if (v21)
                {
                  v22 = v21;
                  CFArrayAppendValue(Mutable, v21);
                  CFRelease(v22);
                }

                ++v19;
              }

              while (v19 < xpc_array_get_count(v17));
            }

            if (Mutable)
            {
              CFDictionarySetValue(v11, @"handles", Mutable);
              CFRelease(Mutable);
            }
          }

          CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v11);
        }
      }
    }
  }
}

uint64_t IMDChatGetMessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles(void *a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf[0]) = 138412546;
      *(buf + 4) = a1;
      WORD2(buf[1]) = 2112;
      *(&buf[1] + 6) = a2;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Trying to find last address handles/date from chatIds %@ and handles %@", buf, 0x16u);
    }
  }

  v8 = objc_msgSend_count(a1, v4, v5, v6);
  v12 = objc_msgSend_count(a2, v9, v10, v11);
  if (v8 && (v15 = v12) != 0)
  {
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AD60], v13, &stru_1F2FA9728, v14);
    if (v8 >= 2)
    {
      v19 = v8 - 1;
      do
      {
        objc_msgSend_appendString_(v18, v16, @"?, ", v17);
        --v19;
      }

      while (v19);
    }

    v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AD60], v16, &stru_1F2FA9728, v17);
    if (v15 >= 2)
    {
      v23 = v15 - 1;
      do
      {
        objc_msgSend_appendString_(v22, v20, @"?, ", v21);
        --v23;
      }

      while (v23);
    }

    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v26 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v24, @"select max(cm.message_date),last_addressed_handle from (select * from chat where chat_identifier in (%@?) AND style=45 and service_name=? and last_addressed_handle in (%@?)) c INNER JOIN chat_message_join cm ON c.ROWID=cm.chat_id;", v25, v18, v22);
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf[0]) = 138412290;
          *(buf + 4) = v26;
          _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "GetMessageDateAndLastAddressedHandle: running with query %@", buf, 0xCu);
        }
      }

      memset(v55, 0, sizeof(v55));
      memset(buf, 0, sizeof(buf));
      IMDSqlOperationInitWithSharedCSDBDatabase(buf);
      _IMDSqlOperationBeginQuery(buf, v26);
      IMDSqlStatementBindTextFromArrayOfCFStrings(v55, a1);
      IMDSqlStatementBindTextFromCFString(v55, *MEMORY[0x1E69A7AE0]);
      IMDSqlStatementBindTextFromArrayOfCFStrings(v55, a2);
      if (IMDSqlOperationHasRows(buf))
      {
        Row = IMDSqlStatementGetRow(v55);
        v31 = Row;
        if (Row)
        {
          if (objc_msgSend_objectForKeyedSubscript_(Row, v29, @"last_addressed_handle", v30))
          {
            v34 = v50[3];
            v35 = objc_msgSend_objectForKeyedSubscript_(v31, v32, @"last_addressed_handle", v33);
            CFDictionarySetValue(v34, @"handle", v35);
            if (objc_msgSend_objectForKeyedSubscript_(v31, v36, @"max(cm.message_date)", v37))
            {
              v40 = v50[3];
              v41 = objc_msgSend_objectForKeyedSubscript_(v31, v38, @"max(cm.message_date)", v39);
              CFDictionarySetValue(v40, @"date", v41);
            }
          }
        }

        if (IMOSLoggingEnabled())
        {
          v42 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            v43 = v50[3];
            *v53 = 138412290;
            *&v53[4] = v43;
            _os_log_impl(&dword_1B7AD5000, v42, OS_LOG_TYPE_INFO, "GetMessageDateAndLastAddressedHandle: found results from db %@", v53, 0xCu);
          }
        }
      }

      IMDSqlOperationFinishQuery(buf);
      *v53 = 0;
      IMDSqlOperationRelease(buf, v53);
      if (*v53)
      {
        v44 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CEDE40();
        }
      }
    }

    else
    {
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = sub_1B7B28E7C;
      v48[3] = &unk_1E7CB6838;
      v48[4] = &v49;
      __syncXPCIMDChatGetMessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles_IPCAction(v48, a1, a2);
    }

    v46 = v50[3];
    _Block_object_dispose(&v49, 8);
  }

  else
  {
    v45 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEDEB0();
    }

    return 0;
  }

  return v46;
}

void sub_1B7B28E7C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "dictionary_result");
  if (value)
  {
    v4 = value;
    v5 = IMGetXPCStringFromDictionary();
    int64 = xpc_dictionary_get_int64(v4, "date");
    if (v5)
    {
      CFDictionarySetValue(*(*(*(a1 + 32) + 8) + 24), @"handle", v5);
    }

    if (int64)
    {
      v9 = *(*(*(a1 + 32) + 8) + 24);
      v10 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v6, int64, v7);

      CFDictionarySetValue(v9, @"date", v10);
    }
  }
}

id IMDChatRowIDsMostRecentByLastMessageWithLimit(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!IMDIsRunningInDatabaseServerProcess())
  {
    return 0;
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  IMDSqlOperationInitWithSharedCSDBDatabase(v28);
  MessageDate = objc_msgSend_chatRowIDsSortedByLastMessageDate(IMDChatQueryStrings, v3, v4, v5);
  _IMDSqlOperationBeginQuery(v28, MessageDate);
  if (IMDSqlOperationHasRows(v28))
  {
    v7 = 0;
    v8 = MEMORY[0x1E695E118];
    do
    {
      Row = IMDSqlStatementGetRow(v29);
      v12 = Row;
      if (Row && objc_msgSend_objectForKeyedSubscript_(Row, v10, @"chat_id", v11))
      {
        v13 = objc_alloc(MEMORY[0x1E695DF20]);
        v17 = objc_msgSend_objectForKeyedSubscript_(v12, v14, @"max(message_date)", v15);
        v19 = MEMORY[0x1E695E110];
        if (v7 < a1)
        {
          v19 = v8;
        }

        v20 = objc_msgSend_initWithObjectsAndKeys_(v13, v16, v17, v18, @"d", v19, @"l", 0);
        v23 = objc_msgSend_objectForKeyedSubscript_(v12, v21, @"chat_id", v22);
        objc_msgSend_setObject_forKey_(v2, v24, v20, v23);
      }

      ++v7;
    }

    while (IMDSqlOperationHasRows(v28));
  }

  IMDSqlOperationFinishQuery(v28);
  v27 = 0;
  IMDSqlOperationRelease(v28, &v27);
  if (v27)
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = v27;
        _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "Unable to find most recent ChatRow IDs from chat_message_join error: %@", buf, 0xCu);
      }
    }
  }

  return v2;
}

void IMDChatRecordCopyAllActiveChatsProgressivelyWithLimitAndBlock(int64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = IMDIsRunningInDatabaseServerProcess();
  if (a2 && (v4 & 1) == 0)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7B29308;
    v7[3] = &unk_1E7CB74A8;
    v7[4] = a2;
    v7[5] = &v8;
    __syncXPCIMDChatRecordCopyAllActiveChatsProgressivelyWithLimit_IPCAction(v7, a1);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = v9[3];
        *buf = 134217984;
        v13 = v6;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Copying active chats progressively: total number copied was %ld", buf, 0xCu);
      }
    }

    _Block_object_dispose(&v8, 8);
  }
}

void sub_1B7B29308(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], count, MEMORY[0x1E695E9C0]);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B294B4;
    applier[3] = &unk_1E7CB7480;
    applier[4] = *(a1 + 40);
    applier[5] = Mutable;
    xpc_array_apply(v4, applier);
    v7 = CFArrayGetCount(Mutable);
    if (v7 >= 1)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = *(a1 + 32);
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
        (*(v10 + 16))(v10, ValueAtIndex);
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Received empty batch in IMDChatRecordCopyAllActiveChatsProgressivelyWithLimitAndBlock", v13, 2u);
    }
  }
}

uint64_t sub_1B7B294B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = _IMDCopyIMDChatRecordFromXPCObjectClient(a3);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 40);
    ++*(*(*(a1 + 32) + 8) + 24);
    CFArrayAppendValue(v8, v7);
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

void IMDChatRecordCopyAllActiveChatsWithLimitAndBlock(int64_t a1, uint64_t a2)
{
  if ((IMDIsRunningInDatabaseServerProcess() & 1) == 0)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7B296BC;
    v9[3] = &unk_1E7CB74D0;
    v9[4] = &v10;
    v9[5] = &v14;
    __syncXPCIMDChatRecordCopyAllActiveChatsWithLimit_IPCAction(v9, a1);
    if (v11[3])
    {
      v4 = 0;
      while (1)
      {
        v5 = objc_autoreleasePoolPush();
        v6 = *(v15[3] + 8 * v4);
        v7 = _IMDCopyIMDChatRecordFromXPCObjectClient(v6);
        xpc_release(v6);
        if (a2)
        {
          if (v7)
          {
            break;
          }
        }

        if (v7)
        {
          goto LABEL_8;
        }

LABEL_9:
        objc_autoreleasePoolPop(v5);
        if (++v4 >= v11[3])
        {
          goto LABEL_10;
        }
      }

      (*(a2 + 16))(a2, v7);
LABEL_8:
      CFRelease(v7);
      goto LABEL_9;
    }

LABEL_10:
    v8 = v15[3];
    if (v8)
    {
      free(v8);
    }

    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(&v14, 8);
  }
}

void sub_1B7B29690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

xpc_object_t sub_1B7B296BC(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    v4 = result;
    *(*(*(a1 + 32) + 8) + 24) = xpc_array_get_count(result);
    *(*(*(a1 + 40) + 8) + 24) = malloc_type_malloc(8 * *(*(*(a1 + 32) + 8) + 24), 0x80040B8603338uLL);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B29798;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 40);
    return xpc_array_apply(v4, applier);
  }

  return result;
}

uint64_t sub_1B7B29798(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  xpc_retain(object);
  *(*(*(*(a1 + 32) + 8) + 24) + 8 * a2) = object;
  return 1;
}

void *sub_1B7B297E4(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDChatRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDChatRecordCopyChatForGUIDWithDisplayNameHiddenIfUnknown(const __CFString *a1, char a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  if (!CFStringGetLength(a1))
  {
    return 0;
  }

  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5, v6);
  if (objc_msgSend_isOneChatEnabled(v7, v8, v9, v10))
  {
    v3 = IMAnyServiceGUIDFromLegacyChatGUID();
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v14 = objc_msgSend_copyChatForGUIDQuery(IMDChatQueryStrings, v11, v12, v13);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1B7B299A4;
    v18[3] = &unk_1E7CB74F8;
    v18[4] = &v20;
    v18[5] = v3;
    v19 = a2;
    _IMDPerformLockedStatementBlockWithQuery(v14, v18);
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B7B29AF8;
    v17[3] = &unk_1E7CB6838;
    v17[4] = &v20;
    __syncXPCIMDChatRecordCopyChatForGUID_IPCAction(v17, v3);
  }

  v15 = v21[3];
  _Block_object_dispose(&v20, 8);
  return v15;
}

void sub_1B7B299A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = CSDBSqliteBindTextFromCFString();
  sub_1B7AE0D64(v5, v6, v7, v8);
  v9 = CSDBRecordStoreProcessStatement();
  if (v9)
  {
    v10 = v9;
    if (CFArrayGetCount(v9))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, 0);
      ID = CSDBRecordGetID();
      v13 = *MEMORY[0x1E695E480];
      *(*(*(a1 + 32) + 8) + 24) = IMDChatRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
      if (*(a1 + 48) == 1)
      {
        v14 = IMDChatRecordCopyHandles(*(*(*(a1 + 32) + 8) + 24));
        Property = j__CSDBRecordGetProperty(ValueAtIndex, 13);
        shouldDisplayGroupNameAndPhotoWith_handles = objc_msgSend_shouldDisplayGroupNameAndPhotoWith_handles_(_TtC14IMDPersistence37IMDChatQueriesGroupNameAndPhotoHelper, v16, Property, v14);

        if ((shouldDisplayGroupNameAndPhotoWith_handles & 1) == 0)
        {
          j__CSDBRecordSetProperty(ValueAtIndex, 11, 0);
          *(*(*(a1 + 32) + 8) + 24) = IMDChatRecordCreateFromRecordIDUnlocked(v13, ID);
        }
      }
    }

    CFRelease(v10);
  }
}

void *sub_1B7B29AF8(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDChatRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

int64_t IMDChatRecordCopyChatForMessageID(int64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = sub_1B7B29C74;
      v4[3] = &unk_1E7CB7520;
      v4[4] = &v5;
      v4[5] = v1;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE ROWID = (SELECT chat_id from chat_message_join WHERE message_id = ?)", v4);
      CFRelease(@"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE ROWID = (SELECT chat_id from chat_message_join WHERE message_id = ?)");
    }

    else
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = sub_1B7B29D30;
      v3[3] = &unk_1E7CB6838;
      v3[4] = &v5;
      __syncXPCIMDChatRecordCopyChatForMessageID_IPCAction(v3, v1);
    }

    v1 = v6[3];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

void sub_1B7B29C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = CSDBSqliteBindInt64();
  sub_1B7AE0D64(v5, v6, v7, v8);
  v9 = CSDBRecordStoreProcessStatement();
  if (v9)
  {
    v10 = v9;
    if (CFArrayGetCount(v9))
    {
      CFArrayGetValueAtIndex(v10, 0);
      ID = CSDBRecordGetID();
      *(*(*(a1 + 32) + 8) + 24) = IMDChatRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
    }

    CFRelease(v10);
  }
}

void *sub_1B7B29D30(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDChatRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFStringRef IMDChatRecordCopyChatForMessageGUID(CFStringRef theString)
{
  v1 = theString;
  if (theString)
  {
    if (CFStringGetLength(theString))
    {
      v5 = 0;
      v6 = &v5;
      v7 = 0x2020000000;
      v8 = 0;
      if (IMDIsRunningInDatabaseServerProcess())
      {
        v4[0] = MEMORY[0x1E69E9820];
        v4[1] = 3221225472;
        v4[2] = sub_1B7B29EB4;
        v4[3] = &unk_1E7CB7520;
        v4[4] = &v5;
        v4[5] = v1;
        _IMDPerformLockedStatementBlockWithQuery(@"SELECT c.rowid FROM chat c INNER JOIN chat_message_join j   ON c.rowid = j.chat_id INNER JOIN message m   ON m.rowid = j.message_id WHERE m.guid = ?;", v4);
      }

      else
      {
        v3[0] = MEMORY[0x1E69E9820];
        v3[1] = 3221225472;
        v3[2] = sub_1B7B29F34;
        v3[3] = &unk_1E7CB6838;
        v3[4] = &v5;
        __syncXPCIMDChatRecordCopyChatForMessageGUID_IPCAction(v3, v1);
      }

      v1 = v6[3];
      _Block_object_dispose(&v5, 8);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1B7B29EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  result = CSDBSqliteStep();
  if (result)
  {
    v6 = *MEMORY[0x1E695E480];
    do
    {
      v7 = CSDBSqliteStatementInteger64ResultColumn();
      *(*(*(a1 + 32) + 8) + 24) = IMDChatRecordCreateFromRecordIDUnlocked(v6, v7);
      result = CSDBSqliteStep();
    }

    while ((result & 1) != 0);
  }

  return result;
}

void *sub_1B7B29F34(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDChatRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFStringRef IMDChatRecordCopyChatForGUIDUnlocked(CFStringRef theString)
{
  v1 = theString;
  if (theString)
  {
    if (CFStringGetLength(theString))
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x2020000000;
      v11 = 0;
      v5 = objc_msgSend_copyChatForGUIDUnlockedQuery(IMDChatQueryStrings, v2, v3, v4);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1B7B2A060;
      v7[3] = &unk_1E7CB7520;
      v7[4] = &v8;
      v7[5] = v1;
      _IMDPerformLockedStatementBlockWithQuery(v5, v7);

      v1 = v9[3];
      _Block_object_dispose(&v8, 8);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void sub_1B7B2A048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B2A060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = CSDBSqliteBindTextFromCFString();
  sub_1B7AE0D64(v5, v6, v7, v8);
  v9 = CSDBRecordStoreProcessStatement();
  if (v9)
  {
    v10 = v9;
    if (CFArrayGetCount(v9))
    {
      CFArrayGetValueAtIndex(v10, 0);
      ID = CSDBRecordGetID();
      *(*(*(a1 + 32) + 8) + 24) = IMDChatRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
    }

    CFRelease(v10);
  }

  else
  {
    v12 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 40);
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Did not get results for chat guid %@", &v14, 0xCu);
    }
  }
}

uint64_t IMDChatRecordCopyChatsWithHandleOnService(const __CFString *a1, const __CFString *a2)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (!a1 || !CFStringGetLength(a1))
  {
    v12 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v13 = "No handle provided to IMDChatRecordCopyChatsWithHandleOnService";
LABEL_14:
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, v13, buf, 2u);
    }

LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  if (!a2 || !CFStringGetLength(a2))
  {
    v12 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v13 = "No service provided to IMDChatRecordCopyChatsWithHandleOnService";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5, v6);
    if (objc_msgSend_isOneChatEnabled(v7, v8, v9, v10))
    {
      v11 = @"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE    chat_identifier = ? ORDER BY chat.ROWID ASC;";
    }

    else
    {
      v11 = @"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE    chat_identifier = ? AND    service_name = ? ORDER BY chat.ROWID ASC;";
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B7B2A3B0;
    v17[3] = &unk_1E7CB7548;
    v17[5] = a1;
    v17[6] = a2;
    v17[4] = &v19;
    _IMDPerformLockedStatementBlockWithQuery(v11, v17);
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1B7B2A464;
    v16[3] = &unk_1E7CB6838;
    v16[4] = &v19;
    __syncXPCIMDChatRecordCopyChatsWithHandleOnService_IPCAction(v16, a1, a2);
  }

  v14 = v20[3];
LABEL_16:
  _Block_object_dispose(&v19, 8);
  return v14;
}

void sub_1B7B2A3B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  v8 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6, v7);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v8, v9, v10, v11);
  if ((isOneChatEnabled & 1) == 0)
  {
    isOneChatEnabled = CSDBSqliteBindTextFromCFString();
  }

  sub_1B7AE0D64(isOneChatEnabled, v13, v14, v15);
  v16 = CSDBRecordStoreProcessStatement();
  *(*(a1[4] + 8) + 24) = _IMDChatRecordCopyChatsFromRecords(v16);
  if (v16)
  {

    CFRelease(v16);
  }
}

xpc_object_t sub_1B7B2A464(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    result = _IMDChatRecordCopyChatsFromXPCArray(result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t IMDChatRecordCopyChatsWithIdentifierOnService(const __CFString *a1, const __CFString *a2)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (!a1 || !CFStringGetLength(a1))
  {
    v12 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v13 = "No identifier provided to IMDChatRecordCopyChatsWithIdentifierOnService";
LABEL_14:
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, v13, buf, 2u);
    }

LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  if (!a2 || !CFStringGetLength(a2))
  {
    v12 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v13 = "No service provided to IMDChatRecordCopyChatsWithIdentifierOnService";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5, v6);
    if (objc_msgSend_isOneChatEnabled(v7, v8, v9, v10))
    {
      v11 = @"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE    chat_identifier = ? ORDER BY chat.ROWID ASC;";
    }

    else
    {
      v11 = @"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE    chat_identifier = ? AND    service_name = ? ORDER BY chat.ROWID ASC;";
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B7B2A6A4;
    v17[3] = &unk_1E7CB7548;
    v17[5] = a1;
    v17[6] = a2;
    v17[4] = &v19;
    _IMDPerformLockedStatementBlockWithQuery(v11, v17);
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1B7B2A758;
    v16[3] = &unk_1E7CB6838;
    v16[4] = &v19;
    __syncXPCIMDChatRecordCopyChatsWithIdentifierOnService_IPCAction(v16, a1, a2);
  }

  v14 = v20[3];
LABEL_16:
  _Block_object_dispose(&v19, 8);
  return v14;
}

void sub_1B7B2A6A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  v8 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6, v7);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v8, v9, v10, v11);
  if ((isOneChatEnabled & 1) == 0)
  {
    isOneChatEnabled = CSDBSqliteBindTextFromCFString();
  }

  sub_1B7AE0D64(isOneChatEnabled, v13, v14, v15);
  v16 = CSDBRecordStoreProcessStatement();
  *(*(a1[4] + 8) + 24) = _IMDChatRecordCopyChatsFromRecords(v16);
  if (v16)
  {

    CFRelease(v16);
  }
}

xpc_object_t sub_1B7B2A758(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    result = _IMDChatRecordCopyChatsFromXPCArray(result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t IMDChatRecordCopyChatsWithRoomnameOnService(const __CFString *a1, const __CFString *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (!a1 || !CFStringGetLength(a1))
  {
    v4 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "No roomname provided to IMDChatRecordCopyChatsWithRoomnameOnService";
LABEL_11:
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, v5, buf, 2u);
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  if (!a2 || !CFStringGetLength(a2))
  {
    v4 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "No service provided to IMDChatRecordCopyChatsWithRoomnameOnService";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7B2A978;
    v9[3] = &unk_1E7CB7548;
    v9[5] = a1;
    v9[6] = a2;
    v9[4] = &v11;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE    room_name = ? AND    service_name = ? ORDER BY chat.ROWID ASC;", v9);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7B2AA18;
    v8[3] = &unk_1E7CB6838;
    v8[4] = &v11;
    __syncXPCIMDChatRecordCopyChatsWithRoomnameOnService_IPCAction(v8, a1, a2);
  }

  v6 = v12[3];
LABEL_13:
  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_1B7B2A978(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  v5 = CSDBSqliteBindTextFromCFString();
  sub_1B7AE0D64(v5, v6, v7, v8);
  v9 = CSDBRecordStoreProcessStatement();
  *(*(a1[4] + 8) + 24) = _IMDChatRecordCopyChatsFromRecords(v9);
  if (v9)
  {

    CFRelease(v9);
  }
}

xpc_object_t sub_1B7B2AA18(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    result = _IMDChatRecordCopyChatsFromXPCArray(result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t IMDChatRecordCopyChatsWithGroupID(const __CFString *a1)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  if (a1 && CFStringGetLength(a1))
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v5 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v2, v3, v4);
      if (objc_msgSend_isMissingMessagesEnabled(v5, v6, v7, v8))
      {
        v12 = objc_msgSend_copyChatsWithIdentifier(IMDChatQueryStrings, v9, v10, v11);
      }

      else
      {
        v12 = @"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE    group_id = ? ORDER BY chat.ROWID ASC;";
      }

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_1B7B2AC38;
      v24[3] = &unk_1E7CB7520;
      v24[4] = &v26;
      v24[5] = a1;
      _IMDPerformLockedStatementBlockWithQuery(v12, v24);
      v18 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v15, v16, v17);
      if (objc_msgSend_isMissingMessagesEnabled(v18, v19, v20, v21))
      {
        CFRelease(v12);
      }
    }

    else
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_1B7B2ACCC;
      v23[3] = &unk_1E7CB6838;
      v23[4] = &v26;
      __syncXPCIMDChatRecordCopyChatsWithGroupID_IPCAction(v23, a1);
    }

    v14 = v27[3];
  }

  else
  {
    v13 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "No group ID provided to IMDChatRecordCopyChatsWithGroupID", buf, 2u);
    }

    v14 = 0;
  }

  _Block_object_dispose(&v26, 8);
  return v14;
}

void sub_1B7B2AC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = CSDBSqliteBindTextFromCFString();
  sub_1B7AE0D64(v5, v6, v7, v8);
  v9 = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 32) + 8) + 24) = _IMDChatRecordCopyChatsFromRecords(v9);
  if (v9)
  {

    CFRelease(v9);
  }
}

xpc_object_t sub_1B7B2ACCC(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    result = _IMDChatRecordCopyChatsFromXPCArray(result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t IMDChatRecordCopyNewestChatForGroupIDOnService(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  if (!a1 || (v3 = a3, !CFStringGetLength(a1)))
  {
    v25 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v26 = "No roomname provided to IMDChatRecordCopyNewestChatForGroupIDOnService";
LABEL_16:
      _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, v26, buf, 2u);
    }

    return 0;
  }

  if (!a2 || !CFStringGetLength(a2))
  {
    v25 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v26 = "No service provided to IMDChatRecordCopyNewestChatForGroupIDOnService";
      goto LABEL_16;
    }

    return 0;
  }

  *buf = 0;
  v39 = buf;
  v40 = 0x2020000000;
  v41 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (v3)
    {
      v9 = @"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat LEFT OUTER JOIN chat_message_join on    chat_id == chat.rowid WHERE    original_group_id = ? AND    service_name = ? ORDER BY    chat_message_join.message_date DESC LIMIT    1;";
    }

    else
    {
      v9 = @"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat LEFT OUTER JOIN chat_message_join on    chat_id == chat.rowid WHERE    group_id = ? AND    service_name = ? ORDER BY    chat_message_join.message_date DESC LIMIT    1;";
    }

    v10 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v6, v7, v8);
    if (objc_msgSend_isMissingMessagesEnabled(v10, v11, v12, v13))
    {
      v17 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v14, v15, v16);
      if (objc_msgSend_isOneChatEnabled(v17, v18, v19, v20))
      {
        v24 = objc_msgSend_copyChatsWithIdentifier(IMDChatQueryStrings, v21, v22, v23);
      }

      else
      {
        v24 = objc_msgSend_copyChatsWithIdentiferAndDomain(IMDChatQueryStrings, v21, v22, v23);
      }

      v9 = v24;
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = sub_1B7B2AF60;
    v37[3] = &unk_1E7CB7548;
    v37[5] = a1;
    v37[6] = a2;
    v37[4] = buf;
    _IMDPerformLockedStatementBlockWithQuery(v9, v37);
    v32 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v29, v30, v31);
    if (objc_msgSend_isMissingMessagesEnabled(v32, v33, v34, v35))
    {
      CFRelease(v9);
    }
  }

  else
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = sub_1B7B2B06C;
    v36[3] = &unk_1E7CB6838;
    v36[4] = buf;
    __syncXPCIMDChatRecordCopyNewestChatForGroupIDOnService_IPCAction(v36, a1, a2);
  }

  v27 = *(v39 + 3);
  _Block_object_dispose(buf, 8);
  return v27;
}

void sub_1B7B2AF60(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, a3, a4);
  isMissingMessagesEnabled = objc_msgSend_isMissingMessagesEnabled(v5, v6, v7, v8);
  CSDBSqliteBindTextFromCFString();
  if (isMissingMessagesEnabled)
  {
    v13 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v10, v11, v12);
    isOneChatEnabled = objc_msgSend_isOneChatEnabled(v13, v14, v15, v16);
    if (isOneChatEnabled)
    {
      goto LABEL_5;
    }

    IMChatLookupDomainForServiceName();
  }

  isOneChatEnabled = CSDBSqliteBindTextFromCFString();
LABEL_5:
  sub_1B7AE0D64(isOneChatEnabled, v18, v19, v20);
  v21 = CSDBRecordStoreProcessStatement();
  if (v21)
  {
    v22 = v21;
    if (CFArrayGetCount(v21))
    {
      CFArrayGetValueAtIndex(v22, 0);
      ID = CSDBRecordGetID();
      *(*(a1[4] + 8) + 24) = IMDChatRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
    }

    CFRelease(v22);
  }
}

void *sub_1B7B2B06C(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDChatRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void IMDChatRecordDeleteChatForGUID_Fast(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || !objc_msgSend_length(a1, a2, a3, a4))
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEDEF0(v8, v5, v6, v7);
      if (!a1)
      {
        return;
      }
    }

    else if (!a1)
    {
      return;
    }
  }

  if (objc_msgSend_length(a1, v5, v6, v7))
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1B7B2B174;
      v9[3] = &unk_1E7CB7570;
      v9[4] = a1;
      IMDRunSqlOperation(v9);
    }

    else
    {
      __syncXPCIMDChatRecordDeleteChatForGUID_IPCAction(0, a1);
    }
  }
}

void sub_1B7B2B174(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7B2B224;
  v4[3] = &unk_1E7CB6FD0;
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  _IMDSqlOperationRunQuery(a2, @"DELETE FROM chat WHERE guid = ?;", v4, 0);
  if (!a2[21])
  {
    IMDCoreSpotlightDeleteChatGUID(*(a1 + 32), 1006);
    IMDCoreSpotlightScheduleUpdateForDeletedMessages(1006);
  }
}

void IMDChatRecordDeleteChatForGUID(__CFString *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1 && CFStringGetLength(a1))
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      IMDCoreSpotlightDeleteChatGUID(a1, 1006);
      IMDCoreSpotlightScheduleUpdateForDeletedMessages(1006);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1B7B2B49C;
      v19[3] = &unk_1E7CB7590;
      v19[4] = a1;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE guid = ? ORDER BY chat.ROWID ASC;", v19);
      v2 = IMSharedHelperExternalLocationForFile();
      v6 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v3, v4, v5, 0);
      if (objc_msgSend_fileExistsAtPath_(v6, v7, v2, v8))
      {
        v12 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v9, v10, v11);
        v14 = objc_msgSend_removeItemAtPath_error_(v12, v13, v2, &v18);
        v15 = IMOSLoggingEnabled();
        if (v14)
        {
          if (v15)
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v21 = v2;
              v17 = "  => Successfully deleted item at path: %@ ";
LABEL_18:
              _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, v17, buf, 0xCu);
            }
          }
        }

        else if (v15)
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v21 = v2;
            v17 = "  => failed to remove item at path: %@ ";
            goto LABEL_18;
          }
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v21 = v2;
          v17 = "   => file doesn't exist at path: %@";
          goto LABEL_18;
        }
      }
    }

    else
    {

      __syncXPCIMDChatRecordDeleteChatForGUID_IPCAction(0, a1);
    }
  }
}

void sub_1B7B2B47C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7B2B450);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B7B2B49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = CSDBSqliteBindTextFromCFString();
  sub_1B7AE0D64(v4, v5, v6, v7);
  v8 = CSDBRecordStoreProcessStatement();
  Count = CFArrayGetCount(v8);
  v10 = Count;
  if (Count < 2)
  {
    if (Count != 1)
    {
      goto LABEL_15;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v35[0] = 67109120;
      v35[1] = v10;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Query for GUID yields %d results, deleting all\n", v35, 8u);
    }
  }

  v12 = 0;
  v13 = *MEMORY[0x1E695E480];
  do
  {
    CFArrayGetValueAtIndex(v8, v12);
    ID = CSDBRecordGetID();
    v15 = IMDChatRecordCreateFromRecordIDUnlocked(v13, ID);
    v16 = v15;
    if (v15)
    {
      v17 = IMDChatRecordCopyHandles(v15);
      v21 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v18, v19, v20);
      if (objc_msgSend_isSpotlightRefactorEnabled(v21, v22, v23, v24))
      {
        v28 = objc_msgSend_sharedController(IMDCoreRecentsController, v25, v26, v27);
        v31 = objc_msgSend_arrayByApplyingSelector_(v17, v29, sel_canonicalizedURIString, v30);
        objc_msgSend_deleteRecentsWithHandleIDs_(v28, v32, v31, v33);
      }

      else
      {
        sub_1B7B9BB0C(v17);
      }

      if (v17)
      {
        CFRelease(v17);
      }

      CFRelease(v16);
    }

    CSDBRecordStoreRemoveRecord();
    ++v12;
  }

  while ((v10 & 0x7FFFFFFF) != v12);
LABEL_15:
  if (v8)
  {
    CFRelease(v8);
  }

  return CSDBRecordSaveStore();
}

void IMDChatRecordAssociateMessageWithGUIDToChatWithGUIDIfNeeded(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1B7B2B824;
    v5[3] = &unk_1E7CB75B0;
    v5[4] = a2;
    v5[5] = a1;
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v7 = a2;
        v8 = 2112;
        v9 = a1;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEBUG, "IMDChatRecordAssociateMessageWithGUIDToChatWithGUIDIfNeeded [ChatGUID: %@] [MessageGUID: %@]", buf, 0x16u);
      }
    }

    _IMDPerformBlock(v5);
  }

  else
  {

    __syncXPCIMDChatRecordAssociateMessageWithGUIDToChatWithGUIDIfNeeded_IPCAction(0, a1, a2);
  }
}

void sub_1B7B2B824(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = IMDChatRecordCopyChatForGUIDUnlocked(*(a1 + 32));
  v3 = IMDMessageRecordCopyMessageForGUIDUnlocked(*(a1 + 40));
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      IMDChatRecordAddMessageIfNeededUnlocked(v2, v3);
      CFRelease(v2);
LABEL_10:
      CFRelease(v4);
      return;
    }
  }

  else
  {
    v5 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Unable to associate message with chat, the chat is NULL (chat guid: %@)", &v9, 0xCu);
    }

    if (v4)
    {
      goto LABEL_10;
    }
  }

  v7 = IMDatabaseMessageEventLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Unable to associate message with chat, the message is NULL (message guid: %@)", &v9, 0xCu);
  }

  v4 = v2;
  if (v2)
  {
    goto LABEL_10;
  }
}

void IMDChatRecordDisassociateMessageWithGUIDFromChatWithGUIDIfNeeded(const __CFString *a1, const __CFString *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412546;
      v11 = a2;
      v12 = 2112;
      v13 = a1;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEBUG, "IMDChatRecordDisassociateMessageWithGUIDFromChatWithGUIDIfNeeded [ChatGUID: %@] [MessageGUID: %@]", &v10, 0x16u);
    }
  }

  if (!IMDIsRunningInDatabaseServerProcess())
  {
    __syncXPCIMDChatRecordDisassociateMessageWithGUIDFromChatWithGUIDIfNeeded_IPCAction(0, a1, a2);
    return;
  }

  v5 = IMDChatRecordCopyChatForGUIDWithDisplayNameHiddenIfUnknown(a2, 0);
  v6 = IMDMessageRecordCopyMessageForGUID(a1);
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      IMDChatRecordRemoveMessage(v5, v6);
      CFRelease(v5);
LABEL_12:
      CFRelease(v7);
      return;
    }
  }

  else
  {
    v8 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Unable to disassociate message from chat, the chat is NULL.", &v10, 2u);
    }

    if (v7)
    {
      goto LABEL_12;
    }
  }

  v9 = IMDatabaseMessageEventLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Unable to disassociate message from chat, the message is NULL.", &v10, 2u);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

CFMutableArrayRef IMDChatRecordCopyChatGUIDsWithUnplayedAudioMessages()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v0 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEBUG, "IMDChatRecordCopyChatGUIDsWithUnplayedAudioMessages", buf, 2u);
      }
    }

    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    *buf = MEMORY[0x1E69E9820];
    v5 = 3221225472;
    v6 = sub_1B7B2DACC;
    v7 = &unk_1E7CB76E0;
    v8 = Mutable;
    _IMDPerformLockedDatabaseBlock(buf);
  }

  else
  {
    *buf = 0;
    v5 = buf;
    v6 = 0x2020000000;
    v7 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1B7B2BCDC;
    v3[3] = &unk_1E7CB6838;
    v3[4] = buf;
    __syncXPCIMDChatRecordCopyChatGUIDsWithUnplayedAudioMessages_IPCAction(v3);
    Mutable = *(v5 + 24);
    _Block_object_dispose(buf, 8);
  }

  return Mutable;
}

void sub_1B7B2BCDC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    if (count)
    {
      v6 = count;
      for (i = 0; i != v6; ++i)
      {
        string = xpc_array_get_string(v4, i);
        if (string)
        {
          v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v9, string, v10);
          if (v11)
          {
            CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v11);
          }
        }
      }
    }
  }
}

void IMDChatRecordSetIsFiltered(const __CFString *a1, uint64_t a2)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v4 = IMDChatRecordCopyChatForGUIDWithDisplayNameHiddenIfUnknown(a1, 0);
    v5 = IMDChatRecordCopyChatRecordUnlocked(v4[2]);
    if (v5)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1B7B2BE94;
      v8[3] = &unk_1E7CB75B0;
      v8[4] = v5;
      v8[5] = a2;
      _IMDPerformBlock(v8);
    }

    else
    {
      v6 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Unable to update filter flag, the chat record is NULL.", v7, 2u);
      }
    }

    CFRelease(v4);
  }

  else
  {

    __syncXPCIMDChatRecordSetIsFiltered_IPCAction(0, a1);
  }
}

void sub_1B7B2BE94(uint64_t a1)
{
  j__CSDBRecordSetProperty(*(a1 + 32), 13, *(a1 + 40));
  v2 = *(a1 + 32);

  IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v2);
}

void IMDChatRecordDeleteEmptyChats()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {

    IMDRunSqlOperation(&unk_1F2FA0050);
  }

  else
  {

    __syncXPCIMDChatRecordDeleteEmptyChats_IPCAction(0);
  }
}

void sub_1B7B2BF28(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_DEFAULT, "Deleting all empty chats.", &v7, 2u);
  }

  _IMDSqlOperationRunQuery(a2, @"DELETE FROM chat WHERE ((SELECT COUNT(*) FROM chat_message_join WHERE chat_id = chat.ROWID) == 0 AND (SELECT COUNT(*) FROM chat_recoverable_message_join WHERE chat_id = chat.ROWID) == 0);", &unk_1F2FA09B0, 0);
  if (a2[21])
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a2[21];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Error occured while deleting empty chats %@", &v7, 0xCu);
    }
  }

  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "Finished deleting all empty chats.", &v7, 2u);
  }
}

void IMDChatInsertIntoDeletedChatsTable(void *a1, void *a2, sqlite3_int64 a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = a2;
      *&buf[22] = 2048;
      *&buf[24] = a3;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Request to insert guid %@ recordID %@ timeStamp %lld", buf, 0x20u);
    }
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v19, 0, sizeof(v19));
    memset(buf, 0, sizeof(buf));
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    _IMDSqlOperationBeginQuery(buf, @"INSERT INTO sync_deleted_chats (guid, recordID, timestamp) VALUES (?, ?, ?);");
    IMDSqlStatementBindTextFromCFString(v19, a1);
    IMDSqlStatementBindTextFromCFString(v19, a2);
    IMDSqlStatementBindInt64(v19, a3);
    IMDSqlOperationFinishQuery(buf);
    v9 = 0;
    IMDSqlOperationRelease(buf, &v9);
    if (v9)
    {
      v7 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v10 = 138413058;
        v11 = a1;
        v12 = 2112;
        v13 = a2;
        v14 = 2048;
        v15 = a3;
        v16 = 2112;
        v17 = v9;
        _os_log_error_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_ERROR, "Unable to insert row (guid:%@ recordID: %@ timeStamp:%ld, error %@) into sync_deleted_chats Table", v10, 0x2Au);
      }
    }
  }

  else
  {
    __syncXPCInsertIntoDeletedChatsTable_IPCAction(0, a1, a2, a3);
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *&buf[4] = a1;
        *&buf[12] = 2112;
        *&buf[14] = a2;
        *&buf[22] = 2048;
        *&buf[24] = a3;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Returned from IMDP after inserting in synd deleted table guid %@ recordID %@ timeStamp %lld", buf, 0x20u);
      }
    }
  }
}

uint64_t IMDChatCopyChatRecordIDsAndGUIDsToDeleteWithLimit(int64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = a1;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Request to load deleted chat recordIDs with limit %lld", buf, 0xCu);
    }
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = sub_1B7AE1924;
  v20 = sub_1B7AE248C;
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v23 = 0u;
    memset(v24, 0, sizeof(v24));
    *buf = 0u;
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    _IMDSqlOperationBeginQuery(buf, @"select guid, recordID, timestamp from sync_deleted_chats where LENGTH(recordID) > 0;");
    while (IMDSqlOperationHasRows(buf))
    {
      Row = IMDSqlStatementGetRow(v24);
      if (Row)
      {
        objc_msgSend_addObject_(v17[5], v3, Row, v4);
      }
    }

    IMDSqlOperationFinishQuery(buf);
    v15 = 0;
    IMDSqlOperationRelease(buf, &v15);
    if (v15)
    {
      v11 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEDFA8();
      }
    }
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1B7B2C5F4;
    v14[3] = &unk_1E7CB6838;
    v14[4] = &v16;
    __syncXPCIMDChatRecordCopyChatRecordIDsAndGUIDsToDeleteFromCloudKitWithLimit_IPCAction(v14, a1);
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v10 = objc_msgSend_count(v17[5], v7, v8, v9);
        *buf = 134217984;
        *&buf[4] = v10;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Returned from DB call after loading messages to delete messages count %lu", buf, 0xCu);
      }
    }
  }

  v12 = v17[5];
  _Block_object_dispose(&v16, 8);
  return v12;
}

void sub_1B7B2C584(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1B7B2C53CLL);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(exc_buf);
}

xpc_object_t sub_1B7B2C5F4(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B2C688;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7B2C688(uint64_t a1, int a2, xpc_object_t xdict)
{
  v5 = MEMORY[0x1E696AEC0];
  string = xpc_dictionary_get_string(xdict, "guid");
  v8 = objc_msgSend_stringWithCString_encoding_(v5, v7, string, 4);
  v9 = MEMORY[0x1E696AEC0];
  v10 = xpc_dictionary_get_string(xdict, "recordID");
  v12 = objc_msgSend_stringWithCString_encoding_(v9, v11, v10, 4);
  int64 = xpc_dictionary_get_int64(xdict, "timeStamp");
  v14 = MEMORY[0x1E695DF20];
  v17 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v15, int64, v16);
  v20 = objc_msgSend_dictionaryWithObjectsAndKeys_(v14, v18, v8, v19, @"guid", v12, @"recordID", v17, @"timeStamp", 0);
  objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v21, v20, v22);
  return 1;
}

void IMDChatClearPendingDeleteChatsTable(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      LOWORD(v3[0]) = 0;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "Request to clear pending deletes from chat table", v3, 2u);
    }
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v3, 0, sizeof(v3));
    IMDSqlOperationInitWithSharedCSDBDatabase(v3);
    IMDSqlOperationExecuteQuery(v3, @"delete from sync_deleted_chats;", &unk_1F2FA09D0);
    IMDSqlOperationRelease(v3, 0);
  }

  else
  {
    __syncXPCIMDChatClearPendingDeleteChatsTable_IPCAction(0);
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        LOWORD(v3[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Returned from DB call after marking clearing all pending delete chats", v3, 2u);
      }
    }
  }
}

void sub_1B7B2C8C4(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "IMDChatClearPendingDeleteChatsTable cleared pending delete chat table", v2, 2u);
    }
  }
}

void IMDChatRemapMessagesWithErrorCodeToErrorCode(void *a1, sqlite3_int64 a2, sqlite3_int64 a3)
{
  v59 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2112;
      *&buf[24] = a1;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Request to reset messages with error %lld to error %lld on chatGUIDS %@", buf, 0x20u);
    }
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v8, &v51, v58, 16);
    if (v12)
    {
      v13 = *v52;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v52 != v13)
          {
            objc_enumerationMutation(a1);
          }

          v15 = IMDChatRecordCopyChatForGUIDWithDisplayNameHiddenIfUnknown(*(*(&v51 + 1) + 8 * i), 0);
          v18 = v15;
          if (v15)
          {
            v19 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v16, *(v15 + 16), v17);
            objc_msgSend_addObject_(v7, v20, v19, v21);
            CFRelease(v18);
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v16, &v51, v58, 16);
      }

      while (v12);
    }

    v22 = objc_msgSend_count(v7, v9, v10, v11);
    v23 = v22;
    if (v22)
    {
      if (v22 >= 2)
      {
        Mutable = CFStringCreateMutable(0, 0);
        v25 = Mutable;
        if (Mutable)
        {
          CFStringAppend(Mutable, CFSTR("UPDATE message SET error=? WHERE rowid IN (SELECT message_id FROM chat_message_join WHERE chat_id IN (?"));
          v26 = v23 - 1;
          do
          {
            CFStringAppend(v25, @", ?");
            --v26;
          }

          while (v26);
          CFStringAppend(v25, @") AND error=?"));
        }

        else
        {
          v42 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CEE018(v42, v43, v44, v45);
          }

          v25 = 0;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v28 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE0D4(v28, v29, v30, v31);
      }
    }

    CFRetain(@"UPDATE message SET error=? WHERE rowid IN (SELECT message_id FROM chat_message_join WHERE chat_id IN (?)) AND error=?");
    v25 = @"UPDATE message SET error=? WHERE rowid IN (SELECT message_id FROM chat_message_join WHERE chat_id IN (?)) AND error=?";
LABEL_26:
    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v25;
        _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, "GetMessageDateAndLastAddressedHandle: running with query %@", buf, 0xCu);
      }
    }

    memset(v57, 0, 144);
    memset(buf, 0, sizeof(buf));
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    _IMDSqlOperationBeginQuery(buf, v25);
    IMDSqlStatementBindInt64(v57, a3);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v33, &v47, v55, 16);
    if (v37)
    {
      v38 = *v48;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v48 != v38)
          {
            objc_enumerationMutation(v7);
          }

          v40 = objc_msgSend_integerValue(*(*(&v47 + 1) + 8 * j), v34, v35, v36);
          IMDSqlStatementBindInt64(v57, v40);
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v34, &v47, v55, 16);
      }

      while (v37);
    }

    IMDSqlStatementBindInt64(v57, a2);
    IMDSqlOperationFinishQuery(buf);
    v46 = 0;
    IMDSqlOperationRelease(buf, &v46);
    if (v25)
    {
      CFRelease(v25);
    }

    if (v46)
    {
      v41 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE1AC();
      }
    }

    return;
  }

  __syncXPCIMDChatRemapMessagesWithErrorCodeToErrorCode_IPCAction(0, a1, a2, a3);
  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "Returned from DB call after marking clearing all pending delete chats", buf, 2u);
    }
  }
}

void sub_1B7B2CE08(const __CFArray *a1)
{
  v60 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    for (i = 0; Count != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v54 = 0;
      v55 = 0;
      v52 = 0;
      v53 = 0;
      v50 = 0;
      v51 = 0;
      v48 = 0;
      v49 = 0;
      v47 = 0;
      v45 = 0;
      v46 = 0;
      v44 = 0;
      v43 = 0;
      v42 = 0;
      v41 = 0;
      v39 = 0;
      v40 = 0;
      v37 = 0;
      v38 = 0;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      v8 = objc_msgSend_previewGenerationState(ValueAtIndex, v5, v6, v7);
      _IMDAttachmentRecordBulkCopy(ValueAtIndex, &v55, &v54, &v53, &v52, &v51, &v50, &v49, &v48, &v47, &v46, &v45, &v44, &v43, &v42, &v41, &v40, &v39, &v38, &v37, &v36, &v35, &v34);
      if (v51)
      {
        v33 = 0;
        v12 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v9, v10, v11);
        if (objc_msgSend_fileExistsAtPath_(v12, v13, v51, v14))
        {
          v18 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v15, v16, v17);
          objc_msgSend_removeItemAtPath_error_(v18, v19, v51, &v33);
          v20 = v33 == 0;
          v21 = IMOSLoggingEnabled();
          if (v20)
          {
            if (v21)
            {
              v27 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v57 = v51;
                v23 = v27;
                v24 = "Removed attachment at path: %@";
LABEL_15:
                v25 = 12;
LABEL_16:
                _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, v24, buf, v25);
              }
            }
          }

          else if (v21)
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v57 = v51;
              v58 = 2112;
              v59 = v33;
              v23 = v22;
              v24 = "deleting attachment failed at path: %@: %@";
              v25 = 22;
              goto LABEL_16;
            }
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v57 = v51;
            v23 = v26;
            v24 = "No attachment to remove at path: %@";
            goto LABEL_15;
          }
        }
      }

      v29 = v40 != 1 || v48 != 0;
      v30 = IMOSLoggingEnabled();
      if (v29)
      {
        if (v30)
        {
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v57 = v55;
            _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Resetting downloadState for attachment guid: %@", buf, 0xCu);
          }
        }

        IMDAttachmentRecordBulkUpdate(ValueAtIndex, v55, v54, v53, v52, v51, v50, v49, 0, v47, v46, v45, v44, v43, v42, v41, 1, v39, v38, v37, v36, v35, v34, v8);
      }

      else if (v30)
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v57 = v55;
          _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, "Attachment already marked as needing download for guid: %@", buf, 0xCu);
        }
      }
    }
  }
}

void IMDChatRecordPurgeAttachments(const __CFString *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = a1;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Purging attachment files for chat guid: %@", buf, 0xCu);
    }
  }

  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], v2, v3, v4);
  v7 = IMDChatRecordCopyChatForGUIDWithDisplayNameHiddenIfUnknown(a1, 0);
  cf = v7;
  if (v7)
  {
    v8 = IMDChatRecordCopyMessagesWithLimit(v7, -1);
    v9 = v8;
    if (v8)
    {
      Count = CFArrayGetCount(v8);
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v38 = Count;
          _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Found %ld messages for chat", buf, 0xCu);
        }
      }

      if (Count >= 1)
      {
        v12 = 0;
        v13 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v13);
          v15 = ValueAtIndex;
          if (!ValueAtIndex)
          {
            if (IMOSLoggingEnabled())
            {
              v23 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                v38 = v13;
                _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, "Failed to load message at index: %ld", buf, 0xCu);
              }
            }

            goto LABEL_26;
          }

          v16 = IMDMessageRecordCopyGUIDForMessage(ValueAtIndex);
          objc_msgSend_addObject_(v6, v17, v16, v18);
          v19 = IMDMessageRecordCopyAttachments(v15);
          v20 = v19;
          if (v19)
          {
            v21 = CFArrayGetCount(v19);
            if (IMOSLoggingEnabled())
            {
              v22 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                *buf = 134218242;
                v38 = v21;
                v39 = 2112;
                v40 = v16;
                _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Found %ld attachments for message: %@", buf, 0x16u);
              }
            }

            sub_1B7B2CE08(v20);
            CFRelease(v20);
            v12 = (v12 + v21);
            if (!v16)
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v24 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v38 = v16;
                _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "Failed to load attachments for message: %@", buf, 0xCu);
              }
            }

            if (!v16)
            {
              goto LABEL_26;
            }
          }

          CFRelease(v16);
LABEL_26:
          if (Count == ++v13)
          {
            goto LABEL_36;
          }
        }
      }

      v12 = 0;
LABEL_36:
      CFRelease(v9);
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_40;
      }

      v30 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        goto LABEL_40;
      }

      *buf = 134218240;
      v38 = v12;
      v39 = 2048;
      v40 = Count;
      v27 = "Updated %lld attachments on %ld messages";
      v28 = v30;
      v29 = 22;
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_40;
      }

      v26 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        goto LABEL_40;
      }

      *buf = 138412290;
      v38 = a1;
      v27 = "No messages load for chat: %@";
      v28 = v26;
      v29 = 12;
    }

    _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, v27, buf, v29);
LABEL_40:
    CFRelease(cf);
    goto LABEL_41;
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = a1;
      _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "Chat record not loaded for chat: %@", buf, 0xCu);
      if (!v6)
      {
        return;
      }

      goto LABEL_42;
    }
  }

LABEL_41:
  if (!v6)
  {
    return;
  }

LABEL_42:
  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v35 = objc_msgSend_count(v6, v32, v33, v34);
      *buf = 134217984;
      v38 = v35;
      _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Reindexing %ld messages", buf, 0xCu);
    }
  }

  IMDCoreSpotlightReindexMessages(v6, 1007, 0);
}

void sub_1B7B2D798(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7B2D6E0);
  }

  _Unwind_Resume(a1);
}

void sub_1B7B2D80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  CSDBSqliteBindInt64();
  v5 = CSDBSqliteBindInt64();
  sub_1B7AE0D64(v5, v6, v7, v8);
  v9 = CSDBRecordStoreProcessStatement();
  v12 = _IMDChatRecordCopyChatsFromRecords(v9);
  if (v12)
  {
    objc_msgSend_addObjectsFromArray_(*(a1 + 32), v10, v12, v11);
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = 134217984;
        Count = CFArrayGetCount(v12);
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Found %llu recent chats for filter modes", &v14, 0xCu);
      }
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

void sub_1B7B2D958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  CSDBSqliteBindInt64();
  v5 = CSDBSqliteBindInt64();
  sub_1B7AE0D64(v5, v6, v7, v8);
  v9 = CSDBRecordStoreProcessStatement();
  v12 = _IMDChatRecordCopyChatsFromRecords(v9);
  if (v12)
  {
    objc_msgSend_addObjectsFromArray_(*(a1 + 32), v10, v12, v11);
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        Count = CFArrayGetCount(v12);
        v15 = *(a1 + 40);
        v16 = 134218752;
        v17 = Count;
        v18 = 2048;
        v19 = v15;
        v20 = 2048;
        v21 = v15 & 0xF;
        v22 = 2048;
        v23 = v15 >> 4;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Found %lld recent subclassified chats for filter mode %lld having action: %lld and subaction: %lld", &v16, 0x2Au);
      }
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

uint64_t sub_1B7B2DACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (CSDBSqliteDatabaseConnectionForReading())
  {
    v4 = CSDBSqliteConnectionStatementForSQL();
    if (v4)
    {
      v5 = v4;
      v6 = *(v4 + 8);
      if (v6)
      {
        if (sqlite3_step(v6) == 100)
        {
          v7 = *MEMORY[0x1E695E480];
          do
          {
            if (sqlite3_column_text(*(v5 + 8), 0))
            {
              v8 = sqlite3_column_text(*(v5 + 8), 0);
              v9 = CFStringCreateWithCString(v7, v8, 0x8000100u);
              if (v9)
              {
                v10 = v9;
                CFArrayAppendValue(*(a1 + 32), v9);
                CFRelease(v10);
              }
            }
          }

          while (sqlite3_step(*(v5 + 8)) == 100);
        }

        CSDBSqliteStatementReset();
      }
    }

    CSDBSqliteDatabaseReleaseSqliteConnection();
  }

  CFRelease(@"SELECT DISTINCT  c.guid FROM   chat c INNER JOIN chat_message_join cm ON   c.ROWID = cm.chat_id INNER JOIN message m ON   m.ROWID = cm.message_id WHERE   m.is_from_me = 0   AND m.is_played = 0   AND m.is_audio_message = 1   AND c.style = 45 ");
  CSDBRecordSaveStore();

  return CSDBRecordStoreInvalidateCachesWithStore();
}

void sub_1B7B2E25C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B2E280(uint64_t a1)
{
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Beginning iteration of _IMDCleanseOrphanedAttachmentsWithEnumerator attachments", v6, 2u);
  }

  Weak = objc_loadWeak((a1 + 48));
  return objc_msgSend__cleanseOrphanedAttachmentsWithEnumerator_atPath_(Weak, v4, *(a1 + 32), *(a1 + 40));
}

void sub_1B7B2E5B0(uint64_t a1, const char *a2)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A7058];
  v6[0] = @"rowID";
  v6[1] = v2;
  v7[0] = @"ROWID";
  v7[1] = @"id";
  v3 = *MEMORY[0x1E69A7060];
  v6[2] = *MEMORY[0x1E69A7070];
  v6[3] = v3;
  v7[2] = @"uncanonicalized_id";
  v7[3] = @"country";
  v6[4] = *MEMORY[0x1E69A7068];
  v7[4] = @"service";
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v7, v6, 5);
  v5 = qword_1EDBE5B18;
  qword_1EDBE5B18 = v4;
}

void sub_1B7B2E6E4()
{
  v0 = os_log_create("com.apple.Messages", "IMDCustomPluginNotificationContext");
  v1 = qword_1EBA53EF0;
  qword_1EBA53EF0 = v0;
}

id sub_1B7B2EA30()
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = @"chat_message_join";
  v4 = off_1E7CB7800;
  v5 = 15;
  do
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v0, @"CREATE TABLE IF NOT EXISTS %@ (%@);", v1, v3, *(v4 - 1));
    objc_msgSend_setObject_forKey_(v2, v7, v6, v3);
    v8 = *v4;
    v4 += 2;
    v3 = v8;
    --v5;
  }

  while (v5);

  return v2;
}

uint64_t IMDSelectAllTableNames(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_1B7AE1934;
  v12 = sub_1B7AE2498;
  v13 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7B2EBCC;
  v7[3] = &unk_1E7CB7948;
  v7[4] = &v8;
  v7[5] = a1;
  IMDRunSqlOperation(v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_1B7B2EBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B2EBCC(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7B2EC7C;
  v5[3] = &unk_1E7CB7920;
  v5[4] = *(a1 + 32);
  v5[5] = a2;
  _IMDSqlOperationRunQuery(a2, @"select name from sqlite_master where type = 'table'", 0, v5);
  result = IMDSqlOperationGetError(a2, *(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }

  return result;
}

BOOL sub_1B7B2EC7C(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v5[0] = v3;
      v5[1] = 3221225472;
      v5[2] = sub_1B7B2ED28;
      v5[3] = &unk_1E7CB78F8;
      v4 = *(a1 + 40);
      v5[4] = *(a1 + 32);
      IMDSqlOperationIterateRow(v4, v5);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7B2ED28(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  v3 = IMDStringFromSqlColumn(&v6);
  objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v4, v3, v5);
  CFRelease(v3);
}

uint64_t IMDRowCountForTable(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v21 = xmmword_1E7CB7968;
    v22 = *off_1E7CB7978;
    v23 = 101;
    v4 = MEMORY[0x1E696AEC0];
    v5 = IMFileLocationTrimFileName();
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, &stru_1F2FA9728, v7);
    v11 = objc_msgSend_stringWithFormat_(v4, v9, @"Unexpected nil '%@' in %s at %s:%d. %@", v10, @"tableName", "int64_t IMDRowCountForTable(NSString *, NSError **)", v5, 101, v8);
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

  *&v21 = 0;
  *(&v21 + 1) = &v21;
  *&v22 = 0x2020000000;
  *(&v22 + 1) = -1;
  v17 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"select count(*) from %@", a1);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1B7B2EF48;
  v20[3] = &unk_1E7CB7998;
  v20[4] = &v21;
  v20[5] = v17;
  v20[6] = a2;
  IMDRunSqlOperation(v20);
  CFRelease(v17);
  v18 = *(*(&v21 + 1) + 24);
  _Block_object_dispose(&v21, 8);
  return v18;
}

void sub_1B7B2EF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B2EF48(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7B2EFE0;
  v6[3] = &unk_1E7CB7920;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v6[5] = a2;
  _IMDSqlOperationRunQuery(a2, v4, 0, v6);
  return IMDSqlOperationGetError(a2, *(a1 + 48));
}

BOOL sub_1B7B2EFE0(uint64_t a1)
{
  for (result = IMDSqlOperationHasRows(*(a1 + 40)); result; result = IMDSqlOperationHasRows(v4))
  {
    IMDSqlStatementColumnByIndex((*(a1 + 40) + 32), 0, v5);
    v3 = IMDIntFromSqlColumn(v5);
    v4 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = v3;
  }

  return result;
}

void sub_1B7B2F048(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (!*(a1 + 8))
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = IMFileLocationTrimFileName();
      v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, &stru_1F2FA9728, v7);
      v11 = objc_msgSend_stringWithFormat_(v4, v9, @"Unexpected nil '%@' in %s at %s:%d. %@", v10, @"c", "void IMDCreateLegacyTables(IMDSqlOperation *)", v5, 135, v8);
      v12 = IMGetAssertionFailureHandler();
      if (v12)
      {
        a1 = v12(v11);
      }

      else
      {
        v29 = objc_msgSend_warning(MEMORY[0x1E69A6138], v13, v14, v15);
        a1 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
        if (a1)
        {
          sub_1B7CEE318();
        }
      }
    }

    sub_1B7AEAEE4(a1, a2, a3, a4);
    TablesForClass = CSDBRecordStoreCreateTablesForClass();
    sub_1B7AE0D64(TablesForClass, v31, v32, v33);
    CSDBRecordStoreCreateTablesForClass();
    CSDBRecordStoreCreateTablesForClass();
  }

  else
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = IMFileLocationTrimFileName();
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, &stru_1F2FA9728, v19);
    v23 = objc_msgSend_stringWithFormat_(v16, v21, @"Unexpected nil '%@' in %s at %s:%d. %@", v22, @"operation", "void IMDCreateLegacyTables(IMDSqlOperation *)", v17, 128, v20);
    v24 = IMGetAssertionFailureHandler();
    if (v24)
    {
      v24(v23);
    }

    else
    {
      v28 = objc_msgSend_warning(MEMORY[0x1E69A6138], v25, v26, v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }
}

BOOL IMDCreateTableWithNameWithOperation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7B2EA30();
  result = sub_1B7B2F27C(a1, v6, a2, a3);
  if (result)
  {
    sub_1B7B2F048(a1, v8, v9, v10);
    return *(a1 + 168) == 0;
  }

  return result;
}

BOOL sub_1B7B2F27C(_BOOL8 result, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = a4;
    v6 = result;
    v7 = objc_msgSend_objectForKey_(a2, a2, a3, a4);
    _IMDSqlOperationRunQuery(v6, v7, 0, 0);
    if (*(v6 + 21))
    {
      v8 = IMLogHandleForCategory();
      result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_1B7CEE380(a3, v6, v8, v9);
        return 0;
      }
    }

    else
    {
      if (v4)
      {
        v10 = IMLogHandleForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = 138412290;
          v12 = a3;
          _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Created table (if needed) ok: %@", &v11, 0xCu);
        }
      }

      return *(v6 + 21) == 0;
    }
  }

  return result;
}

uint64_t IMDCreateTablesWithOperation(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = sub_1B7B2EA30();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v29, v35, 16);
    if (v6)
    {
      v10 = v6;
      v11 = *v30;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v4);
        }

        if (!sub_1B7B2F27C(a1, v4, *(*(&v29 + 1) + 8 * v12), a2))
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v29, v35, 16);
          if (v10)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if (!*(a1 + 168))
    {
      sub_1B7B2F048(a1, v7, v8, v9);
      if (!*(a1 + 168))
      {
        return (*(a1 + 168) == 0) & objc_msgSend_createTablesUsingConnection_(IMDLegacyRecordBridge, v13, *(a1 + 8), v14);
      }
    }
  }

  else
  {
    v33 = xmmword_1E7CB7AA8;
    v34 = *off_1E7CB7AB8;
    v16 = MEMORY[0x1E696AEC0];
    v17 = IMFileLocationTrimFileName();
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, &stru_1F2FA9728, v19);
    v23 = objc_msgSend_stringWithFormat_(v16, v21, @"Unexpected nil '%@' in %s at %s:%d. %@", v22, @"operation", "BOOL IMDCreateTablesWithOperation(IMDSqlOperation *, BOOL)", v17, 174, v20);
    v24 = IMGetAssertionFailureHandler();
    if (v24)
    {
      v24(v23);
    }

    else
    {
      v28 = objc_msgSend_warning(MEMORY[0x1E69A6138], v25, v26, v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  return 0;
}

BOOL IMDDropTableWithOperation(char *a1, const char *a2, int a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a1)
  {
LABEL_6:
    if (a2)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  *buf = xmmword_1E7CB7AD0;
  v39 = *off_1E7CB7AE0;
  v40 = 199;
  v7 = MEMORY[0x1E696AEC0];
  v8 = IMFileLocationTrimFileName();
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, &stru_1F2FA9728, v10);
  v14 = objc_msgSend_stringWithFormat_(v7, v12, @"Unexpected nil '%@' in %s at %s:%d. %@", v13, @"operation", "BOOL IMDDropTableWithOperation(IMDSqlOperation *, NSString *, BOOL)", v8, 199, v11);
  v15 = IMGetAssertionFailureHandler();
  if (!v15)
  {
    v19 = objc_msgSend_warning(MEMORY[0x1E69A6138], v16, v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE318();
      if (a2)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v15(v14);
  if (a2)
  {
    goto LABEL_11;
  }

LABEL_7:
  *buf = xmmword_1E7CB7AF8;
  v39 = *off_1E7CB7B08;
  v40 = 200;
  v20 = MEMORY[0x1E696AEC0];
  v21 = IMFileLocationTrimFileName();
  v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v22, &stru_1F2FA9728, v23);
  v27 = objc_msgSend_stringWithFormat_(v20, v25, @"Unexpected nil '%@' in %s at %s:%d. %@", v26, @"tableName", "BOOL IMDDropTableWithOperation(IMDSqlOperation *, NSString *, BOOL)", v21, 200, v24);
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

LABEL_11:
  if (!a1)
  {
    return 0;
  }

  v33 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"DROP TABLE IF EXISTS %@;", a4, a2);
  _IMDSqlOperationRunQuery(a1, v33, 0, 0);
  if (*(a1 + 21))
  {
    v34 = IMLogHandleForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE400(a2, a1, v34, v35);
    }
  }

  else if (a3)
  {
    v37 = IMLogHandleForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = a2;
      _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_INFO, "Dropped table (if needed) ok: %@", buf, 0xCu);
    }
  }

  return *(a1 + 21) == 0;
}

uint64_t IMDDatabaseContainsTable(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = IMDSelectAllTableNames(a2, a2, a3, a4);

  return objc_msgSend_containsObject_(v5, v6, a1, v7);
}

void *sub_1B7B2F8A0(void *a1, const char *a2)
{
  v2 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(a1, a2, @"IF NOT EXISTS", &stru_1F2FA9728);
  v4 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v2, v3, @";", &stru_1F2FA9728);
  objc_msgSend_rangeOfString_(v4, v5, @" ", v6);
  while (v7)
  {
    v4 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v4, v7, @" ", &stru_1F2FA9728);
    objc_msgSend_rangeOfString_(v4, v8, @" ", v9);
  }

  return v4;
}

uint64_t IMDConfirmTablesCreatedAsExpected(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3, a4);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1B7B2FB48;
  v42[3] = &unk_1E7CB7B50;
  v42[4] = v5;
  v42[5] = a1;
  IMDRunSqlOperation(v42);
  v6 = sub_1B7B2EA30();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v38, v43, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        v15 = objc_msgSend_objectForKey_(v6, v9, v14, v10);
        v17 = sub_1B7B2F8A0(v15, v16);
        v20 = objc_msgSend_objectForKey_(v5, v18, v14, v19);
        v22 = sub_1B7B2F8A0(v20, v21);
        if ((objc_msgSend_isEqualToString_(v17, v23, v22, v24) & 1) == 0)
        {
          v25 = objc_msgSend_objectForKey_(v6, v9, v14, v10);
          NSLog(&cfstr_Expected.isa, v25);
          v28 = objc_msgSend_objectForKey_(v5, v26, v14, v27);
          NSLog(&cfstr_Actual.isa, v28);
          v32 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v29, v30, v31);
          v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v33, "BOOL IMDConfirmTablesCreatedAsExpected(NSError **)", v34);
          objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v32, v36, v35, @"IMDTables.m", 312, @"index check failed");
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v38, v43, 16);
    }

    while (v11);
  }

  return 1;
}

uint64_t sub_1B7B2FB48(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7B2FBE8;
  v5[3] = &unk_1E7CB6FD0;
  v5[4] = *(a1 + 32);
  v5[5] = a2;
  _IMDSqlOperationRunQuery(a2, @"SELECT name, sql FROM sqlite_master WHERE type = 'table';", 0, v5);
  return IMDSqlOperationGetError(a2, *(a1 + 40));
}

BOOL sub_1B7B2FBE8(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x3052000000;
      v16 = sub_1B7AE1934;
      v17 = sub_1B7AE2498;
      v18 = 0;
      v7 = 0;
      v8 = &v7;
      v9 = 0x3052000000;
      v10 = sub_1B7AE1934;
      v11 = sub_1B7AE2498;
      v12 = 0;
      v4 = *(a1 + 40);
      v6[0] = v3;
      v6[1] = 3221225472;
      v6[2] = sub_1B7B2FD80;
      v6[3] = &unk_1E7CB7B28;
      v6[4] = &v13;
      v6[5] = &v7;
      IMDSqlOperationIterateRow(v4, v6);
      objc_msgSend_setObject_forKey_(*(a1 + 32), v5, v8[5], v14[5]);
      _Block_object_dispose(&v7, 8);
      _Block_object_dispose(&v13, 8);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7B2FD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B2FD80(uint64_t a1, __int128 *a2)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  v4 = IMDStringFromSqlColumn(&v7);
  v5 = *(a2 + 1);
  if (!v5)
  {
    v5 = sqlite3_column_name(**a2, *(a2 + 4));
    *(a2 + 1) = v5;
  }

  if (!strncmp(v5, "name", 0x100uLL))
  {
    v6 = 32;
    goto LABEL_9;
  }

  if (!v5)
  {
    v5 = sqlite3_column_name(**a2, *(a2 + 4));
    *(a2 + 1) = v5;
  }

  if (!strncmp(v5, "sql", 0x100uLL))
  {
    v6 = 40;
LABEL_9:
    *(*(*(a1 + v6) + 8) + 40) = CFRetain(v4);
  }

  CFRelease(v4);
}

void sub_1B7B30B94(uint64_t a1, const char *a2)
{
  v5[10] = *MEMORY[0x1E69E9840];
  v4[0] = @"r";
  v4[1] = @"g";
  v5[0] = @"ROWID";
  v5[1] = @"guid";
  v4[2] = @"fg";
  v4[3] = @"f";
  v5[2] = @"flag_group";
  v5[3] = @"flag";
  v4[4] = @"fp";
  v4[5] = @"l";
  v5[4] = @"flag_priority";
  v5[5] = @"lane";
  v4[6] = @"s";
  v4[7] = @"sp";
  v5[6] = @"reason";
  v5[7] = @"reason_priority";
  v4[8] = @"u";
  v4[9] = @"c";
  v5[8] = @"user_info";
  v5[9] = @"retry_count";
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, v4, 10);
  v3 = qword_1EDBE5B20;
  qword_1EDBE5B20 = v2;
}

void sub_1B7B30E60(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 3)
  {
    v5 = sqlite3_value_int64(*a3);
    v6 = sub_1B7B3107C(a3[1]);
    v7 = sub_1B7B3107C(a3[2]);
    v46 = v6;
    v10 = v7;
    v11 = v46;
    if (v46)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      goto LABEL_14;
    }

    if (!v46 && v10)
    {
      v13 = v10;
LABEL_15:
      v16 = v13;
LABEL_16:

      if (objc_msgSend_length(v16, v17, v18, v19))
      {
        v20 = v16;
        v24 = objc_msgSend_bytes(v20, v21, v22, v23);
        v28 = objc_msgSend_length(v16, v25, v26, v27);
        sqlite3_result_blob(a1, v24, v28, 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        sqlite3_result_null(a1);
      }

      return;
    }

    if (objc_msgSend_isEqualToData_(v46, v8, v10, v9))
    {
      v11 = v46;
LABEL_14:
      v13 = v11;
      goto LABEL_15;
    }

    v29 = objc_msgSend__decodeUserInfoData_(IMDPersistentTask, v14, v46, v15);
    v32 = objc_msgSend__decodeUserInfoData_(IMDPersistentTask, v30, v10, v31);
    v36 = objc_msgSend_count(v29, v33, v34, v35);
    v40 = objc_msgSend_count(v29, v37, v38, v39);
    if (v36 < 1 || v40)
    {
      if (v36 || v40 < 1)
      {
        v43 = objc_msgSend_mergeUserInfosForFlag_userInfo1_userInfo2_(IMDPersistentTaskUtilities, v41, v5, v29, v32);
        v16 = objc_msgSend__dataForUserInfo_(IMDPersistentTask, v44, v43, v45);

        goto LABEL_30;
      }

      v42 = v10;
    }

    else
    {
      v42 = v46;
    }

    v16 = v42;
LABEL_30:

    goto LABEL_16;
  }

  sqlite3_result_error(a1, "im_reconcile_ptask_user_info: wrong number of arguments", -1);
}

id sub_1B7B3107C(sqlite3_value *a1)
{
  v2 = sqlite3_value_bytes(a1);
  if (v2)
  {
    v3 = v2;
    v4 = sqlite3_value_blob(a1);
    v6 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v5, v4, v3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1B7B310E0(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v102[1] = *MEMORY[0x1E69E9840];
  if (a2 == 5)
  {
    v5 = sqlite3_value_int64(*a3);
    v6 = sub_1B7B3107C(a3[1]);
    v7 = sub_1B7B3107C(a3[2]);
    v8 = sqlite3_value_int64(a3[3]);
    v11 = sqlite3_value_int64(a3[4]);
    v101 = v7;
    if (!v6 || v7)
    {
      if (v6 || !v7)
      {
        isEqualToData = objc_msgSend_isEqualToData_(v6, v9, v7, v10);
        v12 = objc_msgSend__decodeUserInfoData_(IMDPersistentTask, v85, v6, v86);
        if ((isEqualToData & 1) == 0)
        {
          v89 = objc_msgSend__decodeUserInfoData_(IMDPersistentTask, v87, v7, v88);
          v93 = objc_msgSend_count(v12, v90, v91, v92);
          v97 = objc_msgSend_count(v12, v94, v95, v96);
          if (v93 < 1 || v97)
          {
            if (v93 || v97 < 1)
            {
              v99 = objc_msgSend_mergeUserInfosForFlag_userInfo1_userInfo2_(IMDPersistentTaskUtilities, v98, v5, v12, v89);
            }

            else
            {
              v99 = v89;
            }
          }

          else
          {
            v99 = v12;
          }

          v100 = v99;

          v12 = v100;
        }

        goto LABEL_12;
      }

      objc_msgSend__decodeUserInfoData_(IMDPersistentTask, v9, v7, v10);
    }

    else
    {
      objc_msgSend__decodeUserInfoData_(IMDPersistentTask, v9, v6, v10);
    }
    v12 = ;
LABEL_12:
    v13 = [IMDIndexingContext alloc];
    v16 = objc_msgSend_initWithDictionary_(v13, v14, v12, v15);
    v20 = objc_msgSend_additionalReasons(v16, v17, v18, v19);
    v23 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v21, v11, v22);
    v26 = objc_msgSend_containsObject_(v20, v24, v23, v25);

    if ((v26 & 1) == 0)
    {
      v30 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v27, v11, v29);
      v102[0] = v30;
      v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v31, v102, 1);
      v36 = objc_msgSend_additionalReasons(v16, v33, v34, v35);
      v39 = objc_msgSend_arrayByAddingObjectsFromArray_(v32, v37, v36, v38);
      objc_msgSend_setAdditionalReasons_(v16, v40, v39, v41);
    }

    v42 = objc_msgSend_additionalReasons(v16, v27, v28, v29);
    v45 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v43, v8, v44);
    v48 = objc_msgSend_containsObject_(v42, v46, v45, v47);

    if (v48)
    {
      v52 = objc_msgSend_additionalReasons(v16, v49, v50, v51);
      v56 = objc_msgSend_mutableCopy(v52, v53, v54, v55);

      v59 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v57, v8, v58);
      objc_msgSend_removeObject_(v56, v60, v59, v61);

      v65 = objc_msgSend_copy(v56, v62, v63, v64);
      objc_msgSend_setAdditionalReasons_(v16, v66, v65, v67);
    }

    v68 = objc_msgSend_dictionaryRepresentation(v16, v49, v50, v51);
    v71 = objc_msgSend__dataForUserInfo_(IMDPersistentTask, v69, v68, v70);

    if (objc_msgSend_length(v71, v72, v73, v74))
    {
      v75 = v71;
      v79 = objc_msgSend_bytes(v75, v76, v77, v78);
      v83 = objc_msgSend_length(v71, v80, v81, v82);
      sqlite3_result_blob(a1, v79, v83, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      sqlite3_result_null(a1);
    }

    return;
  }

  sqlite3_result_error(a1, "im_reconcile_ptask_user_info_with_shadowed_reason: wrong number of arguments", -1);
}

void sub_1B7B316EC()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create(0, v2);
  v1 = qword_1EBA53F00;
  qword_1EBA53F00 = v0;
}

void sub_1B7B31750(uint64_t a1)
{
  group = dispatch_group_create();
  dispatch_group_enter(group);
  v2 = dispatch_time(0, (*(a1 + 32) * 1000000000.0));
  dispatch_group_wait(group, v2);
}

void sub_1B7B317C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  isBlocking = objc_msgSend_isBlocking(*(a1 + 32), a2, a3, a4);

  IMDPersistencePerformBlockWithHandoffIfNeeded(v4, isBlocking, v6, v7);
}

uint64_t sub_1B7B31884(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_invalidate(qword_1EBA53F10, a2, a3, a4);
  v4 = qword_1EBA53F10;
  qword_1EBA53F10 = 0;

  return notify_post("com.apple.imdpersistenceagent.notification.ptasksupdated");
}

void sub_1B7B318D0(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }

  else
  {
    v15 = v1;
    v16 = v2;
    if (!qword_1EBA53F10)
    {
      v4 = MEMORY[0x1E695DFF0];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1B7B319D8;
      v13[3] = &unk_1E7CB7F88;
      v14 = *(a1 + 32);
      v6 = objc_msgSend_timerWithTimeInterval_repeats_block_(v4, v5, 0, v13, 1.0);
      v7 = qword_1EBA53F10;
      qword_1EBA53F10 = v6;

      v11 = objc_msgSend_mainRunLoop(MEMORY[0x1E695DFD0], v8, v9, v10);
      objc_msgSend_addTimer_forMode_(v11, v12, qword_1EBA53F10, *MEMORY[0x1E695DA28]);
    }
  }
}

uint64_t sub_1B7B319D8(uint64_t result, uint64_t a2)
{
  if (qword_1EBA53F10 == a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

__CFString *IMDChatRecordCopyChatsWithHandlesOnServicesWithDisplayNameGroupIDStyleQuery(uint64_t a1, uint64_t a2, char a3, int a4, int a5, int a6)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v14 = objc_msgSend_selectAllColumnsWithAlias(IMDChatQueryStrings, v11, v12, v13);
  CFStringAppend(Mutable, v14);
  v18 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v15, v16, v17);
  isMissingMessagesEnabled = objc_msgSend_isMissingMessagesEnabled(v18, v19, v20, v21);
  if ((a5 | a6) == 1 && isMissingMessagesEnabled)
  {
    CFStringAppend(Mutable, @"INNER JOIN chat_lookup cl ON cl.chat = c.rowid ");
  }

  CFStringAppend(Mutable, CFSTR("WHERE(c.ROWID IN("));
  if (a1 >= 1)
  {
    v23 = 0;
    do
    {
      CFStringAppend(Mutable, @"SELECT chat_id FROM chat_handle_join WHERE handle_id IN (SELECT ROWID FROM handle WHERE id = ?)");
      if (v23 < a1 - 1)
      {
        CFStringAppend(Mutable, @" INTERSECT ");
      }

      ++v23;
    }

    while (a1 != v23);
  }

  CFStringAppend(Mutable, @""));
  if (a2 > 0)
  {
    CFStringAppend(Mutable, @" AND c.service_name IN (");
    do
    {
      CFStringAppend(Mutable, @"?");
      if (a2 != 1)
      {
        CFStringAppend(Mutable, @", ");
      }

      --a2;
    }

    while (a2);
    CFStringAppend(Mutable, @""));
  }

  if (a4)
  {
    CFStringAppend(Mutable, @" AND c.display_name = ?");
  }

  v27 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v24, v25, v26);
  if (objc_msgSend_isMissingMessagesEnabled(v27, v28, v29, v30))
  {
    v31 = a3;
    if (((a5 | a6) & 1) == 0)
    {
      goto LABEL_25;
    }

    v32 = @" AND cl.identifier = ?";
    goto LABEL_24;
  }

  if (a5)
  {
    CFStringAppend(Mutable, @" AND c.group_id = ?");
  }

  v31 = a3;
  if (a6)
  {
    v32 = @" AND c.original_group_id = ?";
LABEL_24:
    CFStringAppend(Mutable, v32);
  }

LABEL_25:
  CFStringAppend(Mutable, @" AND style = ?");
  if ((v31 & 1) == 0)
  {
    CFStringAppend(Mutable, @" AND (SELECT COUNT(handle_id) FROM chat_handle_join WHERE chat_id = c.ROWID) = ?");
  }

  CFStringAppend(Mutable, @" "));
  return Mutable;
}

uint64_t IMDChatRecordCopyChatsFilteredUsingPredicateQuery(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = objc_msgSend_selectAllColumns(IMDChatQueryStrings, v3, v4, v5);
  return objc_msgSend_initWithFormat_(v2, v7, @"%@ WHERE %@", v8, v6, a1);
}

uint64_t IMDChatRecordCopySortedChatsFilteredUsingPredicateWithLimitQuery(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"WHERE %@", a4, a1);
  }

  else
  {
    v5 = &stru_1F2FA9728;
  }

  if (objc_msgSend_count(a2, a2, a3, a4))
  {
    v8 = objc_msgSend_componentsJoinedByString_(a2, v6, @", ", v7);
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"ORDER BY %@ ", v10, v8);
  }

  else
  {
    v11 = &stru_1F2FA9728;
  }

  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = objc_msgSend_selectAllColumns(IMDChatQueryStrings, v13, v14, v15);
  return objc_msgSend_initWithFormat_(v12, v17, @"%@ %@ %@ LIMIT ?", v18, v16, v5, v11);
}

void *IMDChatRecordRowIDsWithChatGUIDsQuery(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], a2, @"SELECT rowid FROM chat WHERE guid IN ("), a4;
  if (objc_msgSend_count(a1, v6, v7, v8))
  {
    v11 = 0;
    do
    {
      objc_msgSend_appendString_(v5, v9, @"?", v10);
      if (v11 < objc_msgSend_count(a1, v12, v13, v14) - 1)
      {
        objc_msgSend_appendString_(v5, v15, @", ", v17);
      }

      ++v11;
    }

    while (v11 < objc_msgSend_count(a1, v15, v16, v17));
  }

  objc_msgSend_appendString_(v5, v9, @""), v10);
  return v5;
}

void *IMDInsertMessagesFromChatsWihGUIDsIntoRecoverableMessageJoinQuery(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], a2, @"INSERT OR REPLACE INTO chat_recoverable_message_join (chat_id, message_id, delete_date) SELECT chat_id, message_id, message_date FROM chat_message_join WHERE message_date < ? AND chat_id IN ("), a4;
  if (objc_msgSend_count(a1, v6, v7, v8))
  {
    v11 = 0;
    do
    {
      objc_msgSend_appendString_(v5, v9, @"?", v10);
      if (v11 < objc_msgSend_count(a1, v12, v13, v14) - 1)
      {
        objc_msgSend_appendString_(v5, v15, @", ", v17);
      }

      ++v11;
    }

    while (v11 < objc_msgSend_count(a1, v15, v16, v17));
  }

  objc_msgSend_appendString_(v5, v9, @";"), v10);
  return v5;
}

void *IMDDeleteFromChatMessageJoinWhereMessageInRecoveryForChatsWithGUIDsQuery(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], a2, @"DELETE FROM chat_message_join WHERE chat_id IN ("), a4;
  if (objc_msgSend_count(a1, v6, v7, v8))
  {
    v11 = 0;
    do
    {
      objc_msgSend_appendString_(v5, v9, @"?", v10);
      if (v11 < objc_msgSend_count(a1, v12, v13, v14) - 1)
      {
        objc_msgSend_appendString_(v5, v15, @", ", v17);
      }

      ++v11;
    }

    while (v11 < objc_msgSend_count(a1, v15, v16, v17));
  }

  objc_msgSend_appendString_(v5, v9, @" AND message_id IN (SELECT message_id FROM chat_recoverable_message_join WHERE chat_id IN ("), v10);
  if (objc_msgSend_count(a1, v18, v19, v20))
  {
    v23 = 0;
    do
    {
      objc_msgSend_appendString_(v5, v21, @"?", v22);
      if (v23 < objc_msgSend_count(a1, v24, v25, v26) - 1)
      {
        objc_msgSend_appendString_(v5, v27, @", ", v29);
      }

      ++v23;
    }

    while (v23 < objc_msgSend_count(a1, v27, v28, v29));
  }

  objc_msgSend_appendString_(v5, v21, @");"), v22);
  return v5;
}

uint64_t _IMDPerformBlockWithDelay(uint64_t a1, double a2)
{
  if (!a1)
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE520(v2, v3, v4, v5);
    }
  }

  if (!IMDSharedThreadedRecordStore())
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE5C8(v6, v7, v8, v9);
    }
  }

  return CSDBPerformBlockAfterDelay();
}

uint64_t sub_1B7B32164(uint64_t a1)
{
  IMDEnsureSharedRecordStoreInitialized();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void _IMDPerformLockedMessageStoreBlockWithoutInitialize(uint64_t a1)
{
  if (a1)
  {
    IMDSharedThreadedRecordStore();
    v2 = CSDBRecordStoreRefFromThreadedRecordStoreRef();
    v3 = *(a1 + 16);

    v3(a1, v2);
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE7C0(v4, v5, v6, v7);
    }
  }
}

uint64_t _IMDPerformLockedConnectionBlock(uint64_t a1)
{
  if (a1)
  {
    IMDEnsureSharedRecordStoreInitialized();
    memset(v21, 0, sizeof(v21));
    IMDSqlOperationInitWithSharedCSDBDatabase();
    if (!IMDSharedThreadedRecordStore())
    {
      v2 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEEC58(v2, v3, v4, v5);
      }
    }

    v6 = CSDBRecordStoreRefFromThreadedRecordStoreRef();
    if (!v6)
    {
      v7 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEED00(v7, v8, v9, v10);
      }
    }

    v11 = CSDBSqliteDatabaseFromThreadedRecordStoreRef();
    if (!v11)
    {
      v12 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEEDA8(v12, v13, v14, v15);
      }
    }

    (*(a1 + 16))(a1, v6, v11, *(&v21[0] + 1));
    return IMDSqlOperationRelease(v21, 0);
  }

  else
  {
    v17 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEEE50(v17, v18, v19, v20);
    }

    return IMDEnsureSharedRecordStoreInitialized();
  }
}

const void *IMDBridgedRecordGetPropertyValue(void *a1, CFIndex a2)
{
  v3 = a1;
  v7 = *objc_msgSend__localCache(v3, v4, v5, v6);
  if (!v7 || (ValueAtIndex = CFArrayGetValueAtIndex(v7, a2)) == 0)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_1B7B32478;
      v10[3] = &unk_1E7CB8000;
      v11 = v3;
      v12 = &v14;
      v13 = a2;
      _IMDPerformBlock(v10);
      ValueAtIndex = v15[3];

      _Block_object_dispose(&v14, 8);
    }

    else
    {
      ValueAtIndex = 0;
    }
  }

  return ValueAtIndex;
}

void sub_1B7B32460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B32478(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend__copyUpdatedRecord(*(a1 + 32), a2, a3, a4);
  if (v5)
  {
    v8 = v5;
    objc_msgSend__propertyIDForProperty_(*(a1 + 32), v6, *(a1 + 48), v7);
    *(*(*(a1 + 40) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v8);
  }
}

uint64_t IMDBridgedRecordCopyPropertyNumberAsInteger64(void *a1, CFIndex a2)
{
  v2 = IMDBridgedRecordCopyPropertyValue(a1, a2);
  v6 = objc_msgSend_longLongValue(v2, v3, v4, v5);

  return v6;
}

id IMDBridgedRecordGetPropertyKeyPathToColumnsMap(objc_class *a1)
{
  pthread_rwlock_rdlock(&stru_1EDBE5750);
  v2 = qword_1EDBE5820;
  v3 = NSStringFromClass(a1);
  v6 = objc_msgSend_objectForKeyedSubscript_(v2, v4, v3, v5);

  pthread_rwlock_unlock(&stru_1EDBE5750);

  return v6;
}

void IMDBridgedRecordEncode(void *a1, void *a2)
{
  v3 = a1;
  v7 = a2;
  if (v3)
  {
    v8 = *objc_msgSend__localCache(v3, v4, v5, v6);
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v12 = objc_msgSend__copyUpdatedRecord(v3, v9, v10, v11);
    }

    else
    {
      v12 = 0;
    }

    if (objc_msgSend__recordPropertyCount(v3, v9, v10, v11))
    {
      for (i = 0; i < objc_msgSend__recordPropertyCount(v3, v26, v27, v28); ++i)
      {
        v16 = objc_msgSend__propertyDescriptorForProperty_(v3, v13, i, v14);
        v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, @"_record_property_%s", v18, *v16);
        if (IMDIsRunningInDatabaseServerProcess())
        {
          objc_msgSend__propertyIDForProperty_(v3, v20, i, v21);
          Property = CSDBRecordGetProperty();
        }

        else
        {
          Property = CFArrayGetValueAtIndex(v8, i);
        }

        v24 = v16[1];
        if (v24 > 1)
        {
          if (v24 != 2)
          {
            if (v24 == 3)
            {
              valuePtr = 0;
              if (Property)
              {
                CFNumberGetValue(Property, kCFNumberSInt64Type, &valuePtr);
                v25 = valuePtr;
              }

              else
              {
                v25 = 0;
              }

              objc_msgSend_encodeInt64_forKey_(v7, v23, v25, v19);
            }

            goto LABEL_22;
          }
        }

        else
        {
          if (!v24)
          {
            objc_msgSend_encodeInt64_forKey_(v7, v23, Property, v19);
            goto LABEL_22;
          }

          if (v24 != 1)
          {
            goto LABEL_22;
          }
        }

        objc_msgSend_encodeObject_forKey_(v7, v23, Property, v19);
LABEL_22:
      }
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }
}

void IMDBridgedRecordDecode(void *a1, void *a2)
{
  v36 = a1;
  v6 = a2;
  if (v36)
  {
    v7 = objc_msgSend__recordPropertyCount(v36, v3, v4, v5);
    for (i = CFArrayCreateMutable(0, v7, 0); v7; --v7)
    {
      CFArrayAppendValue(i, 0);
    }

    if (objc_msgSend__recordPropertyCount(v36, v8, v9, v10))
    {
      for (j = 0; j < objc_msgSend__recordPropertyCount(v36, v33, v34, v35); ++j)
      {
        v16 = objc_msgSend__propertyDescriptorForProperty_(v36, v12, j, v14);
        v17 = v16[2];
        v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, @"_record_property_%s", v19, *v16);
        v23 = 0;
        v24 = v16[1];
        if (v24 > 1)
        {
          if (v24 == 2)
          {
LABEL_14:
            v30 = objc_opt_class();
            v29 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v31, v30, v22);
LABEL_15:
            v23 = v29;
            if (v29)
            {
              v32 = v17 == 0;
            }

            else
            {
              v32 = 1;
            }

            if (!v32 && *v17)
            {
              v23 = (*v17)(v29);
            }

            goto LABEL_21;
          }

          if (v24 == 3)
          {
            v25 = MEMORY[0x1E696AD98];
            v26 = objc_msgSend_decodeInt64ForKey_(v6, v20, v22, v21);
            v29 = objc_msgSend_numberWithLongLong_(v25, v27, v26, v28);
            goto LABEL_15;
          }
        }

        else
        {
          if (!v24)
          {
            v29 = objc_msgSend_decodeInt64ForKey_(v6, v20, v22, v21);
            goto LABEL_15;
          }

          if (v24 == 1)
          {
            goto LABEL_14;
          }
        }

LABEL_21:
        CFArraySetValueAtIndex(i, j, v23);
      }
    }

    *objc_msgSend__localCache(v36, v12, v13, v14) = i;
  }
}

__CFArray *IMDRecordCreateLocalCache(CFIndex capacity)
{
  v1 = capacity;
  Mutable = CFArrayCreateMutable(0, capacity, 0);
  if (v1 >= 1)
  {
    do
    {
      CFArrayAppendValue(Mutable, 0);
      --v1;
    }

    while (v1);
  }

  return Mutable;
}

const void *IMDRecordCopyLocalCacheObject(const __CFArray *a1, uint64_t a2, CFIndex idx)
{
  v3 = *(a2 + 16);
  result = CFArrayGetValueAtIndex(a1, idx);
  if (result)
  {
    if (v3)
    {
      v5 = *v3;
      if (*v3)
      {

        return v5();
      }
    }
  }

  return result;
}

void IMDRecordSetLocalCacheObject(const __CFArray *a1, uint64_t a2, CFIndex a3, void *a4)
{
  v11 = a4;
  v7 = *(a2 + 16);
  if (CFArrayGetValueAtIndex(a1, a3))
  {
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        v8();
      }
    }
  }

  v9 = v11;
  if (v11 && v7 && *v7)
  {
    v10 = (*v7)(v11);

    v9 = v10;
  }

  v12 = v9;
  CFArraySetValueAtIndex(a1, a3, v9);
}

void sub_1B7B32AB8()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1EDBE5820;
  qword_1EDBE5820 = v0;

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = qword_1EDBE5818;
  qword_1EDBE5818 = v2;
}

const void *sub_1B7B32B14(void *a1, const char *a2)
{
  v3 = a1;
  v4 = sub_1B7AF0958(v3, a2);
  PropertyValue = IMDBridgedRecordGetPropertyValue(v3, v4);

  return PropertyValue;
}

uint64_t sub_1B7B32B5C(void *a1, const char *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v6 = sub_1B7B32B14(a1, a2);

  return objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(v2, v3, v4, v5, v6);
}

uint64_t sub_1B7B32B9C(void *a1, const char *a2)
{
  v3 = a1;
  v4 = sub_1B7AF0958(v3, a2);
  v5 = IMDBridgedRecordCopyPropertyValue(v3, v4);

  v9 = objc_msgSend_longLongValue(v5, v6, v7, v8);
  return v9;
}

uint64_t sub_1B7B32BF4(void *a1, const char *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v6 = sub_1B7B32B9C(a1, a2);

  return objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(v2, v3, v4, v5, v6);
}

void sub_1B7B32E1C(uint64_t a1, const char *a2)
{
  v12[14] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A6B70];
  v11[0] = @"rowID";
  v11[1] = v2;
  v12[0] = @"ROWID";
  v12[1] = @"guid";
  v3 = *MEMORY[0x1E69A6B78];
  v11[2] = *MEMORY[0x1E69A6B18];
  v11[3] = v3;
  v12[2] = @"chat_identifier";
  v12[3] = @"group_id";
  v4 = *MEMORY[0x1E69A6CA8];
  v11[4] = *MEMORY[0x1E69A6C98];
  v11[5] = v4;
  v12[4] = @"service_name";
  v12[5] = @"style";
  v5 = *MEMORY[0x1E69A6BC0];
  v11[6] = *MEMORY[0x1E69A6B48];
  v11[7] = v5;
  v12[6] = @"display_name";
  v12[7] = @"is_filtered";
  v6 = *MEMORY[0x1E69A6BD8];
  v11[8] = *MEMORY[0x1E69A6B40];
  v11[9] = v6;
  v12[8] = @"ck_sync_state";
  v12[9] = @"is_recovered";
  v7 = *MEMORY[0x1E69A6BD0];
  v11[10] = *MEMORY[0x1E69A6BB0];
  v11[11] = v7;
  v12[10] = @"is_deleting_incoming_messages";
  v12[11] = @"is_pending_review";
  v8 = *MEMORY[0x1E69A6C18];
  v11[12] = *MEMORY[0x1E69A6BE0];
  v11[13] = v8;
  v12[12] = @"state";
  v12[13] = @"last_read_message_timestamp";
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, v11, 14);
  v10 = qword_1EDBE5B28;
  qword_1EDBE5B28 = v9;
}

void sub_1B7B33138()
{
  v0 = objc_alloc_init(IMExtensionNotificationManager);
  v1 = qword_1EDBE5AD0;
  qword_1EDBE5AD0 = v0;
}

xpc_object_t _IMDPersistenceIPCCopyConnectionWithForceNew(int a1)
{
  if (qword_1EDBE7988 == -1)
  {
    if (!a1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B7CEEF34();
    if (!a1)
    {
      goto LABEL_6;
    }
  }

  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Forcing a new xpc connection", v6, 2u);
  }

  sub_1B7B3398C();
LABEL_6:
  pthread_mutex_lock(&stru_1EDBE5A80);
  v3 = qword_1EDBE7978;
  if (qword_1EDBE7978 || (qword_1EDBE7978 = IMXPCCreateConnectionForServiceWithQueue(), IMXPCConfigureConnection(), (v3 = qword_1EDBE7978) != 0))
  {
    v4 = xpc_retain(v3);
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_unlock(&stru_1EDBE5A80);
  return v4;
}

void sub_1B7B33930()
{
  v0 = dispatch_queue_create("com.apple.IMDPersistenceIPCQueue", 0);
  qword_1EDBE7980 = v0;
  global_queue = dispatch_get_global_queue(0, 0);

  dispatch_set_target_queue(v0, global_queue);
}

uint64_t sub_1B7B3398C()
{
  v0 = IMLogHandleForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDPersistenceAgent disconnected", v2, 2u);
  }

  pthread_mutex_lock(&stru_1EDBE5A80);
  if (qword_1EDBE7978)
  {
    xpc_connection_cancel(qword_1EDBE7978);
    xpc_release(qword_1EDBE7978);
    qword_1EDBE7978 = 0;
  }

  return pthread_mutex_unlock(&stru_1EDBE5A80);
}

uint64_t IMDSqlOperationInvalidateCaches(uint64_t a1)
{
  if (!a1)
  {
    v1 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEEF48(v1, v2, v3, v4);
    }
  }

  if (!IMDSharedThreadedRecordStore())
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEEFF0(v5, v6, v7, v8);
    }
  }

  if (!CSDBRecordStoreRefFromThreadedRecordStoreRef())
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF098(v9, v10, v11, v12);
    }
  }

  return CSDBRecordStoreInvalidateCachesWithStore();
}

void IMDSqlOperationUpdateLastDeleteSequenceNumber(uint64_t a1)
{
  if (!a1 || !*(a1 + 8))
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF140(v2, v3, v4, v5);
    }
  }

  if (!IMDSharedThreadedRecordStore())
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = IMFileLocationTrimFileName();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, &stru_1F2FA9728, v9);
    v13 = objc_msgSend_stringWithFormat_(v6, v11, @"Unexpected nil '%@' in %s at %s:%d. %@", v12, @"IMDSharedThreadedRecordStore()", "void IMDSqlOperationUpdateLastDeleteSequenceNumber(IMDSqlOperation *)", v7, 48, v10);
    v14 = IMGetAssertionFailureHandler();
    if (v14)
    {
      v14(v13);
    }

    else
    {
      v18 = objc_msgSend_warning(MEMORY[0x1E69A6138], v15, v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  IMDSharedThreadedRecordStore();
  if (CSDBRecordStoreRefFromThreadedRecordStoreRef())
  {
    goto LABEL_15;
  }

  v19 = MEMORY[0x1E696AEC0];
  v20 = IMFileLocationTrimFileName();
  v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21, &stru_1F2FA9728, v22);
  v26 = objc_msgSend_stringWithFormat_(v19, v24, @"Unexpected nil '%@' in %s at %s:%d. %@", v25, @"CSDBRecordStoreRefFromThreadedRecordStoreRef(IMDSharedThreadedRecordStore())", "void IMDSqlOperationUpdateLastDeleteSequenceNumber(IMDSqlOperation *)", v20, 49, v23);
  v27 = IMGetAssertionFailureHandler();
  if (v27)
  {
    v27(v26);
    if (!a1)
    {
      return;
    }

    goto LABEL_16;
  }

  v31 = objc_msgSend_warning(MEMORY[0x1E69A6138], v28, v29, v30);
  if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
LABEL_15:
    if (!a1)
    {
      return;
    }

    goto LABEL_16;
  }

  sub_1B7CEE318();
  if (!a1)
  {
    return;
  }

LABEL_16:
  if (*(a1 + 8))
  {
    goto LABEL_20;
  }

  v32 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEF1E8(v32, v33, v34, v35);
  }

  if (*(a1 + 8))
  {
LABEL_20:
    CSDBSqliteConnectionIntegerForProperty();
    CSDBSqliteConnectionSetIntegerForProperty();
    _IMDSMSRecordStoreUpdateLastDeleteSequenceNumberUnlocked();
  }
}

void IMDSqlOperationInitWithThreadedMessageStore(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = IMFileLocationTrimFileName();
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, &stru_1F2FA9728, v6);
    v10 = objc_msgSend_stringWithFormat_(v3, v8, @"Unexpected nil '%@' in %s at %s:%d. %@", v9, @"messageStore", "IMDSqlOperation IMDSqlOperationInitWithThreadedMessageStore(CSDBThreadedRecordStoreRef)", v4, 119, v7);
    v11 = IMGetAssertionFailureHandler();
    if (v11)
    {
      v11(v10);
    }

    else
    {
      v15 = objc_msgSend_warning(MEMORY[0x1E69A6138], v12, v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  v16 = CSDBSqliteDatabaseFromThreadedRecordStoreRef();
  IMDSqlOperationInitWithCSDBDatabase(v16, a2);
}

void IMDSqlOperationInitAndCreateIfNeededWithPath(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!a1)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = IMFileLocationTrimFileName();
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, &stru_1F2FA9728, v7);
    v11 = objc_msgSend_stringWithFormat_(v4, v9, @"Unexpected nil '%@' in %s at %s:%d. %@", v10, @"path", "IMDSqlOperation IMDSqlOperationInitAndCreateIfNeededWithPath(NSString *)", v5, 124, v8);
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

  v17 = IMDCreateThreadedRecordStoreWithPath(a1);
  *a2 = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[10] = 0u;
  IMDSqlOperationInitWithThreadedMessageStore(v17, a2);
  IMDSqlOperationSetThreadedMessageStore(a2, v17);
}

void IMDSqlOperationSetThreadedMessageStore(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      *(a1 + 24) = 0;
    }

    if (a2)
    {
      *(a1 + 24) = a2;
    }
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = IMFileLocationTrimFileName();
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, &stru_1F2FA9728, v8);
    v12 = objc_msgSend_stringWithFormat_(v5, v10, @"Unexpected nil '%@' in %s at %s:%d. %@", v11, @"operation", "void IMDSqlOperationSetThreadedMessageStore(IMDSqlOperation *, CSDBThreadedRecordStoreRef)", v6, 163, v9);
    v13 = IMGetAssertionFailureHandler();
    if (v13)
    {
      v13(v12);
    }

    else
    {
      v17 = objc_msgSend_warning(MEMORY[0x1E69A6138], v14, v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }
}

void IMDSqlOperationInitWithPath(uint64_t a1@<X0>, _OWORD *a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  if (!a1)
  {
    v32[0] = xmmword_1E7CB8138;
    v32[1] = *off_1E7CB8148;
    v33 = 137;
    v10 = MEMORY[0x1E696AEC0];
    v11 = IMFileLocationTrimFileName();
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, &stru_1F2FA9728, v13);
    v17 = objc_msgSend_stringWithFormat_(v10, v15, @"Unexpected nil '%@' in %s at %s:%d. %@", v16, @"path", "IMDSqlOperation IMDSqlOperationInitWithPath(NSString *)", v11, 137, v14);
    v18 = IMGetAssertionFailureHandler();
    if (v18)
    {
      v18(v17);
    }

    else
    {
      v22 = objc_msgSend_warning(MEMORY[0x1E69A6138], v19, v20, v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }

    LOBYTE(v32[0]) = 0;
    goto LABEL_9;
  }

  LOBYTE(v32[0]) = 0;
  v7 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a3, a4, a5);
  if ((objc_msgSend_fileExistsAtPath_isDirectory_(v7, v8, a1, v32) & 1) == 0)
  {
LABEL_9:
    a2[9] = 0u;
    a2[10] = 0u;
    a2[7] = 0u;
    a2[8] = 0u;
    a2[5] = 0u;
    a2[6] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = *MEMORY[0x1E696A250];
    v25 = MEMORY[0x1E695DF20];
    v28 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v26, @"Database not found at %@", v27, a1);
    v30 = objc_msgSend_dictionaryWithObject_forKey_(v25, v29, v28, *MEMORY[0x1E696A578]);
    v9 = objc_msgSend_initWithDomain_code_userInfo_(v23, v31, v24, 4, v30);
    IMDSqlOperationSetError(a2, v9);
    goto LABEL_10;
  }

  v9 = IMDCreateThreadedRecordStoreWithPath(a1);
  *a2 = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[10] = 0u;
  IMDSqlOperationInitWithThreadedMessageStore(v9, a2);
  IMDSqlOperationSetThreadedMessageStore(a2, v9);
LABEL_10:
}

void sub_1B7B346D4()
{
  qword_1EDBE7968 = _CFRuntimeRegisterClass();
  v0 = objc_opt_class();
  class_getName(v0);
  _CFRuntimeBridgeClasses();
  v1 = objc_opt_class();
  v5 = *(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, v2, v3, v4) + 80);

  IMDBridgedRecordPopulatePropertyImplementations(v1, v5, 0x5Du);
}

_OWORD *IMDMessageRecordCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    pthread_once(&stru_1EDBE5A60, sub_1B7B346D4);
    Instance = _CFRuntimeCreateInstance();

    return sub_1B7B34C14(Instance, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
  }

  else
  {
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v71 = 0;
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = sub_1B7B3527C;
    v67[3] = &unk_1E7CB6838;
    v67[4] = &v68;
    __syncXPCIMDMessageRecordCreate_IPCAction(v67, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a2, a21, a23, a24, a25, a22, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
    v59 = v69[3];
    _Block_object_dispose(&v68, 8);
    return v59;
  }
}

_OWORD *sub_1B7B34C14(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v191 = *MEMORY[0x1E69E9840];
  v101 = a5;
  valuePtr = a4;
  v99 = a7;
  v100 = a6;
  v61 = IMDIsRunningInDatabaseServerProcess();
  v62 = 0;
  if (a1 && v61)
  {
    a1[1] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    if (IMOSLoggingEnabled())
    {
      v63 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v63, OS_LOG_TYPE_DEBUG, "_IMDMessageRecordCreate()", buf, 2u);
      }
    }

    IMDEnsureSharedRecordStoreInitialized();
    objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, v64, v65, v66);
    v70 = CSDBRecordCreate();
    if (v70)
    {
      v71 = objc_msgSend_unsignedLongLongValue(a11, v67, v68, v69);
      v72 = v71;
      v73 = (v71 >> 13) & 1;
      if ((v71 >> 19))
      {
        v74 = 0;
      }

      else
      {
        v74 = (v71 >> 12) & 1;
      }

      if ((v71 >> 19))
      {
        v73 = 0;
      }

      v88 = v73;
      v89 = (v71 >> 19) & 1;
      cf = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
      v96 = CFNumberCreate(0, kCFNumberSInt64Type, &v101);
      v95 = CFNumberCreate(0, kCFNumberSInt64Type, &v100);
      v94 = CFNumberCreate(0, kCFNumberSInt64Type, &v99);
      v93 = CFNumberCreate(0, kCFNumberSInt64Type, &a35);
      v75 = CFNumberCreate(0, kCFNumberSInt64Type, &a44);
      v92 = CFNumberCreate(0, kCFNumberSInt64Type, &a50);
      v91 = CFNumberCreate(0, kCFNumberSInt64Type, &a51);
      v90 = CFNumberCreate(0, kCFNumberSInt64Type, &a49);
      v98 = 0;
      v76 = CFNumberCreate(0, kCFNumberSInt64Type, &v98);
      v110 = a3;
      v114 = a17;
      v116 = a13;
      v117 = 10;
      v118 = a9;
      v119 = a14;
      v120 = a15;
      v121 = a16;
      v122 = a8;
      v80 = vdupq_n_s64(1uLL);
      v126 = v74;
      v127 = 1;
      v131 = v88;
      v134 = (v72 >> 18) & 1;
      v135 = v89;
      v139 = (v72 >> 20) & 1;
      if (a28)
      {
        v81 = 0;
      }

      else
      {
        v81 = a2;
      }

      v143 = v81;
      v145 = a22;
      v146 = a23;
      v147 = a24;
      v148 = a25;
      v149 = (v72 >> 24) & 1;
      v150 = a26;
      v151 = a27;
      v152 = (v72 >> 25) & 1;
      v153 = a28;
      v154 = a29;
      v155 = a32;
      v156 = a33;
      v157 = a34;
      v158 = a30;
      v159 = a31;
      v161 = a36;
      v162 = a37;
      v163 = a38;
      v164 = a40;
      v165 = a42;
      v166 = (v72 >> 26) & 1;
      v167 = a43;
      v168 = v75;
      v170 = a45;
      v171 = a46;
      v172 = a47;
      v173 = a48;
      v175 = v76;
      v178 = (v72 >> 36) & 1;
      v82 = vdupq_n_s64(v72);
      v141 = vandq_s8(vshlq_u64(v82, xmmword_1B7D09510), v80);
      v180 = vandq_s8(vshlq_u64(v82, xmmword_1B7D09540), v80);
      v181 = (v72 >> 38) & 1;
      v182 = a52;
      v183 = (v72 >> 37) & 1;
      v184 = a53;
      v185 = a54;
      v187 = a55;
      v188 = a56;
      v128 = vandq_s8(vshlq_u64(v82, xmmword_1B7D094C0), v80);
      v129 = vandq_s8(vshlq_u64(v82, xmmword_1B7D094D0), v80);
      v130 = vandq_s8(vshlq_u64(v82, xmmword_1B7D094E0), v80);
      v132 = vandq_s8(vshlq_u64(v82, xmmword_1B7D094F0), v80);
      v133 = vandq_s8(vshlq_u64(v82, xmmword_1B7D09500), v80);
      v169 = vandq_s8(vshlq_u64(v82, xmmword_1B7D09520), v80);
      v174 = vandq_s8(vshlq_u64(v82, xmmword_1B7D09530), v80);
      v186 = vandq_s8(vshlq_u64(v82, xmmword_1B7D09550), v80);
      v189 = vandq_s8(vshlq_u64(v82, xmmword_1B7D09560), v80);
      v190 = a57;
      v111 = a10;
      v112 = 0;
      *buf = a12;
      v113 = 0;
      v115 = 0;
      v137 = 0;
      v138 = 0;
      v123 = cf;
      v124 = v96;
      v125 = v95;
      v136 = 0;
      v140 = 0;
      v142 = v94;
      v144 = 0;
      v160 = v93;
      v176 = v92;
      v177 = v91;
      v179 = v90;
      if (*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, v77, v78, v79, v88, v89) + 72) != 93)
      {
        v83 = IMLogHandleForCategory();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CEF338();
        }
      }

      for (i = 0; i != 744; i += 8)
      {
        CSDBRecordSetProperty();
      }

      if (IMDMessageRecordAddMessageRecord(v70))
      {
        *(a1 + 2) = CSDBRecordGetID();
        if (IMOSLoggingEnabled())
        {
          v85 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
          {
            v86 = *(a1 + 2);
            *v103 = 138412802;
            v104 = a1;
            v105 = 2048;
            v106 = v86;
            v107 = 2112;
            v108 = a12;
            _os_log_impl(&dword_1B7AD5000, v85, OS_LOG_TYPE_DEBUG, "New message record [%@] has ID [%lld]  [%@].", v103, 0x20u);
          }
        }

        v62 = a1;
      }

      else
      {
        CFRelease(a1);
        v62 = 0;
      }

      CFRelease(v70);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v95)
      {
        CFRelease(v95);
      }

      if (v96)
      {
        CFRelease(v96);
      }

      if (v94)
      {
        CFRelease(v94);
      }

      if (v93)
      {
        CFRelease(v93);
      }

      if (v92)
      {
        CFRelease(v92);
      }

      if (v91)
      {
        CFRelease(v91);
      }

      if (v90)
      {
        CFRelease(v90);
      }
    }

    else
    {
      CFRelease(a1);
      return 0;
    }
  }

  return v62;
}

uint64_t sub_1B7B3527C(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDMessageRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDMessageRecordGetRecordIdentifier(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return CSDBRecordGetID();
  }

  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Attempted to get record identifier for NULL record: %@", &v3, 0xCu);
  }

  return 0;
}

const void *IMDMessageRecordCopyGUIDUnlocked(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF43C(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    return 0;
  }

  if (!*(a2 + 24))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1B7B354B0;
    v18[3] = &unk_1E7CB7920;
    v18[4] = &v19;
    v18[5] = a2;
    _IMDPerformBlock(v18);
    ValueAtIndex = v20[3];
    _Block_object_dispose(&v19, 8);
    return ValueAtIndex;
  }

  v5 = *(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3, a4) + 80) + 16);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 24), 0);
  if (ValueAtIndex)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return ValueAtIndex;
  }

  v8 = *v5;
  if (!*v5)
  {
    return ValueAtIndex;
  }

  return v8();
}

void sub_1B7B35498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B354B0(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

const void *IMDMessageRecordCopyText(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF4B4(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    return 0;
  }

  if (!*(a2 + 24))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1B7B3566C;
    v18[3] = &unk_1E7CB7920;
    v18[4] = &v19;
    v18[5] = a2;
    _IMDPerformBlock(v18);
    ValueAtIndex = v20[3];
    _Block_object_dispose(&v19, 8);
    return ValueAtIndex;
  }

  v5 = *(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3, a4) + 80) + 56);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 24), 1);
  if (ValueAtIndex)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return ValueAtIndex;
  }

  v8 = *v5;
  if (!*v5)
  {
    return ValueAtIndex;
  }

  return v8();
}

void sub_1B7B35654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B3566C(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t IMDMessageRecordGetDate(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = -1;
  if (a1)
  {
    v4 = a2;
    if (*(a1 + 24))
    {
      v6 = *(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3, a4) + 80) + 576);
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 14);
      v8 = ValueAtIndex;
      if (ValueAtIndex && v6)
      {
        if (!*v6)
        {
LABEL_8:
          CFNumberGetValue(v8, kCFNumberSInt64Type, v21 + 3);
          CFRelease(v8);
          goto LABEL_14;
        }

        v8 = (*v6)(ValueAtIndex);
      }

      if (v8)
      {
        goto LABEL_8;
      }
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1B7B35854;
    v19[3] = &unk_1E7CB7920;
    v19[4] = &v20;
    v19[5] = a1;
    if (v4)
    {
      _IMDPerformBlock(v19);
    }

    else
    {
      sub_1B7B35854(v19);
    }
  }

  else
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF5A4(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

LABEL_14:
  v17 = v21[3];
  _Block_object_dispose(&v20, 8);
  return v17;
}

void sub_1B7B35834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B35854(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = CSDBRecordCopyProperty();
    if (v4)
    {
      v5 = v4;
      CFNumberGetValue(v4, kCFNumberSInt64Type, (*(*(a1 + 32) + 8) + 24));
      CFRelease(v5);
    }

    CFRelease(v3);
  }
}

uint64_t IMDMessageRecordWasDeduplicated(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      v5 = *(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3, a4) + 80) + 1456);
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 36);
      v7 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v8 = v5 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8 && *v5)
      {
        return (*v5)(ValueAtIndex);
      }
    }

    else
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_1B7B35A20;
      v18[3] = &unk_1E7CB7920;
      v18[4] = &v19;
      v18[5] = a1;
      _IMDPerformBlock(v18);
      v7 = *(v20 + 24);
      _Block_object_dispose(&v19, 8);
    }
  }

  else
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF70C(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    return 0;
  }

  return v7;
}

void sub_1B7B35A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B35A20(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

void IMDMessageRecordSetWasDeduplicated(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1B7B35B34;
    v3[3] = &unk_1E7CB8188;
    v3[4] = a1;
    v4 = a2;
    _IMDPerformBlock(v3);
  }

  else
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF780();
    }
  }
}

void sub_1B7B35B34(uint64_t a1)
{
  v1 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 32) + 16));
  if (v1)
  {
    v2 = v1;
    CSDBRecordSetProperty();

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v2);
  }
}

uint64_t IMDMessageRecordCopyChatsForMessageIdentifier(int64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1B7B35CD4;
    v5[3] = &unk_1E7CB7520;
    v5[4] = &v6;
    v5[5] = a1;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT chat_id FROM chat_message_join WHERE message_id = ?;", v5);
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1B7B35DB0;
    v4[3] = &unk_1E7CB6838;
    v4[4] = &v6;
    __syncXPCIMDMessageRecordCopyChats_IPCAction(v4, a1);
  }

  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t sub_1B7B35CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt();
  result = sqlite3_step(*(a4 + 8));
  if (result == 100)
  {
    v7 = *MEMORY[0x1E695E480];
    v8 = MEMORY[0x1E695E9C0];
    do
    {
      if (!*(*(*(a1 + 32) + 8) + 24))
      {
        *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v8);
      }

      v9 = sqlite3_column_int(*(a4 + 8), 0);
      v10 = IMDChatRecordCreateFromRecordIDUnlocked(v7, v9);
      if (v10)
      {
        v11 = v10;
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v10);
        CFRelease(v11);
      }

      result = sqlite3_step(*(a4 + 8));
    }

    while (result == 100);
  }

  return result;
}

xpc_object_t sub_1B7B35DB0(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B35E44;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7B35E44(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = _IMDCopyIMDChatRecordFromXPCObjectClient(a3);
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v6);
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

uint64_t IMDMessageRecordCopyAttachmentsWithLock(uint64_t a1)
{
  Identifier = IMDMessageRecordGetIdentifier(a1);

  return IMDMessageRecordCopyAttachmentsForIDWithLock(Identifier);
}

CFTypeRef IMDMessageRecordCopyAttachments(uint64_t a1)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    Identifier = IMDMessageRecordGetIdentifier(a1);

    return IMDMessageRecordCopyAttachmentsForIDWithLock(Identifier);
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = CFRetain(v4);
    }

    else
    {
      v6 = IMDMessageRecordGetIdentifier(a1);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1B7B36028;
      v7[3] = &unk_1E7CB6838;
      v7[4] = &v8;
      __syncXPCIMDMessageRecordCopyAttachments_IPCAction(v7, v6);
      v5 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    return v5;
  }
}

void sub_1B7B3600C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

xpc_object_t sub_1B7B36028(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B360BC;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7B360BC(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(a3);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    CFRelease(v6);
  }

  return 1;
}

const __CFString *IMDMessageRecordCopyThreadCountsByPart(uint64_t a1)
{
  v2 = IMDIsRunningInDatabaseServerProcess();
  if (v2)
  {
    v5 = IMDMessageRecordCopyGUID(v2, a1, v3, v4);
    v6 = IMDMessageRecordCountMessagesWithThreadOriginatorGroupedByParts(v5);
    if (v5)
    {
      CFRelease(v5);
    }

    return v6;
  }

  v7 = *(a1 + 56);
  if (!v7)
  {
    return 0;
  }

  return CFRetain(v7);
}

CFComparisonResult sub_1B7B361B8(uint64_t a1, uint64_t a2)
{
  if (!(a1 | a2))
  {
    return 0;
  }

  if (a1 && !a2)
  {
    return 1;
  }

  if (!a1 && a2)
  {
    return -1;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = IMDAttachmentRecordCopyGUID(*MEMORY[0x1E695E480], a1);
  v7 = IMDAttachmentRecordCopyGUID(v5, a2);
  v3 = CFStringCompare(v6, v7, 0x40uLL);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v3;
}

void sub_1B7B36300(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 40))
    {
      **(a1 + 40) = CSDBRecordGetID();
    }

    if (*(a1 + 48))
    {
      **(a1 + 48) = sub_1B7B36E14(v3, 14);
    }

    if (*(a1 + 56))
    {
      **(a1 + 56) = sub_1B7B36E14(v3, 15);
    }

    if (*(a1 + 64))
    {
      **(a1 + 64) = sub_1B7B36E14(v3, 16);
    }

    if (*(a1 + 72))
    {
      **(a1 + 72) = sub_1B7B36E14(v3, 39);
    }

    if (*(a1 + 80))
    {
      **(a1 + 80) = CSDBRecordGetProperty();
    }

    if (*(a1 + 88))
    {
      **(a1 + 88) = CSDBRecordGetProperty();
    }

    if (*(a1 + 96))
    {
      **(a1 + 96) = CSDBRecordGetProperty();
    }

    if (*(a1 + 104))
    {
      **(a1 + 104) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 112))
    {
      **(a1 + 112) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 120))
    {
      **(a1 + 120) = CSDBRecordGetProperty();
    }

    if (*(a1 + 128))
    {
      **(a1 + 128) = CSDBRecordGetProperty();
    }

    if (*(a1 + 136))
    {
      **(a1 + 136) = CSDBRecordGetProperty();
    }

    if (*(a1 + 144))
    {
      **(a1 + 144) = CSDBRecordGetProperty();
    }

    if (*(a1 + 152))
    {
      **(a1 + 152) = CSDBRecordGetProperty();
    }

    if (*(a1 + 160))
    {
      **(a1 + 160) = CSDBRecordGetProperty();
    }

    if (*(a1 + 168))
    {
      **(a1 + 168) = CSDBRecordGetProperty();
    }

    if (*(a1 + 176))
    {
      **(a1 + 176) = CSDBRecordGetProperty();
    }

    if (*(a1 + 184))
    {
      **(a1 + 184) = CSDBRecordGetProperty();
    }

    if (*(a1 + 192))
    {
      **(a1 + 192) = CSDBRecordGetProperty();
    }

    if (*(a1 + 200))
    {
      **(a1 + 200) = CSDBRecordGetProperty();
    }

    if (*(a1 + 208))
    {
      Property = CSDBRecordGetProperty();
      v5 = CSDBRecordGetProperty();
      v6 = *(a1 + 208);
      *v6 = Property;
      v6[1] = v5;
    }

    if (*(a1 + 216))
    {
      **(a1 + 216) = sub_1B7B36E14(v3, 78);
    }

    if (*(a1 + 224))
    {
      **(a1 + 224) = sub_1B7B36E14(v3, 75);
    }

    if (*(a1 + 232))
    {
      **(a1 + 232) = sub_1B7B36E14(v3, 76);
    }

    if (*(a1 + 240))
    {
      **(a1 + 240) = CSDBRecordCopyProperty();
    }

    valuePtr = 0;
    v39 = CSDBRecordGetProperty();
    v40 = CSDBRecordGetProperty();
    v42 = CSDBRecordGetProperty();
    v37 = CSDBRecordGetProperty();
    v41 = CSDBRecordGetProperty();
    v36 = CSDBRecordGetProperty();
    v35 = CSDBRecordGetProperty();
    v38 = CSDBRecordGetProperty();
    v34 = CSDBRecordGetProperty();
    v33 = CSDBRecordGetProperty();
    v32 = CSDBRecordGetProperty();
    v43 = CSDBRecordGetProperty();
    v31 = CSDBRecordGetProperty();
    v30 = CSDBRecordGetProperty();
    v28 = CSDBRecordGetProperty();
    v26 = CSDBRecordGetProperty();
    v22 = CSDBRecordGetProperty();
    v24 = CSDBRecordGetProperty();
    v29 = CSDBRecordGetProperty();
    v27 = CSDBRecordGetProperty();
    v25 = CSDBRecordGetProperty();
    v21 = CSDBRecordGetProperty();
    v23 = CSDBRecordGetProperty();
    v7 = CSDBRecordGetProperty();
    v8 = CSDBRecordGetProperty();
    v9 = CSDBRecordGetProperty();
    v10 = CSDBRecordGetProperty();
    v11 = CSDBRecordGetProperty();
    v20 = CSDBRecordGetProperty();
    v12 = CSDBRecordGetProperty();
    v13 = CSDBRecordGetProperty();
    v14 = CSDBRecordGetProperty();
    v15 = CSDBRecordGetProperty();
    v16 = 2;
    if (v39)
    {
      v16 = 3;
      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    if (!v40)
    {
      v16 = v17;
    }

    if (v42)
    {
      v16 |= 4uLL;
    }

    if (v37)
    {
      v16 |= 8uLL;
    }

    if (v41)
    {
      v16 |= 0x20uLL;
    }

    if (v36)
    {
      v16 |= 0x40uLL;
    }

    if (v35)
    {
      v16 |= 0x800uLL;
    }

    if (v38)
    {
      v16 |= 0x2000uLL;
    }

    if (v34)
    {
      v16 |= 0x4000uLL;
    }

    if (v33)
    {
      v16 |= 0x8000uLL;
    }

    if (v32)
    {
      v16 |= 0x10000uLL;
    }

    if (v31)
    {
      v16 |= 0x20000uLL;
    }

    if (v30)
    {
      v16 |= 0x40000uLL;
    }

    if (v28)
    {
      v16 |= 0x80000uLL;
    }

    if (v26)
    {
      v16 |= 0x1000uLL;
    }

    if (v22)
    {
      v16 |= 0x400000000uLL;
    }

    if (v24)
    {
      v16 |= 0x800000000uLL;
    }

    if (v43)
    {
      v16 |= 0x100000uLL;
    }

    if (v29)
    {
      v16 |= 0x200000uLL;
    }

    if (v27)
    {
      v16 |= 0x400000uLL;
    }

    if (v25)
    {
      v16 |= 0x1000000uLL;
    }

    if (v21)
    {
      v16 |= 0x4000000uLL;
    }

    if (v23)
    {
      v16 |= 0x8000000uLL;
    }

    if (v7)
    {
      v16 |= 0x10000000uLL;
    }

    if (v8)
    {
      v16 |= 0x1000000000uLL;
    }

    if (v9)
    {
      v16 |= 0x200000000uLL;
    }

    if (v10)
    {
      v16 |= 0x8000000000uLL;
    }

    if (v11)
    {
      v16 |= 0x4000000000uLL;
    }

    if (v14)
    {
      v16 |= 0x80000000000uLL;
    }

    v18 = v39 | v40 | v42 | v37 | v41 | v36 | v35 | v38 | v34 | v33 | v32 | v31 | v30 | v28 | v26 | v22 | v24 | v43 | v29 | v27 | v25 | v21 | v23 | v7 | v8 | v9 | v10 | v11 | v14;
    if (v20)
    {
      v16 |= 0x2000000000uLL;
    }

    if (v12)
    {
      v16 |= 0x20000000000uLL;
    }

    if (v13)
    {
      v16 |= 0x40000000000uLL;
    }

    if (v15)
    {
      v19 = v16 | 0x100000000000;
    }

    else
    {
      v19 = v16;
    }

    if (v18 | (v20 | v12 | v13 | v15))
    {
      valuePtr = v19;
    }

    if (CSDBRecordGetProperty() == 1)
    {
      valuePtr = v19 | 0x2000000;
    }

    if (*(a1 + 248))
    {
      **(a1 + 248) = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    }

    if (*(a1 + 256))
    {
      **(a1 + 256) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 264))
    {
      **(a1 + 264) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 272))
    {
      **(a1 + 272) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 280))
    {
      **(a1 + 280) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 288))
    {
      **(a1 + 288) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 296))
    {
      **(a1 + 296) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 304))
    {
      **(a1 + 304) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 312))
    {
      **(a1 + 312) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 320))
    {
      **(a1 + 320) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 328))
    {
      **(a1 + 328) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 336))
    {
      **(a1 + 336) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 344))
    {
      **(a1 + 344) = sub_1B7B36E14(v3, 57);
    }

    if (*(a1 + 352))
    {
      **(a1 + 352) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 360))
    {
      **(a1 + 360) = CSDBRecordGetProperty();
    }

    if (*(a1 + 368))
    {
      **(a1 + 368) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 376))
    {
      **(a1 + 376) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 384))
    {
      **(a1 + 384) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 392))
    {
      **(a1 + 392) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 400))
    {
      **(a1 + 400) = sub_1B7B36E14(v3, 65);
    }

    if (*(a1 + 408))
    {
      **(a1 + 408) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 416))
    {
      **(a1 + 416) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 424))
    {
      **(a1 + 424) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 432))
    {
      **(a1 + 432) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 440))
    {
      **(a1 + 440) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 448))
    {
      **(a1 + 448) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 456))
    {
      **(a1 + 456) = CSDBRecordGetProperty();
    }

    if (*(a1 + 464))
    {
      **(a1 + 464) = CSDBRecordGetProperty();
    }

    if (*(a1 + 472))
    {
      **(a1 + 472) = CSDBRecordCopyProperty();
    }

    CFRelease(v3);
  }
}

const __CFNumber *sub_1B7B36E14(uint64_t a1, uint64_t a2)
{
  valuePtr = 0;
  result = CSDBRecordCopyProperty();
  if (result)
  {
    v3 = result;
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    CFRelease(v3);
    return valuePtr;
  }

  return result;
}

void *sub_1B7B36E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1E696AD98];
  Date = IMDMessageRecordGetDate(a2, 0, a3, a4);
  v10 = objc_msgSend_numberWithUnsignedLongLong_(v6, v8, Date, v9);
  v11 = MEMORY[0x1E696AD98];
  v14 = IMDMessageRecordGetDate(a3, 0, v12, v13);
  v17 = objc_msgSend_numberWithUnsignedLongLong_(v11, v15, v14, v16);
  result = objc_msgSend_compare_(v10, v18, v17, v19);
  if (!result)
  {
    v21 = MEMORY[0x1E696AD98];
    Identifier = IMDMessageRecordGetIdentifier(a2);
    v25 = objc_msgSend_numberWithUnsignedLongLong_(v21, v23, Identifier, v24);
    v26 = MEMORY[0x1E696AD98];
    v27 = IMDMessageRecordGetIdentifier(a3);
    v31 = objc_msgSend_numberWithUnsignedLongLong_(v26, v28, v27, v29);

    return objc_msgSend_compare_(v25, v30, v31, v32);
  }

  return result;
}

void *sub_1B7B36F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1E696AD98];
  Date = IMDMessageRecordGetDate(a2, 0, a3, a4);
  v10 = objc_msgSend_numberWithUnsignedLongLong_(v6, v8, Date, v9);
  v11 = MEMORY[0x1E696AD98];
  v14 = IMDMessageRecordGetDate(a3, 0, v12, v13);
  v17 = objc_msgSend_numberWithUnsignedLongLong_(v11, v15, v14, v16);
  result = objc_msgSend_compare_(v17, v18, v10, v19);
  if (!result)
  {
    v21 = MEMORY[0x1E696AD98];
    Identifier = IMDMessageRecordGetIdentifier(a3);
    v25 = objc_msgSend_numberWithUnsignedLongLong_(v21, v23, Identifier, v24);
    v26 = MEMORY[0x1E696AD98];
    v27 = IMDMessageRecordGetIdentifier(a2);
    v31 = objc_msgSend_numberWithUnsignedLongLong_(v26, v28, v27, v29);

    return objc_msgSend_compare_(v25, v30, v31, v32);
  }

  return result;
}

void IMDMessageRecordSetHandle(uint64_t a1, uint64_t a2)
{
  v4 = IMDIsRunningInDatabaseServerProcess();
  Identifier = IMDHandleRecordGetIdentifier(a2);
  v6 = Identifier;
  if (v4)
  {
    if (a1)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_1B7B389A4;
      v16[3] = &unk_1E7CB75B0;
      v16[4] = a1;
      v16[5] = Identifier;
      _IMDPerformBlock(v16);
    }

    else
    {
      v8 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEF880(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }

  else
  {
    v7 = IMDMessageRecordGetIdentifier(a1);

    __syncXPCIMDMessageRecordSetHandle_IPCAction(0, v7, v6);
  }
}

void IMDMessageRecordSetOtherHandle(uint64_t a1, uint64_t a2)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    Identifier = IMDHandleRecordGetIdentifier(a2);
    if (a1)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1B7B38A04;
      v14[3] = &unk_1E7CB75B0;
      v14[4] = a1;
      v14[5] = Identifier;
      _IMDPerformBlock(v14);
    }

    else
    {
      v6 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEF938(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }
  }

  else
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF8F8();
    }
  }
}

CFIndex IMDMessageRecordMarkMessageGUIDAsDeduplicated(CFIndex result)
{
  if (result)
  {
    v1 = result;
    result = CFStringGetLength(result);
    if (result)
    {
      if (IMDIsRunningInDatabaseServerProcess())
      {
        v2 = IMDMessageRecordCopyMessageForGUID(v1);
        if (v2)
        {
          v6 = v2;
          if (!IMDMessageRecordWasDeduplicated(v2, v3, v4, v5))
          {
            v7[0] = MEMORY[0x1E69E9820];
            v7[1] = 3221225472;
            v7[2] = sub_1B7B35B34;
            v7[3] = &unk_1E7CB8188;
            v7[4] = v6;
            v8 = 1;
            _IMDPerformBlock(v7);
          }

          CFRelease(v6);
        }
      }

      else
      {
        __syncXPCIMDMessageRecordMarkMessageGUIDAsDeduplicated_IPCAction(0, v1);
      }

      return 1;
    }
  }

  return result;
}

uint64_t IMDMessageRecordAddAttachmentIfNeededUnlocked(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  Identifier = IMDAttachmentRecordGetIdentifier(a2);
  v4 = IMDMessageRecordGetIdentifier(a1);
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v9 = Identifier;
      v10 = 2048;
      v11 = v4;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEBUG, "Trying to associate attachment [%lld] with message [%lld]", buf, 0x16u);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7B37424;
  v7[3] = &unk_1E7CB81C8;
  v7[4] = v4;
  v7[5] = Identifier;
  return _IMDPerformLockedStatementBlockWithQuery(@"INSERT OR IGNORE INTO message_attachment_join (message_id, attachment_id) VALUES (?, ?);", v7);
}

void sub_1B7B37424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt();
  CSDBSqliteBindInt();
  if (CSDBSqliteStatementPerform() != 101)
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF9B0();
    }
  }
}

void IMDMessageRecordBulkUpdate(uint64_t a1, int64_t a2, uint64_t a3, int64_t a4, int64_t a5, int64_t a6, int64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int64_t a14, uint64_t a15, int64_t a16, int64_t a17, int64_t a18, uint64_t a19, int64_t a20, int64_t a21, int64_t a22, int64_t a23, int64_t a24, uint64_t a25, int64_t a26, int64_t a27, int64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int64_t a32, uint64_t a33, int64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int64_t a45, int64_t a46, int64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int64_t a51, int64_t a52, uint64_t a53)
{
  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = sub_1B7B37908;
      v69[3] = &unk_1E7CB81E8;
      v69[4] = a1;
      v69[5] = a10;
      v69[6] = a2;
      v69[7] = a4;
      v69[8] = a5;
      v69[9] = a6;
      v69[10] = a7;
      v69[11] = a32;
      v69[12] = a16;
      v69[13] = a17;
      v69[14] = a14;
      v69[15] = a18;
      v69[16] = a20;
      v69[17] = a22;
      v69[18] = a21;
      v69[19] = a23;
      v69[20] = a24;
      v69[21] = a26;
      v69[22] = a27;
      v69[23] = a28;
      v69[24] = a3;
      v69[25] = a8;
      v69[26] = a9;
      v69[27] = a15;
      v69[28] = a29;
      v69[29] = a30;
      v69[30] = a12;
      v69[31] = a13;
      v69[32] = a11;
      v69[33] = a19;
      v69[34] = a25;
      v69[35] = a31;
      v69[36] = a33;
      v69[37] = a34;
      v69[38] = a35;
      v69[39] = a37;
      v69[40] = a38;
      v69[41] = a39;
      v69[42] = a40;
      v69[43] = a41;
      v69[44] = a42;
      v69[45] = a43;
      v69[46] = a44;
      v69[47] = a46;
      v69[48] = a47;
      v69[49] = a48;
      v69[50] = a45;
      v69[51] = a49;
      v69[52] = a50;
      v69[53] = a51;
      v69[54] = a52;
      v69[55] = a53;
      _IMDPerformBlock(v69);
    }

    else
    {
      __syncXPCIMDMessageRecordBulkUpdate_IPCAction(0, *(a1 + 16), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a20, a21, a22, a19, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
    }
  }

  else
  {
    v54 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFA38(v54, v55, v56, v57, v58, v59, v60, v61);
    }
  }
}

void sub_1B7B37908(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v6 = v2;
    v7 = objc_msgSend_unsignedLongLongValue(*(a1 + 40), v3, v4, v5);
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    if ((v7 & 0x2000000) != 0)
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 48) >= 1)
    {
      CSDBRecordSetProperty();
    }

    sub_1B7AF8CB8(v6, 14, *(a1 + 56));
    sub_1B7AF8CB8(v6, 15, *(a1 + 64));
    sub_1B7AF8CB8(v6, 16, *(a1 + 72));
    sub_1B7AF8CB8(v6, 39, *(a1 + 80));
    sub_1B7AF8CB8(v6, 57, *(a1 + 88));
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    if (*(a1 + 184))
    {
      CSDBRecordSetProperty();
      CSDBRecordSetProperty();
    }

    if (*(a1 + 192))
    {
      CSDBRecordSetProperty();
    }

    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    if (*(a1 + 240))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 248))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 256))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 264))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 272))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 280))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 288))
    {
      CSDBRecordSetProperty();
    }

    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    if (*(a1 + 320))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 328))
    {
      CSDBRecordSetProperty();
    }

    v8 = *(a1 + 336);
    if (v8 >= 1)
    {
      sub_1B7AF8CB8(v6, 65, v8);
    }

    if (*(a1 + 344))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 352))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 360))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 368))
    {
      CSDBRecordSetProperty();
    }

    v9 = *(a1 + 376);
    if (v9)
    {
      sub_1B7AF8CB8(v6, 75, v9);
    }

    v10 = *(a1 + 384);
    if (v10)
    {
      sub_1B7AF8CB8(v6, 76, v10);
    }

    if (*(a1 + 392))
    {
      CSDBRecordSetProperty();
    }

    sub_1B7AF8CB8(v6, 78, *(a1 + 400));
    if (*(a1 + 408))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 416))
    {
      CSDBRecordSetProperty();
    }

    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    if (*(a1 + 440))
    {
      CSDBRecordSetProperty();
    }

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v6);
  }
}

void IMDMessageRecordAnonymizedUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((IMDIsRunningInDatabaseServerProcess() & 1) == 0)
  {
    v45 = xmmword_1E7CB8208;
    v46 = *off_1E7CB8218;
    v47 = 2702;
    v17 = MEMORY[0x1E696AEC0];
    v18 = IMFileLocationTrimFileName();
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, &stru_1F2FA9728, v20);
    v24 = objc_msgSend_stringWithFormat_(v17, v22, @"Unexpected false '%@' in %s at %s:%d. %@", v23, @"IMDIsRunningInDatabaseServerProcess()", "void IMDMessageRecordAnonymizedUpdate(IMDMessageRecordRef, CFStringRef, CFDataRef, CFStringRef, CFStringRef, CFStringRef, CFDataRef, CFDataRef, CFStringRef)", v18, 2702, v21);
    v25 = IMGetAssertionFailureHandler();
    if (v25)
    {
      v25(v24);
    }

    else
    {
      v29 = objc_msgSend_warning(MEMORY[0x1E69A6138], v26, v27, v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEFAB0(v24, v29, v30, v31, v32, v33, v34, v35);
      }
    }
  }

  if (a1)
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = sub_1B7B381D4;
    v44[3] = &unk_1E7CB8230;
    v44[4] = a1;
    v44[5] = a2;
    v44[6] = a3;
    v44[7] = a5;
    v44[8] = a7;
    v44[9] = a4;
    v44[10] = a6;
    v44[11] = a8;
    v44[12] = a9;
    _IMDPerformBlock(v44);
  }

  else
  {
    v36 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFB1C(v36, v37, v38, v39, v40, v41, v42, v43);
    }
  }
}

void sub_1B7B381D4(void *a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(a1[4] + 16));
  if (v2)
  {
    v3 = v2;
    v4 = a1[5];
    if (v4 && CFStringGetLength(v4) >= 1)
    {
      CSDBRecordSetProperty();
    }

    v5 = a1[6];
    if (v5 && CFDataGetLength(v5) >= 1)
    {
      CSDBRecordSetProperty();
    }

    v6 = a1[7];
    if (v6 && CFStringGetLength(v6) >= 1)
    {
      CSDBRecordSetProperty();
    }

    v7 = a1[8];
    if (v7 && CFDataGetLength(v7) >= 1)
    {
      CSDBRecordSetProperty();
    }

    v8 = a1[9];
    if (v8 && CFStringGetLength(v8) >= 1)
    {
      CSDBRecordSetProperty();
    }

    v9 = a1[10];
    if (v9 && CFStringGetLength(v9) >= 1)
    {
      CSDBRecordSetProperty();
    }

    v10 = a1[11];
    if (v10 && CFDataGetLength(v10) >= 1)
    {
      CSDBRecordSetProperty();
    }

    v11 = a1[12];
    if (v11 && CFStringGetLength(v11) >= 1)
    {
      CSDBRecordSetProperty();
    }

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v3);
  }
}

uint64_t IMDMessageRecordInvalidateRecord(uint64_t a1)
{
  result = IMDIsRunningInDatabaseServerProcess();
  if (a1)
  {
    if (result)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = sub_1B7B383D0;
      v3[3] = &unk_1E7CB6A70;
      v3[4] = a1;
      return _IMDPerformBlock(v3);
    }
  }

  return result;
}

void sub_1B7B383D0(uint64_t a1)
{
  v1 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 32) + 16));
  if (v1)
  {
    v2 = v1;
    CSDBRecordInvalidateRecord();

    CFRelease(v2);
  }
}

const void *_IMDCopyIMDMessageRecordFromXPCObjectServer(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  int64 = xpc_dictionary_get_int64(a1, "recordIdentifier");
  if (int64 < 1)
  {
    return 0;
  }

  return IMDMessageRecordCreateFromRecordIDWithLock(0, int64, 0);
}

uint64_t sub_1B7B38474(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  for (i = 8; i != 3728; i += 40)
  {
    if (!*(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3, a4) + 80) + i))
    {
      v8 = sub_1B7AE64DC(v6);
      if (v8)
      {
        v9 = v8;
        v10 = *(a1 + 24);
        if (v10)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v10, v6);
        }

        else
        {
          ValueAtIndex = CSDBRecordGetProperty();
        }

        if (ValueAtIndex)
        {
          v12 = v9;
        }

        else
        {
          v12 = 0;
        }

        v5 |= v12;
      }
    }

    ++v6;
  }

  return v5;
}

xpc_object_t _IMDCopyXPCObjectFromIMDMessageRecordClient(uint64_t a1)
{
  if (!a1 || !*(a1 + 24))
  {
    return 0;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = 0;
  v7 = 0;
  for (i = 0; i != 93; ++i)
  {
    v9 = (*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, v2, v3, v4, v20, v21) + 80) + v6);
    v10 = *v9;
    v11 = v9[1];
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
    if (!ValueAtIndex)
    {
      goto LABEL_17;
    }

    v13 = ValueAtIndex;
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v20 = ValueAtIndex;
        v21 = 0;
        IMInsertDatasToXPCDictionary();
        goto LABEL_17;
      }

      if (v11 != 3)
      {
        goto LABEL_17;
      }

      valuePtr = 0;
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
      v14 = valuePtr;
      v15 = v5;
      v16 = v10;
      goto LABEL_16;
    }

    if (!v11)
    {
      v17 = sub_1B7AE64DC(i);
      if (v17)
      {
        v7 |= v17;
        goto LABEL_17;
      }

      v15 = v5;
      v16 = v10;
      v14 = v13;
LABEL_16:
      xpc_dictionary_set_int64(v15, v16, v14);
      goto LABEL_17;
    }

    if (v11 == 1)
    {
      v20 = ValueAtIndex;
      v21 = 0;
      IMInsertNSStringsToXPCDictionary();
    }

LABEL_17:
    v6 += 40;
  }

  if (v7)
  {
    xpc_dictionary_set_int64(v5, "flags", v7);
  }

  v18 = *(a1 + 16);
  if (v18)
  {
    xpc_dictionary_set_int64(v5, "recordIdentifier", v18);
  }

  return v5;
}

void IMDMessageRecordMarkAllUnsuccessFullSyncMessagesAsNeedingSync(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "Request to markAllUnsuccessFullySyncedMessagesAsNeedingSync ", buf, 2u);
    }
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    *buf = 0u;
    v5 = 0u;
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    IMDSqlOperationExecuteQuery(buf, @"update message set ck_sync_state=0 where ck_sync_state=2;", &unk_1F2FA09F0);
    v3 = 0;
    IMDSqlOperationRelease(buf, &v3);
    if (v3 && IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *v15 = 138412290;
        v16 = v3;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Error executing markAllUnsuccessFullySyncedMessagesAsNeedingSync %@ ", v15, 0xCu);
      }
    }
  }

  else
  {
    __syncXPCIMDMessageRecordMarkAllUnsuccessFullSyncMessagesAsNeedingSync_IPCAction(0);
  }
}

void sub_1B7B38830(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "Executed query to mark all unsuccessfuly synced messages as needing sync", v2, 2u);
    }
  }
}

CFStringRef sub_1B7B388EC(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<IMDMessageRecord %p [%p]>{}", a1, v3);
}

uint64_t sub_1B7B3893C(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDHandleRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7B38970(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDHandleRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1B7B389A4(uint64_t a1)
{
  v1 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 32) + 16));
  if (v1)
  {
    v2 = v1;
    CSDBRecordSetProperty();

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v2);
  }
}

void sub_1B7B38A04(uint64_t a1)
{
  v1 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 32) + 16));
  if (v1)
  {
    v2 = v1;
    CSDBRecordSetProperty();

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v2);
  }
}

uint64_t sub_1B7B38A64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(a3);
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(*(*(a1 + 32) + 48), v6);
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

uint64_t sub_1B7B38ACC(uint64_t a1, uint64_t a2, xpc_object_t xint)
{
  value = xpc_int64_get_value(xint);
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11 = objc_msgSend_initWithUTF8String_(v6, v7, a2, v8);
  v12 = *(*(*(a1 + 32) + 8) + 40);
  if (!v12)
  {
    *(*(*(a1 + 32) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = *(*(*(a1 + 32) + 8) + 40);
  }

  v13 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v9, value, v10);
  objc_msgSend_setObject_forKey_(v12, v14, v13, v11);

  return 1;
}

void sub_1B7B38B78(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (objc_msgSend_UTF8String(a2, a2, a3, a4))
  {
    v10 = *(a1 + 32);
    v11 = objc_msgSend_UTF8String(a2, v7, v8, v9);
    v15 = objc_msgSend_unsignedIntegerValue(a3, v12, v13, v14);

    xpc_dictionary_set_int64(v10, v11, v15);
  }
}

void IMDNotificationsPostNotificationsWithContext(void *a1)
{
  v7 = a1;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v4 = objc_msgSend_sharedInstance(IMDNotificationsController, v1, v2, v3);
    objc_msgSend_postNotificationsWithContext_(v4, v5, v7, v6);
  }

  else
  {
    __asyncXPCIMDNotificationsPostNotifications_IPCAction(qword_1F2FA0190, v7);
  }
}

void IMDNotificationsRetractNotificationsFromFirstUnlockWithContext(void *a1)
{
  v7 = a1;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v4 = objc_msgSend_sharedInstance(IMDNotificationsController, v1, v2, v3);
    objc_msgSend_repostNotificationsFromFirstUnlockWithContext_(v4, v5, v7, v6);
  }

  else
  {
    __asyncXPCIMDNotificationsRetractNotificationsFromFirstUnlock_IPCAction(qword_1F2F9FC50, v7);
  }
}

void IMDNotificationsPostUrgentNotificationsForMessages(void *a1, void *a2)
{
  v9 = a1;
  v3 = a2;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v7 = objc_msgSend_sharedInstance(IMDNotificationsController, v4, v5, v6);
    objc_msgSend_postUrgentNotificationForMessages_withContext_(v7, v8, v9, v3);
  }

  else
  {
    __syncXPCIMDNotificationsPostUrgentNotificationsForMessages_IPCAction(qword_1F2F9FBF0, v9, v3);
  }
}

void IMDNotificationsUpdatePostedNotificationsForMessages(void *a1, void *a2)
{
  v9 = a1;
  v3 = a2;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v7 = objc_msgSend_sharedInstance(IMDNotificationsController, v4, v5, v6);
    objc_msgSend_updatePostedNotificationsForMessages_withContext_(v7, v8, v9, v3);
  }

  else
  {
    __syncXPCIMDNotificationsUpdatePostedNotificationsForMessages_IPCAction(qword_1F2F9FBB0, v9, v3);
  }
}

void IMDNotificationsPostFirstUnlockMessage(void *a1, void *a2)
{
  v9 = a1;
  v3 = a2;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v7 = objc_msgSend_sharedInstance(IMDNotificationsController, v4, v5, v6);
    objc_msgSend_postFirstUnlockMessage_forIdentifier_(v7, v8, v9, v3);
  }

  else
  {
    __syncXPCIMDNotificationsPostFirstUnlockMessage_IPCAction(qword_1F2FA0A10, v9, v3);
  }
}

void sub_1B7B38EF8()
{
  qword_1EDBE7970 = _CFRuntimeRegisterClass();
  v0 = objc_opt_class();
  class_getName(v0);
  _CFRuntimeBridgeClasses();
  v1 = objc_opt_class();

  IMDBridgedRecordPopulatePropertyImplementations(v1, &off_1E7CB8330, 5u);
}

void *IMDHandleRecordCreate(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!IMDIsRunningInDatabaseServerProcess())
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    *&buf[24] = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1B7B394B0;
    v25[3] = &unk_1E7CB6838;
    v25[4] = buf;
    __syncXPCIMDHandleRecordCreate_IPCAction(v25, a2, a3, a4, a5, a6);
    v12 = *(*&buf[8] + 24);
    v22 = buf;
LABEL_23:
    _Block_object_dispose(v22, 8);
    return v12;
  }

  pthread_once(&stru_1EDBE5A70, sub_1B7B38EF8);
  Instance = _CFRuntimeCreateInstance();
  v12 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    v13 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "_IMDHandleRecordCreate()", buf, 2u);
    }

    IMDEnsureSharedRecordStoreInitialized();
    v16 = CSDBRecordCreate();
    if (v16)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      if ((objc_msgSend_isEqualToString_(a4, v14, *MEMORY[0x1E69A7AF0], v15) & 1) == 0)
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = sub_1B7B39380;
        v26[3] = &unk_1E7CB7948;
        v26[4] = &v27;
        v26[5] = a2;
        IMDRunSqlOperation(v26);
        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = v28[3];
            *buf = 138412546;
            *&buf[4] = a4;
            *&buf[12] = 2112;
            *&buf[14] = v18;
            _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "We are setting the person_centric_id for a non-iMessage(%@) handle to be %@", buf, 0x16u);
          }
        }
      }

      *buf = xmmword_1B7D09AC0;
      *&buf[16] = xmmword_1B7D09AD0;
      v41 = 4;
      v35 = a2;
      v36 = a3;
      v37 = a4;
      v38 = a5;
      if (!a6)
      {
        a6 = v28[3];
      }

      v19 = 0;
      v39 = a6;
      do
      {
        CSDBRecordSetProperty();
        v19 += 8;
      }

      while (v19 != 40);
      if (IMDHandleRecordAddHandleRecord(v16))
      {
        v12[2] = CSDBRecordGetID();
        v20 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = v12[2];
          *v31 = 138412546;
          v32 = v12;
          v33 = 2048;
          v34 = v21;
          _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "new IMDHandleRecordRef [%@] has id [%lld].", v31, 0x16u);
        }
      }

      else
      {
        CFRelease(v12);
        v12 = 0;
      }

      CFRelease(v16);
      v23 = v28[3];
      if (v23)
      {
        CFRelease(v23);
      }

      v22 = &v27;
      goto LABEL_23;
    }

    CFRelease(v12);
    return 0;
  }

  return v12;
}