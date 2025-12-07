uint64_t sub_1884204C0()
{
  sub_1883F7120();
  if (sub_188420584())
  {
    v1 = swift_task_alloc();
    *(v0 + 24) = v1;
    *v1 = v0;
    v1[1] = sub_188420CAC;

    return sub_18842062C(v1);
  }

  else
  {
    sub_1883F816C();

    return v3();
  }
}

uint64_t sub_188420584()
{
  v1 = *(v0 + 144);
  v2 = [v1 deviceContext];
  v3 = [v2 testDeviceReferenceProtocol];

  if (v3)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    v5 = [v1 containerID];
    v6 = [v5 isTestContainer];

    return v6 ^ 1;
  }
}

uint64_t sub_188420644()
{
  v1 = [*(*(v0 + 336) + 144) containerID];
  v2 = sub_188420BE4(v1);
  v4 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = 0xEB00000000432D65;

    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7 && (v8 = v7, v9 = [v7 dataSource], v8, v9))
    {
      swift_unknownObjectRelease();
      v6 = 0xEA00000000006563;
      v10 = 0x72756F5361746144;
    }

    else
    {
      v10 = 0x76697463656A624FLL;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v10 = 0x7466697753;
  }

  v34 = v10;
  v11 = *(v0 + 336);
  sub_18844E6FC(&qword_1EA90E5E0, &qword_1886FBAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1886FBA90;
  sub_1883F9424();
  v13[4] = 0xD000000000000013;
  v13[5] = v14;
  v15 = MEMORY[0x1E69E6158];
  v13[6] = v2;
  v13[7] = v4;
  sub_1884055C4();
  *(v16 + 72) = v15;
  *(v16 + 80) = v17;
  sub_1883F7DA4(v16);
  v18 = CKContainerEnvironmentString([v1 environment]);
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(inited + 96) = v19;
  *(inited + 104) = v21;
  sub_1883FA210();
  *(inited + 120) = v15;
  *(inited + 128) = v22;
  sub_1883F8A84();
  *(inited + 136) = v23;
  v24 = CKDatabaseScopeString([*(v11 + 136) databaseScope]);
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  *(inited + 144) = v25;
  *(inited + 152) = v27;
  sub_1883F9424();
  *(inited + 168) = v15;
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = v28;
  v29 = sub_188403050();
  v30 = MEMORY[0x1E69E6370];
  *(inited + 192) = v29 & 1;
  *(inited + 216) = v30;
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x8000000188702A80;
  *(inited + 240) = *(v11 + 384) != 0;
  *(inited + 264) = v30;
  *(inited + 272) = 0x65707954697061;
  *(inited + 312) = v15;
  *(inited + 280) = 0xE700000000000000;
  *(inited + 288) = v34;
  *(inited + 296) = v6;
  sub_18844E6FC(&qword_1EA90E5D8, &qword_1886FBAB8);
  v31 = Dictionary.init(dictionaryLiteral:)();

  v32 = *(v0 + 8);

  return v32(v31);
}

void sub_18842090C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_18844E6FC(&qword_1EA90E5D0, &qword_1886FBAB0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    v10 = (*(a1 + 48) + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    sub_188405DF8(*(a1 + 56) + 32 * v9, v26);
    *&v25 = v11;
    *(&v25 + 1) = v12;
    v23[2] = v25;
    v24[0] = v26[0];
    v24[1] = v26[1];
    v13 = v25;
    sub_188419138(v24, v23);

    sub_18844E6FC(&qword_1EA90E5D8, &qword_1886FBAB8);
    sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
    if (!swift_dynamicCast())
    {

      return;
    }

    v5 &= v5 - 1;
    v14 = sub_188420F2C(v13, *(&v13 + 1));
    v15 = v14;
    if (v16)
    {
      *(v2[6] + 16 * v14) = v13;

      v17 = v2[7];
      v18 = *(v17 + 8 * v15);
      *(v17 + 8 * v15) = v22;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_21;
      }

      *(v2 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
      *(v2[6] + 16 * v14) = v13;
      *(v2[7] + 8 * v14) = v22;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_22;
      }

      v2[2] = v21;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_188420B80()
{
  sub_18844E6FC(&qword_1EA90E808, &qword_1886FE2B8);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  qword_1EA90C818 = result;
  return result;
}

uint64_t sub_188420BE4(void *a1)
{
  if ([a1 isAppleInternal])
  {
    goto LABEL_5;
  }

  if (qword_1EA90CBD8 != -1)
  {
    swift_once();
  }

  if (byte_1EA919CA0 != 1)
  {
    return 0xD000000000000011;
  }

LABEL_5:
  v2 = [a1 containerIdentifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_188420CAC()
{
  sub_1883F7120();
  sub_1883F78D4();
  *v2 = v1;
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_1883F78D4();
  *v6 = v5;
  *(v8 + 32) = v7;

  return MEMORY[0x1EEE6DFA0](sub_188420DB8, v4, 0);
}

uint64_t sub_188420DB8()
{
  sub_18842090C(*(v0 + 32));
  v2 = v1;

  if (v2)
  {
    v3 = MEMORY[0x18CFD5010](0xD00000000000002BLL, 0x8000000188702A50);
    sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }

  else
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v5 = type metadata accessor for Logger();
    sub_1883FDE5C(v5, qword_1EA90C9F8);
    v4.super.isa = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v4.super.isa, v6))
    {
      *swift_slowAlloc() = 0;
      sub_1883FDB58(&dword_1883EA000, v7, v8, "BUG IN CLOUDKIT: Unable to convert configuration telemetry payload to NSObjects");
      sub_1883F8F74();
    }
  }

  sub_1883F816C();

  return v9();
}

uint64_t *sub_188420F44(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t CKUseSystemInstalledBinariesFuncForSwift()
{
  if (_sCKUseSystemInstalledBinariesPredicate != -1)
  {
    dispatch_once(&_sCKUseSystemInstalledBinariesPredicate, &unk_1EFA30BF0);
  }

  return _sCKUseSystemInstalledBinaries;
}

uint64_t sub_188420FF0()
{
  v0 = 0xD000000000000012;
  result = CKUseSystemInstalledBinariesFuncForSwift();
  if (result && __sTestOverridesAvailable != 1)
  {
    v2 = "com.apple.cloudkit.test";
  }

  else
  {
    v2 = "TrafficCompressed";
    v0 = 0xD000000000000017;
  }

  qword_1ED4B5CE8 = v0;
  *algn_1ED4B5CF0 = v2 | 0x8000000000000000;
  return result;
}

uint64_t sub_188421060(uint64_t a1, unint64_t a2)
{
  v3 = sub_188421190(a1, a2);
  sub_1884210AC(&unk_1EFA25938);
  return v3;
}

uint64_t sub_1884210AC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1884212A8(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_188421190(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_188517278(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

char *sub_1884212A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_18844E6FC(&qword_1EA90E358, qword_1886FE400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_18842139C()
{
  v0 = objc_alloc(MEMORY[0x1E696AE70]);
  v2 = objc_msgSend_initWithPattern_options_error_(v0, v1, @"[0-9,A-Z]{10}\\.(.*)", 0, 0);
  v3 = qword_1ED4B6688;
  qword_1ED4B6688 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void sub_1884213EC(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((CKCurrentProcessIsDaemon() & 1) == 0)
  {
    v4 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v2, v3);
    v7 = objc_msgSend_bundleIdentifier(v4, v5, v6);

    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = v8[2];
    }

    v9 = v8;
    v11 = v9;
    if (v7)
    {
      v12 = v9 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12 && (objc_msgSend_isEqual_(v7, v10, v9) & 1) == 0 && objc_msgSend_hasSuffix_(v7, v13, @".xctrunner"))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_notification_listener;
      if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_FAULT))
      {
        v15 = 138412290;
        v16 = @"application-identifier";
        _os_log_fault_impl(&dword_1883EA000, v14, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF CLOUDKIT: Trying to listen for push notifications in an XCTestRunner, but the bundle identifier does not match your entitlements. Please append '.xctrunner' to your %@ entitlement, otherwise you may not properly receive push notifications.", &v15, 0xCu);
      }
    }
  }
}

void sub_1884215A4(uint64_t a1)
{
  v2 = [CKUserDefaults alloc];
  v8 = objc_msgSend_suiteName(*(a1 + 32), v3, v4);
  v6 = objc_msgSend_initWithSuiteName_(v2, v5, v8);
  v7 = qword_1ED4B6748;
  qword_1ED4B6748 = v6;
}

void sub_188421AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v22 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v24 - 120));
  objc_sync_exit(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_188421BB0()
{
  v0 = [CKLogicalDeviceContext alloc];
  v2 = objc_msgSend__initWithTestDeviceReferenceProtocol_useLiveServer_(v0, v1, 0, 1);
  v3 = qword_1ED4B6570;
  qword_1ED4B6570 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void sub_188421BF8()
{
  v30 = *MEMORY[0x1E69E9840];
  v0 = NSHomeDirectory();
  isEqualToString = objc_msgSend_isEqualToString_(v0, v1, @"/var/empty");

  if (isEqualToString)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Not attempting to create Caches directory for /var/empty process", buf, 2u);
    }
  }

  else
  {
    v6 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v3, v4);
    v27 = 0;
    v8 = objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v6, v7, 13, 1, 0, 0, &v27);
    v9 = v27;

    v12 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v10, v11);
    v15 = objc_msgSend_path(v8, v13, v14);
    v17 = objc_msgSend_fileExistsAtPath_(v12, v16, v15);

    if (v17)
    {
      v18 = v9;
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v19 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1883EA000, v19, OS_LOG_TYPE_INFO, "Warn: Caches directory does not exist, creating one", buf, 2u);
      }

      v22 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v20, v21);
      v26 = v9;
      v24 = objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v22, v23, 13, 1, 0, 1, &v26);
      v18 = v26;

      if (!v24)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v25 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = v18;
          _os_log_error_impl(&dword_1883EA000, v25, OS_LOG_TYPE_ERROR, "Couldn't create caches directory, %@", buf, 0xCu);
        }
      }
    }
  }
}

id sub_188421EC8(uint64_t a1)
{
  v1 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1884224A0;
  block[3] = &unk_1E70BC418;
  block[4] = v1;
  if (qword_1ED4B6148 != -1)
  {
    dispatch_once(&qword_1ED4B6148, block);
  }

  v2 = qword_1ED4B6140;

  return v2;
}

void sub_188421F6C(uint64_t a1, const char *a2, uint64_t a3)
{
  if ((byte_1EA90C538 & 1) == 0)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, *(a1 + 32), *(a1 + 40), @"CKXPCConnection.m", 49, @"The daemon shouldn't be using XPC to talk to itself");
  }

  v4 = objc_alloc(*(a1 + 40));
  v12 = objc_msgSend_processInfo(CKProcessInfo, v5, v6);
  v8 = objc_msgSend_initWithProcessInfo_(v4, v7, v12);
  v9 = qword_1ED4B6270;
  qword_1ED4B6270 = v8;
}

void sub_18842207C(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFAC8C80);
  v3 = qword_1ED4B6278;
  qword_1ED4B6278 = v2;

  v4 = qword_1ED4B6278;
  v5 = sub_188422354(CKContainer);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v4, v6, v5, sel_getContainerScopedDaemonProxyCreatorForSetupInfo_containerScopedClientProxy_completionHandler_, 1, 0);

  v7 = qword_1ED4B6278;
  v8 = sub_188421EC8(CKContainer);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v7, v9, v8, sel_getContainerScopedDaemonProxyCreatorForSetupInfo_containerScopedClientProxy_completionHandler_, 0, 1);

  v10 = qword_1ED4B6278;
  v13 = objc_msgSend_CKXPCDaemonToClientSessionAcquisitionInterface(_TtC8CloudKit25CKSessionAcquirerXPCProxy, v11, v12);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v10, v14, v13, sel_getSessionAcquisitionDaemonProxyCreatorForSessionAcquisitionSetupInfo_sessionAcquisitionClientProxy_completionHandler_, 1, 0);

  v15 = qword_1ED4B6278;
  v18 = objc_msgSend_CKXPCClientToDaemonSessionAcquisitionInterface(_TtC8CloudKit25CKSessionAcquirerXPCProxy, v16, v17);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v15, v19, v18, sel_getSessionAcquisitionDaemonProxyCreatorForSessionAcquisitionSetupInfo_sessionAcquisitionClientProxy_completionHandler_, 0, 1);

  v20 = qword_1ED4B6278;
  v23 = objc_msgSend_CKXPCClientToDaemonLogicalDeviceScopedInterface(CKLogicalDeviceScopedDaemonProxy, v21, v22);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v20, v24, v23, sel_getLogicalDeviceScopedDaemonProxyCreatorForTestDeviceReferenceProtocol_completionHandler_, 0, 1);

  if (__sTestOverridesAvailable == 1)
  {
    v27 = NSClassFromString(&cfstr_Cktestdevicere.isa);
    v28 = qword_1ED4B6278;
    v30 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v29, v27);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v28, v31, v30, sel_getLogicalDeviceScopedDaemonProxyCreatorForTestDeviceReferenceProtocol_completionHandler_, 0, 0);
  }

  v32 = qword_1ED4B6278;
  v33 = objc_msgSend_CKXPCClientToDaemonProcessScopedInterface(CKProcessScopedDaemonProxy, v25, v26);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v32, v34, v33, sel_getProcessScopedDaemonProxyCreatorWithCompletionHandler_, 0, 1);

  v35 = qword_1ED4B6278;
  v38 = objc_msgSend_CKXPCClientToDaemonAdopterProcessScopedInterface(CKAdopterProcessScopedDaemonProxy, v36, v37);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v35, v39, v38, sel_getAdopterProcessScopedDaemonProxyCreatorWithCompletionHandler_, 0, 1);

  if (__sTestOverridesAvailable == 1)
  {
    v40 = NSClassFromString(&cfstr_Cktestserverma.isa);
    v41 = qword_1ED4B6278;
    v45 = objc_msgSend_CKXPCClientToDaemonTestServerManagerInterface(v40, v42, v43);
    objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v41, v44, v45, sel_getDaemonTestServerManagerProxyCreatorWithCompletionHandler_, 0, 1);
  }
}

uint64_t sub_188422324()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_18844E6FC(&qword_1EA90E090, &qword_1886FA110);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

id sub_188422354(uint64_t a1)
{
  objc_opt_self();
  if (qword_1ED4B6128 != -1)
  {
    dispatch_once(&qword_1ED4B6128, &unk_1EFA2E8A8);
  }

  v1 = qword_1ED4B6120;

  return v1;
}

void sub_1884223AC(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFA892E8);
  v3 = qword_1ED4B6120;
  qword_1ED4B6120 = v2;

  v4 = qword_1ED4B6120;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v8, v6, v7, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v10, v9, sel_consumeSandboxExtensions_reply_, 0, 0);

  v11 = qword_1ED4B6120;
  v13 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v11, v12, v13, sel_handleSharingUIUpdatedShare_recordID_isDeleted_error_reply_, 3, 0);
}

void sub_1884224A0(uint64_t a1)
{
  objc_opt_self();
  if (qword_1ED4B6138 != -1)
  {
    dispatch_once(&qword_1ED4B6138, &unk_1EFA2E8C8);
  }

  v1 = qword_1ED4B6130;

  objc_storeStrong(&qword_1ED4B6140, v1);
}

void sub_188422500(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFAC8AA0);
  v3 = qword_1ED4B6130;
  qword_1ED4B6130 = v2;

  v4 = qword_1ED4B6130;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v8, v6, v7, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v10, v9, sel_statusGroupsForApplicationPermission_completionHandler_, 0, 1);

  v11 = qword_1ED4B6130;
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v16 = objc_msgSend_setWithObjects_(v12, v15, v13, v14, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v11, v17, v16, sel_getRecordPCSDiagnosticsForZonesWithCompletionHandler_, 0, 1);

  v81 = MEMORY[0x1E695DFD8];
  v82 = qword_1ED4B6130;
  v80 = objc_opt_class();
  v79 = objc_opt_class();
  v78 = objc_opt_class();
  v77 = objc_opt_class();
  v76 = objc_opt_class();
  v75 = objc_opt_class();
  v74 = objc_opt_class();
  v73 = objc_opt_class();
  v72 = objc_opt_class();
  v71 = objc_opt_class();
  v70 = objc_opt_class();
  v69 = objc_opt_class();
  v68 = objc_opt_class();
  v67 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v30 = objc_msgSend_setWithObjects_(v81, v29, v80, v79, v78, v77, v76, v75, v74, v73, v72, v71, v70, v69, v68, v67, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v82, v31, v30, sel_fetchLongLivedOperationsWithIDs_completionHandler_, 0, 1);

  objc_msgSend_setXPCType_forSelector_argumentIndex_ofReply_(qword_1ED4B6130, v32, MEMORY[0x1E69E9E80], sel_networkTransferEndpointWithCompletionHandler_, 0, 1);
  v33 = qword_1ED4B6130;
  v34 = MEMORY[0x1E695DFD8];
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v42 = objc_msgSend_setWithObjects_(v34, v41, v35, v36, v37, v38, v39, v40, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v33, v43, v42, sel_setFakeResponseOperationResult_forNextRequestOfClassName_forItemID_withLifetime_completionHandler_, 2, 0);

  v44 = qword_1ED4B6130;
  v45 = MEMORY[0x1E695DFD8];
  v46 = objc_opt_class();
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = objc_opt_class();
  v50 = objc_opt_class();
  v51 = objc_opt_class();
  v53 = objc_msgSend_setWithObjects_(v45, v52, v46, v47, v48, v49, v50, v51, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v44, v54, v53, sel_setFakeError_forNextRequestOfClassName_completionHandler_, 0, 0);

  v55 = qword_1ED4B6130;
  v56 = MEMORY[0x1E695DFD8];
  v57 = objc_opt_class();
  v58 = objc_opt_class();
  v60 = objc_msgSend_setWithObjects_(v56, v59, v57, v58, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v55, v61, v60, sel_clearPILSCacheForLookupInfos_, 0, 0);

  v62 = qword_1ED4B6130;
  v63 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v62, v64, v63, sel_getCloudCoreSessionValidityError_, 0, 1);

  v65 = qword_1ED4B6130;
  v83 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v65, v66, v83, sel_getCloudCoreSessionValidityError_, 1, 1);
}

uint64_t sub_188422BC0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_188422CA4(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

void sub_188422D04(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol_];

  *a3 = v7;
}

void sub_188422E20(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFAC8BC0);
  v3 = qword_1ED4B6228;
  qword_1ED4B6228 = v2;

  v4 = qword_1ED4B6228;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v5, v8, v6, v7, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v9, v10, sel_allClouddThrottlesWithCompletionHandler_, 0, 1);
}

uint64_t sub_188422F38(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFAC8C20);
  v3 = qword_1ED4B6248;
  qword_1ED4B6248 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t sub_188422F80(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFAC8840);
  v3 = qword_1ED4B6218;
  qword_1ED4B6218 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void sub_188423070(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFAA02E8);
  v3 = qword_1ED4B6288;
  qword_1ED4B6288 = v2;

  v4 = qword_1ED4B6288;
  v7 = objc_msgSend_CKXPCDaemonToClientLogicalDeviceScopedInterface(CKLogicalDeviceScopedDaemonProxy, v5, v6);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v4, v8, v7, sel_getLogicalDeviceScopedClientProxyCreatorForTestDeviceReferenceProtocol_completionHandler_, 0, 1);

  if (__sTestOverridesAvailable == 1)
  {
    v11 = NSClassFromString(&cfstr_Cktestdevicere.isa);
    v12 = qword_1ED4B6288;
    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v16 = objc_msgSend_setWithObjects_(v13, v15, v11, v14, 0);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v12, v17, v16, sel_getLogicalDeviceScopedClientProxyCreatorForTestDeviceReferenceProtocol_completionHandler_, 0, 0);
  }

  v18 = qword_1ED4B6288;
  v20 = objc_msgSend_CKXPCDaemonToClientProcessScopedInterface(CKProcessScopedDaemonProxy, v9, v10);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(v18, v19, v20, sel_getProcessScopedClientProxyCreatorWithCompletionHandler_, 0, 1);
}

