uint64_t sub_10069F310(char a1)
{
  *(*v1 + 59) = a1;

  return _swift_task_switch(sub_10069F410, 0, 0);
}

uint64_t sub_10069F410()
{
  v1 = *(v0 + 59);

  v2 = *(v0 + 8);

  return v2(~v1 & 1);
}

uint64_t sub_10069F49C()
{
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v2 = *(v0[18] + OBJC_IVAR___BKAppAddToWTRDelegate_notifications);
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_10069F6C4;
    v3 = swift_continuation_init();
    v0[17] = sub_1001F1160(&unk_100AD67E0, &qword_1008168C0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100298E88;
    v0[13] = &unk_100A2B8F8;
    v0[14] = v3;
    [v2 requestReauthorizationWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_100AD13A0 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100B22FB0);
    v5 = sub_10079ACC4();
    v6 = sub_1007A29B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "[OptInAlert] Missing price tracker. How did we get here?", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10069F6C4()
{

  return _swift_task_switch(sub_10069F7A4, 0, 0);
}

uint64_t sub_10069F7A4()
{
  if (*(v0 + 168) == 1)
  {
    v4 = (&async function pointer to dispatch thunk of PriceTracker.setNotificationsEnabled(_:) + async function pointer to dispatch thunk of PriceTracker.setNotificationsEnabled(_:));
    v1 = swift_task_alloc();
    *(v0 + 160) = v1;
    *v1 = v0;
    v1[1] = sub_10069F890;

    return v4(1);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_10069F890()
{

  return _swift_task_switch(sub_10069F98C, 0, 0);
}

uint64_t sub_10069F98C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10069F9F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009A34;

  return sub_10069DD8C(v2, v3, v4);
}

uint64_t sub_10069FAA8()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_10069FAE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002812C;

  return sub_10069D9E8(v2, v3, v4);
}

uint64_t sub_10069FD14(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  v3 = sub_10079A7A4();
  v2[41] = v3;
  v2[42] = *(v3 - 8);
  v2[43] = swift_task_alloc();
  v4 = sub_100799B14();
  v2[44] = v4;
  v2[45] = *(v4 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();

  return _swift_task_switch(sub_10069FE48, 0, 0);
}

uint64_t sub_10069FE48()
{
  v1 = v0[39];
  v2 = *(v1 + 16);
  v0[49] = v2;
  if (v2)
  {
    v3 = v0[45];
    v4 = v0[42];
    sub_1003BD8A8(0, v2, 0);
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v21 = *(v3 + 56);
    v22 = v5;
    v23 = v0;
    v19 = (v3 - 8);
    v20 = (v4 + 8);
    do
    {
      v7 = v0[48];
      v9 = v0[43];
      v8 = v0[44];
      v10 = v0[41];
      v22(v7, v6, v8);
      sub_100799AE4();
      v11 = sub_10079A5F4();
      (*v20)(v9, v10);
      (*v19)(v7, v8);
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_1003BD8A8((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      _swiftEmptyArrayStorage[v13 + 4] = v11;
      v6 += v21;
      --v2;
      v0 = v23;
    }

    while (v2);
  }

  swift_getObjectType();
  v14 = sub_1004073B4();
  v15 = objc_allocWithZone(type metadata accessor for AMDBookScorer.Event());
  v16 = sub_1006A09D4(v14, _swiftEmptyArrayStorage);
  v0[50] = v16;

  v17 = swift_task_alloc();
  v0[51] = v17;
  *v17 = v0;
  v17[1] = sub_1006A00FC;

  return sub_100372DAC((v0 + 2), v16);
}

uint64_t sub_1006A00FC()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_1006A0884;
  }

  else
  {
    v2 = sub_1006A0210;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006A0210()
{
  sub_100007484((v0 + 2), (v0 + 6));
  sub_1001F1160(&qword_100AD6710, &unk_10080B890);
  if (!swift_dynamicCast())
  {
    v31 = v0[50];
    sub_1006A0C2C();
    swift_allocError();
    *v32 = 0;
LABEL_21:
    swift_willThrow();

LABEL_22:
    sub_1000074E0(v0 + 2);

    v34 = v0[1];

    return v34();
  }

  v1 = v0[36];
  if (!*(v1 + 16) || (v2 = sub_10000E53C(0x7364496D616461, 0xE700000000000000), (v3 & 1) == 0))
  {
    v31 = v0[50];

    sub_1006A0C2C();
    swift_allocError();
    *v33 = 1;
    goto LABEL_21;
  }

  sub_100007484(*(v1 + 56) + 32 * v2, (v0 + 14));
  sub_1000076D4((v0 + 14), (v0 + 10));
  sub_100007484((v0 + 10), (v0 + 18));
  sub_1001F1160(&unk_100AF23A0, &qword_100812D80);
  if (!swift_dynamicCast())
  {
    v35 = v0[50];

    sub_1006A0C2C();
    swift_allocError();
    *v36 = 2;
    swift_willThrow();

LABEL_30:
    sub_1000074E0(v0 + 10);
    goto LABEL_22;
  }

  v4 = v0[37];
  if (!*(v1 + 16) || (v5 = sub_10000E53C(0x7365726F6373, 0xE600000000000000), (v6 & 1) == 0))
  {
    v37 = v0[50];

    sub_1006A0C2C();
    swift_allocError();
    *v38 = 3;
    swift_willThrow();

    goto LABEL_30;
  }

  sub_100007484(*(v1 + 56) + 32 * v5, (v0 + 26));

  sub_1000076D4((v0 + 26), (v0 + 22));
  sub_100007484((v0 + 22), (v0 + 30));
  sub_1001F1160(&unk_100AD6720, &qword_100812D78);
  if (!swift_dynamicCast())
  {
    v39 = v0[50];

    sub_1006A0C2C();
    swift_allocError();
    *v40 = 4;
    swift_willThrow();

LABEL_29:
    sub_1000074E0(v0 + 22);
    goto LABEL_30;
  }

  v7 = v0[38];
  if (*(v4 + 16) != *(v7 + 16))
  {
    v41 = v0[50];

    sub_1006A0C2C();
    swift_allocError();
    *v42 = 5;
    swift_willThrow();

    goto LABEL_29;
  }

  v8 = v0[49];
  v0[34] = v4;
  v0[35] = v7;
  sub_1001F1160(&qword_100AF23B0, &qword_10083D658);
  sub_1006A0C80();
  v9 = sub_1007A24E4();

  if (v8)
  {
    v10 = v0[45];
    v11 = v0[42];
    v12 = v0[39];
    sub_1003BD14C(0, v0[49], 0);
    v13 = 0;
    v14 = *(v10 + 16);
    v10 += 16;
    v46 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v15 = v12 + v46;
    v45 = *(v10 + 56);
    v47 = (v11 + 8);
    v48 = v14;
    v16 = (v10 - 8);
    v17 = (v10 + 16);
    while (1)
    {
      v18 = v0[43];
      v19 = v0[41];
      v48(v0[46], v15, v0[44]);
      sub_100799AE4();
      v20 = sub_10079A5F4();
      result = (*v47)(v18, v19);
      if (v20 < 0)
      {
        break;
      }

      if (!*(v9 + 16) || (sub_1002F9CDC(v20), (v22 & 1) == 0))
      {
        sub_100799AF4();
      }

      v23 = v0[46];
      v24 = v0[44];
      sub_100799B04();
      (*v16)(v23, v24);
      v26 = _swiftEmptyArrayStorage[2];
      v25 = _swiftEmptyArrayStorage[3];
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        sub_1003BD14C((v25 > 1), v26 + 1, 1);
        v27 = v26 + 1;
      }

      v28 = v0[49];
      v29 = v0[47];
      v30 = v0[44];
      ++v13;
      _swiftEmptyArrayStorage[2] = v27;
      (*v17)(_swiftEmptyArrayStorage + v46 + v26 * v45, v29, v30);
      v15 += v45;
      if (v13 == v28)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_31:
    v43 = v0[50];

    sub_1000074E0(v0 + 22);
    sub_1000074E0(v0 + 10);
    sub_1000074E0(v0 + 2);

    v44 = v0[1];

    return v44(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_1006A0884()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006A093C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1002104D8;

  return sub_10069FD14(a1);
}

id sub_1006A09D4(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtCC5Books13AMDBookScorerP33_CD21F26B56464019284D998852D0D3665Event_data;
  *&v2[OBJC_IVAR____TtCC5Books13AMDBookScorerP33_CD21F26B56464019284D998852D0D3665Event_data] = 0;
  v6 = OBJC_IVAR____TtCC5Books13AMDBookScorerP33_CD21F26B56464019284D998852D0D3665Event_engagementData;
  *&v2[OBJC_IVAR____TtCC5Books13AMDBookScorerP33_CD21F26B56464019284D998852D0D3665Event_engagementData] = 0;
  sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100815060;
  *(inited + 32) = 0x6E6F69746361;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0xD000000000000016;
  *(inited + 56) = 0x80000001008C5580;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x65736163657375;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = 0xD000000000000010;
  *(inited + 104) = 0x80000001008E65C0;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 1684632420;
  *(inited + 136) = 0xE400000000000000;
  v8 = sub_10023A724();
  *(inited + 144) = a1;
  *(inited + 168) = v8;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x80000001008E65E0;
  sub_1001F1160(&qword_100AF23C0, &qword_10083D660);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_10080B690;
  *(v9 + 32) = 0x7364496D616461;
  *(v9 + 40) = 0xE700000000000000;
  *(v9 + 48) = a2;
  v10 = a1;
  v11 = sub_1001F00D8(v9);
  swift_setDeallocating();
  sub_1006A0CE4(v9 + 32);
  *(inited + 216) = sub_1001F1160(&unk_100AF23D0, &qword_10083D670);
  *(inited + 192) = v11;
  v12 = sub_100019158(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
  swift_arrayDestroy();
  sub_10058096C(v12);
  *&v2[v5] = v13;

  sub_10058096C(v12);
  v15 = v14;

  *&v2[v6] = v15;

  v18.receiver = v2;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "init");
}

unint64_t sub_1006A0C2C()
{
  result = qword_100AF2398;
  if (!qword_100AF2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2398);
  }

  return result;
}

unint64_t sub_1006A0C80()
{
  result = qword_100AF23B8;
  if (!qword_100AF23B8)
  {
    sub_1001F1234(&qword_100AF23B0, &qword_10083D658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF23B8);
  }

  return result;
}

uint64_t sub_1006A0CE4(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AF23C8, &qword_10083D668);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1006A0D60()
{
  result = qword_100AF23E0;
  if (!qword_100AF23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF23E0);
  }

  return result;
}

void sub_1006A0DB4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1007A35E4();
    type metadata accessor for BKTapActionView();
    sub_1006C10D4(&unk_100AF2660, type metadata accessor for BKTapActionView, &protocol conformance descriptor for NSObject);
    sub_1007A2864();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_1007A3654())
        {
          goto LABEL_20;
        }

        type metadata accessor for BKTapActionView();
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      sub_10004DC54(v20);
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_20:
      sub_10004DC54(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1006A1008@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1006C56B4(v12, v10, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1006C571C(v10, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
      }

      if (v14)
      {
        break;
      }

      sub_1006C571C(v10, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1006C5144(v10, v18, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_1006A11FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v74 = sub_1007A1C14();
  v5 = *(v74 - 8);
  __chkstk_darwin(v74);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A0124();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v80 = &v65 - v13;
  v14 = sub_1001F1160(&unk_100AF2970, &qword_100812CD0);
  __chkstk_darwin(v14 - 8);
  v72 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v78 = &v65 - v17;
  __chkstk_darwin(v18);
  v20 = &v65 - v19;
  __chkstk_darwin(v21);
  v23 = &v65 - v22;
  v24 = sub_1001F1160(&qword_100ADFEE0, &qword_1008201F0);
  __chkstk_darwin(v24 - 8);
  v75 = (&v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v28 = (&v65 - v27);
  v79 = a1;
  sub_1007A0154();
  sub_1000077D8(v23, v20, &unk_100AF2970, &qword_100812CD0);
  v71 = *(v9 + 48);
  v29 = v71(v20, 1, v8);
  v76 = a2;
  v68 = v7;
  v69 = v9;
  v73 = v5;
  v67 = v11;
  v70 = v8;
  if (v29 == 1)
  {
    sub_100007840(v23, &unk_100AF2970, &qword_100812CD0);
    v30 = type metadata accessor for HistoryModel.Entry(0);
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = v28;
    v32 = v80;
    v33 = v8;
  }

  else
  {
    v34 = v7;
    v35 = v80;
    (*(v9 + 32))();
    (*(v9 + 16))(v11, v35, v8);

    sub_1007A0114();
    swift_getObjectType();
    v36 = sub_1007A0A84();
    v66 = v37;
    (*(v73 + 8))(v34, v74);
    v38 = type metadata accessor for HistoryModel.Entry(0);
    sub_1007A00F4();

    v39 = *(v9 + 8);
    v40 = v11;
    v41 = v70;
    v39(v40, v70);
    v42 = v66;
    *v28 = v36;
    v28[1] = v42;
    v43 = v80;
    v39(v80, v41);
    sub_100007840(v23, &unk_100AF2970, &qword_100812CD0);
    (*(*(v38 - 8) + 56))(v28, 0, 1, v38);
    v31 = v28;
    v32 = v43;
    v33 = v41;
  }

  v44 = v78;
  sub_1007A0144();
  v45 = v72;
  sub_1000077D8(v44, v72, &unk_100AF2970, &qword_100812CD0);
  v46 = v71(v45, 1, v33);
  v47 = v75;
  if (v46 == 1)
  {

    v48 = sub_1007A0164();
    (*(*(v48 - 8) + 8))(v79, v48);
    sub_100007840(v44, &unk_100AF2970, &qword_100812CD0);
    v49 = type metadata accessor for HistoryModel.Entry(0);
    (*(*(v49 - 8) + 56))(v47, 1, 1, v49);
  }

  else
  {
    v50 = v69;
    (*(v69 + 32))(v32, v45, v33);
    v51 = v67;
    (*(v50 + 16))(v67, v32, v33);
    v52 = v31;
    v53 = v68;
    sub_1007A0114();
    swift_getObjectType();
    v54 = sub_1007A0A84();
    v56 = v55;
    v57 = v53;
    v31 = v52;
    (*(v73 + 8))(v57, v74);
    v58 = type metadata accessor for HistoryModel.Entry(0);
    sub_1007A00F4();

    v59 = *(v50 + 8);
    v60 = v70;
    v59(v51, v70);
    *v47 = v54;
    v47[1] = v56;
    v61 = sub_1007A0164();
    (*(*(v61 - 8) + 8))(v79, v61);
    v59(v80, v60);
    sub_100007840(v78, &unk_100AF2970, &qword_100812CD0);
    (*(*(v58 - 8) + 56))(v47, 0, 1, v58);
  }

  v62 = v77;
  sub_10020B3C8(v31, v77, &qword_100ADFEE0, &qword_1008201F0);
  v63 = type metadata accessor for HistoryModel(0);
  return sub_10020B3C8(v47, v62 + *(v63 + 20), &qword_100ADFEE0, &qword_1008201F0);
}

uint64_t sub_1006A1960()
{
  v0 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v7 - v1);
  if (!swift_weakLoadStrong())
  {
    v6 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    return sub_100007840(v2, &qword_100ADB1C0, &qword_10082A4E0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v2);

  v3 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    return sub_100007840(v2, &qword_100ADB1C0, &qword_10082A4E0);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1006C571C(v2, type metadata accessor for OverlayViewModel.Overlay);
  if (EnumCaseMultiPayload == 4)
  {
    return sub_1006AC830();
  }

  return result;
}

uint64_t sub_1006A1B38(double a1)
{
  v2 = sub_1007A0404();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (sub_1007A1354())
  {
    sub_1007A0364();
  }

  else
  {
    sub_1006ABE30(a1);
  }

  sub_1004A9D34(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1006A1C5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 152);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_1006A1D0C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A04();

  return result;
}

uint64_t sub_1006A1DDC@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

double sub_1006A1E88(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A04();

  return result;
}

id sub_1006A1F54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  v4 = *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__backgroundColor);
  *a2 = v4;

  return v4;
}

uint64_t sub_1006A2040@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  v4 = OBJC_IVAR____TtC5Books19BookReaderViewModel__themeColorScheme;
  swift_beginAccess();
  v5 = sub_10079BC44();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1006A2138(uint64_t a1)
{
  v2 = sub_10079BC44();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_100579640(v5);
}

void sub_1006A2204(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  *a2 = *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType);
}

uint64_t sub_1006A22DC(void *a1)
{
  v2 = sub_1001F1160(&unk_100AD5A90, &unk_1008112F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_1007A1C14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004AE51C(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007840(v4, &unk_100AD5A90, &unk_1008112F0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    swift_getObjectType();
    v10 = sub_1007A0A84();
    (*(v6 + 8))(v8, v5);
    return v10;
  }
}

uint64_t sub_1006A24A0(void *a1)
{
  v2 = sub_1001F1160(&unk_100AD5A90, &unk_1008112F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_1007A1C14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004AE51C(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007840(v4, &unk_100AD5A90, &unk_1008112F0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    swift_getObjectType();
    v10 = sub_1007A0A24();
    (*(v6 + 8))(v8, v5);
    return v10;
  }
}

uint64_t sub_1006A2664()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AF23F0);
  sub_100008B98(v0, qword_100AF23F0);
  type metadata accessor for BookReaderPresenter(0);
  sub_1001F1160(&qword_100AF25B0, &qword_10083DD18);
  sub_1007A22E4();
  return sub_10079ACD4();
}

double sub_1006A2708(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_contentSelectionInteractor);
  v2 = a1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_router;
  swift_unknownObjectWeakLoadStrong();
  *(v1 + 24) = *(v2 + 8);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1006A27B4(uint64_t a1)
{
  v3 = sub_1007A1D04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1001F1160(&qword_100AF2650, &qword_10083DDF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v11 = &v17 - v10;
  sub_1000077D8(a1, &v17 - v10, &qword_100AF2650, &qword_10083DDF0);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  sub_10020B3C8(v11, v13 + v12, &qword_100AF2650, &qword_10083DDF0);
  *(v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v14 = v1;
  *v6 = sub_1007A2D74();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v15 = sub_1007A1D34();
  result = (*(v4 + 8))(v6, v3);
  if (v15)
  {

    sub_1006C4AA4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006A29EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001F1160(&qword_100AF2650, &qword_10083DDF0);
  __chkstk_darwin(v3 - 8);
  v5 = v14 - v4;
  v6 = sub_10079FFA4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077D8(a1, v5, &qword_100AF2650, &qword_10083DDF0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_100007840(v5, &qword_100AF2650, &qword_10083DDF0);
  }

  (*(v7 + 32))(v9, v5, v6);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_getKeyPath();
    v14[1] = v12;
    sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A14();

    v13 = swift_weakLoadStrong();

    if (v13)
    {
      sub_10079F014();
    }
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1006A2C38()
{
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  swift_getKeyPath();
  sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  Strong = swift_weakLoadStrong();

  return Strong;
}

void sub_1006A2D08(void *a1)
{
  v3 = type metadata accessor for State(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC5Books19BookReaderPresenter_presentedExpandedContentViewController;
  v7 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_presentedExpandedContentViewController);
  *(v1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_presentedExpandedContentViewController) = a1;
  v8 = a1;

  v9 = *(*(v1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
  v10 = *(v1 + v6) != 0;
  v11 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  swift_beginAccess();
  sub_1006C56B4(v9 + v11, v5, type metadata accessor for State);
  v5[6] = v10;

  sub_100444C5C(v5);
}

double sub_1006A2E1C(uint64_t a1)
{
  v265 = a1;
  v234 = sub_1001F1160(&qword_100AE88B0, &unk_10083DFF0);
  v233 = *(v234 - 8);
  __chkstk_darwin(v234);
  v232 = &v160 - v2;
  v237 = sub_1001F1160(&qword_100AF26D0, &qword_10082E800);
  v236 = *(v237 - 8);
  __chkstk_darwin(v237);
  v235 = &v160 - v3;
  v228 = sub_1001F1160(&qword_100AF26D8, &qword_10083E000);
  v227 = *(v228 - 8);
  __chkstk_darwin(v228);
  v226 = &v160 - v4;
  v231 = sub_1001F1160(&qword_100AF26E0, &qword_10083E008);
  v230 = *(v231 - 8);
  __chkstk_darwin(v231);
  v229 = &v160 - v5;
  v220 = sub_1001F1160(&qword_100AF26E8, &qword_10083E010);
  __chkstk_darwin(v220);
  v218 = &v160 - v6;
  v222 = sub_1001F1160(&qword_100AF26F0, &qword_10083E018);
  v221 = *(v222 - 8);
  __chkstk_darwin(v222);
  v219 = &v160 - v7;
  v225 = sub_1001F1160(&qword_100AF26F8, &unk_10083E020);
  v224 = *(v225 - 8);
  __chkstk_darwin(v225);
  v223 = &v160 - v8;
  v214 = sub_1001F1160(&qword_100AF2700, &qword_1008261F0);
  __chkstk_darwin(v214);
  v211 = &v160 - v9;
  v210 = sub_1001F1160(&qword_100AF2708, &qword_10083E030);
  __chkstk_darwin(v210);
  v247 = &v160 - v10;
  v213 = sub_1001F1160(&qword_100AF2710, &qword_10083E038);
  v212 = *(v213 - 8);
  __chkstk_darwin(v213);
  v209 = &v160 - v11;
  v217 = sub_1001F1160(&qword_100AF2718, &qword_10083E040);
  v216 = *(v217 - 8);
  __chkstk_darwin(v217);
  v215 = &v160 - v12;
  v208 = sub_1001F1160(&qword_100AF2720, &qword_10083E048);
  v207 = *(v208 - 8);
  __chkstk_darwin(v208);
  v206 = &v160 - v13;
  v14 = sub_1001F1160(&unk_100AE6AA0, &unk_10082AB70);
  v262 = *(v14 - 8);
  v263 = v14;
  __chkstk_darwin(v14);
  v250 = &v160 - v15;
  v168 = sub_1001F1160(&qword_100AE1540, &qword_100822600);
  v166 = *(v168 - 8);
  __chkstk_darwin(v168);
  v164 = &v160 - v16;
  v169 = sub_1001F1160(&qword_100AF2728, &qword_10083E050);
  v167 = *(v169 - 8);
  __chkstk_darwin(v169);
  v165 = &v160 - v17;
  v172 = sub_1001F1160(&qword_100AF2730, &qword_10083E058);
  v171 = *(v172 - 8);
  __chkstk_darwin(v172);
  v170 = &v160 - v18;
  v246 = sub_1001F1160(&qword_100AF2738, &qword_10083E060);
  v257 = *(v246 - 8);
  __chkstk_darwin(v246);
  v245 = &v160 - v19;
  v249 = sub_1001F1160(&unk_100AF2740, &unk_10083E068);
  v205 = *(v249 - 8);
  __chkstk_darwin(v249);
  v248 = &v160 - v20;
  v244 = sub_1001F1160(&unk_100AEA120, &qword_100831170);
  v256 = *(v244 - 8);
  __chkstk_darwin(v244);
  v243 = &v160 - v21;
  v204 = sub_1001F1160(&qword_100AF2750, &qword_10083E078);
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v202 = &v160 - v22;
  v163 = sub_1001F1160(&qword_100AF2758, &qword_10083E080);
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v161 = &v160 - v23;
  v198 = sub_1001F1160(&qword_100AF2760, &qword_10083E088);
  v199 = *(v198 - 8);
  __chkstk_darwin(v198);
  v196 = &v160 - v24;
  v200 = sub_1001F1160(&qword_100AF2768, &qword_10083E090);
  v201 = *(v200 - 8);
  __chkstk_darwin(v200);
  v197 = &v160 - v25;
  v190 = sub_1001F1160(&qword_100AF2770, &qword_10083E098);
  v191 = *(v190 - 8);
  __chkstk_darwin(v190);
  v188 = &v160 - v26;
  v192 = sub_1001F1160(&qword_100AF2778, &qword_10083E0A0);
  v193 = *(v192 - 8);
  __chkstk_darwin(v192);
  v187 = &v160 - v27;
  v194 = sub_1001F1160(&unk_100AF2780, &unk_10083E0A8);
  v195 = *(v194 - 8);
  __chkstk_darwin(v194);
  v189 = &v160 - v28;
  v242 = sub_1001F1160(&unk_100AE1530, &unk_10081F270);
  v255 = *(v242 - 8);
  __chkstk_darwin(v242);
  v241 = &v160 - v29;
  v182 = sub_1001F1160(&qword_100AF2790, &qword_10083E0B8);
  v183 = *(v182 - 8);
  __chkstk_darwin(v182);
  v180 = &v160 - v30;
  v184 = sub_1001F1160(&qword_100AF2798, &qword_10083E0C0);
  v185 = *(v184 - 1);
  __chkstk_darwin(v184);
  v181 = &v160 - v31;
  v179 = sub_1001F1160(&unk_100AF27A0, &unk_10083E0C8);
  v186 = *(v179 - 8);
  __chkstk_darwin(v179);
  v178 = &v160 - v32;
  v176 = sub_1001F1160(&qword_100ADD120, &unk_10081C750);
  v177 = *(v176 - 8);
  __chkstk_darwin(v176);
  v175 = &v160 - v33;
  v34 = sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  __chkstk_darwin(v34 - 8);
  v36 = &v160 - v35;
  v37 = sub_1001F1160(&qword_100AF27B0, &qword_10083E0D8);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v160 - v39;
  v41 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_readingSettingsProvider + 8);
  v174 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_readingSettingsProvider);
  v240 = v41;
  ObjectType = swift_getObjectType();
  v267 = sub_1007A1394();
  v42 = sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v43 = sub_1007A2D74();
  v268 = v43;
  v260 = sub_1007A2D24();
  v44 = *(v260 - 1);
  v254 = *(v44 + 56);
  v261 = v44 + 56;
  (v254)(v36, 1, 1, v260);
  sub_1001F1160(&unk_100AEB8B0, &unk_10083DD40);
  v252 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100005920(&unk_100AF25D0, &unk_100AEB8B0, &unk_10083DD40, &protocol conformance descriptor for AnyPublisher<A, B>);
  v253 = sub_100017E1C();
  sub_10079BAB4();
  v45 = v36;
  sub_100007840(v36, &qword_100AD7EB0, &qword_10080EFD0);

  swift_allocObject();
  v46 = v173;
  swift_unknownObjectWeakInit();
  v259 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100005920(&qword_100AF27B8, &qword_100AF27B0, &qword_10083E0D8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  sub_10079BB04();

  (*(v38 + 8))(v40, v37);
  v47 = OBJC_IVAR____TtC5Books19BookReaderPresenter_subscribers;
  swift_beginAccess();
  v264 = sub_1001F1160(&unk_100AF27C0, &unk_10083E0E0);
  v266 = sub_100005920(&qword_100AEBCC0, &unk_100AF27C0, &unk_10083E0E0, &protocol conformance descriptor for [A]);
  sub_10079B864();
  swift_endAccess();

  v267 = sub_1007A13E4();
  v48 = v42;
  v49 = sub_1007A2D74();
  v268 = v49;
  v251 = v45;
  v50 = v254;
  (v254)(v45, 1, 1, v260);
  v51 = sub_1001F1160(&unk_100AF27D0, &qword_10081ED80);
  v52 = sub_100005920(&qword_100AEA160, &unk_100AF27D0, &qword_10081ED80, v252);
  v53 = v175;
  v240 = v51;
  ObjectType = v52;
  sub_10079BAB4();
  sub_100007840(v45, &qword_100AD7EB0, &qword_10080EFD0);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AF27E0, &qword_100ADD120, &unk_10081C750, v259);
  v54 = v176;
  sub_10079BB04();

  (*(v177 + 8))(v53, v54);
  v258 = v47;
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v267 = *(*(v46 + OBJC_IVAR____TtC5Books19BookReaderPresenter_bookReaderLayoutController) + 48);
  sub_1001F1160(&qword_100ADECD8, &qword_10082E970);
  sub_100005920(&unk_100AF27F0, &qword_100ADECD8, &qword_10082E970, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v267 = sub_10079BA14();
  v238 = v48;
  v55 = sub_1007A2D74();
  v268 = v55;
  v56 = v251;
  v50(v251, 1, 1, v260);
  sub_1001F1160(&qword_100AE8998, &qword_10082E9A0);
  sub_100005920(&qword_100AF2800, &qword_100AE8998, &qword_10082E9A0, v252);
  v57 = v178;
  sub_10079BAB4();
  sub_100007840(v56, &qword_100AD7EB0, &qword_10080EFD0);

  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = swift_allocObject();
  v60 = v265;
  *(v59 + 16) = v58;
  *(v59 + 24) = v60;
  sub_100005920(&qword_100AF2808, &unk_100AF27A0, &unk_10083E0C8, v259);

  v61 = v179;
  sub_10079BB04();

  (*(v186 + 8))(v57, v61);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  swift_getObjectType();
  v62 = sub_1007A0574();
  v63 = *(v46 + OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor);
  v267 = v62;
  type metadata accessor for BookReaderInteractor(0);
  v186 = v63;
  v268 = sub_1004AA40C();
  sub_1001F1160(&qword_100AF2810, &unk_10083E0F0);
  sub_1001F1160(&unk_100AEA1E0, &qword_10083C8D0);
  v64 = v252;
  sub_100005920(&qword_100AF2818, &qword_100AF2810, &unk_10083E0F0, v252);
  sub_100005920(&qword_100AF2590, &unk_100AEA1E0, &qword_10083C8D0, v64);
  v65 = v180;
  sub_10079B7A4();
  v66 = sub_1007A2D74();
  v267 = v66;
  v67 = v251;
  (v254)(v251, 1, 1, v260);
  sub_100005920(&qword_100AF2820, &qword_100AF2790, &qword_10083E0B8, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v68 = v181;
  v69 = v182;
  sub_10079BAB4();
  sub_100007840(v67, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v183 + 8))(v65, v69);
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = swift_allocObject();
  *(v71 + 16) = sub_1006C5290;
  *(v71 + 24) = v70;
  sub_100005920(&qword_100AF2828, &qword_100AF2798, &qword_10083E0C0, v259);
  v72 = v184;
  sub_10079BB04();

  (*(v185 + 8))(v68, v72);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  swift_beginAccess();
  v73 = sub_1001F1160(&qword_100AD50E0, &qword_10080FBE0);
  v74 = v241;
  v252 = v73;
  sub_10079B974();
  swift_endAccess();
  v75 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = swift_allocObject();
  v77 = v265;
  *(v76 + 16) = v265;
  *(v76 + 24) = v75;
  v78 = sub_100005920(&qword_100AD82D0, &unk_100AE1530, &unk_10081F270, &protocol conformance descriptor for Published<A>.Publisher);

  v79 = v242;
  v185 = v78;
  sub_10079BB04();

  v80 = v255[1];
  ++v255;
  v184 = v80;
  (v80)(v74, v79);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  swift_getKeyPath();
  v267 = v77;
  sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  swift_beginAccess();

  sub_1001F1160(&qword_100AF2830, &qword_10081CB08);
  v81 = v188;
  sub_10079B974();
  swift_endAccess();

  sub_100005920(&qword_100AF2838, &qword_100AF2770, &qword_10083E098, &protocol conformance descriptor for Published<A>.Publisher);
  v82 = v187;
  v83 = v190;
  sub_10079BAD4();
  (*(v191 + 8))(v81, v83);
  sub_100005920(&qword_100AF2840, &qword_100AF2778, &qword_10083E0A0, &protocol conformance descriptor for Publishers.Drop<A>);
  sub_1006C10D4(&qword_100AF2848, type metadata accessor for HistoryModel, &unk_10082023C);
  v84 = v189;
  v85 = v192;
  sub_10079BAF4();
  (*(v193 + 8))(v82, v85);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&qword_100AF2850, &unk_100AF2780, &unk_10083E0A8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v86 = v194;
  sub_10079BB04();

  (*(v195 + 8))(v84, v86);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v87 = v196;
  sub_1005C5BEC();
  v88 = sub_1007A2D74();
  v267 = v88;
  v89 = v251;
  (v254)(v251, 1, 1, v260);
  v90 = v259;
  sub_100005920(&qword_100AF2858, &qword_100AF2760, &qword_10083E088, v259);
  v91 = v197;
  v92 = v198;
  sub_10079BAB4();
  sub_100007840(v89, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v199 + 8))(v87, v92);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AF2860, &qword_100AF2768, &qword_10083E090, v90);
  v93 = v200;
  sub_10079BB04();

  (*(v201 + 8))(v91, v93);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  if (sub_1006A2C38())
  {
    v94 = v161;
    sub_10079F044();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_getOpaqueTypeConformance2();
    v95 = v163;
    sub_10079BB04();

    (*(v162 + 8))(v94, v95);
    swift_beginAccess();
    sub_10079B864();
    swift_endAccess();
  }

  v254 = *(v265 + 112);
  v267 = *(v254 + 36);
  v261 = sub_1001F1160(&unk_100AD1E40, &unk_10080B800);
  v260 = sub_100005920(&qword_100AF2870, &unk_100AD1E40, &unk_10080B800, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v267 = sub_10079BA14();
  v96 = v202;
  sub_10079BAF4();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&qword_100AF2878, &qword_100AF2750, &qword_10083E078, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v97 = v204;
  sub_10079BB04();

  (*(v203 + 8))(v96, v97);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v267 = sub_1004A8E10();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v98 = v265;
  v99 = *(v265 + OBJC_IVAR____TtC5Books19BookReaderViewModel_overlayViewModel) + OBJC_IVAR____TtC5Books16OverlayViewModel__overlay;
  swift_beginAccess();
  v100 = sub_1001F1160(&unk_100AF2880, qword_1008275D0);
  v101 = v243;
  v204 = v100;
  v238 = v99;
  sub_10079B974();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v102 = sub_100005920(&unk_100AEA130, &unk_100AEA120, &qword_100831170, &protocol conformance descriptor for Published<A>.Publisher);
  v103 = v244;
  v203 = v102;
  sub_10079BB04();

  v104 = v256[1];
  ++v256;
  v202 = v104;
  (v104)(v101, v103);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v105 = *(v98 + 168);
  swift_beginAccess();
  v106 = v241;
  sub_10079B974();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v107 = v242;
  sub_10079BB04();

  (v184)(v106, v107);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v253 = v105;
  swift_beginAccess();
  v108 = sub_1001F1160(&qword_100AF2890, &unk_10083E130);
  v109 = v245;
  v251 = v108;
  sub_10079B974();
  swift_endAccess();
  v110 = sub_100005920(&qword_100AF2898, &qword_100AF2738, &qword_10083E060, &protocol conformance descriptor for Published<A>.Publisher);
  v111 = v248;
  v112 = v246;
  v242 = v110;
  sub_10079BA74();
  v113 = *(v257 + 8);
  v257 += 8;
  v241 = v113;
  (v113)(v109, v112);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v114 = sub_100005920(&qword_100AF28A0, &unk_100AF2740, &unk_10083E068, &protocol conformance descriptor for Publishers.Map<A, B>);
  v115 = v249;
  v252 = v114;
  sub_10079BB04();

  (*(v205 + 8))(v111, v115);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v116 = v265;
  v267 = *(v265 + OBJC_IVAR____TtC5Books19BookReaderViewModel_showThemeCustomizationTipSubject);
  v267 = sub_10079BA14();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  if (*(v116 + 176))
  {
    swift_beginAccess();

    sub_1001F1160(&unk_100AE1570, &qword_10083A680);
    v117 = v164;
    sub_10079B974();
    swift_endAccess();

    sub_100005920(&qword_100AF2950, &qword_100AE1540, &qword_100822600, &protocol conformance descriptor for Published<A>.Publisher);
    v118 = v165;
    v119 = v168;
    sub_10079BA74();
    (*(v166 + 8))(v117, v119);
    sub_100005920(&qword_100AF2958, &qword_100AF2728, &qword_10083E050, &protocol conformance descriptor for Publishers.Map<A, B>);
    v120 = v170;
    v121 = v169;
    sub_10079BAF4();
    (*(v167 + 8))(v118, v121);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100005920(&unk_100AF2960, &qword_100AF2730, &qword_10083E058, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    v122 = v172;
    sub_10079BB04();

    (*(v171 + 8))(v120, v122);
    swift_beginAccess();
    sub_10079B864();
    swift_endAccess();
  }

  v265 = *(v46 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager);
  swift_beginAccess();

  v261 = sub_1001F1160(&qword_100AE3CD0, &qword_1008261E8);
  v123 = v250;
  sub_10079B974();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v259 = sub_100005920(&unk_100AE6AB0, &unk_100AE6AA0, &unk_10082AB70, &protocol conformance descriptor for Published<A>.Publisher);
  v124 = v263;
  sub_10079BB04();

  v125 = v262 + 8;
  v260 = *(v262 + 8);
  v260(v123, v124);
  v262 = v125;
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  swift_beginAccess();
  v126 = v243;
  sub_10079B974();
  swift_endAccess();
  v127 = v206;
  v128 = v244;
  sub_10079BA54();
  (v202)(v126, v128);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v256 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  sub_100005920(&qword_100AF28A8, &qword_100AF2720, &qword_10083E048, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v129 = v208;
  sub_10079BB04();

  (*(v207 + 8))(v127, v129);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  swift_beginAccess();

  sub_10079B974();
  swift_endAccess();

  swift_getKeyPath();
  v130 = v263;
  sub_10079BA64();

  v260(v123, v130);
  sub_1007A2B54();
  v131 = v254;
  v267 = *(v254 + 25);
  sub_1001F1160(&unk_100AD1E30, &unk_10080B7F0);
  sub_100005920(&qword_100ADC868, &unk_100AD1E30, &unk_10080B7F0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v267 = sub_10079BA14();
  v268 = v131[26];
  sub_1001F1160(&unk_100AF28B0, &qword_10082E7D0);
  sub_100005920(&qword_100ADC878, &unk_100AF28B0, &qword_10082E7D0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v268 = sub_10079BA14();
  sub_1001F1160(&qword_100AF28C0, &unk_10082E900);
  sub_1001F1160(&qword_100AF28C8, &qword_10083E168);
  v255 = &protocol conformance descriptor for Publishers.MapKeyPath<A, B>;
  sub_100005920(&unk_100AF28D0, &qword_100AF2708, &qword_10083E030, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  swift_getOpaqueTypeConformance2();
  v254 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100005920(&qword_100AE8950, &qword_100AF28C0, &unk_10082E900, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100005920(&qword_100AF28E0, &qword_100AF28C8, &qword_10083E168, &protocol conformance descriptor for AnyPublisher<A, B>);
  v132 = v209;
  sub_10079B7C4();
  sub_100005920(&qword_100AF28E8, &qword_100AF2710, &qword_10083E038, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);
  v133 = v215;
  v134 = v213;
  sub_10079BA54();
  (*(v212 + 8))(v132, v134);
  v135 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v136 = swift_allocObject();
  *(v136 + 16) = sub_1006C5330;
  *(v136 + 24) = v135;
  sub_100005920(&unk_100AF28F0, &qword_100AF2718, &qword_10083E040, v256);
  v137 = v217;
  sub_10079BB04();

  (*(v216 + 8))(v133, v137);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  swift_beginAccess();
  v138 = v245;
  sub_10079B974();
  swift_endAccess();
  v139 = v246;
  sub_10079BA74();
  (v241)(v138, v139);
  swift_getObjectType();
  v267 = sub_10079F504();
  swift_getKeyPath();
  sub_1001F1160(&unk_100AEA1A0, &unk_10082E830);
  sub_100005920(&qword_100AF2900, &unk_100AEA1A0, &unk_10082E830, v254);
  sub_10079BA64();

  v140 = v255;
  sub_100005920(&qword_100AF2908, &qword_100AF26E8, &qword_10083E010, v255);
  v141 = v219;
  sub_10079B7A4();
  sub_100005920(&qword_100AF2910, &qword_100AF26F0, &qword_10083E018, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v142 = v223;
  v143 = v222;
  sub_10079BA54();
  (*(v221 + 8))(v141, v143);
  v144 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v145 = swift_allocObject();
  *(v145 + 16) = sub_1006C5370;
  *(v145 + 24) = v144;
  sub_100005920(&qword_100AF2918, &qword_100AF26F8, &unk_10083E020, v256);
  v146 = v225;
  sub_10079BB04();

  (*(v224 + 8))(v142, v146);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  swift_beginAccess();

  v147 = v250;
  sub_10079B974();
  swift_endAccess();

  swift_getKeyPath();
  v148 = v226;
  v149 = v263;
  sub_10079BA64();

  v260(v147, v149);
  sub_100005920(&qword_100AF2920, &qword_100AF26D8, &qword_10083E000, v140);
  sub_1006C10D4(&qword_100AF2928, &type metadata accessor for BookContentHeaderStyle, &protocol conformance descriptor for BookContentHeaderStyle);
  v150 = v229;
  v151 = v228;
  sub_10079BAF4();
  (*(v227 + 8))(v148, v151);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v152 = v256;
  sub_100005920(&unk_100AF2930, &qword_100AF26E0, &qword_10083E008, v256);
  v153 = v231;
  sub_10079BB04();

  (*(v230 + 8))(v150, v153);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  swift_beginAccess();

  sub_10079B974();
  swift_endAccess();

  swift_getKeyPath();
  v154 = v232;
  v155 = v263;
  sub_10079BA64();

  v260(v147, v155);
  sub_100005920(&qword_100AE88E0, &qword_100AE88B0, &unk_10083DFF0, v255);
  v156 = v235;
  v157 = v234;
  sub_10079BAF4();
  (*(v233 + 8))(v154, v157);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AF2940, &qword_100AF26D0, &qword_10082E800, v152);
  v158 = v237;
  sub_10079BB04();

  (*(v236 + 8))(v156, v158);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  return result;
}

id sub_1006A68A0()
{
  ObjectType = swift_getObjectType();
  v5[3] = ObjectType;
  v5[0] = v0;
  v2 = v0;
  sub_1007A2B34();
  sub_1000074E0(v5);
  v4.receiver = v2;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for BookReaderPresenter(uint64_t a1)
{
  result = qword_100AF2530;
  if (!qword_100AF2530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006A6BFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10079BC44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = &Strong[OBJC_IVAR____TtC5Books19BookReaderPresenter_expandedContentFrame];
    *v8 = 0u;
    *(v8 + 1) = 0u;
    v8[32] = 1;
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = swift_weakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = sub_10079EE14();
      sub_1005787C0(v13);
      v14 = sub_10079EF24();
      sub_100579480(v14);
      v15 = sub_10079EE44();
      v16 = &enum case for ColorScheme.dark(_:);
      if ((v15 & 1) == 0)
      {
        v16 = &enum case for ColorScheme.light(_:);
      }

      (*(v4 + 104))(v6, *v16, v3);
      sub_100579640(v6);
      sub_10044A40C(a1, v12, v17);
      sub_100697090(a1);
    }
  }
}

double sub_1006A6DD4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for State(0);
  __chkstk_darwin(v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(*(Strong + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
    v8 = Strong;
    swift_getObjectType();

    v9 = sub_1007A1364();
    v10 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    sub_1006C56B4(v7 + v10, v4, type metadata accessor for State);
    v4[*(v2 + 80)] = v9 & 1;
    sub_100444C5C(v4);
  }

  return result;
}

double sub_1006A6F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = Strong + OBJC_IVAR____TtC5Books19BookReaderPresenter_expandedContentFrame;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 1;
    v8 = *(Strong + OBJC_IVAR____TtC5Books19BookReaderPresenter_bookReaderLayoutController);
    swift_beginAccess();
    v11 = *(v8 + 112);
    v12 = *(v8 + 96);
    swift_getKeyPath();
    sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A14();

    v9 = vceqq_f64(v12, *(a3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin));
    v10 = vuzp1q_s32(v9, vceqq_f64(v11, *(a3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin + 16)));
    if ((vminv_u16(vmovn_s32(v10)) & 1) == 0)
    {
      v10.n128_u64[0] = *&v12.f64[1];
      v9.n128_u64[0] = v11.n128_u64[1];
      sub_100578FC4(v12, v10, v11, v9);
    }

    sub_10057D260();
    type metadata accessor for PublishedBool(0);
    sub_1006C10D4(&qword_100AF2980, type metadata accessor for PublishedBool, &unk_10083A69C);
    sub_10079B8B4();
    sub_10079B934();
  }

  return result;
}

void sub_1006A70DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1007A0164();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HistoryModel(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = swift_weakLoadStrong();
    if (v15)
    {
      v16 = v15;
      swift_getKeyPath();
      v18 = v16;
      sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
      sub_100797A14();

      v17 = *&v14[OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor];
      (*(v4 + 16))(v6, a1, v3);
      swift_unknownObjectRetain();
      sub_1006A11FC(v6, v17, v12);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1006C56B4(v12, v9, type metadata accessor for HistoryModel);
      sub_10079B9B4();
      sub_1006C571C(v12, type metadata accessor for HistoryModel);
    }
  }
}

double sub_1006A737C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (v3 == *(a2 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isShowingExpandedContent))
  {
    *(a2 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isShowingExpandedContent) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_1006A2C38();

    if (v8)
    {
      sub_10079EF84(v3);
    }
  }

  return result;
}

double sub_1006A74EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1007A3854();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v22[-v7];
  __chkstk_darwin(v9);
  v11 = &v22[-v10];
  v12 = type metadata accessor for State(0);
  __chkstk_darwin(v12);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = *(*(Strong + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
    v18 = Strong;

    v19 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    sub_1006C56B4(v17 + v19, v14, type metadata accessor for State);
    v20 = *(v12 + 76);
    sub_1007A3834();
    sub_1007A3844();
    v21 = *(v3 + 8);
    v21(v5, v2);
    sub_1006C10D4(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    if (sub_1007A20E4())
    {
      (*(v3 + 32))(v11, v8, v2);
    }

    else
    {
      v21(v8, v2);
      (*(v3 + 16))(v11, &v14[v20], v2);
    }

    (*(v3 + 40))(&v14[v20], v11, v2);
    sub_100444C5C(v14);
  }

  return result;
}

double sub_1006A77CC(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v3 - 8);
  v5 = &v17[-v4];
  v7 = *a1;
  v6 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_weakLoadStrong();

    if (v11)
    {
      v12 = *(v11 + 168);

      v13 = *(v12 + 16);
      v14 = sub_1007A2744();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      sub_1007A26F4();
      swift_retain_n();

      v15 = sub_1007A26E4();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = &protocol witness table for MainActor;
      *(v16 + 32) = v13;
      *(v16 + 40) = v7;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      *(v16 + 48) = v6;
      *(v16 + 72) = 1;
      *(v16 + 74) = v18;
      *(v16 + 78) = v19;
      *(v16 + 88) = 0;
      *(v16 + 96) = 0;
      *(v16 + 80) = 0;
      *(v16 + 104) = 1;
      sub_1003457A0(0, 0, v5, &unk_10083E298, v16);
    }
  }

  return result;
}

void sub_1006A79B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1007A0624();

    sub_10044539C((v4 & 1) == 0);

    swift_getKeyPath();
    swift_getKeyPath();

    sub_10079B9B4();
  }
}

double sub_1006A7AA0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    sub_100445924(v2 ^ 1);
  }

  return result;
}

double sub_1006A7B24(unsigned __int8 *a1, uint64_t a2)
{
  v3 = type metadata accessor for State(0);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(*(Strong + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
    v9 = Strong;

    v10 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    sub_1006C56B4(v8 + v10, v5, type metadata accessor for State);
    v5[4] = v6;
    sub_100444C5C(v5);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v13 = v11;
    v14 = swift_weakLoadStrong();

    if (v14)
    {
      v15 = *(v14 + 112);

      if (v6 == *(v15 + 264))
      {
        *(v15 + 264) = v6;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v17[-2] = v15;
        LOBYTE(v17[-1]) = v6;
        v17[2] = v15;
        sub_1006C10D4(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
        sub_100797A04();
      }
    }
  }

  return result;
}

double sub_1006A7D78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    v6 = type metadata accessor for OverlayViewModel.Overlay(0);
    v7 = (*(*(v6 - 8) + 48))(a1, 1, v6) != 1;
    sub_100445C80(v7);
  }

  return result;
}

double sub_1006A7E3C(char *a1, uint64_t a2)
{
  v3 = type metadata accessor for State(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(*(Strong + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
    v10 = Strong;

    v11 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    sub_1006C56B4(v9 + v11, v5, type metadata accessor for State);
    v5[7] = v6;
    sub_100444C5C(v5);
  }

  return result;
}

double sub_1006A7F48(char *a1, uint64_t a2)
{
  v3 = type metadata accessor for State(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(*(Strong + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
    v10 = Strong;

    v11 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    sub_1006C56B4(v9 + v11, v5, type metadata accessor for State);
    v5[8] = v6;
    sub_100444C5C(v5);
  }

  return result;
}

double sub_1006A8054(char *a1, uint64_t a2)
{
  v3 = type metadata accessor for State(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(*(Strong + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
    v10 = Strong;

    v11 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    sub_1006C56B4(v9 + v11, v5, type metadata accessor for State);
    v5[9] = v6;
    sub_100444C5C(v5);
  }

  return result;
}

double sub_1006A8174(char *a1, uint64_t a2)
{
  v3 = type metadata accessor for State(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(*(Strong + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
    v10 = Strong;

    v11 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    sub_1006C56B4(v9 + v11, v5, type metadata accessor for State);
    v5[10] = v6;
    sub_100444C5C(v5);
  }

  return result;
}

double sub_1006A8280(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_weakLoadStrong();

    if (v6)
    {
      sub_10057E4EC(a1);
    }
  }

  return result;
}

uint64_t sub_1006A8304(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  sub_1000077D8(a1, &v17 - v8, &qword_100ADB1C0, &qword_10082A4E0);
  v10 = type metadata accessor for OverlayViewModel.Overlay(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v9, 1, v10) == 1)
  {
    sub_100007840(v9, &qword_100ADB1C0, &qword_10082A4E0);
    v12 = 0;
  }

  else
  {
    v12 = sub_100460F88();
    sub_1006C571C(v9, type metadata accessor for OverlayViewModel.Overlay);
  }

  sub_1000077D8(a2, v6, &qword_100ADB1C0, &qword_10082A4E0);
  if (v11(v6, 1, v10) == 1)
  {
    sub_100007840(v6, &qword_100ADB1C0, &qword_10082A4E0);
    v13 = 0;
  }

  else
  {
    v13 = sub_100460F88();
    sub_1006C571C(v6, type metadata accessor for OverlayViewModel.Overlay);
  }

  if (v13)
  {
    v14 = v12 == v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  if (v12)
  {
    return v15;
  }

  else
  {
    return v13 == 0;
  }
}

void sub_1006A84F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1006A8554(a1);
  }
}

uint64_t sub_1006A8554(uint64_t a1)
{
  v37 = a1;
  v2 = type metadata accessor for OverlayViewModel.Search(0);
  __chkstk_darwin(v2 - 8);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  __chkstk_darwin(v16);
  v18 = (&v35 - v17);
  v38 = v1;
  if (swift_weakLoadStrong())
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v18);
  }

  else
  {
    v19 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  }

  sub_1000077D8(v18, v15, &qword_100ADB1C0, &qword_10082A4E0);
  v20 = type metadata accessor for OverlayViewModel.Overlay(0);
  v21 = *(*(v20 - 8) + 48);
  if (v21(v15, 1, v20) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1006C571C(v15, type metadata accessor for OverlayViewModel.Overlay);
    if (EnumCaseMultiPayload == 1)
    {
      if (sub_1006A2C38())
      {
        sub_10079F0D4(0);
      }
    }

    else
    {
      v23 = *(v38 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager);
      *(v23 + 16) = 0;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = *(v23 + 64);
        ObjectType = swift_getObjectType();
        (*(v24 + 8))(ObjectType, v24);
        swift_unknownObjectRelease();
      }
    }
  }

  v26 = v37;
  sub_1000077D8(v37, v12, &qword_100ADB1C0, &qword_10082A4E0);
  if (v21(v12, 1, v20) != 1)
  {
    v27 = swift_getEnumCaseMultiPayload();
    sub_1006C571C(v12, type metadata accessor for OverlayViewModel.Overlay);
    if (v27 == 1)
    {
      if (sub_1006A2C38())
      {
        sub_10079F0D4(1);
      }
    }

    else
    {
      v28 = *(v38 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager);
      *(v28 + 16) = 1;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v29 = *(v28 + 64);
        v30 = swift_getObjectType();
        (*(v29 + 8))(v30, v29);
        swift_unknownObjectRelease();
      }
    }
  }

  sub_1000077D8(v26, v9, &qword_100ADB1C0, &qword_10082A4E0);
  if (v21(v9, 1, v20) == 1)
  {
    sub_100007840(v9, &qword_100ADB1C0, &qword_10082A4E0);
  }

  else
  {
    v31 = swift_getEnumCaseMultiPayload();
    sub_1006C571C(v9, type metadata accessor for OverlayViewModel.Overlay);
    if (v31 == 2)
    {
      sub_1007A0B24();
LABEL_24:
      v32 = v18;
      return sub_100007840(v32, &qword_100ADB1C0, &qword_10082A4E0);
    }
  }

  sub_1000077D8(v18, v6, &qword_100ADB1C0, &qword_10082A4E0);
  if (v21(v6, 1, v20) != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_100007840(v18, &qword_100ADB1C0, &qword_10082A4E0);
      return sub_1006C571C(v6, type metadata accessor for OverlayViewModel.Overlay);
    }

    v33 = v36;
    sub_1006C5144(v6, v36, type metadata accessor for OverlayViewModel.Search);
    sub_1007A0B44();
    sub_1006C571C(v33, type metadata accessor for OverlayViewModel.Search);
    goto LABEL_24;
  }

  sub_100007840(v18, &qword_100ADB1C0, &qword_10082A4E0);
  v32 = v6;
  return sub_100007840(v32, &qword_100ADB1C0, &qword_10082A4E0);
}

uint64_t sub_1006A8B70(char a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  result = 0;
  if (a1 == a7 && ((a2 ^ a8) & 1) == 0)
  {
    v14 = a3 == a9 && a4 == a10;
    if (v14 || (v15 = a5, v16 = a6, v17 = sub_1007A3AB4(), a5 = v15, a6 = v16, v18 = v17, result = 0, (v18 & 1) != 0))
    {
      result = (a6 | a12) == 0;
      if (a6)
      {
        if (a12)
        {
          if (a5 == a11 && a6 == a12)
          {
            return 1;
          }

          else
          {

            return sub_1007A3AB4();
          }
        }
      }
    }
  }

  return result;
}

void sub_1006A8CA4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_1006C1934(v10, a2 & 1, a5, a6);
  }
}

uint64_t sub_1006A8D54(char a1, char a2, uint64_t a3)
{
  v6 = sub_1007A1D04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a1;
  *(v10 + 25) = a2;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);

  *v9 = sub_1007A2D74();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  LOBYTE(a3) = sub_1007A1D34();
  result = (*(v7 + 8))(v9, v6);
  if (a3)
  {

    sub_1006A8EDC(*(v10 + 16), *(v10 + 24), *(v10 + 25));
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006A8EDC(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1006A8F4C(a2 & 1, a3 & 1);
  }
}

double sub_1006A8F4C(char a1, char a2)
{
  Strong = swift_weakLoadStrong();
  if (a2)
  {
    if (Strong)
    {
      swift_getKeyPath();
      sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
      sub_100797A14();

      v6 = swift_weakLoadStrong();

      if (v6)
      {
        v7 = 0;
        v8 = 0;
LABEL_8:
        sub_10079EFF4(v7, v8);
      }
    }
  }

  else if (Strong)
  {
    swift_getKeyPath();
    sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A14();

    v9 = swift_weakLoadStrong();

    if (v9)
    {
      v7 = (a1 & 1) == 0;
      v8 = 1;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1006A90CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007A1D04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10079F4E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  (*(v9 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v11);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v9 + 32))(v13 + v12, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);

  *v7 = sub_1007A2D74();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  LOBYTE(a2) = sub_1007A1D34();
  result = (*(v5 + 8))(v7, v4);
  if (a2)
  {

    sub_1006C5A14(&type metadata accessor for BookContentHeaderStyle, sub_1006A9330);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006A9330(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
      sub_100797A14();

      v4 = swift_weakLoadStrong();

      if (v4)
      {
        sub_10079EFC4();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1006A944C(char *a1, uint64_t a2)
{
  v4 = sub_1007A1D04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = v8;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);

  *v7 = sub_1007A2D74();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  LOBYTE(a2) = sub_1007A1D34();
  result = (*(v5 + 8))(v7, v4);
  if (a2)
  {

    sub_1006A95C4(*(v9 + 16), *(v9 + 24));
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006A95C4(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
      sub_100797A14();

      v5 = swift_weakLoadStrong();

      if (v5)
      {
        sub_10079F094(a2 & 1, 1);
      }
    }

    else
    {
    }
  }
}

id sub_1006A96E0()
{
  v1 = OBJC_IVAR____TtC5Books19BookReaderPresenter____lazy_storage___expandedContentAnimator;
  v2 = *(v0 + OBJC_IVAR____TtC5Books19BookReaderPresenter____lazy_storage___expandedContentAnimator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Books19BookReaderPresenter____lazy_storage___expandedContentAnimator);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(sub_1007A10B4());
    v6 = sub_1007A1084();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

double sub_1006A976C(int a1)
{
  v51 = a1;
  v1 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v1 - 8);
  v44 = &v43 - v2;
  v3 = sub_100796CF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  v10 = sub_1007A21D4();
  v45 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  sub_1007A2154();
  sub_100796C94();
  v49 = *(v11 + 16);
  v49(v13, v16, v10);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v46 = objc_opt_self();
  v47 = ObjCClassFromMetadata;
  v18 = [v46 bundleForClass:ObjCClassFromMetadata];
  v48 = *(v4 + 16);
  v48(v6, v9, v3);
  v52 = v13;
  v53 = v6;
  v43 = sub_1007A22D4(v13, 0, 0, v18, v6, "Bookmark info bar primary message", 33, 2);
  v56 = v19;
  v20 = *(v4 + 8);
  v57 = v9;
  v21 = v9;
  v22 = v20;
  v23 = v3;
  v55 = v4 + 8;
  v20(v21, v3);
  v24 = v45;
  v25 = *(v11 + 8);
  v54 = v11 + 8;
  v50 = v25;
  v25(v16, v45);
  sub_1007A2154();
  v26 = v57;
  sub_100796C94();
  v27 = v52;
  v49(v52, v16, v24);
  v28 = [v46 bundleForClass:v47];
  v29 = v53;
  v48(v53, v26, v23);
  v30 = sub_1007A22D4(v27, 0, 0, v28, v29, "Bookmark info bar secondary message", 35, 2);
  v32 = v31;
  v22(v57, v23);
  v50(v16, v24);
  Strong = swift_weakLoadStrong();
  v34 = v56;
  if (Strong)
  {
    v35 = *(Strong + 168);

    v36 = *(v35 + 16);
    v37 = sub_1007A2744();
    v38 = v44;
    (*(*(v37 - 8) + 56))(v44, 1, 1, v37);
    sub_1007A26F4();
    swift_retain_n();

    v39 = sub_1007A26E4();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = &protocol witness table for MainActor;
    v41 = v43;
    *(v40 + 32) = v36;
    *(v40 + 40) = v41;
    *(v40 + 48) = v34;
    *(v40 + 56) = v30;
    *(v40 + 64) = v32;
    *(v40 + 72) = 2;
    *(v40 + 74) = v58;
    *(v40 + 78) = v59;
    *(v40 + 88) = 0;
    *(v40 + 96) = 0;
    *(v40 + 80) = 0;
    *(v40 + 104) = 1;
    sub_1003457A0(0, 0, v38, &unk_10083DBF8, v40);
  }

  return result;
}

void sub_1006A9D38(uint64_t a1)
{
  sub_1006A9E58(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1006A9E58(uint64_t a1)
{
  if (!qword_100AF2540)
  {
    sub_10079FFA4();
    v1 = sub_1007A3454();
    if (!v2)
    {
      atomic_store(v1, &qword_100AF2540);
    }
  }
}

uint64_t sub_1006A9EB0(char a1)
{
  v3 = sub_1007A1C54();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007A1CA4();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v9 = sub_1007A2D74();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1006C577C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A2CA78;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1006C10D4(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v11);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

double sub_1006AA1AC(uint64_t a1, char a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC5Books19BookReaderViewModel__usePhysicalPages) == (a2 & 1))
    {
      *(Strong + OBJC_IVAR____TtC5Books19BookReaderViewModel__usePhysicalPages) = a2 & 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
      sub_100797A04();
    }
  }

  return result;
}

double sub_1006AA310(uint64_t a1)
{
  if (swift_weakLoadStrong())
  {
    sub_10057D260();
    type metadata accessor for PublishedBool(0);
    sub_1006C10D4(&qword_100AF2980, type metadata accessor for PublishedBool, &unk_10083A69C);
    sub_10079B8B4();
    sub_10079B934();
  }

  return result;
}

uint64_t sub_1006AA3D8(uint64_t a1, void *a2)
{
  v3 = v2;
  v47 = a2;
  v40 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v4 - 8);
  v43 = &v37 - v5;
  v6 = type metadata accessor for OverlayViewModel.Overlay(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v44 = v8;
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v37 - v10;
  v12 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v12 - 8);
  v14 = (&v37 - v13);
  v41 = type metadata accessor for OverlayViewModel.Search(0);
  __chkstk_darwin(v41);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  v48 = sub_1001F1160(&qword_100ADB388, &qword_1008199B0);
  v20 = *(v48 - 8);
  __chkstk_darwin(v48);
  v22 = &v37 - v21;
  Strong = swift_weakLoadStrong();
  v46 = v7;
  if (!Strong)
  {
    (*(v7 + 56))(v14, 1, 1, v6);
    goto LABEL_7;
  }

  v38 = v19;
  v39 = v20;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v14);
  v20 = v39;

  v24 = v46;

  if ((*(v24 + 48))(v14, 1, v6) == 1)
  {
LABEL_7:
    v26 = sub_100007840(v14, &qword_100ADB1C0, &qword_10082A4E0);
    goto LABEL_8;
  }

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v25 = v38;
    sub_1006C5144(v14, v38, type metadata accessor for OverlayViewModel.Search);
    (*(v20 + 32))(v22, v25, v48);
    if (!v47)
    {
      return (*(v20 + 8))(v22, v48);
    }

    goto LABEL_9;
  }

  v26 = sub_1006C571C(v14, type metadata accessor for OverlayViewModel.Overlay);
LABEL_8:
  __chkstk_darwin(v26);
  *(&v37 - 16) = 0;
  sub_1006C10D4(&unk_100AF2558, type metadata accessor for BookReaderPresenter, &unk_10083D8D0);
  sub_1007A0B54();
  (*(v20 + 16))(v16, v22, v48);
  v16[*(v41 + 20)] = 0;
  sub_1006C56B4(v16, v11, type metadata accessor for OverlayViewModel.Search);
  swift_storeEnumTagMultiPayload();
  v27 = sub_1007A2744();
  v28 = v43;
  (*(*(v27 - 8) + 56))(v43, 1, 1, v27);
  ObjectType = v16;
  v29 = v22;
  v30 = v45;
  sub_1006C56B4(v11, v45, type metadata accessor for OverlayViewModel.Overlay);
  sub_1007A26F4();
  v31 = v3;
  v32 = sub_1007A26E4();
  v33 = (*(v46 + 80) + 40) & ~*(v46 + 80);
  v34 = swift_allocObject();
  v34[2] = v32;
  v34[3] = &protocol witness table for MainActor;
  v34[4] = v31;
  v35 = v30;
  v22 = v29;
  sub_1006C5144(v35, v34 + v33, type metadata accessor for OverlayViewModel.Overlay);
  sub_1003457A0(0, 0, v28, &unk_10083DCB8, v34);

  sub_1006C571C(v11, type metadata accessor for OverlayViewModel.Overlay);
  sub_1006C571C(ObjectType, type metadata accessor for OverlayViewModel.Search);
  if (v47)
  {
LABEL_9:
    v49._countAndFlagsBits = v40;
    v49._object = v47;
    sub_10079FD54(v49);
  }

  return (*(v20 + 8))(v22, v48);
}

uint64_t sub_1006AAA54@<X0>(uint64_t a1@<X0>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_100009864(a1, a4);
  sub_1007A0284();
  sub_1006C10D4(&qword_100AEE0F0, &type metadata accessor for SearchViewModel, &protocol conformance descriptor for SearchViewModel);

  *(a4 + 40) = sub_10079C024();
  *(a4 + 48) = v6;
  *(a4 + 56) = a3;
  sub_10079DFE4();
  *(a4 + 64) = v9;
  *(a4 + 72) = v10;
  v7 = *(type metadata accessor for SearchView(0) + 32);
  *(a4 + v7) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB4C0, &qword_100813DC0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1006AAB68(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v6 - 8);
  v27 = &v26 - v7;
  v8 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_1007969B4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v2[OBJC_IVAR____TtC5Books19BookReaderPresenter_bookProviderService];
  v16 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_100009864(v15 + v16, v28);
  sub_10000E3E8(v28, v29);
  v31._countAndFlagsBits = a1;
  v31._object = a2;
  if (sub_10079ED04(v31))
  {
    sub_1006AAF68();
LABEL_3:
    LOBYTE(v17) = 0;
    goto LABEL_4;
  }

  v26 = v3;
  sub_10000E3E8(v28, v29);
  v32._countAndFlagsBits = a1;
  v32._object = a2;
  if (sub_10079ED14(v32))
  {
    sub_10000E3E8(v28, v29);
    sub_10079EC94();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_100007840(v10, &unk_100AD5AC0, &unk_100811090);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      sub_1006AB464(v14, v28);
      (*(v12 + 8))(v14, v11);
    }

    goto LABEL_3;
  }

  v19 = v26;
  v17 = *&v26[OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor];
  swift_getObjectType();
  if (sub_10079F9E4())
  {
    v20 = v30;
    sub_10070B9CC(a1, a2);
    if (v20)
    {
      goto LABEL_4;
    }
  }

  else
  {
    *(v17 + 184) = a1;
    *(v17 + 192) = a2;
  }

  v21 = sub_1007A2744();
  LOBYTE(v17) = 1;
  v22 = v27;
  (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
  sub_1007A26F4();
  v23 = v19;
  v24 = sub_1007A26E4();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = &protocol witness table for MainActor;
  v25[4] = v23;
  sub_100345AA0(0, 0, v22, &unk_10083DF40, v25);

LABEL_4:
  sub_1000074E0(v28);
  return v17 & 1;
}

void *sub_1006AAF68()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v5 = type metadata accessor for OverlayViewModel.Overlay(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v31 - v12);
  if (swift_weakLoadStrong())
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v13);

    if ((*(v6 + 48))(v13, 1, v5) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      result = sub_1006C571C(v13, type metadata accessor for OverlayViewModel.Overlay);
      if (EnumCaseMultiPayload == 4)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else
  {
    (*(v6 + 56))(v13, 1, 1, v5);
  }

  sub_100007840(v13, &qword_100ADB1C0, &qword_10082A4E0);
LABEL_7:
  v32 = v6;
  v33 = v4;
  v16 = *&v1[OBJC_IVAR____TtC5Books19BookReaderPresenter_tocModuleFactory];
  swift_getObjectType();
  sub_10079F9D4();
  v17 = sub_10079F384();

  v37 = &off_100A2BB00;
  v18 = swift_unknownObjectWeakInit();
  sub_10030396C(v18, v35);
  v19 = *(v16 + 32);
  result = swift_unknownObjectUnownedLoadStrong();
  if (result)
  {
    v20 = result;
    result = swift_weakLoadStrong();
    if (result)
    {
      v21 = result;
      v22 = v19;
      sub_100430BF4(v36);
      type metadata accessor for TOCModule();
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1006C11EC(v35, v23 + 16);
      *(v23 + 32) = v17 & 1;
      *(v23 + 33) = 0;
      *(v23 + 40) = v22;
      swift_unknownObjectWeakAssign();

      *(v23 + 56) = v21;
      swift_unownedRetain();

      *v10 = v23;
      v10[8] = 0;
      swift_storeEnumTagMultiPayload();
      v24 = sub_1007A2744();
      v25 = v33;
      (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
      v26 = v34;
      sub_1006C56B4(v10, v34, type metadata accessor for OverlayViewModel.Overlay);
      sub_1007A26F4();
      swift_retain_n();
      v27 = v1;
      v28 = sub_1007A26E4();
      v29 = (*(v32 + 80) + 40) & ~*(v32 + 80);
      v30 = swift_allocObject();
      v30[2] = v28;
      v30[3] = &protocol witness table for MainActor;
      v30[4] = v27;
      sub_1006C5144(v26, v30 + v29, type metadata accessor for OverlayViewModel.Overlay);
      sub_1003457A0(0, 0, v25, &unk_10083DCB0, v30);

      return sub_1006C571C(v10, type metadata accessor for OverlayViewModel.Overlay);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1006AB464(uint64_t a1, char *a2)
{
  v5 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_10079F7E4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006B6B38(v11);
  v12 = sub_1007A07B4();
  v13 = sub_1006C2428(v2, a1, v11, a2, v12);
  (*(v9 + 8))(v11, v8);
  if (v13)
  {
    v20 = 1;
    v14 = sub_1007A2744();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1007A26F4();

    v16 = v13;
    v17 = sub_1007A26E4();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = &protocol witness table for MainActor;
    *(v18 + 32) = v15;
    *(v18 + 40) = v16;
    *(v18 + 48) = 0u;
    *(v18 + 64) = 0u;
    *(v18 + 80) = v20;

    sub_1003457A0(0, 0, v7, &unk_10083DED8, v18);
  }
}

uint64_t sub_1006AB6C4()
{
  v0 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v0 - 8);
  v2 = (v10 - v1);
  if (!swift_weakLoadStrong())
  {
    v9 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v2);

  v3 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
LABEL_7:
    sub_100007840(v2, &qword_100ADB1C0, &qword_10082A4E0);
    return 2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1006C571C(v2, type metadata accessor for OverlayViewModel.Overlay);
  if (!EnumCaseMultiPayload)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      swift_getKeyPath();
      v10[1] = v6;
      sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
      sub_100797A14();

      v7 = *(v6 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType);

      return v7;
    }
  }

  return 2;
}

uint64_t sub_1006AB930@<X0>(BOOL *a2@<X8>)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100009864(result + 184, v6);

    sub_10000E3E8(v6, v6[3]);
    type metadata accessor for ThemeOptionsContainerPresenter();
    v4 = sub_1004B0E98();
    result = sub_1000074E0(v6);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

double sub_1006AB9E8(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE65A8, &qword_10082A450);
  __chkstk_darwin(v2 - 8);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v27 - v6;
  __chkstk_darwin(v8);
  v10 = v27 - v9;
  v11 = sub_1001F1160(&qword_100AF26C0, &qword_1008333B0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v27 - v13;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = swift_weakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v31 = a1;
      v32 = v12;
      swift_getKeyPath();
      v33 = v19;
      sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
      sub_100797A14();

      v20 = swift_weakLoadStrong();

      if (v20)
      {
        v30 = v20;
        v21 = sub_10079F054();
        v28 = v22;
        v29 = v21;
        v27[3] = sub_10079F0C4();
        v23 = sub_10000E3E8((v17 + 184), *(v17 + 208));
        swift_getObjectType();
        sub_10079F4F4();
        v24 = *v23;
        type metadata accessor for ThemeOptionsContainerPresenter();
        sub_1006C10D4(&qword_100AF26C8, type metadata accessor for ThemeOptionsContainerPresenter, &unk_10082A3D0);
        sub_1007A16D4();

        v31 = *(v24 + 32);
        v25 = v32;
        (*(v32 + 16))(v10, v14, v11);
        v26 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
        v10[*(v26 + 20)] = 0;
        (*(*(v26 - 8) + 56))(v10, 0, 1, v26);
        sub_1000077D8(v10, v7, &qword_100AE65A8, &qword_10082A450);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000077D8(v7, v4, &qword_100AE65A8, &qword_10082A450);

        sub_10079B9B4();

        sub_100007840(v7, &qword_100AE65A8, &qword_10082A450);
        sub_100007840(v10, &qword_100AE65A8, &qword_10082A450);
        (*(v25 + 8))(v14, v11);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1006ABE30(double a1)
{
  v2 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A79C8(v4);
  sub_1006C571C(v4, type metadata accessor for _BookReaderInteractorState);
  v5 = sub_1007A0CE4();
  v7 = v6;
  if (v5 == sub_1007A0CE4() && v7 == v8)
  {

LABEL_9:
    if (a1 <= 0.7)
    {
      return sub_1007A0364();
    }

    return sub_1007A0384();
  }

  v10 = sub_1007A3AB4();

  if (v10)
  {
    goto LABEL_9;
  }

  if (a1 >= 0.3)
  {
    return sub_1007A0364();
  }

  return sub_1007A0384();
}

void sub_1006ABF84()
{
  v1 = v0;
  v2 = sub_1007A1D04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + 112);
    swift_getKeyPath();
    v15 = v8;
    sub_1006C10D4(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);

    sub_100797A14();

    if (*(v8 + 281))
    {
      swift_getKeyPath();
      v15 = v7;
      sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
      sub_100797A14();

      v9 = v7 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
      swift_beginAccess();
      v10 = (v9 + *(type metadata accessor for BookReaderChromeState(0) + 44));
      if ((*v10 & 1) == 0 && !v10[1])
      {
        v11 = swift_allocObject();
        *(v11 + 16) = v1;
        sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
        v12 = v1;
        *v5 = sub_1007A2D74();
        (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
        v13 = sub_1007A1D34();
        (*(v3 + 8))(v5, v2);
        if ((v13 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_1006AC544(*(v11 + 16));

        goto LABEL_14;
      }

      sub_10079E514();
      if (UIAccessibilityIsReduceMotionEnabled())
      {
        v14 = 0x8000000000000008;
        goto LABEL_11;
      }
    }

    else
    {
      sub_10079E514();
      if (UIAccessibilityIsReduceMotionEnabled())
      {
        v14 = 0x8000000000000000;
LABEL_11:
        REActionMenuState.transition(to:)(v14);
LABEL_13:

LABEL_14:

        return;
      }
    }

    sub_10079BF94();
    goto LABEL_13;
  }
}

uint64_t sub_1006AC2E8(uint64_t a1)
{
  v3 = sub_1007A1D04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1007A1874();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  (*(v8 + 16))(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v10);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  (*(v8 + 32))(v12 + v11, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v13 = v1;
  *v6 = sub_1007A2D74();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v14 = sub_1007A1D34();
  result = (*(v4 + 8))(v6, v3);
  if (v14)
  {

    sub_1006C5A14(&type metadata accessor for ReadingLoupeVisibilityState, sub_1006B1A34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1006AC544(uint64_t a1)
{
  v2 = sub_1007A3854();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for State(0);
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(a1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
  v16 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  swift_beginAccess();
  sub_1006C56B4(v15 + v16, v14, type metadata accessor for State);
  v17 = qword_100AD1640;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = *(v12 + 72);
  sub_1007A3834();
  sub_1007A3844();
  v19 = *(v3 + 8);
  v19(v5, v2);
  sub_1006C10D4(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  if (sub_1007A20E4())
  {
    (*(v3 + 32))(v11, v8, v2);
  }

  else
  {
    v19(v8, v2);
    (*(v3 + 16))(v11, &v14[v18], v2);
  }

  (*(v3 + 40))(&v14[v18], v11, v2);
  sub_100444C5C(v14);

  return result;
}

uint64_t sub_1006AC830()
{
  v0 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = (&v14 - v4);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  result = swift_weakLoadStrong();
  if (result)
  {

    v13 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    sub_1000077D8(v11, v8, &qword_100ADB1C0, &qword_10082A4E0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v5);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000077D8(v8, v2, &qword_100ADB1C0, &qword_10082A4E0);

    sub_10079B9B4();
    sub_100461420(v5);

    sub_100007840(v5, &qword_100ADB1C0, &qword_10082A4E0);
    sub_100007840(v8, &qword_100ADB1C0, &qword_10082A4E0);
    return sub_100007840(v11, &qword_100ADB1C0, &qword_10082A4E0);
  }

  return result;
}

uint64_t sub_1006ACA98()
{
  v0 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v7 - v1);
  if (!swift_weakLoadStrong())
  {
    v6 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    return sub_100007840(v2, &qword_100ADB1C0, &qword_10082A4E0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v2);

  v3 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    return sub_100007840(v2, &qword_100ADB1C0, &qword_10082A4E0);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1006C571C(v2, type metadata accessor for OverlayViewModel.Overlay);
  if (EnumCaseMultiPayload == 3)
  {
    return sub_1006AC830();
  }

  return result;
}

uint64_t sub_1006ACC70(char a1)
{
  v2 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  if ((a1 & 1) == 0)
  {
    sub_1004A79C8(v4);
    sub_1006C571C(v4, type metadata accessor for _BookReaderInteractorState);
    v15 = sub_1007A0CE4();
    v17 = v16;
    if (v15 == sub_1007A0CE4() && v17 == v18)
    {
    }

    else
    {
      v20 = sub_1007A3AB4();

      v14 = 0;
      if ((v20 & 1) == 0)
      {
        return sub_1004AB134(v14);
      }
    }

    goto LABEL_16;
  }

  sub_1004A79C8(&v22 - v6);
  sub_1006C571C(v7, type metadata accessor for _BookReaderInteractorState);
  v8 = sub_1007A0CE4();
  v10 = v9;
  if (v8 == sub_1007A0CE4() && v10 == v11)
  {

    v14 = 0;
    return sub_1004AB134(v14);
  }

  v13 = sub_1007A3AB4();

  if ((v13 & 1) == 0)
  {
LABEL_16:
    v14 = 1;
    return sub_1004AB134(v14);
  }

  v14 = 0;
  return sub_1004AB134(v14);
}

uint64_t sub_1006ACE50(uint64_t a1, void (*a2)(void, __n128))
{
  v4 = sub_1007A1D04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v9 = v2;
  *v7 = sub_1007A2D74();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = sub_1007A1D34();
  result = (*(v5 + 8))(v7, v4);
  if (v10)
  {

    (a2)(*(v8 + 16));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006ACFC0()
{
  v0 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v7 - v1);
  if (swift_weakLoadStrong())
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v2);

    v3 = type metadata accessor for OverlayViewModel.Overlay(0);
    v4 = 1;
    if ((*(*(v3 - 8) + 48))(v2, 1, v3) != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  }

  v4 = 0;
LABEL_6:
  sub_100007840(v2, &qword_100ADB1C0, &qword_10082A4E0);
  return v4;
}

void sub_1006AD160(uint64_t a1)
{
  v2 = *(*(*(v1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor) + 176) + 56);
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      sub_100529680(a1, 1);
      return;
    }

LABEL_8:
    sub_1004178E4(a1, 1);
    return;
  }

  if (!*(*(*(v1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor) + 176) + 56))
  {
    goto LABEL_8;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100597250(a1, 1);

    swift_unknownObjectRelease();
  }
}

BOOL sub_1006AD200()
{
  v0 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v7 - v1);
  if (swift_weakLoadStrong())
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v2);

    v3 = type metadata accessor for OverlayViewModel.Overlay(0);
    if ((*(*(v3 - 8) + 48))(v2, 1, v3) != 1)
    {
      v4 = swift_getEnumCaseMultiPayload() != 4;
      sub_1006C571C(v2, type metadata accessor for OverlayViewModel.Overlay);
      return v4;
    }
  }

  else
  {
    v6 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  }

  sub_100007840(v2, &qword_100ADB1C0, &qword_10082A4E0);
  return 1;
}

uint64_t sub_1006AD3D0()
{
  v1[2] = v0;
  sub_1007A26F4();
  v1[3] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_1006AD468, v3, v2);
}

uint64_t sub_1006AD468()
{
  v1 = sub_1006A2C38();
  v0[6] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1006AD550;

    return sub_10022B4D0(6);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1006AD550(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;

  v5 = *(v3 + 40);
  v6 = *(v3 + 32);

  return _swift_task_switch(sub_1006AD678, v6, v5);
}

uint64_t sub_1006AD678()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1006AD764;
    v3 = v0[8];

    return BookContentModule.select(annotationID:)(v3, v1);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1006AD764(char a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return _swift_task_switch(sub_1006AD88C, v4, v3);
}

uint64_t sub_1006AD88C()
{
  v14 = v0;
  if (*(v0 + 96) == 1)
  {

    v1 = swift_task_alloc();
    *(v0 + 88) = v1;
    *v1 = v0;
    v1[1] = sub_1006ADAD8;

    return sub_1006ADC64();
  }

  else
  {

    if (qword_100AD1AE0 != -1)
    {
      swift_once();
    }

    v3 = sub_10079ACE4();
    sub_100008B98(v3, qword_100AF23F0);

    v4 = sub_10079ACC4();
    v5 = sub_1007A29B4();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 72);
    if (v6)
    {
      v8 = *(v0 + 64);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136315138;
      v11 = sub_1000070F4(v8, v7, &v13);

      *(v9 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "Not presenting style picker for %s because selection failed", v9, 0xCu);
      sub_1000074E0(v10);
    }

    else
    {
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1006ADAD8()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_1006ADBF8, v3, v2);
}

uint64_t sub_1006ADBF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006ADC64()
{
  v1[2] = v0;
  sub_1007A26F4();
  v1[3] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_1006ADCFC, v3, v2);
}

uint64_t sub_1006ADCFC()
{
  v18 = v0;
  v1 = sub_1006A2C38();
  *(v0 + 48) = v1;
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC5Books19BookReaderPresenter_menuController);
  v3 = OBJC_IVAR____TtC5Books24BookReaderMenuController_mode;
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  if (*(v2 + v3))
  {

LABEL_4:
    v4 = *(v0 + 16);

    v5 = *(*(v4 + OBJC_IVAR____TtC5Books19BookReaderPresenter_menuController) + OBJC_IVAR____TtC5Books24BookReaderMenuController_mode);
    if (qword_100AD1AE0 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, qword_100AF23F0);
    v7 = sub_10079ACC4();
    v8 = sub_1007A29B4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      *(v0 + 80) = v5;
      v11 = sub_1007A22E4();
      v13 = sub_1000070F4(v11, v12, &v17);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Refusing to build highlight style picker because mode is %s", v9, 0xCu);
      sub_1000074E0(v10);
    }

    v14 = *(v0 + 8);

    return v14(0);
  }

  *(v2 + v3) = 1;
  v16 = swift_task_alloc();
  *(v0 + 72) = v16;
  *v16 = v0;
  v16[1] = sub_1006ADF60;

  return BookContentModule.presentEditMenu()();
}

uint64_t sub_1006ADF60(char a1)
{
  v2 = *v1;
  *(*v1 + 81) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return _swift_task_switch(sub_1006AE088, v4, v3);
}

uint64_t sub_1006AE088()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  *(v2 + v1) = 0;
  v3 = *(v0 + 81);
  v4 = *(v0 + 8);

  return v4(v3);
}

BOOL sub_1006AE108()
{
  v0 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v7 - v1);
  if (swift_weakLoadStrong())
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v2);

    v3 = type metadata accessor for OverlayViewModel.Overlay(0);
    if ((*(*(v3 - 8) + 48))(v2, 1, v3) != 1)
    {
      v4 = swift_getEnumCaseMultiPayload() != 2;
      sub_1006C571C(v2, type metadata accessor for OverlayViewModel.Overlay);
      return v4;
    }
  }

  else
  {
    v6 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  }

  sub_100007840(v2, &qword_100ADB1C0, &qword_10082A4E0);
  return 1;
}

uint64_t sub_1006AE2D8()
{
  v0 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v7 - v1);
  if (!swift_weakLoadStrong())
  {
    v6 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v2);

  v3 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
LABEL_6:
    sub_100007840(v2, &qword_100ADB1C0, &qword_10082A4E0);
    return sub_1006AA3D8(0, 0);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1006C571C(v2, type metadata accessor for OverlayViewModel.Overlay);
  if (EnumCaseMultiPayload != 2)
  {
    return sub_1006AA3D8(0, 0);
  }

  return result;
}

void sub_1006AE4B8()
{
  sub_10022FB30(&v7);
  v8 = v7;
  v0 = *(&v7 + 1);
  if (*(&v7 + 1))
  {
    v1 = v8;
    sub_1000077D8(&v8, v6, &qword_100AF2618, &qword_10083DD90);
    sub_1006AA3D8(v1, v0);
    sub_100007840(&v8, &qword_100AF2618, &qword_10083DD90);
  }

  else
  {
    if (qword_100AD1AE0 != -1)
    {
      swift_once();
    }

    v2 = sub_10079ACE4();
    sub_100008B98(v2, qword_100AF23F0);
    oslog = sub_10079ACC4();
    v3 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Unable to perform find selection. Missing state", v4, 2u);
    }
  }
}

uint64_t sub_1006AE638(char a1)
{
  swift_getObjectType();
  if ((a1 & 1) == 0 && sub_1007A13B4() == 4)
  {
    sub_1007A09E4();
  }

  return sub_1007A1194();
}

uint64_t sub_1006AE6C0()
{
  v1 = sub_1007A1D04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(swift_allocObject() + 16) = v0;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v5 = v0;
  *v4 = sub_1007A2D74();
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = sub_1007A1D34();
  result = (*(v2 + 8))(v4, v1);
  if (v6)
  {

    sub_1006AB930(&v9);

    return !v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006AE834(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 128) = a1;
  *(v2 + 24) = sub_1007A26F4();
  *(v2 + 32) = sub_1007A26E4();
  v4 = sub_1007A2694();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(sub_1006AE8D4, v4, v3);
}

uint64_t sub_1006AE8D4(uint64_t a1)
{
  v1[7] = *(v1[2] + OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor);
  v1[8] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[9] = v3;
  v1[10] = v2;

  return _swift_task_switch(sub_1006AE970, v3, v2);
}

uint64_t sub_1006AE970(uint64_t a1)
{
  v1[11] = *(v1[7] + 64);
  v1[12] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[13] = v3;
  v1[14] = v2;

  return _swift_task_switch(sub_1006AEA08, v3, v2);
}

uint64_t sub_1006AEA08()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC5Books21BookReaderDataManager_readingSettingsManager + 8);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_1006AEAD0;
  v4 = *(v0 + 128);

  return dispatch thunk of ReadingSettingsManaging.changeJustification(to:)(v4, ObjectType, v1);
}

uint64_t sub_1006AEAD0()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1006AEBF0, v3, v2);
}

