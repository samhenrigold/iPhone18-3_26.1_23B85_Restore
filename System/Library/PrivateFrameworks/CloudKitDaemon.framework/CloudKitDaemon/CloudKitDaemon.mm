void sub_225071A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225071C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v18);
  _Unwind_Resume(a1);
}

void sub_225071CB8(uint64_t a1, const char *a2, uint64_t a3)
{
  obj = objc_msgSend_container(*(a1 + 32), a2, a3);
  if (objc_msgSend_beginContentAccess(obj, v4, v5))
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      ++*(v6 + 64);
      v7 = *(a1 + 32);
      if (v7)
      {
        *(v7 + 8) = 0;
        v8 = *(a1 + 32);
        if (v8)
        {
          objc_storeStrong((v8 + 72), obj);
        }
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_2250722F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CKGetPersonaAwareCacheDirectory(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], a2, a3);
  objc_msgSend_isDataSeparated(v3, v4, v5);
  if (CKBoolFromCKTernary())
  {
    sub_225404AC8();
  }

  else
  {
    CKGetHomeCacheDir();
  }
  v6 = ;

  return v6;
}

id CKGetHomeCacheDir()
{
  if (qword_280D58620 != -1)
  {
    dispatch_once(&qword_280D58620, &unk_28385E980);
  }

  v1 = qword_280D58618;

  return v1;
}

uint64_t sub_225072BB0(uint64_t result)
{
  *(v2 - 136) = v1;
  *(v2 - 128) = result;
  *(v2 - 168) = MEMORY[0x277D85DD0];
  *(v2 - 160) = v3;
  return result;
}

uint64_t sub_225072C1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2250B0DFC(a3, a4);
}

void sub_225072C60()
{

  JUMPOUT(0x22AA62E50);
}

uint64_t sub_225072C88()
{

  return String.hash(into:)();
}

uint64_t sub_225072DC8(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2080;
  v3 = *(v1 + 152);
  sub_225073BAC((v1 + 128), v3);
  return v3;
}

id sub_225072F00(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  sub_225072D1C();
  v34 = v5;
  MEMORY[0x28223BE20](v6);
  sub_225072C00();
  v9 = v8 - v7;
  type metadata accessor for AnySessionConfiguration();
  sub_225072D1C();
  v35 = v11;
  v36 = v10;
  MEMORY[0x28223BE20](v10);
  sub_225072C00();
  v14 = v13 - v12;
  v15 = type metadata accessor for Entitlements();
  sub_225072D1C();
  v17 = v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v33 - v22;
  v24 = [v2 clientEntitlements];
  if (![a1 isCloudCoreSession])
  {
    return v24;
  }

  v33 = v24;
  if ([v2 cloudCoreClientEntitlements])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39[0] = v37;
  v39[1] = v38;
  if (!*(&v38 + 1))
  {
    sub_22507F168(v39, &qword_27D718AE0, &unk_225443AA0);
    CKLog.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22506F000, v30, v31, "No cached CloudCore Entitlements, can't create overlay", v32, 2u);
      MEMORY[0x22AA65DF0](v32, -1, -1);
    }

    (*(v34 + 8))(v9, v4);
    return v33;
  }

  sub_2250B28C8(v39, &v40);
  swift_dynamicCast();
  (*(v17 + 32))(v23, v21, v15);
  result = [a1 ckSessionConfiguration];
  if (result)
  {
    type metadata accessor for CKSessionConfiguration();
    swift_dynamicCastClassUnconditional();
    CKSessionConfiguration.anySessionConfiguration.getter();
    v26 = EntitlementsProtocol.ckCompatibilityOverlay(configuration:)();
    sub_22510792C(v26);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v28 = v33;
    v29 = [v33 entitlementsByAddingOverlay_];

    swift_unknownObjectRelease();
    (*(v35 + 8))(v14, v36);
    (*(v17 + 8))(v23, v15);
    return v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22507369C()
{
  v1 = v0;
  v2 = type metadata accessor for Entitlements.Error();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 xpcConnection];
  [v6 auditToken];

  v7 = v10[5];
  result = _s17CloudCoreInternal12EntitlementsV10auditTokenACSo0E8_token_ta_tAC5ErrorOYKcfC();
  if (v7)
  {
    sub_2250ED728();
    swift_allocError();
    return (*(v3 + 32))(v9, v5, v2);
  }

  return result;
}

