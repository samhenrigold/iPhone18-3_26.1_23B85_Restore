uint64_t sub_19A8(uint64_t a1, void (*a2)(void, void, uint64_t), uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v5 = sub_8E28();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_8DC8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_9018();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_8D98();
    if (sub_8DB8())
    {
      v14 = sub_90A8();
      v15 = swift_allocObject();
      v15[2] = v20;
      v15[3] = a3;
      v15[4] = v14;

      sub_9028();
    }

    else
    {
      sub_8E08();
      v16 = sub_8E18();
      v17 = sub_9008();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_0, v16, v17, "Will not present storage tip, less than 1GB of storage used.", v18, 2u);
      }

      (*(v6 + 8))(v8, v5);
      v20(0, 0, 1);
    }

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_1C3C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_8E28();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  if (a1 < 1)
  {
    sub_8E08();
    v20 = sub_8E18();
    v21 = sub_9008();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "Will not present storage tip, no space will be reclaimed by the default policy", v22, 2u);
    }

    (*(v8 + 8))(v11, v7);
    v17 = 0;
    v18 = 0;
    v19 = 1;
  }

  else
  {
    sub_8E08();
    v14 = sub_8E18();
    v15 = sub_9008();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134218240;
      *(v16 + 4) = a4;
      *(v16 + 12) = 2048;
      *(v16 + 14) = a1;
      _os_log_impl(&dword_0, v14, v15, "present storage - threshold say yes, with number of episodes to delete: %ld, size: %ld", v16, 0x16u);
    }

    (*(v8 + 8))(v13, v7);
    v17 = a4;
    v18 = a1;
    v19 = 0;
  }

  return a2(v17, v18, v19);
}

void type metadata accessor for MTPodcastEpisodeLimit()
{
  if (!qword_105D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_105D0);
    }
  }
}

void *sub_1F20@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1F3C()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1F84()
{
  v1 = sub_6A3C(&qword_10670, &qword_98D8);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = OBJC_IVAR___PodcastsUsagePlugin_usageController;
  type metadata accessor for PodcastsUsageController();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_9098();
  *&v0[v4] = v5;
  v6 = type metadata accessor for PodcastsUsagePlugin();
  v14.receiver = v0;
  v14.super_class = v6;
  v7 = objc_msgSendSuper2(&v14, "init");
  sub_8FA8();
  v8 = sub_8FC8();
  v9 = *(*(v8 - 8) + 56);
  v9(v3, 0, 1, v8);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v7;
  v11 = v7;
  sub_2D3C(0, 0, v3, &unk_9950, v10);

  sub_8FA8();
  v9(v3, 0, 1, v8);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  sub_2D3C(0, 0, v3, &unk_9960, v12);

  return v11;
}

id sub_2188(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = [v1 tips];
  sub_89DC(0, &qword_106E8, STStorageTip_ptr);
  v5 = sub_8F18();

  sub_8EF8();
  if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v5 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_8F28();
  }

  sub_8F38();
  isa = sub_8F08().super.isa;

  [v2 setTips:isa];

  return [v2 reloadTips];
}

uint64_t sub_2310(void *a1)
{
  v2 = [a1 identifier];
  v3 = sub_8EA8();
  v5 = v4;

  if (v3 == 0xD000000000000012 && 0x80000000000099F0 == v5)
  {

    goto LABEL_13;
  }

  v7 = sub_9178();

  if (v7)
  {
LABEL_13:

    return sub_5BA0(a1);
  }

  v8 = [a1 identifier];
  v9 = sub_8EA8();
  v11 = v10;

  if (v9 == 0x6F69746E65746572 && v11 == 0xEF7963696C6F506ELL)
  {
  }

  else
  {
    v13 = sub_9178();

    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  return sub_3E8C(a1);
}

uint64_t sub_2508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_8E28();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[9] = v6;
  *v6 = v4;
  v6[1] = sub_2610;

  return sub_300C();
}