uint64_t sub_1006AEBF0()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_1006AEC54, v1, v2);
}

uint64_t sub_1006AEC54()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1002AE80C, v1, v2);
}

uint64_t sub_1006AECB8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 128) = a1;
  *(v2 + 24) = sub_1007A26F4();
  *(v2 + 32) = sub_1007A26E4();
  v4 = sub_1007A2694();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(sub_1006AED58, v4, v3);
}

uint64_t sub_1006AED58(uint64_t a1)
{
  v1[7] = *(v1[2] + OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor);
  v1[8] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[9] = v3;
  v1[10] = v2;

  return _swift_task_switch(sub_1006AEDF4, v3, v2);
}

uint64_t sub_1006AEDF4(uint64_t a1)
{
  v1[11] = *(v1[7] + 64);
  v1[12] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[13] = v3;
  v1[14] = v2;

  return _swift_task_switch(sub_1006AEE8C, v3, v2);
}

uint64_t sub_1006AEE8C()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC5Books21BookReaderDataManager_readingSettingsManager + 8);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_1006AEF54;
  v4 = *(v0 + 128);

  return dispatch thunk of ReadingSettingsManaging.changeAllowMultipleColumns(to:)(v4, ObjectType, v1);
}

uint64_t sub_1006AEF54()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1006AF074, v3, v2);
}

