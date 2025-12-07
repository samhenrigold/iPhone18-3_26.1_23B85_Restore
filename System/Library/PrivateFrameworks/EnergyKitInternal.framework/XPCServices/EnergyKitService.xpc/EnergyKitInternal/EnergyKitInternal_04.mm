uint64_t sub_1000762C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 137) & 1) != 0 || (*(v3 + 88) = 0, [*(v3 + 40) dataSyncState] == 1))
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
      _os_log_impl(&_mh_execute_header, v5, v6, "[EKSHomeManager] Sync state updated to good", v7, 2u);
    }

    *(v3 + 112) = qword_1000C96F8;

    v8 = swift_task_alloc();
    *(v3 + 120) = v8;
    *v8 = v3;
    v8[1] = sub_100076AAC;

    return sub_10006C78C();
  }

  else if (sub_1000A3C48())
  {
    v10 = sub_1000A3518();
    v11 = sub_1000A3CC8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "[EKSHomeManager] Sync state task cancelled", v12, 2u);
    }

    sub_10000275C(&qword_1000C9338, &qword_1000AC9E0);
    sub_1000A3BC8();
    v13 = *(v3 + 8);

    return v13();
  }

  else
  {
    v14 = swift_task_alloc();
    *(v3 + 96) = v14;
    *v14 = v3;
    v14[1] = sub_10007658C;

    return static Task<>.sleep(nanoseconds:)(1000000000);
  }
}

uint64_t sub_10007658C()
{

  if (v0)
  {

    v1 = sub_10007E874;
  }

  else
  {
    v1 = sub_1000766A4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000766A4()
{
  v1 = qword_1000C96F8;
  *(v0 + 104) = qword_1000C96F8;

  return _swift_task_switch(sub_10007671C, v1, 0);
}

uint64_t sub_10007671C()
{
  *(v0 + 138) = *(*(v0 + 104) + 112);

  return _swift_task_switch(sub_10007678C, 0, 0);
}

uint64_t sub_10007678C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 138) & 1) != 0 || (v4 = *(v3 + 88) + 1, *(v3 + 88) = v4, [*(v3 + 40) dataSyncState] == 1))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v5 = sub_1000A3538();
    sub_100001E38(v5, qword_1000C96B8);
    v6 = sub_1000A3518();
    v7 = sub_1000A3CB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[EKSHomeManager] Sync state updated to good", v8, 2u);
    }

    *(v3 + 112) = qword_1000C96F8;

    v9 = swift_task_alloc();
    *(v3 + 120) = v9;
    *v9 = v3;
    v9[1] = sub_100076AAC;

    return sub_10006C78C();
  }

  if (v4 == 61)
  {
    v11 = sub_1000A3518();
    v12 = sub_1000A3CC8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "[EKSHomeManager] Sync state timed out";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v11, v12, v14, v13, 2u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (sub_1000A3C48())
  {
    v11 = sub_1000A3518();
    v12 = sub_1000A3CC8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "[EKSHomeManager] Sync state task cancelled";
      goto LABEL_16;
    }

LABEL_17:

    sub_10000275C(&qword_1000C9338, &qword_1000AC9E0);
    sub_1000A3BC8();
    v15 = *(v3 + 8);

    return v15();
  }

  v16 = swift_task_alloc();
  *(v3 + 96) = v16;
  *v16 = v3;
  v16[1] = sub_10007658C;

  return static Task<>.sleep(nanoseconds:)(1000000000);
}

uint64_t sub_100076AAC()
{

  return _swift_task_switch(sub_100076BC4, 0, 0);
}

uint64_t sub_100076BC4()
{
  v1 = qword_1000C96F8;
  *(v0 + 128) = qword_1000C96F8;

  return _swift_task_switch(sub_100076C3C, v1, 0);
}

uint64_t sub_100076C3C()
{
  *(*(v0 + 128) + 112) = 1;

  return _swift_task_switch(sub_100076CAC, 0, 0);
}

uint64_t sub_100076CAC()
{
  sub_10000275C(&qword_1000C9338, &qword_1000AC9E0);
  sub_1000A3BC8();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100076D24(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000275C(&unk_1000C9360, &unk_1000ACA08);
  v9 = *(v8 - 8);
  __chkstk_darwin(((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v17 - v10;
  v18 = *&a2[OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager];
  v12 = sub_1000A3A78();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = a2;
  (*(v9 + 32))(&v14[v13], v11, v8);
  aBlock[4] = sub_10007E60C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100009DA8;
  aBlock[3] = &unk_1000C01B0;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  [v18 addHomeWithName:v12 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_100076F24(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a3;
  v57 = a5;
  v10 = sub_10000275C(&unk_1000C9360, &unk_1000ACA08);
  v11 = *(v10 - 8);
  v58 = *(v11 + 64);
  __chkstk_darwin(((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = &v52 - v12;
  v13 = sub_1000A2498();
  v14 = *(v13 - 8);
  __chkstk_darwin(*(v14 + 64));
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v52 - v17;
  if (a1)
  {
    v55 = v10;
    v19 = qword_1000C7570;
    v54 = a1;
    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_1000A3538();
    sub_100001E38(v20, qword_1000C96B8);

    v21 = sub_1000A3518();
    v22 = sub_1000A3CA8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v53 = a6;
      v24 = v23;
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1000954AC(v56, a4, aBlock);
      _os_log_impl(&_mh_execute_header, v21, v22, "[EKSHomeManager] Successfully created home: %s", v24, 0xCu);
      sub_10000F7B8(v25);

      a6 = v53;
    }

    v26 = *(v57 + OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager);
    sub_1000A2478();
    sub_1000A2408();
    v27 = *(v14 + 8);
    v27(v16, v13);
    isa = sub_1000A2418().super.isa;
    v27(v18, v13);
    v29 = v59;
    v30 = v55;
    (*(v11 + 16))(v59, a6, v55);
    v31 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v32 = swift_allocObject();
    (*(v11 + 32))(v32 + v31, v29, v30);
    aBlock[4] = sub_10007E734;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008AE8;
    aBlock[3] = &unk_1000C0200;
    v33 = _Block_copy(aBlock);

    v34 = [v26 _refreshBeforeDate:isa completionHandler:v33];
    _Block_release(v33);
    swift_unknownObjectRelease();

    aBlock[0] = v54;
    return sub_1000A3BC8();
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v36 = sub_1000A3538();
    sub_100001E38(v36, qword_1000C96B8);
    swift_errorRetain();
    v37 = sub_1000A3518();
    v38 = sub_1000A3CC8();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v41;
      *v40 = v41;
      _os_log_impl(&_mh_execute_header, v37, v38, "[EKSHomeManager] Failed to create home: %@", v39, 0xCu);
      sub_100022154(v40, &unk_1000C7740, &qword_1000AB610);
    }

    v42 = sub_1000A3598();
    sub_10007E7E8(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    v43 = swift_allocError();
    (*(*(v42 - 8) + 104))(v44, enum case for EnergyKitError.venueUnavailable(_:), v42);
    aBlock[0] = v43;
    sub_1000A3BB8();
  }

  else
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v45 = sub_1000A3538();
    sub_100001E38(v45, qword_1000C96B8);
    v46 = sub_1000A3518();
    v47 = sub_1000A3CC8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "[EKSHomeManager] Failed to create home: unknown error", v48, 2u);
    }

    v49 = sub_1000A3598();
    sub_10007E7E8(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    v50 = swift_allocError();
    (*(*(v49 - 8) + 104))(v51, enum case for EnergyKitError.venueUnavailable(_:), v49);
    aBlock[0] = v50;
    return sub_1000A3BB8();
  }
}

void *sub_100077694(uint64_t a1)
{
  v2 = sub_1000A2C08();
  v3 = *(v2 - 8);
  __chkstk_darwin(*(v3 + 64));
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000A3538();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(*(v7 + 64));
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v3 + 104))(v5, enum case for Logging.daemon(_:), v2);
    swift_errorRetain();
    sub_1000A2B68();
    (*(v3 + 8))(v5, v2);
    swift_errorRetain();
    v11 = sub_1000A3518();
    v12 = sub_1000A3CC8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "[EKSHomeManager] Failed to refresh homes %@", v13, 0xCu);
      sub_100022154(v14, &unk_1000C7740, &qword_1000AB610);
    }

    (*(v7 + 8))(v10, v6);
    v16[1] = a1;
    sub_10000275C(&unk_1000C9360, &unk_1000ACA08);
    return sub_1000A3BB8();
  }

  return result;
}

id sub_10007796C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100077A14(void *a1)
{
  v2 = sub_1000A3548();
  v18 = *(v2 - 8);
  __chkstk_darwin(*(v18 + 64));
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000A3568();
  v5 = *(v17 - 8);
  __chkstk_darwin(*(v5 + 64));
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v8 = sub_1000A3538();
  sub_100001E38(v8, qword_1000C96B8);
  v9 = sub_1000A3518();
  v10 = sub_1000A3CB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "[EKSHomeManager] homeManagerDidUpdateHomes", v11, 2u);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  aBlock[4] = sub_10007E1EC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000034F0;
  aBlock[3] = &unk_1000C0110;
  v13 = _Block_copy(aBlock);
  v14 = a1;
  sub_1000A3558();
  v19 = &_swiftEmptyArrayStorage;
  sub_10007E7E8(&qword_1000C9300, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000275C(&qword_1000C9308, &unk_1000AC940);
  sub_10007DA74(&unk_1000C9310, &qword_1000C9308, &unk_1000AC940);
  sub_1000A3E38();
  sub_1000A3D18();
  _Block_release(v13);
  (*(v18 + 8))(v4, v2);
  (*(v5 + 8))(v7, v17);
}

uint64_t sub_100077DAC()
{
  v1 = v0[2];
  v2 = sub_1000A3A78();
  v0[3] = [v1 _beginActiveAssertionWithReason:v2];

  if (qword_1000C7590 != -1)
  {
    swift_once();
  }

  v3 = qword_1000C96F8;
  v0[4] = qword_1000C96F8;

  return _swift_task_switch(sub_100077EA4, v3, 0);
}

uint64_t sub_100077EA4()
{
  *(*(v0 + 32) + 112) = 1;

  return _swift_task_switch(sub_100077F14, 0, 0);
}

uint64_t sub_100077F14()
{
  v1 = v0[2];
  v0[5] = qword_1000C96F8;

  v2 = [v1 homes];
  sub_100032224(0, &qword_1000C9320, HMHome_ptr);
  v3 = sub_1000A3B68();
  v0[6] = v3;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100078010;

  return sub_10006A594(v3);
}

uint64_t sub_100078010()
{

  return _swift_task_switch(sub_10007E8C8, 0, 0);
}

uint64_t sub_1000781AC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = &v12 - v6;
  v8 = sub_1000A3BE8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v10 = a1;
  sub_100069404(0, 0, v7, a3, v9);

  return sub_100022154(v7, &qword_1000C8240, &qword_1000AB688);
}

uint64_t sub_1000782E8()
{
  v1 = v0[2];
  v2 = sub_1000A3A78();
  v0[3] = [v1 _beginActiveAssertionWithReason:v2];

  if (qword_1000C7590 != -1)
  {
    swift_once();
  }

  v3 = qword_1000C96F8;
  v0[4] = qword_1000C96F8;

  return _swift_task_switch(sub_1000783E0, v3, 0);
}

uint64_t sub_1000783E0()
{
  *(*(v0 + 32) + 112) = 1;

  return _swift_task_switch(sub_100078450, 0, 0);
}

uint64_t sub_100078450()
{
  v1 = v0[2];
  v0[5] = qword_1000C96F8;

  v2 = [v1 homes];
  sub_100032224(0, &qword_1000C9320, HMHome_ptr);
  v3 = sub_1000A3B68();
  v0[6] = v3;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10007854C;

  return sub_10006A594(v3);
}

uint64_t sub_10007854C()
{

  return _swift_task_switch(sub_100078680, 0, 0);
}

uint64_t sub_100078680()
{
  [*(v0 + 16) _endActiveAssertion:*(v0 + 24)];
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007883C(void *a1)
{
  v2 = sub_1000A3548();
  v20 = *(v2 - 8);
  __chkstk_darwin(*(v20 + 64));
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000A3568();
  v5 = *(v19 - 8);
  __chkstk_darwin(*(v5 + 64));
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v8 = sub_1000A3538();
  sub_100001E38(v8, qword_1000C96B8);
  v9 = sub_1000A3518();
  v10 = sub_1000A3CB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "[EKSHomeManager] homeManagerDidUpdateDataSync", v11, 2u);
  }

  if ([a1 dataSyncState] == 1)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v26 = sub_10007DE70;
    v27 = v12;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v13 = &unk_1000BFF80;
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    v26 = sub_10007DE38;
    v27 = v14;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v13 = &unk_1000BFF30;
  }

  v24 = sub_1000034F0;
  v25 = v13;
  v15 = _Block_copy(&aBlock);
  v16 = a1;
  sub_1000A3558();
  v21 = &_swiftEmptyArrayStorage;
  sub_10007E7E8(&qword_1000C9300, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000275C(&qword_1000C9308, &unk_1000AC940);
  sub_10007DA74(&unk_1000C9310, &qword_1000C9308, &unk_1000AC940);
  sub_1000A3E38();
  sub_1000A3D18();
  _Block_release(v15);
  (*(v20 + 8))(v4, v2);
  (*(v5 + 8))(v7, v19);
}

uint64_t sub_100078C5C()
{
  v1 = v0[2];
  v2 = sub_1000A3A78();
  v0[3] = [v1 _beginActiveAssertionWithReason:v2];

  if (qword_1000C7590 != -1)
  {
    swift_once();
  }

  v3 = qword_1000C96F8;
  v0[4] = qword_1000C96F8;

  return _swift_task_switch(sub_100078D54, v3, 0);
}

uint64_t sub_100078D54()
{
  *(*(v0 + 32) + 112) = 0;

  return _swift_task_switch(sub_10007E8C8, 0, 0);
}

uint64_t sub_100078E64()
{
  if (qword_1000C7590 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C96F8;
  *(v0 + 16) = qword_1000C96F8;

  return _swift_task_switch(sub_100078F0C, v1, 0);
}

uint64_t sub_100078F0C()
{
  v1 = *(*(v0 + 16) + 152);
  *(v0 + 24) = v1;
  v2 = v1;

  return _swift_task_switch(sub_100078F84, 0, 0);
}

uint64_t sub_100078F84()
{
  v1 = v0[3];
  v2 = *&v1[OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager];

  v3 = sub_1000A3A78();
  v0[4] = [v2 _beginActiveAssertionWithReason:v3];

  v4 = qword_1000C96F8;
  v0[5] = qword_1000C96F8;

  return _swift_task_switch(sub_100079068, v4, 0);
}

uint64_t sub_100079068()
{
  *(*(v0 + 40) + 112) = 1;

  return _swift_task_switch(sub_1000790D8, 0, 0);
}

uint64_t sub_1000790D8()
{
  *(v0 + 48) = qword_1000C96F8;

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10007917C;

  return sub_10006C78C();
}

uint64_t sub_10007917C()
{

  return _swift_task_switch(sub_100079294, 0, 0);
}

uint64_t sub_100079294()
{
  v1 = qword_1000C96F8;
  *(v0 + 64) = qword_1000C96F8;

  return _swift_task_switch(sub_10007930C, v1, 0);
}

uint64_t sub_10007930C()
{
  v1 = *(*(v0 + 64) + 152);
  *(v0 + 72) = v1;
  v2 = v1;

  return _swift_task_switch(sub_100079384, 0, 0);
}

uint64_t sub_100079384()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = *&v1[OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager];

  [v3 _endActiveAssertion:v2];
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1000794CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = &v9 - v4;
  v6 = sub_1000A3BE8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_100069404(0, 0, v5, a2, v7);

  return sub_100022154(v5, &qword_1000C8240, &qword_1000AB688);
}