uint64_t *sub_225073808(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2250738B0()
{
  v1 = v0;
  type metadata accessor for Logger();
  sub_225072D1C();
  MEMORY[0x28223BE20](v2);
  sub_225072C00();
  v3 = [v0 clientConnection];
  if (v3)
  {
    v4 = v3;
    v14 = type metadata accessor for Entitlements();
    sub_225073808(v13);
    sub_22507369C();

    v5 = v14;
    v6 = sub_225073BAC(v13, v14);
    v7 = *(v5 - 8);
    MEMORY[0x28223BE20](v6);
    sub_225072C00();
    v10 = v9 - v8;
    (*(v7 + 16))(v9 - v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_225073BF0(v13);
  }

  else
  {
    v11 = 0;
  }

  [v1 setCloudCoreClientEntitlements_];
  return swift_unknownObjectRelease();
}

void *sub_225073BAC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_225073BF0(void *a1)
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

id sub_225073C3C(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

uint64_t sub_225073E40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073E50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073E60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073E70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073E80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073E90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073EA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073EB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073EC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073ED0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073EE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073EF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073F00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073F10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073F20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073F30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073F40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073F50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073F60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073F70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073F80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073F90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073FA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073FB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073FC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073FD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073FE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225073FF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225074000(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225074010(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225074020(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225074030(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225074040(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225074050(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225074060(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225074070(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225074080(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225074090(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2250740A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2250740B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2250740C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2250740D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2250740E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2250740F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225074100(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225074110(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225074120(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225074130(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225074140(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225074150(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_225074160(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_225074170(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_22507419C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2250741AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2250741BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2250741CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2250741DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2250741EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2250741FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22507420C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22507421C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22507422C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22507448C(uint64_t result, const char *a2, uint64_t a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v4 = *(v3 + 64);
    if (v4)
    {
      *(v3 + 64) = v4 - 1;
      v6 = *(result + 32);
      if (v6)
      {
        objc_msgSend_endContentAccess(*(v6 + 72), a2, a3);
      }

      else
      {
        objc_msgSend_endContentAccess(0, a2, a3);
      }

      v9 = *(result + 32);
      if (v9)
      {
        if (!*(v9 + 64) && *(v9 + 9) == 1)
        {

          sub_225099E0C(v9, v7, v8);
        }
      }
    }
  }
}

uint64_t sub_2250746BC(void *a1, void *a2)
{
  v3 = a1;
  v6 = objc_msgSend_entitlements(a2, v4, v5);
  hasCloudKitSystemServiceEntitlement = objc_msgSend_hasCloudKitSystemServiceEntitlement(v6, v7, v8);

  if (hasCloudKitSystemServiceEntitlement & 1) != 0 || (v10 = MEMORY[0x277D262A0], v11 = v3, objc_msgSend_sharedConnection(v10, v12, v13), v14 = objc_claimAutoreleasedReturnValue(), isCloudSyncAllowed = objc_msgSend_isCloudSyncAllowed_(v14, v15, v11), v11, v14, (isCloudSyncAllowed))
  {
    v17 = 0;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *MEMORY[0x277CBC830];
    v17 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_INFO, "ManagedConfiguration is restricting account access", v20, 2u);
    }
  }

  return v17;
}

uint64_t sub_2250752B0()
{

  return swift_slowAlloc();
}

void sub_2250752E4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_225075304()
{

  return sub_2250FA03C(v0, type metadata accessor for PartialTrafficLog);
}

void sub_2250753E8(char a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [v1 options];
  v5 = [v4 isCloudCoreSession];

  if (v5)
  {
    sub_2250EFBB0();
    if (!v2 && (a1 & 1) == 0)
    {
      sub_2250EF41C();
      v7 = v6;
      sub_2250ECA2C();
    }
  }
}

void sub_22507556C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_22507558C()
{

  JUMPOUT(0x22AA62E50);
}

uint64_t sub_2250755D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;

  return type metadata accessor for PartialTrafficLog(0);
}

uint64_t sub_225075630(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_225075650(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t sub_225075670()
{

  return sub_22507C8C0(v0, 0, 1, v1);
}

id sub_225075CC8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (!v4)
  {
    v5 = objc_msgSend_accountStore(*(a1 + 32), a2, a3);
    v8 = objc_msgSend_aa_primaryAppleAccount(v5, v6, v7);
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v4 = *(*(*(a1 + 40) + 8) + 40);
  }

  return v4;
}

void sub_225075E4C(uint64_t a1, void *a2, void *a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  objc_msgSend_setCloudKitAuthToken_(WeakRetained, v8, v5);
  if (*MEMORY[0x277CBC810] == 1)
  {
    v11 = objc_msgSend_unitTestOverrides(WeakRetained, v9, v10);
    v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, @"TestContainerSpecificOpWithNoCloudKitTokenNoRetry");

    if (v13)
    {
      objc_msgSend_setCloudKitAuthToken_(WeakRetained, v14, 0);
      objc_msgSend_setDidRetryAuth_(WeakRetained, v16, 1);
LABEL_6:

      v5 = 0;
LABEL_7:
      v6 = 0;
      goto LABEL_33;
    }

    v17 = objc_msgSend_unitTestOverrides(WeakRetained, v14, v15);
    v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"TestAuthTokenRenewalFailsBecauseRenewedTokenIsStale");

    if (v19)
    {
      objc_msgSend_setCloudKitAuthToken_(WeakRetained, v20, 0);
      objc_msgSend_setDidRetryAuth_(WeakRetained, v22, 0);
      goto LABEL_6;
    }

    v23 = objc_msgSend_unitTestOverrides(WeakRetained, v20, v21);
    v25 = objc_msgSend_objectForKeyedSubscript_(v23, v24, @"TestNoCloudKitTokenInURLRequestNoRetry");

    if (v25)
    {
      objc_msgSend_setCloudKitAuthToken_(WeakRetained, v26, 0);
      objc_msgSend_setDidRetryAuth_(WeakRetained, v28, 1);

      goto LABEL_7;
    }

    if ((objc_msgSend_didRetryAuth(WeakRetained, v26, v27) & 1) != 0 || (objc_msgSend_unitTestOverrides(WeakRetained, v29, v30), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v31, v32, @"TestContainerSpecificOpWithBadCloudKitToken"), v33 = objc_claimAutoreleasedReturnValue(), v33, v31, !v33))
    {
      if ((objc_msgSend_didRetryAuth(WeakRetained, v29, v30) & 1) != 0 || (objc_msgSend_unitTestOverrides(WeakRetained, v36, v37), v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v38, v39, @"TestForceAuthTokenRefresh"), v40 = objc_claimAutoreleasedReturnValue(), v40, v38, !v40))
      {
        if ((objc_msgSend_didFetchNilAuthToken(WeakRetained, v36, v37) & 1) == 0)
        {
          v43 = objc_msgSend_unitTestOverrides(WeakRetained, v9, v10);
          v45 = objc_msgSend_objectForKeyedSubscript_(v43, v44, @"TestContainerSpecificOpWithNoCloudKitToken");

          if (v45)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v46 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              v79 = v46;
              v82 = objc_msgSend_requestUUID(WeakRetained, v80, v81);
              *buf = 138543362;
              v84 = v82;
              _os_log_debug_impl(&dword_22506F000, v79, OS_LOG_TYPE_DEBUG, "Using nil CloudKit token for request %{public}@", buf, 0xCu);
            }

            objc_msgSend_setDidFetchNilAuthToken_(WeakRetained, v47, 1);
            objc_msgSend_setCloudKitAuthToken_(WeakRetained, v48, 0);

            v49 = MEMORY[0x277CBC560];
            v50 = *MEMORY[0x277CBC120];
            v53 = objc_msgSend_container(WeakRetained, v51, v52);
            v56 = objc_msgSend_account(v53, v54, v55);
            v59 = objc_msgSend_accountID(v56, v57, v58);
            v61 = objc_msgSend_errorWithDomain_code_format_(v49, v60, v50, 1002, @"Didn't get CloudKit credentials for account %@ with no error", v59);

            v5 = 0;
            v6 = v61;
          }
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v41 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v75 = v41;
          v78 = objc_msgSend_requestUUID(WeakRetained, v76, v77);
          *buf = 138543362;
          v84 = v78;
          _os_log_debug_impl(&dword_22506F000, v75, OS_LOG_TYPE_DEBUG, "Unit test override is triggering an auth token refresh for request: %{public}@", buf, 0xCu);
        }

        objc_msgSend_setNeedsAuthRetry_(*(a1 + 32), v42, 1);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v34 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v71 = v34;
        v74 = objc_msgSend_requestUUID(WeakRetained, v72, v73);
        *buf = 138543362;
        v84 = v74;
        _os_log_debug_impl(&dword_22506F000, v71, OS_LOG_TYPE_DEBUG, "Using a fake CloudKit token for request %{public}@", buf, 0xCu);
      }

      objc_msgSend_setCloudKitAuthToken_(WeakRetained, v35, @"tacos");
    }
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
  }

LABEL_33:
  if (!(v5 | *(*(*(a1 + 48) + 8) + 40)))
  {
    v62 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v9, *MEMORY[0x277CBC120], 2011, @"Didn't get a CloudKit auth token");
    v63 = *(*(a1 + 48) + 8);
    v64 = *(v63 + 40);
    *(v63 + 40) = v62;
  }

  v65 = objc_msgSend_container(WeakRetained, v9, v10);
  v67 = objc_msgSend_possiblyWrappedAuthTokenErrorGivenError_(v65, v66, *(*(*(a1 + 48) + 8) + 40));
  v68 = *(*(a1 + 48) + 8);
  v69 = *(v68 + 40);
  *(v68 + 40) = v67;

  objc_msgSend_setLastRetryAuthError_(WeakRetained, v70, *(*(*(a1 + 48) + 8) + 40));
  dispatch_group_leave(*(a1 + 40));
}

void sub_225077294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225077ADC()
{
  v2 = v0;
  v95[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for Logger();
  sub_225072D1C();
  v89 = v4;
  v90 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnySessionAcquiredInfo();
  sub_225072D1C();
  v91 = v7;
  v92 = v8;
  MEMORY[0x28223BE20](v7);
  sub_22507F304();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  sub_22507E450();
  v13 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  v14 = sub_22507CD44(v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v79 - v15;
  type metadata accessor for AnySessionConfiguration();
  sub_225072D1C();
  v93 = v18;
  v94 = v17;
  MEMORY[0x28223BE20](v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [v0 options];
  v22 = [v21 isCloudCoreSession];

  if (!v22)
  {
    return;
  }

  v23 = [v2 options];
  v24 = [v23 ckSessionConfiguration];

  if (!v24)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  type metadata accessor for CKSessionConfiguration();
  sub_225093454();
  swift_dynamicCastClassUnconditional();
  CKSessionConfiguration.anySessionConfiguration.getter();
  AnySessionConfiguration.account.getter();
  type metadata accessor for AuthenticatedSession.Configuration.Account();
  v25 = sub_22507EDE8();
  if (sub_22507C8E8(v25, v26, v27) == 1)
  {
    v28 = sub_225075620();
    v29(v28);
    swift_unknownObjectRelease();
    sub_22507F168(v16, &unk_27D718ED0, &qword_225444FF0);
    return;
  }

  sub_22507F168(v16, &unk_27D718ED0, &qword_225444FF0);
  v30 = [v2 options];
  v31 = [v30 testDeviceReferenceProtocol];

  v32 = sub_2250D4824(v20, v31);
  swift_unknownObjectRelease();
  if (!v32)
  {
    v50 = sub_225075620();
    v51(v50);
    swift_unknownObjectRelease();
    return;
  }

  v86 = v24;
  v33 = v32;
  v34 = [v32 accountID];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v87 = sub_2250C8B38(v35, v37);
  v88 = v38;

  v39 = [v2 options];
  v40 = [v39 ckSessionAcquiredInfo];

  if (!v40)
  {
    goto LABEL_19;
  }

  type metadata accessor for CKSessionAcquiredInfo();
  sub_225093454();
  swift_dynamicCastClassUnconditional();
  CKSessionAcquiredInfo.anySessionAcquiredInfo.getter();
  v41 = AnySessionAcquiredInfo.privilegedInfoHash.getter();
  v43 = v42;
  v44 = MEMORY[0x22AA62370](v87, v88, v41, v42);
  sub_22508D128(v41, v43);
  v45 = v92;
  if (v44)
  {
    v46 = v92;
    v47 = [v33 accountID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRelease();

    sub_22508D128(v87, v88);
    swift_unknownObjectRelease();
    (*(v46 + 8))(v1, v91);
    v48 = sub_225075620();
    v49(v48);
  }

  else
  {
    v85 = v40;
    CCLog.getter();
    (*(v45 + 16))(v11, v1, v91);
    v52 = v33;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    v84 = v52;

    v83 = v54;
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v81 = v33;
      v56 = v55;
      v80 = swift_slowAlloc();
      sub_22507CCD4();
      v82 = swift_slowAlloc();
      v95[0] = v82;
      *v56 = 136315394;
      v57 = v53;
      v58 = AnySessionAcquiredInfo.privilegedInfoHash.getter();
      v60 = v59;
      v79 = Data.description.getter();
      v62 = v61;
      sub_22508D128(v58, v60);
      v63 = v11;
      v64 = *(v92 + 8);
      v64(v63, v91);
      v65 = sub_225095AFC(v79, v62, v95);

      *(v56 + 4) = v65;
      *(v56 + 12) = 2112;
      v66 = v84;
      *(v56 + 14) = v84;
      v67 = v80;
      *v80 = v81;
      v68 = v66;
      _os_log_impl(&dword_22506F000, v57, v83, "Current account has changed since session acquisition. Previous hash %s, new account %@", v56, 0x16u);
      sub_22507F168(v67, &unk_27D719030, &qword_225443AB0);
      sub_225072C54();
      MEMORY[0x22AA65DF0]();
      sub_225073BF0(v82);
      sub_225072C54();
      MEMORY[0x22AA65DF0]();
      sub_225072C54();
      MEMORY[0x22AA65DF0]();

      (*(v89 + 8))(v6, v90);
      v69 = v88;
    }

    else
    {

      v70 = v11;
      v64 = *(v45 + 8);
      v64(v70, v91);
      (*(v89 + 8))(v6, v90);
      v69 = v88;
      v66 = v84;
    }

    v95[0] = 0;
    v71 = [v2 checkSessionValidityCacheOnly:0 error:v95];
    v72 = v87;
    if (v71)
    {
      v73 = v95[0];
      swift_unknownObjectRelease();
      sub_22508D128(v72, v69);

      swift_unknownObjectRelease();
    }

    else
    {
      v74 = v95[0];
      v75 = _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_unknownObjectRelease();
      sub_22508D128(v72, v69);
      swift_unknownObjectRelease();
    }

    v76 = sub_225093C14();
    (v64)(v76);
    v77 = sub_225075620();
    v78(v77);
  }
}

void sub_22507878C(uint64_t a1, const char *a2, uint64_t a3)
{
  v106 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 32);
  v5 = objc_msgSend_container(*(a1 + 32), a2, a3);
  v8 = objc_msgSend_requiresTokenRegistration(*v4, v6, v7);
  v11 = objc_msgSend_deviceContext(v5, v9, v10);
  v14 = objc_msgSend_pushBehavior(v11, v12, v13);

  if (v14)
  {
    v17 = v8;
  }

  else
  {
    v17 = 0;
  }

  if (v17 != 1)
  {
LABEL_20:
    v43 = 0;
    goto LABEL_21;
  }

  v18 = objc_msgSend_account(v5, v15, v16);
  v21 = objc_msgSend_accountType(v18, v19, v20);

  if (v21 == 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v24 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v25 = *(a1 + 32);
      v26 = v24;
      v29 = objc_msgSend_ckShortDescription(v25, v27, v28);
      *buf = 138543362;
      v101 = v29;
      _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Not registering push token for anonymous account: %{public}@", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if ((objc_msgSend_canAuthWithCloudKit(v5, v22, v23) & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v42 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v90 = *(a1 + 32);
      v91 = v42;
      v94 = objc_msgSend_ckShortDescription(v90, v92, v93);
      *buf = 138543362;
      v101 = v94;
      _os_log_debug_impl(&dword_22506F000, v91, OS_LOG_TYPE_DEBUG, "Not registering push token for account that can't auth: %{public}@", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v32 = objc_msgSend_entitlements(v5, v30, v31);
  hasOutOfProcessUIEntitlement = objc_msgSend_hasOutOfProcessUIEntitlement(v32, v33, v34);

  if (hasOutOfProcessUIEntitlement)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v36 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v37 = *(a1 + 32);
      v38 = v36;
      v41 = objc_msgSend_ckShortDescription(v37, v39, v40);
      *buf = 138543362;
      v101 = v41;
      _os_log_debug_impl(&dword_22506F000, v38, OS_LOG_TYPE_DEBUG, "Not registering push token for OOP UI container operation: %{public}@", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (CKIsRunningInSyncBubble())
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v84 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v85 = *(a1 + 32);
      v86 = v84;
      v89 = objc_msgSend_ckShortDescription(v85, v87, v88);
      *buf = 138543362;
      v101 = v89;
      _os_log_debug_impl(&dword_22506F000, v86, OS_LOG_TYPE_DEBUG, "Not registering push token, we're in a sync bubble: %{public}@", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v43 = 1;
LABEL_21:
  v46 = objc_msgSend_operation(*(a1 + 32), v15, v16);
  v47 = MEMORY[0x277CBC810];
  if (v43)
  {
    if (!v5)
    {
      v95 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v44, v45);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v95, v96, *(a1 + 40), *(a1 + 32));
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v48 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v51 = *(a1 + 32);
      v52 = v48;
      v55 = objc_msgSend_requestUUID(v51, v53, v54);
      v58 = objc_msgSend_ckShortDescription(*(a1 + 32), v56, v57);
      v61 = objc_msgSend_entitlements(v5, v59, v60);
      hasCloudKitSystemServiceEntitlement = objc_msgSend_hasCloudKitSystemServiceEntitlement(v61, v62, v63);
      *buf = 138543874;
      v101 = v55;
      v102 = 2114;
      v103 = v58;
      v104 = 1024;
      v105 = hasCloudKitSystemServiceEntitlement;
      _os_log_impl(&dword_22506F000, v52, OS_LOG_TYPE_DEFAULT, "req: %{public}@, %{public}@ Requires push token registration, doing so. isCKSystemService=%d", buf, 0x1Cu);
    }

    if (*v47 == 1 && (objc_msgSend_unitTestOverrides(*(a1 + 32), v49, v50), v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v65, v66, @"WaitForTokenRegistration"), v67 = objc_claimAutoreleasedReturnValue(), v70 = objc_msgSend_BOOLValue(v67, v68, v69), v67, v65, v70))
    {
      v71 = dispatch_semaphore_create(0);
    }

    else
    {
      v71 = 0;
    }

    objc_initWeak(buf, *(a1 + 32));
    v74 = objc_msgSend_deviceContext(v46, v72, v73);
    v77 = objc_msgSend_tokenRegistrationScheduler(v74, v75, v76);

    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = sub_2253F0824;
    v97[3] = &unk_278549250;
    objc_copyWeak(&v99, buf);
    v78 = v71;
    v98 = v78;
    objc_msgSend_registerTokenForAdopterContainer_completionBlock_(v77, v79, v5, v97);
    if (*v47 == 1 && v78)
    {
      dispatch_semaphore_wait(v78, 0xFFFFFFFFFFFFFFFFLL);
    }

    objc_destroyWeak(&v99);
    objc_destroyWeak(buf);
  }

  if (*v47 == 1 && (objc_msgSend_isErrorInducerRequest(*(a1 + 32), v44, v45) & 1) == 0 && (objc_msgSend_operationInfo(v46, v44, v45), v80 = objc_claimAutoreleasedReturnValue(), v83 = objc_msgSend_wantsDaemonRequestCallbacks(v80, v81, v82), v80, v83))
  {
    objc_msgSend__performWillSendTestCallback(*(a1 + 32), v44, v45);
  }

  else
  {
    objc_msgSend__performRequest(*(a1 + 32), v44, v45);
  }
}

void sub_225078E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22507AB90(uint64_t a1, void *a2)
{
  v48 = a2;
  v5 = objc_msgSend_metricExecuteStartDate(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_startDate(v48, v6, v7);
  objc_msgSend_timeIntervalSinceDate_(v5, v9, v8);
  v11 = v10;

  v14 = objc_msgSend_startDate(v48, v12, v13);
  started = objc_msgSend_newRangeWithOperationState_startDate_duration_(v48, v15, 0, v14, v11);

  objc_msgSend_addRange_(v48, v17, started);
  v20 = objc_msgSend_networkServiceType(*(a1 + 32), v18, v19);
  objc_msgSend_setNetworkServiceType_(v48, v21, v20);
  if (objc_msgSend_isTopLevelDaemonOperation(*(a1 + 32), v22, v23))
  {
    v26 = objc_msgSend_container(*(a1 + 32), v24, v25);
    v29 = objc_msgSend_options(v26, v27, v28);
    v32 = objc_msgSend_bypassPCSEncryption(v29, v30, v31);

    if ((v32 & 1) == 0)
    {
      v35 = objc_msgSend_deviceContext(*(a1 + 32), v33, v34);
      v38 = objc_msgSend_accountDataSecurityObserver(v35, v36, v37);
      v41 = objc_msgSend_container(*(a1 + 32), v39, v40);
      v44 = objc_msgSend_account(v41, v42, v43);
      v46 = objc_msgSend_isWalrusEnabledForAccount_allowFetch_(v38, v45, v44, 0);

      objc_msgSend_setWalrusEnabled_(v48, v47, v46);
    }
  }
}

void sub_22507AE18(uint64_t a1, const char *a2, uint64_t a3)
{
  v349 = *MEMORY[0x277D85DE8];
  objc_msgSend_tearDownResources(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_container(*(a1 + 32), v4, v5);
  v9 = objc_msgSend_signpost(*(a1 + 32), v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_signpost(*(a1 + 32), v10, v11);
    v15 = objc_msgSend_log(v12, v13, v14);

    v18 = objc_msgSend_signpost(*(a1 + 32), v16, v17);
    v21 = objc_msgSend_identifier(v18, v19, v20);

    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22506F000, v15, OS_SIGNPOST_EVENT, v21, "CKDURLRequest", "Performing", buf, 2u);
    }
  }

  objc_msgSend_hash(*(a1 + 32), v10, v11);
  kdebug_trace();
  v22 = *(a1 + 32);
  v336 = 0;
  v24 = objc_msgSend_validate_(v22, v23, &v336);
  v27 = v336;
  v28 = MEMORY[0x277CBC880];
  if (v24)
  {
    v29 = objc_msgSend_url(*(a1 + 32), v25, v26);
    v30 = *MEMORY[0x277CBC878];
    if (!v29)
    {
      if (*v28 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v30);
      }

      v180 = *MEMORY[0x277CBC860];
      if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
      {
        v313 = *(a1 + 32);
        v314 = v180;
        v317 = objc_msgSend_requestUUID(v313, v315, v316);
        v320 = objc_msgSend_ckShortDescription(*(a1 + 32), v318, v319);
        *buf = 138543618;
        v338 = v317;
        v339 = 2114;
        v340 = v320;
        _os_log_error_impl(&dword_22506F000, v314, OS_LOG_TYPE_ERROR, "req: %{public}@, %{public}@ Request does not have a URL. Failing.", buf, 0x16u);
      }

      v181 = *(a1 + 32);
      v182 = MEMORY[0x277CBC560];
      v183 = *MEMORY[0x277CBC120];
      v184 = objc_opt_class();
      v185 = NSStringFromClass(v184);
      v187 = objc_msgSend_errorWithDomain_code_format_(v182, v186, v183, 2005, @"Request (%@) does not have a URL", v185);
      objc_msgSend_finishWithError_(v181, v188, v187);
      goto LABEL_92;
    }

    if (*v28 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v30);
    }

    v31 = MEMORY[0x277CBC860];
    v32 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(a1 + 32);
      v34 = v32;
      v37 = objc_msgSend_requestUUID(v33, v35, v36);
      v40 = objc_msgSend_usesBackgroundSession(*(a1 + 32), v38, v39);
      v43 = objc_msgSend_allowsCellularAccess(*(a1 + 32), v41, v42);
      v46 = v6;
      v47 = v27;
      v48 = v29;
      v49 = v31;
      v50 = objc_msgSend_allowsExpensiveNetworkAccess(*(a1 + 32), v44, v45);
      objc_msgSend_timeoutIntervalForRequest(*(a1 + 32), v51, v52);
      v54 = v53;
      objc_msgSend_timeoutIntervalForResource(*(a1 + 32), v55, v56);
      *buf = 138544898;
      v338 = v37;
      v339 = 2112;
      v340 = v48;
      v341 = 1024;
      *v342 = v40;
      *&v342[4] = 1024;
      *&v342[6] = v43;
      v343 = 1024;
      v344 = v50;
      v31 = v49;
      v29 = v48;
      v27 = v47;
      v6 = v46;
      v28 = MEMORY[0x277CBC880];
      v345 = 2048;
      v346 = v54;
      v347 = 2048;
      v348 = v57;
      _os_log_impl(&dword_22506F000, v34, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Performing request with URL=%@ background=%d allowCellular=%d allowExpensive=%d (timeouts %.1lfs, %.1lfs)", buf, 0x3Cu);
    }

    v58 = objc_alloc(MEMORY[0x277CBAB50]);
    v60 = objc_msgSend_initWithURL_(v58, v59, v29);
    v63 = objc_msgSend_httpMethod(*(a1 + 32), v61, v62);
    objc_msgSend_setHTTPMethod_(v60, v64, v63);

    if (objc_msgSend_hasRequestBody(*(a1 + 32), v65, v66))
    {
      v69 = objc_msgSend_requestContentType(*(a1 + 32), v67, v68);
      objc_msgSend_setValue_forHTTPHeaderField_(v60, v70, v69, 0x28387C500);

      objc_msgSend_prepareRequestOperationsForRequest_(*(a1 + 32), v71, v60);
    }

    v72 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v67, v68);
    v75 = objc_msgSend_sendDebugHeader(v72, v73, v74);

    if (v75)
    {
      objc_msgSend_setValue_forHTTPHeaderField_(v60, v76, @"DEBUG", 0x28387C5E0);
    }

    v78 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v76, v77);
    v81 = objc_msgSend_testRunIDHeader(v78, v79, v80);

    if (objc_msgSend_length(v81, v82, v83))
    {
      objc_msgSend_setValue_forHTTPHeaderField_(v60, v84, v81, 0x28387C600);
    }

    v333 = v81;
    v86 = objc_msgSend_acceptContentType(*(a1 + 32), v84, v85);
    objc_msgSend_setValue_forHTTPHeaderField_(v60, v87, v86, 0x28387C480);

    objc_msgSend_setValue_forHTTPHeaderField_(v60, v88, @"gzip", 0x28387C4A0);
    v91 = objc_msgSend_URL(v60, v89, v90);
    v94 = objc_msgSend_scheme(v91, v92, v93);
    isEqualToString = objc_msgSend_isEqualToString_(v94, v95, @"https");

    if (isEqualToString)
    {
      v99 = sub_22507BEE4();
      if (*MEMORY[0x277CBC810] == 1)
      {
        v100 = v6;
        v101 = v27;
        v102 = v29;
        v103 = v31;
        v104 = objc_msgSend_operation(*(a1 + 32), v97, v98);
        v107 = objc_msgSend_unitTestOverrides(v104, v105, v106);
        v109 = objc_msgSend_objectForKeyedSubscript_(v107, v108, @"X-MMe-Client-Info");

        if (v109)
        {
          v110 = v109;

          v99 = v110;
        }

        v31 = v103;
        v29 = v102;
        v27 = v101;
        v6 = v100;
        v28 = MEMORY[0x277CBC880];
      }

      objc_msgSend_setValue_forHTTPHeaderField_(v60, v97, v99, 0x28387C520);
    }

    v111 = sub_22507BF38();
    objc_msgSend_setValue_forHTTPHeaderField_(v60, v112, v111, 0x28387C4E0);

    v115 = objc_msgSend_requestUUID(*(a1 + 32), v113, v114);
    objc_msgSend_setValue_forHTTPHeaderField_(v60, v116, v115, *MEMORY[0x277CBBF88]);

    v119 = objc_msgSend_operationIDForProtobuf(*(a1 + 32), v117, v118);
    objc_msgSend_setValue_forHTTPHeaderField_(v60, v120, v119, 0x28387C560);

    v123 = objc_msgSend_operationGroupID(*(a1 + 32), v121, v122);

    if (v123)
    {
      v126 = objc_msgSend_operationGroupID(*(a1 + 32), v124, v125);
      objc_msgSend_setValue_forHTTPHeaderField_(v60, v127, v126, 0x28387C580);
    }

    v128 = objc_msgSend_operationGroupName(*(a1 + 32), v124, v125);
    v131 = objc_msgSend_length(v128, v129, v130);

    if (v131)
    {
      v134 = objc_msgSend_container(*(a1 + 32), v132, v133);
      v137 = objc_msgSend_containerID(v134, v135, v136);
      v140 = objc_msgSend_specialContainerType(v137, v138, v139);

      if (v140 == 5)
      {
        v143 = objc_msgSend_operationGroupName(*(a1 + 32), v141, v142);
        v146 = objc_msgSend_CKProbablySafeHeaderValue(v143, v144, v145);
        objc_msgSend_setValue_forHTTPHeaderField_(v60, v147, v146, 0x28387C5A0);
      }

      v148 = objc_msgSend_operationGroupName(*(a1 + 32), v141, v142);
      v151 = objc_msgSend_CKBase64EncodedStructuredHeaderValueByteSequence(v148, v149, v150);
      objc_msgSend_setValue_forHTTPHeaderField_(v60, v152, v151, 0x28387C5C0);
    }

    objc_msgSend_duetPreClearedMode(*(a1 + 32), v132, v133);
    v153 = CKStringForDuetPreClearedMode();
    objc_msgSend_setValue_forHTTPHeaderField_(v60, v154, v153, 0x28387C740);

    v159 = objc_msgSend_applicationBundleIdentifierForContainerAccess(*(a1 + 32), v155, v156);
    if (v159)
    {
      objc_msgSend_setValue_forHTTPHeaderField_(v60, v157, v159, 0x28387C6A0);
    }

    v332 = v159;
    v160 = objc_msgSend_applicationVersion(v6, v157, v158);
    objc_msgSend_setValue_forHTTPHeaderField_(v60, v161, v160, 0x28387C6C0);

    if (objc_msgSend_includeContainerServerInfo(*(a1 + 32), v162, v163))
    {
      v166 = objc_msgSend_containerID(v6, v164, v165);
      v169 = objc_msgSend_containerIdentifier(v166, v167, v168);

      if (*MEMORY[0x277CBC810] == 1)
      {
        v172 = objc_msgSend_unitTestOverrides(*(a1 + 32), v170, v171);
        v174 = objc_msgSend_objectForKeyedSubscript_(v172, v173, @"FakeContainerIdentifier");

        if (v174)
        {
          v175 = v174;

          v169 = v175;
        }
      }

      if (v169)
      {
        objc_msgSend_setValue_forHTTPHeaderField_(v60, v170, v169, 0x28387C6E0);
      }
    }

    else
    {
      objc_msgSend_setValue_forHTTPHeaderField_(v60, v164, @"com.apple.cloudkit.ckctl.container", 0x28387C6E0);
    }

    v189 = objc_msgSend_containerID(v6, v176, v177);
    objc_msgSend_environment(v189, v190, v191);
    v192 = CKContainerEnvironmentString();
    objc_msgSend_setValue_forHTTPHeaderField_(v60, v193, v192, 0x28387C700);

    if (objc_msgSend_allowsAuthedAccount(*(a1 + 32), v194, v195) && (objc_msgSend_sendRequestAnonymously(*(a1 + 32), v196, v197) & 1) == 0)
    {
      v199 = objc_msgSend_containerScopedUserID(v6, v196, v197);
      if (v199)
      {
        objc_msgSend_setValue_forHTTPHeaderField_(v60, v198, v199, 0x28387C760);
      }
    }

    if (objc_msgSend_usesCloudKitAuthToken(*(a1 + 32), v196, v197) && (objc_msgSend_sendRequestAnonymously(*(a1 + 32), v200, v201) & 1) == 0)
    {
      v203 = objc_msgSend_cloudKitAuthToken(*(a1 + 32), v200, v201);
      if (v203)
      {
        objc_msgSend_setValue_forHTTPHeaderField_(v60, v202, v203, 0x28387C780);
      }
    }

    if (objc_msgSend_usesiCloudAuthToken(*(a1 + 32), v200, v201) && (objc_msgSend_sendRequestAnonymously(*(a1 + 32), v204, v205) & 1) == 0)
    {
      v206 = objc_msgSend_account(v6, v204, v205);
      v209 = objc_msgSend_dsid(v206, v207, v208);

      v212 = objc_msgSend_iCloudAuthToken(*(a1 + 32), v210, v211);
      if (objc_msgSend_length(v209, v213, v214) && objc_msgSend_length(v212, v215, v216))
      {
        v331 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v217, @"%@:%@", v209, v212);
        v219 = objc_msgSend_dataUsingEncoding_(v331, v218, 5);
        v221 = objc_msgSend_base64EncodedStringWithOptions_(v219, v220, 0);
        v223 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v222, @"Basic %@", v221);
        if (objc_msgSend_length(v223, v224, v225))
        {
          objc_msgSend_setValue_forHTTPHeaderField_(v60, v226, v223, 0x28387C4C0);
        }

        v28 = MEMORY[0x277CBC880];
      }

      else
      {
        if (*v28 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v227 = *MEMORY[0x277CBC860];
        if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
        {
          v326 = *(a1 + 32);
          v327 = v227;
          v330 = objc_msgSend_requestUUID(v326, v328, v329);
          *buf = 138543874;
          v338 = v330;
          v339 = 2112;
          v340 = v209;
          v341 = 2112;
          *v342 = v212;
          _os_log_error_impl(&dword_22506F000, v327, OS_LOG_TYPE_ERROR, "req: %{public}@, Skipping authorization header field for dsid: %@, iCloudAuthToken: %@", buf, 0x20u);
        }
      }

      v31 = MEMORY[0x277CBC860];
    }

    objc_msgSend_databaseScope(*(a1 + 32), v204, v205);
    v228 = CKDatabaseScopeString();
    objc_msgSend_setValue_forHTTPHeaderField_(v60, v229, v228, 0x28387C720);

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_2253F1644;
    aBlock[3] = &unk_27854D380;
    v185 = v60;
    v335 = v185;
    v230 = _Block_copy(aBlock);
    v233 = objc_msgSend_additionalHeaderValues(*(a1 + 32), v231, v232);
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v233, v234, v230);

    v237 = objc_msgSend_traceHeaderValues(*(a1 + 32), v235, v236);
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v237, v238, v230);

    v241 = objc_msgSend_clientProvidedAdditionalHeaderValues(*(a1 + 32), v239, v240);
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v241, v242, v230);

    if (*MEMORY[0x277CBC810] == 1)
    {
      v245 = objc_msgSend_unitTestOverrides(*(a1 + 32), v243, v244);
      v247 = objc_msgSend_objectForKeyedSubscript_(v245, v246, @"AllowJsonPayloadToBeReturned");

      if (v247)
      {
        objc_msgSend_setValue_forHTTPHeaderField_(v185, v243, @"1", @"X-CloudKit-Test-Json-Payload");
      }
    }

    if (objc_msgSend_shouldCompressBody(*(a1 + 32), v243, v244))
    {
      objc_msgSend_setValue_forHTTPHeaderField_(v185, v248, @"gzip", @"Content-Encoding");
      objc_msgSend_addValue_forHTTPHeaderField_(v185, v250, @"no-transform", @"Cache-Control");
    }

    hasRequestBody = objc_msgSend_hasRequestBody(*(a1 + 32), v248, v249);
    v252 = MEMORY[0x277CBC878];
    v253 = *MEMORY[0x277CBC878];
    if (hasRequestBody)
    {
      if (*v28 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v253);
      }

      v254 = *v31;
      if (!os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_86;
      }

      v257 = *(a1 + 32);
      v258 = v254;
      v261 = objc_msgSend_requestUUID(v257, v259, v260);
      objc_msgSend_ckShortDescription(*(a1 + 32), v262, v263);
      v264 = v6;
      v265 = v27;
      v266 = v29;
      v268 = v267 = v31;
      *buf = 138543618;
      v338 = v261;
      v339 = 2114;
      v340 = v268;
      v269 = "req: %{public}@, %{public}@ Outgoing request body is streamed";
    }

    else
    {
      if (*v28 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v253);
      }

      v270 = *v31;
      if (!os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_86;
      }

      v321 = *(a1 + 32);
      v258 = v270;
      v261 = objc_msgSend_requestUUID(v321, v322, v323);
      objc_msgSend_ckShortDescription(*(a1 + 32), v324, v325);
      v264 = v6;
      v265 = v27;
      v266 = v29;
      v268 = v267 = v31;
      *buf = 138543618;
      v338 = v261;
      v339 = 2114;
      v340 = v268;
      v269 = "req: %{public}@, %{public}@ Outgoing request body is empty";
    }

    _os_log_debug_impl(&dword_22506F000, v258, OS_LOG_TYPE_DEBUG, v269, buf, 0x16u);

    v252 = MEMORY[0x277CBC878];
    v31 = v267;
    v29 = v266;
    v27 = v265;
    v6 = v264;
    v28 = MEMORY[0x277CBC880];

LABEL_86:
    if (objc_msgSend_networkServiceType(*(a1 + 32), v255, v256))
    {
      if (*v28 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *v252);
      }

      v273 = *v31;
      if (os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
      {
        v302 = *(a1 + 32);
        v303 = v273;
        v306 = objc_msgSend_requestUUID(v302, v304, v305);
        v309 = objc_msgSend_ckShortDescription(*(a1 + 32), v307, v308);
        objc_msgSend_networkServiceType(*(a1 + 32), v310, v311);
        v312 = CKStringForNetworkServiceType();
        *buf = 138543874;
        v338 = v306;
        v339 = 2114;
        v340 = v309;
        v341 = 2114;
        *v342 = v312;
        _os_log_debug_impl(&dword_22506F000, v303, OS_LOG_TYPE_DEBUG, "req: %{public}@, %{public}@ using custom network service type %{public}@", buf, 0x20u);
      }
    }

    v274 = objc_msgSend_networkServiceType(*(a1 + 32), v271, v272);
    objc_msgSend_setNetworkServiceType_(v185, v275, v274);
    v278 = objc_msgSend_shared(CKDTrafficLogger, v276, v277);
    v281 = objc_msgSend_requestUUID(*(a1 + 32), v279, v280);
    v284 = objc_msgSend_httpMethod(*(a1 + 32), v282, v283);
    v287 = objc_msgSend_requestMessageClass(*(a1 + 32), v285, v286);
    v288 = NSStringFromClass(v287);
    v291 = objc_msgSend_parsingStandaloneMessage(*(a1 + 32), v289, v290);
    objc_msgSend_logRequestWithRequestUUID_request_url_method_messageClass_parsingStandaloneMessage_completionHandler_(v278, v292, v281, v185, v29, v284, v288, v291, &unk_28385E7C0);

    objc_msgSend__loadRequest_(*(a1 + 32), v293, v185);
    v187 = v333;
LABEL_92:

    goto LABEL_93;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v178 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
  {
    v294 = *(a1 + 32);
    v295 = v178;
    v298 = objc_msgSend_requestUUID(v294, v296, v297);
    v301 = objc_msgSend_ckShortDescription(*(a1 + 32), v299, v300);
    *buf = 138543874;
    v338 = v298;
    v339 = 2114;
    v340 = v301;
    v341 = 2112;
    *v342 = v27;
    _os_log_error_impl(&dword_22506F000, v295, OS_LOG_TYPE_ERROR, "req: %{public}@, %{public}@ Validation error: [%@]", buf, 0x20u);
  }

  objc_msgSend_finishWithError_(*(a1 + 32), v179, v27);
LABEL_93:
}

id sub_22507BEE4()
{
  if (qword_280D585B0 != -1)
  {
    dispatch_once(&qword_280D585B0, &unk_28385E6A0);
  }

  v1 = qword_280D585A8;

  return v1;
}

id sub_22507BF38()
{
  if (qword_280D585A0 != -1)
  {
    dispatch_once(&qword_280D585A0, &unk_28385E680);
  }

  v1 = qword_280D58598;

  return v1;
}

uint64_t sub_22507C284()
{
  if (qword_280D54D10 != -1)
  {
    swift_once();
  }
}

uint64_t CKIsBundleIDForeground(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v3 = objc_msgSend_predicateMatchingBundleIdentifier_(MEMORY[0x277D46FA0], v2, v1);
  v17 = 0;
  v5 = objc_msgSend_handleForPredicate_error_(MEMORY[0x277D46F48], v4, v3, &v17);
  v8 = v17;
  if (v5)
  {
    v9 = objc_msgSend_currentState(v5, v6, v7);
    v12 = objc_msgSend_endowmentNamespaces(v9, v10, v11);
    v14 = objc_msgSend_containsObject_(v12, v13, @"com.apple.frontboard.visibility");
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v19 = v1;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Couldn't determine if bundle %@ is foreground: %@", buf, 0x16u);
    }

    v14 = 0;
  }

  return v14;
}

uint64_t sub_22507C7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v5 = sub_22507CD44(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_225447748;
  v10[5] = v9;
  sub_2250FD60C(0, 0, v7, &unk_225447758, v10);
}

BOOL sub_22507C910(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_22507C94C()
{

  JUMPOUT(0x22AA65DF0);
}

void sub_22507C97C()
{

  JUMPOUT(0x22AA65DF0);
}

uint64_t sub_22507C9B4(uint64_t a1)
{

  return dispatch thunk of Hashable.hash(into:)();
}

__n128 *sub_22507C9E8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 - 160) = 0;
  *(v2 - 152) = 0xE000000000000000;
  return result;
}

void sub_22507C9FC()
{

  JUMPOUT(0x22AA65DF0);
}

uint64_t sub_22507CA14()
{

  return swift_slowAlloc();
}

uint64_t sub_22507CA2C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277D857C0];

  return sub_2250C7E20(a1, a2, a3, v4);
}

void sub_22507CA50()
{

  JUMPOUT(0x22AA65DF0);
}

uint64_t sub_22507CAB4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_225095DA4;

  return v6();
}