uint64_t sub_188423214(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFAB9AA0);
  v3 = qword_1ED4B6238;
  qword_1ED4B6238 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t sub_1884232B0(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFABAB68);
  v3 = qword_1ED4B6258;
  qword_1ED4B6258 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t type metadata accessor for CKSessionAcquirerXPCProxy(uint64_t a1)
{
  result = qword_1ED4B5E10;
  if (!qword_1ED4B5E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

const mach_header *CKHeaderForLibraryName(void *a1)
{
  v1 = a1;
  v2 = _dyld_image_count();
  if (v2)
  {
    v3 = v2;
    for (i = 0; i != v3; ++i)
    {
      image_header = _dyld_get_image_header(i);
      if (image_header)
      {
        v6 = image_header;
        if (image_header->filetype == 6)
        {
          ncmds = image_header->ncmds;
          if (ncmds)
          {
            v8 = 0;
            p_cputype = &image_header[1].cputype;
            do
            {
              if (*p_cputype == 13)
              {
                v10 = p_cputype + p_cputype[2];
                v11 = strrchr(v10, 47);
                if (v11)
                {
                  v10 = v11 + 1;
                }

                v12 = v1;
                v15 = objc_msgSend_UTF8String(v12, v13, v14);
                if (!strcmp(v10, v15))
                {
                  goto LABEL_15;
                }

                ncmds = v6->ncmds;
              }

              p_cputype = (p_cputype + p_cputype[1]);
              ++v8;
            }

            while (v8 < ncmds);
          }
        }
      }
    }
  }

  v6 = 0;
LABEL_15:

  return v6;
}

CKProcessScopedMetadata *sub_188423430(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_opt_new();
    v2 = CKSDKVersion();
    objc_msgSend_setClientSDKVersion_(v1, v3, v2);
    v4 = objc_opt_new();
    objc_msgSend_setFrameworkFingerprint_(v1, v5, v4);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_1884239B0(void *a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    a1 = objc_msgSend_sharedXPCConnection(CKXPCConnection, a2, a3);
    v3 = vars8;
  }

  return a1;
}

uint64_t CKSyncEngine.State.Serialization.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_18844E6FC(&qword_1EA90E768, &qword_1886FD048);
  sub_1883F70DC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_188400B68(a1, a1[3]);
  sub_188423FF4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    sub_188424048();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v10, v5);
    *a2 = v12;
  }

  return sub_1883FE944(a1);
}

uint64_t sub_188423C74(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_188423CCC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_188423D24(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 _s19FetchChangesOptionsV17ZoneConfigurationVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_188423E7C()
{
  result = qword_1EA90C640;
  if (!qword_1EA90C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C640);
  }

  return result;
}

unint64_t sub_188423FA0()
{
  result = qword_1EA90C648;
  if (!qword_1EA90C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C648);
  }

  return result;
}

unint64_t sub_188423FF4()
{
  result = qword_1EA90C650;
  if (!qword_1EA90C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C650);
  }

  return result;
}

unint64_t sub_188424048()
{
  result = qword_1EA90C658;
  if (!qword_1EA90C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C658);
  }

  return result;
}

_BYTE *_s5StateC13SerializationV10CodingKeysOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x188424150);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_188424184(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_188423C74(result, a2);
  }

  return result;
}

void *sub_188424198(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = objc_allocWithZone(CKSyncEngineState);
  v7 = sub_188424248(v4, v5);
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v7;
  }

  return v3;
}

id sub_188424248(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x1E69E9840];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11[0] = 0;
  v7 = [v3 initWithData:isa error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_188423CCC(a1, a2);
  return v7;
}

uint64_t sub_188424734(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_numberOfArguments(a1, a2, a3);
  if (v4 - 1 < 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v4;
  while (1)
  {
    v7 = objc_msgSend__signatureForBlockAtArgumentIndex_(a1, v5, --v6);
    if (v7)
    {
      break;
    }

    if (v6 <= 2)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v10 = v7;
  v12 = objc_msgSend_numberOfArguments(v7, v5, v8) - 1;
  while (1)
  {
    v9 = v12 - 1;
    if (v12 < 1)
    {
      break;
    }

    v13 = objc_msgSend__classForObjectAtArgumentIndex_(v10, v11, v12);
    v14 = objc_opt_class();
    isSubclassOfClass = objc_msgSend_isSubclassOfClass_(v13, v15, v14);
    v12 = v9;
    if (isSubclassOfClass)
    {
      goto LABEL_11;
    }
  }

  v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:

  return v9;
}

void sub_188425440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1884257BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_callbackQueue(*(a1 + 32), a2, a3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18842584C;
  block[3] = &unk_1E70BC388;
  block[4] = *(a1 + 32);
  dispatch_async(v4, block);
}

void sub_18842584C(uint64_t a1, const char *a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isCancelled(*(a1 + 32), a2, a3))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = *(a1 + 32);
      v13 = objc_msgSend_ckShortDescription(v10, v11, v12);
      v38 = 138543874;
      v39 = v9;
      v40 = 2048;
      v41 = v10;
      v42 = 2114;
      v43 = v13;
      v14 = "Operation <%{public}@: %p; %{public}@> was cancelled, so skipping call to performCKOperation";
LABEL_17:
      _os_log_impl(&dword_1883EA000, v7, OS_LOG_TYPE_INFO, v14, &v38, 0x20u);
    }
  }

  else if (objc_msgSend_isFinished(*(a1 + 32), v4, v5))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v15 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v7 = v15;
      v16 = objc_opt_class();
      v9 = NSStringFromClass(v16);
      v17 = *(a1 + 32);
      v13 = objc_msgSend_ckShortDescription(v17, v18, v19);
      v38 = 138543874;
      v39 = v9;
      v40 = 2048;
      v41 = v17;
      v42 = 2114;
      v43 = v13;
      v14 = "Operation <%{public}@: %p; %{public}@> was finished, so skipping call to performCKOperation";
      goto LABEL_17;
    }
  }

  else
  {
    v20 = *(a1 + 32);
    if (v20 && *(v20 + 278) == 1)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v21 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v7 = v21;
        v22 = objc_opt_class();
        v9 = NSStringFromClass(v22);
        v23 = *(a1 + 32);
        v13 = objc_msgSend_ckShortDescription(v23, v24, v25);
        v38 = 138543874;
        v39 = v9;
        v40 = 2048;
        v41 = v23;
        v42 = 2114;
        v43 = v13;
        v14 = "Operation <%{public}@: %p; %{public}@> failed to enqueue, so skipping call to performCKOperation";
        goto LABEL_17;
      }
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v26 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v29 = v26;
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = *(a1 + 32);
        v35 = objc_msgSend_ckShortDescription(v32, v33, v34);
        v38 = 138543874;
        v39 = v31;
        v40 = 2048;
        v41 = v32;
        v42 = 2114;
        v43 = v35;
        _os_log_impl(&dword_1883EA000, v29, OS_LOG_TYPE_INFO, "Operation <%{public}@: %p; %{public}@> invoking on container throttle queue", &v38, 0x20u);
      }

      objc_msgSend_ckSignpostBegin(*(a1 + 32), v27, v28);
      objc_msgSend_performCKOperation(*(a1 + 32), v36, v37);
    }
  }
}

void sub_188425F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188426128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1884264BC(void *a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = objc_msgSend_superclass(a1, v4, v5);
  if (objc_msgSend_conformsToProtocol_(v6, v7, v3))
  {
    v10 = objc_msgSend_superclass(a1, v8, v9);
    v11 = sub_1884264BC(v10, v3);
    v13 = objc_msgSend_arrayByAddingObject_(v11, v12, a1);
  }

  else if (objc_msgSend_conformsToProtocol_(a1, v8, v3))
  {
    v16[0] = a1;
    v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v16, 1);
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

void sub_1884265D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7 = objc_msgSend_daemonInvocationSelector(v4, v5, v6);
  v9 = objc_msgSend_methodSignatureForSelector_(v3, v8, v7);
  v11 = objc_msgSend_invocationWithMethodSignature_(MEMORY[0x1E695DF50], v10, v9);
  objc_msgSend_setTarget_(v11, v12, v3);
  v13 = objc_opt_class();
  v16 = objc_msgSend_daemonInvocationSelector(v13, v14, v15);
  objc_msgSend_setSelector_(v11, v17, v16);
  objc_initWeak(&location, *(a1 + 32));
  objc_msgSend_retainArguments(v11, v18, v19);
  v32 = objc_msgSend_operationInfo(*(a1 + 32), v20, v21);
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = sub_188431D64;
  v29 = &unk_1E70BEEE8;
  objc_copyWeak(&v30, &location);
  v31 = _Block_copy(&v26);
  objc_msgSend_setArgument_atIndex_(v11, v22, &v32, 2, v26, v27, v28, v29);
  objc_msgSend_setArgument_atIndex_(v11, v23, &v31, 3);
  objc_msgSend_invoke(v11, v24, v25);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

uint64_t sub_188426774(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 352));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_18842690C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter()
{
  v1 = [*(v0 + 16) zoneIDsWithUnfetchedServerChanges];
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return sub_18844C2F0(v2);
}

void sub_18842699C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = v2;
  v11 = objc_msgSend_array(v3, v4, v5);
  v8 = objc_msgSend_copy(v11, v6, v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

uint64_t sub_188426A14(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = __CocoaSet.count.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1883F4C9C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_188426C20();
        for (i = 0; i != v7; ++i)
        {
          sub_18844E6FC(&unk_1EA90E4C0, &qword_1886FB458);
          v9 = sub_188426B88(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_188426B88(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_188426C14(a3);
  sub_188426C84(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x18CFD59D0](a2, a3);
  }

  *a1 = v7;
  return sub_188426CB0;
}

unint64_t sub_188426C20()
{
  result = qword_1EA90C6A8[0];
  if (!qword_1EA90C6A8[0])
  {
    sub_18844E798(&unk_1EA90E4C0, &qword_1886FB458);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA90C6A8);
  }

  return result;
}

unint64_t sub_188426C8C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_188426CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

void sub_188426CE0(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(a2 + 16))
  {
    return;
  }

  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  v5 = sub_1883F4C9C(a1);
  v6 = 0;
  v7 = a1 & 0xC000000000000001;
  v17 = a1;
  v18 = a1 & 0xC000000000000001;
  v20 = a1 + 32;
  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  v19 = v5;
  while (v6 != v5)
  {
    if (v7)
    {
      v8 = MEMORY[0x18CFD59D0](v6, v17);
    }

    else
    {
      if (v6 >= *(v21 + 16))
      {
        goto LABEL_22;
      }

      v8 = *(v20 + 8 * v6);
    }

    v9 = v8;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    if (v4)
    {
      v11 = __CocoaSet.contains(_:)();

      if (v11)
      {
        return;
      }
    }

    else
    {
      if (*(a2 + 16))
      {
        v12 = NSObject._rawHashValue(seed:)(*(a2 + 40));
        v13 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v14 = v12 & v13;
          if (((*(a2 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
          {
            break;
          }

          v15 = *(*(a2 + 48) + 8 * v14);
          v16 = static NSObject.== infix(_:_:)();

          v12 = v14 + 1;
          if (v16)
          {

            return;
          }
        }
      }

      v4 = 0;
      v7 = v18;
      v5 = v19;
    }
  }
}

uint64_t sub_188426EB4()
{
  sub_1883FB4AC();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  sub_18840C690(v0[13] + 248, (v0 + 8));
  sub_1884DE210(v1);
  swift_endAccess();

  (*(v2 + 8))(v1, v3);

  sub_1883F816C();

  return v4();
}

uint64_t sub_188426F80()
{
  sub_1883F7120();
  sub_1883FB300(v0 + 16);
  sub_1883F816C();

  return v1();
}

uint64_t sub_188426FDC()
{
  sub_1883F78E0();
  v1 = *(v0 + 104);
  os_activity_scope_leave((v0 + 88));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_188427080, v1, 0);
}

uint64_t sub_188427080()
{
  sub_1883F7120();
  sub_1883F816C();

  return v0();
}

uint64_t sub_188427100()
{
  sub_1883F7120();
  v1 = *(v0 + 248);
  if (v1)
  {
    v1(0);
  }

  sub_1883F816C();

  return v2();
}

BOOL sub_188427168()
{
  v1 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v2 = sub_1883F8AE4(v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - v3;
  v5 = type metadata accessor for Date();
  sub_1883F70DC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  sub_188427384(0.0, 1800.0);
  v15 = v14;
  v16 = [*(*(v0 + 128) + 16) lastFetchDatabaseChangesDate];
  if (v16)
  {
    v17 = v16;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = *(v7 + 32);
    v18(v4, v10, v5);
    sub_188442C14(v4);
    v18(v13, v4, v5);
  }

  else
  {
    sub_18844334C();
    sub_1883F90F4(v19, v20, v21, v5);
    static Date.distantPast.getter();
    if (sub_1883F971C(v4, 1, v5) != 1)
    {
      sub_1883F9FEC(v4, &unk_1EA90D7B0, &dword_1886F8780);
    }
  }

  v22 = v15 + 86400.0;
  Date.timeIntervalSinceNow.getter();
  v24 = v23;
  v25 = sub_1883F7E8C();
  v26(v25);
  return v22 <= -v24;
}

void sub_188427384(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  __buf = 0;
  arc4random_buf(&__buf, 8uLL);
  if (v4 * vcvtd_n_f64_u64(__buf & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    sub_188427384(a1, a2);
  }
}

void sub_188427428(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_188427448()
{
  sub_1883F78E0();
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_188429CFC;

  return sub_1883FD964(v4, 1, &unk_1886FB510, v3);
}

id sub_188427510()
{
  v1 = v0[3];
  v2 = *(v0[2] + 136);
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v3 = v1;

  v4 = sub_1884296E8(0, v1);
  v0[4] = v4;
  result = [v2 container];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  swift_getObjectType();

  result = [v2 container];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [result implementation];

  v9 = v4;
  v10 = sub_1884276B8(v8, v4);
  v0[5] = v10;
  v11 = [v10 databaseWithDatabaseScope_];
  v0[6] = v11;
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_188427714;

  return sub_188429744(v11);
}

id sub_1884276B8(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImplementation:a1 convenienceConfiguration:a2];

  return v4;
}

uint64_t sub_188427714()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v3 = v2;
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    v7 = sub_1884E2A68;
  }

  else
  {
    v7 = sub_188429BF4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_188427924()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 1920) = v0;

  if (v0)
  {
    v7 = *(v3 + 1856);
    v8 = sub_1884D4328;
  }

  else
  {
    v9 = *(v3 + 1856);

    v8 = sub_188428D74;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_188427A34(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 56) = a2;
  *(v4 + 177) = a1;
  *(v4 + 80) = *v3;
  return sub_188405594(sub_188427A7C);
}

uint64_t sub_188427A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883FC738();
  v13 = v12[10];
  v14 = sub_188405E54();
  sub_1883F7468();
  v17 = sub_1884CCC70(v15, v16, &unk_1886FE220);
  v18 = sub_1884CDD68(v17);
  sub_188404C5C(v18, v14);
  sub_1883FF014();
  if (v13)
  {
    sub_1883F9E4C();
    swift_task_alloc();
    sub_1883FF2B8();
    v12[12] = v19;
    *v19 = v20;
    sub_1883FF534(v19);
    sub_1884CDCCC();

    __asm { BRAA            X1, X16 }
  }

  v23 = v12[9];
  if (*(v23 + 128) == 1)
  {
    sub_1883FAAC8();
    if (!v25)
    {
      *(v23 + 120) = v24;
      v26 = swift_task_alloc();
      v27 = sub_1883F9A44(v26);
      sub_1883FF604(v27);
      sub_1883F7468();
      sub_1884CCC70(v28, v29, &unk_1886FE258);
      v30 = swift_task_alloc();
      v31 = sub_188404A84(v30);
      *v31 = v32;
      v31[1] = sub_1884CA4D4;
      sub_1883F960C();
      sub_1884CDCCC();

      return MEMORY[0x1EEE6DE18](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
    }

    __break(1u);
  }

  else
  {
    sub_1883F9064();
    sub_1883FDCD4();
    if (!v41)
    {
      sub_1884CDD48();
      if (v42)
      {
        static Task<>.checkCancellation()();
      }

      v43 = sub_188405E54();
      v44 = sub_188404238(v43);
      sub_1883F813C(v44, v45, v46, v47, v48);
      if (qword_1EA90C828 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_20:
  sub_1883F89B8(&qword_1EA90C828);
LABEL_15:
  v49 = sub_188400870();
  sub_1884022A8(v49);
  sub_1883F7468();
  sub_1884CCC70(v50, v51, &unk_1886FE258);
  swift_task_alloc();
  sub_1883FF2B8();
  v12[20] = v52;
  *v52 = v53;
  sub_18840E7E4(v52);
  sub_1883FAECC();
  sub_1884CDD5C();
  sub_1883FA170();
  sub_188410CA4();

  return MEMORY[0x1EEE6DE98](v54);
}

uint64_t sub_188427DD4()
{
  sub_1883F78E0();
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_1883FAED8(v1);

  return sub_1884308FC(v3, v4, v5);
}

uint64_t sub_1884280A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1883F7178();
}

id sub_1884280C0()
{
  sub_1883FB4E4();
  v16 = v3;
  sub_1883F653C();
  sub_18846D2F0();
  sub_1883F4C5C(0, &qword_1EA90CAB0, off_1E70BA0C8);
  v4 = v0;
  v5 = v1;
  v6 = sub_1883FDFD0();
  result = sub_18840AD04(v6);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  swift_getObjectType();

  result = sub_18841BAB8();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = v2[4];
  [result implementation];

  v11 = v0;
  v12 = sub_1883FDBA8();
  sub_1883FE210(v12);
  v2[9] = [v0 databaseWithDatabaseScope_];
  v13 = swift_task_alloc();
  v2[10] = v13;
  *v13 = v2;
  v14 = sub_1884036F4(v13);

  return v15(v14);
}

uint64_t sub_188428270()
{
  sub_1883F7120();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1884DE0FC;
  v3 = sub_1883FE860();

  return sub_188429240(v3, v0);
}

uint64_t sub_188428300()
{
  sub_1883F7120();
  v0[4] = [*(v0[3] + 16) serverChangeTokenForDatabase];
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1884DA58C;
  v2 = sub_1883FE860();

  return CKDatabase.databaseChanges(since:resultsLimit:)(v2, 0, 1);
}

uint64_t sub_1884283BC()
{
  sub_1883F78E0();
  v2 = *(v1 + 32);
  sub_1883F856C([v2 implementation]);
  sub_18840C12C([objc_msgSend(v2 container)]);
  v3 = swift_task_alloc();
  v4 = sub_1884101CC(v3);
  *v4 = v5;
  v4[1] = sub_188468ED8;
  v6 = sub_1883FF484(*(v1 + 16));

  return sub_188429398(v6, v7, v8, v9, v0);
}

uint64_t sub_1884284C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = [objc_allocWithZone(CKFetchDatabaseChangesOperation) initWithPreviousServerChangeToken_];
  [v10 setFetchAllChanges_];
  if (a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  [v10 setResultsLimit_];
  sub_1883F7B88();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  sub_1883F7B88();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v32 = sub_18846CB44;
  v33 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  v30 = sub_18846B9A0;
  v31 = &unk_1EFA27060;
  v15 = _Block_copy(aBlock);

  sub_188443320(v16, sel_setRecordZoneWithIDChangedBlock_);
  _Block_release(v15);
  v32 = sub_18846CB4C;
  v33 = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  sub_1883F7B94();
  v30 = v17;
  v31 = &unk_1EFA27088;
  _Block_copy(aBlock);
  sub_18840BDE0();

  sub_188443320(v18, sel_setRecordZoneWithIDWasDeletedBlock_);
  _Block_release(v15);
  v32 = sub_18846CB6C;
  v33 = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  sub_1883F7B94();
  v30 = v19;
  v31 = &unk_1EFA270B0;
  _Block_copy(aBlock);
  sub_18840BDE0();

  sub_188443320(v20, sel_setRecordZoneWithIDWasPurgedBlock_);
  _Block_release(v15);
  v32 = sub_18846CB8C;
  v33 = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  sub_1883F7B94();
  v30 = v21;
  v31 = &unk_1EFA270D8;
  _Block_copy(aBlock);
  sub_18840BDE0();

  sub_188443320(v22, sel_setRecordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock_);
  _Block_release(v15);
  sub_188405D30();
  v23 = swift_allocObject();
  sub_1883FB4C4(v23);

  v24 = sub_1883F7AB8();
  CKFetchDatabaseChangesOperation.fetchDatabaseChangesResultBlock.setter(v24, v25);
  [v27 _scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_];
}

uint64_t sub_1884287C8()
{

  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

id CKFetchDatabaseChangesOperation.fetchDatabaseChangesResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v10[4] = sub_1884BC924;
    v10[5] = v6;
    sub_1883F7188();
    sub_1883F7450();
    v10[2] = v7;
    v10[3] = &unk_1EFA2ACF0;
    v8 = _Block_copy(v10);

    [v3 setFetchDatabaseChangesCompletionBlock_];
    _Block_release(v8);
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setFetchDatabaseChangesCompletionBlock_];
  }
}

uint64_t sub_188428990()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1884289C8()
{
  v1 = v0;
  v2 = type metadata accessor for TaskPriority();
  sub_1883F70DC();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Task<>.currentPriority.getter();
  v8 = TaskPriority.rawValue.getter();
  v9 = *(v4 + 8);
  v9(v7, v2);
  if (__ROR8__(v8 - 9, 3) > 3uLL)
  {
    TaskPriority.init(rawValue:)();
    v10 = TaskPriority.rawValue.getter();
    v9(v7, v2);
    if (v8 == v10)
    {
      if (qword_1ED4B5C68 != -1)
      {
        sub_1883F7264(&qword_1ED4B5C68);
      }

      v11 = type metadata accessor for Logger();
      sub_1883FDE5C(v11, qword_1ED4B5C70);
      v12 = v1;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v34 = v16;
        *v15 = 136315138;
        v17 = [v12 operationID];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v21 = sub_1883FE340(v18, v20, &v34);

        *(v15 + 4) = v21;
        _os_log_impl(&dword_1883EA000, v13, v14, "Not setting QoS on %s to TaskPriority.medium and instead relying on default NSOperation QoS behavior", v15, 0xCu);
        sub_1883FE944(v16);
        sub_1883F7B60();
        sub_1883F7B60();
      }
    }

    else
    {
      if (qword_1ED4B5C68 != -1)
      {
        sub_1883F7264(&qword_1ED4B5C68);
      }

      v22 = type metadata accessor for Logger();
      sub_1883FDE5C(v22, qword_1ED4B5C70);
      v23 = v1;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v34 = v27;
        *v26 = 136315394;
        v28 = [v23 operationID];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32 = sub_1883FE340(v29, v31, &v34);

        *(v26 + 4) = v32;
        *(v26 + 12) = 256;
        *(v26 + 14) = v8;
        _os_log_impl(&dword_1883EA000, v24, v25, "Not setting QoS on %s for unknown task priority %hhu", v26, 0xFu);
        sub_1883FE944(v27);
        sub_1883F7B60();
        sub_1883F7B60();
      }
    }
  }

  else
  {
    [v1 setQualityOfService_];
  }
}

uint64_t sub_188428D74()
{
  v3 = *(v1 + 1856);
  v4 = *(v3 + 128);
  if ((*(v1 + 80) & 1) == 0)
  {
    v5 = sub_188403050();
    v3 = *(v1 + 1856);
    if (v5)
    {
      v6 = sub_188427168();
      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }

      v3 = *(v1 + 1856);
    }
  }

  v14 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FF744();
  if (sub_1883F9084())
  {
    sub_1883F9984();
    v15 = sub_1883F8C00();
    *v3 = 136315138;
    v16 = sub_1883FE43C();
    sub_1883FA594(v16, v17, v18, v19, v20, v21, v22, v23, v15);
    sub_1883FE2FC();
    *(v3 + 4) = v2;
    sub_1883F831C();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    sub_1883FE944(v15);
    sub_1883FD784();
    sub_1883F82B8();
  }

  v6 = [*(v4 + 16) setNeedsToFetchDatabaseChanges_];
LABEL_8:
  sub_1884E01A8(v6, v7, v8, v9, v10, v11, v12, v13, v46);
  sub_1884023F4();
  if ((v29 & 1) == 0)
  {
LABEL_11:
    v31 = sub_1884D44E8();
    v32 = v31;
    if (v31)
    {
      v33 = v31;
      v34 = sub_18842D4B4();
      sub_18840F1E8(v34);
    }

    *(v1 + 1984) = v32;
    v35 = swift_task_alloc();
    v36 = sub_188410CE8(v35);
    *v36 = v37;
    sub_1883F74DC(v36);

    return sub_18840E178();
  }

  v30 = *(v1 + 88);
  *(v1 + 1928) = v30;
  if (v30)
  {
    v39 = sub_1883FA45C();
    sub_1883FAAD4(v39);
    v40 = swift_task_alloc();
    *(v1 + 1944) = v40;
    *v40 = v1;
    sub_1883FE6C4(v40);
  }

  else
  {
    if ((v30 & 2) == 0)
    {
      goto LABEL_11;
    }

    *(v1 + 2017) = 0;
    v41 = sub_1883FA45C();
    sub_1883F8010(v41);
    v42 = swift_task_alloc();
    *(v1 + 1968) = v42;
    *v42 = v1;
    sub_1883F8F18(v42);
  }

  v43 = sub_1883FEB9C();

  return sub_188427A34(v43, v44, v45);
}

uint64_t sub_188428FE0()
{

  return type metadata accessor for Logger();
}

uint64_t sub_188429010()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v1[1] = sub_188442BE4;
  v3 = sub_1883F8BF0();

  return v4(v3);
}

