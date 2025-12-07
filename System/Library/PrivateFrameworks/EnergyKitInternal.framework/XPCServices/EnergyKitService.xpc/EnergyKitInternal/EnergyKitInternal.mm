int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_1000A3538();
  v4 = *(v3 - 8);
  __chkstk_darwin(*(v4 + 64));
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_autoreleasePoolPush();
  sub_10004ABF8();
  objc_autoreleasePoolPop(v7);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v8 = sub_100001E38(v3, qword_1000C96B8);
  (*(v4 + 16))(v6, v8, v3);
  v9 = sub_1000A3518();
  v10 = sub_1000A3CB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "*** EnergyKitService LAUNCH ***", v11, 2u);
  }

  (*(v4 + 8))(v6, v3);
  v12 = [objc_opt_self() serviceListener];
  type metadata accessor for CombinedServiceListener();
  v13 = swift_allocObject();
  v14 = [objc_allocWithZone(type metadata accessor for CombinedServiceDelegate()) init];
  *(v13 + 16) = v14;
  *(v13 + 24) = v12;
  [v12 setDelegate:v14];
  qword_1000C95E8 = v13;
  [v12 resume];
  return 0;
}

uint64_t sub_100001E38(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

BOOL sub_100001E8C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_100001F10(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void type metadata accessor for CFError()
{
  if (!qword_1000C75A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000C75A0);
    }
  }
}

uint64_t sub_100001FCC()
{
  v1 = *(v0 + 48);
  v2 = sub_1000A3A78();
  v3 = [v1 valueForEntitlement:v2];

  if (v3)
  {
    sub_1000A3DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  *(v0 + 16) = v7;
  *(v0 + 32) = v8;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast() && (*(v0 + 64) & 1) != 0)
    {
      if (qword_1000C7550 != -1)
      {
        swift_once();
      }

      v4 = qword_1000C95F0;
      *(v0 + 56) = qword_1000C95F0;

      return _swift_task_switch(sub_100002164, v4, 0);
    }
  }

  else
  {
    sub_1000026F4(v0 + 16);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100002164()
{
  *(*(v0 + 56) + 144) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000021EC()
{
  v1 = *(v0 + 48);
  v2 = sub_1000A3A78();
  v3 = [v1 valueForEntitlement:v2];

  if (v3)
  {
    sub_1000A3DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  *(v0 + 16) = v7;
  *(v0 + 32) = v8;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast() && (*(v0 + 72) & 1) != 0)
    {
      if (qword_1000C7550 != -1)
      {
        swift_once();
      }

      v4 = qword_1000C95F0;
      *(v0 + 56) = qword_1000C95F0;

      return _swift_task_switch(sub_100002384, v4, 0);
    }
  }

  else
  {
    sub_1000026F4(v0 + 16);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100002384()
{
  *(*(v0 + 56) + 144) = 1;

  return _swift_task_switch(sub_1000023F4, 0, 0);
}

uint64_t sub_1000023F4()
{
  v1 = qword_1000C95F0;
  *(v0 + 64) = qword_1000C95F0;

  return _swift_task_switch(sub_10000246C, v1, 0);
}

uint64_t sub_10000246C()
{
  *(*(v0 + 64) + 145) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000024F4()
{
  v1 = *(v0 + 48);
  v2 = sub_1000A3A78();
  v3 = [v1 valueForEntitlement:v2];

  if (v3)
  {
    sub_1000A3DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  *(v0 + 16) = v7;
  *(v0 + 32) = v8;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast() && (*(v0 + 64) & 1) != 0)
    {
      if (qword_1000C7550 != -1)
      {
        swift_once();
      }

      v4 = qword_1000C95F0;
      *(v0 + 56) = qword_1000C95F0;

      return _swift_task_switch(sub_10000268C, v4, 0);
    }
  }

  else
  {
    sub_1000026F4(v0 + 16);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000268C()
{
  *(*(v0 + 56) + 146) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000026F4(uint64_t a1)
{
  v2 = sub_10000275C(&qword_1000C7880, &qword_1000AB8A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000275C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

double sub_1000027A4()
{
  type metadata accessor for ApplicationIdentifiers();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 143) = 0;
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  qword_1000C95F0 = v0;
  return result;
}

uint64_t sub_1000027EC(__SecTask *a1)
{
  error = 0;
  v3 = sub_1000A3A78();
  v4 = SecTaskCopyValueForEntitlement(a1, v3, &error);

  v5 = error;
  if (error)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v6 = sub_1000A3538();
    sub_100001E38(v6, qword_1000C96B8);
    v7 = sub_1000A3518();
    v8 = sub_1000A3CC8();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_14;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    type metadata accessor for CFError();
    sub_1000033E4();
    swift_allocError();
    *v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "[ApplicationIdentifiers] Failed to extract application id.\n%@", v9, 0xCu);
    sub_10000343C(v10);

    goto LABEL_13;
  }

  if (v4)
  {
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      *(v1 + 112) = v17;
      *(v1 + 120) = v18;

      return v17;
    }
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v14 = sub_1000A3538();
  sub_100001E38(v14, qword_1000C96B8);
  v7 = sub_1000A3518();
  v15 = sub_1000A3CC8();
  if (os_log_type_enabled(v7, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v7, v15, "[ApplicationIdentifiers] Failed to extract application id as string", v16, 2u);
LABEL_13:
  }

LABEL_14:

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_100002AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = v4[15];
  if (v10)
  {
    v11 = v4[14];
    v12 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {

      return v11;
    }
  }

  sub_1000032CC();
  v13 = sub_100003154(a1, a2, a3, a4);
  v15 = v13;
  if (!v13)
  {
    goto LABEL_7;
  }

  v18 = [v13 bundleIdentifier];
  if (!v18)
  {

LABEL_7:
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v14 = sub_1000A3538();
    sub_100001E38(v14, qword_1000C96B8);
    v15 = sub_1000A3518();
    v16 = sub_1000A3CC8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to get BundleRecord and identifier", v17, 2u);
    }

    goto LABEL_19;
  }

  v19 = v18;
  v20 = sub_1000A3A88();
  v22 = v21;

  v5[16] = v20;
  v5[17] = v22;

  v23 = objc_allocWithZone(LSApplicationExtensionRecord);
  v24 = sub_100003318(v20, v22);
  v36 = v24;
  if (v24)
  {
    v37 = [v24 extensionPointRecord];
    v38 = [v37 identifier];

    v39 = sub_1000A3A88();
    v41 = v40;

    if (v39 == 0xD00000000000001DLL && 0x80000001000A5570 == v41)
    {

LABEL_33:
      if (qword_1000C7570 != -1)
      {
        swift_once();
      }

      v43 = sub_1000A3538();
      sub_100001E38(v43, qword_1000C96B8);
      v44 = sub_1000A3518();
      v45 = sub_1000A3CB8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Called from widget extension", v46, 2u);
      }

      v47 = [v36 containingBundleRecord];
      if (v47)
      {
        v48 = v47;
        v49 = [v47 applicationIdentifier];

        if (v49)
        {
          v11 = sub_1000A3A88();
          v51 = v50;

          v52 = [v36 containingBundleRecord];
          if (v52)
          {
            v53 = v52;
            v60 = [v52 bundleIdentifier];

            if (v60)
            {
              v54 = sub_1000A3A88();
              v56 = v55;

              v5[14] = v11;
              v5[15] = v51;

              v5[16] = v54;
              v5[17] = v56;

              return v11;
            }
          }
        }
      }

      v57 = sub_1000A3518();
      v58 = sub_1000A3CC8();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "Failed to get parent for widget", v59, 2u);
      }

      goto LABEL_19;
    }

    v42 = sub_1000A3F48();

    if (v42)
    {
      goto LABEL_33;
    }
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v25 = sub_1000A3538();
  sub_100001E38(v25, qword_1000C96B8);
  v26 = sub_1000A3518();
  v27 = sub_1000A3CC8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Not a widget extension", v28, 2u);
  }

LABEL_19:
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v29 = SecTaskCreateWithAuditToken(0, &token);
  if (v29)
  {
    v30 = v29;
    v11 = sub_1000027EC(v29);
  }

  else
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v31 = sub_1000A3538();
    sub_100001E38(v31, qword_1000C96B8);
    v32 = sub_1000A3518();
    v33 = sub_1000A3CC8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Unable to create SecTask from XPC connection", v34, 2u);
    }

    return 0;
  }

  return v11;
}

id sub_100003154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:&v9];
  if (v4)
  {
    v5 = v9;
  }

  else
  {
    v6 = v9;
    sub_1000A2358();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_10000325C()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_1000032CC()
{
  result = qword_1000C7730;
  if (!qword_1000C7730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C7730);
  }

  return result;
}

id sub_100003318(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000A3A78();

  v8 = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:&v8];

  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    sub_1000A2358();

    swift_willThrow();
  }

  return v4;
}

unint64_t sub_1000033E4()
{
  result = qword_1000C7738;
  if (!qword_1000C7738)
  {
    type metadata accessor for CFError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C7738);
  }

  return result;
}

uint64_t sub_10000343C(uint64_t a1)
{
  v2 = sub_10000275C(&unk_1000C7740, &qword_1000AB610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000034A4()
{
  v0 = sub_10000EDB8(&off_1000BDD48);
  result = swift_arrayDestroy();
  qword_1000C7750 = v0;
  return result;
}

uint64_t sub_1000034F0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100003534(int a1, const char *a2, uint64_t a3)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v5 = sub_1000A3538();
  sub_100001E38(v5, qword_1000C96B8);
  oslog = sub_1000A3518();
  v6 = sub_1000A3CA8();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1;
    _os_log_impl(&_mh_execute_header, oslog, v6, a2, v7, 8u);
  }
}

uint64_t sub_100003634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100003658, 0, 0);
}

uint64_t sub_100003658()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = qword_1000C95F0;
  *(v0 + 40) = qword_1000C95F0;

  [v1 auditToken];
  *(v0 + 48) = v4;
  *(v0 + 64) = v5;

  return _swift_task_switch(sub_100003724, v2, 0);
}

uint64_t sub_100003724()
{
  sub_100002AD0(v0[6], v0[7], v0[8], v0[9]);

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1000037D8;

  return sub_100001FAC();
}

uint64_t sub_1000037D8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_100003918;

  return sub_1000021CC();
}

uint64_t sub_100003918()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 96) = v3;
  *v3 = v2;
  v3[1] = sub_100003A58;

  return sub_1000024D4();
}

uint64_t sub_100003A58()
{

  return _swift_task_switch(sub_100003B54, 0, 0);
}

uint64_t sub_100003B54()
{
  v1 = v0[4];
  *(v0[3] + OBJC_IVAR____TtC16EnergyKitService23CombinedServiceDelegate_isInitialized) = 1;
  dispatch_group_leave(v1);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100003CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_100003CD8, 0, 0);
}