__n128 sub_22507CBBC(uint64_t a1)
{
  *(v2 - 168) = a1;
  result = *(v2 - 272);
  *v1 = result.n128_u32[0];
  return result;
}

void sub_22507CC30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_22507CC60()
{

  return swift_beginAccess();
}

uint64_t sub_22507CC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 + 96) = *(*(a1 + 56) + ((a2 << 9) | (8 * __clz(v2))));
}

uint64_t sub_22507CD0C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277D857B0];

  return sub_2250C7E20(a1, a2, a3, v4);
}

void sub_22507CDE8(int a1@<W8>)
{
  v3 = __OFSUB__(a1, v1);
  v4 = a1 - v1;
  v5 = v3;
  *(v2 - 176) = v5;
  *(v2 - 184) = v4;
}

uint64_t sub_22507CE24@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;

  return print(_:separator:terminator:)();
}

id sub_22507CE4C(uint64_t a1)
{

  return [v1 (v3 + 3842)];
}

uint64_t sub_22507CE70(uint64_t a1, uint64_t a2, ...)
{

  return _BridgedStoredNSError.init(_:userInfo:)();
}

uint64_t sub_22507CEB0(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_22507CFEC()
{
  _Block_release(*(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22507D054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8)
{
  v8[2] = a8;
  v10 = type metadata accessor for URL();
  v8[3] = v10;
  v8[4] = *(v10 - 8);
  v8[5] = swift_task_alloc();
  v11 = type metadata accessor for URLRequest();
  v8[6] = v11;
  v8[7] = *(v11 - 8);
  v8[8] = swift_task_alloc();
  v8[9] = _Block_copy(a7);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8[10] = v12;
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8[11] = v13;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8[12] = v14;

  v15 = swift_task_alloc();
  v8[13] = v15;
  *v15 = v8;
  v15[1] = sub_22507E1C8;

  return sub_22507D27C();
}

uint64_t sub_22507D27C()
{
  sub_225072C10();
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  *(v1 + 152) = v14;
  *(v1 + 96) = v3;
  *(v1 + 104) = v4;
  *(v1 + 80) = v5;
  *(v1 + 88) = v6;
  *(v1 + 64) = v7;
  *(v1 + 72) = v8;
  *(v1 + 56) = v9;
  v10 = type metadata accessor for PartialTrafficLog(0);
  *(v1 + 128) = v10;
  sub_22507CD44(v10);
  *(v1 + 136) = sub_22507D3C8();
  v11 = sub_225098658();

  return MEMORY[0x2822009F8](v11);
}

void sub_22507D330()
{

  JUMPOUT(0x22AA65DF0);
}

uint64_t sub_22507D34C(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_22507D378(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_22507D3C8()
{

  return swift_task_alloc();
}

uint64_t sub_22507D404()
{
  v0 = swift_task_alloc();
  v1 = sub_22507D36C(v0);
  *v1 = v2;
  v1[1] = sub_22507F4D4;
  v3 = sub_225072CE4();

  return v4(v3);
}

uint64_t sub_22507D4E0()
{
  if (sub_22507E8DC())
  {
    v1 = URLRequest.allHTTPHeaderFields.getter();
    if (!v1)
    {
      v1 = Dictionary.init(dictionaryLiteral:)();
    }

    v2 = v1;
    v3 = *(v1 + 16);
    if (v3)
    {
      v62 = MEMORY[0x277D84F90];
      sub_22507DB54(0, v3, 0);
      v4 = v62;
      result = sub_225107070(v2);
      v8 = result;
      v9 = 0;
      v10 = v2 + 64;
      v50 = v6;
      v51 = v3;
      v49 = v2 + 72;
      v52 = v0;
      v53 = v2 + 64;
      v54 = v2;
      while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v2 + 32))
      {
        v11 = v8 >> 6;
        if ((*(v10 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_34;
        }

        if (*(v2 + 36) != v6)
        {
          goto LABEL_35;
        }

        v55 = v7;
        v57 = v9;
        v12 = (*(v2 + 48) + 16 * v8);
        v13 = *v12;
        v14 = v12[1];
        v15 = (*(v2 + 56) + 16 * v8);
        v17 = *v15;
        v16 = v15[1];
        v59 = v13;
        v60 = v6;
        *(v0 + 16) = v13;
        *(v0 + 24) = v14;
        strcpy((v0 + 32), "authorization");
        *(v0 + 46) = -4864;
        sub_22507DB80();

        result = StringProtocol.caseInsensitiveCompare<A>(_:)();
        if (!result)
        {

          _StringGuts.grow(_:)(36);

          *(v0 + 48) = String.count.getter();
          v18 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x22AA62E50](v18);

          MEMORY[0x22AA62E50](0xD000000000000011, 0x800000022547B7C0);

          v17 = 0xD000000000000011;
          v16 = 0x800000022547B7A0;
        }

        v19 = v4;
        v63 = v4;
        v20 = *(v4 + 16);
        v21 = *(v19 + 24);
        v22 = v60;
        if (v20 >= v21 >> 1)
        {
          result = sub_22507DB54((v21 > 1), v20 + 1, 1);
          v22 = v60;
          v19 = v63;
        }

        *(v19 + 16) = v20 + 1;
        v23 = (v19 + 32 * v20);
        v23[4] = v59;
        v23[5] = v14;
        v23[6] = v17;
        v23[7] = v16;
        v2 = v54;
        v24 = 1 << *(v54 + 32);
        if (v8 >= v24)
        {
          goto LABEL_36;
        }

        v10 = v53;
        v25 = *(v53 + 8 * v11);
        if ((v25 & (1 << v8)) == 0)
        {
          goto LABEL_37;
        }

        if (*(v54 + 36) != v22)
        {
          goto LABEL_38;
        }

        v4 = v19;
        v26 = v25 & (-2 << (v8 & 0x3F));
        if (v26)
        {
          v24 = __clz(__rbit64(v26)) | v8 & 0x7FFFFFFFFFFFFFC0;
          v27 = v51;
          v0 = v52;
        }

        else
        {
          v28 = v11 << 6;
          v29 = (v49 + 8 * v11);
          v30 = v11 + 1;
          v27 = v51;
          v0 = v52;
          while (v30 < (v24 + 63) >> 6)
          {
            v32 = *v29++;
            v31 = v32;
            v28 += 64;
            ++v30;
            if (v32)
            {
              result = sub_2250FDCE0(v8, v22, v55 & 1);
              v24 = __clz(__rbit64(v31)) + v28;
              goto LABEL_24;
            }
          }

          result = sub_2250FDCE0(v8, v22, v55 & 1);
        }

LABEL_24:
        v7 = 0;
        v9 = v57 + 1;
        v8 = v24;
        v6 = v50;
        if (v57 + 1 == v27)
        {

          v61 = v4;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    else
    {

      v61 = MEMORY[0x277D84F90];
LABEL_30:
      v34 = *(v0 + 136);
      v58 = *(v0 + 152);
      v35 = *(v0 + 112);
      v56 = *(v0 + 104);
      v36 = *(v0 + 88);
      v37 = *(v0 + 96);
      v38 = *(v0 + 80);
      v40 = *(v0 + 56);
      v39 = *(v0 + 64);
      v41 = v0;
      v42 = type metadata accessor for PartialTrafficLog.RequestMetadata(0);
      Date.init()();
      v43 = v42[6];
      v44 = type metadata accessor for URL();
      (*(*(v44 - 8) + 16))(&v34[v43], v38, v44);
      v45 = sub_22507DBF4(v61);
      *v34 = v40;
      *(v34 + 1) = v39;
      v46 = &v34[v42[7]];
      *v46 = v36;
      *(v46 + 1) = v37;
      *&v34[v42[8]] = v45;
      v47 = &v34[v42[9]];
      *v47 = v56;
      *(v47 + 1) = v35;
      v34[v42[10]] = v58;
      swift_storeEnumTagMultiPayload();

      v48 = swift_task_alloc();
      *(v41 + 144) = v48;
      *v48 = v41;
      v48[1] = sub_22507E0C8;
      sub_22507CCC8(*(v41 + 136));

      return sub_22507E9DC();
    }
  }

  else
  {

    sub_225075274();

    return v33();
  }

  return result;
}

void *sub_22507DA44(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2250B0DFC(&qword_27D719840, &qword_225447AB8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_2250C75C0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_2250B0DFC(&unk_27D718E18, &unk_225447AC0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_22507DB54(void *a1, int64_t a2, char a3)
{
  result = sub_22507DA44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_22507DB80()
{
  result = qword_280D535B8;
  if (!qword_280D535B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D535B8);
  }

  return result;
}

uint64_t sub_22507DBF4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2250B0DFC(&qword_27D719890, &qword_2254477F8);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_22507DCA8(v2, 1, &v4);

  return v4;
}

void sub_22507DCA8(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v27 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v29 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = sub_22507DF9C(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2250B0DFC(&unk_27D719770, &qword_225447820);
      _NativeDictionary.copy()();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 16 * v12);
    *v20 = v7;
    v20[1] = v6;
    v21 = (v19[7] + 16 * v12);
    *v21 = v9;
    v21[1] = v8;
    v22 = v19[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v19[2] = v24;
    v4 = v29 + 1;
    a2 = 1;
  }

  sub_2250FDA2C(v15, a2 & 1);
  v17 = sub_22507DF9C(v7, v6);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  MEMORY[0x22AA62E50](0xD00000000000001BLL, 0x800000022547B820);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x22AA62E50](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_22507DF9C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_22507E014(a1, a2, v4);
}

unint64_t sub_22507E014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_22507E0C8()
{
  sub_225072C10();
  sub_225075560();
  v2 = v1;
  sub_225075614();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v0;
  sub_225072D68();
  *v7 = v6;

  sub_22507F09C(v5);

  sub_225075274();

  return v8();
}

void sub_22507E1C8()
{
  sub_225075560();
  v2 = v1[9];
  v3 = v1[8];
  v4 = v1[7];
  v12 = v1[6];
  v5 = v1[5];
  v6 = v1[4];
  v7 = v1[3];
  v8 = *v0;
  sub_225072D68();
  *v9 = v8;

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v3, v12);
  v2[2](v2);
  _Block_release(v2);

  sub_22508D008();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22507E460(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83508];

  return sub_2250FA694(a1, a2, v3);
}

uint64_t sub_22507E484()
{
  sub_22507CE94();
  sub_225093448();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  v3 = sub_22507F35C(v1);

  return v4(v3);
}

uint64_t sub_22507E514(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22507F5B4;

  return v6(a1);
}

uint64_t sub_22507E60C()
{
  sub_22507E6E8();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  v1[1] = sub_225095DA4;
  v3 = sub_225075340();

  return v4(v3);
}

uint64_t sub_22507E6F4(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

void *sub_22507E708()
{
  v1[28] = v0;
  v2 = v1[2];
  v3 = (v2 + v1[21]);
  *(v2 + v1[20]) = 2;
  return sub_225073BAC(v3, v3[3]);
}

uint64_t sub_22507E764()
{
  sub_225094938();
  sub_22507E6E8();
  sub_22507EE04();
  v0 = swift_task_alloc();
  v1 = sub_22507D36C(v0);
  *v1 = v2;
  sub_22507CE00(v1);
  sub_2250957B8();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22507E7F4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_22507F4D4;

  return v7();
}

BOOL sub_22507E8DC()
{
  v0 = [objc_opt_self() sharedOptions];
  v1 = [v0 logTraffic];

  if (!v1)
  {
    return 0;
  }

  if (qword_280D54D18 != -1)
  {
    swift_once();
  }

  v2 = qword_280D54D20;
  v3 = static os_log_type_t.info.getter();
  return os_log_type_enabled(v2, v3);
}

uint64_t sub_22507E9DC()
{
  sub_225072C10();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  sub_22507CD44(v3);
  v1[7] = sub_22507D3C8();
  v4 = type metadata accessor for PartialTrafficLog(0);
  v1[8] = v4;
  sub_22507D394(v4);
  v1[9] = v5;
  v1[10] = sub_22507D3C8();
  v6 = sub_225098658();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_22507EAAC()
{
  sub_225094938();
  sub_22507E6E8();
  v1 = v0[6];
  if (!v1[17])
  {
    v1[17] = os_transaction_create();
    swift_unknownObjectRelease();
    v1 = v0[6];
  }

  v2 = v0[9];
  v3 = v0[5];
  swift_beginAccess();
  sub_22507EE10();
  v4 = *(v1[14] + 16);
  sub_22507EEEC(v4);
  v5 = v1[14];
  *(v5 + 16) = v4 + 1;
  sub_22507EE88(v3, v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v4);
  v1[14] = v5;
  swift_endAccess();
  result = sub_22507EF2C();
  v7 = v1[15];
  v8 = __OFADD__(v7, result);
  v9 = v7 + result;
  if (v8)
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = v0[10];
  v11 = v0[5];
  v1[15] = v9;
  sub_22507EE88(v11, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_22507F09C(v10);
  if (EnumCaseMultiPayload != 6)
  {
    goto LABEL_7;
  }

  v13 = v0[6];
  v14 = *(v13 + 128);
  v8 = __OFADD__(v14, 1);
  v15 = v14 + 1;
  if (v8)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  *(v13 + 128) = v15;
LABEL_7:
  v16 = [objc_opt_self() sharedOptions];
  v17 = [v16 shouldStreamTrafficLogs];

  if (v17)
  {
    v18 = swift_task_alloc();
    v0[11] = v18;
    *v18 = v0;
    v19 = sub_2250FCB24;
LABEL_12:
    v18[1] = v19;
    sub_2250957B8();

    return sub_225093680();
  }

  v20 = v0[6];
  if (*(v20 + 128) > 9 || v1[15] >= 300001)
  {
    v18 = swift_task_alloc();
    v0[12] = v18;
    *v18 = v0;
    v19 = sub_2250FCC34;
    goto LABEL_12;
  }

  if (!*(v20 + 144))
  {
    v22 = v0[7];
    MEMORY[0x22AA62FD0]();
    v23 = type metadata accessor for TaskPriority();
    sub_22507C8C0(v22, 0, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v20;

    v25 = sub_2250FCDA0(0, 0, v22, &unk_225447850, v24);
    sub_22507F168(v22, &qword_27D7190D0, &qword_225445B10);
    *(v20 + 144) = v25;
  }

  sub_225075274();
  sub_2250957B8();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33);
}

void *sub_22507EE10()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_22507EE5C(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

uint64_t sub_22507EE88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PartialTrafficLog(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_22507EEEC(void *result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    result = sub_22507EE5C((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_22507EF2C()
{
  type metadata accessor for PartialTrafficLog(0);
  sub_225072BF0();
  MEMORY[0x28223BE20](v1);
  sub_225072C00();
  v4 = v3 - v2;
  sub_225072E44();
  sub_2250FA634(v0, v4, v5);
  v6 = 1234;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      goto LABEL_9;
    case 2u:
    case 6u:
      v6 = 22;
      goto LABEL_4;
    case 3u:
    case 4u:
      v6 = 333;
      goto LABEL_4;
    case 5u:
      v8 = String.count.getter();
      v9 = sub_22507F8F0();
      v10 = MEMORY[0x22AA62390](v9);

      v11 = sub_22507F8F0();
      sub_22508D128(v11, v12);
      v6 = v8 + v10;
      if (__OFADD__(v8, v10))
      {
        __break(1u);
LABEL_9:
        v13 = String.count.getter();
        v14 = sub_22507F8F0();
        v15 = MEMORY[0x22AA62390](v14);

        v16 = sub_22507F8F0();
        sub_22508D128(v16, v17);
        v6 = v13 + v15;
        if (__OFADD__(v13, v15))
        {
          __break(1u);
          JUMPOUT(0x22507F080);
        }
      }

      return v6;
    default:
LABEL_4:
      sub_2250FA03C(v4, type metadata accessor for PartialTrafficLog);
      return v6;
  }
}

uint64_t sub_22507F09C(uint64_t a1)
{
  v2 = type metadata accessor for PartialTrafficLog(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22507F0F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22507F168(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2250B0DFC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_22507F1F4()
{

  return sub_225095AFC(v0, v1, (v2 - 96));
}

uint64_t sub_22507F290(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_22507F2C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_2250C7E20(a1, a2, a3, &unk_225444708);
}

uint64_t sub_22507F39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void *sub_22507F3D4@<X0>(unint64_t a1@<X8>)
{

  return sub_225095964((a1 > 1), v1, 1);
}

uint64_t sub_22507F430()
{
  if (MEMORY[0x277D85020])
  {
    return sub_2250B0DFC(&qword_27D718E28, &qword_225444520);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22507F460()
{
  if (MEMORY[0x277D85020])
  {
    return sub_2250B0DFC(&qword_27D718E30, &qword_2254445E8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22507F4D4()
{
  sub_225072C10();
  sub_225075560();
  v1 = *v0;
  sub_225072D68();
  *v2 = v1;

  sub_225075274();

  return v3();
}

uint64_t sub_22507F5B8()
{
  sub_22507CE94();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_225075264(v3);
  *v4 = v5;
  v4[1] = sub_22507F4D4;
  v6 = sub_225075340();

  return sub_22507F658(v6, v7, v1, v2);
}

uint64_t sub_22507F658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22507F718, 0, 0);
}

uint64_t sub_22507F718()
{
  sub_225072C10();
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_225093460;
  sub_22507CCC8(5000000000000000000);
  sub_225093C30();

  return sub_22507F7D8();
}

uint64_t sub_22507F7D8()
{
  sub_22507E6E8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v1 + 64) = v12;
  sub_22507D394(v12);
  *(v1 + 72) = v13;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  sub_225093C30();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_22507F8FC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  type metadata accessor for ContinuousClock();
  sub_2250FDD34(&qword_280D533D8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_22507CC80();
  dispatch thunk of Clock.now.getter();
  sub_2250FDD34(&qword_280D533E0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v4 = *(v3 + 8);
  v0[12] = v4;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_22509327C;
  v6 = sub_22507CCC8(v0[11]);

  return MEMORY[0x2822008C8](v6);
}

uint64_t sub_225080264(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2250802D4;
  v4[3] = &unk_278545A00;
  v4[4] = v2;
  return objc_msgSend_performASyncOnLifecycleQueueIfNotFinished_(v2, a2, v4);
}

uint64_t sub_2250802D4(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = voucher_copy();
  v3 = *(a1 + 32);
  v4 = *(v3 + 328);
  *(v3 + 328) = v2;

  objc_msgSend_setIsHandlingAuthRetry_(*(a1 + 32), v5, 0);
  objc_msgSend_setDidReceiveResponseBodyData_(*(a1 + 32), v6, 0);
  v9 = objc_msgSend_signpost(*(a1 + 32), v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_signpost(*(a1 + 32), v10, v11);
    v15 = objc_msgSend_log(v12, v13, v14);

    v18 = objc_msgSend_signpost(*(a1 + 32), v16, v17);
    v21 = objc_msgSend_identifier(v18, v19, v20);

    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v24 = objc_msgSend_requestUUID(*(a1 + 32), v22, v23);
      v27 = objc_msgSend_operationID(*(a1 + 32), v25, v26);
      v45 = 138412546;
      v46 = v24;
      v47 = 2112;
      v48 = v27;
      _os_signpost_emit_with_name_impl(&dword_22506F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v21, "CKDURLRequest", "Identifier=%{signpost.description:attribute}@ Operation=%{signpost.description:attribute}@ ", &v45, 0x16u);
    }
  }

  objc_msgSend_hash(*(a1 + 32), v10, v11);
  kdebug_trace();
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v28 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(a1 + 32);
    v32 = v28;
    v35 = objc_msgSend_requestUUID(v31, v33, v34);
    v38 = objc_msgSend_ckShortDescription(*(a1 + 32), v36, v37);
    v45 = 138543618;
    v46 = v35;
    v47 = 2114;
    v48 = v38;
    _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEFAULT, "req: %{public}@, %{public}@ Performing", &v45, 0x16u);
  }

  objc_msgSend_validateAnonymousUserIDPropagation(*(a1 + 32), v29, v30);
  if ((objc_msgSend_isCancelled(*(a1 + 32), v39, v40) & 1) != 0 || objc_msgSend_isFinished(*(a1 + 32), v41, v42))
  {
    return objc_msgSend_finishWithError_(*(a1 + 32), v41, 0);
  }

  else
  {
    return objc_msgSend__validateAccountAccess(*(a1 + 32), v41, v43);
  }
}

void sub_225080700(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = v6;
  if (!v5 || v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v30 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *v36 = 0;
      _os_log_debug_impl(&dword_22506F000, v30, OS_LOG_TYPE_DEBUG, "Couldn't get server configuration", v36, 2u);
      if (v9)
      {
        goto LABEL_10;
      }
    }

    else if (v9)
    {
LABEL_10:
      objc_msgSend_finishWithError_(*(a1 + 32), v31, v9);
LABEL_16:

      goto LABEL_17;
    }

    v9 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v31, *MEMORY[0x277CBBF50], 4, @"Didn't get any configuration from the server");
    goto LABEL_10;
  }

  v10 = objc_msgSend_container(*(a1 + 32), v7, v8);
  v13 = objc_msgSend_applicationBundleIdentifierForContainerAccess(v10, v11, v12);
  v16 = objc_msgSend_container(*(a1 + 32), v14, v15);
  v19 = objc_msgSend_applicationVersion(v16, v17, v18);
  v22 = objc_msgSend_container(*(a1 + 32), v20, v21);
  v25 = objc_msgSend_containerID(v22, v23, v24);
  canSyncUsingVersion_forContainerID = objc_msgSend_applicationWithBundleID_canSyncUsingVersion_forContainerID_(v5, v26, v13, v19, v25);

  if (!canSyncUsingVersion_forContainerID)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v32 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Application version is not allowed by the server", buf, 2u);
    }

    v34 = *(a1 + 32);
    v9 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v33, *MEMORY[0x277CBBF50], 18, @"Application version is not allowed by the server");
    objc_msgSend_finishWithError_(v34, v35, v9);
    goto LABEL_16;
  }

  objc_msgSend__determineNetworkServiceType(*(a1 + 32), v28, v29);
LABEL_17:
}

void sub_225080AA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v78 = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_allowsAnonymousAccount(*(a1 + 32), a2, a3) & 1) == 0)
  {
    v7 = objc_msgSend_container(*(a1 + 32), v4, v5);
    v10 = objc_msgSend_entitlements(v7, v8, v9);
    v13 = objc_msgSend_cloudServices(v10, v11, v12);
    v15 = objc_msgSend_containsObject_(v13, v14, *MEMORY[0x277CBC8C8]);

    if (v15)
    {
      v18 = objc_msgSend_entitlements(v7, v16, v17);
      isBackgroundAssetsExtension = objc_msgSend_isBackgroundAssetsExtension(v18, v19, v20);

      if (isBackgroundAssetsExtension)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v24 = *MEMORY[0x277CBC860];
        if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(a1 + 32);
          v27 = v24;
          v30 = objc_msgSend_requestUUID(v26, v28, v29);
          v76 = 138543362;
          v77 = v30;
          _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEFAULT, "req: %{public}@, This request requires an authenticated account, which is unavailable for Background Assets Extension processes", &v76, 0xCu);
        }

        v31 = *(a1 + 32);
        objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v25, *MEMORY[0x277CBC120], 1002, 0, @"This request requires an authenticated account, which is unavailable for Background Assets Extension processes");
      }

      else
      {
        v41 = objc_msgSend_account(v7, v22, v23);
        v44 = objc_msgSend_accountType(v41, v42, v43);

        if (v44 == 1)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v47 = *MEMORY[0x277CBC860];
          if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
          {
            v49 = *(a1 + 32);
            v50 = v47;
            v53 = objc_msgSend_requestUUID(v49, v51, v52);
            v76 = 138543362;
            v77 = v53;
            _os_log_impl(&dword_22506F000, v50, OS_LOG_TYPE_DEFAULT, "req: %{public}@, This request requires an authenticated account", &v76, 0xCu);
          }

          v31 = *(a1 + 32);
          objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v48, *MEMORY[0x277CBC120], 1002, 0, @"This request requires an authenticated account");
        }

        else
        {
          if ((objc_msgSend_canAuthWithCloudKit(v7, v45, v46) & 1) == 0)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v56 = *MEMORY[0x277CBC860];
            if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
            {
              v58 = *(a1 + 32);
              v59 = v56;
              v62 = objc_msgSend_requestUUID(v58, v60, v61);
              v76 = 138543362;
              v77 = v62;
              _os_log_impl(&dword_22506F000, v59, OS_LOG_TYPE_DEFAULT, "req: %{public}@, This request requires an authenticated account, the current account cannot auth with CloudKit", &v76, 0xCu);
            }

            v63 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v57, *MEMORY[0x277CBC120], 1002, 0, @"This request requires an authenticated account, the current account cannot auth with CloudKit");
            v66 = objc_msgSend_container(*(a1 + 32), v64, v65);
            v39 = objc_msgSend_possiblyWrappedAuthTokenErrorGivenError_(v66, v67, v63);

            objc_msgSend_finishWithError_(*(a1 + 32), v68, v39);
            goto LABEL_18;
          }

          if (objc_msgSend_canAccessAccount(v7, v54, v55))
          {

            goto LABEL_2;
          }

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v69 = *MEMORY[0x277CBC860];
          if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
          {
            v71 = *(a1 + 32);
            v72 = v69;
            v75 = objc_msgSend_requestUUID(v71, v73, v74);
            v76 = 138543362;
            v77 = v75;
            _os_log_impl(&dword_22506F000, v72, OS_LOG_TYPE_DEFAULT, "req: %{public}@, CloudKit access was denied by user settings", &v76, 0xCu);
          }

          v31 = *(a1 + 32);
          objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v70, *MEMORY[0x277CBC120], 1002, 0, @"CloudKit access was denied by user settings");
        }
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v32 = *MEMORY[0x277CBC860];
      if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(a1 + 32);
        v35 = v32;
        v38 = objc_msgSend_requestUUID(v34, v36, v37);
        v76 = 138543362;
        v77 = v38;
        _os_log_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEFAULT, "req: %{public}@, This request requires an authenticated account, which is unavailable for CloudKit-Anonymous / App Clips processes", &v76, 0xCu);
      }

      v31 = *(a1 + 32);
      objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v33, *MEMORY[0x277CBC120], 1002, 0, @"This request requires an authenticated account, which is unavailable for CloudKit-Anonymous / App Clips processes");
    }
    v39 = ;
    objc_msgSend_finishWithError_(v31, v40, v39);
LABEL_18:

    return;
  }

LABEL_2:
  v6 = *(a1 + 32);

  MEMORY[0x2821F9670](v6, sel__setupPublicDatabaseURL, v5);
}