uint64_t sub_2610(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  *(v6 + 80) = a1;
  *(v6 + 88) = a2;
  *(v6 + 96) = v3;

  if (v3)
  {
    v7 = sub_2A4C;
  }

  else
  {
    *(v6 + 120) = a3;
    v7 = sub_273C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_273C(uint64_t a1)
{
  v33 = v1;
  if ((*(v1 + 120) & 1) != 0 || (v2 = sub_3A54(*(v1 + 80), *(v1 + 88)), (*(v1 + 104) = v2) == 0))
  {
    sub_8E08();
    v19 = sub_8E18();
    v20 = sub_9008();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v1 + 56);
    v23 = *(v1 + 32);
    v24 = *(v1 + 40);
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v19, v20, "Not displaying the retention policy tip.", v25, 2u);
    }

    (*(v24 + 8))(v22, v23);

    v26 = *(v1 + 8);

    return v26();
  }

  else
  {
    v3 = v2;
    sub_8E08();
    v4 = v3;
    v5 = sub_8E18();
    v6 = sub_9008();

    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v1 + 40);
    v8 = *(v1 + 48);
    v10 = *(v1 + 32);
    if (v7)
    {
      v31 = *(v1 + 32);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32 = v12;
      *v11 = 136315138;
      v13 = v4;
      v14 = [v13 description];
      v15 = sub_8EA8();
      v30 = v8;
      v17 = v16;

      v18 = sub_6CF0(v15, v17, &v32);

      *(v11 + 4) = v18;
      _os_log_impl(&dword_0, v5, v6, "Displaying retention policy tip: %s", v11, 0xCu);
      sub_81CC(v12);

      (*(v9 + 8))(v30, v31);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }

    sub_8F88();
    *(v1 + 112) = sub_8F78();
    v29 = sub_8F48();

    return _swift_task_switch(sub_2C4C, v29, v28);
  }
}

uint64_t sub_2A4C(uint64_t a1)
{
  v19 = v1;
  sub_8E08();
  swift_errorRetain();
  v2 = sub_8E18();
  v3 = sub_8FF8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[12];
    v17 = v1[8];
    v6 = v1[4];
    v5 = v1[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v1[2] = v4;
    swift_errorRetain();
    sub_6A3C(&qword_10708, &qword_9968);
    v9 = sub_8EB8();
    v11 = sub_6CF0(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v2, v3, "Unable to show retention policy tip: %s", v7, 0xCu);
    sub_81CC(v8);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v12 = v1[8];
    v13 = v1[4];
    v14 = v1[5];

    (*(v14 + 8))(v12, v13);
  }

  v15 = v1[1];

  return v15();
}

uint64_t sub_2C4C()
{
  v1 = *(v0 + 104);

  sub_2188(v1);

  return _swift_task_switch(sub_2CC0, 0, 0);
}

uint64_t sub_2CC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_6A3C(&qword_10670, &qword_98D8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_8A24(a3, v25 - v10, &qword_10670, &qword_98D8);
  v12 = sub_8FC8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_6FB8(v11);
  }

  else
  {
    sub_8FB8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_8F48();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_8EC8() + 32;
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

      sub_6FB8(a3);

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

  sub_6FB8(a3);
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

uint64_t sub_302C()
{
  v1 = *(v0[5] + OBJC_IVAR___PodcastsUsagePlugin_usageController);
  v2 = *(v1 + 16);
  v3 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v4 = [v3 episodeLimitForKey:kMTPodcastEpisodeLimitDefaultKey];

  if (v2 == v4)
  {
    v5 = v0[1];

    return v5(0, 0, 1);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[6] = v7;
    v8 = sub_6A3C(&qword_106D8, &qword_9920);
    *v7 = v0;
    v7[1] = sub_31C0;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000021, 0x8000000000009BE0, sub_8720, v1, v8);
  }
}