uint64_t sub_100003CD8()
{
  v30 = v0;
  if (sub_100041830(v0[3], v0[4], *(v0[7] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v1 = sub_1000A3538();
    sub_100001E38(v1, qword_1000C96B8);

    v2 = sub_1000A3518();
    v3 = sub_1000A3CB8();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = v0[3];
      v4 = v0[4];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v29[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1000954AC(v5, v4, v29);
      _os_log_impl(&_mh_execute_header, v2, v3, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v6, 0xCu);
      sub_10000F7B8(v7);
    }

    v28 = (v0[5] + *v0[5]);
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v9 = sub_10000428C;
LABEL_13:
    v8[1] = v9;

    return v28(v0 + 2);
  }

  if (sub_100017DF8(*(v0[7] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v10 = sub_1000A3538();
    sub_100001E38(v10, qword_1000C96B8);

    v11 = sub_1000A3518();
    v12 = sub_1000A3CB8();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[3];
      v13 = v0[4];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1000954AC(v14, v13, v29);
      _os_log_impl(&_mh_execute_header, v11, v12, "[TCC-Proxy] Method '%s' authorized - forwarding", v15, 0xCu);
      sub_10000F7B8(v16);
    }

    v28 = (v0[5] + *v0[5]);
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v9 = sub_1000043D4;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v18 = sub_1000A3538();
  sub_100001E38(v18, qword_1000C96B8);

  v19 = sub_1000A3518();
  v20 = sub_1000A3CC8();

  if (os_log_type_enabled(v19, v20))
  {
    v22 = v0[3];
    v21 = v0[4];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1000954AC(v22, v21, v29);
    _os_log_impl(&_mh_execute_header, v19, v20, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v23, 0xCu);
    sub_10000F7B8(v24);
  }

  v25 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, enum case for EnergyKitError.permissionDenied(_:), v25);
  swift_willThrow();
  v27 = v0[1];

  return v27();
}

uint64_t sub_10000428C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1000043BC;
  }

  else
  {
    v2 = sub_1000043A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000043D4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1000044E8;
  }

  else
  {
    v2 = sub_100015448;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100004500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[26] = a2;
  return _swift_task_switch(sub_100004528, 0, 0);
}

uint64_t sub_100004528()
{
  v34 = v0;
  if (sub_100041830(v0[26], v0[27], *(v0[28] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v1 = sub_1000A3538();
    sub_100001E38(v1, qword_1000C96B8);

    v2 = sub_1000A3518();
    v3 = sub_1000A3CB8();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = v0[26];
      v4 = v0[27];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v33[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1000954AC(v5, v4, v33);
      _os_log_impl(&_mh_execute_header, v2, v3, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v6, 0xCu);
      sub_10000F7B8(v7);
    }

    v8 = v0 + 10;
    v9 = v0[30];
    v10 = *(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v0[10] = v0;
    v0[11] = sub_100004B14;
    v11 = swift_continuation_init();
    v0[25] = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    v0[22] = v11;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v12 = &unk_1000BE0B0;
LABEL_13:
    v0[20] = sub_100033DAC;
    v0[21] = v12;
    [v10 setMockOptionsWithOptions:v9 completionHandler:v0 + 18];

    return _swift_continuation_await(v8);
  }

  if (sub_100017DF8(*(v0[28] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v13 = sub_1000A3538();
    sub_100001E38(v13, qword_1000C96B8);

    v14 = sub_1000A3518();
    v15 = sub_1000A3CB8();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = v0[26];
      v16 = v0[27];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000954AC(v17, v16, v33);
      _os_log_impl(&_mh_execute_header, v14, v15, "[TCC-Proxy] Method '%s' authorized - forwarding", v18, 0xCu);
      sub_10000F7B8(v19);
    }

    v8 = v0 + 2;
    v9 = v0[30];
    v10 = *(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v0[2] = v0;
    v0[3] = sub_100004C58;
    v20 = swift_continuation_init();
    v0[25] = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    v0[22] = v20;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v12 = &unk_1000BE088;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v21 = sub_1000A3538();
  sub_100001E38(v21, qword_1000C96B8);

  v22 = sub_1000A3518();
  v23 = sub_1000A3CC8();

  if (os_log_type_enabled(v22, v23))
  {
    v25 = v0[26];
    v24 = v0[27];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1000954AC(v25, v24, v33);
    _os_log_impl(&_mh_execute_header, v22, v23, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v26, 0xCu);
    sub_10000F7B8(v27);
  }

  v28 = v0[29];
  v29 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v29 - 8) + 104))(v30, enum case for EnergyKitError.permissionDenied(_:), v29);
  swift_willThrow();

  v31 = v0[1];

  return v31();
}

uint64_t sub_100004B14()
{

  return _swift_task_switch(sub_100004BF4, 0, 0);
}

uint64_t sub_100004BF4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100004C58()
{

  return _swift_task_switch(sub_10001544C, 0, 0);
}

uint64_t sub_100004D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[26] = a2;
  return _swift_task_switch(sub_100004D60, 0, 0);
}

uint64_t sub_100004D60()
{
  v35 = v0;
  if (sub_100041830(v0[26], v0[27], *(v0[28] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v1 = sub_1000A3538();
    sub_100001E38(v1, qword_1000C96B8);

    v2 = sub_1000A3518();
    v3 = sub_1000A3CB8();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = v0[26];
      v4 = v0[27];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v34[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1000954AC(v5, v4, v34);
      _os_log_impl(&_mh_execute_header, v2, v3, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v6, 0xCu);
      sub_10000F7B8(v7);
    }

    v8 = v0 + 10;
    v9 = v0[30];
    v10 = *(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v0[10] = v0;
    v0[11] = sub_100005350;
    v11 = swift_continuation_init();
    v0[25] = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    v0[22] = v11;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v12 = &unk_1000BDF20;
LABEL_13:
    v0[20] = sub_100033DAC;
    v0[21] = v12;
    [v10 setUpEKSandboxWithSandboxExtension:v9 completionHandler:v0 + 18];

    return _swift_continuation_await(v8);
  }

  if (sub_100017DF8(*(v0[28] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v13 = sub_1000A3538();
    sub_100001E38(v13, qword_1000C96B8);

    v14 = sub_1000A3518();
    v15 = sub_1000A3CB8();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = v0[26];
      v16 = v0[27];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000954AC(v17, v16, v34);
      _os_log_impl(&_mh_execute_header, v14, v15, "[TCC-Proxy] Method '%s' authorized - forwarding", v18, 0xCu);
      sub_10000F7B8(v19);
    }

    v8 = v0 + 2;
    v9 = v0[30];
    v10 = *(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v0[2] = v0;
    v0[3] = sub_100005498;
    v20 = swift_continuation_init();
    v0[25] = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    v0[22] = v20;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v12 = &unk_1000BDEF8;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v21 = sub_1000A3538();
  sub_100001E38(v21, qword_1000C96B8);

  v22 = sub_1000A3518();
  v23 = sub_1000A3CC8();

  if (os_log_type_enabled(v22, v23))
  {
    v25 = v0[26];
    v24 = v0[27];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1000954AC(v25, v24, v34);
    _os_log_impl(&_mh_execute_header, v22, v23, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v26, 0xCu);
    sub_10000F7B8(v27);
  }

  v29 = v0[29];
  v28 = v0[30];
  v30 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, enum case for EnergyKitError.permissionDenied(_:), v30);
  swift_willThrow();

  v32 = v0[1];

  return v32();
}

uint64_t sub_100005350()
{

  return _swift_task_switch(sub_100005430, 0, 0);
}

uint64_t sub_100005430()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100005498()
{

  return _swift_task_switch(sub_10001543C, 0, 0);
}

void sub_100005578(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  if (sub_100041830(a1, a2, *(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v12 = sub_1000A3538();
    sub_100001E38(v12, qword_1000C96B8);

    v13 = sub_1000A3518();
    v14 = sub_1000A3CB8();

    if (os_log_type_enabled(v13, v14))
    {
      v40 = a6;
      v15 = a4;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1000954AC(a1, a2, &v34);
      _os_log_impl(&_mh_execute_header, v13, v14, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v16, 0xCu);
      sub_10000F7B8(v17);

      a4 = v15;
      a6 = v40;
    }

    v18 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v38 = a5;
    v39 = a6;
    v34 = _NSConcreteStackBlock;
    v35 = 1107296256;
    v19 = &unk_1000BECE0;
LABEL_13:
    v36 = sub_100015434;
    v37 = v19;
    v26 = _Block_copy(&v34);

    [v18 energyVenuesWithReply:{v26, v34, v35}];
    _Block_release(v26);

    return;
  }

  if (sub_100017DF8(*(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v20 = sub_1000A3538();
    sub_100001E38(v20, qword_1000C96B8);

    v21 = sub_1000A3518();
    v22 = sub_1000A3CB8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v40 = a6;
      v24 = a4;
      v25 = swift_slowAlloc();
      v34 = v25;
      *v23 = 136315138;
      *(v23 + 4) = sub_1000954AC(a1, a2, &v34);
      _os_log_impl(&_mh_execute_header, v21, v22, "[TCC-Proxy] Method '%s' authorized - forwarding", v23, 0xCu);
      sub_10000F7B8(v25);
      a4 = v24;
      a6 = v40;
    }

    v18 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v38 = a5;
    v39 = a6;
    v34 = _NSConcreteStackBlock;
    v35 = 1107296256;
    v19 = &unk_1000BECB8;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v27 = sub_1000A3538();
  sub_100001E38(v27, qword_1000C96B8);

  v28 = sub_1000A3518();
  v29 = sub_1000A3CC8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1000954AC(a1, a2, &v34);
    _os_log_impl(&_mh_execute_header, v28, v29, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v30, 0xCu);
    sub_10000F7B8(v31);
  }

  v32 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v32 - 8) + 104))(v33, enum case for EnergyKitError.permissionDenied(_:), v32);
  swift_willThrow();
}

void sub_100005AC8(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  if (sub_100041830(a1, a2, *(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v12 = sub_1000A3538();
    sub_100001E38(v12, qword_1000C96B8);

    v13 = sub_1000A3518();
    v14 = sub_1000A3CB8();

    if (os_log_type_enabled(v13, v14))
    {
      v40 = a6;
      v15 = a4;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1000954AC(a1, a2, &v34);
      _os_log_impl(&_mh_execute_header, v13, v14, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v16, 0xCu);
      sub_10000F7B8(v17);

      a4 = v15;
      a6 = v40;
    }

    v18 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v38 = a5;
    v39 = a6;
    v34 = _NSConcreteStackBlock;
    v35 = 1107296256;
    v19 = &unk_1000BEBF0;
LABEL_13:
    v36 = sub_100008AE8;
    v37 = v19;
    v26 = _Block_copy(&v34);

    [v18 createFirstHomeWithReply:{v26, v34, v35}];
    _Block_release(v26);

    return;
  }

  if (sub_100017DF8(*(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v20 = sub_1000A3538();
    sub_100001E38(v20, qword_1000C96B8);

    v21 = sub_1000A3518();
    v22 = sub_1000A3CB8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v40 = a6;
      v24 = a4;
      v25 = swift_slowAlloc();
      v34 = v25;
      *v23 = 136315138;
      *(v23 + 4) = sub_1000954AC(a1, a2, &v34);
      _os_log_impl(&_mh_execute_header, v21, v22, "[TCC-Proxy] Method '%s' authorized - forwarding", v23, 0xCu);
      sub_10000F7B8(v25);
      a4 = v24;
      a6 = v40;
    }

    v18 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v38 = a5;
    v39 = a6;
    v34 = _NSConcreteStackBlock;
    v35 = 1107296256;
    v19 = &unk_1000BEBC8;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v27 = sub_1000A3538();
  sub_100001E38(v27, qword_1000C96B8);

  v28 = sub_1000A3518();
  v29 = sub_1000A3CC8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1000954AC(a1, a2, &v34);
    _os_log_impl(&_mh_execute_header, v28, v29, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v30, 0xCu);
    sub_10000F7B8(v31);
  }

  v32 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v32 - 8) + 104))(v33, enum case for EnergyKitError.permissionDenied(_:), v32);
  swift_willThrow();
}

void sub_100006018(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (sub_100041830(a1, a2, *(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v46 = a6;
    v14 = sub_1000A3538();
    sub_100001E38(v14, qword_1000C96B8);

    v15 = sub_1000A3518();
    v16 = sub_1000A3CB8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      v18 = a4;
      v19 = a5;
      v20 = aBlock;
      *v17 = 136315138;
      *(v17 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v15, v16, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v17, 0xCu);
      sub_10000F7B8(v20);
      a5 = v19;
      a4 = v18;
    }

    v21 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v44 = v46;
    v45 = a7;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v22 = &unk_1000BEA88;
LABEL_13:
    v42 = sub_1000034F0;
    v43 = v22;
    v30 = _Block_copy(&aBlock);

    [v21 setUpSandboxWithSandboxExtension:a5 reply:v30];
    _Block_release(v30);

    goto LABEL_19;
  }

  if (sub_100017DF8(*(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v46 = a6;
    v23 = sub_1000A3538();
    sub_100001E38(v23, qword_1000C96B8);

    v24 = sub_1000A3518();
    v25 = sub_1000A3CB8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      v27 = a4;
      v28 = a5;
      v29 = aBlock;
      *v26 = 136315138;
      *(v26 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v24, v25, "[TCC-Proxy] Method '%s' authorized - forwarding", v26, 0xCu);
      sub_10000F7B8(v29);
      a5 = v28;
      a4 = v27;
    }

    v21 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v44 = v46;
    v45 = a7;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v22 = &unk_1000BEA60;
    goto LABEL_13;
  }

  v31 = a4;
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v32 = sub_1000A3538();
  sub_100001E38(v32, qword_1000C96B8);

  v33 = sub_1000A3518();
  v34 = sub_1000A3CC8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = a5;
    v37 = swift_slowAlloc();
    aBlock = v37;
    *v35 = 136315138;
    *(v35 + 4) = sub_1000954AC(a1, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v33, v34, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v35, 0xCu);
    sub_10000F7B8(v37);
    a5 = v36;
  }

  v38 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v38 - 8) + 104))(v39, enum case for EnergyKitError.permissionDenied(_:), v38);
  swift_willThrow();

LABEL_19:
}

void sub_10000658C(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8, uint64_t a9)
{
  if (sub_100041830(a1, a2, *(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    v50 = a4;
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v42 = a7;
    v18 = sub_1000A3538();
    sub_100001E38(v18, qword_1000C96B8);

    v19 = sub_1000A3518();
    v20 = sub_1000A3CB8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      v22 = aBlock;
      *v21 = 136315138;
      *(v21 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v19, v20, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v21, 0xCu);
      sub_10000F7B8(v22);
    }

    a4 = v50;
    v23 = *&v50[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v48 = a5;
    v49 = a6;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_100008944;
    v47 = v42;
    v24 = _Block_copy(&aBlock);

    [v23 *a8];
LABEL_13:
    _Block_release(v24);

    return;
  }

  if (sub_100017DF8(*(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    v43 = a5;
    v50 = v9;
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v25 = a9;
    v26 = sub_1000A3538();
    sub_100001E38(v26, qword_1000C96B8);

    v27 = sub_1000A3518();
    v28 = sub_1000A3CB8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = a8;
      v31 = a4;
      v32 = swift_slowAlloc();
      aBlock = v32;
      *v29 = 136315138;
      *(v29 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v27, v28, "[TCC-Proxy] Method '%s' authorized - forwarding", v29, 0xCu);
      sub_10000F7B8(v32);
      a4 = v31;
      a8 = v30;
      v25 = a9;
    }

    v33 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v48 = v43;
    v49 = a6;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_100008944;
    v47 = v25;
    v24 = _Block_copy(&aBlock);

    [v33 *a8];
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v34 = sub_1000A3538();
  sub_100001E38(v34, qword_1000C96B8);

  v35 = sub_1000A3518();
  v36 = sub_1000A3CC8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = a4;
    v39 = swift_slowAlloc();
    aBlock = v39;
    *v37 = 136315138;
    *(v37 + 4) = sub_1000954AC(a1, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v35, v36, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v37, 0xCu);
    sub_10000F7B8(v39);
    a4 = v38;
  }

  v40 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v40 - 8) + 104))(v41, enum case for EnergyKitError.permissionDenied(_:), v40);
  swift_willThrow();
}

void sub_100006B28(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (sub_100041830(a1, a2, *(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    v50 = a7;
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v16 = sub_1000A3538();
    sub_100001E38(v16, qword_1000C96B8);

    v17 = sub_1000A3518();
    v18 = sub_1000A3CB8();

    if (os_log_type_enabled(v17, v18))
    {
      v42 = a4;
      v19 = a5;
      v20 = swift_slowAlloc();
      v21 = a6;
      v22 = swift_slowAlloc();
      aBlock = v22;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v17, v18, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v20, 0xCu);
      sub_10000F7B8(v22);
      a6 = v21;

      a5 = v19;
      a4 = v42;
    }

    v23 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v48 = v50;
    v49 = a8;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v24 = &unk_1000BE948;
LABEL_13:
    v46 = sub_100009914;
    v47 = v24;
    v32 = _Block_copy(&aBlock);

    [v23 gridIDWithLocation:a5 sandboxExtension:a6 reply:v32];
    _Block_release(v32);

    return;
  }

  if (sub_100017DF8(*(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    v50 = a7;
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v25 = sub_1000A3538();
    sub_100001E38(v25, qword_1000C96B8);

    v26 = sub_1000A3518();
    v27 = sub_1000A3CB8();

    if (os_log_type_enabled(v26, v27))
    {
      v43 = a4;
      v28 = a5;
      v29 = swift_slowAlloc();
      v30 = a6;
      v31 = swift_slowAlloc();
      aBlock = v31;
      *v29 = 136315138;
      *(v29 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v26, v27, "[TCC-Proxy] Method '%s' authorized - forwarding", v29, 0xCu);
      sub_10000F7B8(v31);
      a6 = v30;

      a5 = v28;
      a4 = v43;
    }

    v23 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v48 = v50;
    v49 = a8;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v24 = &unk_1000BE920;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v33 = sub_1000A3538();
  sub_100001E38(v33, qword_1000C96B8);

  v34 = sub_1000A3518();
  v35 = sub_1000A3CC8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    v37 = a4;
    v38 = a5;
    v39 = aBlock;
    *v36 = 136315138;
    *(v36 + 4) = sub_1000954AC(a1, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v34, v35, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v36, 0xCu);
    sub_10000F7B8(v39);
    a5 = v38;
    a4 = v37;
  }

  v40 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v40 - 8) + 104))(v41, enum case for EnergyKitError.permissionDenied(_:), v40);
  swift_willThrow();
}

void sub_1000070C0(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a6;
  if (sub_100041830(a1, a2, *(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    v39 = a8;
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v15 = sub_1000A3538();
    sub_100001E38(v15, qword_1000C96B8);

    v16 = sub_1000A3518();
    v17 = sub_1000A3CB8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = a5;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v16, v17, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v19, 0xCu);
      sub_10000F7B8(v20);

      a5 = v18;
    }

    v21 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v22 = sub_1000A3A78();
    v45 = v39;
    v46 = a9;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v23 = &unk_1000BE880;
LABEL_13:
    v43 = sub_100015434;
    v44 = v23;
    v30 = _Block_copy(&aBlock);

    [v21 electricityGuidanceWithQuery:a5 gridID:v22 reply:v30];
    _Block_release(v30);

    return;
  }

  if (sub_100017DF8(*(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    v40 = a8;
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v24 = sub_1000A3538();
    sub_100001E38(v24, qword_1000C96B8);

    v25 = sub_1000A3518();
    v26 = sub_1000A3CB8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = a5;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v25, v26, "[TCC-Proxy] Method '%s' authorized - forwarding", v28, 0xCu);
      sub_10000F7B8(v29);

      a5 = v27;
    }

    v21 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v22 = sub_1000A3A78();
    v45 = v40;
    v46 = a9;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v23 = &unk_1000BE858;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v31 = sub_1000A3538();
  sub_100001E38(v31, qword_1000C96B8);

  v32 = sub_1000A3518();
  v33 = sub_1000A3CC8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = a5;
    v36 = swift_slowAlloc();
    aBlock = v36;
    *v34 = 136315138;
    *(v34 + 4) = sub_1000954AC(a1, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v32, v33, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v34, 0xCu);
    sub_10000F7B8(v36);
    a5 = v35;
  }

  v37 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v37 - 8) + 104))(v38, enum case for EnergyKitError.permissionDenied(_:), v37);
  swift_willThrow();
}

void sub_100007694(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, void *a5, void *a6, void *a7, int a8, uint64_t a9, uint64_t a10)
{
  LODWORD(v53) = a8;
  v17 = a10;
  if (sub_100041830(a1, a2, *(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v18 = sub_1000A3538();
    sub_100001E38(v18, qword_1000C96B8);

    v19 = sub_1000A3518();
    v20 = sub_1000A3CB8();

    if (os_log_type_enabled(v19, v20))
    {
      v44 = a6;
      v21 = a5;
      v22 = swift_slowAlloc();
      v23 = a7;
      v24 = swift_slowAlloc();
      aBlock = v24;
      *v22 = 136315138;
      *(v22 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v19, v20, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v22, 0xCu);
      sub_10000F7B8(v24);
      a7 = v23;
      v17 = a10;

      a5 = v21;
      a6 = v44;
    }

    v25 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v51 = a9;
    v52 = v17;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v26 = &unk_1000BE808;
LABEL_13:
    v49 = sub_1000034F0;
    v50 = v26;
    v34 = _Block_copy(&aBlock);

    [v25 batchedWholeHomeInsightsWithRequest:a5 endpoint:a6 ekSandboxExtension:a7 wholeHomeOptimization:v53 & 1 completion:v34];
    _Block_release(v34);

    return;
  }

  if (sub_100017DF8(*(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v27 = sub_1000A3538();
    sub_100001E38(v27, qword_1000C96B8);

    v28 = sub_1000A3518();
    v29 = sub_1000A3CB8();

    if (os_log_type_enabled(v28, v29))
    {
      v45 = a6;
      v30 = a5;
      v31 = swift_slowAlloc();
      v32 = a7;
      v33 = swift_slowAlloc();
      aBlock = v33;
      *v31 = 136315138;
      *(v31 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v28, v29, "[TCC-Proxy] Method '%s' authorized - forwarding", v31, 0xCu);
      sub_10000F7B8(v33);
      a7 = v32;
      v17 = a10;

      a5 = v30;
      a6 = v45;
    }

    v25 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v51 = a9;
    v52 = v17;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v26 = &unk_1000BE7E0;
    goto LABEL_13;
  }

  v53 = a10;
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v35 = sub_1000A3538();
  sub_100001E38(v35, qword_1000C96B8);

  v36 = sub_1000A3518();
  v37 = sub_1000A3CC8();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v46 = a4;
    v39 = a6;
    v40 = a5;
    v41 = swift_slowAlloc();
    aBlock = v41;
    *v38 = 136315138;
    *(v38 + 4) = sub_1000954AC(a1, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v36, v37, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v38, 0xCu);
    sub_10000F7B8(v41);
    a5 = v40;
    a6 = v39;
    a4 = v46;
  }

  v42 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v42 - 8) + 104))(v43, enum case for EnergyKitError.permissionDenied(_:), v42);
  swift_willThrow();
}

void sub_100007C54(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v52 = a8;
  v16 = a9;
  if (sub_100041830(a1, a2, *(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v17 = sub_1000A3538();
    sub_100001E38(v17, qword_1000C96B8);

    v18 = sub_1000A3518();
    v19 = sub_1000A3CB8();

    if (os_log_type_enabled(v18, v19))
    {
      v43 = a6;
      v20 = a5;
      v21 = swift_slowAlloc();
      v22 = a7;
      v23 = swift_slowAlloc();
      aBlock = v23;
      *v21 = 136315138;
      *(v21 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v18, v19, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v21, 0xCu);
      sub_10000F7B8(v23);
      a7 = v22;
      v16 = a9;

      a5 = v20;
      a6 = v43;
    }

    v24 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v50 = v52;
    v51 = v16;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_1000034F0;
    v49 = &unk_1000BE790;
    v25 = _Block_copy(&aBlock);

    [v24 batchedDeviceInsightsWithRequest:a5 endpoint:a6 ekSandboxExtension:a7 completion:v25];
LABEL_13:
    _Block_release(v25);

    return;
  }

  if (sub_100017DF8(*(a3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v26 = sub_1000A3538();
    sub_100001E38(v26, qword_1000C96B8);

    v27 = sub_1000A3518();
    v28 = sub_1000A3CB8();

    if (os_log_type_enabled(v27, v28))
    {
      v44 = a6;
      v29 = a5;
      v30 = swift_slowAlloc();
      v31 = a7;
      v32 = swift_slowAlloc();
      aBlock = v32;
      *v30 = 136315138;
      *(v30 + 4) = sub_1000954AC(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v27, v28, "[TCC-Proxy] Method '%s' authorized - forwarding", v30, 0xCu);
      sub_10000F7B8(v32);
      a7 = v31;
      v16 = a9;

      a5 = v29;
      a6 = v44;
    }

    v33 = *&a4[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target];
    v50 = v52;
    v51 = v16;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_1000034F0;
    v49 = &unk_1000BE768;
    v25 = _Block_copy(&aBlock);

    [v33 batchedDeviceInsightsWithRequest:a5 endpoint:a6 ekSandboxExtension:a7 completion:v25];
    goto LABEL_13;
  }

  v52 = a9;
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v34 = sub_1000A3538();
  sub_100001E38(v34, qword_1000C96B8);

  v35 = sub_1000A3518();
  v36 = sub_1000A3CC8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v45 = a4;
    v38 = a6;
    v39 = a5;
    v40 = swift_slowAlloc();
    aBlock = v40;
    *v37 = 136315138;
    *(v37 + 4) = sub_1000954AC(a1, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v35, v36, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v37, 0xCu);
    sub_10000F7B8(v40);
    a5 = v39;
    a6 = v38;
    a4 = v45;
  }

  v41 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v41 - 8) + 104))(v42, enum case for EnergyKitError.permissionDenied(_:), v41);
  swift_willThrow();
}

uint64_t sub_100008250(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  if (sub_100041830(a1, a2, *(v3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v7 = sub_1000A3538();
    sub_100001E38(v7, qword_1000C96B8);

    v8 = sub_1000A3518();
    v9 = sub_1000A3CB8();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1000954AC(a1, a2, &v24);
    _os_log_impl(&_mh_execute_header, v8, v9, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v10, 0xCu);
    sub_10000F7B8(v11);

LABEL_11:

LABEL_12:

    return a3();
  }

  if (sub_100017DF8(*(v3 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v12 = sub_1000A3538();
    sub_100001E38(v12, qword_1000C96B8);

    v8 = sub_1000A3518();
    v13 = sub_1000A3CB8();

    if (!os_log_type_enabled(v8, v13))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1000954AC(a1, a2, &v24);
    _os_log_impl(&_mh_execute_header, v8, v13, "[TCC-Proxy] Method '%s' authorized - forwarding", v14, 0xCu);
    sub_10000F7B8(v15);

    goto LABEL_11;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v17 = sub_1000A3538();
  sub_100001E38(v17, qword_1000C96B8);

  v18 = sub_1000A3518();
  v19 = sub_1000A3CC8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1000954AC(a1, a2, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v20, 0xCu);
    sub_10000F7B8(v21);
  }

  v22 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v22 - 8) + 104))(v23, enum case for EnergyKitError.permissionDenied(_:), v22);
  return swift_willThrow();
}

void sub_1000086AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v10 = *(a1 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
  isa = sub_1000A24D8().super.isa;
  v13[4] = a3;
  v13[5] = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100015434;
  v13[3] = a5;
  v12 = _Block_copy(v13);

  [v10 *a6];
  _Block_release(v12);
}

uint64_t sub_1000087B0(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, id, void *))
{
  v8 = sub_1000A2508();
  v9 = *(v8 - 8);
  __chkstk_darwin(*(v9 + 64));
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a4);
  sub_1000A24F8();
  _Block_copy(v12);
  v13 = a1;
  a5(v11, v13, v12);
  _Block_release(v12);
  _Block_release(v12);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100008944(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_100008AE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_100008CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
  isa = sub_1000A24D8().super.isa;
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008D94;
  v9[3] = &unk_1000BEB78;
  v8 = _Block_copy(v9);

  [v6 isCostInclusionConfiguredForGuidanceFor:isa reply:v8];
  _Block_release(v8);
}

void sub_100008D94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_100008FE8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
  isa = sub_1000A24D8().super.isa;
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100008AE8;
  v11[3] = &unk_1000BEB28;
  v10 = _Block_copy(v11);

  [v8 configureCostInclusionForGuidanceWithIsIncluded:a2 & 1 for:isa reply:v10];
  _Block_release(v10);
}

void sub_1000092BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
  isa = sub_1000A24D8().super.isa;
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008AE8;
  v9[3] = &unk_1000BEAD8;
  v8 = _Block_copy(v9);

  [v6 deleteGridIDAppTrackingFor:isa reply:v8];
  _Block_release(v8);
}

void sub_100009824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
  isa = sub_1000A24D8().super.isa;
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100009914;
  v11[3] = &unk_1000BE998;
  v10 = _Block_copy(v11);

  [v8 gridIDWithVenue:isa sandboxExtension:a3 reply:v10];
  _Block_release(v10);
}

uint64_t sub_100009914(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1000A3A88();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

void sub_100009C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
  isa = sub_1000A24D8().super.isa;
  v12 = sub_1000A3A78();
  v14[4] = a6;
  v14[5] = a7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100015434;
  v14[3] = &unk_1000BE8D0;
  v13 = _Block_copy(v14);

  [v10 electricityGuidanceWithVenue:isa query:a3 gridID:v12 reply:v13];
  _Block_release(v13);
}

void sub_100009DA8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_10000A57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
  isa = sub_1000A24D8().super.isa;
  v13[4] = a5;
  v13[5] = a6;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10000A67C;
  v13[3] = &unk_1000BE718;
  v12 = _Block_copy(v13);

  [v10 submitLoadEventsWithEvents:a2 venue:isa sandboxExtension:a4 reply:v12];
  _Block_release(v12);
}