uint64_t sub_1000795F4()
{
  if (qword_1000C7590 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C96F8;
  *(v0 + 16) = qword_1000C96F8;

  return _swift_task_switch(sub_10007969C, v1, 0);
}

uint64_t sub_10007969C()
{
  v1 = *(*(v0 + 16) + 152);
  *(v0 + 24) = v1;
  v2 = v1;

  return _swift_task_switch(sub_100079714, 0, 0);
}

uint64_t sub_100079714()
{
  v1 = v0[3];
  v2 = *&v1[OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager];

  v3 = sub_1000A3A78();
  v0[4] = [v2 _beginActiveAssertionWithReason:v3];

  v4 = qword_1000C96F8;
  v0[5] = qword_1000C96F8;

  return _swift_task_switch(sub_1000797F8, v4, 0);
}

uint64_t sub_1000797F8()
{
  *(*(v0 + 40) + 112) = 1;

  return _swift_task_switch(sub_100079868, 0, 0);
}

uint64_t sub_100079868()
{
  *(v0 + 48) = qword_1000C96F8;

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10007990C;

  return sub_10006C78C();
}

uint64_t sub_10007990C()
{

  return _swift_task_switch(sub_100079A24, 0, 0);
}

uint64_t sub_100079A24()
{
  v1 = qword_1000C96F8;
  *(v0 + 64) = qword_1000C96F8;

  return _swift_task_switch(sub_100079A9C, v1, 0);
}

uint64_t sub_100079A9C()
{
  v1 = *(*(v0 + 64) + 152);
  *(v0 + 72) = v1;
  v2 = v1;

  return _swift_task_switch(sub_10007E858, 0, 0);
}

uint64_t sub_100079BAC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_100079BDC(uint64_t a1, uint64_t a2)
{
  sub_1000A3F88();
  sub_1000A3AC8();
  v4 = sub_1000A3F98();

  return sub_100079CEC(a1, a2, v4);
}

unint64_t sub_100079C54(uint64_t a1)
{
  sub_1000A2508();
  sub_10007E7E8(&qword_1000C92F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = sub_1000A3A38();

  return sub_100079DA4(a1, v2);
}

unint64_t sub_100079CEC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000A3F48())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100079DA4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1000A2508();
  v5 = *(v4 - 8);
  __chkstk_darwin(*(v5 + 64));
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_10007E7E8(&qword_1000C92F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = sub_1000A3A68();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_100079F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100079C54(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10007C1FC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1000A2508();
    v12 = *(v11 - 8);
    v20 = v12;
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v20 + 32))(a2, *(v9 + 56) + v13, v11);
    sub_10007B514(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v11;
  }

  else
  {
    v18 = sub_1000A2508();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_10007A0FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1000A2508();
  v6 = *(v5 - 8);
  __chkstk_darwin(*(v6 + 64));
  v48 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v43 = &v38 - v8;
  v9 = *v2;
  sub_10000275C(&qword_1000C92E8, &qword_1000AC938);
  v44 = v4;
  result = sub_1000A3EF8();
  v49 = result;
  if (*(v9 + 16))
  {
    v39 = v2;
    v11 = 0;
    v12 = (v9 + 64);
    v13 = 1 << *(v9 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v9 + 64);
    v16 = (v13 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v9;
    v42 = v6;
    v45 = (v6 + 32);
    v17 = v49 + 64;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v47 = (v15 - 1) & v15;
LABEL_15:
      v25 = *(v9 + 48);
      v46 = *(v42 + 72);
      v26 = v46 * (v22 | (v11 << 6));
      if (v44)
      {
        v27 = *v45;
        v28 = v43;
        (*v45)(v43, v25 + v26, v5);
      }

      else
      {
        v27 = *v40;
        v28 = v43;
        (*v40)(v43, v25 + v26, v5);
      }

      v27(v48, *(v9 + 56) + v26, v5);
      v29 = v49;
      sub_10007E7E8(&qword_1000C92F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_1000A3A38();
      v30 = -1 << *(v29 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = v49;
      v20 = v46 * v18;
      v21 = *v45;
      (*v45)((*(v49 + 48) + v46 * v18), v28, v5);
      result = (v21)(*(v19 + 56) + v20, v48, v5);
      ++*(v19 + 16);
      v9 = v41;
      v15 = v47;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v49;
  return result;
}

uint64_t sub_10007A548(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1000A2508();
  v6 = *(v5 - 8);
  __chkstk_darwin(*(v6 + 64));
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000275C(&qword_1000C9330, &qword_1000AC9D8);
  v44 = v4;
  result = sub_1000A3EF8();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v43 + 72);
      v27 = v26 + v48 * v25;
      if (v44)
      {
        (*v45)(v49, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v46 = v28[1];
        v47 = v29;
      }

      else
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v46 = v30[1];
        v47 = v31;
      }

      sub_10007E7E8(&qword_1000C92F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_1000A3A38();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10007A930(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1000A2508();
  v6 = *(v5 - 8);
  __chkstk_darwin(*(v6 + 64));
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000275C(&unk_1000C9390, &unk_1000ACA30);
  v39 = v4;
  result = sub_1000A3EF8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10007E7E8(&qword_1000C92F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_1000A3A38();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10007AD0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000275C(&qword_1000C93A8, &unk_1000ACA40);
  v35 = v4;
  result = sub_1000A3EF8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1000A3F88();
      sub_1000A3AC8();
      result = sub_1000A3F98();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10007AFB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000275C(&qword_1000C93A0, &unk_1000AC520);
  v33 = v4;
  result = sub_1000A3EF8();
  v7 = result;
  if (*(v5 + 16))
  {
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
      if ((v33 & 1) == 0)
      {
      }

      sub_1000A3F88();
      sub_1000A3AC8();
      result = sub_1000A3F98();
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_10007B254(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000275C(&unk_1000C9350, &qword_1000ACA00);
  v37 = v4;
  result = sub_1000A3EF8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1000A3F88();
      sub_1000A3AC8();
      result = sub_1000A3F98();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_10007B514(int64_t a1, uint64_t a2)
{
  v4 = sub_1000A2508();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(*(v5 + 64));
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1000A3E48();
    v14 = v12;
    v33 = (v13 + 1) & v12;
    v34 = a2 + 64;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = *(v15 + 56);
    v31 = (v15 - 8);
    v32 = v16;
    do
    {
      v18 = v17 * v11;
      v19 = v14;
      v20 = v15;
      v32(v8, *(a2 + 48) + v17 * v11, v4);
      sub_10007E7E8(&qword_1000C92F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_1000A3A38();
      result = (*v31)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v33)
      {
        if (v22 >= v33 && a1 >= v22)
        {
LABEL_15:
          v25 = v17 * a1;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v25 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v26 = *(a2 + 56);
          result = (v26 + v25);
          if (v25 < v18 || result >= v26 + v18 + v17)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v15 = v20;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v27 = v25 == v18;
            v15 = v20;
            v14 = v19;
            if (!v27)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v33 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v9 = v34;
    }

    while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10007B814(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000A2508();
  v26 = *(v8 - 8);
  __chkstk_darwin(*(v26 + 64));
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_100079C54(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_10007C1FC();
      goto LABEL_9;
    }

    sub_10007A0FC(v16, a3 & 1);
    v19 = sub_100079C54(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      v13 = v19;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1000A3F78();
    __break(1u);
    return result;
  }

LABEL_9:
  v21 = *v4;
  if (v17)
  {
    v22 = *(v26 + 40);
    v23 = v21[7] + *(v26 + 72) * v13;

    return v22(v23, a1, v8);
  }

  else
  {
    (*(v26 + 16))(v10, a2, v8);
    return sub_10007C020(v13, v10, a1, v21);
  }
}

void sub_10007B9F8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000A2508();
  v9 = *(v8 - 8);
  __chkstk_darwin(*(v9 + 64));
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100079C54(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10007C750();
      goto LABEL_7;
    }

    sub_10007A930(v17, a3 & 1);
    v23 = sub_100079C54(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_10007C0FC(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1000A3F78();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_10007BBC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100079BDC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10007AD0C(v16, a4 & 1);
      v11 = sub_100079BDC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1000A3F78();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10007C9C4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_10007BD3C(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100079BDC(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_10007AFB0(v16, a3 & 1);
      result = sub_100079BDC(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1000A3F78();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10007CB30();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_10007BE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100079BDC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10007B254(v18, a5 & 1);
      v13 = sub_100079BDC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1000A3F78();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10007CC98();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_10007C020(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000A2508();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_10007C0FC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000A2508();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_10007C1B4(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

char *sub_10007C1FC()
{
  v1 = v0;
  v33 = sub_1000A2508();
  v37 = *(v33 - 8);
  __chkstk_darwin(*(v37 + 64));
  v35 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v34 = &v29 - v3;
  sub_10000275C(&qword_1000C92E8, &qword_1000AC938);
  v4 = *v0;
  v5 = sub_1000A3EE8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v36 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v38 = (v14 - 1) & v14;
LABEL_14:
        v19 = v37;
        v20 = *(v37 + 72) * (v16 | (v10 << 6));
        v21 = *(v37 + 16);
        v23 = v33;
        v22 = v34;
        v21(v34, *(v4 + 48) + v20, v33);
        v24 = v35;
        v21(v35, *(v4 + 56) + v20, v23);
        v25 = v4;
        v26 = v36;
        v27 = *(v19 + 32);
        v27(*(v36 + 48) + v20, v22, v23);
        v28 = *(v26 + 56);
        v4 = v25;
        result = (v27)(v28 + v20, v24, v23);
        v14 = v38;
      }

      while (v38);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v36;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_10007C4C4()
{
  v1 = v0;
  v35 = sub_1000A2508();
  v37 = *(v35 - 8);
  __chkstk_darwin(*(v37 + 64));
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000275C(&qword_1000C9330, &qword_1000AC9D8);
  v3 = *v0;
  v4 = sub_1000A3EE8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_10007C750()
{
  v1 = v0;
  v31 = sub_1000A2508();
  v33 = *(v31 - 8);
  __chkstk_darwin(*(v33 + 64));
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000275C(&unk_1000C9390, &unk_1000ACA30);
  v3 = *v0;
  v4 = sub_1000A3EE8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_10007C9C4()
{
  v1 = v0;
  sub_10000275C(&qword_1000C93A8, &unk_1000ACA40);
  v2 = *v0;
  v3 = sub_1000A3EE8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10007CB30()
{
  v1 = v0;
  sub_10000275C(&qword_1000C93A0, &unk_1000AC520);
  v2 = *v0;
  v3 = sub_1000A3EE8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10007CC98()
{
  v1 = v0;
  sub_10000275C(&unk_1000C9350, &qword_1000ACA00);
  v2 = *v0;
  v3 = sub_1000A3EE8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10007CE10()
{
  v0 = objc_opt_self();
  v1 = sub_1000A3A78();
  v2 = [v0 authorizationStatusForBundlePath:v1];

  if ((v2 - 1) < 2)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v8 = sub_1000A3538();
    sub_100001E38(v8, qword_1000C96B8);
    v4 = sub_1000A3518();
    v5 = sub_1000A3CC8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "[EKSHomeManager] Location services not authorized";
      goto LABEL_21;
    }
  }

  else if ((v2 - 3) >= 2)
  {
    if (v2)
    {
      if (qword_1000C7570 != -1)
      {
        swift_once();
      }

      v14 = sub_1000A3538();
      sub_100001E38(v14, qword_1000C96B8);
      v4 = sub_1000A3518();
      v5 = sub_1000A3CC8();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "[EKSHomeManager] Location services unknown";
        goto LABEL_21;
      }
    }

    else
    {
      if (qword_1000C7570 != -1)
      {
        swift_once();
      }

      v9 = sub_1000A3538();
      sub_100001E38(v9, qword_1000C96B8);
      v10 = sub_1000A3518();
      v11 = sub_1000A3CC8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "[EKSHomeManager] Location services not determined. Authorizing", v12, 2u);
      }

      v13 = sub_1000A3A78();
      [v0 setAuthorizationStatusByType:3 forBundlePath:v13];

      v4 = sub_1000A3A78();
      v2 = [v0 authorizationStatusForBundlePath:v4];
    }
  }

  else
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v3 = sub_1000A3538();
    sub_100001E38(v3, qword_1000C96B8);
    v4 = sub_1000A3518();
    v5 = sub_1000A3CC8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "[EKSHomeManager] Location services authorized";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);
    }
  }

  return v2;
}

BOOL sub_10007D188()
{
  v0 = sub_10007CE10();
  v1 = objc_opt_self();
  v2 = sub_1000A3A78();
  LODWORD(v1) = [v1 authorizationStatusForBundlePath:v2];

  v3 = v0 - 3 < 2;
  if ((v1 - 3) > 1)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v8 = sub_1000A3538();
    sub_100001E38(v8, qword_1000C96B8);
    v5 = sub_1000A3518();
    v9 = sub_1000A3CC8();
    if (!os_log_type_enabled(v5, v9))
    {
      v3 = 0;
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, v9, "[EKSHomeManager] Location services not authorized for HomeKit", v10, 2u);
    v3 = 0;
    goto LABEL_10;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  sub_100001E38(v4, qword_1000C96B8);
  v5 = sub_1000A3518();
  v6 = sub_1000A3CA8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[EKSHomeManager] Location services authorized for HomeKit", v7, 2u);
LABEL_10:
  }

LABEL_12:

  return v3;
}

uint64_t sub_10007D378(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a2;
  v24 = a3;
  v8 = sub_1000A3548();
  v26 = *(v8 - 8);
  __chkstk_darwin(*(v26 + 64));
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000A3568();
  v11 = *(v25 - 8);
  __chkstk_darwin(*(v11 + 64));
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v17 = swift_slowAlloc();
    v22 = v13;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, v23, v17, 2u);
    v13 = v22;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000034F0;
  aBlock[3] = a5;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  sub_1000A3558();
  v27 = &_swiftEmptyArrayStorage;
  sub_10007E7E8(&qword_1000C9300, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000275C(&qword_1000C9308, &unk_1000AC940);
  sub_10007DA74(&unk_1000C9310, &qword_1000C9308, &unk_1000AC940);
  sub_1000A3E38();
  sub_1000A3D18();
  _Block_release(v19);
  (*(v26 + 8))(v10, v8);
  (*(v11 + 8))(v13, v25);
}

uint64_t sub_10007D71C(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000A3548();
  v20 = *(v6 - 8);
  __chkstk_darwin(*(v20 + 64));
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000A3568();
  v9 = *(v19 - 8);
  __chkstk_darwin(*(v9 + 64));
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, a1, v15, 2u);
  }

  aBlock[4] = a2;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000034F0;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  sub_1000A3558();
  v21 = &_swiftEmptyArrayStorage;
  sub_10007E7E8(&qword_1000C9300, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000275C(&qword_1000C9308, &unk_1000AC940);
  sub_10007DA74(&unk_1000C9310, &qword_1000C9308, &unk_1000AC940);
  sub_1000A3E38();
  sub_1000A3D18();
  _Block_release(v16);
  (*(v20 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v19);
}

uint64_t sub_10007DA5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007DA74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100018734(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007DAC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007DB00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000153A8;

  return sub_1000795D8();
}

uint64_t sub_10007DBAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007DBE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000153A8;

  return sub_100089898(a1, v4);
}

uint64_t sub_10007DC9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014898;

  return sub_100089898(a1, v4);
}

uint64_t sub_10007DD54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000153A8;

  return sub_100078E48();
}

uint64_t sub_10007DE00()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007DEAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000153A8;

  return sub_100077D8C(a1, v4, v5, v6);
}

uint64_t sub_10007DF60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000153A8;

  return sub_100078C3C(a1, v4, v5, v6);
}

uint64_t sub_10007E04C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000153A8;

  return sub_100077D8C(a1, v4, v5, v6);
}

uint64_t sub_10007E138(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014898;

  return sub_1000782C8(a1, v4, v5, v6);
}

uint64_t sub_10007E224()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10007E264(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000153A8;

  return sub_100077D8C(a1, v4, v5, v6);
}

uint64_t sub_10007E318()
{
  v1 = sub_10000275C(&qword_1000C9338, &qword_1000AC9E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10007E3FC(uint64_t a1)
{
  v4 = *(sub_10000275C(&qword_1000C9338, &qword_1000AC9E0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000153A8;

  return sub_100075A78(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10007E534()
{
  v1 = sub_10000275C(&unk_1000C9360, &unk_1000ACA08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10007E60C(void *a1, uint64_t a2)
{
  v5 = *(sub_10000275C(&unk_1000C9360, &unk_1000ACA08) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_100076F24(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_10007E6A0()
{
  v1 = sub_10000275C(&unk_1000C9360, &unk_1000ACA08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void *sub_10007E734(uint64_t a1)
{
  sub_10000275C(&unk_1000C9360, &unk_1000ACA08);

  return sub_100077694(a1);
}

uint64_t sub_10007E7E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007E8D0()
{
  type metadata accessor for LoadEventManager(0);
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC16EnergyKitService16LoadEventManager_lastFetchedGridID;
  v2 = sub_10000275C(&qword_1000C9400, &qword_1000ACAD8);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC16EnergyKitService16LoadEventManager_lastFetchedHome;
  v4 = sub_10000275C(&unk_1000C9410, qword_1000ACAE0);
  result = (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  qword_1000C9700 = v0;
  return result;
}

uint64_t sub_10007E9B8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1000A2508();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_1000A3698();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  sub_10000275C(&qword_1000C9538, &qword_1000ACB58);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v5 = sub_10000275C(&qword_1000C9400, &qword_1000ACAD8);
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10007EB98, v1, 0);
}

uint64_t sub_10007EB98()
{
  v49 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC16EnergyKitService16LoadEventManager_lastFetchedGridID;
  v0[23] = OBJC_IVAR____TtC16EnergyKitService16LoadEventManager_lastFetchedGridID;
  swift_beginAccess();
  sub_100047188(v4 + v5, v3, &qword_1000C9538, &qword_1000ACB58);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[17];
    v7 = &qword_1000C9538;
    v8 = &qword_1000ACB58;
LABEL_9:
    sub_100022154(v6, v7, v8);
    v33 = v0[14];
    v32 = v0[15];
    v34 = v0[13];
    sub_1000A2A38();
    v0[24] = sub_1000A2A28();
    sub_1000A36A8();
    sub_1000A3648();
    v35 = *(v33 + 8);
    v0[25] = v35;
    v0[26] = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35(v32, v34);
    v47 = (&async function pointer to dispatch thunk of HomeEnergyManager.getGridID(token:) + async function pointer to dispatch thunk of HomeEnergyManager.getGridID(token:));
    v36 = swift_task_alloc();
    v0[27] = v36;
    *v36 = v0;
    v36[1] = sub_10007F060;
    v37 = v0[12];

    return v47(v37);
  }

  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[10];
  v14 = v0[11];
  sub_100086494(v0[17], v0[22], &qword_1000C9400, &qword_1000ACAD8);
  sub_1000A36A8();
  sub_1000A3648();
  (*(v10 + 8))(v9, v11);
  v15 = sub_1000A24E8();
  v16 = *(v14 + 8);
  v16(v12, v13);
  if ((v15 & 1) == 0)
  {
    v6 = v0[22];
    v7 = &qword_1000C9400;
    v8 = &qword_1000ACAD8;
    goto LABEL_9;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v17 = v0[21];
  v18 = v0[22];
  v19 = sub_1000A3538();
  sub_100001E38(v19, qword_1000C96B8);
  sub_100047188(v18, v17, &qword_1000C9400, &qword_1000ACAD8);
  v20 = sub_1000A3518();
  v21 = sub_1000A3CB8();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[21];
  if (v22)
  {
    v24 = v0[20];
    v25 = v0[18];
    v46 = v0[10];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v48 = v27;
    *v26 = 136315138;
    sub_100086494(v23, v24, &qword_1000C9400, &qword_1000ACAD8);
    v28 = (v24 + *(v25 + 48));
    v29 = *v28;
    v30 = v28[1];
    v16(v24, v46);
    v31 = sub_1000954AC(v29, v30, &v48);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "[LoadEventManager] Cached GridID is %s", v26, 0xCu);
    sub_10000F7B8(v27);
  }

  else
  {

    sub_100022154(v23, &qword_1000C9400, &qword_1000ACAD8);
  }

  v39 = v0[20];
  v40 = v0[18];
  v41 = v0[10];
  sub_100086494(v0[22], v39, &qword_1000C9400, &qword_1000ACAD8);
  v42 = (v39 + *(v40 + 48));
  v43 = *v42;
  v44 = v42[1];
  v16(v39, v41);

  v45 = v0[1];

  return v45(v43, v44);
}

uint64_t sub_10007F060(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  v7 = *(*v2 + 72);
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_10007F1F8, v7, 0);
}

uint64_t sub_10007F1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = v3;
  v4 = v3[29];
  if (v4)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v5 = sub_1000A3538();
    sub_100001E38(v5, qword_1000C96B8);

    v6 = sub_1000A3518();
    v7 = sub_1000A3CB8();

    v28 = v4;
    if (os_log_type_enabled(v6, v7))
    {
      v8 = v3[28];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v29 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000954AC(v8, v4, &v29);
      _os_log_impl(&_mh_execute_header, v6, v7, "[LoadEventManager] Retrieved GridID is %s", v9, 0xCu);
      sub_10000F7B8(v10);
    }

    v11 = v3[25];
    v26 = v3[28];
    v27 = v3[23];
    v13 = v3[18];
    v12 = v3[19];
    v15 = v3[15];
    v14 = v3[16];
    v16 = v3[13];
    v17 = v3[9];
    v18 = (v14 + *(v13 + 48));
    sub_1000A36A8();
    sub_1000A3648();
    v11(v15, v16);
    *v18 = v26;
    v18[1] = v28;
    (*(v12 + 56))(v14, 0, 1, v13);
    swift_beginAccess();

    sub_10008642C(v14, v17 + v27, &qword_1000C9538, &qword_1000ACB58);
    swift_endAccess();
    v19 = v3[28];
    v20 = v3[29];

    v21 = v3[1];

    return v21(v19, v20);
  }

  else
  {
    v23 = sub_1000A3598();
    sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, enum case for EnergyKitError.invalidLoadEvent(_:), v23);
    swift_willThrow();

    v25 = v3[1];

    return v25();
  }
}

uint64_t sub_10007F5D0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_10000275C(&qword_1000C9530, &qword_1000ACB50);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v3 = sub_10000275C(&unk_1000C9410, qword_1000ACAE0);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10007F6F8, v1, 0);
}

uint64_t sub_10007F6F8()
{
  v35 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC16EnergyKitService16LoadEventManager_lastFetchedHome;
  v0[17] = OBJC_IVAR____TtC16EnergyKitService16LoadEventManager_lastFetchedHome;
  swift_beginAccess();
  sub_100047188(v4 + v5, v3, &qword_1000C9530, &qword_1000ACB50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[11];
    v7 = &qword_1000C9530;
    v8 = &qword_1000ACB50;
LABEL_9:
    sub_100022154(v6, v7, v8);
    if (qword_1000C7550 != -1)
    {
      swift_once();
    }

    v27 = qword_1000C95F0;
    v0[18] = qword_1000C95F0;

    return _swift_task_switch(sub_10007FB6C, v27, 0);
  }

  sub_100086494(v0[11], v0[16], &unk_1000C9410, qword_1000ACAE0);
  if ((sub_1000A24E8() & 1) == 0)
  {
    v6 = v0[16];
    v7 = &unk_1000C9410;
    v8 = qword_1000ACAE0;
    goto LABEL_9;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v9 = v0[15];
  v10 = v0[16];
  v11 = sub_1000A3538();
  sub_100001E38(v11, qword_1000C96B8);
  sub_100047188(v10, v9, &unk_1000C9410, qword_1000ACAE0);
  v12 = sub_1000A3518();
  v13 = sub_1000A3CB8();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[15];
  if (v14)
  {
    v16 = v0[14];
    v17 = v0[12];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v19;
    *v18 = 136315138;
    sub_100047188(v15, v16, &unk_1000C9410, qword_1000ACAE0);
    v20 = *(v16 + *(v17 + 48));
    v21 = [v20 name];

    v22 = sub_1000A3A88();
    v24 = v23;

    sub_100022154(v15, &unk_1000C9410, qword_1000ACAE0);
    v25 = sub_1000A2508();
    (*(*(v25 - 8) + 8))(v16, v25);
    v26 = sub_1000954AC(v22, v24, &v34);

    *(v18 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v12, v13, "[LoadEventManager] Cached Home is %s", v18, 0xCu);
    sub_10000F7B8(v19);
  }

  else
  {

    sub_100022154(v15, &unk_1000C9410, qword_1000ACAE0);
  }

  v28 = v0[14];
  v29 = v0[12];
  sub_100086494(v0[16], v28, &unk_1000C9410, qword_1000ACAE0);
  v30 = *(v28 + *(v29 + 48));
  v31 = sub_1000A2508();
  (*(*(v31 - 8) + 8))(v28, v31);

  v32 = v0[1];

  return v32(v30);
}

uint64_t sub_10007FB6C()
{
  v1 = v0[9];
  v0[19] = *(v0[18] + 120);

  return _swift_task_switch(sub_10007FBE8, v1, 0);
}

uint64_t sub_10007FBE8()
{
  if (v0[19])
  {

    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    v0[20] = qword_1000C96F8;

    v1 = swift_task_alloc();
    v0[21] = v1;
    *v1 = v0;
    v1[1] = sub_10007FDF4;
    v2 = v0[8];

    return sub_1000716DC(v2);
  }

  else
  {
    v4 = sub_1000A2B18();
    sub_1000863E4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for EnergyKitError.siteUnavailable(_:), v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10007FDF4(uint64_t a1)
{
  v2 = *(*v1 + 72);
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_10007FF28, v2, 0);
}

uint64_t sub_10007FF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = v3;
  v4 = v3[22];
  if (v4)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v5 = sub_1000A3538();
    sub_100001E38(v5, qword_1000C96B8);
    v6 = v4;
    v7 = sub_1000A3518();
    v8 = sub_1000A3CB8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v30 = v10;
      *v9 = 136315138;
      v11 = [v6 name];
      v12 = sub_1000A3A88();
      v14 = v13;

      v15 = sub_1000954AC(v12, v14, &v30);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "[LoadEventManager] Retrieved Home is %s", v9, 0xCu);
      sub_10000F7B8(v10);
    }

    v16 = v3[17];
    v17 = v3[12];
    v18 = v3[13];
    v20 = v3[9];
    v19 = v3[10];
    v21 = v3[8];
    v22 = *(v17 + 48);
    v23 = sub_1000A2508();
    (*(*(v23 - 8) + 16))(v19, v21, v23);
    *(v19 + v22) = v6;
    (*(v18 + 56))(v19, 0, 1, v17);
    swift_beginAccess();
    v24 = v6;
    sub_10008642C(v19, v20 + v16, &qword_1000C9530, &qword_1000ACB50);
    swift_endAccess();

    v25 = v3[1];

    return v25(v24);
  }

  else
  {
    v27 = sub_1000A2B18();
    sub_1000863E4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, enum case for EnergyKitError.siteUnavailable(_:), v27);
    swift_willThrow();

    v29 = v3[1];

    return v29();
  }
}

uint64_t sub_1000802E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_100080388, v2, 0);
}

uint64_t sub_100080388()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 48) = qword_1000C95F0;

  return _swift_task_switch(sub_100080430, v1, 0);
}

uint64_t sub_100080430()
{
  v1 = v0[4];
  v0[7] = *(v0[6] + 120);

  return _swift_task_switch(sub_1000804AC, v1, 0);
}

uint64_t sub_1000804AC()
{
  if (v0[7])
  {

    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    v0[8] = qword_1000C96F8;

    v1 = swift_task_alloc();
    v0[9] = v1;
    *v1 = v0;
    v1[1] = sub_100080688;
    v2 = v0[5];
    v3 = v0[3];

    return sub_10006CFD4(v2, v3);
  }

  else
  {
    v5 = sub_1000A2B18();
    sub_1000863E4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for EnergyKitError.invalidApplicationIdentifier(_:), v5);
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100080688()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1000807B4, v1, 0);
}

uint64_t sub_1000807B4()
{
  v1 = v0[5];
  v2 = sub_1000A2508();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100022154(v1, &qword_1000C92C0, &qword_1000ACB30);
    v4 = sub_1000A3598();
    sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for EnergyKitError.venueUnavailable(_:), v4);
    swift_willThrow();
  }

  else
  {
    (*(v3 + 32))(v0[2], v1, v2);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_10008098C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_1000A2498();
  v6[8] = swift_task_alloc();
  sub_10000275C(&qword_1000C9518, &qword_1000ACB38);
  v6[9] = swift_task_alloc();
  sub_1000A29D8();
  v6[10] = swift_task_alloc();
  v7 = sub_1000A2938();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v8 = sub_1000A29A8();
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v9 = sub_1000A36F8();
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v10 = sub_1000A3718();
  v6[21] = v10;
  v6[22] = *(v10 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v11 = sub_1000A29B8();
  v6[26] = v11;
  v6[27] = *(v11 - 8);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v12 = sub_1000A2818();
  v6[30] = v12;
  v6[31] = *(v12 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v13 = sub_1000A3988();
  v6[35] = v13;
  v6[36] = *(v13 - 8);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v14 = sub_1000A36D8();
  v6[39] = v14;
  v6[40] = *(v14 - 8);
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v15 = sub_1000A3628();
  v6[43] = v15;
  v6[44] = *(v15 - 8);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  sub_10000275C(&qword_1000C9520, &qword_1000ACB40);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v16 = sub_1000A2948();
  v6[52] = v16;
  v6[53] = *(v16 - 8);
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v17 = sub_1000A3638();
  v6[57] = v17;
  v6[58] = *(v17 - 8);
  v6[59] = swift_task_alloc();
  v18 = sub_1000A3698();
  v6[60] = v18;
  v6[61] = *(v18 - 8);
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  v19 = sub_1000A2978();
  v6[66] = v19;
  v6[67] = *(v19 - 8);
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v20 = sub_1000A3758();
  v6[70] = v20;
  v6[71] = *(v20 - 8);
  v6[72] = swift_task_alloc();
  v21 = sub_1000A2508();
  v6[73] = v21;
  v6[74] = *(v21 - 8);
  v6[75] = swift_task_alloc();
  v6[76] = swift_task_alloc();

  return _swift_task_switch(sub_100081114, v5, 0);
}

uint64_t sub_100081114()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 616) = qword_1000C95F0;

  return _swift_task_switch(sub_1000811BC, v1, 0);
}

uint64_t sub_1000811BC()
{
  v1 = v0[77];
  v2 = v0[7];
  v0[78] = *(v1 + 112);
  v0[79] = *(v1 + 120);

  return _swift_task_switch(sub_100081240, v2, 0);
}

uint64_t sub_100081240()
{
  v43 = v0;
  if (v0[79])
  {
    v1 = v0[76];
    v2 = v0[74];
    v3 = v0[73];
    sub_1000A3738();
    v4 = sub_1000A24E8();
    v5 = *(v2 + 8);
    v5(v1, v3);
    if (v4)
    {
      if (qword_1000C7570 != -1)
      {
        swift_once();
      }

      v6 = v0[72];
      v7 = v0[71];
      v8 = v0[70];
      v9 = v0[3];
      v10 = sub_1000A3538();
      sub_100001E38(v10, qword_1000C96B8);
      (*(v7 + 16))(v6, v9, v8);

      v11 = sub_1000A3518();
      v12 = sub_1000A3CB8();

      if (os_log_type_enabled(v11, v12))
      {
        v40 = v0[78];
        v41 = v0[79];
        v13 = v0[76];
        v14 = v0[73];
        v15 = v0[71];
        v37 = v0[72];
        v38 = v0[70];
        v16 = swift_slowAlloc();
        v42[0] = swift_slowAlloc();
        *v16 = 136315394;
        v39 = v12;
        sub_1000A36C8();
        sub_1000863E4(&qword_1000C9340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v17 = sub_1000A3F28();
        v19 = v18;
        v5(v13, v14);
        (*(v15 + 8))(v37, v38);
        v20 = sub_1000954AC(v17, v19, v42);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        *(v16 + 14) = sub_1000954AC(v40, v41, v42);
        _os_log_impl(&_mh_execute_header, v11, v39, "[LoadEventManager] Processing Load %s from %s", v16, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v32 = v0[72];
        v33 = v0[71];
        v34 = v0[70];

        (*(v33 + 8))(v32, v34);
      }

      v35 = swift_task_alloc();
      v0[80] = v35;
      *v35 = v0;
      v35[1] = sub_100081974;
      v36 = v0[3];

      return sub_10007E9B8(v36);
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
      _os_log_impl(&_mh_execute_header, v26, v27, "[LoadEventManager] Event has venueID different from submission venueID", v28, 2u);
    }

    v21 = sub_1000A3598();
    sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    v23 = v29;
    v24 = &enum case for EnergyKitError.invalidLoadEvent(_:);
  }

  else
  {
    v21 = sub_1000A2B18();
    sub_1000863E4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    v23 = v22;
    v24 = &enum case for EnergyKitError.invalidApplicationIdentifier(_:);
  }

  (*(*(v21 - 8) + 104))(v23, *v24, v21);
  swift_willThrow();

  v30 = v0[1];

  return v30();
}

uint64_t sub_100081974(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[81] = a1;
  v5[82] = a2;
  v5[83] = v2;

  v6 = v4[7];
  if (v2)
  {
    v7 = sub_100083288;
  }

  else
  {
    v7 = sub_100081AB0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100081AB0(uint64_t a1)
{
  v2 = v1[82];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v1[65];
  v4 = v1[60];
  v5 = v1[61];
  v7 = v1[58];
  v6 = v1[59];
  v8 = v1[57];
  sub_1000A36A8();
  sub_1000A3668();
  v9 = *(v5 + 8);
  v9(v3, v4);
  v10 = (*(v7 + 88))(v6, v8);
  if (v10 != enum case for ElectricalLoadEvent.DeviceType.other(_:))
  {
    if (v10 == enum case for ElectricalLoadEvent.DeviceType.hvac(_:))
    {
      v15 = v1[64];
      v16 = v1[60];
      v17 = v1[42];
      v18 = v1[39];
      v19 = v1[40];
      sub_1000A36A8();
      sub_1000A3678();
      v9(v15, v16);
      v20 = (*(v19 + 88))(v17, v18);
      if (v20 == enum case for ElectricalLoadEvent.State.off(_:))
      {
        v208 = v9;
        v21 = &enum case for EnergyKit.LoadEvent.LoadState.off(_:);
LABEL_18:
        v39 = v1[62];
        v169 = v1[60];
        v175 = v1[81];
        v40 = v1[31];
        v41 = v1[32];
        v43 = v1[22];
        v42 = v1[23];
        v191 = v1[21];
        v44 = v1[18];
        v179 = v1[30];
        v185 = v1[19];
        v197 = v1[17];
        (*(v1[53] + 104))(v1[55], *v21, v1[52]);
        sub_1000A36A8();
        v45 = sub_1000A3658();
        v208(v39, v169);
        v46 = &enum case for EnergyKit.GuidanceBehavior.following(_:);
        *v41 = v175;
        v41[1] = v2;
        if ((v45 & 1) == 0)
        {
          v46 = &enum case for EnergyKit.GuidanceBehavior.ignored(_:);
        }

        (*(v40 + 104))(v41, *v46, v179);
        sub_1000A3728();
        sub_1000A3708();
        v47 = *(v43 + 8);
        v47(v42, v191);
        v48 = (*(v44 + 88))(v185, v197);
        if (v48 == enum case for ElectricalLoadEvent.Session.State.begin(_:))
        {
          v198 = v47;
          v49 = &enum case for EnergyKit.LoadEvent.Session.State.begin(_:);
        }

        else if (v48 == enum case for ElectricalLoadEvent.Session.State.end(_:))
        {
          v198 = v47;
          v49 = &enum case for EnergyKit.LoadEvent.Session.State.end(_:);
        }

        else
        {
          if (v48 != enum case for ElectricalLoadEvent.Session.State.active(_:))
          {
            v89 = v1[52];
            v90 = v1[53];
            v91 = v1[31];
            v92 = v1[32];
            v93 = v1[30];
            v94 = v1[18];
            v200 = v1[55];
            v206 = v1[19];
            v95 = v1[17];

            v96 = sub_1000A3598();
            sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
            swift_allocError();
            (*(*(v96 - 8) + 104))(v97, enum case for EnergyKitError.invalidLoadEvent(_:), v96);
            swift_willThrow();
            (*(v91 + 8))(v92, v93);
            (*(v90 + 8))(v200, v89);
            (*(v94 + 8))(v206, v95);
            goto LABEL_5;
          }

          v198 = v47;
          v49 = &enum case for EnergyKit.LoadEvent.Session.State.active(_:);
        }

        v161 = v49;
        v170 = v1[54];
        v176 = v1[55];
        v55 = v1[53];
        v165 = v1[52];
        v56 = v1[45];
        v180 = v1[44];
        v186 = v1[43];
        v57 = v1[24];
        v58 = v1[21];
        v60 = v1[15];
        v59 = v1[16];
        v153 = v1[14];
        v61 = v1[12];
        v155 = v1[11];
        v158 = v1[13];
        sub_1000A3728();
        sub_1000A36E8();
        v198(v57, v58);
        (*(v60 + 104))(v59, *v161, v153);
        sub_1000A2998();
        (*(v61 + 104))(v158, enum case for EnergyKit.LoadType.hvac(_:), v155);
        (*(v55 + 16))(v170, v176, v165);
        sub_1000A36B8();
        v62 = sub_1000A35E8();
        result = (*(v180 + 8))(v56, v186);
        if ((v62 & 0x8000000000000000) == 0)
        {
          v199 = v1 + 55;
          v63 = v1[32];
          v64 = v1[33];
          v181 = v63;
          v66 = v1[30];
          v65 = v1[31];
          v67 = v1[27];
          v68 = v1[28];
          v159 = v1[49];
          v69 = v1[26];
          v166 = v1[48];
          v70 = v1[9];
          sub_1000A29E8();
          (*(v65 + 16))(v64, v63, v66);
          (*(v67 + 16))(v70, v68, v69);
          (*(v67 + 56))(v70, 0, 1, v69);
          v71 = sub_1000A2988();
          v72 = *(*(v71 - 8) + 56);
          v72(v159, 1, 1, v71);
          v72(v166, 1, 1, v71);
          sub_1000A2968();
          (*(v67 + 8))(v68, v69);
          (*(v65 + 8))(v181, v66);
LABEL_31:
          v73 = v1[76];
          v74 = v1[75];
          v75 = v1[74];
          v76 = v1[73];
          v150 = v1[68];
          v151 = v1[69];
          v77 = v1[67];
          v149 = v1[66];
          v192 = v1[62];
          v148 = v1[60];
          v78 = v1[6];
          v79 = v1[4];
          (*(v1[53] + 8))(*v199, v1[52]);
          sub_1000A3748();
          v80 = *(v75 + 16);
          v80(v73, v78, v76);
          v80(v74, v79, v76);
          sub_1000A36A8();
          sub_1000A3688();
          v208(v192, v148);
          (*(v77 + 16))(v150, v151, v149);
          sub_1000A2958();
          (*(v77 + 8))(v151, v149);

          v13 = v1[1];
          goto LABEL_6;
        }

        __break(1u);
        goto LABEL_57;
      }

      if (v20 == enum case for ElectricalLoadEvent.State.on(_:))
      {
        v208 = v9;
        v21 = &enum case for EnergyKit.LoadEvent.LoadState.on(_:);
        goto LABEL_18;
      }

      v50 = v1[42];
      v52 = v1[39];
      v51 = v1[40];
    }

    else
    {
      if (v10 == enum case for ElectricalLoadEvent.DeviceType.electricVehicle(_:))
      {
        v22 = v1[50];
        v23 = v1[51];
        v24 = v1[47];
        v25 = v1[44];
        v205 = v1[43];
        v208 = v9;
        v26 = sub_1000A2988();
        v178 = *(v26 - 8);
        v27 = *(v178 + 56);
        v27(v23, 1, 1, v26);
        v184 = v27;
        v190 = v26;
        v27(v22, 1, 1, v26);
        sub_1000A36B8();
        v196 = sub_1000A35F8();
        LOBYTE(v22) = v28;
        v29 = *(v25 + 8);
        v29(v24, v205);
        if (v22 & 1) != 0 || (v30 = v1[46], v31 = v1[43], sub_1000A36B8(), v32 = sub_1000A3608(), v34 = v33, v29(v30, v31), (v34))
        {
          v36 = v1[50];
          v35 = v1[51];

          v37 = sub_1000A3598();
          sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
          swift_allocError();
          (*(*(v37 - 8) + 104))(v38, enum case for EnergyKitError.invalidLoadEvent(_:), v37);
          swift_willThrow();
          sub_100022154(v36, &qword_1000C9520, &qword_1000ACB40);
          sub_100022154(v35, &qword_1000C9520, &qword_1000ACB40);
          goto LABEL_5;
        }

        v81 = v1[45];
        v167 = v1[43];
        v171 = v32;
        v82 = v1[37];
        v83 = v1[38];
        v177 = v29;
        v84 = v1[35];
        v85 = v1[36];
        sub_1000A36B8();
        sub_1000A3618();
        v29(v81, v167);
        (*(v85 + 104))(v82, enum case for ElectricityFlowDirection.imported(_:), v84);
        v86 = sub_1000A3968();
        v87 = *(v85 + 8);
        v87(v82, v84);
        v87(v83, v84);
        sub_10000275C(&qword_1000C9528, &qword_1000ACB48);
        if (v86)
        {
          result = v171;
          if (v171 < 0)
          {
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          sub_1000A27C8();
          result = v196;
          if (v196 < 0)
          {
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          v88 = v1 + 51;
        }

        else
        {
          result = v171;
          if (v171 < 0)
          {
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

          sub_1000A27C8();
          result = v196;
          if (v196 < 0)
          {
LABEL_61:
            __break(1u);
            return result;
          }

          v88 = v1 + 50;
        }

        v98 = *v88;
        v99 = v1[63];
        v172 = v1[60];
        v100 = v1[49];
        v102 = v1[40];
        v101 = v1[41];
        v201 = v1[39];
        sub_1000A2738();
        sub_100022154(v98, &qword_1000C9520, &qword_1000ACB40);
        (*(v178 + 104))(v100, enum case for EnergyKit.LoadEvent.Value.energyAndPower(_:), v190);
        v184(v100, 0, 1, v190);
        sub_100086494(v100, v98, &qword_1000C9520, &qword_1000ACB40);
        sub_1000A36A8();
        sub_1000A3678();
        v9(v99, v172);
        v103 = (*(v102 + 88))(v101, v201);
        if (v103 == enum case for ElectricalLoadEvent.State.unplugged(_:))
        {
          v104 = &enum case for EnergyKit.LoadEvent.LoadState.unplugged(_:);
        }

        else
        {
          if (v103 != enum case for ElectricalLoadEvent.State.plugged(_:))
          {
            v117 = v1[50];
            v116 = v1[51];
            v119 = v1[40];
            v118 = v1[41];
            v120 = v1[39];

            v121 = sub_1000A3598();
            sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
            swift_allocError();
            (*(*(v121 - 8) + 104))(v122, enum case for EnergyKitError.invalidLoadEvent(_:), v121);
            swift_willThrow();
            sub_100022154(v117, &qword_1000C9520, &qword_1000ACB40);
            sub_100022154(v116, &qword_1000C9520, &qword_1000ACB40);
            (*(v119 + 8))(v118, v120);
            goto LABEL_5;
          }

          v104 = &enum case for EnergyKit.LoadEvent.LoadState.plugged(_:);
        }

        v173 = v1[81];
        v105 = v1[62];
        v162 = v1[60];
        v106 = v1[34];
        v107 = v1[31];
        v108 = v1[25];
        v109 = v1[22];
        v193 = v1[21];
        v182 = v1[30];
        v187 = v1[20];
        v110 = v1[18];
        v202 = v1[17];
        (*(v1[53] + 104))(v1[56], *v104, v1[52]);
        sub_1000A36A8();
        v111 = sub_1000A3658();
        v208(v105, v162);
        v112 = &enum case for EnergyKit.GuidanceBehavior.following(_:);
        *v106 = v173;
        v106[1] = v2;
        if ((v111 & 1) == 0)
        {
          v112 = &enum case for EnergyKit.GuidanceBehavior.ignored(_:);
        }

        (*(v107 + 104))(v106, *v112, v182);
        sub_1000A3728();
        sub_1000A3708();
        v113 = *(v109 + 8);
        v113(v108, v193);
        v114 = (*(v110 + 88))(v187, v202);
        if (v114 == enum case for ElectricalLoadEvent.Session.State.begin(_:))
        {
          v203 = v113;
          v115 = &enum case for EnergyKit.LoadEvent.Session.State.begin(_:);
        }

        else if (v114 == enum case for ElectricalLoadEvent.Session.State.end(_:))
        {
          v203 = v113;
          v115 = &enum case for EnergyKit.LoadEvent.Session.State.end(_:);
        }

        else
        {
          if (v114 != enum case for ElectricalLoadEvent.Session.State.active(_:))
          {
            v139 = v1[53];
            v204 = v1[52];
            v207 = v1[56];
            v141 = v1[50];
            v140 = v1[51];
            v142 = v1[34];
            v144 = v1[30];
            v143 = v1[31];
            v145 = v1[18];
            v189 = v1[17];
            v195 = v1[20];

            v146 = sub_1000A3598();
            sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
            swift_allocError();
            (*(*(v146 - 8) + 104))(v147, enum case for EnergyKitError.invalidLoadEvent(_:), v146);
            swift_willThrow();
            (*(v143 + 8))(v142, v144);
            sub_100022154(v141, &qword_1000C9520, &qword_1000ACB40);
            sub_100022154(v140, &qword_1000C9520, &qword_1000ACB40);
            (*(v139 + 8))(v207, v204);
            (*(v145 + 8))(v195, v189);
            goto LABEL_5;
          }

          v203 = v113;
          v115 = &enum case for EnergyKit.LoadEvent.Session.State.active(_:);
        }

        v160 = v115;
        v123 = v1[53];
        v174 = v1[54];
        v163 = v1[52];
        v124 = v1[45];
        v183 = v1[56];
        v188 = v1[43];
        v125 = v1[24];
        v126 = v1[21];
        v128 = v1[15];
        v127 = v1[16];
        v152 = v1[14];
        v129 = v1[12];
        v154 = v1[11];
        v156 = v1[13];
        sub_1000A3728();
        sub_1000A36E8();
        v203(v125, v126);
        (*(v128 + 104))(v127, *v160, v152);
        sub_1000A2998();
        (*(v129 + 104))(v156, enum case for EnergyKit.LoadType.electricVehicle(_:), v154);
        (*(v123 + 16))(v174, v183, v163);
        sub_1000A36B8();
        v130 = sub_1000A35E8();
        result = v177(v124, v188);
        if ((v130 & 0x8000000000000000) == 0)
        {
          v194 = v1[51];
          v199 = v1 + 56;
          v164 = v1[48];
          v168 = v1[50];
          v132 = v1[33];
          v131 = v1[34];
          v134 = v1[30];
          v133 = v1[31];
          v135 = v1[29];
          v157 = v1[49];
          v137 = v1[26];
          v136 = v1[27];
          v138 = v1[9];
          sub_1000A29E8();
          (*(v133 + 16))(v132, v131, v134);
          (*(v136 + 16))(v138, v135, v137);
          (*(v136 + 56))(v138, 0, 1, v137);
          sub_100047188(v194, v157, &qword_1000C9520, &qword_1000ACB40);
          sub_100047188(v168, v164, &qword_1000C9520, &qword_1000ACB40);
          sub_1000A2968();
          (*(v136 + 8))(v135, v137);
          (*(v133 + 8))(v131, v134);
          sub_100022154(v168, &qword_1000C9520, &qword_1000ACB40);
          sub_100022154(v194, &qword_1000C9520, &qword_1000ACB40);
          goto LABEL_31;
        }

LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v51 = v1[58];
      v50 = v1[59];
      v52 = v1[57];
    }

    v53 = sub_1000A3598();
    sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v53 - 8) + 104))(v54, enum case for EnergyKitError.invalidLoadEvent(_:), v53);
    swift_willThrow();
    (*(v51 + 8))(v50, v52);
    goto LABEL_5;
  }

LABEL_4:

  v11 = sub_1000A3598();
  sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
  swift_allocError();
  (*(*(v11 - 8) + 104))(v12, enum case for EnergyKitError.invalidLoadEvent(_:), v11);
  swift_willThrow();
LABEL_5:

  v13 = v1[1];
LABEL_6:

  return v13();
}

uint64_t sub_100083288()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000834F0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v3[53] = a2;
  v3[54] = v4;
  v3[52] = a1;
  v6 = sub_1000A2CF8();
  v3[55] = v6;
  v3[56] = *(v6 - 8);
  v3[57] = swift_task_alloc();
  v7 = sub_1000A2AD8();
  v3[58] = v7;
  v3[59] = *(v7 - 8);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v8 = sub_1000A2A18();
  v3[62] = v8;
  v3[63] = *(v8 - 8);
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v9 = sub_1000A29C8();
  v3[67] = v9;
  v3[68] = *(v9 - 8);
  v3[69] = swift_task_alloc();
  sub_10000275C(&qword_1000C94F8, &qword_1000ACB10);
  v10 = swift_task_alloc();
  v3[70] = v10;
  v11 = sub_1000A2A08();
  v3[71] = v11;
  v3[72] = *(v11 - 8);
  v3[73] = swift_task_alloc();
  v12 = sub_1000A2508();
  v3[74] = v12;
  v3[75] = *(v12 - 8);
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v13 = swift_task_alloc();
  v3[78] = v13;
  *v13 = v3;
  v13[1] = sub_100083838;

  return sub_100085120(v10, v4, a2);
}

uint64_t sub_100083838()
{
  v2 = *v1;

  v3 = *(v2 + 432);
  if (v0)
  {

    v4 = sub_100084ABC;
  }

  else
  {
    v4 = sub_100083970;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100083970()
{
  v1 = *(v0 + 560);
  v2 = sub_10000275C(&qword_1000C9500, &qword_1000ACB20);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_100022154(v1, &qword_1000C94F8, &qword_1000ACB10);

    v3 = *(v0 + 8);

    return v3(0);
  }

  else
  {
    v5 = *(v0 + 608);
    v6 = *(v0 + 592);
    v7 = *(v0 + 576);
    v8 = *(v0 + 568);
    v23 = *(v0 + 584);
    v24 = *(v0 + 416);
    v9 = *(v2 + 48);
    v10 = *(v2 + 64);
    v11 = *(*(v0 + 600) + 32);
    v11(*(v0 + 616), v1, v6);
    v11(v5, v1 + v9, v6);
    (*(v7 + 32))(v23, v1 + v10, v8);
    *(v0 + 392) = &_swiftEmptySetSingleton;
    v12 = *(v24 + 16);
    *(v0 + 632) = v12;
    sub_10000275C(&qword_1000C9508, &qword_1000ACB28);
    sub_1000A3C78(v12);
    if (v12)
    {
      v13 = *(v0 + 416);
      v14 = *(sub_1000A3758() - 8);
      v15 = *(v14 + 80);
      *(v0 + 100) = v15;
      v16 = (v15 + 32) & ~v15;
      *(v0 + 640) = *(v14 + 72);
      *(v0 + 188) = enum case for EnergyKit.SomeEnergyKitEvent.load(_:);
      *(v0 + 276) = enum case for SomeEvent.energyKit(_:);
      *(v0 + 648) = 0;
      v17 = swift_task_alloc();
      *(v0 + 656) = v17;
      *v17 = v0;
      v17[1] = sub_100083D38;
      v18 = *(v0 + 616);
      v19 = *(v0 + 608);
      v20 = *(v0 + 552);
      v21 = *(v0 + 424);

      return sub_10008098C(v20, v13 + v16, v19, v21, v18);
    }

    else
    {
      if (qword_1000C7550 != -1)
      {
        swift_once();
      }

      v22 = qword_1000C95F0;
      *(v0 + 672) = qword_1000C95F0;

      return _swift_task_switch(sub_100084100, v22, 0);
    }
  }
}

uint64_t sub_100083D38()
{
  v2 = *v1;
  *(*v1 + 664) = v0;

  v3 = *(v2 + 432);
  if (v0)
  {
    v4 = sub_100084C20;
  }

  else
  {
    v4 = sub_100083E64;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100083E64()
{
  v1 = *(v0 + 276);
  v2 = *(v0 + 188);
  v21 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v7 = *(v0 + 504);
  v8 = *(v0 + 512);
  v9 = *(v0 + 496);
  (*(v3 + 16))(v5);
  v10 = sub_1000A2728();
  (*(*(v10 - 8) + 104))(v5, v2, v10);
  (*(v7 + 104))(v5, v1, v9);
  (*(v7 + 16))(v8, v5, v9);
  sub_100095A54(v6, v8);
  v11 = *(v7 + 8);
  v11(v6, v9);
  v11(v5, v9);
  (*(v3 + 8))(v21, v4);
  v12 = *(v0 + 648) + 1;
  if (v12 == *(v0 + 632))
  {
    if (qword_1000C7550 != -1)
    {
      swift_once();
    }

    v13 = qword_1000C95F0;
    *(v0 + 672) = qword_1000C95F0;

    return _swift_task_switch(sub_100084100, v13, 0);
  }

  else
  {
    *(v0 + 648) = v12;
    v14 = *(v0 + 416) + ((*(v0 + 100) + 32) & ~*(v0 + 100)) + *(v0 + 640) * v12;
    v15 = swift_task_alloc();
    *(v0 + 656) = v15;
    *v15 = v0;
    v15[1] = sub_100083D38;
    v16 = *(v0 + 616);
    v17 = *(v0 + 608);
    v18 = *(v0 + 552);
    v19 = *(v0 + 424);

    return sub_10008098C(v18, v14, v17, v19, v16);
  }
}

uint64_t sub_100084100()
{
  v1 = v0[84];
  v2 = v0[54];
  v0[85] = *(v1 + 112);
  v0[86] = *(v1 + 120);

  return _swift_task_switch(sub_100084184, v2, 0);
}

uint64_t sub_100084184()
{
  v53 = v0;
  v1 = *(v0 + 680);
  v2 = *(v0 + 392);
  *(v0 + 696) = v2;
  v3 = *(v2 + 16);
  *(v0 + 104) = v1;
  v4 = *(v0 + 688);
  *(v0 + 192) = v1;
  LOBYTE(v52) = 0;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 200) = v4;
  *(v0 + 224) = 2;
  *(v0 + 232) = 0;
  *(v0 + 240) = 1;
  *(v0 + 248) = 0;
  *(v0 + 256) = 1;
  *(v0 + 264) = v3;
  *(v0 + 272) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 112) = v4;
  *(v0 + 136) = 2;
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 176) = v3;
  *(v0 + 184) = 0;
  sub_100086114(v0 + 192, v0 + 280);
  sub_100086170(v0 + 104);
  type metadata accessor for EKSAnalyticsEvent();
  v5 = swift_allocObject();
  *(v5 + 24) = xmmword_1000ACA50;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 104) = 0;
  *(v5 + 16) = 3;
  *(v0 + 96) = 0;
  *(v0 + 48) = *(v5 + 56);
  *(v0 + 64) = *(v5 + 72);
  *(v0 + 80) = *(v5 + 88);
  *(v0 + 16) = *(v5 + 24);
  *(v0 + 32) = *(v5 + 40);
  v6 = *(v0 + 192);
  *(v5 + 40) = *(v0 + 208);
  *(v5 + 24) = v6;
  v7 = *(v0 + 224);
  v8 = *(v0 + 240);
  v9 = *(v0 + 256);
  *(v5 + 104) = *(v0 + 272);
  *(v5 + 88) = v9;
  *(v5 + 72) = v8;
  *(v5 + 56) = v7;
  sub_100022154(v0 + 16, &qword_1000C8830, &unk_1000AC300);
  sub_10004151C(v5, v10, v11);

  if (!*(v2 + 16))
  {
    goto LABEL_21;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v12 = sub_1000A3538();
  sub_100001E38(v12, qword_1000C96B8);

  v13 = sub_1000A3518();
  v14 = sub_1000A3CA8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(v2 + 16);

    _os_log_impl(&_mh_execute_header, v13, v14, "[LoadEventManager] Uploading %ld Load Events", v15, 0xCu);
  }

  else
  {
  }

  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 480);
  v16 = *(v0 + 488);
  v18 = *(v0 + 464);
  v19 = *(v0 + 472);
  v20 = sub_100001E38(v18, qword_1000C95F8);
  swift_beginAccess();
  (*(v19 + 16))(v16, v20, v18);
  sub_1000A2A58();
  sub_1000863E4(&qword_1000C9510, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
  sub_1000A3B28();
  sub_1000A3B28();
  v21 = *(v19 + 8);
  v21(v17, v18);
  v21(v16, v18);
  if (*(v0 + 400) == *(v0 + 408) && (sub_1000A2D18() & 1) != 0)
  {
    v22 = sub_1000A3518();
    v23 = sub_1000A3CC8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "[LoadEventManager] Mocking enabled. Skip submission";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v22, v23, v25, v24, 2u);

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v27 = *(v0 + 448);
  v26 = *(v0 + 456);
  v28 = *(v0 + 440);
  (*(v27 + 104))(v26, enum case for EnergyKitFeatures.eventHistory2025(_:), v28);
  v29 = sub_1000A2CE8();
  (*(v27 + 8))(v26, v28);
  if ((v29 & 1) == 0)
  {
LABEL_17:
    v22 = sub_1000A3518();
    v23 = sub_1000A3CC8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "[LoadEventManager] Feature Disabled. Skip submission";
      goto LABEL_19;
    }

LABEL_20:

LABEL_21:
    v35 = *(v0 + 632) - *(*(v0 + 696) + 16);
    if (v35 < 1)
    {
    }

    else
    {
      v36 = qword_1000C7570;

      if (v36 != -1)
      {
        swift_once();
      }

      v37 = sub_1000A3538();
      sub_100001E38(v37, qword_1000C96B8);
      v38 = sub_1000A3518();
      v39 = sub_1000A3CC8();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134217984;
        *(v40 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v38, v39, "[LoadEventManager] Failed to process %ld events", v40, 0xCu);
      }
    }

    v41 = *(v0 + 696);
    v42 = *(v0 + 616);
    v43 = *(v0 + 608);
    v44 = *(v0 + 600);
    v45 = *(v0 + 592);
    (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
    v46 = *(v44 + 8);
    v46(v43, v45);
    v46(v42, v45);

    v51 = *(v41 + 16);

    v47 = *(v0 + 8);

    return v47(v51);
  }

  v30 = *(v2 + 16);
  if (v30)
  {
    v31 = *(v0 + 504);
    v32 = sub_100065850(*(v2 + 16), 0);
    v33 = sub_100065AF4(&v52, &v32[(*(v31 + 80) + 32) & ~*(v31 + 80)], v30, v2);
    v34 = v52;

    sub_100067318(v34);
    if (v33 != v30)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    v32 = &_swiftEmptyArrayStorage;
  }

  *(v0 + 704) = v32;
  v49 = swift_task_alloc();
  *(v0 + 712) = v49;
  *v49 = v0;
  v49[1] = sub_100084960;
  v50 = *(v0 + 584);

  return static EventManager.writeEvents(_:scope:)(v32, v50);
}

uint64_t sub_100084960()
{
  v2 = *v1;

  v3 = *(v2 + 432);
  if (v0)
  {

    v4 = sub_100084ECC;
  }

  else
  {

    v4 = sub_1000864FC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100084ABC()
{
  v1 = *(v0 + 560);
  v2 = sub_10000275C(&qword_1000C9500, &qword_1000ACB20);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_100022154(*(v0 + 560), &qword_1000C94F8, &qword_1000ACB10);

  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_100084C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  sub_100001E38(v4, qword_1000C96B8);
  swift_errorRetain();
  v5 = sub_1000A3518();
  v6 = sub_1000A3CC8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "[LoadEventManager] Failed to process event %@", v7, 0xCu);
    sub_100022154(v8, &unk_1000C7740, &qword_1000AB610);
  }

  else
  {
  }

  v10 = *(v3 + 648) + 1;
  if (v10 == *(v3 + 632))
  {
    if (qword_1000C7550 != -1)
    {
      swift_once();
    }

    v11 = qword_1000C95F0;
    *(v3 + 672) = qword_1000C95F0;

    return _swift_task_switch(sub_100084100, v11, 0);
  }

  else
  {
    *(v3 + 648) = v10;
    v12 = *(v3 + 416) + ((*(v3 + 100) + 32) & ~*(v3 + 100)) + *(v3 + 640) * v10;
    v13 = swift_task_alloc();
    *(v3 + 656) = v13;
    *v13 = v3;
    v13[1] = sub_100083D38;
    v14 = *(v3 + 616);
    v15 = *(v3 + 608);
    v16 = *(v3 + 552);
    v17 = *(v3 + 424);

    return sub_10008098C(v16, v12, v15, v17, v14);
  }
}

uint64_t sub_100084ECC()
{
  v1 = v0[79] - *(v0[87] + 16);
  if (v1 < 1)
  {
  }

  else
  {
    v2 = qword_1000C7570;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = sub_1000A3538();
    sub_100001E38(v3, qword_1000C96B8);
    v4 = sub_1000A3518();
    v5 = sub_1000A3CC8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v1;
      _os_log_impl(&_mh_execute_header, v4, v5, "[LoadEventManager] Failed to process %ld events", v6, 0xCu);
    }
  }

  v7 = v0[87];
  v8 = v0[77];
  v9 = v0[76];
  v10 = v0[75];
  v11 = v0[74];
  (*(v0[72] + 8))(v0[73], v0[71]);
  v12 = *(v10 + 8);
  v12(v9, v11);
  v12(v8, v11);

  v15 = *(v7 + 16);

  v13 = v0[1];

  return v13(v15);
}

uint64_t sub_100085120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a2;
  v5 = sub_1000A2A08();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  v6 = swift_task_alloc();
  v3[8] = v6;
  v7 = sub_1000A2508();
  v3[9] = v7;
  v3[10] = *(v7 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[13] = v8;
  *v8 = v3;
  v8[1] = sub_1000852CC;

  return sub_1000802E8(v6, a3);
}

uint64_t sub_1000852CC()
{
  v2 = *v1;

  v3 = *(v2 + 32);
  if (v0)
  {

    v4 = sub_100085404;
  }

  else
  {
    v4 = sub_100085620;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100085404()
{
  v1 = v0[8];
  (*(v0[10] + 56))(v1, 1, 1, v0[9]);
  sub_100022154(v1, &qword_1000C92C0, &qword_1000ACB30);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v2 = sub_1000A3538();
  sub_100001E38(v2, qword_1000C96B8);
  v3 = sub_1000A3518();
  v4 = sub_1000A3CC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "[LoadEventManager] Site not found for venue", v5, 2u);
  }

  v6 = sub_1000A3598();
  sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, enum case for EnergyKitError.venueUnavailable(_:), v6);
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100085620()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  (*(v3 + 56))(v4, 0, 1, v2);
  v5 = *(v3 + 32);
  v0[14] = v5;
  v0[15] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v5(v1, v4, v2);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_100085718;
  v7 = v0[12];

  return sub_10007F5D0(v7);
}

uint64_t sub_100085718(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  v5 = *(v3 + 32);
  if (v1)
  {

    v6 = sub_100085858;
  }

  else
  {
    v6 = sub_100085A60;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100085858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  sub_100001E38(v4, qword_1000C96B8);
  v5 = sub_1000A3518();
  v6 = sub_1000A3CC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[LoadEventManager] Home not found for site", v7, 2u);
  }

  v8 = v3[12];
  v9 = v3[9];
  v10 = v3[10];

  v11 = sub_1000A3598();
  sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
  swift_allocError();
  (*(*(v11 - 8) + 104))(v12, enum case for EnergyKitError.venueUnavailable(_:), v11);
  swift_willThrow();
  (*(v10 + 8))(v8, v9);

  v13 = v3[1];

  return v13();
}

uint64_t sub_100085A60()
{
  v1 = *(v0 + 136);
  v2 = [v1 restrictedGuests];
  sub_100086340();
  v3 = sub_1000A3B68();

  v4 = [v1 currentUser];
  *(v0 + 16) = v4;
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 16;
  v6 = sub_1000861C4(sub_10008638C, v5, v3);

  if ((v6 & 1) == 0)
  {
    v18 = *(v0 + 136);
    v19 = [v18 uniqueIdentifier];
    sub_1000A24F8();

    v20 = [v18 currentUser];
    v21 = [v18 owner];
    v22 = v21;
    if (v20)
    {
      v23 = *(v0 + 136);
      if (v21)
      {
        sub_1000A3DA8();

LABEL_14:
        v24 = *(v0 + 112);
        v25 = *(v0 + 88);
        v35 = *(v0 + 96);
        v26 = *(v0 + 72);
        v27 = *(v0 + 48);
        v34 = *(v0 + 56);
        v28 = *(v0 + 40);
        v29 = *(v0 + 24);
        (*(v27 + 104))();
        v30 = sub_10000275C(&qword_1000C9500, &qword_1000ACB20);
        v31 = *(v30 + 48);
        v32 = *(v30 + 64);
        v24(v29, v25, v26);
        v24(v29 + v31, v35, v26);
        (*(v27 + 32))(v29 + v32, v34, v28);
        (*(*(v30 - 8) + 56))(v29, 0, 1, v30);

        v17 = *(v0 + 8);
        goto LABEL_15;
      }

      v22 = v20;
    }

    else
    {

      if (!v22)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_14;
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v7 = sub_1000A3538();
  sub_100001E38(v7, qword_1000C96B8);
  v8 = sub_1000A3518();
  v9 = sub_1000A3CC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "[LoadEventManager] User is restricted guest", v10, 2u);
  }

  v11 = *(v0 + 136);
  v12 = *(v0 + 96);
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);

  v15 = sub_1000A3598();
  sub_1000863E4(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
  swift_allocError();
  (*(*(v15 - 8) + 104))(v16, enum case for EnergyKitError.invalidLoadEvent(_:), v15);
  swift_willThrow();

  (*(v14 + 8))(v12, v13);

  v17 = *(v0 + 8);
LABEL_15:

  return v17();
}

uint64_t sub_100085EF8()
{
  sub_100022154(v0 + OBJC_IVAR____TtC16EnergyKitService16LoadEventManager_lastFetchedGridID, &qword_1000C9538, &qword_1000ACB58);
  sub_100022154(v0 + OBJC_IVAR____TtC16EnergyKitService16LoadEventManager_lastFetchedHome, &qword_1000C9530, &qword_1000ACB50);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for LoadEventManager(uint64_t a1)
{
  result = qword_1000C93E8;
  if (!qword_1000C93E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100085FBC(uint64_t a1)
{
  sub_1000860C0(319, &qword_1000C93F8, &qword_1000C9400, &qword_1000ACAD8);
  if (v1 <= 0x3F)
  {
    sub_1000860C0(319, &qword_1000C9408, &unk_1000C9410, qword_1000ACAE0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000860C0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100018734(a3, a4);
    v5 = sub_1000A3DD8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000861C4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_1000A3EA8();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1000A3EC8();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

unint64_t sub_100086340()
{
  result = qword_1000C9378;
  if (!qword_1000C9378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C9378);
  }

  return result;
}

uint64_t sub_1000863E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008642C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000275C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100086494(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000275C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100086500(uint64_t a1, void *a2)
{
  v3 = sub_100013C5C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_1000866F4(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v6 = a1;
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = sub_1000A3A88();
  v9 = v8;
  v4[4] = v8;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[5] = v11;
  *v11 = v4;
  v11[1] = sub_1000867E8;

  return sub_100089F78(v6, v7, v9);
}

uint64_t sub_1000867E8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_1000A2348();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1000869A4(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v24 = sub_10000275C(&qword_1000C9560, &qword_1000ACC48);
  __chkstk_darwin(*(*(v24 - 8) + 64));
  v25 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v7 = sub_1000A2BA8();
  v8 = *(v7 - 8);
  __chkstk_darwin(*(v8 + 64));
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = *(v8 + 16);
  v23 = v2;
  v13(v10, v2, v7);
  v21 = sub_100093FD4(&qword_1000C9568, &type metadata accessor for GuidanceOptions, &protocol conformance descriptor for GuidanceOptions);
  sub_1000A3E08();
  v14 = v24;
  sub_100093FD4(&qword_1000C9570, &type metadata accessor for GuidanceOptions, &protocol conformance descriptor for GuidanceOptions);
  v22 = a2;
  v15 = sub_1000A3A68();
  v16 = *(v14 + 48);
  *v6 = (v15 & 1) == 0;
  if (v15)
  {
    (*(v8 + 32))(&v6[v16], v12, v7);
  }

  else
  {
    (*(v8 + 8))(v12, v7);
    v17 = v22;
    v13(&v6[v16], v22, v7);
    v13(v10, v17, v7);
    sub_1000A3E28();
  }

  v18 = v25;
  sub_10009401C(v6, v25);
  v19 = *v18;
  (*(v8 + 32))(v26, &v18[*(v14 + 48)], v7);
  return v19;
}

uint64_t sub_100086E3C(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v7 = a2;
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = sub_1000A3A88();
  v10 = v9;
  v5[4] = v9;
  v11 = sub_1000A3A88();
  v13 = v12;
  v5[5] = v12;
  v14 = a5;
  v15 = swift_task_alloc();
  v5[6] = v15;
  *v15 = v5;
  v15[1] = sub_100086F58;

  return sub_10008C340(v8, v10, v7, v11, v13);
}

uint64_t sub_100086F58(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_1000A2348();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1000872C0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1000A3A88();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_1000873A8;

  return sub_100092AA4(v5, v7);
}

uint64_t sub_1000873A8(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100087510(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = sub_1000A2508();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();

  return _swift_task_switch(sub_1000875D0, 0, 0);
}

uint64_t sub_1000875D0()
{
  sub_1000A3AA8();
  *(v0 + 328) = os_transaction_create();

  sub_10003690C(v1, v2, v3);
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v4 = qword_1000C95F0;
  *(v0 + 336) = qword_1000C95F0;

  return _swift_task_switch(sub_1000876D4, v4, 0);
}

uint64_t sub_1000876D4()
{
  *(v0 + 408) = *(*(v0 + 336) + 144);

  return _swift_task_switch(sub_100087744, 0, 0);
}

uint64_t sub_100087744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 408))
  {
    v4 = swift_task_alloc();
    *(v3 + 344) = v4;
    *v4 = v3;
    v4[1] = sub_1000879A0;

    return sub_100047590(0);
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
      _os_log_impl(&_mh_execute_header, v7, v8, "[SiteOperations] Unauthorized", v9, 2u);
    }

    v10 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for EnergyKitError.siteUnavailable(_:), v10);
    swift_willThrow();
    swift_unknownObjectRelease();

    v12 = *(v3 + 8);

    return v12();
  }
}

uint64_t sub_1000879A0(char a1)
{
  *(*v1 + 409) = a1;

  return _swift_task_switch(sub_100087AA0, 0, 0);
}

uint64_t sub_100087AA0()
{
  if (*(v0 + 409) == 1)
  {
    v1 = *(v0 + 296);
    sub_1000A2B08();
    sub_1000A24C8();
    sub_1000A2AF8();

    v2 = sub_1000A3A78();
    *(v0 + 352) = v2;

    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 280;
    *(v0 + 88) = sub_100087C7C;
    v3 = swift_continuation_init();
    *(v0 + 264) = sub_10000275C(&qword_1000C7868, &qword_1000AB7E8);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_100086500;
    *(v0 + 232) = &unk_1000C0458;
    *(v0 + 240) = v3;
    [v1 siteFor:v2 completionHandler:v0 + 208];

    return _swift_continuation_await(v0 + 80);
  }

  else
  {
    v4 = qword_1000C95F0;
    *(v0 + 360) = qword_1000C95F0;

    return _swift_task_switch(sub_100087ED8, v4, 0);
  }
}

uint64_t sub_100087C7C()
{

  return _swift_task_switch(sub_100087D5C, 0, 0);
}

uint64_t sub_100087D5C()
{
  v1 = *(v0 + 280);

  if (v1)
  {
    swift_unknownObjectRelease();

    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    v4 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for EnergyKitError.siteUnavailable(_:), v4);
    swift_willThrow();
    swift_unknownObjectRelease();

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100087ED8()
{
  *(v0 + 368) = *(*(v0 + 360) + 120);

  return _swift_task_switch(sub_100087F50, 0, 0);
}

uint64_t sub_100087F50()
{
  if (v0[46])
  {

    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    v0[47] = qword_1000C96F8;

    v1 = swift_task_alloc();
    v0[48] = v1;
    *v1 = v0;
    v1[1] = sub_100088134;
    v2 = v0[40];
    v3 = v0[36];

    return sub_10006E1D4(v2, v3);
  }

  else
  {
    v5 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for EnergyKitError.invalidApplicationIdentifier(_:), v5);
    swift_willThrow();
    swift_unknownObjectRelease();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100088134()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_100088638;
  }

  else
  {

    v2 = sub_100088250;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100088250(uint64_t a1)
{
  v2 = v1[37];
  sub_1000A24C8();
  v3 = sub_1000A3A78();
  v1[50] = v3;

  v1[2] = v1;
  v1[7] = v1 + 34;
  v1[3] = sub_100088398;
  v4 = swift_continuation_init();
  v1[25] = sub_10000275C(&qword_1000C7868, &qword_1000AB7E8);
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_100086500;
  v1[21] = &unk_1000C0430;
  v1[22] = v4;
  [v2 siteFor:v3 completionHandler:v1 + 18];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_100088398()
{

  return _swift_task_switch(sub_100088478, 0, 0);
}

uint64_t sub_100088478()
{
  v1 = v0[34];
  v2 = v0[50];
  if (v1)
  {
    (*(v0[39] + 8))(v0[40], v0[38]);
    swift_unknownObjectRelease();

    v3 = v0[1];

    return v3(v1);
  }

  else
  {
    v6 = v0[39];
    v5 = v0[40];
    v7 = v0[38];

    v8 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for EnergyKitError.siteUnavailable(_:), v8);
    swift_willThrow();
    (*(v6 + 8))(v5, v7);
    swift_willThrow();
    swift_unknownObjectRelease();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100088638()
{

  swift_willThrow();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100088850(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_1000A2508();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  sub_1000A24F8();
  a3;
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_10008897C;

  return sub_100087510(v7);
}

uint64_t sub_10008897C(void *a1)
{
  v4 = *v2;
  v5 = *v2;

  v6 = v4[6];
  v7 = v4[2];
  (*(v4[4] + 8))(v4[5], v4[3]);

  if (v1)
  {
    v8 = sub_1000A2348();

    (v6)[2](v6, 0, v8);

    _Block_release(v6);
  }

  else
  {
    (v6)[2](v6, a1, 0);
    _Block_release(v6);
  }

  v9 = v5[1];

  return v9();
}

uint64_t sub_100088D04(void *a1, void *aBlock, void *a3, double a4)
{
  v4[2] = a1;
  v4[3] = a3;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a3;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_100088DE8;

  return sub_10009308C(v8, a4);
}

uint64_t sub_100088DE8(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v8 = *v1;

  isa = sub_1000A3A08().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1000890E8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100089190;

  return sub_100093840();
}

uint64_t sub_100089190(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v6 = *v1;

  isa = sub_1000A3B48().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000892E0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100089320()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000153A8;

  return sub_1000890E8(v2);
}

uint64_t sub_1000893CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000153A8;

  return v6();
}

uint64_t sub_1000894B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100014898;

  return v7();
}

uint64_t sub_10008959C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v23 - v10;
  sub_100047188(a3, v23 - v10, &qword_1000C8240, &qword_1000AB688);
  v12 = sub_1000A3BE8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100022154(v11, &qword_1000C8240, &qword_1000AB688);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1000A3BD8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1000A3BA8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1000A3AA8() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100022154(a3, &qword_1000C8240, &qword_1000AB688);

    return v21;
  }

LABEL_8:
  sub_100022154(a3, &qword_1000C8240, &qword_1000AB688);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100089898(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100089990;

  return v6(a1);
}

uint64_t sub_100089990()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100089A88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100089AC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000153A8;

  return sub_100089898(a1, v4);
}

uint64_t sub_100089B78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014898;

  return sub_100089898(a1, v4);
}

unint64_t sub_100089C30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000275C(&unk_1000C9350, &qword_1000ACA00);
    v3 = sub_1000A3F08();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100079BDC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100089D44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000275C(&qword_1000C9578, &qword_1000ACC78);
    v3 = sub_1000A3F08();
    v4 = a1 + 32;

    while (1)
    {
      sub_100047188(v4, &v13, &qword_1000C8558, &qword_1000AC0A8);
      v5 = v13;
      v6 = v14;
      result = sub_100079BDC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000413C4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100089E74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000275C(&qword_1000C93A0, &unk_1000AC520);
    v3 = sub_1000A3F08();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100079BDC(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100089F78(__int16 a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 416) = a2;
  *(v3 + 424) = a3;
  *(v3 + 102) = a1;
  v4 = sub_1000A2BA8();
  *(v3 + 432) = v4;
  *(v3 + 440) = *(v4 - 8);
  *(v3 + 448) = swift_task_alloc();
  v5 = sub_1000A2C38();
  *(v3 + 456) = v5;
  *(v3 + 464) = *(v5 - 8);
  *(v3 + 472) = swift_task_alloc();
  *(v3 + 480) = swift_task_alloc();
  sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  *(v3 + 488) = swift_task_alloc();
  v6 = sub_1000A2508();
  *(v3 + 496) = v6;
  *(v3 + 504) = *(v6 - 8);
  *(v3 + 512) = swift_task_alloc();
  *(v3 + 520) = swift_task_alloc();
  *(v3 + 528) = swift_task_alloc();
  v7 = sub_1000A2688();
  *(v3 + 536) = v7;
  *(v3 + 544) = *(v7 - 8);
  *(v3 + 552) = swift_task_alloc();
  *(v3 + 560) = swift_task_alloc();
  v8 = sub_1000A2AD8();
  *(v3 + 568) = v8;
  *(v3 + 576) = *(v8 - 8);
  *(v3 + 584) = swift_task_alloc();
  *(v3 + 592) = swift_task_alloc();
  v9 = sub_1000A25F8();
  *(v3 + 600) = v9;
  *(v3 + 608) = *(v9 - 8);
  *(v3 + 616) = swift_task_alloc();
  sub_10000275C(&qword_1000C9540, &qword_1000ACC40);
  *(v3 + 624) = swift_task_alloc();
  v10 = sub_1000A2B48();
  *(v3 + 632) = v10;
  *(v3 + 640) = *(v10 - 8);
  *(v3 + 648) = swift_task_alloc();
  *(v3 + 656) = swift_task_alloc();

  return _swift_task_switch(sub_10008A31C, 0, 0);
}

uint64_t sub_10008A31C()
{
  sub_1000A3AA8();
  v0[83] = os_transaction_create();

  sub_10003690C(v1, v2, v3);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  v0[84] = sub_100001E38(v4, qword_1000C96B8);
  v5 = sub_1000A3518();
  v6 = sub_1000A3CB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Connection established to EnergyKit API", v7, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v8 = qword_1000C95F0;
  v0[85] = qword_1000C95F0;

  return _swift_task_switch(sub_10008A4D8, v8, 0);
}

uint64_t sub_10008A4D8()
{
  *(v0 + 97) = *(*(v0 + 680) + 144);

  v1 = swift_task_alloc();
  *(v0 + 688) = v1;
  *v1 = v0;
  v1[1] = sub_10008A58C;

  return sub_1000472A8(0);
}

uint64_t sub_10008A58C(char a1)
{
  v2 = *v1;
  *(v2 + 400) = a1;
  *(v2 + 392) = v1;

  return _swift_task_switch(sub_10008A690, 0, 0);
}

uint64_t sub_10008A690()
{
  v1 = qword_1000C95F0;
  *(v0 + 696) = qword_1000C95F0;

  return _swift_task_switch(sub_10008A708, v1, 0);
}

uint64_t sub_10008A708()
{
  v1 = v0[87];
  v0[88] = *(v1 + 112);
  v0[89] = *(v1 + 120);

  return _swift_task_switch(sub_10008A788, 0, 0);
}

uint64_t sub_10008A788()
{
  v41 = v0;
  if (!*(v0 + 712))
  {
    v1 = &enum case for EnergyKitError.invalidApplicationIdentifier(_:);
    goto LABEL_6;
  }

  if ((*(v0 + 97) & 1) == 0 && !*(v0 + 400))
  {

    v1 = &enum case for EnergyKitError.guidanceUnavailable(_:);
LABEL_6:
    v2 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *v1, v2);
    swift_willThrow();
    swift_unknownObjectRelease();

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = sub_1000A3518();
  v7 = sub_1000A3CB8();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 416);
    v8 = *(v0 + 424);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v40 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1000954AC(v9, v8, &v40);
    _os_log_impl(&_mh_execute_header, v6, v7, "[SiteOperations] Location: %s", v10, 0xCu);
    sub_10000F7B8(v11);
  }

  v12 = *(v0 + 640);
  v13 = *(v0 + 632);
  v14 = *(v0 + 624);
  sub_1000A2B28();
  v15 = *(v12 + 48);
  v16 = v15(v14, 1, v13);
  v17 = *(v0 + 656);
  v18 = *(v0 + 640);
  v19 = *(v0 + 632);
  v20 = *(v0 + 624);
  if (v16 == 1)
  {
    v21 = *(v18 + 104);
    v21(v17, enum case for GuidanceType.shift(_:), *(v0 + 632));
    if (v15(v20, 1, v19) != 1)
    {
      sub_100022154(*(v0 + 624), &qword_1000C9540, &qword_1000ACC40);
    }
  }

  else
  {
    (*(v18 + 32))(v17, *(v0 + 624), *(v0 + 632));
    v21 = *(v18 + 104);
  }

  v22 = *(v0 + 648);
  v23 = *(v0 + 640);
  v24 = *(v0 + 632);
  v25 = *(v0 + 616);
  v26 = *(v0 + 608);
  v27 = *(v0 + 600);
  v21(v22, enum case for GuidanceType.reduce(_:), v24);
  sub_100093FD4(&qword_1000C9550, &type metadata accessor for GuidanceType, &protocol conformance descriptor for GuidanceType);
  sub_1000A3B28();
  sub_1000A3B28();
  v28 = *(v23 + 8);
  *(v0 + 720) = v28;
  *(v0 + 728) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v22, v24);
  if (*(v0 + 98) == *(v0 + 100))
  {
    v29 = &enum case for HSGuidanceType.reduce(_:);
  }

  else
  {
    v29 = &enum case for HSGuidanceType.shift(_:);
  }

  (*(v26 + 104))(v25, *v29, v27);
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 592);
  v31 = *(v0 + 584);
  v32 = *(v0 + 576);
  v33 = *(v0 + 568);
  v34 = sub_100001E38(v33, qword_1000C95F8);
  swift_beginAccess();
  (*(v32 + 16))(v30, v34, v33);
  sub_1000A2A58();
  sub_100093FD4(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
  LOBYTE(v34) = sub_1000A3DF8();
  v35 = *(v32 + 8);
  v35(v31, v33);
  v35(v30, v33);
  if ((v34 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
  {
    sub_1000A2A38();
    *(v0 + 776) = sub_1000A2A28();
    v39 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
    v38 = swift_task_alloc();
    *(v0 + 784) = v38;
    *v38 = v0;
    v38[1] = sub_10008B760;
    v44 = 1;
    v43 = 0xE000000000000000;

    __asm { BR              X8 }
  }

  v36 = swift_task_alloc();
  *(v0 + 736) = v36;
  *v36 = v0;
  v36[1] = sub_10008AEA4;
  v37 = *(v0 + 616);

  return sub_1000688B0(v37);
}

uint64_t sub_10008AEA4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    v6[96] = v2;
    (*(v6[76] + 8))(v6[77], v6[75]);

    v7 = sub_10008B474;
  }

  else
  {
    v6[93] = 0;
    v8 = v6[77];
    v9 = v6[76];
    v10 = v6[75];
    v6[94] = a2;
    v6[95] = a1;
    (*(v9 + 8))(v8, v10);
    v7 = sub_10008B018;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10008B018()
{
  v1 = *(v0 + 744);
  sub_1000A2208();
  swift_allocObject();
  sub_1000A21F8();
  sub_100093FD4(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast, &protocol conformance descriptor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v1)
  {
    v2 = *(v0 + 760);
    v3 = *(v0 + 752);
    (*(v0 + 720))(*(v0 + 656), *(v0 + 632));

    sub_10003228C(v2, v3);

    swift_errorRetain();
    v4 = sub_1000A3518();
    v5 = sub_1000A3CC8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "[SiteOperations] Grid Fetch Failed: %@", v6, 0xCu);
      sub_100022154(v7, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }

    v15 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, enum case for EnergyKitError.guidanceUnavailable(_:), v15);
    swift_willThrow();
    swift_unknownObjectRelease();

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {

    sub_1000A2A38();
    *(v0 + 800) = sub_1000A2A28();
    sub_1000A2D28();
    v18 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
    v9 = swift_task_alloc();
    *(v0 + 808) = v9;
    *v9 = v0;
    v9[1] = sub_10008B958;
    v10 = *(v0 + 520);
    v11 = *(v0 + 488);
    v12 = *(v0 + 416);
    v13 = *(v0 + 424);

    return v18(v11, v12, v13, v10);
  }
}

uint64_t sub_10008B474()
{
  (*(v0 + 720))(*(v0 + 656), *(v0 + 632));
  swift_errorRetain();
  v1 = sub_1000A3518();
  v2 = sub_1000A3CC8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[SiteOperations] Grid Fetch Failed: %@", v3, 0xCu);
    sub_100022154(v4, &unk_1000C7740, &qword_1000AB610);
  }

  else
  {
  }

  v6 = sub_1000A2B18();
  sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, enum case for EnergyKitError.guidanceUnavailable(_:), v6);
  swift_willThrow();
  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10008B760(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 792) = v2;

  if (v2)
  {
    v7 = sub_10008B8C0;
  }

  else
  {

    v6[93] = 0;
    v8 = v6[77];
    v9 = v6[76];
    v10 = v6[75];
    v6[94] = a2;
    v6[95] = a1;
    (*(v9 + 8))(v8, v10);
    v7 = sub_10008B018;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10008B8C0()
{

  v0[96] = v0[99];
  (*(v0[76] + 8))(v0[77], v0[75]);

  return _swift_task_switch(sub_10008B474, 0, 0);
}

uint64_t sub_10008B958()
{
  v1 = *v0;
  v2 = *(*v0 + 520);
  v3 = *(*v0 + 504);
  v4 = *(*v0 + 496);

  v5 = *(v3 + 8);
  *(v1 + 816) = v5;
  *(v1 + 824) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return _swift_task_switch(sub_10008BAE4, 0, 0);
}

uint64_t sub_10008BAE4()
{
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 760);
    v5 = *(v0 + 752);
    v57 = *(v0 + 720);
    v56 = *(v0 + 656);
    v6 = *(v0 + 632);
    v7 = *(v0 + 560);
    v8 = *(v0 + 544);
    v9 = *(v0 + 536);

    sub_100022154(v3, &qword_1000C92C0, &qword_1000ACB30);
    v10 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    v59 = enum case for EnergyKitError.guidanceUnavailable(_:);
    v58 = *(*(v10 - 8) + 104);
    v58(v11);
    swift_willThrow();
    sub_10003228C(v4, v5);
    (*(v8 + 8))(v7, v9);
    v57(v56, v6);
    swift_errorRetain();
    v12 = sub_1000A3518();
    v13 = sub_1000A3CC8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "[SiteOperations] Grid Fetch Failed: %@", v14, 0xCu);
      sub_100022154(v15, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }

    swift_allocError();
    (v58)(v40, v59, v10);
    swift_willThrow();
    swift_unknownObjectRelease();

    v41 = *(v0 + 8);

    return v41();
  }

  else
  {
    v52 = *(v0 + 760);
    v53 = *(v0 + 816);
    v55 = *(v0 + 720);
    v44 = *(v0 + 704);
    v45 = *(v0 + 712);
    v51 = *(v0 + 752);
    v61 = *(v0 + 656);
    v54 = *(v0 + 632);
    v17 = *(v0 + 560);
    v18 = *(v0 + 552);
    v19 = *(v0 + 544);
    v50 = v19;
    v20 = *(v0 + 536);
    v49 = v20;
    v21 = *(v0 + 528);
    v60 = *(v0 + 512);
    v42 = *(v0 + 480);
    v46 = *(v0 + 464);
    v47 = *(v0 + 456);
    v48 = *(v0 + 472);
    v22 = *(v0 + 448);
    v23 = v3;
    v43 = *(v0 + 440);
    v24 = *(v0 + 432);
    (*(v1 + 32))(v21, v23, v2);
    (*(v19 + 16))(v18, v17, v20);
    sub_1000A2D28();
    (*(v1 + 16))(v60, v21, v2);
    *(v0 + 408) = 0;
    sub_100093FD4(&qword_1000C9548, &type metadata accessor for GuidanceOptions, &protocol conformance descriptor for GuidanceOptions);
    sub_1000A3FA8();
    sub_1000A2C18();
    v25 = sub_1000A2B38();
    sub_1000A2C28();
    v26 = sub_1000A2B98();
    (*(v43 + 8))(v22, v24);
    *(v0 + 192) = v44;
    *(v0 + 208) = 0;
    *(v0 + 216) = 0;
    *(v0 + 200) = v45;
    *(v0 + 224) = 2;
    *(v0 + 232) = v25;
    *(v0 + 240) = 0;
    *(v0 + 248) = v26;
    *(v0 + 256) = 0;
    *(v0 + 264) = 0;
    *(v0 + 272) = 1;
    *(v0 + 104) = v44;
    *(v0 + 120) = 0;
    *(v0 + 128) = 0;
    *(v0 + 112) = v45;
    *(v0 + 136) = 2;
    *(v0 + 144) = v25;
    *(v0 + 152) = 0;
    *(v0 + 160) = v26;
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 184) = 1;
    sub_100086114(v0 + 192, v0 + 280);
    sub_100086170(v0 + 104);
    type metadata accessor for EKSAnalyticsEvent();
    v27 = swift_allocObject();
    *(v27 + 24) = xmmword_1000ACA50;
    *(v27 + 56) = 0u;
    *(v27 + 72) = 0u;
    *(v27 + 88) = 0u;
    *(v27 + 40) = 0u;
    *(v27 + 104) = 0;
    *(v27 + 16) = 1;
    *(v0 + 96) = 0;
    v28 = *(v27 + 72);
    *(v0 + 48) = *(v27 + 56);
    *(v0 + 64) = v28;
    *(v0 + 80) = *(v27 + 88);
    v29 = *(v27 + 40);
    *(v0 + 16) = *(v27 + 24);
    *(v0 + 32) = v29;
    v30 = *(v0 + 192);
    v31 = *(v0 + 224);
    *(v27 + 40) = *(v0 + 208);
    *(v27 + 24) = v30;
    v32 = *(v0 + 240);
    v33 = *(v0 + 256);
    *(v27 + 104) = *(v0 + 272);
    *(v27 + 88) = v33;
    *(v27 + 72) = v32;
    *(v27 + 56) = v31;
    sub_100022154(v0 + 16, &qword_1000C8830, &unk_1000AC300);
    sub_10004151C(v27, v34, v35);

    (*(v46 + 16))(v48, v42, v47);
    v36 = objc_allocWithZone(sub_1000A2BE8());
    v37 = sub_1000A2BD8();
    swift_unknownObjectRelease();
    sub_10003228C(v52, v51);
    (*(v46 + 8))(v42, v47);
    v53(v21, v2);
    (*(v50 + 8))(v17, v49);
    v55(v61, v54);

    v38 = *(v0 + 8);

    return v38(v37);
  }
}

uint64_t sub_10008C340(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 688) = a5;
  *(v5 + 680) = a4;
  *(v5 + 278) = a3;
  *(v5 + 672) = a2;
  *(v5 + 664) = a1;
  v6 = sub_1000A2C38();
  *(v5 + 696) = v6;
  *(v5 + 704) = *(v6 - 8);
  *(v5 + 712) = swift_task_alloc();
  *(v5 + 720) = swift_task_alloc();
  sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  *(v5 + 728) = swift_task_alloc();
  *(v5 + 736) = swift_task_alloc();
  *(v5 + 744) = swift_task_alloc();
  v7 = sub_1000A2508();
  *(v5 + 752) = v7;
  *(v5 + 760) = *(v7 - 8);
  *(v5 + 768) = swift_task_alloc();
  *(v5 + 776) = swift_task_alloc();
  v8 = sub_1000A2688();
  *(v5 + 784) = v8;
  *(v5 + 792) = *(v8 - 8);
  *(v5 + 800) = swift_task_alloc();
  *(v5 + 808) = swift_task_alloc();
  v9 = sub_1000A25F8();
  *(v5 + 816) = v9;
  *(v5 + 824) = *(v9 - 8);
  *(v5 + 832) = swift_task_alloc();
  *(v5 + 840) = swift_task_alloc();
  *(v5 + 848) = swift_task_alloc();
  *(v5 + 856) = swift_task_alloc();
  v10 = sub_1000A2AD8();
  *(v5 + 864) = v10;
  *(v5 + 872) = *(v10 - 8);
  *(v5 + 880) = swift_task_alloc();
  *(v5 + 888) = swift_task_alloc();
  v11 = sub_1000A2BA8();
  *(v5 + 896) = v11;
  *(v5 + 904) = *(v11 - 8);
  *(v5 + 912) = swift_task_alloc();
  *(v5 + 920) = swift_task_alloc();
  *(v5 + 928) = swift_task_alloc();
  sub_10000275C(&qword_1000C9540, &qword_1000ACC40);
  *(v5 + 936) = swift_task_alloc();
  v12 = sub_1000A2B48();
  *(v5 + 944) = v12;
  *(v5 + 952) = *(v12 - 8);
  *(v5 + 960) = swift_task_alloc();
  *(v5 + 968) = swift_task_alloc();

  return _swift_task_switch(sub_10008C738, 0, 0);
}

uint64_t sub_10008C738()
{
  sub_1000A3AA8();
  v0[122] = os_transaction_create();

  sub_10003690C(v1, v2, v3);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  v0[123] = sub_100001E38(v4, qword_1000C96B8);
  v5 = sub_1000A3518();
  v6 = sub_1000A3CB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Connection established to EnergyKit API", v7, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v8 = qword_1000C95F0;
  v0[124] = qword_1000C95F0;

  return _swift_task_switch(sub_10008C8F4, v8, 0);
}

uint64_t sub_10008C8F4()
{
  *(v0 + 97) = *(*(v0 + 992) + 144);

  v1 = swift_task_alloc();
  *(v0 + 1000) = v1;
  *v1 = v0;
  v1[1] = sub_10008C9A8;

  return sub_1000472A8(0);
}

uint64_t sub_10008C9A8(char a1)
{
  v2 = *v1;
  *(v2 + 648) = a1;
  *(v2 + 640) = v1;

  return _swift_task_switch(sub_10008CAAC, 0, 0);
}

uint64_t sub_10008CAAC()
{
  v1 = qword_1000C95F0;
  *(v0 + 1008) = qword_1000C95F0;

  return _swift_task_switch(sub_10008CB24, v1, 0);
}

uint64_t sub_10008CB24()
{
  v1 = v0[126];
  v0[127] = *(v1 + 112);
  v0[128] = *(v1 + 120);

  return _swift_task_switch(sub_10008CBA4, 0, 0);
}

uint64_t sub_10008CBA4()
{
  if (!*(v0 + 1024))
  {
    v1 = &enum case for EnergyKitError.invalidApplicationIdentifier(_:);
    goto LABEL_6;
  }

  if ((*(v0 + 97) & 1) == 0 && !*(v0 + 648))
  {

    v1 = &enum case for EnergyKitError.guidanceUnavailable(_:);
LABEL_6:
    v2 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *v1, v2);
    swift_willThrow();
    swift_unknownObjectRelease();

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = swift_task_alloc();
  *(v0 + 1032) = v6;
  *v6 = v0;
  v6[1] = sub_10008CEA4;
  v7 = *(v0 + 672);
  v8 = *(v0 + 664);

  return sub_100066308(v8, v7, 0);
}

uint64_t sub_10008CEA4(uint64_t a1)
{
  *(*v1 + 1040) = a1;

  return _swift_task_switch(sub_10008CFA4, 0, 0);
}

uint64_t sub_10008CFA4()
{
  v63 = v0;

  v1 = sub_1000A3518();
  v2 = sub_1000A3CB8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 688);
    v4 = *(v0 + 680);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v62 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000954AC(v4, v3, &v62);
    _os_log_impl(&_mh_execute_header, v1, v2, "[SiteOperations] Location: %s", v5, 0xCu);
    sub_10000F7B8(v6);
  }

  v7 = *(v0 + 952);
  v8 = *(v0 + 944);
  v9 = *(v0 + 936);
  sub_1000A2B28();
  v10 = *(v7 + 48);
  v11 = v10(v9, 1, v8);
  v12 = *(v0 + 968);
  v13 = *(v0 + 952);
  v14 = *(v0 + 944);
  v15 = *(v0 + 936);
  if (v11 == 1)
  {
    (*(v13 + 104))(v12, enum case for GuidanceType.reduce(_:), *(v0 + 944));
    if (v10(v15, 1, v14) != 1)
    {
      sub_100022154(*(v0 + 936), &qword_1000C9540, &qword_1000ACC40);
    }
  }

  else
  {
    (*(v13 + 32))(v12, *(v0 + 936), *(v0 + 944));
  }

  v16 = *(v0 + 1040);
  *(v0 + 656) = 0;
  sub_100093FD4(&qword_1000C9548, &type metadata accessor for GuidanceOptions, &protocol conformance descriptor for GuidanceOptions);
  sub_1000A3FA8();
  if (v16)
  {
    v17 = *(v0 + 1040);
    v18 = sub_1000A2D58();
    v20 = v19;

    *(v0 + 1048) = v18;
    *(v0 + 1056) = v20;
    if (v20)
    {
      v21 = v17;
      v22 = sub_1000A2DF8();
      v24 = v23;

      *(v0 + 1064) = v22;
      *(v0 + 1072) = v24;
      if (v24)
      {
        v25 = v21;
        v26 = sub_1000A2DE8();
        v28 = v27;

        *(v0 + 1080) = v26;
        *(v0 + 1088) = v28;
        if (v28)
        {
          v29 = v25;
          v60 = sub_1000A2D98();
          v31 = v30;

          v32 = HIBYTE(v20) & 0xF;
          if ((v20 & 0x2000000000000000) == 0)
          {
            v32 = v18 & 0xFFFFFFFFFFFFLL;
          }

          if (!v32)
          {
            goto LABEL_27;
          }

          v33 = HIBYTE(v24) & 0xF;
          if ((v24 & 0x2000000000000000) == 0)
          {
            v33 = v22 & 0xFFFFFFFFFFFFLL;
          }

          if (v33)
          {
            if ((v28 & 0x2000000000000000) != 0)
            {
              v34 = HIBYTE(v28) & 0xF;
            }

            else
            {
              v34 = v26 & 0xFFFFFFFFFFFFLL;
            }

            if (v34)
            {
              v35 = HIBYTE(v31) & 0xF;
              if ((v31 & 0x2000000000000000) == 0)
              {
                v35 = v60 & 0xFFFFFFFFFFFFLL;
              }

              if (!v35)
              {
                v36 = *(v0 + 920);
                v37 = *(v0 + 912);
                v38 = *(v0 + 904);
                v39 = *(v0 + 896);
                sub_1000A2B78();
                sub_1000869A4(v36, v37);
                v40 = *(v38 + 8);
                *(v0 + 1096) = v40;
                *(v0 + 1104) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                v40(v37, v39);
                v40(v36, v39);
                v41 = qword_1000C95F0;
                *(v0 + 1112) = qword_1000C95F0;

                return _swift_task_switch(sub_10008D720, v41, 0);
              }
            }
          }

          else
          {
LABEL_27:
          }
        }
      }
    }
  }

  v42 = *(v0 + 960);
  v43 = *(v0 + 952);
  v44 = *(v0 + 944);
  v45 = *(v0 + 832);
  v46 = *(v0 + 824);
  v47 = *(v0 + 816);
  (*(v43 + 104))(v42, enum case for GuidanceType.reduce(_:), v44);
  sub_100093FD4(&qword_1000C9550, &type metadata accessor for GuidanceType, &protocol conformance descriptor for GuidanceType);
  sub_1000A3B28();
  sub_1000A3B28();
  v48 = *(v43 + 8);
  *(v0 + 1336) = v48;
  *(v0 + 1344) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v48(v42, v44);
  if (*(v0 + 98) == *(v0 + 100))
  {
    v49 = &enum case for HSGuidanceType.reduce(_:);
  }

  else
  {
    v49 = &enum case for HSGuidanceType.shift(_:);
  }

  (*(v46 + 104))(v45, *v49, v47);
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v50 = *(v0 + 888);
  v51 = *(v0 + 880);
  v52 = *(v0 + 872);
  v53 = *(v0 + 864);
  v54 = sub_100001E38(v53, qword_1000C95F8);
  swift_beginAccess();
  (*(v52 + 16))(v50, v54, v53);
  sub_1000A2A58();
  sub_100093FD4(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
  LOBYTE(v54) = sub_1000A3DF8();
  v55 = *(v52 + 8);
  v55(v51, v53);
  v55(v50, v53);
  if ((v54 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
  {
    sub_1000A2A38();
    *(v0 + 1376) = sub_1000A2A28();
    v61 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
    v58 = swift_task_alloc();
    *(v0 + 1384) = v58;
    *v58 = v0;
    v58[1] = sub_100091A10;
    v66 = 1;
    v65 = 0xE000000000000000;

    __asm { BR              X8 }
  }

  v56 = swift_task_alloc();
  *(v0 + 1352) = v56;
  *v56 = v0;
  v56[1] = sub_100090FC0;
  v57 = *(v0 + 832);

  return sub_1000688B0(v57);
}

uint64_t sub_10008D720(uint64_t a1)
{
  if ((sub_1000A2D18() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 888);
  v3 = *(v1 + 880);
  v4 = *(v1 + 872);
  v5 = *(v1 + 864);
  v6 = sub_100001E38(v5, qword_1000C95F8);
  swift_beginAccess();
  (*(v4 + 16))(v2, v6, v5);
  sub_1000A2AA8();
  sub_100093FD4(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
  LOBYTE(v6) = sub_1000A3DF8();
  v7 = *(v4 + 8);
  v7(v3, v5);
  v7(v2, v5);
  if (v6)
  {

    v8 = sub_10008DF3C;
  }

  else
  {
LABEL_6:
    *(v1 + 185) = *(*(v1 + 1112) + 145);

    v8 = sub_10008D8C4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10008D8C4()
{
  v1 = *(v0 + 185);
  if (*(v0 + 1016) == 0x6C7070612E6D6F63 && *(v0 + 1024) == 0xEF64656D6F682E65)
  {
    v3 = 1;
    if ((sub_1000A2D18() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = sub_1000A3F48();
    if ((sub_1000A2D18() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v37 = v1;
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 888);
  v5 = *(v0 + 880);
  v6 = *(v0 + 872);
  v7 = *(v0 + 864);
  v8 = sub_100001E38(v7, qword_1000C95F8);
  swift_beginAccess();
  v9 = *(v6 + 16);
  v9(v4, v8, v7);
  sub_1000A2A48();
  sub_100093FD4(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
  v36 = sub_1000A3DF8();
  v10 = *(v6 + 8);
  v10(v5, v7);
  v10(v4, v7);
  v9(v4, v8, v7);
  sub_1000A2AA8();
  LOBYTE(v8) = sub_1000A3DF8();
  v10(v5, v7);
  v10(v4, v7);
  if (v8)
  {
    goto LABEL_24;
  }

  v1 = v37;
  v3 |= v36;
LABEL_12:
  if ((v1 & v3) == 1)
  {
    v11 = *(v0 + 1040);
    v12 = sub_1000A2D88();

    if ((v12 & 0x1FFFFFFFFLL) == 0xFFFFFFFFLL)
    {
      v13 = *(v0 + 960);
      v14 = *(v0 + 952);
      v15 = *(v0 + 944);
      v16 = *(v0 + 840);
      v17 = *(v0 + 824);
      v18 = *(v0 + 816);

      (*(v14 + 104))(v13, enum case for GuidanceType.reduce(_:), v15);
      sub_100093FD4(&qword_1000C9550, &type metadata accessor for GuidanceType, &protocol conformance descriptor for GuidanceType);
      sub_1000A3B28();
      sub_1000A3B28();
      v19 = *(v14 + 8);
      *(v0 + 1272) = v19;
      *(v0 + 1280) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v19(v13, v15);
      if (*(v0 + 274) == *(v0 + 276))
      {
        v20 = &enum case for HSGuidanceType.reduce(_:);
      }

      else
      {
        v20 = &enum case for HSGuidanceType.shift(_:);
      }

      (*(v17 + 104))(v16, *v20, v18);
      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 888);
      v22 = *(v0 + 880);
      v23 = *(v0 + 872);
      v24 = *(v0 + 864);
      v25 = sub_100001E38(v24, qword_1000C95F8);
      swift_beginAccess();
      (*(v23 + 16))(v21, v25, v24);
      sub_1000A2A58();
      sub_100093FD4(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
      LOBYTE(v25) = sub_1000A3DF8();
      v26 = *(v23 + 8);
      v26(v22, v24);
      v26(v21, v24);
      if ((v25 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
      {
        sub_1000A2A38();
        *(v0 + 1312) = sub_1000A2A28();
        v38 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
        v35 = swift_task_alloc();
        *(v0 + 1320) = v35;
        *v35 = v0;
        v35[1] = sub_100090DC8;

        __asm { BR              X8 }
      }

      v27 = swift_task_alloc();
      *(v0 + 1288) = v27;
      *v27 = v0;
      v27[1] = sub_100090380;
      v28 = *(v0 + 840);

      return sub_1000688B0(v28);
    }
  }

LABEL_24:
  v30 = *(v0 + 1072);
  v31 = *(v0 + 1056);
  type metadata accessor for RatePlanQuery();
  v32 = swift_task_alloc();
  *(v0 + 1120) = v32;
  *v32 = v0;
  v32[1] = sub_10008E1B0;
  v33 = *(v0 + 1064);
  v34 = *(v0 + 1048);

  return sub_100049CB0(v34, v31, v33, v30);
}

uint64_t sub_10008DF3C()
{
  if (v0[127] != 0x6C7070612E6D6F63 || v0[128] != 0xEF64656D6F682E65)
  {
    sub_1000A3F48();
  }

  if (sub_1000A2D18())
  {
    if (qword_1000C7560 != -1)
    {
      swift_once();
    }

    v2 = v0[111];
    v3 = v0[110];
    v4 = v0[109];
    v5 = v0[108];
    v6 = sub_100001E38(v5, qword_1000C95F8);
    swift_beginAccess();
    v7 = *(v4 + 16);
    v7(v2, v6, v5);
    sub_1000A2A48();
    sub_100093FD4(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
    sub_1000A3DF8();
    v8 = *(v4 + 8);
    v8(v3, v5);
    v8(v2, v5);
    v7(v2, v6, v5);
    sub_1000A2AA8();
    sub_1000A3DF8();
    v8(v3, v5);
    v8(v2, v5);
  }

  v9 = v0[134];
  v10 = v0[132];
  type metadata accessor for RatePlanQuery();
  v11 = swift_task_alloc();
  v0[140] = v11;
  *v11 = v0;
  v11[1] = sub_10008E1B0;
  v12 = v0[133];
  v13 = v0[131];

  return sub_100049CB0(v13, v10, v12, v9);
}

uint64_t sub_10008E1B0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 1128) = a1;
  *(v4 + 1136) = a2;

  if (v2)
  {

    v5 = sub_1000926FC;
  }

  else
  {

    v5 = sub_10008E304;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10008E304()
{
  v1 = *(v0 + 1136);
  if (v1)
  {
    v2 = *(v0 + 1128) & 0xFFFFFFFFFFFFLL;
    if ((v1 & 0x2000000000000000) != 0)
    {
      v2 = HIBYTE(v1) & 0xF;
    }

    if (v2)
    {
      v3 = *(v0 + 960);
      v4 = *(v0 + 952);
      v5 = *(v0 + 944);
      v6 = *(v0 + 856);
      v7 = *(v0 + 824);
      v8 = *(v0 + 816);
      (*(v4 + 104))(v3, enum case for GuidanceType.reduce(_:), v5);
      sub_100093FD4(&qword_1000C9550, &type metadata accessor for GuidanceType, &protocol conformance descriptor for GuidanceType);
      sub_1000A3B28();
      sub_1000A3B28();
      v9 = *(v4 + 8);
      *(v0 + 1144) = v9;
      *(v0 + 1152) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v9(v3, v5);
      if (*(v0 + 188) == *(v0 + 190))
      {
        v10 = &enum case for HSGuidanceType.reduce(_:);
      }

      else
      {
        v10 = &enum case for HSGuidanceType.shift(_:);
      }

      (*(v7 + 104))(v6, *v10, v8);
      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 888);
      v12 = *(v0 + 880);
      v13 = *(v0 + 872);
      v14 = *(v0 + 864);
      v15 = sub_100001E38(v14, qword_1000C95F8);
      swift_beginAccess();
      (*(v13 + 16))(v11, v15, v14);
      sub_1000A2A58();
      sub_100093FD4(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
      LOBYTE(v15) = sub_1000A3DF8();
      v16 = *(v13 + 8);
      v16(v12, v14);
      v16(v11, v14);
      if (v15 & 1) != 0 && (sub_1000A2D18())
      {

        v17 = swift_task_alloc();
        *(v0 + 1160) = v17;
        *v17 = v0;
        v17[1] = sub_10008EA30;
        v18 = *(v0 + 856);
        goto LABEL_24;
      }

      sub_1000A2A38();
      *(v0 + 1184) = sub_1000A2A28();
      v37 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
      v19 = swift_task_alloc();
      *(v0 + 1192) = v19;
      *v19 = v0;
      v19[1] = sub_10008F4BC;
LABEL_28:

      __asm { BR              X8 }
    }
  }

  v20 = *(v0 + 960);
  v21 = *(v0 + 952);
  v22 = *(v0 + 944);
  v23 = *(v0 + 848);
  v24 = *(v0 + 824);
  v25 = *(v0 + 816);
  (*(v21 + 104))(v20, enum case for GuidanceType.reduce(_:), v22);
  sub_100093FD4(&qword_1000C9550, &type metadata accessor for GuidanceType, &protocol conformance descriptor for GuidanceType);
  sub_1000A3B28();
  sub_1000A3B28();
  v26 = *(v21 + 8);
  *(v0 + 1208) = v26;
  *(v0 + 1216) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v20, v22);
  if (*(v0 + 102) == *(v0 + 186))
  {
    v27 = &enum case for HSGuidanceType.reduce(_:);
  }

  else
  {
    v27 = &enum case for HSGuidanceType.shift(_:);
  }

  (*(v24 + 104))(v23, *v27, v25);
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 888);
  v29 = *(v0 + 880);
  v30 = *(v0 + 872);
  v31 = *(v0 + 864);
  v32 = sub_100001E38(v31, qword_1000C95F8);
  swift_beginAccess();
  (*(v30 + 16))(v28, v32, v31);
  sub_1000A2A58();
  sub_100093FD4(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
  LOBYTE(v32) = sub_1000A3DF8();
  v33 = *(v30 + 8);
  v33(v29, v31);
  v33(v28, v31);
  if ((v32 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
  {
    sub_1000A2A38();
    *(v0 + 1248) = sub_1000A2A28();
    v37 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
    v36 = swift_task_alloc();
    *(v0 + 1256) = v36;
    *v36 = v0;
    v36[1] = sub_100090188;
    goto LABEL_28;
  }

  v34 = swift_task_alloc();
  *(v0 + 1224) = v34;
  *v34 = v0;
  v34[1] = sub_10008F740;
  v18 = *(v0 + 848);
LABEL_24:

  return sub_1000688B0(v18);
}

uint64_t sub_10008EA30(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  (*(v6[103] + 8))(v6[107], v6[102]);
  if (v2)
  {

    v6[147] = v2;
    v7 = sub_10008F14C;
  }

  else
  {
    v6[46] = v3;
    v6[47] = a1;
    v6[48] = a2;
    v6[49] = 0;
    v6[146] = 0;
    v7 = sub_10008EBB0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10008EBB0()
{
  v1 = v0[137];
  v2 = v0[115];
  v3 = v0[114];
  v4 = v0[112];
  sub_1000A2B88();
  sub_1000869A4(v2, v3);
  v1(v3, v4);
  v1(v2, v4);
  v5 = v0[47];
  v6 = v0[48];
  v7 = v0[146];
  v8 = v0[143];
  v0[175] = v8;
  v0[176] = v6;
  v0[177] = v5;
  sub_1000A2208();
  swift_allocObject();
  sub_1000A21F8();
  sub_100093FD4(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast, &protocol conformance descriptor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v7)
  {
    v33 = v0[118];
    v34 = v0[121];
    v9 = v0[116];
    v32 = v8;
    v10 = v0[113];
    v11 = v0[112];

    sub_10003228C(v5, v6);
    (*(v10 + 8))(v9, v11);
    v32(v34, v33);
    swift_errorRetain();
    v12 = sub_1000A3518();
    v13 = sub_1000A3CC8();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[130];
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "[SiteOperations] Grid Fetch Failed: %@", v16, 0xCu);
      sub_100022154(v17, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }

    v29 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v29 - 8) + 104))(v30, enum case for EnergyKitError.guidanceUnavailable(_:), v29);
    swift_willThrow();
    swift_unknownObjectRelease();

    v31 = v0[1];

    return v31();
  }

  else
  {
    v19 = v0[95];
    v20 = v0[94];
    v21 = v0[92];

    sub_1000A2A38();
    v0[178] = sub_1000A2A28();
    sub_1000A24B8();
    v22 = *(v19 + 48);
    v0[179] = v22;
    v0[180] = (v19 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    result = v22(v21, 1, v20);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v35 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
      v24 = swift_task_alloc();
      v0[181] = v24;
      *v24 = v0;
      v24[1] = sub_100091C08;
      v25 = v0[93];
      v26 = v0[92];
      v27 = v0[86];
      v28 = v0[85];

      return v35(v25, v28, v27, v26);
    }
  }

  return result;
}

uint64_t sub_10008F14C()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 968);
  v3 = *(v0 + 944);
  (*(v0 + 1096))(*(v0 + 928), *(v0 + 896));
  v1(v2, v3);
  swift_errorRetain();
  v4 = sub_1000A3518();
  v5 = sub_1000A3CC8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1040);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "[SiteOperations] Grid Fetch Failed: %@", v8, 0xCu);
    sub_100022154(v9, &unk_1000C7740, &qword_1000AB610);
  }

  else
  {
  }

  v11 = sub_1000A2B18();
  sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
  swift_allocError();
  (*(*(v11 - 8) + 104))(v12, enum case for EnergyKitError.guidanceUnavailable(_:), v11);
  swift_willThrow();
  swift_unknownObjectRelease();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10008F4BC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 1200) = v2;

  if (v2)
  {

    v7 = sub_10008F6BC;
  }

  else
  {
    (*(v6[103] + 8))(v6[107], v6[102]);

    v6[46] = v3;
    v6[47] = a1;
    v6[48] = a2;
    v6[49] = 0;
    v6[146] = 0;
    v7 = sub_10008EBB0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10008F6BC()
{
  (*(v0[103] + 8))(v0[107], v0[102]);
  v0[147] = v0[150];

  return _swift_task_switch(sub_10008F14C, 0, 0);
}

uint64_t sub_10008F740(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    v6[155] = v2;
    (*(v6[103] + 8))(v6[106], v6[102]);

    v7 = sub_10008FE18;
  }

  else
  {
    v6[50] = v3;
    v6[51] = a1;
    v6[52] = a2;
    v6[53] = 0;
    v6[154] = 0;
    (*(v6[103] + 8))(v6[106], v6[102]);
    v7 = sub_10008F8C0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10008F8C0()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[154];
  v4 = v0[151];
  v0[175] = v4;
  v0[176] = v2;
  v0[177] = v1;
  sub_1000A2208();
  swift_allocObject();
  sub_1000A21F8();
  sub_100093FD4(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast, &protocol conformance descriptor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v3)
  {
    v29 = v0[118];
    v30 = v0[121];
    v5 = v0[116];
    v28 = v4;
    v6 = v0[113];
    v7 = v0[112];

    sub_10003228C(v1, v2);
    (*(v6 + 8))(v5, v7);
    v28(v30, v29);
    swift_errorRetain();
    v8 = sub_1000A3518();
    v9 = sub_1000A3CC8();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[130];
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "[SiteOperations] Grid Fetch Failed: %@", v12, 0xCu);
      sub_100022154(v13, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }

    v25 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, enum case for EnergyKitError.guidanceUnavailable(_:), v25);
    swift_willThrow();
    swift_unknownObjectRelease();

    v27 = v0[1];

    return v27();
  }

  else
  {
    v15 = v0[95];
    v16 = v0[94];
    v17 = v0[92];

    sub_1000A2A38();
    v0[178] = sub_1000A2A28();
    sub_1000A24B8();
    v18 = *(v15 + 48);
    v0[179] = v18;
    v0[180] = (v15 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    result = v18(v17, 1, v16);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v31 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
      v20 = swift_task_alloc();
      v0[181] = v20;
      *v20 = v0;
      v20[1] = sub_100091C08;
      v21 = v0[93];
      v22 = v0[92];
      v23 = v0[86];
      v24 = v0[85];

      return v31(v21, v24, v23, v22);
    }
  }

  return result;
}

uint64_t sub_10008FE18()
{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 968);
  v3 = *(v0 + 944);
  (*(v0 + 1096))(*(v0 + 928), *(v0 + 896));
  v1(v2, v3);
  swift_errorRetain();
  v4 = sub_1000A3518();
  v5 = sub_1000A3CC8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1040);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "[SiteOperations] Grid Fetch Failed: %@", v8, 0xCu);
    sub_100022154(v9, &unk_1000C7740, &qword_1000AB610);
  }

  else
  {
  }

  v11 = sub_1000A2B18();
  sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
  swift_allocError();
  (*(*(v11 - 8) + 104))(v12, enum case for EnergyKitError.guidanceUnavailable(_:), v11);
  swift_willThrow();
  swift_unknownObjectRelease();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100090188(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 1264) = v2;

  if (v2)
  {
    v7 = sub_1000902E8;
  }

  else
  {

    v6[50] = v3;
    v6[51] = a1;
    v6[52] = a2;
    v6[53] = 0;
    v6[154] = 0;
    (*(v6[103] + 8))(v6[106], v6[102]);
    v7 = sub_10008F8C0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000902E8()
{

  v0[155] = v0[158];
  (*(v0[103] + 8))(v0[106], v0[102]);

  return _swift_task_switch(sub_10008FE18, 0, 0);
}

uint64_t sub_100090380(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    v6[163] = v2;
    (*(v6[103] + 8))(v6[105], v6[102]);

    v7 = sub_100090A58;
  }

  else
  {
    v6[54] = v3;
    v6[55] = a1;
    v6[56] = a2;
    v6[57] = 0;
    v6[162] = 0;
    (*(v6[103] + 8))(v6[105], v6[102]);
    v7 = sub_100090500;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100090500()
{
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[162];
  v4 = v0[159];
  v0[175] = v4;
  v0[176] = v2;
  v0[177] = v1;
  sub_1000A2208();
  swift_allocObject();
  sub_1000A21F8();
  sub_100093FD4(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast, &protocol conformance descriptor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v3)
  {
    v29 = v0[118];
    v30 = v0[121];
    v5 = v0[116];
    v28 = v4;
    v6 = v0[113];
    v7 = v0[112];

    sub_10003228C(v1, v2);
    (*(v6 + 8))(v5, v7);
    v28(v30, v29);
    swift_errorRetain();
    v8 = sub_1000A3518();
    v9 = sub_1000A3CC8();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[130];
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "[SiteOperations] Grid Fetch Failed: %@", v12, 0xCu);
      sub_100022154(v13, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }

    v25 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, enum case for EnergyKitError.guidanceUnavailable(_:), v25);
    swift_willThrow();
    swift_unknownObjectRelease();

    v27 = v0[1];

    return v27();
  }

  else
  {
    v15 = v0[95];
    v16 = v0[94];
    v17 = v0[92];

    sub_1000A2A38();
    v0[178] = sub_1000A2A28();
    sub_1000A24B8();
    v18 = *(v15 + 48);
    v0[179] = v18;
    v0[180] = (v15 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    result = v18(v17, 1, v16);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v31 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
      v20 = swift_task_alloc();
      v0[181] = v20;
      *v20 = v0;
      v20[1] = sub_100091C08;
      v21 = v0[93];
      v22 = v0[92];
      v23 = v0[86];
      v24 = v0[85];

      return v31(v21, v24, v23, v22);
    }
  }

  return result;
}

uint64_t sub_100090A58()
{
  v1 = *(v0 + 1272);
  v2 = *(v0 + 968);
  v3 = *(v0 + 944);
  (*(v0 + 1096))(*(v0 + 928), *(v0 + 896));
  v1(v2, v3);
  swift_errorRetain();
  v4 = sub_1000A3518();
  v5 = sub_1000A3CC8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1040);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "[SiteOperations] Grid Fetch Failed: %@", v8, 0xCu);
    sub_100022154(v9, &unk_1000C7740, &qword_1000AB610);
  }

  else
  {
  }

  v11 = sub_1000A2B18();
  sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
  swift_allocError();
  (*(*(v11 - 8) + 104))(v12, enum case for EnergyKitError.guidanceUnavailable(_:), v11);
  swift_willThrow();
  swift_unknownObjectRelease();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100090DC8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 1328) = v2;

  if (v2)
  {
    v7 = sub_100090F28;
  }

  else
  {

    v6[54] = v3;
    v6[55] = a1;
    v6[56] = a2;
    v6[57] = 0;
    v6[162] = 0;
    (*(v6[103] + 8))(v6[105], v6[102]);
    v7 = sub_100090500;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100090F28()
{

  v0[163] = v0[166];
  (*(v0[103] + 8))(v0[105], v0[102]);

  return _swift_task_switch(sub_100090A58, 0, 0);
}

uint64_t sub_100090FC0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    v6[171] = v2;
    (*(v6[103] + 8))(v6[104], v6[102]);

    v7 = sub_100091698;
  }

  else
  {
    v6[58] = v3;
    v6[59] = a1;
    v6[60] = a2;
    v6[61] = 0;
    v6[170] = 0;
    (*(v6[103] + 8))(v6[104], v6[102]);
    v7 = sub_100091140;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100091140()
{
  v1 = v0[59];
  v2 = v0[60];
  v3 = v0[170];
  v4 = v0[167];
  v0[175] = v4;
  v0[176] = v2;
  v0[177] = v1;
  sub_1000A2208();
  swift_allocObject();
  sub_1000A21F8();
  sub_100093FD4(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast, &protocol conformance descriptor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v3)
  {
    v29 = v0[118];
    v30 = v0[121];
    v5 = v0[116];
    v28 = v4;
    v6 = v0[113];
    v7 = v0[112];

    sub_10003228C(v1, v2);
    (*(v6 + 8))(v5, v7);
    v28(v30, v29);
    swift_errorRetain();
    v8 = sub_1000A3518();
    v9 = sub_1000A3CC8();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[130];
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "[SiteOperations] Grid Fetch Failed: %@", v12, 0xCu);
      sub_100022154(v13, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }

    v25 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, enum case for EnergyKitError.guidanceUnavailable(_:), v25);
    swift_willThrow();
    swift_unknownObjectRelease();

    v27 = v0[1];

    return v27();
  }

  else
  {
    v15 = v0[95];
    v16 = v0[94];
    v17 = v0[92];

    sub_1000A2A38();
    v0[178] = sub_1000A2A28();
    sub_1000A24B8();
    v18 = *(v15 + 48);
    v0[179] = v18;
    v0[180] = (v15 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    result = v18(v17, 1, v16);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v31 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
      v20 = swift_task_alloc();
      v0[181] = v20;
      *v20 = v0;
      v20[1] = sub_100091C08;
      v21 = v0[93];
      v22 = v0[92];
      v23 = v0[86];
      v24 = v0[85];

      return v31(v21, v24, v23, v22);
    }
  }

  return result;
}

uint64_t sub_100091698()
{
  v1 = v0[167];
  v2 = v0[121];
  v3 = v0[118];
  (*(v0[113] + 8))(v0[116], v0[112]);
  v1(v2, v3);
  swift_errorRetain();
  v4 = sub_1000A3518();
  v5 = sub_1000A3CC8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[130];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "[SiteOperations] Grid Fetch Failed: %@", v8, 0xCu);
    sub_100022154(v9, &unk_1000C7740, &qword_1000AB610);
  }

  else
  {
  }

  v11 = sub_1000A2B18();
  sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
  swift_allocError();
  (*(*(v11 - 8) + 104))(v12, enum case for EnergyKitError.guidanceUnavailable(_:), v11);
  swift_willThrow();
  swift_unknownObjectRelease();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100091A10(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 1392) = v2;

  if (v2)
  {
    v7 = sub_100091B70;
  }

  else
  {

    v6[58] = v3;
    v6[59] = a1;
    v6[60] = a2;
    v6[61] = 0;
    v6[170] = 0;
    (*(v6[103] + 8))(v6[104], v6[102]);
    v7 = sub_100091140;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100091B70()
{

  v0[171] = v0[174];
  (*(v0[103] + 8))(v0[104], v0[102]);

  return _swift_task_switch(sub_100091698, 0, 0);
}

uint64_t sub_100091C08()
{
  v1 = *v0;
  v2 = *(*v0 + 760);
  v3 = *(*v0 + 752);
  v4 = *(*v0 + 736);

  v5 = *(v2 + 8);
  *(v1 + 1456) = v5;
  *(v1 + 1464) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v4, v3);

  return _swift_task_switch(sub_100091D94, 0, 0);
}

uint64_t sub_100091D94()
{
  v1 = *(v0 + 1432);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  if (v1(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 1416);
    v5 = *(v0 + 1408);
    v67 = *(v0 + 968);
    v68 = *(v0 + 1400);
    v66 = *(v0 + 944);
    v6 = *(v0 + 904);
    v64 = *(v0 + 896);
    v65 = *(v0 + 928);
    v7 = *(v0 + 808);
    v8 = *(v0 + 792);
    v9 = *(v0 + 784);

    sub_100022154(v3, &qword_1000C92C0, &qword_1000ACB30);
    v10 = sub_1000A2B18();
    sub_100093FD4(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    v70 = enum case for EnergyKitError.guidanceUnavailable(_:);
    v69 = *(*(v10 - 8) + 104);
    v69(v11);
    swift_willThrow();
    sub_10003228C(v4, v5);
    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v65, v64);
    v68(v67, v66);
    swift_errorRetain();
    v12 = sub_1000A3518();
    v13 = sub_1000A3CC8();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 1040);
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "[SiteOperations] Grid Fetch Failed: %@", v16, 0xCu);
      sub_100022154(v17, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }

    swift_allocError();
    (v69)(v43, v70, v10);
    swift_willThrow();
    swift_unknownObjectRelease();

    v44 = *(v0 + 8);

    return v44();
  }

  else
  {
    v19 = *(v0 + 800);
    v20 = *(v0 + 792);
    v21 = *(v0 + 784);
    v22 = *(v0 + 728);
    v71 = *(v0 + 808);
    (*(*(v0 + 760) + 32))(*(v0 + 776), v3, v2);
    (*(v20 + 16))(v19, v71, v21);
    sub_1000A24B8();
    result = v1(v22, 1, v2);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v61 = *(v0 + 1456);
      v57 = *(v0 + 1408);
      v58 = *(v0 + 1416);
      v60 = *(v0 + 1040);
      v45 = *(v0 + 1016);
      v46 = *(v0 + 1024);
      v51 = *(v0 + 968);
      v62 = *(v0 + 952);
      v63 = *(v0 + 944);
      v24 = *(v0 + 928);
      v54 = v24;
      v25 = *(v0 + 920);
      v26 = *(v0 + 904);
      v27 = *(v0 + 896);
      v59 = *(v0 + 808);
      v55 = *(v0 + 792);
      v56 = *(v0 + 784);
      v52 = *(v0 + 776);
      v53 = *(v0 + 752);
      v28 = *(v0 + 720);
      v47 = *(v0 + 704);
      v48 = *(v0 + 696);
      v49 = *(v0 + 712);
      (*(*(v0 + 760) + 16))(*(v0 + 768));
      (*(v26 + 16))(v25, v24, v27);
      sub_1000A2C18();
      v29 = sub_1000A2B38();
      sub_1000A2C28();
      v30 = sub_1000A2B98();
      v50 = *(v26 + 8);
      v50(v25, v27);
      *(v0 + 192) = v45;
      *(v0 + 208) = 0;
      *(v0 + 216) = 0;
      *(v0 + 200) = v46;
      *(v0 + 224) = 2;
      *(v0 + 232) = v29;
      *(v0 + 240) = 0;
      *(v0 + 248) = v30;
      *(v0 + 256) = 0;
      *(v0 + 264) = 0;
      *(v0 + 272) = 1;
      *(v0 + 104) = v45;
      *(v0 + 120) = 0;
      *(v0 + 128) = 0;
      *(v0 + 112) = v46;
      *(v0 + 136) = 2;
      *(v0 + 144) = v29;
      *(v0 + 152) = 0;
      *(v0 + 160) = v30;
      *(v0 + 168) = 0;
      *(v0 + 176) = 0;
      *(v0 + 184) = 1;
      sub_100086114(v0 + 192, v0 + 280);
      sub_100086170(v0 + 104);
      type metadata accessor for EKSAnalyticsEvent();
      v31 = swift_allocObject();
      *(v31 + 24) = xmmword_1000ACA50;
      *(v31 + 56) = 0u;
      *(v31 + 72) = 0u;
      *(v31 + 88) = 0u;
      *(v31 + 40) = 0u;
      *(v31 + 104) = 0;
      *(v31 + 16) = 2;
      *(v0 + 96) = 0;
      v32 = *(v31 + 72);
      *(v0 + 48) = *(v31 + 56);
      *(v0 + 64) = v32;
      *(v0 + 80) = *(v31 + 88);
      v33 = *(v31 + 40);
      *(v0 + 16) = *(v31 + 24);
      *(v0 + 32) = v33;
      v34 = *(v0 + 192);
      v35 = *(v0 + 224);
      *(v31 + 40) = *(v0 + 208);
      *(v31 + 24) = v34;
      v36 = *(v0 + 240);
      v37 = *(v0 + 256);
      *(v31 + 104) = *(v0 + 272);
      *(v31 + 88) = v37;
      *(v31 + 72) = v36;
      *(v31 + 56) = v35;
      sub_100022154(v0 + 16, &qword_1000C8830, &unk_1000AC300);
      sub_10004151C(v31, v38, v39);

      (*(v47 + 16))(v49, v28, v48);
      v40 = objc_allocWithZone(sub_1000A2BE8());
      v41 = sub_1000A2BD8();
      swift_unknownObjectRelease();
      sub_10003228C(v58, v57);

      (*(v47 + 8))(v28, v48);
      v61(v52, v53);
      (*(v55 + 8))(v59, v56);
      v50(v54, v27);
      (*(v62 + 8))(v51, v63);

      v42 = *(v0 + 8);

      return v42(v41);
    }
  }

  return result;
}