uint64_t sub_1006AF074()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_1006AF0D8, v1, v2);
}

uint64_t sub_1006AF0D8()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1004EA6AC, v1, v2);
}

uint64_t sub_1006AF13C()
{
  v0[2] = sub_1007A26F4();
  v0[3] = sub_1007A26E4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1004B06E4;

  return sub_1006AF1E8();
}

uint64_t sub_1006AF1E8()
{
  v1[7] = v0;
  v2 = sub_1007A3864();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  v1[11] = swift_task_alloc();
  v1[12] = sub_1007A26F4();
  v1[13] = sub_1007A26E4();
  v3 = swift_task_alloc();
  v1[14] = v3;
  *v3 = v1;
  v3[1] = sub_1006AF32C;

  return sub_1006B4E74();
}

uint64_t sub_1006AF32C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 120) = v3;
  *v3 = v2;
  v3[1] = sub_1006AF46C;

  return sub_1006B5330();
}

uint64_t sub_1006AF46C()
{
  v1 = *v0;

  v3 = sub_1007A2694();
  *(v1 + 128) = v3;
  *(v1 + 136) = v2;

  return _swift_task_switch(sub_1006AF5B0, v3, v2);
}

uint64_t sub_1006AF5B0()
{
  v0[18] = OBJC_IVAR____TtC5Books19BookReaderPresenter_viewModel;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_100009864(Strong + 184, (v0 + 2));

    sub_10000E3E8(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_1006AF8E0;

    return sub_1004B0820(1);
  }

  if (!swift_weakLoadStrong())
  {
    v6 = v0[11];

    v7 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    goto LABEL_9;
  }

  v4 = v0[11];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v4);

  v5 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {

LABEL_9:
    sub_100007840(v0[11], &qword_100ADB1C0, &qword_10082A4E0);

    v8 = v0[1];

    return v8();
  }

  sub_100007840(v0[11], &qword_100ADB1C0, &qword_10082A4E0);
  sub_1006AC830();
  sub_1007A3B54();
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_1006AFC84;

  return sub_1004B1524(200000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1006AF8E0()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_1006AFA00, v3, v2);
}