void sub_10000A67C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10000A904(uint64_t a1, uint64_t a2)
{
  v3 = *sub_100013C5C((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_1000A3A88();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(*(v3 + 64) + 40);
  *v6 = v4;
  v6[1] = v5;

  return _swift_continuation_resume(v3);
}

uint64_t sub_10000AB0C(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_1000A3A88();
  v4[6] = v7;
  v8 = a2;
  v9 = a4;

  return _swift_task_switch(sub_10000ABA8, 0, 0);
}

uint64_t sub_10000ABA8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = v1;

  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10000AC84;
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);

  return sub_10000F924(0x6628444964697267, 0xEC000000293A726FLL, v7, v7, v5, v6, v8);
}

uint64_t sub_10000AC84(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 24);
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  *(v4 + 80) = v2;

  if (v2)
  {

    v6 = sub_10000AEA8;
  }

  else
  {
    v7 = *(v4 + 16);

    v6 = sub_10000AE00;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10000AE00()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);

  if (v1)
  {
    v1 = sub_1000A3A78();
  }

  v3 = *(v0 + 32);
  (v3)[2](v3, v1);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10000AEA8()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[4];
  v3[2](v3, 0);
  _Block_release(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10000B0D8(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a2;
  v9 = a4;
  v10 = a1;

  return _swift_task_switch(sub_10000B170, 0, 0);
}

uint64_t sub_10000B170()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = v2;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_10000B240;
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = *(v0 + 16);

  return sub_100010210(0xD000000000000016, 0x80000001000A5BC0, v7, v7, v9, v8);
}

uint64_t sub_10000B240(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 32);
  v6 = *(*v3 + 24);
  v7 = *(*v3 + 16);
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = v2;

  if (v2)
  {
    v8 = sub_10000B464;
  }

  else
  {
    v8 = sub_10000B3AC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10000B3AC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);

  if (v1)
  {
    v1 = sub_1000A3A78();
  }

  v4 = *(v0 + 40);
  (v4)[2](v4, v1);

  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000B464()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);

  v3 = *(v0 + 40);
  v3[2](v3, 0);
  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10000B6AC(uint64_t a1, __int16 a2, uint64_t a3, void *aBlock, void *a5)
{
  *(v5 + 16) = a5;
  *(v5 + 88) = a2;
  *(v5 + 24) = _Block_copy(aBlock);
  *(v5 + 32) = sub_1000A3A88();
  *(v5 + 40) = v7;
  *(v5 + 48) = sub_1000A3A88();
  *(v5 + 56) = v8;
  v9 = a5;

  return _swift_task_switch(sub_10000B754, 0, 0);
}

uint64_t sub_10000B754()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_10000B84C;
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 88);

  return sub_100010A1C(0x65636E6164697567, 0xEF293A6574697328, v6, v6, v4, v5, v7, v3);
}

uint64_t sub_10000B84C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    v5 = sub_10000BA48;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    *(v4 + 80) = a1;
    v5 = sub_10000B9C0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000B9C0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);

  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000BA48()
{
  v1 = *(v0 + 24);

  v2 = sub_1000A2348();

  (v1)[2](v1, 0, v2);

  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000BC94(__int16 a1, uint64_t a2, void *aBlock, void *a4)
{
  *(v4 + 16) = a4;
  *(v4 + 72) = a1;
  *(v4 + 24) = _Block_copy(aBlock);
  *(v4 + 32) = sub_1000A3A88();
  *(v4 + 40) = v6;
  v7 = a4;

  return _swift_task_switch(sub_10000BD24, 0, 0);
}

uint64_t sub_10000BD24()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_10000BDF8;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = *(v0 + 72);

  return sub_1000114D8(0xD000000000000010, 0x80000001000A5B50, v5, v5, v6, v3, v4);
}

uint64_t sub_10000BDF8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_10000BFD4;
  }

  else
  {

    *(v4 + 64) = a1;
    v5 = sub_10000BF4C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000BF4C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);

  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000BFD4()
{
  v1 = *(v0 + 24);

  v2 = sub_1000A2348();

  (v1)[2](v1, 0, v2);

  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000C20C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_1000A3A88();
  v3[5] = v5;
  v6 = a3;

  return _swift_task_switch(sub_10000C298, 0, 0);
}

uint64_t sub_10000C298()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_10000C364;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  return sub_100011F2C(0x726F662865746973, 0xEA0000000000293ALL, v5, v5, v3, v4);
}

uint64_t sub_10000C364(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);

  if (v1)
  {

    v6 = sub_10000C568;
  }

  else
  {

    *(v4 + 56) = a1;
    v6 = sub_10000C4E0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10000C4E0()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 24);
  (v2)[2](v2, v1);
  _Block_release(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000C568()
{
  v1 = *(v0 + 24);
  v1[2](v1, 0);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000C5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_10000C60C, 0, 0);
}

