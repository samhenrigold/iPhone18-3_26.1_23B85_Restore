uint64_t sub_1AC0()
{
  v0 = sub_11BC0();
  sub_2044(v0, qword_1CF20);
  sub_20A8(v0, qword_1CF20);
  return sub_11BB0();
}

void type metadata accessor for Dataclass()
{
  if (!qword_1C6E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1C6E0);
    }
  }
}

uint64_t sub_1B90(uint64_t a1, id *a2)
{
  result = sub_12150();
  *a2 = 0;
  return result;
}

uint64_t sub_1C08(uint64_t a1, id *a2)
{
  v3 = sub_12160();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C88@<X0>(uint64_t *a1@<X8>)
{
  sub_12170();
  v2 = sub_12140();

  *a1 = v2;
  return result;
}

uint64_t sub_1CCC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_12140();

  *a2 = v3;
  return result;
}

uint64_t sub_1D14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_12170();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D40(uint64_t a1)
{
  v2 = sub_2000(&qword_1C700, &unk_1290C);
  v3 = sub_2000(&qword_1C708, &unk_128B4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1E40()
{
  sub_12170();
  v0 = sub_121B0();

  return v0;
}

uint64_t sub_1E7C(uint64_t a1)
{
  sub_12170();
  sub_121A0();
}

Swift::Int sub_1ED0(uint64_t a1)
{
  sub_12170();
  sub_122B0();
  sub_121A0();
  v1 = sub_122C0();

  return v1;
}

uint64_t sub_1F44(void *a1, uint64_t *a2)
{
  v2 = sub_12170();
  v4 = v3;
  if (v2 == sub_12170() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_122A0();
  }

  return v7 & 1;
}

uint64_t sub_2000(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Dataclass();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_2044(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_20A8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_20E0()
{
  swift_getKeyPath();
  sub_5154();
  sub_11AC0();

  v1 = *(v0 + 16);

  return v1;
}

void sub_2160(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_5320();
  v5 = v4;
  v6 = sub_12270();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_5154();
    sub_11AB0();
  }
}

uint64_t sub_228C()
{
  swift_getKeyPath();
  sub_5154();
  sub_11AC0();

  return *(v0 + 24);
}

uint64_t sub_22FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_5154();
  sub_11AC0();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_239C(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_5154();
    sub_11AB0();
  }

  return result;
}

uint64_t sub_2590(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_5154();
  sub_11AC0();

  return *(v2 + *a2);
}

uint64_t sub_2614@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_5154();
  sub_11AC0();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_26E8(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_5154();
    sub_11AB0();
  }

  return result;
}

uint64_t sub_27BC()
{
  v1 = v0;
  v2 = sub_4AB4(&qword_1C960, &qword_12DC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_11B80();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 0;
  sub_11C00();
  v9 = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel_appleAccountProvider;
  sub_11B70();
  *(v0 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__isDeletedDataAllowed) = 0;
  *(v0 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__deleteInProgress) = 0;
  *(v0 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__setSyncInProgress) = 0;
  sub_11AD0();
  v10 = *(v6 + 16);
  v10(v8, v0 + v9, v5);
  v11 = sub_11B40();
  v12 = *(v6 + 8);
  v12(v8, v5);
  if (v11)
  {
    *(v1 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel_account) = v11;
    v10(v8, v1 + v9, v5);
    v13 = v11;
    v14.super.isa = sub_11B30().super.isa;
    v12(v8, v5);
    v15 = [objc_allocWithZone(ACUIAccountOperationsHelper) initWithAccountStore:v14.super.isa];
    if (v15)
    {
      *(v1 + 16) = v15;
      v16 = sub_12230();
      (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v1;

      sub_2E54(0, 0, v4, &unk_12A58, v17);

      return v1;
    }

    __break(1u);
  }

  if (qword_1C6D8 != -1)
  {
    swift_once();
  }

  v19 = sub_11BC0();
  sub_20A8(v19, qword_1CF20);
  v20 = sub_11BA0();
  v21 = sub_12240();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "Couldnt find primary account.", v22, 2u);
  }

  result = sub_12280();
  __break(1u);
  return result;
}

uint64_t sub_2B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_2C20;

  return EnrollmentAssetService.activate()();
}

uint64_t sub_2C20()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_2D60;

  return sub_3980();
}

uint64_t sub_2D60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_4AB4(&qword_1C960, &qword_12DC0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_4CE4(a3, v25 - v10);
  v12 = sub_12230();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_51F0(v11, &qword_1C960, &qword_12DC0);
  }

  else
  {
    sub_12220();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_121E0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_12190() + 32;
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

      sub_51F0(a3, &qword_1C960, &qword_12DC0);

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

  sub_51F0(a3, &qword_1C960, &qword_12DC0);
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

uint64_t sub_3144()
{
  v1[5] = v0;
  v2 = sub_11C20();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_3204, 0, 0);
}

uint64_t sub_3204()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__deleteInProgress;
  v0[9] = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__deleteInProgress;
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    v0[2] = v1;
    sub_5154();
    sub_11AB0();
  }

  (*(v0[7] + 104))(v0[8], enum case for EnrollmentDataLocation.both(_:), v0[6]);
  v0[10] = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel_service;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_338C;
  v5 = v0[8];

  return EnrollmentAssetService.deleteEnrollmentData(from:)(v5);
}

uint64_t sub_338C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_3880;
  }

  else
  {
    v2 = sub_34A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_34A0()
{
  v1 = v0[9];
  v2 = v0[5];
  if (*(v2 + v1))
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[4] = v2;
    sub_5154();
    sub_11AB0();
  }

  else
  {
    *(v2 + v1) = 0;
  }

  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_35F0;

  return EnrollmentAssetService.canDeleteCloudData()();
}

uint64_t sub_35F0(char a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_3900;
  }

  else
  {
    *(v4 + 120) = a1 & 1;
    v5 = sub_371C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_371C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  v3 = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__isDeletedDataAllowed;
  if (v1 == *(v2 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__isDeletedDataAllowed))
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    *(v2 + v3) = v1;
  }

  else
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 48);
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v2;
    *(v7 + 24) = v1;
    *(v0 + 24) = v2;
    sub_5154();
    sub_11AB0();

    (*(v5 + 8))(v4, v6);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_3880()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_3900()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_39A0()
{
  v1 = v0[3];
  v2 = sub_11B60();
  if (v2 == *(v1 + 24))
  {
    *(v1 + 24) = v2;
  }

  else
  {
    v3 = v0[3];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    v0[2] = v3;
    sub_5154();
    sub_11AB0();
  }

  if (qword_1C6D8 != -1)
  {
    swift_once();
  }

  v5 = sub_11BC0();
  sub_20A8(v5, qword_1CF20);

  v6 = sub_11BA0();
  v7 = sub_12260();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[3];
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 67240192;
    swift_getKeyPath();
    v0[2] = v9;
    sub_5154();
    sub_11AC0();

    *(v10 + 4) = *(v1 + 24);

    _os_log_impl(&dword_0, v6, v7, "Refresh sync state to: %{BOOL,public}d", v10, 8u);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_3BEC(char a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 121) = a2;
  *(v3 + 120) = a1;
  return _swift_task_switch(sub_3C14, 0, 0);
}

uint64_t sub_3C14()
{
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__setSyncInProgress;
  *(v0 + 64) = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__setSyncInProgress;
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    *(v0 + 16) = v1;
    sub_5154();
    sub_11AB0();
  }

  if (*(v0 + 121) == 1)
  {
    if (qword_1C6D8 != -1)
    {
      swift_once();
    }

    v4 = sub_11BC0();
    *(v0 + 72) = sub_20A8(v4, qword_1CF20);
    v5 = sub_11BA0();
    v6 = sub_12260();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 120);
      v8 = swift_slowAlloc();
      *v8 = 67240192;
      *(v8 + 4) = v7;
      _os_log_impl(&dword_0, v5, v6, "Setting sync state to: %{BOOL,public}d", v8, 8u);
    }

    v9 = *(v0 + 120);

    if (v9)
    {
      v10 = *(*(v0 + 56) + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel_account);
      *(v0 + 96) = v10;
      v11 = swift_task_alloc();
      *(v0 + 104) = v11;
      *v11 = v0;
      v11[1] = sub_4228;
      v12 = *(v0 + 120);

      return AppleAccountProvider.setCloudSyncState(enabled:account:)(v12, v10);
    }

    else
    {
      v16 = swift_task_alloc();
      *(v0 + 80) = v16;
      *v16 = v0;
      v16[1] = sub_4050;

      return EnrollmentAssetService.canDeleteCloudData()();
    }
  }

  else
  {
    v13 = *(v0 + 56);
    v14 = *(v0 + 120);
    if (v14 == *(v13 + 24))
    {
      *(v13 + 24) = v14;
    }

    else
    {
      swift_getKeyPath();
      v15 = swift_task_alloc();
      *(v15 + 16) = v13;
      *(v15 + 24) = v14;
      *(v0 + 24) = v13;
      sub_5154();
      sub_11AB0();
    }

    v18 = *(v0 + 56);
    v17 = *(v0 + 64);
    if (*(v18 + v17) == 1)
    {
      swift_getKeyPath();
      v19 = swift_task_alloc();
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v0 + 32) = v18;
      sub_5154();
      sub_11AB0();
    }

    else
    {
      *(v18 + v17) = 0;
    }

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_4050()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_4530;
  }

  else
  {
    v2 = sub_4164;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_4164()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel_account);
  *(v0 + 96) = v1;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_4228;
  v3 = *(v0 + 120);

  return AppleAccountProvider.setCloudSyncState(enabled:account:)(v3, v1);
}

