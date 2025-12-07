uint64_t shouldUseLegacyPlugin(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"useNewPlugin"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 BOOLValue] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1700(uint64_t a1, Class a2)
{
  v2 = [[a2 alloc] initWithDictionary:*(a1 + 32)];

  return v2;
}

id sub_1784(id a1, Class a2)
{
  v2 = objc_alloc_init(a2);

  return v2;
}

uint64_t sub_1AF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_6130();
  sub_1B58(v5, a2);
  sub_1BBC(v5, a2);
  return sub_6110();
}

uint64_t *sub_1B58(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1BBC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1BF4()
{
  v0 = sub_6130();
  sub_1B58(v0, qword_10B30);
  v1 = sub_1BBC(v0, qword_10B30);
  if (qword_10B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1BBC(v0, qword_10E40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1CBC(void (*a1)(id), uint64_t a2)
{
  v5 = sub_6030();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v48[0] = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10B20 != -1)
  {
    swift_once();
  }

  v8 = sub_6130();
  sub_1BBC(v8, qword_10B30);
  v9 = v2;
  v10 = sub_6120();
  v11 = sub_6270();

  v12 = &SFMCommandRouter__properties;
  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    v14 = a2;
    v15 = swift_slowAlloc();
    *v13 = 138412290;
    v16 = [v9 dictionary];
    *(v13 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&dword_0, v10, v11, "Performing DevicePlaySound: %@", v13, 0xCu);
    sub_2EC4(v15);
    v17 = v15;
    a2 = v14;
    v12 = &SFMCommandRouter__properties;
    sub_3084(v17);
    sub_3084(v13);
  }

  v48[1] = sub_2C1C(v9);
  sub_2C8C(&qword_10B70, &qword_6CF8);
  sub_2CD4();
  v18 = sub_6300();

  if ((v18 & 1) == 0)
  {
    v35 = sub_6120();
    v36 = sub_6280();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      sub_309C(&dword_0, v38, v39, "SADPDevicePlaySound: Empty devices list");
      sub_3084(v37);
    }

    if (!a1)
    {
      return;
    }

    sub_2FE8(0, &qword_10B88, SACommandFailed_ptr);
    v40 = sub_30BC(0, 1, 0xD00000000000002ELL, 0x8000000000006F30);
    v41 = [v40 *&v12[190]];

    if (v41)
    {
LABEL_28:
      a1(v41);

      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  v19 = sub_2C1C(v9);
  if (!v19)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v20 = sub_2220(v19);

  if (v20 >= 2)
  {
    v21 = sub_6120();
    v22 = sub_6280();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "SADPDevicePlaySound only supports one device at a time. Ignoring all but the first", v23, 2u);
      sub_3084(v23);
    }
  }

  v24 = sub_2C1C(v9);
  if (!v24)
  {
    goto LABEL_33;
  }

  v25 = v24;
  if (!sub_2220(v24))
  {
LABEL_23:

    goto LABEL_24;
  }

  if ((v25 & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
    {
      v26 = *(v25 + 32);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_32;
  }

  v26 = sub_6340();
LABEL_16:
  v27 = v26;

  v28 = sub_2D80(v27);
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    v32 = v48[0];
    sub_6010();
    v33 = swift_allocObject();
    v33[2] = v30;
    v33[3] = v31;
    v33[4] = v9;
    v33[5] = a1;
    v33[6] = a2;
    v34 = v9;

    sub_2EB4(a1, a2);
    sub_6020();

    (*(v6 + 8))(v32, v5);
    return;
  }

LABEL_24:
  v42 = sub_6120();
  v43 = sub_6280();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    sub_309C(&dword_0, v45, v46, "Device id is required for SADPDevicePlaySound");
    sub_3084(v44);
  }

  if (a1)
  {
    sub_2FE8(0, &qword_10B88, SACommandFailed_ptr);
    v47 = sub_30BC(0, 1, 0xD00000000000002CLL, 0x8000000000006F60);
    v41 = [v47 *&v12[190]];

    if (v41)
    {
      goto LABEL_28;
    }

LABEL_34:
    __break(1u);
  }
}

uint64_t sub_2220(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

void sub_2244(uint64_t a1, void *a2, unint64_t a3, void (*a4)(char *, char *, uint64_t), void (*a5)(void), uint64_t a6)
{
  v54 = a6;
  v55 = a5;
  v52 = a2;
  v53 = a4;
  v8 = sub_60A0();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v49 - v14;
  __chkstk_darwin(v13);
  v17 = &v49 - v16;
  v18 = sub_2C8C(&qword_10B98, &unk_6D10);
  __chkstk_darwin(v18);
  v20 = &v49 - v19;
  sub_2F2C(a1, &v49 - v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v17, v20, v8);
    if (qword_10B20 != -1)
    {
      swift_once();
    }

    v21 = sub_6130();
    sub_1BBC(v21, qword_10B30);
    v22 = *(v9 + 16);
    v22(v15, v17, v8);
    v23 = sub_6120();
    v24 = sub_6280();
    v25 = os_log_type_enabled(v23, v24);
    v51 = v9;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v50 = v26;
      v52 = swift_slowAlloc();
      v56 = v52;
      *v26 = 136315138;
      v22(v12, v15, v8);
      v27 = sub_61F0();
      v53 = v22;
      v28 = v27;
      v30 = v29;
      v31 = *(v9 + 8);
      v31(v15, v8);
      v32 = sub_553C(v28, v30, &v56);

      v33 = v50;
      *(v50 + 1) = v32;
      v22 = v53;
      v34 = v24;
      v35 = v31;
      _os_log_impl(&dword_0, v23, v34, "Play sound failed: %s", v33, 0xCu);
      sub_2F9C(v52);
    }

    else
    {

      v35 = *(v9 + 8);
      v35(v15, v8);
    }

    sub_2FE8(0, &qword_10B88, SACommandFailed_ptr);
    v22(v12, v17, v8);
    v44 = sub_3148(v12);
    v41 = v44;
    if (v55)
    {
      v45 = [v44 dictionary];
      if (v45)
      {
        v46 = v45;
        v55();

        v35(v17, v8);
        return;
      }

      __break(1u);
      goto LABEL_23;
    }

    v35(v17, v8);
LABEL_21:

    return;
  }

  if (qword_10B20 != -1)
  {
    swift_once();
  }

  v36 = sub_6130();
  sub_1BBC(v36, qword_10B30);

  v37 = sub_6120();
  v38 = sub_6290();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v56 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_553C(v52, a3, &v56);
    _os_log_impl(&dword_0, v37, v38, "Play sound succeeded on device %s", v39, 0xCu);
    sub_2F9C(v40);
  }

  v41 = [objc_allocWithZone(SACommandSucceeded) init];
  sub_2DF0(v53);
  if (v42)
  {
    v43 = sub_61D0();
  }

  else
  {
    v43 = 0;
  }

  [v41 setRefId:v43];

  if (!v55)
  {
    goto LABEL_21;
  }

  v47 = [v41 dictionary];
  if (v47)
  {
    v48 = v47;
    v55();

    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
}