void sub_2250810B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_requiresAppPartitionURL(*(a1 + 32), a2, a3);
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = objc_msgSend_container(v7, v4, v5);

    if (!v8)
    {
      v30 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v31, *(a1 + 40), *(a1 + 32), @"CKDURLRequest.m", 1667, @"You must set the container");
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = v11;
      v18 = objc_msgSend_requestUUID(v14, v16, v17);
      v21 = objc_msgSend_ckShortDescription(*(a1 + 32), v19, v20);
      *buf = 138543618;
      v34 = v18;
      v35 = 2114;
      v36 = v21;
      _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEFAULT, "req: %{public}@, %{public}@ Requires a url for the app partition, getting it", buf, 0x16u);
    }

    v22 = objc_msgSend_container(*(a1 + 32), v12, v13);
    v25 = objc_msgSend_serverType(*(a1 + 32), v23, v24);
    v28 = objc_msgSend_operation(*(a1 + 32), v26, v27);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2253F03C4;
    v32[3] = &unk_27854D928;
    v32[4] = *(a1 + 32);
    objc_msgSend_fetchPublicURLForServerType_operation_completionHandler_(v22, v29, v25, v28, v32);
  }

  else
  {

    MEMORY[0x2821F9670](v7, sel__setupPrivateDatabaseURL, v5);
  }
}

uint64_t sub_225081324(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!objc_msgSend_length(v1, v2, v3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    LOWORD(v14) = 0;
    v8 = "Can't convert empty partition type string to a CKDPPartitionType";
    v9 = v7;
    v10 = 2;
    goto LABEL_8;
  }

  if ((objc_msgSend_isEqualToString_(v1, v4, @"userPartition") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(v1, v5, @"appPartition"))
    {
      goto LABEL_15;
    }

    if (objc_msgSend_isEqualToString_(v1, v11, @"databaseSpecificPartition"))
    {
      v6 = 2;
      goto LABEL_16;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      v6 = 1;
      goto LABEL_16;
    }

    v14 = 138543362;
    v15 = v1;
    v8 = "Partition type %{public}@ isn't known";
    v9 = v12;
    v10 = 12;
LABEL_8:
    _os_log_error_impl(&dword_22506F000, v9, OS_LOG_TYPE_ERROR, v8, &v14, v10);
    goto LABEL_15;
  }

  v6 = 0;
LABEL_16:

  return v6;
}

void sub_225081540(uint64_t a1, const char *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_requiresUserPartitionURL(*(a1 + 32), a2, a3);
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = objc_msgSend_container(v7, v4, v5);

    if (!v8)
    {
      v30 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v31, *(a1 + 40), *(a1 + 32), @"CKDURLRequest.m", 1686, @"You must set the container");
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = v11;
      v18 = objc_msgSend_requestUUID(v14, v16, v17);
      v21 = objc_msgSend_ckShortDescription(*(a1 + 32), v19, v20);
      *buf = 138543618;
      v34 = v18;
      v35 = 2114;
      v36 = v21;
      _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEFAULT, "req: %{public}@, %{public}@ Requires a url for the user partition, getting it", buf, 0x16u);
    }

    v22 = objc_msgSend_container(*(a1 + 32), v12, v13);
    v25 = objc_msgSend_serverType(*(a1 + 32), v23, v24);
    v28 = objc_msgSend_operation(*(a1 + 32), v26, v27);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2253F03D4;
    v32[3] = &unk_27854D928;
    v32[4] = *(a1 + 32);
    objc_msgSend_fetchPrivateURLForServerType_operation_completionHandler_(v22, v29, v25, v28, v32);
  }

  else
  {

    objc_msgSend__setupConfiguration(v7, v4, v5);
  }
}

uint64_t sub_225081AAC(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!objc_msgSend_length(v1, v2, v3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    LOWORD(v15) = 0;
    v12 = "Can't convert empty server type string to a CKDPServerType";
    v13 = v8;
    v14 = 2;
    goto LABEL_19;
  }

  if (objc_msgSend_isEqualToString_(v1, v4, @"CKDatabaseService"))
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  if ((objc_msgSend_isEqualToString_(v1, v5, @"CKShareService") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(v1, v6, @"CKDeviceService"))
    {
      v7 = 2;
      goto LABEL_9;
    }

    if (objc_msgSend_isEqualToString_(v1, v10, @"CKCodeService"))
    {
      v7 = 3;
      goto LABEL_9;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v15 = 138543362;
    v16 = v1;
    v12 = "Server type %{public}@ isn't known";
    v13 = v11;
    v14 = 12;
LABEL_19:
    _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, v12, &v15, v14);
    goto LABEL_8;
  }

  v7 = 1;
LABEL_9:

  return v7;
}

void sub_225081CE4(uint64_t a1, const char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_requiresConfiguration(*(a1 + 32), a2, a3);
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = objc_msgSend_container(v7, v4, v5);

    if (!v8)
    {
      v27 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, *(a1 + 40), *(a1 + 32), @"CKDURLRequest.m", 1706, @"You must set the container");
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = v11;
      v18 = objc_msgSend_requestUUID(v14, v16, v17);
      v21 = objc_msgSend_ckShortDescription(*(a1 + 32), v19, v20);
      *buf = 138543618;
      v31 = v18;
      v32 = 2114;
      v33 = v21;
      _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEFAULT, "req: %{public}@, %{public}@ Requires configuration, getting it", buf, 0x16u);
    }

    v22 = objc_msgSend_container(*(a1 + 32), v12, v13);
    v25 = objc_msgSend_operation(*(a1 + 32), v23, v24);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_2253F0498;
    v29[3] = &unk_278548770;
    v29[4] = *(a1 + 32);
    objc_msgSend_fetchConfigurationForOperation_withCompletionHandler_(v22, v26, v25, v29);
  }

  else
  {

    objc_msgSend__fetchContainerScopedUserID(v7, v4, v5);
  }
}

id sub_225081F2C(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_containerID(v1, v2, v3);
  v7 = objc_msgSend_account(v1, v5, v6);
  v10 = objc_msgSend_accountID(v7, v8, v9);

  v13 = @"Default";
  if (*MEMORY[0x277CBC810] == 1)
  {
    v14 = objc_msgSend_deviceContext(v1, v11, v12);
    v17 = objc_msgSend_testDeviceReference(v14, v15, v16);

    if (v17)
    {
      v13 = @"UnitTest";
    }
  }

  v18 = MEMORY[0x277CCACA8];
  v19 = objc_msgSend_containerIdentifier(v4, v11, v12);
  objc_msgSend_environment(v4, v20, v21);
  v22 = CKContainerEnvironmentString();
  v24 = objc_msgSend_stringWithFormat_(v18, v23, @"%@-%@-%@-%@", v10, v19, v22, v13);

  return v24;
}

id CKVerifyFilters(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v1 = a1;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v18, v22, 16);
  if (v3)
  {
    v6 = v3;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v1);
        }

        v9 = objc_msgSend_fieldName(*(*(&v18 + 1) + 8 * i), v4, v5, v18);
        v12 = objc_msgSend_name(v9, v10, v11);

        v13 = sub_225088C60();
        v15 = objc_msgSend_containsObject_(v13, v14, v12);

        if ((v15 & 1) != 0 || !v12)
        {

          goto LABEL_13;
        }

        v16 = CKValidateKeyName();

        if (v16)
        {
          goto LABEL_14;
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v4, &v18, v22, 16);
      v16 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_13:
    v16 = 0;
  }

LABEL_14:

  return v16;
}

uint64_t sub_2250823E0()
{
  sub_22507CE94();
  v0 = swift_task_alloc();
  v1 = sub_22507D36C(v0);
  *v1 = v2;
  v1[1] = sub_225095DA4;
  v3 = sub_22507CC80();

  return v4(v3);
}

uint64_t sub_225082488(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_2250861CC;

  return sub_22508255C();
}

uint64_t sub_22508255C()
{
  sub_225072C10();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for PartialTrafficLog(0);
  v1[5] = v4;
  sub_22507CD44(v4);
  v1[6] = sub_22507D3C8();
  v5 = sub_225098658();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_225082610()
{

  return swift_slowAlloc();
}

unint64_t sub_225082638(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v6 = a1;

  return sub_225095AFC(v7, v5, va);
}

uint64_t sub_225082658()
{

  return swift_arrayDestroy();
}

void sub_2250826F4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setRecordFetcher_(*(a1 + 32), v4, v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22508847C;
  v9[3] = &unk_278549318;
  objc_copyWeak(&v10, (a1 + 40));
  v7 = objc_msgSend_recordFetcher(*(a1 + 32), v5, v6);
  objc_msgSend_setFetchAggregatorCompletionBlock_(v7, v8, v9);

  objc_destroyWeak(&v10);
}

void sub_2250830BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_22508378C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_container(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_options(v4, v5, v6);
  if (objc_msgSend_acceptServerSignedRecords(v7, v8, v9))
  {
    shouldRefetchTrusts = objc_msgSend_shouldRefetchTrusts(CKDServerTrustCache, v10, v11);

    if (shouldRefetchTrusts)
    {
      objc_msgSend_setFetchAttempt(CKDServerTrustCache, v13, v14);
      v15 = objc_opt_new();
      v18 = objc_msgSend_operation(*(a1 + 32), v16, v17);
      v19 = objc_opt_class();
      v22 = objc_msgSend_container(*(a1 + 32), v20, v21);
      objc_msgSend_spawnAndRunOperationOfClass_operationInfo_spawnQueue_container_operationConfigurationBlock_(v18, v23, v19, v15, 0, v22, &unk_28385E7A0);

      return objc_msgSend__fetchDeviceID(*(a1 + 32), v24, v25, v39);
    }
  }

  else
  {
  }

  if (objc_msgSend_shouldRefetchTrusts(CKDServerTrustCache, v13, v14))
  {
    v28 = objc_msgSend_container(*(a1 + 32), v26, v27);
    v31 = objc_msgSend_options(v28, v29, v30);
    v34 = objc_msgSend_acceptServerSignedRecords(v31, v32, v33);

    if ((v34 & 1) == 0)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v35 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v39) = 0;
        v36 = "Skipping server certificate fetch because the container options do not specify accepting server signed records";
        v37 = &v39;
LABEL_16:
        _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, v36, v37, 2u);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v35 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v36 = "Skipping server certificate fetch because conditions are not appropriate for refetching";
      v37 = buf;
      goto LABEL_16;
    }
  }

  return objc_msgSend__fetchDeviceID(*(a1 + 32), v24, v25, v39);
}

uint64_t sub_225083A14(uint64_t a1, const char *a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_requiresDeviceID(*(a1 + 32), a2, a3);
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = objc_msgSend_container(v7, v4, v5);

    if (!v8)
    {
      v30 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v31, *(a1 + 40), *(a1 + 32), @"CKDURLRequest.m", 1814, @"You must set the container");
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = v11;
      v18 = objc_msgSend_requestUUID(v14, v16, v17);
      v21 = objc_msgSend_ckShortDescription(*(a1 + 32), v19, v20);
      v32 = 138543618;
      v33 = v18;
      v34 = 2114;
      v35 = v21;
      _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEFAULT, "req: %{public}@, %{public}@ Requires device id, getting it", &v32, 0x16u);
    }

    v22 = objc_msgSend_container(*(a1 + 32), v12, v13);
    v25 = objc_msgSend_deviceID(v22, v23, v24);
    objc_msgSend_setDeviceID_(*(a1 + 32), v26, v25);

    return objc_msgSend__acquireZoneGates(*(a1 + 32), v27, v28);
  }

  else
  {

    return objc_msgSend__acquireZoneGates(v7, v4, v5);
  }
}