uint64_t sub_4228()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_46F4;
  }

  else
  {
    v2 = sub_433C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_433C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  swift_getKeyPath();
  *(v0 + 48) = v2;
  sub_5154();
  sub_11AC0();

  [*(v2 + 16) saveAccount:v1];
  v3 = *(v0 + 56);
  v4 = *(v0 + 120);
  if (v4 == *(v3 + 24))
  {
    *(v3 + 24) = v4;
  }

  else
  {
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    *(v0 + 24) = v3;
    sub_11AB0();
  }

  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  if (*(v7 + v6) == 1)
  {
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v0 + 32) = v7;
    sub_11AB0();
  }

  else
  {
    *(v7 + v6) = 0;
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_4530()
{
  swift_errorRetain();
  v1 = sub_11BA0();
  v2 = sub_12240();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Failed to query if cloud data exists from ManagedAssets with error: %{public}@", v3, 0xCu);
    sub_51F0(v4, &qword_1C970, &qword_12AF0);
  }

  else
  {
  }

  v6 = *(*(v0 + 56) + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel_account);
  *(v0 + 96) = v6;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_4228;
  v8 = *(v0 + 120);

  return AppleAccountProvider.setCloudSyncState(enabled:account:)(v8, v6);
}

uint64_t sub_46F4()
{
  v2 = v0[7];
  v1 = v0[8];
  if (*(v2 + v1) == 1)
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[5] = v2;
    sub_5154();
    sub_11AB0();
  }

  else
  {
    *(v2 + v1) = 0;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_47FC()
{
  v1 = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel_service;
  v2 = sub_11C10();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel_appleAccountProvider;
  v4 = sub_11B80();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel___observationRegistrar;
  v6 = sub_11AE0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 12);
  v8 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t type metadata accessor for SettingsCloudModel(uint64_t a1)
{
  result = qword_1C758;
  if (!qword_1C758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4984(uint64_t a1)
{
  result = sub_11C10();
  if (v2 <= 0x3F)
  {
    result = sub_11B80();
    if (v3 <= 0x3F)
    {
      result = sub_11AE0();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_4AB4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_4AFC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_4B3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_4BF0;

  return sub_2B7C(a1, v4, v5, v6);
}

uint64_t sub_4BF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_4CE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_4AB4(&qword_1C960, &qword_12DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4D54(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_4E4C;

  return v6(a1);
}

uint64_t sub_4E4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_4F44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4F7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_53F0;

  return sub_4D54(a1, v4);
}

uint64_t sub_5034(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4BF0;

  return sub_4D54(a1, v4);
}

unint64_t sub_5154()
{
  result = qword_1C968;
  if (!qword_1C968)
  {
    type metadata accessor for SettingsCloudModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C968);
  }

  return result;
}

uint64_t sub_51F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_4AB4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_5320()
{
  result = qword_1C978;
  if (!qword_1C978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C978);
  }

  return result;
}

void sub_536C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

void sub_5440()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsCloudView(0);
  v3 = (v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for SettingsCloudController();
  v50.receiver = v0;
  v50.super_class = v6;
  objc_msgSendSuper2(&v50, "viewDidLoad");
  type metadata accessor for SettingsCloudModel(0);
  swift_allocObject();
  v49[1] = sub_27BC();
  sub_12010();
  v7 = v49[3];
  *v5 = v49[2];
  v5[1] = v7;
  v8 = v3[7];
  *(v5 + v8) = swift_getKeyPath();
  sub_4AB4(&qword_1CA40, &qword_12BC8);
  swift_storeEnumTagMultiPayload();
  v9 = v5 + v3[8];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = v5 + v3[9];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = v3[10];
  v12 = objc_allocWithZone(ISIcon);
  v13 = sub_12140();
  v14 = [v12 initWithType:v13];

  *(v5 + v11) = v14;
  v15 = objc_allocWithZone(sub_4AB4(&qword_1CA48, &qword_12C30));
  v16 = sub_11E00();
  [v1 addChildViewController:v16];
  v17 = [v1 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v17;
  v19 = [v16 view];
  if (!v19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = v19;
  [v18 addSubview:v19];

  [v16 didMoveToParentViewController:v1];
  v21 = [v16 view];

  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_4AB4(&qword_1CA50, &unk_12C38);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_12B70;
  v23 = [v1 view];
  if (!v23)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = v23;
  v25 = [v23 topAnchor];

  v26 = [v16 view];
  if (!v26)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27 = [v26 topAnchor];

  v28 = [v25 constraintEqualToAnchor:v27];
  *(v22 + 32) = v28;
  v29 = [v1 view];
  if (!v29)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v30 = v29;
  v31 = [v29 trailingAnchor];

  v32 = [v16 view];
  if (!v32)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v33 = [v32 trailingAnchor];

  v34 = [v31 constraintEqualToAnchor:v33];
  *(v22 + 40) = v34;
  v35 = [v1 view];
  if (!v35)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v36 = v35;
  v37 = [v35 bottomAnchor];

  v38 = [v16 view];
  if (!v38)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v39 = [v38 bottomAnchor];

  v40 = [v37 constraintEqualToAnchor:v39];
  *(v22 + 48) = v40;
  v41 = [v1 view];
  if (!v41)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v42 = v41;
  v43 = [v41 leadingAnchor];

  v44 = [v16 view];
  if (v44)
  {
    v45 = objc_opt_self();
    v46 = [v44 leadingAnchor];

    v47 = [v43 constraintEqualToAnchor:v46];
    *(v22 + 56) = v47;
    sub_5DC8();
    isa = sub_121C0().super.isa;

    [v45 activateConstraints:isa];

    return;
  }

LABEL_23:
  __break(1u);
}

id sub_5B54(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SettingsCloudController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_5C48(uint64_t a1)
{
  v2 = sub_11C70();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_11D00();
}

uint64_t sub_5D68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_11D70();
  *a1 = result & 1;
  return result;
}

uint64_t sub_5D98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_11D70();
  *a1 = result & 1;
  return result;
}

unint64_t sub_5DC8()
{
  result = qword_1CA58;
  if (!qword_1CA58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1CA58);
  }

  return result;
}

id sub_5E14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_5154();
  sub_11AC0();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

char *AccountsViewControllerRepresentable.makeUIViewController(context:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DeviceEnrollmentViewController();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC17DeviceEnrollments30DeviceEnrollmentViewController_model] = a2;

  swift_getKeyPath();
  sub_5154();
  sub_11AC0();

  [*(a2 + 16) setDelegate:v3];
  return v3;
}

unint64_t sub_5FE4()
{
  result = qword_1CA68;
  if (!qword_1CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA68);
  }

  return result;
}

uint64_t sub_6094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7F5C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_60F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7F5C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_6178(uint64_t a1)
{
  sub_7F5C();
  sub_11E90();
  __break(1u);
}

uint64_t sub_635C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  sub_12200();
  v6[7] = sub_121F0();
  v8 = sub_121E0();

  return _swift_task_switch(sub_63FC, v8, v7);
}

uint64_t sub_63FC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  *(v0 + 64) = _Block_copy(v1);
  if (v2)
  {
    v3 = sub_121D0();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 72) = v3;
  if (*(v0 + 24))
  {
    sub_12170();
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 80) = v4;
  if (*(v0 + 32))
  {
    sub_12170();
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 88) = v5;
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_652C;

  return sub_7A98(v3);
}

uint64_t sub_652C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 48);
  v6 = *v1;

  if (v4)
  {
    v7 = *(v3 + 64);
    v7[2](v7, a1);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_66E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 296) = a6;
  *(v7 + 200) = a5;
  *(v7 + 208) = v6;
  *(v7 + 184) = a3;
  *(v7 + 192) = a4;
  *(v7 + 168) = a1;
  *(v7 + 176) = a2;
  sub_12200();
  *(v7 + 216) = sub_121F0();
  v9 = sub_121E0();
  *(v7 + 224) = v9;
  *(v7 + 232) = v8;

  return _swift_task_switch(sub_6788, v9, v8);
}

uint64_t sub_6788()
{
  if (*(v0 + 168))
  {
    v1.super.isa = sub_121C0().super.isa;
  }

  else
  {
    v1.super.isa = 0;
  }

  *(v0 + 240) = v1;
  if (*(v0 + 184))
  {
    v2 = sub_12140();
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 248) = v2;
  if (*(v0 + 200))
  {
    v3 = sub_12140();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 256) = v3;
  v4 = *(v0 + 208);
  v5 = *(v0 + 296);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_6934;
  v6 = swift_continuation_init();
  *(v0 + 136) = sub_4AB4(&qword_1CA98, &qword_12DB8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_6E1C;
  *(v0 + 104) = &unk_18D98;
  *(v0 + 112) = v6;
  v7 = type metadata accessor for DeviceEnrollmentViewController();
  *(v0 + 144) = v4;
  *(v0 + 152) = v7;
  objc_msgSendSuper2((v0 + 144), "showConfirmationWithButtons:title:message:destructive:completion:", v1.super.isa, v2, v3, v5, v0 + 80);

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_6934()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return _swift_task_switch(sub_6A3C, v2, v1);
}

void sub_6A3C()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[20];
  v0[33] = v4;

  if (v4 == 2)
  {
    v5 = *(v0[26] + OBJC_IVAR____TtC17DeviceEnrollments30DeviceEnrollmentViewController_model);
    v0[34] = v5;
    if (v5)
    {

      v6 = swift_task_alloc();
      v0[35] = v6;
      *v6 = v0;
      v6[1] = sub_6B64;

      sub_3BEC(1, 0);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v7 = v0[1];
    v8 = v0[33];

    v7(v8);
  }
}

uint64_t sub_6B64()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_6CE4;
  }

  else
  {

    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_6C80;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_6C80()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 264);

  return v1(v2);
}

