unint64_t sub_20A8(char a1)
{
  v2._countAndFlagsBits = sub_2104(a1);
  sub_A46D4(v2);

  return 0xD000000000000012;
}

unint64_t sub_2104(char a1)
{
  result = 0xD00000000000001FLL;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0xD000000000000022;
      break;
    case 2:
    case 4:
    case 5:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21E4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CE980;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_2254@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2284@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2104(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22E4()
{
  sub_5950();
  v1[2] = v0;
  v2 = sub_A43A4();
  v1[3] = v2;
  sub_5940(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_2398, v0, 0);
}

uint64_t sub_2398()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  *(v0 + 48) = v2;
  if (v2)
  {

    v3 = sub_595C();

    return v4(v3);
  }

  else
  {
    if (qword_DA9A8 != -1)
    {
      swift_once();
      v1 = *(v0 + 16);
    }

    v6 = *algn_E0B08;
    *(v0 + 56) = qword_E0B00;
    *(v0 + 64) = v6;
    *(v0 + 104) = byte_E0B10;
    v7 = qword_E0B18;
    *(v0 + 72) = qword_E0B18;
    v8 = v7;
    sub_A4384();
    v9 = sub_A49B4();
    sub_59A0(v9, &dword_0);
    *(v0 + 80) = *(v1 + 120);

    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    *v10 = v0;
    v10[1] = sub_2518;

    return sub_30DC();
  }
}

uint64_t sub_2518()
{
  sub_5950();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_5930();
  *v3 = v2;
  *(v5 + 96) = v4;
  *(v5 + 105) = v6;

  return _swift_task_switch(sub_2644, v1, 0);
}

uint64_t sub_2644()
{
  sub_59C4();
  v1 = *(v0 + 105);
  sub_A49A4();
  sub_A4364();
  if (v1)
  {
    v2 = *(v0 + 96);
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 24);
    sub_A4544();
    sub_5068(v2, 1);
    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = *(v0 + 24);
    *(*(v0 + 16) + 112) = *(v0 + 96);

    (*(v7 + 8))(v6, v8);
  }

  v9 = sub_595C();

  return v10(v9);
}

uint64_t sub_27AC(char a1)
{
  v3 = sub_A43D4();
  sub_591C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 112);
  if (v9)
  {

    v10 = sub_20A8(a1);
    sub_9C7E4(v10, v11, v9, &v14);

    if (v15)
    {
      if (swift_dynamicCast())
      {
        return v13;
      }
    }

    else
    {
      sub_5000(&v14);
    }
  }

  else
  {
    (*(v5 + 16))(v8, v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DBKnowledgeStateStore_logger, v3);
    sub_81094(0xD000000000000019, 0x80000000000AD9A0, 0xD00000000000002ELL, 0x80000000000AD740, 0x65756C6156746567, 0xEE00293A726F6628);
    (*(v5 + 8))(v8, v3);
  }

  return 0;
}

uint64_t sub_2970()
{
  sub_5950();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_A43D4();
  v1[5] = v4;
  sub_5940(v4);
  v1[6] = v5;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_2A28, v0, 0);
}

uint64_t sub_2A28()
{
  sub_59C4();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v2[17];
  if (v3 && v1)
  {
    if (v2[16] == v0[2] && v3 == v1)
    {
LABEL_9:
      v8 = v0[6];
      v7 = v0[7];
      v9 = v0[5];
      (*(v8 + 16))(v7, v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DBKnowledgeStateStore_logger, v9);
      sub_596C(0xD000000000000050, "getRefreshedState(requestId:)");
      (*(v8 + 8))(v7, v9);
      if (v2[14])
      {
      }

      else
      {
        sub_A4544();
      }

      sub_595C();
      sub_59E4();

      __asm { BRAA            X2, X16 }
    }

    v5 = sub_A4E44();
    v6 = v0[4];
    if (v5)
    {
      v2 = v0[4];
      goto LABEL_9;
    }

    v10 = v0[3];
  }

  else
  {
    v10 = v0[3];
    v6 = v0[4];
  }

  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[5];
  v14 = v0[2];
  (*(v12 + 16))(v11, v6 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DBKnowledgeStateStore_logger, v13);
  sub_596C(0xD000000000000022, "hing CKJsonObject. Error: ");
  (*(v12 + 8))(v11, v13);
  *(v6 + 112) = 0;

  v2[16] = v14;
  v2[17] = v10;

  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = sub_2CA4;
  sub_59E4();

  return sub_22E4();
}

uint64_t sub_2CA4(uint64_t a1)
{
  v3 = *v1;
  sub_5930();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

char *sub_2DBC()
{

  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DBKnowledgeStateStore_logger;
  sub_A43D4();
  sub_5908();
  (*(v2 + 8))(v0 + v1);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2E30()
{
  sub_2DBC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_2E84(uint64_t a1)
{
  result = sub_A43D4();
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

char *sub_2F40()
{
  swift_defaultActor_initialize();
  *(v0 + 14) = 0;
  if (qword_DA838 != -1)
  {
    swift_once();
  }

  v1 = qword_E0608;
  *(v0 + 16) = 0;
  *(v0 + 17) = 0;
  *(v0 + 15) = v1;
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DBKnowledgeStateStore_logger;
  v3 = qword_DA9D0;

  if (v3 != -1)
  {
    sub_58D8(&qword_DA9D0);
  }

  v4 = sub_A43D4();
  v5 = sub_48A4(v4, qword_E0BA0);
  (*(*(v4 - 8) + 16))(&v0[v2], v5, v4);
  return v0;
}

uint64_t sub_3088(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  v6 = swift_allocObject();
  result = a3();
  *a4 = v6;
  return result;
}

uint64_t sub_30F0()
{
  sub_5950();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = sub_4BF0(&qword_DADC0, &qword_A5CA0);
  *v1 = v0;
  v1[1] = sub_31D4;
  v3 = *(v0 + 64);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 48, 0, 0, 0xD000000000000011, 0x80000000000AD800, sub_4E90, v3, v2);
}

uint64_t sub_31D4()
{
  sub_5950();
  v2 = *v1;
  sub_5930();
  *v3 = v2;
  *(v4 + 80) = v0;

  if (v0)
  {
    v5 = sub_32F8;
  }

  else
  {
    v5 = sub_32DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_32F8()
{
  sub_59C4();
  if (qword_DA9D0 != -1)
  {
    sub_58D8(&qword_DA9D0);
  }

  v1 = sub_A43D4();
  sub_48A4(v1, qword_E0BA0);
  sub_A4B54(39);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000025;
  v7._object = 0x80000000000AD820;
  sub_A46D4(v7);
  v0[5] = 0;
  v0[4] = 0;
  sub_A4C44();
  sub_81094(v0[2], v0[3], 0xD00000000000002ELL, 0x80000000000AD740, 0xD000000000000011, 0x80000000000AD800);

  sub_4E98();
  v2 = swift_allocError();
  *v3 = 0;
  v3[1] = 0;

  v4 = v0[1];

  return v4(v2, 1);
}

void sub_348C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&unk_DADD0, &qword_A5CA8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 16);
  v9 = objc_allocWithZone(sub_A4034());
  v10 = sub_A4044();
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v7, v4);
  aBlock[4] = sub_4F74;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3918;
  aBlock[3] = &unk_D01D0;
  v13 = _Block_copy(aBlock);

  [v8 dictionaryRepresentationForKeysMatching:v10 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_3680(unint64_t a1, unint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v2 = sub_A43D4();
    sub_48A4(v2, qword_E0BA0);
    sub_A4B54(44);

    swift_getErrorValue();
    v5._countAndFlagsBits = sub_A4EC4();
    sub_A46D4(v5);

    sub_81094(0xD00000000000002ALL, 0x80000000000AD8C0, 0xD00000000000002ELL, 0x80000000000AD740, 0xD000000000000011, 0x80000000000AD800);

    sub_4BF0(&unk_DADD0, &qword_A5CA8);
    return sub_A47D4();
  }

  else
  {
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v4 = sub_A43D4();
    sub_48A4(v4, qword_E0BA0);
    sub_A4B54(29);

    v6._countAndFlagsBits = sub_A4554();
    sub_A46D4(v6);

    sub_810AC(0xD00000000000001BLL, 0x80000000000AD8A0, 0xD00000000000002ELL, 0x80000000000AD740, 0xD000000000000011, 0x80000000000AD800);

    sub_4BF0(&unk_DADD0, &qword_A5CA8);
    return sub_A47E4();
  }
}

uint64_t sub_3918(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_A4524();

  v6 = a2;
  v4(a2, v5);
}

uint64_t sub_39B8()
{
  sub_5950();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 88) = v3;
  *(v1 + 16) = v4;
  v5 = sub_A43A4();
  *(v1 + 40) = v5;
  sub_5940(v5);
  *(v1 + 48) = v6;
  *(v1 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_3A74, 0, 0);
}

uint64_t sub_3A74()
{
  sub_59C4();
  if (qword_DA9B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 88);
  v5 = *(v0 + 16);
  v6 = qword_E0B38;
  sub_A4384();
  v7 = sub_A49B4();
  sub_59A0(v7, &dword_0);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v5;
  *(v8 + 32) = v3;
  *(v8 + 40) = v4;
  *(v8 + 48) = v1;
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_3BEC;
  sub_59E4();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_3BEC()
{
  sub_5950();
  v5 = *v1;
  sub_5930();
  *v2 = v5;
  *(v5 + 80) = v0;

  if (v0)
  {
    v3 = sub_3D68;
  }

  else
  {

    v3 = sub_3CFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_3CFC()
{
  sub_5950();
  v1 = sub_59D0();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_3D68()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(v0 + 88);

  sub_A4B54(40);

  v9._countAndFlagsBits = v2;
  v9._object = v1;
  sub_A46D4(v9);
  v10._countAndFlagsBits = 0x20726F6620;
  v10._object = 0xE500000000000000;
  sub_A46D4(v10);
  v11._countAndFlagsBits = sub_2104(v3);
  sub_A46D4(v11);

  v12._countAndFlagsBits = 0x3A726F727245202ELL;
  v12._object = 0xE900000000000020;
  sub_A46D4(v12);
  v13._object = 0x80000000000AD6F0;
  v13._countAndFlagsBits = 0xD00000000000002ELL;
  sub_A46D4(v13);
  sub_81094(0xD000000000000014, 0x80000000000AD720, 0xD00000000000002ELL, 0x80000000000AD740, 0xD000000000000010, 0x80000000000AD6D0);

  v4 = sub_59D0();
  v5(v4);

  v6 = *(v0 + 8);

  return v6();
}

void sub_3F28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6)
{
  v30 = a6;
  v31 = a1;
  v6 = a5;
  v27 = a5;
  v33 = a4;
  v28 = a2;
  v29 = sub_4BF0(&qword_DADB8, &qword_A5C98);
  v8 = *(v29 - 8);
  __chkstk_darwin(v29);
  v10 = &v25 - v9;
  v26 = &v25 - v9;
  v11 = sub_A43A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a2 + 16);
  v33 = sub_A45C4();
  sub_20A8(v6);
  v32 = sub_A45C4();

  (*(v12 + 16))(v14, v30, v11);
  v15 = v10;
  v16 = v29;
  (*(v8 + 16))(v15, v31, v29);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v8 + 80) + v18 + 9) & ~*(v8 + 80);
  v20 = swift_allocObject();
  (*(v12 + 32))(v20 + v17, v14, v11);
  v21 = v20 + v18;
  *v21 = v28;
  *(v21 + 8) = v27;
  (*(v8 + 32))(v20 + v19, v26, v16);
  aBlock[4] = sub_4D88;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_66E30;
  aBlock[3] = &unk_D0180;
  v22 = _Block_copy(aBlock);

  v23 = v33;
  v24 = v32;
  [v34 setValue:v33 forKey:v32 completionHandler:v22];
  _Block_release(v22);
}

uint64_t sub_4238(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_DA9B0 != -1)
  {
    swift_once();
  }

  sub_A49A4();
  sub_A4364();
  if (a1)
  {
    swift_errorRetain();
    sub_A4B54(37);

    v7._countAndFlagsBits = sub_20A8(a4);
    sub_A46D4(v7);

    v8._countAndFlagsBits = 8250;
    v8._object = 0xE200000000000000;
    sub_A46D4(v8);
    swift_getErrorValue();
    v9._countAndFlagsBits = sub_A4EC4();
    sub_A46D4(v9);

    sub_81094(0xD00000000000001FLL, 0x80000000000AD7C0, 0xD00000000000002ELL, 0x80000000000AD740, 0xD000000000000010, 0x80000000000AD6D0);

    sub_4BF0(&qword_DADB8, &qword_A5C98);
    return sub_A47D4();
  }

  else
  {
    sub_4BF0(&qword_DADB8, &qword_A5C98);
    return sub_A47E4();
  }
}

unint64_t sub_4454(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0xD00000000000002ELL;
  }

  sub_A4B54(44);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  sub_A46D4(v5);
  return 0xD00000000000002ALL;
}

uint64_t sub_4504()
{
  sub_5950();
  if (qword_DA830 != -1)
  {
    swift_once();
  }

  v1 = qword_E0600;
  *(v0 + 16) = qword_E0600;

  return _swift_task_switch(sub_45A8, v1, 0);
}

uint64_t sub_45A8()
{
  v1 = sub_27AC(*(v0 + 24));
  v3 = v2;

  v4 = *(v0 + 8);

  return v4(v1, v3);
}

uint64_t sub_462C()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin16DBKnowledgeStore_logger;
  sub_A43D4();
  sub_5908();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_46EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4724(uint64_t a1)
{
  result = sub_A43D4();
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

uint64_t sub_47C4()
{
  v1 = v0;
  sub_A4024();
  *(v0 + 16) = sub_A4014();
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin16DBKnowledgeStore_logger;
  if (qword_DA9D0 != -1)
  {
    sub_58D8(&qword_DA9D0);
  }

  v3 = sub_A43D4();
  v4 = sub_48A4(v3, qword_E0BA0);
  (*(*(v3 - 8) + 16))(v1 + v2, v4, v3);
  return v1;
}

uint64_t sub_48A4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

NSString sub_48EC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_5858(a2);
  *a1 = result;
  return result;
}

