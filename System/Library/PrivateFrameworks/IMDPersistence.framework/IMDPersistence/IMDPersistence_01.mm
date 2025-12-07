BOOL IMDCreateTriggers(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7AE91B4;
  v3[3] = &unk_1E7CB8940;
  v4 = a2;
  v3[4] = a1;
  return IMDRunSqlOperation(v3);
}

void *sub_1B7AE3954(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1B7C107FC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t type metadata accessor for SQLConnectionConfiguration(uint64_t a1)
{
  result = qword_1EBA50F28;
  if (!qword_1EBA50F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

const char *sub_1B7AE3B2C(uint64_t a1, uint64_t a2, char a3)
{
  ppStmt[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v3 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration + 17);
  }

  if (v6 == 1)
  {
    v7 = sub_1B7AEA904(v28);
    v8 = sub_1B7AE4904(a1, a2);
    if (v8)
    {
      v9 = v8;
      (v7)(v28, 0);
      return v9;
    }

    (v7)(v28, 0);
  }

  ppStmt[0] = 0;
  v10 = *(v3 + 16);
  v11 = sub_1B7CFEAD0();
  v12 = sqlite3_prepare_v2(v10, (v11 + 32), -1, ppStmt, 0);

  if (!v12)
  {
    v21 = ppStmt[0];
    if (ppStmt[0])
    {
      type metadata accessor for SQLStatement();
      v9 = swift_allocObject();
      *(v9 + 16) = v21;
      if (v6)
      {
        v22 = (v3 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
        swift_beginAccess();
        v23 = *v22;
        if (*(*v22 + 16) >= v22[2])
        {

          v22[1] = v23;
          v25 = sub_1B7C2377C(MEMORY[0x1E69E7CC0]);

          *v22 = v25;
        }

        else
        {
        }

        sub_1B7AEA990(0, a1, a2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *v22;
        *v22 = 0x8000000000000000;
        sub_1B7AEAD4C(v9, a1, a2, isUniquelyReferenced_nonNull_native, sub_1B7CE834C, sub_1B7AEAA98);

        *v22 = v27;
        swift_endAccess();
      }

      return v9;
    }

    type metadata accessor for SQLConnectionError(0);
    sub_1B7C14C5C();
    v18 = swift_allocError();
    *v24 = a1;
    v24[1] = a2;
    v24[2] = 0;
    swift_storeEnumTagMultiPayload();

    goto LABEL_11;
  }

  result = sqlite3_errmsg(v10);
  if (result)
  {
    v14 = sub_1B7CFEB70();
    v16 = v15;
    v17 = sqlite3_extended_errcode(v10);
    sub_1B7C951E8();
    v18 = swift_allocError();
    *v19 = v17;
    v19[1] = v14;
    v19[2] = v16;
LABEL_11:
    swift_willThrow();
    v9 = type metadata accessor for SQLConnectionError(0);
    sub_1B7C14C5C();
    swift_allocError();
    *v20 = a1;
    v20[1] = a2;
    v20[2] = v18;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7AE3EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLConnectionConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7AE3F08(uint64_t a1)
{
  v2 = type metadata accessor for SQLConnectionConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7AE3F68()
{
  v0 = type metadata accessor for SQLConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B7CFE4A0();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  IMDEnsureSharedRecordStoreInitialized();
  IMDSharedSqliteDatabase();
  _IMDPersistenceGetThreadedStoreQueue();
  v8 = v7;
  if (v8)
  {
    *v6 = v8;
    (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
    v9 = sub_1B7CFE4C0();
    (*(v4 + 8))(v6, v3);
    if ((v9 & 1) == 0)
    {
      __break(1u);
      goto LABEL_8;
    }

    v10 = CSDBSqliteDatabaseConnectionForWriting();
    if (v10)
    {
      v3 = *(v10 + 8);
      if (v3)
      {
        v6 = *(v0 + 28);
        if (qword_1EBA50ED0 == -1)
        {
LABEL_6:
          v11 = sub_1B7CFE420();
          v12 = sub_1B7AD9040(v11, qword_1EBA5DA50);
          v13 = *(v11 - 8);
          (*(v13 + 16))(&v6[v2], v12, v11);
          (*(v13 + 56))(&v6[v2], 0, 1, v11);
          *v2 = 1;
          *(v2 + 8) = 0x4082C00000000000;
          *(v2 + 16) = 256;
          type metadata accessor for SQLConnection(0);
          v14 = swift_allocObject();
          v15 = (v14 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
          v16 = MEMORY[0x1E69E7CC8];
          *v15 = MEMORY[0x1E69E7CC8];
          v15[1] = v16;
          v15[2] = 32;
          *(v14 + 16) = v3;
          *(v14 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
          sub_1B7AE3EA4(v2, v14 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
          sqlite3_busy_timeout(v3, 600000);
          sub_1B7AE3F08(v2);
          return v14;
        }

LABEL_8:
        swift_once();
        goto LABEL_6;
      }
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

void sub_1B7AE42DC(unint64_t a1, const char *a2, void (*a3)(char *, void))
{
  sub_1B7AE3F68();

  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  isUniquelyReferenced_nonNull_native = v8 + 1;
  if (v8 >= v7 >> 1)
  {
LABEL_31:
    v6 = sub_1B7AE3A9C((v7 > 1), isUniquelyReferenced_nonNull_native, 1, v6);
  }

  v36 = MEMORY[0x1E69E6158];
  v37 = &off_1F2FA8B58;
  *&v35 = a1;
  *(&v35 + 1) = a2;
  *(v6 + 2) = isUniquelyReferenced_nonNull_native;
  sub_1B7AE910C(&v35, &v6[40 * v8 + 32]);
  a2 = sub_1B7AE3B2C(0xD0000000000000A4, 0x80000001B7D50EF0, 0);
  *&v35 = v5;

  sub_1B7AEA964(v6, a2, &v35, a2);

  isUniquelyReferenced_nonNull_native = v35;
  v6 = sub_1B7AF1238(MEMORY[0x1E69E7CC0]);
  v33 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v33)
  {
LABEL_27:

    a3(v6, 0);

    return;
  }

  a1 = 0;
  v10 = (isUniquelyReferenced_nonNull_native + 56);
  v32 = isUniquelyReferenced_nonNull_native;
  while (1)
  {
    v7 = *(isUniquelyReferenced_nonNull_native + 16);
    if (a1 >= v7)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v8 = *(v10 - 3);
    v11 = *(v10 - 2);
    v12 = *(v10 - 1);
    v13 = *v10;
    v14 = *(v6 + 2);

    if (v14)
    {

      v15 = sub_1B7AE11D0(v8, v11);
      v17 = v16;

      v18 = MEMORY[0x1E69E7CC0];
      if ((v17 & 1) == 0)
      {
        goto LABEL_12;
      }

      v18 = *(*(v6 + 7) + 8 * v15);
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

LABEL_12:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1B7AF182C(0, *(v18 + 2) + 1, 1, v18);
    }

    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    v34 = a1;
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1B7AF182C((v19 > 1), v20 + 1, 1, v18);
    }

    *(v18 + 2) = v20 + 1;
    v21 = &v18[16 * v20];
    *(v21 + 4) = v12;
    *(v21 + 5) = v13;
    a1 = v13;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v35 = v6;
    v5 = v8;
    a2 = v6;
    v23 = sub_1B7AE11D0(v8, v11);
    v7 = *(v6 + 2);
    v24 = (v22 & 1) == 0;
    v25 = v7 + v24;
    if (__OFADD__(v7, v24))
    {
      goto LABEL_29;
    }

    v8 = v22;
    if (*(v6 + 3) < v25)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v22)
      {
        goto LABEL_4;
      }
    }

    else
    {
      a2 = &v35;
      sub_1B7CE84C8();
      if (v8)
      {
LABEL_4:

        v6 = v35;
        *(*(v35 + 56) + 8 * v23) = v18;

        goto LABEL_5;
      }
    }

LABEL_23:
    v6 = v35;
    *(v35 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    v28 = (*(v6 + 6) + 16 * v23);
    *v28 = v5;
    v28[1] = v11;
    *(*(v6 + 7) + 8 * v23) = v18;

    v29 = *(v6 + 2);
    v30 = __OFADD__(v29, 1);
    v7 = v29 + 1;
    if (v30)
    {
      goto LABEL_30;
    }

    *(v6 + 2) = v7;
LABEL_5:
    a1 = v34 + 1;
    v10 += 4;
    isUniquelyReferenced_nonNull_native = v32;
    if (v33 == v34 + 1)
    {
      goto LABEL_27;
    }
  }

  sub_1B7CE4030(v25, isUniquelyReferenced_nonNull_native);
  a2 = v35;
  v26 = sub_1B7AE11D0(v5, v11);
  if ((v8 & 1) == (v27 & 1))
  {
    v23 = v26;
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  sub_1B7CFF740();
  __break(1u);
}

void _IMDPersistenceGetThreadedStoreQueue()
{
  IMDSharedThreadedRecordStore();

  JUMPOUT(0x1B8CAF1A0);
}

uint64_t sub_1B7AE4904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2[1];
  if (*(v6 + 16))
  {
    v7 = sub_1B7AE11D0(a1, a2);
    v8 = *v2;
    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v7);
      v11 = *(v8 + 16);
      v12 = v3[2];

      if (v11 >= v12)
      {

        v3[1] = v8;
        v13 = sub_1B7C2377C(MEMORY[0x1E69E7CC0]);

        *v3 = v13;
      }

      sub_1B7AEA990(0, a1, a2);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      sub_1B7AEAD4C(v10, a1, a2, isUniquelyReferenced_nonNull_native, sub_1B7CE834C, sub_1B7AEAA98);

      v8 = v17;
      *v3 = v17;
    }

    if (!*(v8 + 16))
    {
      return 0;
    }
  }

  else if (!*(*v2 + 16))
  {
    return 0;
  }

  sub_1B7AE11D0(a1, a2);
  if (v15)
  {
  }

  return 0;
}

void IMDHandleRecordBulkCopy(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1)
  {
    v12 = *(a1 + 24);
    if (v12)
    {
      if (a2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, 0);
        v14 = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
        }

        *a2 = v14;
      }

      if (a3)
      {
        v15 = CFArrayGetValueAtIndex(*(a1 + 24), 1);
        v16 = v15;
        if (v15)
        {
          CFRetain(v15);
        }

        *a3 = v16;
      }

      if (a4)
      {
        v17 = CFArrayGetValueAtIndex(*(a1 + 24), 2);
        v18 = v17;
        if (v17)
        {
          CFRetain(v17);
        }

        *a4 = v18;
      }

      if (a5)
      {
        v19 = CFArrayGetValueAtIndex(*(a1 + 24), 3);
        v20 = v19;
        if (v19)
        {
          CFRetain(v19);
        }

        *a5 = v20;
      }

      if (a6)
      {
        v21 = CFArrayGetValueAtIndex(*(a1 + 24), 4);
        v22 = v21;
        if (v21)
        {
          CFRetain(v21);
        }

        *a6 = v22;
      }
    }

    if (IMDIsRunningInDatabaseServerProcess())
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_1B7B399A8;
      v31[3] = &unk_1E7CB8310;
      v31[4] = a1;
      v31[5] = a2;
      v31[6] = a3;
      v31[7] = a4;
      v31[8] = a5;
      v31[9] = a6;
      _IMDPerformBlock(v31);
    }
  }

  else
  {
    v23 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFE64(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }
}

uint64_t IMDMessageRecordCopyChats(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    Identifier = IMDMessageRecordGetIdentifier(a1);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7AE9714;
    v7[3] = &unk_1E7CB7520;
    v7[4] = &v8;
    v7[5] = Identifier;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT chat_id FROM chat_message_join WHERE message_id = ?;", v7);
  }

  else
  {
    v3 = IMDMessageRecordGetIdentifier(a1);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7AE4EBC;
    v6[3] = &unk_1E7CB6838;
    v6[4] = &v8;
    __syncXPCIMDMessageRecordCopyChats_IPCAction(v6, v3);
  }

  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __syncXPCIMDMessageRecordCopyChats_IPCAction(void (**a1)(void, void), int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 101);
    if (a2)
    {
      xpc_dictionary_set_int64(v5, "messageID", a2);
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

uint64_t IMDMessageRecordGetIdentifier(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 16);
  }

  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Attempted to get record identifier for NULL message record: %@", &v3, 0xCu);
  }

  return 0;
}

xpc_object_t sub_1B7AE4EBC(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7AE4F68;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

void *sub_1B7AE4F50(void *result)
{
  result[4] = 0;
  result[5] = -1;
  result[2] = -1;
  result[3] = 0;
  result[6] = 0;
  result[7] = -1;
  result[8] = 0;
  result[9] = 0;
  return result;
}

uint64_t sub_1B7AE4F68(uint64_t a1, uint64_t a2, void *a3)
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

void *_IMDCopyIMDChatRecordFromXPCObjectClient(void *a1)
{
  if (xpc_dictionary_get_count(a1) < 3)
  {
    return 0;
  }

  pthread_once(&stru_1EDBE5A50, sub_1B7AE97F8);
  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (!Instance)
  {
    return v2;
  }

  *(Instance + 16) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 32) = 0u;
  if (*(Instance + 24))
  {
    goto LABEL_41;
  }

  v4 = 28;
  Mutable = CFArrayCreateMutable(0, 28, 0);
  do
  {
    CFArrayAppendValue(Mutable, 0);
    --v4;
  }

  while (v4);
  v9 = 0;
  do
  {
    v10 = 0;
    v11 = *(objc_msgSend_chatRecordDescriptor(IMDLegacyRecordBridge, v6, v7, v8) + 80) + v9;
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v15 = IMGetXPCDataFromDictionary();
        goto LABEL_17;
      }

      v14 = 0;
      if (v12 == 3)
      {
        valuePtr[0] = IMGetXPCIntFromDictionary();
        v10 = CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
        v14 = v10;
      }
    }

    else
    {
      if (!v12)
      {
        v15 = IMGetXPCIntFromDictionary();
        goto LABEL_17;
      }

      v14 = 0;
      if (v12 == 1)
      {
        v15 = IMGetXPCStringFromDictionary();
LABEL_17:
        v10 = v15;
        v14 = 0;
      }
    }

    if (CFArrayGetValueAtIndex(Mutable, v4))
    {
      if (v13)
      {
        v16 = *(v13 + 8);
        if (v16)
        {
          v16();
        }
      }
    }

    if (v10 && v13 && *v13)
    {
      v10 = (*v13)(v10);
    }

    CFArraySetValueAtIndex(Mutable, v4, v10);
    if (v14)
    {
      CFRelease(v14);
    }

    ++v4;
    v9 += 40;
  }

  while (v4 != 28);
  v2[3] = Mutable;
  value = xpc_dictionary_get_value(a1, "handles_cache");
  if (value)
  {
    v18 = value;
    if (!v2[4])
    {
      count = xpc_array_get_count(value);
      v2[4] = CFArrayCreateMutable(0, count, MEMORY[0x1E695E9C0]);
    }

    valuePtr[0] = MEMORY[0x1E69E9820];
    valuePtr[1] = 3221225472;
    valuePtr[2] = sub_1B7B591D0;
    valuePtr[3] = &unk_1E7CB8278;
    valuePtr[4] = v2;
    xpc_array_apply(v18, valuePtr);
  }

  v20 = xpc_dictionary_get_value(a1, "last_message_cache");
  if (v20)
  {
    v2[6] = _IMDCopyIMDMessageRecordFromXPCObjectClient(v20);
  }

  v2[5] = xpc_dictionary_get_int64(a1, "unread_count_cache");
  v2[7] = xpc_dictionary_get_int64(a1, "last_message_date_on_load");
  if (!v2[8])
  {
    v21 = IMGetXPCDictionaryFromDictionary();
    if (v21)
    {
      v2[8] = CFRetain(v21);
    }
  }

  if (!v2[9])
  {
    v22 = IMGetXPCArrayFromDictionary();
    if (v22)
    {
      v2[9] = CFRetain(v22);
    }
  }

LABEL_41:
  v2[2] = xpc_dictionary_get_int64(a1, "recordIdentifier");
  return v2;
}

void IMDSqlStatementBindInt(sqlite3_stmt **a1, int a2)
{
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      goto LABEL_7;
    }
  }

  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEB898(v5, v6, v7, v8);
  }

  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
LABEL_7:
      v9 = *(a1 + 8) + 1;
      *(a1 + 8) = v9;
      sqlite3_bind_int(v4, v9, a2);
    }
  }
}