uint64_t sub_6CE4()
{

  if (qword_1C6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_11BC0();
  sub_20A8(v1, qword_1CF20);
  v2 = sub_11BA0();
  v3 = sub_12240();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Unable to set sync state to true after cancel was selected.", v4, 2u);
  }

  v5 = *(v0 + 8);
  v6 = *(v0 + 264);

  return v5(v6);
}

uint64_t sub_6E1C(uint64_t a1, uint64_t a2)
{
  **(*(*sub_70B8((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

id sub_6FB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceEnrollmentViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_7008(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_706C(void *a1)
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

void *sub_70B8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_70FC()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_7154()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_4BF0;

  return sub_635C(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_722C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_53F0;

  return v6();
}

uint64_t sub_7314()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_53F0;

  return sub_722C(v2, v3, v4);
}

uint64_t sub_73D4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_4BF0;

  return v7();
}

uint64_t sub_74C0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_7500(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_53F0;

  return sub_73D4(a1, v4, v5, v6);
}

uint64_t sub_75CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_4AB4(&qword_1C960, &qword_12DC0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_4CE4(a3, v23 - v10);
  v12 = sub_12230();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_7888(v11);
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

  sub_12220();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_121E0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_12190() + 32;
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

    sub_7888(a3);

    return v21;
  }

LABEL_8:
  sub_7888(a3);
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

uint64_t sub_7888(uint64_t a1)
{
  v2 = sub_4AB4(&qword_1C960, &qword_12DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_78F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7928(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_53F0;

  return sub_4D54(a1, v4);
}

uint64_t sub_79E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4BF0;

  return sub_4D54(a1, v4);
}

uint64_t sub_7A98(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_11AA0();
  v2[4] = swift_task_alloc();
  sub_12130();
  v2[5] = swift_task_alloc();
  sub_12200();
  v2[6] = sub_121F0();
  v4 = sub_121E0();
  v2[7] = v4;
  v2[8] = v3;

  return _swift_task_switch(sub_7B88, v4, v3);
}

uint64_t sub_7B88()
{
  sub_12120();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass:ObjCClassFromMetadata];
  sub_11A90();
  v4 = sub_12180();
  v6 = v5;
  v0[9] = v5;
  sub_12120();
  v7 = [v2 bundleForClass:ObjCClassFromMetadata];
  sub_11A90();
  v8 = sub_12180();
  v10 = v9;
  v0[10] = v9;
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_7D7C;
  v12 = v0[2];

  return sub_66E4(v12, v4, v6, v8, v10, 1);
}

uint64_t sub_7D7C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_7EE4, v4, v3);
}

uint64_t sub_7EE4()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

unint64_t sub_7F5C()
{
  result = qword_1CAA0;
  if (!qword_1CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAA0);
  }

  return result;
}

uint64_t sub_7FB8@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_11CA0();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SettingsCloudManageDataView(0);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_4AB4(&qword_1CB78, &qword_12EE0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = sub_4AB4(&qword_1CB80, &qword_12EE8);
  v11 = *(v10 - 8);
  v31 = v10;
  v32 = v11;
  __chkstk_darwin(v10);
  v27 = &v26 - v12;
  *v9 = sub_11DF0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_4AB4(&qword_1CB88, &qword_12EF0);
  v34 = v1;
  sub_4AB4(&qword_1CB90, &qword_12EF8);
  sub_BE5C(&qword_1CB98, &qword_1CB90, &qword_12EF8, &protocol conformance descriptor for TupleView<A>);
  sub_11F40();
  sub_B9F0(v1, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v14 = swift_allocObject();
  sub_BA64(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = &v9[*(v7 + 36)];
  sub_11CC0();
  sub_12210();
  *v15 = &unk_12F10;
  *(v15 + 1) = v14;
  sub_11C90();
  v16 = sub_BB94();
  v17 = v27;
  sub_11FC0();
  (*(v29 + 8))(v4, v30);
  sub_BC7C(v9);
  sub_11DD0();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v20 = sub_11F80();
  v22 = v21;
  LOBYTE(v4) = v23;
  v35 = v7;
  v36 = v16;
  swift_getOpaqueTypeConformance2();
  v24 = v31;
  sub_11FE0();
  sub_BCE4(v20, v22, v4 & 1);

  return (*(v32 + 8))(v17, v24);
}

uint64_t sub_8438@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v54 = sub_4AB4(&qword_1CBC8, &qword_12F58);
  v53 = *(v54 - 8);
  v3 = __chkstk_darwin(v54);
  v52 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v57 = &v48 - v5;
  v6 = sub_4AB4(&qword_1CBD0, &qword_12F60);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  v51 = sub_4AB4(&qword_1CBD8, &qword_12F68);
  v56 = *(v51 - 8);
  v9 = __chkstk_darwin(v51);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v48 - v11;
  *v8 = sub_11DC0();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v13 = sub_4AB4(&qword_1CBE0, &qword_12F70);
  sub_B0A4(a1, &v8[*(v13 + 44)]);
  sub_4AB4(&qword_1CBE8, &qword_12F78);
  sub_BE5C(&qword_1CBF0, &qword_1CBD0, &qword_12F60, &protocol conformance descriptor for HStack<A>);
  sub_BE5C(&qword_1CBF8, &qword_1CBE8, &qword_12F78, &protocol conformance descriptor for VStack<A>);
  v14 = v12;
  v49 = v12;
  sub_120B0();
  v58 = a1;
  sub_11DD0();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v17 = sub_11F80();
  v19 = v18;
  v21 = v20;
  sub_11F30();
  v22 = sub_11F70();
  v24 = v23;
  LOBYTE(v12) = v25;
  v27 = v26;

  sub_BCE4(v17, v19, v21 & 1);

  v67 = v22;
  v68 = v24;
  v69 = v12 & 1;
  v70 = v27;
  sub_4AB4(&qword_1CC00, &qword_12F80);
  v28 = sub_B9A8(&qword_1CC08, &qword_12F88);
  v29 = sub_B9A8(&qword_1CC10, &qword_12F90);
  v30 = sub_BD24();
  v31 = sub_BE08();
  v32 = sub_BE5C(&qword_1CC48, &qword_1CC10, &qword_12F90, &protocol conformance descriptor for TupleView<A>);
  v59 = v28;
  v60 = &type metadata for String;
  v61 = v29;
  v62 = &type metadata for Text;
  v63 = v30;
  v64 = v31;
  v65 = v32;
  v66 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v33 = v57;
  sub_120D0();
  v34 = *(v56 + 16);
  v35 = v50;
  v36 = v14;
  v37 = v51;
  v34(v50, v36, v51);
  v38 = v53;
  v39 = *(v53 + 16);
  v40 = v52;
  v41 = v33;
  v42 = v54;
  v39(v52, v41, v54);
  v43 = v55;
  v34(v55, v35, v37);
  v44 = sub_4AB4(&qword_1CC50, &qword_12FA8);
  v39(&v43[*(v44 + 48)], v40, v42);
  v45 = *(v38 + 8);
  v45(v57, v42);
  v46 = *(v56 + 8);
  v46(v49, v37);
  v45(v40, v42);
  return (v46)(v35, v37);
}

uint64_t sub_8A54@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_4AB4(&qword_1CCB8, &qword_13070);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v25 = sub_11DF0();
  sub_11DD0();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7 = sub_11F80();
  v9 = v8;
  v11 = v10;
  v26 = sub_11E20();
  v12 = sub_11F60();
  v14 = v13;
  v16 = v15;
  sub_BCE4(v7, v9, v11 & 1);

  v17 = sub_11EF0();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  sub_11F10();
  sub_51F0(v4, &qword_1CCB8, &qword_13070);
  v18 = sub_11F70();
  v20 = v19;
  LOBYTE(v4) = v21;
  v23 = v22;

  sub_BCE4(v12, v14, v16 & 1);

  *a1 = v25;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = v20;
  *(a1 + 40) = v4 & 1;
  *(a1 + 48) = v23;
  return result;
}

uint64_t sub_8CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v3 = sub_11AA0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_12130();
  __chkstk_darwin(v4 - 8);
  v5 = sub_4AB4(&qword_1CC08, &qword_12F88);
  v25[0] = v5;
  __chkstk_darwin(v5);
  v7 = v25 - v6;
  *v7 = sub_11DC0();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_4AB4(&qword_1CC58, &qword_12FB0);
  sub_9110(a1, &v7[*(v8 + 44)]);
  v9 = type metadata accessor for SettingsCloudManageDataView(0);
  v10 = (a1 + *(v9 + 32));
  v12 = *v10;
  v11 = v10[1];
  v26 = v12;
  v27 = v11;
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  v13 = v30;
  swift_getKeyPath();
  v26 = v13;
  sub_BECC(&qword_1C968, type metadata accessor for SettingsCloudModel, &unk_12A28);
  sub_11AC0();

  v14 = *(v13 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__isDeletedDataAllowed);

  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = (v14 & 1) == 0;
  v17 = &v7[*(v5 + 36)];
  *v17 = KeyPath;
  v17[1] = sub_BEBC;
  v17[2] = v16;
  sub_12120();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_11A90();
  v30 = sub_12180();
  v31 = v20;
  v21 = (a1 + *(v9 + 28));
  v22 = *v21;
  v23 = *(v21 + 1);
  v28 = v22;
  v29 = v23;
  sub_4AB4(&qword_1CC60, &qword_13330);
  sub_12040();
  v25[4] = a1;
  sub_4AB4(&qword_1CC10, &qword_12F90);
  sub_BD24();
  sub_BE08();
  sub_BE5C(&qword_1CC48, &qword_1CC10, &qword_12F90, &protocol conformance descriptor for TupleView<A>);
  sub_12000();

  return sub_51F0(v7, &qword_1CC08, &qword_12F88);
}