uint64_t sub_31C0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_32F4;
  }

  else
  {
    v2 = sub_32D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_330C(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_8E38();
  v22 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_8E68();
  v20 = *(v6 - 8);
  v21 = v6;
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6A3C(&qword_106E0, &qword_9928);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  sub_89DC(0, &qword_106B8, OS_dispatch_queue_ptr);
  v13 = sub_9058();
  (*(v10 + 16))(v12, a1, v9);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v19;
  (*(v10 + 32))(v15 + v14, v12, v9);
  aBlock[4] = sub_87F8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_8D48;
  aBlock[3] = &unk_C850;
  v16 = _Block_copy(aBlock);

  sub_8E58();
  v23 = _swiftEmptyArrayStorage;
  sub_85A4();
  sub_6A3C(&qword_106C8, &qword_9918);
  sub_85FC();
  sub_9118();
  sub_9078();
  _Block_release(v16);

  (*(v22 + 8))(v5, v3);
  (*(v20 + 8))(v8, v21);
}

uint64_t sub_3678(uint64_t a1, uint64_t a2)
{
  v4 = sub_6A3C(&qword_106E0, &qword_9928);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &aBlock[-1] - v9;
  v11 = *(v5 + 16);
  v11(&aBlock[-1] - v9, a2, v4);
  v11(v8, v10, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v10, v4);
  v14 = [objc_opt_self() defaultMediaLibrary];
  v15 = objc_opt_self();
  v16 = *(a1 + 16);
  v17 = swift_allocObject();
  v17[2] = v14;
  v17[3] = sub_88FC;
  v17[4] = v13;
  v17[5] = v16;
  aBlock[4] = sub_89D0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_8D48;
  aBlock[3] = &unk_C8C8;
  v18 = _Block_copy(aBlock);
  v19 = v14;

  aBlock[0] = 0;
  [v15 perform:v18 error:aBlock];
  _Block_release(v18);
  v20 = aBlock[0];
  if (aBlock[0])
  {
    swift_willThrow();
    aBlock[0] = v20;
    v21 = v20;
    sub_8F58();
  }

  else
  {
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_397C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 && a1)
  {
    swift_errorRetain();
    sub_6A3C(&qword_106E0, &qword_9928);
    return sub_8F58();
  }

  else
  {
    sub_6A3C(&qword_106E0, &qword_9928);
    return sub_8F68();
  }
}

uint64_t sub_3A10(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_3A54(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(STStorageOptionTip) init];
  v4 = sub_8E88();
  [v3 setIdentifier:v4];

  v21._object = 0x8000000000009B40;
  v21._countAndFlagsBits = 0xD000000000000017;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_8DD8(v21, v26);
  v5 = sub_8E88();

  [v3 setTitle:v5];

  v22._countAndFlagsBits = 0xD000000000000019;
  v22._object = 0x8000000000009B60;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_8DD8(v22, v27);
  sub_6A3C(&qword_106A8, &qword_9910);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_98A0;
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 localizedModel];

  v9 = sub_8EA8();
  v11 = v10;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_8530();
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  sub_8E98();

  v12 = sub_8E88();

  [v3 setInfoText:v12];

  [v3 setRepresentedApp:comApplePodcasts];
  [v3 setMayCauseDataLoss:1];
  v23._countAndFlagsBits = 0xD000000000000026;
  v23._object = 0x8000000000009B80;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_8DD8(v23, v28);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_98A0;
  *(v13 + 56) = &type metadata for Int;
  *(v13 + 64) = &protocol witness table for Int;
  *(v13 + 32) = a1;
  sub_8E98();

  v14 = sub_8E88();

  [v3 setConfirmationText:v14];

  v24._countAndFlagsBits = 0xD000000000000025;
  v24._object = 0x8000000000009BB0;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_8DD8(v24, v29);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_98A0;
  *(v15 + 56) = &type metadata for Int;
  *(v15 + 64) = &protocol witness table for Int;
  *(v15 + 32) = a1;
  sub_8E98();

  v16 = sub_8E88();

  [v3 setConfirmationButtonTitle:v16];

  [v3 setDelegate:v19];
  [v3 setImmediateGain:a2];
  v25._countAndFlagsBits = 0x54504F5F45524F4DLL;
  v25._object = 0xEC000000534E4F49;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_8DD8(v25, v30);
  v17 = sub_8E88();

  [v3 setAdditionalButtonTitle:v17];

  return v3;
}