uint64_t sub_1006AFA00()
{
  sub_1000074E0(v0 + 2);
  if (!swift_weakLoadStrong())
  {
    v3 = v0[11];

    v4 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    goto LABEL_5;
  }

  v1 = v0[11];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v1);

  v2 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {

LABEL_5:
    sub_100007840(v0[11], &qword_100ADB1C0, &qword_10082A4E0);

    v5 = v0[1];

    return v5();
  }

  sub_100007840(v0[11], &qword_100ADB1C0, &qword_10082A4E0);
  sub_1006AC830();
  sub_1007A3B54();
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_1006AFC84;

  return sub_1004B1524(200000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1006AFC84()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[10];
  v5 = v2[9];
  v6 = v2[8];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[16];
    v8 = v3[17];
    v9 = sub_1006C5AC0;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[16];
    v8 = v3[17];
    v9 = sub_1006AFE18;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1006AFE18()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1006AFE88(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 80);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10056D8CC(1);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1006AFF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  v5[4] = swift_task_alloc();
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = sub_1007A26F4();
  v5[9] = sub_1007A26E4();
  v6 = swift_task_alloc();
  v5[10] = v6;
  *v6 = v5;
  v6[1] = sub_1006B0044;

  return sub_1006AF1E8();
}

uint64_t sub_1006B0044()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1006B0180, v1, v0);
}

uint64_t sub_1006B0180()
{
  v1 = v0[2];

  v2 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 80);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  if (swift_weakLoadStrong())
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    v12 = v0[4];
    v8 = v0[3];

    sub_1006C56B4(v8, v5, type metadata accessor for OverlayViewModel.Overlay);
    v9 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    sub_1000077D8(v5, v6, &qword_100ADB1C0, &qword_10082A4E0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v7);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000077D8(v6, v12, &qword_100ADB1C0, &qword_10082A4E0);

    sub_10079B9B4();
    sub_100461420(v7);

    sub_100007840(v7, &qword_100ADB1C0, &qword_10082A4E0);
    sub_100007840(v6, &qword_100ADB1C0, &qword_10082A4E0);
    sub_100007840(v5, &qword_100ADB1C0, &qword_10082A4E0);
  }

  v10 = v0[1];

  return v10();
}

double sub_1006B041C()
{
  v0 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 112);

    swift_getKeyPath();
    v20 = v4;
    sub_1006C10D4(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A14();

    swift_beginAccess();
    v5 = *(v4 + 296);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100214FD4(v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = swift_weakLoadStrong();
  if (v13)
  {
    v14 = *(v13 + 168);

    v15 = *(v14 + 16);
    v16 = sub_1007A2744();
    (*(*(v16 - 8) + 56))(v2, 1, 1, v16);
    sub_1007A26F4();
    swift_retain_n();

    v17 = sub_1007A26E4();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = &protocol witness table for MainActor;
    *(v18 + 32) = v15;
    *(v18 + 40) = v6;
    *(v18 + 48) = v8;
    *(v18 + 56) = v10;
    *(v18 + 64) = v12;
    *(v18 + 72) = 258;
    *(v18 + 74) = v21;
    *(v18 + 78) = v22;
    *(v18 + 88) = 0;
    *(v18 + 96) = 0;
    *(v18 + 80) = 0;
    *(v18 + 104) = 1;
    sub_1003457A0(0, 0, v2, &unk_10083DBD0, v18);
  }

  return result;
}

double sub_1006B06C8()
{
  v0 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 112);

    swift_getKeyPath();
    v20 = v4;
    sub_1006C10D4(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A14();

    swift_beginAccess();
    v5 = *(v4 + 297);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10021529C(v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = swift_weakLoadStrong();
  if (v13)
  {
    v14 = *(v13 + 168);

    v15 = *(v14 + 16);
    v16 = sub_1007A2744();
    (*(*(v16 - 8) + 56))(v2, 1, 1, v16);
    sub_1007A26F4();
    swift_retain_n();

    v17 = sub_1007A26E4();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = &protocol witness table for MainActor;
    *(v18 + 32) = v15;
    *(v18 + 40) = v6;
    *(v18 + 48) = v8;
    *(v18 + 56) = v10;
    *(v18 + 64) = v12;
    *(v18 + 72) = 258;
    *(v18 + 74) = v21;
    *(v18 + 78) = v22;
    *(v18 + 88) = 0;
    *(v18 + 96) = 0;
    *(v18 + 80) = 0;
    *(v18 + 104) = 1;
    sub_1003457A0(0, 0, v2, &unk_10083DBA0, v18);
  }

  return result;
}

uint64_t sub_1006B0974(uint64_t a1)
{
  v1 = sub_1007A1D04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);

  *v4 = sub_1007A2D74();
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v5 = sub_1007A1D34();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {

    sub_1006B0AB8(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1006B0AB8(uint64_t a1)
{
  v1 = type metadata accessor for State(0);
  __chkstk_darwin(v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(*(Strong + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
    v7 = Strong;

    v8 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    sub_1006C56B4(v6 + v8, v3, type metadata accessor for State);
    v3[*(v1 + 92)] = (v3[*(v1 + 92)] & 1) == 0;
    sub_100444C5C(v3);
  }

  return result;
}

uint64_t sub_1006B0BD8()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A14();

    v2 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType);

    if (v2 == 1)
    {
      result = sub_1006AB6C4();
      if (result)
      {
        return result;
      }

      LOBYTE(result) = 1;
      return sub_1006B0CE4(result);
    }
  }

  v4 = sub_1006AB6C4();
  result = 0;
  if (v4 == 2 || (v4 & 1) != 0)
  {
    return sub_1006B0CE4(result);
  }

  return result;
}

void *sub_1006B0CE4(char a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = type metadata accessor for OverlayViewModel.Overlay(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  v33[1] = &off_100A2BAD8;
  v14 = swift_unknownObjectWeakInit();
  sub_100303A28(v14, v32);
  result = swift_unknownObjectUnownedLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = result;
  v30 = v8;
  v31 = v6;
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v17 = result;
  sub_1006C111C(v33);
  type metadata accessor for BookmarkNotesModule();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1006C1170(v32, v18 + 16);
  *(v18 + 32) = 256;
  *(v18 + 34) = 0;
  swift_unknownObjectWeakAssign();

  *(v18 + 48) = v17;
  swift_unownedRetain();

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = a1 & 1;
    if (*(Strong + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType) == (a1 & 1))
    {
      *(Strong + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType) = v21;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v29[1] = v7;
      v29[2] = v29;
      __chkstk_darwin(KeyPath);
      v29[-2] = v20;
      LOBYTE(v29[-1]) = v21;
      v33[0] = v20;
      sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);

      sub_100797A04();
    }
  }

  else
  {
  }

  *v13 = v18;
  v13[8] = 0;
  swift_storeEnumTagMultiPayload();
  v23 = sub_1007A2744();
  v24 = v31;
  (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
  sub_1006C56B4(v13, v10, type metadata accessor for OverlayViewModel.Overlay);
  sub_1007A26F4();

  v25 = v2;
  v26 = sub_1007A26E4();
  v27 = (*(v30 + 80) + 40) & ~*(v30 + 80);
  v28 = swift_allocObject();
  v28[2] = v26;
  v28[3] = &protocol witness table for MainActor;
  v28[4] = v25;
  sub_1006C5144(v10, v28 + v27, type metadata accessor for OverlayViewModel.Overlay);
  sub_1003457A0(0, 0, v24, &unk_10083DCA8, v28);

  return sub_1006C571C(v13, type metadata accessor for OverlayViewModel.Overlay);
}

uint64_t sub_1006B1160()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for OverlayViewModel.Overlay(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v22 - v10);
  v12 = *&v0[OBJC_IVAR____TtC5Books19BookReaderPresenter_shareModuleFactory];
  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  ObjectType = swift_getObjectType();
  type metadata accessor for ShareModule();
  *v11 = sub_10051CACC(v14, ObjectType, v13);
  swift_storeEnumTagMultiPayload();
  v16 = sub_1007A2744();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  sub_1006C56B4(v11, v8, type metadata accessor for OverlayViewModel.Overlay);
  sub_1007A26F4();
  swift_retain_n();
  swift_unknownObjectRetain();
  v17 = v1;
  v18 = sub_1007A26E4();
  v19 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v17;
  sub_1006C5144(v8, v20 + v19, type metadata accessor for OverlayViewModel.Overlay);
  sub_1003457A0(0, 0, v4, &unk_10083DC10, v20);

  return sub_1006C571C(v11, type metadata accessor for OverlayViewModel.Overlay);
}

double sub_1006B141C(uint64_t a1)
{
  v2 = sub_1004A8620();
  sub_1004A8804((v2 & 1) == 0);
  v3 = *(a1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v3 + 80);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(ObjectType, v5);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1006B14B4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v2 - 8);
  v29 = v27 - v3;
  v4 = type metadata accessor for OverlayViewModel.Overlay(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v27[1] = v6;
  v28 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  v10 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v10 - 8);
  v12 = (v27 - v11);
  if (swift_weakLoadStrong())
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v12);

    if ((*(v5 + 48))(v12, 1, v4) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      result = sub_1006C571C(v12, type metadata accessor for OverlayViewModel.Overlay);
      if (EnumCaseMultiPayload == 1)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  sub_100007840(v12, &qword_100ADB1C0, &qword_10082A4E0);
LABEL_7:
  sub_1006C10D4(&qword_100AF2548, type metadata accessor for BookReaderPresenter, &unk_10083D878);
  v15 = sub_1007A19F4();
  Strong = swift_weakLoadStrong();
  v17 = v5;
  if (Strong)
  {
    v18 = *(Strong + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookLanguage);
    v19 = *(Strong + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookLanguage + 8);
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  *v9 = v15;
  *(v9 + 4) = 0;
  *(v9 + 2) = v18;
  *(v9 + 3) = v19;
  swift_storeEnumTagMultiPayload();
  v20 = sub_1007A2744();
  v21 = v29;
  (*(*(v20 - 8) + 56))(v29, 1, 1, v20);
  v22 = v28;
  sub_1006C56B4(v9, v28, type metadata accessor for OverlayViewModel.Overlay);
  sub_1007A26F4();

  v23 = v1;
  swift_retain_n();
  v24 = sub_1007A26E4();
  v25 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v26 = swift_allocObject();
  v26[2] = v24;
  v26[3] = &protocol witness table for MainActor;
  v26[4] = v23;
  sub_1006C5144(v22, v26 + v25, type metadata accessor for OverlayViewModel.Overlay);
  sub_1003457A0(0, 0, v21, &unk_10083DC78, v26);

  return sub_1006C571C(v9, type metadata accessor for OverlayViewModel.Overlay);
}

double sub_1006B1974(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 80);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  swift_getObjectType();
  sub_1007A1364();
  sub_1007A1374();
  return sub_1006B06C8();
}

uint64_t sub_1006B1A34(uint64_t a1, uint64_t a2)
{
  v3 = sub_1007A1874();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v4 + 16))(v6, a2, v3);
  return sub_1007A13D4();
}