uint64_t sub_9110@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  v3 = sub_4AB4(&qword_1CC98, &qword_13028);
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin(v3);
  v63 = (&v58 - v4);
  v5 = sub_11B10();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = __chkstk_darwin(v5);
  v60 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = &v58 - v8;
  v9 = sub_4AB4(&qword_1CCA0, &qword_13030);
  v10 = __chkstk_darwin(v9 - 8);
  v68 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = &v58 - v12;
  v13 = type metadata accessor for SettingsCloudManageDataView(0);
  v14 = v13 - 8;
  v64 = *(v13 - 8);
  v15 = *(v64 + 64);
  __chkstk_darwin(v13);
  v16 = sub_4AB4(&qword_1CC70, &qword_12FF8);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  v19 = sub_11AA0();
  __chkstk_darwin(v19 - 8);
  v20 = sub_12130();
  __chkstk_darwin(v20 - 8);
  v65 = sub_4AB4(&qword_1CC68, &qword_12FF0);
  v21 = *(v65 - 8);
  v22 = __chkstk_darwin(v65);
  v66 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v58 - v24;
  sub_12120();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_11A90();
  v73 = sub_12180();
  v74 = v28;
  sub_11C30();
  v29 = sub_11C50();
  (*(*(v29 - 8) + 56))(v18, 0, 1, v29);
  v30 = a1;
  sub_B9F0(a1, &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v32 = swift_allocObject();
  sub_BA64(&v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
  sub_BE08();
  v33 = v25;
  sub_12050();
  v34 = (v30 + *(v14 + 40));
  v36 = *v34;
  v35 = v34[1];
  v73 = v36;
  v74 = v35;
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  v37 = v72;
  swift_getKeyPath();
  v73 = v37;
  sub_BECC(&qword_1C968, type metadata accessor for SettingsCloudModel, &unk_12A28);
  sub_11AC0();

  v38 = *(v37 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__deleteInProgress);

  if (v38 == 1)
  {
    v39 = v59;
    sub_11B00();
    LOBYTE(v73) = 1;
    v41 = v60;
    v40 = v61;
    v42 = *(v61 + 16);
    v43 = v62;
    v42(v60, v39, v62);
    v44 = v73;
    v45 = v63;
    *v63 = 0;
    *(v45 + 8) = v44;
    v46 = sub_4AB4(&qword_1CCB0, &qword_13068);
    v42((v45 + *(v46 + 48)), v41, v43);
    v47 = *(v40 + 8);
    v47(v39, v43);
    v47(v41, v43);
    v48 = v67;
    sub_C1B0(v45, v67, &qword_1CC98, &qword_13028);
    (*(v69 + 56))(v48, 0, 1, v70);
  }

  else
  {
    v48 = v67;
    (*(v69 + 56))(v67, 1, 1, v70);
  }

  v49 = v21;
  v50 = *(v21 + 16);
  v51 = v65;
  v52 = v66;
  v50(v66, v33, v65);
  v53 = v68;
  sub_C224(v48, v68, &qword_1CCA0, &qword_13030);
  v54 = v71;
  v50(v71, v52, v51);
  v55 = sub_4AB4(&qword_1CCA8, &qword_13060);
  sub_C224(v53, &v54[*(v55 + 48)], &qword_1CCA0, &qword_13030);
  sub_51F0(v48, &qword_1CCA0, &qword_13030);
  v56 = *(v49 + 8);
  v56(v33, v51);
  sub_51F0(v53, &qword_1CCA0, &qword_13030);
  return (v56)(v52, v51);
}

uint64_t sub_98DC(uint64_t a1)
{
  type metadata accessor for SettingsCloudManageDataView(0);

  sub_4AB4(&qword_1CC60, &qword_13330);
  sub_12020();
  sub_12030();
}

uint64_t sub_9988@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v57 = a1;
  v62 = a2;
  v2 = sub_11AA0();
  __chkstk_darwin(v2 - 8);
  v60 = (&v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_12130();
  __chkstk_darwin(v4 - 8);
  v58 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = sub_4AB4(&qword_1CC68, &qword_12FF0);
  v67 = *(v61 - 8);
  v6 = __chkstk_darwin(v61);
  v68 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v51 - v8;
  v9 = type metadata accessor for SettingsCloudManageDataView(0);
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_4AB4(&qword_1CC70, &qword_12FF8);
  __chkstk_darwin(v11 - 8);
  v13 = &v51 - v12;
  v59 = sub_4AB4(&qword_1CC78, &qword_13000);
  v64 = *(v59 - 8);
  v14 = __chkstk_darwin(v59);
  v65 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v51 - v16;
  v18 = sub_120A0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_4AB4(&qword_1CC80, &qword_13008);
  v54 = *(v56 - 8);
  v22 = v54;
  v23 = __chkstk_darwin(v56);
  v63 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v51 - v25;
  sub_12090();
  sub_11CB0();
  sub_BECC(&qword_1CC88, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
  v53 = v26;
  sub_11FF0();
  (*(v19 + 8))(v21, v18);
  sub_11C30();
  v27 = sub_11C50();
  v28 = *(*(v27 - 8) + 56);
  v28(v13, 0, 1, v27);
  sub_B9F0(v57, &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v30 = swift_allocObject();
  sub_BA64(&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
  v31 = v17;
  v52 = v17;
  sub_11AF0();
  sub_12120();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_11A90();
  v69 = sub_12180();
  v70 = v34;
  sub_11C40();
  v28(v13, 0, 1, v27);
  sub_BE08();
  v35 = v66;
  sub_12050();
  v36 = *(v22 + 16);
  v37 = v63;
  v38 = v56;
  v36(v63, v26, v56);
  v39 = v65;
  v60 = *(v64 + 16);
  v40 = v59;
  v60(v65, v31, v59);
  v58 = *(v67 + 16);
  v41 = v35;
  v42 = v61;
  v58(v68, v41, v61);
  v43 = v62;
  v36(v62, v37, v38);
  v44 = sub_4AB4(&qword_1CC90, &qword_13020);
  v60(&v43[*(v44 + 48)], v39, v40);
  v45 = &v43[*(v44 + 64)];
  v46 = v68;
  v58(v45, v68, v42);
  v47 = *(v67 + 8);
  v47(v66, v42);
  v48 = *(v64 + 8);
  v48(v52, v40);
  v49 = *(v54 + 8);
  v49(v53, v38);
  v47(v46, v42);
  v48(v65, v40);
  return (v49)(v63, v38);
}

uint64_t sub_A15C(uint64_t a1)
{
  v1[8] = a1;
  sub_12200();
  v1[9] = sub_121F0();
  v3 = sub_121E0();
  v1[10] = v3;
  v1[11] = v2;

  return _swift_task_switch(sub_A1F4, v3, v2);
}

uint64_t sub_A1F4()
{
  v1 = v0[8];
  v2 = (v1 + *(type metadata accessor for SettingsCloudManageDataView(0) + 32));
  v3 = *v2;
  v0[12] = *v2;
  v4 = v2[1];
  v0[13] = v4;
  v0[2] = v3;
  v0[3] = v4;
  v0[14] = sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  v0[15] = v0[6];
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_A2D8;

  return sub_3144();
}

uint64_t sub_A2D8()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_A648;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_A3F4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_A3F4()
{
  v1 = v0[13];
  v0[4] = v0[12];
  v0[5] = v1;
  sub_12020();
  v0[18] = v0[7];
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_A4A4;

  return sub_3980();
}

uint64_t sub_A4A4()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_A5E8, v3, v2);
}

uint64_t sub_A5E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_A648()
{

  if (qword_1C6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_11BC0();
  sub_20A8(v1, qword_1CF20);
  swift_errorRetain();
  v2 = sub_11BA0();
  v3 = sub_12240();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Error deleting data: %{public}@", v4, 0xCu);
    sub_51F0(v5, &qword_1C970, &qword_12AF0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_A800@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_11AA0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_12130();
  __chkstk_darwin(v3 - 8);
  sub_12120();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_11A90();
  sub_12180();
  sub_BE08();
  result = sub_11F90();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_A968@<X0>(uint64_t a1@<X8>)
{
  sub_11DD0();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  result = sub_11F80();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_AA40(uint64_t a1)
{
  v1[6] = a1;
  sub_12200();
  v1[7] = sub_121F0();
  v3 = sub_121E0();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_AAD8, v3, v2);
}

uint64_t sub_AAD8()
{
  v1 = v0[6];
  v2 = (v1 + *(type metadata accessor for SettingsCloudManageDataView(0) + 32));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  v0[10] = v0[4];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_ABC0;

  return EnrollmentAssetService.canDeleteCloudData()();
}

uint64_t sub_ABC0(char a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_AE34;
  }

  else
  {
    v4 = sub_ACD8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_ACD8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  if (v1 == *(v2 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__isDeletedDataAllowed))
  {
    *(v2 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__isDeletedDataAllowed) = v1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    *(v0 + 40) = v2;
    sub_BECC(&qword_1C968, type metadata accessor for SettingsCloudModel, &unk_12A28);
    sub_11AB0();
  }

  v4 = *(v0 + 64);
  v5 = *(v0 + 72);

  return _swift_task_switch(sub_B044, v4, v5);
}

uint64_t sub_AE34()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_AE98, v1, v2);
}

uint64_t sub_AE98()
{

  if (qword_1C6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_11BC0();
  sub_20A8(v1, qword_1CF20);
  swift_errorRetain();
  v2 = sub_11BA0();
  v3 = sub_12260();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Error updating isDeleteAllowed state: %{public}@", v4, 0xCu);
    sub_51F0(v5, &qword_1C970, &qword_12AF0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_B044()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_B0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_11DB0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_4AB4(&qword_1CCC0, &qword_13078);
  v9 = __chkstk_darwin(v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v26 - v12;
  v14 = type metadata accessor for SettingsCloudManageDataView(0);
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *(a1 + *(v14 + 36));
  if (v16 == 1)
  {
    v18 = *&v15;
  }

  else
  {
    sub_C218(v15, 0);
    sub_12250();
    v19 = sub_11EC0();
    v26[0] = v4;
    v20 = v19;
    sub_11B90();

    sub_11DA0();
    swift_getAtKeyPath();
    sub_BA58(v15, 0);
    (*(v5 + 8))(v7, v26[0]);
    v18 = *&v26[1];
  }

  [objc_allocWithZone(ISImageDescriptor) initWithSize:75.0 scale:{75.0, v18}];
  sub_11B20();
  v21 = sub_11ED0();
  v22 = &v13[*(v8 + 36)];
  *v22 = v21;
  *(v22 + 8) = xmmword_12E20;
  *(v22 + 24) = xmmword_12E20;
  v22[40] = 0;
  sub_C224(v13, v11, &qword_1CCC0, &qword_13078);
  *a2 = 0;
  *(a2 + 8) = 1;
  v23 = sub_4AB4(&qword_1CCC8, &unk_13080);
  sub_C224(v11, a2 + *(v23 + 48), &qword_1CCC0, &qword_13078);
  v24 = a2 + *(v23 + 64);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_51F0(v13, &qword_1CCC0, &qword_13078);
  return sub_51F0(v11, &qword_1CCC0, &qword_13078);
}

void sub_B398(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  sub_12010();
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  v5 = type metadata accessor for SettingsCloudManageDataView(0);
  sub_C1B0(a1, a3 + v5[6], &qword_1CAA8, &unk_12E60);
  v6 = a3 + v5[7];
  sub_12010();
  *v6 = v12;
  *(v6 + 8) = v13;
  v7 = (a3 + v5[8]);
  type metadata accessor for SettingsCloudModel(0);
  sub_12010();
  *v7 = v12;
  v7[1] = v13;
  v8 = v5[9];
  v9 = objc_allocWithZone(ISIcon);
  v10 = sub_12140();
  v11 = [v9 initWithType:v10];

  *(a3 + v8) = v11;
}

uint64_t type metadata accessor for SettingsCloudManageDataView(uint64_t a1)
{
  result = qword_1CB08;
  if (!qword_1CB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4AB4(&qword_1CAA8, &unk_12E60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_B644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_4AB4(&qword_1CAA8, &unk_12E60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_B70C(uint64_t a1)
{
  sub_B884(319, &qword_1CB18, &type metadata for CGFloat, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_B884(319, &qword_1CB20, &type metadata for Bool, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_B8D4(319, &qword_1CB28, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_B8D4(319, &qword_1CB30, type metadata accessor for SettingsCloudModel, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_B938();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_B884(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_B8D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_B938()
{
  result = qword_1CB38;
  if (!qword_1CB38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1CB38);
  }

  return result;
}

uint64_t sub_B9A8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_B9F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsCloudManageDataView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BA58(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_BA64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsCloudManageDataView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_BAC8()
{
  v2 = *(type metadata accessor for SettingsCloudManageDataView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_53F0;

  return sub_AA40(v0 + v3);
}

unint64_t sub_BB94()
{
  result = qword_1CBA0;
  if (!qword_1CBA0)
  {
    sub_B9A8(&qword_1CB78, &qword_12EE0);
    sub_BE5C(&qword_1CBA8, &qword_1CBB0, &qword_12F18, &protocol conformance descriptor for VStack<A>);
    sub_BECC(&qword_1CBB8, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CBA0);
  }

  return result;
}

uint64_t sub_BC7C(uint64_t a1)
{
  v2 = sub_4AB4(&qword_1CB78, &qword_12EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BCE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_BD24()
{
  result = qword_1CC18;
  if (!qword_1CC18)
  {
    sub_B9A8(&qword_1CC08, &qword_12F88);
    sub_BE5C(&qword_1CC20, &qword_1CC28, &qword_12F98, &protocol conformance descriptor for HStack<A>);
    sub_BE5C(&qword_1CC30, &qword_1CC38, &qword_12FA0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CC18);
  }

  return result;
}

unint64_t sub_BE08()
{
  result = qword_1CC40;
  if (!qword_1CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CC40);
  }

  return result;
}

uint64_t sub_BE5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_B9A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_BECC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_BF14()
{
  v2 = *(type metadata accessor for SettingsCloudManageDataView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_4BF0;

  return sub_A15C(v0 + v3);
}

uint64_t sub_BFE0()
{
  v1 = type metadata accessor for SettingsCloudManageDataView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_BA58(*(v0 + v4), *(v0 + v4 + 8));

  v6 = *(v1 + 24);
  sub_4AB4(&qword_1CA40, &qword_12BC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_11C70();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_C148()
{
  v1 = *(type metadata accessor for SettingsCloudManageDataView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_98DC(v2);
}

uint64_t sub_C1B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4AB4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_C218(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_C224(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4AB4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_C28C()
{
  sub_B9A8(&qword_1CB80, &qword_12EE8);
  sub_B9A8(&qword_1CB78, &qword_12EE0);
  sub_BB94();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_C348(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4AB4(&qword_1CAA8, &unk_12E60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_C418(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_4AB4(&qword_1CAA8, &unk_12E60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SettingsCloudView(uint64_t a1)
{
  result = qword_1CD28;
  if (!qword_1CD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_C514(uint64_t a1)
{
  sub_C660(319, &qword_1CB30, type metadata accessor for SettingsCloudModel, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_C660(319, &qword_1CB28, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_C6C4(319, &qword_1CB18, &type metadata for CGFloat);
      if (v3 <= 0x3F)
      {
        sub_C6C4(319, &unk_1CD38, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_B938();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_C660(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_C6C4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_11C80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_C72C()
{
  v1 = sub_11DB0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SettingsCloudView(0) + 24));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_12250();
  v8 = sub_11EC0();
  sub_11B90();

  sub_11DA0();
  swift_getAtKeyPath();
  sub_BA58(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_C888@<X0>(_BYTE *a2@<X8>)
{
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  swift_getKeyPath();
  sub_10CF0(&qword_1C968, type metadata accessor for SettingsCloudModel, &unk_12A28);
  sub_11AC0();

  v3 = *(v5 + 24);

  *a2 = v3;
  return result;
}

uint64_t sub_C960(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SettingsCloudView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_4AB4(&qword_1C960, &qword_12DC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  LOBYTE(a1) = *a1;
  v13 = sub_12230();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1008C(a4, v9);
  sub_12200();
  v14 = sub_121F0();
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = v15 + v8;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = &protocol witness table for MainActor;
  sub_10254(v9, v17 + v15);
  *(v17 + v16) = a1;
  sub_CE8C(0, 0, v12, &unk_13248, v17);
}

uint64_t sub_CB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 40) = a4;
  sub_12200();
  *(v5 + 48) = sub_121F0();
  v7 = sub_121E0();
  *(v5 + 56) = v7;
  *(v5 + 64) = v6;

  return _swift_task_switch(sub_CBCC, v7, v6);
}

uint64_t sub_CBCC()
{
  v1 = *(v0 + 40);
  v3 = *v1;
  v2 = v1[1];
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  *(v0 + 72) = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_CC9C;
  v5 = *(v0 + 96);

  return sub_3BEC(v5, 1);
}

uint64_t sub_CC9C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_CE1C;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_CDB8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_CDB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_CE1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_CE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_4AB4(&qword_1C960, &qword_12DC0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_C224(a3, v22 - v9, &qword_1C960, &qword_12DC0);
  v11 = sub_12230();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_51F0(v10, &qword_1C960, &qword_12DC0);
  }

  else
  {
    sub_12220();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_121E0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_12190() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_51F0(a3, &qword_1C960, &qword_12DC0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_51F0(a3, &qword_1C960, &qword_12DC0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_D138@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v29 = sub_11CA0();
  v2 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SettingsCloudView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_4AB4(&qword_1CD78, &qword_130F8);
  __chkstk_darwin(v8);
  v10 = (&v28 - v9);
  v30 = sub_4AB4(&qword_1CD80, &qword_13100);
  v11 = *(v30 - 8);
  __chkstk_darwin(v30);
  v13 = &v28 - v12;
  *v10 = sub_120E0();
  v10[1] = v14;
  v15 = sub_4AB4(&qword_1CD88, &qword_13108);
  sub_D54C(v1, v10 + *(v15 + 44));
  sub_1008C(v1, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_10254(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = (v10 + *(v8 + 36));
  sub_11CC0();
  sub_12210();
  *v18 = &unk_13120;
  v18[1] = v17;
  sub_11C90();
  v19 = sub_10384();
  sub_11FC0();
  (*(v2 + 8))(v4, v29);
  sub_51F0(v10, &qword_1CD78, &qword_130F8);
  sub_11DD0();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v22 = sub_11F80();
  v24 = v23;
  LOBYTE(v7) = v25;
  v32 = v8;
  v33 = v19;
  swift_getOpaqueTypeConformance2();
  v26 = v30;
  sub_11FE0();
  sub_BCE4(v22, v24, v7 & 1);

  return (*(v11 + 8))(v13, v26);
}

uint64_t sub_D54C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4AB4(&qword_1CDA8, &qword_13138);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v21[-v9];
  v22 = a1;
  sub_4AB4(&qword_1CDB0, &qword_13140);
  sub_BE5C(&qword_1CDB8, &qword_1CDB0, &qword_13140, &protocol conformance descriptor for TupleView<A>);
  sub_11F40();
  v11 = sub_11EE0();
  sub_11C60();
  v12 = &v10[*(v5 + 44)];
  *v12 = v11;
  *(v12 + 1) = v13;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  *(v12 + 4) = v16;
  v12[40] = 0;
  v17 = a1[1];
  v24 = *a1;
  v25 = v17;
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  v18 = v23;
  sub_C224(v10, v8, &qword_1CDA8, &qword_13138);
  sub_C224(v8, a2, &qword_1CDA8, &qword_13138);
  v19 = (a2 + *(sub_4AB4(&qword_1CDC0, &qword_13148) + 48));
  *v19 = v18;
  v19[1] = 0;

  sub_51F0(v10, &qword_1CDA8, &qword_13138);

  return sub_51F0(v8, &qword_1CDA8, &qword_13138);
}

uint64_t sub_D754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_4AB4(&qword_1CDC8, &qword_13150);
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = __chkstk_darwin(v3);
  v53 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = &v43 - v6;
  v50 = sub_4AB4(&qword_1CDD0, &qword_13158);
  v46 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = &v43 - v7;
  v48 = sub_4AB4(&qword_1CDD8, &qword_13160);
  __chkstk_darwin(v48);
  v9 = &v43 - v8;
  v49 = sub_4AB4(&qword_1CDE0, &qword_13168);
  v44 = *(v49 - 8);
  __chkstk_darwin(v49);
  v11 = &v43 - v10;
  v12 = sub_11DB0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_4AB4(&qword_1CDE8, &qword_13170);
  v17 = __chkstk_darwin(v16 - 8);
  v51 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v43 - v19;
  v21 = type metadata accessor for SettingsCloudView(0);
  v22 = a1 + *(v21 + 28);
  v23 = *v22;
  if (*(v22 + 8) != 1)
  {

    sub_12250();
    v29 = sub_11EC0();
    sub_11B90();

    sub_11DA0();
    swift_getAtKeyPath();
    sub_BA58(v23, 0);
    v21 = (*(v13 + 8))(v15, v12);
    if (LOBYTE(v57[0]) != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    __chkstk_darwin(v21);
    v24 = a1;
    *(&v43 - 2) = a1;
    sub_4AB4(&qword_1CE10, &qword_13180);
    sub_BE5C(&qword_1CE08, &qword_1CE10, &qword_13180, &protocol conformance descriptor for VStack<A>);
    sub_120C0();
    v30 = v44;
    v31 = v49;
    (*(v44 + 16))(v9, v11, v49);
    swift_storeEnumTagMultiPayload();
    sub_1047C();
    sub_10538();
    sub_11E10();
    v28 = (*(v30 + 8))(v11, v31);
    goto LABEL_6;
  }

  if (v23)
  {
    goto LABEL_5;
  }

LABEL_3:
  __chkstk_darwin(v21);
  v24 = a1;
  *(&v43 - 2) = a1;
  sub_4AB4(&qword_1CDF0, &qword_13178);
  sub_BE5C(&qword_1CDF8, &qword_1CDF0, &qword_13178, &protocol conformance descriptor for VStack<A>);
  v25 = v45;
  sub_120C0();
  v26 = v46;
  v27 = v50;
  (*(v46 + 16))(v9, v25, v50);
  swift_storeEnumTagMultiPayload();
  sub_1047C();
  sub_10538();
  sub_11E10();
  v28 = (*(v26 + 8))(v25, v27);
LABEL_6:
  v47 = v20;
  __chkstk_darwin(v28);
  *(&v43 - 2) = v24;
  sub_FAD0(v57);
  sub_4AB4(&qword_1CE20, &qword_13188);
  sub_4AB4(&qword_1CE28, &qword_13190);
  sub_105FC();
  sub_10798();
  v32 = v52;
  sub_120D0();
  v33 = v20;
  v34 = v51;
  sub_C224(v33, v51, &qword_1CDE8, &qword_13170);
  v36 = v55;
  v35 = v56;
  v37 = *(v55 + 16);
  v38 = v53;
  v37(v53, v32, v56);
  v39 = v54;
  sub_C224(v34, v54, &qword_1CDE8, &qword_13170);
  v40 = sub_4AB4(&qword_1CE70, &qword_131B8);
  v37((v39 + *(v40 + 48)), v38, v35);
  v41 = *(v36 + 8);
  v41(v32, v35);
  sub_51F0(v47, &qword_1CDE8, &qword_13170);
  v41(v38, v35);
  return sub_51F0(v34, &qword_1CDE8, &qword_13170);
}

uint64_t sub_DF20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_11DF0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_4AB4(&qword_1CE78, &qword_131C0);
  return sub_DF78(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_DF78@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v59 = a1;
  v66 = a2;
  v2 = type metadata accessor for SettingsCloudView(0);
  v60 = *(v2 - 8);
  v58 = *(v60 + 64);
  __chkstk_darwin(v2 - 8);
  v57 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_11AA0();
  __chkstk_darwin(v4 - 8);
  v56[2] = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_12130();
  __chkstk_darwin(v6 - 8);
  v56[1] = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_4AB4(&qword_1CE80, &qword_131C8) - 8;
  v8 = __chkstk_darwin(v64);
  v65 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v68 = v56 - v10;
  v63 = sub_120A0();
  v71 = *(v63 - 8);
  v11 = __chkstk_darwin(v63);
  v62 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v67 = v56 - v13;
  v61 = sub_12110();
  v70 = *(v61 - 8);
  v14 = __chkstk_darwin(v61);
  v69 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v72 = v56 - v16;
  sub_11DD0();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass:ObjCClassFromMetadata];
  sub_11F80();
  sub_11DD0();
  v20 = [v18 bundleForClass:ObjCClassFromMetadata];
  sub_11F80();
  sub_12100();
  v21 = v67;
  sub_12090();
  sub_12120();
  v22 = [v18 bundleForClass:ObjCClassFromMetadata];
  sub_11A90();
  v75 = sub_12180();
  v76 = v23;
  v24 = v59;
  v25 = v57;
  sub_1008C(v59, v57);
  sub_12200();
  v26 = sub_121F0();
  v27 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = &protocol witness table for MainActor;
  sub_10254(v25, v28 + v27);
  sub_1008C(v24, v25);
  v29 = sub_121F0();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = &protocol witness table for MainActor;
  sub_10254(v25, v30 + v27);
  sub_12080();
  sub_BE08();
  v31 = v68;
  sub_12060();
  v32 = v24[1];
  v73 = *v24;
  v74 = v32;
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  v33 = v75;
  swift_getKeyPath();
  v73 = v33;
  sub_10CF0(&qword_1C968, type metadata accessor for SettingsCloudModel, &unk_12A28);
  sub_11AC0();

  v34 = *(v33 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__setSyncInProgress);

  KeyPath = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  v37 = (v31 + *(sub_4AB4(&qword_1CE88, &qword_13228) + 36));
  *v37 = KeyPath;
  v37[1] = sub_10904;
  v37[2] = v36;
  LOBYTE(KeyPath) = sub_11EE0();
  sub_11C60();
  v38 = v31 + *(v64 + 44);
  *v38 = KeyPath;
  *(v38 + 8) = v39;
  *(v38 + 16) = v40;
  *(v38 + 24) = v41;
  *(v38 + 32) = v42;
  *(v38 + 40) = 0;
  v43 = v69;
  v44 = *(v70 + 16);
  v45 = v61;
  v44(v69, v72, v61);
  v46 = *(v71 + 16);
  v47 = v62;
  v48 = v21;
  v49 = v63;
  v46(v62, v48, v63);
  v50 = v65;
  sub_C224(v31, v65, &qword_1CE80, &qword_131C8);
  v51 = v66;
  v44(v66, v43, v45);
  v52 = sub_4AB4(&qword_1CE90, &unk_13230);
  v46(&v51[*(v52 + 48)], v47, v49);
  sub_C224(v50, &v51[*(v52 + 64)], &qword_1CE80, &qword_131C8);
  sub_51F0(v68, &qword_1CE80, &qword_131C8);
  v53 = *(v71 + 8);
  v53(v67, v49);
  v54 = *(v70 + 8);
  v54(v72, v45);
  sub_51F0(v50, &qword_1CE80, &qword_131C8);
  v53(v47, v49);
  return (v54)(v69, v45);
}

uint64_t sub_E870@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_11DF0();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = sub_4AB4(&qword_1CED0, &qword_132E8);
  return sub_E8C8(a1, a2 + *(v4 + 44));
}

uint64_t sub_E8C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = type metadata accessor for SettingsCloudView(0);
  v4 = v3 - 8;
  v105 = *(v3 - 8);
  v104 = *(v105 + 64);
  __chkstk_darwin(v3);
  v103 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_4AB4(&qword_1CE88, &qword_13228) - 8;
  v6 = __chkstk_darwin(v106);
  v108 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v119 = &v96 - v8;
  v107 = sub_120A0();
  v122 = *(v107 - 8);
  v9 = __chkstk_darwin(v107);
  v121 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v123 = &v96 - v11;
  v12 = sub_4AB4(&qword_1CCB8, &qword_13070);
  __chkstk_darwin(v12 - 8);
  v114 = &v96 - v13;
  v14 = sub_11AA0();
  __chkstk_darwin(v14 - 8);
  v100 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_12130();
  __chkstk_darwin(v16 - 8);
  v98 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_4AB4(&qword_1CCC0, &qword_13078);
  v19 = v18 - 8;
  v20 = __chkstk_darwin(v18);
  v118 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v96 - v22;
  v24 = *(v4 + 40);
  v101 = a1;
  v25 = *(a1 + v24);
  [objc_allocWithZone(ISImageDescriptor) initWithSize:50.0 scale:{50.0, sub_C72C()}];
  v120 = v23;
  sub_11B20();
  v26 = sub_11ED0();
  v27 = &v23[*(v19 + 44)];
  *v27 = v26;
  *(v27 + 1) = 0x4010000000000000;
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = 0;
  v27[40] = 0;
  sub_11DD0();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v110 = objc_opt_self();
  v97 = ObjCClassFromMetadata;
  v29 = [v110 bundleForClass:ObjCClassFromMetadata];
  v30 = sub_11F80();
  v32 = v31;
  v34 = v33;
  sub_11F20();
  v35 = sub_11F70();
  v37 = v36;
  v39 = v38;

  sub_BCE4(v30, v32, v34 & 1);

  sub_11F00();
  v40 = sub_11F50();
  v42 = v41;
  v44 = v43;
  sub_BCE4(v35, v37, v39 & 1);

  LODWORD(v124) = sub_11E20();
  v116 = sub_11F60();
  v115 = v45;
  v102 = v46;
  v117 = v47;
  sub_BCE4(v40, v42, v44 & 1);

  sub_12120();
  v48 = [v110 bundleForClass:ObjCClassFromMetadata];
  sub_11A90();
  sub_12180();
  sub_11DE0();
  v49 = sub_11F80();
  v51 = v50;
  v53 = v52;
  LODWORD(v124) = sub_11E20();
  v54 = sub_11F60();
  v56 = v55;
  LOBYTE(v30) = v57;
  sub_BCE4(v49, v51, v53 & 1);

  v58 = sub_11EF0();
  v59 = v114;
  (*(*(v58 - 8) + 56))(v114, 1, 1, v58);
  sub_11F10();
  sub_51F0(v59, &qword_1CCB8, &qword_13070);
  v113 = sub_11F70();
  v112 = v60;
  v99 = v61;
  v114 = v62;

  sub_BCE4(v54, v56, v30 & 1);

  KeyPath = swift_getKeyPath();
  sub_12090();
  sub_12120();
  v63 = [v110 bundleForClass:v97];
  sub_11A90();
  v126 = sub_12180();
  v127 = v64;
  v65 = v101;
  v66 = v103;
  sub_1008C(v101, v103);
  sub_12200();
  v67 = sub_121F0();
  v68 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = v67;
  *(v69 + 24) = &protocol witness table for MainActor;
  sub_10254(v66, v69 + v68);
  sub_1008C(v65, v66);
  v70 = sub_121F0();
  v71 = swift_allocObject();
  *(v71 + 16) = v70;
  *(v71 + 24) = &protocol witness table for MainActor;
  sub_10254(v66, v71 + v68);
  sub_12080();
  sub_BE08();
  v72 = v119;
  sub_12060();
  v73 = v65[1];
  v124 = *v65;
  v125 = v73;
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  v74 = v126;
  swift_getKeyPath();
  v124 = v74;
  sub_10CF0(&qword_1C968, type metadata accessor for SettingsCloudModel, &unk_12A28);
  sub_11AC0();

  LOBYTE(v56) = *(v74 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__setSyncInProgress);

  v75 = swift_getKeyPath();
  v76 = swift_allocObject();
  *(v76 + 16) = v56;
  v77 = (v72 + *(v106 + 44));
  *v77 = v75;
  v77[1] = sub_11174;
  v77[2] = v76;
  v78 = v118;
  sub_C224(v120, v118, &qword_1CCC0, &qword_13078);
  LOBYTE(v124) = v102 & 1;
  LOBYTE(v126) = v99 & 1;
  v110 = *(v122 + 16);
  v79 = v121;
  v80 = v107;
  (v110)(v121, v123, v107);
  v81 = v108;
  sub_C224(v72, v108, &qword_1CE88, &qword_13228);
  v82 = v109;
  sub_C224(v78, v109, &qword_1CCC0, &qword_13078);
  v83 = sub_4AB4(&qword_1CED8, &unk_13320);
  v84 = v82 + v83[12];
  LOBYTE(v78) = v124;
  v86 = v116;
  v85 = v117;
  v87 = v115;
  *v84 = v116;
  *(v84 + 8) = v87;
  *(v84 + 16) = v78;
  *(v84 + 24) = v85;
  v88 = v82 + v83[16];
  v89 = v126;
  LODWORD(v106) = v126;
  v90 = v112;
  *v88 = v113;
  *(v88 + 8) = v90;
  *(v88 + 16) = v89;
  v91 = KeyPath;
  *(v88 + 24) = v114;
  *(v88 + 32) = v91;
  *(v88 + 40) = 1;
  (v110)(v82 + v83[20], v79, v80);
  sub_C224(v81, v82 + v83[24], &qword_1CE88, &qword_13228);
  sub_110A8(v86, v87, v78);

  v92 = v113;
  v93 = v112;
  sub_110A8(v113, v112, v106);

  sub_51F0(v119, &qword_1CE88, &qword_13228);
  v94 = *(v122 + 8);
  v94(v123, v80);
  sub_51F0(v120, &qword_1CCC0, &qword_13078);
  sub_51F0(v81, &qword_1CE88, &qword_13228);
  v94(v121, v80);
  sub_BCE4(v92, v93, v126);

  sub_BCE4(v116, v115, v124);

  return sub_51F0(v118, &qword_1CCC0, &qword_13078);
}

uint64_t sub_F5B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_4AB4(&qword_1CAA8, &unk_12E60);
  __chkstk_darwin(v3 - 8);
  v5 = (&v27 - v4);
  v6 = type metadata accessor for SettingsCloudManageDataView(0);
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_4AB4(&qword_1CE40, &qword_13198);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v13 = a1[1];
  v29 = *a1;
  v14 = v29;
  v30 = v13;
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  *v5 = swift_getKeyPath();
  sub_4AB4(&qword_1CA40, &qword_12BC8);
  swift_storeEnumTagMultiPayload();
  sub_B398(v5, v8);
  sub_4AB4(&qword_1CE98, &qword_132A8);
  sub_10BB4();
  sub_10CF0(&qword_1CEC8, type metadata accessor for SettingsCloudManageDataView, "-[");
  sub_11CD0();
  v29 = v14;
  v30 = v13;
  sub_12020();
  v15 = v28;
  swift_getKeyPath();
  v29 = v15;
  sub_10CF0(&qword_1C968, type metadata accessor for SettingsCloudModel, &unk_12A28);
  sub_11AC0();

  v16 = *(v15 + 24);

  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = (v16 & 1) == 0;
  v19 = &v12[*(v10 + 44)];
  *v19 = KeyPath;
  v19[1] = sub_11174;
  v19[2] = v18;
  v29 = v14;
  v30 = v13;
  sub_12020();
  v20 = v28;
  swift_getKeyPath();
  v29 = v20;
  sub_11AC0();

  LODWORD(v13) = *(v20 + 24);

  if (v13)
  {
    v21 = 0;
  }

  else
  {
    v21 = 2;
  }

  v22 = swift_getKeyPath();
  v23 = v12;
  v24 = v27;
  sub_10D8C(v23, v27);
  result = sub_4AB4(&qword_1CE20, &qword_13188);
  v26 = v24 + *(result + 36);
  *v26 = v22;
  *(v26 + 8) = v21;
  return result;
}

__n128 sub_F978@<Q0>(uint64_t a1@<X8>)
{
  sub_11DD0();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_11F80();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_120F0();
  sub_11CE0();
  v11 = sub_11E20();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  *(a1 + 96) = v17;
  *(a1 + 112) = v18;
  *(a1 + 128) = v19;
  *(a1 + 32) = v13;
  *(a1 + 48) = v14;
  result = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v16;
  *(a1 + 144) = v11;
  return result;
}

uint64_t sub_FAD0@<X0>(uint64_t *a2@<X8>)
{
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  swift_getKeyPath();
  sub_10CF0(&qword_1C968, type metadata accessor for SettingsCloudModel, &unk_12A28);
  sub_11AC0();

  v3 = *(v20 + 24);

  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    sub_11DD0();
    _s27SettingsCloudBundleSentinelCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v11 = sub_11F80();
    v13 = v12;
    v15 = v14;
    sub_11F30();
    v5 = sub_11F70();
    v6 = v16;
    v18 = v17;
    v8 = v19;

    sub_BCE4(v11, v13, v15 & 1);

    v7 = v18 & 1;
  }

  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

uint64_t sub_FCCC(uint64_t a1)
{
  v1[5] = a1;
  sub_12200();
  v1[6] = sub_121F0();
  v3 = sub_121E0();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_FD64, v3, v2);
}

uint64_t sub_FD64()
{
  if (qword_1C6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_11BC0();
  sub_20A8(v1, qword_1CF20);
  v2 = sub_11BA0();
  v3 = sub_12260();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Refreshing sync state on appear", v4, 2u);
  }

  v5 = v0[5];

  v6 = v5[1];
  v0[2] = *v5;
  v0[3] = v6;
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  v0[9] = v0[4];
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_FEE4;

  return sub_3980();
}

uint64_t sub_FEE4()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_10028, v3, v2);
}

uint64_t sub_10028()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsCloudView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100F0()
{
  v1 = type metadata accessor for SettingsCloudView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  sub_4AB4(&qword_1CA40, &qword_12BC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_11C70();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_BA58(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  sub_BA58(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsCloudView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_102B8()
{
  v2 = *(type metadata accessor for SettingsCloudView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_4BF0;

  return sub_FCCC(v0 + v3);
}

unint64_t sub_10384()
{
  result = qword_1CD90;
  if (!qword_1CD90)
  {
    sub_B9A8(&qword_1CD78, &qword_130F8);
    sub_BE5C(&qword_1CD98, &qword_1CDA0, &unk_13128, &protocol conformance descriptor for ZStack<A>);
    sub_10CF0(&qword_1CBB8, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CD90);
  }

  return result;
}

unint64_t sub_1047C()
{
  result = qword_1CE00;
  if (!qword_1CE00)
  {
    sub_B9A8(&qword_1CDE0, &qword_13168);
    sub_BE5C(&qword_1CE08, &qword_1CE10, &qword_13180, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE00);
  }

  return result;
}

unint64_t sub_10538()
{
  result = qword_1CE18;
  if (!qword_1CE18)
  {
    sub_B9A8(&qword_1CDD0, &qword_13158);
    sub_BE5C(&qword_1CDF8, &qword_1CDF0, &qword_13178, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE18);
  }

  return result;
}

unint64_t sub_105FC()
{
  result = qword_1CE30;
  if (!qword_1CE30)
  {
    sub_B9A8(&qword_1CE20, &qword_13188);
    sub_106B4();
    sub_BE5C(&qword_1CE58, &qword_1CE60, &qword_131B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE30);
  }

  return result;
}

unint64_t sub_106B4()
{
  result = qword_1CE38;
  if (!qword_1CE38)
  {
    sub_B9A8(&qword_1CE40, &qword_13198);
    sub_BE5C(&qword_1CE48, &qword_1CE50, &unk_131A0, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_BE5C(&qword_1CC30, &qword_1CC38, &qword_12FA0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE38);
  }

  return result;
}

unint64_t sub_10798()
{
  result = qword_1CE68;
  if (!qword_1CE68)
  {
    sub_B9A8(&qword_1CE28, &qword_13190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE68);
  }

  return result;
}

uint64_t sub_10830@<X0>(_BYTE *a1@<X8>)
{
  result = sub_11D80();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10860@<X0>(_BYTE *a1@<X8>)
{
  result = sub_11D80();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1091C()
{
  v1 = type metadata accessor for SettingsCloudView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[5];
  sub_4AB4(&qword_1CA40, &qword_12BC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_11C70();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_BA58(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  sub_BA58(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  return _swift_deallocObject(v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_10A8C(uint64_t a1)
{
  v4 = *(type metadata accessor for SettingsCloudView(0) - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_4BF0;

  return sub_CB30(a1, v5, v6, v7, v8);
}

unint64_t sub_10BB4()
{
  result = qword_1CEA0;
  if (!qword_1CEA0)
  {
    sub_B9A8(&qword_1CE98, &qword_132A8);
    sub_10C6C();
    sub_BE5C(&qword_1CEB8, &qword_1CEC0, &qword_132B8, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CEA0);
  }

  return result;
}

unint64_t sub_10C6C()
{
  result = qword_1CEA8;
  if (!qword_1CEA8)
  {
    sub_B9A8(&qword_1CEB0, &qword_132B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CEA8);
  }

  return result;
}

uint64_t sub_10CF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10D38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_11D50();
  *a1 = result;
  return result;
}

uint64_t sub_10D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4AB4(&qword_1CE40, &qword_13198);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10DFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_11D30();
  *a1 = result;
  return result;
}

uint64_t sub_10E54@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for SettingsCloudView(0);

  return sub_C888(a1);
}

uint64_t sub_10EC8()
{
  v1 = type metadata accessor for SettingsCloudView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[5];
  sub_4AB4(&qword_1CA40, &qword_12BC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_11C70();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_BA58(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  sub_BA58(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_11034(_BYTE *a1)
{
  v3 = *(type metadata accessor for SettingsCloudView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_C960(a1, v4, v5, v6);
}

uint64_t sub_110A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_110B8()
{
  sub_B9A8(&qword_1CD80, &qword_13100);
  sub_B9A8(&qword_1CD78, &qword_130F8);
  sub_10384();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t DeviceEnrollmentsBundle.toggle.getter()
{
  sub_4AB4(&qword_1CC60, &qword_13330);
  sub_12020();
  return v1;
}

void (*DeviceEnrollmentsBundle.toggle.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1 + OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle__toggle;
  v6 = *(v1 + OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle__toggle);
  *(v3 + 50) = v6;
  v7 = *(v5 + 8);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = sub_4AB4(&qword_1CC60, &qword_13330);
  sub_12020();
  return sub_11338;
}

void sub_11338(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v3;
  *(v1 + 49) = v2;
  sub_12030();

  free(v1);
}

uint64_t DeviceEnrollmentsBundle.$toggle.getter()
{
  sub_4AB4(&qword_1CC60, &qword_13330);
  sub_12040();
  return v1;
}

id DeviceEnrollmentsBundle.__allocating_init(account:dataclass:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle__toggle];
  v11 = 0;
  sub_12010();
  v7 = v13;
  *v6 = v12;
  *(v6 + 1) = v7;
  *&v5[OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle_dataclass] = a2;
  v10.receiver = v5;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, "init");

  return v8;
}

id DeviceEnrollmentsBundle.init(account:dataclass:)(void *a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle__toggle];
  v10 = 0;
  sub_12010();
  v6 = v12;
  *v5 = v11;
  *(v5 + 1) = v6;
  *&v2[OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle_dataclass] = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for DeviceEnrollmentsBundle();
  v7 = objc_msgSendSuper2(&v9, "init");

  return v7;
}

id DeviceEnrollmentsBundle.init(accountManager:dataclass:)(void *a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle__toggle];
  v10 = 0;
  sub_12010();
  v6 = v12;
  *v5 = v11;
  *(v5 + 1) = v6;
  if (a2)
  {
    *&v2[OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle_dataclass] = a2;
    v9.receiver = v2;
    v9.super_class = type metadata accessor for DeviceEnrollmentsBundle();
    v7 = objc_msgSendSuper2(&v9, "init");
  }

  else
  {

    type metadata accessor for DeviceEnrollmentsBundle();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v7;
}

id DeviceEnrollmentsBundle.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceEnrollmentsBundle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceEnrollmentsBundle();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_117A4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceEnrollmentsBundle();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle__toggle];
  v11 = 0;
  sub_12010();
  v7 = v13;
  *v6 = v12;
  *(v6 + 1) = v7;
  *&v5[OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle_dataclass] = a2;
  v10.receiver = v5;
  v10.super_class = v4;
  v8 = objc_msgSendSuper2(&v10, "init");

  return v8;
}

uint64_t _s17DeviceEnrollments0aB6BundleC5sheet7SwiftUI7AnyViewVvg_0()
{
  v0 = type metadata accessor for SettingsCloudView(0);
  __chkstk_darwin(v0);
  v2 = (v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SettingsCloudModel(0);
  swift_allocObject();
  v12[1] = sub_27BC();
  sub_12010();
  v3 = v12[3];
  *v2 = v12[2];
  v2[1] = v3;
  v4 = v0[5];
  *(v2 + v4) = swift_getKeyPath();
  sub_4AB4(&qword_1CA40, &qword_12BC8);
  swift_storeEnumTagMultiPayload();
  v5 = v2 + v0[6];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = v2 + v0[7];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = v0[8];
  v8 = objc_allocWithZone(ISIcon);
  v9 = sub_12140();
  v10 = [v8 initWithType:v9];

  *(v2 + v7) = v10;
  sub_11A38();
  return sub_12070();
}

unint64_t sub_11A38()
{
  result = qword_1CF18;
  if (!qword_1CF18)
  {
    type metadata accessor for SettingsCloudView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CF18);
  }

  return result;
}