void sub_225083C10(uint64_t a1, const char *a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isErrorInducerRequest(*(a1 + 32), a2, a3))
  {
    v6 = 0;
    v7 = objc_msgSend_count(0, v4, v5);
  }

  else
  {
    v6 = objc_msgSend_zoneIDsToLock(*(a1 + 32), v4, v5);
    v7 = objc_msgSend_count(v6, v10, v11);
  }

  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = v12;
      v19 = objc_msgSend_requestUUID(v15, v17, v18);
      v22 = objc_msgSend_ckShortDescription(*(a1 + 32), v20, v21);
      v25 = objc_msgSend_expectDelayBeforeRequestBegins(*(a1 + 32), v23, v24);
      v26 = @"false";
      *buf = 138543874;
      v38 = v19;
      if (v25)
      {
        v26 = @"true";
      }

      v39 = 2112;
      v40 = v22;
      v41 = 2114;
      v42 = v26;
      _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEFAULT, "req: %{public}@, %@ Requires zone id gates, grabbing them from gatekeeper, expectDelay %{public}@", buf, 0x20u);
    }

    v27 = objc_msgSend_container(*(a1 + 32), v13, v14);
    v30 = objc_msgSend_gatekeeper(v27, v28, v29);
    v31 = *(a1 + 32);
    v34 = objc_msgSend_expectDelayBeforeRequestBegins(v31, v32, v33);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_2253F0EA4;
    v36[3] = &unk_27854D9C0;
    v36[4] = *(a1 + 32);
    objc_msgSend_registerWaiter_forZoneIDs_expectDelayBeforeRequestBegins_completionHandler_(v30, v35, v31, v6, v34, v36);
  }

  else
  {
    objc_msgSend__prepareAuthTokens(*(a1 + 32), v8, v9);
  }
}

void sub_225083E38(uint64_t a1, const char *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    objc_msgSend_finishWithError_(v3, a2, a2);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    objc_msgSend__prepareCloudKitAuthToken(WeakRetained, v4, v5);
  }
}

void sub_225083E94(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_usesCloudKitAuthToken(*(a1 + 32), a2, a3))
  {
    v6 = *(a1 + 32);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_225075E4C;
    v17[3] = &unk_27854D9E8;
    objc_copyWeak(&v19, (a1 + 56));
    v17[4] = *(a1 + 32);
    v12 = *(a1 + 40);
    v7 = v12;
    v18 = v12;
    objc_msgSend__authTokenWithCompletionHandler_(v6, v8, v17);

    objc_destroyWeak(&v19);
  }

  if (objc_msgSend_usesiCloudAuthToken(*(a1 + 32), v4, v5, v12))
  {
    v9 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2253F0F40;
    v14[3] = &unk_27854DA10;
    objc_copyWeak(&v16, (a1 + 56));
    v13 = *(a1 + 40);
    v10 = v13;
    v15 = v13;
    objc_msgSend__authTokenWithCompletionHandler_(v9, v11, v14);

    objc_destroyWeak(&v16);
  }
}

uint64_t sub_225084060(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, a3);
  v7 = objc_msgSend_cacheChildAccounts(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_childAccounts(a1, v8, v9);
  }

  return MEMORY[0x2821F9670](a1, sel_aa_cloudKitAccount, v9);
}

void sub_225084290(uint64_t a1, const char *a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_container(*(a1 + 32), a2, a3);
  if (!v6)
  {
    v31 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v4, v5);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v31, v32, *(a1 + 40), *(a1 + 32), @"CKDURLRequest.m", 1725, @"You must set the container");
  }

  if (objc_msgSend_allowsAuthedAccount(*(a1 + 32), v4, v5) && (objc_msgSend_sendRequestAnonymously(*(a1 + 32), v7, v8) & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = v18;
      v23 = objc_msgSend_requestUUID(v19, v21, v22);
      v26 = objc_msgSend_ckShortDescription(*(a1 + 32), v24, v25);
      *buf = 138543618;
      v37 = v23;
      v38 = 2114;
      v39 = v26;
      _os_log_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEFAULT, "req: %{public}@, %{public}@ allows a container scoped user id, seeing if we have one", buf, 0x16u);
    }

    objc_initWeak(buf, *(a1 + 32));
    v29 = objc_msgSend_operation(*(a1 + 32), v27, v28);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_2253F04A8;
    v33[3] = &unk_27854D950;
    objc_copyWeak(&v35, buf);
    v34 = v6;
    objc_msgSend_fetchImportantUserIDsForOperation_withCompletionHandler_(v34, v30, v29, v33);

    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);
  }

  else
  {
    if (objc_msgSend_wantsProtocolTranslator(*(a1 + 32), v7, v8))
    {
      v11 = [CKDProtocolTranslator alloc];
      v14 = objc_msgSend_databaseScope(*(a1 + 32), v12, v13);
      v16 = objc_msgSend_initWithContainer_databaseScope_requireContainerScopedUserID_(v11, v15, v6, v14, 0);
      objc_msgSend_setTranslator_(*(a1 + 32), v17, v16);
    }

    objc_msgSend__fetchServerCertificatesIfNeeded(*(a1 + 32), v9, v10);
  }
}

void sub_225084518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22508454C(uint64_t a1)
{
  v81 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
    {
      v22 = *(a1 + 48);
      v23 = v19;
      v26 = objc_msgSend_requestUUID(v22, v24, v25);
      v27 = *(a1 + 40);
      v30 = objc_msgSend_account(*(a1 + 56), v28, v29);
      v33 = objc_msgSend_dsid(v30, v31, v32);
      *buf = 138543874;
      v76 = v26;
      v77 = 2114;
      v78 = v27;
      v79 = 2112;
      v80 = v33;
      _os_log_impl(&dword_22506F000, v23, OS_LOG_TYPE_INFO, "req: %{public}@, Fetched container scoped user ID of %{public}@ for dsid %@", buf, 0x20u);
    }

    if (objc_msgSend_wantsProtocolTranslator(*(a1 + 48), v20, v21))
    {
      v36 = [CKDProtocolTranslator alloc];
      v37 = *(a1 + 56);
      v40 = objc_msgSend_databaseScope(*(a1 + 48), v38, v39);
      v42 = objc_msgSend_initWithContainer_databaseScope_(v36, v41, v37, v40);
      objc_msgSend_setTranslator_(*(a1 + 48), v43, v42);

      v46 = objc_msgSend_pcsManager(*(a1 + 56), v44, v45);
      v49 = objc_msgSend_translator(*(a1 + 48), v47, v48);
      objc_msgSend_setIdentityDelegate_(v49, v50, v46);

      v53 = objc_msgSend_containerID(*(a1 + 56), v51, v52);
      v56 = objc_msgSend_specialContainerType(v53, v54, v55);

      if (v56 == 4)
      {
        v57 = objc_msgSend_translator(*(a1 + 48), v34, v35);
        objc_msgSend_setDontCreateValidatingParentReferences_(v57, v58, 1);
      }

      if (*MEMORY[0x277CBC810] == 1)
      {
        v59 = objc_msgSend_unitTestOverrides(*(a1 + 48), v34, v35);
        v61 = objc_msgSend_objectForKeyedSubscript_(v59, v60, @"FakeSDKVersion");

        if (v61)
        {
          v62 = objc_msgSend_unitTestOverrides(*(a1 + 48), v34, v35);
          v64 = objc_msgSend_objectForKeyedSubscript_(v62, v63, @"FakeSDKVersion");

          v67 = objc_msgSend_unsignedIntValue(v64, v65, v66);
          v70 = objc_msgSend_translator(*(a1 + 48), v68, v69);
          objc_msgSend_setClientSDKVersion_(v70, v71, v67);
        }
      }
    }

    objc_msgSend__fetchServerCertificatesIfNeeded(*(a1 + 48), v34, v35);
  }

  else
  {
    v73 = v2;
    if (objc_msgSend_allowsAnonymousAccount(*(a1 + 48), v3, v4))
    {
      if (objc_msgSend_wantsProtocolTranslator(*(a1 + 48), v6, v7))
      {
        v10 = [CKDProtocolTranslator alloc];
        v11 = *(a1 + 56);
        v14 = objc_msgSend_databaseScope(*(a1 + 48), v12, v13);
        v16 = objc_msgSend_initWithContainer_databaseScope_requireContainerScopedUserID_(v10, v15, v11, v14, 0);
        objc_msgSend_setTranslator_(*(a1 + 48), v17, v16);
      }

      objc_msgSend__fetchServerCertificatesIfNeeded(*(a1 + 48), v8, v9);
      v18 = v73;
    }

    else
    {
      v72 = v73;
      if (!v73)
      {
        v72 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], 0, *MEMORY[0x277CBC120], 1004, 0, @"Account couldn't get container scoped user id, no underlying error received");
      }

      v74 = v72;
      objc_msgSend_finishWithError_(*(a1 + 48), v72, v72);
      v18 = v74;
    }
  }
}