uint64_t sub_1000926FC()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 944);
  v4 = *(v0 + 848);
  v5 = *(v0 + 824);
  v6 = *(v0 + 816);
  (*(v2 + 104))(v1, enum case for GuidanceType.reduce(_:), v3);
  sub_100093FD4(&qword_1000C9550, &type metadata accessor for GuidanceType, &protocol conformance descriptor for GuidanceType);
  sub_1000A3B28();
  sub_1000A3B28();
  v7 = *(v2 + 8);
  *(v0 + 1208) = v7;
  *(v0 + 1216) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  if (*(v0 + 102) == *(v0 + 186))
  {
    v8 = &enum case for HSGuidanceType.reduce(_:);
  }

  else
  {
    v8 = &enum case for HSGuidanceType.shift(_:);
  }

  (*(v5 + 104))(v4, *v8, v6);
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 888);
  v10 = *(v0 + 880);
  v11 = *(v0 + 872);
  v12 = *(v0 + 864);
  v13 = sub_100001E38(v12, qword_1000C95F8);
  swift_beginAccess();
  (*(v11 + 16))(v9, v13, v12);
  sub_1000A2A58();
  sub_100093FD4(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
  LOBYTE(v13) = sub_1000A3DF8();
  v14 = *(v11 + 8);
  v14(v10, v12);
  v14(v9, v12);
  if ((v13 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
  {
    sub_1000A2A38();
    *(v0 + 1248) = sub_1000A2A28();
    v19 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
    v18 = swift_task_alloc();
    *(v0 + 1256) = v18;
    *v18 = v0;
    v18[1] = sub_100090188;

    __asm { BR              X8 }
  }

  v15 = swift_task_alloc();
  *(v0 + 1224) = v15;
  *v15 = v0;
  v15[1] = sub_10008F740;
  v16 = *(v0 + 848);

  return sub_1000688B0(v16);
}

uint64_t sub_100092AA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100092AC4, 0, 0);
}