void IMDSqlStatementBindTextFromCFString(uint64_t a1, uint64_t a2)
{
  if (a1 && *(a1 + 16) && *a1)
  {
    if (a2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEB514(v4, v5, v6, v7);
    }

    if (a2)
    {
LABEL_5:
      if (!a1)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEB5C8(v8, v9, v10, v11);
  }

  if (a1)
  {
LABEL_13:
    if (*a1)
    {
      v12 = CSDBCreateUTF8StringFromCFString();
      if (v12)
      {
        v13 = v12;
        v14 = *a1;
        v15 = *(a1 + 32) + 1;
        *(a1 + 32) = v15;
        sqlite3_bind_text(v14, v15, v13, -1, MEMORY[0x1E69E9B38]);
      }
    }
  }
}

uint64_t sub_1B7AE548C(void *a1)
{
  v2 = IMDChatRecordCreateFromRecordID(0, a1[6]);
  if (v2)
  {
    v3 = v2;
    v4 = IMDChatRecordCopyHandles(v2);
    v5 = xpc_array_create(0, 0);
    if (v5)
    {
      v9 = v5;
      v10 = objc_msgSend_count(v4, v6, v7, v8);
      if (v10 >= 1)
      {
        v13 = 0;
        v14 = v10 & 0x7FFFFFFF;
        do
        {
          v15 = objc_msgSend_objectAtIndex_(v4, v11, v13, v12);
          v16 = xpc_dictionary_create(0, 0, 0);
          if (v16)
          {
            v17 = v16;
            _IMDHandleRecordBulkCopyXPCDictionary(v15, v16, 1);
            xpc_array_append_value(v9, v17);
            xpc_release(v17);
          }

          ++v13;
        }

        while (v14 != v13);
      }

      v18 = a1[4];
      if (v18)
      {
        xpc_dictionary_set_value(v18, "array_result", v9);
      }

      xpc_release(v9);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    CFRelease(v3);
  }

  result = a1[5];
  if (result)
  {
    v20 = *(result + 16);

    return v20();
  }

  return result;
}

uint64_t sub_1B7AE55D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v10 = IMDHandleRecordCreateFromRecordIDUnlocked(v7, v9);
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

void *IMDChatRecordCopyHandles(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v2 = v1[2];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1B7AE55D0;
      v7[3] = &unk_1E7CB7520;
      v7[4] = &v8;
      v7[5] = v2;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT handle_id FROM chat_handle_join WHERE chat_id = ?", v7);
    }

    else
    {
      v3 = v1[4];
      if (v3)
      {
        v1 = CFRetain(v3);
LABEL_8:
        _Block_object_dispose(&v8, 8);
        return v1;
      }

      v4 = v1[2];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1B7AF08C4;
      v6[3] = &unk_1E7CB6838;
      v6[4] = &v8;
      __syncXPCIMDChatRecordCopyHandles_IPCAction(v6, v4);
    }

    v1 = v9[3];
    goto LABEL_8;
  }

  return v1;
}

uint64_t IMDHandleRecordCopyHandleRecordUnlocked(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7AEB3A0;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7AE58AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7AE58C4(uint64_t a1)
{
  v2 = IMDHandleRecordCopyHandleRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = &off_1E7CB8330;
    do
    {
      v5 += 5;
      CSDBRecordGetProperty();
      IMInsertNSStringsToXPCDictionary();
      ++v4;
    }

    while (v4 != 5);
    xpc_dictionary_set_int64(*(a1 + 32), "recordIdentifier", *(*(a1 + 48) + 16));

    CFRelease(v3);
  }
}

void _IMDHandleRecordBulkCopyXPCDictionary(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (a1)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1B7AE58C4;
      v19[3] = &unk_1E7CB8428;
      v19[4] = a2;
      v19[5] = a1;
      v19[6] = a1;
      if (a3)
      {
        _IMDPerformBlock(v19);
      }

      else
      {
        sub_1B7AE58C4(v19);
      }
    }

    else
    {
      v11 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEFF54(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFFCC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

uint64_t _IMDPerformBlock(uint64_t a1)
{
  if (a1)
  {
    IMDEnsureSharedRecordStoreInitialized();
    v2 = *(a1 + 16);

    return v2(a1);
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE670(v4, v5, v6, v7);
    }

    return IMDEnsureSharedRecordStoreInitialized();
  }
}

const void *IMDHandleRecordCreateFromRecordIDUnlocked_0(uint64_t a1, uint64_t a2)
{
  pthread_once(&stru_1EDBE5A70, sub_1B7B38EF8);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 0;
  }

  v4 = Instance;
  *(Instance + 16) = a2;
  *(Instance + 24) = 0;
  v5 = IMDHandleRecordCopyHandleRecordUnlocked(a2);
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v5 = v4;
    v6 = 0;
  }

  CFRelease(v5);
  return v6;
}

void IMDSqlOperationIterateRow(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF3054(v5, v6, v7, v8);
  }

  if (!v4)
  {
LABEL_7:
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3110(v9, v10, v11, v12);
    }
  }

LABEL_10:
  IMDSqlStatementIterateRow((a1 + 32), v4);
}

void IMDSqlStatementIterateRow(sqlite3_stmt **a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEC270(v4, v5, v6, v7);
    }

    if (!a1)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (*a1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (a1)
  {
    goto LABEL_7;
  }

LABEL_8:
  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEC324(v8, v9, v10, v11);
  }

LABEL_11:
  if (a1 && v3)
  {
    v12 = *a1;
    if (*a1)
    {
      v23 = 0;
      if (sqlite3_column_count(v12) >= 1)
      {
        v13 = 0;
        do
        {
          v14 = sqlite3_column_name(v12, v13);
          v15 = v3[2];
          v20[0] = a1;
          v20[1] = v14;
          v21 = v13;
          v22 = 0;
          v15(v3, v20, &v23);
          if (v23 == 1)
          {
            break;
          }

          ++v13;
        }

        while (v13 < sqlite3_column_count(v12));
      }
    }

    else
    {
      v16 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEC3D8(v16, v17, v18, v19);
      }
    }
  }
}

sqlite3_int64 IMDInt64FromSqlColumn(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    goto LABEL_13;
  }

  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEBE38(v3, v4, v5, v6);
  }

  v2 = *a1;
  if (*a1)
  {
LABEL_13:
    if (*v2)
    {
      return sqlite3_column_int64(*v2, *(a1 + 16));
    }

    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEBEEC(v8, v9, v10, v11);
    }
  }

  return 0;
}

uint64_t IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimitWithOptionalThreadIdentifier(void *a1, char *a2, uint64_t a3, const __CFString *a4, int a5, int a6, const char *a7)
{
  v75 = *MEMORY[0x1E69E9840];
  if (a3 || a5)
  {

    return _IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimitWithOptionalThreadIdentifier_Original(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v9 = objc_msgSend_count(a1, a2, 0, a4);
    v16 = objc_msgSend_count(a2, v10, v11, v12);
    v66 = 0;
    v67 = 0;
    if (a4)
    {
      v17 = CFStringGetLength(a4) > 0;
    }

    else
    {
      v17 = 0;
    }

    v19 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v13, v14, v15);
    isOneChatEnabled = objc_msgSend_isOneChatEnabled(v19, v20, v21, v22);
    if (v9 && v16 && v9 == v16)
    {
      v24 = isOneChatEnabled;
      v53 = v17 && (IMMessageThreadIdentifierGetComponents(), objc_msgSend_length(v67, v25, v26, v27)) && objc_msgSend_length(v66, v28, v29, v30) != 0;
      v62 = 0;
      v63 = &v62;
      v64 = 0x2020000000;
      v65 = 0;
      if (IMDIsRunningInDatabaseServerProcess())
      {
        v33 = objc_alloc(MEMORY[0x1E695DFA8]);
        v36 = objc_msgSend_initWithCapacity_(v33, v34, a7, v35);
        if (!v36)
        {
          v37 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v40 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v38, &stru_1F2FA9728, v39);
            sub_1B7CFBF88(v40, v74);
          }
        }

        v52 = objc_alloc_init(MEMORY[0x1E69A6170]);
        objc_msgSend_startTimingForKey_(v52, v41, @"sqlite-timing", v42);
        v43 = 0;
        v44 = v24 ^ 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v43);
          v46 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 134218498;
            v69 = v43;
            v70 = 2048;
            v71 = v9;
            v72 = 2112;
            v73 = ValueAtIndex;
            _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_INFO, "history query %lu / %lu - %@", buf, 0x20u);
          }

          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 3221225472;
          v58[2] = sub_1B7AFB9DC;
          v58[3] = &unk_1E7CBCDD8;
          v58[8] = v43;
          v58[9] = v9;
          v59 = v53;
          v60 = v44;
          v61 = a6;
          v58[10] = a7;
          v58[11] = a1;
          v58[4] = ValueAtIndex;
          v58[5] = v67;
          v58[12] = a2;
          v58[13] = a4;
          v58[6] = v66;
          v58[7] = v36;
          IMDRunSqlOperation(v58);
          ++v43;
        }

        while (v9 != v43);
        objc_msgSend_stopTimingForKey_(v52, v47, @"sqlite-timing", v48);
        v49 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v69 = v52;
          _os_log_impl(&dword_1B7AD5000, v49, OS_LOG_TYPE_INFO, "sqlite query timing: %@", buf, 0xCu);
        }

        MessagesInSet = IMDMessageRecordLoadMessagesInSet(v36, a7, 1, v50);
        v63[3] = MessagesInSet;
      }

      else
      {
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = sub_1B7BDABB8;
        v57[3] = &unk_1E7CB6838;
        v57[4] = &v62;
        __syncXPCIMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesWithOptionalThreadIdentifierAndLimit_IPCAction(v57, a1, a2, 0, a4, a7, 0, a6 != 0);
      }

      v32 = v63[3];
      _Block_object_dispose(&v62, 8);
    }

    else
    {
      v31 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFBF4C();
      }

      return 0;
    }

    return v32;
  }
}

void sub_1B7AE6248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const __CFArray *IMDMessageRecordLoadMessagesInSet(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v6 = objc_msgSend_allObjects(a1, a2, a3, a4);
  v10 = objc_msgSend_mutableCopy(v6, v7, v8, v9);
  v11 = v10;
  if (v10)
  {
    Count = CFArrayGetCount(v10);
    if (Count << 32)
    {
      v13 = Count;
      if (Count >= a2)
      {
        v14 = a2;
      }

      else
      {
        v14 = Count;
      }

      if (a2)
      {
        v15 = v14;
      }

      else
      {
        v15 = Count;
      }

      v16 = objc_alloc(MEMORY[0x1E695DF70]);
      v19 = objc_msgSend_initWithCapacity_(v16, v17, v13, v18);
      if (v13 >= 1)
      {
        v20 = 0;
        v21 = *MEMORY[0x1E695E480];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v11, v20);
          v26 = objc_msgSend_integerValue(ValueAtIndex, v23, v24, v25);
          v27 = IMDMessageRecordCreateFromRecordIDUnlocked(v21, v26);
          if (v27)
          {
            v30 = v27;
            objc_msgSend_addObject_(v19, v28, v27, v29);
            CFRelease(v30);
          }

          ++v20;
        }

        while (v13 != v20);
      }

      if (v4)
      {
        v31 = IMDCreateMessageSortComparatorDescending();
      }

      else
      {
        v31 = IMDCreateMessageSortComparatorAscending();
      }

      v32 = v31;
      CFRelease(v11);
      if (!v32)
      {
        v33 = MEMORY[0x1E696AEC0];
        v34 = IMFileLocationTrimFileName();
        v37 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v35, &stru_1F2FA9728, v36);
        v40 = objc_msgSend_stringWithFormat_(v33, v38, @"Unexpected nil '%@' in %s at %s:%d. %@", v39, @"comparator", "CFMutableArrayRef IMDMessageRecordLoadMessagesInSet(NSSet *, uint64_t, BOOL)", v34, 1181, v37);
        v41 = IMGetAssertionFailureHandler();
        if (v41)
        {
          v41(v40);
        }

        else
        {
          v45 = objc_msgSend_warning(MEMORY[0x1E69A6138], v42, v43, v44);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CED0B0();
          }
        }
      }

      v46 = objc_autoreleasePoolPush();
      v49 = objc_msgSend_sortedArrayUsingComparator_(v19, v47, v32, v48);
      if (objc_msgSend_count(v19, v50, v51, v52) < v15)
      {
        v15 = objc_msgSend_count(v19, v53, v54, v55);
      }

      v56 = objc_msgSend_subarrayWithRange_(v49, v53, 0, v15);
      v11 = objc_msgSend_mutableCopy(v56, v57, v58, v59);
      objc_autoreleasePoolPop(v46);
      if ((v4 & 1) == 0)
      {
        v63 = objc_msgSend_reverseObjectEnumerator(v11, v60, v61, v62);
        v67 = objc_msgSend_allObjects(v63, v64, v65, v66);
        v71 = objc_msgSend_mutableCopy(v67, v68, v69, v70);

        v11 = v71;
      }

      _Block_release(v32);
    }
  }

  return v11;
}

uint64_t sub_1B7AE64DC(uint64_t a1)
{
  if ((a1 - 17) > 0x4A)
  {
    return 0;
  }

  else
  {
    return qword_1B7D09860[a1 - 17];
  }
}

const void *IMDMessageRecordCreateFromRecordIDWithLock(uint64_t a1, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  pthread_once(&stru_1EDBE5A60, sub_1B7B346D4);
  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (Instance)
  {
    Instance[2] = 0u;
    Instance[3] = 0u;
    Instance[1] = 0u;
    *(Instance + 2) = a2;
    if (a3)
    {
      v7 = IMDMessageRecordCopyMessageRecord(a2);
      if (v7)
      {
LABEL_4:
        CFRelease(v7);
        return v6;
      }
    }

    else
    {
      v7 = IMDMessageRecordCopyMessageRecordUnlocked(a2);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v8 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      v11 = a2;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Error IMDMessageRecordCreateFromRecordIDWithLock could not create message for id %lld", &v10, 0xCu);
    }

    CFRelease(v6);
    return 0;
  }

  return v6;
}