uint64_t sub_1884290B0(uint64_t a1, int *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1884CCD48;

  return sub_188429150(a2);
}

uint64_t sub_188429150(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1884CC5BC;

  return v4(v1 + 32);
}

uint64_t sub_188429240(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_188428300, 0, 0);
}

uint64_t CKDatabase.databaseChanges(since:resultsLimit:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 72) = a3;
  *(v4 + 16) = a1;
  return sub_1883F7178();
}

uint64_t sub_18842927C()
{
  sub_1883F653C();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 41);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5 & 1;
  *(v7 + 48) = v3;
  *(v7 + 56) = v2;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  sub_18844E6FC(&qword_1EA90D508, &qword_1886F7F30);
  sub_1883FE558();
  *v8 = v9;
  v8[1] = sub_18846907C;
  sub_1883F9BB4();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38](v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_188429398(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = v5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a4;
  *(v6 + 41) = a3;
  *(v6 + 48) = a1;
  return sub_1883F7178();
}

uint64_t sub_1884293C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v20 = a2;
  v21 = a7;
  v12 = sub_18844E6FC(&qword_1EA90D510, &qword_1886F7F38);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  (*(v13 + 16))(&v20 - v15, a1, v12, v14);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  sub_1884284C0(a3, a4, a5 & 1, a6, v21, sub_18846CAB0, v18);
}

uint64_t sub_188429614(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_188427448, v1, 0);
}

uint64_t sub_188429634()
{
  sub_1883F78E0();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_1883F7E38(v2);
  *v3 = v4;
  v5 = sub_1883F7A30(v3);

  return sub_1884296C8(v5, v6, v1);
}

uint64_t sub_1884296C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_188427510, 0, 0);
}

id sub_1884296E8(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 group:a2];

  return v4;
}

uint64_t sub_188429744(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  v3 = sub_18844E6FC(&qword_1EA90E530, &qword_1886FB520);
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();
  v4 = sub_18844E6FC(&qword_1EA90D4B8, &qword_1886F79D8);
  v2[49] = v4;
  v2[50] = *(v4 - 8);
  v2[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_188429878, v1, 0);
}

uint64_t sub_188429878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1883F98A8();
  sub_1884008A8();
  v15 = *(v14[45] + 128);
  v14[52] = v15;
  if ([*(v15 + 16) needsToSaveDatabaseSubscription])
  {
    sub_1883F4C5C(0, &qword_1EA90C7D0, off_1E70BA150);
    v16._countAndFlagsBits = sub_1884E0DBC();
    CKDatabaseSubscription.init(subscriptionID:)(v17, v16);
    v19 = v18;
    v14[53] = v18;
    v20 = [objc_allocWithZone(CKNotificationInfo) init];
    v14[54] = v20;
    [v20 setShouldSendContentAvailable_];
    v54 = v19;
    [v19 setNotificationInfo_];
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v21 = type metadata accessor for Logger();
    v14[55] = sub_1883FDE5C(v21, qword_1EA90C9F8);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = sub_1883F9984();
      a11 = sub_1883FE540();
      *v24 = 136315138;
      v25 = sub_1883FE43C();
      v31 = sub_1883FB598(v25, v26, v27, v28, v29, v30);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_1883EA000, v22, v23, "%s saving database subscription", v24, 0xCu);
      sub_1883FE944(a11);
      sub_1883F7B60();
      sub_1883FD784();
    }

    v32 = v14[50];
    v33 = v14[51];
    v34 = v14[49];
    v53 = v14[44];
    v14[2] = v14;
    v14[7] = v14 + 42;
    v14[3] = sub_1884E2AE4;
    swift_continuation_init();
    v14[25] = v34;
    v35 = sub_188403664(v14 + 22);
    sub_1883F4C5C(0, &qword_1EA90CA90, off_1E70BA7C8);
    v14[56] = sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    CheckedContinuation.init(continuation:function:)();
    (*(v32 + 32))(v35, v33, v34);
    v14[18] = MEMORY[0x1E69E9820];
    v14[19] = 1107296256;
    v14[20] = sub_188464050;
    v14[21] = &unk_1EFA2C108;
    [v53 saveSubscription:v54 completionHandler:v14 + 18];
    (*(v32 + 8))(v35, v34);
    sub_1883FEB30();

    return MEMORY[0x1EEE6DEC8](v36, v37, v38, v39, v40, v41, v42, v43, v53, v54, a11, a12, a13, a14);
  }

  else
  {

    sub_1883FDB48();
    sub_1883FEB30();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_188429BF4()
{
  sub_1883F78E0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  sub_1883FDB48();

  return v3();
}

uint64_t sub_188429CFC()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F7B78();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 48) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1884E0D98;
  }

  else
  {
    v6 = sub_1884E0D78;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_188429E38(uint64_t a1)
{
  *(v2 + 352) = v1;
  v3 = *v1;
  *(v2 + 456) = *a1;
  v4 = *(a1 + 8);
  *(v2 + 360) = v3;
  *(v2 + 368) = v4;
  *(v2 + 457) = *(a1 + 16);
  *(v2 + 376) = *(a1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_18842D3A8, v1, 0);
}

uint64_t sub_188429E9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 176) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  *(v5 + 88) = *v4;
  return sub_188405594(sub_188429EE4);
}

uint64_t sub_188429EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_18840618C();
  sub_1883FC738();
  v14 = *(v12 + 88);
  v15 = sub_188405E54();
  sub_1883F7468();
  v18 = sub_1884CCC70(v16, v17, &unk_1886FE220);
  v19 = sub_188410EC8(v18);
  sub_188404C5C(v19, v15);
  sub_1883FF014();
  if (v14)
  {
    sub_1883F9E4C();
    v63 = v20;
    swift_task_alloc();
    sub_1883FF2B8();
    *(v12 + 104) = v21;
    *v21 = v22;
    sub_188404FA4(v21);
    sub_18840DEA4();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, v63, a10, a11, a12);
  }

  sub_1883FDBD0();
  if (!v32)
  {
    sub_1883F9064();
    sub_1883FDCD4();
    if (!v50)
    {
      sub_18840AE7C();
      if (v32)
      {
        static Task<>.checkCancellation()();
      }

      v51 = sub_18840F8F4();
      v52 = sub_188404238(v51);
      sub_1883FDEB0(v52, v53, v54);
      if (qword_1EA90C828 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    sub_1883F89B8(&qword_1EA90C828);
LABEL_16:
    v55 = sub_188400870();
    sub_1883F984C(v55);
    sub_1883F7468();
    sub_1884CCC70(v56, v57, &unk_1886FE258);
    v58 = swift_task_alloc();
    sub_1883FF4C8(v58);
    sub_18844E6FC(&qword_1EA90E408, &qword_1886FB158);
    sub_1883FA6DC();
    *v13 = v59;
    sub_1883FDD90(v60);
    sub_1883FA170();
    sub_1883FE22C();

    return MEMORY[0x1EEE6DE98](v61);
  }

  sub_1883FAAC8();
  if (v34)
  {
    __break(1u);
    goto LABEL_20;
  }

  v35 = sub_1884CDCB0(v33);
  v36 = sub_1883F9A44(v35);
  sub_1883FF604(v36);
  sub_1883F7468();
  sub_1884CCC70(v37, v38, &unk_1886FE258);
  v39 = swift_task_alloc();
  v40 = sub_188404A84(v39);
  *v40 = v41;
  v40[1] = sub_1884CBD5C;
  sub_1883F960C();
  sub_18840DEA4();

  return MEMORY[0x1EEE6DE18](v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t sub_18842A230()
{
  sub_1883FB4AC();
  sub_188410CF4();
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_188442BE4;
  sub_188405778();

  return sub_18842A2DC(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_18842A2DC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  v8 = swift_task_alloc();
  *(v6 + 48) = v8;
  *v8 = v6;
  v8[1] = sub_18842A810;

  return sub_18842D514(a1, v6 + 16);
}

uint64_t sub_18842A398(uint64_t a1)
{
  *(v2 + 24) = v1;
  v3 = *(a1 + 8);
  *(v2 + 32) = *v1;
  *(v2 + 40) = v3;
  *(v2 + 48) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_18842D62C, v1, 0);
}

uint64_t sub_18842A3EC(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E69E7CC0];
  if (a2 < 1)
  {
    return v2;
  }

  v5 = *(a1 + 16);
  v6 = (a1 + 40);
  v7 = v5;
  if (v5)
  {
    while (1)
    {
      if (*v6 != 1)
      {
        v8 = *(v6 - 1);
        v9 = CKRecordZone.parent.getter();

        if (v9)
        {
          break;
        }
      }

      v6 += 2;
      if (!--v7)
      {
        goto LABEL_6;
      }
    }

    v43[0] = v2;
    sub_1884779C4(0, v5, 0);
    v22 = v2;
    v40 = a1;
    v23 = (a1 + 40);
    v24 = v5;
    do
    {
      v25 = *(v23 - 1);
      v26 = *v23;
      v27 = v25;
      if (v26 == 1)
      {
        v28 = v27;
      }

      else
      {
        v28 = [v27 zoneID];
      }

      v29 = v28;
      v43[0] = v22;
      v31 = *(v22 + 16);
      v30 = *(v22 + 24);
      if (v31 >= v30 >> 1)
      {
        v33 = sub_1883F8DD4(v30);
        sub_1884779C4(v33, v31 + 1, 1);
        v22 = v43[0];
      }

      *(v22 + 16) = v31 + 1;
      v32 = v22 + 24 * v31;
      *(v32 + 32) = v29;
      *(v32 + 40) = v25;
      *(v32 + 48) = v26;
      v23 += 16;
      --v24;
    }

    while (v24);
    v34 = sub_1884F4A68(v22);
    v35 = swift_allocObject();
    *(v35 + 16) = MEMORY[0x1E69E7CD0];
    v36 = swift_allocObject();
    *(v36 + 16) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v37 = (v40 + 40);
    do
    {
      if (*(*(v36 + 16) + 16) < a2)
      {
        v38 = *v37;
        v41 = *(v37 - 1);
        v42 = v38;
        v39 = v41;
        sub_1884F8D70(&v41, v35, v36, a2, v34);
      }

      v37 += 16;
      --v5;
    }

    while (v5);

    swift_beginAccess();
    v2 = *(v36 + 16);

    return v2;
  }

LABEL_6:

  v10 = sub_18842E160(a2, a1);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if ((v15 & 1) == 0)
  {
LABEL_7:
    sub_188510A94(v10, v12, v14, v16);
    v18 = v17;
    swift_unknownObjectRelease();
    return v18;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  sub_18841BAF0();
  swift_unknownObjectRetain_n();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v20 + 16);

  if (__OFSUB__(v16 >> 1, v14))
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v21 != (v16 >> 1) - v14)
  {
LABEL_28:
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v2 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_18842A71C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18842A758(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_18842A7A4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_18842A810()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  sub_1883FDB48();

  return v3();
}

uint64_t sub_18842A8F0()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F7B78();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 416) = v0;

  v5 = *(v2 + 352);

  if (v0)
  {
    v6 = sub_1884F4D00;
  }

  else
  {
    v6 = sub_18842AA2C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

void sub_18842AA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1883FE264();
  sub_18840C194();
  v21 = v20 + 224;
  v22 = *(v20 + 392);
  if (*(v20 + 224))
  {
    v98 = *(v20 + 224);
    v99 = v20;
    v23 = *(v20 + 232);
    v101 = *(v20 + 248);
    v102 = v20 + 184;
    v104 = *(v23 + 16);
    v105 = v20 + 144;

    v24 = 0;
    v103 = v23;
    v25 = (v23 + 40);
    while (v104 != v24)
    {
      if (v24 >= *(v103 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v26 = *v25;
      v27 = *(v25 - 1);
      v28 = v26;
      *(v21 + 96) = [v27 zoneID];
      sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
      sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
      AnyHashable.init<A>(_:)();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v21 + 104) = v22;
      sub_1884864E0();
      sub_1883FE314();
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_43;
      }

      v35 = v30;
      v36 = v31;
      sub_18844E6FC(&qword_1EA90E5A8, &qword_1886FB9F0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34))
      {
        sub_1884864E0();
        sub_1883F7AE8();
        if (!v38)
        {
LABEL_35:
          sub_1883F8300();

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }

        v35 = v37;
      }

      v22 = *(v21 + 104);
      if (v36)
      {
        v39 = v22[7];
        v40 = *(v39 + 8 * v35);
        *(v39 + 8 * v35) = v28;

        sub_1884889C4(v105);
      }

      else
      {
        sub_1883FF230(&v22[v35 >> 6]);
        sub_1884802A8(v105, v22[6] + 40 * v35);
        *(v22[7] + 8 * v35) = v28;
        sub_1884889C4(v105);
        v41 = v22[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_45;
        }

        v22[2] = v43;
      }

      v25 += 2;
      ++v24;
    }

    v44 = v101 + 64;
    sub_1883F8A68();
    v47 = v46 & v45;
    sub_1883FE184();
    v49 = v48 >> 6;
    swift_bridgeObjectRetain_n();

    v50 = 0;
    v51 = v22;
    v100 = v49;
    if (!v47)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v52 = v50;
LABEL_20:
      v53 = (v52 << 9) | (8 * __clz(__rbit64(v47)));
      v54 = *(*(v101 + 48) + v53);
      v55 = *(*(v101 + 56) + v53);
      *(v21 + 112) = v54;
      sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
      sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
      v106 = v54;
      v56 = v55;
      AnyHashable.init<A>(_:)();
      v57 = v56;
      v58 = swift_isUniquelyReferenced_nonNull_native();
      *(v21 + 120) = v51;
      sub_1884864E0();
      sub_1883FE314();
      v61 = v21;
      v64 = v62 + v63;
      if (__OFADD__(v62, v63))
      {
        break;
      }

      v65 = v59;
      v66 = v60;
      sub_18844E6FC(&qword_1EA90E5A8, &qword_1886FB9F0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v58, v64))
      {
        sub_1884864E0();
        sub_1883F7AE8();
        if (!v38)
        {
          goto LABEL_35;
        }

        v65 = v67;
      }

      v21 = v61;
      v47 &= v47 - 1;
      v51 = *(v61 + 120);
      if (v66)
      {
        v68 = v51[7];
        v69 = *(v68 + 8 * v65);
        *(v68 + 8 * v65) = v57;

        sub_1884889C4(v102);
      }

      else
      {
        sub_1883FF230(&v51[v65 >> 6]);
        sub_1884802A8(v102, v51[6] + 40 * v65);
        *(v51[7] + 8 * v65) = v57;

        sub_1884889C4(v102);
        v70 = v51[2];
        v42 = __OFADD__(v70, 1);
        v71 = v70 + 1;
        if (v42)
        {
          goto LABEL_47;
        }

        v51[2] = v71;
      }

      v50 = v52;
      v44 = v101 + 64;
      v49 = v100;
      if (!v47)
      {
LABEL_17:
        while (1)
        {
          v52 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_44;
          }

          if (v52 >= v49)
          {
            v72 = *(v21 + 234);

            sub_1884F8FAC(v98);

            if ((v72 & 1) == 0)
            {
              v22 = v51;
              v20 = v99;
              goto LABEL_39;
            }

            *(v99 + 392) = v51;
            v73 = *(v99 + 457);
            v74 = *(v99 + 368);
            v75 = *(v99 + 376);
            v76 = *(v21 + 232);
            v77 = *(v99 + 352);
            v78 = swift_task_alloc();
            *(v99 + 400) = v78;
            *(v78 + 16) = v77;
            *(v78 + 24) = v76;
            *(v78 + 32) = v74;
            *(v78 + 40) = v73;
            *(v78 + 48) = v75;
            v79 = swift_task_alloc();
            *(v99 + 408) = v79;
            *v79 = v99;
            v79[1] = sub_18842A8F0;
            sub_1883FE74C();
            sub_1883F7F94();
            sub_1883F8300();

            sub_188429E9C(v80, v81, v82, v83);
            return;
          }

          v47 = *(v44 + 8 * v52);
          ++v50;
          if (v47)
          {
            goto LABEL_20;
          }
        }
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  else
  {
LABEL_39:
    *(v20 + 424) = v22;
    v86 = *(v20 + 457);
    v87 = *(v20 + 368);
    v88 = *(v20 + 376);
    v89 = *(v21 + 232);
    v90 = *(v20 + 352);
    v91 = swift_task_alloc();
    *(v20 + 432) = v91;
    *(v91 + 16) = v90;
    *(v91 + 24) = v89;
    *(v91 + 32) = v87;
    *(v91 + 40) = v86;
    *(v91 + 48) = v88;
    v92 = swift_task_alloc();
    *(v20 + 440) = v92;
    *v92 = v20;
    v92[1] = sub_1884307B4;
    sub_1883F8300();

    sub_18842DD9C(v93, v94, v95, v96);
  }
}

uint64_t sub_18842B05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_18840618C();
  sub_1883FC738();
  v14 = *(v12 + 88);
  v15 = sub_188405E54();
  sub_1883F7468();
  v18 = sub_1884CCC70(v16, v17, &unk_1886FE220);
  v19 = sub_188410EC8(v18);
  sub_188404C5C(v19, v15);
  sub_1883FF014();
  if (v14)
  {
    sub_1883F9E4C();
    v63 = v20;
    swift_task_alloc();
    sub_1883FF2B8();
    *(v12 + 104) = v21;
    *v21 = v22;
    sub_188404FA4(v21);
    sub_18840DEA4();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, v63, a10, a11, a12);
  }

  sub_1883FDBD0();
  if (!v32)
  {
    sub_1883F9064();
    sub_1883FDCD4();
    if (!v50)
    {
      sub_18840AE7C();
      if (v32)
      {
        static Task<>.checkCancellation()();
      }

      v51 = sub_18840F8F4();
      v52 = sub_188404238(v51);
      sub_1883FDEB0(v52, v53, v54);
      if (qword_1EA90C828 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    sub_1883F89B8(&qword_1EA90C828);
LABEL_16:
    v55 = sub_188400870();
    sub_1883F984C(v55);
    sub_1883F7468();
    sub_1884CCC70(v56, v57, &unk_1886FE258);
    v58 = swift_task_alloc();
    sub_1883FF4C8(v58);
    sub_18844E6FC(&qword_1EA90E3F8, &qword_1886FB0D0);
    sub_1883FA6DC();
    *v13 = v59;
    sub_1883FDD90(v60);
    sub_1883FA170();
    sub_1883FE22C();

    return MEMORY[0x1EEE6DE98](v61);
  }

  sub_1883FAAC8();
  if (v34)
  {
    __break(1u);
    goto LABEL_20;
  }

  v35 = sub_1884CDCB0(v33);
  v36 = sub_1883F9A44(v35);
  sub_1883FF604(v36);
  sub_1883F7468();
  sub_1884CCC70(v37, v38, &unk_1886FE258);
  v39 = swift_task_alloc();
  v40 = sub_188404A84(v39);
  *v40 = v41;
  v40[1] = sub_1884CBAB4;
  sub_1883F960C();
  sub_18840DEA4();

  return MEMORY[0x1EEE6DE18](v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t sub_18842B3A8()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F7A30(v1);

  return sub_1884CC4C4(v3, v4);
}

uint64_t sub_18842B438()
{
  sub_1883FB4AC();
  sub_188410CF4();
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_188442BE4;
  sub_188405778();

  return sub_18842B4E4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_18842B4E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  v8 = swift_task_alloc();
  *(v6 + 48) = v8;
  *v8 = v6;
  v8[1] = sub_18842CF78;

  return sub_18842B5A0(a1, v6 + 16);
}

uint64_t sub_18842B5A0(uint64_t a1, uint64_t a2)
{
  *(v3 + 384) = a1;
  *(v3 + 392) = v2;
  v5 = type metadata accessor for CancellationError();
  *(v3 + 400) = v5;
  *(v3 + 408) = *(v5 - 8);
  v6 = swift_task_alloc();
  *(v3 + 313) = *a2;
  v7 = *(a2 + 8);
  *(v3 + 416) = v6;
  *(v3 + 424) = v7;
  *(v3 + 314) = *(a2 + 16);
  *(v3 + 432) = *(a2 + 24);

  return MEMORY[0x1EEE6DFA0](sub_18842B680, v2, 0);
}

uint64_t sub_18842B680()
{
  sub_1883F7120();
  v1 = *(*(v0 + 392) + 128);
  *(v0 + 440) = v1;
  v2 = [*(v1 + 16) hasPendingUntrackedChanges];
  *(v0 + 315) = v2;
  if (v2)
  {
    [*(v1 + 16) setHasPendingUntrackedChanges_];
  }

  v3 = *(v0 + 314);
  *(v0 + 240) = *(v0 + 313);
  v4 = *(v0 + 432);
  *(v0 + 248) = *(v0 + 424);
  *(v0 + 256) = v3;
  *(v0 + 264) = v4;
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 448) = v5;
  *v5 = v6;
  v5[1] = sub_18842F9C8;

  return sub_18842DDE4(v0 + 296, v0 + 240);
}

void sub_18842B76C()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 104);
    v4 = *(v0 + 112);
    v5 = *(v0 + 34);
    v6 = *(v0 + 33);
    sub_18840FB98();
    v7 = swift_allocObject();
    *(v0 + 128) = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v3;
    *(v7 + 32) = v5;
    *(v7 + 40) = v4;
    *(v7 + 48) = v2;
    sub_1884F9D6C(&qword_1886FB0E0);

    v8 = v4;
    swift_task_alloc();
    sub_1883FF2B8();
    *(v0 + 136) = v9;
    *v9 = v10;
    v9[1] = sub_18842EE64;
    sub_188404AB8();

    __asm { BR              X3 }
  }

  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480(&qword_1EA90C9F0);
  }

  v13 = type metadata accessor for Logger();
  sub_1883FDE5C(v13, qword_1EA90C9F8);
  sub_18840FB8C();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = sub_1883FE540();
    *v16 = 136315138;
    v17 = sub_1883FE43C();
    v23 = sub_1883FB598(v17, v18, v19, v20, v21, v22);

    *(v16 + 4) = v23;
    sub_1883F7A44(&dword_1883EA000, v24, v25, "%s not getting next record zone change batch for deallocated engine");
    sub_1883FE944(v29);
    sub_1883FD784();
    sub_1883F7B60();
  }

  v26 = *(v0 + 88);
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  sub_1883FDB48();
  sub_188404AB8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_18842B9B0()
{

  sub_18840FB98();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18842B9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return sub_188405594(sub_18842BA10);
}