uint64_t sub_1006B1B80()
{
  result = sub_1006AB6C4();
  if (result == 2 || (result & 1) != 0)
  {

    return sub_1006B0CE4(0);
  }

  return result;
}

uint64_t sub_1006B1BC8()
{
  result = sub_1006AB6C4();
  if ((result & 1) == 0)
  {

    return sub_1006B0CE4(1);
  }

  return result;
}

uint64_t sub_1006B1CE4(char a1)
{
  v2 = sub_1007A0404();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1007A0374();
  }

  else
  {
    sub_1007A0394();
  }

  v6 = sub_1007079BC(v5);
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_1006B1DDC(char a1)
{
  v2 = sub_1007A0404();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1007A0374();
  }

  else
  {
    sub_1007A0394();
  }

  sub_1004A9D34(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1006B1EC8()
{
  v1 = sub_1007A1D04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor];
  *(v5 + OBJC_IVAR____TtC5Books20BookReaderInteractor_isOpening) = 0;
  *(v5 + OBJC_IVAR____TtC5Books20BookReaderInteractor_openingToLocation) = 0;
  sub_1005B63DC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_getKeyPath();
    v14 = v7;
    sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A14();

    sub_10079B904();
    if (v14 != 1)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v13 - 2) = v7;
      *(&v13 - 8) = 1;
      v14 = v7;
      sub_100797A04();
    }
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v10 = v0;
  *v4 = sub_1007A2D74();
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v11 = sub_1007A1D34();
  result = (*(v2 + 8))(v4, v1);
  if (v11)
  {

    sub_1006B21AC(*(v9 + 16));
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1006B21AC(uint64_t a1)
{

  sub_1004455C4();

  return result;
}

char *sub_1006B21F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v35 = a7;
  v36 = a6;
  v37 = a1;
  v12 = sub_10079F594();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v7[OBJC_IVAR____TtC5Books19BookReaderPresenter_annotationProviderService];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v34 = *(v16 + 1);
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      ObjectType = swift_getObjectType();
      v33 = type metadata accessor for BookReaderAccessoryHighlightsController(0);
      v30 = a3;
      v21 = a4;
      v22 = *&v7[OBJC_IVAR____TtC5Books19BookReaderPresenter_readingSettingsProvider];
      v31 = *&v7[OBJC_IVAR____TtC5Books19BookReaderPresenter_readingSettingsProvider + 8];
      (*(v13 + 16))(v15, v35, v12);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v23 = v7;
      v24 = sub_100737ECC(v37, a2, v30, v22, v31, v18, v34, v20, v21, a5, v7, &off_100A2BB38, v15, ObjectType, v36);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      sub_1006C10D4(&qword_100AF2608, type metadata accessor for BookReaderAccessoryHighlightsController, &protocol conformance descriptor for BookReaderAccessoryHighlightsController);
      sub_1006C10D4(&qword_100AF2610, type metadata accessor for BookReaderAccessoryHighlightsController, &protocol conformance descriptor for BookReaderAccessoryHighlightsController);
      return v24;
    }

    swift_unknownObjectRelease();
  }

  if (qword_100AD1AE0 != -1)
  {
    swift_once();
  }

  v26 = sub_10079ACE4();
  sub_100008B98(v26, qword_100AF23F0);
  v27 = sub_10079ACC4();
  v28 = sub_1007A29B4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Could not create highlights controller, missing annotation provider services", v29, 2u);
  }

  return 0;
}

id sub_1006B252C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v115 = a4;
  v111 = a3;
  v112 = a2;
  v113 = a1;
  v7 = sub_1001F1160(&qword_100AF4EA0, &unk_10083DD20);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v76 - v9;
  v106 = sub_1007A2D54();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&qword_100AF2568, &unk_10083DCF0);
  v101 = *(v12 - 8);
  v102 = v12;
  __chkstk_darwin(v12);
  v100 = v76 - v13;
  v14 = sub_1001F1160(&qword_100AF2570, &unk_100842860);
  v107 = *(v14 - 8);
  v108 = v14;
  __chkstk_darwin(v14);
  v105 = v76 - v15;
  v16 = sub_1001F1160(&qword_100AD95B0, &unk_100816930);
  __chkstk_darwin(v16 - 8);
  v98 = v76 - v17;
  v18 = sub_10079EF54();
  v109 = *(v18 - 8);
  v110 = v18;
  __chkstk_darwin(v18);
  v97 = v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  __chkstk_darwin(v20 - 8);
  v99 = v76 - v21;
  v93 = sub_1001F1160(&qword_100AF25B8, &unk_10083DD30);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v23 = v76 - v22;
  v96 = sub_1001F1160(&unk_100AF25C0, &qword_100842870);
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = v76 - v24;
  v25 = sub_10079F594();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = &v5[OBJC_IVAR____TtC5Books19BookReaderPresenter_annotationProviderService];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = *(v29 + 1);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v82 = v23;
      v84 = v10;
      v85 = v8;
      v86 = v7;
      v87 = v5;
      v32 = *&v5[OBJC_IVAR____TtC5Books19BookReaderPresenter_readingSettingsProvider + 8];
      v83 = v26;
      v88 = *(v26 + 16);
      v89 = Strong;
      v88(v28, a5, v25);
      v79 = type metadata accessor for BookReaderAccessoryNotesController(0);
      v33 = objc_allocWithZone(v79);
      v91 = v25;
      v34 = &v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_delegate];
      *&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      v35 = &v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_paginatingService];
      *&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_paginatingService + 8] = 0;
      swift_unknownObjectWeakInit();
      v78 = v30;
      v36 = &v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_readingSettingsProvider];
      *&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_readingSettingsProvider + 8] = 0;
      swift_unknownObjectWeakInit();
      v37 = &v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_annotationProviderService];
      *&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_annotationProviderService + 8] = 0;
      swift_unknownObjectWeakInit();
      v90 = v28;
      swift_weakInit();
      v38 = *(v109 + 56);
      v81 = v109 + 56;
      v80 = v38;
      v38(&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_currentTheme], 1, 1, v110);
      *&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_noteOrder] = _swiftEmptyArrayStorage;
      *&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_notes] = _swiftEmptyDictionarySingleton;
      *&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_cancellables] = &_swiftEmptySetSingleton;
      v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_layoutIsReady] = 0;
      *&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_documentOrdinal] = v113;
      *(v35 + 1) = v111;
      swift_unknownObjectWeakAssign();
      *(v36 + 1) = v32;
      swift_unknownObjectWeakAssign();
      *(v37 + 1) = v78;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectWeakAssign();
      swift_weakAssign();
      *(v34 + 1) = &off_100A2BB50;
      swift_unknownObjectWeakAssign();
      v88(&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_adornmentState], v90, v91);
      v117.receiver = v33;
      v117.super_class = v79;
      v39 = objc_msgSendSuper2(&v117, "init");
      v40 = qword_100AD1C20;
      v87 = v39;
      if (v40 != -1)
      {
        swift_once();
      }

      v41 = sub_10079ACE4();
      sub_100008B98(v41, qword_100AF6F70);
      v42 = sub_10079ACC4();
      v43 = sub_1007A29A4();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 134217984;
        *(v44 + 4) = v113;
        _os_log_impl(&_mh_execute_header, v42, v43, "Created for ordinal: %ld", v44, 0xCu);
      }

      swift_getObjectType();
      v116 = sub_1007A1394();
      sub_1001F1160(&unk_100AEB8B0, &unk_10083DD40);
      v88 = &protocol conformance descriptor for AnyPublisher<A, B>;
      sub_100005920(&unk_100AF25D0, &unk_100AEB8B0, &unk_10083DD40, &protocol conformance descriptor for AnyPublisher<A, B>);
      v45 = v82;
      sub_10079BAD4();

      v76[1] = sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
      v46 = sub_1007A2D74();
      v116 = v46;
      v78 = sub_1007A2D24();
      v47 = *(v78 - 8);
      v77 = *(v47 + 56);
      v79 = (v47 + 56);
      v48 = v99;
      v77(v99, 1, 1, v78);
      sub_100005920(&unk_100AF4ED0, &qword_100AF25B8, &unk_10083DD30, &protocol conformance descriptor for Publishers.Drop<A>);
      v76[2] = sub_100017E1C();
      v49 = v94;
      v50 = v93;
      sub_10079BAB4();
      sub_100007840(v48, &qword_100AD7EB0, &qword_10080EFD0);

      (*(v92 + 8))(v45, v50);
      swift_allocObject();
      v51 = v87;
      swift_unknownObjectWeakInit();
      sub_100005920(&unk_100AF25E0, &unk_100AF25C0, &qword_100842870, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v52 = v51;
      v53 = v96;
      sub_10079BB04();

      (*(v95 + 8))(v49, v53);
      swift_beginAccess();
      sub_10079B854();
      swift_endAccess();

      v54 = v97;
      sub_1007A1344();
      v56 = v109;
      v55 = v110;
      v57 = v98;
      (*(v109 + 16))(v98, v54, v110);
      v80(v57, 0, 1, v55);
      v58 = OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_currentTheme;
      swift_beginAccess();
      sub_10069802C(v57, v52 + v58);
      swift_endAccess();
      sub_10077F294();
      (*(v56 + 8))(v54, v55);
      sub_1001F1160(&unk_100AF2580, &unk_10083DD08);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_100812CF0;
      swift_getObjectType();
      *(v59 + 32) = sub_10079FA84();
      *(v59 + 40) = sub_10079FA74();
      *(v59 + 48) = sub_10079F794();
      sub_1001F1160(&unk_100AEA1E0, &qword_10083C8D0);
      sub_100005920(&qword_100AF2590, &unk_100AEA1E0, &qword_10083C8D0, v88);
      v60 = v100;
      sub_10079B814();
      v61 = v103;
      sub_1007A2D34();
      v62 = sub_1007A2D74();
      v116 = v62;
      v77(v48, 1, 1, v78);
      sub_100005920(&unk_100AF4EE0, &qword_100AF2568, &unk_10083DCF0, &protocol conformance descriptor for Publishers.MergeMany<A>);
      v63 = v105;
      v64 = v102;
      sub_10079BAC4();
      sub_100007840(v48, &qword_100AD7EB0, &qword_10080EFD0);

      (*(v104 + 8))(v61, v106);
      v65 = v87;
      (*(v101 + 8))(v60, v64);
      v66 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v67 = swift_allocObject();
      *(v67 + 16) = sub_1006C16B4;
      *(v67 + 24) = v66;
      sub_100005920(&qword_100AF2598, &qword_100AF2570, &unk_100842860, &protocol conformance descriptor for Publishers.Debounce<A, B>);
      v68 = v108;
      sub_10079BB04();

      (*(v107 + 8))(v63, v68);
      swift_beginAccess();
      sub_10079B854();
      swift_endAccess();

      v116 = sub_10079F774();
      sub_1001F1160(&unk_100AEA190, &qword_1008165F8);
      sub_100005920(&unk_100AF25F0, &unk_100AEA190, &qword_1008165F8, v88);
      v69 = v84;
      sub_10079BA74();

      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_100005920(&unk_100AF4EF0, &qword_100AF4EA0, &unk_10083DD20, &protocol conformance descriptor for Publishers.Map<A, B>);
      v70 = v86;
      sub_10079BB04();

      (*(v85 + 8))(v69, v70);
      swift_beginAccess();
      sub_10079B854();
      swift_endAccess();

      sub_10077F294();
      swift_unknownObjectRelease();

      (*(v83 + 8))(v90, v91);
      sub_1006C10D4(&qword_100AF2600, type metadata accessor for BookReaderAccessoryNotesController, &unk_100845D70);
      return v65;
    }

    swift_unknownObjectRelease();
  }

  if (qword_100AD1AE0 != -1)
  {
    swift_once();
  }

  v71 = sub_10079ACE4();
  sub_100008B98(v71, qword_100AF23F0);
  v72 = sub_10079ACC4();
  v73 = sub_1007A29B4();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "Could not create notes controller, missing annotation provider services", v74, 2u);
  }

  return 0;
}

id sub_1006B370C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t, uint64_t), uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v94 = a8;
  ObjectType = a7;
  v96 = a6;
  v93 = a4;
  v113 = a3;
  v109 = a2;
  v97 = a1;
  v11 = sub_1007A1D04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1001F1160(&qword_100AF1958, &unk_10083C8B0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v77 - v17;
  v19 = sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  __chkstk_darwin(v19 - 8);
  v107 = &v77 - v20;
  v21 = sub_1007A2D54();
  v102 = *(v21 - 8);
  v103 = v21;
  __chkstk_darwin(v21);
  v101 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1001F1160(&qword_100AF2568, &unk_10083DCF0);
  v99 = *(v23 - 8);
  v100 = v23;
  __chkstk_darwin(v23);
  v98 = &v77 - v24;
  v25 = sub_1001F1160(&qword_100AF2570, &unk_100842860);
  v105 = *(v25 - 8);
  v106 = v25;
  __chkstk_darwin(v25);
  v104 = &v77 - v26;
  v110 = sub_10079ACE4();
  v92 = *(v110 - 8);
  __chkstk_darwin(v110);
  v91 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10079F594();
  v108 = *(v28 - 8);
  __chkstk_darwin(v28);
  v112 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v9 + OBJC_IVAR____TtC5Books19BookReaderPresenter_annotationProviderService;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_8;
  }

  v31 = *(v30 + 8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_unknownObjectRelease();
LABEL_8:
    if (qword_100AD1AE0 != -1)
    {
      swift_once();
    }

    sub_100008B98(v110, qword_100AF23F0);
    v74 = sub_10079ACC4();
    v75 = sub_1007A29B4();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Could not create notes controller, missing annotation provider services", v76, 2u);
    }

    return 0;
  }

  v82 = v18;
  v83 = v16;
  v84 = v15;
  v85 = v14;
  v86 = v12;
  v87 = v11;
  v81 = a9;
  v80 = *(v108 + 16);
  v88 = Strong;
  v80(v112, a5, v28);
  v90 = *(*(v9 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
  v33 = type metadata accessor for BookReaderAccessoryAccessibilityController(0);
  v79 = v33;
  v34 = objc_allocWithZone(v33);
  v115 = v33;

  sub_1001F1160(&qword_100AF2578, &qword_10083DD00);
  sub_1007A22E4();
  sub_10079ACD4();
  v89 = v28;
  swift_unknownObjectWeakInit();
  v35 = &v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_paginatingService];
  *&v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_paginatingService + 8] = 0;
  swift_unknownObjectWeakInit();
  v36 = &v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_annotationProviderService];
  *&v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_annotationProviderService + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v78 = v31;
  v37 = &v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_bookContentAccessoryAccessibilityHandler];
  *&v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_bookContentAccessoryAccessibilityHandler + 8] = 0;
  swift_unknownObjectWeakInit();
  v38 = &v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_pageNumberProvider];
  *&v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_pageNumberProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v39 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_currentLocation;
  v40 = sub_10079FD44();
  (*(*(v40 - 8) + 56))(&v34[v39], 1, 1, v40);
  v41 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_currentTheme;
  v42 = sub_10079EF54();
  (*(*(v42 - 8) + 56))(&v34[v41], 1, 1, v42);
  *&v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_noteOrder] = _swiftEmptyArrayStorage;
  *&v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_cancellables] = &_swiftEmptySetSingleton;
  v43 = v97;
  *&v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_documentOrdinal] = v97;
  *(v35 + 1) = v113;
  swift_unknownObjectWeakAssign();
  *(v36 + 1) = v78;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_weakAssign();
  *(v37 + 1) = v81;
  swift_unknownObjectWeakAssign();
  *(v38 + 1) = ObjectType;
  swift_unknownObjectWeakAssign();
  swift_weakAssign();
  v80(&v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_adornmentState], v112, v89);
  v116.receiver = v34;
  v116.super_class = v79;
  v44 = objc_msgSendSuper2(&v116, "init");
  v45 = v92;
  v46 = v91;
  v47 = v110;
  (*(v92 + 16))(v91, v44 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_logger, v110);
  v96 = v44;
  v48 = sub_10079ACC4();
  v49 = sub_1007A29A4();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    *(v50 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v48, v49, "Created for ordinal: %ld", v50, 0xCu);
  }

  (*(v45 + 8))(v46, v47);
  sub_1001F1160(&unk_100AF2580, &unk_10083DD08);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_10080EFF0;
  ObjectType = swift_getObjectType();
  *(v51 + 32) = sub_10079FA84();
  *(v51 + 40) = sub_10079FA74();
  v97 = sub_1001F1160(&unk_100AEA1E0, &qword_10083C8D0);
  v110 = sub_100005920(&qword_100AF2590, &unk_100AEA1E0, &qword_10083C8D0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v52 = v98;
  sub_10079B814();
  v53 = v101;
  sub_1007A2D34();
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v54 = sub_1007A2D74();
  v115 = v54;
  v55 = sub_1007A2D24();
  v56 = *(v55 - 8);
  v93 = *(v56 + 56);
  v94 = v56 + 56;
  v57 = v107;
  v93(v107, 1, 1, v55);
  sub_100005920(&unk_100AF4EE0, &qword_100AF2568, &unk_10083DCF0, &protocol conformance descriptor for Publishers.MergeMany<A>);
  v92 = sub_100017E1C();
  v58 = v104;
  v59 = v100;
  sub_10079BAC4();
  sub_100007840(v57, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v102 + 8))(v53, v103);
  (*(v99 + 8))(v52, v59);
  v60 = swift_allocObject();
  v61 = v96;
  swift_unknownObjectWeakInit();
  v62 = swift_allocObject();
  *(v62 + 16) = sub_1006C169C;
  *(v62 + 24) = v60;
  sub_100005920(&qword_100AF2598, &qword_100AF2570, &unk_100842860, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v63 = v61;
  v64 = v106;
  sub_10079BB04();

  (*(v105 + 8))(v58, v64);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v115 = sub_10079F9F4();
  v65 = sub_1007A2D74();
  v114 = v65;
  v93(v57, 1, 1, v55);
  v66 = v82;
  sub_10079BAB4();
  sub_100007840(v57, &qword_100AD7EB0, &qword_10080EFD0);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&qword_100AF25A0, &qword_100AF1958, &unk_10083C8B0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v67 = v84;
  sub_10079BB04();

  (*(v83 + 8))(v66, v67);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v68 = swift_allocObject();
  *(v68 + 16) = v90;
  *(v68 + 24) = v63;

  v69 = sub_1007A2D74();
  v70 = v85;
  *v85 = v69;
  v71 = v86;
  v72 = v87;
  (*(v86 + 104))(v70, enum case for DispatchPredicate.onQueue(_:), v87);
  LOBYTE(v60) = sub_1007A1D34();
  result = (*(v71 + 8))(v70, v72);
  if (v60)
  {

    sub_1004BC8F8(*(v68 + 16), *(v68 + 24));

    sub_1004BBB70();
    sub_1004BC620();
    swift_unknownObjectRelease();

    (*(v108 + 8))(v112, v89);
    sub_1006C10D4(&qword_100AF25A8, type metadata accessor for BookReaderAccessoryAccessibilityController, &unk_10082AAE0);
    return v63;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B46C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 344) = a5;
  *(v5 + 304) = a4;
  sub_1007A26F4();
  *(v5 + 312) = sub_1007A26E4();
  v7 = sub_1007A2694();
  *(v5 + 320) = v7;
  *(v5 + 328) = v6;

  return _swift_task_switch(sub_1006B4760, v7, v6);
}