uint64_t sub_10000C60C()
{
  v1 = *(v0[20] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
  isa = sub_1000A24D8().super.isa;
  v0[22] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10000C74C;
  v3 = swift_continuation_init();
  v0[17] = sub_10000275C(&qword_1000C7858, &qword_1000AB7B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100015438;
  v0[13] = &unk_1000BE2E0;
  v0[14] = v3;
  [v1 siteWithHomeID:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000C74C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_10000C8C8;
  }

  else
  {
    v2 = sub_10000C85C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000C85C()
{
  v1 = *(v0 + 176);
  **(v0 + 152) = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000C8C8(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10000C938(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100013C5C((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_10000275C(&qword_1000C7860, &qword_1000AB7B8);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_10000CB98(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_1000A2508();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  sub_1000A24F8();
  v7 = a3;

  return _swift_task_switch(sub_10000CC90, 0, 0);
}

uint64_t sub_10000CC90()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_10000CD80;

  return sub_100003CB0(0x6D6F682865746973, 0xED0000293A444965, &unk_1000AB7A0, v3);
}

uint64_t sub_10000CD80(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_10000CF70;
  }

  else
  {
    *(v4 + 80) = a1;

    v5 = sub_10000CEB0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000CEB0()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  (*(v5 + 8))(v3, v4);
  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000CF70()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = sub_1000A2348();

  (v1)[2](v1, 0, v5);

  _Block_release(v1);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000D04C(uint64_t a1, uint64_t a2)
{
  v2 = *sub_100013C5C((a1 + 32), *(a1 + 56));
  **(*(v2 + 64) + 40) = sub_1000A3A18();

  return _swift_continuation_resume(v2);
}

uint64_t sub_10000D260(void *a1, void *aBlock, void *a3, double a4)
{
  *(v4 + 32) = a3;
  *(v4 + 24) = a4;
  *(v4 + 16) = a1;
  *(v4 + 40) = _Block_copy(aBlock);
  v7 = a1;
  v8 = a3;

  return _swift_task_switch(sub_10000D2F4, 0, 0);
}

uint64_t sub_10000D2F4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_10000D3C4;
  v5 = *(v0 + 32);
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);

  return sub_100012808(0x656E287365746973, 0xEC000000293A7261, v5, v5, v7, v6);
}

uint64_t sub_10000D3C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 16);

  if (v1)
  {

    v7 = sub_10000D5E4;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_10000D528;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000D528()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  isa = sub_1000A3A08().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10000D5E4()
{
  sub_100089C30(&_swiftEmptyArrayStorage);
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  isa = sub_1000A3A08().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10000D6AC(uint64_t a1, uint64_t a2)
{
  v2 = *sub_100013C5C((a1 + 32), *(a1 + 56));
  **(*(v2 + 64) + 40) = sub_1000A3B68();

  return _swift_continuation_resume(v2);
}

uint64_t sub_10000D890(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_10000D908, 0, 0);
}

uint64_t sub_10000D908()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_10000D9BC;
  v3 = *(v0 + 16);

  return sub_100013024(0x7365746973, 0xE500000000000000, v3, v3);
}

uint64_t sub_10000D9BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);

  if (v1)
  {

    v6 = sub_10000DBB0;
  }

  else
  {
    *(v4 + 40) = a1;
    v6 = sub_10000DB08;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10000DB08()
{
  v1 = *(v0 + 24);

  isa = sub_1000A3B48().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000DBB0()
{
  v1 = *(v0 + 24);

  isa = sub_1000A3B48().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000DDE0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a3;

  return _swift_task_switch(sub_10000DE5C, 0, 0);
}

uint64_t sub_10000DE5C()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_10000DF1C;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_100004500(v2, 0x4F6B636F4D746573, 0xEE00736E6F697470, v3, v3, v4);
}

uint64_t sub_10000DF1C()
{

  if (v0)
  {

    v1 = sub_1000153BC;
  }

  else
  {
    v1 = sub_10000E034;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10000E034()
{
  v1 = *(v0 + 32);

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000E0AC(uint64_t a1, uint64_t a2)
{
  v3 = *sub_100013C5C((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_10000E27C(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_10000E2F4, 0, 0);
}

uint64_t sub_10000E2F4()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_10000E3B8;
  v3 = *(v0 + 16);

  return sub_100013640(0x4F6B636F4D746567, 0xEE00736E6F697470, v3, v3);
}

uint64_t sub_10000E3B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);

  if (v1)
  {

    v6 = sub_10000E584;
  }

  else
  {
    *(v4 + 40) = a1;
    v6 = sub_10000E504;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10000E504()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  v2[2](v2, v1);
  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000E584()
{
  v1 = *(v0 + 24);

  v1[2](v1, 0);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000E788(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_10000E814, 0, 0);
}

uint64_t sub_10000E814()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_10000E8D8;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_100004D38(v4, 0x534B457055746573, 0xEE00786F62646E61, v5, v5, v6);
}

uint64_t sub_10000E8D8()
{

  if (v0)
  {

    v1 = sub_1000153C0;
  }

  else
  {
    v1 = sub_10000E9F0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10000E9F0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

id sub_10000EABC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10000EB78()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000153A8;

  return sub_10000E788(v2, v3, v4);
}

uint64_t sub_10000EC2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000153A8;

  return sub_1000893CC(v2, v3, v4);
}

uint64_t sub_10000ECEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000153A8;

  return sub_1000894B4(a1, v4, v5, v6);
}

Swift::Int sub_10000EDB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000275C(&qword_1000C7888, qword_1000AB8B8);
    v3 = sub_1000A3E78();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1000A3F88();

      sub_1000A3AC8();
      result = sub_1000A3F98();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1000A3F48();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10000EF20(void *a1)
{
  v2 = v1;
  v4 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = &v49 - v5;
  swift_unknownObjectWeakInit();
  v7 = [a1 processIdentifier];
  v8 = sub_1000A3A78();
  v9 = [a1 valueForEntitlement:v8];

  if (v9)
  {
    sub_1000A3DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  aBlock = v56;
  v52 = v57;
  if (*(&v57 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = v50;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1000026F4(&aBlock);
  }

  v10 = 0;
LABEL_9:
  v11 = sub_1000A3A78();
  v12 = [a1 valueForEntitlement:v11];

  if (v12)
  {
    sub_1000A3DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  aBlock = v56;
  v52 = v57;
  if (*(&v57 + 1))
  {
    if (swift_dynamicCast())
    {
      v13 = v50;
      goto LABEL_17;
    }
  }

  else
  {
    sub_1000026F4(&aBlock);
  }

  v13 = 0;
LABEL_17:
  v14 = sub_1000A3A78();
  v15 = [a1 valueForEntitlement:v14];

  if (v15)
  {
    sub_1000A3DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  aBlock = v56;
  v52 = v57;
  if (*(&v57 + 1))
  {
    if (swift_dynamicCast())
    {
      if (((v10 | v13) & 1) == 0 && (v50 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    }
  }

  else
  {
    sub_1000026F4(&aBlock);
  }

  if (((v10 | v13) & 1) == 0)
  {
LABEL_24:
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v16 = sub_1000A3538();
    sub_100001E38(v16, qword_1000C96B8);
    v17 = sub_1000A3518();
    v18 = sub_1000A3CC8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v17, v18, "[TCC-Delegate] Connection rejected - PID %d missing entitlements", v19, 8u);
    }

    v20 = 0;
    goto LABEL_42;
  }

LABEL_31:
  [a1 auditToken];
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v21 = sub_1000A3538();
  sub_100001E38(v21, qword_1000C96B8);
  v22 = sub_1000A3518();
  v23 = sub_1000A3CB8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v22, v23, "[TCC-Delegate] New connection from PID: %d", v24, 8u);
  }

  v25 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP16EnergyKitService16CombinedProtocol_];
  [a1 setExportedInterface:v25];

  Strong = swift_unknownObjectWeakLoadStrong();
  v27 = objc_allocWithZone(type metadata accessor for CombinedService());
  v28 = sub_100017B84(Strong);

  v29 = qword_1000C7558;
  v30 = v28;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = qword_1000C7750;
  v32 = type metadata accessor for TCCValidatingProxy();
  v33 = objc_allocWithZone(v32);
  *&v33[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target] = v30;
  *&v33[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection] = a1;
  *&v33[OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods] = v31;
  v55.receiver = v33;
  v55.super_class = v32;

  v34 = a1;
  v35 = objc_msgSendSuper2(&v55, "init");
  [v34 setExportedObject:v35];
  v36 = swift_allocObject();
  *(v36 + 16) = v7;
  v53 = sub_100015094;
  v54 = v36;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v52 = sub_1000034F0;
  *(&v52 + 1) = &unk_1000BEDD0;
  v37 = _Block_copy(&aBlock);

  [v34 setInterruptionHandler:v37];
  _Block_release(v37);
  v38 = swift_allocObject();
  *(v38 + 16) = v7;
  v53 = sub_1000150B8;
  v54 = v38;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v52 = sub_1000034F0;
  *(&v52 + 1) = &unk_1000BEE20;
  v39 = _Block_copy(&aBlock);

  [v34 setInvalidationHandler:v39];
  _Block_release(v39);
  if ((*(v2 + OBJC_IVAR____TtC16EnergyKitService23CombinedServiceDelegate_isInitialized) & 1) == 0)
  {
    v40 = dispatch_group_create();
    dispatch_group_enter(v40);
    v41 = sub_1000A3BE8();
    (*(*(v41 - 8) + 56))(v6, 1, 1, v41);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = v34;
    v42[5] = v2;
    v42[6] = v40;
    v43 = v34;
    v44 = v2;
    v45 = v40;
    sub_1000941D8(0, 0, v6, &unk_1000AB8B0, v42);

    sub_1000A3CE8();
  }

  [v34 resume];
  v17 = sub_1000A3518();
  v46 = sub_1000A3CB8();
  if (os_log_type_enabled(v17, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 67109120;
    *(v47 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v17, v46, "[TCC-Delegate] Accepted connection from PID: %d with universal TCC proxy", v47, 8u);

    v20 = 1;
  }

  else
  {

    v20 = 1;
    v17 = v30;
  }

LABEL_42:

  swift_unknownObjectWeakDestroy();
  return v20;
}

unint64_t sub_10000F760()
{
  result = qword_1000C7830;
  if (!qword_1000C7830)
  {
    sub_1000A3598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C7830);
  }

  return result;
}

uint64_t sub_10000F7B8(void *a1)
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

uint64_t sub_10000F814(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000F878()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000153A8;

  return sub_10000E27C(v2, v3);
}

uint64_t sub_10000F924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[33] = a6;
  v7[34] = a7;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  return _swift_task_switch(sub_10000F950, 0, 0);
}

uint64_t sub_10000F950()
{
  v35 = v0;
  v1 = v0 + 26;
  if (sub_100041830(v0[28], v0[29], *(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = sub_1000A3538();
    sub_100001E38(v2, qword_1000C96B8);

    v3 = sub_1000A3518();
    v4 = sub_1000A3CB8();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[28];
      v5 = v0[29];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v34[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000954AC(v6, v5, v34);
      _os_log_impl(&_mh_execute_header, v3, v4, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v7, 0xCu);
      sub_10000F7B8(v8);
    }

    v9 = v0 + 10;
    v10 = v0[34];
    v11 = *(v0[31] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v12 = sub_1000A3A78();
    v0[35] = v12;
    v0[10] = v0;
    v0[15] = v1;
    v0[11] = sub_10000FF70;
    v13 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7878, &qword_1000AB870);
    v0[22] = v13;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v14 = &unk_1000BE6C8;
LABEL_13:
    v0[20] = sub_10000A904;
    v0[21] = v14;
    [v11 gridIDFor:v12 ekSandboxExtension:v10 completionHandler:v0 + 18];

    return _swift_continuation_await(v9);
  }

  if (sub_100017DF8(*(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v15 = sub_1000A3538();
    sub_100001E38(v15, qword_1000C96B8);

    v16 = sub_1000A3518();
    v17 = sub_1000A3CB8();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = v0[28];
      v18 = v0[29];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000954AC(v19, v18, v34);
      _os_log_impl(&_mh_execute_header, v16, v17, "[TCC-Proxy] Method '%s' authorized - forwarding", v20, 0xCu);
      sub_10000F7B8(v21);
    }

    v9 = v0 + 2;
    v10 = v0[34];
    v11 = *(v0[31] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v12 = sub_1000A3A78();
    v0[36] = v12;
    v0[2] = v0;
    v0[7] = v1;
    v0[3] = sub_1000100C0;
    v22 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7878, &qword_1000AB870);
    v0[22] = v22;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v14 = &unk_1000BE6A0;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v23 = sub_1000A3538();
  sub_100001E38(v23, qword_1000C96B8);

  v24 = sub_1000A3518();
  v25 = sub_1000A3CC8();

  if (os_log_type_enabled(v24, v25))
  {
    v27 = v0[28];
    v26 = v0[29];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_1000954AC(v27, v26, v34);
    _os_log_impl(&_mh_execute_header, v24, v25, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v28, 0xCu);
    sub_10000F7B8(v29);
  }

  v30 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, enum case for EnergyKitError.permissionDenied(_:), v30);
  swift_willThrow();
  v32 = v0[1];

  return v32();
}

uint64_t sub_10000FF70()
{

  return _swift_task_switch(sub_100010050, 0, 0);
}

uint64_t sub_100010050()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_1000100C0()
{

  return _swift_task_switch(sub_1000101A0, 0, 0);
}

uint64_t sub_1000101A0()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_100010210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[32] = a5;
  v6[33] = a6;
  v6[30] = a3;
  v6[31] = a4;
  v6[28] = a1;
  v6[29] = a2;
  return _swift_task_switch(sub_100010238, 0, 0);
}

uint64_t sub_100010238()
{
  v35 = v0;
  v1 = v0 + 26;
  if (sub_100041830(v0[28], v0[29], *(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = sub_1000A3538();
    sub_100001E38(v2, qword_1000C96B8);

    v3 = sub_1000A3518();
    v4 = sub_1000A3CB8();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[28];
      v5 = v0[29];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v34[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000954AC(v6, v5, v34);
      _os_log_impl(&_mh_execute_header, v3, v4, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v7, 0xCu);
      sub_10000F7B8(v8);
    }

    v9 = v0 + 10;
    v10 = v0[32];
    v11 = *(v0[31] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v12 = v0[33];
    v0[10] = v0;
    v0[15] = v1;
    v0[11] = sub_100010840;
    v13 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7878, &qword_1000AB870);
    v0[22] = v13;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v14 = &unk_1000BE600;
LABEL_13:
    v0[20] = sub_10000A904;
    v0[21] = v14;
    [v11 gridIDWithLocation:v10 ekSandboxExtension:v12 completionHandler:v0 + 18];

    return _swift_continuation_await(v9);
  }

  if (sub_100017DF8(*(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v15 = sub_1000A3538();
    sub_100001E38(v15, qword_1000C96B8);

    v16 = sub_1000A3518();
    v17 = sub_1000A3CB8();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = v0[28];
      v18 = v0[29];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000954AC(v19, v18, v34);
      _os_log_impl(&_mh_execute_header, v16, v17, "[TCC-Proxy] Method '%s' authorized - forwarding", v20, 0xCu);
      sub_10000F7B8(v21);
    }

    v9 = v0 + 2;
    v10 = v0[32];
    v11 = *(v0[31] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v12 = v0[33];
    v0[2] = v0;
    v0[7] = v1;
    v0[3] = sub_10001093C;
    v22 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7878, &qword_1000AB870);
    v0[22] = v22;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v14 = &unk_1000BE5D8;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v23 = sub_1000A3538();
  sub_100001E38(v23, qword_1000C96B8);

  v24 = sub_1000A3518();
  v25 = sub_1000A3CC8();

  if (os_log_type_enabled(v24, v25))
  {
    v27 = v0[28];
    v26 = v0[29];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_1000954AC(v27, v26, v34);
    _os_log_impl(&_mh_execute_header, v24, v25, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v28, 0xCu);
    sub_10000F7B8(v29);
  }

  v30 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, enum case for EnergyKitError.permissionDenied(_:), v30);
  swift_willThrow();
  v32 = v0[1];

  return v32();
}

uint64_t sub_100010840()
{

  return _swift_task_switch(sub_100010920, 0, 0);
}

uint64_t sub_10001093C()
{

  return _swift_task_switch(sub_1000153B8, 0, 0);
}

uint64_t sub_100010A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8)
{
  *(v8 + 264) = a8;
  *(v8 + 272) = v10;
  *(v8 + 328) = a7;
  *(v8 + 248) = a5;
  *(v8 + 256) = a6;
  *(v8 + 232) = a3;
  *(v8 + 240) = a4;
  *(v8 + 216) = a1;
  *(v8 + 224) = a2;
  return _swift_task_switch(sub_100010A54, 0, 0);
}

uint64_t sub_100010A54()
{
  v37 = v0;
  v1 = v0 + 208;
  if (sub_100041830(*(v0 + 216), *(v0 + 224), *(*(v0 + 232) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = sub_1000A3538();
    sub_100001E38(v2, qword_1000C96B8);

    v3 = sub_1000A3518();
    v4 = sub_1000A3CB8();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 216);
      v5 = *(v0 + 224);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v36[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000954AC(v6, v5, v36);
      _os_log_impl(&_mh_execute_header, v3, v4, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v7, 0xCu);
      sub_10000F7B8(v8);
    }

    v9 = v0 + 80;
    v10 = *(v0 + 328);
    v11 = *(*(v0 + 240) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v12 = sub_1000A3A78();
    *(v0 + 280) = v12;
    v13 = sub_1000A3A78();
    *(v0 + 288) = v13;
    *(v0 + 80) = v0;
    *(v0 + 120) = v1;
    *(v0 + 88) = sub_1000110B8;
    v14 = swift_continuation_init();
    *(v0 + 200) = sub_10000275C(&qword_1000C7870, &qword_1000AB818);
    *(v0 + 176) = v14;
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    v15 = &unk_1000BE538;
LABEL_13:
    *(v0 + 160) = sub_100015438;
    *(v0 + 168) = v15;
    [v11 guidanceWithSite:v12 query:v10 gridID:v13 completionHandler:v0 + 144];

    return _swift_continuation_await(v9);
  }

  if (sub_100017DF8(*(*(v0 + 232) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v16 = sub_1000A3538();
    sub_100001E38(v16, qword_1000C96B8);

    v17 = sub_1000A3518();
    v18 = sub_1000A3CB8();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 216);
      v19 = *(v0 + 224);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1000954AC(v20, v19, v36);
      _os_log_impl(&_mh_execute_header, v17, v18, "[TCC-Proxy] Method '%s' authorized - forwarding", v21, 0xCu);
      sub_10000F7B8(v22);
    }

    v9 = v0 + 16;
    v10 = *(v0 + 328);
    v11 = *(*(v0 + 240) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v12 = sub_1000A3A78();
    *(v0 + 304) = v12;
    v13 = sub_1000A3A78();
    *(v0 + 312) = v13;
    *(v0 + 16) = v0;
    *(v0 + 56) = v1;
    *(v0 + 24) = sub_1000112C8;
    v23 = swift_continuation_init();
    *(v0 + 200) = sub_10000275C(&qword_1000C7870, &qword_1000AB818);
    *(v0 + 176) = v23;
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    v15 = &unk_1000BE510;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v24 = sub_1000A3538();
  sub_100001E38(v24, qword_1000C96B8);

  v25 = sub_1000A3518();
  v26 = sub_1000A3CC8();

  if (os_log_type_enabled(v25, v26))
  {
    v28 = *(v0 + 216);
    v27 = *(v0 + 224);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1000954AC(v28, v27, v36);
    _os_log_impl(&_mh_execute_header, v25, v26, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v29, 0xCu);
    sub_10000F7B8(v30);
  }

  v31 = *(v0 + 240);
  v32 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v32 - 8) + 104))(v33, enum case for EnergyKitError.permissionDenied(_:), v32);
  swift_willThrow();

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1000110B8()
{
  v1 = *(*v0 + 112);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_100011240;
  }

  else
  {
    v2 = sub_1000111C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000111C8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 208);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100011240(uint64_t a1)
{
  v2 = v1[36];
  v3 = v1[35];
  v4 = v1[30];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_1000112C8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_100011450;
  }

  else
  {
    v2 = sub_1000113D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000113D8()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 208);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100011450(uint64_t a1)
{
  v2 = v1[39];
  v3 = v1[38];
  v4 = v1[30];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_1000114D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 248) = a6;
  *(v7 + 256) = a7;
  *(v7 + 296) = a5;
  *(v7 + 232) = a3;
  *(v7 + 240) = a4;
  *(v7 + 216) = a1;
  *(v7 + 224) = a2;
  return _swift_task_switch(sub_100011504, 0, 0);
}

uint64_t sub_100011504()
{
  v36 = v0;
  v1 = v0 + 208;
  if (sub_100041830(*(v0 + 216), *(v0 + 224), *(*(v0 + 232) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = sub_1000A3538();
    sub_100001E38(v2, qword_1000C96B8);

    v3 = sub_1000A3518();
    v4 = sub_1000A3CB8();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 216);
      v5 = *(v0 + 224);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v35[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000954AC(v6, v5, v35);
      _os_log_impl(&_mh_execute_header, v3, v4, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v7, 0xCu);
      sub_10000F7B8(v8);
    }

    v9 = v0 + 80;
    v10 = *(v0 + 296);
    v11 = *(*(v0 + 240) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v12 = sub_1000A3A78();
    *(v0 + 264) = v12;
    *(v0 + 80) = v0;
    *(v0 + 120) = v1;
    *(v0 + 88) = sub_100011B34;
    v13 = swift_continuation_init();
    *(v0 + 200) = sub_10000275C(&qword_1000C7870, &qword_1000AB818);
    *(v0 + 176) = v13;
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    v14 = &unk_1000BE470;
LABEL_13:
    *(v0 + 160) = sub_100015438;
    *(v0 + 168) = v14;
    [v11 guidanceWithQuery:v10 gridID:v12 completionHandler:v0 + 144];

    return _swift_continuation_await(v9);
  }

  if (sub_100017DF8(*(*(v0 + 232) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v15 = sub_1000A3538();
    sub_100001E38(v15, qword_1000C96B8);

    v16 = sub_1000A3518();
    v17 = sub_1000A3CB8();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 216);
      v18 = *(v0 + 224);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000954AC(v19, v18, v35);
      _os_log_impl(&_mh_execute_header, v16, v17, "[TCC-Proxy] Method '%s' authorized - forwarding", v20, 0xCu);
      sub_10000F7B8(v21);
    }

    v9 = v0 + 16;
    v10 = *(v0 + 296);
    v11 = *(*(v0 + 240) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v12 = sub_1000A3A78();
    *(v0 + 280) = v12;
    *(v0 + 16) = v0;
    *(v0 + 56) = v1;
    *(v0 + 24) = sub_100011D30;
    v22 = swift_continuation_init();
    *(v0 + 200) = sub_10000275C(&qword_1000C7870, &qword_1000AB818);
    *(v0 + 176) = v22;
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    v14 = &unk_1000BE448;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v23 = sub_1000A3538();
  sub_100001E38(v23, qword_1000C96B8);

  v24 = sub_1000A3518();
  v25 = sub_1000A3CC8();

  if (os_log_type_enabled(v24, v25))
  {
    v27 = *(v0 + 216);
    v26 = *(v0 + 224);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_1000954AC(v27, v26, v35);
    _os_log_impl(&_mh_execute_header, v24, v25, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v28, 0xCu);
    sub_10000F7B8(v29);
  }

  v30 = *(v0 + 240);
  v31 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v31 - 8) + 104))(v32, enum case for EnergyKitError.permissionDenied(_:), v31);
  swift_willThrow();

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_100011B34()
{
  v1 = *(*v0 + 112);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_100011CB8;
  }

  else
  {
    v2 = sub_100011C44;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100011C44()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100011CB8(uint64_t a1)
{
  v2 = v1[33];
  v3 = v1[30];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_100011D30()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_100011EB4;
  }

  else
  {
    v2 = sub_100011E40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100011E40()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100011EB4(uint64_t a1)
{
  v2 = v1[35];
  v3 = v1[30];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_100011F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[29] = a3;
  v6[30] = a4;
  v6[27] = a1;
  v6[28] = a2;
  return _swift_task_switch(sub_100011F54, 0, 0);
}

uint64_t sub_100011F54()
{
  v34 = v0;
  v1 = v0 + 26;
  if (sub_100041830(v0[27], v0[28], *(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = sub_1000A3538();
    sub_100001E38(v2, qword_1000C96B8);

    v3 = sub_1000A3518();
    v4 = sub_1000A3CB8();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[27];
      v5 = v0[28];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v33[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000954AC(v6, v5, v33);
      _os_log_impl(&_mh_execute_header, v3, v4, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v7, 0xCu);
      sub_10000F7B8(v8);
    }

    v9 = v0 + 10;
    v10 = *(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v11 = sub_1000A3A78();
    v0[33] = v11;
    v0[10] = v0;
    v0[15] = v1;
    v0[11] = sub_100012570;
    v12 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7868, &qword_1000AB7E8);
    v0[22] = v12;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v13 = &unk_1000BE3A8;
LABEL_13:
    v0[20] = sub_100086500;
    v0[21] = v13;
    [v10 siteFor:v11 completionHandler:v0 + 18];

    return _swift_continuation_await(v9);
  }

  if (sub_100017DF8(*(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v14 = sub_1000A3538();
    sub_100001E38(v14, qword_1000C96B8);

    v15 = sub_1000A3518();
    v16 = sub_1000A3CB8();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = v0[27];
      v17 = v0[28];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1000954AC(v18, v17, v33);
      _os_log_impl(&_mh_execute_header, v15, v16, "[TCC-Proxy] Method '%s' authorized - forwarding", v19, 0xCu);
      sub_10000F7B8(v20);
    }

    v9 = v0 + 2;
    v10 = *(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v11 = sub_1000A3A78();
    v0[34] = v11;
    v0[2] = v0;
    v0[7] = v1;
    v0[3] = sub_1000126BC;
    v21 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7868, &qword_1000AB7E8);
    v0[22] = v21;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v13 = &unk_1000BE380;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v22 = sub_1000A3538();
  sub_100001E38(v22, qword_1000C96B8);

  v23 = sub_1000A3518();
  v24 = sub_1000A3CC8();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = v0[27];
    v25 = v0[28];
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1000954AC(v26, v25, v33);
    _os_log_impl(&_mh_execute_header, v23, v24, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v27, 0xCu);
    sub_10000F7B8(v28);
  }

  v29 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v29 - 8) + 104))(v30, enum case for EnergyKitError.permissionDenied(_:), v29);
  swift_willThrow();
  v31 = v0[1];

  return v31();
}

uint64_t sub_100012570()
{

  return _swift_task_switch(sub_100012650, 0, 0);
}

uint64_t sub_100012650()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000126BC()
{

  return _swift_task_switch(sub_10001279C, 0, 0);
}

uint64_t sub_10001279C()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100012808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 256) = a6;
  *(v6 + 240) = a4;
  *(v6 + 248) = a5;
  *(v6 + 224) = a2;
  *(v6 + 232) = a3;
  *(v6 + 216) = a1;
  return _swift_task_switch(sub_100012834, 0, 0);
}

uint64_t sub_100012834()
{
  v35 = v0;
  v1 = v0 + 26;
  if (sub_100041830(*(v0 + 27), *(v0 + 28), *(*(v0 + 29) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = sub_1000A3538();
    sub_100001E38(v2, qword_1000C96B8);

    v3 = sub_1000A3518();
    v4 = sub_1000A3CB8();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 27);
      v5 = *(v0 + 28);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v34 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000954AC(v6, v5, &v34);
      _os_log_impl(&_mh_execute_header, v3, v4, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v7, 0xCu);
      sub_10000F7B8(v8);
    }

    v9 = v0 + 10;
    v10 = *(v0 + 31);
    v11 = *(*(v0 + 30) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v12 = v0[32];
    *(v0 + 10) = v0;
    *(v0 + 15) = v1;
    *(v0 + 11) = sub_100012E48;
    v13 = swift_continuation_init();
    *(v0 + 25) = sub_10000275C(&qword_1000C7850, &qword_1000AB770);
    *(v0 + 22) = v13;
    *(v0 + 18) = _NSConcreteStackBlock;
    *(v0 + 19) = 1107296256;
    v14 = &unk_1000BE240;
LABEL_13:
    *(v0 + 20) = sub_10000D04C;
    *(v0 + 21) = v14;
    [v11 sitesWithNear:v10 radius:v0 + 18 completionHandler:v12];

    return _swift_continuation_await(v9);
  }

  if (sub_100017DF8(*(*(v0 + 29) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v15 = sub_1000A3538();
    sub_100001E38(v15, qword_1000C96B8);

    v16 = sub_1000A3518();
    v17 = sub_1000A3CB8();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 27);
      v18 = *(v0 + 28);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000954AC(v19, v18, &v34);
      _os_log_impl(&_mh_execute_header, v16, v17, "[TCC-Proxy] Method '%s' authorized - forwarding", v20, 0xCu);
      sub_10000F7B8(v21);
    }

    v9 = v0 + 2;
    v10 = *(v0 + 31);
    v11 = *(*(v0 + 30) + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v12 = v0[32];
    *(v0 + 2) = v0;
    *(v0 + 7) = v1;
    *(v0 + 3) = sub_100012F44;
    v22 = swift_continuation_init();
    *(v0 + 25) = sub_10000275C(&qword_1000C7850, &qword_1000AB770);
    *(v0 + 22) = v22;
    *(v0 + 18) = _NSConcreteStackBlock;
    *(v0 + 19) = 1107296256;
    v14 = &unk_1000BE218;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v23 = sub_1000A3538();
  sub_100001E38(v23, qword_1000C96B8);

  v24 = sub_1000A3518();
  v25 = sub_1000A3CC8();

  if (os_log_type_enabled(v24, v25))
  {
    v27 = *(v0 + 27);
    v26 = *(v0 + 28);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_1000954AC(v27, v26, &v34);
    _os_log_impl(&_mh_execute_header, v24, v25, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v28, 0xCu);
    sub_10000F7B8(v29);
  }

  v30 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, enum case for EnergyKitError.permissionDenied(_:), v30);
  swift_willThrow();
  v32 = *(v0 + 1);

  return v32();
}

uint64_t sub_100012E48()
{

  return _swift_task_switch(sub_100012F28, 0, 0);
}

uint64_t sub_100012F44()
{

  return _swift_task_switch(sub_100015450, 0, 0);
}

uint64_t sub_100013024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[27] = a1;
  v4[28] = a2;
  return _swift_task_switch(sub_100013048, 0, 0);
}

uint64_t sub_100013048()
{
  v33 = v0;
  v1 = v0 + 26;
  if (sub_100041830(v0[27], v0[28], *(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = sub_1000A3538();
    sub_100001E38(v2, qword_1000C96B8);

    v3 = sub_1000A3518();
    v4 = sub_1000A3CB8();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[27];
      v5 = v0[28];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000954AC(v6, v5, v32);
      _os_log_impl(&_mh_execute_header, v3, v4, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v7, 0xCu);
      sub_10000F7B8(v8);
    }

    v9 = *(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v10 = v0 + 10;
    v0[10] = v0;
    v0[15] = v1;
    v0[11] = sub_100012F44;
    v11 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7848, &qword_1000AB740);
    v0[22] = v11;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v12 = &unk_1000BE178;
LABEL_13:
    v0[20] = sub_10000D6AC;
    v0[21] = v12;
    [v9 sitesWithCompletionHandler:v0 + 18];

    return _swift_continuation_await(v10);
  }

  if (sub_100017DF8(*(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v13 = sub_1000A3538();
    sub_100001E38(v13, qword_1000C96B8);

    v14 = sub_1000A3518();
    v15 = sub_1000A3CB8();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = v0[27];
      v16 = v0[28];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000954AC(v17, v16, v32);
      _os_log_impl(&_mh_execute_header, v14, v15, "[TCC-Proxy] Method '%s' authorized - forwarding", v18, 0xCu);
      sub_10000F7B8(v19);
    }

    v9 = *(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v10 = v0 + 2;
    v0[2] = v0;
    v0[7] = v1;
    v0[3] = sub_100012F44;
    v20 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7848, &qword_1000AB740);
    v0[22] = v20;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v12 = &unk_1000BE150;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v21 = sub_1000A3538();
  sub_100001E38(v21, qword_1000C96B8);

  v22 = sub_1000A3518();
  v23 = sub_1000A3CC8();

  if (os_log_type_enabled(v22, v23))
  {
    v25 = v0[27];
    v24 = v0[28];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1000954AC(v25, v24, v32);
    _os_log_impl(&_mh_execute_header, v22, v23, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v26, 0xCu);
    sub_10000F7B8(v27);
  }

  v28 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v28 - 8) + 104))(v29, enum case for EnergyKitError.permissionDenied(_:), v28);
  swift_willThrow();
  v30 = v0[1];

  return v30();
}

uint64_t sub_100013640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[27] = a1;
  v4[28] = a2;
  return _swift_task_switch(sub_100013664, 0, 0);
}

uint64_t sub_100013664()
{
  v33 = v0;
  v1 = v0 + 26;
  if (sub_100041830(v0[27], v0[28], *(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_exemptMethods)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v2 = sub_1000A3538();
    sub_100001E38(v2, qword_1000C96B8);

    v3 = sub_1000A3518();
    v4 = sub_1000A3CB8();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[27];
      v5 = v0[28];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000954AC(v6, v5, v32);
      _os_log_impl(&_mh_execute_header, v3, v4, "[TCC-Proxy] Method '%s' is TCC-exempt - forwarding", v7, 0xCu);
      sub_10000F7B8(v8);
    }

    v9 = *(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v10 = v0 + 10;
    v0[10] = v0;
    v0[15] = v1;
    v0[11] = sub_100012F44;
    v11 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7840, &qword_1000AB6E8);
    v0[22] = v11;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v12 = &unk_1000BDFE8;
LABEL_13:
    v0[20] = sub_10000E0AC;
    v0[21] = v12;
    [v9 getMockOptionsWithCompletionHandler:v0 + 18];

    return _swift_continuation_await(v10);
  }

  if (sub_100017DF8(*(v0[29] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_connection)))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v13 = sub_1000A3538();
    sub_100001E38(v13, qword_1000C96B8);

    v14 = sub_1000A3518();
    v15 = sub_1000A3CB8();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = v0[27];
      v16 = v0[28];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000954AC(v17, v16, v32);
      _os_log_impl(&_mh_execute_header, v14, v15, "[TCC-Proxy] Method '%s' authorized - forwarding", v18, 0xCu);
      sub_10000F7B8(v19);
    }

    v9 = *(v0[30] + OBJC_IVAR____TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy_target);
    v10 = v0 + 2;
    v0[2] = v0;
    v0[7] = v1;
    v0[3] = sub_100012F44;
    v20 = swift_continuation_init();
    v0[25] = sub_10000275C(&qword_1000C7840, &qword_1000AB6E8);
    v0[22] = v20;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v12 = &unk_1000BDFC0;
    goto LABEL_13;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v21 = sub_1000A3538();
  sub_100001E38(v21, qword_1000C96B8);

  v22 = sub_1000A3518();
  v23 = sub_1000A3CC8();

  if (os_log_type_enabled(v22, v23))
  {
    v25 = v0[27];
    v24 = v0[28];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1000954AC(v25, v24, v32);
    _os_log_impl(&_mh_execute_header, v22, v23, "[TCC-Proxy] Method '%s' BLOCKED - audit token TCC validation failed", v26, 0xCu);
    sub_10000F7B8(v27);
  }

  v28 = sub_1000A3598();
  sub_10000F760();
  swift_allocError();
  (*(*(v28 - 8) + 104))(v29, enum case for EnergyKitError.permissionDenied(_:), v28);
  swift_willThrow();
  v30 = v0[1];

  return v30();
}

void *sub_100013C5C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100013CA0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013CE0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000153A8;

  return sub_10000DDE0(v2, v3, v4);
}

uint64_t sub_100013D98()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013DD8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000153A8;

  return sub_10000D890(v2, v3);
}

uint64_t sub_100013E88()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100013ED0()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v5 = *(v0 + 4);
  v4 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000153A8;

  return sub_10000D260(v2, v5, v4, v3);
}

uint64_t sub_100013F94(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  *(swift_allocObject() + 16) = a3;
  _Block_copy(a3);
  if (sub_10007D188())
  {
    __chkstk_darwin("yVenueContainer8@NSError16");
    sub_100008250(0xD000000000000011, v4 | 0x8000000000000000, sub_100015054);
  }

  else
  {
    v5 = sub_1000A3598();
    sub_10000F760();
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for EnergyKitError.locationServicesDenied(_:), v5);
    v7 = sub_1000A2348();
    (a3)[2](a3, 0, v7);
  }
}

uint64_t sub_100014190(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  *(swift_allocObject() + 16) = a3;
  _Block_copy(a3);
  if (sub_10007D188())
  {
    __chkstk_darwin("yVenuesContainer8@NSError16");
    sub_100008250(0xD000000000000014, v4 | 0x8000000000000000, sub_100015024);
  }

  else
  {
    v5 = sub_1000A3598();
    sub_10000F760();
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for EnergyKitError.locationServicesDenied(_:), v5);
    v7 = sub_1000A2348();
    (a3)[2](a3, 0, v7);
  }
}

uint64_t sub_10001438C(void *a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if (sub_10007D188())
  {
    v5 = a1;

    sub_100005578(0x6556796772656E65, 0xEC0000007365756ELL, v5, v5, sub_10001501C, v4);
  }

  else
  {
    v6 = sub_1000A3598();
    sub_10000F760();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for EnergyKitError.locationServicesDenied(_:), v6);
    v8 = sub_1000A2348();
    (a2)[2](a2, 0, v8);
  }
}

uint64_t sub_10001452C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  *(swift_allocObject() + 16) = a4;
  _Block_copy(a4);
  if (sub_10007D188())
  {
    __chkstk_darwin(v5);
    sub_100008250(0x7628444964697267, 0xEE00293A65756E65, sub_100014F78);
  }

  else
  {
    v6 = sub_1000A3598();
    sub_10000F760();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for EnergyKitError.locationServicesDenied(_:), v6);
    v8 = sub_1000A2348();
    (a4)[2](a4, 0, v8);
  }
}

uint64_t sub_100014738()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000153A8;

  return sub_10000CB98(v2, v3, v4);
}

uint64_t sub_1000147EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014898;

  return sub_10000C5E8(a1, v5, v4);
}

uint64_t sub_100014898()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001498C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000149D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000153A8;

  return sub_10000C20C(v2, v3, v4);
}

uint64_t sub_100014A88()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100014AD0()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000153A8;

  return sub_10000BC94(v5, v2, v3, v4);
}

uint64_t sub_100014B94()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100014BE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000153A8;

  return sub_10000B6AC(v2, v6, v3, v4, v5);
}

uint64_t sub_100014CB4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000153A8;

  return sub_10000B0D8(v2, v3, v5, v4);
}