void sub_225084B70(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_225083E38;
  v4[3] = &unk_278547D70;
  v4[4] = v2;
  objc_copyWeak(&v5, &location);
  objc_msgSend_prepareRequestWithCompletion_(v2, v3, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void sub_225084C18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_225084E40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Block_object_dispose((v2 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_225085900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225085E54(uint64_t a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  sub_225097204();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;

  v9 = sub_225075280();

  return sub_22507C7AC(v9, v10);
}

uint64_t sub_225085F3C()
{
  sub_225072C10();
  if (sub_22507E8DC())
  {
    v1 = v0[6];
    v2 = v0[3];
    *v1 = v0[2];
    v1[1] = v2;
    swift_storeEnumTagMultiPayload();

    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_2250860CC;
    sub_22507CCC8(v0[6]);

    return sub_22507E9DC();
  }

  else
  {

    sub_225075274();

    return v5();
  }
}

uint64_t sub_2250860CC()
{
  sub_225072C10();
  sub_225075560();
  v2 = v1;
  sub_225075614();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v0;
  sub_225072D68();
  *v7 = v6;

  sub_22507F09C(v5);

  sub_225075274();

  return v8();
}

uint64_t sub_2250861CC()
{
  sub_22507CE94();
  sub_225075560();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_225072D68();
  *v4 = v3;

  v2[2](v2);
  _Block_release(v2);
  sub_225075274();

  return v5();
}

void sub_2250877FC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_225087848(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_225087894(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_2250878E0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_22508792C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_225087978(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_22508806C(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v8 = v2;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = *(a1 + 32);
    v14 = objc_msgSend_ckShortDescription(v11, v12, v13);
    v15 = 138543874;
    v16 = v10;
    v17 = 2048;
    v18 = v11;
    v19 = 2114;
    v20 = v14;
    _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Fetch aggregator <%{public}@: %p; %{public}@> finished", &v15, 0x20u);
  }

  v5 = *(a1 + 32);
  v6 = objc_msgSend_error(v5, v3, v4);
  objc_msgSend_finishWithError_(v5, v7, v6);
}

void sub_22508847C(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v11 = 134217984;
    v12 = WeakRetained;
    _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Record fetcher finished for query %p", &v11, 0xCu);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else if (!v3)
  {
    goto LABEL_7;
  }

  v8 = objc_msgSend_error(WeakRetained, v6, v7);

  if (!v8)
  {
    objc_msgSend_setError_(WeakRetained, v6, v3);
  }

LABEL_7:
  v9 = objc_msgSend_error(WeakRetained, v6, v7);
  objc_msgSend_finishWithError_(WeakRetained, v10, v9);
}

id sub_225088A84(void *a1)
{
  v1 = a1;
  if (objc_msgSend_isEqualToString_(v1, v2, *MEMORY[0x277CBBF08]))
  {
    v12 = objc_alloc(MEMORY[0x277CBC360]);
    v14 = objc_msgSend_initWithCode_format_(v12, v13, 12, @"Unsupported operation for special key-path allTokens");
    objc_exception_throw(v14);
  }

  v3 = v1;
  v5 = v3;
  if (qword_280D58570 == -1)
  {
    if (v3)
    {
LABEL_4:
      v6 = objc_msgSend_objectForKeyedSubscript_(qword_280D58568, v4, v5);
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_280D58570, &unk_28385E320);
    if (v5)
    {
      goto LABEL_4;
    }
  }

  v6 = 0;
LABEL_7:

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = objc_opt_new();
  objc_msgSend_setName_(v9, v10, v8);

  return v9;
}

uint64_t sub_225088B88(unint64_t a1)
{
  if (a1 >= 0xB || ((0x53Fu >> a1) & 1) == 0)
  {
    v4 = objc_alloc(MEMORY[0x277CBC360]);
    v6 = objc_msgSend_initWithCode_format_(v4, v5, 12, @"Unexpected operator for predicate", v1, v2);
    objc_exception_throw(v6);
  }

  return dword_225447E30[a1];
}

id sub_225088C60()
{
  if (qword_280D58560 != -1)
  {
    dispatch_once(&qword_280D58560, &unk_28385E300);
  }

  v1 = qword_280D58558;

  return v1;
}

uint64_t sub_225089FD0(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = v2;
    v10 = objc_msgSend_ckShortDescription(v6, v8, v9);
    v11 = 138543362;
    v12 = v10;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Placeholder op %{public}@ finished", &v11, 0xCu);
  }

  return objc_msgSend_transitionToFinished(*(a1 + 32), v3, v4);
}

uint64_t sub_22508B854(void *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v7 = objc_msgSend_entitlements(v4, v5, v6);
  v10 = objc_msgSend_cloudServices(v7, v8, v9);
  if ((objc_msgSend_containsObject_(v10, v11, *MEMORY[0x277CBC8C8]) & 1) == 0)
  {

LABEL_7:
    v20 = 0;
    goto LABEL_8;
  }

  v14 = objc_msgSend_entitlements(v4, v12, v13);
  isBackgroundAssetsExtension = objc_msgSend_isBackgroundAssetsExtension(v14, v15, v16);

  if (isBackgroundAssetsExtension & 1) != 0 || (sub_2250746BC(v3, v4))
  {
    goto LABEL_7;
  }

  if ((objc_msgSend_hasTCCAuthorization(v4, v18, v19) & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v22 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v23 = 138412546;
      v24 = v3;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_22506F000, v22, OS_LOG_TYPE_INFO, "TCC rejected a token for bundleID:%@, container:%@", &v23, 0x16u);
    }

    goto LABEL_7;
  }

  v20 = 1;
LABEL_8:

  return v20;
}

void sub_22508C29C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22508CB80(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = objc_msgSend_shared(CKDTrafficLogger, v3, v4);
    v9 = objc_msgSend_requestUUID(WeakRetained, v7, v8);
    objc_msgSend_logPartialRequestObjectDataWithRequestUUID_objectData_completionHandler_(v6, v10, v9, v11, &unk_28385E780);
  }
}

uint64_t sub_22508CC48(uint64_t a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  sub_22508D03C();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;

  v12 = sub_225075280();

  return sub_22507C7AC(v12, v13);
}

uint64_t sub_22508CCD4()
{
  sub_225094938();
  sub_22507E6E8();
  sub_22507EE04();
  v0 = swift_task_alloc();
  v1 = sub_22507D36C(v0);
  *v1 = v2;
  sub_22507CE00(v1);
  sub_2250957B8();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22508CD64(uint64_t a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v6;
  v7 = a2;

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v4[5] = v8;
  v4[6] = v10;
  v11 = swift_task_alloc();
  v4[7] = v11;
  *v11 = v4;
  v11[1] = sub_22508D280;

  return sub_22508CE68();
}

uint64_t sub_22508CE68()
{
  sub_225072C10();
  v5 = sub_2250755D0(v1, v2, v3, v4);
  *(v0 + 56) = v5;
  sub_22507CD44(v5);
  *(v0 + 64) = sub_22507D3C8();
  v6 = sub_225098658();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_22508CEDC()
{
  sub_22507CE94();
  if (sub_22507E8DC())
  {
    sub_22508E794();
    swift_storeEnumTagMultiPayload();

    v1 = sub_225075280();
    sub_22508D04C(v1, v2);
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_22508D180;
    sub_22507CCC8(*(v0 + 64));

    return sub_22507E9DC();
  }

  else
  {

    sub_225075274();

    return v5();
  }
}

uint64_t sub_22508CFD0()
{
  v3 = *(v1 - 136);

  return sub_22508D128(v3, v0);
}

uint64_t sub_22508CFE8()
{

  return swift_slowAlloc();
}

uint64_t sub_22508D04C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_22508D0A4(uint64_t a1)
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

uint64_t sub_22508D0E0()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 192);

  return sub_22508D128(v2, v3);
}

uint64_t sub_22508D128(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_22508D180()
{
  sub_225072C10();
  sub_225075560();
  v2 = v1;
  sub_225075614();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v0;
  sub_225072D68();
  *v7 = v6;

  sub_22507F09C(v5);

  sub_225075274();

  return v8();
}

uint64_t sub_22508D280()
{
  sub_225094938();
  sub_22507E6E8();
  sub_225075560();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_225072D68();
  *v4 = v3;

  v5 = sub_225075280();
  sub_22508D128(v5, v6);

  v2[2](v2);
  _Block_release(v2);
  sub_225075274();
  sub_2250957B8();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_22508D590()
{
  sub_225094938();
  sub_22507E6E8();
  sub_22507EE04();
  v0 = swift_task_alloc();
  v1 = sub_22507D36C(v0);
  *v1 = v2;
  sub_22507CE00(v1);
  sub_2250957B8();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22508D620(uint64_t a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v6;
  v7 = a2;

  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_22508E5D0;

  return sub_22508D70C();
}

uint64_t sub_22508D70C()
{
  sub_225072C10();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for Logger();
  v1[6] = v5;
  sub_22507D394(v5);
  v1[7] = v6;
  v1[8] = sub_22507D3C8();
  v7 = type metadata accessor for PartialTrafficLog(0);
  v1[9] = v7;
  sub_22507CD44(v7);
  v1[10] = sub_22507D3C8();
  v8 = sub_225098658();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_22508D7D8()
{
  v34 = v0;
  if (!sub_22507E8DC())
  {
LABEL_9:

    sub_225075274();
    sub_22508D008();

    __asm { BRAA            X1, X16 }
  }

  v1 = [*(v0 + 32) allHeaderFields];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_22508DBF8(v2);

  if (!v3)
  {
    v13 = *(v0 + 32);
    CKLog.getter();
    v14 = v13;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 56);
    v18 = *(v0 + 64);
    v20 = *(v0 + 48);
    if (v17)
    {
      v21 = *(v0 + 32);
      v32 = *(v0 + 48);
      v22 = sub_22507CA14();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 136315138;
      v24 = [v21 allHeaderFields];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v18;

      v25 = Dictionary.description.getter();
      v27 = v26;

      v28 = sub_225095AFC(v25, v27, &v33);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_22506F000, v15, v16, "Couldn't convert response headers to codable: %s", v22, 0xCu);
      sub_225073BF0(v23);
      sub_22507C9FC();
      sub_22507C9FC();

      (*(v19 + 8))(v31, v32);
    }

    else
    {

      (*(v19 + 8))(v18, v20);
    }

    goto LABEL_9;
  }

  v4 = *(v0 + 80);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = type metadata accessor for PartialTrafficLog.ResponseMetadata(0);

  Date.init()();
  v9 = [v5 statusCode];
  *v4 = v7;
  v4[1] = v6;
  *(v4 + *(v8 + 24)) = v9;
  *(v4 + *(v8 + 28)) = v3;
  sub_22507CC80();
  swift_storeEnumTagMultiPayload();
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  *v10 = v0;
  v10[1] = sub_22508E4A8;
  sub_22507CCC8(*(v0 + 80));
  sub_22508D008();

  return sub_22507E9DC();
}

uint64_t sub_22508DBA8()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_22508DBF8(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_2250B0DFC(&qword_27D719890, &qword_2254477F8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v21 = v1;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_11:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      sub_22508DECC(*(v1 + 48) + 40 * v11, __src);
      sub_22508DF28(*(v1 + 56) + 32 * v11, &__src[40]);
      memcpy(__dst, __src, sizeof(__dst));
      sub_22508DECC(__dst, v24);
      if (!swift_dynamicCast())
      {
        sub_22507F168(__dst, &unk_27D719760, &qword_225447800);

        goto LABEL_23;
      }

      sub_22508DF28(&__dst[40], v24);
      sub_22507F168(__dst, &unk_27D719760, &qword_225447800);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 &= v6 - 1;
      result = sub_22507DF9C(v22, v23);
      v12 = result;
      if (v13)
      {
        v14 = (v2[6] + 16 * result);
        *v14 = v22;
        v14[1] = v23;

        v15 = (v2[7] + 16 * v12);
        *v15 = v22;
        v15[1] = v23;
      }

      else
      {
        if (v2[2] >= v2[3])
        {
          goto LABEL_26;
        }

        *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        v16 = (v2[6] + 16 * result);
        *v16 = v22;
        v16[1] = v23;
        v17 = (v2[7] + 16 * result);
        *v17 = v22;
        v17[1] = v23;
        v18 = v2[2];
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          goto LABEL_27;
        }

        v2[2] = v20;
      }

      v9 = v10;
      v1 = v21;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

LABEL_23:

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_22508DF28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22508E088()
{
  sub_22507E6E8();
  v0 = swift_task_alloc();
  v1 = sub_22507D36C(v0);
  *v1 = v2;
  v1[1] = sub_225095DA4;
  v3 = sub_225072CE4();

  return v4(v3);
}

uint64_t sub_22508E13C(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v5[4] = v10;
  v5[5] = v8;

  v11 = swift_task_alloc();
  v5[6] = v11;
  *v11 = v5;
  v11[1] = sub_225091998;

  return sub_22508E250();
}

uint64_t sub_22508E250()
{
  sub_225072C10();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = type metadata accessor for PartialTrafficLog(0);
  v1[8] = v7;
  sub_22507CD44(v7);
  v1[9] = sub_22507D3C8();
  v8 = sub_225098658();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_22508E314()
{
  sub_225094938();
  sub_22507E6E8();
  sub_22507EE04();
  v0 = swift_task_alloc();
  v1 = sub_22507D36C(v0);
  *v1 = v2;
  sub_22507CE00(v1);
  sub_2250957B8();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22508E3A4(uint64_t a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v6;
  v7 = a2;

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v4[5] = v8;
  v4[6] = v10;
  v11 = swift_task_alloc();
  v4[7] = v11;
  *v11 = v4;
  v11[1] = sub_225091CA8;

  return sub_22508E804();
}

uint64_t sub_22508E4A8()
{
  sub_22507CE94();
  sub_22507F248();
  sub_225072D68();
  *v2 = v0;
  v3 = *(v0 + 80);
  v4 = *v1;
  *v2 = *v1;

  sub_22507F09C(v3);
  sub_22508D11C();

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_22508E5D0()
{
  sub_22507CE94();
  sub_225075560();
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_225072D68();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  sub_225075274();

  return v6();
}

unint64_t sub_22508E740(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v6 = a1;

  return sub_225095AFC(v7, v5, va);
}

uint64_t sub_22508E770(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83528];

  return sub_2250FA694(a1, a2, v3);
}

void *sub_22508E794()
{
  result = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  *result = v0[2];
  result[1] = v4;
  result[2] = v2;
  result[3] = v3;
  return result;
}

uint64_t sub_22508E804()
{
  sub_225072C10();
  v5 = sub_2250755D0(v1, v2, v3, v4);
  *(v0 + 56) = v5;
  sub_22507CD44(v5);
  *(v0 + 64) = sub_22507D3C8();
  v6 = sub_225098658();

  return MEMORY[0x2822009F8](v6);
}

void sub_22508E888(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__tearDownOutputStream(*(a1 + 32), a2, a3);
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;

  objc_sync_exit(obj);
}

uint64_t sub_22508E8F4(id *a1, void *a2, uint64_t a3)
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
        LOBYTE(v95) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v95) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v95, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v95 & 0x7F) << v10;
        if ((v95 & 0x80) == 0)
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

      v32 = v31 >> 3;
      if ((v31 >> 3) > 269)
      {
        if (v32 > 408)
        {
          if (v32 <= 800)
          {
            if (v32 > 503)
            {
              switch(v32)
              {
                case 0x1F8:
                  v33 = objc_alloc_init(CKDPShareDeclineResponse);
                  objc_storeStrong(a1 + 32, v33);
                  v95 = 0;
                  v96 = 0;
                  if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v87))
                  {
LABEL_225:

                    return 0;
                  }

                  goto LABEL_219;
                case 0x201:
                  v33 = objc_alloc_init(CKDPShareVettingInitiateResponse);
                  objc_storeStrong(a1 + 34, v33);
                  v95 = 0;
                  v96 = 0;
                  if (!PBReaderPlaceMark() || !sub_22535F2BC(v33, a2, v80))
                  {
                    goto LABEL_225;
                  }

                  goto LABEL_219;
                case 0x320:
                  v33 = objc_alloc_init(CKDPTokenRegistrationResponse);
                  objc_storeStrong(a1 + 38, v33);
                  v95 = 0;
                  v96 = 0;
                  if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v43))
                  {
                    goto LABEL_225;
                  }

                  goto LABEL_219;
              }
            }

            else
            {
              switch(v32)
              {
                case 0x199:
                  v33 = objc_alloc_init(CKDPZoneUsageSaveResponse);
                  objc_storeStrong(a1 + 55, v33);
                  v95 = 0;
                  v96 = 0;
                  if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v85))
                  {
                    goto LABEL_225;
                  }

                  goto LABEL_219;
                case 0x19A:
                  v33 = objc_alloc_init(CKDPShareUsageSaveResponse);
                  objc_storeStrong(a1 + 33, v33);
                  v95 = 0;
                  v96 = 0;
                  if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v78))
                  {
                    goto LABEL_225;
                  }

                  goto LABEL_219;
                case 0x1F7:
                  v33 = objc_alloc_init(CKDPShareAcceptResponse);
                  objc_storeStrong(a1 + 30, v33);
                  v95 = 0;
                  v96 = 0;
                  if (!PBReaderPlaceMark() || !sub_225358018(v33, a2, v38))
                  {
                    goto LABEL_225;
                  }

                  goto LABEL_219;
              }
            }
          }

          else
          {
            if (v32 <= 803)
            {
              if (v32 == 801)
              {
                v33 = objc_alloc_init(CKDPTokenUnregistrationResponse);
                objc_storeStrong(a1 + 39, v33);
                v95 = 0;
                v96 = 0;
                if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v82))
                {
                  goto LABEL_225;
                }
              }

              else if (v32 == 802)
              {
                v33 = objc_alloc_init(CKDPSetBadgeCountResponse);
                objc_storeStrong(a1 + 29, v33);
                v95 = 0;
                v96 = 0;
                if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v76))
                {
                  goto LABEL_225;
                }
              }

              else
              {
                v33 = objc_alloc_init(CKDPNotificationSyncResponse);
                objc_storeStrong(a1 + 18, v33);
                v95 = 0;
                v96 = 0;
                if (!PBReaderPlaceMark() || !CKDPNotificationSyncResponseReadFrom(v33, a2, v41))
                {
                  goto LABEL_225;
                }
              }

              goto LABEL_219;
            }

            if (v32 > 900)
            {
              if (v32 == 901)
              {
                v33 = objc_alloc_init(CKDPMarkAssetBrokenResponse);
                objc_storeStrong(a1 + 12, v33);
                v95 = 0;
                v96 = 0;
                if (!PBReaderPlaceMark() || !sub_2252FAF48(v33, a2, v74))
                {
                  goto LABEL_225;
                }

                goto LABEL_219;
              }

              if (v32 == 1101)
              {
                v33 = objc_alloc_init(CKDPCodeFunctionInvokeResponse);
                objc_storeStrong(a1 + 10, v33);
                v95 = 0;
                v96 = 0;
                if (!PBReaderPlaceMark() || !sub_2252E8B1C(v33, a2, v45))
                {
                  goto LABEL_225;
                }

                goto LABEL_219;
              }
            }

            else
            {
              if (v32 == 804)
              {
                v33 = objc_alloc_init(CKDPNotificationMarkReadResponse);
                objc_storeStrong(a1 + 17, v33);
                v95 = 0;
                v96 = 0;
                if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v72))
                {
                  goto LABEL_225;
                }

                goto LABEL_219;
              }

              if (v32 == 900)
              {
                v33 = objc_alloc_init(CKDPArchiveRecordsResponse);
                objc_storeStrong(a1 + 5, v33);
                v95 = 0;
                v96 = 0;
                if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v36))
                {
                  goto LABEL_225;
                }

                goto LABEL_219;
              }
            }
          }
        }

        else if (v32 <= 400)
        {
          if (v32 > 300)
          {
            switch(v32)
            {
              case 0x12D:
                v33 = objc_alloc_init(CKDPSubscriptionRetrieveResponse);
                objc_storeStrong(a1 + 37, v33);
                v95 = 0;
                v96 = 0;
                if (!PBReaderPlaceMark() || !sub_22536C8AC(v33, a2, v86))
                {
                  goto LABEL_225;
                }

                goto LABEL_219;
              case 0x12F:
                v33 = objc_alloc_init(CKDPSubscriptionDeleteResponse);
                objc_storeStrong(a1 + 36, v33);
                v95 = 0;
                v96 = 0;
                if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v79))
                {
                  goto LABEL_225;
                }

                goto LABEL_219;
              case 0x190:
                v33 = objc_alloc_init(CKDPUserRetrieveResponse);
                objc_storeStrong(a1 + 47, v33);
                v95 = 0;
                v96 = 0;
                if (!PBReaderPlaceMark() || !sub_22537FDD4(v33, a2, v42))
                {
                  goto LABEL_225;
                }

                goto LABEL_219;
            }
          }

          else
          {
            switch(v32)
            {
              case 0x10E:
                v33 = objc_alloc_init(CKDPAnonymousShareAddResponse);
                objc_storeStrong(a1 + 3, v33);
                v95 = 0;
                v96 = 0;
                if (!PBReaderPlaceMark() || !sub_2252DB87C(v33, a2, v84))
                {
                  goto LABEL_225;
                }

                goto LABEL_219;
              case 0x10F:
                v33 = objc_alloc_init(CKDPAnonymousShareRemoveResponse);
                objc_storeStrong(a1 + 4, v33);
                v95 = 0;
                v96 = 0;
                if (!PBReaderPlaceMark() || !sub_2252DC430(v33, a2, v77))
                {
                  goto LABEL_225;
                }

                goto LABEL_219;
              case 0x12C:
                v33 = objc_alloc_init(CKDPSubscriptionCreateResponse);
                objc_storeStrong(a1 + 35, v33);
                v95 = 0;
                v96 = 0;
                if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v37))
                {
                  goto LABEL_225;
                }

                goto LABEL_219;
            }
          }
        }

        else
        {
          if (v32 <= 403)
          {
            if (v32 == 401)
            {
              v33 = objc_alloc_init(CKDPUserQueryResponse);
              objc_storeStrong(a1 + 46, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_22537F6DC(v33, a2, v81))
              {
                goto LABEL_225;
              }
            }

            else if (v32 == 402)
            {
              v33 = objc_alloc_init(CKDPUserPrivacySettingsRetrieveResponse);
              objc_storeStrong(a1 + 44, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_22537D3F4(&v33->super.super.isa, a2, v75))
              {
                goto LABEL_225;
              }
            }

            else
            {
              v33 = objc_alloc_init(CKDPUserPrivacySettingsUpdateResponse);
              objc_storeStrong(a1 + 45, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v40))
              {
                goto LABEL_225;
              }
            }

            goto LABEL_219;
          }

          if (v32 > 406)
          {
            if (v32 == 407)
            {
              v33 = objc_alloc_init(CKDPAdopterCapabilitiesSaveResponse);
              objc_storeStrong(a1 + 2, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v73))
              {
                goto LABEL_225;
              }
            }

            else
            {
              v33 = objc_alloc_init(CKDPAdopterCapabilitiesCheckResponse);
              objc_storeStrong(a1 + 1, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_2252D6D54(v33, a2, v44))
              {
                goto LABEL_225;
              }
            }

            goto LABEL_219;
          }

          if (v32 == 404)
          {
            v33 = objc_alloc_init(CKDPUserPrivacySettingsResetResponse);
            objc_storeStrong(a1 + 43, v33);
            v95 = 0;
            v96 = 0;
            if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v71))
            {
              goto LABEL_225;
            }

            goto LABEL_219;
          }

          if (v32 == 405)
          {
            v33 = objc_alloc_init(CKDPUserPrivacySettingsBatchLookupResponse);
            objc_storeStrong(a1 + 42, v33);
            v95 = 0;
            v96 = 0;
            if (!PBReaderPlaceMark() || !sub_22537B690(v33, a2, v35))
            {
              goto LABEL_225;
            }

            goto LABEL_219;
          }
        }
      }

      else
      {
        if (v32 > 199)
        {
          switch(v32)
          {
            case 200:
              v33 = objc_alloc_init(CKDPZoneSaveResponse);
              objc_storeStrong(a1 + 54, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_225391C78(v33, a2, v34))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 201:
              v33 = objc_alloc_init(CKDPZoneRetrieveResponse);
              objc_storeStrong(a1 + 53, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_22538E5FC(v33, a2, v63))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 202:
              v33 = objc_alloc_init(CKDPZoneDeleteResponse);
              objc_storeStrong(a1 + 50, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v60))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 203:
              v33 = objc_alloc_init(CKDPZoneRetrieveChangesResponse);
              objc_storeStrong(a1 + 52, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_2250A4128(v33, a2, v54))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 205:
              v33 = objc_alloc_init(CKDPZoneChildrenRetrieveResponse);
              objc_storeStrong(a1 + 49, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_2253852C0(v33, a2, v62))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 206:
              v33 = objc_alloc_init(CKDPZoneRetrieveAncestorsResponse);
              objc_storeStrong(a1 + 51, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_225389C94(v33, a2, v66))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 210:
              v33 = objc_alloc_init(CKDPRecordSaveResponse);
              objc_storeStrong(a1 + 26, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_2253353C8(v33, a2, v65))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 211:
              v33 = objc_alloc_init(CKDPRecordRetrieveResponse);
              objc_storeStrong(a1 + 24, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_225330520(v33, a2, v64))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 212:
              v33 = objc_alloc_init(CKDPRecordRetrieveVersionsResponse);
              objc_storeStrong(a1 + 25, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_225331A7C(v33, a2, v58))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 213:
              v33 = objc_alloc_init(CKDPRecordRetrieveChangesResponse);
              objc_storeStrong(a1 + 23, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_2253296DC(v33, a2, v59))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 214:
              v33 = objc_alloc_init(CKDPRecordDeleteResponse);
              objc_storeStrong(a1 + 20, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v57))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 216:
              v33 = objc_alloc_init(CKDPRecordResolveTokenResponse);
              objc_storeStrong(a1 + 22, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_225326400(v33, a2, v50))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 217:
              v33 = objc_alloc_init(CKDPFetchArchivedRecordsResponse);
              objc_storeStrong(a1 + 9, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_2252F1A14(v33, a2, v61))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 218:
              v33 = objc_alloc_init(CKDPRecordMoveResponse);
              objc_storeStrong(a1 + 21, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_2253226C8(v33, a2, v56))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 219:
              v33 = objc_alloc_init(CKDPShareAccessResponse);
              objc_storeStrong(a1 + 31, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v48))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 220:
              v33 = objc_alloc_init(CKDPQueryRetrieveResponse);
              objc_storeStrong(a1 + 19, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_225090934(v33, a2, v49))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 222:
              v33 = objc_alloc_init(CKDPMergeableDeltaSaveResponse);
              objc_storeStrong(a1 + 16, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v53))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 223:
              v33 = objc_alloc_init(CKDPMergeableDeltaMetadataRetrieveResponse);
              objc_storeStrong(a1 + 13, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_2252FDFA8(v33, a2, v46))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 224:
              v33 = objc_alloc_init(CKDPMergeableDeltaReplaceResponse);
              objc_storeStrong(a1 + 14, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v51))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 225:
              v33 = objc_alloc_init(CKDPMergeableDeltaRetrieveResponse);
              objc_storeStrong(a1 + 15, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_22530096C(v33, a2, v52))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 230:
              v33 = objc_alloc_init(CKDPAssetUploadTokenRetrieveResponse);
              objc_storeStrong(a1 + 6, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_2252E3F04(v33, a2, v55))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 240:
              v33 = objc_alloc_init(CKDPDeleteContainerResponse);
              objc_storeStrong(a1 + 8, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v67))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 243:
              v33 = objc_alloc_init(CKDPUserAvailableQuotaResponse);
              objc_storeStrong(a1 + 41, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_2253798F4(v33, a2, v70))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 244:
              v33 = objc_alloc_init(CKDPBundlesForContainerResponse);
              objc_storeStrong(a1 + 7, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_2252E6138(v33, a2, v69))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 250:
              v33 = objc_alloc_init(CKDPWebAuthTokenRetrieveResponse);
              objc_storeStrong(a1 + 48, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_225380BD8(v33, a2, v68))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            case 260:
              v33 = objc_alloc_init(CKDPUpdateMissingAssetStatusResponse);
              objc_storeStrong(a1 + 40, v33);
              v95 = 0;
              v96 = 0;
              if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v47))
              {
                goto LABEL_225;
              }

              goto LABEL_219;
            default:
              goto LABEL_222;
          }
        }

        switch(v32)
        {
          case 2:
            v33 = objc_alloc_init(CKDPOperation);
            objc_storeStrong(a1 + 27, v33);
            v95 = 0;
            v96 = 0;
            if (!PBReaderPlaceMark() || !CKDPOperationReadFrom(v33, a2, v83))
            {
              goto LABEL_225;
            }

            goto LABEL_219;
          case 3:
            v33 = objc_alloc_init(CKDPResponseOperationResult);
            objc_storeStrong(a1 + 28, v33);
            v95 = 0;
            v96 = 0;
            if (!PBReaderPlaceMark() || !CKDPResponseOperationResultReadFrom(v33, a2, v88))
            {
              goto LABEL_225;
            }

            goto LABEL_219;
          case 4:
            v33 = objc_alloc_init(CKDPResponseOperationHeader);
            objc_storeStrong(a1 + 11, v33);
            v95 = 0;
            v96 = 0;
            if (!PBReaderPlaceMark() || !sub_2250906EC(v33, a2, v39))
            {
              goto LABEL_225;
            }

LABEL_219:
            PBReaderRecallMark();

            goto LABEL_220;
        }
      }