uint64_t sub_1006B4760()
{
  sub_10022FB30((v0 + 16));
  if (*(v0 + 208))
  {
    v1 = swift_task_alloc();
    *(v0 + 336) = v1;
    *v1 = v0;
    v1[1] = sub_1006B484C;
    v2 = *(v0 + 344);

    return sub_10022B4D0(v2);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1006B484C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;

  v4 = *(v3 + 328);
  v5 = *(v3 + 320);

  return _swift_task_switch(sub_1006B4980, v5, v4);
}

uint64_t sub_1006B4980()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1006B4A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    a6(a1, 1, a2, a3);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1006B4AA8(uint64_t a1, void *a2)
{
  v4 = sub_1001F1160(&unk_100ADA050, &qword_100833F70);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1004FA248;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A2BFD8;
  v11 = _Block_copy(aBlock);

  [a2 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1006B4C5C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1007A1D04();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v12 = v3;
  v13 = a1;
  sub_1000260E8(a2, a3);
  *v10 = sub_1007A2D74();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v14 = sub_1007A1D34();
  result = (*(v8 + 8))(v10, v7);
  if (v14)
  {

    sub_1006B4DF0(*(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40));
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1006B4DF0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1005670B0(a2, 1, a3, a4);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1006B4E74()
{
  v1[2] = v0;
  v1[3] = sub_1007A26F4();
  v1[4] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_1006B4F10, v3, v2);
}

uint64_t sub_1006B4F10()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC5Books19BookReaderPresenter_presentedExpandedContentViewController);
  v0[7] = v1;
  if (v1)
  {
    v2 = v1;
    v0[8] = sub_1007A26E4();
    v4 = sub_1007A2694();
    v0[9] = v4;
    v0[10] = v3;

    return _swift_task_switch(sub_1006B4FF0, v4, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1006B4FF0(uint64_t a1)
{
  v2 = v1[7];
  v3 = sub_1007A26E4();
  v1[11] = v3;
  v4 = swift_task_alloc();
  v1[12] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[13] = v5;
  *v5 = v1;
  v5[1] = sub_1006B50F8;

  return withCheckedContinuation<A>(isolation:function:_:)(v5, v3, &protocol witness table for MainActor, 0xD000000000000012, 0x80000001008E68E0, sub_1006C0FCC, v4, &type metadata for () + 8);
}

uint64_t sub_1006B50F8()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_1006B5258, v3, v2);
}

uint64_t sub_1006B5258()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1006B52BC, v1, v2);
}

uint64_t sub_1006B52BC()
{
  v1 = *(v0 + 56);

  sub_1006A2D08(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006B5330()
{
  v1[2] = v0;
  v1[3] = sub_1007A26F4();
  v1[4] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_1006B53CC, v3, v2);
}

uint64_t sub_1006B53CC()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController;
  v0[7] = OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController;
  v3 = *(v1 + v2);
  v0[8] = v3;
  if (v3)
  {
    v4 = v3;
    v5 = [v4 presentingViewController];
    if (v5)
    {

      v6 = v4;
      v0[9] = sub_1007A26E4();
      v8 = sub_1007A2694();
      v0[10] = v8;
      v0[11] = v7;

      return _swift_task_switch(sub_1006B54E4, v8, v7);
    }
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1006B54E4(uint64_t a1)
{
  v2 = v1[8];
  v3 = sub_1007A26E4();
  v1[12] = v3;
  v4 = swift_task_alloc();
  v1[13] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[14] = v5;
  *v5 = v1;
  v5[1] = sub_1006B55EC;

  return withCheckedContinuation<A>(isolation:function:_:)(v5, v3, &protocol witness table for MainActor, 0xD000000000000012, 0x80000001008E68E0, sub_1006C5ADC, v4, &type metadata for () + 8);
}

uint64_t sub_1006B55EC()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1006B574C, v3, v2);
}

uint64_t sub_1006B574C()
{
  v1 = v0[8];

  v2 = v0[5];
  v3 = v0[6];

  return _swift_task_switch(sub_1006B57B4, v2, v3);
}

uint64_t sub_1006B57B4()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[2];

  v4 = *(v3 + v1);
  *(v3 + v1) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_1006B5834()
{
  v0[2] = sub_1007A26F4();
  v0[3] = sub_1007A26E4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1006B58E0;

  return sub_1006B4E74();
}

uint64_t sub_1006B58E0()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1006C5AE0, v1, v0);
}

uint64_t sub_1006B5A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  sub_1007A26F4();
  v6[11] = sub_1007A26E4();
  v8 = sub_1007A2694();
  v6[12] = v8;
  v6[13] = v7;

  return _swift_task_switch(sub_1006B5AB8, v8, v7);
}

uint64_t sub_1006B5AB8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_1006B5BDC;

    return sub_1006AF1E8();
  }

  else
  {

    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      sub_1006B5DB0(*(v0 + 72), *(v0 + 80));
    }

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1006B5BDC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return _swift_task_switch(sub_1006B5D1C, v4, v3);
}

uint64_t sub_1006B5D1C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1006B5DB0(*(v0 + 72), *(v0 + 80));
  }

  v3 = *(v0 + 8);

  return v3();
}

double sub_1006B5DB0(void *a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC5Books19BookReaderPresenter_expandedContentFrame];
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 1) = v5;
  v4[32] = *(a2 + 32);
  [a1 setTransitioningDelegate:v2];
  v6 = a1;
  sub_1006A2D08(a1);
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = v2;
    sub_1005670B0(v6, 1, sub_1006C4C78, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = v2;
  }

  return result;
}

uint64_t sub_1006B5E98(void *a1)
{
  v2 = sub_1007A1D04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v7 = a1;
  *v5 = sub_1007A2D74();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  LOBYTE(a1) = sub_1007A1D34();
  result = (*(v3 + 8))(v5, v2);
  if (a1)
  {

    sub_1006B5FFC(*(v6 + 16));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B5FFC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

uint64_t sub_1006B6078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  sub_1001F1160(&unk_100AD6170, &qword_10083DEE0);
  v6[16] = swift_task_alloc();
  v7 = sub_1001F1160(&unk_100AE6A30, &unk_100812750);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  sub_1007A26F4();
  v6[20] = sub_1007A26E4();
  v9 = sub_1007A2694();
  v6[21] = v9;
  v6[22] = v8;

  return _swift_task_switch(sub_1006B61B4, v9, v8);
}

uint64_t sub_1006B61B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 184) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 192) = v2;
    *v2 = v0;
    v2[1] = sub_1006B652C;

    return sub_1006AF1E8();
  }

  else
  {

    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = [*(v0 + 112) popoverPresentationController];
      if (v6)
      {
        v7 = v6;
        v8 = swift_weakLoadStrong();
        if (v8)
        {
          v9 = v8;
          swift_getKeyPath();
          *(v0 + 96) = v9;
          sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
          sub_100797A14();

          v10 = *(v9 + OBJC_IVAR____TtC5Books19BookReaderViewModel__backgroundColor);
        }

        else
        {
          v10 = 0;
        }

        v11 = *(v0 + 136);
        v12 = *(v0 + 144);
        v14 = *(v0 + 120);
        v13 = *(v0 + 128);
        v15 = *(v0 + 112);
        [v7 setBackgroundColor:v10];

        [v7 bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:v15];
        [v7 _setCentersPopoverIfSourceViewNotSet:1];
        sub_1000077D8(v14, v13, &unk_100AD6170, &qword_10083DEE0);
        if ((*(v12 + 48))(v13, 1, v11) == 1)
        {
          v16 = *(v0 + 128);

          sub_100007840(v16, &unk_100AD6170, &qword_10083DEE0);
        }

        else
        {
          v18 = *(v0 + 144);
          v17 = *(v0 + 152);
          v19 = *(v0 + 136);
          (*(v18 + 32))(v17, *(v0 + 128), v19);
          sub_10079FEB4();
          [v7 setSourceRect:{*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40)}];
          v20 = sub_10079FEF4();
          [v7 setSourceView:v20];

          (*(v18 + 8))(v17, v19);
        }
      }

      v21 = *(v0 + 112);
      v22 = *&v5[OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController];
      *&v5[OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController] = v21;

      v23 = v21;
      sub_1006B6948();
    }

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1006B652C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return _swift_task_switch(sub_1006B666C, v4, v3);
}

uint64_t sub_1006B666C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [*(v0 + 112) popoverPresentationController];
    if (v3)
    {
      v4 = v3;
      v5 = swift_weakLoadStrong();
      if (v5)
      {
        v6 = v5;
        swift_getKeyPath();
        *(v0 + 96) = v6;
        sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
        sub_100797A14();

        v7 = *(v6 + OBJC_IVAR____TtC5Books19BookReaderViewModel__backgroundColor);
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 136);
      v9 = *(v0 + 144);
      v11 = *(v0 + 120);
      v10 = *(v0 + 128);
      v12 = *(v0 + 112);
      [v4 setBackgroundColor:v7];

      [v4 bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:v12];
      [v4 _setCentersPopoverIfSourceViewNotSet:1];
      sub_1000077D8(v11, v10, &unk_100AD6170, &qword_10083DEE0);
      if ((*(v9 + 48))(v10, 1, v8) == 1)
      {
        v13 = *(v0 + 128);

        sub_100007840(v13, &unk_100AD6170, &qword_10083DEE0);
      }

      else
      {
        v15 = *(v0 + 144);
        v14 = *(v0 + 152);
        v16 = *(v0 + 136);
        (*(v15 + 32))(v14, *(v0 + 128), v16);
        sub_10079FEB4();
        [v4 setSourceRect:{*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40)}];
        v17 = sub_10079FEF4();
        [v4 setSourceView:v17];

        (*(v15 + 8))(v14, v16);
      }
    }

    v18 = *(v0 + 112);
    v19 = *&v2[OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController];
    *&v2[OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController] = v18;

    v20 = v18;
    sub_1006B6948();
  }

  v21 = *(v0 + 8);

  return v21();
}

void sub_1006B6948()
{
  v1 = sub_1007A1D04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController;
  v6 = *&v0[OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController];
  if (v6)
  {
    v7 = v6;
    if ([v7 readyForDisplay])
    {
      v8 = swift_allocObject();
      *(v8 + 16) = v0;
      *(v8 + 24) = v7;
      sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
      v9 = v7;
      v10 = v0;
      *v4 = sub_1007A2D74();
      (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
      v11 = sub_1007A1D34();
      (*(v2 + 8))(v4, v1);
      if (v11)
      {

        sub_1006B8614(*(v8 + 16), *(v8 + 24));
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v12 = [v7 failedToLoad];

      if (v12)
      {
        v13 = *&v0[v5];
        *&v0[v5] = 0;
      }
    }
  }
}

uint64_t sub_1006B6B38@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_10079BC44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&qword_100AF2688, &qword_10083DE90);
  __chkstk_darwin(v4);
  v6 = &v30 - v5;
  v7 = sub_1001F1160(&unk_100AF2690, &qword_10083DE98);
  __chkstk_darwin(v7 - 8);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_getKeyPath();
    v33 = v16;
    sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A14();

    v17 = OBJC_IVAR____TtC5Books19BookReaderViewModel__themeColorScheme;
    swift_beginAccess();
    (*(v2 + 16))(v14, v16 + v17, v1);

    v18 = *(v2 + 56);
    v18(v14, 0, 1, v1);
  }

  else
  {
    v18 = *(v2 + 56);
    v18(v14, 1, 1, v1);
  }

  (*(v2 + 104))(v11, enum case for ColorScheme.dark(_:), v1);
  v18(v11, 0, 1, v1);
  v19 = *(v4 + 48);
  sub_1000077D8(v14, v6, &unk_100AF2690, &qword_10083DE98);
  sub_1000077D8(v11, &v6[v19], &unk_100AF2690, &qword_10083DE98);
  v20 = *(v2 + 48);
  if (v20(v6, 1, v1) == 1)
  {
    sub_100007840(v11, &unk_100AF2690, &qword_10083DE98);
    sub_100007840(v14, &unk_100AF2690, &qword_10083DE98);
    if (v20(&v6[v19], 1, v1) == 1)
    {
      sub_100007840(v6, &unk_100AF2690, &qword_10083DE98);
LABEL_12:
      v22 = &enum case for BookContentUserInterfaceStyle.dark(_:);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v21 = v31;
  sub_1000077D8(v6, v31, &unk_100AF2690, &qword_10083DE98);
  if (v20(&v6[v19], 1, v1) == 1)
  {
    sub_100007840(v11, &unk_100AF2690, &qword_10083DE98);
    sub_100007840(v14, &unk_100AF2690, &qword_10083DE98);
    (*(v2 + 8))(v21, v1);
LABEL_9:
    sub_100007840(v6, &qword_100AF2688, &qword_10083DE90);
    goto LABEL_10;
  }

  v23 = v30;
  (*(v2 + 32))(v30, &v6[v19], v1);
  sub_1006C10D4(&qword_100AEB098, &type metadata accessor for ColorScheme, &protocol conformance descriptor for ColorScheme);
  v24 = v21;
  v25 = sub_1007A2124();
  v26 = *(v2 + 8);
  v26(v23, v1);
  sub_100007840(v11, &unk_100AF2690, &qword_10083DE98);
  sub_100007840(v14, &unk_100AF2690, &qword_10083DE98);
  v26(v24, v1);
  sub_100007840(v6, &unk_100AF2690, &qword_10083DE98);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_10:
  v22 = &enum case for BookContentUserInterfaceStyle.light(_:);
LABEL_13:
  v27 = *v22;
  v28 = sub_10079F7E4();
  return (*(*(v28 - 8) + 104))(v32, v27, v28);
}

void sub_1006B70C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, double a9, uint64_t a10)
{
  v69 = a8;
  v73 = a7;
  v66 = a6;
  v72 = a5;
  v65 = a4;
  v71 = a3;
  v64 = a2;
  v70 = a1;
  v12 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v12 - 8);
  v68 = &v64 - v13;
  v14 = sub_10079EF54();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v64 - v19;
  v21 = sub_10079F7E4();
  v22 = *(v21 - 8);
  v79 = v21;
  v80 = v22;
  __chkstk_darwin(v21);
  v74 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v77 = &v64 - v25;
  sub_1006B6B38(&v64 - v25);
  v76 = sub_1007A07A4();
  swift_getObjectType();
  sub_1007A1344();
  v78 = sub_10079EE14();
  v26 = *(v15 + 8);
  v26(v20, v14);
  sub_1007A1344();
  v27 = sub_10079EF24();
  v26(v17, v14);
  v28 = v68;
  v29 = v69;
  sub_1006C10D4(&unk_100AF26A0, type metadata accessor for BookReaderPresenter, &unk_10083D900);
  v30 = sub_1007A0084();
  v31 = objc_allocWithZone(v30);
  v67 = v10;
  v32 = sub_1007A0074();
  sub_100009864(v29, v84);
  v82 = v30;
  v83 = &protocol witness table for FootnoteRouter;
  v81 = v32;
  v33 = objc_allocWithZone(sub_1007A0534());
  v75 = v32;
  v34 = sub_1007A0524();
  v35 = objc_allocWithZone(BKExpandedContentResource);
  v36 = [v35 init];
  sub_1000077D8(v70, v28, &unk_100AD5AC0, &unk_100811090);
  v37 = sub_1007969B4();
  v38 = *(v37 - 8);
  v40 = 0;
  if ((*(v38 + 48))(v28, 1, v37) != 1)
  {
    sub_100796944(v39);
    v40 = v41;
    (*(v38 + 8))(v28, v37);
  }

  [v36 setSourceURL:v40];

  if (v71)
  {
    v42 = sub_1007A2214();
    [v36 setResource:v42];
  }

  v43 = v78;
  if (v72)
  {
    v44 = sub_1007A2214();
  }

  else
  {
    v44 = 0;
  }

  [v36 setTitle:v44];

  if (v73)
  {
    v45 = sub_1007A2214();
  }

  else
  {
    v45 = 0;
  }

  [v36 setContentType:v45];

  [v36 setZoomScale:a9];
  sub_10000E3E8(v29, v29[3]);
  v46 = sub_10079EC14();
  [v36 setCacheItem:v46];

  v48 = v79;
  v47 = v80;
  v49 = v74;
  (*(v80 + 104))(v74, enum case for BookContentUserInterfaceStyle.dark(_:), v79);
  v50 = v77;
  v51 = sub_10079F7D4();
  v53 = *(v47 + 8);
  v52 = v47 + 8;
  v74 = v53;
  (v53)(v49, v48);
  v54 = objc_allocWithZone(BKFootnoteViewController2);
  v55 = v76;
  v56 = [v54 initWithResource:v36 stylesheetSet:v76 backgroundColor:v43 textColor:v27];
  v73 = v27;
  v57 = v56;
  [v56 setPresenter:v34];
  if (v57)
  {
    v72 = a10;
    if (v51)
    {
      v58 = 5;
    }

    else
    {
      v58 = 2;
    }

    [v57 setDelegate:v34];
    v80 = v52;
    sub_10000E3E8(v29, v29[3]);
    v59 = v57;
    [v59 setAllowsRemoteInspection:sub_10079EC54() & 1];

    v60 = objc_opt_self();
    v61 = v59;
    v62 = [v60 themeForEPUBTheme:v58];
    [v61 setTheme:v62];

    [v61 prepareForDisplay];
    (v74)(v50, v79);
    v63 = v61;
    sub_1006C0C08(v63, v72);
  }

  else
  {
    [0 prepareForDisplay];

    (v74)(v50, v48);
  }
}

void sub_1006B7838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _OWORD *a6)
{
  v28 = a6;
  v12 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;
  v15 = sub_10079F7E4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006B6B38(v18);
  v19 = sub_1006C35F8(v6, a1, a2, v18, a3, a4, a5);
  (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v20 = sub_1007A2744();
    (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1007A26F4();

    v22 = v19;
    v23 = sub_1007A26E4();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = &protocol witness table for MainActor;
    *(v24 + 32) = v21;
    *(v24 + 40) = v22;
    v25 = v28;
    v26 = v28[1];
    *(v24 + 48) = *v28;
    *(v24 + 64) = v26;
    *(v24 + 80) = *(v25 + 32);

    sub_1003457A0(0, 0, v14, &unk_10083DEC8, v24);
  }
}

void sub_1006B7A9C(uint64_t a1@<X0>, char a2@<W3>, BOOL *a3@<X8>)
{
  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_100796944(v7);
      v10 = v9;
      [v8 assetViewController:a1 requestOpenURL:v9 likelyUserInitiated:a2 & 1];
      swift_unknownObjectRelease();
    }
  }

  *a3 = a1 == 0;
}

uint64_t sub_1006B7B34(uint64_t a1, void *a2, uint64_t a3)
{
  v63 = a3;
  v74 = a2;
  v67 = sub_1007A1D04();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = (&v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100796CF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v58 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v58 - v16;
  sub_1007A2154();
  sub_100796C94();
  v69 = *(v12 + 16);
  v73 = v12 + 16;
  v69(v14, v17, v11);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v72 = ObjCClassFromMetadata;
  v76 = objc_opt_self();
  v19 = [v76 bundleForClass:ObjCClassFromMetadata];
  v75 = *(v5 + 16);
  v80 = v5 + 16;
  v68 = v7;
  v61 = v4;
  v75(v7, v10, v4);
  sub_1007A22D4(v14, 0, 0, v19, v7, "Don’t Allow", 13, 0);
  v71 = *(v5 + 8);
  v79 = v5 + 8;
  v71(v10, v4);
  v20 = *(v12 + 8);
  v77 = v12 + 8;
  v78 = v20;
  v21 = v11;
  v20(v17, v11);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v24 = v63;
  v23[2] = v74;
  v23[3] = v24;
  v23[4] = v22;

  v25 = sub_1007A2214();

  v85 = sub_1006C4B6C;
  v86 = v23;
  aBlock = _NSConcreteStackBlock;
  v82 = 1107296256;
  v62 = &v83;
  v83 = sub_100201C54;
  v84 = &unk_100A2C3C0;
  v26 = _Block_copy(&aBlock);

  v60 = objc_opt_self();
  v64 = [v60 actionWithTitle:v25 style:1 handler:v26];
  _Block_release(v26);

  sub_1007A2154();
  sub_100796C94();
  v27 = v14;
  v59 = v14;
  v69(v14, v17, v21);
  v28 = [v76 bundleForClass:v72];
  v29 = v68;
  v30 = v61;
  v75(v68, v10, v61);
  sub_1007A22D4(v27, 0, 0, v28, v29, "Allow", 5, 2);
  v71(v10, v30);
  v78(v17, v21);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  v32[2] = v74;
  v32[3] = v24;
  v32[4] = v31;

  v33 = sub_1007A2214();

  v85 = sub_1006C4B90;
  v86 = v32;
  aBlock = _NSConcreteStackBlock;
  v82 = 1107296256;
  v83 = sub_100201C54;
  v84 = &unk_100A2C410;
  v34 = _Block_copy(&aBlock);

  v74 = [v60 actionWithTitle:v33 style:0 handler:v34];
  _Block_release(v34);

  sub_1007A2154();
  sub_100796C94();
  v35 = v59;
  v36 = v21;
  v37 = v69;
  v69(v59, v17, v21);
  v38 = v72;
  v39 = [v76 bundleForClass:v72];
  v40 = v68;
  v75(v68, v10, v30);
  v63 = sub_1007A22D4(v35, 0, 0, v39, v40, "Allow this book to use online audio & video?", 44, 2);
  v62 = v41;
  v42 = v71;
  v71(v10, v30);
  v78(v17, v36);
  sub_1007A2154();
  sub_100796C94();
  v37(v35, v17, v36);
  v43 = [v76 bundleForClass:v38];
  v75(v40, v10, v30);
  sub_1007A22D4(v35, 0, 0, v43, v40, "This book needs to access online content, or it may not display as the publisher intended.", 90, 2);
  v42(v10, v30);
  v44 = v74;
  v78(v17, v36);
  v45 = sub_1007A2214();

  v46 = sub_1007A2214();
  v47 = v64;

  v48 = [objc_opt_self() alertControllerWithTitle:v45 message:v46 preferredStyle:1];

  [v48 addAction:v47];
  [v48 addAction:v44];
  v49 = swift_allocObject();
  v50 = v70;
  *(v49 + 16) = v70;
  *(v49 + 24) = v48;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v51 = v50;
  v52 = v48;
  v53 = sub_1007A2D74();
  v54 = v65;
  *v65 = v53;
  v55 = v66;
  v56 = v67;
  (*(v66 + 104))(v54, enum case for DispatchPredicate.onQueue(_:), v67);
  LOBYTE(v45) = sub_1007A1D34();
  result = (*(v55 + 8))(v54, v56);
  if (v45)
  {

    sub_1006B8614(*(v49 + 16), *(v49 + 24));
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006B856C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(a5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {

      swift_getObjectType();
      sub_1007A1A34();
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

double sub_1006B8614(uint64_t a1, uint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1005670B0(a2, 1, 0, 0);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1006B8680()
{
  v0 = sub_1001F1160(&unk_100AE7C50, qword_10082C9C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  if ((sub_1004A8620() & 1) != 0 || (sub_1004A8C68(v2), v3 = sub_1001F1160(&unk_100AF2670, &qword_10082A080), v4 = (*(*(v3 - 8) + 48))(v2, 1, v3), sub_100007840(v2, &unk_100AE7C50, qword_10082C9C0), v4 != 1))
  {
    v6 = sub_1004A8620();
    sub_1004A8804((v6 & 1) == 0);
    v7 = sub_1004A8620();
    return sub_1006A976C(v7 & 1);
  }

  return result;
}

uint64_t sub_1006B87A0()
{
  v1 = sub_1007A1D04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(swift_allocObject() + 16) = v0;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v5 = v0;
  *v4 = sub_1007A2D74();
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = sub_1007A1D34();
  result = (*(v2 + 8))(v4, v1);
  if (v6)
  {

    sub_1006B890C(&v8);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B890C@<X0>(void *a1@<X8>)
{
  sub_10022FB30(v6);
  v8 = v7;
  v2 = *(&v7 + 1);
  v3 = v7;
  if (!*(&v7 + 1))
  {
    v3 = 0;
  }

  *a1 = v3;
  a1[1] = v2;
  return sub_1000077D8(&v8, &v5, &qword_100AD60D0, &qword_1008126C8);
}

uint64_t sub_1006B8984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for State(0);
  v4[7] = swift_task_alloc();
  sub_1007A26F4();
  v4[8] = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1006B8A4C, v6, v5);
}

uint64_t sub_1006B8A4C()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  v4 = *(*(v2 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
  v5 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  swift_beginAccess();
  sub_1006C56B4(v4 + v5, v1, type metadata accessor for State);
  *(v1 + *(v3 + 88)) = (*(v1 + *(v3 + 88)) & 1) == 0;

  sub_100444C5C(v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1006B8B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_1007A26F4();
  v4[4] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1006B8BD0, v6, v5);
}

uint64_t sub_1006B8BD0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1006B8CC8;

    return sub_1005684C4();
  }

  else
  {

    **(v0 + 16) = *(v0 + 56) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1006B8CC8()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_1006B8E0C, v3, v2);
}

uint64_t sub_1006B8E0C()
{

  **(v0 + 16) = *(v0 + 56) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006B8E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1007A26F4();
  *(v4 + 24) = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1006B8F18, v6, v5);
}

uint64_t sub_1006B8F18()
{

  sub_100445FDC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006B8F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1007A26F4();
  v6[5] = sub_1007A26E4();
  v8 = sub_1007A2694();

  return _swift_task_switch(sub_1006B9038, v8, v7);
}

uint64_t sub_1006B9038()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_1006C42B8(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1006B90B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_1007A26F4();
  v4[4] = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1006B9148, v6, v5);
}

uint64_t sub_1006B9148()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100568AB0();
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006B91DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1007A26F4();
  v5[5] = sub_1007A26E4();
  v7 = sub_1007A2694();

  return _swift_task_switch(sub_1006B9278, v7, v6);
}

uint64_t sub_1006B9278()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100568D34(*(v0 + 32));
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006B9314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_1007A26F4();
  v4[4] = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1006B93AC, v6, v5);
}

uint64_t sub_1006B93AC()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100568FE8();
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006B9440(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100ADB4D0, &qword_1008188B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v44[-1] - v7;
  Strong = swift_weakLoadStrong();
  if (Strong && (v10 = Strong, swift_getKeyPath(), v44[2] = v10, sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8), sub_100797A14(), , v11 = swift_unknownObjectWeakLoadStrong(), , v11) && (v12 = OBJC_IVAR____TtC5Books22PageCurlViewController_tapActionViews, v13 = swift_beginAccess(), v14 = *(v11 + v12), __chkstk_darwin(v13), *(&v43 - 2) = a1, , sub_1006A0DB4(sub_1006C4B4C, (&v43 - 4), v14), v16 = v15, swift_unknownObjectRelease(), , v16))
  {
    if (qword_100AD1AE0 != -1)
    {
      swift_once();
    }

    v17 = sub_10079ACE4();
    sub_100008B98(v17, qword_100AF23F0);
    (*(v3 + 16))(v8, a1, v2);
    v18 = v16;
    v19 = sub_10079ACC4();
    v20 = sub_1007A2994();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44[0] = v43;
      *v21 = 136315394;
      v22 = [v18 description];
      v23 = sub_1007A2254();
      v25 = v24;

      v26 = sub_1000070F4(v23, v25, v44);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      sub_100005920(&qword_100AF2658, &unk_100ADB4D0, &qword_1008188B0, &protocol conformance descriptor for RelativeValue<A, B>);
      v27 = sub_1007A3A74();
      v29 = v28;
      (*(v3 + 8))(v8, v2);
      v30 = sub_1000070F4(v27, v29, v44);

      *(v21 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "#unhandled_tap Found chrome view %s at %s ... invoking its action", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v3 + 8))(v8, v2);
    }

    v41 = *&v18[OBJC_IVAR____TtC5Books15BKTapActionView_action];

    v41(v42);

    return 1;
  }

  else
  {
    if (qword_100AD1AE0 != -1)
    {
      swift_once();
    }

    v31 = sub_10079ACE4();
    sub_100008B98(v31, qword_100AF23F0);
    (*(v3 + 16))(v5, a1, v2);
    v32 = sub_10079ACC4();
    v33 = sub_1007A2994();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44[0] = v35;
      *v34 = 136315138;
      sub_100005920(&qword_100AF2658, &unk_100ADB4D0, &qword_1008188B0, &protocol conformance descriptor for RelativeValue<A, B>);
      v36 = sub_1007A3A74();
      v38 = v37;
      (*(v3 + 8))(v5, v2);
      v39 = sub_1000070F4(v36, v38, v44);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "#unhandled_tap No chrome view at %s", v34, 0xCu);
      sub_1000074E0(v35);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    return 0;
  }
}