void sub_4914(uint64_t a2@<X8>)
{
  sub_4948();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void sub_4950()
{
  sub_5994();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_499C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_64F70();
  *a1 = result;
  return result;
}

uint64_t sub_49C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_64F78(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_4A18@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_4A4C(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_4AA0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_A45C4();

  *a2 = v3;
  return result;
}

uint64_t sub_4AE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_787B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_4B14(uint64_t a1)
{
  v2 = sub_54B8(&qword_DAE38, type metadata accessor for Name, &unk_A609C);
  v3 = sub_54B8(&unk_DAE40, type metadata accessor for Name, &unk_A603C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_4BF0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_4C38()
{
  v1 = sub_A43A4();
  sub_591C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_4BF0(&qword_DADB8, &qword_A5C98);
  sub_591C();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13 + 9) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v0 + v5, v1);

  (*(v10 + 8))(v0 + v14, v8);

  return _swift_deallocObject(v0, v14 + v15, v16 | 7);
}

uint64_t sub_4D88(uint64_t a1)
{
  v3 = sub_A43A4();
  sub_5940(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_4BF0(&qword_DADB8, &qword_A5C98);
  v8 = *(v1 + v7);
  v9 = *(v1 + v7 + 8);

  return sub_4238(a1, v1 + v5, v8, v9);
}

uint64_t sub_4E78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_4E98()
{
  result = qword_DADC8;
  if (!qword_DADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DADC8);
  }

  return result;
}

uint64_t sub_4EEC()
{
  sub_4BF0(&unk_DADD0, &qword_A5CA8);
  sub_5908();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4F74(unint64_t a1, unint64_t a2)
{
  sub_4BF0(&unk_DADD0, &qword_A5CA8);

  return sub_3680(a1, a2);
}

uint64_t sub_5000(uint64_t a1)
{
  v2 = sub_4BF0(&unk_DB870, &qword_A5CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5068(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

__n128 sub_5074(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_5080(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_50D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_5124(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_5140(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KnowledgeStoreKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for KnowledgeStoreKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x52D4);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_5358(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5378(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_53DC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_54B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_55B8()
{
  result = qword_DAE30;
  if (!qword_DAE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DAE30);
  }

  return result;
}

uint64_t sub_5610(uint64_t a1, uint64_t a2)
{
  v2 = sub_A45F4();
  v4 = v3;
  if (v2 == sub_A45F4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_A4E44();
  }

  return v7 & 1;
}

uint64_t sub_5694(uint64_t a1, uint64_t a2)
{
  sub_A45F4();
  sub_A46A4();
}

Swift::Int sub_56E8(uint64_t a1, uint64_t a2)
{
  sub_A45F4();
  sub_A4F14();
  sub_A46A4();
  v2 = sub_A4F44();

  return v2;
}

uint64_t sub_575C(uint64_t a1, id *a2)
{
  result = sub_A45D4();
  *a2 = 0;
  return result;
}

uint64_t sub_57D8(uint64_t a1, id *a2)
{
  v3 = sub_A45E4();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_5858(uint64_t a1)
{
  sub_A45F4();
  v1 = sub_A45C4();

  return v1;
}

uint64_t sub_5890(uint64_t a1)
{
  sub_A45F4();
  v1 = sub_A46F4();

  return v1;
}

uint64_t sub_58D8(uint64_t a1)
{

  return swift_once();
}

void sub_596C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_810AC(a1, a2 | 0x8000000000000000, v4 + 17, v2 | 0x8000000000000000, 0xD00000000000001DLL, v3 | 0x8000000000000000);
}

uint64_t sub_59A0(uint64_t a1, uint64_t a2)
{

  return sub_A4374();
}

uint64_t MapsSuggestionsEntry.identifier.getter()
{
  v1 = [v0 uniqueIdentifier];
  v2 = sub_A45F4();

  return v2;
}

id MapsSuggestionsEntry.entityBuilder.getter()
{
  v1 = sub_A3F84();
  sub_5D78(v1);
  v2 = sub_A3F74();
  v3 = [v0 geoMapItem];
  if (!v3)
  {
    return v2;
  }

  v4 = v3;
  sub_5CDC(v3, &selRef_name);
  if (v5)
  {
    sub_A3F54();
  }

  result = [v4 geoAddress];
  if (result)
  {
    v7 = result;
    v8 = [result structuredAddress];

    if (v8)
    {
      sub_5CDC(v8, &selRef_fullThoroughfare);
      if (v9)
      {
        v10 = sub_5D5C();
        sub_5D78(v10);
        sub_A3FA4();
        sub_5D3C();

        sub_5D90();
        sub_A3F64();
      }

      sub_5CDC(v8, &selRef_locality);
      if (v11)
      {
        v12 = sub_5D5C();
        sub_5D78(v12);
        sub_A3FA4();
        sub_5D3C();

        sub_5D90();
        sub_A3F44();
      }

      sub_5CDC(v8, &selRef_administrativeArea);
      if (v13)
      {
        v14 = sub_5D5C();
        sub_5D78(v14);
        sub_A3FA4();
        sub_5D3C();

        sub_5D90();
        sub_A3F34();
      }

      sub_5CDC(v8, &selRef_postCode);
      if (v15)
      {
        sub_A3F14();
      }

      sub_5CDC(v8, &selRef_country);
      if (v16)
      {
        v17 = sub_5D5C();
        sub_5D78(v17);
        sub_A3FA4();
        sub_5D3C();

        sub_5D90();
        sub_A3F24();
      }
    }

    else
    {
      v8 = v4;
    }

    return v2;
  }

  __break(1u);
  return result;
}

id sub_5CB0@<X0>(void *a1@<X8>)
{
  result = MapsSuggestionsEntry.entityBuilder.getter();
  *a1 = result;
  return result;
}

uint64_t sub_5CDC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_A45F4();

  return v4;
}

uint64_t sub_5D3C()
{

  return dispatch thunk of UsoEntityBuilder_common_GeographicArea.setName(value:)(v1, v0);
}

uint64_t sub_5D5C()
{

  return type metadata accessor for UsoEntityBuilder_common_GeographicArea(0);
}

uint64_t sub_5D78(uint64_t a1)
{

  return swift_allocObject();
}

unint64_t sub_5D9C(char a1)
{
  v2 = 0xEE00746E65764574;
  v3._countAndFlagsBits = 0x6E6174726F706D49;
  switch(a1)
  {
    case 1:
      v4 = "UpcomingEventSummary";
      goto LABEL_5;
    case 2:
      v4 = "CalendarEventSummary";
      goto LABEL_5;
    case 3:
      v4 = "TomorrowEventSummary";
LABEL_5:
      v2 = ((v4 - 32) | 0x8000000000000000);
      v3._countAndFlagsBits = 0xD000000000000014;
      break;
    default:
      break;
  }

  v3._object = v2;
  sub_A46D4(v3);

  return 0xD000000000000016;
}

unint64_t sub_5E80(char a1)
{
  result = 0x6E6174726F706D49;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_5F1C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CEA88;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_5F8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5F1C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_5FBC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_5E80(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for CalendarDialogs(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for CalendarDialogs(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x6144);
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

unint64_t sub_6180()
{
  result = qword_DB230;
  if (!qword_DB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB230);
  }

  return result;
}

uint64_t sub_6200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  *(v8 + 16) = 0;
  v17 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_currentCondition;
  sub_A42E4();
  sub_7A14();
  (*(v18 + 32))(v8 + v17, a1);
  *(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_currentTemperature) = a2;
  *(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_highTemperature) = a3;
  *(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_lowTemperature) = a4;
  v19 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_startTime;
  sub_A2EA4();
  sub_7A14();
  (*(v20 + 32))(v8 + v19, a5);
  *(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowHighTemperature) = a6;
  *(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowLowTemperature) = a7;
  *(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowNextDayWeather) = a8;
  return v8;
}

uint64_t sub_6324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1 == 0xD000000000000010 && 0x80000000000ACDA0 == a2;
  if (v7 || (sub_79F8(0xD000000000000010, 0x80000000000ACDA0) & 1) != 0)
  {
    v8 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_currentCondition;
    v9 = sub_A42E4();
    *(a3 + 24) = v9;
    v10 = sub_76B0(a3);
    v11 = *(*(v9 - 8) + 16);

    return v11(v10, v3 + v8, v9);
  }

  v13 = a1 == 0xD000000000000012 && 0x80000000000ACDC0 == a2;
  if (!v13 && (sub_79F8(0xD000000000000012, 0x80000000000ACDC0) & 1) == 0)
  {
    result = sub_7A50();
    v16 = a1 == result && a2 == v15;
    if (v16 || (result = sub_79F8(result, v15), (result & 1) != 0))
    {
      v14 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_highTemperature);
      if (v14)
      {
        goto LABEL_15;
      }

LABEL_24:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    result = 0xD000000000000019;
    v17 = a1 == 0xD000000000000019 && 0x80000000000ACE00 == a2;
    if (v17 || (result = sub_79F8(0xD000000000000019, 0x80000000000ACE00), (result & 1) != 0))
    {
      v18 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowHighTemperature;
    }

    else
    {
      v20 = a1 == 0xD000000000000018 && 0x80000000000ACE20 == a2;
      if (v20 || (result = sub_79F8(0xD000000000000018, 0x80000000000ACE20), (result & 1) != 0))
      {
        v18 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowLowTemperature;
      }

      else
      {
        if (a1 != 0xD000000000000018 || 0x80000000000ACE40 != a2)
        {
          result = sub_79F8(0xD000000000000018, 0x80000000000ACE40);
          if ((result & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v18 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowNextDayWeather;
      }
    }

    v19 = *(v3 + v18);
    *(a3 + 24) = &type metadata for Bool;
    *a3 = v19;
    return result;
  }

  v14 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_currentTemperature);
LABEL_15:
  *(a3 + 24) = sub_A4164();
  *a3 = v14;
}

unint64_t sub_6550(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CEB08;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_65B8(uint64_t a1, uint64_t a2)
{
  result = sub_7A50();
  switch(v3)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0x65706D6554776F6CLL;
      break;
    case 4:
      result = 0x6D69547472617473;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_6708@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_6550(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_6738@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_65B8(*v2, a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_6780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_659C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_67B4(uint64_t a1)
{
  v2 = sub_75C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_67F0(uint64_t a1)
{
  v2 = sub_75C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_682C()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_currentCondition;
  sub_A42E4();
  sub_7A14();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_startTime;
  sub_A2EA4();
  sub_7A14();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_68F4()
{
  sub_682C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for WeatherCurrent(uint64_t a1)
{
  result = qword_DB260;
  if (!qword_DB260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_69A0(uint64_t a1)
{
  result = sub_A42E4();
  if (v2 <= 0x3F)
  {
    result = sub_A2EA4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_6A94(void *a1)
{
  v3 = v1;
  v5 = sub_4BF0(&qword_DB3A0, &qword_A64D8);
  sub_591C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  sub_7584(a1, a1[3]);
  sub_75C8();
  sub_A4F64();
  LOBYTE(v19) = 0;
  sub_A42E4();
  sub_7980();
  sub_7668(v11, v12, &protocol conformance descriptor for SpeakableString);
  sub_7A24();
  if (!v2)
  {
    v19 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_currentTemperature);
    HIBYTE(v18) = 1;
    sub_A4164();
    sub_7968();
    sub_7668(v13, v14, &protocol conformance descriptor for DialogConvertibleMeasurement);
    sub_7920();
    sub_A4DF4();
    v19 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_highTemperature);
    HIBYTE(v18) = 2;
    sub_7920();
    sub_A4DA4();
    v19 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_lowTemperature);
    HIBYTE(v18) = 3;
    sub_7920();
    sub_A4DA4();
    LOBYTE(v19) = 4;
    sub_A2EA4();
    sub_7998();
    sub_7668(v15, v16, &protocol conformance descriptor for Date);
    sub_7A24();
    sub_79B0(5);
    sub_79B0(6);
    sub_79B0(7);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_6D34(void *a1)
{
  v2 = swift_allocObject();
  sub_6D84(a1);
  return v2;
}

uint64_t sub_6D84(void *a1)
{
  v3 = sub_A2EA4();
  sub_591C();
  v33 = v4;
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_A42E4();
  sub_591C();
  v34 = v9;
  __chkstk_darwin(v10);
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_4BF0(&qword_DB378, &qword_A64D0);
  sub_591C();
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v39 = v1;
  v40 = a1;
  *(v1 + 16) = 0;
  sub_7584(a1, a1[3]);
  sub_75C8();
  v37 = v14;
  v15 = v38;
  sub_A4F54();
  if (v15)
  {
    v22 = v39;

    type metadata accessor for WeatherCurrent(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v32 = v7;
    v16 = v34;
    v38 = v3;
    LOBYTE(v42) = 0;
    sub_7980();
    sub_7668(v17, v18, &protocol conformance descriptor for SpeakableString);
    v19 = v35;
    sub_A4D74();
    v21 = *(v16 + 32);
    v22 = v39;
    v35 = v8;
    v21(v39 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_currentCondition, v19, v8);
    sub_A4164();
    v41 = 1;
    sub_7968();
    sub_7668(v23, v24, &protocol conformance descriptor for DialogConvertibleMeasurement);
    sub_7950();
    sub_A4D74();
    *(v22 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_currentTemperature) = v42;
    v41 = 2;
    sub_7950();
    sub_A4D24();
    *(v22 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_highTemperature) = v42;
    v41 = 3;
    sub_7950();
    sub_A4D24();
    *(v22 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_lowTemperature) = v42;
    LOBYTE(v42) = 4;
    sub_7998();
    sub_7668(v25, v26, &protocol conformance descriptor for Date);
    v27 = v32;
    v28 = v38;
    sub_A4D74();
    (*(v33 + 32))(v22 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_startTime, v27, v28);
    *(v22 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowHighTemperature) = sub_79D4(5) & 1;
    *(v22 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowLowTemperature) = sub_79D4(6) & 1;
    v29 = sub_79D4(7);
    v30 = sub_7940();
    v31(v30);
    *(v22 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14WeatherCurrent_shouldShowNextDayWeather) = v29 & 1;
  }

  sub_761C(v40);
  return v22;
}

void *sub_7394()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_73DC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t sub_74A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_6D34(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_7584(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_75C8()
{
  result = qword_DB380;
  if (!qword_DB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB380);
  }

  return result;
}

uint64_t sub_761C(void *a1)
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

uint64_t sub_7668(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_76B0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for WeatherCurrent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x77DCLL);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_7818()
{
  result = qword_DB3C0;
  if (!qword_DB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB3C0);
  }

  return result;
}

unint64_t sub_7870()
{
  result = qword_DB3C8;
  if (!qword_DB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB3C8);
  }

  return result;
}

unint64_t sub_78C8()
{
  result = qword_DB3D0;
  if (!qword_DB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB3D0);
  }

  return result;
}

uint64_t sub_79B0@<X0>(char a2@<W8>)
{
  *(v2 - 72) = a2;

  return sub_A4DC4();
}

uint64_t sub_79D4@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_A4D44();
}

uint64_t sub_79F8(uint64_t a1, uint64_t a2)
{

  return sub_A4E44();
}

uint64_t sub_7A24()
{

  return sub_A4DF4();
}

Swift::Int sub_7AAC(char a1)
{
  sub_A4F14();
  sub_A4F24(a1 & 1);
  return sub_A4F44();
}

Swift::Int sub_7B10(uint64_t a1)
{
  v2 = *v1;
  sub_A4F14();
  sub_A4F24(v2);
  return sub_A4F44();
}

uint64_t sub_7B5C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DailyBriefingFlow(0);
  sub_AA74();
  sub_A844(v2, v3, &unk_A6768);
  return sub_A3334();
}

uint64_t sub_7BDC()
{
  sub_5950();
  v1[49] = v2;
  v1[50] = v0;
  sub_4BF0(&qword_DB5A8, &unk_A67C0);
  v1[51] = swift_task_alloc();
  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_7C6C()
{
  v1 = v0[50];
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_state;
  v0[52] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_state;
  if (*(v1 + v2))
  {
    sub_90B8();

    sub_AA9C();

    return v3();
  }

  else
  {
    v0[53] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_logger;
    sub_A4B54(24);

    sub_AAD0();
    v5 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_currentFlowSpec);
    v0[54] = v5;
    v6 = *(*v5 + 240);
    v7 = (*v5 + 240) & 0xFFFFFFFFFFFFLL | 0xE1E7000000000000;
    v0[55] = v6;
    v0[56] = v7;
    v6();
    v8 = v0[5];
    v9 = v0[6];
    sub_7584(v0 + 2, v8);
    sub_AAC4();
    v20._countAndFlagsBits = v10(v8, v9);
    sub_A46D4(v20);

    sub_761C(v0 + 2);
    v21._object = 0x80000000000ADC10;
    v21._countAndFlagsBits = 0xD000000000000015;
    sub_A46D4(v21);
    sub_AA40();
    sub_AB34();
    sub_810AC(v11, v12, v13, v14, v15, v16);

    v18 = (*(*v5 + 280) + **(*v5 + 280));
    v17 = swift_task_alloc();
    v0[57] = v17;
    *v17 = v0;
    v17[1] = sub_7F2C;

    return v18();
  }
}

uint64_t sub_7F2C()
{
  sub_5950();
  sub_AAA8();
  *(v1 + 464) = v0;
  *(v1 + 488) = v2;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_8020(uint64_t a1)
{
  v2 = *(v1 + 488);
  if ((v2 & 0x100) != 0)
  {
    v21 = *(v1 + 464);
    (*(v1 + 440))(a1);
    v22 = *(v1 + 88);
    sub_7584((v1 + 56), *(v1 + 80));
    v23 = *(v22 + 8);
    sub_A88C(v21, v2, 1);
    v24 = sub_AB00();
    v48._countAndFlagsBits = v23(v24);
    sub_A46D4(v48);

    sub_761C((v1 + 56));
    sub_AAE8();
    sub_A4B54(26);

    swift_getErrorValue();
    v49._countAndFlagsBits = sub_A4EC4();
    sub_A46D4(v49);

    v50._countAndFlagsBits = 46;
    v50._object = 0xE100000000000000;
    sub_A46D4(v50);

    v51._countAndFlagsBits = sub_AB00();
    sub_A46D4(v51);

    sub_AA40();
    sub_AB34();
    sub_81094(v25, v26, v27, v28, v29, v30);

    *(v1 + 376) = v21;
    swift_errorRetain();
    sub_4BF0(&qword_DBB90, &qword_A7540);
    v31 = swift_dynamicCast();
    v32 = *(v1 + 488);
    v33 = *(v1 + 464);
    if (!v31)
    {
      v34 = *(v1 + 440);
      v35 = sub_7584((*(v1 + 400) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_siriKitEventSender), *(*(v1 + 400) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_siriKitEventSender + 24));
      v34();
      swift_getErrorValue();
      v36 = sub_A4EC4();
      v38 = v37;
      v39 = *v35;
      v40 = *(v1 + 120);
      v41 = *(v1 + 128);
      v42 = sub_7584((v1 + 96), v40);
      sub_4DB30(v42, 59, v36, v38, v39, v40, v41);

      sub_761C((v1 + 96));
    }

    sub_90B8();
    sub_A744(v33, v32, 1);
    sub_A744(v33, v32, 1);

    sub_AA9C();

    return v43();
  }

  else
  {
    v3 = *(v1 + 464);
    v44 = *(v1 + 440);
    v4 = *(v1 + 432);
    v5 = *(v1 + 400);
    sub_AAD0();
    v6();
    v8 = *(v1 + 160);
    v7 = *(v1 + 168);
    sub_7584((v1 + 136), v8);
    v9 = *(v7 + 8);
    sub_A89C(v3, v2 & 1);
    v46._countAndFlagsBits = v9(v8, v7);
    sub_A46D4(v46);

    sub_761C((v1 + 136));
    sub_AAE8();

    v47._countAndFlagsBits = 0xD00000000000001ALL;
    v47._object = 0x80000000000ADC50;
    sub_A46D4(v47);

    sub_AA40();
    sub_AB34();
    sub_810AC(v10, v11, v12, v13, v14, v15);

    sub_7584((v5 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_outputPublisher), *(v5 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_outputPublisher + 24));
    v16 = v44();
    (*(*v4 + 264))(v16);
    v17 = swift_task_alloc();
    *(v1 + 472) = v17;
    *v17 = v1;
    v17[1] = sub_8510;
    v18 = *(v1 + 464);
    v19 = *(v1 + 408);

    return sub_87A40(v18, v2 & 1, v1 + 176, v19);
  }
}

uint64_t sub_8510()
{
  sub_AB40();
  v2 = v1;
  v4 = v3;
  sub_AAA8();
  v6 = v5;
  v7 = *(v5 + 408);
  v8 = *v0;
  sub_5930();
  *v9 = v8;

  sub_A8A8(v4, v2 & 1);
  sub_A8B4(v7);
  sub_761C((v6 + 176));
  v10 = sub_AA8C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_8634(uint64_t a1)
{
  if (*(v1 + 488))
  {
    v2 = *(v1 + 464);
    v3 = sub_AAB4();
    sub_A88C(v3, v4, v5);

    sub_A3614();

    v6 = sub_AAB4();
    sub_A744(v6, v7, v8);
    v9 = sub_AAB4();
    sub_A744(v9, v10, v11);
    sub_A754(v2, 1);

    sub_AA9C();

    return v12();
  }

  else
  {
    v14 = *(v1 + 440);
    sub_AAD0();
    v14();
    v15 = *(v1 + 240);
    v16 = *(v1 + 248);
    sub_7584((v1 + 216), v15);
    sub_AAC4();
    v34._countAndFlagsBits = v17(v15, v16);
    sub_A46D4(v34);

    sub_761C((v1 + 216));
    sub_AAE8();

    v35._object = 0x80000000000ADC50;
    v35._countAndFlagsBits = 0xD00000000000001ALL;
    sub_A46D4(v35);

    sub_AA40();
    sub_AB34();
    sub_810AC(v18, v19, v20, v21, v22, v23);

    (v14)(v24);
    sub_4BF0(&qword_DB5B0, &unk_A67D0);
    if (swift_dynamicCast())
    {
      v25 = *(v1 + 400);
      v26 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_specExecutionStatus;
      v27 = *(v1 + 491);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v25 + v26);
      sub_310AC(0, v27, isUniquelyReferenced_nonNull_native);
      *(v25 + v26) = v32;
      swift_endAccess();
    }

    v29 = *(**(v1 + 432) + 304);
    v31 = (v29 + *v29);
    v30 = swift_task_alloc();
    *(v1 + 480) = v30;
    *v30 = v1;
    v30[1] = sub_89A4;

    return v31();
  }
}

uint64_t sub_89A4()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_8A88()
{
  sub_AB40();
  v1 = *(v0 + 464);
  v2 = *(v0 + 488);
  *(*(v0 + 400) + *(v0 + 416)) = 1;
  sub_90B8();
  sub_A744(v1, v2, 0);
  sub_A744(v1, v2, 0);

  sub_AA9C();

  return v3();
}

uint64_t sub_8B24(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  if (qword_DAA98 != -1)
  {
    swift_once();
  }

  sub_895A8();
  v5 = sub_7584((a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_siriKitEventSender), *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_siriKitEventSender + 24));
  v6 = *(**(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_currentFlowSpec) + 240);
  v6(&v24);
  v7 = *v5;
  v8 = v26;
  v9 = v27;
  v10 = sub_7584(&v24, v26);
  sub_4DB30(v10, 1, 0, 0, v7, v8, v9);
  v11 = sub_761C(&v24);
  (v6)(&v24, v11);
  sub_4BF0(&qword_DB5B0, &unk_A67D0);
  if (swift_dynamicCast())
  {
    v12 = v22;
    v13 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_specExecutionStatus;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(a1 + v13);
    sub_310AC(0, v12, isUniquelyReferenced_nonNull_native);
    *(a1 + v13) = v22;
    swift_endAccess();
  }

  v15 = sub_A4814();
  sub_A924(v4, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;

  sub_89E10(0, 0, v4, &unk_A67E8, v16);

  *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_state) = 1;
  v22 = 91;
  v23 = 0xE100000000000000;
  (v6)(&v24, v17);
  v18 = v26;
  v19 = v27;
  sub_7584(&v24, v26);
  v28._countAndFlagsBits = (*(v19 + 8))(v18, v19);
  sub_A46D4(v28);

  sub_761C(&v24);
  v29._countAndFlagsBits = 8285;
  v29._object = 0xE200000000000000;
  sub_A46D4(v29);
  v24 = v22;
  v25 = v23;

  v30._object = 0x80000000000ADC50;
  v30._countAndFlagsBits = 0xD00000000000001ALL;
  sub_A46D4(v30);

  sub_810AC(v24, v25, 0xD00000000000002FLL, 0x80000000000ADB90, 0x2865747563657865, 0xE900000000000029);
}

uint64_t sub_8EB4()
{
  sub_AB40();
  v3 = (*(**(*(v0 + 16) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_currentFlowSpec) + 304) + **(**(*(v0 + 16) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_currentFlowSpec) + 304));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_8FD8;

  return v3();
}

uint64_t sub_8FD8()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_AA9C();

  return v3();
}

uint64_t sub_90B8()
{
  v1 = v0;
  v2 = sub_9CE4();
  if (v2)
  {
    v3 = v2;
    sub_AAD0();
    *&v117[0] = v4;
    *(&v117[0] + 1) = v5;
    (*(**(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_currentFlowSpec) + 240))(&v118);
    v6 = v120;
    v7 = v121;
    sub_7584(&v118, v120);
    sub_AAC4();
    v127._countAndFlagsBits = v8(v6, v7);
    sub_A46D4(v127);

    sub_761C(&v118);
    sub_AAE8();
    v9 = v117[0];
    *&v118 = 0;
    *(&v118 + 1) = 0xE000000000000000;
    sub_A4B54(18);

    *&v117[0] = 0xD000000000000010;
    *(&v117[0] + 1) = 0x80000000000ADBF0;
    (*(*v3 + 240))(&v118, v10);
    sub_7584(&v118, v120);
    sub_AAC4();
    v11 = sub_AB00();
    v128._countAndFlagsBits = v12(v11);
    sub_A46D4(v128);

    sub_761C(&v118);
    v13 = *&v117[0];
    v118 = v9;

    v129._countAndFlagsBits = sub_AB00();
    sub_A46D4(v129);

    v14 = *(&v118 + 1);
    sub_AB0C();
    sub_810C4(v15, v14, v16, v17, 0xD000000000000023, v18);

    v19 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_allFlowSpecs);
    sub_A760(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_aceService, v117);
    v20 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_specExecutionStatus;
    swift_beginAccess();
    v21 = *(v1 + v20);
    sub_A760(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_templatingProvider, v116);
    sub_A760(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_outputPublisher, v115);
    v97 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_platformSupportsNews);
    v22 = qword_DA838;
    v98 = v3;

    v96 = v19;

    v95 = v21;

    if (v22 != -1)
    {
      swift_once();
    }

    v94 = qword_E0608;
    v23 = type metadata accessor for DBSiriKitEventSender();
    inited = swift_initStaticObject();
    v120 = v23;
    v121 = &off_D1B20;
    v122 = sub_A844(&qword_DB598, type metadata accessor for DBSiriKitEventSender, &unk_A9488);
    *&v118 = inited;
    v25 = type metadata accessor for OfflineStateProvider();
    v26 = swift_allocObject();
    sub_A7C4(v116, v116[3]);
    sub_AADC();
    sub_AA64();
    __chkstk_darwin(v27);
    sub_AA54();
    v29 = sub_AB20(v28);
    v30(v29);
    sub_A7C4(v115, v115[3]);
    sub_AADC();
    sub_AA64();
    __chkstk_darwin(v31);
    sub_AA54();
    v34 = (v33 - v32);
    (*(v35 + 16))(v33 - v32);
    v36 = *v13;
    v37 = *v34;
    v38 = type metadata accessor for TemplatingProvider();
    v114[3] = v38;
    v114[4] = &off_D1F98;
    v114[0] = v36;
    v39 = type metadata accessor for DailyBriefingOutputPublisher(0);
    v112 = v39;
    v113 = &off_D2D00;
    v111[0] = v37;
    v109 = v25;
    v110 = &off_D29E8;
    v108[0] = v26;
    type metadata accessor for DailyBriefingFlow(0);
    v40 = swift_allocObject();
    sub_A7C4(v114, v38);
    sub_AADC();
    sub_AA64();
    __chkstk_darwin(v41);
    sub_AA54();
    v43 = sub_AB20(v42);
    v44(v43);
    sub_A7C4(v111, v112);
    sub_AADC();
    sub_AA64();
    __chkstk_darwin(v45);
    sub_AA54();
    v48 = (v47 - v46);
    (*(v49 + 16))(v47 - v46);
    sub_A7C4(v108, v109);
    sub_AADC();
    sub_AA64();
    __chkstk_darwin(v50);
    sub_AA54();
    v53 = (v52 - v51);
    (*(v54 + 16))(v52 - v51);
    v55 = *v13;
    v56 = *v48;
    v57 = *v53;
    v106 = v38;
    v107 = &off_D1F98;
    *&v105 = v55;
    v103 = v39;
    v104 = &off_D2D00;
    *&v102 = v56;
    v100 = v25;
    v101 = &off_D29E8;
    *&v99 = v57;
    v58 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_logger;
    v59 = qword_DA9D0;

    if (v59 != -1)
    {
      swift_once();
    }

    v60 = sub_A43D4();
    v61 = sub_48A4(v60, qword_E0BA0);
    (*(*(v60 - 8) + 16))(v40 + v58, v61, v60);
    *(v40 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_state) = 0;
    v62 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_dialogService;
    sub_A3584();
    swift_allocObject();
    *(v40 + v62) = sub_A3574();
    *(v40 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_currentFlowSpec) = v98;
    *(v40 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_allFlowSpecs) = v96;
    sub_A814(v117, v40 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_aceService);
    *(v40 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_knowledgeStore) = v94;
    *(v40 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_specExecutionStatus) = v95;
    sub_A814(&v105, v40 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_templatingProvider);
    sub_A814(&v102, v40 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_outputPublisher);
    sub_A82C(&v118, (v40 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_siriKitEventSender));
    sub_A814(&v99, v40 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_offlineStateProvider);
    *(v40 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_platformSupportsNews) = v97;
    sub_761C(v108);
    sub_761C(v111);
    sub_761C(v114);
    sub_761C(v115);
    sub_761C(v116);
    *&v118 = v40;
    sub_AA74();
    sub_A844(v63, v64, &unk_A6768);
    sub_A3644();
  }

  else
  {
    sub_AAD0();
    *&v117[0] = v65;
    *(&v117[0] + 1) = v66;
    v67 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_currentFlowSpec);
    (*(*v67 + 240))(&v118);
    v68 = v120;
    v69 = v121;
    sub_7584(&v118, v120);
    sub_AAC4();
    v130._countAndFlagsBits = v70(v68, v69);
    sub_A46D4(v130);

    sub_761C(&v118);
    sub_AAE8();
    v118 = v117[0];

    v131._countAndFlagsBits = 0xD000000000000029;
    v131._object = 0x80000000000ADB60;
    sub_A46D4(v131);

    v71 = *(&v118 + 1);
    sub_AB0C();
    sub_810C4(v72, v71, v73, v74, 0xD000000000000023, v75);

    v76 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_specExecutionStatus;
    swift_beginAccess();
    v77 = *(v1 + v76);
    *&v118 = v77;
    swift_bridgeObjectRetain_n();

    sub_74DEC(v78, v77, &v118);

    v79 = v118;
    v80 = *(v67 + 88);
    v81 = *(v67 + 96);
    v82 = *(v67 + 104);
    sub_A760(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_aceService, &v120);
    sub_A760(v67 + 112, v123);
    if (qword_DA890 != -1)
    {
      swift_once();
    }

    v83 = qword_E0798;
    v84 = type metadata accessor for AppDetecter(0);
    v123[9] = &off_D0F20;
    v123[8] = v84;
    v123[5] = v83;
    v85 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_dialogService);
    v86 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_knowledgeStore);
    sub_A760(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_templatingProvider, v124);
    v87 = qword_DA8C8;

    if (v87 != -1)
    {
      swift_once();
    }

    v88 = qword_E08A0;
    v89 = type metadata accessor for AMSSearchService();
    v124[9] = &off_D1398;
    v124[8] = v89;
    v124[5] = v88;
    sub_A760(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_outputPublisher, &v125);
    sub_A760(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_offlineStateProvider, v126);
    v90 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_platformSupportsNews);
    *&v118 = v80;
    *(&v118 + 1) = v81;
    v119 = v82;
    v123[10] = v85;
    v123[11] = v86;
    v126[40] = v90;
    type metadata accessor for DBSiriKitEventSender();
    v91 = swift_initStaticObject();
    type metadata accessor for OfflineFlow(0);
    v92 = swift_allocObject();

    *&v118 = sub_792F4(v79, &v118, v91, v92);
    sub_A844(&qword_DB590, type metadata accessor for OfflineFlow, &unk_A8C70);
    sub_A3644();
  }
}

unint64_t sub_9CE4()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_allFlowSpecs;
  v2 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_allFlowSpecs);
  if (v2 >> 62)
  {
LABEL_38:
    v3 = sub_A4C94();
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v4 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_currentFlowSpec);

  for (i = 0; ; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = sub_A4B74();
      swift_unknownObjectRelease();
      if (v6 == v4)
      {
        break;
      }

      goto LABEL_9;
    }

    if (i >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_36;
    }

    if (*(v2 + 8 * i + 32) == v4)
    {
      break;
    }

LABEL_9:
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v7 == v3)
    {

      return 0;
    }
  }

  v8 = sub_1BF68();
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    sub_A4CA4();
    v14 = v17;
    v2 = v18;
    v20 = v19;

    v10 = v20 >> 1;
    goto LABEL_24;
  }

  if (i >= v8 - 1)
  {
    return 0;
  }

  v0 = *(v0 + v1);
  v9 = sub_1BF68();
  if (v9 <= i)
  {
    goto LABEL_41;
  }

  v10 = v9;
  v2 = i + 1;
  sub_1E064(i + 1, v0);
  result = sub_1E064(v10, v0);
  if ((v0 & 0xC000000000000001) == 0 || v10 - 1 == i)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    if (v2 >= v10)
    {
      __break(1u);
      return result;
    }

    type metadata accessor for BaseFlowSpec();
    swift_bridgeObjectRetain_n();
    v12 = i + 1;
    do
    {
      v13 = v12 + 1;
      sub_A4B64(v12);
      v12 = v13;
    }

    while (v10 != v13);
  }

  if (v0 >> 62)
  {
    goto LABEL_42;
  }

  v14 = (v0 & 0xFFFFFFFFFFFFFF8) + 32;
LABEL_24:
  swift_unknownObjectRetain();
  while (1)
  {
    if (v10 == v2)
    {
      swift_unknownObjectRelease_n();
      return 0;
    }

    if (v2 >= v10)
    {
      goto LABEL_37;
    }

    v0 = *(v14 + 8 * v2);

    v15 = sub_82E5C();
    if (BYTE1(v16) == 255)
    {
      break;
    }

    if ((v16 & 0x100) == 0)
    {
      sub_A72C(v15, v16);
      break;
    }

    sub_A72C(v15, v16);

    ++v2;
  }

  swift_unknownObjectRelease_n();
  return v0;
}

uint64_t sub_9F70()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_logger;
  v2 = sub_A43D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_aceService));

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_templatingProvider));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_outputPublisher));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_siriKitEventSender));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_offlineStateProvider));
  return v0;
}