uint64_t sub_100014D74()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100014DC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000153A8;

  return sub_10000AB0C(v2, v3, v5, v4);
}

uint64_t sub_100014E84()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100014EC4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014F28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000150DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001512C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014898;

  return sub_100003634(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100015454()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000154B8()
{
  v0 = sub_1000A2AD8();
  sub_100015578(v0, qword_1000C95F8);
  sub_100001E38(v0, qword_1000C95F8);
  sub_1000155DC();
  return sub_1000A3FA8();
}

uint64_t sub_100015524()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t *sub_100015578(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1000155DC()
{
  result = qword_1000C7A40;
  if (!qword_1000C7A40)
  {
    sub_1000A2AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C7A40);
  }

  return result;
}

uint64_t sub_100015634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v23;
  v8[8] = v24;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_1000A34C8();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v10 = sub_1000A3498();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v11 = sub_1000A34B8();
  v8[17] = v11;
  v8[18] = *(v11 - 8);
  v8[19] = swift_task_alloc();
  v12 = sub_1000A22A8();
  v8[20] = v12;
  v8[21] = *(v12 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v13 = sub_1000A3938();
  v8[24] = v13;
  v8[25] = *(v13 - 8);
  v8[26] = swift_task_alloc();
  v14 = sub_1000A38F8();
  v8[27] = v14;
  v8[28] = *(v14 - 8);
  v8[29] = swift_task_alloc();
  v15 = sub_1000A3318();
  v8[30] = v15;
  v8[31] = *(v15 - 8);
  v8[32] = swift_task_alloc();
  v16 = sub_1000A3988();
  v8[33] = v16;
  v8[34] = *(v16 - 8);
  v8[35] = swift_task_alloc();
  sub_10000275C(&qword_1000C7AF0, qword_1000AB9C0);
  v8[36] = swift_task_alloc();
  v17 = sub_1000A25A8();
  v8[37] = v17;
  v8[38] = *(v17 - 8);
  v8[39] = swift_task_alloc();
  v18 = sub_1000A2518();
  v8[40] = v18;
  v8[41] = *(v18 - 8);
  v8[42] = swift_task_alloc();
  v19 = sub_1000A2578();
  v8[43] = v19;
  v8[44] = *(v19 - 8);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v20 = sub_1000A2508();
  v8[47] = v20;
  v8[48] = *(v20 - 8);
  v8[49] = swift_task_alloc();

  return _swift_task_switch(sub_100015B64, 0, 0);
}

uint64_t sub_100015B64()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  v4 = v0[38];
  v5 = v0[36];
  v29 = (v0[48] + 16);
  v30 = v0[37];
  v28 = *v29;
  (*v29)(v0[49], v0[2], v0[47]);
  type metadata accessor for LoadEventsQueryEngine(0);
  v6 = swift_allocObject();
  v0[50] = v6;
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_decoder;
  sub_1000A2338();
  swift_allocObject();
  *(v6 + v7) = sub_1000A2328();
  (*(v1 + 104))(v2, enum case for Calendar.Identifier.gregorian(_:), v3);
  sub_1000A2528();
  (*(v1 + 8))(v2, v3);
  sub_1000A2598();
  v8 = (*(v4 + 48))(v5, 1, v30);
  if (v8 == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = v0[49];
    v12 = v0[46];
    v13 = v0[47];
    v14 = v0[44];
    v31 = v0[43];
    v26 = v0[7];
    v27 = v0[8];
    v15 = v0[6];
    v25 = v0[5];
    v16 = v0[3];
    v17 = v0[4];
    (*(v0[38] + 32))(v0[39], v0[36], v0[37]);
    sub_1000A2558();
    v28(v6 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_siteID, v11, v13);
    v18 = (v6 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_appID);
    *v18 = v16;
    v18[1] = v17;
    v19 = (v6 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_deviceID);
    *v19 = v25;
    v19[1] = v15;
    v20 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_calendar;
    v21 = *(v14 + 16);
    v0[51] = v21;
    v0[52] = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21(v6 + v20, v12, v31);
    *(v6 + 120) = v26;
    *(v6 + 128) = v27;
    v22 = qword_1000C7568;

    v23 = v26;

    if (v22 != -1)
    {
      swift_once();
    }

    v9 = qword_1000C9648;
    v0[53] = qword_1000C9648;
    v8 = sub_100015E10;
    v10 = 0;
  }

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100015E10()
{
  v1 = sub_10004060C();
  v2 = [v1 newBackgroundContext];
  *(v0 + 432) = v2;
  v3 = sub_1000A3A78();
  [v2 setTransactionAuthor:v3];

  [v2 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v2 setUndoManager:0];
  [v2 setShouldRefreshAfterSave:1];
  [v2 setStalenessInterval:0.0];
  [v2 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_100015F4C, 0, 0);
}

uint64_t sub_100015F4C()
{
  v1 = v0[50];
  v2 = v0[34];
  v3 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];
  v12 = v0[30];
  v13 = v0[29];
  v14 = v0[28];
  v15 = v0[27];
  v16 = v0[26];
  v17 = v0[25];
  v18 = v0[24];
  *(v1 + 136) = v0[54];
  v7 = sub_1000A3848();
  (*(v2 + 104))(v3, enum case for ElectricityFlowDirection.exported(_:), v4);
  v8 = sub_1000A3978();
  (*(v2 + 8))(v3, v4);
  v9 = &enum case for IntervalBlockPayload.FlowDirection.reverse(_:);
  if (v8 != v7)
  {
    v9 = &enum case for IntervalBlockPayload.FlowDirection.delivered(_:);
  }

  (*(v6 + 104))(v5, *v9, v12);
  v10 = sub_1000A3308();
  (*(v6 + 8))(v5, v12);
  *(v1 + 112) = v10;
  sub_1000A3838();
  sub_1000A38E8();
  (*(v14 + 32))(v1 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_granularity, v13, v15);
  sub_1000A3888();
  sub_1000A3928();
  (*(v17 + 32))(v1 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options, v16, v18);

  return _swift_task_switch(sub_100016138, v1, 0);
}

uint64_t sub_100016138()
{
  v15 = v0[51];
  v1 = v0[50];
  v2 = v0[48];
  v18 = v0[47];
  v19 = v0[49];
  v3 = v0[45];
  v5 = v0[43];
  v4 = v0[44];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v16 = v0[20];
  v17 = v0[46];
  type metadata accessor for InsightBucketBoundaries();
  sub_1000A3868();
  v9 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_granularity;
  v15(v3, v1 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_calendar, v5);
  v10 = v1 + v9;
  v11 = v6;
  sub_10004B42C(v10, v3, 0, v6);
  v12 = *(v4 + 8);
  v12(v3, v5);
  v13 = *(v8 + 8);
  v13(v7, v16);
  v13(v11, v16);
  v12(v17, v5);
  (*(v2 + 8))(v19, v18);

  return _swift_task_switch(sub_1000162B4, 0, 0);
}

uint64_t sub_1000162B4()
{
  sub_1000A2B58();
  sub_1000A34A8();
  sub_1000A3478();
  v1 = sub_1000A34A8();
  v2 = sub_1000A3D48();
  if (sub_1000A3DB8())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1000A3488();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, v2, v4, "StreamProcess", "", v3, 2u);
  }

  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[12];
  v8 = v0[13];

  (*(v8 + 16))(v6, v5, v7);
  sub_1000A34F8();
  swift_allocObject();
  v0[55] = sub_1000A34E8();
  v9 = swift_task_alloc();
  v0[56] = v9;
  *v9 = v0;
  v9[1] = sub_100016438;

  return sub_1000225B8();
}

uint64_t sub_100016438()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_100016844;
  }

  else
  {
    v2 = sub_10001654C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001654C()
{
  v1 = *(v0 + 56);
  v2 = sub_1000A34A8();
  sub_1000A34D8();
  v3 = sub_1000A3D38();
  if (sub_1000A3DB8())
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 72);

    sub_1000A3508();

    if ((*(v5 + 88))(v4, v6) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v7 = 0;
      v8 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
      v8 = "granularity: %lu";
      v7 = 1;
    }

    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    *v10 = 0;
    *(v10 + 1) = v7;
    *(v10 + 2) = 2048;
    *(v10 + 4) = sub_1000A3838();

    v11 = sub_1000A3488();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v11, "StreamProcess", v8, v10, 0xCu);
  }

  else
  {
  }

  v12 = v2;
  v13 = *(v0 + 144);
  v14 = *(v0 + 152);
  v15 = *(v0 + 128);
  v16 = *(v0 + 136);
  v17 = *(v0 + 112);
  v19 = *(v0 + 96);
  v18 = *(v0 + 104);

  v20 = *(v18 + 8);
  v20(v17, v19);
  v20(v15, v19);
  (*(v13 + 8))(v14, v16);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100016844()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[12];
  v6 = v0[13];

  (*(v6 + 8))(v4, v5);
  (*(v1 + 8))(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100016A00@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100016A94@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100016C94(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100016D48;

  return sub_100017378(a1);
}

uint64_t sub_100016D48()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

void sub_100016E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v3 = sub_1000A3538();
  sub_100001E38(v3, qword_1000C96B8);
  v4 = sub_1000A3518();
  v5 = sub_1000A3CB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[MockOptions] Taking extended lifetime", v6, 2u);
  }
}

uint64_t sub_1000170BC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100017164;

  return sub_1000176A4();
}

uint64_t sub_100017164(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10001728C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000172CC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014898;

  return sub_1000170BC(v2);
}

uint64_t sub_100017378(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_1000A2AD8();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100017438, 0, 0);
}

uint64_t sub_100017438()
{
  v1 = os_transaction_create();
  *(v0 + 72) = v1;
  sub_100016E68(v1, v2, v3);
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v4 = qword_1000C95F0;
  *(v0 + 80) = qword_1000C95F0;

  return _swift_task_switch(sub_100017518, v4, 0);
}

uint64_t sub_100017518()
{
  *(v0 + 88) = *(*(v0 + 80) + 145);

  return _swift_task_switch(sub_100017588, 0, 0);
}

uint64_t sub_100017588()
{
  if (*(v0 + 88))
  {
    if (qword_1000C7560 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 64);
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
    v4 = sub_100001E38(v2, qword_1000C95F8);
    sub_1000A2AB8();
    swift_beginAccess();
    (*(v3 + 40))(v4, v1, v2);
    swift_endAccess();
  }

  swift_unknownObjectRelease();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000176A4()
{
  v1 = sub_1000A2AD8();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100017760, 0, 0);
}

uint64_t sub_100017760()
{
  v1 = os_transaction_create();
  *(v0 + 64) = v1;
  sub_100016E68(v1, v2, v3);
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v4 = qword_1000C95F0;
  *(v0 + 72) = qword_1000C95F0;

  return _swift_task_switch(sub_100017840, v4, 0);
}

uint64_t sub_100017840()
{
  *(v0 + 80) = *(*(v0 + 72) + 145);

  return _swift_task_switch(sub_1000178B0, 0, 0);
}

uint64_t sub_1000178B0()
{
  if (*(v0 + 80) == 1)
  {
    if (qword_1000C7560 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 56);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = sub_100001E38(v2, qword_1000C95F8);
    swift_beginAccess();
    (*(v3 + 16))(v1, v4, v2);
    v5 = sub_1000A2AC8();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v1, v2);
  }

  else
  {
    swift_unknownObjectRelease();
    v5 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1000179E8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100017A28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000153A8;

  return sub_100016C94(v2, v3);
}

id sub_100017B1C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CombinedService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100017B84(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v3 = sub_1000A3538();
  sub_100001E38(v3, qword_1000C96B8);
  v4 = sub_1000A3518();
  v5 = sub_1000A3CB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Creating EnergyKitService", v6, 2u);
  }

  swift_unknownObjectWeakAssign();
  v8.receiver = v2;
  v8.super_class = type metadata accessor for CombinedService();
  return objc_msgSendSuper2(&v8, "init");
}

void sub_100017CD0(id a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1)
  {
    [a1 auditToken];
    v6 = v12;
    v7 = v13;
  }

  else
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v8 = sub_1000A3538();
    sub_100001E38(v8, qword_1000C96B8);
    v9 = sub_1000A3518();
    v10 = sub_1000A3CC8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "[AuditTokenValidator] No XPC connection provided", v11, 2u);
    }

    v6 = 0uLL;
    v7 = 0uLL;
  }

  *a4 = v6;
  *(a4 + 16) = v7;
  *(a4 + 32) = a1 == 0;
}

uint64_t sub_100017DF8(void *a1)
{
  v2 = sub_1000A2CF8();
  v3 = *(v2 - 8);
  __chkstk_darwin(*(v3 + 64));
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017CD0(a1, v6, v24);
  if (v25)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v7 = sub_1000A3538();
    sub_100001E38(v7, qword_1000C96B8);
    v8 = sub_1000A3518();
    v9 = sub_1000A3CC8();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_7;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "[AuditTokenValidator] Failed to extract audit token";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v8, v9, v11, v10, 2u);

LABEL_7:

    return 0;
  }

  v22 = v24[0];
  v23 = v24[1];
  (*(v3 + 104))(v5, enum case for EnergyKitFeatures.termsAndConditions2025(_:), v2);
  v13 = sub_1000A2CE8();
  result = (*(v3 + 8))(v5, v2);
  if (v13)
  {
    if (!kTCCServiceEnergyKitGuidance)
    {
      __break(1u);
      return result;
    }

    v14 = kTCCServiceEnergyKitGuidance;
    v21[0] = v22;
    v21[1] = v23;
    v15 = TCCAccessCheckAuditToken();

    if (!v15)
    {
      if (qword_1000C7570 != -1)
      {
        swift_once();
      }

      v20 = sub_1000A3538();
      sub_100001E38(v20, qword_1000C96B8);
      v8 = sub_1000A3518();
      v9 = sub_1000A3CC8();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_7;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "[AuditTokenValidator] TCC access denied for connection";
      goto LABEL_6;
    }
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v16 = sub_1000A3538();
  sub_100001E38(v16, qword_1000C96B8);
  v17 = sub_1000A3518();
  v18 = sub_1000A3CB8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "[AuditTokenValidator] TCC access validated for connection", v19, 2u);
  }

  return 1;
}