uint64_t sub_18842BA10()
{
  sub_1883FB4AC();
  sub_1884CDCE4();
  v1 = sub_1884021B4(&protocol descriptor for CKSyncEngineDelegate);
  *(v0 + 96) = v1;
  v3 = sub_1884038A4(v1, v2);
  sub_1883FDF34(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 112) = v13;
  *v13 = v14;
  v13[1] = sub_188407510;
  sub_1884110E4();

  return sub_18842E2EC(v15, v16, v17, v18);
}

uint64_t sub_18842BAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_18840618C();
  sub_1883FC738();
  v14 = *(v12 + 88);
  v15 = sub_188405E54();
  sub_1883F7468();
  v18 = sub_1884CCC70(v16, v17, &unk_1886FE220);
  v19 = sub_188410EC8(v18);
  sub_188404C5C(v19, v15);
  sub_1883FF014();
  if (v14)
  {
    sub_1883F9E4C();
    v63 = v20;
    swift_task_alloc();
    sub_1883FF2B8();
    *(v12 + 104) = v21;
    *v21 = v22;
    sub_188404FA4(v21);
    sub_18840DEA4();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, v63, a10, a11, a12);
  }

  sub_1883FDBD0();
  if (!v32)
  {
    sub_1883F9064();
    sub_1883FDCD4();
    if (!v50)
    {
      sub_18840AE7C();
      if (v32)
      {
        static Task<>.checkCancellation()();
      }

      v51 = sub_18840F8F4();
      v52 = sub_188404238(v51);
      sub_1883FDEB0(v52, v53, v54);
      if (qword_1EA90C828 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    sub_1883F89B8(&qword_1EA90C828);
LABEL_16:
    v55 = sub_188400870();
    sub_1883F984C(v55);
    sub_1883F7468();
    sub_1884CCC70(v56, v57, &unk_1886FE258);
    v58 = swift_task_alloc();
    sub_1883FF4C8(v58);
    sub_18844E6FC(&qword_1EA90E400, &qword_1886FB110);
    sub_1883FA6DC();
    *v13 = v59;
    sub_1883FDD90(v60);
    sub_1883FA170();
    sub_1883FE22C();

    return MEMORY[0x1EEE6DE98](v61);
  }

  sub_1883FAAC8();
  if (v34)
  {
    __break(1u);
    goto LABEL_20;
  }

  v35 = sub_1884CDCB0(v33);
  v36 = sub_1883F9A44(v35);
  sub_1883FF604(v36);
  sub_1883F7468();
  sub_1884CCC70(v37, v38, &unk_1886FE258);
  v39 = swift_task_alloc();
  v40 = sub_188404A84(v39);
  *v40 = v41;
  v40[1] = sub_1884CC004;
  sub_1883F960C();
  sub_18840DEA4();

  return MEMORY[0x1EEE6DE18](v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t sub_18842BE1C()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F7A30(v1);

  return sub_1884CC4C4(v3, v4);
}

uint64_t sub_18842BEAC()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F933C(v1);
  sub_188404D5C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18842BF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_188442BE4;

  return sub_18842C000(a1, a2, a3, v8, v9);
}

uint64_t sub_18842C000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a2;
  v5[6] = a3;
  v5[3] = a5;
  v5[4] = a1;
  v5[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_18842C028, 0, 0);
}

uint64_t sub_18842C028()
{
  sub_1883FB4AC();
  if (qword_1EA90C838 != -1)
  {
    sub_1883FEAB4(&qword_1EA90C838);
  }

  v1 = sub_18841BAD0();
  sub_1884052D8(v1);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  sub_18844E6FC(&qword_1EA90E400, &qword_1886FB110);
  *v2 = v0;
  v2[1] = sub_18840750C;
  sub_188414794();
  sub_188404D5C();

  return MEMORY[0x1EEE6DE98](v3);
}

uint64_t sub_18842C148()
{
  v2 = *(v0 + 48);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1884061E0;
  sub_188405778();

  return sub_18842DEAC(v5, v6, v7, v8, v9, v10, v2);
}

uint64_t sub_18842C214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_188442BE4;

  return sub_18842C2C4(a1, a2, a3);
}

uint64_t sub_18842C2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a3;
  *(v4 + 80) = *a2;
  v5 = *(a2 + 8);
  *(v4 + 32) = v3;
  *(v4 + 40) = v5;
  *(v4 + 81) = *(a2 + 16);
  *(v4 + 48) = *(a2 + 24);
  return sub_1883F9430();
}

uint64_t sub_18842C2F8()
{
  sub_1883F7120();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    sub_1883FA550();
    v0[8] = v2;
    v3 = sub_1883FDC8C();

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  else
  {
    v6 = v0[2];
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    sub_1883F816C();

    return v7();
  }
}

uint64_t sub_18842C3A8()
{
  sub_1883FC738();
  v18 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  if (v1)
  {
    v3 = *(v0 + 81);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    LOBYTE(v15) = *(v0 + 80);
    *(&v15 + 1) = v5;
    v16 = v3;
    v17 = v4;
    v6 = sub_18841488C();
    v7 = [v2 syncEngine:v1 nextRecordZoneChangeBatchForContext:v6];
    v8 = *(v0 + 72);
    v9 = *(v0 + 16);
    if (v7)
    {
      v10 = v7;
      sub_18850A598(&v15);

      swift_unknownObjectRelease();
      v11 = v16;
      *v9 = v15;
      *(v9 + 16) = v11;
    }

    else
    {

      swift_unknownObjectRelease();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v12 = *(v0 + 16);
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
  }

  sub_1883F816C();

  return v13();
}

uint64_t sub_18842C4D8()
{
  v0 = sub_1883F6A78();
  v1 = *(v0 + 128);

  v2 = *(v1 + 16);
  sub_1883F793C();

  return v0;
}

uint64_t sub_18842C524()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  sub_1883F816C();

  return v3();
}

void sub_18842C604()
{
  v113 = v0;
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  *(v0 + 464) = v2;
  *(v0 + 472) = v1;
  v106 = v1;
  *(v0 + 316) = *(v0 + 312);
  if (!v2)
  {
    goto LABEL_59;
  }

  if (!sub_1883F4C9C(v2) && !sub_1883F4C9C(v106))
  {
    sub_1884F9AC4(v2);
LABEL_59:
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v81 = *(v0 + 432);
    v82 = *(v0 + 392);
    v83 = type metadata accessor for Logger();
    sub_1883FDE5C(v83, qword_1EA90C9F8);
    sub_18840FB8C();

    v84 = v81;

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v107 = *(v0 + 314);
      v87 = *(v0 + 432);
      v105 = *(v0 + 424);
      v88 = *(v0 + 313);
      sub_1883FD778();
      swift_slowAlloc();
      v108 = sub_18842D4DC();
      *v82 = 136315394;
      v89 = sub_1883FE43C();
      sub_1883FE340(v89, v90, &v108);
      sub_1883F9B0C();
      sub_1883FC70C();
      LOBYTE(v109) = v88;
      v110 = v105;
      v111 = v107;
      v112 = v87;

      v91 = v87;
      v92 = CKSyncEngine.SendChangesContext.description.getter();
      v94 = v93;

      sub_1883FE340(v92, v94, &v108);
      sub_18840FB8C();

      *(v82 + 14) = v92;
      _os_log_impl(&dword_1883EA000, v85, v86, "%s no record zone change batch to send for context: %s", v82, 0x16u);
      sub_1884038F4();
      sub_1883FC7E4();
      sub_1883FD784();
    }

    v95 = *(v0 + 384);
    *v95 = 0u;
    v95[1] = 0u;

    sub_1883FDB48();

    v96();
    return;
  }

  if (qword_1EA90C9F0 != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v3 = *(v0 + 432);
    v4 = type metadata accessor for Logger();
    sub_1883FDE5C(v4, qword_1EA90C9F8);

    v5 = v0;
    v6 = v3;

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    v99 = v0;
    if (os_log_type_enabled(v7, v8))
    {
      v103 = *(v0 + 314);
      v9 = *(v0 + 432);
      v101 = *(v5 + 424);
      v10 = *(v5 + 313);
      sub_1883FD778();
      v11 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *v11 = 136315394;
      v12 = sub_1883FE43C();
      v14 = sub_1883FE340(v12, v13, &v108);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      LOBYTE(v109) = v10;
      v110 = v101;
      v111 = v103;
      v112 = v9;

      v15 = v9;
      v16 = CKSyncEngine.SendChangesContext.description.getter();
      v18 = v17;

      v19 = sub_1883FE340(v16, v18, &v108);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_1883EA000, v7, v8, "%s will send next change batch for context: %s", v11, 0x16u);
      swift_arrayDestroy();
      sub_1883F7B60();
      sub_1883F7B60();
    }

    v20 = v106;
    v21 = sub_1883F4C9C(v2);
    v22 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      v23 = v21;
      v109 = MEMORY[0x1E69E7CC0];
      v24 = sub_1883FE594();
      sub_18847791C(v24, v25, v26);
      if (v23 < 0)
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        return;
      }

      v27 = 0;
      v22 = v109;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x18CFD59D0](v27, v2);
        }

        else
        {
          v28 = *(v2 + 8 * v27 + 32);
        }

        v29 = v28;
        v30 = [v28 recordID];

        v109 = v22;
        v32 = *(v22 + 16);
        v31 = *(v22 + 24);
        if (v32 >= v31 >> 1)
        {
          v34 = sub_1883F8DD4(v31);
          sub_18847791C(v34, v32 + 1, 1);
          v22 = v109;
        }

        ++v27;
        *(v22 + 16) = v32 + 1;
        v33 = v22 + 16 * v32;
        *(v33 + 32) = v30;
        *(v33 + 40) = 0;
      }

      while (v23 != v27);
      v20 = v106;
    }

    v35 = sub_1883F4C9C(v20);
    v0 = MEMORY[0x1E69E7CC0];
    if (v35)
    {
      v36 = v35;
      v109 = MEMORY[0x1E69E7CC0];
      v37 = sub_1883FE594();
      sub_18847791C(v37, v38, v39);
      if (v36 < 0)
      {
        goto LABEL_74;
      }

      v40 = 0;
      v41 = v109;
      v42 = v106;
      do
      {
        if ((v106 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x18CFD59D0](v40, v42);
        }

        else
        {
          v43 = *(v42 + 8 * v40 + 32);
        }

        v44 = v43;
        v109 = v41;
        v46 = *(v41 + 16);
        v45 = *(v41 + 24);
        if (v46 >= v45 >> 1)
        {
          v48 = sub_1883F8DD4(v45);
          sub_18847791C(v48, v46 + 1, 1);
          v42 = v106;
          v41 = v109;
        }

        ++v40;
        *(v41 + 16) = v46 + 1;
        v47 = v41 + 16 * v46;
        *(v47 + 32) = v44;
        *(v47 + 40) = 1;
      }

      while (v36 != v40);
      v0 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    v49 = *(v99 + 440);
    v109 = v22;
    sub_18847261C(v41);
    v50 = v109;
    CKSyncEngine.State.pendingRecordZoneChanges.getter();
    sub_1884FB948(v51);
    v53 = sub_1884F9684(v50, v52);
    v2 = *(v49 + 16);
    v54 = v53[2];
    if (!v54)
    {
      break;
    }

    v97 = v2;
    v98 = v50;
    v109 = v0;
    v100 = v53;
    specialized ContiguousArray.reserveCapacity(_:)();
    v57 = sub_1884E4828(v100);
    v58 = v100;
    v59 = 0;
    v60 = v100 + 56;
    v102 = v55;
    while ((v57 & 0x8000000000000000) == 0 && v57 < 1 << *(v58 + 32))
    {
      v61 = v57 >> 6;
      v0 = 1 << v57;
      if ((*(v60 + 8 * (v57 >> 6)) & (1 << v57)) == 0)
      {
        goto LABEL_67;
      }

      if (*(v58 + 36) != v55)
      {
        goto LABEL_68;
      }

      v104 = v59;
      v62 = v55;
      v63 = *(v58 + 48) + 16 * v57;
      v64 = v58;
      LODWORD(v106) = v56;
      [objc_allocWithZone(CKSyncEnginePendingRecordZoneChange) initWithRecordID:*v63 type:*(v63 + 8)];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v2 = *(v109 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v106)
      {
        goto LABEL_75;
      }

      v65 = 1 << *(v64 + 32);
      if (v57 >= v65)
      {
        goto LABEL_69;
      }

      v66 = *(v60 + 8 * v61);
      if ((v66 & v0) == 0)
      {
        goto LABEL_70;
      }

      v58 = v64;
      v67 = v62;
      if (*(v64 + 36) != v62)
      {
        goto LABEL_71;
      }

      v68 = v66 & (-2 << (v57 & 0x3F));
      if (v68)
      {
        v65 = __clz(__rbit64(v68)) | v57 & 0x7FFFFFFFFFFFFFC0;
        v69 = v104;
      }

      else
      {
        v0 = v61 << 6;
        v70 = (v100 + 64 + 8 * v61);
        v71 = v61 + 1;
        v69 = v104;
        while (v71 < (v65 + 63) >> 6)
        {
          v72 = *v70++;
          v2 = v72;
          v0 += 64;
          ++v71;
          if (v72)
          {
            sub_188487EB8(v57, v67, 0);
            v58 = v100;
            v65 = __clz(__rbit64(v2)) + v0;
            goto LABEL_45;
          }
        }

        sub_188487EB8(v57, v67, 0);
        v58 = v100;
      }

LABEL_45:
      v56 = 0;
      v59 = v69 + 1;
      v57 = v65;
      v55 = v102;
      if (v59 == v54)
      {

        v2 = v97;
        v50 = v98;
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    sub_1883F7480(&qword_1EA90C9F0);
  }

LABEL_48:
  v73 = *(v99 + 315);
  sub_1883F4C5C(0, &qword_1EA90C7C0, off_1E70BA890);
  sub_1883F9598();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 markRecordZoneChanges:isa inFlight:1];

  if (v73)
  {
    [*(*(v99 + 440) + 16) setHasInFlightUntrackedChanges_];
  }

  v75 = *(v50 + 16);
  if (v75)
  {
    v109 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v76 = 32;
    do
    {
      v77 = *(v50 + v76);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v76 += 16;
      --v75;
    }

    while (v75);

    v78 = v109;
  }

  else
  {

    v78 = MEMORY[0x1E69E7CC0];
  }

  *(v99 + 480) = v78;
  v79 = swift_task_alloc();
  *(v99 + 488) = v79;
  *v79 = v99;
  v79[1] = sub_1884F6884;
  v80 = MEMORY[0x1E69E7CC0];

  sub_1884E5CF0(v80, v78);
}

uint64_t sub_18842CF78()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v3 = v2;
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1883F816C();

    return v10();
  }
}

uint64_t sub_18842D08C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  v3[56] = v0;

  if (v0)
  {
    v7 = v3[46];

    return MEMORY[0x1EEE6DFA0](sub_1884F4C08, v7, 0);
  }

  else
  {
    v3[57] = 0;
    v8 = swift_task_alloc();
    v3[58] = v8;
    *v8 = v5;
    sub_1883F9E98(v8);

    return sub_18840E178();
  }
}

uint64_t sub_18842D1CC()
{
  sub_1883F7120();
  v1 = *(v0 + 80);
  if (v1)
  {
    v1(0);
  }

  sub_1883F816C();

  return v2();
}

uint64_t sub_18842D234()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 432) = v0;

  if (v0)
  {
    v7 = *(v3 + 368);

    return MEMORY[0x1EEE6DFA0](sub_1884F4B10, v7, 0);
  }

  else
  {
    v8 = *(v3 + 505);
    v10 = *(v3 + 376);
    v9 = *(v3 + 384);
    *(v3 + 336) = *(v3 + 504);
    *(v3 + 344) = v10;
    *(v3 + 352) = v8;
    *(v3 + 360) = v9;
    swift_task_alloc();
    sub_1883FF2B8();
    *(v3 + 440) = v11;
    *v11 = v12;
    v11[1] = sub_18842D08C;

    return sub_188429E38(v3 + 336);
  }
}

uint64_t sub_18842D3A8()
{
  sub_1883FB4AC();
  v1 = *(v0 + 456);
  v2 = *(v0 + 352);
  *(v0 + 458) = *(v2 + 201);
  v3 = MEMORY[0x1E69E7CC8];
  *(v0 + 384) = *(v2 + 176);
  *(v0 + 392) = v3;
  v4 = *(v0 + 457);
  v6 = *(v0 + 368);
  v5 = *(v0 + 376);
  v7 = swift_task_alloc();
  *(v0 + 400) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;
  *(v7 + 32) = v6;
  *(v7 + 40) = v4;
  *(v7 + 48) = v5;
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 408) = v8;
  *v8 = v9;
  v8[1] = sub_18842A8F0;
  sub_1883FE74C();
  v10 = sub_18840BE44();

  return sub_188429E9C(v10, v11, v12, v13);
}