uint64_t sub_A070()
{
  sub_9F70();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DailyBriefingFlow(uint64_t a1)
{
  result = qword_DB410;
  if (!qword_DB410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A11C(uint64_t a1)
{
  result = sub_A43D4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DailyBriefingFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DailyBriefingFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0xA350);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_A398()
{
  result = qword_DB588;
  if (!qword_DB588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB588);
  }

  return result;
}

uint64_t sub_A3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_A49C;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_A49C()
{
  sub_5950();
  v2 = v1;
  sub_AAA8();
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_A5AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_A648;

  return sub_7BDC();
}

uint64_t sub_A648()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_AA9C();

  return v3();
}

void sub_A72C(void *result, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    sub_A744(result, a2, BYTE1(a2) & 1);
  }
}

void sub_A744(void *a1, char a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_A754(a1, a2 & 1);
  }
}

void sub_A754(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_A760(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_A7C4(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_A814(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_A82C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_A844(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_A88C(void *a1, char a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return sub_A89C(a1, a2 & 1);
  }
}

id sub_A89C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t sub_A8A8(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_A8B4(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A94C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_A98C()
{
  sub_AB40();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_A648;

  return sub_8E94(v3, v4, v5, v6);
}

void sub_AAE8()
{
  v1._countAndFlagsBits = 8285;
  v1._object = 0xE200000000000000;

  sub_A46D4(v1);
}

void *sub_AB4C(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v16 = v2;
  v17 = _swiftEmptyArrayStorage;
  v15 = a1 + 32;
  while (1)
  {
    v4 = ~v1;
    v5 = v3 + 48 * v1;
    v6 = v2 - v1;
    if (v2 == v1)
    {
      break;
    }

    while (1)
    {
      sub_B8BC(v5, &v21, &qword_DB5C0, &qword_A67F8);
      v7 = v21;
      v25 = v22;
      v26 = v23;
      v27 = v21;
      v28[0] = v22;
      v28[1] = v23;
      sub_B8BC(v28, &v19, &unk_DB870, &qword_A5CB0);
      if (v20)
      {
        sub_B2E0(&v19, &v21);
        v24 = v7;

        sub_ADD0(&v21, a1, &v25);
        sub_761C(&v21);
      }

      else
      {
        sub_AD70(&v19, &unk_DB870, &qword_A5CB0);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
      }

      sub_AD70(&v27, &qword_DB5C8, &qword_A6800);
      if (*(&v24 + 1))
      {
        break;
      }

      sub_AD70(&v24, &qword_DB5D0, &qword_A6808);
      --v4;
      v5 += 48;
      if (!--v6)
      {
        return sub_B22C(v17);
      }
    }

    v21 = v24;
    v22 = v25;
    v23 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_54EE4();
      v17 = v12;
    }

    v3 = v15;
    v2 = v16;
    v8 = v17[2];
    if (v8 >= v17[3] >> 1)
    {
      sub_54EE4();
      v17 = v13;
    }

    v1 = -v4;
    v17[2] = v8 + 1;
    v9 = &v17[6 * v8];
    v10 = v21;
    v11 = v23;
    v9[3] = v22;
    v9[4] = v11;
    v9[2] = v10;
  }

  return sub_B22C(v17);
}

uint64_t sub_AD70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_4BF0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_ADD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_A42E4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v28 - v11;
  sub_B924(a1, v32);
  sub_4BF0(&qword_DB5F0, &qword_A6828);
  if (swift_dynamicCast())
  {
    sub_A814(v31, v28);
    sub_7584(v28, v28[3]);
    v13 = sub_A4324();
    a3[3] = sub_4BF0(&qword_DB600, qword_A6838);
    *a3 = v13;
    sub_761C(v28);
  }

  else
  {
    v14 = sub_4BF0(&qword_DB5F8, &qword_A6830);
    if (swift_dynamicCast())
    {
      v15 = v30;
      v16 = *(v30 + 16);
      if (v16)
      {
        v29 = _swiftEmptyArrayStorage;
        sub_7AC74(0, v16, 0);
        v17 = v29;
        v18 = v15 + 32;
        do
        {
          sub_B924(v18, v28);
          sub_ADD0(v28, a2, v31);
          sub_761C(v28);
          v29 = v17;
          v20 = v17[2];
          v19 = v17[3];
          if (v20 >= v19 >> 1)
          {
            sub_7AC74((v19 > 1), v20 + 1, 1);
            v17 = v29;
          }

          v17[2] = v20 + 1;
          sub_B2E0(v31, &v17[4 * v20 + 4]);
          v18 += 32;
          --v16;
        }

        while (v16);
      }

      else
      {

        v17 = _swiftEmptyArrayStorage;
      }

      a3[3] = v14;
      *a3 = v17;
    }

    else if (swift_dynamicCast())
    {
      v21 = *&v31[0];
      a3[3] = &type metadata for Double;
      *a3 = v21;
    }

    else if (swift_dynamicCast())
    {
      v22 = v31[0];
      a3[3] = &type metadata for Bool;
      *a3 = v22;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        if (qword_DA9D0 != -1)
        {
          swift_once();
        }

        v26 = sub_A43D4();
        sub_48A4(v26, qword_E0BA0);
        *&v31[0] = 0;
        *(&v31[0] + 1) = 0xE000000000000000;
        sub_A4B54(31);
        v33._countAndFlagsBits = 0xD00000000000001DLL;
        v33._object = 0x80000000000ADCD0;
        sub_A46D4(v33);
        sub_A4C44();
        v27 = v31[0];

        sub_810DC(v27, *(&v27 + 1));
      }

      (*(v7 + 32))(v10, v12, v6);
      v24 = sub_A42D4();
      a3[3] = &type metadata for String;
      *a3 = v24;
      a3[1] = v25;
      (*(v7 + 8))(v10, v6);
    }
  }

  return sub_761C(v32);
}

void *sub_B22C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_4BF0(&qword_DB5D8, &qword_A6810);
    v1 = sub_A4CC4();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_B5A4(v2, 1, &v4);

  return v4;
}

_OWORD *sub_B2E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_B2F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_4BF0(&qword_DB5D8, &qword_A6810);
  v33 = v4;
  result = sub_A4CB4();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
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
      sub_92BFC(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 32 * v18);
    if (v33)
    {
      sub_B2E0(v22, v34);
    }

    else
    {
      sub_B924(v22, v34);
    }

    sub_A4F14();
    sub_A46A4();
    result = sub_A4F44();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_B2E0(v34, (*(v7 + 56) + 32 * v26));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_B5A4(uint64_t a1, char a2, void *a3)
{
  v25 = *(a1 + 16);
  if (!v25)
  {
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_A4EA4();
      __break(1u);
      goto LABEL_22;
    }

    sub_B8BC(i, &v30, &qword_DB5E0, &qword_A6818);
    v8 = v30;
    v7 = v31;
    v28 = v30;
    v29 = v31;
    sub_B2E0(&v32, v27);
    v9 = *a3;
    v11 = sub_A0D78(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_4BF0(&qword_DB5E8, &qword_A6820);
      sub_A4C64();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v8;
    v19[1] = v7;
    sub_B2E0(v27, (v18[7] + 32 * v11));
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    ++v5;
    v18[2] = v22;
    a2 = 1;
    if (v25 == v5)
    {
    }
  }

  sub_B2F0(v14, a2 & 1);
  v16 = sub_A0D78(v8, v7);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();
  v33 = v23;
  swift_errorRetain();
  sub_4BF0(&qword_DBB90, &qword_A7540);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_761C(v27);
  }

LABEL_22:
  sub_A4B54(30);
  v34._object = 0x80000000000ADCB0;
  v34._countAndFlagsBits = 0xD00000000000001BLL;
  sub_A46D4(v34);
  sub_A4C44();
  v35._countAndFlagsBits = 39;
  v35._object = 0xE100000000000000;
  sub_A46D4(v35);
  result = sub_A4C74();
  __break(1u);
  return result;
}

uint64_t sub_B8BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4BF0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_B924(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_B9A4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = 0;
  v7 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_title;
  v8 = sub_A42E4();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_date) = a2;
  *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_isAllDay) = a3;
  return v3;
}

double sub_BA40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_79F8(0x656C746974, 0xE500000000000000) & 1) != 0)
  {
    v8 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_title;
    v9 = sub_A42E4();
    *(a3 + 24) = v9;
    v10 = sub_76B0(a3);
    v11 = *(*(v9 - 8) + 16);

    v11(v10, v3 + v8, v9);
    return result;
  }

  v13 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (!v13 && (sub_79F8(1702125924, 0xE400000000000000) & 1) == 0)
  {
    v15 = a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000;
    if (v15 || (sub_79F8(0x7961446C6C417369, 0xE800000000000000) & 1) != 0)
    {
      v16 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_isAllDay);
      *(a3 + 24) = &type metadata for Bool;
      *a3 = v16;
      return result;
    }

    goto LABEL_24;
  }

  v14 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_date);
  if (!v14)
  {
LABEL_24:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = sub_A41E4();
  *a3 = v14;

  return result;
}

unint64_t sub_BBC8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CEBE8;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_BC1C(char a1)
{
  if (!a1)
  {
    return 0x656C746974;
  }

  if (a1 == 1)
  {
    return 1702125924;
  }

  return 0x7961446C6C417369;
}