uint64_t sub_3E8C(void *a1)
{
  v2 = sub_8E28();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v36 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_8E38();
  v42 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_8E68();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_8E48();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 identifier];
  v15 = sub_8EA8();
  v17 = v16;

  if (v15 == 0x6F69746E65746572 && v17 == 0xEF7963696C6F506ELL)
  {

LABEL_5:
    sub_89DC(0, &qword_106B8, OS_dispatch_queue_ptr);
    (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
    v19 = sub_9088();
    (*(v11 + 8))(v13, v10);
    v20 = swift_allocObject();
    v21 = v39;
    *(v20 + 16) = v39;
    *(v20 + 24) = a1;
    aBlock[4] = sub_8584;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_8D48;
    aBlock[3] = &unk_C7B0;
    v22 = _Block_copy(aBlock);
    v23 = v21;
    v24 = a1;
    sub_8E58();
    v43 = _swiftEmptyArrayStorage;
    sub_85A4();
    sub_6A3C(&qword_106C8, &qword_9918);
    sub_85FC();
    sub_9118();
    sub_9078();
    _Block_release(v22);

    (*(v42 + 8))(v6, v4);
    (*(v40 + 8))(v9, v41);
  }

  v18 = sub_9178();

  if (v18)
  {
    goto LABEL_5;
  }

  v26 = v36;
  sub_8E08();
  v27 = a1;
  v28 = sub_8E18();
  v29 = sub_8FF8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v30 = 136315394;
    *(v30 + 4) = sub_6CF0(0x6F69746E65746572, 0xEF7963696C6F506ELL, aBlock);
    *(v30 + 12) = 2080;
    v31 = [v27 identifier];
    v32 = sub_8EA8();
    v34 = v33;

    v35 = sub_6CF0(v32, v34, aBlock);

    *(v30 + 14) = v35;
    _os_log_impl(&dword_0, v28, v29, "Attempting to apply unknown tip as a retention policy change. Expected '%s', but found '%s'", v30, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v37 + 8))(v26, v38);
}

uint64_t sub_4458(void *a1, void *a2)
{
  v4 = sub_8E38();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_8E68();
  v8 = *(v21 - 8);
  __chkstk_darwin(v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_9098();
  isa = sub_9198().super.super.isa;
  [v11 setObject:isa forKey:kMTPodcastEpisodeLimitDefaultKey];

  v13 = [objc_opt_self() defaultMediaLibrary];
  sub_9098();
  sub_9038();

  sub_89DC(0, &qword_106B8, OS_dispatch_queue_ptr);
  v14 = sub_9068();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = sub_86A8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_8D48;
  aBlock[3] = &unk_C800;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  v18 = a2;

  sub_8E58();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_85A4();
  sub_6A3C(&qword_106C8, &qword_9918);
  sub_85FC();
  sub_9118();
  sub_9078();
  _Block_release(v16);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v21);
}

uint64_t sub_477C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_8E28();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[9] = v6;
  *v6 = v4;
  v6[1] = sub_4884;

  return sub_4F80();
}

uint64_t sub_4884(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_4D80;
  }

  else
  {
    v4 = sub_4998;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_4998(uint64_t a1)
{
  v32 = v1;
  v2 = v1[10];
  if (v2)
  {
    sub_8E08();
    v3 = v2;
    v4 = sub_8E18();
    v5 = sub_9008();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v1[7];
    v9 = v1[4];
    v8 = v1[5];
    if (v6)
    {
      v30 = v1[4];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31 = v11;
      *v10 = 136315138;
      v12 = v3;
      v13 = [v12 description];
      v14 = sub_8EA8();
      v29 = v7;
      v16 = v15;

      v17 = sub_6CF0(v14, v16, &v31);

      *(v10 + 4) = v17;
      _os_log_impl(&dword_0, v4, v5, "Displaying tip for abandoned downloads: %s", v10, 0xCu);
      sub_81CC(v11);

      (*(v8 + 8))(v29, v30);
    }

    else
    {

      (*(v8 + 8))(v7, v9);
    }

    sub_8F88();
    v1[12] = sub_8F78();
    v28 = sub_8F48();

    return _swift_task_switch(sub_4C8C, v28, v27);
  }

  else
  {
    sub_8E08();
    v18 = sub_8E18();
    v19 = sub_9008();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v1[8];
    v22 = v1[4];
    v23 = v1[5];
    if (v20)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v18, v19, "Not displaying tip for abandoned downloads.", v24, 2u);
    }

    (*(v23 + 8))(v21, v22);

    v25 = v1[1];

    return v25();
  }
}