id sub_28BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFMDevicePlaySoundHandler();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_2914(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_61B0().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SFMDevicePlaySoundHandler();
  v3 = objc_msgSendSuper2(&v5, "initWithDictionary:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_2A0C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4.super.isa = sub_61B0().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SFMDevicePlaySoundHandler();
  v5 = objc_msgSendSuper2(&v7, "initWithDictionary:context:", v4.super.isa, a2);

  swift_unknownObjectRelease();
  if (v5)
  {
  }

  return v5;
}

id sub_2B34(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SFMDevicePlaySoundHandler();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2BC4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SFMDevicePlaySoundHandler();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_2C1C(void *a1)
{
  v1 = [a1 devices];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2FE8(0, &unk_10BA0, SADPDeviceDetail_ptr);
  v3 = sub_6230();

  return v3;
}

uint64_t sub_2C8C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2CD4()
{
  result = qword_10B78;
  if (!qword_10B78)
  {
    sub_2D38(&qword_10B80, &qword_6D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10B78);
  }

  return result;
}

uint64_t sub_2D38(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2D80(void *a1)
{
  v2 = [a1 deviceId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_61E0();

  return v3;
}

uint64_t sub_2DF0(void *a1)
{
  v1 = [a1 refId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_61E0();

  return v3;
}

uint64_t sub_2E54()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_2EB4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2EC4(uint64_t a1)
{
  v2 = sub_2C8C(&qword_10B90, &qword_6D08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2F2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C8C(&qword_10B98, &unk_6D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2F9C(void *a1)
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

uint64_t sub_2FE8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_3028(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_3038()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3084(uint64_t a1)
{
}

void sub_309C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id sub_30BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = v8;
  if ((a2 & 1) == 0)
  {
    [v8 setErrorCode:a1];
  }

  if (a4)
  {
    sub_3268(a3, a4, v9);
  }

  return v9;
}

id sub_3148(uint64_t a1)
{
  v2 = sub_60A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6090();
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_61F0();
  v9 = sub_30BC(v6, 0, v7, v8);
  (*(v3 + 8))(a1, v2);
  return v9;
}

void sub_3268(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_61D0();

  [a3 setReason:v4];
}

uint64_t sub_32CC()
{
  v0 = sub_6130();
  sub_1B58(v0, qword_10BB0);
  v1 = sub_1BBC(v0, qword_10BB0);
  if (qword_10B18 != -1)
  {
    swift_once();
  }

  v2 = sub_1BBC(v0, qword_10E58);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_3394(void *a1)
{
  v2 = v1;
  if (qword_10B28 != -1)
  {
    sub_5F10(&qword_10B28);
  }

  v4 = sub_6130();
  sub_1BBC(v4, qword_10BB0);
  v5 = sub_6120();
  v6 = sub_6290();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_5F6C();
    *v7 = 0;
    sub_5FA0(&dword_0, v8, v9, "SFMDeviceSync beginning sync");
    sub_3084(v7);
  }

  if (sub_4270(a1))
  {
    v10 = sub_6120();
    v11 = sub_6290();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = sub_5F6C();
      *v12 = 0;
      sub_5FA0(&dword_0, v13, v14, "SFMDeviceSync Sync info indicates cache should be evicted.");
      sub_3084(v12);
    }

    sub_60D0();
  }

  v15 = sub_3704();
  if (v15)
  {
    v16 = v15;
    sub_2C8C(&qword_10D70, &qword_6DC8);
    sub_5EC8(&qword_10D78, &qword_10D70, &qword_6DC8, &protocol conformance descriptor for [A]);
    if (sub_6260())
    {
      type metadata accessor for SyncGroupIterator();
      swift_allocObject();
      swift_unknownObjectRetain();
      v17 = sub_4A24(v16, a1);
      v18 = OBJC_IVAR___SFMDeviceSyncHandler_syncGroupIterator;
      *(v2 + OBJC_IVAR___SFMDeviceSyncHandler_syncGroupIterator) = v17;

      v19 = *(v2 + v18);
      if (v19 && *(v19 + 64) == 1)
      {
        v20 = sub_6120();
        v21 = sub_6290();
        if (sub_5F84(v21))
        {
          v22 = sub_5F6C();
          *v22 = 0;
          sub_5FC0(&dword_0, v23, v24, "SFMDeviceSync requesting reset sync");
          sub_3084(v22);
        }

        v25 = sub_61D0();
        [a1 resetWithValidity:v25];
      }

      else
      {
        v26 = sub_6120();
        v27 = sub_6290();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = sub_5F6C();
          *v28 = 0;
          _os_log_impl(&dword_0, v26, v27, "SFMDeviceSync anchor and validity match, no sync needed", v28, 2u);
          sub_3084(v28);
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_3704()
{
  v55 = sub_6140();
  sub_5F30();
  v53 = v1;
  __chkstk_darwin(v2);
  sub_5F44();
  v51 = (v4 - v3);
  v54 = sub_6190();
  sub_5F30();
  v52 = v5;
  v7 = __chkstk_darwin(v6);
  v49 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = v45 - v9;
  v10 = sub_6150();
  sub_5F30();
  v48 = v11;
  __chkstk_darwin(v12);
  sub_5F44();
  v15 = v14 - v13;
  sub_6170();
  sub_5F30();
  v46 = v17;
  v47 = v16;
  __chkstk_darwin(v16);
  sub_5F44();
  v20 = v19 - v18;
  v21 = dispatch_semaphore_create(0);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v45[0] = v22 + 16;
  v45[1] = *&v0[OBJC_IVAR___SFMDeviceSyncHandler_queue];
  v23 = swift_allocObject();
  v23[2] = v0;
  v23[3] = v22;
  v23[4] = v21;
  aBlock[4] = sub_5460;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_422C;
  aBlock[3] = &unk_C758;
  v24 = _Block_copy(aBlock);
  v25 = v0;

  v26 = v21;
  sub_6160();
  v56 = &_swiftEmptyArrayStorage;
  sub_5E80(&qword_10D40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_2C8C(&qword_10D48, &qword_6DA8);
  sub_5F54();
  sub_5EC8(v27, &qword_10D48, &qword_6DA8, v28);
  sub_6310();
  sub_62C0();
  v29 = v24;
  v30 = v26;
  _Block_release(v29);
  (*(v48 + 8))(v15, v10);
  (*(v46 + 8))(v20, v47);

  v31 = v49;
  sub_6180();
  v32 = v51;
  *v51 = 9;
  v33 = v53;
  v34 = v55;
  (*(v53 + 104))(v32, enum case for DispatchTimeInterval.seconds(_:), v55);
  v35 = v50;
  sub_61A0();
  (*(v33 + 8))(v32, v34);
  v36 = *(v52 + 8);
  v37 = v31;
  v38 = v54;
  v36(v37, v54);
  LOBYTE(v34) = sub_62E0();
  v36(v35, v38);
  if (v34)
  {
    if (qword_10B28 != -1)
    {
      sub_5F10(&qword_10B28);
    }

    v39 = sub_6130();
    sub_1BBC(v39, qword_10BB0);
    v40 = sub_6120();
    v41 = sub_6280();
    if (sub_5F84(v41))
    {
      v42 = sub_5F6C();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v36, "SFMDeviceSync Timed out waiting for loading devices", v42, 2u);
      sub_3084(v42);
    }

    return 0;
  }

  else
  {

    swift_beginAccess();
    v43 = *(v22 + 16);
  }

  return v43;
}

uint64_t sub_3C70(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_10B28 != -1)
  {
    swift_once();
  }

  v5 = sub_6130();
  sub_1BBC(v5, qword_10BB0);
  v6 = sub_6120();
  v7 = sub_6290();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "SFMDeviceSync loading devices", v8, 2u);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  v10 = a3;
  sub_60E0();
}

Swift::Int sub_3DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_60C0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v35 - v11;
  v13 = sub_2C8C(&qword_10D58, &qword_6DB0);
  __chkstk_darwin(v13);
  v15 = (v35 - v14);
  sub_54CC(a1, v35 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    if (qword_10B28 != -1)
    {
      swift_once();
    }

    v17 = sub_6130();
    sub_1BBC(v17, qword_10BB0);
    swift_errorRetain();
    v18 = sub_6120();
    v19 = sub_6280();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35[2] = v16;
      v36[0] = v21;
      *v20 = 136315138;
      swift_errorRetain();
      sub_2C8C(&qword_10D60, &qword_6DB8);
      v22 = sub_61F0();
      v24 = a2;
      v25 = sub_553C(v22, v23, v36);

      *(v20 + 4) = v25;
      a2 = v24;
      _os_log_impl(&dword_0, v18, v19, "The sync device provider errored with %s", v20, 0xCu);
      sub_2F9C(v21);
    }

    else
    {
    }

    v33 = 0;
  }

  else
  {
    (*(v7 + 32))(v12, v15, v6);
    if (qword_10B28 != -1)
    {
      swift_once();
    }

    v35[1] = a3;
    v26 = sub_6130();
    sub_1BBC(v26, qword_10BB0);
    (*(v7 + 16))(v10, v12, v6);
    v27 = sub_6120();
    v28 = sub_6290();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v35[0] = a2;
      v30 = v29;
      *v29 = 134217984;
      v31 = *(sub_60B0() + 16);

      v32 = *(v7 + 8);
      v32(v10, v6);
      *(v30 + 1) = v31;
      _os_log_impl(&dword_0, v27, v28, "The sync device provider provided %ld SyncDevices", v30, 0xCu);
      a2 = v35[0];
    }

    else
    {
      v32 = *(v7 + 8);
      v32(v10, v6);
    }

    v33 = sub_60B0();
    v32(v12, v6);
  }

  swift_beginAccess();
  *(a2 + 16) = v33;

  return sub_62F0();
}

uint64_t sub_422C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_4270(void *a1)
{
  result = [a1 reasons];
  if (result)
  {
    v2 = result;
    v3 = sub_6250();

    LOBYTE(v2) = sub_42F4(0xD000000000000027, 0x8000000000007070, v3);

    return (v2 & 1);
  }

  return result;
}

BOOL sub_42F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_6390();
  sub_6200();
  v6 = sub_63A0();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_6380();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

id sub_43E0(uint64_t a1, uint64_t a2, id a3)
{
  if (*(v3 + OBJC_IVAR___SFMDeviceSyncHandler_syncGroupIterator))
  {
    v6 = sub_52E0();
    if (v6)
    {
      v7 = v6;

      [a3 setIsDelete:0];
      [a3 setObject:v7];
      v8 = sub_61D0();

      [a3 setPostAnchor:v8];
    }

    else
    {

      if (a2)
      {
        v10 = sub_61D0();
      }

      else
      {
        v10 = 0;
      }

      [a3 setPostAnchor:v10];
    }
  }

  else
  {

    return [a3 setPostAnchor:0];
  }
}

uint64_t sub_45C4()
{
  v1 = v0;
  if (qword_10B28 != -1)
  {
    sub_5F10(&qword_10B28);
  }

  v2 = sub_6130();
  sub_1BBC(v2, qword_10BB0);
  v3 = sub_6120();
  v4 = sub_6290();
  if (sub_5F84(v4))
  {
    v5 = sub_5F6C();
    *v5 = 0;
    sub_5FC0(&dword_0, v6, v7, "SFMDeviceSync syncDidEnd");
    sub_3084(v5);
  }

  *(v1 + OBJC_IVAR___SFMDeviceSyncHandler_syncGroupIterator) = 0;
}

id sub_46CC()
{
  v14 = sub_62B0();
  sub_5F30();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_5F44();
  v6 = v5 - v4;
  v7 = sub_62A0();
  __chkstk_darwin(v7);
  sub_5F44();
  v8 = sub_6170();
  __chkstk_darwin(v8 - 8);
  sub_5F44();
  *&v0[OBJC_IVAR___SFMDeviceSyncHandler_syncGroupIterator] = 0;
  v13 = OBJC_IVAR___SFMDeviceSyncHandler_queue;
  sub_5E3C();
  sub_6160();
  v16 = &_swiftEmptyArrayStorage;
  sub_5E80(&qword_10DC8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_2C8C(&qword_10DD0, &unk_6E00);
  sub_5F54();
  sub_5EC8(v9, &qword_10DD0, &unk_6E00, v10);
  sub_6310();
  (*(v2 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  *&v0[v13] = sub_62D0();
  v11 = OBJC_IVAR___SFMDeviceSyncHandler_syncDeviceProvider;
  sub_6100();
  *&v0[v11] = sub_60F0();
  v15.receiver = v0;
  v15.super_class = type metadata accessor for SFMDeviceSyncHandler();
  return objc_msgSendSuper2(&v15, "init");
}

id sub_4970()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFMDeviceSyncHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_4A24(uint64_t a1, void *a2)
{
  v3 = v2;
  v58 = sub_2C8C(&qword_10D80, &qword_6DD0);
  v6 = __chkstk_darwin(v58);
  v57 = (v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v56 = v47 - v8;
  v9 = sub_6080();
  sub_5E80(&qword_10D88, &type metadata accessor for SyncDevice, &protocol conformance descriptor for SyncDevice);
  v59 = v9;
  v62 = sub_6240();
  v10 = sub_6370();
  *(v2 + 32) = v10;
  *(v2 + 40) = v11;
  v62 = v10;
  v63 = v11;

  v64._countAndFlagsBits = 124;
  v64._object = 0xE100000000000000;
  sub_6210(v64);
  v61 = *(a1 + 16);
  v65._countAndFlagsBits = sub_6370();
  sub_6210(v65);

  v13 = v62;
  v12 = v63;
  *(v3 + 48) = v62;
  *(v3 + 56) = v12;

  v14 = [a2 anchor];
  if (v14)
  {
    v15 = v14;
    v16 = sub_61E0();
    v18 = v17;

    if (v13 == v16 && v12 == v18)
    {
    }

    else
    {
      v20 = sub_6380();

      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v21 = [a2 validity];
    if (v21)
    {
      v22 = v21;
      v23 = sub_61E0();
      v25 = v24;

      if (v23 == 0xD000000000000016 && 0x80000000000070A0 == v25)
      {

        *(v3 + 64) = 0;
      }

      else
      {
        v27 = sub_6380();

        *(v3 + 64) = (v27 & 1) == 0;
        if ((v27 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

LABEL_27:
      swift_unknownObjectRelease();

      v32 = &_swiftEmptyArrayStorage;
LABEL_28:
      *(v3 + 16) = v32;
      *(v3 + 24) = 0;
      return v3;
    }
  }

  else
  {
  }

LABEL_17:
  *(v3 + 64) = 1;
LABEL_18:
  v28 = *(a1 + 16);
  if (!v28)
  {
    goto LABEL_27;
  }

  v47[1] = a2;
  v48 = v3;
  v29 = *(v3 + 40);
  v52 = *(v3 + 32);
  v61 = &_swiftEmptyArrayStorage;
  v54 = v29;

  result = sub_5B0C(0, v28, 0);
  v31 = 0;
  v32 = v61;
  v53 = *(a1 + 16);
  v33 = a1;
  v34 = *(v59 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v55 = v33;
  v51 = v33 + v35;
  v49 = v34 + 32;
  v50 = v34 + 16;
  while (v53 != v31)
  {
    if (v31 >= *(v55 + 16))
    {
      goto LABEL_30;
    }

    v36 = v58;
    v37 = v59;
    v38 = *(v58 + 48);
    v39 = v56;
    (*(v34 + 16))(&v56[v38], v51 + *(v34 + 72) * v31, v59);
    v40 = v57;
    *v57 = v31;
    (*(v34 + 32))(v40 + *(v36 + 48), &v39[v38], v37);
    v41 = sub_4F0C();
    v62 = v52;
    v63 = v54;

    v66._countAndFlagsBits = 124;
    v66._object = 0xE100000000000000;
    sub_6210(v66);
    v60 = ++v31;
    v67._countAndFlagsBits = sub_6370();
    sub_6210(v67);

    v42 = v62;
    v43 = v63;
    result = sub_5B2C(v40);
    v61 = v32;
    v45 = v32[2];
    v44 = v32[3];
    if (v45 >= v44 >> 1)
    {
      result = sub_5B0C((v44 > 1), v45 + 1, 1);
      v32 = v61;
    }

    v32[2] = v45 + 1;
    v46 = &v32[3 * v45];
    v46[4] = v41;
    v46[5] = v42;
    v46[6] = v43;
    if (v28 == v31)
    {
      swift_unknownObjectRelease();

      v3 = v48;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

id sub_4F0C()
{
  v0 = sub_2C8C(&qword_10D90, &qword_6DD8);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v28 - v4;
  v6 = [objc_allocWithZone(SAPerson) init];
  v7 = sub_6050();
  if (v8)
  {
    sub_5DD0(v7, v8, v6, &selRef_setFirstName_);
  }

  v9 = sub_6040();
  if (v10)
  {
    sub_5DD0(v9, v10, v6, &selRef_setLastName_);
  }

  sub_2C8C(&qword_10D98, &qword_6DE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_6D30;
  *(v11 + 32) = sub_5CCC(v6, &selRef_firstName);
  *(v11 + 40) = v12;
  *(v11 + 48) = sub_5CCC(v6, &selRef_lastName);
  *(v11 + 56) = v13;
  v30 = 0;
  v31 = 0xE000000000000000;
  v14 = v6;
  sub_6330(32);

  v30 = 0xD00000000000001ELL;
  v31 = 0x80000000000070C0;
  sub_2C8C(&qword_10DA0, &qword_6DE8);
  sub_5D2C();
  v29 = sub_6240();
  v32._countAndFlagsBits = sub_6370();
  sub_6210(v32);

  sub_5FF0();

  v15 = sub_6000();
  result = sub_5DA8(v5, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_5FE0(v17);
    v19 = v18;
    v20 = *(*(v15 - 8) + 8);
    v20(v5, v15);
    [v14 setIdentifier:v19];

    v21 = [objc_allocWithZone(SADPDeviceDetail) init];
    v22 = sub_6060();
    sub_5DD0(v22, v23, v21, &selRef_setDeviceName_);
    [v21 setOwner:v14];
    v30 = 0;
    v31 = 0xE000000000000000;
    v24 = v21;
    sub_6330(33);

    v30 = 0xD00000000000001FLL;
    v31 = 0x80000000000070E0;
    v29 = sub_6070();
    v33._countAndFlagsBits = sub_6370();
    sub_6210(v33);

    sub_5FF0();

    result = sub_5DA8(v3, 1, v15);
    if (result != 1)
    {

      sub_5FE0(v25);
      v27 = v26;
      v20(v3, v15);
      [v24 setIdentifier:v27];

      return v24;
    }
  }

  __break(1u);
  return result;
}

void *sub_52E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  if (v2 < v3)
  {
    v4 = *(v1 + 24 * v2 + 32);
    *(v0 + 24) = v2 + 1;
    v5 = v4;

    return v4;
  }

  __break(1u);
  return result;
}

void *sub_535C()
{

  return v0;
}

uint64_t sub_538C()
{
  v0 = sub_535C();

  return _swift_deallocClassInstance(v0, 65, 7);
}

uint64_t sub_53E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5418()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_546C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5484()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_54CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C8C(&qword_10D58, &qword_6DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_553C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_5600(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_5AAC(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_2F9C(v11);
  return v7;
}

unint64_t sub_5600(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_5700(a5, a6);
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
    result = sub_6350();
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

char *sub_5700(uint64_t a1, unint64_t a2)
{
  v3 = sub_574C(a1, a2);
  sub_5864(&off_C690);
  return v3;
}

char *sub_574C(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
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

  for (; v5; v5 = sub_6220())
  {
    result = sub_5948(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_6320();
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

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_6350();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
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

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_5864(uint64_t result)
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

    result = sub_59B8(result, v7, 1, v3);
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

void *sub_5948(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_2C8C(&qword_10D68, &qword_6DC0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_59B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2C8C(&qword_10D68, &qword_6DC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_5AAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_5B0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_5B94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_5B2C(uint64_t a1)
{
  v2 = sub_2C8C(&qword_10D80, &qword_6DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_5B94(void *result, int64_t a2, char a3, void *a4)
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
    sub_2C8C(&qword_10DB0, &qword_6DF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2C8C(&qword_10DB8, &qword_6DF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_5CCC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_61E0();

  return v4;
}

unint64_t sub_5D2C()
{
  result = qword_10DA8;
  if (!qword_10DA8)
  {
    sub_2D38(&qword_10DA0, &qword_6DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10DA8);
  }

  return result;
}

void sub_5DD0(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_61D0();

  [a3 *a4];
}

unint64_t sub_5E3C()
{
  result = qword_10DC0;
  if (!qword_10DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10DC0);
  }

  return result;
}

uint64_t sub_5E80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5EC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2D38(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5F10(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_5F6C()
{

  return swift_slowAlloc();
}

BOOL sub_5F84(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_5FA0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_5FC0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}