unint64_t sub_BC8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_BBC8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_BCBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_BC1C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_BCF0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_BBC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_BD24(uint64_t a1)
{
  v2 = sub_C640();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BD60(uint64_t a1)
{
  v2 = sub_C640();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_BD9C()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_title;
  v2 = sub_A42E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_BE14()
{
  sub_BD9C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DBReminder(uint64_t a1)
{
  result = qword_DB630;
  if (!qword_DB630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_BEC0(uint64_t a1)
{
  result = sub_A42E4();
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

uint64_t sub_BF68(void *a1)
{
  v3 = v1;
  v5 = sub_4BF0(&qword_DB738, &qword_A6990);
  sub_591C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v16[-v9];
  sub_7584(a1, a1[3]);
  sub_C640();
  sub_A4F64();
  v18 = 0;
  sub_A42E4();
  sub_C978();
  sub_C694(v11, v12, &protocol conformance descriptor for SpeakableString);
  sub_C9B8();
  sub_A4DF4();
  if (!v2)
  {
    v17 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_date);
    v16[15] = 1;
    sub_A41E4();
    sub_C990();
    sub_C694(v13, v14, &protocol conformance descriptor for DialogCalendar);
    sub_C9B8();
    sub_A4DA4();
    v16[14] = 2;
    sub_A4DC4();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_C160(void *a1)
{
  v2 = swift_allocObject();
  sub_C1B0(a1);
  return v2;
}

id *sub_C1B0(void *a1)
{
  v3 = v1;
  v5 = sub_A42E4();
  sub_591C();
  v21[0] = v6;
  __chkstk_darwin(v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = sub_4BF0(&qword_DB720, &qword_A6988);
  sub_591C();
  __chkstk_darwin(v10);
  *(v3 + 16) = 0;
  v11 = a1[3];
  v22 = a1;
  sub_7584(a1, v11);
  sub_C640();
  sub_A4F54();
  if (v2)
  {

    type metadata accessor for DBReminder(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v21[0];
    v26 = 0;
    sub_C978();
    sub_C694(v13, v14, &protocol conformance descriptor for SpeakableString);
    sub_A4D74();
    (*(v12 + 32))(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_title, v9, v5);
    sub_A41E4();
    v25 = 1;
    sub_C990();
    sub_C694(v16, v17, &protocol conformance descriptor for DialogCalendar);
    sub_A4D24();
    *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_date) = v23;
    v24 = 2;
    v18 = sub_A4D44();
    v19 = sub_C9A8();
    v20(v19);
    *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBReminder_isAllDay) = v18 & 1;
  }

  sub_761C(v22);
  return v3;
}

uint64_t sub_C560@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_C160(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_C640()
{
  result = qword_DB728;
  if (!qword_DB728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB728);
  }

  return result;
}

uint64_t sub_C694(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for DBReminder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DBReminder.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0xC830);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_C86C()
{
  result = qword_DB748;
  if (!qword_DB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB748);
  }

  return result;
}

unint64_t sub_C8C4()
{
  result = qword_DB750;
  if (!qword_DB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB750);
  }

  return result;
}

unint64_t sub_C91C()
{
  result = qword_DB758;
  if (!qword_DB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB758);
  }

  return result;
}

BOOL sub_C9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_D048(a1, a2, a3);
  sub_591C();
  __chkstk_darwin(v8);
  sub_CFD8();
  v9 = sub_4BF0(&qword_DB760, qword_A6AE8);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_4BF0(&qword_DB768, &unk_A9650);
  sub_591C();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_CFBC();
  __chkstk_darwin(v16);
  sub_CFF0();
  if (sub_CF2C(v11, 1, v12) == 1)
  {
    sub_CF54(v11);
  }

  else
  {
    v17 = objc_opt_self();
    sub_D028([v17 fahrenheit]);

    v18 = *(v14 + 8);
    v18(v11, v12);
    sub_A2B54();
    v20 = v19;
    v18(v5, v12);
    v21 = sub_D014();
    v22(v21);
    v23 = sub_67C20(v3);
    sub_D068([v17 fahrenheit]);

    sub_A2B54();
    v25 = v24;
    v18(v4, v12);
    if (v23 <= 1)
    {
      return v20 - v25 > 1.0;
    }
  }

  return 0;
}

BOOL sub_CC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_D048(a1, a2, a3);
  sub_591C();
  __chkstk_darwin(v8);
  sub_CFD8();
  v9 = sub_4BF0(&qword_DB760, qword_A6AE8);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_4BF0(&qword_DB768, &unk_A9650);
  sub_591C();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_CFBC();
  __chkstk_darwin(v16);
  sub_CFF0();
  if (sub_CF2C(v11, 1, v12) == 1)
  {
    sub_CF54(v11);
  }

  else
  {
    v17 = objc_opt_self();
    sub_D028([v17 fahrenheit]);

    v18 = *(v14 + 8);
    v18(v11, v12);
    sub_A2B54();
    v20 = v19;
    v18(v5, v12);
    v21 = sub_D014();
    v22(v21);
    v23 = sub_67C20(v3);
    sub_D068([v17 fahrenheit]);

    sub_A2B54();
    v25 = v24;
    v18(v4, v12);
    if (v23 == 1)
    {
      return v25 - v20 > 1.0;
    }
  }

  return 0;
}

uint64_t sub_CEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DB760, qword_A6AE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_CF54(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DB760, qword_A6AE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_CFF0()
{

  return sub_CEBC(v1, v0);
}

uint64_t sub_D028(uint64_t a1)
{
  *(v2 - 112) = v1;

  return sub_A2B64();
}

uint64_t sub_D048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 104) = a3;

  return sub_A2EA4();
}

uint64_t sub_D068(uint64_t a1)
{

  return sub_A2B64();
}

id sub_D0F4()
{
  v1 = v0;
  v2 = sub_A43D4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DailyBriefingMapsSink_logger, v2);
  sub_810AC(0xD00000000000001CLL, 0x80000000000ADE50, 0xD000000000000033, 0x80000000000ADE70, 0x74696E696564, 0xE600000000000000);
  (*(v3 + 8))(v5, v2);
  v6 = type metadata accessor for DailyBriefingMapsSink(0);
  v8.receiver = v1;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t type metadata accessor for DailyBriefingMapsSink(uint64_t a1)
{
  result = qword_DB800;
  if (!qword_DB800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_D3C0()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DailyBriefingMapsSink_logger;
  if (qword_DA9F8 != -1)
  {
    swift_once();
  }

  v2 = sub_A43D4();
  v3 = sub_48A4(v2, qword_E0C18);
  (*(*(v2 - 8) + 16))(&v0[v1], v3, v2);
  *&v0[OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DailyBriefingMapsSink_entries] = 0;
  *&v0[OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DailyBriefingMapsSink_topSuggestion] = 0;
  v4 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21DailyBriefingMapsSink_networkRequester;
  *&v0[v4] = [objc_allocWithZone(MapsSuggestionsRealNetworkRequester) init];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for DailyBriefingMapsSink(0);
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_D4E8(uint64_t a1)
{
  result = sub_A43D4();
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

uint64_t sub_D58C()
{
  if (sub_A3504())
  {
    return 0x646F50656D6F48;
  }

  sub_D6D4();
  if (sub_A3464())
  {
    return 0x6B63696B65646953;
  }

  sub_D6D4();
  if (sub_A34C4())
  {
    return 0x656E6F6850;
  }

  sub_D6D4();
  if (sub_A34F4())
  {
    return 0x79616C50726143;
  }

  sub_D6D4();
  if (sub_A34E4())
  {
    return 0x5654656C707041;
  }

  sub_D6D4();
  if (sub_A34B4())
  {
    return 1684099177;
  }

  sub_D6D4();
  if (sub_A34D4())
  {
    return 0x6863746157;
  }

  sub_D6D4();
  if (sub_A34A4())
  {
    return 6512973;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_D6E0(char a1)
{
  sub_A3834();
  swift_allocObject();
  sub_A3824();
  switch(a1)
  {
    case 3:
      sub_A3804();

      sub_A3804();

      goto LABEL_5;
    case 4:
      v2 = 0;
      goto LABEL_7;
    case 5:
      v2 = 1;
LABEL_7:
      sub_4DD48(v2);
      sub_D98C();
      sub_4DD48(0xC1u);
      break;
    default:
      sub_A3804();
      sub_D98C();
LABEL_5:
      sub_A3804();
      break;
  }

  v3 = sub_A3814();

  return v3;
}

uint64_t sub_D98C()
{
}

unint64_t sub_D9A4(uint64_t a1, void *a2)
{
  v2 = 0xD000000000000026;
  if (a2)
  {
    sub_A4B54(41);

    sub_10944();
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    sub_A46D4(v6);
    return 0xD000000000000027;
  }

  return v2;
}

uint64_t sub_DA48(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 61) = a3;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v6);
  *(v5 + 96) = sub_10AAC();
  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_DAD8()
{
  v1 = *(v0 + 64);
  v2 = *v1;
  *(v0 + 104) = *v1;
  if (v2)
  {
    v3 = *(v1 + 10);
    v4 = v3 | (*(v1 + 44) << 32);
    v5 = v1[4];
    v6 = v1[1];
    v7 = *(v1 + 1);
    *(v0 + 16) = v2;
    *(v0 + 24) = v6;
    *(v0 + 32) = v7;
    *(v0 + 48) = v5;
    *(v0 + 56) = v3 & 1;
    v8.i64[0] = 0xFFFFFFFFFFLL;
    v8.i64[1] = 0xFFFFFFFFFFLL;
    v9 = vandq_s8(vdupq_n_s64(v4), v8);
    *v9.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v9, xmmword_A6B70), vshlq_u64(v9, xmmword_A6B60))), 0x1000100010001);
    *(v0 + 57) = vuzp1_s8(*v9.i8, *v9.i8).u32[0];
    if (v3)
    {
      sub_A3744();
      v10 = sub_1092C();
      sub_A924(v10, v11, 1, v12);
      v13 = swift_task_alloc();
      *(v0 + 120) = v13;
      *v13 = v0;
      v13[1] = sub_DE50;
      v14 = *(v0 + 96);
      v15 = *(v0 + 61);
      v17 = *(v0 + 64);
      v16 = *(v0 + 72);

      return sub_DFAC(v17, v0 + 16, v16, v15, v14);
    }

    else
    {
      v23 = *(type metadata accessor for CalendarPreprocessingResult(0) + 20);
      v24 = swift_task_alloc();
      *(v0 + 112) = v24;
      *v24 = v0;
      v24[1] = sub_DD14;
      v25 = *(v0 + 80);
      v26 = *(v0 + 61);
      v27 = *(v0 + 72);

      return sub_F3B4(v0 + 16, v1 + v23, v27, v26, v25);
    }
  }

  else
  {
    sub_10808();
    v19 = swift_allocError();
    *v20 = 0;
    v20[1] = 0;
    v21 = *(v0 + 104) == 0;

    v22 = *(v0 + 8);

    return v22(v19, (v21 << 8));
  }
}

uint64_t sub_DD14(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  sub_5930();
  *v5 = v4;

  v6 = *(v3 + 104) == 0;

  v7 = *(v4 + 8);

  return v7(a1, (v6 << 8) | 1u);
}

uint64_t sub_DE50(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  sub_5930();
  *v5 = v4;
  v6 = *(v3 + 96);
  v7 = *v1;
  *v5 = *v1;

  sub_1085C(v6, &qword_DB5A8, &unk_A67C0);
  v8 = *(v3 + 104) == 0;

  v9 = *(v7 + 8);

  return v9(a1, (v8 << 8) | 1u);
}

uint64_t sub_DFAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 104) = a5;
  *(v6 + 112) = v5;
  *(v6 + 372) = a4;
  *(v6 + 88) = a2;
  *(v6 + 96) = a3;
  *(v6 + 80) = a1;
  *(v6 + 120) = *a3;
  *(v6 + 368) = *(a3 + 24);
  v7 = sub_4BF0(&qword_DB958, qword_A6CE0);
  sub_10A88(v7);
  *(v6 + 128) = sub_10AC4();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  v8 = sub_A2EA4();
  *(v6 + 168) = v8;
  sub_5940(v8);
  *(v6 + 176) = v9;
  *(v6 + 184) = sub_10AAC();
  v10 = sub_A2BB4();
  *(v6 + 192) = v10;
  sub_5940(v10);
  *(v6 + 200) = v11;
  *(v6 + 208) = sub_10AAC();
  v12 = type metadata accessor for CalendarEvent(0);
  *(v6 + 216) = v12;
  sub_5940(v12);
  *(v6 + 224) = v13;
  *(v6 + 232) = sub_10AAC();
  v14 = sub_A42E4();
  *(v6 + 240) = v14;
  sub_5940(v14);
  *(v6 + 248) = v15;
  *(v6 + 256) = sub_10AC4();
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  v16 = sub_4BF0(&qword_DB960, &unk_A6C00);
  sub_10A88(v16);
  *(v6 + 288) = sub_10AC4();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  v17 = sub_AA8C();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_E254()
{
  v1 = v0[11];
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v2 = swift_allocObject();
  v0[44] = v2;
  v3 = sub_10980(v2, xmmword_A6B80);
  *(v4 + 48) = v3;
  sub_10944();
  *(v5 + 72) = v6;
  *(v5 + 80) = 0xD000000000000012;
  *(v5 + 88) = v7;
  *(v5 + 96) = v1[2];
  sub_10944();
  *(v8 + 120) = v9;
  *(v8 + 128) = 0xD000000000000011;
  *(v8 + 136) = v10;
  *(v8 + 144) = *(v1 + 42);
  sub_10944();
  *(v11 + 168) = v12;
  *(v11 + 176) = 0xD000000000000010;
  *(v11 + 184) = v13;
  *(v11 + 192) = *(v1 + 44);
  sub_10944();
  *(v14 + 216) = v15;
  *(v14 + 224) = 0xD000000000000010;
  *(v14 + 232) = v16;
  *(v14 + 240) = *(v1 + 43);
  sub_109B4();
  v17[33] = v19;
  v17[34] = v18 & 0xFFFFFFFFFFFFLL | 0x7469000000000000;
  v17[35] = 0xEB0000000073656CLL;
  v20 = *v1;
  v21 = *(*v1 + 16);
  v194 = v17;
  if (v21)
  {
    v199 = v0[29];
    sub_7AC1C(0, v21, 0);
    sub_10950();
    v23 = v20 + v22;
    sub_10A70();
    do
    {
      v24 = v0[29];
      v25 = v0[24];
      sub_106FC(v23, v24);
      v26 = *(v199 + 8);
      v0[2] = *v24;
      v0[3] = v26;

      sub_A2B84();
      sub_10760();
      v27 = sub_A4A54();
      v29 = v28;
      v30 = sub_10A60();
      v31(v30, v25);

      sub_10A94(v27, v29);
      sub_108C4();
      sub_107B4(v24, v32);
      v34 = _swiftEmptyArrayStorage[2];
      v33 = _swiftEmptyArrayStorage[3];
      if (v34 >= v33 >> 1)
      {
        v38 = sub_10A50(v33);
        sub_7AC1C(v38, v34 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v34 + 1;
      sub_10970();
      v36 = sub_10960(_swiftEmptyArrayStorage + v35);
      v37(v36);
      v23 += v197;
      --v21;
    }

    while (v21);
    v39 = v194;
  }

  else
  {
    v39 = v17;
  }

  v40 = v0;
  v41 = v0[43];
  v42 = v0[27];
  v43 = sub_4BF0(&qword_DB970, &unk_A6C10);
  *(v39 + 288) = _swiftEmptyArrayStorage;
  sub_109B4();
  *(v39 + 312) = v45;
  *(v39 + 320) = v44 & 0xFFFFFFFFFFFFLL | 0x6D69000000000000;
  *(v39 + 328) = 0xE900000000000065;
  sub_10B64();
  v46 = sub_1092C();
  LODWORD(v42) = sub_CF2C(v46, v47, v42);
  sub_1085C(v41, &qword_DB960, &unk_A6C00);
  if (v42 == 1)
  {
    *(v39 + 336) = 0u;
    *(v39 + 352) = 0u;
  }

  else
  {
    sub_10B64();
    result = sub_108F4();
    if (v150)
    {
      __break(1u);
      goto LABEL_56;
    }

    v49 = v0[42];
    v50 = v0[27];
    v52 = *(v40 + 176);
    v51 = *(v40 + 184);
    v53 = *(v40 + 168);
    v54 = sub_A41E4();
    (*(v52 + 16))(v51, v49 + *(v50 + 20), v53);
    sub_108C4();
    sub_107B4(v49, v55);
    v56 = sub_8CD18();
    (*(v52 + 8))(v51, v53);
    *(v39 + 360) = v54;
    *(v39 + 336) = v56;
  }

  sub_109D8();
  *(v39 + 368) = v58;
  *(v39 + 376) = v59;
  if (*(v60 + 16))
  {
    *(v39 + 384) = *(v40 + 368);
    *(v39 + 408) = &type metadata for Double;
    *(v39 + 416) = v57;
    *(v39 + 424) = 0xE300000000000000;
    v61 = v40;
    v62 = sub_A4234();
    v63 = sub_8CD90();
  }

  else
  {
    v63 = 0;
    v61 = v40;
    v62 = 0;
    *(v39 + 384) = 0u;
    *(v39 + 400) = 0u;
    *(v39 + 416) = v57;
    *(v39 + 424) = 0xE300000000000000;
    *(v39 + 440) = 0;
    *(v39 + 448) = 0;
  }

  *(v39 + 432) = v63;
  sub_10B1C();
  *(v39 + 456) = v62;
  *(v39 + 464) = v64;
  sub_10B08();
  *(v39 + 472) = v65;
  *(v39 + 480) = v66;
  *(v39 + 504) = &type metadata for Bool;
  *(v39 + 512) = 0x6E696E6576457369;
  *(v39 + 520) = 0xE900000000000067;
  v68 = *(v67 + 41);
  *(v39 + 552) = &type metadata for Bool;
  *(v39 + 528) = v68;
  sub_10944();
  sub_10AE8();
  *(v39 + 560) = v40 + 2;
  *(v39 + 568) = v69;
  v71 = *(v70 + 32);
  *(v39 + 600) = &type metadata for Double;
  *(v39 + 576) = v71;
  sub_10944();
  *(v39 + 608) = v40 + 3;
  *(v39 + 616) = v72;
  v74 = *(v73 + 8);
  v75 = *(v74 + 16);
  v192 = v43;
  v195 = v74;
  if (v75)
  {
    v200 = v61[29];
    sub_7AC1C(0, v75, 0);
    sub_10950();
    v77 = v74 + v76;
    sub_10A70();
    v78 = v61;
    do
    {
      v79 = v78[29];
      v80 = v78[24];
      sub_106FC(v77, v79);
      v81 = *(v200 + 8);
      v78[4] = *v79;
      v78[5] = v81;

      sub_A2B84();
      sub_10760();
      sub_A4A54();
      v40 = v82;
      v83 = sub_10A60();
      v84(v83, v80);

      sub_10A14();
      sub_108C4();
      sub_107B4(v79, v85);
      v87 = _swiftEmptyArrayStorage[2];
      v86 = _swiftEmptyArrayStorage[3];
      if (v87 >= v86 >> 1)
      {
        v91 = sub_10A50(v86);
        sub_7AC1C(v91, v87 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v87 + 1;
      sub_10970();
      v89 = sub_10960(_swiftEmptyArrayStorage + v88);
      v90(v89);
      v77 += v197;
      --v75;
    }

    while (v75);
    v39 = v194;
    sub_10AE8();
  }

  else
  {
    v78 = v61;
  }

  v92 = v78[41];
  v93 = v78[27];
  *(v39 + 648) = v43;
  *(v39 + 624) = _swiftEmptyArrayStorage;
  sub_10944();
  *(v39 + 656) = v40 + 1;
  *(v39 + 664) = v94;
  sub_589D0(v195, v92);
  v95 = sub_1092C();
  LODWORD(v93) = sub_CF2C(v95, v96, v93);
  sub_1085C(v92, &qword_DB960, &unk_A6C00);
  if (v93 == 1)
  {
    *(v39 + 672) = 0u;
    *(v39 + 688) = 0u;
    goto LABEL_26;
  }

  sub_589D0(v195, v78[40]);
  result = sub_108F4();
  if (v150)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v97 = v78[40];
  v98 = sub_10B44();
  v99 = sub_10918();
  v100(v99);
  sub_108C4();
  sub_107B4(v97, v101);
  sub_8CD18();
  v102 = sub_109C4();
  v103(v102);
  *(v39 + 696) = v98;
  *(v39 + 672) = v98;
LABEL_26:
  v104 = v78[20];
  v105 = v78[10];
  sub_10944();
  *(v39 + 704) = v40 + 12;
  *(v39 + 712) = v106;
  v193 = *(type metadata accessor for CalendarPreprocessingResult(0) + 20);
  sub_B8BC(v105 + v193, v104, &qword_DB958, qword_A6CE0);
  v107 = type metadata accessor for ImportantEventInfo(0);
  v108 = sub_1092C();
  v110 = sub_CF2C(v108, v109, v107);
  v196 = v78;
  v111 = v78[20];
  if (v110 == 1)
  {
    sub_1085C(v78[20], &qword_DB958, qword_A6CE0);
    *(v39 + 720) = 0u;
    *(v39 + 736) = 0u;
  }

  else
  {
    v112 = *v111;

    sub_108DC();
    sub_107B4(v111, v113);
    v114 = *(v112 + 16);
    if (v114)
    {
      v189 = v107;
      v191 = v105;
      v115 = v78[28];
      v201 = v78[29];
      sub_7AC1C(0, v114, 0);
      v116 = _swiftEmptyArrayStorage;
      sub_10950();
      v40 = v112 + v117;
      v198 = *(v115 + 72);
      do
      {
        v118 = v78[29];
        v119 = v78[26];
        v120 = v78[24];
        sub_106FC(v40, v118);
        v121 = *(v201 + 8);
        v78[8] = *v118;
        v78[9] = v121;

        sub_A2B84();
        sub_10760();
        v122 = v116;
        v123 = sub_A4A54();
        v125 = v124;
        v126 = sub_10A60();
        v127(v126, v120);

        v128 = v123;
        v116 = v122;
        sub_10A94(v128, v125);
        sub_108C4();
        sub_107B4(v118, v129);
        sub_10AF4();
        if (v131)
        {
          v135 = sub_10A50(v130);
          sub_7AC1C(v135, v119, 1);
          v116 = v122;
        }

        v116[2] = v119;
        sub_10970();
        v133 = sub_10960(v116 + v132);
        v134(v133);
        v40 += v198;
        --v114;
      }

      while (v114);

      v39 = v194;
      sub_10AE8();
      v105 = v191;
      v43 = v192;
      v107 = v189;
    }

    else
    {

      v116 = _swiftEmptyArrayStorage;
    }

    *(v39 + 744) = v43;
    *(v39 + 720) = v116;
  }

  v136 = v193;
  v137 = v78[19];
  sub_10944();
  *(v39 + 752) = v40 + 9;
  *(v39 + 760) = v138;
  sub_B8BC(v105 + v193, v137, &qword_DB958, qword_A6CE0);
  v139 = sub_1092C();
  v141 = sub_CF2C(v139, v140, v107);
  v142 = v78[39];
  v143 = v78[27];
  v144 = v78[19];
  if (v141 == 1)
  {
    sub_1085C(v78[19], &qword_DB958, qword_A6CE0);
    sub_10A34(v142);
LABEL_40:
    v146 = v78;
    sub_1085C(v78[39], &qword_DB960, &unk_A6C00);
    *(v39 + 768) = 0u;
    *(v39 + 784) = 0u;
    goto LABEL_44;
  }

  sub_B8BC(v144 + *(v107 + 20), v78[39], &qword_DB960, &unk_A6C00);
  sub_108DC();
  sub_107B4(v144, v145);
  sub_109FC(v142, 1, v143);
  if (v150)
  {
    goto LABEL_40;
  }

  v146 = v78;
  v147 = v78[18];
  sub_1085C(v78[39], &qword_DB960, &unk_A6C00);
  sub_B8BC(v105 + v193, v147, &qword_DB958, qword_A6CE0);
  v148 = sub_1092C();
  result = sub_109FC(v148, v149, v107);
  if (v150)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v190 = v107;
  v151 = v78[18];
  sub_10B7C(&qword_DB960, &unk_A6C00, *(v107 + 20));
  sub_108DC();
  sub_107B4(v151, v152);
  result = sub_108F4();
  if (v150)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v153 = v78[38];
  v155 = v78[31];
  v154 = v196[32];
  v156 = v196[30];
  v157 = v196[24];
  v40 = *v153;
  v158 = v153[1];

  sub_108C4();
  sub_107B4(v153, v159);
  v196[6] = v40;
  v196[7] = v158;
  sub_A2B84();
  sub_10760();
  sub_A4A54();
  v160 = sub_10B30();
  v161(v160, v157);

  sub_10A14();
  v39 = v194;
  v194[99] = v156;
  v162 = sub_76B0(v194 + 96);
  (*(v155 + 32))(v162, v154, v156);
  sub_10AE8();
  v107 = v190;
  v136 = v193;
LABEL_44:
  v163 = v146[17];
  sub_10944();
  *(v39 + 800) = v40 + 8;
  *(v39 + 808) = v164;
  sub_B8BC(v105 + v136, v163, &qword_DB958, qword_A6CE0);
  v165 = sub_1092C();
  v167 = sub_CF2C(v165, v166, v107);
  v168 = v146[37];
  v169 = v146[27];
  v170 = v146[17];
  if (v167 != 1)
  {
    sub_B8BC(v170 + *(v107 + 20), v146[37], &qword_DB960, &unk_A6C00);
    sub_108DC();
    sub_107B4(v170, v171);
    sub_109FC(v168, 1, v169);
    if (v150)
    {
      goto LABEL_48;
    }

    v173 = v196[16];
    sub_1085C(v196[37], &qword_DB960, &unk_A6C00);
    sub_B8BC(v105 + v136, v173, &qword_DB958, qword_A6CE0);
    v174 = sub_1092C();
    result = sub_109FC(v174, v175, v107);
    if (!v176)
    {
      v177 = v196[16];
      sub_10B7C(&qword_DB960, &unk_A6C00, *(v107 + 20));
      sub_108DC();
      sub_107B4(v177, v178);
      result = sub_108F4();
      if (!v150)
      {
        v179 = v196[36];
        v180 = sub_10B44();
        v181 = sub_10918();
        v182(v181);
        sub_108C4();
        sub_107B4(v179, v183);
        sub_8CD18();
        v184 = sub_109C4();
        v185(v184);
        *(v39 + 840) = v180;
        *(v39 + 816) = v180;
        v172 = v196;
        goto LABEL_52;
      }

LABEL_60:
      __break(1u);
      return result;
    }

    goto LABEL_58;
  }

  sub_1085C(v146[17], &qword_DB958, qword_A6CE0);
  sub_10A34(v168);
LABEL_48:
  v172 = v196;
  sub_1085C(v196[37], &qword_DB960, &unk_A6C00);
  *(v39 + 816) = 0u;
  *(v39 + 832) = 0u;
LABEL_52:
  v186 = *(v172[14] + 16);
  v187 = swift_task_alloc();
  v172[45] = v187;
  *v187 = v172;
  v187[1] = sub_F050;
  v188 = v172[13];

  return sub_6E228(2, v39, v188, v186);
}

uint64_t sub_F050(uint64_t a1)
{
  sub_10938();
  sub_10938();
  sub_10938();
  sub_10938();
  sub_10938();
  sub_10938();
  sub_10938();
  sub_10938();
  sub_10938();
  sub_10938();
  sub_10938();
  v2 = *v1;
  sub_5930();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4(a1);
}

uint64_t sub_F3B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 332) = a4;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  *(v6 + 104) = *a3;
  *(v6 + 328) = *(a3 + 24);
  v7 = sub_4BF0(&qword_DB958, qword_A6CE0);
  sub_10A88(v7);
  *(v6 + 112) = sub_10AC4();
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  v8 = sub_A2EA4();
  *(v6 + 152) = v8;
  sub_5940(v8);
  *(v6 + 160) = v9;
  *(v6 + 168) = sub_10AAC();
  v10 = sub_A2BB4();
  *(v6 + 176) = v10;
  sub_5940(v10);
  *(v6 + 184) = v11;
  *(v6 + 192) = sub_10AAC();
  v12 = type metadata accessor for CalendarEvent(0);
  *(v6 + 200) = v12;
  sub_5940(v12);
  *(v6 + 208) = v13;
  *(v6 + 216) = sub_10AAC();
  v14 = sub_A42E4();
  *(v6 + 224) = v14;
  sub_5940(v14);
  *(v6 + 232) = v15;
  *(v6 + 240) = sub_10AC4();
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  v16 = sub_4BF0(&qword_DB960, &unk_A6C00);
  sub_10A88(v16);
  *(v6 + 264) = sub_10AC4();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  v17 = sub_AA8C();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_F638()
{
  sub_10ADC();
  v2 = *(v0 + 64);
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v3 = swift_allocObject();
  *(v0 + 312) = v3;
  v4 = sub_10980(v3, xmmword_A6B90);
  *(v5 + 48) = v4;
  sub_10944();
  *(v6 + 72) = v7;
  *(v6 + 80) = v1 | 2;
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v2 + 32);
  sub_10944();
  *(v9 + 120) = v10;
  *(v9 + 128) = v1 | 1;
  *(v9 + 136) = v11;
  *(v9 + 144) = *(v2 + 42);
  sub_10944();
  *(v12 + 168) = v13;
  *(v12 + 176) = v1;
  *(v12 + 184) = v14;
  *(v12 + 192) = *(v2 + 44);
  sub_109B4();
  v15[27] = v17;
  v15[28] = v16 & 0xFFFFFFFFFFFFLL | 0x7469000000000000;
  v15[29] = 0xEB0000000073656CLL;
  v18 = *(v2 + 8);
  v19 = *(v18 + 16);
  v148 = v15;
  if (v19)
  {
    v20 = *(v0 + 208);
    v153 = *(v0 + 216);
    v21 = *(v0 + 184);
    sub_7AC1C(0, v19, 0);
    sub_10950();
    v23 = v18 + v22;
    v149 = (v21 + 8);
    v151 = *(v20 + 72);
    do
    {
      v1 = *(v0 + 216);
      v24 = *(v0 + 192);
      v25 = *(v0 + 176);
      sub_106FC(v23, v1);
      v26 = *(v153 + 8);
      *(v0 + 16) = *v1;
      *(v0 + 24) = v26;

      sub_A2B84();
      sub_10760();
      v27 = sub_A4A54();
      v29 = v28;
      (*v149)(v24, v25);

      sub_10A94(v27, v29);
      sub_108C4();
      sub_107B4(v1, v30);
      v32 = _swiftEmptyArrayStorage[2];
      v31 = _swiftEmptyArrayStorage[3];
      if (v32 >= v31 >> 1)
      {
        sub_7AC1C((v31 > 1), v32 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v32 + 1;
      sub_10970();
      v34 = sub_10960(_swiftEmptyArrayStorage + v33);
      v35(v34);
      v23 += v151;
      --v19;
    }

    while (v19);
    v36 = v148;
    sub_10ADC();
  }

  else
  {
    v36 = v15;
  }

  v37 = *(v0 + 304);
  v38 = *(v0 + 200);
  v39 = sub_4BF0(&qword_DB970, &unk_A6C10);
  *(v36 + 240) = _swiftEmptyArrayStorage;
  sub_109B4();
  *(v36 + 264) = v41;
  *(v36 + 272) = v40 & 0xFFFFFFFFFFFFLL | 0x6D69000000000000;
  *(v36 + 280) = 0xE900000000000065;
  sub_10B64();
  v42 = sub_1092C();
  LODWORD(v38) = sub_CF2C(v42, v43, v38);
  sub_1085C(v37, &qword_DB960, &unk_A6C00);
  if (v38 == 1)
  {
    *(v36 + 288) = 0u;
    *(v36 + 304) = 0u;
  }

  else
  {
    sub_10B64();
    result = sub_108F4();
    if (v104)
    {
      __break(1u);
      goto LABEL_45;
    }

    v45 = *(v0 + 296);
    v47 = *(v0 + 160);
    v46 = *(v0 + 168);
    v48 = *(v0 + 152);
    v49 = sub_A41E4();
    v50 = sub_10918();
    v51(v50);
    sub_108C4();
    sub_107B4(v45, v52);
    v53 = sub_8CD18();
    (*(v47 + 8))(v46, v48);
    *(v36 + 312) = v49;
    *(v36 + 288) = v53;
  }

  sub_109D8();
  *(v36 + 320) = v55;
  *(v36 + 328) = v56;
  v147 = v39;
  if (*(v57 + 16))
  {
    *(v36 + 336) = *(v0 + 328);
    *(v36 + 360) = &type metadata for Double;
    *(v36 + 368) = v54;
    *(v36 + 376) = 0xE300000000000000;
    v58 = sub_A4234();
    v59 = sub_8CD90();
  }

  else
  {
    v59 = 0;
    v58 = 0;
    *(v36 + 336) = 0u;
    *(v36 + 352) = 0u;
    *(v36 + 368) = v54;
    *(v36 + 376) = 0xE300000000000000;
    *(v36 + 392) = 0;
    *(v36 + 400) = 0;
  }

  v60 = *(v0 + 144);
  *(v36 + 384) = v59;
  sub_10B1C();
  *(v36 + 408) = v58;
  *(v36 + 416) = v61;
  sub_10B08();
  *(v36 + 424) = v62;
  *(v36 + 432) = v63;
  *(v36 + 456) = &type metadata for Bool;
  *(v36 + 464) = v1 + 12;
  *(v36 + 472) = 0x80000000000AE020;
  sub_B8BC(v64, v60, &qword_DB958, qword_A6CE0);
  v65 = type metadata accessor for ImportantEventInfo(0);
  v66 = sub_CF2C(v60, 1, v65);
  v67 = *(v0 + 144);
  if (v66 == 1)
  {
    sub_1085C(*(v0 + 144), &qword_DB958, qword_A6CE0);
    *(v36 + 480) = 0u;
    *(v36 + 496) = 0u;
  }

  else
  {
    v68 = *v67;

    sub_108DC();
    sub_107B4(v67, v69);
    v70 = *(v68 + 16);
    if (v70)
    {
      v145 = v65;
      v71 = *(v0 + 208);
      v154 = *(v0 + 216);
      v72 = *(v0 + 184);
      sub_7AC1C(0, v70, 0);
      v73 = _swiftEmptyArrayStorage;
      sub_10950();
      v75 = v68 + v74;
      v150 = (v72 + 8);
      v152 = *(v71 + 72);
      do
      {
        v76 = *(v0 + 216);
        v77 = *(v0 + 192);
        v78 = *(v0 + 176);
        sub_106FC(v75, v76);
        v79 = *(v154 + 8);
        *(v0 + 48) = *v76;
        *(v0 + 56) = v79;

        sub_A2B84();
        sub_10760();
        v80 = v73;
        v81 = sub_A4A54();
        v1 = v82;
        (*v150)(v77, v78);

        v83 = v81;
        v73 = v80;
        sub_10A94(v83, v1);
        sub_108C4();
        sub_107B4(v76, v84);
        sub_10AF4();
        if (v86)
        {
          sub_7AC1C((v85 > 1), v76, 1);
          v73 = v80;
        }

        v73[2] = v76;
        sub_10970();
        v88 = sub_10960(v73 + v87);
        v89(v88);
        v75 += v152;
        --v70;
      }

      while (v70);

      v36 = v148;
      sub_10ADC();
      v65 = v145;
    }

    else
    {

      v73 = _swiftEmptyArrayStorage;
    }

    *(v36 + 504) = v147;
    *(v36 + 480) = v73;
  }

  v90 = *(v0 + 136);
  sub_10944();
  *(v36 + 512) = v1 + 9;
  *(v36 + 520) = v91;
  sub_B8BC(v92, v90, &qword_DB958, qword_A6CE0);
  v93 = sub_1092C();
  v95 = sub_CF2C(v93, v94, v65);
  v96 = *(v0 + 288);
  v97 = *(v0 + 200);
  v98 = *(v0 + 136);
  if (v95 == 1)
  {
    sub_1085C(*(v0 + 136), &qword_DB958, qword_A6CE0);
    sub_10A34(v96);
LABEL_29:
    sub_1085C(*(v0 + 288), &qword_DB960, &unk_A6C00);
    *(v36 + 528) = 0u;
    *(v36 + 544) = 0u;
    goto LABEL_33;
  }

  sub_B8BC(v98 + *(v65 + 20), *(v0 + 288), &qword_DB960, &unk_A6C00);
  sub_108DC();
  sub_107B4(v98, v99);
  sub_109FC(v96, 1, v97);
  if (v104)
  {
    goto LABEL_29;
  }

  v100 = *(v0 + 128);
  v101 = *(v0 + 72);
  sub_1085C(*(v0 + 288), &qword_DB960, &unk_A6C00);
  sub_B8BC(v101, v100, &qword_DB958, qword_A6CE0);
  v102 = sub_1092C();
  result = sub_109FC(v102, v103, v65);
  if (v104)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v105 = *(v0 + 128);
  v146 = v65;
  sub_10B7C(&qword_DB960, &unk_A6C00, *(v65 + 20));
  sub_108DC();
  sub_107B4(v105, v106);
  result = sub_108F4();
  if (v104)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v107 = *(v0 + 280);
  v109 = *(v0 + 232);
  v108 = *(v0 + 240);
  v110 = *(v0 + 224);
  v1 = *(v0 + 184);
  v111 = *(v0 + 176);
  v113 = *v107;
  v112 = v107[1];

  sub_108C4();
  sub_107B4(v107, v114);
  *(v0 + 32) = v113;
  *(v0 + 40) = v112;
  sub_A2B84();
  sub_10760();
  sub_A4A54();
  v115 = sub_10B30();
  v116(v115, v111);

  sub_10A14();
  v36 = v148;
  v148[69] = v110;
  v117 = sub_76B0(v148 + 66);
  (*(v109 + 32))(v117, v108, v110);
  sub_10ADC();
  v65 = v146;
LABEL_33:
  v118 = *(v0 + 120);
  sub_10944();
  *(v36 + 560) = v1 + 8;
  *(v36 + 568) = v119;
  sub_B8BC(v120, v118, &qword_DB958, qword_A6CE0);
  v121 = sub_1092C();
  v123 = sub_CF2C(v121, v122, v65);
  v124 = *(v0 + 272);
  v125 = *(v0 + 200);
  v126 = *(v0 + 120);
  if (v123 != 1)
  {
    sub_B8BC(v126 + *(v65 + 20), *(v0 + 272), &qword_DB960, &unk_A6C00);
    sub_108DC();
    sub_107B4(v126, v127);
    sub_109FC(v124, 1, v125);
    if (v104)
    {
      goto LABEL_37;
    }

    v128 = *(v0 + 112);
    v129 = *(v0 + 72);
    sub_1085C(*(v0 + 272), &qword_DB960, &unk_A6C00);
    sub_B8BC(v129, v128, &qword_DB958, qword_A6CE0);
    v130 = sub_1092C();
    result = sub_109FC(v130, v131, v65);
    if (!v132)
    {
      v133 = *(v0 + 112);
      sub_10B7C(&qword_DB960, &unk_A6C00, *(v65 + 20));
      sub_108DC();
      sub_107B4(v133, v134);
      result = sub_108F4();
      if (!v104)
      {
        v135 = *(v0 + 264);
        v136 = sub_A41E4();
        v137 = sub_10918();
        v138(v137);
        sub_108C4();
        sub_107B4(v135, v139);
        sub_8CD18();
        v140 = sub_109C4();
        v141(v140);
        *(v36 + 600) = v136;
        *(v36 + 576) = v136;
        goto LABEL_41;
      }

LABEL_48:
      __break(1u);
      return result;
    }

    goto LABEL_46;
  }

  sub_1085C(*(v0 + 120), &qword_DB958, qword_A6CE0);
  sub_10A34(v124);
LABEL_37:
  sub_1085C(*(v0 + 272), &qword_DB960, &unk_A6C00);
  *(v36 + 576) = 0u;
  *(v36 + 592) = 0u;
LABEL_41:
  v142 = *(*(v0 + 96) + 16);
  v143 = swift_task_alloc();
  *(v0 + 320) = v143;
  *v143 = v0;
  v143[1] = sub_1014C;
  v144 = *(v0 + 88);

  return sub_6E228(3, v36, v144, v142);
}

uint64_t sub_1014C(uint64_t a1)
{
  sub_10938();
  sub_10938();
  sub_10938();
  sub_10938();
  sub_10938();
  sub_10938();
  sub_10938();
  sub_10938();
  v2 = *v1;
  sub_5930();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4(a1);
}

uint64_t sub_1045C(void *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin25CalendarTemplatingService_logger;
  if (qword_DA9E0 != -1)
  {
    swift_once();
  }

  v6 = sub_A43D4();
  v7 = sub_48A4(v6, qword_E0BD0);
  (*(*(v6 - 8) + 16))(v2 + v5, v7, v6);
  sub_761C(a1);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t sub_10524()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin25CalendarTemplatingService_logger;
  sub_A43D4();
  sub_5908();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_10580()
{

  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin25CalendarTemplatingService_logger;
  sub_A43D4();
  sub_5908();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for CalendarTemplatingService(uint64_t a1)
{
  result = qword_DB8B0;
  if (!qword_DB8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1066C(uint64_t a1)
{
  result = sub_A43D4();
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

uint64_t sub_106FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10760()
{
  result = qword_DBBA0;
  if (!qword_DBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBBA0);
  }

  return result;
}

uint64_t sub_107B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_5908();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_10808()
{
  result = qword_DB978;
  if (!qword_DB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DB978);
  }

  return result;
}

uint64_t sub_1085C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_4BF0(a2, a3);
  sub_5908();
  (*(v4 + 8))(a1);
  return a1;
}

double sub_10980(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x6576456C61746F74;
  a1[2].n128_u64[1] = 0xEF746E756F43746ELL;
  return *(v2 + 24);
}

uint64_t sub_10A14()
{

  return sub_A42C4();
}

uint64_t sub_10A34(uint64_t a1)
{

  return sub_A924(a1, 1, 1, v1);
}

uint64_t sub_10A94(uint64_t a1, uint64_t a2)
{

  return sub_A42C4();
}

uint64_t sub_10AAC()
{

  return swift_task_alloc();
}

uint64_t sub_10AC4()
{

  return swift_task_alloc();
}

uint64_t sub_10B44()
{

  return sub_A41E4();
}

uint64_t sub_10B64()
{

  return sub_589D0(v1, v0);
}

uint64_t sub_10B7C@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_B8BC(v4 + a3, v3, a1, a2);
}

uint64_t sub_10BA8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    sub_11F4C();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_4BF0(&qword_DB958, qword_A6CE0);
    sub_11F80();
    if (*(v8 + 84) == a2)
    {
      v9 = *(a3 + 20);
    }

    else
    {
      type metadata accessor for DBCalendarState(0);
      v9 = *(a3 + 24);
    }

    v10 = sub_11F40(v9);

    return sub_CF2C(v10, v11, v12);
  }
}

void *sub_10C90(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    sub_4BF0(&qword_DB958, qword_A6CE0);
    sub_11F80();
    if (*(v7 + 84) == a3)
    {
      v8 = *(a4 + 20);
    }

    else
    {
      type metadata accessor for DBCalendarState(0);
      v8 = *(a4 + 24);
    }

    v9 = sub_11F40(v8);

    return sub_A924(v9, v10, a2, v11);
  }

  return result;
}

void sub_10D7C(uint64_t a1)
{
  sub_10E48();
  if (v1 <= 0x3F)
  {
    sub_1117C(319, &unk_DB9F0, type metadata accessor for ImportantEventInfo, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DBCalendarState(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10E48()
{
  if (!qword_DB9E8)
  {
    v0 = sub_A4A24();
    if (!v1)
    {
      atomic_store(v0, &qword_DB9E8);
    }
  }
}

__n128 sub_10EB8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10ECC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 45))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10F0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 45) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 45) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10F80(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    sub_11F4C();
    return (v3 + 1);
  }

  else
  {
    sub_4BF0(&qword_DB960, &unk_A6C00);
    v6 = sub_11F40(*(a3 + 20));

    return sub_CF2C(v6, v7, v8);
  }
}

void sub_1101C()
{
  sub_11FA0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_4BF0(&qword_DB960, &unk_A6C00);
    v5 = sub_11F40(*(v4 + 20));

    sub_A924(v5, v6, v0, v7);
  }
}