uint64_t sub_100092AC4()
{
  sub_1000A3AA8();
  *(v0 + 32) = os_transaction_create();

  sub_10003690C(v1, v2, v3);
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
    _os_log_impl(&_mh_execute_header, v5, v6, "Connection established to EnergyKit API", v7, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v8 = qword_1000C95F0;
  *(v0 + 40) = qword_1000C95F0;

  return _swift_task_switch(sub_100092C7C, v8, 0);
}

uint64_t sub_100092C7C()
{
  *(v0 + 72) = *(*(v0 + 40) + 144);

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100092D30;

  return sub_1000472A8(0);
}

uint64_t sub_100092D30(char a1)
{
  *(*v1 + 73) = a1;

  return _swift_task_switch(sub_100092E30, 0, 0);
}

uint64_t sub_100092E30()
{
  v1 = *(v0 + 73);
  if ((*(v0 + 72) & 1) != 0 || *(v0 + 73))
  {
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = sub_100092F28;
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);

    return sub_100066308(v6, v5, v1 ^ 1u);
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = *(v0 + 8);

    return v2(0);
  }
}

uint64_t sub_100092F28(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_100093028, 0, 0);
}

uint64_t sub_100093028()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10009308C(uint64_t a1, double a2)
{
  *(v2 + 376) = a2;
  *(v2 + 368) = a1;
  return _swift_task_switch(sub_1000930B0, 0, 0);
}