double sub_1006B9A58(uint64_t a1)
{
  if (qword_100AD1AE0 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AF23F0);
  v2 = sub_10079ACC4();
  v3 = sub_1007A2994();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "#unhandled_tap toggling chrome", v4, 2u);
  }

  sub_100445FDC();

  return result;
}

char *sub_1006B9B64()
{
  v0 = sub_100796CF4();
  __chkstk_darwin(v0 - 8);
  v2 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007A21D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v82 - v8;
  sub_10022FB30(v87);
  v84 = v4;
  v85 = v2;
  v86 = v6;
  if (v87[3])
  {
    sub_1007A2154();
    (*(v4 + 16))(v6, v9, v3);
    sub_100796C94();
    v10 = sub_1007A22B4();
    v12 = v11;
    (*(v4 + 8))(v9, v3);
    v13 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_10000B3D8((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[16 * v15];
    *(v16 + 4) = v10;
    *(v16 + 5) = v12;
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  sub_10022FB30(v88);
  if (v88[33])
  {
    sub_10022FB30(v89);
    v17 = sub_100787658((v89[33] != 0) & v90);
    v19 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10000B3D8(0, *(v13 + 2) + 1, 1, v13);
    }

    v21 = *(v13 + 2);
    v20 = *(v13 + 3);
    if (v21 >= v20 >> 1)
    {
      v13 = sub_10000B3D8((v20 > 1), v21 + 1, 1, v13);
    }

    *(v13 + 2) = v21 + 1;
    v22 = &v13[16 * v21];
    *(v22 + 4) = v17;
    *(v22 + 5) = v19;
  }

  v23 = v86;
  sub_10022FB30(v91);
  if (v91[35])
  {
    sub_1007A2154();
    v24 = v84;
    (*(v84 + 16))(v23, v9, v3);
    sub_100796C94();
    v25 = sub_1007A22B4();
    v27 = v26;
    (*(v24 + 8))(v9, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10000B3D8(0, *(v13 + 2) + 1, 1, v13);
    }

    v29 = *(v13 + 2);
    v28 = *(v13 + 3);
    if (v29 >= v28 >> 1)
    {
      v13 = sub_10000B3D8((v28 > 1), v29 + 1, 1, v13);
    }

    *(v13 + 2) = v29 + 1;
    v30 = &v13[16 * v29];
    *(v30 + 4) = v25;
    *(v30 + 5) = v27;
  }

  sub_10022FB30(v92);
  v83 = v3;
  if (v92[24])
  {
    sub_10022FB30(v93);
    if (v93[24])
    {
      v31 = v93[28] == 0;
    }

    else
    {
      v31 = 1;
    }

    v32 = !v31;
    v33 = sub_100787894(v32);
    v35 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10000B3D8(0, *(v13 + 2) + 1, 1, v13);
    }

    v37 = *(v13 + 2);
    v36 = *(v13 + 3);
    if (v37 >= v36 >> 1)
    {
      v13 = sub_10000B3D8((v36 > 1), v37 + 1, 1, v13);
    }

    *(v13 + 2) = v37 + 1;
    v38 = &v13[16 * v37];
    *(v38 + 4) = v33;
    *(v38 + 5) = v35;
  }

  sub_10022FB30(v94);
  if (v94[24])
  {
    sub_10022FB30(v95);
    v39 = sub_100787414((v95[24] != 0) & v96);
    v41 = v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10000B3D8(0, *(v13 + 2) + 1, 1, v13);
    }

    v43 = *(v13 + 2);
    v42 = *(v13 + 3);
    if (v43 >= v42 >> 1)
    {
      v13 = sub_10000B3D8((v42 > 1), v43 + 1, 1, v13);
    }

    *(v13 + 2) = v43 + 1;
    v44 = &v13[16 * v43];
    *(v44 + 4) = v39;
    *(v44 + 5) = v41;
  }

  sub_10022FB30(&v97);
  *(v108 + 9) = *(v99 + 9);
  v107 = v98;
  v108[0] = v99[0];
  v45 = *(v99 + 9) >> 56;
  if (v45)
  {
    v46 = v108[0];
    v113 = v98;
    v112[0] = *(&v108[0] + 1);
    v112[1] = *(v99 + 9) >> 56;
    sub_1000077D8(&v107, v104, &qword_100AD6180, &unk_10082C9B0);
    sub_1002BB1A4(v112, v104);
    sub_100007840(&v113, &qword_100AD4F30, &unk_100816940);
    v114[0] = v46;
    sub_100007840(v114, &qword_100AD6188, &qword_100812760);
    sub_1002308AC(v112);
    if (*(&v46 + 1))
    {
      goto LABEL_42;
    }
  }

  else
  {
    v45 = 0xE000000000000000;
  }

  if (v45 == 0xE000000000000000)
  {

    goto LABEL_48;
  }

LABEL_42:
  v47 = sub_1007A3AB4();

  if ((v47 & 1) == 0)
  {
    v48 = sub_1005FBE34(0, 0xE000000000000000);
    v50 = v49;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10000B3D8(0, *(v13 + 2) + 1, 1, v13);
    }

    v52 = *(v13 + 2);
    v51 = *(v13 + 3);
    if (v52 >= v51 >> 1)
    {
      v13 = sub_10000B3D8((v51 > 1), v52 + 1, 1, v13);
    }

    *(v13 + 2) = v52 + 1;
    v53 = &v13[16 * v52];
    *(v53 + 4) = v48;
    *(v53 + 5) = v50;
  }

LABEL_48:
  sub_10022FB30(v100);
  v54 = v86;
  if (v100[1])
  {
    sub_1007A2154();
    v55 = v83;
    v56 = v84;
    (*(v84 + 16))(v54, v9, v83);
    sub_100796C94();
    v57 = sub_1007A22B4();
    v59 = v58;
    (*(v56 + 8))(v9, v55);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10000B3D8(0, *(v13 + 2) + 1, 1, v13);
    }

    v61 = *(v13 + 2);
    v60 = *(v13 + 3);
    if (v61 >= v60 >> 1)
    {
      v13 = sub_10000B3D8((v60 > 1), v61 + 1, 1, v13);
    }

    *(v13 + 2) = v61 + 1;
    v62 = &v13[16 * v61];
    *(v62 + 4) = v57;
    *(v62 + 5) = v59;
  }

  sub_10022FB30(&v101);
  *(v106 + 9) = *(v103 + 9);
  v105 = v102;
  v106[0] = v103[0];
  v63 = *(v103 + 9) >> 56;
  if (v63)
  {
    v64 = v106[0];
    v110 = v102;
    v109[0] = *(&v106[0] + 1);
    v109[1] = *&v106[1];
    sub_1000077D8(&v105, v104, &unk_100AE7C40, &qword_100812798);
    sub_1002BB1A4(v109, v104);
    sub_100007840(&v110, &qword_100AD4F30, &unk_100816940);
    v111 = v64;
    sub_100007840(&v111, &qword_100AD6188, &qword_100812760);
    sub_1002308AC(v109);
    v65 = v83;
    if (*(&v64 + 1))
    {
      goto LABEL_60;
    }
  }

  else
  {
    v63 = 0xE000000000000000;
    v65 = v83;
  }

  if (v63 == 0xE000000000000000)
  {

    goto LABEL_66;
  }

LABEL_60:
  v66 = sub_1007A3AB4();

  if ((v66 & 1) == 0)
  {
    v67 = sub_1005FB8C4(0, 0xE000000000000000);
    v69 = v68;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10000B3D8(0, *(v13 + 2) + 1, 1, v13);
    }

    v71 = *(v13 + 2);
    v70 = *(v13 + 3);
    if (v71 >= v70 >> 1)
    {
      v13 = sub_10000B3D8((v70 > 1), v71 + 1, 1, v13);
    }

    *(v13 + 2) = v71 + 1;
    v72 = &v13[16 * v71];
    *(v72 + 4) = v67;
    *(v72 + 5) = v69;
  }

LABEL_66:
  sub_10022FB30(v104);
  v73 = v86;
  if (v104[19])
  {
    sub_1007A2154();
    v74 = v84;
    (*(v84 + 16))(v73, v9, v65);
    sub_100796C94();
    v75 = sub_1007A22B4();
    v77 = v76;
    (*(v74 + 8))(v9, v65);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10000B3D8(0, *(v13 + 2) + 1, 1, v13);
    }

    v79 = *(v13 + 2);
    v78 = *(v13 + 3);
    if (v79 >= v78 >> 1)
    {
      v13 = sub_10000B3D8((v78 > 1), v79 + 1, 1, v13);
    }

    *(v13 + 2) = v79 + 1;
    v80 = &v13[16 * v79];
    *(v80 + 4) = v75;
    *(v80 + 5) = v77;
  }

  return v13;
}

uint64_t sub_1006BA620(uint64_t a1, uint64_t a2)
{
  v3[369] = v2;
  v3[368] = a2;
  v3[367] = a1;
  sub_100796CF4();
  v3[370] = swift_task_alloc();
  v4 = sub_1007A21D4();
  v3[371] = v4;
  v3[372] = *(v4 - 8);
  v3[373] = swift_task_alloc();
  v3[374] = swift_task_alloc();
  v3[375] = sub_1007A26F4();
  v3[376] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v3[377] = v6;
  v3[378] = v5;

  return _swift_task_switch(sub_1006BA75C, v6, v5);
}

uint64_t sub_1006BA75C()
{
  v129 = v0;
  v1 = *(v0 + 2992);
  v2 = *(v0 + 2984);
  v3 = *(v0 + 2976);
  v4 = *(v0 + 2968);
  v5 = *(v0 + 2944);
  v6 = *(v0 + 2936);
  sub_1007A2154();
  v127 = *(v3 + 16);
  v127(v2, v1, v4);
  sub_100796C94();
  v7 = sub_1007A22B4();
  v9 = v8;
  v10 = *(v3 + 8);
  v10(v1, v4);
  if (v7 == v6 && v9 == v5)
  {

    goto LABEL_5;
  }

  v11 = sub_1007A3AB4();

  if (v11)
  {
LABEL_5:

    sub_10022FB30((v0 + 2320));
    if (*(v0 + 2344))
    {
      sub_100226F6C();
    }

    goto LABEL_7;
  }

  v14 = *(v0 + 2992);
  v15 = *(v0 + 2984);
  v16 = *(v0 + 2968);
  v17 = *(v0 + 2944);
  v18 = *(v0 + 2936);
  sub_1007A2154();
  v127(v15, v14, v16);
  sub_100796C94();
  v19 = sub_1007A22B4();
  v21 = v20;
  v10(v14, v16);
  if (v19 == v18 && v21 == v17)
  {
    goto LABEL_12;
  }

  v22 = sub_1007A3AB4();

  if (v22)
  {
    goto LABEL_14;
  }

  v24 = *(v0 + 2992);
  v25 = *(v0 + 2984);
  v26 = *(v0 + 2968);
  v27 = *(v0 + 2944);
  v28 = *(v0 + 2936);
  sub_1007A2154();
  v127(v25, v24, v26);
  sub_100796C94();
  v29 = sub_1007A22B4();
  v31 = v30;
  v10(v24, v26);
  if (v29 == v28 && v31 == v27)
  {
LABEL_12:

    goto LABEL_14;
  }

  v32 = sub_1007A3AB4();

  if (v32)
  {
LABEL_14:
    sub_10022FB30((v0 + 2032));
    if (*(v0 + 2296))
    {
      *(v0 + 3032) = sub_1007A26E4();
      v23 = swift_task_alloc();
      *(v0 + 3040) = v23;
      *v23 = v0;
      v23[1] = sub_1006BBA4C;

      return sub_10022C598();
    }

    goto LABEL_62;
  }

  v33 = *(v0 + 2992);
  v34 = *(v0 + 2984);
  v35 = *(v0 + 2968);
  v36 = *(v0 + 2944);
  v37 = *(v0 + 2936);
  sub_1007A2154();
  v127(v34, v33, v35);
  sub_100796C94();
  v38 = sub_1007A22B4();
  v40 = v39;
  v10(v33, v35);
  if (v38 == v37 && v40 == v36)
  {

    goto LABEL_25;
  }

  v41 = sub_1007A3AB4();

  if (v41)
  {
LABEL_25:
    sub_10022FB30((v0 + 1744));
    if (*(v0 + 2024))
    {
      *(v0 + 3048) = sub_1007A26E4();
      v42 = swift_task_alloc();
      *(v0 + 3056) = v42;
      *v42 = v0;
      v42[1] = sub_1006BBBF0;

      return sub_10022CACC();
    }

LABEL_62:

    goto LABEL_7;
  }

  v43 = *(v0 + 2992);
  v44 = *(v0 + 2984);
  v45 = *(v0 + 2968);
  v46 = *(v0 + 2944);
  v47 = *(v0 + 2936);
  sub_1007A2154();
  v127(v44, v43, v45);
  sub_100796C94();
  v48 = sub_1007A22B4();
  v50 = v49;
  v10(v43, v45);
  if (v48 != v47 || v50 != v46)
  {
    v51 = sub_1007A3AB4();

    if (v51)
    {
      goto LABEL_33;
    }

    v53 = *(v0 + 2992);
    v54 = *(v0 + 2984);
    v55 = *(v0 + 2968);
    v126 = *(v0 + 2944);
    v56 = *(v0 + 2936);
    sub_1007A2154();
    v127(v54, v53, v55);
    sub_100796C94();
    v57 = sub_1007A22B4();
    v59 = v58;
    v10(v53, v55);
    if (v57 != v56 || v59 != v126)
    {
      v60 = sub_1007A3AB4();

      if (v60)
      {
        goto LABEL_33;
      }

      v61 = *(v0 + 2992);
      v62 = *(v0 + 2984);
      v63 = *(v0 + 2968);
      v64 = *(v0 + 2944);
      v65 = *(v0 + 2936);
      sub_1007A2154();
      v127(v62, v61, v63);
      sub_100796C94();
      v66 = sub_1007A22B4();
      v68 = v67;
      v10(v61, v63);
      if (v66 == v65 && v68 == v64)
      {
        goto LABEL_42;
      }

      v69 = sub_1007A3AB4();

      if (v69)
      {
        goto LABEL_44;
      }

      v71 = *(v0 + 2992);
      v72 = *(v0 + 2984);
      v73 = *(v0 + 2968);
      v74 = *(v0 + 2944);
      v75 = *(v0 + 2936);
      sub_1007A2154();
      v127(v72, v71, v73);
      sub_100796C94();
      v76 = sub_1007A22B4();
      v78 = v77;
      v10(v71, v73);
      if (v76 == v75 && v78 == v74)
      {
LABEL_42:

LABEL_44:
        sub_10022FB30((v0 + 1168));
        if (!*(v0 + 1360))
        {
          goto LABEL_62;
        }

        *(v0 + 3072) = sub_1007A26E4();
        v70 = swift_task_alloc();
        *(v0 + 3080) = v70;
        *v70 = v0;
        v70[1] = sub_1006BBEB4;

        return sub_10022B4D0(6);
      }

      v79 = sub_1007A3AB4();

      if (v79)
      {
        goto LABEL_44;
      }

      v80 = *(v0 + 2944);
      v81 = *(v0 + 2936);
      if (sub_1005FBE34(0, 0xE000000000000000) == v81 && v82 == v80)
      {
      }

      else
      {
        v83 = sub_1007A3AB4();

        if ((v83 & 1) == 0)
        {
          v89 = *(v0 + 2992);
          v90 = *(v0 + 2984);
          v91 = *(v0 + 2968);
          v92 = *(v0 + 2944);
          v93 = *(v0 + 2936);
          sub_1007A2154();
          v127(v90, v89, v91);
          sub_100796C94();
          v94 = sub_1007A22B4();
          v96 = v95;
          v10(v89, v91);
          if (v94 == v93 && v96 == v92)
          {
          }

          else
          {
            v98 = sub_1007A3AB4();

            if ((v98 & 1) == 0)
            {
              v99 = *(v0 + 2944);
              v100 = *(v0 + 2936);
              if (sub_1005FB8C4(0, 0xE000000000000000) == v100 && v101 == v99)
              {
              }

              else
              {
                v102 = sub_1007A3AB4();

                if ((v102 & 1) == 0)
                {
                  v109 = *(v0 + 2992);
                  v110 = *(v0 + 2984);
                  v111 = *(v0 + 2968);
                  v112 = *(v0 + 2944);
                  v113 = *(v0 + 2936);
                  sub_1007A2154();
                  v127(v110, v109, v111);
                  sub_100796C94();
                  v114 = sub_1007A22B4();
                  v116 = v115;
                  v10(v109, v111);
                  if (v114 == v113 && v116 == v112)
                  {
                  }

                  else
                  {
                    v117 = sub_1007A3AB4();

                    if ((v117 & 1) == 0)
                    {

                      if (qword_100AD1AE0 != -1)
                      {
                        swift_once();
                      }

                      v119 = sub_10079ACE4();
                      sub_100008B98(v119, qword_100AF23F0);

                      v120 = sub_10079ACC4();
                      v121 = sub_1007A29B4();

                      if (os_log_type_enabled(v120, v121))
                      {
                        v122 = *(v0 + 2944);
                        v123 = *(v0 + 2936);
                        v124 = swift_slowAlloc();
                        v125 = swift_slowAlloc();
                        v128 = v125;
                        *v124 = 136315138;
                        *(v124 + 4) = sub_1000070F4(v123, v122, &v128);
                        _os_log_impl(&_mh_execute_header, v120, v121, "Unknown bkax action: %s", v124, 0xCu);
                        sub_1000074E0(v125);
                      }

                      goto LABEL_7;
                    }
                  }

                  sub_10022FB30((v0 + 16));
                  if (!*(v0 + 168))
                  {
                    goto LABEL_62;
                  }

                  *(v0 + 3128) = sub_1007A26E4();
                  v118 = swift_task_alloc();
                  *(v0 + 3136) = v118;
                  *v118 = v0;
                  v118[1] = sub_1006BC454;

                  return sub_100229624();
                }
              }

              sub_10022FB30((v0 + 304));
              *(v0 + 2633) = *(v0 + 409);
              v103 = *(v0 + 400);
              *(v0 + 2608) = *(v0 + 384);
              *(v0 + 2624) = v103;
              v104 = *(v0 + 2640);
              if (v104)
              {
                v105 = *(v0 + 2632);
                v106 = *(v0 + 2624);
                *(v0 + 2824) = *(v0 + 384);
                *(v0 + 2840) = v105;
                *(v0 + 2848) = v104;
                sub_1000077D8(v0 + 2608, v0 + 2704, &unk_100AE7C40, &qword_100812798);
                sub_1002BB1A4(v0 + 2840, v0 + 2888);
                sub_100007840(v0 + 2824, &qword_100AD4F30, &unk_100816940);
                *(v0 + 2920) = v106;
                sub_100007840(v0 + 2920, &qword_100AD6188, &qword_100812760);
                sub_1002308AC(v0 + 2840);
              }

              else
              {
                v105 = 0;
                v104 = 0xE000000000000000;
              }

              if (v105 || v104 != 0xE000000000000000)
              {
                v107 = sub_1007A3AB4();

                if (v107)
                {
                  goto LABEL_62;
                }

                *(v0 + 3112) = sub_1007A26E4();
                v108 = swift_task_alloc();
                *(v0 + 3120) = v108;
                *v108 = v0;
                v108[1] = sub_1006BC2B0;

                return sub_10022863C();
              }

              goto LABEL_60;
            }
          }

          sub_10022FB30((v0 + 592));
          if (*(v0 + 600))
          {
            sub_1006AE4B8();
          }

          goto LABEL_7;
        }
      }

      sub_10022FB30((v0 + 880));
      *(v0 + 2681) = *(v0 + 937);
      v84 = *(v0 + 928);
      *(v0 + 2656) = *(v0 + 912);
      *(v0 + 2672) = v84;
      v85 = *(v0 + 2688);
      if (v85)
      {
        v86 = *(v0 + 2680);
        v87 = *(v0 + 2672);
        *(v0 + 2856) = *(v0 + 912);
        *(v0 + 2872) = v86;
        *(v0 + 2880) = v85;
        sub_1000077D8(v0 + 2656, v0 + 2752, &qword_100AD6180, &unk_10082C9B0);
        sub_1002BB1A4(v0 + 2872, v0 + 2904);
        sub_100007840(v0 + 2856, &qword_100AD4F30, &unk_100816940);
        *(v0 + 2928) = v87;
        sub_100007840(v0 + 2928, &qword_100AD6188, &qword_100812760);
        sub_1002308AC(v0 + 2872);
      }

      else
      {
        v86 = 0;
        v85 = 0xE000000000000000;
      }

      if (v86 || v85 != 0xE000000000000000)
      {
        v88 = sub_1007A3AB4();

        if (v88)
        {
          goto LABEL_62;
        }

        *(v0 + 3096) = sub_1007A26E4();
        v97 = swift_task_alloc();
        *(v0 + 3104) = v97;
        *v97 = v0;
        v97[1] = sub_1006BC10C;

        return sub_100227218();
      }

LABEL_60:

LABEL_7:

      v12 = *(v0 + 8);

      return v12();
    }
  }

LABEL_33:
  sub_10022FB30((v0 + 1456));
  if (!*(v0 + 1648))
  {
    goto LABEL_62;
  }

  v52 = swift_task_alloc();
  *(v0 + 3064) = v52;
  *v52 = v0;
  v52[1] = sub_1006BBD94;

  return sub_1006AD3D0();
}