BOOL sub_18842D494()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v0);
}

void sub_18842D4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21[341] = a20;
  v21[342] = a19;
  v21[343] = a18;
  v21[344] = v20;
}

uint64_t sub_18842D4DC()
{

  return swift_slowAlloc();
}

void sub_18842D4F8()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_18842D514(uint64_t a1, uint64_t a2)
{
  *(v3 + 360) = a1;
  *(v3 + 368) = v2;
  v5 = type metadata accessor for CancellationError();
  *(v3 + 376) = v5;
  *(v3 + 384) = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  *(v3 + 240) = *a2;
  *(v3 + 392) = v6;
  *(v3 + 400) = v9;
  *(v3 + 248) = v7;
  *(v3 + 256) = v8;
  *(v3 + 264) = v9;
  v10 = swift_task_alloc();
  *(v3 + 408) = v10;
  *v10 = v3;
  v10[1] = sub_18842E1F4;

  return sub_18842A398(v3 + 240);
}

uint64_t sub_18842D62C()
{
  v1 = v0;
  CKSyncEngine.State.pendingDatabaseChanges.getter();
  v83 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  v80 = v0;
  if (!Strong)
  {
    goto LABEL_35;
  }

  v4 = Strong;
  v5 = [Strong dataSource];
  if (!v5)
  {

LABEL_35:
    v73 = sub_18842DD68();
    goto LABEL_36;
  }

  v6 = v5;
  v7 = &off_1E70C3000;
  if (([v5 respondsToSelector_] & 1) != 0 && (v8 = objc_msgSend(v6, sel_recordZonesToSaveForSyncEngine_, v4)) != 0)
  {
    v9 = v8;
    sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
    sub_1883F9598();
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = sub_1883F4C9C(v10) != 0;
    v12 = sub_1883F4C9C(v10);
    if (v12)
    {
      v13 = v12;
      v79 = v6;
      v81 = v4;
      v84 = MEMORY[0x1E69E7CC0];
      v14 = sub_1883FE594();
      sub_188477954(v14, v15, v16);
      if (v13 < 0)
      {
        goto LABEL_68;
      }

      v17 = 0;
      v18 = v84;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x18CFD59D0](v17, v10);
        }

        else
        {
          v19 = *(v10 + 8 * v17 + 32);
        }

        v20 = v19;
        v22 = *(v84 + 16);
        v21 = *(v84 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1883F8DD4(v21);
          sub_1883FF374();
          sub_188477954(v24, v25, v26);
        }

        ++v17;
        *(v84 + 16) = v22 + 1;
        v23 = v84 + 16 * v22;
        *(v23 + 32) = v20;
        *(v23 + 40) = 0;
      }

      while (v13 != v17);

      v4 = v81;
      v6 = v79;
      v7 = &off_1E70C3000;
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    sub_188472600(v18);
  }

  else
  {
    v11 = 0;
  }

  if ([v6 v7[329]])
  {
    v27 = [v6 recordZoneIDsToDeleteForSyncEngine_];
    if (v27)
    {
      v28 = v27;
      sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
      sub_1883F9598();
      v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = sub_1883F4C9C(v29) != 0;
      v31 = sub_1883F4C9C(v29);
      if (v31)
      {
        v32 = v31;
        v85 = MEMORY[0x1E69E7CC0];
        v33 = sub_1883FE594();
        sub_188477954(v33, v34, v35);
        if (v32 < 0)
        {
          goto LABEL_69;
        }

        v36 = 0;
        v37 = v85;
        do
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x18CFD59D0](v36, v29);
          }

          else
          {
            v38 = *(v29 + 8 * v36 + 32);
          }

          v39 = v38;
          v41 = *(v85 + 16);
          v40 = *(v85 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_1883F8DD4(v40);
            sub_1883FF374();
            sub_188477954(v43, v44, v45);
          }

          ++v36;
          *(v85 + 16) = v41 + 1;
          v42 = v85 + 16 * v41;
          *(v42 + 32) = v39;
          *(v42 + 40) = 1;
        }

        while (v32 != v36);

        v1 = v80;
      }

      else
      {

        v37 = MEMORY[0x1E69E7CC0];
      }

      v11 |= v30;
      sub_188472600(v37);
    }
  }

  swift_unknownObjectRelease();
  if ((v11 & 1) == 0)
  {
    goto LABEL_35;
  }

  v73 = 100;
LABEL_36:
  v46 = 0;
  v47 = *(v1 + 40);
  v78 = *(v83 + 16);
  v75 = (v1 + 16);
  v74 = MEMORY[0x1E69E7CC0];
  while (v46 != v78)
  {
    if (v46 >= *(v83 + 16))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      JUMPOUT(0x18842DD14);
    }

    v48 = v83 + 32 + 16 * v46;
    v49 = *v48;
    v50 = *(v48 + 8);
    v51 = *v48;
    v82 = v51;
    if (v50 == 1)
    {
      v52 = v51;
    }

    else
    {
      v52 = [v51 zoneID];
    }

    v53 = v52;
    ++v46;
    v77 = v49;
    v76 = v50;
    switch(*(v80 + 48))
    {
      case 1:
        *v75 = v52;
        *(swift_task_alloc() + 16) = v75;
        v61 = sub_18850DE28();

        if (v61)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      case 2:
        v55 = sub_1883F4C9C(v47);
        if (!v55)
        {
          goto LABEL_55;
        }

        v56 = v55;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v56 < 0)
        {
          goto LABEL_67;
        }

        v57 = 0;
        do
        {
          if ((v47 & 0xC000000000000001) != 0)
          {
            v58 = MEMORY[0x18CFD59D0](v57, v47);
          }

          else
          {
            v58 = *(v47 + 8 * v57 + 32);
          }

          v59 = v58;
          ++v57;
          v60 = [v58 zoneID];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v56 != v57);
LABEL_55:
        *v75 = v53;
        *(swift_task_alloc() + 16) = v75;
        v62 = sub_18850DE28();

        if (v62)
        {
LABEL_58:
          v63 = v74;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188477954(0, *(v74 + 16) + 1, 1);
            v63 = v74;
          }

          v65 = *(v63 + 16);
          v64 = *(v63 + 24);
          if (v65 >= v64 >> 1)
          {
            sub_1883F8DD4(v64);
            sub_188410F10();
            sub_188477954(v67, v68, v69);
            v63 = v74;
          }

          *(v63 + 16) = v65 + 1;
          v74 = v63;
          v66 = v63 + 16 * v65;
          *(v66 + 32) = v77;
          *(v66 + 40) = v76;
        }

        else
        {
LABEL_56:
        }

        break;
      case 3:

        goto LABEL_58;
      default:
        *v75 = v52;
        *(swift_task_alloc() + 16) = v75;
        v54 = sub_18850DE28();

        if ((v54 & 1) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
    }
  }

  v70 = sub_18842A3EC(v74, v73);

  v71 = *(v80 + 8);

  return v71(v70);
}

uint64_t sub_18842DD68()
{
  os_unfair_lock_lock((v0 + 184));
  v1 = *(v0 + 192);
  os_unfair_lock_unlock((v0 + 184));
  return v1;
}

uint64_t sub_18842DD9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 176) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  *(v5 + 88) = *v4;
  return sub_188405594(sub_18842B05C);
}

uint64_t sub_18842DDE4(uint64_t a1, uint64_t a2)
{
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  *(v3 + 33) = *a2;
  *(v3 + 34) = *(a2 + 16);
  v4 = *(a2 + 24);
  *(v3 + 104) = *(a2 + 8);
  *(v3 + 112) = v4;
  return sub_1883F8EA4(sub_18842B76C, v2);
}

uint64_t sub_18842DE1C()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F933C(v1);
  sub_188404D5C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18842DEAC(uint64_t a1, _OWORD *a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = a7;
  *(v7 + 105) = a5;
  *(v7 + 104) = a3;
  *(v7 + 48) = a1;
  *(v7 + 56) = a4;
  *(v7 + 80) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_18842E33C, 0, 0);
}

uint64_t sub_18842DEE0()
{
  sub_1883F7120();
  *(v0 + 72) = swift_unknownObjectWeakLoadStrong();

  v1 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_18842DFC8(uint64_t a1, int *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_188442BE4;

  return sub_188406308(a1, a2, a3, v8, v9);
}

uint64_t sub_18842E08C()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F7A30(v1);

  return sub_1884CC4C4(v3, v4);
}

id sub_18842E11C()
{
  v1 = [*(*(v0 + OBJC_IVAR___CKSyncEngine_delegateAdapter) + 120) dataSource];

  return v1;
}

unint64_t sub_18842E160(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_18842A758(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_1884DFC9C(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18842E1F4()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;
  *(v6 + 416) = v5;

  v7 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18842E2EC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 176) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  *(v5 + 88) = *v4;
  return MEMORY[0x1EEE6DFA0](sub_18842BAD0, v4, 0);
}

void sub_18842E33C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 105);
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    v4 = *(v0 + 104);
    swift_getObjectType();
    *(v0 + 16) = v4 & 1;
    *(v0 + 24) = v3;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2;
    swift_task_alloc();
    sub_1883FF2B8();
    *(v0 + 96) = v5;
    *v5 = v6;
    v5[1] = sub_18842C524;
    sub_188404AB8();

    __asm { BRAA            X5, X16 }
  }

  v9 = *(v0 + 48);
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  sub_1883F816C();
  sub_188404AB8();

  __asm { BRAA            X1, X16 }
}

void sub_18842E524(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1883F4C9C(a1);
  if (v6)
  {
    v7 = v6;
    _Block_copy(a3);
    v26 = MEMORY[0x1E69E7CC0];
    sub_18847791C(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      return;
    }

    v21 = a3;
    v22 = a2;
    v8 = 0;
    v9 = v26;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x18CFD59D0](v8, a1);
      }

      else
      {
        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;
      sub_18850C5B8(&v23);

      v12 = v23;
      v13 = v24;
      v26 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_18847791C(v14 > 1, v15 + 1, 1);
        v9 = v26;
      }

      ++v8;
      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
    }

    while (v7 != v8);

    a3 = v21;
    a2 = v22;
  }

  else
  {
    _Block_copy(a3);

    v9 = MEMORY[0x1E69E7CC0];
  }

  _Block_copy(a3);
  sub_18842E76C(&v23, a3, v9);
  v17 = v23;
  if (v23)
  {
    v18 = v25;
    sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
    isa = Array._bridgeToObjectiveC()().super.isa;
    sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
    v20 = Array._bridgeToObjectiveC()().super.isa;
    [a2 initWithRecordsToSave:isa recordIDsToDelete:v20 atomicByZone:v18 & 1];
    _Block_release(a3);
    _Block_release(a3);
    sub_1884F9AC4(v17);
  }

  else
  {
    _Block_release(a3);
    _Block_release(a3);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }
}

void sub_18842E76C(uint64_t *__return_ptr a1@<X8>, uint64_t (**aBlock)(void *, id)@<X1>, uint64_t a3@<X0>)
{
  v4 = aBlock;
  v5 = a3;
  v6 = a1;
  v48 = MEMORY[0x1E69E7CC0];
  v49 = MEMORY[0x1E69E7CC0];
  v46 = *(a3 + 16);
  if (!v46)
  {
    _Block_copy(aBlock);

    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_57;
  }

  _Block_copy(aBlock);
  v7 = 0;
  v8 = 0;
  v9 = (v5 + 40);
  v10 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  v47 = v5;
  while (1)
  {
    if (v8 >= *(v5 + 16))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v12 = *(v9 - 1);
    v13 = *v9;
    v14 = v12;
    v3 = v14;
    if (v13 != 1)
    {
      v45 = v14;
      v3 = v14;
      v19 = v4[2](v4, v3);
      if (!v19)
      {
        v44 = v11;
        if (qword_1EA90C9F0 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_1883FDE5C(v23, qword_1EA90C9F8);
        v24 = v3;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v42 = v4;
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138412290;
          *(v27 + 4) = v24;
          *v28 = v12;
          v29 = v24;
          _os_log_impl(&dword_1883EA000, v25, v26, "No record to save for record ID %@", v27, 0xCu);
          sub_188462FE0(v28);
          MEMORY[0x18CFD7E80](v28, -1, -1);
          v30 = v27;
          v4 = v42;
          MEMORY[0x18CFD7E80](v30, -1, -1);
          v24 = v25;
          v25 = v29;
        }

        v11 = v44;

        v3 = v45;
        goto LABEL_27;
      }

      v20 = v19;
      v21 = [v19 size];
      v18 = __OFADD__(v7, v21);
      v7 += v21;
      if (v18)
      {
        goto LABEL_66;
      }

      if (v7 <= 1572864)
      {
        goto LABEL_18;
      }

      if (v11 >> 62)
      {
        if (__CocoaSet.count.getter())
        {
          goto LABEL_41;
        }
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      if (!(v10 >> 62))
      {
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

LABEL_18:
        v22 = v20;
        MEMORY[0x18CFD52F0]();
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v11 = v49;
        v3 = v45;
        if (v7 > 1572864)
        {
          goto LABEL_42;
        }

        goto LABEL_27;
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_18;
      }

LABEL_41:

      v3 = v45;
LABEL_42:

      if (qword_1EA90C9F0 == -1)
      {
LABEL_43:
        v33 = type metadata accessor for Logger();
        sub_1883FDE5C(v33, qword_1EA90C9F8);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v34, v35))
        {
          goto LABEL_55;
        }

        v36 = v4;
        v37 = swift_slowAlloc();
        *v37 = 0;
        v38 = "Next record will exceed max bytes per batch";
        goto LABEL_54;
      }

LABEL_67:
      swift_once();
      goto LABEL_43;
    }

    v15 = [v14 size];
    if (__OFADD__(v7, v15))
    {
      goto LABEL_64;
    }

    if (v15 + v7 > 1572864)
    {
      goto LABEL_42;
    }

    v16 = v3;
    v3 = v3;
    MEMORY[0x18CFD52F0]();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v10 = v48;
    v17 = [v3 size];
    v18 = __OFADD__(v7, v17);
    v7 += v17;
    if (v18)
    {
      goto LABEL_65;
    }

    v3 = v16;
LABEL_27:
    if (v11 >> 62)
    {
      v31 = __CocoaSet.count.getter();
    }

    else
    {
      v31 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10 >> 62)
    {
      v32 = __CocoaSet.count.getter();
    }

    else
    {
      v32 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFADD__(v31, v32))
    {
      goto LABEL_63;
    }

    if (v31 + v32 > 249)
    {
      break;
    }

    v5 = v47;
    if (v7 >= 1572864)
    {

      if (qword_1EA90C9F0 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_1883FDE5C(v40, qword_1EA90C9F8);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = v4;
        v37 = swift_slowAlloc();
        *v37 = 0;
        v38 = "Current batch is over the max bytes per batch";
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    ++v8;

    v9 += 16;
    if (v46 == v8)
    {

      goto LABEL_56;
    }
  }

  if (qword_1EA90C9F0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_1883FDE5C(v39, qword_1EA90C9F8);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = v4;
    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "Reached max record count per batch";
LABEL_54:
    _os_log_impl(&dword_1883EA000, v34, v35, v38, v37, 2u);
    v41 = v37;
    v4 = v36;
    MEMORY[0x18CFD7E80](v41, -1, -1);
  }

LABEL_55:

LABEL_56:
  v6 = a1;
LABEL_57:
  if (sub_1883F4C9C(v11) || sub_1883F4C9C(v10))
  {
    _Block_release(v4);
    _Block_release(v4);
    *v6 = v11;
    v6[1] = v10;
  }

  else
  {

    _Block_release(v4);
    _Block_release(v4);
    *v6 = 0;
    v6[1] = 0;
  }

  *(v6 + 16) = 0;
}

uint64_t sub_18842EE64()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18842EF78()
{
  v84 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v72 = v0 + 48;
    v73 = v0 + 40;
    v70 = v0 + 64;
    v71 = v0 + 56;
    v68 = v0 + 80;
    v69 = v0 + 72;
    v78 = *(v0 + 24);
    v74 = *(v0 + 32);
    v81 = MEMORY[0x1E69E7CC0];
    v3 = sub_1883F4C9C(v2);
    v4 = 0;
    v77 = v2 & 0xC000000000000001;
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
    v75 = v2;
    while (1)
    {
      v6 = v4;
LABEL_4:
      if (v3 == v6)
      {
        break;
      }

      if (v77)
      {
        v7 = MEMORY[0x18CFD59D0](v6, v2);
      }

      else
      {
        if (v6 >= *(v5 + 16))
        {
          goto LABEL_62;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v1 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v8 = *(v0 + 34);
      v9 = [v7 recordID];
      v10 = v9;
      switch(v8)
      {
        case 1:
          v14 = [v9 zoneID];
          *(v0 + 56) = v14;
          *(swift_task_alloc() + 16) = v71;
          sub_1884F9D7C();
          v15 = sub_18850DE28();

          if (v15)
          {
            goto LABEL_13;
          }

          goto LABEL_15;
        case 2:
          *(v0 + 48) = v9;
          *(swift_task_alloc() + 16) = v72;
          sub_1884F9D7C();
          v11 = sub_18850DE28();

          if (v11)
          {
            goto LABEL_13;
          }

          goto LABEL_15;
        case 3:

          ++v6;
          goto LABEL_4;
        default:
          v12 = [v9 zoneID];
          *(v0 + 40) = v12;
          *(swift_task_alloc() + 16) = v73;
          v13 = sub_18850DE28();

          if (v13)
          {
LABEL_15:
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            sub_188404A38();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            sub_188404A38();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
LABEL_13:
          }

          v2 = v75;
          v0 = v76;
          break;
      }
    }

    v16 = v81;
    v17 = sub_1883F4C9C(v81);
    if (v17)
    {
      v1 = v17;
      v18 = MEMORY[0x1E69E7CC0];
      v81 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v1 < 0)
      {
        goto LABEL_65;
      }

      v19 = 0;
      do
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x18CFD59D0](v19, v16);
        }

        else
        {
          v20 = *(v16 + 8 * v19 + 32);
        }

        v21 = v20;
        ++v19;
        v22 = [v20 recordID];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v2 = v75;
        v0 = v76;
      }

      while (v1 != v19);

      v23 = v81;
    }

    else
    {

      v23 = MEMORY[0x1E69E7CC0];
      v18 = MEMORY[0x1E69E7CC0];
    }

    v81 = v18;
    v33 = v78;
    v1 = sub_1883F4C9C(v78);
    v34 = 0;
    while (v1 != v34)
    {
      if ((v78 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x18CFD59D0](v34, v33);
      }

      else
      {
        if (v34 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v35 = *(v33 + 8 * v34 + 32);
      }

      v36 = v35;
      v37 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_63;
      }

      switch(*(v0 + 34))
      {
        case 1:
          v41 = [v35 zoneID];
          *(v0 + 80) = v41;
          *(swift_task_alloc() + 16) = v68;
          sub_1884F9D7C();
          v38 = sub_18850DE28();

          goto LABEL_45;
        case 2:
          *(v0 + 72) = v35;
          *(swift_task_alloc() + 16) = v69;
          v38 = sub_18850DE28();
LABEL_45:

          if ((v38 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_43;
        case 3:

          ++v34;
          v33 = v78;
          continue;
        default:
          v39 = [v35 zoneID];
          *(v0 + 64) = v39;
          *(swift_task_alloc() + 16) = v70;
          sub_1884F9D7C();
          v40 = sub_18850DE28();

          if (v40)
          {
LABEL_46:
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            sub_188404A38();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            sub_188404A38();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
LABEL_43:
          }

          v34 = v37;
          v2 = v75;
          v0 = v76;
          v33 = v78;
          break;
      }
    }

    if (sub_1883F4C9C(v23) || sub_1883F4C9C(v81))
    {
      v42 = *(v0 + 34);
      v43 = *(v0 + 104);
      sub_1884F9AC4(v2);
      v81 = 0;
      v82 = 0xE000000000000000;
      _StringGuts.grow(_:)(113);
      MEMORY[0x18CFD5140](0xD000000000000039, 0x8000000188702780);
      v79 = v43;
      v80 = v42;
      CKSyncEngine.SendChangesOptions.Scope.description.getter();
      MEMORY[0x18CFD5140]();

      sub_1883FA724();
      v44 = sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
      v45 = MEMORY[0x18CFD5330](v23, v44);
      v47 = v46;

      MEMORY[0x18CFD5140](v45, v47);

      sub_1883FA724();
      v48 = sub_1883F7E8C();
      v49 = MEMORY[0x18CFD5330](v48);
      v51 = v50;

      MEMORY[0x18CFD5140](v49, v51);

      related decl 'e' for CKErrorCode.init(_:description:)(12, 0, 0xE000000000000000);
      swift_willThrow();

      sub_1883F816C();
      goto LABEL_52;
    }

    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v53 = type metadata accessor for Logger();
    sub_1883FDE5C(v53, qword_1EA90C9F8);

    v54 = v75;
    sub_1884F9B70(v75, v33);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    v57 = v76;

    sub_1884F9AC4(v75);
    if (os_log_type_enabled(v55, v56))
    {
      sub_1883FD778();
      v58 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v58 = 136315394;
      v59 = sub_1883FE43C();
      v61 = sub_1883FE340(v59, v60, &v79);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      v81 = v75;
      v82 = v33;
      v62 = v74 & 1;
      v83 = v74 & 1;
      sub_1884F9B70(v75, v33);
      v63 = CKSyncEngine.RecordZoneChangeBatch.description.getter();
      v65 = v64;

      v33 = v78;

      v66 = sub_1883FE340(v63, v65, &v79);
      v54 = v75;
      v57 = v76;

      *(v58 + 14) = v66;
      _os_log_impl(&dword_1883EA000, v55, v56, "%s received record zone change batch: %s", v58, 0x16u);
      swift_arrayDestroy();
      sub_1883F7B60();
      sub_1883F7B60();
    }

    else
    {

      v62 = v74 & 1;
    }

    v67 = *(v57 + 88);
    *v67 = v54;
    *(v67 + 8) = v33;
    *(v67 + 16) = v62;
  }

  else
  {
    if (qword_1EA90C9F0 != -1)
    {
LABEL_66:
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v24 = type metadata accessor for Logger();
    sub_1883FDE5C(v24, qword_1EA90C9F8);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = sub_1883FE540();
      v81 = v28;
      *v27 = 136315138;
      v29 = sub_1883FE43C();
      sub_1883FE340(v29, v30, &v81);
      sub_1883F9B0C();
      *(v27 + 4) = v1;
      _os_log_impl(&dword_1883EA000, v25, v26, "%s no batch received from nextRecordZoneChangeBatch", v27, 0xCu);
      sub_1883FE944(v28);
      sub_1883FC7E4();
      v0 = v76;
      sub_1883F7B60();
    }

    v31 = *(v0 + 88);
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
  }

  sub_1883FDB48();
LABEL_52:

  return v32();
}