uint64_t IMDMessageRecordCopyMessageRecordUnlocked(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7AEAEF0;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7AE66D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7AE66E8(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimitWithOptionalThreadIdentifier(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 88), *(a1 + 89), *(a1 + 80));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = *(a1 + 88);
      v10 = objc_msgSend_count(v2, v4, v5, v6);
      v11 = @"NO";
      *v25 = 138413058;
      *&v25[4] = v8;
      *&v25[12] = 2112;
      if (v9)
      {
        v11 = @"YES";
      }

      *&v25[14] = v7;
      v26 = 2112;
      v27 = v11;
      v28 = 2048;
      v29 = v10;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying messages for chat identifiers: %@ on services: %@ onlyMessages: %@   (Results: %ld)", v25, 0x2Au);
    }
  }

  v15 = xpc_array_create(0, 0);
  if (v15)
  {
    v16 = objc_msgSend_count(v2, v12, v13, v14);
    if (v16 >= 1)
    {
      v19 = 0;
      v20 = v16 & 0x7FFFFFFF;
      do
      {
        v21 = objc_msgSend_objectAtIndex_(v2, v17, v19, v18, *v25, *&v25[8]);
        v22 = xpc_dictionary_create(0, 0, 0);
        if (v22)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v21, v22, 1, 0);
          xpc_array_append_value(v15, v22);
          xpc_release(v22);
        }

        ++v19;
      }

      while (v20 != v19);
    }

    v23 = *(a1 + 64);
    if (v23)
    {
      xpc_dictionary_set_value(v23, "array_result", v15);
    }

    xpc_release(v15);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *sub_1B7AE68FC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {

    v3 = sub_1B7CFE880();
    if (*(v2 + 16))
    {
      v5 = sub_1B7AE11D0(v3, v4);
      v7 = v6;

      if (v7)
      {
        v8 = (*(v2 + 56) + 16 * v5);
        v70 = v8[1];
        v71 = *v8;

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v9 = sub_1B7CFE880();
  v11 = sub_1B7AE7CB4(v9, v10);
  v13 = v12;

  v14 = sub_1B7AE8874(v11, v13);
  v70 = v15;
  v71 = v14;
LABEL_8:
  v16 = sub_1B7AE987C();
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v84 = MEMORY[0x1E69E7CC0];
    sub_1B7AE775C(0, v17, 0);
    v19 = v84;
    v20 = v16 + 32;
    do
    {
      sub_1B7AE90A8(v20, v74);
      sub_1B7AE90A8(v74, v73);

      sub_1B7AE777C(v73, v2, &v75);
      sub_1B7AE9168(v74);
      v84 = v19;
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B7AE775C((v21 > 1), v22 + 1, 1);
        v19 = v84;
      }

      *(v19 + 16) = v22 + 1;
      v23 = v19 + 136 * v22;
      *(v23 + 32) = v75;
      v24 = v76;
      v25 = v77;
      v26 = v79;
      *(v23 + 80) = v78;
      *(v23 + 96) = v26;
      *(v23 + 48) = v24;
      *(v23 + 64) = v25;
      v27 = v80;
      v28 = v81;
      v29 = v82;
      *(v23 + 160) = v83;
      *(v23 + 128) = v28;
      *(v23 + 144) = v29;
      *(v23 + 112) = v27;
      v20 += 40;
      --v17;
    }

    while (v17);

    v18 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  v30 = *(v19 + 16);
  v68 = v2;
  if (v30)
  {
    v74[0] = v18;
    sub_1B7AE8FB4(0, v30, 0);
    v31 = v74[0];
    v32 = v19 + 32;
    do
    {
      sub_1B7AEBEFC(v32, &v75);
      v33 = v75;
      v34 = v76;

      sub_1B7AEBF70(&v75);
      v74[0] = v31;
      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1B7AE8FB4((v35 > 1), v36 + 1, 1);
        v31 = v74[0];
      }

      *(v31 + 16) = v36 + 1;
      v37 = v31 + 32 * v36;
      *(v37 + 32) = v33;
      *(v37 + 48) = v34;
      v32 += 136;
      --v30;
    }

    while (v30);
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  if (*(v18 + 16))
  {
LABEL_22:
    sub_1B7C107FC(&qword_1EBA53410, &qword_1B7D11578);
    v38 = sub_1B7CFF380();
    goto LABEL_23;
  }

  v38 = MEMORY[0x1E69E7CC8];
LABEL_23:
  *&v75 = v38;

  sub_1B7AEBFC4(v39, 1, &v75);

  v40 = v75;
  v66[2] = v71;
  v66[3] = v70;
  v66[4] = v19;
  v41 = sub_1B7CFE870();
  v42 = *(v41 + 16);
  if (v42)
  {
    *&v75 = v18;
    v67 = v41;
    v69 = v42;
    sub_1B7AE6F88(0, v42, 0);
    v43 = v69;
    v44 = v67;
    v45 = 0;
    v46 = v75;
    while (v45 < *(v44 + 16))
    {
      v47 = *(v67 + 32 + 8 * v45);
      v48 = *(v47 + 16);
      if (v48)
      {
        v72 = v46;
        v74[0] = MEMORY[0x1E69E7CC0];

        sub_1B7AE70B4(0, v48, 0);
        v49 = v74[0];
        v50 = (v47 + 40);
        while (*(v40 + 16))
        {
          v51 = *(v50 - 1);
          v52 = *v50;

          v53 = sub_1B7AE11D0(v51, v52);
          if ((v54 & 1) == 0)
          {
            goto LABEL_43;
          }

          v55 = (*(v40 + 56) + 16 * v53);
          v56 = *v55;
          v57 = v55[1];

          v74[0] = v49;
          v59 = *(v49 + 16);
          v58 = *(v49 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_1B7AE70B4((v58 > 1), v59 + 1, 1);
            v49 = v74[0];
          }

          *(v49 + 16) = v59 + 1;
          v60 = v49 + 16 * v59;
          *(v60 + 32) = v56;
          *(v60 + 40) = v57;
          v50 += 2;
          if (!--v48)
          {

            v44 = v67;
            v2 = v68;
            v43 = v69;
            v46 = v72;
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
        break;
      }

      v49 = MEMORY[0x1E69E7CC0];
LABEL_35:
      *&v75 = v46;
      v62 = *(v46 + 16);
      v61 = *(v46 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1B7AE6F88((v61 > 1), v62 + 1, 1);
        v43 = v69;
        v44 = v67;
        v46 = v75;
      }

      ++v45;
      *(v46 + 16) = v62 + 1;
      *(v46 + 8 * v62 + 32) = v49;
      if (v45 == v43)
      {
        v63 = v46;

        v64 = v63;
        goto LABEL_40;
      }
    }

    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    v64 = MEMORY[0x1E69E7CC0];
LABEL_40:
    result = v66;
    v66[5] = v64;
    v66[6] = v40;
    v66[7] = v2;
  }

  return result;
}

char *sub_1B7AE6E7C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B7C107FC(&qword_1EBA52490, &qword_1B7D0CA78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7AE6F88(char *a1, int64_t a2, char a3)
{
  result = sub_1B7AE6E7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B7AE6FA8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B7C107FC(&qword_1EBA52468, &qword_1B7D0CA58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7AE70B4(char *a1, int64_t a2, char a3)
{
  result = sub_1B7AE6FA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B7AE70D4(uint64_t a1)
{
  v2 = sub_1B7CFE8B0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B7C2F148(a1);
  sub_1B7CFE8C0();
  sub_1B7CFE960();
  swift_allocObject();
  v3 = sub_1B7CFE970();
  v4 = sub_1B7CC12C0(a1, v3);
  v5 = sub_1B7CFE8D0();
  v6 = v5;
  if (v5 >> 62)
  {
LABEL_36:
    v7 = sub_1B7CFF120();
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = a1;
  v42 = v3;
  if (v7)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1B7C31168(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      goto LABEL_38;
    }

    v8 = 0;
    v9 = v43;
    v10 = v6;
    v39 = v6 & 0xC000000000000001;
    v40 = v6;
    do
    {
      if (v39)
      {
        v11 = MEMORY[0x1B8CAE380](v8, v10);
      }

      else
      {
        v11 = *(v10 + 8 * v8 + 32);
      }

      v12 = sub_1B7CFE880();
      v14 = v13;
      type metadata accessor for SQLEntitySchema();
      swift_allocObject();

      v15 = sub_1B7AE68FC(v11, v4);
      v43 = v9;
      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B7C31168((v16 > 1), v17 + 1, 1);
        v9 = v43;
      }

      ++v8;
      *(v9 + 16) = v17 + 1;
      v18 = (v9 + 24 * v17);
      v18[4] = v12;
      v18[5] = v14;
      v18[6] = v15;
      v10 = v40;
    }

    while (v7 != v8);

    a1 = v41;
    if (*(v9 + 16))
    {
      goto LABEL_13;
    }

LABEL_15:
    v19 = MEMORY[0x1E69E7CC8];
    goto LABEL_16;
  }

  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  sub_1B7C107FC(&qword_1EBA53760, &qword_1B7D13068);
  v19 = sub_1B7CFF380();
LABEL_16:
  v43 = v19;

  sub_1B7AEB4BC(v20, 1, &v43);

  v4 = v43;
  v38[2] = v42;
  v38[4] = v4;
  v21 = *(v4 + 16);
  if (!v21)
  {

    v6 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v38[3] = v6;
    v24 = *(a1 + 16);
    if (v24)
    {
      v43 = MEMORY[0x1E69E7CC0];
      v3 = &v43;
      sub_1B7AEB984(0, v24, 0);
      v25 = 0;
      v26 = v43;
      v27 = a1 + 40;
      do
      {
        if (v25 >= *(a1 + 16))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v28 = *(v27 - 8);
        if (!sub_1B7CFE8A0())
        {
          goto LABEL_39;
        }

        v29 = sub_1B7CFE880();
        v6 = v30;
        if (!*(v4 + 16))
        {
          goto LABEL_40;
        }

        v3 = sub_1B7AE11D0(v29, v30);
        a1 = v31;

        if ((a1 & 1) == 0)
        {
          goto LABEL_35;
        }

        v6 = *(*(v4 + 56) + 8 * v3);

        v43 = v26;
        v33 = *(v26 + 16);
        v32 = *(v26 + 24);
        if (v33 >= v32 >> 1)
        {
          v3 = &v43;
          sub_1B7AEB984((v32 > 1), v33 + 1, 1);
          v26 = v43;
        }

        ++v25;
        *(v26 + 16) = v33 + 1;
        v34 = v26 + 16 * v33;
        *(v34 + 32) = v28;
        *(v34 + 40) = v6;
        v27 += 16;
        a1 = v41;
      }

      while (v24 != v25);

      if (!*(v26 + 16))
      {
        goto LABEL_32;
      }
    }

    else
    {

      if (!*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_32:
        v35 = MEMORY[0x1E69E7CC8];
        goto LABEL_33;
      }
    }

    sub_1B7C107FC(&qword_1EBA53768, &unk_1B7D13070);
    v35 = sub_1B7CFF380();
LABEL_33:
    v43 = v35;

    sub_1B7AEB9A4(v36, 1, &v43);

    result = v38;
    v38[5] = v43;
    return result;
  }

  v6 = sub_1B7AEC374(*(v4 + 16), 0);
  v22 = sub_1B7AEC378(&v43, (v6 + 32), v21, v4);
  v23 = v43;
  swift_retain_n();

  sub_1B7AEC4CC(v23);
  if (v22 == v21)
  {
    a1 = v41;
    goto LABEL_20;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

char *sub_1B7AE763C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B7C107FC(&qword_1EBA524A8, &qword_1B7D0CA90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7AE775C(char *a1, int64_t a2, char a3)
{
  result = sub_1B7AE763C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B7AE777C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B7CFE7D0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7AE9124(a1, a1[3]);
  v9 = sub_1B7CFE680();
  v11 = v10;
  sub_1B7AE9124(a1, a1[3]);
  v12 = sub_1B7CFE670();
  v14 = v13;

  if ((v14 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v14) & 0xF;
  }

  else
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  sub_1B7AE9124(a1, a1[3]);
  if (v15)
  {
    v16 = sub_1B7CFE670();
  }

  else
  {
    v18 = sub_1B7CFE680();
    v20 = sub_1B7AE7CB4(v18, v19);
    v22 = v21;

    v17 = v22;
    v16 = v20;
  }

  v23 = sub_1B7AE8874(v16, v17);
  v58 = v24;
  sub_1B7AE9124(a1, a1[3]);
  v57 = sub_1B7CFE690();
  sub_1B7AE9124(a1, a1[3]);
  v25 = sub_1B7CFE660();
  sub_1B7AE90A8(a1, v64);
  sub_1B7C107FC(&unk_1EBA524E0, &qword_1B7D0B228);
  sub_1B7CFE940();
  v26 = swift_dynamicCast();
  v59 = v23;
  v60 = v9;
  v56 = v25;
  if (v26)
  {

    sub_1B7AE9124(a1, a1[3]);
    v27 = sub_1B7CFE6A0();
    v28 = swift_conformsToProtocol2();
    if (v28)
    {
      v29 = v28;
      sub_1B7CFE8F0();

      if (v63)
      {
        sub_1B7C107FC(&qword_1EBA52460, &qword_1B7D113A0);
        v30 = swift_dynamicCast();
        v31 = v65;
        if (v30)
        {
          v32 = -1;
        }

        else
        {
          v31 = 0;
          v32 = 0;
        }

        v33 = vdupq_n_s64(v32);
        v34 = vandq_s8(v64[0], v33);
        v35 = vandq_s8(v64[1], v33);
      }

      else
      {
        sub_1B7AE8C30(&v61);
        v31 = 0;
        v34 = 0uLL;
        v35 = 0uLL;
      }

      v43 = 0;
      v42 = 0;
      v44 = 0;
      v46 = 0;
      v48 = 0;
      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {
    sub_1B7AE90A8(a1, v64);
    sub_1B7CFE800();
    if (swift_dynamicCast())
    {
      v55 = v11;
      if (a2)
      {
        v36 = sub_1B7CFE7F0();
        if (*(a2 + 16))
        {
          v38 = sub_1B7AE11D0(v36, v37);
          v40 = v39;

          if (v40)
          {
            v41 = (*(a2 + 56) + 16 * v38);
            v43 = *v41;
            v42 = v41[1];

            v44 = sub_1B7AE8874(0x4449574F52, 0xE500000000000000);
            v46 = v45;
            sub_1B7CFE7E0();
            v47 = sub_1B7AE8C98(v8);

            v31 = 0;
            v48 = (v47 << 8) | 4;
            v34 = 0uLL;
            v29 = &off_1F2FA89F8;
            v27 = MEMORY[0x1E69E6530];
            v35 = 0uLL;
            v11 = v55;
LABEL_21:
            v49 = v56 & 1;
            v50 = v57 & 1;
            v51 = v59;
            *a3 = v60;
            *(a3 + 8) = v11;
            v52 = v58;
            *(a3 + 16) = v51;
            *(a3 + 24) = v52;
            *(a3 + 32) = v50;
            *(a3 + 33) = v49;
            *(a3 + 34) = v64[0].i32[0];
            *(a3 + 38) = v64[0].i16[2];
            *(a3 + 40) = v43;
            *(a3 + 48) = v42;
            *(a3 + 56) = v44;
            *(a3 + 64) = v46;
            *(a3 + 72) = v48;
            *(a3 + 74) = v61;
            *(a3 + 78) = v62;
            *(a3 + 80) = v27;
            *(a3 + 88) = v29;
            *(a3 + 96) = v34;
            *(a3 + 112) = v35;
            *(a3 + 128) = v31;
            return sub_1B7AE9168(a1);
          }
        }

        else
        {
        }

        v9 = v60;
      }

      v64[0].i64[0] = 0;
      v64[0].i64[1] = 0xE000000000000000;
      sub_1B7CFF210();
      MEMORY[0x1B8CADCA0](0xD000000000000031, 0x80000001B7D51630);
      MEMORY[0x1B8CADCA0](v9, v55);
      MEMORY[0x1B8CADCA0](0xD00000000000002DLL, 0x80000001B7D51670);
    }
  }

  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

uint64_t sub_1B7AE7CB4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B7CFF870();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = 0;
  v61 = 0xE000000000000000;
  v58 = 0;
  v59 = 0xE000000000000000;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v55 = a1;
  v56 = a2;
  *&v57 = 0;
  *(&v57 + 1) = v8;

  swift_beginAccess();
  swift_beginAccess();
  result = sub_1B7CFEB90();
  if (!v10)
  {
LABEL_95:
    sub_1B7AE8750(&v58, &v60);

    return v60;
  }

  v11 = result;
  v12 = v10;
  v13 = 0;
  v14 = (v5 + 8);
  while (1)
  {
    v16 = (v12 & 0x2000000000000000) != 0 ? HIBYTE(v12) & 0xF : v11 & 0xFFFFFFFFFFFFLL;
    if (!v16)
    {
      break;
    }

    if ((v12 & 0x1000000000000000) != 0)
    {
      v17 = sub_1B7CFEAF0();
    }

    else
    {
      v17 = sub_1B7CFF1F0() << 16;
    }

    v18 = 4 * v16;
    if (4 * v16 == v17 >> 14)
    {
      result = sub_1B7AE8568(v11, v12);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_97;
      }

      sub_1B7CFF880();
      v19 = sub_1B7CFF850();
      (*v14)(v7, v4);
      if (v19)
      {
        goto LABEL_35;
      }
    }

    if ((sub_1B7CFE9F0() & 1) == 0)
    {
      goto LABEL_36;
    }

    if ((v12 & 0x1000000000000000) != 0)
    {
      if (v18 == sub_1B7CFEAF0() >> 14)
      {
LABEL_21:
        result = sub_1B7AE8568(v11, v12);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_101;
        }

        sub_1B7CFF880();
        v20 = sub_1B7CFF860();
        (*v14)(v7, v4);
        if (v20)
        {
          goto LABEL_35;
        }
      }
    }

    else if (v18 == ((4 * sub_1B7CFF1F0()) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_21;
    }

    if (sub_1B7CFE9F0())
    {
      if ((sub_1B7CFE9E0() | v13))
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

LABEL_35:
    if (v13)
    {
LABEL_36:
      if ((v12 & 0x1000000000000000) != 0)
      {
        if (v18 != sub_1B7CFEAF0() >> 14)
        {
          goto LABEL_42;
        }
      }

      else if (v18 != ((4 * sub_1B7CFF1F0()) & 0x3FFFFFFFFFFFFLL))
      {
        goto LABEL_42;
      }

      result = sub_1B7AE8568(v11, v12);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_99;
      }

      sub_1B7CFF880();
      v28 = sub_1B7CFF850();
      (*v14)(v7, v4);
      if ((v28 & 1) == 0)
      {
LABEL_42:
        if ((sub_1B7CFE9F0() & 1) == 0)
        {
          goto LABEL_51;
        }

        v29 = sub_1B7AE86B8(0xFuLL, v11, v12);
        if ((v12 & 0x1000000000000000) != 0)
        {
          if (v18 != sub_1B7CFEAF0() >> 14)
          {
            goto LABEL_49;
          }
        }

        else if (v18 != ((4 * (sub_1B7CFF1F0() + (v29 >> 16))) & 0x3FFFFFFFFFFFFLL))
        {
LABEL_49:
          if (sub_1B7CFE9F0() & 1) != 0 && (sub_1B7CFE9E0())
          {
LABEL_51:
            swift_beginAccess();
            MEMORY[0x1B8CADC90](v11, v12);
            swift_endAccess();
            if ((v12 & 0x1000000000000000) != 0)
            {
              goto LABEL_52;
            }

            goto LABEL_80;
          }

          goto LABEL_54;
        }

        result = sub_1B7AE8568(v11, v12);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_103;
        }

        sub_1B7CFF880();
        v30 = sub_1B7CFF860();
        (*v14)(v7, v4);
        if ((v30 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

LABEL_54:
      v52 = v55;
      v53 = v56;
      v54 = v57;

      v31 = sub_1B7CFEB90();
      if (v32)
      {
        v33 = v31;
        v34 = v32;
        v35 = sub_1B7AE86B8(0xFuLL, v31, v32);
        if ((v34 & 0x1000000000000000) != 0)
        {
          v36 = sub_1B7CFEAF0();
        }

        else
        {
          v36 = (sub_1B7CFF1F0() + (v35 >> 16)) << 16;
        }

        v37 = HIBYTE(v34) & 0xF;
        if ((v34 & 0x2000000000000000) == 0)
        {
          v37 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (v36 >> 14 == 4 * v37)
        {
          result = sub_1B7AE8568(v33, v34);
          if ((result & 0x100000000) != 0)
          {
            goto LABEL_100;
          }

          sub_1B7CFF880();
          v38 = sub_1B7CFF840();
          (*v14)(v7, v4);
          if (v38)
          {
            goto LABEL_69;
          }
        }

        if ((sub_1B7CFE9E0() & 1) == 0)
        {
LABEL_78:

          goto LABEL_79;
        }

        if (sub_1B7CFEA00())
        {
          result = sub_1B7AE8568(v33, v34);
          if ((result & 0x100000000) != 0)
          {
            goto LABEL_104;
          }

          sub_1B7CFF880();
          v39 = sub_1B7CFF860();
          (*v14)(v7, v4);
          if (v39)
          {
            goto LABEL_69;
          }
        }

        if ((sub_1B7CFE9F0() & 1) == 0)
        {
LABEL_69:

          goto LABEL_70;
        }

        v40 = sub_1B7CFE9E0();

        if (v40)
        {
          goto LABEL_79;
        }

LABEL_70:
        v42 = v58;
        v41 = v59;
        v43 = HIBYTE(v59) & 0xF;
        if ((v59 & 0x2000000000000000) == 0)
        {
          v43 = v58 & 0xFFFFFFFFFFFFLL;
        }

        if (v43)
        {
          v44 = v60 & 0xFFFFFFFFFFFFLL;
          if ((v61 & 0x2000000000000000) != 0)
          {
            v44 = HIBYTE(v61) & 0xF;
          }

          if (v44)
          {
            swift_beginAccess();
            MEMORY[0x1B8CADCA0](95, 0xE100000000000000);
            swift_endAccess();
          }

          swift_beginAccess();
          MEMORY[0x1B8CADCA0](v42, v41);
          swift_endAccess();
          v58 = 0;
          v59 = 0xE000000000000000;
          goto LABEL_78;
        }
      }

LABEL_79:
      v45 = sub_1B7CFE9D0();
      v47 = v46;
      swift_beginAccess();
      MEMORY[0x1B8CADCA0](v45, v47);
      swift_endAccess();

      if ((v12 & 0x1000000000000000) != 0)
      {
        goto LABEL_52;
      }

      goto LABEL_80;
    }

LABEL_25:
    v22 = v58;
    v21 = v59;
    v23 = HIBYTE(v59) & 0xF;
    if ((v59 & 0x2000000000000000) == 0)
    {
      v23 = v58 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      v24 = v60 & 0xFFFFFFFFFFFFLL;
      if ((v61 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v61) & 0xF;
      }

      if (v24)
      {
        swift_beginAccess();
        MEMORY[0x1B8CADCA0](95, 0xE100000000000000);
        swift_endAccess();
      }

      swift_beginAccess();
      MEMORY[0x1B8CADCA0](v22, v21);
      swift_endAccess();
      v58 = 0;
      v59 = 0xE000000000000000;
    }

    v25 = sub_1B7CFE9D0();
    v27 = v26;
    swift_beginAccess();
    MEMORY[0x1B8CADCA0](v25, v27);
    swift_endAccess();

    if ((v12 & 0x1000000000000000) != 0)
    {
LABEL_52:
      if (v18 != sub_1B7CFEAF0() >> 14)
      {
        goto LABEL_83;
      }

      goto LABEL_81;
    }

LABEL_80:
    if (v18 != ((4 * sub_1B7CFF1F0()) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_83;
    }

LABEL_81:
    result = sub_1B7AE8568(v11, v12);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_98;
    }

    sub_1B7CFF880();
    v48 = sub_1B7CFF850();
    (*v14)(v7, v4);
    if (v48)
    {
LABEL_92:

      v13 = 1;
      goto LABEL_6;
    }

LABEL_83:
    if ((sub_1B7CFE9F0() & 1) == 0)
    {

      v13 = 0;
      goto LABEL_6;
    }

    if ((v12 & 0x1000000000000000) != 0)
    {
      if (v18 == sub_1B7CFEAF0() >> 14)
      {
LABEL_88:
        result = sub_1B7AE8568(v11, v12);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_102;
        }

        sub_1B7CFF880();
        v49 = sub_1B7CFF860();
        (*v14)(v7, v4);
        if (v49)
        {
          goto LABEL_92;
        }
      }
    }

    else if (v18 == ((4 * sub_1B7CFF1F0()) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_88;
    }

    if ((sub_1B7CFE9F0() & 1) == 0)
    {
      goto LABEL_92;
    }

    v50 = sub_1B7CFE9E0();

    v13 = v50 ^ 1;
LABEL_6:
    result = sub_1B7CFEB90();
    v11 = result;
    v12 = v15;
    if (!v15)
    {
      goto LABEL_95;
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

unint64_t sub_1B7AE8568(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1B7AE86B8(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1B7CFF200();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1B7CFF280() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1B7AE86B8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B7CEA864(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B7CEA8D8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

uint64_t sub_1B7AE8750(uint64_t *a1, void *a2)
{
  result = swift_beginAccess();
  v5 = a1[1];
  v6 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  if (v6)
  {
    swift_beginAccess();
    v7 = a2[1];
    v8 = *a2 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v7) & 0xF;
    }

    if (v8)
    {
      swift_beginAccess();
      MEMORY[0x1B8CADCA0](95, 0xE100000000000000);
      swift_endAccess();
    }

    swift_beginAccess();
    v9 = *a1;
    v10 = a1[1];
    swift_beginAccess();

    MEMORY[0x1B8CADCA0](v9, v10);
    swift_endAccess();

    swift_beginAccess();
    *a1 = 0;
    a1[1] = 0xE000000000000000;
  }

  return result;
}

uint64_t sub_1B7AE8874(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA52030, &unk_1B7D13080);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_1B7C107FC(&qword_1EBA52038, &qword_1B7D0AD18);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  v11 = sub_1B7C107FC(&qword_1EBA52040, &qword_1B7D13090);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - v13;
  sub_1B7CFE310();
  v15 = a1;
  v18[0] = a2;
  sub_1B7CFE320();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B7C1D5F8(v6);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    swift_getKeyPath();
    sub_1B7CFE330();

    v16 = sub_1B7AE8BB8(v18[1], v18[2], v18[3], v18[4], a1, v18[0]);

    (*(v8 + 8))(v10, v7);
    if (v16)
    {
      (*(v12 + 8))(v14, v11);
      return v15;
    }
  }

  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

uint64_t sub_1B7AE8BB8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_1B7CFF560() & 1;
  }
}

uint64_t sub_1B7AE8C30(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA51FA8, qword_1B7D0B230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7AE8C98(uint64_t a1)
{
  v2 = sub_1B7CFE7D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E697BCE0])
  {
    v8 = 2;
LABEL_7:
    (*(v3 + 8))(a1, v2);
    return v8;
  }

  if (v7 == *MEMORY[0x1E697BCD8])
  {
    v8 = 4;
    goto LABEL_7;
  }

  if (v7 == *MEMORY[0x1E697BCD0])
  {
    v8 = 1;
    goto LABEL_7;
  }

  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD000000000000026, 0x80000001B7D516A0);
  sub_1B7CFF320();
  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

void *sub_1B7AE8E80(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B7C107FC(&qword_1EBA52498, &qword_1B7D0CA80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(&qword_1EBA524A0, &qword_1B7D0CA88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B7AE8FB4(void *a1, int64_t a2, char a3)
{
  result = sub_1B7AE8E80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void _IMDMessageRecordBulkCopyXPCDictionary(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a2)
  {
    if (a1)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_1B7AEAF34;
      v20[3] = &unk_1E7CB8258;
      v20[4] = a2;
      v20[5] = a1;
      v21 = a3;
      v20[6] = a1;
      v22 = a4;
      _IMDPerformBlock(v20);
    }

    else
    {
      v12 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEFB94(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFC0C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

uint64_t sub_1B7AE90A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B7AE910C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1B7AE9124(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1B7AE9168(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1B7AE91B4(uint64_t a1, void *a2)
{
  IMDCreateTriggersWithOperation(a2, *(a1 + 40));
  v4 = *(a1 + 32);

  return IMDSqlOperationGetError(a2, v4);
}

uint64_t IMDCreateTriggersWithOperation(void *a1, const char *a2)
{
  v2 = a2;
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *buf = xmmword_1E7CB8960;
    *&buf[16] = *off_1E7CB8970;
    v45 = 182;
    v4 = MEMORY[0x1E696AEC0];
    v5 = IMFileLocationTrimFileName();
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, &stru_1F2FA9728, v7);
    v11 = objc_msgSend_stringWithFormat_(v4, v9, @"Unexpected nil '%@' in %s at %s:%d. %@", v10, @"operation", "BOOL IMDCreateTriggersWithOperation(IMDSqlOperation *, BOOL)", v5, 182, v8);
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
        sub_1B7CEFAB0(v11, v16, v17, v18, v19, v20, v21, v22);
      }
    }
  }

  if (qword_1EDBE6318[0] != -1)
  {
    sub_1B7AE94E0();
  }

  v23 = qword_1EDBE6310;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(qword_1EDBE6310, a2, &v39, v43, 16);
  if (v24)
  {
    v27 = v24;
    v28 = *v40;
    while (2)
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(v23);
        }

        v30 = *(*(&v39 + 1) + 8 * i);
        v31 = objc_msgSend_objectForKey_(v23, v25, v30, v26);
        if (!_IMDSqlOperationRunQuery(a1, v31, 0, 0))
        {
          v34 = IMLogHandleForCategory();
          result = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
          if (result)
          {
            v38 = IMDSqlOperationErrorDescription(a1, v35, v36, v37);
            *buf = 138412546;
            *&buf[4] = v30;
            *&buf[12] = 2112;
            *&buf[14] = v38;
            _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "Create trigger failed: %@: %@", buf, 0x16u);
            return 0;
          }

          return result;
        }

        if (v2)
        {
          v32 = IMLogHandleForCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v30;
            *&buf[12] = 2112;
            *&buf[14] = v31;
            _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, "Created trigger ok: %@, trigger: %@", buf, 0x16u);
          }
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v39, v43, 16);
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  return objc_msgSend_createTriggersUsingConnection_(IMDLegacyRecordBridge, v25, a1[1], v26);
}

void sub_1B7AE9508()
{
  v13 = *MEMORY[0x1E69E9840];
  qword_1EDBE6310 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v0 = @"before_delete_on_attachment";
  v1 = off_1E7CB87F0;
  v2 = 21;
  do
  {
    if ((IMAllowMessagesIniCloud() & 1) == 0 && ((objc_msgSend_isEqualToString_(v0, v3, @"add_to_sync_deleted_messages", v4) & 1) != 0 || objc_msgSend_isEqualToString_(v0, v7, @"add_to_sync_deleted_attachments", v8)))
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v12 = v0;
          _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Not adding trigger for external builds %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v3, @"CREATE TRIGGER IF NOT EXISTS %@ %@", v4, v0, *(v1 - 1));
      objc_msgSend_setObject_forKey_(qword_1EDBE6310, v6, v5, v0);
    }

    v10 = *v1;
    v1 += 2;
    v0 = v10;
    --v2;
  }

  while (v2);
}

void __XPCServerIMDMessageRecordCopyChats_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7AF1AE4;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7AE9714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_1B7AE97F8()
{
  qword_1EDBE7960 = _CFRuntimeRegisterClass();
  v0 = objc_opt_class();
  class_getName(v0);
  _CFRuntimeBridgeClasses();
  v1 = objc_opt_class();
  v5 = *(objc_msgSend_chatRecordDescriptor(IMDLegacyRecordBridge, v2, v3, v4) + 80);

  IMDBridgedRecordPopulatePropertyImplementations(v1, v5, 0x1Cu);
}

uint64_t sub_1B7AE987C()
{
  result = sub_1B7CFE860();
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v5 = result + 32;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1B7AE90A8(v5, v11);
      sub_1B7AE90A8(v11, v10);
      sub_1B7C107FC(&unk_1EBA524E0, &qword_1B7D0B228);
      sub_1B7CFE940();
      if (swift_dynamicCast())
      {
        v6 = sub_1B7CFE930();

        if (swift_conformsToProtocol2() && v6)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1B7AE90A8(v11, v10);
        sub_1B7CFE800();
        if (swift_dynamicCast())
        {

LABEL_12:
          sub_1B7AE910C(v11, v10);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v12 = v4;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B7AE9A78(0, *(v4 + 16) + 1, 1);
            v4 = v12;
          }

          v9 = *(v4 + 16);
          v8 = *(v4 + 24);
          if (v9 >= v8 >> 1)
          {
            sub_1B7AE9A78((v8 > 1), v9 + 1, 1);
            v4 = v12;
          }

          *(v4 + 16) = v9 + 1;
          result = sub_1B7AE910C(v10, v4 + 40 * v9 + 32);
          goto LABEL_4;
        }
      }

      result = sub_1B7AE9168(v11);
LABEL_4:
      ++v3;
      v5 += 40;
      if (v2 == v3)
      {
        goto LABEL_18;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v4;
}

void *sub_1B7AE9A78(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B7AE9AB8(a1, a2, a3, *v3, &qword_1EBA524D8, &qword_1B7D0CAC0, &unk_1EBA524E0, &qword_1B7D0B228);
  *v3 = result;
  return result;
}

void *sub_1B7AE9AB8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1B7C107FC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

unint64_t sub_1B7AE9C00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1B7AFEA28(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B7AE9D60(v16, a4 & 1);
      result = sub_1B7AFEA28(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1B7CFF740();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1B7CE97A0();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_1B7AE9D60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B7C107FC(&qword_1EBA52188, &qword_1B7D0B308);
  v34 = v4;
  result = sub_1B7CFF370();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = sub_1B7CFF7B0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B7AE9FE4(uint64_t a1, void *a2)
{
  v3 = sub_1B7CFE880();
  v5 = v3;
  v6 = v4;
  v7 = *a2;
  if (*(*a2 + 16) && (v8 = sub_1B7AE11D0(v3, v4), (v9 & 1) != 0))
  {
    v10 = v8;

    v11 = *(*(v7 + 56) + 8 * v10);
  }

  else
  {
    type metadata accessor for EntityRecordRepresentation();
    swift_allocObject();

    v11 = sub_1B7AEA0F4(v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *a2;
    sub_1B7AEE814(v11, v5, v6, isUniquelyReferenced_nonNull_native);

    *a2 = v15;
  }

  return v11;
}

uint64_t sub_1B7AEA0F4(void *a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = sub_1B7AE987C();
  if (qword_1EDBE3F50 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v4 = *(qword_1EDBE79E8 + 32);

    v5 = sub_1B7CFE880();
    if (!*(v4 + 16))
    {
      break;
    }

    v7 = sub_1B7AE11D0(v5, v6);
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      goto LABEL_26;
    }

    v10 = *(*(v4 + 56) + 8 * v7);

    v2[6] = v10;

    v11 = sub_1B7AED778(isUniquelyReferenced_nonNull_native, v10);
    v13 = v12;

    v2[3] = v11;
    v2[4] = v13;
    v14 = v2[6];
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);

    v17 = sub_1B7AEE328(v15, v16, v11, v13);

    v37 = v2;
    v2[2] = v17;
    v18 = sub_1B7AEE408(MEMORY[0x1E69E7CC0]);
    v39 = *(isUniquelyReferenced_nonNull_native + 16);
    if (!v39)
    {
LABEL_20:

      result = v37;
      *(v37 + 40) = v18;
      return result;
    }

    v2 = 0;
    v19 = isUniquelyReferenced_nonNull_native + 32;
    v38 = isUniquelyReferenced_nonNull_native;
    while (v2 < *(isUniquelyReferenced_nonNull_native + 16))
    {
      v42 = v2;
      sub_1B7AE90A8(v19, v43);
      sub_1B7AE9124(v43, v43[3]);
      v20 = sub_1B7CFE680();
      v22 = v21;
      sub_1B7AEE504(&v42, &v40);
      v23 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = sub_1B7AE11D0(v20, v22);
      v26 = v18[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_22;
      }

      v29 = v24;
      if (v18[3] >= v28)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v24)
          {
            goto LABEL_6;
          }
        }

        else
        {
          sub_1B7CE8360();
          if (v29)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        sub_1B7AEE574(v28, isUniquelyReferenced_nonNull_native);
        v30 = sub_1B7AE11D0(v20, v22);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_27;
        }

        v25 = v30;
        if (v29)
        {
LABEL_6:

          *(v18[7] + 8 * v25) = v23;
          goto LABEL_7;
        }
      }

      v18[(v25 >> 6) + 8] |= 1 << v25;
      v32 = (v18[6] + 16 * v25);
      *v32 = v20;
      v32[1] = v22;
      *(v18[7] + 8 * v25) = v23;
      v33 = v18[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_23;
      }

      v18[2] = v35;
LABEL_7:
      v2 = (v2 + 1);
      sub_1B7AE9168(v41);
      sub_1B7AEE190(&v42, &qword_1EBA531A0, &qword_1B7D107C0);
      v19 += 40;
      isUniquelyReferenced_nonNull_native = v38;
      if (v39 == v2)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

LABEL_26:

  __break(1u);
LABEL_27:
  result = sub_1B7CFF740();
  __break(1u);
  return result;
}

uint64_t sub_1B7AEA434(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

sqlite3 *sub_1B7AEA46C(sqlite3_stmt *a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = _IMDSQLTransient();
  v7 = sub_1B7CFEAD0();
  v8 = sqlite3_bind_text(a1, a2, (v7 + 32), -1, v6);

  if (v8)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v10 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v11 = sub_1B7CFEB70();
        v13 = v12;
        v14 = sqlite3_extended_errcode(v10);
        sub_1B7C951E8();
        swift_allocError();
        *v15 = v14;
        v15[1] = v11;
        v15[2] = v13;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7AEA57C(uint64_t result)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  while (1)
  {
    v6 = 0uLL;
    v7 = v4;
    v8 = 0uLL;
    v9 = 0uLL;
    if (v3 != v4)
    {
      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_18;
      }

      *&v15 = v3;
      result = sub_1B7AE90A8(v5 + 40 * v3, &v15 + 8);
      v6 = v15;
      v8 = v16;
      v9 = v17;
    }

    v18[0] = v6;
    v18[1] = v8;
    v18[2] = v9;
    if (!v9)
    {
      return result;
    }

    v14 = v6;
    sub_1B7AE910C((v18 + 8), &v15);
    v10 = v17;
    result = sub_1B7AE9124(&v15, *(&v16 + 1));
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 < 0xFFFFFFFF80000000)
    {
      goto LABEL_15;
    }

    if (v11 > 0x7FFFFFFF)
    {
      goto LABEL_16;
    }

    (*(v10 + 16))(*(v1 + 16));
    if (v2)
    {
      sub_1B7C95194();
      swift_allocError();
      v13 = v12;
      *v12 = v14;
      sub_1B7AE90A8(&v15, (v12 + 1));
      v13[6] = v2;
      *(v13 + 56) = 0;
      swift_willThrow();
      return sub_1B7AE9168(&v15);
    }

    result = sub_1B7AE9168(&v15);
    v3 = v7;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B7AEA734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v10 = *(a2 + 16);
  v11 = sqlite3_db_handle(v10);
  if (!v11)
  {
    sub_1B7C95194();
    swift_allocError();
    *v15 = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0;
    *(v15 + 56) = 4;
LABEL_8:
    swift_willThrow();
  }

  v12 = v11;
  sub_1B7AEA57C(a1);
  if (v5)
  {
  }

  for (i = 0; ; ++i)
  {
    result = sqlite3_step(v10);
    if (result != 100)
    {
      break;
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    a5(a3, a4);
  }

  if (result == 101)
  {
    sqlite3_reset(v10);
  }

  sub_1B7C95194();
  swift_allocError();
  v17 = v16;
  result = sqlite3_errmsg(v12);
  if (result)
  {
    v18 = sub_1B7CFEB70();
    v20 = v19;
    v21 = sqlite3_extended_errcode(v12);
    sub_1B7C951E8();
    v22 = swift_allocError();
    *v23 = v21;
    v23[1] = v18;
    v23[2] = v20;
    *v17 = v22;
    *(v17 + 56) = 3;
    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1B7AEA990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1B7CA5CF0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v9 = sub_1B7AE11D0(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v15 = *v4;
      if (!v12)
      {
        sub_1B7CE9640(&qword_1EBA52148, &qword_1B7D0B2D0);
        v13 = v15;
      }

      sub_1B7CE6D80(v9, v13);
      *v4 = v13;
    }
  }
}

uint64_t sub_1B7AEAAAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1B7C107FC(a3, a4);
  v36 = v6;
  result = sub_1B7CFF370();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1B7AEAD4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1B7AE11D0(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_1B7AE11D0(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_1B7CFF740();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

uint64_t sub_1B7AEAEF0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7AEAEE4(a1, a2, a3, a4);
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1B7AEAF34(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 40) + 16));
  if (!v2)
  {
    return;
  }

  v6 = v2;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = (*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, v3, v4, v5, v56, v57) + 80) + v7);
    v11 = *v10;
    v12 = v10[1];
    Property = CSDBRecordGetProperty();
    v14 = Property;
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v56 = Property;
        v57 = 0;
        IMInsertDatasToXPCDictionary();
        goto LABEL_18;
      }

      if (v12 != 3)
      {
        goto LABEL_18;
      }

      valuePtr[0] = 0;
      if (Property)
      {
        CFNumberGetValue(Property, kCFNumberSInt64Type, valuePtr);
        v15 = valuePtr[0];
      }

      else
      {
        v15 = 0;
      }

      v17 = *(a1 + 32);
      v18 = v11;
      goto LABEL_17;
    }

    if (!v12)
    {
      if (!Property)
      {
        goto LABEL_18;
      }

      v16 = sub_1B7AE64DC(v8);
      if (v16)
      {
        v9 |= v16;
        goto LABEL_18;
      }

      v17 = *(a1 + 32);
      v18 = v11;
      v15 = v14;
LABEL_17:
      xpc_dictionary_set_int64(v17, v18, v15);
      goto LABEL_18;
    }

    if (v12 == 1)
    {
      v56 = Property;
      v57 = 0;
      IMInsertNSStringsToXPCDictionary();
    }

LABEL_18:
    ++v8;
    v7 += 40;
  }

  while (v8 != 93);
  if (v9)
  {
    xpc_dictionary_set_int64(*(a1 + 32), "flags", v9);
  }

  if (*(a1 + 56))
  {
    v19 = sub_1B7AE267C(*(a1 + 48), 0, v4, v5);
    if (v19)
    {
      v22 = v19;
      v23 = xpc_dictionary_create(0, 0, 0);
      if (v23)
      {
        v24 = v23;
        _IMDHandleRecordBulkCopyXPCDictionary(v22, v23, 0);
        xpc_dictionary_set_value(*(a1 + 32), "handle_cache", v24);
        xpc_release(v24);
      }

      CFRelease(v22);
    }

    v25 = sub_1B7AEEE10(*(a1 + 48), 0, v20, v21);
    if (v25)
    {
      v26 = v25;
      v27 = xpc_dictionary_create(0, 0, 0);
      if (v27)
      {
        v28 = v27;
        _IMDHandleRecordBulkCopyXPCDictionary(v26, v27, 0);
        xpc_dictionary_set_value(*(a1 + 32), "other_handle_cache", v28);
        xpc_release(v28);
      }

      CFRelease(v26);
    }
  }

  if (*(a1 + 57))
  {
    Identifier = IMDMessageRecordGetIdentifier(*(a1 + 48));
    v30 = IMDMessageRecordCopyAttachmentsForIDWithLock(Identifier);
    v31 = xpc_array_create(0, 0);
    if (v31)
    {
      v35 = v31;
      v36 = objc_msgSend_count(v30, v32, v33, v34);
      if (v36 >= 1)
      {
        v39 = 0;
        v40 = v36 & 0x7FFFFFFF;
        do
        {
          v41 = objc_msgSend_objectAtIndex_(v30, v37, v39, v38, v56, v57);
          v42 = xpc_dictionary_create(0, 0, 0);
          if (v42)
          {
            v43 = v42;
            _IMDAttachmentRecordBulkCopyXPCDictionary(v41, v42, 0);
            xpc_array_append_value(v35, v43);
            xpc_release(v43);
          }

          ++v39;
        }

        while (v40 != v39);
      }

      v44 = *(a1 + 32);
      if (v44)
      {
        xpc_dictionary_set_value(v44, "attachments_cache", v35);
      }

      xpc_release(v35);
    }

    if (v30)
    {
      CFRelease(v30);
    }
  }

  v45 = *(a1 + 32);
  v46 = CSDBRecordGetProperty();
  v47 = CSDBRecordGetProperty();
  if (!v46 || !v47)
  {
    v48 = CSDBRecordGetProperty();
    v49 = IMDMessageRecordCountMessagesWithThreadOriginatorGroupedByParts(v48);
    if (v49)
    {
      v50 = xpc_dictionary_create(0, 0, 0);
      if (v50)
      {
        v53 = v50;
        valuePtr[0] = MEMORY[0x1E69E9820];
        valuePtr[1] = 3221225472;
        valuePtr[2] = sub_1B7B38B78;
        valuePtr[3] = &unk_1E7CB82C8;
        valuePtr[4] = v50;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v49, v51, valuePtr, v52);
        xpc_dictionary_set_value(v45, "threadCountsByPart", v53);
        xpc_release(v53);
      }
    }
  }

  v54 = *(a1 + 32);
  v55 = IMDMessageRecordGetIdentifier(*(a1 + 48));
  xpc_dictionary_set_int64(v54, "recordIdentifier", v55);
  CFRelease(v6);
}

void sub_1B7AEB31C(uint64_t a1)
{
  *(a1 + 16) = -1;
  if (*(a1 + 24))
  {
    v2 = 0;
    v3 = *(MEMORY[0x1E69990F8] + 8);
    do
    {
      if (CFArrayGetValueAtIndex(*(a1 + 24), v2))
      {
        v4 = v3 == 0;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
        v3();
      }

      ++v2;
    }

    while (v2 != 5);
    v5 = *(a1 + 24);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 24) = 0;
    }
  }
}

uint64_t sub_1B7AEB3A0(uint64_t a1, uint64_t a2)
{
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7AEB3E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7AE0D64(a1, a2, a3, a4);
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _IMDPerformLockedMessageStoreBlock(uint64_t a1)
{
  if (a1)
  {
    IMDEnsureSharedRecordStoreInitialized();
    IMDSharedThreadedRecordStore();
    v2 = CSDBRecordStoreRefFromThreadedRecordStoreRef();
    v3 = *(a1 + 16);

    return v3(a1, v2);
  }

  else
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE718(v5, v6, v7, v8);
    }

    return IMDEnsureSharedRecordStoreInitialized();
  }
}

void sub_1B7AEB4BC(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_1B7AE11D0(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1B7CE3A00(v15, v5 & 1);
    v10 = sub_1B7AE11D0(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1B7CFF740();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1B7CE8040();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1B7CFF210();
    MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D57FF0);
    sub_1B7CFF320();
    MEMORY[0x1B8CADCA0](39, 0xE100000000000000);
    sub_1B7CFF340();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v25 = 1;
    while (v25 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v26 = *a3;

      v27 = sub_1B7AE11D0(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_1B7CE3A00(v31, 1);
        v27 = sub_1B7AE11D0(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v8;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void *sub_1B7AEB850(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B7C107FC(&qword_1EBA52480, &qword_1B7D0CA68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(&qword_1EBA52488, &qword_1B7D0CA70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B7AEB984(void *a1, int64_t a2, char a3)
{
  result = sub_1B7AEB850(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1B7AEB9A4(void *a1, char a2, void *a3)
{
  v43 = a1[2];
  if (!v43)
  {
    goto LABEL_23;
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = *a3;
  v9 = sub_1B7AFEA28(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1B7CE7EE4();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_1B7CE3790(v13, a2 & 1);
  v17 = sub_1B7AFEA28(v7);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_1B7CFF740();
    __break(1u);
LABEL_29:
    sub_1B7CFF210();
    MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D57FF0);
    sub_1B7CFF320();
    MEMORY[0x1B8CADCA0](39, 0xE100000000000000);
    sub_1B7CFF340();
    __break(1u);
    return;
  }

  v14 = v17;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v21[6] + 8 * v14) = v7;
  *(v21[7] + 8 * v14) = v6;
  v22 = v21[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v24;
  if (v43 != 1)
  {
    v25 = a1 + 7;
    v26 = 1;
    while (v26 < a1[2])
    {
      v28 = *(v25 - 1);
      v27 = *v25;
      v29 = *a3;
      v30 = sub_1B7AFEA28(v28);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_25;
      }

      v35 = v30;
      v36 = v31;
      v37 = v29[3];

      if (v37 < v34)
      {
        sub_1B7CE3790(v34, 1);
        v38 = sub_1B7AFEA28(v28);
        if ((v36 & 1) != (v39 & 1))
        {
          goto LABEL_28;
        }

        v35 = v38;
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v40 = *a3;
      *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      *(v40[6] + 8 * v35) = v28;
      *(v40[7] + 8 * v35) = v27;
      v41 = v40[2];
      v23 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      ++v26;
      v40[2] = v42;
      v25 += 2;
      if (v43 == v26)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1B7AEBD10()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = sub_1B7AEBD7C(MEMORY[0x1E69E7CC0]);
  v2 = sub_1B7C24468(v0);
  sub_1B7C107FC(&qword_1EBA531A8, qword_1B7D107C8);
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 16) = v1;
  *(result + 24) = v2;
  off_1EDBE3AE8 = result;
  return result;
}

unint64_t sub_1B7AEBD90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1B7C107FC(a2, a3);
    v5 = sub_1B7CFF380();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1B7AE11D0(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B7AEBEB0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1B7AEBF58(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1B7AEBFC4(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_1B7AE11D0(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1B7CE34D0(v15, v4 & 1);
    v10 = sub_1B7AE11D0(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1B7CFF740();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1B7CE7D6C();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v7;
  v23[1] = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1B7CFF210();
    MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D57FF0);
    sub_1B7CFF320();
    MEMORY[0x1B8CADCA0](39, 0xE100000000000000);
    sub_1B7CFF340();
    __break(1u);
    return;
  }

  v21[2] = v25;
  if (v39 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *(v4 - 1);
      v8 = *v4;
      v27 = *a3;

      v28 = sub_1B7AE11D0(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_1B7CE34D0(v32, 1);
        v28 = sub_1B7AE11D0(v6, v5);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v6;
      v35[1] = v5;
      v36 = (v34[7] + 16 * v28);
      *v36 = v26;
      v36[1] = v8;
      v37 = v34[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v34[2] = v38;
      v4 += 4;
      if (v39 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void *sub_1B7AEC378(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

__n128 sub_1B7AEC4D4()
{
  v0 = *(MEMORY[0x1E69990F8] + 32);
  result = *MEMORY[0x1E69990F8];
  v2 = *(MEMORY[0x1E69990F8] + 16);
  xmmword_1EDBE40C8 = *MEMORY[0x1E69990F8];
  unk_1EDBE40D8 = v2;
  qword_1EDBE40E8 = v0;
  return result;
}

uint64_t sub_1B7AEC4F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1B7AEC510()
{
  v0 = *(MEMORY[0x1E69990E8] + 32);
  result = *MEMORY[0x1E69990E8];
  v2 = *(MEMORY[0x1E69990E8] + 16);
  xmmword_1EDBE4090 = *MEMORY[0x1E69990E8];
  unk_1EDBE40A0 = v2;
  qword_1EDBE40B0 = v0;
  return result;
}

__n128 sub_1B7AEC534()
{
  v0 = *(MEMORY[0x1E69990E0] + 32);
  result = *MEMORY[0x1E69990E0];
  v2 = *(MEMORY[0x1E69990E0] + 16);
  xmmword_1EDBE56A0 = *MEMORY[0x1E69990E0];
  *algn_1EDBE56B0 = v2;
  qword_1EDBE56C0 = v0;
  return result;
}

unint64_t sub_1B7AEC558()
{
  result = qword_1EBA50E30;
  if (!qword_1EBA50E30)
  {
    sub_1B7CFEF30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50E30);
  }

  return result;
}

unint64_t sub_1B7AEC5B0()
{
  result = qword_1EBA50E50;
  if (!qword_1EBA50E50)
  {
    sub_1B7C1091C(&unk_1EBA520A8, &qword_1B7D0B278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50E50);
  }

  return result;
}

uint64_t _sSo21IMDLegacyRecordBridgeC14IMDPersistenceE14createTriggers5usingSbSpySo20CSDBSqliteConnectionVG_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for SQLConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = v46 - v6;
  v9 = *(v8 + 36);
  v10 = sub_1B7CFE420();
  v11 = *(*(v10 - 8) + 56);
  v54 = v10;
  result = v11(&v7[v9], 1, 1);
  *v7 = 1;
  *(v7 + 1) = 0;
  *(v7 + 8) = 1;
  v13 = *(a1 + 8);
  if (!v13)
  {
    goto LABEL_34;
  }

  sub_1B7AE3EA4(v7, v4);
  type metadata accessor for SQLConnection(0);
  v14 = swift_allocObject();
  v15 = (v14 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
  v16 = MEMORY[0x1E69E7CC8];
  *v15 = MEMORY[0x1E69E7CC8];
  v15[1] = v16;
  v15[2] = 32;
  *(v14 + 16) = v13;
  *(v14 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
  v55 = v14;
  result = sub_1B7AE3EA4(v4, v14 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
  if (v4[2])
  {
    goto LABEL_7;
  }

  v17 = v4[1] * 1000.0;
  if (COERCE__INT64(fabs(v17)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v17 <= -2147483650.0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v17 >= 2147483650.0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  sqlite3_busy_timeout(v13, v17);
LABEL_7:
  sub_1B7C4BDE4(v4, type metadata accessor for SQLConnectionConfiguration);
  if (qword_1EBA50F60 != -1)
  {
LABEL_30:
    swift_once();
  }

  v18 = unk_1EBA5DA70;
  v19 = qword_1EBA5DA78;
  v20 = *(qword_1EBA5DA78 + 16);
  if (v20)
  {
    v46[1] = qword_1EBA5DA68;
    v47 = v7;

    v21 = 0;
    v22 = 0;
    v23 = 0;
    *&v24 = 136315138;
    v53 = v24;
    v51 = v18;
    v52 = v19;
    while (1)
    {
      if (v22 >= *(v18 + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v22 >= v20)
      {
        goto LABEL_29;
      }

      v27 = *(v18 + v21 + 32);
      v28 = *(v18 + v21 + 40);
      v7 = *(v19 + v21 + 32);
      v29 = *(v19 + v21 + 40);
      v30 = qword_1EBA50EB8;
      swift_retain_n();

      if (v30 != -1)
      {
        swift_once();
      }

      sub_1B7AD9040(v54, qword_1EBA5DA20);

      v31 = sub_1B7CFE400();
      v32 = sub_1B7CFEF00();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v49 = v29;
        v50 = 0;
        v34 = v33;
        v35 = swift_slowAlloc();
        v48 = v7;
        v36 = v35;
        v56 = v35;
        *v34 = v53;

        v37 = v27;
        v38 = sub_1B7AED1B8(v27, v28, &v56);

        *(v34 + 4) = v38;
        v27 = v37;
        _os_log_impl(&dword_1B7AD5000, v31, v32, "Starting create trigger step for %s", v34, 0xCu);
        sub_1B7AE9168(v36);
        v39 = v36;
        v7 = v48;
        MEMORY[0x1B8CB0E70](v39, -1, -1);
        v23 = v50;
        MEMORY[0x1B8CB0E70](v34, -1, -1);
      }

      v56 = v55;
      (v7)(&v56);

      v40 = sub_1B7CFE400();
      if (v23)
      {
        break;
      }

      v41 = sub_1B7CFEF00();

      if (os_log_type_enabled(v40, v41))
      {
        v25 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v56 = v7;
        *v25 = v53;

        v26 = sub_1B7AED1B8(v27, v28, &v56);

        *(v25 + 4) = v26;
        _os_log_impl(&dword_1B7AD5000, v40, v41, "Completed create trigger step for %s", v25, 0xCu);
        sub_1B7AE9168(v7);
        MEMORY[0x1B8CB0E70](v7, -1, -1);
        MEMORY[0x1B8CB0E70](v25, -1, -1);
      }

      else
      {
      }

      v18 = v51;
      v19 = v52;
      ++v22;
      v20 = *(v52 + 16);
      v21 += 16;
      if (v22 >= v20)
      {

        v7 = v47;
        goto LABEL_25;
      }
    }

    v42 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v40, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v56 = v44;
      *v43 = v53;

      v45 = sub_1B7AED1B8(v27, v28, &v56);

      *(v43 + 4) = v45;
      _os_log_impl(&dword_1B7AD5000, v40, v42, "Error during create trigger step for %s", v43, 0xCu);
      sub_1B7AE9168(v44);
      MEMORY[0x1B8CB0E70](v44, -1, -1);
      MEMORY[0x1B8CB0E70](v43, -1, -1);
    }

    else
    {
    }

    sub_1B7C4BDE4(v47, type metadata accessor for SQLConnectionConfiguration);

    return 0;
  }

  else
  {

LABEL_25:

    sub_1B7C4BDE4(v7, type metadata accessor for SQLConnectionConfiguration);

    return 1;
  }
}

uint64_t sub_1B7AECD54()
{
  sub_1B7AECDC8(&unk_1F2FA1CE8);
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1B7C107FC(&qword_1EBA534F0, &qword_1B7D11E00);
  result = swift_arrayDestroy();
  qword_1EBA5DA68 = v1;
  unk_1EBA5DA70 = v3;
  qword_1EBA5DA78 = v5;
  return result;
}

char *sub_1B7AECDE0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7AECEEC(char *a1, int64_t a2, char a3)
{
  result = sub_1B7AECDE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B7AECF0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B7C31B70(a1, a2, a3, *v3, &qword_1EBA52570, &qword_1B7D0CB30);
  *v3 = result;
  return result;
}

uint64_t sub_1B7AECF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((result & 1) == 0)
  {
    result = sub_1B7AECEEC(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_1B7AECEEC((v11 > 1), v12 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v12 + 1;
  v13 = v8 + 16 * v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v4[1] = v8;
  v14 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    if (MEMORY[0x1B8CAD4E0](*(v14 + 16) & 0x3FLL) > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v15 = *v4;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = sub_1B7CFE3C0();

        *v4 = v16;
        v15 = v16;
      }

      if (v15)
      {
        return sub_1B7CFE360();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_1B7CC9F3C(sub_1B7CCA780);
}

uint64_t sub_1B7AED0EC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B7CFE420();
  sub_1B7AED154(v3, a2);
  sub_1B7AD9040(v3, a2);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

uint64_t *sub_1B7AED154(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1B7AED1B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B7AED2E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1B7AED284(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1B7AE9168(v11);
  return v7;
}

uint64_t sub_1B7AED284(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1B7AED2E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B7C49054(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B7CFF280();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

const char *sub_1B7AED3EC()
{
  result = sub_1B7AE3B2C(0xD00000000000011FLL, 0x80000001B7D4EF00, 0);
  if (!v0)
  {
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

BOOL sub_1B7AED4F8(uint64_t a1)
{
  v2 = type metadata accessor for SQLConnectionError(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B7CFEA30();
  v6 = sub_1B7CFEA30();
  v7 = IMGetCachedDomainIntForKey();

  if ((v7 - 5) > 0xFFFFFFFFFFFFFFFBLL)
  {
    return 1;
  }

  v18 = &v19;

  v8 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1B7AE3A9C((v9 > 1), v10 + 1, 1, v8);
  }

  v16 = MEMORY[0x1E69E6158];
  v17 = &off_1F2FA8B58;
  *&v15 = 0x7372655674616863;
  *(&v15 + 1) = 0xEB000000006E6F69;
  v8[2] = v10 + 1;
  sub_1B7AE910C(&v15, &v8[5 * v10 + 4]);
  sub_1B7AF45D8(0xD000000000000029, 0x80000001B7D51060, v8, 0, &v18);
  if (!v1)
  {

    return v19 < 1;
  }

  *&v15 = v1;
  v11 = v1;
  sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

    return v12;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1B7C19DBC(v4);
    goto LABEL_11;
  }

  return 1;
}

uint64_t sub_1B7AED778(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if ((v3 * 40) >> 64 == (40 * v3) >> 63)
  {
    v22 = swift_slowAlloc();
    if (!v3)
    {
      return v22;
    }

    v5 = a1 + 32;
    v6 = v22;
    while (1)
    {
      sub_1B7AE90A8(v5, v24);
      v7 = v25;
      sub_1B7AE9124(v24, v25);
      v8 = sub_1B7AED940(v7);
      v10 = v9;
      v11 = *(a2 + 48);
      sub_1B7AE9124(v24, v25);
      v12 = sub_1B7CFE680();
      if (!*(v11 + 16))
      {
        break;
      }

      sub_1B7AE11D0(v12, v13);
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        __break(1u);
        goto LABEL_9;
      }

      v16 = sub_1B7CFEAD0();
      v17 = strdup((v16 + 32));

      v18 = (*(v10 + 16))(v8, v10);
      v19 = (*(v10 + 8))(v8, v10);
      sub_1B7AE90A8(v24, v23);
      v20 = sub_1B7AEDBD4(v23);
      *v6 = v17;
      *(v6 + 8) = v18;
      *(v6 + 16) = v19;
      *(v6 + 24) = v20;
      *(v6 + 32) = 0;
      v6 += 40;
      sub_1B7AE9168(v24);
      v5 += 40;
      if (!--v3)
      {
        return v22;
      }
    }
  }

  else
  {
LABEL_9:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7AED940(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v8 = *(v3 + 16);
  v8(&v13 - v9, v1, a1, v7);
  sub_1B7CFE940();
  if (swift_dynamicCast())
  {
    v10 = sub_1B7CFE930();
    if (swift_conformsToProtocol2())
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {

      return v10;
    }
  }

  else
  {
    (v8)(v5, v1, a1);
    sub_1B7CFE800();
    if (swift_dynamicCast())
    {

      return MEMORY[0x1E69E7360];
    }
  }

  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

__int128 *sub_1B7AEDB88()
{
  if (qword_1EDBE40C0 != -1)
  {
    swift_once();
  }

  return &xmmword_1EDBE40C8;
}

uint64_t sub_1B7AEDBD4(void *a1)
{
  sub_1B7AE90A8(a1, v6);
  sub_1B7C107FC(&unk_1EBA524E0, &qword_1B7D0B228);
  sub_1B7CFE940();
  if (!swift_dynamicCast())
  {
    sub_1B7AE9168(a1);
    return 0;
  }

  if (sub_1B7CFE920())
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  sub_1B7CFE8F0();
  if (v7)
  {
    if (swift_dynamicCast())
    {
      if (v5)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_1B7AEE190(v6, &qword_1EBA51FA8, qword_1B7D0B230);
  }

  sub_1B7CFE8F0();
  if (v7)
  {
    if (swift_dynamicCast())
    {
      if (v5)
      {
LABEL_19:
        result = sub_1B7CFF340();
        __break(1u);
        return result;
      }

LABEL_14:
      sub_1B7AE9168(a1);

      return v2 | 0x80;
    }
  }

  else
  {
    sub_1B7AEE190(v6, &qword_1EBA51FA8, qword_1B7D0B230);
  }

  v4 = sub_1B7CFE8E0();

  sub_1B7AE9168(a1);
  if (v4)
  {
    return v2;
  }

  else
  {
    return v2 | 0x40;
  }
}

id IMDPersistenceServiceListener.init()()
{
  v1 = v0;
  v2 = sub_1B7CFEF30();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1B7CFE470();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1B7CFEF50();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___IMDPersistenceServiceListener_listener;
  *&v0[v8] = [objc_opt_self() serviceListener];
  v14 = OBJC_IVAR___IMDPersistenceServiceListener_queue;
  sub_1B7AEE088(0, &qword_1EBA50E28, 0x1E69E9610);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8098], v4);
  sub_1B7CFE460();
  v9 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  sub_1B7AEC558();
  sub_1B7C107FC(&unk_1EBA520A8, &qword_1B7D0B278);
  sub_1B7AEC5B0();
  sub_1B7CFF0D0();
  *&v0[v14] = sub_1B7CFEF70();
  v10 = OBJC_IVAR___IMDPersistenceServiceListener_state;
  v11 = sub_1B7C23DD4(v9);
  sub_1B7C107FC(&unk_1EBA520C0, qword_1B7D0B280);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v11;
  *&v1[v10] = v12;
  v15.receiver = v1;
  v15.super_class = IMDPersistenceServiceListener;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_1B7AEE088(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B7AEE190(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1B7C107FC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__int128 *sub_1B7AEE27C()
{
  if (qword_1EDBE4088 != -1)
  {
    swift_once();
  }

  return &xmmword_1EDBE4090;
}

__int128 *sub_1B7AEE2D4()
{
  if (qword_1EDBE5698 != -1)
  {
    swift_once();
  }

  return &xmmword_1EDBE56A0;
}

uint64_t sub_1B7AEE328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_slowAlloc();
  v7 = sub_1B7CFEAD0();
  v8 = strdup((v7 + 32));

  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a3)
  {
    *v6 = v8;
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 1;
    *(v6 + 64) = 0;
    *(v6 + 72) = a4;
    *(v6 + 80) = a3;
    *(v6 + 128) = 0;
    *(v6 + 136) = 0;
    *(v6 + 144) = 0;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0;
    *(v6 + 152) = 1;
    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1B7AEE408(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA52180, &qword_1B7D0B300);
    v3 = sub_1B7CFF380();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B7AE11D0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B7AEE504(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA531A0, &qword_1B7D107C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7AEE574(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B7C107FC(&qword_1EBA52180, &qword_1B7D0B300);
  v34 = v4;
  result = sub_1B7CFF370();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

const __CFString *IMDMessageRecordCountMessagesWithThreadOriginatorGroupedByParts(const __CFString *a1)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    *buf = 0;
    v6 = buf;
    v7 = 0x3052000000;
    v8 = sub_1B7AE1B30;
    v9 = sub_1B7AE25A0;
    v10 = 0;
    if (a1)
    {
      if (CFStringGetLength(a1))
      {
        v4[0] = MEMORY[0x1E69E9820];
        v4[1] = 3221225472;
        v4[2] = sub_1B7AEE9CC;
        v4[3] = &unk_1E7CB7948;
        v4[4] = buf;
        v4[5] = a1;
        IMDRunSqlOperation(v4);
        a1 = *(v6 + 5);
      }

      else
      {
        a1 = 0;
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "IMDMessageRecordCountMessagesWithThreadOriginatorGroupedByParts called by client", buf, 2u);
      }
    }

    return 0;
  }

  return a1;
}

BOOL sub_1B7AEE9CC(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7AEEA98;
  v5[3] = &unk_1E7CB75B0;
  v2 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7AEEAA4;
  v4[3] = &unk_1E7CB7920;
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  return _IMDSqlOperationRunQuery(a2, @"SELECT   m.thread_originator_part, SUM(IFNULL(part_count, 1)) FROM   message m INDEXED BY   message_idx_thread_originator_guid INNER JOIN   chat_message_join cmj ON cmj.message_id = m.ROWID WHERE   m.thread_originator_guid == ?   AND m.associated_message_guid IS NULL GROUP BY  m.thread_originator_part", v5, v4);
}

BOOL sub_1B7AEEAA4(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v4 = MEMORY[0x1E69E9820];
    *&v3 = 138412546;
    v15 = v3;
    do
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x3052000000;
      v26 = sub_1B7AE1B30;
      v27 = sub_1B7AE25A0;
      v28 = 0;
      v17 = 0;
      v18 = &v17;
      v19 = 0x3052000000;
      v20 = sub_1B7AE1B30;
      v21 = sub_1B7AE25A0;
      v22 = 0;
      v5 = *(a1 + 40);
      v16[0] = v4;
      v16[1] = 3221225472;
      v16[2] = sub_1B7BDFF18;
      v16[3] = &unk_1E7CB7B28;
      v16[4] = &v23;
      v16[5] = &v17;
      IMDSqlOperationIterateRow(v5, v16);
      if (objc_msgSend_length(v24[5], v6, v7, v8) && (v10 = v18[5]) != 0)
      {
        v11 = *(*(*(a1 + 32) + 8) + 40);
        if (!v11)
        {
          *(*(*(a1 + 32) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF90]);
          v11 = *(*(*(a1 + 32) + 8) + 40);
          v10 = v18[5];
        }

        objc_msgSend_setObject_forKey_(v11, v9, v10, v24[5], v15);
      }

      else
      {
        v12 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v24[5];
          v14 = v18[5];
          *buf = v15;
          v30 = v13;
          v31 = 2112;
          v32 = v14;
          _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_DEFAULT, "Reply count query got invalid column data back: %@|%@", buf, 0x16u);
        }
      }

      _Block_object_dispose(&v17, 8);
      _Block_object_dispose(&v23, 8);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7AEED10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B7AEED40(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

void sub_1B7AEEDA8(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

uint64_t sub_1B7AEEE10(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a1)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = -1;
    if (*(a1 + 24))
    {
      v5 = *(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3, a4) + 80) + 1656);
      ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 24), 41);
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
      v13 = sub_1B7AEEDA8;
      v14 = &unk_1E7CB7920;
      v15 = &v17;
      v16 = a1;
      if (a2)
      {
        _IMDPerformBlock(&v11);
      }

      else
      {
        sub_1B7AEEDA8(&v11);
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
      v8 = *(v4 + 40);
      if (v8)
      {
        v4 = CFRetain(v8);
      }

      else
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = sub_1B7B3893C;
        v10[3] = &unk_1E7CB6838;
        v10[4] = &v11;
        __syncXPCIMDMessageRecordCopyOtherHandle_IPCAction(v10, *(v4 + 16));
        v4 = *(v12 + 24);
      }
    }

    _Block_object_dispose(&v11, 8);
  }

  return v4;
}

void IMDBridgedRecordPopulatePropertyImplementations(objc_class *a1, uint64_t a2, unsigned int a3)
{
  if (qword_1EDBE7958 != -1)
  {
    sub_1B7CEEEF8();
  }

  v111 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v112 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (a3 >= 1)
  {
    v5 = 0;
    v113 = a3;
    v6 = 0x1E696A000uLL;
    cls = a1;
    while (1)
    {
      v7 = a2 + 40 * v5;
      v9 = *v7;
      v8 = *(v7 + 8);
      v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
      if (v9)
      {
        v14 = *v9;
        if (*v9)
        {
          v15 = v9;
          do
          {
            if (v14 == 95)
            {
              v14 = __toupper(v15[1]);
              v15 += 2;
            }

            else
            {
              ++v15;
            }

            objc_msgSend_appendFormat_(v13, v10, @"%c", v12, v14);
            v14 = *v15;
          }

          while (*v15);
        }
      }

      v16 = objc_msgSend_copy(v13, v10, v11, v12);

      if (objc_msgSend_hasPrefix_(v16, v17, @"is", v18))
      {
        v19 = sub_1B7AEF5BC(v16, 0, 2u);

        v16 = v19;
      }

      v20 = v16;
      v24 = objc_msgSend_UTF8String(v20, v21, v22, v23);
      Property = class_getProperty(a1, v24);
      if (Property)
      {
        break;
      }

      v27 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v16, v26, @"Guid", @"GUID");

      v28 = v27;
      v16 = v27;
      v32 = objc_msgSend_UTF8String(v28, v29, v30, v31);
      Property = class_getProperty(a1, v32);
      if (Property)
      {
        break;
      }

      if (objc_msgSend_hasSuffix_(v27, v33, @"Id", v34))
      {
        v89 = objc_msgSend_length(v27, v86, v87, v88);
        v91 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v27, v90, v89 - 2, 2, @"ID");

        v92 = v91;
        v96 = objc_msgSend_UTF8String(v92, v93, v94, v95);
        v35 = class_getProperty(a1, v96);

        if (!v35)
        {
          goto LABEL_35;
        }

        goto LABEL_17;
      }

LABEL_34:

LABEL_35:
      if (++v5 == v113)
      {
        goto LABEL_40;
      }
    }

    v35 = Property;

LABEL_17:
    v36 = *(v6 + 3776);
    Name = property_getName(v35);
    v16 = objc_msgSend_stringWithUTF8String_(v36, v38, Name, v39);
    v40 = property_copyAttributeValue(v35, "G");
    v43 = *(v6 + 3776);
    if (v40)
    {
      v44 = v40;
      v45 = v8;
      v46 = objc_msgSend_stringWithUTF8String_(*(v6 + 3776), v41, v40, v42);
      free(v44);
    }

    else
    {
      v45 = v8;
      v47 = property_getName(v35);
      v46 = objc_msgSend_stringWithUTF8String_(v43, v48, v47, v49);
    }

    v50 = property_copyAttributeValue(v35, "S");
    v53 = MEMORY[0x1E696AEC0];
    if (v50)
    {
      v54 = v50;
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v51, v50, v52);
      free(v54);
    }

    else
    {
      v58 = property_getName(v35);
      v61 = objc_msgSend_stringWithUTF8String_(v53, v59, v58, v60);
      v62 = MEMORY[0x1E696AEC0];
      v63 = sub_1B7AEF5BC(v61, 1, 0);
      v55 = objc_msgSend_stringWithFormat_(v62, v64, @"set%@", v65, v63);
    }

    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v56, v9, v57);
    objc_msgSend_setObject_forKeyedSubscript_(v112, v67, v66, v16);

    v68 = property_copyAttributeValue(v35, "T");
    v69 = v68;
    if (v45 == 3)
    {
      if (!strcmp(v68, "@NSDate"))
      {
        v70 = 3;
      }

      else
      {
        v70 = 2;
      }
    }

    else if (v45)
    {
      v70 = 4;
    }

    else
    {
      v70 = strcmp(v68, "@NSDate") == 0;
    }

    free(v69);
    v71 = NSSelectorFromString(v46);
    if (class_addMethod(cls, v71, *(&off_1F2FA06B0 + 4 * v70), *(&off_1F2FA06B0 + 4 * v70 + 1)))
    {
      v74 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v72, v5, v73);
      objc_msgSend_setObject_forKeyedSubscript_(v111, v75, v74, v46);

      if ((v70 | 2) == 3)
      {
        v76 = MEMORY[0x1E696AEC0];
        v77 = sub_1B7AEF5BC(v16, 1, 0);
        v80 = objc_msgSend_stringWithFormat_(v76, v78, @"raw%@", v79, v77);

        v81 = NSSelectorFromString(v80);
        class_addMethod(cls, v81, *(&off_1F2FA06B0 + 8 * (v70 == 3)), *(&off_1F2FA06B0 + 8 * (v70 == 3) + 1));
        v84 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v82, v5, v83);
        objc_msgSend_setObject_forKeyedSubscript_(v111, v85, v84, v80);
      }
    }

    a1 = cls;
    v6 = 0x1E696A000;
    goto LABEL_34;
  }

LABEL_40:
  pthread_rwlock_wrlock(&stru_1EDBE5750);
  v100 = objc_msgSend_copy(v111, v97, v98, v99);
  v101 = qword_1EDBE5818;
  v102 = NSStringFromClass(a1);
  objc_msgSend_setObject_forKeyedSubscript_(v101, v103, v100, v102);

  v107 = objc_msgSend_copy(v112, v104, v105, v106);
  v108 = qword_1EDBE5820;
  v109 = NSStringFromClass(a1);
  objc_msgSend_setObject_forKeyedSubscript_(v108, v110, v107, v109);

  pthread_rwlock_unlock(&stru_1EDBE5750);
}

id sub_1B7AEF5BC(void *a1, int a2, unsigned int a3)
{
  v5 = a1;
  if (objc_msgSend_length(v5, v6, v7, v8))
  {
    v9 = v5;
    v13 = *(objc_msgSend_UTF8String(v9, v10, v11, v12) + a3);
    if (a2)
    {
      v14 = __toupper(v13);
    }

    else
    {
      v14 = __tolower(v13);
    }

    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"%c", v16, v14);
    v17 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v5, v19, 0, a3 + 1, v18);
  }

  else
  {
    v17 = v5;
  }

  return v17;
}

uint64_t IMDChatRecordCopyChatRecord(int64_t a1)
{
  if (a1 == -1)
  {
    return 0;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1B7AEF84C;
    v5[3] = &unk_1E7CB7368;
    v5[4] = &v6;
    v5[5] = a1;
    _IMDPerformLockedMessageStoreBlock(v5);
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1B7B297E4;
    v4[3] = &unk_1E7CB6838;
    v4[4] = &v6;
    __syncXPCIMDChatRecordCopyChatRecordForIdentifier_IPCAction(v4, a1);
  }

  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __XPCServerIMDChatRecordCopyHandles_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7AE548C;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7AEF84C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7AE0D64(a1, a2, a3, a4);
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

_OWORD *sub_1B7AEF890(uint64_t a1, int64_t a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_once(&stru_1EDBE5A50, sub_1B7AE97F8);
  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (Instance)
  {
    Instance[3] = 0u;
    Instance[4] = 0u;
    Instance[1] = 0u;
    Instance[2] = 0u;
    *(Instance + 2) = a2;
    if (a3)
    {
      v7 = IMDChatRecordCopyChatRecord(a2);
    }

    else
    {
      v7 = IMDChatRecordCopyChatRecordUnlocked(a2);
    }

    v8 = v7;
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = 134218242;
        v13 = a2;
        v14 = 2112;
        v15 = v8;
        _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_DEBUG, "Got record in _IMDChatRecordCreateFromRecordIDWithLock (%lld) : %@", &v12, 0x16u);
      }
    }

    if (!v8)
    {
      v10 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        v13 = a2;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Could not get chat record for identifier %lld", &v12, 0xCu);
      }

      v8 = v6;
      v6 = 0;
    }

    CFRelease(v8);
  }

  return v6;
}

void sub_1B7AEFA38(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 16) = -1;
  if (*(a1 + 24))
  {
    v5 = 0;
    for (i = 16; i != 1136; i += 40)
    {
      v7 = *(*(objc_msgSend_chatRecordDescriptor(IMDLegacyRecordBridge, a2, a3, a4) + 80) + i);
      if (CFArrayGetValueAtIndex(*(a1 + 24), v5))
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        v9 = *(v7 + 8);
        if (v9)
        {
          v9();
        }
      }

      ++v5;
    }

    v10 = *(a1 + 24);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 24) = 0;
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 48) = 0;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 32) = 0;
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 64) = 0;
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 72) = 0;
  }
}

uint64_t _IMDCopyIMDHandleRecordFromXPCObjectClient(void *a1)
{
  if (xpc_dictionary_get_count(a1) < 3)
  {
    return 0;
  }

  pthread_once(&stru_1EDBE5A70, sub_1B7B38EF8);
  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    v4 = 5;
    Mutable = CFArrayCreateMutable(0, 5, 0);
    do
    {
      CFArrayAppendValue(Mutable, 0);
      --v4;
    }

    while (v4);
    v7 = *MEMORY[0x1E69990F8];
    v6 = *(MEMORY[0x1E69990F8] + 8);
    v8 = &off_1E7CB8330;
    do
    {
      v9 = IMGetXPCStringFromDictionary();
      if (CFArrayGetValueAtIndex(Mutable, v4) && v6)
      {
        v6();
      }

      if (v9)
      {
        v10 = v7 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v9 = v7(v9);
      }

      CFArraySetValueAtIndex(Mutable, v4++, v9);
      v8 += 5;
    }

    while (v4 != 5);
    *(v2 + 24) = Mutable;
    *(v2 + 16) = xpc_dictionary_get_int64(a1, "recordIdentifier");
  }

  return v2;
}

void sub_1B7AEFC70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_count(a2, a2, a3, a4))
  {
    IMInsertDictionariesToXPCDictionary();
  }

  else if (a3 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      *buf = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = a3;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Failed to fetch identifiers for chat record with guid %@ : %@", buf, 0x16u);
    }
  }
}

void sub_1B7AEFDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  v5 = sub_1B7CFE980();
  if (a2)
  {
    v6 = sub_1B7CFDEB0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t IMDBridgedRecordCopyPropertyValue(void *a1, CFIndex a2)
{
  v3 = a1;
  v9 = *objc_msgSend__localCache(v3, v4, v5, v6);
  if (!v9)
  {

LABEL_11:
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_1B7AF0E98;
      v15[3] = &unk_1E7CB8000;
      v16 = v3;
      v17 = &v19;
      v18 = a2;
      _IMDPerformBlock(v15);
      v12 = v20[3];

      _Block_object_dispose(&v19, 8);
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_15;
  }

  v10 = *(objc_msgSend__propertyDescriptorForProperty_(v3, v7, a2, v8) + 16);
  ValueAtIndex = CFArrayGetValueAtIndex(v9, a2);
  v12 = ValueAtIndex;
  if (ValueAtIndex)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if (!*v10)
    {

      goto LABEL_15;
    }

    v12 = (*v10)(ValueAtIndex);
  }

  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_15:

  return v12;
}

void sub_1B7AEFFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1B7AEFFD4(void *a1, const char *a2)
{
  v3 = a1;
  v4 = sub_1B7AF0958(v3, a2);
  v5 = IMDBridgedRecordCopyPropertyValue(v3, v4);

  return v5;
}

void sub_1B7AF0054(uint64_t a1, uint64_t a2, void (*a3)(void, void))
{
  sub_1B7AE3F68();

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1B7AE3A9C((v8 > 1), v9 + 1, 1, v7);
  }

  v12 = MEMORY[0x1E69E6158];
  v13 = &off_1F2FA8B58;
  *&v11 = a1;
  *(&v11 + 1) = a2;
  v7[2] = v9 + 1;
  sub_1B7AE910C(&v11, &v7[5 * v9 + 4]);
  v10 = sub_1B7AE3B2C(0xD000000000000060, 0x80000001B7D58B00, 0);
  *&v11 = v6;

  sub_1B7AF1A7C(v7, v10, &v11, v10);

  a3(v11, 0);
}

void _IMDChatRecordBulkCopy(uint64_t a1, const void **a2, const void **a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, const void **a14, const void **a15, void *a16, uint64_t *a17, uint64_t *a18, const void **a19, uint64_t *a20, void *a21, uint64_t *a22, uint64_t *a23, const void **a24, const void **a25, void *a26, const void **a27, const void **a28)
{
  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = sub_1B7B56650;
      v77[3] = &unk_1E7CB9030;
      v77[4] = a1;
      v77[5] = a2;
      v77[6] = a3;
      v77[7] = a4;
      v77[8] = a5;
      v77[9] = a6;
      v77[10] = a7;
      v77[11] = a11;
      v77[12] = a10;
      v77[13] = a8;
      v77[14] = a9;
      v77[15] = a12;
      v77[16] = a13;
      v77[17] = a14;
      v77[18] = a15;
      v77[19] = a16;
      v77[20] = a17;
      v77[21] = a18;
      v77[22] = a19;
      v77[23] = a20;
      v77[24] = a21;
      v77[25] = a22;
      v77[26] = a23;
      v77[27] = a24;
      v77[28] = a26;
      v77[29] = a25;
      v77[30] = a27;
      v77[31] = a28;
      _IMDPerformBlock(v77);
    }

    else
    {
      v36 = *(a1 + 24);
      if (v36)
      {
        if (a4)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v36, 3);
          v38 = ValueAtIndex;
          if (ValueAtIndex)
          {
            CFRetain(ValueAtIndex);
          }

          *a4 = v38;
        }

        if (a5)
        {
          v39 = CFArrayGetValueAtIndex(*(a1 + 24), 4);
          v40 = v39;
          if (v39)
          {
            CFRetain(v39);
          }

          *a5 = v40;
        }

        if (a6)
        {
          v41 = CFArrayGetValueAtIndex(*(a1 + 24), 5);
          v42 = v41;
          if (v41)
          {
            CFRetain(v41);
          }

          *a6 = v42;
        }

        if (a7)
        {
          v43 = CFArrayGetValueAtIndex(*(a1 + 24), 6);
          v44 = v43;
          if (v43)
          {
            CFRetain(v43);
          }

          *a7 = v44;
        }

        if (a11)
        {
          v45 = CFArrayGetValueAtIndex(*(a1 + 24), 10);
          v46 = v45;
          if (v45)
          {
            CFRetain(v45);
          }

          *a11 = v46;
        }

        if (a10)
        {
          v47 = CFArrayGetValueAtIndex(*(a1 + 24), 11);
          v48 = v47;
          if (v47)
          {
            CFRetain(v47);
          }

          *a10 = v48;
        }

        if (a8)
        {
          v49 = CFArrayGetValueAtIndex(*(a1 + 24), 0);
          v50 = v49;
          if (v49)
          {
            CFRetain(v49);
          }

          *a8 = v50;
        }

        if (a9)
        {
          v51 = CFArrayGetValueAtIndex(*(a1 + 24), 7);
          v52 = v51;
          if (v51)
          {
            CFRetain(v51);
          }

          *a9 = v52;
        }

        if (a12)
        {
          v53 = CFArrayGetValueAtIndex(*(a1 + 24), 8);
          v54 = v53;
          if (v53)
          {
            CFRetain(v53);
          }

          *a12 = v54;
        }

        if (a13)
        {
          v55 = CFArrayGetValueAtIndex(*(a1 + 24), 12);
          v56 = v55;
          if (v55)
          {
            CFRetain(v55);
          }

          *a13 = v56;
        }

        if (a14)
        {
          *a14 = CFArrayGetValueAtIndex(*(a1 + 24), 9);
        }

        if (a3)
        {
          *a3 = CFArrayGetValueAtIndex(*(a1 + 24), 2);
        }

        if (a2)
        {
          *a2 = CFArrayGetValueAtIndex(*(a1 + 24), 1);
        }

        if (a15)
        {
          *a15 = CFArrayGetValueAtIndex(*(a1 + 24), 13);
        }

        if (a16)
        {
          *a16 = CFArrayGetValueAtIndex(*(a1 + 24), 14);
        }

        if (a17)
        {
          v57 = CFArrayGetValueAtIndex(*(a1 + 24), 15);
          v58 = v57;
          if (v57)
          {
            CFRetain(v57);
          }

          *a17 = v58;
        }

        if (a18)
        {
          v59 = CFArrayGetValueAtIndex(*(a1 + 24), 16);
          v60 = v59;
          if (v59)
          {
            CFRetain(v59);
          }

          *a18 = v60;
        }

        if (a19)
        {
          *a19 = CFArrayGetValueAtIndex(*(a1 + 24), 17);
        }

        if (a20)
        {
          v61 = CFArrayGetValueAtIndex(*(a1 + 24), 18);
          v62 = v61;
          if (v61)
          {
            CFRetain(v61);
          }

          *a20 = v62;
        }

        if (a21)
        {
          v63 = CFArrayGetValueAtIndex(*(a1 + 24), 19);
          if (v63)
          {
            CFNumberGetValue(v63, kCFNumberSInt64Type, a21);
          }
        }

        if (a22)
        {
          v64 = CFArrayGetValueAtIndex(*(a1 + 24), 20);
          v65 = v64;
          if (v64)
          {
            CFRetain(v64);
          }

          *a22 = v65;
        }

        if (a23)
        {
          v66 = CFArrayGetValueAtIndex(*(a1 + 24), 21);
          v67 = v66;
          if (v66)
          {
            CFRetain(v66);
          }

          *a23 = v67;
        }

        if (a24)
        {
          *a24 = CFArrayGetValueAtIndex(*(a1 + 24), 22);
        }

        if (a26)
        {
          v68 = CFArrayGetValueAtIndex(*(a1 + 24), 23);
          if (v68)
          {
            CFNumberGetValue(v68, kCFNumberSInt64Type, a26);
          }
        }

        if (a25)
        {
          *a25 = CFArrayGetValueAtIndex(*(a1 + 24), 24);
        }

        if (a27)
        {
          *a27 = CFArrayGetValueAtIndex(*(a1 + 24), 25);
        }

        if (a28)
        {
          *a28 = CFArrayGetValueAtIndex(*(a1 + 24), 26);
        }
      }
    }
  }

  else
  {
    v28 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF35B8(v28, v29, v30, v31, v32, v33, v34, v35);
    }
  }
}

uint64_t sub_1B7AF0840(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = _IMDCopyIMDHandleRecordFromXPCObjectClient(a3);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    CFRelease(v6);
  }

  return 1;
}