void sub_11098(uint64_t a1)
{
  sub_1117C(319, &qword_DBA90, type metadata accessor for CalendarEvent, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1117C(319, &unk_DBA98, type metadata accessor for CalendarEvent, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1117C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_11214(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    sub_11F4C();
    return (v3 + 1);
  }

  else
  {
    sub_A2EA4();
    sub_11F80();
    if (*(v7 + 84) == a2)
    {
      v8 = *(a3 + 20);
    }

    else
    {
      sub_A2DB4();
      v8 = *(a3 + 24);
    }

    v9 = sub_11F40(v8);

    return sub_CF2C(v9, v10, v11);
  }
}

void sub_112E4()
{
  sub_11FA0();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    sub_A2EA4();
    sub_11F80();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      sub_A2DB4();
      v8 = *(v5 + 24);
    }

    v9 = sub_11F40(v8);

    sub_A924(v9, v10, v0, v11);
  }
}

uint64_t sub_11398(uint64_t a1)
{
  result = sub_A2EA4();
  if (v2 <= 0x3F)
  {
    result = sub_A2DB4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1142C()
{
  sub_11F5C();
  v58 = type metadata accessor for ImportantEventInfo(0);
  sub_7A14();
  __chkstk_darwin(v2);
  v56 = (v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4BF0(&qword_DB958, qword_A6CE0);
  sub_11FC0();
  __chkstk_darwin(v4);
  v57 = (v49 - v5);
  sub_4BF0(&qword_DBB60, &qword_A6E48);
  sub_7A14();
  sub_11FC0();
  v7 = __chkstk_darwin(v6);
  v59 = v49 - v8;
  v9 = *v1;
  v10 = *(v1 + 8);
  v12 = *(v1 + 16);
  v11 = *(v1 + 24);
  v13 = *(v1 + 32);
  v14 = *(v1 + 40) | (*(v1 + 44) << 32);
  v16 = *v0;
  v15 = v0[1];
  v18 = v0[2];
  v17 = v0[3];
  v19 = *(v0 + 10) | (*(v0 + 44) << 32);
  v20 = v0[4];
  if (*v1)
  {
    if (v16)
    {
      v55 = v7;
      v68 = v16;
      v69 = v15;
      v70 = v18;
      v71 = v17;
      v72 = v20;
      v73 = v19;
      v74 = BYTE4(v19);
      v61 = v9;
      v62 = v10;
      v63 = v12;
      v64 = v11;
      v65 = v13;
      v66 = v14;
      v67 = BYTE4(v14);
      v52 = v10;
      v53 = v12;
      v60 = v15;
      sub_11FB4();
      v54 = v21;
      v51 = v14;
      sub_11D58(v22, v23);
      sub_11F68();
      sub_11D58(v24, v25);
      LODWORD(v50) = sub_118E0();
      sub_11F68();
      sub_11D98(v26, v27);
      sub_11D98(v9, v52);
      if ((v50 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

LABEL_6:
    v59 = *v1;
    v60 = v15;
    v58 = v18;
    sub_11D58(v59, v10);
    sub_11F8C();
    sub_11D58(v28, v29);
    sub_11FB4();
    sub_11D98(v30, v31);
    sub_11F8C();
    sub_11D98(v32, v33);
    goto LABEL_14;
  }

  if (v16)
  {
    goto LABEL_6;
  }

  v55 = v7;
  sub_11FB4();
  v49[1] = v34;
  v50 = v35;
  sub_11D58(v36, v37);
  sub_11D58(0, v15);
  sub_11FB4();
  sub_11D98(v38, v39);
LABEL_8:
  v40 = type metadata accessor for CalendarPreprocessingResult(0);
  v41 = *(v55 + 48);
  v42 = v59;
  sub_11DD8();
  sub_11DD8();
  v43 = v58;
  if (sub_CF2C(v42, 1, v58) == 1)
  {
    if (sub_CF2C(v42 + v41, 1, v43) == 1)
    {
      sub_11E34(v42, &qword_DB958, qword_A6CE0);
LABEL_17:
      v45 = sub_5B6F4(v1 + *(v40 + 24), v0 + *(v40 + 24));
      return v45 & 1;
    }

    goto LABEL_13;
  }

  v44 = v57;
  sub_11DD8();
  if (sub_CF2C(v42 + v41, 1, v43) == 1)
  {
    sub_11E8C(v44, type metadata accessor for ImportantEventInfo);
LABEL_13:
    sub_11E34(v42, &qword_DBB60, &qword_A6E48);
    goto LABEL_14;
  }

  v47 = v56;
  sub_11EE4();
  v48 = sub_119AC(v44, v47);
  sub_11E8C(v47, type metadata accessor for ImportantEventInfo);
  sub_11E8C(v44, type metadata accessor for ImportantEventInfo);
  sub_11E34(v42, &qword_DB958, qword_A6CE0);
  if (v48)
  {
    goto LABEL_17;
  }

LABEL_14:
  v45 = 0;
  return v45 & 1;
}

uint64_t sub_118E0()
{
  sub_11F5C();
  if ((sub_1B724(*v2, *v3) & 1) != 0 && (sub_1B724(*(v1 + 8), *(v0 + 8)) & 1) != 0 && *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32) && ((*(v1 + 40) ^ *(v0 + 40)) & 1) == 0 && ((*(v1 + 41) ^ *(v0 + 41)) & 1) == 0 && ((*(v1 + 42) ^ *(v0 + 42)) & 1) == 0 && ((*(v1 + 43) ^ *(v0 + 43)) & 1) == 0)
  {
    v4 = *(v1 + 44) ^ *(v0 + 44) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

BOOL sub_119AC(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for CalendarEvent(0);
  sub_7A14();
  __chkstk_darwin(v4);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4BF0(&qword_DB960, &unk_A6C00);
  sub_11FC0();
  __chkstk_darwin(v7);
  v9 = (&v21 - v8);
  v10 = sub_4BF0(&qword_DBB68, &unk_A6E50);
  sub_7A14();
  sub_11FC0();
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  if ((sub_1B724(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ImportantEventInfo(0);
  v14 = *(v10 + 48);
  sub_11DD8();
  sub_11DD8();
  sub_11FCC(v13);
  if (v16)
  {
    sub_11FCC(&v13[v14]);
    if (v16)
    {
      sub_11E34(v13, &qword_DB960, &unk_A6C00);
      return 1;
    }

    goto LABEL_11;
  }

  sub_11DD8();
  sub_11FCC(&v13[v14]);
  if (v16)
  {
    sub_11E8C(v9, type metadata accessor for CalendarEvent);
LABEL_11:
    v17 = &qword_DBB68;
    v18 = &unk_A6E50;
    goto LABEL_21;
  }

  sub_11EE4();
  v19 = *v9 == *v6 && v9[1] == v6[1];
  if (v19 || (sub_A4E44()) && (sub_A2E64())
  {
    v20 = sub_A2D64();
    sub_11E8C(v6, type metadata accessor for CalendarEvent);
    sub_11E8C(v9, type metadata accessor for CalendarEvent);
    sub_11E34(v13, &qword_DB960, &unk_A6C00);
    return (v20 & 1) != 0;
  }

  sub_11E8C(v6, type metadata accessor for CalendarEvent);
  sub_11E8C(v9, type metadata accessor for CalendarEvent);
  v17 = &qword_DB960;
  v18 = &unk_A6C00;
LABEL_21:
  sub_11E34(v13, v17, v18);
  return 0;
}

uint64_t sub_11CAC()
{
  sub_11F5C();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_A4E44() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CalendarEvent(0);
  if ((sub_A2E64() & 1) == 0)
  {
    return 0;
  }

  return sub_A2D64();
}

uint64_t sub_11D58(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_11D98(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_11DD8()
{
  sub_11F5C();
  sub_4BF0(v2, v3);
  sub_7A14();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_11E34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_4BF0(a2, a3);
  sub_7A14();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_11E8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_7A14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_11EE4()
{
  sub_11F5C();
  v2(0);
  sub_7A14();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_11FEC()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_E06D8);
  v1 = sub_48A4(v0, qword_E06D8);
  if (qword_DA9E8 != -1)
  {
    swift_once();
  }

  v2 = sub_48A4(v0, qword_E0BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_120B4(uint64_t a1, uint64_t a2)
{
  sub_10760();
  v3 = sub_A4AA4();
  sub_12BD4(v3);
  v5 = v4;

  if (v5)
  {
    a1 = sub_A4684();
  }

  else
  {
  }

  return a1;
}

uint64_t sub_12180@<X0>(uint64_t a1@<X8>)
{
  sub_A3A04();
  sub_591C();
  v64 = v3;
  v65 = v2;
  __chkstk_darwin(v2);
  sub_AA54();
  v63 = v5 - v4;
  v67 = sub_A39A4();
  sub_591C();
  v62 = v6;
  __chkstk_darwin(v7);
  sub_13678();
  v57 = v8;
  __chkstk_darwin(v9);
  v61 = &v53 - v10;
  v66 = sub_A39D4();
  sub_591C();
  v60 = v11;
  __chkstk_darwin(v12);
  sub_13678();
  v56 = v13;
  __chkstk_darwin(v14);
  v59 = &v53 - v15;
  v16 = sub_A3964();
  __chkstk_darwin(v16 - 8);
  sub_AA54();
  v70 = sub_A3A34();
  sub_591C();
  v68 = v17;
  __chkstk_darwin(v18);
  sub_13678();
  v55 = v19;
  __chkstk_darwin(v20);
  v22 = &v53 - v21;
  v23 = sub_4BF0(&qword_DBB80, &qword_A6EA8);
  __chkstk_darwin(v23 - 8);
  v25 = &v53 - v24;
  sub_A3734();
  sub_1C450(0);
  sub_A36A4();
  sub_1C450(0);
  sub_A36F4();
  sub_4BF0(&qword_DBB88, &unk_A6EB0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_A6E60;
  v71 = sub_1C450(1);
  v72 = v27;
  sub_1369C();
  v73._countAndFlagsBits = sub_A4664();
  sub_A46D4(v73);

  v28 = v72;
  *(v26 + 32) = v71;
  *(v26 + 40) = v28;
  v71 = sub_1C450(1);
  v72 = v29;
  sub_1369C();
  v74._countAndFlagsBits = sub_A4664();
  sub_A46D4(v74);

  v30 = v72;
  *(v26 + 48) = v71;
  *(v26 + 56) = v30;
  v71 = sub_1C450(1);
  v72 = v31;
  sub_1369C();
  v75._countAndFlagsBits = sub_A4664();
  sub_A46D4(v75);

  v32 = v72;
  *(v26 + 64) = v71;
  *(v26 + 72) = v32;
  sub_A3704();
  v33 = swift_allocObject();
  v69 = xmmword_A6E70;
  *(v33 + 16) = xmmword_A6E70;
  v71 = sub_1C450(1);
  v72 = v34;
  sub_1369C();
  v76._countAndFlagsBits = sub_A4664();
  sub_A46D4(v76);

  v35 = v72;
  *(v33 + 32) = v71;
  *(v33 + 40) = v35;
  sub_A36E4();
  v36 = swift_allocObject();
  *(v36 + 16) = v69;
  *(v36 + 32) = sub_1C450(1);
  *(v36 + 40) = v37;
  sub_A3714();
  v58 = a1;
  sub_A36C4();
  sub_A3FD4();
  swift_allocObject();
  v38 = sub_A3FC4();
  sub_4BF0(&qword_DBB70, &unk_A6E90);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_A6E80;
  *(v39 + 32) = v38;
  v40 = sub_A3BF4();
  sub_A924(v25, 1, 1, v40);

  v41 = sub_A3B74();

  sub_132A8(v25);
  sub_A3A24();
  sub_A3A54();
  v54 = v22;
  sub_A3A14();
  v42 = v59;
  sub_A39C4();
  v43 = v68;
  (*(v68 + 16))(v55, v22, v70);
  sub_A39B4();
  v44 = v61;
  sub_A3994();
  v55 = v38;
  v45 = v60;
  (*(v60 + 16))(v56, v42, v66);
  sub_A3984();
  v46 = v63;
  sub_A39F4();
  v47 = v62;
  (*(v62 + 16))(v57, v44, v67);
  sub_A39E4();
  sub_4BF0(&qword_DBB98, &qword_A6EC0);
  v57 = v41;
  v48 = v64;
  v49 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = v69;
  v51 = v65;
  (*(v48 + 16))(v50 + v49, v46, v65);
  sub_A36B4();

  (*(v48 + 8))(v46, v51);
  (*(v47 + 8))(v44, v67);
  (*(v45 + 8))(v42, v66);
  return (*(v43 + 8))(v54, v70);
}

id sub_129C8()
{
  v0 = sub_A2ED4();
  sub_591C();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_AA54();
  v6 = v5 - v4;
  v7 = [objc_allocWithZone(SASendCommands) init];
  v8 = [objc_allocWithZone(SAStartDirectActionRequest) init];
  v9 = sub_A45F4();
  sub_1323C(v9, v10, v8, &selRef_setDirectAction_);
  sub_1323C(0xD00000000000002BLL, 0x80000000000AE160, v8, &selRef_setUtteranceFromRequestParameters_);
  v11 = v8;
  sub_A2EC4();
  v12 = sub_A2EB4();
  v14 = v13;
  v15 = *(v2 + 8);
  v15(v6, v0);
  sub_1323C(v12, v14, v11, &selRef_setAceId_);

  sub_4BF0(&qword_DBB70, &unk_A6E90);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_A6E80;
  *(v16 + 32) = v11;
  v17 = v11;
  sub_131B0(v16, v7);
  v18 = v7;
  sub_A2EC4();
  v19 = sub_A2EB4();
  v21 = v20;
  v15(v6, v0);
  sub_1323C(v19, v21, v18, &selRef_setAceId_);

  return v18;
}

uint64_t sub_12BD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32 * v1);

  return v2;
}

uint64_t sub_12C38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4974736163646F70 && a2 == 0xE900000000000064;
  if (v4 || (sub_A4E44() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_A4E44();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_12D10(char a1)
{
  if (a1)
  {
    return 1701669236;
  }

  else
  {
    return 0x4974736163646F70;
  }
}

uint64_t sub_12D44(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = sub_4BF0(&qword_DBBB8, &qword_A6F80);
  sub_591C();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v13[-v10];
  sub_7584(a1, a1[3]);
  sub_13418();
  sub_A4F64();
  v13[15] = 0;
  sub_A4DB4();
  if (!v4)
  {
    v13[14] = 1;
    sub_A4DD4();
  }

  return (*(v8 + 8))(v11, v6);
}

double sub_12EB8(void *a1)
{
  sub_4BF0(&qword_DBBA8, &qword_A6F78);
  sub_591C();
  __chkstk_darwin(v4);
  sub_7584(a1, a1[3]);
  sub_13418();
  sub_A4F54();
  if (!v1)
  {
    sub_A4D34();
    sub_A4D54();
    v2 = v6;
    v7 = sub_1368C();
    v8(v7);
  }

  sub_761C(a1);
  return v2;
}

uint64_t sub_13078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_12C38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_130C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_12D08();
  *a1 = result;
  return result;
}

uint64_t sub_130E8(uint64_t a1)
{
  v2 = sub_13418();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_13124(uint64_t a1)
{
  v2 = sub_13418();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_13160(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_12EB8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

void sub_131B0(uint64_t a1, void *a2)
{
  sub_4BF0(&qword_DBB78, &qword_A6EA0);
  isa = sub_A4754().super.isa;

  [a2 setCommands:isa];
}

void sub_1323C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_A45C4();

  [a3 *a4];
}

uint64_t sub_132A8(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DBB80, &qword_A6EA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_13310(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 sub_13374(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_13388(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_133C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_13418()
{
  result = qword_DBBB0;
  if (!qword_DBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBBB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PodcastLastInvocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x13538);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_13574()
{
  result = qword_DBBC0;
  if (!qword_DBBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBBC0);
  }

  return result;
}

unint64_t sub_135CC()
{
  result = qword_DBBC8;
  if (!qword_DBBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBBC8);
  }

  return result;
}

unint64_t sub_13624()
{
  result = qword_DBBD0;
  if (!qword_DBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBBD0);
  }

  return result;
}

void sub_1369C()
{
  v2._countAndFlagsBits = v0;
  v2._object = 0xE700000000000000;

  sub_A46D4(v2);
}

uint64_t getEnumTagSinglePayload for WeatherConditionCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WeatherConditionCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
        JUMPOUT(0x13808);
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
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_13840(uint64_t a1, uint64_t a2)
{
  v2 = sub_A4E74();

  if (v2 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_13894(char a1)
{
  result = 0x6E61636972727568;
  switch(a1)
  {
    case 1:
      return 0x6F64616E726F74;
    case 2:
      return 0x6C616369706F7274;
    case 3:
      return 0x6472617A7A696C62;
    case 4:
      return 1818845544;
    case 5:
      return 0x737265646E756874;
    case 6:
      return 0x7465656C73;
    case 7:
      v3 = 2003791475;
      goto LABEL_21;
    case 8:
      return 0x53676E69776F6C62;
    case 9:
      v3 = 1852399986;
      goto LABEL_21;
    case 10:
      v3 = 1802464627;
      goto LABEL_21;
    case 11:
      return 1953723748;
    case 12:
      v3 = 1684957559;
      goto LABEL_21;
    case 13:
      v3 = 1734831974;
LABEL_21:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
      break;
    case 14:
      result = 1702519144;
      break;
    case 15:
      result = 0x7964756F6C63;
      break;
    case 16:
      result = 0x6C43796C74726170;
      break;
    case 17:
      result = 0x7261656C63;
      break;
    case 18:
      result = 1684828003;
      break;
    case 19:
      result = 7630696;
      break;
    case 20:
      result = 0x6F6C43646578696DLL;
      break;
    case 21:
      result = 0x656C43646578696DLL;
      break;
    case 22:
      result = 0x6C69617641746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_13B44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_13840(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_13B74@<X0>(unint64_t *a1@<X8>)
{
  result = sub_13894(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_13BA4()
{
  result = qword_DBBE0;
  if (!qword_DBBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBBE0);
  }

  return result;
}

uint64_t sub_13BF8(_OWORD *a1)
{
  v156 = a1;
  v151 = sub_A38E4();
  sub_591C();
  v150 = v1;
  __chkstk_darwin(v2);
  sub_AA54();
  v149 = (v4 - v3);
  v5 = type metadata accessor for MediaPlayerIntent(0);
  __chkstk_darwin(v5 - 8);
  sub_AA54();
  v8 = v7 - v6;
  sub_A4004();
  sub_591C();
  v154 = v10;
  v155 = v9;
  __chkstk_darwin(v9);
  sub_13678();
  v153 = v11;
  v13 = __chkstk_darwin(v12);
  v152 = &v145 - v14;
  __chkstk_darwin(v13);
  v16 = &v145 - v15;
  v148 = sub_A3924();
  sub_591C();
  v147 = v17;
  __chkstk_darwin(v18);
  sub_13678();
  v145 = v19;
  __chkstk_darwin(v20);
  v146 = &v145 - v21;
  v22 = sub_A38F4();
  sub_591C();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_AA54();
  v28 = v27 - v26;
  if (qword_DA9E8 != -1)
  {
    swift_once();
  }

  v29 = sub_A43D4();
  sub_48A4(v29, qword_E0BE8);
  sub_148B0();
  sub_810C4(v30, v31, v32, v33, v34, v35);
  v164 = 0;
  v162 = 0u;
  v163 = 0u;
  (*(v24 + 16))(v28, v156, v22);
  v36 = (*(v24 + 88))(v28, v22);
  if (v36 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v37 = sub_148D0();
    v38(v37);
    v39 = v154;
    v153 = *(v154 + 32);
    v40 = v28;
    v41 = v155;
    v153(v16, v40, v155);
    sub_148F0();
    sub_148E0();
    v156 = (&v162 + 8);
    sub_148B0();
    sub_810C4(v42, v43, v44, v45, v46, v47);
    v48 = v152;
    (*(v39 + 16))(v152, v16, v41);
    v49 = type metadata accessor for DailyBriefingNLv3Intent(0);
    v50 = swift_allocObject();
    v153((v50 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingNLv3Intent_intent), v48, v41);
    (*(v39 + 8))(v16, v41);
    sub_147EC(&v162);
    *v156 = v159;
    *&v162 = v50;
    *(&v163 + 1) = v49;
    v164 = &off_D2208;
    sub_14900();
    goto LABEL_5;
  }

  v156 = v29;
  if (v36 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v151 = v16;
    v156 = (&v162 + 8);
    v60 = sub_148D0();
    v61(v60);
    sub_4BF0(&qword_DBBF0, &qword_A7188);

    v63 = v153;
    v62 = v154;
    v64 = v155;
    v150 = *(v154 + 32);
    (v150)(v153, v28, v155);
    sub_148F0();
    sub_148E0();
    v152 = "onfirmation.swift";
    sub_148B0();
    sub_810C4(v65, v66, v67, v68, v69, v70);
    v71 = v8;
    v72 = *(v62 + 16);
    v72(v8, v63, v64);
    if (sub_869F8())
    {
      sub_148F0();
      sub_148E0();
      sub_148B0();
      sub_810C4(v73, v74, v75, v76, v77, v78);
      sub_14854(v8);
      (*(v62 + 8))(v153, v64);
      goto LABEL_12;
    }

    v149 = "n State from parse";
    v99 = v151;
    v100 = v153;
    v72(v151, v153, v64);
    v101 = type metadata accessor for DailyBriefingNLv3Intent(0);
    v102 = swift_allocObject();
    (v150)(v102 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingNLv3Intent_intent, v99, v64);
    sub_14854(v71);
    (*(v62 + 8))(v100, v64);
    sub_147EC(&v162);
    *v156 = v159;
    *&v162 = v102;
    *(&v163 + 1) = v101;
    v164 = &off_D2208;
    sub_14900();
LABEL_5:
    sub_1477C(&v162, &v157);
    if (v158)
    {
      sub_A814(&v157, &v159);
      v51 = v160;
      v52 = v161;
      sub_7584(&v159, v160);
      v53 = (*(v52 + 64))(v51, v52);
      if (v53 != 3)
      {
        v85 = v53;
        sub_147EC(&v162);
        sub_761C(&v159);
        return v85;
      }

      sub_148C0();
      sub_148B0();
      sub_81094(v54, v55, v56, v57, v58, v59);
      sub_147EC(&v162);
      sub_761C(&v159);
      return 3;
    }

    sub_147EC(&v157);
    sub_148C0();
    sub_148B0();
    sub_81094(v79, v80, v81, v82, v83, v84);
LABEL_12:
    sub_147EC(&v162);
    return 3;
  }

  if (v36 != enum case for Parse.directInvocation(_:))
  {
    if (v36 == enum case for Parse.NLv4IntentOnly(_:))
    {
      v103 = sub_148D0();
      v104(v103);
      sub_14900();
      sub_148C0();
      sub_148B0();
      sub_810C4(v105, v106, v107, v108, v109, v110);
      v111 = type metadata accessor for DailyBriefingNLv4Intent();
      swift_allocObject();
      v112 = swift_unknownObjectRetain();
      v113 = sub_57024(v112);
      if (v113)
      {
        swift_unknownObjectRelease();
        sub_147EC(&v162);
        v114 = &off_D1E18;
      }

      else
      {
        sub_147EC(&v162);
        swift_unknownObjectRelease();
        v111 = 0;
        v114 = 0;
      }

      *&v163 = 0;
      v162 = v113;
      *(&v163 + 1) = v111;
      v164 = v114;
    }

    else if (v36 == enum case for Parse.uso(_:))
    {
      v121 = sub_148D0();
      v122(v121);
      v123 = v147;
      v124 = v146;
      v125 = v148;
      (*(v147 + 32))(v146, v28, v148);
      sub_14900();
      sub_148C0();
      v156 = (&v162 + 8);
      sub_148B0();
      sub_810C4(v126, v127, v128, v129, v130, v131);
      v132 = type metadata accessor for DailyBriefingNLv4Intent();
      v133 = v145;
      (*(v123 + 16))(v145, v124, v125);
      v134 = sub_56DA0(v133);
      v135 = v134;
      if (v134)
      {
        v136 = &off_D1E18;
      }

      else
      {
        v136 = 0;
      }

      if (!v134)
      {
        v132 = 0;
      }

      (*(v123 + 8))(v124, v125);
      sub_147EC(&v162);
      v137 = v156;
      *v156 = 0;
      *(v137 + 1) = 0;
      *&v162 = v135;
      *(&v163 + 1) = v132;
      v164 = v136;
    }

    else
    {
      sub_148F0();
      sub_148E0();
      sub_148B0();
      sub_81094(v138, v139, v140, v141, v142, v143);
      sub_14900();
      v144();
    }

    goto LABEL_5;
  }

  v87 = sub_148D0();
  v88(v87);
  v89 = v150;
  v90 = v149;
  v91 = v151;
  (*(v150 + 32))(v149, v28, v151);
  *&v159 = 0;
  *(&v159 + 1) = 0xE000000000000000;
  sub_A4B54(29);
  sub_14900();
  v165._countAndFlagsBits = v28 - 8;
  v165._object = (v92 | 0x8000000000000000);
  sub_A46D4(v165);
  sub_A4C44();
  sub_810C4(v159, *(&v159 + 1), v28 + 14, 0x80000000000AE280, 0xD000000000000023, 0x80000000000AE2C0);

  v93 = sub_20734();
  if (v93 == 2)
  {
    v94 = v156;
    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    sub_48A4(v94, qword_E0BA0);
    sub_148C0();
    sub_81094(v95, v96, v97, v98, 0xD000000000000023, 0x80000000000AE2C0);
    (*(v89 + 8))(v90, v91);
    goto LABEL_5;
  }

  v115 = v93;
  v116 = v156;
  if (qword_DA9D0 != -1)
  {
    sub_58D8(&qword_DA9D0);
  }

  sub_48A4(v116, qword_E0BA0);
  sub_148C0();
  sub_810C4(v117, v118, v119, v120, 0xD000000000000023, 0x80000000000AE2C0);
  (*(v89 + 8))(v90, v91);
  sub_147EC(&v162);
  return v115 & 1;
}

uint64_t sub_1477C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DBBE8, &qword_A7180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_147EC(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DBBE8, &qword_A7180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_14854(uint64_t a1)
{
  v2 = type metadata accessor for MediaPlayerIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1490C()
{
  sub_A4444();
  sub_14CB8();
  __chkstk_darwin(v1);
  v3 = sub_14C8C(v2, v20);
  v4(v3);
  v5 = sub_14C80();
  LODWORD(result) = v6(v5);
  if (result == enum case for DispatchTimeInterval.seconds(_:))
  {
    v8 = sub_14C70();
    v9(v8);
    result = 1000 * *v0;
    if ((*v0 * 1000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    v10 = sub_14C70();
    v11(v10);
    return *v0;
  }

  if (result == enum case for DispatchTimeInterval.microseconds(_:))
  {
    v12 = sub_14C70();
    v13(v12);
    v14 = *v0;
    v15 = 1000;
    return v14 / v15;
  }

  if (result == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    v16 = sub_14C70();
    v17(v16);
    v14 = *v0;
    v15 = 1000000;
    return v14 / v15;
  }

  if (result != enum case for DispatchTimeInterval.never(_:))
  {
    v18 = sub_14C80();
    v19(v18);
  }

  return 0;
}

double sub_14AB4()
{
  sub_A4444();
  sub_14CB8();
  __chkstk_darwin(v1);
  v3 = sub_14C8C(v2, v22);
  v4(v3);
  v5 = sub_14C80();
  v7 = v6(v5);
  if (v7 == enum case for DispatchTimeInterval.seconds(_:))
  {
    v8 = sub_14C70();
    v9(v8);
    return *v0;
  }

  if (v7 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    v11 = sub_14C70();
    v12(v11);
    v13 = *v0;
    v14 = 0.001;
    return v13 * v14;
  }

  if (v7 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    v15 = sub_14C70();
    v16(v15);
    v13 = *v0;
    v14 = 0.000001;
    return v13 * v14;
  }

  if (v7 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    v17 = sub_14C70();
    v18(v17);
    v13 = *v0;
    v14 = 0.000000001;
    return v13 * v14;
  }

  v10 = 0.0;
  if (v7 != enum case for DispatchTimeInterval.never(_:))
  {
    v20 = sub_14C80();
    v21(v20);
  }

  return v10;
}

uint64_t sub_14CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  v9 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_firstCondition;
  v10 = sub_A42E4();
  v11 = *(*(v10 - 8) + 32);
  v11(v4 + v9, a1, v10);
  v11(v4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_secondCondition, a2, v10);
  *(v4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_firstConditionStart) = a3;
  *(v4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_secondConditionStart) = a4;
  return v4;
}

double sub_14DC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_15ED8();
  v9 = a1 == v7 && a2 == v8;
  if (v9 || (sub_79F8(v7, v8) & 1) != 0)
  {
    v10 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_firstCondition;
LABEL_7:
    v11 = sub_A42E4();
    *(a3 + 24) = v11;
    v12 = sub_76B0(a3);
    v13 = *(*(v11 - 8) + 16);

    v13(v12, v3 + v10, v11);
    return result;
  }

  v15 = sub_15EB4();
  v17 = a1 == v15 && a2 == v16;
  if (v17 || (sub_79F8(v15, v16) & 1) != 0)
  {
    v10 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_secondCondition;
    goto LABEL_7;
  }

  v18 = a1 == 0xD000000000000013 && 0x80000000000ACF90 == a2;
  if (v18 || (sub_79F8(0xD000000000000013, 0x80000000000ACF90) & 1) != 0)
  {
    v19 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_firstConditionStart;
  }

  else
  {
    v21 = a1 == 0xD000000000000014 && 0x80000000000ACFB0 == a2;
    if (!v21 && (sub_79F8(0xD000000000000014, 0x80000000000ACFB0) & 1) == 0)
    {
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v19 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_secondConditionStart;
  }

  v20 = *(v3 + v19);
  *(a3 + 24) = sub_A41E4();
  *a3 = v20;

  return result;
}

unint64_t sub_14F58(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CEF98;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_14FAC(uint64_t a1, uint64_t a2)
{
  result = sub_15ED8();
  switch(v3)
  {
    case 1:
      result = sub_15EB4();
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_15070@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_14F58(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_150A0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_14FAC(*v2, a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_150D4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_14F58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_15108(uint64_t a1)
{
  v2 = sub_15BA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15144(uint64_t a1)
{
  v2 = sub_15BA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_15180()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_firstCondition;
  v2 = sub_A42E4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_secondCondition, v2);

  return v0;
}

uint64_t sub_15238()
{
  sub_15180();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for WeatherExpected(uint64_t a1)
{
  result = qword_DBC20;
  if (!qword_DBC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_152E4(uint64_t a1)
{
  result = sub_A42E4();
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

uint64_t sub_15390(void *a1)
{
  v3 = v1;
  v5 = sub_4BF0(&qword_DBD28, &qword_A72F0);
  sub_591C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_7584(a1, a1[3]);
  sub_15BA0();
  sub_A4F64();
  v11 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_firstCondition;
  LOBYTE(v18) = 0;
  sub_A42E4();
  sub_15E8C();
  sub_15BF4(v12, v13, &protocol conformance descriptor for SpeakableString);
  sub_15E50(v3 + v11);
  if (!v2)
  {
    LOBYTE(v18) = 1;
    sub_15E50(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_secondCondition);
    v18 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_firstConditionStart);
    HIBYTE(v17) = 2;
    sub_A41E4();
    sub_15E74();
    sub_15BF4(v14, v15, &protocol conformance descriptor for DialogCalendar);
    sub_15E50(&v18);
    v18 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_secondConditionStart);
    HIBYTE(v17) = 3;
    sub_15E50(&v18);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_155A0(void *a1)
{
  v2 = swift_allocObject();
  sub_155F0(a1);
  return v2;
}

uint64_t sub_155F0(void *a1)
{
  v4 = sub_A42E4();
  sub_591C();
  v26 = v5;
  v7 = __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v27 = v25 - v10;
  v28 = sub_4BF0(&qword_DBD18, &qword_A72E8);
  sub_591C();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = v25 - v14;
  v30 = v1;
  v31 = a1;
  *(v1 + 16) = 0;
  sub_7584(a1, a1[3]);
  sub_15BA0();
  v29 = v15;
  sub_A4F54();
  if (v2)
  {
    v20 = v30;

    type metadata accessor for WeatherExpected(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25[2] = v12;
    LOBYTE(v33) = 0;
    sub_15E8C();
    sub_15BF4(v16, v17, &protocol conformance descriptor for SpeakableString);
    v18 = v27;
    sub_15EFC();
    sub_A4D74();
    v20 = v30;
    v27 = *(v26 + 32);
    (v27)(v30 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_firstCondition, v18, v4);
    LOBYTE(v33) = 1;
    sub_15EFC();
    sub_A4D74();
    v25[1] = v4;
    (v27)(v20 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_secondCondition, v9, v4);
    sub_A41E4();
    v32 = 2;
    sub_15E74();
    sub_15BF4(v21, v22, &protocol conformance descriptor for DialogCalendar);
    sub_A4D74();
    *(v20 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_firstConditionStart) = v33;
    v32 = 3;
    sub_A4D74();
    v23 = sub_15EA4();
    v24(v23);
    *(v20 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15WeatherExpected_secondConditionStart) = v33;
  }

  sub_761C(v31);
  return v20;
}

uint64_t sub_15AC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_155A0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_15BA0()
{
  result = qword_DBD20;
  if (!qword_DBD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBD20);
  }

  return result;
}

uint64_t sub_15BF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherExpected.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x15D08);
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

unint64_t sub_15D44()
{
  result = qword_DBD30;
  if (!qword_DBD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBD30);
  }

  return result;
}

unint64_t sub_15D9C()
{
  result = qword_DBD38;
  if (!qword_DBD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBD38);
  }

  return result;
}

unint64_t sub_15DF4()
{
  result = qword_DBD40;
  if (!qword_DBD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DBD40);
  }

  return result;
}

uint64_t sub_15E50(uint64_t a1)
{

  return sub_A4DF4();
}

uint64_t sub_15F10()
{
  type metadata accessor for ExecutorCallbackState(0);
  v0 = swift_allocObject();
  result = sub_162B8();
  qword_E0710 = v0;
  return result;
}

void sub_15F50(char a1)
{
  v2 = v1;
  sub_A4B54(44);

  sub_10944();
  v9 = v4;
  if (a1)
  {
    v5._countAndFlagsBits = 1702195828;
  }

  else
  {
    v5._countAndFlagsBits = 0x65736C6166;
  }

  if (a1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v5._object = v6;
  sub_A46D4(v5);

  v11._countAndFlagsBits = 46;
  v11._object = 0xE100000000000000;
  sub_A46D4(v11);
  sub_810AC(0xD000000000000029, v9, 0xD000000000000028, 0x80000000000AE620, 0xD000000000000012, 0x80000000000AE8A0);

  *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21ExecutorCallbackState_didCallback) = a1;
  if (a1)
  {
    v7 = [objc_opt_self() defaultCenter];
    v8 = sub_A45C4();
    [v7 postNotificationName:v8 object:v2];
  }
}

uint64_t sub_16178()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21ExecutorCallbackState_logger;
  sub_A43D4();
  sub_18594();
  (*(v2 + 8))(v0 + v1);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_16214(uint64_t a1)
{
  result = sub_A43D4();
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

uint64_t sub_162B8()
{
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21ExecutorCallbackState_logger;
  if (qword_DA9D0 != -1)
  {
    sub_58D8(&qword_DA9D0);
  }

  v2 = sub_A43D4();
  sub_48A4(v2, qword_E0BA0);
  sub_18594();
  (*(v3 + 16))(v0 + v1);
  *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21ExecutorCallbackState_didCallback) = 0;
  return v0;
}

void sub_16364(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_logger;
  if (qword_DA9D0 != -1)
  {
LABEL_21:
    sub_58D8(&qword_DA9D0);
  }

  v5 = sub_A43D4();
  sub_48A4(v5, qword_E0BA0);
  sub_18594();
  (*(v6 + 16))(v2 + v4);
  v7 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_callbackState;
  if (qword_DA848 != -1)
  {
    swift_once();
  }

  *(v2 + v7) = qword_E0710;
  *(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_nextFlowSpec) = 0;
  v8 = v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_nextFlowSpecIndex;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_flowSpecs) = a1;
  v4 = sub_1BF68();

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    while (1)
    {
      if (v4 == v9)
      {

        *(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_flowSpecStatuses) = v10;
        return;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = sub_A4B74();
        v11 = v12;
      }

      else
      {
        if (v9 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_20;
        }

        v11 = *(a1 + 8 * v9 + 32);
      }

      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if ((*(*v11 + 312))(v12))
      {
        break;
      }

      ++v9;
    }

    v17 = v2;
    sub_4BF0(&qword_DBF90, &qword_A7530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_A6E70;
    *(inited + 32) = v11;
    *(inited + 40) = 0;
    *(inited + 48) = -1;
    v14 = v10[2];
    if (!swift_isUniquelyReferenced_nonNull_native() || (v15 = v10[3] >> 1, v15 <= v14))
    {
      sub_550B0();
      v10 = v16;
      v15 = v16[3] >> 1;
    }

    if (v15 <= v10[2])
    {
      break;
    }

    sub_4BF0(&qword_DBF98, &qword_A7538);
    swift_arrayInitWithCopy();

    ++v10[2];

    ++v9;
    v2 = v17;
  }

  __break(1u);
}

uint64_t sub_16678()
{
  sub_5950();
  sub_AA40();
  sub_AB34();
  sub_810AC(v1, v2, v3, v4, v5, v6);
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_16790;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_16790()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_16894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  sub_4BF0(&qword_DB5B8, &qword_AAD60);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_1693C, 0, 0);
}

uint64_t sub_1693C()
{
  v1 = *(*(v0 + 120) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_flowSpecs);
  result = sub_1BF68();
  v3 = 0;
  v31 = v1 & 0xC000000000000001;
  v32 = result;
  v29 = v1 & 0xFFFFFFFFFFFFFF8;
  v30 = v1;
  while (v32 != v3)
  {
    if (v31)
    {
      result = sub_A4B74();
      v4 = result;
    }

    else
    {
      if (v3 >= *(v29 + 16))
      {
        goto LABEL_21;
      }

      v4 = *(v30 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = *(v0 + 120);
    (*(*v4 + 240))(result);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    sub_7584((v0 + 16), v8);
    sub_AAC4();
    v34._countAndFlagsBits = v10(v8, v9);
    sub_A46D4(v34);

    sub_761C((v0 + 16));
    sub_AA40();
    sub_AB34();
    sub_812F4(v11, v12, v13, v14, v15, v16);

    v17 = sub_A4814();
    sub_A924(v6, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v4;
    v18[5] = v7;
    sub_18380(v6, v5);
    LODWORD(v5) = sub_CF2C(v5, 1, v17);

    v19 = *(v0 + 128);
    if (v5 == 1)
    {
      sub_183F0(*(v0 + 128));
    }

    else
    {
      sub_A4804();
      sub_18594();
      (*(v20 + 8))(v19, v17);
    }

    if (v18[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v21 = sub_A47C4();
      v23 = v22;
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v24 = **(v0 + 112);
    v25 = swift_allocObject();
    *(v25 + 16) = &unk_A7568;
    *(v25 + 24) = v18;
    v26 = v23 | v21;
    if (v23 | v21)
    {
      v26 = v0 + 56;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v21;
      *(v0 + 80) = v23;
    }

    v27 = *(v0 + 136);
    *(v0 + 88) = 1;
    *(v0 + 96) = v26;
    *(v0 + 104) = v24;
    swift_task_create();

    sub_183F0(v27);

    ++v3;
  }

  sub_AA9C();

  return v28();
}

uint64_t sub_16CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  return _swift_task_switch(sub_16D0C, 0, 0);
}

uint64_t sub_16D0C()
{
  v1 = v0[13];
  type metadata accessor for DBSiriKitEventSender();
  inited = swift_initStaticObject();
  v3 = *(*v1 + 240);
  v3();
  v4 = v0[5];
  v5 = v0[6];
  v6 = sub_7584(v0 + 2, v4);
  sub_4DB28(v6, 17, 0, 0, inited, v4, v5);
  sub_761C(v0 + 2);
  v0[15] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_logger;
  sub_A4B54(34);

  sub_10944();
  v3();
  v7 = v0[10];
  v8 = v0[11];
  sub_7584(v0 + 7, v7);
  sub_AAC4();
  v20._countAndFlagsBits = v9(v7, v8);
  sub_A46D4(v20);

  sub_761C(v0 + 7);
  sub_AA40();
  sub_AB34();
  sub_810AC(v10, v11, v12, v13, v14, v15);

  v18 = (*(*v1 + 272) + **(*v1 + 272));
  v16 = swift_task_alloc();
  v0[16] = v16;
  *v16 = v0;
  v16[1] = sub_16FA0;

  return v18();
}

uint64_t sub_16FA0()
{
  sub_5950();
  sub_AAA8();
  *(v1 + 136) = v0;
  *(v1 + 152) = v2;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_17094()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 104);
  *(v0 + 96) = v3;
  type metadata accessor for BaseFlowSpec();

  v15._countAndFlagsBits = sub_A4644();
  sub_A46D4(v15);

  sub_AA40();
  sub_AB34();
  sub_812F4(v4, v5, v6, v7, v8, v9);

  sub_17B7C(v3, v2, v1 & 1);
  v10 = swift_task_alloc();
  *(v0 + 144) = v10;
  *v10 = v0;
  v10[1] = sub_171F8;
  v11 = *(v0 + 136);
  v12 = *(v0 + 104);

  return sub_1733C(v12, v11, v1 & 1);
}

uint64_t sub_171F8()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_172DC()
{
  sub_5950();
  sub_A8A8(*(v0 + 136), *(v0 + 152) & 1);
  sub_AA9C();

  return v1();
}

uint64_t sub_1733C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 112) = a3;
  *(v4 + 64) = a1;
  return sub_58F8();
}

uint64_t sub_17358()
{
  sub_5950();
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_callbackState;
  v0[11] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_callbackState;
  v3 = *(v1 + v2);
  v0[12] = v3;

  return _swift_task_switch(sub_173D8, v3, 0);
}

uint64_t sub_173D8()
{
  sub_5950();
  *(v0 + 113) = *(*(v0 + 96) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21ExecutorCallbackState_didCallback);

  v1 = sub_AA8C();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_17444()
{
  v55 = v0;
  if (*(v0 + 113))
  {
    sub_810AC(0xD000000000000023, 0x80000000000AE7A0, 0xD000000000000028, 0x80000000000AE620, 0xD000000000000017, 0x80000000000AE6D0);
  }

  else
  {
    v1 = *(v0 + 80);
    v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_flowSpecStatuses;
    swift_beginAccess();
    v3 = 0;
    v4 = 0;
    v5 = *(v1 + v2);
    while (*(v5 + 16) != v4)
    {
      if (*(v3 + v5 + 32) == *(v0 + 64))
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v2) = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
LABEL_52:
          sub_6DA04();
          v5 = isUniquelyReferenced_nonNull_native;
          *(v1 + v2) = isUniquelyReferenced_nonNull_native;
        }

        if (v4 >= *(v5 + 16))
        {
          __break(1u);
        }

        else
        {
          v15 = *(v0 + 72);
          v16 = v3 + v5;
          v17 = *(v3 + v5 + 40);
          v18 = *(v0 + 112);
          *(v16 + 5) = v15;
          v19 = v16[48];
          v16[48] = v18 & 1;
          sub_181B8(v15, v18 & 1);
          *(v1 + v2) = v5;
          swift_endAccess();
          isUniquelyReferenced_nonNull_native = sub_181C4(v17, v19);
          v20 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_nextFlowSpecIndex;
          v21 = *(v0 + 80);
          v3 = &qword_E0000;
          if ((v18 & 1) == 0)
          {
            v22 = v21 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_nextFlowSpecIndex;
            if ((*(v21 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_nextFlowSpecIndex + 8) & 1) != 0 || v4 < *v22)
            {
              *(v21 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_nextFlowSpec) = *(v0 + 64);

              *v22 = v4;
              *(v22 + 8) = 0;
              v20 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_nextFlowSpecIndex;
              v21 = *(v0 + 80);
            }
          }

          v23 = (v21 + v20);
          if (*(v23 + 8))
          {
            v24 = v4;
          }

          else
          {
            v24 = *v23;
          }

          if ((v24 & 0x8000000000000000) == 0)
          {
            v13 = v24 + 1;
            if (!__OFADD__(v24, 1))
            {
              sub_953EC(0, v13, *(v1 + v2));
              v28 = (v26 + 24 * v27 + 16);
              v29 = v27 - 1;
              while (1)
              {
                v30 = v29 - (v25 >> 1);
                if (v30 == -1)
                {
                  break;
                }

                if (++v29 >= (v25 >> 1))
                {
                  __break(1u);
                  goto LABEL_52;
                }

                v31 = *v28;
                v28 += 24;
                if (v31 == 255)
                {
                  swift_unknownObjectRelease();
                  v32 = 0;
                  goto LABEL_29;
                }
              }

              v33 = *(v0 + 80);
              swift_unknownObjectRelease();
              v32 = *(v33 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_nextFlowSpec) != 0;
LABEL_29:
              v34 = *(v1 + v2);
              v35 = (v34 + 48);
              v36 = *(v34 + 16) + 1;
              do
              {
                if (!--v36)
                {
                  v50 = 0xE400000000000000;
                  v51 = 1702195828;
                  goto LABEL_35;
                }

                v37 = *v35;
                v35 += 24;
              }

              while (v37 != 255);
              if (!v32)
              {
                v49 = *(v0 + 64);
                sub_18544();
                sub_A4B54(45);

                strcpy(&v54, "The flowSpec (");
                HIBYTE(v54._object) = -18;
                *(v0 + 40) = v49;
                type metadata accessor for BaseFlowSpec();

                v63._countAndFlagsBits = sub_A4644();
                sub_A46D4(v63);

                v64._countAndFlagsBits = 0xD00000000000001DLL;
                v64._object = 0x80000000000AE6B0;
                sub_A46D4(v64);
                countAndFlagsBits = v54._countAndFlagsBits;
                object = v54._object;
                goto LABEL_8;
              }

              v50 = 0xE500000000000000;
              v51 = 0x65736C6166;
LABEL_35:
              v52 = *(v0 + 80);
              v53 = *(v0 + 88);
              sub_18544();
              sub_A4B54(27);

              sub_10944();
              v54._countAndFlagsBits = 0xD000000000000018;
              v54._object = v38;
              if (v30 == -1)
              {
                v39._countAndFlagsBits = 1702195828;
              }

              else
              {
                v39._countAndFlagsBits = 0x65736C6166;
              }

              if (v30 == -1)
              {
                v40 = 0xE400000000000000;
              }

              else
              {
                v40 = 0xE500000000000000;
              }

              v39._object = v40;
              sub_A46D4(v39);

              v58._countAndFlagsBits = 44;
              v58._object = 0xE100000000000000;
              sub_A46D4(v58);
              v42 = v54._countAndFlagsBits;
              v41 = v54._object;
              sub_18544();
              sub_A4B54(43);

              sub_10944();
              v54._countAndFlagsBits = 0xD000000000000028;
              v54._object = v43;
              if (v32)
              {
                v44._countAndFlagsBits = 1702195828;
              }

              else
              {
                v44._countAndFlagsBits = 0x65736C6166;
              }

              if (v32)
              {
                v45 = 0xE400000000000000;
              }

              else
              {
                v45 = 0xE500000000000000;
              }

              v44._object = v45;
              sub_A46D4(v44);

              v59._countAndFlagsBits = 44;
              v59._object = 0xE100000000000000;
              sub_A46D4(v59);

              sub_A46D4(v54);

              sub_18544();
              sub_A4B54(41);

              sub_10944();
              v54._object = v46;
              v60._countAndFlagsBits = v51;
              v60._object = v50;
              sub_A46D4(v60);

              v61._object = 0x80000000000AE760;
              v61._countAndFlagsBits = 0xD000000000000017;
              sub_A46D4(v61);
              v47 = v54._object;
              v54._countAndFlagsBits = v42;
              v54._object = v41;

              v62._countAndFlagsBits = 0xD000000000000010;
              v62._object = v47;
              sub_A46D4(v62);

              sub_810AC(v42, v41, 0xD000000000000028, 0x80000000000AE620, 0xD000000000000017, 0x80000000000AE6D0);

              v48 = *(v52 + v53);
              *(v0 + 104) = v48;

              isUniquelyReferenced_nonNull_native = sub_17B18;
              v13 = v48;
              v14 = 0;

              return _swift_task_switch(isUniquelyReferenced_nonNull_native, v13, v14);
            }

LABEL_55:
            __break(1u);
            return _swift_task_switch(isUniquelyReferenced_nonNull_native, v13, v14);
          }
        }

        __break(1u);
        goto LABEL_55;
      }

      ++v4;
      v3 += 3;
    }

    v6 = *(v0 + 64);
    sub_18544();
    sub_A4B54(22);

    sub_10944();
    v54._countAndFlagsBits = 0xD000000000000014;
    v54._object = v7;
    *(v0 + 40) = v6;
    type metadata accessor for BaseFlowSpec();

    v57._countAndFlagsBits = sub_A4644();
    sub_A46D4(v57);

    countAndFlagsBits = v54._countAndFlagsBits;
    object = v54._object;
LABEL_8:
    sub_810AC(countAndFlagsBits, object, 0xD000000000000028, 0x80000000000AE620, 0xD000000000000017, 0x80000000000AE6D0);
  }

  sub_AA9C();

  return v10();
}

uint64_t sub_17B18()
{
  sub_5950();
  sub_15F50(1);

  sub_AA9C();

  return v0();
}

uint64_t sub_17B7C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    swift_errorRetain();
    sub_4BF0(&qword_DBB90, &qword_A7540);
    v78 = 0;
    v79 = 0xE000000000000000;
    if (swift_dynamicCast())
    {
      sub_A4B54(36);

      sub_10944();
      sub_18574(v5);
      v7 = *(v6 + 240);
      sub_18568();
      v7();
      v8 = v81;
      v9 = v82;
      sub_7584(&v78, v81);
      sub_AAC4();
      v84._countAndFlagsBits = v10(v8, v9);
      sub_A46D4(v84);

      sub_761C(&v78);
      v85._countAndFlagsBits = 0x206874697720;
      v85._object = 0xE600000000000000;
      sub_A46D4(v85);
      swift_getErrorValue();
      v86._countAndFlagsBits = sub_A4EC4();
      sub_A46D4(v86);

      v11 = v83;
      sub_18554();
      sub_185C4();
      sub_82B54(v12, v13, v14, v15, v16, v17);

      type metadata accessor for DBSiriKitEventSender();
      inited = swift_initStaticObject();
      sub_18568();
      v7();
      swift_getErrorValue();
      v19 = v66;
      v20 = sub_A4EC4();
      v28 = sub_185A0(v20, v21, v22, v23, v24, v25, v26, v27, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
      v29 = 57;
    }

    else
    {
      sub_A4B54(29);

      sub_10944();
      sub_18574(v45);
      v47 = *(v46 + 240);
      sub_18568();
      v47();
      v48 = v81;
      v49 = v82;
      sub_7584(&v78, v81);
      sub_AAC4();
      v88._countAndFlagsBits = v50(v48, v49);
      sub_A46D4(v88);

      sub_761C(&v78);
      v11 = v83;
      sub_18554();
      sub_185C4();
      sub_810AC(v51, v52, v53, v54, v55, v56);

      type metadata accessor for DBSiriKitEventSender();
      inited = swift_initStaticObject();
      sub_18568();
      v47();
      swift_getErrorValue();
      v19 = v74;
      v57 = sub_A4EC4();
      v28 = sub_185A0(v57, v58, v59, v60, v61, v62, v63, v64, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
      v29 = 58;
    }

    sub_4DB28(v28, v29, a1, v19, inited, a2, v11);
  }

  else
  {
    v78 = 0;
    v79 = 0xE000000000000000;
    sub_A4B54(31);

    sub_10944();
    sub_18574(v30);
    v32 = *(v31 + 240);
    sub_18568();
    v32();
    v33 = v81;
    v34 = v82;
    sub_7584(&v78, v81);
    sub_AAC4();
    v87._countAndFlagsBits = v35(v33, v34);
    sub_A46D4(v87);

    sub_761C(&v78);
    v36 = v83;
    sub_18554();
    sub_810AC(v37, v36, v38, v39, 0xD00000000000001ELL, v40);

    type metadata accessor for DBSiriKitEventSender();
    v41 = swift_initStaticObject();
    sub_18568();
    v32();
    v42 = v81;
    v43 = v82;
    v44 = sub_7584(&v78, v81);
    sub_4DB28(v44, 1, 0, 0, v41, v42, v43);
  }

  return sub_761C(&v78);
}

uint64_t sub_17FDC()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_logger;
  sub_A43D4();
  sub_18594();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_18078()
{
  sub_17FDC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_180F8(uint64_t a1)
{
  result = sub_A43D4();
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

uint64_t sub_181B8(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_181C4(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_A8A8(result, a2 & 1);
  }

  return result;
}

uint64_t sub_181DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  v6 = sub_18584(v5);
  *v6 = v7;
  v6[1] = sub_A648;

  return sub_16894(a1, a2, v2);
}

uint64_t sub_18280()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_182C8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_18584(v7);
  *v8 = v9;
  v8[1] = sub_18540;

  return sub_16CEC(a1, v3, v4, v6, v5);
}

uint64_t sub_18380(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_183F0(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18458()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_18490(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = swift_task_alloc();
  v5 = sub_18584(v4);
  *v5 = v6;
  v5[1] = sub_A648;

  return sub_6D914(a1, v3);
}