uint64_t sub_18842F9C8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 456) = v0;

  v7 = *(v3 + 392);
  if (v0)
  {
    v8 = sub_1884F7C6C;
  }

  else
  {
    v8 = sub_18842C604;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

void sub_18842FAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1883FE264();
  sub_18840C194();
  v21 = *(v20 + 424);
  if (*(v20 + 256))
  {
    a11 = *(v20 + 256);
    v22 = *(v20 + 264);
    a10 = *(v20 + 272);
    a14 = *(v20 + 280);
    a16 = *(v22 + 16);

    v23 = 0;
    a15 = v22;
    v24 = (v22 + 40);
    while (a16 != v23)
    {
      if (v23 >= *(a15 + 16))
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v25 = *v24;
      v26 = *(v24 - 1);
      v27 = v25;
      *(v20 + 288) = [v26 recordID];
      sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
      sub_1883F66E4(&qword_1EA90C7E0, &qword_1EA90CA70, off_1E70BA618);
      AnyHashable.init<A>(_:)();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 296) = v21;
      sub_1884864E0();
      sub_1883FE314();
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_57;
      }

      v34 = v29;
      v35 = v30;
      sub_18844E6FC(&qword_1EA90E5A8, &qword_1886FB9F0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v33))
      {
        v36 = sub_1884864E0();
        if ((v35 & 1) != (v37 & 1))
        {
LABEL_44:
          sub_1883F8300();

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }

        v34 = v36;
      }

      v21 = *(v20 + 296);
      if (v35)
      {
        v38 = v21[7];
        v39 = *(v38 + 8 * v34);
        *(v38 + 8 * v34) = v27;

        sub_1884889C4(v20 + 64);
      }

      else
      {
        sub_1883FF230(&v21[v34 >> 6]);
        sub_1884802A8(v20 + 64, v21[6] + 40 * v34);
        *(v21[7] + 8 * v34) = v27;
        sub_1884889C4(v20 + 64);
        v40 = v21[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_59;
        }

        v21[2] = v42;
      }

      v24 += 2;
      ++v23;
    }

    v43 = a14 + 64;
    sub_1883F8A68();
    v46 = v45 & v44;
    sub_1883FE184();
    v48 = v47 >> 6;
    swift_bridgeObjectRetain_n();

    v49 = 0;
    v50 = v21;
    a12 = v48;
    a13 = a14 + 64;
    if (v46)
    {
      goto LABEL_19;
    }

LABEL_15:
    while (1)
    {
      v51 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v51 >= v48)
      {

        sub_1884F8FAC(a11);

        if (!v50[2])
        {
LABEL_52:
          v93 = *(v20 + 352);
          *(v20 + 458) = *(v93 + 201);
          *(v20 + 384) = *(v93 + 176);
          *(v20 + 392) = v50;
          v94 = *(v20 + 457);
          v96 = *(v20 + 368);
          v95 = *(v20 + 376);
          v97 = *(v20 + 456);
          v98 = swift_task_alloc();
          *(v20 + 400) = v98;
          *(v98 + 16) = v93;
          *(v98 + 24) = v97;
          *(v98 + 32) = v96;
          *(v98 + 40) = v94;
          *(v98 + 48) = v95;
          swift_task_alloc();
          sub_1883FF2B8();
          *(v20 + 408) = v99;
          *v99 = v100;
          v99[1] = sub_18842A8F0;
          sub_1883FE74C();
          sub_18840BE44();
          sub_1883F8300();

          sub_188429E9C(v101, v102, v103, v104);
          return;
        }

        if (*(*(v20 + 352) + 200) != 1)
        {
          goto LABEL_42;
        }

        v71 = *(v20 + 448);
        sub_1883F8A68();
        v74 = v73 & v72;
        sub_1883FE184();
        v76 = v75 >> 6;

        v77 = 0;
        while (v74)
        {
LABEL_38:
          v79 = __clz(__rbit64(v74)) | (v77 << 6);
          sub_1884802A8(v50[6] + 40 * v79, v20 + 16);
          v80 = *(v50[7] + 8 * v79);
          *(v20 + 56) = v80;
          v81 = sub_1884F856C(v80);
          if (v71)
          {

            sub_188442B84(v20 + 16, &qword_1EA90E5B0, &qword_1886FB9F8);
            sub_1883F8300();
            return;
          }

          v82 = v81;
          v74 &= v74 - 1;
          sub_188442B84(v20 + 16, &qword_1EA90E5B0, &qword_1886FB9F8);
          if (v82)
          {

            goto LABEL_42;
          }
        }

        while (1)
        {
          v78 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            goto LABEL_60;
          }

          if (v78 >= v76)
          {

            goto LABEL_52;
          }

          v74 = v50[v78 + 8];
          ++v77;
          if (v74)
          {
            v77 = v78;
            goto LABEL_38;
          }
        }
      }

      v46 = *(v43 + 8 * v51);
      ++v49;
      if (v46)
      {
        v49 = v51;
LABEL_19:
        while (1)
        {
          v52 = (v49 << 9) | (8 * __clz(__rbit64(v46)));
          v53 = *(*(a14 + 48) + v52);
          v54 = *(*(a14 + 56) + v52);
          *(v20 + 304) = v53;
          sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
          sub_1883F66E4(&qword_1EA90C7E0, &qword_1EA90CA70, off_1E70BA618);
          a16 = v53;
          v55 = v54;
          AnyHashable.init<A>(_:)();
          v56 = v55;
          v57 = swift_isUniquelyReferenced_nonNull_native();
          *(v20 + 312) = v50;
          sub_1884864E0();
          sub_1883FE314();
          v62 = v60 + v61;
          if (__OFADD__(v60, v61))
          {
            goto LABEL_61;
          }

          v63 = v58;
          v64 = v59;
          sub_18844E6FC(&qword_1EA90E5A8, &qword_1886FB9F0);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v57, v62))
          {
            sub_1884864E0();
            sub_1883F7AE8();
            if (!v66)
            {
              goto LABEL_44;
            }

            v63 = v65;
          }

          v50 = *(v20 + 312);
          if (v64)
          {
            v67 = v50[7];
            v68 = *(v67 + 8 * v63);
            *(v67 + 8 * v63) = v56;

            sub_1884889C4(v20 + 104);
          }

          else
          {
            sub_1883FF230(&v50[v63 >> 6]);
            sub_1884802A8(v20 + 104, v50[6] + 40 * v63);
            *(v50[7] + 8 * v63) = v56;

            sub_1884889C4(v20 + 104);
            v69 = v50[2];
            v41 = __OFADD__(v69, 1);
            v70 = v69 + 1;
            if (v41)
            {
              goto LABEL_62;
            }

            v50[2] = v70;
          }

          v46 &= v46 - 1;
          v48 = a12;
          v43 = a14 + 64;
          if (!v46)
          {
            goto LABEL_15;
          }
        }
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {
    v50 = *(v20 + 424);
LABEL_42:
    [*(*(*(v20 + 352) + 128) + 16) moveInFlightDatabaseChangesToPending];
    if (v50[2])
    {
      sub_18847F5F4(v50);
      sub_18847FB50(v83, 0xD000000000000016, 0x80000001887026E0);
      swift_willThrow();

      sub_1883F816C();
    }

    else
    {

      sub_1883FDB48();
    }

    sub_1883F8300();

    v86(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_1884301B0()
{
  sub_1883F7120();

  sub_1883FDB48();

  return v1();
}

uint64_t sub_188430210()
{
  sub_1883F78E0();
  sub_1884F9D88();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_188427080, v0, 0);
}

uint64_t sub_1884302B8()
{
  v1 = v0[52];
  v2 = *(v1 + 16);
  if (v2)
  {
    v0[53] = *(v0[46] + 128);
    v3 = sub_1883FF150();
    sub_18850C3B0(v3);
    if (qword_1EA90C9F0 != -1)
    {
LABEL_35:
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v4 = v0[52];
    v5 = type metadata accessor for Logger();
    sub_1883FDE5C(v5, qword_1EA90C9F8);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[52];
      sub_1883FD778();
      swift_slowAlloc();
      sub_18842D4DC();
      *v4 = 136315394;
      v9 = sub_1883FE43C();
      v15 = sub_1883FB598(v9, v10, v11, v12, v13, v14);

      *(v4 + 4) = v15;
      *(v4 + 12) = 2080;
      v16 = MEMORY[0x18CFD5330](v8, &type metadata for CKSyncEngine.PendingDatabaseChange);
      sub_1883FB598(v16, v17, v18, v19, v20, v21);
      sub_1883F9B0C();
      *(v4 + 14) = v8;
      sub_1883FDDA4();
      _os_log_impl(v22, v23, v24, v25, v26, 0x16u);
      sub_1884038F4();
      sub_1883FC7E4();
      sub_1883FD784();
    }

    v27 = 0;
    v28 = MEMORY[0x1E69E7CC0];
    v63 = MEMORY[0x1E69E7CC0];
    v64 = MEMORY[0x1E69E7CC0];
    v62 = v0[52];
    v29 = MEMORY[0x1E69E7CC0];
LABEL_6:
    v0[54] = v29;
    for (i = (v62 + 40 + 16 * v27); ; i += 2)
    {
      v0[55] = v28;
      if (v2 == v27)
      {
        break;
      }

      if (v27 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v31 = *i;
      v32 = *(i - 1);
      if (v31)
      {
        MEMORY[0x18CFD52F0]();
        sub_1883FDF80();
        if (v34)
        {
          sub_1883F8DD4(v35);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v27;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v29 = v64;
        goto LABEL_6;
      }

      MEMORY[0x18CFD52F0]();
      sub_1883FDF80();
      if (v34)
      {
        sub_1883F8DD4(v33);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v28 = v63;
      ++v27;
    }

    v0[56] = [objc_allocWithZone(CKOperationConfiguration) init];
    v36 = *(v1 + 16);
    if (v36)
    {
      v65 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      v37 = (v62 + 40);
      do
      {
        v38 = *(v37 - 1);
        if (*v37 == 1)
        {
          v39 = v38;
        }

        else
        {
          v40 = [v38 zoneID];
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v37 += 16;
        --v36;
      }

      while (v36);

      v41 = v65;
    }

    else
    {

      v41 = MEMORY[0x1E69E7CC0];
    }

    v58 = sub_1884043A8(v41);
    v0[57] = v58;
    v0[58] = sub_1883F5DF8(v58);
    v59 = swift_task_alloc();
    v0[59] = v59;
    *v59 = v0;
    sub_1883FB5E0(v59);
    v60 = sub_1883FE860();

    return sub_1884E5CF0(v60, v61);
  }

  else
  {

    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v42 = type metadata accessor for Logger();
    sub_1883FDE5C(v42, qword_1EA90C9F8);
    sub_18840FB8C();

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v66 = sub_1883FE540();
      *v45 = 136315138;
      v46 = sub_1883FE43C();
      v52 = sub_1883FB598(v46, v47, v48, v49, v50, v51);

      *(v45 + 4) = v52;
      sub_1883F7A44(&dword_1883EA000, v53, v54, "%s no more pending database changes");
      sub_1883FE944(v66);
      sub_1883FD784();
      sub_1883F7B60();
    }

    v55 = v0[45];
    *v55 = 0u;
    v55[1] = 0u;

    sub_1883F816C();

    return v56();
  }
}

uint64_t sub_1884307B4()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F7B78();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 448) = v0;

  v5 = *(v2 + 352);

  if (v0)
  {
    v6 = sub_1884F4D5C;
  }

  else
  {
    v6 = sub_18842FAC8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1884308FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1884D45EC;

  return sub_18843099C(a3);
}

uint64_t sub_18843099C(uint64_t a1)
{
  v2[120] = v1;
  v2[119] = a1;
  v3 = type metadata accessor for Date();
  v2[121] = v3;
  v2[122] = *(v3 - 8);
  v2[123] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_188427E68, v1, 0);
}

BOOL sub_188430A60()
{

  return os_log_type_enabled(v0, v1);
}

void sub_188430D38(uint64_t a1, const char *a2, uint64_t a3)
{
  v20 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3);
  v5 = objc_msgSend_bundleIdentifier(v20, v3, v4);
  if (objc_msgSend_hasPrefix_(v5, v6, @"com.apple."))
  {
    byte_1ED4B65DA = 1;
  }

  else
  {
    v9 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v7, v8);
    v12 = objc_msgSend_untrustedEntitlements(v9, v10, v11);
    if (objc_msgSend_hasSPIEntitlement(v12, v13, v14))
    {
      byte_1ED4B65DA = 1;
    }

    else
    {
      v17 = objc_msgSend_bundleRecordForCurrentProcess(MEMORY[0x1E6963620], v15, v16);
      byte_1ED4B65DA = objc_msgSend_developerType(v17, v18, v19) == 1;
    }
  }
}

uint64_t sub_188430E80()
{
  result = dyld_program_sdk_at_least();
  byte_1ED4B65D4 = result;
  return result;
}

uint64_t sub_188430EA8()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = qword_1ED4B6060;
  qword_1ED4B6060 = v0;

  v3 = qword_1ED4B6060;

  return objc_msgSend_setName_(v3, v2, @"com.apple.cloudkit.operationCallbackProxy");
}

id CKSessionConfiguration.init(sqliteRepresentation:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for AnySessionConfiguration();
  v5 = sub_1883F9CF4(&qword_1EA90C4A8);
  v6 = sub_1883F7334(&qword_1EA90C4B8);
  v7 = sub_1883F8890(&qword_1EA90C4B0);

  return CKSecureCodingBox.init(sqliteRepresentation:wrappedType:)(a1, a2, v4, v5, v6, v7);
}

uint64_t sub_188431628(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnySessionConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id CKSecureCodingBox.init(sqliteRepresentation:wrappedType:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  type metadata accessor for Logger();
  sub_1883F9C28();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v49 - v21;
  v23 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v23 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v51 = v7;
    v49[1] = ObjectType;
    v49[2] = v20;
    v50 = v19;
    v24 = Data.init(base64Encoded:options:)();
    if (v25 >> 60 == 15)
    {
      CCLog.getter();

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v56[0] = swift_slowAlloc();
        *v28 = 136315394;
        v29 = sub_1883F828C();
        v31 = sub_1883FE340(v29, v30, v56);

        *(v28 + 4) = v31;
        *(v28 + 12) = 2080;
        v32 = sub_1883FE340(a1, a2, v56);

        *(v28 + 14) = v32;
        _os_log_impl(&dword_1883EA000, v26, v27, "SQLite representation of %s was malformed b64 string: %s", v28, 0x16u);
        swift_arrayDestroy();
        sub_1883F7B60();
        sub_1883F7B60();
      }

      else
      {
      }

      sub_1883FF188();
      v36(v17, v50);
    }

    else
    {
      v33 = v24;
      v34 = v25;

      v35 = type metadata accessor for JSONDecoder();
      sub_1883FEA90(v35);
      JSONDecoder.init()();
      v56[3] = a3;
      v56[4] = a4;
      v56[5] = a5;
      v56[6] = a6;
      sub_188403664(v56);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      sub_1884B1B70(v56, &v53, &qword_1EA90E328, &qword_1886FAA20);
      if (v54)
      {
        sub_18841BA74(v33, v34);
        sub_188499B68(&v53, v55);
        sub_188499B68(v55, v51 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped);
        sub_18840E840(v56, &qword_1EA90E328, &qword_1886FAA20);
        v37 = type metadata accessor for CKSecureCodingBox();
        sub_1883FDAD8(v37);
        return objc_msgSendSuper2(&v52, sel_init);
      }

      sub_18840E840(&v53, &qword_1EA90E328, &qword_1886FAA20);
      CCLog.getter();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *&v55[0] = swift_slowAlloc();
        *v41 = 136315394;
        v42 = sub_1883F828C();
        v44 = sub_1883FE340(v42, v43, v55);

        *(v41 + 4) = v44;
        *(v41 + 12) = 2080;
        v45 = _typeName(_:qualified:)();
        v47 = sub_1883FE340(v45, v46, v55);

        *(v41 + 14) = v47;
        _os_log_impl(&dword_1883EA000, v39, v40, "%s data couldn't be parsed as an encoded %s", v41, 0x16u);
        swift_arrayDestroy();
        sub_1883F7B60();
        sub_1883F7B60();
      }

      sub_18841BA74(v33, v34);

      sub_1883FF188();
      v48(v22, v50);
      sub_18840E840(v56, &qword_1EA90E328, &qword_1886FAA20);
    }
  }

  else
  {
  }

  type metadata accessor for CKSecureCodingBox();
  swift_deallocPartialClassInstance();
  return 0;
}

id CKSessionAcquiredInfo.init(sqliteRepresentation:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for AnySessionAcquiredInfo();
  v5 = sub_1883F8854(&qword_1EA90C4C0);
  v6 = sub_1883F9CA4(&qword_1EA90C4D0);
  v7 = sub_1883F72CC(&qword_1EA90C4C8);

  return CKSecureCodingBox.init(sqliteRepresentation:wrappedType:)(a1, a2, v4, v5, v6, v7);
}

uint64_t sub_188431C90(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnySessionAcquiredInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_188431D64(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Failed to perform operation with error: %@", &v7, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    objc_msgSend_cancelWithError_(WeakRetained, v6, v3);
  }
}