xpc_object_t sub_1B7AF08C4(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7AF0840;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7AF0958(uint64_t a1, const char *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  pthread_rwlock_rdlock(&stru_1EDBE5750);
  v7 = objc_msgSend_objectForKeyedSubscript_(qword_1EDBE5818, v5, v4, v6);
  pthread_rwlock_unlock(&stru_1EDBE5750);
  v8 = NSStringFromSelector(a2);
  v11 = objc_msgSend_objectForKeyedSubscript_(v7, v9, v8, v10);

  v15 = objc_msgSend_intValue(v11, v12, v13, v14);
  return v15;
}

void sub_1B7AF0A50(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 40) + 16));
  if (!v2)
  {
    return;
  }

  v6 = v2;
  v7 = 0;
  for (i = 0; i != 28; ++i)
  {
    v9 = (*(objc_msgSend_chatRecordDescriptor(IMDLegacyRecordBridge, v3, v4, v5, v62, v63) + 80) + v7);
    v10 = *v9;
    v11 = v9[1];
    Property = CSDBRecordGetProperty();
    v13 = Property;
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v62 = Property;
        v63 = 0;
        IMInsertDatasToXPCDictionary();
        goto LABEL_16;
      }

      if (v11 != 3)
      {
        goto LABEL_16;
      }

      valuePtr[0] = 0;
      if (Property)
      {
        CFNumberGetValue(Property, kCFNumberSInt64Type, valuePtr);
        v14 = valuePtr[0];
      }

      else
      {
        v14 = 0;
      }

      v15 = *(a1 + 32);
      v16 = v10;
      goto LABEL_15;
    }

    if (!v11)
    {
      v15 = *(a1 + 32);
      v16 = v10;
      v14 = v13;
LABEL_15:
      xpc_dictionary_set_int64(v15, v16, v14);
      goto LABEL_16;
    }

    if (v11 == 1)
    {
      v62 = Property;
      v63 = 0;
      IMInsertNSStringsToXPCDictionary();
    }