uint64_t sub_100018150(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000275C(&qword_1000C7D58, &qword_1000ABB20);
  __chkstk_darwin(((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = &v15 - v5;
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v7 = sub_1000A3538();
  sub_100001E38(v7, qword_1000C96B8);
  v8 = sub_1000A3518();
  v9 = sub_1000A3CA8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "[CoreDataInsightStream] Setup coredata insight stream", v10, 2u);
  }

  v11 = sub_10000275C(&unk_1000C7CA0, qword_1000ABAF0);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  v13 = OBJC_IVAR____TtC16EnergyKitService21CoreDataInsightStream_continuation;
  swift_beginAccess();
  sub_10001877C(v6, a2 + v13);
  return swift_endAccess();
}

uint64_t sub_10001833C()
{
  v1 = v0;
  v2 = sub_10000275C(&unk_1000C7CA0, qword_1000ABAF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = &v15 - v4;
  v6 = sub_10000275C(&qword_1000C7D58, &qword_1000ABB20);
  __chkstk_darwin(((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = &v15 - v7;
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v9 = sub_1000A3538();
  sub_100001E38(v9, qword_1000C96B8);
  v10 = sub_1000A3518();
  v11 = sub_1000A3CA8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[CoreDataInsightStream] Marking continuation as finished", v12, 2u);
  }

  v13 = OBJC_IVAR____TtC16EnergyKitService21CoreDataInsightStream_continuation;
  swift_beginAccess();
  sub_1000187EC(v1 + v13, v8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    return sub_10001885C(v8);
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_10001885C(v8);
  sub_1000A3C08();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000185A0()
{
  sub_10001885C(v0 + OBJC_IVAR____TtC16EnergyKitService21CoreDataInsightStream_continuation);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for CoreDataInsightStream(uint64_t a1)
{
  result = qword_1000C7C88;
  if (!qword_1000C7C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100018634(uint64_t a1)
{
  sub_1000186D0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000186D0(uint64_t a1)
{
  if (!qword_1000C7C98)
  {
    sub_100018734(&unk_1000C7CA0, qword_1000ABAF0);
    v1 = sub_1000A3DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_1000C7C98);
    }
  }
}

uint64_t sub_100018734(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001877C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000275C(&qword_1000C7D58, &qword_1000ABB20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000187EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000275C(&qword_1000C7D58, &qword_1000ABB20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001885C(uint64_t a1)
{
  v2 = sub_10000275C(&qword_1000C7D58, &qword_1000ABB20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000188C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  return _swift_task_switch(sub_1000188E8, 0, 0);
}

uint64_t sub_1000188E8()
{
  if (v0[2])
  {
    v1 = sub_1000A39B8();
  }

  else
  {
    v1 = &_swiftEmptyArrayStorage;
  }

  v0[5] = v1;
  sub_1000A35D8();
  v2 = swift_task_alloc();
  v0[6] = v2;
  v3 = sub_10000275C(&qword_1000C7D60, &qword_1000ABB40);
  *v2 = v0;
  v2[1] = sub_1000189EC;

  return static SandboxExtension.withResources<A>(resources:_:)(v0 + 7, v1, &unk_1000ABB78, 0, v3);
}

uint64_t sub_1000189EC()
{

  if (v0)
  {

    v1 = sub_100019FF0;
  }

  else
  {

    v1 = sub_100018B34;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100018B34()
{
  (*(v0 + 24))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100018CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_100018D84;

  return sub_100018EEC();
}

uint64_t sub_100018D84(char a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_100018E84, 0, 0);
}

uint64_t sub_100018E84()
{
  (*(v0 + 16))(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100018F0C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong;
    v4 = sub_100017DF8(v2);
  }

  else
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v5 = sub_1000A3538();
    sub_100001E38(v5, qword_1000C96B8);
    v3 = sub_1000A3518();
    v6 = sub_1000A3CC8();
    if (os_log_type_enabled(v3, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v6, "[VenueOperations] No XPC connection available for TCC validation", v7, 2u);
    }

    v4 = 0;
  }

  v8 = *(v0 + 8);

  return v8(v4 & 1);
}

uint64_t sub_1000191C8()
{
  if (qword_1000C7578 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C96D0;
  *(v0 + 16) = qword_1000C96D0;

  return _swift_task_switch(sub_100019260, v1, 0);
}

uint64_t sub_100019260()
{
  v1 = *(v0 + 16);
  if (*(v1 + 113))
  {
    return (*(v0 + 8))();
  }

  else
  {
    return _swift_task_switch(sub_100019298, v1, 0);
  }
}

uint64_t sub_100019298()
{
  v1 = *(v0 + 16);
  *(v1 + 113) = 1;
  return _swift_task_switch(sub_1000192BC, v1, 0);
}

uint64_t sub_1000192E4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    v2 = sub_1000193E0;
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    sub_10004ABF8();
    objc_autoreleasePoolPop(v3);
    v4 = *(v0 + 16);
    type metadata accessor for ServiceSandbox();
    sub_10004AB68();

    v2 = sub_1000193B8;
    v1 = v4;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_1000193FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100019FF8;

  return sub_1000191AC();
}

uint64_t sub_10001948C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10001951C;

  return sub_10001962C();
}

uint64_t sub_10001951C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  *v1 = 0;
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100019648()
{
  if (qword_1000C7578 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C96D0;
  *(v0 + 16) = qword_1000C96D0;

  return _swift_task_switch(sub_1000196E0, v1, 0);
}

uint64_t sub_1000196E0()
{
  v1 = *(v0 + 16);
  if (*(v1 + 113))
  {
    return (*(v0 + 8))();
  }

  else
  {
    return _swift_task_switch(sub_100019718, v1, 0);
  }
}

uint64_t sub_100019718()
{
  v1 = *(v0 + 16);
  *(v1 + 113) = 1;
  return _swift_task_switch(sub_10001973C, v1, 0);
}

uint64_t sub_100019764()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v2 = sub_100019FFC;
  }

  else
  {
    type metadata accessor for ServiceSandbox();
    sub_10004AB68();

    v2 = sub_1000197F8;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_1000199A8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_100019A34, 0, 0);
}

uint64_t sub_100019A34()
{
  if (v0[2])
  {
    v1 = sub_1000A2BF8();
  }

  else
  {
    v1 = &_swiftEmptyArrayStorage;
  }

  v0[5] = v1;
  sub_1000A2BC8();
  v2 = swift_task_alloc();
  v0[6] = v2;
  v3 = sub_10000275C(&qword_1000C7D60, &qword_1000ABB40);
  *v2 = v0;
  v2[1] = sub_100019B38;

  return static EKSandboxExtension.withResources<A>(resources:_:)(v0 + 7, v1, &unk_1000ABB38, 0, v3);
}

uint64_t sub_100019B38()
{

  if (v0)
  {

    v1 = sub_1000153C0;
  }

  else
  {

    v1 = sub_10000E9F0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100019C80()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100019CC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000153A8;

  return sub_1000199A8(v2, v3, v4);
}

uint64_t sub_100019D80()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019DB8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100019E00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000153A8;

  return sub_100018CF0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100019EC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100019F18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014898;

  return sub_1000188C4(a1, v4, v5, v6, v7, v9, v8);
}

void sub_10001A004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1000A2348();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_10001A08C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1000A2348();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_10001A0F0(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1000A2348();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_10001A160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_10001A1F8;

  return sub_10001B850(a5);
}

uint64_t sub_10001A1F8(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10001A2F8, 0, 0);
}

uint64_t sub_10001A2F8()
{
  v1 = *(v0 + 40);
  (*(v0 + 16))(v1, 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001A3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_10001A440;

  return sub_10001C1F0(a5);
}

uint64_t sub_10001A440(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10002257C, 0, 0);
}

uint64_t sub_10001A57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_10001A60C;

  return sub_10001D968();
}

uint64_t sub_10001A60C(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10001A70C, 0, 0);
}

uint64_t sub_10001A70C()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1;
  v2(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10001A7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_100018D84;

  return sub_10001EE6C();
}

uint64_t sub_10001A89C(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = &v20 - v12;
  v14 = _Block_copy(a3);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = sub_1000A3BE8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = a6;
  v17[6] = v15;
  v18 = a1;
  sub_1000941D8(0, 0, v13, a7, v17);
}

uint64_t sub_10001A9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_10001AA74;

  return sub_10001F308(a5);
}

uint64_t sub_10001AA74(char a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10001AB74, 0, 0);
}

uint64_t sub_10001AB74()
{
  (*(v0 + 16))(*(v0 + 40), 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001AC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a5;
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_10001ACBC;

  return sub_10001FF00(v10, a6);
}

uint64_t sub_10001ACBC()
{

  return _swift_task_switch(sub_1000225B0, 0, 0);
}

uint64_t sub_10001B068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_10001ACBC;

  return sub_100020AE4(a5);
}

uint64_t sub_10001B150(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v30 = a8;
  v28[1] = a6;
  v10 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v28 - v11;
  v13 = sub_1000A2508();
  v14 = *(v13 - 8);
  v15 = v14;
  v16 = v14[8];
  __chkstk_darwin(v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v19 = v28 - v18;
  v20 = _Block_copy(a4);
  sub_1000A24F8();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = sub_1000A3BE8();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  (v15[2])(v17, v19, v13);
  v23 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = a1;
  (v15[4])(&v24[v23], v17, v13);
  v25 = &v24[(v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v25 = v29;
  v25[1] = v21;
  v26 = a1;

  sub_1000941D8(0, 0, v12, v30, v24);

  return (v15[1])(v19, v13);
}

void sub_10001B3DC(uint64_t a1, const char *a2, uint64_t a3)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  sub_100001E38(v4, qword_1000C96B8);
  v5 = sub_1000A3518();
  v6 = sub_1000A3CB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 2u);
  }
}

uint64_t sub_10001B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10001B4E4, 0, 0);
}

uint64_t sub_10001B4E4()
{
  if (qword_1000C7590 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1000C96F8;

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10001B5B8;

  return sub_100071A9C();
}

uint64_t sub_10001B5B8(void *a1)
{
  *(*v2 + 48) = v1;

  if (v1)
  {
    v4 = sub_10001B750;
  }

  else
  {

    v4 = sub_10001B6E8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001B6E8()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001B750()
{
  v1 = v0[6];
  v2 = v0[2];

  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10001B850(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000A2508();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1000A3588();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001B978, 0, 0);
}

uint64_t sub_10001B978()
{
  sub_1000A3AA8();
  v0[10] = os_transaction_create();

  sub_10001B3DC(v1, "[SiteOperations] Taking extended lifetime", v2);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v3 = sub_1000A3538();
  v0[11] = sub_100001E38(v3, qword_1000C96B8);
  v4 = sub_1000A3518();
  v5 = sub_1000A3CB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Connection established to EnergyKit API", v6, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v7 = qword_1000C95F0;
  v0[12] = qword_1000C95F0;

  return _swift_task_switch(sub_10001BB3C, v7, 0);
}

uint64_t sub_10001BB3C()
{
  *(v0 + 104) = *(*(v0 + 96) + 120);

  return _swift_task_switch(sub_10001BBB4, 0, 0);
}

uint64_t sub_10001BBB4()
{
  if (v0[13])
  {

    v1 = qword_1000C95F0;
    v0[14] = qword_1000C95F0;

    return _swift_task_switch(sub_10001BD10, v1, 0);
  }

  else
  {
    v2 = sub_1000A3518();
    v3 = sub_1000A3CC8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "[SiteOperations] Invalid application-identifier", v4, 2u);
    }

    swift_unknownObjectRelease();

    v5 = v0[1];

    return v5(0);
  }
}

uint64_t sub_10001BD10()
{
  *(v0 + 144) = *(*(v0 + 112) + 144);

  return _swift_task_switch(sub_10001BD80, 0, 0);
}

uint64_t sub_10001BD80(uint64_t a1)
{
  if (*(v1 + 144) == 1)
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    *(v1 + 120) = qword_1000C96F8;

    v2 = swift_task_alloc();
    *(v1 + 128) = v2;
    *v2 = v1;
    v2[1] = sub_10001BF40;
    v3 = *(v1 + 16);

    return sub_100072524(v3);
  }

  else
  {
    v5 = sub_1000A3518();
    v6 = sub_1000A3CC8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "[SiteOperations] Unauthorized", v7, 2u);
    }

    swift_unknownObjectRelease();

    v8 = *(v1 + 8);

    return v8(0);
  }
}

uint64_t sub_10001BF40(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_10001C060, 0, 0);
}

uint64_t sub_10001C060()
{
  v1 = v0[17];
  if (v1)
  {
    v2 = v0[9];
    v3 = v0[7];
    v4 = v0[5];
    v14 = v0[6];
    v5 = v0[4];
    v12 = v0[3];
    v13 = v0[8];
    v6 = v0[2];
    v7 = [v1 name];
    sub_1000A3A88();

    (*(v5 + 16))(v4, v6, v12);
    sub_1000A3578();
    (*(v3 + 16))(v13, v2, v14);
    v8 = objc_allocWithZone(sub_1000A3958());
    v9 = sub_1000A3948();
    swift_unknownObjectRelease();

    (*(v3 + 8))(v2, v14);
  }

  else
  {
    swift_unknownObjectRelease();
    v9 = 0;
  }

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_10001C1F0(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_1000A3588();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = sub_1000A2508();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v4 = sub_1000A2AD8();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_10001C3DC, 0, 0);
}

uint64_t sub_10001C3DC()
{
  sub_1000A3AA8();
  *(v0 + 168) = os_transaction_create();

  sub_10001B3DC(v1, "[SiteOperations] Taking extended lifetime", v2);
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v3 = qword_1000C95F0;
  *(v0 + 176) = qword_1000C95F0;

  return _swift_task_switch(sub_10001C4E8, v3, 0);
}

uint64_t sub_10001C4E8()
{
  v1 = v0[22];
  v0[23] = *(v1 + 112);
  v0[24] = *(v1 + 120);

  return _swift_task_switch(sub_10001C568, 0, 0);
}

uint64_t sub_10001C568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (v3[24])
  {
    v4 = qword_1000C95F0;
    v3[25] = qword_1000C95F0;

    return _swift_task_switch(sub_10001C758, v4, 0);
  }

  else
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v5 = sub_1000A3538();
    sub_100001E38(v5, qword_1000C96B8);
    v6 = sub_1000A3518();
    v7 = sub_1000A3CC8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[SiteOperations] Invalid application-identifier", v8, 2u);
    }

    swift_unknownObjectRelease();

    v9 = v3[1];

    return v9(0);
  }
}

uint64_t sub_10001C758()
{
  *(v0 + 280) = *(*(v0 + 200) + 144);

  return _swift_task_switch(sub_10001C7C8, 0, 0);
}

uint64_t sub_10001C7C8()
{
  if (*(v0 + 280))
  {
    v1 = *(v0 + 184) == 0x6C7070612E6D6F63 && *(v0 + 192) == 0xEF64656D6F682E65;
    if (v1 || (sub_1000A3F48() & 1) != 0 || *(v0 + 184) == 0xD00000000000001CLL && *(v0 + 192) == 0x80000001000A6870)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1000A3F48();
    }

    if (sub_1000A2D18())
    {
      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 152);
      v3 = *(v0 + 160);
      v5 = *(v0 + 136);
      v6 = *(v0 + 144);
      v7 = sub_100001E38(v5, qword_1000C95F8);
      swift_beginAccess();
      (*(v6 + 16))(v3, v7, v5);
      sub_1000A2A48();
      sub_100022314(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
      LOBYTE(v7) = sub_1000A3DF8();
      v8 = *(v6 + 8);
      v8(v4, v5);
      v8(v3, v5);
      v2 |= v7;
    }

    *(v0 + 281) = v2 & 1;
    v9 = swift_task_alloc();
    *(v0 + 208) = v9;
    *v9 = v0;
    v9[1] = sub_10001CBA0;

    return sub_100047590(0);
  }

  else
  {

    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v11 = sub_1000A3538();
    sub_100001E38(v11, qword_1000C96B8);
    v12 = sub_1000A3518();
    v13 = sub_1000A3CC8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "[SiteOperations] Unauthorized", v14, 2u);
    }

    swift_unknownObjectRelease();

    v15 = *(v0 + 8);

    return v15(0);
  }
}

uint64_t sub_10001CBA0(char a1)
{
  *(*v1 + 282) = a1;

  return _swift_task_switch(sub_10001CCA0, 0, 0);
}

uint64_t sub_10001CCA0()
{
  if ((*(v0 + 282) & 1) != 0 || *(v0 + 281))
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    v7 = *(v0 + 88);
    sub_1000A2B08();
    sub_1000A24C8();
    sub_1000A2AF8();

    sub_1000A24B8();

    if ((*(v6 + 48))(v7, 1, v5) == 1)
    {
      v8 = *(v0 + 88);
      swift_unknownObjectRelease();
      sub_100022154(v8, &qword_1000C92C0, &qword_1000ACB30);

      v9 = *(v0 + 8);

      return v9(0);
    }

    else
    {
      (*(*(v0 + 104) + 32))(*(v0 + 128), *(v0 + 88), *(v0 + 96));
      if (qword_1000C7590 != -1)
      {
        swift_once();
      }

      *(v0 + 216) = qword_1000C96F8;

      v10 = swift_task_alloc();
      *(v0 + 224) = v10;
      *v10 = v0;
      v10[1] = sub_10001CFB4;
      v11 = *(v0 + 128);

      return sub_1000716DC(v11);
    }
  }

  else
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    *(v0 + 240) = qword_1000C96F8;

    v1 = swift_task_alloc();
    *(v0 + 248) = v1;
    *v1 = v0;
    v1[1] = sub_10001D2E0;
    v2 = *(v0 + 80);
    v3 = *(v0 + 40);

    return sub_10006FBE8(v2, v3);
  }
}

uint64_t sub_10001CFB4(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_10001D0D4, 0, 0);
}

uint64_t sub_10001D0D4()
{
  v1 = v0[29];
  if (v1)
  {
    v2 = v0[15];
    v3 = v0[13];
    v4 = v0[9];
    v14 = v0[16];
    v11 = v0[12];
    v12 = v0[8];
    v5 = v0[7];
    v13 = v0[6];
    v6 = [v1 name];
    sub_1000A3A88();

    (*(v3 + 16))(v2, v14, v11);
    sub_1000A3578();
    (*(v5 + 16))(v12, v4, v13);
    v7 = objc_allocWithZone(sub_1000A3958());
    v8 = sub_1000A3948();
    swift_unknownObjectRelease();

    (*(v5 + 8))(v4, v13);
    (*(v3 + 8))(v14, v11);
  }

  else
  {
    (*(v0[13] + 8))(v0[16], v0[12]);
    swift_unknownObjectRelease();
    v8 = 0;
  }

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_10001D2E0()
{

  if (v0)
  {

    v1 = sub_10001D854;
  }

  else
  {

    v1 = sub_10001D428;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10001D428()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v0[32] = qword_1000C96F8;

  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_10001D528;
  v6 = v0[14];

  return sub_100072524(v6);
}

uint64_t sub_10001D528(uint64_t a1)
{
  *(*v1 + 272) = a1;

  return _swift_task_switch(sub_10001D648, 0, 0);
}

uint64_t sub_10001D648()
{
  v1 = v0[34];
  if (v1)
  {
    v2 = v0[15];
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[8];
    v12 = v0[14];
    v13 = v0[9];
    v6 = v0[7];
    v14 = v0[6];
    v7 = [v1 name];
    sub_1000A3A88();

    (*(v3 + 16))(v2, v12, v4);
    sub_1000A3578();
    (*(v6 + 16))(v5, v13, v14);
    v8 = objc_allocWithZone(sub_1000A3958());
    v9 = sub_1000A3948();
    swift_unknownObjectRelease();

    (*(v6 + 8))(v13, v14);
    (*(v3 + 8))(v12, v4);
  }

  else
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
    swift_unknownObjectRelease();
    v9 = 0;
  }

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_10001D854()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  swift_unknownObjectRelease();
  (*(v2 + 56))(v3, 1, 1, v1);
  sub_100022154(v3, &qword_1000C92C0, &qword_1000ACB30);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_10001D968()
{
  v0[5] = sub_10000275C(&qword_1000C7D70, &qword_1000ABC10);
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v1 = sub_1000A3588();
  v0[10] = v1;
  v0[11] = *(v1 - 8);
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();

  return _swift_task_switch(sub_10001DAD4, 0, 0);
}

uint64_t sub_10001DAD4()
{
  sub_1000A3AA8();
  *(v0 + 128) = os_transaction_create();

  sub_10001B3DC(v1, "[SiteOperations] Taking extended lifetime", v2);
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v3 = qword_1000C95F0;
  *(v0 + 136) = qword_1000C95F0;

  return _swift_task_switch(sub_10001DBE0, v3, 0);
}

uint64_t sub_10001DBE0()
{
  *(v0 + 144) = *(*(v0 + 136) + 120);

  return _swift_task_switch(sub_10001DC58, 0, 0);
}

uint64_t sub_10001DC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (v3[18])
  {

    v4 = swift_task_alloc();
    v3[19] = v4;
    *v4 = v3;
    v4[1] = sub_10001DE94;

    return sub_1000472A8(0);
  }

  else
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v6 = sub_1000A3538();
    sub_100001E38(v6, qword_1000C96B8);
    v7 = sub_1000A3518();
    v8 = sub_1000A3CC8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "[SiteOperations] Invalid application-identifier", v9, 2u);
    }

    v10 = objc_allocWithZone(sub_1000A39A8());
    v11 = sub_1000A3998();
    swift_unknownObjectRelease();

    v12 = v3[1];

    return v12(v11);
  }
}