uint64_t sub_1000930B0()
{
  sub_1000A3AA8();
  *(v0 + 384) = os_transaction_create();

  sub_10003690C(v1, v2, v3);
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v4 = qword_1000C95F0;
  *(v0 + 392) = qword_1000C95F0;

  return _swift_task_switch(sub_1000931B4, v4, 0);
}

uint64_t sub_1000931B4()
{
  *(v0 + 97) = *(*(v0 + 392) + 144);

  return _swift_task_switch(sub_100093224, 0, 0);
}

uint64_t sub_100093224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 97))
  {
    v4 = qword_1000C95F0;
    *(v3 + 400) = qword_1000C95F0;

    return _swift_task_switch(sub_1000933B4, v4, 0);
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
      _os_log_impl(&_mh_execute_header, v6, v7, "[SiteOperations] Unauthorized", v8, 2u);
    }

    v9 = sub_100089C30(&_swiftEmptyArrayStorage);
    swift_unknownObjectRelease();
    v10 = *(v3 + 8);

    return v10(v9);
  }
}

uint64_t sub_1000933B4()
{
  v1 = v0[50];
  v0[51] = *(v1 + 112);
  v0[52] = *(v1 + 120);

  return _swift_task_switch(sub_100093434, 0, 0);
}

uint64_t sub_100093434()
{
  if (*(v0 + 52))
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    *(v0 + 53) = qword_1000C96F8;

    v1 = swift_task_alloc();
    *(v0 + 54) = v1;
    *v1 = v0;
    v1[1] = sub_10009356C;
    v2 = v0[47];
    v3 = *(v0 + 46);

    return sub_100072AA8(v3, v2);
  }

  else
  {
    v5 = sub_100089C30(&_swiftEmptyArrayStorage);
    swift_unknownObjectRelease();
    v6 = *(v0 + 1);

    return v6(v5);
  }
}