LABEL_16:
    v7 += 40;
  }

  if (*(a1 + 56))
  {
    v17 = *(a1 + 48);
    if (v17)
    {
      v67 = 0;
      v68 = &v67;
      v69 = 0x2020000000;
      v70 = 0;
      v18 = *(v17 + 16);
      valuePtr[0] = MEMORY[0x1E69E9820];
      valuePtr[1] = 3221225472;
      valuePtr[2] = sub_1B7B5921C;
      valuePtr[3] = &unk_1E7CB7520;
      valuePtr[4] = &v67;
      valuePtr[5] = v18;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT handle_id FROM chat_handle_join WHERE chat_id = ?", valuePtr);
      v19 = v68[3];
      _Block_object_dispose(&v67, 8);
    }

    else
    {
      v19 = 0;
    }

    v20 = xpc_array_create(0, 0);
    if (v20)
    {
      v24 = v20;
      v25 = objc_msgSend_count(v19, v21, v22, v23);
      if (v25 >= 1)
      {
        v28 = 0;
        v29 = v25 & 0x7FFFFFFF;
        do
        {
          v30 = objc_msgSend_objectAtIndex_(v19, v26, v28, v27, v62, v63);
          v31 = xpc_dictionary_create(0, 0, 0);
          if (v31)
          {
            v32 = v31;
            _IMDHandleRecordBulkCopyXPCDictionary(v30, v31, 0);
            xpc_array_append_value(v24, v32);
            xpc_release(v32);
          }

          ++v28;
        }

        while (v29 != v28);
      }

      v33 = *(a1 + 32);
      if (v33)
      {
        xpc_dictionary_set_value(v33, "handles_cache", v24);
      }

      xpc_release(v24);
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  if (*(a1 + 57))
  {
    Message = IMDChatRecordCopyLastMessage(*(a1 + 40));
    if (Message)
    {
      v35 = Message;
      v36 = xpc_dictionary_create(0, 0, 0);
      if (v36)
      {
        v37 = v36;
        _IMDMessageRecordBulkCopyXPCDictionary(v35, v36, 1, 1);
        v38 = *(a1 + 32);
        if (v38)
        {
          xpc_dictionary_set_value(v38, "last_message_cache", v37);
        }

        xpc_release(v37);
      }

      CFRelease(v35);
    }
  }

  if (*(a1 + 58))
  {
    v39 = IMDMessageRecordCountAllUnreadMessagesForChatRowIDUnlocked(*(*(a1 + 40) + 16));
  }

  else
  {
    v39 = -1;
  }

  xpc_dictionary_set_int64(*(a1 + 32), "unread_count_cache", v39);
  v43 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v40, v41, v42);
  if (objc_msgSend_isMissingMessagesEnabled(v43, v44, v45, v46))
  {
    v50 = objc_msgSend_guid(*(a1 + 40), v47, v48, v49);
    if (v50)
    {
      v51 = v50;
      v52 = objc_msgSend_synchronousDatabase(IMDDatabase, v47, v48, v49);
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = sub_1B7AEFC70;
      v65[3] = &unk_1E7CB90C0;
      v65[4] = *(a1 + 32);
      v65[5] = v51;
      objc_msgSend_fetchIdentifiersForChatRecordWithGUID_completionHandler_(v52, v53, v51, v65);
    }
  }

  v54 = objc_msgSend_guid(*(a1 + 40), v47, v48, v49, v62, v63);
  if (v54)
  {
    v58 = v54;
    v59 = objc_msgSend_synchronousDatabase(IMDDatabase, v55, v56, v57);
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = sub_1B7B57E90;
    v64[3] = &unk_1E7CB90E8;
    v60 = *(a1 + 32);
    v64[4] = v58;
    v64[5] = v60;
    objc_msgSend_fetchServicesForChatWithGUID_completionHandler_(v59, v61, v58, v64);
  }

  xpc_dictionary_set_int64(*(a1 + 32), "recordIdentifier", *(*(a1 + 48) + 16));
  CFRelease(v6);
}