BOOL sub_188431EA4(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_domain(a1, a2, a3);
  if (objc_msgSend_isEqualToString_(v4, v5, @"CKErrorDomain") && objc_msgSend_code(a1, v6, v7) == 170)
  {
    v8 = 1;
  }

  else
  {
    v9 = objc_msgSend_domain(a1, v6, v7);
    if (objc_msgSend_isEqualToString_(v9, v10, @"CKInternalErrorDomain"))
    {
      v8 = objc_msgSend_code(a1, v11, v12) == 12000;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void sub_1884320F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CKSystemSharingUIObserver.systemSharingUIDidSaveShareBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_1883F71C0();
    v9[1] = 1107296256;
    v9[2] = sub_1884953A4;
    v9[3] = &unk_1EFA28B20;
    v7 = _Block_copy(v9);

    [v3 setSystemSharingUIDidSaveShareBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1, a2);
  }

  else
  {

    return [v2 setSystemSharingUIDidSaveShareBlock_];
  }
}

uint64_t sub_188432664()
{

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

id sub_188432764(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = *MEMORY[0x1E696AA08];
  v7 = objc_msgSend_objectForKeyedSubscript_(v4, v6, *MEMORY[0x1E696AA08]);

  if (!v7)
  {
    goto LABEL_10;
  }

  v10 = 0;
  do
  {
    v11 = objc_msgSend_domain(v7, v8, v9);
    if (objc_msgSend_isEqualToString_(v11, v12, @"CKInternalErrorDomain"))
    {
      v13 = CKTopLevelUnderlyingErrorCodes();
      v14 = MEMORY[0x1E696AD98];
      v17 = objc_msgSend_code(v7, v15, v16);
      v19 = objc_msgSend_numberWithInteger_(v14, v18, v17);
      v21 = objc_msgSend_containsObject_(v13, v20, v19);

      if (!v21)
      {
        goto LABEL_7;
      }

      v11 = v10;
      v10 = v7;
    }

LABEL_7:
    v24 = objc_msgSend_userInfo(v7, v22, v23);
    v26 = objc_msgSend_objectForKeyedSubscript_(v24, v25, v5);

    v7 = v26;
  }

  while (v26);
  if (v10)
  {
    v27 = objc_msgSend_code(v10, v8, v9);
    v30 = objc_msgSend_userInfo(v10, v28, v29);
    v32 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(CKPrettyError, v31, @"CKInternalErrorDomain", v27, v30, a1, 0, 0, 0);

    goto LABEL_11;
  }

LABEL_10:
  v32 = a1;
LABEL_11:

  return v32;
}

id sub_188432958(void *a1, const char *a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_domain(a1, a2, a3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, @"CKInternalErrorDomain");

  if (isEqualToString && objc_msgSend_code(a1, v7, v8) == 2056)
  {
    v12 = @"CKUserDidResetEncryptedData";
    v13[0] = MEMORY[0x1E695E118];
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v13, &v12, 1);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t CKErrorCodeForUnderlyingErrorCode(uint64_t a1, const char *a2, uint64_t a3)
{
  result = 1;
  if (a1 <= 2999)
  {
    if (a1 <= 1999)
    {
      switch(a1)
      {
        case 1000:
        case 1001:
        case 1003:
        case 1005:
        case 1015:
        case 1023:
        case 1024:
        case 1027:
        case 1028:
        case 1050:
        case 1051:
        case 1052:
          return result;
        case 1002:
        case 1018:
        case 1030:
          return 9;
        case 1004:
          return 115;
        case 1006:
        case 1007:
        case 1009:
        case 1017:
        case 1021:
          return 12;
        case 1008:
          return 6;
        case 1010:
        case 1029:
          return 36;
        case 1011:
          return 2;
        case 1012:
          return 3;
        case 1013:
          goto LABEL_53;
        case 1014:
          return 5;
        case 1016:
          return 21;
        case 1019:
          return 24;
        case 1020:
          return 27;
        case 1022:
          return 14;
        case 1025:
          return 130;
        case 1026:
          return 131;
        case 1031:
        case 1032:
        case 1033:
        case 1034:
        case 1035:
        case 1036:
        case 1037:
        case 1038:
        case 1039:
        case 1040:
        case 1041:
        case 1042:
        case 1043:
        case 1044:
        case 1045:
        case 1046:
        case 1047:
        case 1048:
        case 1049:
          goto LABEL_81;
        default:
          if (!a1)
          {
            return result;
          }

          if (a1 == 1)
          {
            return 20;
          }

          goto LABEL_81;
      }
    }

    switch(a1)
    {
      case 2000:
      case 2001:
      case 2010:
      case 2021:
      case 2027:
      case 2028:
      case 2032:
      case 2033:
      case 2034:
      case 2039:
      case 2041:
      case 2043:
      case 2044:
        return 15;
      case 2002:
      case 2009:
      case 2022:
      case 2030:
      case 2031:
        return 6;
      case 2003:
        return 11;
      case 2004:
      case 2017:
      case 2037:
        return 14;
      case 2005:
      case 2013:
      case 2014:
      case 2053:
      case 2054:
        return result;
      case 2006:
      case 2015:
      case 2016:
      case 2018:
      case 2019:
      case 2020:
      case 2049:
        return 12;
      case 2007:
      case 2051:
      case 2057:
        result = 10;
        break;
      case 2008:
      case 2061:
      case 2062:
      case 2063:
        goto LABEL_27;
      case 2011:
      case 2012:
      case 2047:
      case 2060:
        return 9;
      case 2023:
      case 2052:
        return 27;
      case 2024:
      case 2055:
        result = 22;
        break;
      case 2025:
        return 31;
      case 2026:
        return 21;
      case 2029:
        result = 23;
        break;
      case 2035:
      case 2038:
        result = 25;
        break;
      case 2036:
      case 2056:
        result = 26;
        break;
      case 2040:
        result = 34;
        break;
      case 2042:
        result = 28;
        break;
      case 2045:
        result = 29;
        break;
      case 2046:
        result = 30;
        break;
      case 2048:
        result = 32;
        break;
      case 2050:
        result = 100;
        break;
      default:
        goto LABEL_81;
    }

    return result;
  }

  if (a1 > 5999)
  {
    if (a1 <= 8999)
    {
      switch(a1)
      {
        case 8000:
        case 8002:
        case 8006:
        case 8010:
          return 15;
        case 8001:
        case 8003:
          return 12;
        case 8004:
          return 11;
        case 8005:
        case 8007:
        case 8008:
        case 8009:
        case 8012:
          return result;
        case 8011:
          return 9;
        case 8013:
        case 8014:
          return 33;
        default:
          if ((a1 - 7000) < 5)
          {
            return result;
          }

          if (a1 == 6000)
          {
            return 15;
          }

          goto LABEL_81;
      }
    }

    if (a1 <= 10999)
    {
      if (a1 <= 10002)
      {
        if ((a1 - 10000) < 3 || (a1 - 9000) < 2)
        {
          return result;
        }

LABEL_81:
        v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
        v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, "CKErrorCode CKErrorCodeForUnderlyingErrorCode(CKUnderlyingErrorCode)");
        objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v8, v7, @"CKError.m", 1269, @"No mapping exists for internal error code %ld", a1);

        return 1;
      }

      if (a1 <= 10004)
      {
        if (a1 == 10003)
        {
          return 20;
        }

        else
        {
          return 16;
        }
      }

      if (a1 != 10005)
      {
        if (a1 == 10006)
        {
          return 36;
        }

        goto LABEL_81;
      }

      return 12;
    }

    if (a1 > 11003)
    {
      if (a1 > 12999)
      {
        if (a1 == 13000)
        {
          return 180;
        }

        if (a1 == 13001)
        {
          return 31;
        }

        goto LABEL_81;
      }

      if (a1 != 11004)
      {
        if (a1 == 12000)
        {
          return 170;
        }

        goto LABEL_81;
      }
    }

    else
    {
      if (a1 > 11001)
      {
        if (a1 == 11002)
        {
          return 37;
        }

        return 12;
      }

      if (a1 == 11000)
      {
        return 15;
      }
    }

    return 27;
  }

  switch(a1)
  {
    case 5000:
    case 5001:
    case 5002:
    case 5003:
    case 5004:
    case 5005:
    case 5007:
    case 5010:
    case 5016:
    case 5017:
    case 5018:
    case 5019:
    case 5020:
    case 5023:
      return result;
    case 5006:
      result = 110;
      break;
    case 5008:
    case 5009:
      result = 111;
      break;
    case 5011:
      result = 112;
      break;
    case 5012:
LABEL_27:
      result = 7;
      break;
    case 5013:
      result = 114;
      break;
    case 5014:
      return 36;
    case 5015:
      return 12;
    case 5021:
      result = 160;
      break;
    case 5022:
      result = 161;
      break;
    default:
      switch(a1)
      {
        case 3000:
        case 3001:
        case 3004:
        case 3007:
        case 3008:
        case 3015:
          return result;
        case 3002:
        case 3009:
          return 16;
        case 3003:
          result = 17;
          break;
        case 3005:
        case 3014:
          return 12;
        case 3006:
LABEL_53:
          result = 4;
          break;
        case 3010:
          result = 35;
          break;
        case 3011:
        case 3012:
          return 11;
        case 3013:
          result = 140;
          break;
        default:
          if ((a1 - 4000) >= 3)
          {
            goto LABEL_81;
          }

          break;
      }

      break;
  }

  return result;
}

BOOL CKOperationExecutionStateTransitionToFinished(void *a1, int *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  objc_msgSend_willChangeValueForKey_(v3, v4, @"isExecuting");
  objc_msgSend_willChangeValueForKey_(v3, v5, @"isFinished");
  os_unfair_lock_lock(&unk_1ED4B6780);
  v6 = *a2;
  if (*a2 == 2)
  {
    os_unfair_lock_unlock(&unk_1ED4B6780);
    objc_msgSend_didChangeValueForKey_(v3, v10, @"isExecuting");
    objc_msgSend_didChangeValueForKey_(v3, v11, @"isFinished");
  }

  else
  {
    *a2 = 2;
    os_unfair_lock_unlock(&unk_1ED4B6780);
    objc_msgSend_didChangeValueForKey_(v3, v7, @"isExecuting");
    objc_msgSend_didChangeValueForKey_(v3, v8, @"isFinished");
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v9 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138543362;
      v14 = v3;
      _os_log_debug_impl(&dword_1883EA000, v9, OS_LOG_TYPE_DEBUG, "Operation was marked as finished: %{public}@", &v13, 0xCu);
    }
  }

  return v6 != 2;
}

__CFString *CKErrorChainStringFromError(void *a1)
{
  v1 = CKErrorChainFromError(a1);
  v3 = v1;
  if (v1)
  {
    v4 = objc_msgSend_CKMap_(v1, v2, &unk_1EFA2EBE8);
    v6 = objc_msgSend_componentsJoinedByString_(v4, v5, @"_");
  }

  else
  {
    v6 = &stru_1EFA32970;
  }

  return v6;
}

id CKErrorChainFromError(void *a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      v51 = v11;
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      *buf = 138543618;
      v62 = v53;
      v63 = 2112;
      v64 = v1;
      _os_log_fault_impl(&dword_1883EA000, v51, OS_LOG_TYPE_FAULT, "Trying to get an error chain from a non-NSError (%{public}@): %@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v2 = v1;
  v5 = objc_msgSend_domain(v2, v3, v4);
  if (objc_msgSend_isEqualToString_(v5, v6, @"CKErrorDomain") && objc_msgSend_code(v2, v7, v8) == 2)
  {

LABEL_13:
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = v2;
    v18 = objc_msgSend_userInfo(v2, v9, v10);
    v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"CKPartialErrors");
    v23 = objc_msgSend_allValues(v20, v21, v22);

    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v55, v60, 16);
    if (!v25)
    {
LABEL_25:

      v2 = v54;
      goto LABEL_31;
    }

    v28 = v25;
    v29 = *v56;
LABEL_15:
    v30 = 0;
    while (1)
    {
      if (*v56 != v29)
      {
        objc_enumerationMutation(v23);
      }

      v31 = *(*(&v55 + 1) + 8 * v30);
      v32 = objc_msgSend_domain(v31, v26, v27);
      if (objc_msgSend_isEqualToString_(v32, v33, @"CKErrorDomain") && objc_msgSend_code(v31, v34, v35) == 22)
      {
      }

      else
      {
        v36 = objc_msgSend_domain(v31, v34, v35);
        if ((objc_msgSend_isEqualToString_(v36, v37, @"CKInternalErrorDomain") & 1) == 0)
        {

LABEL_28:
          v41 = v31;

          if (v41 != v54)
          {
            v12 = CKErrorChainFromError(v41);
            v2 = v41;
            goto LABEL_34;
          }

          v2 = v41;
          goto LABEL_31;
        }

        v40 = objc_msgSend_code(v31, v38, v39);

        if (v40 != 2024)
        {
          goto LABEL_28;
        }
      }

      if (v28 == ++v30)
      {
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v55, v60, 16);
        if (v28)
        {
          goto LABEL_15;
        }

        goto LABEL_25;
      }
    }
  }

  v13 = objc_msgSend_domain(v2, v7, v8);
  if ((objc_msgSend_isEqualToString_(v13, v14, @"CKInternalErrorDomain") & 1) == 0)
  {

    goto LABEL_31;
  }

  v17 = objc_msgSend_code(v2, v15, v16);

  if (v17 == 1011)
  {
    goto LABEL_13;
  }

LABEL_31:
  v59 = v2;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, &v59, 1);
  v44 = objc_msgSend_userInfo(v2, v42, v43);
  v46 = objc_msgSend_objectForKeyedSubscript_(v44, v45, *MEMORY[0x1E696AA08]);
  v47 = CKErrorChainFromError(v46);

  if (v47)
  {
    v49 = objc_msgSend_arrayByAddingObjectsFromArray_(v12, v48, v47);

    v12 = v49;
  }

LABEL_34:
LABEL_35:

  return v12;
}

id sub_1884337A0(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = objc_msgSend_CKStringForWellKnownCKErrors(v2, v3, v4);
  v7 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v5, v6, @" ", &stru_1EFA32970);

  if (!v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_msgSend_code(v2, v8, v9);
    v7 = objc_msgSend_stringWithFormat_(v10, v12, @"%ld", v11);
  }

  v13 = MEMORY[0x1E696AEC0];
  v14 = objc_msgSend_domain(v2, v8, v9);
  v16 = objc_msgSend_stringWithFormat_(v13, v15, @"%@.%@", v14, v7);

  return v16;
}

__CFString *stringForCKUnderlyingErrorCode(uint64_t a1)
{
  if (a1 <= 2999)
  {
    if (a1 <= 1999)
    {
      switch(a1)
      {
        case 1000:
          return @"GenericError";
        case 1001:
          return @"NotImplemented";
        case 1002:
          return @"NoAccountExists";
        case 1003:
          return @"AccountMoved";
        case 1004:
          return @"AuthenticationSkipped";
        case 1005:
          return @"ParseError";
        case 1006:
          return @"BadValueClass";
        case 1007:
          return @"InvalidRecordBatch";
        case 1008:
          return @"FailedIDFetch";
        case 1009:
          return @"InvalidPredicate";
        case 1010:
          return @"UserRejectedLogin";
        case 1011:
          return @"PartialFailure";
        case 1012:
          return @"NetworkUnavailable";
        case 1013:
          return @"NetworkFailure";
        case 1014:
          return @"BadContainer";
        case 1015:
          return @"NoPushToken";
        case 1016:
          return @"ChangeTokenExpired";
        case 1017:
          return @"InvalidArguments";
        case 1018:
          return @"AccountAccessRestricted";
        case 1019:
          return @"BadDatabase";
        case 1020:
          return @"BatchTooLarge";
        case 1021:
          return @"AssetSaveFailed";
        case 1022:
          return @"ParticipantsListConflict";
        case 1023:
          return @"AppDisabledInSettings";
        case 1024:
          return @"AppNotInAppStore";
        case 1025:
          return @"XPCActivityNotContinue";
        case 1026:
          return @"XPCActivityShouldDefer";
        case 1027:
          return @"SQLiteError";
        case 1028:
          return @"SQLiteValidationError";
        case 1029:
          return @"AccountUnavailableDueToBadAuthToken";
        case 1030:
          return @"InvalidDSID";
        case 1031:
        case 1032:
        case 1033:
        case 1034:
        case 1035:
        case 1036:
        case 1037:
        case 1038:
        case 1039:
        case 1040:
        case 1041:
        case 1042:
        case 1043:
        case 1044:
        case 1045:
        case 1046:
        case 1047:
        case 1048:
        case 1049:
          return @"Unknown Error";
        case 1050:
          return @"NoMatchingRow";
        case 1051:
          return @"NoUniqueRow";
        case 1052:
          return @"GroupExists";
        default:
          if (a1)
          {
            if (a1 != 1)
            {
              return @"Unknown Error";
            }

            result = @"Cancelled";
          }

          else
          {
            result = @"Success";
          }

          break;
      }
    }

    else
    {
      switch(a1)
      {
        case 2000:
          result = @"ServerInternalError";
          break;
        case 2001:
          result = @"ServerHTTPError";
          break;
        case 2002:
          result = @"ServerOverloaded";
          break;
        case 2003:
          result = @"ObjectNotFound";
          break;
        case 2004:
          result = @"OpLockFailed";
          break;
        case 2005:
          result = @"ClientInternalError";
          break;
        case 2006:
          result = @"BadSyntax";
          break;
        case 2007:
          result = @"Forbidden";
          break;
        case 2008:
          result = @"Throttled";
          break;
        case 2009:
          result = @"ServerThrottled";
          break;
        case 2010:
          result = @"Refused";
          break;
        case 2011:
          result = @"AuthTokenError";
          break;
        case 2012:
          result = @"AuthenticationNeeded";
          break;
        case 2013:
          result = @"ExpiredAppConfig";
          break;
        case 2014:
          result = @"ExpiredGlobalConfig";
          break;
        case 2015:
          result = @"FieldNotQueryable";
          break;
        case 2016:
          result = @"FieldNotSortable";
          break;
        case 2017:
          result = @"ObjectAlreadyExists";
          break;
        case 2018:
          result = @"BadKeyName";
          break;
        case 2019:
          result = @"BadFieldValue";
          break;
        case 2020:
          result = @"BadIdentifier";
          break;
        case 2021:
          result = @"FieldsPerTypeExceeded";
          break;
        case 2022:
          result = @"ServerBusy";
          break;
        case 2023:
          result = @"LimitExceeded";
          break;
        case 2024:
          result = @"AtomicFailure";
          break;
        case 2025:
          result = @"ValidatingReferenceFailure";
          break;
        case 2026:
          result = @"ContainerReset";
          break;
        case 2027:
          result = @"NotSupported";
          break;
        case 2028:
          result = @"AlreadyShared";
          break;
        case 2029:
          result = @"ZoneBusy";
          break;
        case 2030:
          result = @"ZoneUnavailable";
          break;
        case 2031:
          result = @"ContainerUnavailable";
          break;
        case 2032:
          result = @"DuplicateSubscription";
          break;
        case 2033:
          result = @"EmailOutOfNetwork";
          break;
        case 2034:
          result = @"ExpiredPutReceipt";
          break;
        case 2035:
          result = @"QuotaExceeded";
          break;
        case 2036:
          result = @"ZoneNotFound";
          break;
        case 2037:
          result = @"PCSOplockFailed";
          break;
        case 2038:
          result = @"AssetTooLarge";
          break;
        case 2039:
          result = @"DeviceNotSupported";
          break;
        case 2040:
          result = @"RequestAlreadyProcessed";
          break;
        case 2041:
          result = @"StaleRecordUpdate";
          break;
        case 2042:
          result = @"UserDeletedData";
          break;
        case 2043:
          result = @"ShareParticipantMissing";
          break;
        case 2044:
          result = @"InvalidPCSChain";
          break;
        case 2045:
          result = @"TooManyParticipants";
          break;
        case 2046:
          result = @"HierarchyAlreadyShared";
          break;
        case 2047:
          result = @"U13Restricted";
          break;
        case 2048:
          result = @"ManagedAppleIDRestricted";
          break;
        case 2049:
          result = @"InvalidEmailAddress";
          break;
        case 2050:
          result = @"RecordArchived";
          break;
        case 2051:
          result = @"DatabaseAccessDenied";
          break;
        case 2052:
          result = @"ParentHierarchyDepthLimitExceeded";
          break;
        case 2053:
          result = @"ZonePCSUserIdentityUnknown";
          break;
        case 2054:
          result = @"ManagedAppleIdBackupBlocked";
          break;
        case 2055:
          result = @"RetryableModificationFailure";
          break;
        case 2056:
          result = @"UserDidResetEncryptedData";
          break;
        case 2057:
          result = @"ShareRegionUnsupported";
          break;
        case 2060:
          result = @"a2aSignatureValidationError";
          break;
        case 2061:
          result = @"ThrottledByHTTP503";
          break;
        case 2062:
          result = @"ThrottledByHTTP429";
          break;
        case 2063:
          result = @"ThrottledByServer";
          break;
        default:
          return @"Unknown Error";
      }
    }

    return result;
  }

  if (a1 <= 5999)
  {
    if (a1 <= 4001)
    {
      switch(a1)
      {
        case 3000:
          result = @"MMCSChunkingError";
          break;
        case 3001:
          result = @"MMCSGenericError";
          break;
        case 3002:
          result = @"MMCSItemNotFound";
          break;
        case 3003:
          result = @"MMCSItemModified";
          break;
        case 3004:
          result = @"MMCSAuthMissing";
          break;
        case 3005:
          result = @"PutReceiptExpired";
          break;
        case 3006:
          result = @"MMCSItemStale";
          break;
        case 3007:
          result = @"MMCSDiscQuotaExceeded";
          break;
        case 3008:
          result = @"MMCSNoSpaceLeftOnDevice";
          break;
        case 3009:
          result = @"MMCSItemNotValid";
          break;
        case 3010:
          result = @"MMCSItemNotAvailable";
          break;
        case 3011:
          result = @"ReferencedAssetNotFound";
          break;
        case 3012:
          result = @"RepairAssetSignatureMismatch";
          break;
        case 3013:
          result = @"MMCSInsufficientDiskSpace";
          break;
        case 3014:
          result = @"ParticipantIDMismatch";
          break;
        case 3015:
          result = @"AssetHandleUnregistered";
          break;
        default:
          if (a1 == 4000)
          {
            result = @"CouldntInitializeMescal";
          }

          else
          {
            if (a1 != 4001)
            {
              return @"Unknown Error";
            }

            result = @"BadSignature";
          }

          break;
      }
    }

    else
    {
      switch(a1)
      {
        case 5000:
          result = @"PCSNoPublicIdentity";
          break;
        case 5001:
          result = @"CouldntFetchPCSData";
          break;
        case 5002:
          result = @"CouldntSavePCSData";
          break;
        case 5003:
          result = @"CouldntWrapPCSData";
          break;
        case 5004:
          result = @"PCSDecryptFailed";
          break;
        case 5005:
          result = @"CouldntCreatePCSData";
          break;
        case 5006:
          result = @"iCDPRequired";
          break;
        case 5007:
          result = @"PCSDataNotFoundLocally";
          break;
        case 5008:
          result = @"UnsyncedKeychain";
          break;
        case 5009:
          result = @"KeyRegistrySyncFailed";
          break;
        case 5010:
          result = @"RequiredPCSDataNotFoundLocally";
          break;
        case 5011:
          result = @"MissingManateeIdentity";
          break;
        case 5012:
          result = @"PCSKeySyncStateThrottled";
          break;
        case 5013:
          result = @"WalrusEnabled";
          break;
        case 5014:
          result = @"WalrusIdentityICDPRequired";
          break;
        case 5015:
          result = @"MissingAnonymousID";
          break;
        case 5016:
          result = @"PerRecordPCSKeyRollFailed";
          break;
        case 5017:
          result = @"ZoneishPCSKeyRollFailed";
          break;
        case 5018:
          result = @"ZonePCSKeyRollFailed";
          break;
        case 5019:
          result = @"SharePCSKeyRollFailed";
          break;
        case 5020:
          result = @"GenericPCSKeyRollFailed";
          break;
        case 5021:
          result = @"IncompatibleOSVersion";
          break;
        case 5022:
          result = @"SignatureValidationFailed";
          break;
        case 5023:
          result = @"SignatureCreationFailed";
          break;
        default:
          if (a1 != 4002)
          {
            return @"Unknown Error";
          }

          result = @"MescalNotInitialized";
          break;
      }
    }

    return result;
  }

  if (a1 > 8999)
  {
    if (a1 <= 10005)
    {
      if (a1 > 10001)
      {
        if (a1 > 10003)
        {
          if (a1 == 10004)
          {
            return @"UploadRequestInvalidRetrievedAsset";
          }

          else
          {
            return @"UploadRequestZeroLengthAsset";
          }
        }

        else if (a1 == 10002)
        {
          return @"UploadRequestInvalidStateTransition";
        }

        else
        {
          return @"UploadRequestTryAgainLater";
        }
      }

      if (a1 > 9999)
      {
        if (a1 == 10000)
        {
          return @"UploadRequestCacheOpenFailed";
        }

        else
        {
          return @"UploadRequestNotEnoughSpace";
        }
      }

      if (a1 == 9000)
      {
        return @"PCCServerDidNotSendAttestation";
      }

      if (a1 == 9001)
      {
        return @"PCCAttestationVerificationFailed";
      }
    }

    else if (a1 <= 11002)
    {
      if (a1 > 11000)
      {
        if (a1 == 11001)
        {
          return @"ShareAccessRequestLimitExceeded";
        }

        else
        {
          return @"ShareAcceptRequired";
        }
      }

      if (a1 == 10006)
      {
        return @"DBRAccountNeedsReauthentication";
      }

      if (a1 == 11000)
      {
        return @"ShareAccessRequestError";
      }
    }

    else if (a1 <= 11999)
    {
      if (a1 == 11003)
      {
        return @"BlockedIdentityCannotBeParticipant";
      }

      if (a1 == 11004)
      {
        return @"BlockListLimitExceeded";
      }
    }

    else
    {
      switch(a1)
      {
        case 12000:
          return @"CloudCoreSessionNoLongerValid";
        case 13000:
          return @"ZoneAncestryOpLockFailed";
        case 13001:
          return @"CKUnderylingErrorOwningReferenceFailure";
      }
    }

    return @"Unknown Error";
  }

  if (a1 <= 7002)
  {
    if (a1 > 7000)
    {
      if (a1 == 7001)
      {
        return @"PackageDBBusy";
      }

      else
      {
        return @"PackageDBCopyFailed";
      }
    }

    if (a1 == 6000)
    {
      return @"PluginError";
    }

    if (a1 == 7000)
    {
      return @"PackageDBOpenFailed";
    }

    return @"Unknown Error";
  }

  switch(a1)
  {
    case 8000:
      result = @"EmailVettingRequired";
      break;
    case 8001:
      result = @"EmailVettingFailed";
      break;
    case 8002:
      result = @"EmailVettingTokenInvalid";
      break;
    case 8003:
      result = @"EmailVettingRecordInvalid";
      break;
    case 8004:
      result = @"EmailVettingRecordMissing";
      break;
    case 8005:
      result = @"EmailVettingEmailMismatch";
      break;
    case 8006:
      result = @"EmailVettingAccountDenied";
      break;
    case 8007:
      result = @"EmailVettingVettedToCaller";
      break;
    case 8008:
      result = @"EmailVettingVettedToOther";
      break;
    case 8009:
      result = @"EmailVettingDryrunKeyswapFailed";
      break;
    case 8010:
      result = @"EmailVettingServerError";
      break;
    case 8011:
      result = @"EmailVettingTokenAuthFailed";
      break;
    case 8012:
      result = @"EmailVettingForcedShareMetedataFetchFailed";
      break;
    case 8013:
      result = @"OONMetadataWithheld";
      break;
    case 8014:
      result = @"OONUserUnsupported";
      break;
    default:
      if (a1 == 7003)
      {
        result = @"PackageDBCheckpointFailed";
      }

      else
      {
        if (a1 != 7004)
        {
          return @"Unknown Error";
        }

        result = @"PackageDBCloseFailed";
      }

      break;
  }

  return result;
}