uint64_t sub_10001DE94(char a1)
{
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_10001DF94, 0, 0);
}

uint64_t sub_10001DF94()
{
  if (*(v0 + 240) == 1)
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    v1 = qword_1000C96F8;
    *(v0 + 160) = qword_1000C96F8;

    return _swift_task_switch(sub_10001E0EC, v1, 0);
  }

  else
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    *(v0 + 216) = qword_1000C96F8;

    v2 = swift_task_alloc();
    *(v0 + 224) = v2;
    *v2 = v0;
    v2[1] = sub_10001E988;

    return sub_100074754();
  }
}

uint64_t sub_10001E0EC()
{
  v1 = *(*(v0 + 160) + 152);
  *(v0 + 168) = v1;
  v2 = v1;

  return _swift_task_switch(sub_10001E160, 0, 0);
}

uint64_t sub_10001E160()
{
  v1 = v0[21];
  v2 = swift_task_alloc();
  v0[22] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_10001E250;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10001E250()
{

  return _swift_task_switch(sub_10001E368, 0, 0);
}

uint64_t sub_10001E368()
{
  v1 = *(v0 + 160);

  return _swift_task_switch(sub_10001E3D0, v1, 0);
}

uint64_t sub_10001E3D0()
{
  v1 = v0[20];
  swift_beginAccess();
  v0[24] = *(v1 + 120);

  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_10001E49C;

  return sub_100065D98();
}

uint64_t sub_10001E49C(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_10001E59C, 0, 0);
}

void sub_10001E59C()
{
  v1 = v0;
  v2 = v0[26];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v30 = v1[11];
    v32 = -v3;
    v33 = v1[24];
    v5 = v2 + 40;
    v6 = &_swiftEmptyArrayStorage;
    do
    {
      v31 = v6;
      v7 = v5 + 16 * v4;
      v8 = v4 + 1;
      while (1)
      {
        if ((v8 - 1) >= *(v2 + 16))
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          return;
        }

        v34 = v8;
        v10 = v1[15];

        sub_1000A24B8();
        v11 = sub_1000A2508();
        v12 = *(v11 - 8);
        v13 = *(v12 + 48);
        if (v13(v10, 1, v11) == 1)
        {
          goto LABEL_19;
        }

        if (*(v33 + 16))
        {
          v14 = sub_100079C54(v1[15]);
          if (v15)
          {
            break;
          }
        }

        v9 = v1[15];

        (*(v12 + 8))(v9, v11);
        v8 = v34 + 1;
        v7 += 16;
        if (v32 + v34 + 1 == 1)
        {
          goto LABEL_15;
        }
      }

      v28 = v1[15];
      v29 = v1[14];
      v16 = *(v12 + 8);
      v17 = *(*(v33 + 56) + 8 * v14);
      v16(v28, v11);
      v27 = v17;
      v18 = [v17 name];
      sub_1000A3A88();
      sub_1000A24B8();
      if (v13(v29, 1, v11) == 1)
      {
        goto LABEL_20;
      }

      sub_1000A3578();
      v6 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100095150(0, v31[2] + 1, 1, v31);
      }

      v5 = v2 + 40;
      v20 = v6[2];
      v19 = v6[3];
      if (v20 >= v19 >> 1)
      {
        v6 = sub_100095150((v19 > 1), v20 + 1, 1, v6);
      }

      v21 = v1[13];
      v22 = v1[10];

      v6[2] = v20 + 1;
      v23 = v6 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v20;
      v4 = v34;
      (*(v30 + 32))(v23, v21, v22);
    }

    while (v32 + v34);
  }

LABEL_15:

  v24 = objc_allocWithZone(sub_1000A39A8());
  v25 = sub_1000A3998();
  swift_unknownObjectRelease();

  v26 = v1[1];

  v26(v25);
}

uint64_t sub_10001E988(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_10001EAA8, 0, 0);
}

void sub_10001EAA8()
{
  v1 = 0;
  v2 = v0[29];
  v30 = v0[5];
  v31 = v0[11];
  v4 = v2 + 64;
  v3 = *(v2 + 64);
  v32 = v2;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v3;
  v8 = (63 - v6) >> 6;
  v9 = &_swiftEmptyArrayStorage;
  v29 = v4;
  v28 = v8;
  if (v7)
  {
    while (1)
    {
      v35 = v9;
LABEL_9:
      v12 = v0[8];
      v11 = v0[9];
      v36 = v0[7];
      v34 = v0[6];
      v13 = __clz(__rbit64(v7)) | (v1 << 6);
      v14 = *(v32 + 48);
      v15 = sub_1000A2508();
      v16 = *(v15 - 8);
      (*(v16 + 16))(v11, v14 + *(v16 + 72) * v13, v15);
      v17 = (*(v32 + 56) + 16 * v13);
      v19 = *v17;
      v18 = v17[1];
      v20 = (v12 + *(v30 + 48));
      (*(v16 + 32))(v12, v11, v15);
      *v20 = v19;
      v20[1] = v18;
      sub_1000220E4(v12, v36);
      sub_1000220E4(v12, v34);

      sub_1000A3578();
      (*(v16 + 8))(v36, v15);
      v9 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100095150(0, v35[2] + 1, 1, v35);
      }

      v22 = v9[2];
      v21 = v9[3];
      v0 = v33;
      if (v22 >= v21 >> 1)
      {
        v9 = sub_100095150((v21 > 1), v22 + 1, 1, v9);
      }

      v7 &= v7 - 1;
      v23 = v33[12];
      v24 = v33[10];
      sub_100022154(v33[8], &qword_1000C7D70, &qword_1000ABC10);
      v9[2] = v22 + 1;
      (*(v31 + 32))(v9 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v22, v23, v24);
      v4 = v29;
      v8 = v28;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v1;
    if (v7)
    {
      v35 = v9;
      v1 = v10;
      goto LABEL_9;
    }
  }

  v25 = objc_allocWithZone(sub_1000A39A8());
  v26 = sub_1000A3998();
  swift_unknownObjectRelease();

  v27 = v0[1];

  v27(v26);
}

uint64_t sub_10001EE88()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 16) = qword_1000C95F0;

  return _swift_task_switch(sub_10001EF30, v1, 0);
}

uint64_t sub_10001EF30()
{
  *(v0 + 24) = *(*(v0 + 16) + 120);

  return _swift_task_switch(sub_10001EFA8, 0, 0);
}

uint64_t sub_10001EFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (v3[3])
  {

    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    v3[4] = qword_1000C96F8;

    v4 = swift_task_alloc();
    v3[5] = v4;
    *v4 = v3;
    v4[1] = sub_10001F17C;

    return sub_100074754();
  }

  else
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v6 = sub_1000A3538();
    sub_100001E38(v6, qword_1000C96B8);
    v7 = sub_1000A3518();
    v8 = sub_1000A3CC8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "[VenueOperations] Invalid application-identifier", v9, 2u);
    }

    v10 = v3[1];

    return v10(0);
  }
}

uint64_t sub_10001F17C(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10001F29C, 0, 0);
}

uint64_t sub_10001F29C()
{
  v1 = *(*(v0 + 48) + 16);

  v2 = *(v0 + 8);

  return v2(v1 != 0);
}

uint64_t sub_10001F308(uint64_t a1)
{
  v1[7] = a1;
  sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  v1[8] = swift_task_alloc();
  v2 = sub_1000A2508();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_10001F400, 0, 0);
}

uint64_t sub_10001F400()
{
  sub_1000A3AA8();
  v0[12] = os_transaction_create();

  sub_10001B3DC(v1, "[VenueOperations] Taking extended lifetime", v2);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v3 = sub_1000A3538();
  v0[13] = sub_100001E38(v3, qword_1000C96B8);
  v4 = sub_1000A3518();
  v5 = sub_1000A3CB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Connection established to EnergyKit API", v6, 2u);
  }

  v7 = sub_1000A2CF8();
  v0[5] = v7;
  v0[6] = sub_100022314(&qword_1000C7D68, &type metadata accessor for EnergyKitFeatures, &protocol conformance descriptor for EnergyKitFeatures);
  v8 = sub_100021D50(v0 + 2);
  (*(*(v7 - 8) + 104))(v8, enum case for EnergyKitFeatures.costInclusionInGuidanceAPI2025(_:), v7);
  LOBYTE(v7) = sub_1000A25B8();
  sub_10000F7B8(v0 + 2);
  if (v7)
  {
    if (qword_1000C7550 != -1)
    {
      swift_once();
    }

    v9 = qword_1000C95F0;
    v0[14] = qword_1000C95F0;

    return _swift_task_switch(sub_10001F6CC, v9, 0);
  }

  else
  {
    swift_unknownObjectRelease();

    v10 = v0[1];

    return v10(0);
  }
}

uint64_t sub_10001F6CC()
{
  *(v0 + 120) = *(*(v0 + 112) + 120);

  return _swift_task_switch(sub_10001F744, 0, 0);
}

uint64_t sub_10001F744()
{
  if (v0[15])
  {

    v1 = qword_1000C95F0;
    v0[16] = qword_1000C95F0;

    return _swift_task_switch(sub_10001F898, v1, 0);
  }

  else
  {
    v2 = sub_1000A3518();
    v3 = sub_1000A3CC8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "[VenueOperations] Invalid application-identifier", v4, 2u);
    }

    swift_unknownObjectRelease();

    v5 = v0[1];

    return v5(0);
  }
}

uint64_t sub_10001F898()
{
  *(v0 + 160) = *(*(v0 + 128) + 144);

  return _swift_task_switch(sub_10001F908, 0, 0);
}

uint64_t sub_10001F908(uint64_t a1)
{
  if (*(v1 + 160))
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    *(v1 + 136) = qword_1000C96F8;

    v2 = swift_task_alloc();
    *(v1 + 144) = v2;
    *v2 = v1;
    v2[1] = sub_10001FABC;
    v4 = *(v1 + 56);
    v3 = *(v1 + 64);

    return sub_10006CFD4(v3, v4);
  }

  else
  {
    v6 = sub_1000A3518();
    v7 = sub_1000A3CC8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[VenueOperations] missing entitlement", v8, 2u);
    }

    swift_unknownObjectRelease();

    v9 = *(v1 + 8);

    return v9(0);
  }
}

uint64_t sub_10001FABC()
{

  return _swift_task_switch(sub_10001FBD4, 0, 0);
}

uint64_t sub_10001FBD4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    swift_unknownObjectRelease();
    sub_100022154(v3, &qword_1000C92C0, &qword_1000ACB30);

    v4 = v0[1];

    return v4(0);
  }

  else
  {
    (*(v2 + 32))(v0[11], v3, v1);
    if (qword_1000C7588 != -1)
    {
      swift_once();
    }

    v6 = swift_task_alloc();
    v0[19] = v6;
    *v6 = v0;
    v6[1] = sub_10001FD60;
    v7 = v0[11];

    return sub_10004D838(v7);
  }
}

uint64_t sub_10001FD60(char a1)
{
  *(*v1 + 161) = a1;

  return _swift_task_switch(sub_10001FE60, 0, 0);
}

uint64_t sub_10001FE60()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 161);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_10001FF00(char a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  *(v2 + 160) = a1;
  sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  *(v2 + 64) = swift_task_alloc();
  v3 = sub_1000A2508();
  *(v2 + 72) = v3;
  *(v2 + 80) = *(v3 - 8);
  *(v2 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10001FFFC, 0, 0);
}

uint64_t sub_10001FFFC()
{
  sub_1000A3AA8();
  v0[12] = os_transaction_create();

  sub_10001B3DC(v1, "[VenueOperations] Taking extended lifetime", v2);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v3 = sub_1000A3538();
  v0[13] = sub_100001E38(v3, qword_1000C96B8);
  v4 = sub_1000A3518();
  v5 = sub_1000A3CB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Connection established to EnergyKit API", v6, 2u);
  }

  v7 = sub_1000A2CF8();
  v0[5] = v7;
  v0[6] = sub_100022314(&qword_1000C7D68, &type metadata accessor for EnergyKitFeatures, &protocol conformance descriptor for EnergyKitFeatures);
  v8 = sub_100021D50(v0 + 2);
  (*(*(v7 - 8) + 104))(v8, enum case for EnergyKitFeatures.costInclusionInGuidanceAPI2025(_:), v7);
  LOBYTE(v7) = sub_1000A25B8();
  sub_10000F7B8(v0 + 2);
  if (v7)
  {
    if (qword_1000C7550 != -1)
    {
      swift_once();
    }

    v9 = qword_1000C95F0;
    v0[14] = qword_1000C95F0;

    return _swift_task_switch(sub_1000202C4, v9, 0);
  }

  else
  {
    swift_unknownObjectRelease();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1000202C4()
{
  *(v0 + 120) = *(*(v0 + 112) + 120);

  return _swift_task_switch(sub_10002033C, 0, 0);
}

uint64_t sub_10002033C()
{
  if (v0[15])
  {

    v1 = qword_1000C95F0;
    v0[16] = qword_1000C95F0;

    return _swift_task_switch(sub_10002048C, v1, 0);
  }

  else
  {
    v2 = sub_1000A3518();
    v3 = sub_1000A3CC8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "[VenueOperations] Invalid application-identifier", v4, 2u);
    }

    swift_unknownObjectRelease();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10002048C()
{
  *(v0 + 161) = *(*(v0 + 128) + 144);

  return _swift_task_switch(sub_1000204FC, 0, 0);
}

uint64_t sub_1000204FC(uint64_t a1)
{
  if (*(v1 + 161))
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    *(v1 + 136) = qword_1000C96F8;

    v2 = swift_task_alloc();
    *(v1 + 144) = v2;
    *v2 = v1;
    v2[1] = sub_1000206AC;
    v4 = *(v1 + 56);
    v3 = *(v1 + 64);

    return sub_10006CFD4(v3, v4);
  }

  else
  {
    v6 = sub_1000A3518();
    v7 = sub_1000A3CC8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[VenueOperations] missing entitlement", v8, 2u);
    }

    swift_unknownObjectRelease();

    v9 = *(v1 + 8);

    return v9();
  }
}

uint64_t sub_1000206AC()
{

  return _swift_task_switch(sub_1000207C4, 0, 0);
}

uint64_t sub_1000207C4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    swift_unknownObjectRelease();
    sub_100022154(v3, &qword_1000C92C0, &qword_1000ACB30);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    (*(v2 + 32))(*(v0 + 88), v3, v1);
    if (qword_1000C7588 != -1)
    {
      swift_once();
    }

    v6 = swift_task_alloc();
    *(v0 + 152) = v6;
    *v6 = v0;
    v6[1] = sub_100020950;
    v7 = *(v0 + 88);
    v8 = *(v0 + 160);

    return sub_10004F370(v7, v8);
  }
}

uint64_t sub_100020950()
{

  return _swift_task_switch(sub_100020A4C, 0, 0);
}

uint64_t sub_100020A4C()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100020AE4(uint64_t a1)
{
  v1[2] = a1;
  sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  v1[3] = swift_task_alloc();
  v2 = sub_1000A2508();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100020BDC, 0, 0);
}

uint64_t sub_100020BDC()
{
  sub_1000A3AA8();
  v0[7] = os_transaction_create();

  sub_10001B3DC(v1, "[VenueOperations] Taking extended lifetime", v2);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v3 = sub_1000A3538();
  v0[8] = sub_100001E38(v3, qword_1000C96B8);
  v4 = sub_1000A3518();
  v5 = sub_1000A3CB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Connection established to EnergyKit API", v6, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v7 = qword_1000C95F0;
  v0[9] = qword_1000C95F0;

  return _swift_task_switch(sub_100020DA0, v7, 0);
}

uint64_t sub_100020DA0()
{
  *(v0 + 80) = *(*(v0 + 72) + 120);

  return _swift_task_switch(sub_100020E18, 0, 0);
}

uint64_t sub_100020E18()
{
  if (v0[10])
  {

    v1 = qword_1000C95F0;
    v0[11] = qword_1000C95F0;

    return _swift_task_switch(sub_100020F68, v1, 0);
  }

  else
  {
    v2 = sub_1000A3518();
    v3 = sub_1000A3CC8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "[VenueOperations] Invalid application-identifier", v4, 2u);
    }

    swift_unknownObjectRelease();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100020F68()
{
  *(v0 + 120) = *(*(v0 + 88) + 144);

  return _swift_task_switch(sub_100020FD8, 0, 0);
}

uint64_t sub_100020FD8(uint64_t a1)
{
  if (*(v1 + 120))
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    *(v1 + 96) = qword_1000C96F8;

    v2 = swift_task_alloc();
    *(v1 + 104) = v2;
    *v2 = v1;
    v2[1] = sub_100021188;
    v4 = *(v1 + 16);
    v3 = *(v1 + 24);

    return sub_10006CFD4(v3, v4);
  }

  else
  {
    v6 = sub_1000A3518();
    v7 = sub_1000A3CC8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[VenueOperations] missing entitlement", v8, 2u);
    }

    swift_unknownObjectRelease();

    v9 = *(v1 + 8);

    return v9();
  }
}

uint64_t sub_100021188()
{

  return _swift_task_switch(sub_1000212A0, 0, 0);
}

uint64_t sub_1000212A0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    swift_unknownObjectRelease();
    sub_100022154(v3, &qword_1000C92C0, &qword_1000ACB30);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v2 + 32))(v0[6], v3, v1);
    if (qword_1000C7588 != -1)
    {
      swift_once();
    }

    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_100021428;
    v7 = v0[6];

    return sub_100050F14(v7);
  }
}

uint64_t sub_100021428()
{

  return _swift_task_switch(sub_100021524, 0, 0);
}

uint64_t sub_100021524()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000215BC(void (**a1)(void, void))
{
  v2 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = &v17 - v3;
  v5 = sub_1000A2CF8();
  v6 = *(v5 - 8);
  __chkstk_darwin(*(v6 + 64));
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  (*(v6 + 104))(v8, enum case for EnergyKitFeatures.termsAndConditions2025(_:), v5);
  _Block_copy(a1);
  v10 = sub_1000A2CE8();
  (*(v6 + 8))(v8, v5);
  if (v10)
  {
    v11 = sub_1000A3BE8();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = sub_100014FA4;
    v12[5] = v9;

    sub_1000941D8(0, 0, v4, &unk_1000ABB90, v12);
  }

  else
  {
    v13 = sub_1000A3598();
    sub_100022314(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, enum case for EnergyKitError.venueUnavailable(_:), v13);
    v15 = sub_1000A2348();
    (a1)[2](a1, v15);
  }
}

uint64_t sub_1000218A8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000218E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100021920(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000153A8;

  return sub_10001B4C4(a1, v4, v5, v7, v6);
}