LABEL_222:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_220:
      v91 = objc_msgSend_position(a2, v89, v90);
    }

    while (v91 < objc_msgSend_length(a2, v92, v93));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPOperationReadFrom(uint64_t a1, void *a2, uint64_t a3)
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
        LOBYTE(v104[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v104[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v104, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v104[0] & 0x7F) << v10;
        if ((v104[0] & 0x80) == 0)
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
      if ((v31 >> 3) <= 3)
      {
        break;
      }

      if (v32 == 4)
      {
        v57 = 0;
        v58 = 0;
        v59 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          LOBYTE(v104[0]) = 0;
          v60 = objc_msgSend_position(a2, v32, v9, v104[0]) + 1;
          if (v60 >= objc_msgSend_position(a2, v61, v62) && (v65 = objc_msgSend_position(a2, v63, v64) + 1, v65 <= objc_msgSend_length(a2, v66, v67)))
          {
            v68 = objc_msgSend_data(a2, v63, v64);
            v71 = objc_msgSend_position(a2, v69, v70);
            objc_msgSend_getBytes_range_(v68, v72, v104, v71, 1);

            v75 = objc_msgSend_position(a2, v73, v74);
            objc_msgSend_setPosition_(a2, v76, v75 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v63, v64);
          }

          v59 |= (v104[0] & 0x7F) << v57;
          if ((v104[0] & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v30 = v58++ >= 9;
          if (v30)
          {
            LOBYTE(v53) = 0;
            goto LABEL_60;
          }
        }

        v53 = (v59 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_60:
        v99 = 36;
        goto LABEL_63;
      }

      if (v32 == 5)
      {
        v55 = PBReaderReadData();
        v56 = 24;
        goto LABEL_58;
      }

      if (v32 != 6)
      {
        goto LABEL_46;
      }

      v54 = objc_alloc_init(MEMORY[0x277CBC250]);
      objc_storeStrong((a1 + 8), v54);
      v104[0] = 0;
      v104[1] = 0;
      if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_68:
      v100 = objc_msgSend_position(a2, v32, v9);
      if (v100 >= objc_msgSend_length(a2, v101, v102))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    switch(v32)
    {
      case 1:
        v55 = PBReaderReadString();
        v56 = 16;
LABEL_58:
        v98 = *(a1 + v56);
        *(a1 + v56) = v55;

        goto LABEL_68;
      case 2:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v104[0]) = 0;
          v80 = objc_msgSend_position(a2, v32, v9, v104[0]) + 1;
          if (v80 >= objc_msgSend_position(a2, v81, v82) && (v85 = objc_msgSend_position(a2, v83, v84) + 1, v85 <= objc_msgSend_length(a2, v86, v87)))
          {
            v88 = objc_msgSend_data(a2, v83, v84);
            v91 = objc_msgSend_position(a2, v89, v90);
            objc_msgSend_getBytes_range_(v88, v92, v104, v91, 1);

            v95 = objc_msgSend_position(a2, v93, v94);
            objc_msgSend_setPosition_(a2, v96, v95 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v83, v84);
          }

          v79 |= (v104[0] & 0x7F) << v77;
          if ((v104[0] & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v30 = v78++ >= 9;
          if (v30)
          {
            v97 = 0;
            goto LABEL_67;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v97 = 0;
        }

        else
        {
          v97 = v79;
        }

LABEL_67:
        *(a1 + 32) = v97;
        goto LABEL_68;
      case 3:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 40) |= 4u;
        while (1)
        {
          LOBYTE(v104[0]) = 0;
          v36 = objc_msgSend_position(a2, v32, v9, v104[0]) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, v104, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v104[0] & 0x7F) << v33;
          if ((v104[0] & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            LOBYTE(v53) = 0;
            goto LABEL_62;
          }
        }

        v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_62:
        v99 = 37;
LABEL_63:
        *(a1 + v99) = v53;
        goto LABEL_68;
    }

LABEL_46:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_68;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2250902CC()
{
  sub_22507CE94();
  if (sub_22507E8DC())
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 48);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    *v1 = *(v0 + 16);
    *(v1 + 8) = v3;
    *(v1 + 16) = v4;
    *(v1 + 32) = v2;
    swift_storeEnumTagMultiPayload();

    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_225091898;
    sub_22507CCC8(*(v0 + 72));

    return sub_22507E9DC();
  }

  else
  {

    sub_225075274();

    return v7();
  }
}

uint64_t CKDPResponseOperationResultReadFrom(uint64_t a1, void *a2, uint64_t a3)
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
        v54 = objc_alloc_init(CKDPResponseOperationResultError);
        objc_storeStrong((a1 + 16), v54);
        v60[0] = 0;
        v60[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPResponseOperationResultErrorReadFrom(v54, a2, v55))
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
        *(a1 + 24) |= 1u;
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
        *(a1 + 8) = v53;
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

uint64_t sub_2250906EC(void *a1, void *a2, uint64_t a3)
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
        LOBYTE(v43) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v43) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v43, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v43 & 0x7F) << v10;
        if ((v43 & 0x80) == 0)
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
        v32 = objc_alloc_init(CKDPResponseOperationHeaderAssetAuthorizationResponse);
        objc_msgSend_addAssetAuthorizationResponses_(a1, v33, v32);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_2253498B4(v32, a2, v34))
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
      v39 = objc_msgSend_position(a2, v37, v38);
      if (v39 >= objc_msgSend_length(a2, v40, v41))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = objc_alloc_init(CKDPThrottlingConfig);
    objc_msgSend_addThrottleConfig_(a1, v35, v32);
    v43 = 0;
    v44 = 0;
    if (!PBReaderPlaceMark() || !sub_22536F5DC(v32, a2, v36))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225090934(void *a1, void *a2, uint64_t a3)
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
        LOBYTE(v42[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v42[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42[0] & 0x7F) << v10;
        if ((v42[0] & 0x80) == 0)
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
        v32 = objc_alloc_init(CKDPQueryRetrieveResponseQueryResult);
        objc_msgSend_addQueryResults_(a1, v33, v32);
        v42[0] = 0;
        v42[1] = 0;
        if (!PBReaderPlaceMark() || !sub_22509B4D4(v32, a2, v34))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v35 = PBReaderReadData();
    v32 = a1[1];
    a1[1] = v35;
LABEL_23:

    goto LABEL_25;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225090C10(uint64_t a1, void *a2, void *a3, void *a4)
{
  v88 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v15 = objc_msgSend_operation(WeakRetained, v11, v12);
  v16 = MEMORY[0x277CBC810];
  if (*MEMORY[0x277CBC810] == 1)
  {
    v17 = objc_msgSend_unitTestOverrides(WeakRetained, v13, v14);
    v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"DropOperationUUIDsInResponse");
    if (v19)
    {
      v20 = v19;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        objc_msgSend_setResponse_(v7, v13, 0);
      }
    }

    else
    {
    }
  }

  v22 = objc_msgSend__handleServerProtobufResult_rawData_(WeakRetained, v13, v7, v8);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v22 <= 1)
  {
    v25 = v7;
    v28 = objc_msgSend_response(v25, v26, v27);
    v31 = objc_msgSend_operationUUID(v28, v29, v30);

    if (v31)
    {
      v83 = v9;
      v34 = v8;
      v35 = v15;
      v36 = objc_msgSend_responseObjectUUIDs(WeakRetained, v32, v33);
      v38 = objc_msgSend_containsObject_(v36, v37, v31);

      if (v38)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v15 = v35;
        v41 = *MEMORY[0x277CBC860];
        v8 = v34;
        if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
        {
          v75 = v41;
          v78 = objc_msgSend_requestUUID(WeakRetained, v76, v77);
          *buf = 138543362;
          v87 = v78;
          _os_log_debug_impl(&dword_22506F000, v75, OS_LOG_TYPE_DEBUG, "req: %{public}@, Warn: Dropping protobuf result since we've alredy returned it to the client. This likely happened because of a request timeout.", buf, 0xCu);
        }

        v83[2](v83);

        goto LABEL_38;
      }

      v42 = objc_msgSend_responseObjectUUIDs(WeakRetained, v39, v40);
      objc_msgSend_addObject_(v42, v43, v31);

      v15 = v35;
      v8 = v34;
      v9 = v83;
    }

    v46 = objc_msgSend_header(v25, v32, v33);
    if (v46)
    {
      objc_msgSend_translator(WeakRetained, v44, v45);
      v47 = v9;
      v48 = v8;
      v50 = v49 = v15;
      objc_msgSend_consumeResponseHeader_(v50, v51, v46);

      v15 = v49;
      v8 = v48;
      v9 = v47;
      v16 = MEMORY[0x277CBC810];
    }
  }

  if (*v16 == 1)
  {
    v52 = objc_msgSend_unitTestOverrides(WeakRetained, v23, v24);
    v54 = objc_msgSend_objectForKeyedSubscript_(v52, v53, @"FakeZoneBusyResponseFromServer");

    if (v54)
    {
      v55 = objc_opt_new();
      objc_msgSend_setRetryAfterSeconds_(v55, v56, 20);
      v57 = objc_opt_new();
      objc_msgSend_setType_(v57, v58, 7);
      objc_msgSend_setServerError_(v55, v59, v57);
      v62 = objc_msgSend_result(v7, v60, v61);
      objc_msgSend_setError_(v62, v63, v55);

      v66 = objc_msgSend_result(v7, v64, v65);
      objc_msgSend_setCode_(v66, v67, 3);

      goto LABEL_27;
    }
  }

  if (v22 == 2)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v70 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
    {
      v79 = v70;
      v82 = objc_msgSend_requestUUID(WeakRetained, v80, v81);
      *buf = 138543362;
      v87 = v82;
      _os_log_error_impl(&dword_22506F000, v79, OS_LOG_TYPE_ERROR, "req: %{public}@, Task level failure encountered while parsing", buf, 0xCu);

      if (!v9)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v22 != 1)
  {
    if (!v22 && WeakRetained)
    {
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = sub_2253ED90C;
      v84[3] = &unk_27854D888;
      v84[4] = WeakRetained;
      v85 = v9;
      objc_msgSend_requestDidParseProtobufObject_completionHandler_(WeakRetained, v23, v7, v84);

      goto LABEL_38;
    }

LABEL_36:
    if (!v9)
    {
      goto LABEL_38;
    }

LABEL_37:
    v9[2](v9);

    goto LABEL_38;
  }

LABEL_27:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v68 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
  {
    v71 = v68;
    v74 = objc_msgSend_requestUUID(WeakRetained, v72, v73);
    *buf = 138543362;
    v87 = v74;
    _os_log_debug_impl(&dword_22506F000, v71, OS_LOG_TYPE_DEBUG, "req: %{public}@, Successfully parsed node describing an error", buf, 0xCu);
  }

  objc_msgSend_requestDidParseNodeFailure_(WeakRetained, v69, v7);
  if (v9)
  {
    goto LABEL_37;
  }

LABEL_38:
}

void sub_2250911F4(void *a1, const char *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1 && *MEMORY[0x277CBC810] == 1 && (sub_2253EA6F4(a1, a2, a3) & 1) == 0)
  {
    v6 = objc_msgSend_unitTestOverrides(a1, v4, v5);
    v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"TestInjectedThrottles");
    if (objc_msgSend_count(v8, v9, v10))
    {
      v13 = objc_msgSend_operation(a1, v11, v12);
      v16 = objc_msgSend_deviceContext(v13, v14, v15);
      v19 = objc_msgSend_throttleManager(v16, v17, v18);

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v20 = v8;
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v27, v31, 16);
      if (v22)
      {
        v24 = v22;
        v25 = *v28;
        do
        {
          v26 = 0;
          do
          {
            if (*v28 != v25)
            {
              objc_enumerationMutation(v20);
            }

            objc_msgSend_addThrottle_(v19, v23, *(*(&v27 + 1) + 8 * v26++), v27);
          }

          while (v24 != v26);
          v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v27, v31, 16);
        }

        while (v24);
      }
    }
  }
}

uint64_t sub_225091898()
{
  sub_225072C10();
  sub_225075560();
  v2 = v1;
  sub_225075614();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v0;
  sub_225072D68();
  *v7 = v6;

  sub_22507F09C(v5);

  sub_225075274();

  return v8();
}

uint64_t sub_225091998()
{
  sub_22507CE94();
  sub_225075560();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_225072D68();
  *v4 = v3;

  v2[2](v2);
  _Block_release(v2);
  sub_225075274();

  return v5();
}

uint64_t sub_225091BA8()
{
  sub_22507CE94();
  if (sub_22507E8DC())
  {
    sub_22508E794();
    swift_storeEnumTagMultiPayload();

    v1 = sub_225075280();
    sub_22508D04C(v1, v2);
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_225091CA4;
    sub_22507CCC8(*(v0 + 64));

    return sub_22507E9DC();
  }

  else
  {

    sub_225075274();

    return v5();
  }
}

uint64_t CKDaemonOperationTypeForClass(void *a1)
{
  v1 = qword_280D58630;
  v3 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_280D58630, &unk_28385E9A0);
  }

  v4 = objc_msgSend_objectForKeyedSubscript_(qword_280D58628, v2, v3);

  v7 = objc_msgSend_integerValue(v4, v5, v6);
  return v7;
}

void sub_225093098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_225094964();
  v9 = v8;
  v11 = v10;
  v14 = sub_2250B0DFC(v12, v13);
  sub_225072D1C();
  v16 = v15;
  sub_22507CA80();
  MEMORY[0x28223BE20](v17);
  sub_2250FBCB8();
  sub_225073BAC(v11, v11[3]);
  v9();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v16 + 8))(v7, v14);
  sub_225095814();
}

unint64_t sub_225093204()
{
  result = qword_280D53D08;
  if (!qword_280D53D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D08);
  }

  return result;
}

uint64_t sub_22509327C()
{
  sub_22507E6E8();
  sub_225075560();
  v3 = v2;
  sub_225075614();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  sub_225072D68();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (!v0)
  {

    sub_225075274();

    __asm { BRAA            X1, X16 }
  }

  sub_225093C30();

  return MEMORY[0x2822009F8]();
}

BOOL sub_22509341C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_225093460()
{
  sub_22507CE94();
  sub_225075560();
  sub_225075614();
  *v3 = v2;
  v4 = *v1;
  sub_225072D68();
  *v5 = v4;
  *(v6 + 56) = v0;

  v7 = sub_22507CC80();
  v8(v7);
  sub_225093C30();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2250935B4()
{
  sub_225072C10();
  if (static Task<>.isCancelled.getter())
  {

    sub_225075274();

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_225095FCC;

    return sub_225093680();
  }
}

uint64_t sub_225093680()
{
  sub_225072C10();
  *(v1 + 40) = v0;
  v2 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  sub_22507CD44(v2);
  *(v1 + 48) = sub_22507D3C8();
  v3 = sub_225098658();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_225093704()
{
  sub_225094938();
  sub_22507E6E8();
  v1 = v0[5];
  swift_beginAccess();
  v2 = v1[14];
  v3 = MEMORY[0x277D84F90];
  v1[15] = 0;
  v1[16] = 0;
  v1[14] = v3;
  v4 = v1[18];
  v5 = MEMORY[0x277D84F78];
  if (v4)
  {

    v6 = sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
    MEMORY[0x22AA63030](v4, v5 + 8, v6, MEMORY[0x277D84950]);
  }

  v8 = v0[5];
  v7 = v0[6];
  v1[18] = 0;

  *(v8 + 136) = 0;
  v9 = swift_unknownObjectRelease();
  MEMORY[0x22AA62FD0](v9);
  v10 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v7, 0, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  v0[7] = sub_2250FCFE0(0, 0, v7, &unk_225447830, v11);
  sub_22507F168(v7, &qword_27D7190D0, &qword_225445B10);
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_225095E74;
  sub_2250957B8();

  return MEMORY[0x282200460](v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_2250938DC()
{
  sub_22507CE94();
  sub_225093448();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  v3 = sub_22507F35C(v1);

  return v4(v3);
}

uint64_t sub_22509396C()
{
  sub_22507CE94();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = sub_225075264(v3);
  *v4 = v5;
  v4[1] = sub_225095CC0;

  return v7(v1);
}

uint64_t sub_225093A58()
{
  sub_22507CE94();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_225075264(v3);
  *v4 = v5;
  v4[1] = sub_225095DA4;
  v6 = sub_225075340();

  return sub_225093AF8(v6, v7, v1, v2);
}

uint64_t sub_225093AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22509459C, 0, 0);
}

uint64_t sub_225093BF8()
{

  return swift_slowAlloc();
}

uint64_t sub_225093C3C(void *a1)
{
  v122 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for UUID();
  sub_225072D1C();
  v106 = v4;
  MEMORY[0x28223BE20](v5);
  sub_225072C00();
  v8 = v7 - v6;
  v9 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v9 - 8);
  sub_225072C00();
  v12 = v11 - v10;
  v13 = type metadata accessor for Logger();
  sub_225072D1C();
  v105 = v14;
  MEMORY[0x28223BE20](v15);
  sub_225072C00();
  v18 = v17 - v16;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v119 = a1;
  sub_2250B0DFC(&qword_27D7196E0, &qword_225447A40);
  sub_2250FC340(&qword_280D534E8, &qword_280D53A80, &unk_225446430, MEMORY[0x277D83948]);
  v19 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {
    goto LABEL_2;
  }

  v21 = v8;
  v116 = v12;
  v102 = v18;
  v103 = a1;
  v104 = v13;
  v22 = v19;
  v23 = v20;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v119 = 0;
  v25 = [(objc_class *)isa compressedDataUsingAlgorithm:0 error:&v119];

  if (!v25)
  {
    v38 = v119;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_22508D128(v22, v23);
LABEL_2:

    return v3;
  }

  v99 = v21;
  v100 = v3;
  v96 = v22;
  v26 = v119;
  v27 = [v25 base64EncodedDataWithOptions_];
  v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v118 = v30;
  v31 = MEMORY[0x22AA62390](v28, v30);
  v32 = v31;
  if (v31 >= 1)
  {
    v33 = 0;
    v34 = 0;
    v35 = v116;
    while (1)
    {
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      v37 = __OFADD__(v34, 31000);
      v34 += 31000;
      if (v37)
      {
        v34 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v33;
      if (v34 >= v31)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_65;
  }

  v36 = 0;
  v35 = v116;
LABEL_13:
  v119 = MEMORY[0x277D84F90];
  sub_225095964(0, v36 & ~(v36 >> 63), 0);
  if (v36 < 0)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  v39 = v119;
  v115 = v28;
  v101 = v23;
  v97 = v25;
  if (v36)
  {
    sub_22507CDE8(SHIDWORD(v28));
    v95 = v41;
    v111 = v41;
    while (2)
    {
      if (v40 < v32)
      {
        if (v40 != 0x7FFFFFFFFFFF9F18)
        {
          v42 = v40 + 31000;
          v43 = BYTE6(v118);
          switch(v111)
          {
            case 1:
              v43 = v107;
              if (v109)
              {
                goto LABEL_72;
              }

              goto LABEL_22;
            case 2:
              v45 = *(v28 + 16);
              v44 = *(v28 + 24);
              v37 = __OFSUB__(v44, v45);
              v43 = v44 - v45;
              if (!v37)
              {
                goto LABEL_22;
              }

              goto LABEL_73;
            case 3:
              v46 = v42 & (v42 >> 63);
              goto LABEL_26;
            default:
LABEL_22:
              if (v43 >= v42)
              {
                v46 = v40 + 31000;
              }

              else
              {
                v46 = v43;
              }

LABEL_26:
              if (v46 < v40)
              {
                goto LABEL_67;
              }

              Data._Representation.subscript.getter();
              v48 = v47;
              static String.Encoding.utf8.getter();
              sub_225098684();
              v49 = String.init(data:encoding:)();
              if (!v50)
              {
                goto LABEL_77;
              }

              v51 = v49;
              v52 = v50;
              v53 = sub_225098684();
              sub_22508D128(v53, v54);
              sub_22507532C();
              if (v56)
              {
                sub_22507F3D4(v55);
                v39 = v119;
              }

              v39[2] = v48;
              v57 = &v39[2 * v35];
              *(v57 + 4) = v51;
              *(v57 + 5) = v52;
              v40 = v42;
              --v36;
              v28 = v115;
              v35 = v116;
              if (v36)
              {
                continue;
              }

              v58 = v95;
              if (v42 >= v32)
              {
                goto LABEL_50;
              }

              goto LABEL_35;
          }
        }

LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      break;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v32 >= 1)
  {
    v42 = 0;
    sub_22507CDE8(SHIDWORD(v28));
LABEL_35:
    v112 = v58;
    while (2)
    {
      v59 = v42 + 31000;
      if (!__OFADD__(v42, 31000))
      {
        v60 = BYTE6(v118);
        switch(v112)
        {
          case 1:
            v60 = v107;
            if (v109)
            {
              goto LABEL_75;
            }

            goto LABEL_41;
          case 2:
            v62 = *(v28 + 16);
            v61 = *(v28 + 24);
            v37 = __OFSUB__(v61, v62);
            v60 = v61 - v62;
            if (!v37)
            {
              goto LABEL_41;
            }

            goto LABEL_74;
          case 3:
            v63 = v59 & (v59 >> 63);
            goto LABEL_45;
          default:
LABEL_41:
            if (v60 >= v59)
            {
              v63 = v42 + 31000;
            }

            else
            {
              v63 = v60;
            }

LABEL_45:
            if (v63 < v42)
            {
              goto LABEL_71;
            }

            Data._Representation.subscript.getter();
            v65 = v64;
            static String.Encoding.utf8.getter();
            sub_225098684();
            v66 = String.init(data:encoding:)();
            if (!v67)
            {
              goto LABEL_78;
            }

            v68 = v66;
            v69 = v67;
            v70 = sub_225098684();
            sub_22508D128(v70, v71);
            sub_22507532C();
            if (v56)
            {
              sub_22507F3D4(v72);
              v39 = v119;
            }

            v39[2] = v65;
            v73 = &v39[2 * v35];
            *(v73 + 4) = v68;
            *(v73 + 5) = v69;
            v42 += 31000;
            v28 = v115;
            v35 = v116;
            if (v59 >= v32)
            {
              goto LABEL_50;
            }

            continue;
        }
      }

      break;
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

LABEL_50:
  CKLog.getter();

  v74 = v97;
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.debug.getter();
  v98 = v74;
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 134218496;
    *(v77 + 4) = v103[2];

    *(v77 + 12) = 2048;
    *(v77 + 14) = v39[2];

    *(v77 + 22) = 2048;
    *(v77 + 24) = sub_225095984();

    _os_log_impl(&dword_22506F000, v75, v76, "Flushed traffic logs. count=%ld chunks=%ld dataSize=%ld", v77, 0x20u);
    MEMORY[0x22AA65DF0](v77, -1, -1);
  }

  else
  {

    v75 = v74;
  }

  (*(v105 + 8))(v102, v104);
  UUID.init()();
  v114 = UUID.uuidString.getter();
  v79 = v78;
  (*(v106 + 8))(v99, v100);
  v80 = v39[2];
  if (v80)
  {
    v121 = MEMORY[0x277D84F90];
    sub_225095964(0, v80, 0);
    v81 = 0;
    v110 = v79;
    v113 = v39[2];
    v3 = v121;
    v82 = v39 + 5;
    v83 = v80;
    v108 = v39;
    do
    {
      if (v113 == v81)
      {
        goto LABEL_68;
      }

      if (v81 >= v39[2])
      {
        goto LABEL_69;
      }

      v84 = *v82;
      v117 = *(v82 - 1);
      v119 = v114;
      v120 = v79;

      MEMORY[0x22AA62E50](58, 0xE100000000000000);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA62E50](v85);

      MEMORY[0x22AA62E50](58, 0xE100000000000000);
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA62E50](v86);

      MEMORY[0x22AA62E50](58, 0xE100000000000000);
      MEMORY[0x22AA62E50](v117, v84);

      v87 = v119;
      v88 = v120;
      v121 = v3;
      v89 = v83;
      v91 = *(v3 + 16);
      v90 = *(v3 + 24);
      if (v91 >= v90 >> 1)
      {
        sub_225095964((v90 > 1), v91 + 1, 1);
        v3 = v121;
      }

      *(v3 + 16) = v91 + 1;
      v92 = v3 + 16 * v91;
      *(v92 + 32) = v87;
      *(v92 + 40) = v88;
      ++v81;
      v82 += 2;
      v93 = v89 == v81;
      v83 = v89;
      v39 = v108;
      v79 = v110;
    }

    while (!v93);
    sub_22508D128(v96, v101);
    sub_22508D128(v115, v118);
  }

  else
  {

    sub_22508D128(v96, v101);
    sub_22508D128(v28, v118);

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_22509459C(uint64_t a1)
{
  v29 = v1;
  v2 = *(v1[2] + 16);
  CKLog.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v25 = v1;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_22507CA14();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_22506F000, v3, v4, "Will flush traffic logs. count=%ld", v5, 0xCu);
    sub_22507C9FC();
  }

  v6 = v1[2];

  v7 = sub_22507CC80();
  v27 = v8;
  (v8)(v7);
  v9 = sub_225093C3C(v6);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      CKLogTrafficCompressed.getter();

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();

      v16 = os_log_type_enabled(v14, v15);
      v17 = v1[6];
      v18 = v1[3];
      if (v16)
      {
        v26 = v1[6];
        v19 = sub_22507CA14();
        v20 = swift_slowAlloc();
        v28 = v20;
        *v19 = 136315138;
        v21 = sub_225095AFC(v13, v12, &v28);

        *(v19 + 4) = v21;
        _os_log_impl(&dword_22506F000, v14, v15, "%s", v19, 0xCu);
        sub_225073BF0(v20);
        v1 = v25;
        sub_22507C9FC();
        sub_22507C9FC();

        v22 = v26;
      }

      else
      {

        v22 = v17;
      }

      v27(v22, v18);
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  else
  {
  }

  sub_225075274();

  return v23();
}

void sub_22509497C()
{
  sub_225094964();
  v121 = v0;
  sub_2250B0DFC(&qword_27D719570, &qword_225446500);
  sub_225072D1C();
  v119 = v4;
  v120 = v3;
  sub_22507CA80();
  MEMORY[0x28223BE20](v5);
  sub_22507E74C();
  v118 = v6;
  sub_2250B0DFC(&qword_27D719578, &qword_225446508);
  sub_225072D1C();
  v116 = v8;
  v117 = v7;
  sub_22507CA80();
  MEMORY[0x28223BE20](v9);
  sub_22507E74C();
  v115 = v10;
  sub_2250B0DFC(&qword_27D719580, &qword_225446510);
  sub_225072D1C();
  v113 = v12;
  v114 = v11;
  sub_22507CA80();
  MEMORY[0x28223BE20](v13);
  sub_22507E74C();
  v112 = v14;
  sub_2250B0DFC(&qword_27D719588, &qword_225446518);
  sub_225072D1C();
  v110 = v16;
  v111 = v15;
  sub_22507CA80();
  MEMORY[0x28223BE20](v17);
  sub_22507E74C();
  v109 = v18;
  v107 = type metadata accessor for PartialTrafficLog.ResponseMetadata(0);
  sub_225072BF0();
  MEMORY[0x28223BE20](v19);
  sub_225072C00();
  sub_2250FBC38(v21 - v20);
  v106 = sub_2250B0DFC(&qword_27D719590, &qword_225446520);
  sub_225072D1C();
  v105 = v22;
  sub_22507CA80();
  MEMORY[0x28223BE20](v23);
  sub_22507E74C();
  sub_2250FBC38(v24);
  v103 = sub_2250B0DFC(&qword_27D719598, &qword_225446528);
  sub_225072D1C();
  v102 = v25;
  sub_22507CA80();
  MEMORY[0x28223BE20](v26);
  sub_22507E74C();
  sub_2250FBC38(v27);
  v100 = sub_2250B0DFC(&qword_27D7195A0, &qword_225446530);
  sub_225072D1C();
  v99 = v28;
  sub_22507CA80();
  MEMORY[0x28223BE20](v29);
  v30 = sub_22507F234();
  v31 = type metadata accessor for PartialTrafficLog.RequestMetadata(v30);
  sub_225072BF0();
  MEMORY[0x28223BE20](v32);
  sub_225072C00();
  sub_2250FBCB8();
  type metadata accessor for PartialTrafficLog(0);
  sub_225072BF0();
  MEMORY[0x28223BE20](v33);
  sub_225072C00();
  v36 = (v35 - v34);
  sub_2250B0DFC(&qword_27D7195A8, &qword_225446538);
  sub_225072D1C();
  v123 = v37;
  v124 = v38;
  sub_22507CA80();
  MEMORY[0x28223BE20](v39);
  v41 = &v99 - v40;
  v42 = sub_2250FBCA0();
  sub_225073BAC(v42, v43);
  sub_225095468();
  v122 = v41;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_225072E44();
  sub_2250FA634(v121, v36, v44);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v77 = *v36;
      v78 = v36[1];
      v79 = v36[2];
      v80 = v36[3];
      LOBYTE(v125) = 1;
      sub_225097660();
      v81 = v101;
      v82 = v122;
      v83 = v123;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v125 = v77;
      v126 = v78;
      v127 = v79;
      v128 = v80;
      sub_2250976B4();
      v84 = v103;
      sub_2250FBD1C(&v125, v85, v103, &type metadata for PartialTrafficLog.RequestObject);
      sub_22507E9C4();
      v86(v81, v84);
      sub_2250953B8();
      v87(v82, v83);
      goto LABEL_9;
    case 2u:
      v63 = *v36;
      v64 = v36[1];
      LOBYTE(v125) = 2;
      sub_2250FA3F4();
      v65 = v104;
      v67 = v122;
      v66 = v123;
      sub_2250FBBE4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v125 = v63;
      v126 = v64;
      sub_2250FA538();
      v68 = v106;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v69 = v105;
      goto LABEL_11;
    case 3u:
      v70 = v108;
      sub_225095610(v36, v108, type metadata accessor for PartialTrafficLog.ResponseMetadata);
      LOBYTE(v125) = 3;
      sub_225097860();
      v71 = v109;
      sub_225097530(&type metadata for PartialTrafficLog.ResponseMetadataCodingKeys);
      sub_22509571C();
      sub_2250FA4F0(v72, v73, &unk_225446278);
      v74 = v111;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v110 + 8))(v71, v74);
      sub_22509873C();
      v51 = v70;
      goto LABEL_6;
    case 4u:
      v52 = *v36;
      v53 = v36[1];
      v54 = v36[2];
      v55 = v36[3];
      v56 = v36[4];
      LOBYTE(v125) = 4;
      sub_225097D04();
      v57 = v112;
      v59 = v122;
      v58 = v123;
      sub_2250FBBE4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v125 = v52;
      v126 = v53;
      v127 = v54;
      v128 = v55;
      v129 = v56;
      sub_225097D58();
      v60 = v114;
      sub_2250FBD1C(&v125, v61, v114, &type metadata for PartialTrafficLog.ResponseConfiguration);
      (*(v113 + 8))(v57, v60);
      sub_2250953B8();
      v62(v59, v58);

      goto LABEL_12;
    case 5u:
      v88 = *v36;
      v89 = v36[1];
      v79 = v36[2];
      v80 = v36[3];
      LOBYTE(v125) = 5;
      sub_225098158();
      v90 = v115;
      v92 = v122;
      v91 = v123;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v125 = v88;
      v126 = v89;
      v127 = v79;
      v128 = v80;
      sub_225098510();
      v93 = v117;
      sub_2250FBD1C(&v125, v94, v117, &type metadata for PartialTrafficLog.ResponseObject);
      (*(v116 + 8))(v90, v93);
      sub_2250953B8();
      v95(v92, v91);
LABEL_9:

      sub_22508D128(v79, v80);
      break;
    case 6u:
      v96 = *v36;
      v97 = v36[1];
      LOBYTE(v125) = 6;
      sub_2250958BC();
      v65 = v118;
      v67 = v122;
      v66 = v123;
      sub_2250FBBE4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v125 = v96;
      v126 = v97;
      sub_225095910();
      v68 = v120;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v69 = v119;
LABEL_11:
      (*(v69 + 8))(v65, v68);
      sub_2250953B8();
      v98(v67, v66);
LABEL_12:

      break;
    default:
      sub_225095610(v36, v1, type metadata accessor for PartialTrafficLog.RequestMetadata);
      LOBYTE(v125) = 0;
      sub_225095670();
      sub_225097530(&type metadata for PartialTrafficLog.RequestMetadataCodingKeys);
      sub_2250971EC();
      sub_2250FA4F0(v45, v46, &unk_225446110);
      v47 = v100;
      sub_2250FBD1C(v1, v48, v100, v31);
      sub_22507E9C4();
      v49(v2, v47);
      sub_22507D3E0();
      v51 = v1;
LABEL_6:
      sub_2250FA03C(v51, v50);
      sub_2250953B8();
      v75 = sub_22508D110();
      v76(v75);
      break;
  }

  sub_225095814();
}

uint64_t sub_225095388(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_2250953E0()
{
}

BOOL sub_22509541C()
{

  return os_log_type_enabled(v0, v1);
}

unint64_t sub_225095468()
{
  result = qword_280D53D60;
  if (!qword_280D53D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D60);
  }

  return result;
}

unint64_t sub_2250954D0(char a1)
{
  result = 0x4D74736575716572;
  switch(a1)
  {
    case 1:
      result = 0x4F74736575716572;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x65736E6F70736572;
      break;
    case 6:
      result = 0x6574656C706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_225095610(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_225072BF0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_225095670()
{
  result = qword_280D53AE0;
  if (!qword_280D53AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AE0);
  }

  return result;
}

unint64_t sub_2250956C4()
{

  return sub_225095AFC(v0, v1, (v2 - 96));
}

uint64_t sub_2250956E0()
{

  return swift_slowAlloc();
}

uint64_t sub_225095700()
{

  return swift_slowAlloc();
}

uint64_t sub_225095744(uint64_t a1)
{

  return swift_allocObject();
}

BOOL sub_225095778()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_2250957CC()
{

  return swift_slowAlloc();
}

uint64_t sub_225095854()
{

  return swift_slowAlloc();
}

void sub_225095870()
{
  v1 = *(v0 - 96);
  *(v0 - 104) = *(v0 - 104);
  *(v0 - 96) = v1;
}

uint64_t sub_22509587C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 - 256);
  *v4 = a1;
  *(v4 + 8) = v1;
  *(v4 + 16) = *(v3 - 112);
  return v4;
}

unint64_t sub_2250958BC()
{
  result = qword_280D53B68[0];
  if (!qword_280D53B68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D53B68);
  }

  return result;
}