uint64_t sub_1006BBA4C()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1006BBB88, v1, v0);
}

uint64_t sub_1006BBB88()
{

  v1 = *(v0 + 3024);
  v2 = *(v0 + 3016);

  return _swift_task_switch(sub_1006C5ABC, v2, v1);
}

uint64_t sub_1006BBBF0()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1006BBD2C, v1, v0);
}

uint64_t sub_1006BBD2C()
{

  v1 = *(v0 + 3024);
  v2 = *(v0 + 3016);

  return _swift_task_switch(sub_1006C5ABC, v2, v1);
}

uint64_t sub_1006BBD94()
{
  v1 = *v0;

  v2 = *(v1 + 3024);
  v3 = *(v1 + 3016);

  return _swift_task_switch(sub_1006C5ABC, v3, v2);
}

uint64_t sub_1006BBEB4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[350] = v2;
  v3[351] = a1;
  v3[352] = a2;
  v3[386] = a2;

  v5 = sub_1007A2694();

  return _swift_task_switch(sub_1006BC000, v5, v4);
}

uint64_t sub_1006BC000()
{
  v1 = v0[386];

  if (v1)
  {
    sub_1006C29EC(v0[351], v0[386]);
  }

  v2 = v0[378];
  v3 = v0[377];

  return _swift_task_switch(sub_1006BC08C, v3, v2);
}

uint64_t sub_1006BC08C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006BC10C()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1006BC248, v1, v0);
}

uint64_t sub_1006BC248()
{

  v1 = *(v0 + 3024);
  v2 = *(v0 + 3016);

  return _swift_task_switch(sub_1006C5ABC, v2, v1);
}

uint64_t sub_1006BC2B0()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1006BC3EC, v1, v0);
}

uint64_t sub_1006BC3EC()
{

  v1 = *(v0 + 3024);
  v2 = *(v0 + 3016);

  return _swift_task_switch(sub_1006C5ABC, v2, v1);
}

uint64_t sub_1006BC454()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1006BC590, v1, v0);
}

uint64_t sub_1006BC590()
{

  v1 = *(v0 + 3024);
  v2 = *(v0 + 3016);

  return _swift_task_switch(sub_1006C5ABC, v2, v1);
}

double sub_1006BC644()
{
  if (swift_weakLoadStrong())
  {

    REActionMenuState.transition(to:)(0x8000000000000000);
  }

  return result;
}

void sub_1006BC6C8(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC5Books19BookReaderPresenter_menuController];
  if (*(v2 + OBJC_IVAR____TtC5Books24BookReaderMenuController_mode))
  {
    sub_1005FA1CC(a1);
  }

  else
  {

    sub_1006BFE7C(a1, v1, v2);
  }
}

double sub_1006BC830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, char *, uint64_t, void *))
{
  v8 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1007A2744();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1007A26F4();
  v12 = v5;
  v13 = sub_1007A26E4();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  a5(0, 0, v10, a4, v14);

  return result;
}

uint64_t sub_1006BC964(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002812C;

  return sub_1006BA620(a1, a2);
}

uint64_t sub_1006BCB4C()
{
  v1 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v1 - 8);
  v3 = v13 - v2;
  v4 = sub_1007969B4();
  __chkstk_darwin(v4);
  v5 = sub_1007968D4();
  v7 = v6;
  v13[2] = v5;
  v13[3] = v6;
  sub_1002060B4();
  if (sub_1007A28A4())
  {
    sub_1006AAB68(v5, v7);
  }

  v8 = sub_1007A2744();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_1007A26F4();
  v9 = v0;
  v10 = sub_1007A26E4();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_1003457A0(0, 0, v3, &unk_10083DF30, v11);

  return 1;
}

uint64_t sub_1006BCF94(uint64_t a1, int a2, uint64_t a3)
{
  v18 = a3;
  v19 = a2;
  v20 = sub_1007A1D04();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1007969B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = v3 + OBJC_IVAR____TtC5Books19BookReaderPresenter_router;
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = *(v11 + 8);
  (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = Strong;
  *(v15 + 24) = v13;
  (*(v9 + 32))(v15 + v14, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v15 + v14 + v10) = v19;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  *v7 = sub_1007A2D74();
  v16 = v20;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v20);
  LOBYTE(v13) = sub_1007A1D34();
  result = (*(v5 + 8))(v7, v16);
  if (v13)
  {

    sub_1006C4F54(&v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006BD1F8(uint64_t a1)
{
  sub_1006A2D08(0);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

void sub_1006BD27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22[1] = a1;
  v22[2] = a2;
  v6 = sub_1007A1D04();
  v23 = *(v6 - 8);
  v24 = v6;
  __chkstk_darwin(v6);
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1001F1160(&unk_100AE6A30, &unk_100812750);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - v11;
  swift_getObjectType();
  sub_1007A1744();
  v13 = sub_1007A16E4();
  v14 = v4 + OBJC_IVAR____TtC5Books19BookReaderPresenter_router;
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = *(v14 + 8);
  (*(v10 + 16))(v12, a3, v9);
  v17 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = Strong;
  *(v18 + 3) = v16;
  *(v18 + 4) = v13;
  (*(v10 + 32))(&v18[v17], v12, v9);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v19 = v13;
  *v8 = sub_1007A2D74();
  v21 = v23;
  v20 = v24;
  (*(v23 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v24);
  LOBYTE(v13) = sub_1007A1D34();
  (*(v21 + 8))(v8, v20);
  if (v13)
  {

    sub_1006C5874(&v25);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1006BD5B0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_1007A1744();
  result = sub_1007A1714();
  if (!v4)
  {

    return a1;
  }

  return result;
}

uint64_t sub_1006BD64C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1007A1D04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v4 + OBJC_IVAR____TtC5Books19BookReaderPresenter_router;
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = *(v12 + 8);
  v15 = swift_allocObject();
  *(v15 + 16) = Strong;
  *(v15 + 24) = v14;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = a3;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v16 = a1;
  sub_1000260E8(a2, a3);
  *v11 = sub_1007A2D74();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  LOBYTE(v14) = sub_1007A1D34();
  result = (*(v9 + 8))(v11, v8);
  if (v14)
  {
    v18 = *(v15 + 16);

    if (v18)
    {
      sub_1005670B0(*(v15 + 32), 1, *(v15 + 40), *(v15 + 48));
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006BD804(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController;
  v4 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController);
  if (v4)
  {
    sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr);
    v6 = a1;
    v7 = v4;
    LOBYTE(a1) = sub_1007A3184();

    if (a1)
    {
      v8 = *(v2 + v3);
      *(v2 + v3) = 0;
    }
  }
}

uint64_t sub_1006BD908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_10079FF94();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  sub_1001F1160(&qword_100AF2650, &qword_10083DDF0);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  v5[15] = swift_task_alloc();
  sub_1007A26F4();
  v5[16] = sub_1007A26E4();
  v8 = sub_1007A2694();
  v5[17] = v8;
  v5[18] = v7;

  return _swift_task_switch(sub_1006BDA78, v8, v7);
}

uint64_t sub_1006BDA78()
{
  v1 = sub_1006A2C38();
  v0[19] = v1;
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    v3 = v0[15];
    if (Strong)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4(v3);

      v4 = type metadata accessor for OverlayViewModel.Overlay(0);
      if ((*(*(v4 - 8) + 48))(v3, 1, v4) != 1)
      {
        v5 = v0[15];
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_1006C571C(v5, type metadata accessor for OverlayViewModel.Overlay);
        if (EnumCaseMultiPayload == 2)
        {
          v7 = swift_task_alloc();
          v0[20] = v7;
          *v7 = v0;
          v7[1] = sub_1006BDD58;

          return sub_1006AF1E8();
        }

        goto LABEL_13;
      }
    }

    else
    {
      v10 = type metadata accessor for OverlayViewModel.Overlay(0);
      (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    }

    sub_100007840(v0[15], &qword_100ADB1C0, &qword_10082A4E0);
LABEL_13:
    v11 = swift_task_alloc();
    v0[21] = v11;
    *v11 = v0;
    v11[1] = sub_1006BDEB4;
    v12 = v0[9];

    return BookContentModule.revealSearchResult(_:)(v12);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1006BDD58()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 168) = v3;
  *v3 = v2;
  v3[1] = sub_1006BDEB4;
  v4 = *(v1 + 72);

  return BookContentModule.revealSearchResult(_:)(v4);
}

uint64_t sub_1006BDEB4()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_1006BDFD4, v3, v2);
}

uint64_t sub_1006BDFD4()
{

  sub_1007A0414();
  if (v1)
  {
    v3 = v0[13];
    v2 = v0[14];
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[10];
    v7 = v0[8];
    (*(v5 + 104))(v4, enum case for SelectionInfo.PresentationLifecycle.removeAfterDisplay(_:), v6);
    sub_10079EFE4();

    (*(v5 + 8))(v4, v6);
    v8 = OBJC_IVAR____TtC5Books19BookReaderPresenter_searchHighlightID;
    swift_beginAccess();
    sub_1000077D8(v7 + v8, v3, &qword_100AF2650, &qword_10083DDF0);
    swift_beginAccess();
    sub_1006C4A34(v2, v7 + v8);
    swift_endAccess();
    sub_1006A27B4(v3);

    sub_100007840(v3, &qword_100AF2650, &qword_10083DDF0);
    sub_100007840(v2, &qword_100AF2650, &qword_10083DDF0);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1006BE1A8()
{
  v0 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v7 - v1);
  if (!swift_weakLoadStrong())
  {
    v6 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    return sub_100007840(v2, &qword_100ADB1C0, &qword_10082A4E0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v2);

  v3 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    return sub_100007840(v2, &qword_100ADB1C0, &qword_10082A4E0);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1006C571C(v2, type metadata accessor for OverlayViewModel.Overlay);
  if (EnumCaseMultiPayload == 2)
  {
    return sub_1006AC830();
  }

  return result;
}

double sub_1006BE380(uint64_t a1)
{
  v3 = sub_1007A0424();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1007A2744();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v4 + 16))(v6, a1, v3);
  sub_1007A26F4();
  v11 = v1;
  v12 = sub_1007A26E4();
  v13 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = v11;
  (*(v4 + 32))(&v14[v13], v6, v3);
  sub_1003457A0(0, 0, v9, &unk_10083DF50, v14);

  return result;
}

uint64_t sub_1006BE580(uint64_t a1)
{
  v3 = sub_1007A1D04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10079EF54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  (*(v8 + 16))(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v10);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  (*(v8 + 32))(v12 + v11, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v13 = v1;
  *v6 = sub_1007A2D74();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v14 = sub_1007A1D34();
  result = (*(v4 + 8))(v6, v3);
  if (v14)
  {

    sub_1006C50E0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006BE7B4()
{
  v0 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v7 - v1);
  if (!swift_weakLoadStrong())
  {
    v6 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    return sub_100007840(v2, &qword_100ADB1C0, &qword_10082A4E0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v2);

  v3 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    return sub_100007840(v2, &qword_100ADB1C0, &qword_10082A4E0);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1006C571C(v2, type metadata accessor for OverlayViewModel.Overlay);
  if (EnumCaseMultiPayload == 1)
  {
    return sub_1006AC830();
  }

  return result;
}

double sub_1006BE994(char a1)
{
  if (swift_weakLoadStrong())
  {

    sub_1004618D8(a1 & 1);
  }

  return result;
}

uint64_t sub_1006BEA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  v6[5] = swift_task_alloc();
  sub_1007A26F4();
  v6[6] = sub_1007A26E4();
  v8 = sub_1007A2694();
  v6[7] = v8;
  v6[8] = v7;

  return _swift_task_switch(sub_1006BEAF4, v8, v7);
}

uint64_t sub_1006BEAF4()
{
  if (!swift_weakLoadStrong())
  {
    v3 = *(v0 + 40);

    v4 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    goto LABEL_5;
  }

  v1 = *(v0 + 40);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v1);

  v2 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {

LABEL_5:
    sub_100007840(*(v0 + 40), &qword_100ADB1C0, &qword_10082A4E0);
LABEL_6:
    sub_1006AAB68(*(v0 + 24), *(v0 + 32));

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 40);
  if (swift_getEnumCaseMultiPayload() != 4)
  {

    sub_1006C571C(v7, type metadata accessor for OverlayViewModel.Overlay);
    goto LABEL_6;
  }

  sub_1006C571C(v7, type metadata accessor for OverlayViewModel.Overlay);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1006BEEAC;

  return sub_1006AF1E8();
}

uint64_t sub_1006BEEAC()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1006BEFCC, v3, v2);
}

uint64_t sub_1006BEFCC()
{

  sub_1006AAB68(*(v0 + 24), *(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006BF17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  v5[4] = swift_task_alloc();
  sub_1007A26F4();
  v5[5] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_1006BF24C, v7, v6);
}

uint64_t sub_1006BF24C()
{
  if (!swift_weakLoadStrong())
  {
    v3 = *(v0 + 32);

    v4 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    goto LABEL_5;
  }

  v1 = *(v0 + 32);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v1);

  v2 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {

LABEL_5:
    sub_100007840(*(v0 + 32), &qword_100ADB1C0, &qword_10082A4E0);
LABEL_8:
    sub_1004A9DC8(*(v0 + 24));

    v6 = *(v0 + 8);

    return v6();
  }

  v5 = *(v0 + 32);
  if (swift_getEnumCaseMultiPayload())
  {

    sub_1006C571C(v5, type metadata accessor for OverlayViewModel.Overlay);
    goto LABEL_8;
  }

  sub_1006C571C(v5, type metadata accessor for OverlayViewModel.Overlay);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_1006BF4D0;

  return sub_1006AF1E8();
}

uint64_t sub_1006BF4D0()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1006BF5F0, v3, v2);
}

uint64_t sub_1006BF5F0()
{

  sub_1004A9DC8(*(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

void sub_1006BF670(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a1;
  v5 = sub_1007A1D04();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1001F1160(&unk_100AE6A30, &unk_100812750);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = *(v2 + OBJC_IVAR____TtC5Books19BookReaderPresenter_annotationSharingAssetActivityItemProvider + 8);
  ObjectType = swift_getObjectType();
  sub_1002155E8(v23, ObjectType, v12);
  v14 = sub_1007A16E4();
  v15 = v3 + OBJC_IVAR____TtC5Books19BookReaderPresenter_router;
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = *(v15 + 8);
  (*(v9 + 16))(v11, a2, v8);
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = Strong;
  *(v19 + 3) = v17;
  *(v19 + 4) = v14;
  (*(v9 + 32))(&v19[v18], v11, v8);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v20 = v14;
  *v7 = sub_1007A2D74();
  v22 = v24;
  v21 = v25;
  (*(v24 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v25);
  LOBYTE(v14) = sub_1007A1D34();
  (*(v22 + 8))(v7, v21);
  if (v14)
  {

    sub_1006C5874(&v26);
  }

  else
  {
    __break(1u);
  }
}

void sub_1006BF928(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v8 = sub_1001F1160(&unk_100AD6170, &qword_10083DEE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v13 - v9;
  if (a1)
  {
    v11 = sub_1001F1160(&unk_100AE6A30, &unk_100812750);
    v12 = *(v11 - 8);
    (*(v12 + 16))(v10, a3, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    sub_100568090(a2, v10);
    sub_100007840(v10, &unk_100AD6170, &qword_10083DEE0);
  }

  *a4 = a1 == 0;
}

uint64_t sub_1006BFAAC(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100ADB6B0, qword_100816980);
  __chkstk_darwin(v2 - 8);
  sub_1000077D8(a1, &v5 - v3, &unk_100ADB6B0, qword_100816980);
  return sub_10079C654();
}

double sub_1006BFB54@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(a2);

  return result;
}

uint64_t sub_1006BFBD0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v13 - v7);
  __chkstk_darwin(v9);
  v11 = &v13 - v10;
  sub_1000077D8(a1, &v13 - v10, &qword_100ADB1C0, &qword_10082A4E0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v8);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000077D8(v11, v5, &qword_100ADB1C0, &qword_10082A4E0);

  sub_10079B9B4();
  sub_100461420(v8);
  sub_100007840(v8, &qword_100ADB1C0, &qword_10082A4E0);
  return sub_100007840(v11, &qword_100ADB1C0, &qword_10082A4E0);
}

void sub_1006BFD88(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v3);

  *a2 = v3;
}

uint64_t sub_1006BFE08(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

double sub_1006BFE7C(void *a1, void *a2, uint64_t a3)
{
  swift_getObjectType();
  [a1 removeMenuForIdentifier:UIMenuLookup];
  [a1 removeMenuForIdentifier:UIMenuServices];
  [a1 removeMenuForIdentifier:UIMenuStandardEdit];
  sub_1006C00E4(1, a2, a3);
  sub_1007A25C4();
  if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
  sub_1005FA338();
  sub_1007A25C4();
  if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
  sub_1005FAAB0();
  sub_1007A25C4();
  if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
  sub_1001F1160(&unk_100AF2620, &qword_10083DDE8);
  sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  sub_100005920(&unk_100AF2630, &unk_100AF2620, &qword_10083DDE8, &protocol conformance descriptor for [A]);
  v6 = sub_1007A24D4();

  sub_10020B548(v6, UIMenuRoot);

  return result;
}

Class sub_1006C00E4(char a1, void *a2, uint64_t a3)
{
  v56 = a2;
  v5 = sub_100796CF4();
  __chkstk_darwin(v5 - 8);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v48 - v13;
  v50 = sub_1001F1160(&qword_100AED578, &qword_1008355C0);
  v15 = swift_allocObject();
  v16 = 0;
  v49 = xmmword_10080EFF0;
  *(v15 + 16) = xmmword_10080EFF0;
  if (a1)
  {
    v16 = sub_1005FB280();
  }

  *(v15 + 32) = v16;
  sub_1007A2154();
  v57 = *(v9 + 16);
  v58 = v9 + 16;
  v57(v11, v14, v8);
  sub_100796C94();
  v52 = v11;
  v54 = v7;
  sub_1007A22B4();
  v17 = *(v9 + 8);
  v55 = v8;
  v59 = v17;
  v60 = v9 + 8;
  v17(v14, v8);
  v18 = a3;
  v19 = sub_1007A2214();
  v51 = objc_opt_self();
  v20 = [v51 systemImageNamed:v19];

  v21 = sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
  memset(v65, 0, 32);
  v22 = v20;
  v23 = v18;
  v53 = v21;
  v24 = sub_1007A3414();
  v25 = sub_1005F9E30(v24);

  *(v15 + 40) = v25;
  v63 = v15;
  sub_10022FB30(v64);
  if (v64[33])
  {
    sub_10022FB30(v65);
    if (v66)
    {
      sub_1007A2154();
      v26 = v52;
      v27 = v55;
      v28 = v57;
      v57(v52, v14, v55);
      sub_100796C94();
      v48[1] = v23;
      v48[0] = sub_1007A22B4();
      v56 = v29;
      v30 = v59;
      v59(v14, v27);
      v31 = sub_1007A2214();
      v51 = [v51 systemImageNamed:v31];

      v50 = swift_allocObject();
      *(v50 + 16) = v49;
      sub_1007A2154();
      v28(v26, v14, v27);
      sub_100796C94();
      sub_1007A22B4();
      v30(v14, v27);
      v61 = 0u;
      v62 = 0u;
      v32 = sub_1007A3414();
      v33 = sub_1005F9E30(v32);

      v34 = v50;
      *(v50 + 32) = v33;
      sub_1007A2154();
      v57(v26, v14, v27);
      sub_100796C94();
      sub_1007A22B4();
      v59(v14, v27);
      v61 = 0u;
      v62 = 0u;
      v35 = sub_1007A3414();
      v36 = sub_1005F9E30(v35);

      *(v34 + 40) = v36;
      *&v61 = v34;
      sub_1001F1160(&qword_100AED580, &qword_1008355C8);
      sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);
      sub_100005920(&qword_100AED588, &qword_100AED580, &qword_1008355C8, &protocol conformance descriptor for [A]);
      v37 = sub_1007A24D4();

      *&v61 = v37;
      sub_1001F1160(&unk_100AF2640, &unk_1008220E0);
      sub_100005920(&qword_100AE12E8, &unk_100AF2640, &unk_1008220E0, &protocol conformance descriptor for [A]);
      if (sub_1007A28A4())
      {
        sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
        v69._countAndFlagsBits = v48[0];
        v69._object = v56;
        v71.value._countAndFlagsBits = 0;
        v71.value._object = 0;
        v67.value.super.isa = v51;
        v67.is_nil = 0;
        v38.value = 0;
        sub_1007A30C4(v69, v71, v67, v38, 0xFFFFFFFFFFFFFFFFLL, v37, v47);
      }

      else
      {
      }
    }

    else
    {
      sub_1007A2154();
      v39 = v55;
      v57(v52, v14, v55);
      sub_100796C94();
      sub_1007A22B4();
      v59(v14, v39);
      v40 = sub_1007A2214();
      v41 = [v51 systemImageNamed:v40];

      v61 = 0u;
      v62 = 0u;
      v42 = v41;
      v43 = sub_1007A3414();
      sub_1005F9E30(v43);
    }

    sub_1007A25C4();
    if (*(v63 + 16) >= *(v63 + 24) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();
    v15 = v63;
  }

  *&v61 = v15;
  sub_1001F1160(&qword_100AED580, &qword_1008355C8);
  sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);
  sub_100005920(&qword_100AED588, &qword_100AED580, &qword_1008355C8, &protocol conformance descriptor for [A]);
  v44 = sub_1007A24D4();

  *&v61 = v44;
  sub_1001F1160(&unk_100AF2640, &unk_1008220E0);
  sub_100005920(&qword_100AE12E8, &unk_100AF2640, &unk_1008220E0, &protocol conformance descriptor for [A]);
  if (sub_1007A28A4())
  {
    sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    v72.value._countAndFlagsBits = 0;
    v72.value._object = 0;
    v68.value.super.isa = 0;
    v68.is_nil = 0;
    v45.value = 17;
    return sub_1007A30C4(v70, v72, v68, v45, 0xFFFFFFFFFFFFFFFFLL, v44, v47).super.super.isa;
  }

  else
  {

    return 0;
  }
}

double sub_1006C0C08(void *a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AD6170, &qword_10083DEE0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_1007A2744();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000077D8(a2, v7, &unk_100AD6170, &qword_10083DEE0);
  sub_1007A26F4();

  v13 = a1;
  v14 = sub_1007A26E4();
  v15 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v12;
  v16[5] = v13;
  sub_10020B3C8(v7, v16 + v15, &unk_100AD6170, &qword_10083DEE0);

  sub_1003457A0(0, 0, v10, &unk_10083DEF8, v16);

  return result;
}

uint64_t sub_1006C0E40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_1002AE5A8(a1, v4, v5, v6, v1 + 40, v7, v8);
}

uint64_t sub_1006C0F18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100009A34;

  return sub_1006B5834();
}

uint64_t sub_1006C0FDC(uint64_t a1)
{
  v4 = *(type metadata accessor for OverlayViewModel.Overlay(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_1006AFF38(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1006C10D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006C1250()
{
  v1 = *(type metadata accessor for OverlayViewModel.Overlay(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
      }

      goto LABEL_11;
    }

LABEL_9:

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v4 = sub_1001F1160(&qword_100ADB388, &qword_1008199B0);
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
  {
    goto LABEL_9;
  }

LABEL_11:

  return swift_deallocObject();
}

uint64_t sub_1006C13A8()
{
  v1 = sub_1007A1C54();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007A1CA4();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v7 = sub_1007A2D74();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1006C5788;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A2CAC8;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1006C10D4(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void sub_1006C16C4(uint64_t a1)
{
  if (a1 && (objc_opt_self(), (v1 = swift_dynamicCastObjCClass()) != 0))
  {
    v2 = v1;
    swift_unknownObjectRetain();
    sub_1004AEEF8(v2);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100AD1AE0 != -1)
    {
      swift_once();
    }

    v3 = sub_10079ACE4();
    sub_100008B98(v3, qword_100AF23F0);
    swift_unknownObjectRetain();
    oslog = sub_10079ACC4();
    v4 = sub_1007A29B4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008E6BE0, &v8);
      sub_1000074E0(v6);
    }
  }
}