uint64_t sub_1000219E4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000A2508() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1000153A8;

  return sub_10001B068(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100021B20()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100021C04(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000A2508() - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000153A8;

  return sub_10001AC1C(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t *sub_100021D50(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100021DB4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000A2508() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1000153A8;

  return sub_10001A9DC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100021F0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000153A8;

  return sub_10001A7D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100021FD4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002201C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000153A8;

  return sub_10001A57C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000220E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000275C(&qword_1000C7D70, &qword_1000ABC10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022154(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000275C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000221D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000A2508() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1000153A8;

  return sub_10001A3A8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100022314(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002235C()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100022440(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000A2508() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014898;

  return sub_10001A160(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1000225B8()
{
  v1[29] = v0;
  v2 = sub_10000275C(&unk_1000C7CA0, qword_1000ABAF0);
  v1[30] = v2;
  v1[31] = *(v2 - 8);
  v1[32] = swift_task_alloc();
  sub_10000275C(&qword_1000C7D58, &qword_1000ABB20);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  sub_10000275C(&qword_1000C7EB8, &qword_1000ABD48);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v3 = sub_1000A32F8();
  v1[37] = v3;
  v1[38] = *(v3 - 8);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v4 = sub_1000A38F8();
  v1[41] = v4;
  v1[42] = *(v4 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v5 = sub_1000A2568();
  v1[45] = v5;
  v1[46] = *(v5 - 8);
  v1[47] = swift_task_alloc();
  v6 = sub_1000A2578();
  v1[48] = v6;
  v1[49] = *(v6 - 8);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v7 = sub_1000A2498();
  v1[53] = v7;
  v1[54] = *(v7 - 8);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v8 = sub_1000A22A8();
  v1[69] = v8;
  v1[70] = *(v8 - 8);
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();

  return _swift_task_switch(sub_100022A3C, v0, 0);
}

uint64_t sub_100022A3C()
{
  v275 = v0;
  v1 = v0;
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[70];
  v237 = v0[69];
  v209 = v0[68];
  v262 = v0[65];
  v270 = v0[54];
  v227 = v0[53];
  v213 = v0[52];
  v5 = v0[49];
  v224 = v0[48];
  v6 = v0[46];
  v229 = v0[45];
  v233 = v0[47];
  v255 = v0[29];
  v0[26] = &_swiftEmptyArrayStorage;
  v7 = v0 + 26;
  sub_1000A3868();
  sub_1000A2288();
  v8 = *(v4 + 8);
  v7[51] = v8;
  v7[52] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9 = v2;
  v10 = v237;
  v8(v9, v237);
  sub_1000A3868();
  sub_1000A2248();
  v238 = v8;
  v8(v3, v10);
  sub_1000A2478();
  v11 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_calendar;
  v7[53] = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_calendar;
  v12 = *(v5 + 16);
  v7[54] = v12;
  v7[55] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v222 = v11;
  v219 = v12;
  v12(v213, v255 + v11, v224);
  v13 = *(v270 + 16);
  v7[56] = v13;
  v7[57] = (v270 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v262, v209, v227);
  v14 = enum case for Calendar.Component.year(_:);
  *(v7 + 162) = enum case for Calendar.Component.year(_:);
  v15 = *(v6 + 104);
  v7[58] = v15;
  v7[59] = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v196 = v14;
  v197 = v15;
  v15(v233);
  sub_1000A2ED8();
  v16 = *(v6 + 8);
  v7[60] = v16;
  v7[61] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v228 = v7;
  v198 = v16;
  v16(v233, v229);
  sub_1000A2E88();
  if (sub_1000A2438())
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v17 = sub_1000A3538();
    sub_100001E38(v17, qword_1000C96B8);
    v18 = sub_1000A3518();
    v19 = sub_1000A3CC8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "[AMIQueryEngine] Client requested query start date is before five years ago.", v20, 2u);
    }

    v21 = v1[65];
    v22 = v1[63];
    v23 = v1[53];
    v24 = v1[54];

    (*(v24 + 8))(v21, v23);
    v13(v21, v22, v23);
  }

  v13(v1[62], v1[67], v1[53]);
  if (sub_1000A2428())
  {
    v25 = v1[66];
    v26 = v1[62];
    v27 = v1[53];
    (*(v1[54] + 8))(v26, v27);
    v13(v26, v25, v27);
  }

  v204 = v1[68];
  v202 = v1[66];
  v203 = v1[67];
  v28 = v1[65];
  v230 = v1[64];
  v199 = v1[63];
  v29 = v1[62];
  v30 = v1[60];
  v32 = v1[53];
  v31 = v1[54];
  v201 = v1[52];
  v205 = v1[51];
  v263 = v1[49];
  v200 = v1[48];
  v33 = v1[42];
  v210 = v1[41];
  v214 = v1[44];
  v208 = v1[29];
  v13(v1[61], v28, v32);
  v234 = v13;
  v13(v30, v29, v32);
  sub_1000A2268();
  v34 = *(v31 + 8);
  v1[88] = v34;
  v1[89] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(v29, v32);
  v34(v199, v32);
  v34(v230, v32);
  v34(v28, v32);
  v35 = *(v263 + 8);
  v1[90] = v35;
  v1[91] = (v263 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v201, v200);
  v34(v202, v32);
  v34(v203, v32);
  v34(v204, v32);
  sub_1000A2288();
  v36 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_granularity;
  v1[92] = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_granularity;
  v219(v205, v255 + v222, v200);
  v37 = *(v33 + 16);
  v1[93] = v37;
  v1[94] = (v33 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v37(v214, v208 + v36, v210);
  v38 = *(v33 + 88);
  v1[95] = v38;
  v1[96] = (v33 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v39 = v38(v214, v210);
  v40 = enum case for ElectricityInsightQuery.Granularity.hourly(_:);
  *(v1 + 215) = enum case for ElectricityInsightQuery.Granularity.hourly(_:);
  v243 = v34;
  v231 = v35;
  if (v39 == v40)
  {
    v42 = v1[60];
    v41 = v1[61];
    v225 = v1[59];
    v43 = v1[57];
    v220 = v1[56];
    v44 = v1[53];
    v256 = v1[48];
    v45 = v34;
    v46 = v1[47];
    v47 = v1[45];
    v215 = v1[51];
    sub_1000A2E78();
    v197(v46, enum case for Calendar.Component.day(_:), v47);
    sub_1000A2ED8();
    v198(v46, v47);
    v234(v43, v41, v44);
    v234(v220, v42, v44);
    sub_1000A2268();
    v45(v42, v44);
    v45(v41, v44);
    v231(v215, v256);
    v45(v225, v44);
  }

  else if (v39 == enum case for ElectricityInsightQuery.Granularity.daily(_:))
  {
    v49 = v1[60];
    v48 = v1[61];
    v257 = v1[59];
    v50 = v1[56];
    v51 = v1[57];
    v52 = v1[53];
    v53 = v1[51];
    v226 = v1[48];
    sub_1000A2E98();
    sub_1000A2E38();
    v234(v51, v48, v52);
    v234(v50, v49, v52);
    sub_1000A2268();
    v34(v49, v52);
    v34(v48, v52);
    v231(v53, v226);
    v34(v257, v52);
  }

  else if (v39 == enum case for ElectricityInsightQuery.Granularity.weekly(_:))
  {
    v55 = v1[60];
    v54 = v1[61];
    v56 = v1[59];
    v58 = v1[56];
    v57 = v1[57];
    v59 = v1[53];
    v60 = v1[51];
    v258 = v1[48];
    sub_1000A2EA8();
    sub_1000A2E58();
    v234(v57, v54, v59);
    v234(v58, v55, v59);
    sub_1000A2268();
    v243(v55, v59);
    v243(v54, v59);
    v231(v60, v258);
    v243(v56, v59);
  }

  else
  {
    v61 = v1[60];
    v62 = v1[61];
    v63 = v1[56];
    v64 = v1[57];
    v65 = v1[53];
    v66 = v1[51];
    v259 = v1[48];
    v223 = v1[59];
    if (v39 == enum case for ElectricityInsightQuery.Granularity.monthly(_:) || v39 == enum case for ElectricityInsightQuery.Granularity.yearly(_:))
    {
      v68 = v1[47];
      v69 = v1[45];
      sub_1000A2E88();
      v197(v68, v196, v69);
      sub_1000A2ED8();
      v198(v68, v69);
      v234(v64, v62, v65);
      v234(v63, v61, v65);
      sub_1000A2268();
      v243(v61, v65);
      v243(v62, v65);
      v231(v66, v259);
      v243(v223, v65);
    }

    else
    {
      v67 = v1[42];
      v216 = v1[41];
      v221 = v1[44];
      sub_1000A2E48();
      sub_1000A2EE8();
      v234(v64, v62, v65);
      v234(v63, v61, v65);
      sub_1000A2268();
      v243(v61, v65);
      v243(v62, v65);
      v35(v66, v259);
      v243(v223, v65);
      (*(v67 + 8))(v221, v216);
    }
  }

  v70 = v228;
  sub_1000A2288();
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v71 = v1[76];
  v72 = v1[72];
  v73 = v1[70];
  v74 = v1[69];
  v75 = sub_1000A3538();
  v1[97] = sub_100001E38(v75, qword_1000C96B8);
  (*(v73 + 16))(v72, v71, v74);
  v76 = sub_1000A3518();
  v77 = sub_1000A3CA8();
  v78 = os_log_type_enabled(v76, v77);
  v79 = v1[72];
  v80 = v1[69];
  if (v78)
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v274[0] = v82;
    *v81 = 136315138;
    sub_100032134(&qword_1000C7ED8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
    v83 = sub_1000A3F28();
    v85 = v84;
    v238(v79, v80);
    v86 = sub_1000954AC(v83, v85, v274);

    *(v81 + 4) = v86;
    _os_log_impl(&_mh_execute_header, v76, v77, "[LoadEventsQueryEngine] Query Range: %s", v81, 0xCu);
    sub_10000F7B8(v82);
    v70 = v228;
  }

  else
  {

    v238(v79, v80);
  }

  v87 = v1[61];
  v232 = v1;
  v88 = v1[53];
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  sub_1000A2248();
  v89 = sub_1000A2438();
  v243(v87, v88);
  if ((v89 & 1) == 0)
  {
LABEL_52:
    v172 = v232[26];
    v232[102] = v172;
    v173 = *(v172 + 16);
    if (v173)
    {
      v232[103] = v173;
      v174 = sub_1000A3518();
      v175 = sub_1000A3CA8();
      if (os_log_type_enabled(v174, v175))
      {
        v176 = swift_slowAlloc();
        *v176 = 134217984;
        *(v176 + 4) = *(v172 + 16);
        _os_log_impl(&_mh_execute_header, v174, v175, "[LoadEventsQueryEngine] Final yield of %ld records", v176, 0xCu);
      }

      v177 = v232[29];

      v161 = *(v177 + 128);
      v232[104] = v161;
      v178 = *(v172 + 16);
      if (v178)
      {
        v254 = v161;
        v179 = v232[38];
        v181 = *(v179 + 16);
        v180 = v179 + 16;
        v182 = v172 + ((*(v180 + 64) + 32) & ~*(v180 + 64));
        v269 = *(v180 + 56);
        v273 = v181;

        v183 = &_swiftEmptyArrayStorage;
        do
        {
          v273(v232[39], v182, v232[37]);
          sub_100032134(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload, &protocol conformance descriptor for InsightRecordPayload);
          v184 = sub_1000A3458();
          v186 = v185;
          (*(v180 - 8))(v232[39], v232[37]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v183 = sub_100095044(0, *(v183 + 2) + 1, 1, v183);
          }

          v188 = *(v183 + 2);
          v187 = *(v183 + 3);
          if (v188 >= v187 >> 1)
          {
            v183 = sub_100095044((v187 > 1), v188 + 1, 1, v183);
          }

          *(v183 + 2) = v188 + 1;
          v189 = &v183[16 * v188];
          *(v189 + 4) = v184;
          *(v189 + 5) = v186;
          v182 += v269;
          --v178;
        }

        while (v178);

        v161 = v254;
      }

      else
      {
        v183 = &_swiftEmptyArrayStorage;
      }

      v232[105] = v183;
      v194 = sub_100025CDC;
    }

    else
    {
      v190 = sub_1000A3518();
      v191 = sub_1000A3CA8();
      if (os_log_type_enabled(v190, v191))
      {
        v192 = swift_slowAlloc();
        *v192 = 134217984;
        *(v192 + 4) = 0;
        _os_log_impl(&_mh_execute_header, v190, v191, "[LoadEventsQueryEngine] Processing complete. Total records: %ld", v192, 0xCu);
      }

      v193 = v232[29];

      v161 = *(v193 + 128);
      v232[106] = v161;
      v194 = sub_100025FA4;
    }

    goto LABEL_71;
  }

  *(v1 + 216) = enum case for ElectricityInsightQuery.Granularity.daily(_:);
  *(v1 + 217) = enum case for ElectricityInsightQuery.Granularity.weekly(_:);
  *(v1 + 218) = enum case for ElectricityInsightQuery.Granularity.monthly(_:);
  *(v1 + 219) = enum case for ElectricityInsightQuery.Granularity.yearly(_:);
  *(v1 + 220) = enum case for Calendar.Component.day(_:);
  while (1)
  {
    v96 = *v70;
    v97 = *(*v70 + 16);
    if (v97)
    {
      break;
    }

    v98 = v232[73];
    v99 = v232[29];
    v100 = swift_task_alloc();
    v100[2] = v99;
    v100[3] = v98;
    v100[4] = v70;
    sub_1000A3D58();

    v271 = *(v232 + 215);
    v260 = v232[95];
    v244 = v232[93];
    v240 = v232[92];
    v235 = v232[80];
    v101 = v232[79];
    v102 = v232[50];
    v103 = v232[48];
    v104 = v232[43];
    v105 = v232[41];
    v106 = v232[29];
    swift_beginAccess();
    sub_1000A2248();
    swift_endAccess();
    v235(v102, v106 + v101, v103);
    v244(v104, v106 + v240, v105);
    v107 = v260(v104, v105);
    if (v107 == v271)
    {
      v211 = *(v232 + 220);
      v264 = v232[90];
      v250 = v232[88];
      v217 = v232[86];
      v206 = v232[84];
      v108 = v232[82];
      v110 = v232[60];
      v109 = v232[61];
      v112 = v232[56];
      v111 = v232[57];
      v113 = v232[53];
      v114 = v232[50];
      v115 = v232[47];
      v241 = v232[55];
      v245 = v232[48];
      v116 = v232[45];
      sub_1000A2E78();
      v206(v115, v211, v116);
      sub_1000A2ED8();
      v217(v115, v116);
      v108(v111, v109, v113);
      v108(v112, v110, v113);
      sub_1000A2268();
      v117 = v250;
      v250(v110, v113);
      v250(v109, v113);
      v264(v114, v245);
    }

    else
    {
      if (v107 == *(v232 + 216))
      {
        v265 = v232[90];
        v118 = v232[88];
        v119 = v232[82];
        v121 = v232[60];
        v120 = v232[61];
        v123 = v232[56];
        v122 = v232[57];
        v251 = v232[55];
        v124 = v232[53];
        v125 = v232[50];
        v246 = v232[48];
        sub_1000A2E98();
        sub_1000A2E38();
        v119(v122, v120, v124);
        v119(v123, v121, v124);
        sub_1000A2268();
        v118(v121, v124);
        v118(v120, v124);
        v265(v125, v246);
        v118(v251, v124);
        goto LABEL_38;
      }

      if (v107 == *(v232 + 217))
      {
        v266 = v232[90];
        v252 = v232[88];
        v126 = v232[82];
        v128 = v232[60];
        v127 = v232[61];
        v130 = v232[56];
        v129 = v232[57];
        v131 = v232[55];
        v132 = v232[53];
        v133 = v232[50];
        v247 = v232[48];
        sub_1000A2EA8();
        sub_1000A2E58();
        v126(v129, v127, v132);
        v126(v130, v128, v132);
        sub_1000A2268();
        v252(v128, v132);
        v252(v127, v132);
        v266(v133, v247);
        v252(v131, v132);
        goto LABEL_38;
      }

      v253 = v232[90];
      v267 = v232[88];
      if (v107 != *(v232 + 218) && v107 != *(v232 + 219))
      {
        v134 = v232[82];
        v136 = v232[60];
        v135 = v232[61];
        v138 = v232[56];
        v137 = v232[57];
        v139 = v232[55];
        v140 = v232[53];
        v141 = v232[50];
        v236 = v232[48];
        v239 = v232[42];
        v242 = v232[41];
        v248 = v232[43];
        sub_1000A2E48();
        sub_1000A2EE8();
        v134(v137, v135, v140);
        v134(v138, v136, v140);
        sub_1000A2268();
        v267(v136, v140);
        v267(v135, v140);
        v253(v141, v236);
        v267(v139, v140);
        (*(v239 + 8))(v248, v242);
        goto LABEL_38;
      }

      v218 = v232[86];
      v207 = v232[84];
      v149 = *(v232 + 214);
      v150 = v232[82];
      v152 = v232[60];
      v151 = v232[61];
      v153 = v232[56];
      v212 = v232[57];
      v113 = v232[53];
      v154 = v232[50];
      v155 = v232[47];
      v241 = v232[55];
      v249 = v232[48];
      v156 = v232[45];
      sub_1000A2E88();
      v207(v155, v149, v156);
      sub_1000A2ED8();
      v218(v155, v156);
      v150(v212, v151, v113);
      v150(v153, v152, v113);
      sub_1000A2268();
      v117 = v267;
      v267(v152, v113);
      v267(v151, v113);
      v253(v154, v249);
    }

    v117(v241, v113);
LABEL_38:
    (*(v232[70] + 40))(v232[73], v232[71], v232[69]);
    v142 = sub_1000A3518();
    v143 = sub_1000A3CA8();
    v70 = v228;
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v274[0] = v145;
      *v144 = 136315138;
      sub_100032134(&qword_1000C7ED8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
      v146 = sub_1000A3F28();
      v148 = sub_1000954AC(v146, v147, v274);

      *(v144 + 4) = v148;
      _os_log_impl(&_mh_execute_header, v142, v143, "[LoadEventsQueryEngine] Next rack: %s", v144, 0xCu);
      sub_10000F7B8(v145);
    }

    v90 = v232[88];
    v91 = v232[61];
    v92 = v232[58];
    v93 = v232[53];
    v94 = v232[54];
    swift_beginAccess();
    sub_1000A2288();
    swift_endAccess();
    v90(v92, v93);
    (*(v94 + 32))(v92, v91, v93);
    sub_1000A2248();
    v95 = sub_1000A2438();
    v90(v91, v93);
    if ((v95 & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  v232[98] = v97;
  v157 = sub_1000A3518();
  v158 = sub_1000A3CA8();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    *v159 = 134217984;
    *(v159 + 4) = *(v96 + 16);
    _os_log_impl(&_mh_execute_header, v157, v158, "[LoadEventsQueryEngine] Yielding %ld records", v159, 0xCu);
  }

  v160 = v232[29];

  v161 = *(v160 + 128);
  v232[99] = v161;
  v162 = *(v96 + 16);
  if (v162)
  {
    v163 = v232[38];
    v164 = v96 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
    v272 = *(v163 + 72);
    v261 = v161;
    v268 = *(v163 + 16);

    v165 = &_swiftEmptyArrayStorage;
    do
    {
      v268(v232[40], v164, v232[37]);
      sub_100032134(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload, &protocol conformance descriptor for InsightRecordPayload);
      v166 = sub_1000A3458();
      v168 = v167;
      (*(v232[38] + 8))(v232[40], v232[37]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v165 = sub_100095044(0, *(v165 + 2) + 1, 1, v165);
      }

      v170 = *(v165 + 2);
      v169 = *(v165 + 3);
      if (v170 >= v169 >> 1)
      {
        v165 = sub_100095044((v169 > 1), v170 + 1, 1, v165);
      }

      *(v165 + 2) = v170 + 1;
      v171 = &v165[16 * v170];
      *(v171 + 4) = v166;
      *(v171 + 5) = v168;
      v164 += v272;
      --v162;
    }

    while (v162);

    v161 = v261;
  }

  else
  {
    v165 = &_swiftEmptyArrayStorage;
  }

  v232[101] = v165;
  v232[100] = 0;
  v194 = sub_1000248DC;
LABEL_71:

  return _swift_task_switch(v194, v161, 0);
}