void sub_1B7AF0E98(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend__copyUpdatedRecord(*(a1 + 32), a2, a3, a4);
  if (v5)
  {
    v8 = v5;
    objc_msgSend__propertyIDForProperty_(*(a1 + 32), v6, *(a1 + 48), v7);
    *(*(*(a1 + 40) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v8);
  }
}

uint64_t IMDChatRecordCopyChatRecordUnlocked(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7AEB3E4;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7AF0FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7AF0FF4()
{
  sqlite3_finalize(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1B7AF102C()
{
  if (*(v0 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) == 1)
  {
    sqlite3_close_v2(*(v0 + 16));
  }

  sub_1B7AE3F08(v0 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);

  return swift_deallocClassInstance();
}

unint64_t sub_1B7AF1238(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA521B8, &qword_1B7D0B330);
    v3 = sub_1B7CFF380();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B7AE11D0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B7AF133C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 16) = -1;
  if (*(a1 + 24))
  {
    v5 = 0;
    for (i = 16; i != 3736; i += 40)
    {
      v7 = *(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3, a4) + 80) + i);
      if (CFArrayGetValueAtIndex(*(a1 + 24), v5))
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        v9 = *(v7 + 8);
        if (v9)
        {
          v9();
        }
      }

      ++v5;
    }

    v10 = *(a1 + 24);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 24) = 0;
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 32) = 0;
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 40) = 0;
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 48) = 0;
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 56) = 0;
  }
}