uint64_t sub_10009356C(uint64_t a1)
{
  *(*v1 + 440) = a1;

  return _swift_task_switch(sub_10009368C, 0, 0);
}

uint64_t sub_10009368C()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(*(v0 + 440) + 16) != 0;
  *(v0 + 192) = v2;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 200) = v1;
  *(v0 + 224) = v3;
  *(v0 + 232) = 0;
  *(v0 + 240) = 1;
  *(v0 + 248) = 0;
  *(v0 + 256) = 1;
  *(v0 + 264) = 0;
  *(v0 + 272) = 1;
  *(v0 + 104) = v2;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 112) = v1;
  *(v0 + 136) = v3;
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 176) = 0;
  *(v0 + 184) = 1;
  sub_100086114(v0 + 192, v0 + 280);
  sub_100086170(v0 + 104);
  type metadata accessor for EKSAnalyticsEvent();
  v4 = swift_allocObject();
  *(v4 + 24) = xmmword_1000ACA50;
  *(v4 + 16) = 0;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 104) = 0;
  *(v0 + 96) = 0;
  v5 = *(v4 + 72);
  *(v0 + 48) = *(v4 + 56);
  *(v0 + 64) = v5;
  *(v0 + 80) = *(v4 + 88);
  v6 = *(v4 + 40);
  *(v0 + 16) = *(v4 + 24);
  *(v0 + 32) = v6;
  v7 = *(v0 + 192);
  v8 = *(v0 + 224);
  *(v4 + 40) = *(v0 + 208);
  *(v4 + 24) = v7;
  v9 = *(v0 + 240);
  v10 = *(v0 + 256);
  *(v4 + 104) = *(v0 + 272);
  *(v4 + 88) = v10;
  *(v4 + 72) = v9;
  *(v4 + 56) = v8;
  sub_100022154(v0 + 16, &qword_1000C8830, &unk_1000AC300);
  sub_10004151C(v4, v11, v12);

  swift_unknownObjectRelease();
  v13 = *(v0 + 440);
  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_10009385C()
{
  sub_1000A3AA8();
  *(v0 + 16) = os_transaction_create();

  sub_10003690C(v1, v2, v3);
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v4 = qword_1000C95F0;
  *(v0 + 24) = qword_1000C95F0;

  return _swift_task_switch(sub_100093960, v4, 0);
}