void sub_1884350BC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    source = v1[46];
    v2 = v1[46];
    v1[46] = 0;

    objc_sync_exit(v1);
    v3 = source;
    if (source)
    {
      dispatch_source_cancel(source);
      v3 = source;
    }
  }
}

void sub_188435294(void *a1)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    if ((*(obj + 260) & 1) == 0)
    {
      dispatch_group_leave(obj[31]);
      *(obj + 260) = 1;
    }

    objc_sync_exit(obj);
  }
}

int *sub_188435320(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    v9 = sub_18843BD9C(v7, v8);
    v10 = 138543874;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    v14 = 2114;
    v15 = v9;
    _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "Placeholder op <%{public}@: %p; %{public}@> finishing in main", &v10, 0x20u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return CKOperationExecutionStateTransitionToFinished(result, result + 64);
  }

  return result;
}

uint64_t sub_188435A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_188404C04();
  a17 = v19;
  a18 = v20;
  sub_1883F653C();
  a16 = v18;
  sub_188402EBC(*(v18 + 40) + 16);
  Strong = swift_weakLoadStrong();
  *(v18 + 48) = Strong;
  if (Strong)
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v22 = type metadata accessor for Logger();
    sub_1883FDE5C(v22, qword_1EA90C9F8);
    sub_1883FEFE0();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = sub_1883F9984();
      v26 = sub_1883FE540();
      a9 = v26;
      *v25 = 136315138;

      v27 = sub_1883FE43C();
      v29 = v28;

      v30 = sub_1883FE340(v27, v29, &a9);

      *(v25 + 4) = v30;
      sub_1883FDDA4();
      _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
      sub_1883FE944(v26);
      sub_1883F7B60();
      sub_1883FD784();
    }

    sub_1884022BC();
    sub_1883F6548();

    return MEMORY[0x1EEE6DFA0](v36, v37, v38);
  }

  else
  {
    sub_1883F816C();
    sub_1883F6548();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
  }
}

uint64_t sub_188435C4C()
{
  sub_1883F7120();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1884CDC9C(v1);

  return sub_188435CE4(v2, v3);
}

uint64_t sub_188435D04()
{
  sub_1883F7120();
  v1[8] = v0;
  v2 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  sub_1883F8AE4(v2);
  v1[9] = sub_188406FFC();
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[11] = v3;
  sub_1883F8620(v3);
  v1[12] = v4;
  v1[13] = sub_188406FFC();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v5 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_188435E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883FD7A0();
  sub_1883FC738();
  v13 = v12[10];
  v14 = v12[11];
  v15 = v12[8];
  v16 = OBJC_IVAR____TtC8CloudKit10SyncEngine_lastForegroundTriggeredFetchDate;
  sub_1883FF050();
  swift_beginAccess();
  sub_18841D168(v15 + v16, v13, &unk_1EA90D7B0, &dword_1886F8780);
  if (sub_1883F971C(v13, 1, v14) == 1)
  {
    sub_1883F9FEC(v12[10], &unk_1EA90D7B0, &dword_1886F8780);
LABEL_7:
    v33 = v12[11];
    v34 = v12[9];
    [*(*(v12[8] + 128) + 16) setNeedsToFetchDatabaseChanges:1 postStateUpdate:0];
    static Date.now.getter();
    sub_1883F90F4(v34, 0, 1, v33);
    swift_beginAccess();
    sub_188436394(v34, v15 + v16, &unk_1EA90D7B0, &dword_1886F8780);
    swift_endAccess();
    v35 = swift_task_alloc();
    v12[16] = v35;
    *v35 = v12;
    v35[1] = sub_1884E50C0;
    sub_1883F9968();

    return sub_1884363E0();
  }

  v17 = v12[14];
  v18 = v12[12];
  v19 = v12[11];
  (*(v18 + 32))(v12[15], v12[10], v19);
  sub_188427384(55.0, 77.0);
  static Date.+ infix(_:_:)();
  static Date.now.getter();
  sub_1883F7E8C();
  v20 = static Date.< infix(_:_:)();
  v21 = *(v18 + 8);
  v22 = sub_1883FB5D4();
  v21(v22);
  (v21)(v17, v19);
  v23 = sub_1883F84DC();
  v21(v23);
  if ((v20 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1883F816C();
  sub_1883F9968();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_188436394(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_18840378C(a1, a2, a3, a4);
  sub_1883F7B50();
  v5 = sub_1883F7EE0();
  v6(v5);
  return v4;
}

uint64_t sub_1884363E0()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1884364AC, v0, 0);
}

uint64_t sub_1884364AC()
{
  sub_1883F7120();
  if (sub_188403050())
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v0, v1, v2);
  }

  else
  {
    sub_1883F816C();

    return v3();
  }
}

uint64_t sub_188436818()
{
  sub_1883F78E0();
  v1 = v0[2].opaque[1];
  v0[1].opaque[1] = 0;
  v0[1].opaque[0] = 0;
  v2 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v3 = _os_activity_create(&dword_1883EA000, "engine/fetch-on-foreground", v2, OS_ACTIVITY_FLAG_DEFAULT);
  v0[3].opaque[0] = v3;
  os_activity_scope_enter(v3, v0 + 1);
  v4 = swift_task_alloc();
  v0[3].opaque[1] = v4;
  *v4 = v0;
  v4[1] = sub_1884F0774;
  v5 = v0[2].opaque[0];

  return sub_188437064(v4, v5, v1);
}

id sub_188436D5C(void *a1, const char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_expressionType(a1, a2, a3);
  if (v4 <= 2)
  {
    if (!v4)
    {
      v7 = objc_msgSend_constantValue(a1, v5, v6);
      goto LABEL_18;
    }

    if (v4 == 2)
    {
      v7 = objc_msgSend_variable(a1, v5, v6);
LABEL_18:
      v20 = v7;
      goto LABEL_19;
    }

LABEL_22:
    v22 = [CKException alloc];
    v23 = *MEMORY[0x1E695D940];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v27 = objc_msgSend_initWithName_format_(v22, v26, v23, @"Unexpected expression: %@", v25);
    v28 = v27;

    objc_exception_throw(v27);
  }

  if (v4 == 3)
  {
    v7 = objc_msgSend_keyPath(a1, v5, v6);
    goto LABEL_18;
  }

  if (v4 != 14)
  {
    goto LABEL_22;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = objc_msgSend_collection(a1, v5, v6);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v29, v33, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v8);
        }

        if (objc_msgSend_expressionType(*(*(&v29 + 1) + 8 * i), v11, v12))
        {
          goto LABEL_22;
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v29, v33, 16);
    }

    while (v13);
  }

  v18 = objc_msgSend_collection(a1, v16, v17);
  v20 = objc_msgSend_valueForKeyPath_(v18, v19, @"constantValue");

LABEL_19:

  return v20;
}

uint64_t CKValueIsAcceptablePredicateClass(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = CKAcceptablePredicateValueClasses();
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v9, v13, 16);
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_opt_isKindOfClass())
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v7, &v9, v13, 16);
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

uint64_t sub_188437064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[58] = a2;
  v3[59] = a3;
  v4 = type metadata accessor for ContinuousClock();
  v3[60] = v4;
  v3[61] = *(v4 - 8);
  v3[62] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_188437124, 0, 0);
}

uint64_t sub_188437124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1883FB4E4();
  sub_1883F653C();
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480(&qword_1EA90C9F0);
  }

  v12 = *(v10 + 464);
  v13 = type metadata accessor for Logger();
  sub_1883F85F4(v13, qword_1EA90C9F8);

  v14 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FF744();
  if (sub_1883F9084())
  {
    sub_1883F9984();
    sub_1883F8C00();
    sub_1883FF2D4();
    *v12 = 136315138;
    v15 = sub_1883FE43C();
    sub_1883FC788(v15, v16, v17, v18);
    sub_1883FE2FC();
    *(v12 + 4) = v11;
    sub_1883F831C();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    sub_1883F8EAC();
    sub_1883F82B8();
  }

  static Duration.seconds(_:)();
  static Clock<>.continuous.getter();
  sub_1883F7B10(&dword_1886FB5C0);
  v35 = v24;
  v25 = swift_task_alloc();
  *(v10 + 504) = v25;
  *v25 = v10;
  v25[1] = sub_1884F0A4C;
  sub_1883FE860();
  sub_1883FF050();
  sub_1883F614C();

  return v31(v26, v27, v28, v29, v30, v31, v32, v33, v35, a10);
}

uint64_t sub_188437458()
{
  v0 = objc_opt_new();
  v1 = qword_1ED4B6110;
  qword_1ED4B6110 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

__CFString *CKCreateGUID()
{
  v0 = CFUUIDCreate(0);
  v1 = CFUUIDCreateString(0, v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t sub_188437CC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_1883FDE5C(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t CKDPRecordIdentifierReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41 & 0x7F) << v10;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPIdentifier);
        objc_storeStrong((a1 + 8), v32);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom(v32, a2, v33))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = objc_alloc_init(CKDPRecordZoneIdentifier);
    objc_storeStrong((a1 + 16), v32);
    v41 = 0;
    v42 = 0;
    if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom(v32, a2, v34))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPIdentifierReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v60 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60 & 0x7F) << v10;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v61 = 0;
          v38 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
          {
            v46 = objc_msgSend_data(a2, v41, v42);
            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, &v61, v49, 1);

            v53 = objc_msgSend_position(a2, v51, v52);
            objc_msgSend_setPosition_(a2, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v41, v42);
          }

          v37 |= (v61 & 0x7F) << v35;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_34;
          }
        }

        v55 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v37;
LABEL_34:
        *(a1 + 16) = v55;
      }

      else if (v32 == 1)
      {
        v33 = PBReaderReadString();
        v34 = *(a1 + 8);
        *(a1 + 8) = v33;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v57 = objc_msgSend_position(a2, v32, v9);
    }

    while (v57 < objc_msgSend_length(a2, v58, v59));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRecordZoneIdentifierReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v61[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v61[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v61, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v61[0] & 0x7F) << v10;
        if ((v61[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v39 = objc_msgSend_position(a2, v32, v9, v61[0]) + 1;
          if (v39 >= objc_msgSend_position(a2, v40, v41) && (v44 = objc_msgSend_position(a2, v42, v43) + 1, v44 <= objc_msgSend_length(a2, v45, v46)))
          {
            v47 = objc_msgSend_data(a2, v42, v43);
            v50 = objc_msgSend_position(a2, v48, v49);
            objc_msgSend_getBytes_range_(v47, v51, v61, v50, 1);

            v54 = objc_msgSend_position(a2, v52, v53);
            objc_msgSend_setPosition_(a2, v55, v54 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v42, v43);
          }

          v38 |= (v61[0] & 0x7F) << v36;
          if ((v61[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v30 = v37++ >= 9;
          if (v30)
          {
            v56 = 0;
            goto LABEL_39;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v56 = 0;
        }

        else
        {
          v56 = v38;
        }

LABEL_39:
        *(a1 + 8) = v56;
        goto LABEL_40;
      }

      if (v32 == 2)
      {
        v33 = objc_alloc_init(CKDPIdentifier);
        v34 = 16;
      }

      else
      {
        if (v32 != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_40;
        }

        v33 = objc_alloc_init(CKDPIdentifier);
        v34 = 24;
      }

      objc_storeStrong((a1 + v34), v33);
      v61[0] = 0;
      v61[1] = 0;
      if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom(v33, a2, v35))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_40:
      v57 = objc_msgSend_position(a2, v32, v9);
    }

    while (v57 < objc_msgSend_length(a2, v58, v59));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRecordReferenceReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v60[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v60[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60[0] & 0x7F) << v10;
        if ((v60[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v54 = objc_alloc_init(CKDPRecordIdentifier);
        objc_storeStrong((a1 + 8), v54);
        v60[0] = 0;
        v60[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom(v54, a2, v55))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v32 == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v60[0]) = 0;
          v36 = objc_msgSend_position(a2, v32, v9, v60[0]) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, v60, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v60[0] & 0x7F) << v33;
          if ((v60[0] & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_36;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v53 = 0;
        }

        else
        {
          v53 = v35;
        }

LABEL_36:
        *(a1 + 16) = v53;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v56 = objc_msgSend_position(a2, v32, v9);
    }

    while (v56 < objc_msgSend_length(a2, v57, v58));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

id sub_188438A30(void *a1)
{
  if (__sTestOverridesAvailable == 1)
  {
    v2 = a1;
  }

  else
  {
    v3 = NSHomeDirectory();
    v2 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(a1, v4, v3, @"~");
  }

  return v2;
}

uint64_t CKPersonaPerformBlock(void *a1, uint64_t a2)
{
  if (a1)
  {
    return objc_msgSend_performBlock_(a1, a2, a2);
  }

  else
  {
    return (*(a2 + 16))(a2, 0);
  }
}

void sub_188438C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188439230(uint64_t a1, const char *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 64))
    {
      v3 = objc_autoreleasePoolPush();
      v6 = objc_msgSend_logOperations(*(a1 + 8), v4, v5);
      v9 = v6;
      if ((*(a1 + 48) & 1) == 0)
      {
        *(a1 + 48) = 1;
        if (v6)
        {
          v10 = objc_msgSend_fetchedColumns(*(a1 + 64), v7, v8);
          v53 = objc_msgSend_componentsJoinedByString_(v10, v11, @", ");
          v14 = objc_msgSend_searchBindingsDescription(*(a1 + 64), v12, v13);
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v19 = ck_log_facility_sql;
          if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
          {
            v20 = *(a1 + 64);
            v21 = v19;
            v24 = objc_msgSend_label(v20, v22, v23);
            *buf = 138544642;
            v57 = v16;
            v58 = 2048;
            v59 = a1;
            v60 = 2114;
            v61 = v18;
            v62 = 2114;
            v63 = v24;
            v64 = 2114;
            v65 = v53;
            v66 = 2114;
            v67 = v14;
            _os_log_impl(&dword_1883EA000, v21, OS_LOG_TYPE_INFO, "%{public}@(%p): Begin enumeration of %{public}@ (label=%{public}@), FETCH (%{public}@) WHERE %{public}@", buf, 0x3Eu);
          }
        }
      }

      v25 = *(a1 + 64);
      v55 = 0;
      v26 = objc_msgSend_step_(v25, v7, &v55);
      v27 = v55;
      if (v26)
      {
        v30 = v27 == 0;
      }

      else
      {
        v30 = 0;
      }

      if (v30)
      {
        v36 = *(a1 + 8);
        v37 = *(a1 + 64);
        v54 = 0;
        v32 = objc_msgSend_newEntryObjectFromStatement_error_(v36, v28, v37, &v54);
        v31 = v54;
        v38 = *(a1 + 56);
        if (v38)
        {
          v39 = (*(v38 + 16))(v38, v32);

          v32 = v39;
        }

        objc_storeStrong((a1 + 40), v32);
        if (v9)
        {
          v42 = objc_msgSend_fetchedColumns(*(a1 + 64), v40, v41);
          v43 = objc_opt_class();
          v44 = NSStringFromClass(v43);
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v45 = ck_log_facility_sql;
          if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
          {
            v46 = v45;
            v47 = objc_opt_class();
            v49 = objc_msgSend_descriptionOfProperties_from_(v47, v48, v42, v32);
            *buf = 138543874;
            v57 = v44;
            v58 = 2048;
            v59 = a1;
            v60 = 2114;
            v61 = v49;
            _os_log_impl(&dword_1883EA000, v46, OS_LOG_TYPE_INFO, "%{public}@(%p): enumeration fetched: (%{public}@)", buf, 0x20u);
          }
        }
      }

      else
      {
        v31 = v27;
        objc_msgSend_invalidate(a1, v28, v29);
        v32 = *(a1 + 40);
        *(a1 + 40) = 0;
      }

      objc_autoreleasePoolPop(v3);
      if (!v31)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v31 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, a2, @"CKInternalErrorDomain", 1, @"Enumeration already finished");
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v35 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_FAULT))
      {
        v50 = *(a1 + 24);
        v51 = *(a1 + 16);
        v52 = *(a1 + 32);
        *buf = 138544386;
        v57 = v34;
        v58 = 2048;
        v59 = a1;
        v60 = 2114;
        v61 = v50;
        v62 = 2114;
        v63 = v51;
        v64 = 2114;
        v65 = v52;
        _os_log_fault_impl(&dword_1883EA000, v35, OS_LOG_TYPE_FAULT, "%{public}@(%p): Enumeration already finished. table: %{public}@ in group: %{public}@, error=%{public}@", buf, 0x34u);
      }

      if (!v31)
      {
        goto LABEL_31;
      }
    }

    objc_storeStrong((a1 + 32), v31);
    sub_18868114C(v31, *(a1 + 8), sel__nextObject);
LABEL_31:
  }
}