uint64_t _IMDCopyIMDMessageRecordFromXPCObjectClient(void *a1)
{
  if (xpc_dictionary_get_count(a1) < 3)
  {
    return 0;
  }

  pthread_once(&stru_1EDBE5A60, sub_1B7B346D4);
  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (!Instance)
  {
    return v2;
  }

  *(Instance + 16) = 0u;
  v4 = (Instance + 16);
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  if (*(Instance + 24))
  {
    goto LABEL_40;
  }

  v28 = (Instance + 16);
  v5 = 93;
  Mutable = CFArrayCreateMutable(0, 93, 0);
  do
  {
    CFArrayAppendValue(Mutable, 0);
    --v5;
  }

  while (v5);
  int64 = xpc_dictionary_get_int64(a1, "flags");
  v10 = 0;
  for (i = 0; i != 93; ++i)
  {
    v12 = 0;
    v13 = *(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, v7, v8, v9, v28) + 80) + v10;
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v17 = IMGetXPCDataFromDictionary();
        goto LABEL_19;
      }

      v16 = 0;
      if (v14 == 3)
      {
        valuePtr = IMGetXPCIntFromDictionary();
        v12 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
        v16 = v12;
      }
    }

    else
    {
      if (!v14)
      {
        v18 = sub_1B7AE64DC(i);
        if (v18)
        {
          v12 = (v18 & int64) != 0;
LABEL_20:
          v16 = 0;
          goto LABEL_21;
        }

        v17 = IMGetXPCIntFromDictionary();
LABEL_19:
        v12 = v17;
        goto LABEL_20;
      }

      v16 = 0;
      if (v14 == 1)
      {
        v17 = IMGetXPCStringFromDictionary();
        goto LABEL_19;
      }
    }