unint64_t sub_225095910()
{
  result = qword_280D53CF0;
  if (!qword_280D53CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53CF0);
  }

  return result;
}

void *sub_225095964(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2250959FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_225095984()
{
  v0 = NSData.startIndex.getter();
  v1 = NSData.endIndex.getter();
  v2 = NSData.startIndex.getter();
  result = NSData.endIndex.getter();
  if (v0 < v2 || result < v0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = NSData.startIndex.getter();
  result = NSData.endIndex.getter();
  if (v1 < v5 || result < v1)
  {
    goto LABEL_12;
  }

  result = v1 - v0;
  if (__OFSUB__(v1, v0))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

void *sub_2250959FC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2250B0DFC(&qword_27D718EA0, &qword_225447A90);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_2250C75A0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_225095AFC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_225095BC0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_22508DF28(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_225073BF0(v11);
  return v7;
}

unint64_t sub_225095BC0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2250B1B20(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t sub_225095CC0()
{
  sub_225072C10();
  sub_225075560();
  v1 = *v0;
  sub_225072D68();
  *v2 = v1;

  sub_225075274();

  return v3();
}

uint64_t sub_225095DA8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_225095DE8(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_225095E34()
{
  _Block_release(*(v0 + 24));

  v1 = sub_225097204();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_225095E74()
{
  sub_225072C10();
  sub_225075560();
  v1 = *v0;
  sub_225072D68();
  *v2 = v1;

  v3 = sub_225098658();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_225095F6C()
{
  sub_225072C10();

  sub_225075274();

  return v0();
}

uint64_t sub_225095FCC()
{
  sub_225072C10();
  sub_22507F248();
  v1 = *v0;
  sub_225072D68();
  *v2 = v1;

  sub_22508D11C();

  sub_225095734();

  return v3();
}

void sub_2250961E0(pthread_t *a1, void *a2)
{
  v3 = a2;
  *a1 = pthread_self();
  v3[2](v3);

  *a1 = 0;
}

uint64_t sub_225096228(uint64_t a1, const char *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = v8;
      v12 = NSStringFromSelector(v9);
      v14 = 138412546;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", &v14, 0x16u);
    }

    __assert_rtn("[CKDAssetCache setupPersistentStateAtStartup]_block_invoke", "CKDAssetCache.m", 2088, "0 && already dropped");
  }

  objc_msgSend__deleteAssetHandlesAndUnregisterItemsForUnmountedAssetVolumes(*(a1 + 32), v4, v5);
  v7 = *(a1 + 32);

  return MEMORY[0x2821F9670](v7, sel__resetAssetInflight, v6);
}

uint64_t sub_2250965D0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v59 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_unmountedAssetVolumes(*(*(a1 + 32) + 48), a2, a3);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = objc_alloc_init(CKDAssetHandle);
  objc_msgSend_setStatus_(v40, v6, &unk_2838C8118);
  v42 = objc_msgSend_MMCS(*(v3 + 32), v7, v8);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v4;
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v49, v58, 16);
  if (v44)
  {
    v43 = *v50;
    do
    {
      v12 = 0;
      do
      {
        if (*v50 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v49 + 1) + 8 * v12);
        v56[0] = @"INDEX";
        v14 = objc_msgSend_volumeIndex(v13, v10, v11);
        v56[1] = @"UNREGISTERING";
        v57[0] = v14;
        v57[1] = &unk_2838C8118;
        v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v57, v56, 2);

        v17 = v3;
        v19 = objc_msgSend_entriesWithValues_label_setupBlock_(*(*(v3 + 32) + 40), v18, v16, off_280D54D70, &unk_28385C4A0);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v45, v55, 16);
        if (v21)
        {
          v24 = v21;
          v25 = *v46;
          do
          {
            v26 = 0;
            do
            {
              if (*v46 != v25)
              {
                objc_enumerationMutation(v19);
              }

              v27 = objc_msgSend_itemID(*(*(&v45 + 1) + 8 * v26), v22, v23);
              objc_msgSend_addObject_(v5, v28, v27);

              ++v26;
            }

            while (v24 != v26);
            v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v45, v55, 16);
          }

          while (v24);
        }

        if (objc_msgSend_count(v5, v22, v23))
        {
          objc_msgSend_unregisterItemIDs_(v42, v29, v5);
          objc_msgSend_removeAllObjects(v5, v31, v32);
        }

        v53 = @"INDEX";
        v33 = objc_msgSend_volumeIndex(v13, v29, v30);
        v54 = v33;
        v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v34, &v54, &v53, 1);

        v3 = v17;
        objc_msgSend_deleteEntriesMatching_label_error_predicate_(*(*(v17 + 32) + 40), v36, v35, off_280D54D88, 0, &unk_28385C4C0);
        v38 = objc_msgSend_deleteObject_(*(*(v17 + 32) + 48), v37, v13);

        ++v12;
      }

      while (v12 != v44);
      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v49, v58, 16);
    }

    while (v44);
  }

  return 0;
}

uint64_t sub_225096BAC(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB58]);
  v4 = objc_msgSend_initWithCapacity_(v2, v3, 500);
  v6 = objc_msgSend_entriesWithValues_label_setupBlock_(*(*(a1 + 32) + 40), v5, &unk_2838C9110, off_280D54DA0, &unk_28385C5E0);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v38, v50, 16);
  if (v8)
  {
    v11 = v8;
    v12 = 0;
    v13 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = objc_msgSend_itemID(*(*(&v38 + 1) + 8 * i), v9, v10);
        if (objc_msgSend_longLongValue(v15, v16, v17))
        {
          objc_msgSend_addObject_(v4, v18, v15);
        }

        if (objc_msgSend_count(v4, v18, v19) >= 0x1F4)
        {
          v12 += objc_msgSend_count(v4, v20, v21);
          v24 = objc_msgSend_allObjects(v4, v22, v23);
          objc_msgSend_unregisterItemIDs_(*(a1 + 40), v25, v24);
          objc_msgSend_removeAllObjects(v4, v26, v27);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v38, v50, 16);
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v28 = objc_msgSend_deleteEntriesMatching_label_error_predicate_(*(*(a1 + 32) + 40), v9, &unk_2838C9110, off_280D54DB8, 0, &unk_28385C600);
  v29 = objc_alloc_init(CKDAssetHandle);
  objc_msgSend_setStatus_(v29, v30, &unk_2838C8160);
  v32 = objc_msgSend_setProperties_valuesToStore_inEntriesMatching_label_error_predicate_(*(*(a1 + 32) + 40), v31, &unk_2838C8DC0, v29, &unk_2838C9138, &unk_280D54DD0, 0, &unk_28385C620);
  objc_msgSend_setStatus_(v29, v33, &unk_2838C80E8);
  v35 = objc_msgSend_setProperties_valuesToStore_inEntriesMatching_label_error_predicate_(*(*(a1 + 32) + 40), v34, &unk_2838C8DD8, v29, &unk_2838C9160, &unk_280D54DE8, 0, &unk_28385C640);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v36 = *MEMORY[0x277CBC828];
  if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
  {
    *buf = 134218752;
    v43 = v28;
    v44 = 2048;
    v45 = v32;
    v46 = 2048;
    v47 = v35;
    v48 = 2048;
    v49 = v12;
    _os_log_impl(&dword_22506F000, v36, OS_LOG_TYPE_INFO, "In-flight asset handles marked as interrupted during un/registering:%llu upload:%llu download:%llu item unregistred:%llu", buf, 0x2Au);
  }

  return 0;
}

void sub_225096EC0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_setFetchedProperties_(v2, v3, &unk_2838C8DA8);
  v6 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v4, @"status=$REGISTERING OR status=$UNREGISTERING");
  objc_msgSend_setSearchPredicate_(v2, v5, v6);
}

unint64_t sub_2250971B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_225095AFC(a1, a2, va);
}

uint64_t sub_2250971CC()
{

  return swift_slowAlloc();
}

uint64_t sub_225097214()
{
  sub_2250B0DFC(&qword_27D719648, &qword_2254465B0);
  sub_225072D1C();
  sub_22507CA80();
  MEMORY[0x28223BE20](v2);
  sub_22507EDF4();
  sub_2250FBBFC();
  v3 = sub_2250974A8();
  sub_225095388(&type metadata for PartialTrafficLog.RequestMetadata.CodingKeys, v4, v3);
  v19[1] = 0;
  sub_22508D030();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v5 = type metadata accessor for PartialTrafficLog.RequestMetadata(0);
    v6 = v5[5];
    sub_2250958B0();
    type metadata accessor for Date();
    sub_225072CC4();
    sub_2250FA4F0(v7, v8, MEMORY[0x277CC9580]);
    sub_22507D34C(v0 + v6, v19);
    v9 = v5[6];
    sub_2250FBBF0();
    type metadata accessor for URL();
    sub_225082680();
    sub_2250FA4F0(v10, v11, MEMORY[0x277CC9268]);
    sub_22507D34C(v0 + v9, &v18);
    v17 = 3;
    sub_22508D030();
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v0 + v5[8]);
    v15 = 4;
    sub_2250B0DFC(&qword_27D719600, &qword_225446578);
    sub_22507E460(&qword_280D534F8, MEMORY[0x277D837D8]);
    sub_22507D34C(&v16, &v15);
    sub_22508D030();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_22508D030();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v12 = sub_2250FBBAC();
  return v13(v12);
}

unint64_t sub_2250974A8()
{
  result = qword_280D53CE8;
  if (!qword_280D53CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53CE8);
  }

  return result;
}

unint64_t sub_225097510(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  *v12 = a1;

  return sub_225095AFC(v13, v11, va);
}

uint64_t sub_225097530(uint64_t a1)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

unint64_t sub_225097558(char a1)
{
  result = 0x5574736575716572;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 7107189;
      break;
    case 3:
      result = 0x646F6874656DLL;
      break;
    case 4:
      result = 0x73726564616568;
      break;
    case 5:
      result = 0x4374736575716572;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_225097660()
{
  result = qword_280D53B10;
  if (!qword_280D53B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B10);
  }

  return result;
}

unint64_t sub_2250976B4()
{
  result = qword_280D53D30;
  if (!qword_280D53D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D30);
  }

  return result;
}

unint64_t sub_225097760()
{
  result = qword_280D53D48;
  if (!qword_280D53D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D48);
  }

  return result;
}

uint64_t sub_2250977B8(char a1)
{
  if (a1)
  {
    return 0x61447463656A626FLL;
  }

  else
  {
    return 0x5574736575716572;
  }
}

unint64_t sub_225097804()
{
  result = qword_280D54D50;
  if (!qword_280D54D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D54D50);
  }

  return result;
}

unint64_t sub_225097860()
{
  result = qword_280D53AC8;
  if (!qword_280D53AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AC8);
  }

  return result;
}

uint64_t sub_2250978B4()
{
  sub_2250B0DFC(&qword_27D719610, &qword_225446580);
  sub_225072D1C();
  sub_22507CA80();
  MEMORY[0x28223BE20](v2);
  sub_22507EDF4();
  sub_2250FBBFC();
  v3 = sub_225097A9C();
  sub_225095388(&type metadata for PartialTrafficLog.ResponseMetadata.CodingKeys, v4, v3);
  v14[1] = 0;
  sub_22508D030();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v5 = type metadata accessor for PartialTrafficLog.ResponseMetadata(0);
    v6 = *(v5 + 20);
    sub_2250958B0();
    type metadata accessor for Date();
    sub_225072CC4();
    sub_2250FA4F0(v7, v8, MEMORY[0x277CC9580]);
    sub_22507D34C(v0 + v6, v14);
    sub_2250FBBF0();
    sub_22508D030();
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v0 + *(v5 + 28));
    v12 = 3;
    sub_2250B0DFC(&qword_27D719600, &qword_225446578);
    sub_22507E460(&qword_280D534F8, MEMORY[0x277D837D8]);
    sub_22507D34C(&v13, &v12);
  }

  v9 = sub_2250FBBAC();
  return v10(v9);
}

unint64_t sub_225097A9C()
{
  result = qword_280D53C20[0];
  if (!qword_280D53C20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D53C20);
  }

  return result;
}

uint64_t sub_225097AF8(char a1)
{
  result = 0x5574736575716572;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 0x737574617473;
      break;
    case 3:
      result = 0x73726564616568;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PartialTrafficLog.ResponseMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x225097C54);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PartialTrafficLog.ResponseMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_225097D04()
{
  result = qword_280D53AB0;
  if (!qword_280D53AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AB0);
  }

  return result;
}

unint64_t sub_225097D58()
{
  result = qword_280D53B38;
  if (!qword_280D53B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B38);
  }

  return result;
}

uint64_t sub_225097DC4(uint64_t a1)
{

  return MEMORY[0x282200510](v1, a1);
}

void sub_225097E00()
{

  JUMPOUT(0x22AA62E50);
}

unint64_t sub_225097E2C()
{
  result = qword_280D53B50;
  if (!qword_280D53B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B50);
  }

  return result;
}