uint64_t sub_4C8C()
{
  v1 = *(v0 + 80);

  sub_2188(v1);

  return _swift_task_switch(sub_4D04, 0, 0);
}

uint64_t sub_4D04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_4D80(uint64_t a1)
{
  v19 = v1;
  sub_8E08();
  swift_errorRetain();
  v2 = sub_8E18();
  v3 = sub_8FF8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v5 = v1[5];
    v17 = v1[6];
    v6 = v1[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v1[2] = v4;
    swift_errorRetain();
    sub_6A3C(&qword_10708, &qword_9968);
    v9 = sub_8EB8();
    v11 = sub_6CF0(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v2, v3, "Unable to show abandoned downloads tip: %s", v7, 0xCu);
    sub_81CC(v8);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v13 = v1[5];
    v12 = v1[6];
    v14 = v1[4];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v1[1];

  return v15();
}

uint64_t sub_4F80()
{
  v1[2] = v0;
  v2 = sub_8E28();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_8DC8();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_8FC8();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_5104, 0, 0);
}

uint64_t sub_5104()
{
  v1 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v2 = [v1 episodeLimitForKey:kMTPodcastEpisodeLimitDefaultKey];

  if (v2 == 0x100000000)
  {
    sub_89DC(0, &qword_10678, MTDB_ptr);
    v3 = sub_90F8();
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[10];
    sub_8FD8();
    v7 = sub_90E8();
    v0[13] = v7;
    (*(v5 + 8))(v4, v6);

    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = sub_5408;

    return sub_7C78(v7);
  }

  else
  {
    sub_8E08();
    v8 = sub_8E18();
    v9 = sub_8FE8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134218240;
      *(v10 + 4) = 0x100000000;
      *(v10 + 12) = 2048;
      *(v10 + 14) = v2;
      _os_log_impl(&dword_0, v8, v9, "Not displaying the abandoned downloads tip, users retention policy is not 'off'(%lld: %lld", v10, 0x16u);
    }

    (*(v0[4] + 8))(v0[5], v0[3]);

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_5408(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[15] = a1;
  v4[16] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_56D4, 0, 0);
  }

  else
  {
    sub_8DF8();
    v6 = swift_task_alloc();
    v4[17] = v6;
    *v6 = v5;
    v6[1] = sub_55B8;
    v7 = v4[13];
    v8 = v4[9];

    return static MediaSpaceCalculator.spaceOccupied(by:managedObjectContext:mediaLibrary:)(v8, a1, v7, sub_5998, 0);
  }
}

uint64_t sub_55B8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {

    v2 = sub_5904;
  }

  else
  {
    v2 = sub_5768;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_56D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5768(uint64_t a1)
{
  if (sub_8DB8())
  {
    v2 = v1[13];
    v3 = sub_8274();
  }

  else
  {

    sub_8E08();
    v4 = sub_8E18();
    v5 = sub_9008();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v1[13];
    v8 = v1[6];
    v9 = v1[3];
    v10 = v1[4];
    if (v6)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v4, v5, "Will not present abandoned downloads, less than 1GB of storage used.", v11, 2u);
    }

    (*(v10 + 8))(v8, v9);
    v3 = 0;
  }

  (*(v1[8] + 8))(v1[9], v1[7]);

  v12 = v1[1];

  return v12(v3);
}

uint64_t sub_5904()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_5998()
{
  v0 = [objc_opt_self() defaultMediaLibrary];

  return v0;
}