LABEL_21:
    if (CFArrayGetValueAtIndex(Mutable, i))
    {
      if (v15)
      {
        v19 = *(v15 + 8);
        if (v19)
        {
          v19();
        }
      }
    }

    if (v12 && v15 && *v15)
    {
      v12 = (*v15)(v12);
    }

    CFArraySetValueAtIndex(Mutable, i, v12);
    if (v16)
    {
      CFRelease(v16);
    }

    v10 += 40;
  }

  *(v2 + 24) = Mutable;
  value = xpc_dictionary_get_value(a1, "attachments_cache");
  v4 = v28;
  if (value)
  {
    v21 = value;
    if (!*(v2 + 48))
    {
      *(v2 + 48) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    }

    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B38A64;
    applier[3] = &unk_1E7CB8278;
    applier[4] = v2;
    xpc_array_apply(v21, applier);
  }

  v22 = xpc_dictionary_get_value(a1, "handle_cache");
  if (v22)
  {
    *(v2 + 32) = _IMDCopyIMDHandleRecordFromXPCObjectClient(v22);
  }

  v23 = xpc_dictionary_get_value(a1, "other_handle_cache");
  if (v23)
  {
    *(v2 + 40) = _IMDCopyIMDHandleRecordFromXPCObjectClient(v23);
  }

LABEL_40:
  v24 = xpc_dictionary_get_value(a1, "threadCountsByPart");
  ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 24), 0);
  valuePtr = 0;
  p_valuePtr = &valuePtr;
  v34 = 0x3052000000;
  v35 = sub_1B7AE1944;
  v36 = sub_1B7AE24A4;
  v37 = 0;
  if (v24 && ValueAtIndex)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1B7B38ACC;
    v31[3] = &unk_1E7CB82A0;
    v31[4] = &valuePtr;
    xpc_dictionary_apply(v24, v31);
    v26 = *(v2 + 56);
    if (v26)
    {
      CFRelease(v26);
      *(v2 + 56) = 0;
    }

    *(v2 + 56) = p_valuePtr[5];
  }

  _Block_object_dispose(&valuePtr, 8);
  *v4 = xpc_dictionary_get_int64(a1, "recordIdentifier");
  return v2;
}

void sub_1B7AF1814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

char *sub_1B7AF182C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B7AF1938(uint64_t *a1, uint64_t a2)
{
  off_1F2FA8B70(v12, *(a2 + 16), 0);
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v4 = 1;
    *(v4 + 8) = v2;
    *(v4 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v6 = v12[0];
    v7 = v12[1];
    v8 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v8;
    if ((result & 1) == 0)
    {
      result = sub_1B7AF182C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
      *a1 = result;
    }

    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    if (v10 >= v9 >> 1)
    {
      result = sub_1B7AF182C((v9 > 1), v10 + 1, 1, v8);
      v8 = result;
      *a1 = result;
    }

    *(v8 + 16) = v10 + 1;
    v11 = v8 + 16 * v10;
    *(v11 + 32) = v6;
    *(v11 + 40) = v7;
  }

  return result;
}

const unsigned __int8 *sub_1B7AF1AA8@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, const unsigned __int8 **a3@<X8>)
{
  result = sqlite3_column_text(a1, a2);
  if (result)
  {
    result = sub_1B7CFEB80();
    *a3 = result;
    a3[1] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7AF1AE4(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCreateFromRecordID(0, a1[6]);
  if (v2)
  {
    v3 = v2;
    v4 = IMDMessageRecordCopyChats(v2);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = a1[6];
        v25 = 134218240;
        v26 = v9;
        v27 = 2048;
        v28 = objc_msgSend_count(v4, v6, v7, v8);
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Copy chats from message ID: %lld  (Results: %lu)", &v25, 0x16u);
      }
    }

    v13 = xpc_array_create(0, 0);
    if (v13)
    {
      v14 = objc_msgSend_count(v4, v10, v11, v12);
      if (v14 >= 1)
      {
        v17 = 0;
        v18 = v14 & 0x7FFFFFFF;
        do
        {
          v19 = objc_msgSend_objectAtIndex_(v4, v15, v17, v16);
          v20 = xpc_dictionary_create(0, 0, 0);
          if (v20)
          {
            _IMDChatRecordBulkCopyXPCDictionary(v19, v20, 0, 0, 0, 1);
            xpc_array_append_value(v13, v20);
            xpc_release(v20);
          }

          ++v17;
        }

        while (v18 != v17);
      }

      v21 = a1[4];
      if (v21)
      {
        xpc_dictionary_set_value(v21, "array_result", v13);
      }

      xpc_release(v13);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    CFRelease(v3);
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = a1[6];
      v25 = 134217984;
      v26 = v23;
      _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Tried to copy chats from message ID: %lld, but no message found", &v25, 0xCu);
    }
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1B7AF1D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B7CFECC0();
  if (a2)
  {
    v6 = sub_1B7CFDEB0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_1B7AF1DDC(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessageForGUID(a1[4]);
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = a1[4];
        v9 = 138412546;
        v10 = v5;
        v11 = 2112;
        v12 = v2;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copy message for guid: %@   (Result: %@)", &v9, 0x16u);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(v2, a1[5], 1, 0);
  }

  else if (v3)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Failed to copy message for guid: %@", &v9, 0xCu);
    }
  }

  v8 = a1[6];
  if (v8)
  {
    (*(v8 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t sub_1B7AF1F70(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDMessageRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

const void *IMDMessageRecordCreateFromRecordID(uint64_t a1, uint64_t a2)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {

    return IMDMessageRecordCreateFromRecordIDWithLock(a1, a2, 1);
  }

  else
  {

    return IMDMessageRecordCopyMessageForRowID(a2);
  }
}

uint64_t IMDMessageRecordCopyMessageRecord(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7AF20CC;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7AF20B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7AF20CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7AEAEE4(a1, a2, a3, a4);
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void _IMDChatRecordBulkCopyXPCDictionary(uint64_t a1, uint64_t a2, char a3, char a4, char a5, int a6)
{
  if (a2)
  {
    if (a1)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1B7AF0A50;
      v22[3] = &unk_1E7CB9110;
      v22[4] = a2;
      v22[5] = a1;
      v23 = a3;
      v22[6] = a1;
      v24 = a5;
      v25 = a4;
      if (a6)
      {
        _IMDPerformBlock(v22);
      }

      else
      {
        sub_1B7AF0A50(v22);
      }
    }

    else
    {
      v14 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF3B60(v14, v15, v16, v17, v18, v19, v20, v21);
      }
    }
  }

  else
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3BD8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

const __CFString *IMDMessageRecordCopyLastReadMessageForChatIdentifier(const __CFString *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEBUG, "IMDMessageRecordCopyLastReadMessageForChatGUID [%@]", &buf, 0xCu);
    }
  }

  if (a1)
  {
    if (CFStringGetLength(a1))
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v7 = 0x2020000000;
      v8 = 0;
      if (IMDIsRunningInDatabaseServerProcess())
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = sub_1B7AF2510;
        v5[3] = &unk_1E7CB7520;
        v5[4] = &buf;
        v5[5] = a1;
        _IMDPerformLockedStatementBlockWithQuery(@"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m INNER JOIN chat_message_join j ON m.ROWID = j.message_id INNER JOIN chat c ON c.ROWID = j.chat_id WHERE c.chat_identifier = ? AND m.item_type = 0 AND m.is_system_message = 0 AND m.is_read == 1 AND is_from_me == 0 AND is_finished == 1 ORDER BY m.date DESC LIMIT 1", v5);
      }

      else
      {
        v4[0] = MEMORY[0x1E69E9820];
        v4[1] = 3221225472;
        v4[2] = sub_1B7AF2760;
        v4[3] = &unk_1E7CB6838;
        v4[4] = &buf;
        __syncXPCIMDMessageRecordCopyLastReadMessageForChatIdentifier_IPCAction(v4, a1);
      }

      a1 = *(*(&buf + 1) + 24);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

void __syncXPCIMDMessageRecordCopyLastReadMessageForChatIdentifier_IPCAction(void (**a1)(void, void), uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 151);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __XPCServerIMDMessageRecordCopyLastReadMessageForChatIdentifier_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7AF25CC;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

void sub_1B7AF2510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = CSDBSqliteBindTextFromCFString();
  sub_1B7AEAEE4(v5, v6, v7, v8);
  v9 = CSDBRecordStoreProcessStatement();
  if (v9)
  {
    v10 = v9;
    if (CFArrayGetCount(v9))
    {
      CFArrayGetValueAtIndex(v10, 0);
      ID = CSDBRecordGetID();
      *(*(*(a1 + 32) + 8) + 24) = IMDMessageRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
    }

    CFRelease(v10);
  }
}

void sub_1B7AF25CC(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  MessageForChatIdentifier = IMDMessageRecordCopyLastReadMessageForChatIdentifier(*(a1 + 32));
  v3 = IMOSLoggingEnabled();
  if (MessageForChatIdentifier)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v9 = 138412546;
        v10 = v5;
        v11 = 2112;
        v12 = MessageForChatIdentifier;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copy last read message for chat identifier: %@   (Result: %@)", &v9, 0x16u);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(MessageForChatIdentifier, *(a1 + 40), 1, 0);
  }

  else if (v3)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Failed to copy last read message for chat identifier: %@", &v9, 0xCu);
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }

  if (MessageForChatIdentifier)
  {
    CFRelease(MessageForChatIdentifier);
  }
}

uint64_t sub_1B7AF2760(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDMessageRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7AF27BC()
{
  result = IMGetCachedDomainBoolForKeyWithDefaultValue();
  byte_1EBA53BA0 = result;
  return result;
}

const void *IMDHandleRecordCopyID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFC84(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    return 0;
  }

  v2 = *(a2 + 24);
  if (!v2)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1B7B3958C;
    v14[3] = &unk_1E7CB7920;
    v14[4] = &v15;
    v14[5] = a2;
    _IMDPerformBlock(v14);
    ValueAtIndex = v16[3];
    _Block_object_dispose(&v15, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
  if (!ValueAtIndex)
  {
    return ValueAtIndex;
  }

  v4 = *MEMORY[0x1E69990F8];
  if (!*MEMORY[0x1E69990F8])
  {
    return ValueAtIndex;
  }

  return v4();
}

void sub_1B7AF2910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7AF2928()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EBA5DA50);
  sub_1B7AD9040(v0, qword_1EBA5DA50);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

void __syncXPCIMDChatRecordCopyHandles_IPCAction(void (**a1)(void, void), int64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 112);
    if (a2)
    {
      xpc_dictionary_set_int64(v5, "chatRowID", a2);
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

uint64_t sub_1B7AF2A34(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = _IMDCopyIMDChatRecordFromXPCObjectClient(a3);
  if (v6)
  {
    v9 = v6;
    objc_msgSend_addObject_(*(a1 + 32), v7, v6, v8);
    CFRelease(v9);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

const void *IMDHandleRecordCopyCountry(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFCFC(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    return 0;
  }

  v2 = *(a2 + 24);
  if (!v2)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1B7B395F4;
    v14[3] = &unk_1E7CB7920;
    v14[4] = &v15;
    v14[5] = a2;
    _IMDPerformBlock(v14);
    ValueAtIndex = v16[3];
    _Block_object_dispose(&v15, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 1);
  if (!ValueAtIndex)
  {
    return ValueAtIndex;
  }

  v4 = *MEMORY[0x1E69990F8];
  if (!*MEMORY[0x1E69990F8])
  {
    return ValueAtIndex;
  }

  return v4();
}

void sub_1B7AF2BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t IMDSqlOperationGetError(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = *(result + 168);
    if (v2)
    {
      if (a2)
      {
        *a2 = v2;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

sqlite3_int64 sub_1B7AF2C68@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, sqlite3_int64 *a3@<X8>)
{
  result = sqlite3_column_int64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7AF2C98(uint64_t *a1, uint64_t a2)
{
  off_1F2FA8A10(*(a2 + 16), 0, &v10);
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v4 = 1;
    *(v4 + 8) = v2;
    *(v4 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v6 = v10;
    v7 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v7;
    if ((result & 1) == 0)
    {
      result = sub_1B7AF2DCC(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
      *a1 = result;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      result = sub_1B7AF2DCC((v8 > 1), v9 + 1, 1, v7);
      v7 = result;
      *a1 = result;
    }

    *(v7 + 16) = v9 + 1;
    *(v7 + 8 * v9 + 32) = v6;
  }

  return result;
}