uint64_t sub_100093960()
{
  *(v0 + 32) = *(*(v0 + 24) + 120);

  return _swift_task_switch(sub_1000939D8, 0, 0);
}

uint64_t sub_1000939D8()
{
  if (v0[4])
  {

    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_100093AC4;

    return sub_100065D98();
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = v0[1];

    return v3(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100093AC4(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100093BC4, 0, 0);
}

uint64_t sub_100093BC4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100093C28()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100093C70()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v5 = *(v0 + 4);
  v4 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000153A8;

  return sub_100088D04(v2, v5, v4, v3);
}

uint64_t sub_100093D38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000153A8;

  return sub_100088850(v2, v3, v4);
}

uint64_t sub_100093E04()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014898;

  return sub_1000872C0(v2, v3, v4);
}

uint64_t sub_100093EB8()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100093F08()
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

  return sub_100086E3C(v2, v6, v3, v4, v5);
}

uint64_t sub_100093FD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10009401C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000275C(&qword_1000C9560, &qword_1000ACC48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009408C()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000940D4()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000153A8;

  return sub_1000866F4(v5, v2, v3, v4);
}

uint64_t sub_1000941D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v25 - v10;
  sub_100038E0C(a3, v25 - v10);
  v12 = sub_1000A3BE8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100022154(v11, &qword_1000C8240, &qword_1000AB688);
  }

  else
  {
    sub_1000A3BD8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000A3BA8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000A3AA8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100022154(a3, &qword_1000C8240, &qword_1000AB688);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100022154(a3, &qword_1000C8240, &qword_1000AB688);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000944C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = v16;
  v8[3] = v17;
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_1000945A0;

  return sub_100097D90(a5, a6, a7, a8);
}

uint64_t sub_1000945A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1000A21E4;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_1000A21E0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000949C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v15;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_100094A78;

  return sub_10009F918(a5, a6, a7);
}

uint64_t sub_100094A78(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_100094C28;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_100094BA0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100094BA0()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = v1;
  v2(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100094C28()
{
  v1 = v0[5];
  v2 = v0[2];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100094E30()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094E68()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100094EC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014898;

  return sub_1000949C0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100094FAC(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_100094FE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_100095044(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000275C(&qword_1000C95D0, &qword_1000ACCE0);
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
    v10 = &_swiftEmptyArrayStorage;
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