unint64_t sub_59D8@<X0>(void *a2@<X8>)
{
  sub_89DC(0, &qword_10690, NSManagedObjectID_ptr);
  result = sub_90C8();
  if (!v2)
  {
    v5 = result;
    if (result >> 62)
    {
      goto LABEL_17;
    }

    for (i = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)); i; i = sub_9158())
    {
      v13 = a2;
      result = sub_762C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v7 = 0;
      a2 = (&dword_0 + 1);
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_9138();
          goto LABEL_11;
        }

        if ((v7 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v8 = *(v5 + 8 * v7 + 32);
LABEL_11:
        v10 = _swiftEmptyArrayStorage[2];
        v9 = _swiftEmptyArrayStorage[3];
        if (v10 >= v9 >> 1)
        {
          v12 = v8;
          sub_762C((v9 > 1), v10 + 1, 1);
          v8 = v12;
        }

        ++v7;
        _swiftEmptyArrayStorage[2] = v10 + 1;
        v11 = &_swiftEmptyArrayStorage[3 * v10];
        v11[4] = v8;
        v11[5] = 0;
        *(v11 + 48) = 1;
        if (i == v7)
        {

          *v13 = _swiftEmptyArrayStorage;
          return result;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    *a2 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_5BA0(void *a1)
{
  v3 = sub_8E28();
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6A3C(&qword_10670, &qword_98D8);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = [a1 identifier];
  v10 = sub_8EA8();
  v12 = v11;

  if (v10 == 0xD000000000000012 && 0x80000000000099F0 == v12)
  {

    goto LABEL_10;
  }

  v14 = sub_9178();

  if (v14)
  {
LABEL_10:
    sub_8F98();
    v25 = sub_8FC8();
    (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v1;
    v26[5] = a1;
    v27 = v1;
    v28 = a1;
    sub_6758(0, 0, v8, &unk_98E8, v26);
  }

  sub_8E08();
  v15 = a1;
  v16 = sub_8E18();
  v17 = sub_8FF8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_6CF0(0xD000000000000012, 0x80000000000099F0, &v30);
    *(v18 + 12) = 2080;
    v19 = [v15 identifier];
    v20 = sub_8EA8();
    v22 = v21;

    v23 = sub_6CF0(v20, v22, &v30);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_0, v16, v17, "Attempting to apply unknown tip as a retention policy change. Expected '%s', but found '%s'", v18, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v29 + 8))(v5, v3);
}

uint64_t sub_5F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v6 = sub_8FC8();
  v5[3] = v6;
  v5[4] = *(v6 - 8);
  v5[5] = swift_task_alloc();

  return _swift_task_switch(sub_5FDC, 0, 0);
}

uint64_t sub_5FDC()
{
  sub_89DC(0, &qword_10678, MTDB_ptr);
  v1 = sub_90F8();
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_8FD8();
  v5 = sub_90E8();
  v0[6] = v5;
  (*(v3 + 8))(v2, v4);

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_6154;

  return sub_7C78(v5);
}

uint64_t sub_6154(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_6468;
  }

  else
  {
    v4 = sub_6268;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6268()
{
  v0[10] = [objc_opt_self() defaultMediaLibrary];
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_632C;
  v2 = v0[8];
  v3 = v0[6];

  return MPMediaLibrary.remove(episodeIDs:in:)(v2, v3);
}

uint64_t sub_632C(char a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_66DC;
  }

  else
  {
    v6 = *(v4 + 80);

    *(v4 + 112) = a1 & 1;
    v5 = sub_64D4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_6468()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_64D4()
{
  if (*(v0 + 112) == 1)
  {
    sub_8F88();
    *(v0 + 104) = sub_8F78();
    v2 = sub_8F48();

    return _swift_task_switch(sub_65B8, v2, v1);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_65B8()
{
  v1 = *(v0 + 16);

  LODWORD(v2) = -1.0;
  [v1 setActivationPercent:v2];
  LODWORD(v3) = 1.0;
  [v1 setActivationPercent:v3];
  [v1 setImmediateGain:0];
  [v1 setSize:0];

  return _swift_task_switch(sub_6670, 0, 0);
}

uint64_t sub_6670()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_66DC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_6A3C(&qword_10670, &qword_98D8);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_8A24(a3, v22 - v9, &qword_10670, &qword_98D8);
  v11 = sub_8FC8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_6FB8(v10);
  }

  else
  {
    sub_8FB8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_8F48();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_8EC8() + 32;

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

      sub_6FB8(a3);

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

  sub_6FB8(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id sub_69D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastsUsagePlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_6A3C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_6A84(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_6AD0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_6BC8;

  return v6(a1);
}

uint64_t sub_6BC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_6CC0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_6CE0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_6CF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_7020(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_8218(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_81CC(v11);
  return v7;
}

uint64_t sub_6DBC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_6E04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_6EC4;

  return sub_5F1C(a1, v4, v5, v7, v6);
}

uint64_t sub_6EC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_6FB8(uint64_t a1)
{
  v2 = sub_6A3C(&qword_10670, &qword_98D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_7020(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_712C(a5, a6);
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
    result = sub_9148();
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

void *sub_712C(uint64_t a1, unint64_t a2)
{
  v3 = sub_7178(a1, a2);
  sub_72A8(&off_C6C8);
  return v3;
}

void *sub_7178(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_7394(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_9148();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_8EE8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_7394(v10, 0);
        result = sub_9128();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_72A8(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_7408(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_7394(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_6A3C(&qword_106A0, &qword_9908);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_7408(char *result, int64_t a2, char a3, char *a4)
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
    sub_6A3C(&qword_106A0, &qword_9908);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_74FC(uint64_t a1, uint64_t a2)
{
  sub_91A8();
  sub_8ED8();
  v4 = sub_91B8();

  return sub_7574(a1, a2, v4);
}

unint64_t sub_7574(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_9178())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_762C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_764C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_764C(char *result, int64_t a2, char a3, char *a4)
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
    sub_6A3C(&qword_10698, &qword_9900);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_7768(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_6A3C(&qword_106F8, &qword_9938);
    v3 = sub_9168();
    v4 = a1 + 32;

    while (1)
    {
      sub_8A24(v4, &v13, &qword_10700, &qword_9940);
      v5 = v13;
      v6 = v14;
      result = sub_74FC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_8A8C(&v15, (v3[7] + 32 * result));
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

void sub_7898(void *a1)
{
  v2 = sub_8E28();
  v32 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6A3C(&qword_106F0, &qword_9930);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v8 = [a1 identifier];
  v9 = sub_8EA8();
  v11 = v10;

  if (v9 == 0x6F69746E65746572 && v11 == 0xEF7963696C6F506ELL)
  {
  }

  else
  {
    v13 = sub_9178();

    if ((v13 & 1) == 0)
    {
      sub_8E08();
      v14 = a1;
      v15 = sub_8E18();
      v16 = sub_8FF8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v33 = v18;
        *v17 = 136315138;
        v19 = [v14 identifier];
        v20 = sub_8EA8();
        v22 = v21;

        v23 = sub_6CF0(v20, v22, &v33);

        *(v17 + 4) = v23;
        _os_log_impl(&dword_0, v15, v16, "Unable to satisfy 'more' action of downloads tip for %s. Nothing will happen.", v17, 0xCu);
        sub_81CC(v18);
      }

      (*(v32 + 8))(v4, v2);
      return;
    }
  }

  v24 = [objc_opt_self() defaultWorkspace];
  if (v24)
  {
    v25 = v24;
    sub_8D68();
    v26 = sub_8D88();
    v27 = *(v26 - 8);
    v29 = 0;
    if ((*(v27 + 48))(v7, 1, v26) != 1)
    {
      sub_8D78(v28);
      v29 = v30;
      (*(v27 + 8))(v7, v26);
    }

    sub_7768(_swiftEmptyArrayStorage);
    isa = sub_8E78().super.isa;

    [v25 openSensitiveURL:v29 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_7C78(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_90B8();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_7D38, 0, 0);
}

uint64_t sub_7D38()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
  v0[7] = v5;
  sub_89DC(0, &qword_10680, MTEpisode_ptr);
  v6 = sub_9108();
  [v5 setPredicate:v6];

  [v5 setResultType:1];
  v7 = swift_allocObject();
  v0[8] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v8 = v4;
  v9 = v5;
  v10 = swift_task_alloc();
  v0[9] = v10;
  v11 = sub_6A3C(&qword_10688, &qword_98F8);
  *v10 = v0;
  v10[1] = sub_7EF8;
  v12 = v0[6];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v12, sub_81AC, v7, v11);
}

uint64_t sub_7EF8()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_8100;
  }

  else
  {
    v5 = sub_808C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_808C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_8100()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_816C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_81CC(void *a1)
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

uint64_t sub_8218(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_8274()
{
  v1 = [objc_allocWithZone(STStorageOptionTip) init];
  v2 = sub_8E88();
  [v1 setIdentifier:v2];

  v13._object = 0x8000000000009A10;
  v13._countAndFlagsBits = 0xD00000000000001ALL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_8DD8(v13, v16);
  v3 = sub_8E88();

  [v1 setTitle:v3];

  v4 = sub_8DA8();
  result = [objc_opt_self() stringWithBytesize:v4];
  if (result)
  {
    v6 = result;
    v7 = sub_8EA8();
    v9 = v8;

    v14._countAndFlagsBits = 0xD00000000000002CLL;
    v14._object = 0x8000000000009A30;
    v17._countAndFlagsBits = 0xD0000000000000D5;
    v17._object = 0x8000000000009A60;
    sub_8DD8(v14, v17);
    sub_6A3C(&qword_106A8, &qword_9910);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_98A0;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_8530();
    *(v10 + 32) = v7;
    *(v10 + 40) = v9;
    sub_8E98();

    v11 = sub_8E88();

    [v1 setInfoText:v11];

    [v1 setRepresentedApp:comApplePodcasts];
    [v1 setMayCauseDataLoss:1];
    v15._object = 0x8000000000009A10;
    v15._countAndFlagsBits = 0xD00000000000001ALL;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    sub_8DD8(v15, v18);
    v12 = sub_8E88();

    [v1 setConfirmationButtonTitle:v12];

    [v1 setDelegate:v0];
    result = sub_8DA8();
    if ((result & 0x8000000000000000) == 0)
    {
      [v1 setImmediateGain:result];
      return v1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_8530()
{
  result = qword_106B0;
  if (!qword_106B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_106B0);
  }

  return result;
}

uint64_t sub_858C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_85A4()
{
  result = qword_106C0;
  if (!qword_106C0)
  {
    sub_8E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_106C0);
  }

  return result;
}

unint64_t sub_85FC()
{
  result = qword_106D0;
  if (!qword_106D0)
  {
    sub_8660(&qword_106C8, &qword_9918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_106D0);
  }

  return result;
}

uint64_t sub_8660(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_86A8(double a1)
{
  v2 = *(v1 + 24);
  LODWORD(a1) = -1.0;
  [v2 setActivationPercent:a1];
  LODWORD(v3) = 1.0;
  [v2 setActivationPercent:v3];
  [v2 setImmediateGain:0];

  return [v2 setSize:0];
}

uint64_t sub_8728()
{
  v1 = sub_6A3C(&qword_106E0, &qword_9928);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_87F8()
{
  v1 = *(sub_6A3C(&qword_106E0, &qword_9928) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_3678(v2, v3);
}

uint64_t sub_8868()
{
  v1 = sub_6A3C(&qword_106E0, &qword_9928);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_88FC(uint64_t a1, uint64_t a2, char a3)
{
  sub_6A3C(&qword_106E0, &qword_9928);

  return sub_397C(a1, a2, a3 & 1);
}

uint64_t sub_8990()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_89DC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_8A24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_6A3C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_8A8C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_8AA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_6EC4;

  return sub_2508(a1, v4, v5, v6);
}

uint64_t sub_8B54()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8B94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_8D50;

  return sub_477C(a1, v4, v5, v6);
}

uint64_t sub_8C48()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8C80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_8D50;

  return sub_6AD0(a1, v4);
}