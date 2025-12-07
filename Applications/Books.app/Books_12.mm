unint64_t sub_100244EE0()
{
  result = qword_100AD6AE0;
  if (!qword_100AD6AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6AE0);
  }

  return result;
}

uint64_t sub_100244F3C(uint64_t a1)
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
}

unint64_t sub_100245034@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100247280(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100245064(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701670760;
  v5 = 0xEE0065726F74536BLL;
  v6 = 0x6F6F626F69647561;
  v7 = 0xE600000000000000;
  v8 = 0x686372616573;
  if (v2 != 4)
  {
    v8 = 0x61676E616DLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x7972617262696CLL;
  if (v2 != 1)
  {
    v10 = 0x726F74536B6F6F62;
    v9 = 0xE900000000000065;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_100245124()
{
  result = qword_100AD6AE8;
  if (!qword_100AD6AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6AE8);
  }

  return result;
}

unint64_t sub_10024517C()
{
  result = qword_100AD6AF0;
  if (!qword_100AD6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6AF0);
  }

  return result;
}

unint64_t sub_1002451D4()
{
  result = qword_100AD6AF8;
  if (!qword_100AD6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6AF8);
  }

  return result;
}

unint64_t sub_10024522C()
{
  result = qword_100AD6B00;
  if (!qword_100AD6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6B00);
  }

  return result;
}

unint64_t sub_100245280()
{
  result = qword_100AD6B08;
  if (!qword_100AD6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6B08);
  }

  return result;
}

unint64_t sub_1002452D4()
{
  result = qword_100AD6B10;
  if (!qword_100AD6B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6B10);
  }

  return result;
}

unint64_t sub_10024532C()
{
  result = qword_100AD6B18;
  if (!qword_100AD6B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6B18);
  }

  return result;
}

unint64_t sub_100245408()
{
  result = qword_100AD6B20;
  if (!qword_100AD6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6B20);
  }

  return result;
}

uint64_t sub_10024545C(uint64_t a1)
{
  v2 = sub_100245408();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1002454AC()
{
  result = qword_100AD6B28;
  if (!qword_100AD6B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6B28);
  }

  return result;
}

unint64_t sub_100245504()
{
  result = qword_100AD6B30;
  if (!qword_100AD6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6B30);
  }

  return result;
}

unint64_t sub_10024555C()
{
  result = qword_100AD6B38;
  if (!qword_100AD6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6B38);
  }

  return result;
}

uint64_t sub_1002455B0()
{
  if (qword_100AD1320 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10024560C(uint64_t a1)
{
  v2 = sub_10024532C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1002456B0()
{
  result = qword_100AD6B50;
  if (!qword_100AD6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6B50);
  }

  return result;
}

uint64_t sub_100245704()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B22F28);
  v21 = sub_100008B98(v3, qword_100B22F28);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_100245ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_1007A26F4();
  v3[6] = sub_1007A26E4();
  v5 = sub_1007A2694();

  return _swift_task_switch(sub_100245B78, v5, v4);
}

uint64_t sub_100245B78()
{

  sub_100795A94();
  v1 = *(v0 + 16);
  v2 = [v1 primarySceneController];

  v3 = [v2 rootBarCoordinator];
  if (v3)
  {
    type metadata accessor for RootBarCoordinator();
    if (swift_dynamicCastClass())
    {
      sub_100795DF4();
      sub_10023E494(*(v0 + 16));
      sub_100795D24();
      swift_unknownObjectRelease();
      v10 = *(v0 + 8);
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  if (qword_100AD1310 != -1)
  {
    swift_once();
  }

  v4 = sub_10079ACE4();
  sub_100008B98(v4, qword_100AD6AC8);
  v5 = sub_10079ACC4();
  v6 = sub_1007A29B4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed getting root bar coordinator.", v7, 2u);
  }

  sub_1001FE9A0();
  swift_allocError();
  *v8 = 0;
  swift_willThrow();
  v10 = *(v0 + 8);
LABEL_10:

  return v10();
}

void (*sub_100245DC0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100795DE4();
  return sub_1001FD958;
}

unint64_t sub_100245E38()
{
  result = qword_100AD6B58;
  if (!qword_100AD6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6B58);
  }

  return result;
}

unint64_t sub_100245E90()
{
  result = qword_100AD6B60;
  if (!qword_100AD6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6B60);
  }

  return result;
}

unint64_t sub_100245EE8()
{
  result = qword_100AD6B68;
  if (!qword_100AD6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6B68);
  }

  return result;
}

uint64_t sub_100245FAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001F1160(&qword_100AD6BA0, &qword_1008136E0);
  __chkstk_darwin(v2 - 8);
  v3 = sub_1001F1160(&qword_100AD6BA8, &qword_1008136E8);
  __chkstk_darwin(v3);
  sub_1007961D4();
  v5._countAndFlagsBits = 0x206F74206E65704FLL;
  v5._object = 0xE800000000000000;
  sub_1007961C4(v5);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AD6BB0, &unk_100813718);
  sub_1007961B4();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_1007961C4(v6);
  sub_1007961F4();
  return sub_1007961A4();
}

uint64_t sub_100246150(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002812C;

  return sub_100245ADC(a1, v5, v4);
}

uint64_t sub_1002461FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002472CC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100246224(uint64_t a1)
{
  v2 = sub_100245E38();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100246264()
{
  result = qword_100AD6B70;
  if (!qword_100AD6B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6B70);
  }

  return result;
}

unint64_t sub_1002462BC()
{
  result = qword_100AD6B78;
  if (!qword_100AD6B78)
  {
    sub_1001F1234(&qword_100AD6B48, &qword_1008133D8);
    sub_1002452D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6B78);
  }

  return result;
}

uint64_t sub_100246340(uint64_t a1)
{
  v1[18] = a1;
  sub_1007A26F4();
  v1[19] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[20] = v3;
  v1[21] = v2;

  return _swift_task_switch(sub_1002463D8, v3, v2);
}

uint64_t sub_1002463D8()
{
  sub_100795A94();
  v1 = v0[10];
  v2 = [v1 primarySceneController];

  v3 = [v2 launchCoordinator];
  v0[22] = v3;

  v4 = sub_1007A2214();
  v0[23] = v4;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_100246578;
  v5 = swift_continuation_init();
  v0[17] = sub_1001F1160(&unk_100AD67E0, &qword_1008168C0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100298E88;
  v0[13] = &unk_100A10438;
  v0[14] = v5;
  [v3 appLaunchCoordinatorOnConditionMask:4096 blockID:v4 performBlock:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100246578()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return _swift_task_switch(sub_100246680, v2, v1);
}

uint64_t sub_100246680()
{
  v46 = v0;
  v1 = v0[22];
  v2 = v0[23];

  sub_100795A94();
  v3 = v0[10];
  v4 = [v3 primarySceneController];

  v5 = [v4 rootBarCoordinator];
  if (v5)
  {
    v44 = v0;
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v8 = *(&off_100A0C330 + v6 + 32);
      v9 = sub_1007A2214();

      v10 = [v5 hasStandardItemWithIdentifier:v9];

      if (v10)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10066A868(0, *(v7 + 2) + 1, 1, v7);
        }

        v12 = *(v7 + 2);
        v11 = *(v7 + 3);
        if (v12 >= v11 >> 1)
        {
          v7 = sub_10066A868((v11 > 1), v12 + 1, 1, v7);
        }

        *(v7 + 2) = v12 + 1;
        v7[v12 + 32] = v8;
      }

      ++v6;
    }

    while (v6 != 6);
    v13 = *(v7 + 2);
    if (v13)
    {
      v45 = _swiftEmptyArrayStorage;

      sub_1003BD0CC(0, v13, 0);
      v14 = (v7 + 32);
      v15 = _swiftEmptyArrayStorage;
      v16 = 0xEE0065726F74536BLL;
      do
      {
        v18 = *v14++;
        v17 = v18;
        v19 = 0x686372616573;
        if (v18 == 4)
        {
          v20 = 0xE600000000000000;
        }

        else
        {
          v19 = 0x61676E616DLL;
          v20 = 0xE500000000000000;
        }

        if (v17 == 3)
        {
          v19 = 0x6F6F626F69647561;
          v20 = v16;
        }

        v21 = 0xE900000000000065;
        v22 = 0x7972617262696CLL;
        if (v17 == 1)
        {
          v21 = 0xE700000000000000;
        }

        else
        {
          v22 = 0x726F74536B6F6F62;
        }

        if (!v17)
        {
          v22 = 1701670760;
          v21 = 0xE400000000000000;
        }

        if (v17 <= 2)
        {
          v23 = v22;
        }

        else
        {
          v23 = v19;
        }

        if (v17 <= 2)
        {
          v24 = v21;
        }

        else
        {
          v24 = v20;
        }

        v45 = v15;
        v26 = v15[2];
        v25 = v15[3];
        if (v26 >= v25 >> 1)
        {
          v28 = v16;
          sub_1003BD0CC((v25 > 1), v26 + 1, 1);
          v16 = v28;
          v15 = v45;
        }

        v15[2] = v26 + 1;
        v27 = &v15[2 * v26];
        v27[4] = v23;
        v27[5] = v24;
        --v13;
      }

      while (v13);
    }

    else
    {
    }

    if (qword_100AD1310 != -1)
    {
      swift_once();
    }

    v34 = sub_10079ACE4();
    sub_100008B98(v34, qword_100AD6AC8);

    v35 = sub_10079ACC4();
    v36 = sub_1007A29D4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v37 = 136315394;
      *(v37 + 4) = sub_1000070F4(0x2873746C75736572, 0xE900000000000029, &v45);
      *(v37 + 12) = 2080;
      v38 = sub_1007A25F4();
      v40 = v39;

      v41 = sub_1000070F4(v38, v40, &v45);

      *(v37 + 14) = v41;

      _os_log_impl(&_mh_execute_header, v35, v36, "TabBarOptionsProvider: %s: %s", v37, 0x16u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v0 = v44;
  }

  else
  {
    if (qword_100AD1310 != -1)
    {
      swift_once();
    }

    v29 = sub_10079ACE4();
    sub_100008B98(v29, qword_100AD6AC8);
    v30 = sub_10079ACC4();
    v31 = sub_1007A29B4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v45 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1000070F4(0x2873746C75736572, 0xE900000000000029, &v45);
      _os_log_impl(&_mh_execute_header, v30, v31, "TabBarOptionsProvider: %s: Failed getting root bar coordinator.", v32, 0xCu);
      sub_1000074E0(v33);
    }

    v7 = &off_100A0C358;
  }

  v42 = v0[1];

  return v42(v7);
}

uint64_t sub_100246D0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100246DA4;

  return sub_100246340(v3);
}

uint64_t sub_100246DA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100246EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002812C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_100246F98@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v20 = sub_1007967F4();
  v1 = *(v20 - 8);
  __chkstk_darwin(v20);
  v3 = (&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100796CF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v19 - v16;
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  (*(v5 + 16))(v7, v10, v4);
  *v3 = type metadata accessor for BundleFinder();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v20);
  sub_100796834();
  (*(v5 + 8))(v10, v4);
  return (*(v12 + 8))(v17, v11);
}

unint64_t sub_100247280(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100A0C258;
  v6._object = a2;
  v4 = sub_1007A3964(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1002472CC()
{
  v0 = sub_100796274();
  v58 = *(v0 - 8);
  v59 = v0;
  __chkstk_darwin(v0);
  v57 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1001F1160(&qword_100AD5CB0, &unk_100811910);
  __chkstk_darwin(v2 - 8);
  v56 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v55 = &v36 - v5;
  v6 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v6 - 8);
  v53 = &v36 - v7;
  v60 = sub_1007967F4();
  v8 = *(v60 - 8);
  __chkstk_darwin(v60);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100796CF4();
  v48 = *(v11 - 8);
  v49 = v11;
  __chkstk_darwin(v11);
  v47 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v16 = sub_1007A21D4();
  v61 = *(v16 - 8);
  v17 = v61;
  __chkstk_darwin(v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v36 - v21;
  v23 = sub_100796814();
  v50 = *(v23 - 8);
  v51 = v23;
  __chkstk_darwin(v23);
  v52 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1001F1160(&qword_100AD6B90, &unk_1008136B0);
  sub_1007A2154();
  sub_100796C94();
  v45 = *(v17 + 16);
  v37 = v19;
  v45(v19, v22, v16);
  v46 = type metadata accessor for BundleFinder();
  *v10 = v46;
  v42 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v25 = *(v8 + 104);
  v43 = v8 + 104;
  v44 = v25;
  v39 = v10;
  v25(v10);
  v26 = v47;
  sub_100796C94();
  sub_100796824();
  v27 = v48;
  v41 = *(v48 + 8);
  v28 = v49;
  v41(v15, v49);
  v29 = *(v61 + 8);
  v61 += 8;
  v40 = v29;
  v38 = v16;
  v29(v22, v16);
  sub_1007A2154();
  sub_100796C94();
  v45(v37, v22, v16);
  (*(v27 + 16))(v26, v15, v28);
  v30 = v39;
  *v39 = v46;
  v44(v30, v42, v60);
  v31 = v53;
  sub_100796834();
  v41(v15, v28);
  v40(v22, v38);
  (*(v50 + 56))(v31, 0, 1, v51);
  v65[0] = 6;
  v32 = sub_100795CE4();
  v33 = *(*(v32 - 8) + 56);
  v33(v55, 1, 1, v32);
  v33(v56, 1, 1, v32);
  sub_1001F1160(&qword_100AD4A58, &qword_10081DFF0);
  sub_100795B74();
  v62 = 0u;
  v63 = 0u;
  v64 = 0;
  sub_100795B64();
  *&v62 = sub_100795AA4();
  (*(v58 + 104))(v57, enum case for InputConnectionBehavior.default(_:), v59);
  sub_100247A88();
  sub_100245408();
  v34 = sub_100795E44();
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  sub_100795B64();
  sub_100795AA4();
  return v34;
}

unint64_t sub_100247A88()
{
  result = qword_100AD6B98;
  if (!qword_100AD6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6B98);
  }

  return result;
}

uint64_t sub_100247AE4(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100ADE0E0, &qword_100839CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for TipContentView(uint64_t a1)
{
  result = qword_100AD6C20;
  if (!qword_100AD6C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100247BDC(uint64_t a1)
{
  sub_100247C8C(319);
  if (v1 <= 0x3F)
  {
    sub_100247D20();
    if (v2 <= 0x3F)
    {
      sub_100247D70(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100247C8C(uint64_t a1)
{
  if (!qword_100AD6C30)
  {
    type metadata accessor for ChromeStyle(255);
    sub_10024A98C(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    v1 = sub_10079C494();
    if (!v2)
    {
      atomic_store(v1, &qword_100AD6C30);
    }
  }
}

unint64_t sub_100247D20()
{
  result = qword_100AD6C38;
  if (!qword_100AD6C38)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100AD6C38);
  }

  return result;
}

void sub_100247D70(uint64_t a1)
{
  if (!qword_100AD6C40)
  {
    sub_100247DCC();
    v1 = sub_10079BE04();
    if (!v2)
    {
      atomic_store(v1, &qword_100AD6C40);
    }
  }
}

unint64_t sub_100247DCC()
{
  result = qword_100AD6C48;
  if (!qword_100AD6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6C48);
  }

  return result;
}

uint64_t sub_100247E3C@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v47 = a3;
  v48 = a4;
  v11 = sub_1001F1160(&qword_100AD6D98, &qword_100813A30);
  __chkstk_darwin(v11);
  v13 = (&v41 - v12);
  v14 = sub_1001F1160(&qword_100AD6DA0, &qword_100813A38);
  __chkstk_darwin(v14 - 8);
  v46 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v44 = &v41 - v17;
  v49 = sub_10079DDC4();
  KeyPath = swift_getKeyPath();
  sub_10079E474();
  sub_10079BE54();
  v43 = sub_10079DF24();
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = a1;
    sub_10079B9A4(v58);

    v42 = v58[0];
    v41 = swift_getKeyPath();
    sub_10079D374();
    v19 = sub_10079D384();

    v20 = swift_getKeyPath();
    v21 = (v13 + *(v11 + 36));
    v22 = *(sub_1001F1160(&qword_100AEE3C0, &qword_1008173A0) + 28);
    v23 = enum case for Image.Scale.medium(_:);
    v24 = sub_10079DF84();
    (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
    *v21 = swift_getKeyPath();
    v26 = v41;
    v25 = v42;
    *v13 = v43;
    v13[1] = v26;
    v13[2] = v25;
    v13[3] = v20;
    v13[4] = v19;
    sub_10024A9F0();
    v27 = v44;
    sub_10079D944();
    sub_100007840(v13, &qword_100AD6D98, &qword_100813A30);
    v51 = 0;
    v28 = v46;
    sub_1000077D8(v27, v46, &qword_100AD6DA0, &qword_100813A38);
    v29 = KeyPath;
    *&v52[0] = KeyPath;
    *(&v52[0] + 1) = v49;
    v30 = v76;
    *v53 = v76;
    v31 = v74;
    v52[1] = v74;
    v52[2] = v75;
    *&v53[16] = 256;
    v53[18] = 0;
    *(a5 + 32) = v75;
    *(a5 + 48) = v30;
    *a5 = v52[0];
    *(a5 + 16) = v31;
    *(a5 + 63) = *&v53[15];
    v32 = sub_1001F1160(&qword_100AD6DD0, &qword_100813AF0);
    sub_1000077D8(v28, a5 + *(v32 + 48), &qword_100AD6DA0, &qword_100813A38);
    v33 = (a5 + *(v32 + 64));
    *&v54 = a6;
    *(&v54 + 1) = a7;
    LOBYTE(v55) = 0;
    DWORD1(v55) = *&v50[3];
    *(&v55 + 1) = *v50;
    *(&v55 + 1) = 0;
    *&v56 = 0;
    v34 = v47;
    v35 = v48;
    *(&v56 + 1) = v47;
    *&v57[0] = v48;
    *(v57 + 8) = 0u;
    *(&v57[1] + 8) = 0u;
    *(&v57[2] + 1) = 0xBFF0000000000000;
    v36 = v55;
    *v33 = v54;
    v33[1] = v36;
    v37 = v56;
    v38 = v57[0];
    v39 = v57[2];
    v33[4] = v57[1];
    v33[5] = v39;
    v33[2] = v37;
    v33[3] = v38;

    sub_1000077D8(v52, v58, &qword_100AD6DD8, &qword_100813AF8);
    sub_1000077D8(&v54, v58, &qword_100AD6DE0, &qword_100813B00);
    sub_100007840(v27, &qword_100AD6DA0, &qword_100813A38);
    *v58 = a6;
    *&v58[1] = a7;
    v59 = 0;
    *v60 = *v50;
    *&v60[3] = *&v50[3];
    v61 = 0;
    v62 = 0;
    v63 = v34;
    v64 = v35;
    v65 = 0u;
    v66 = 0u;
    v67 = 0xBFF0000000000000;
    sub_100007840(v58, &qword_100AD6DE0, &qword_100813B00);
    sub_100007840(v28, &qword_100AD6DA0, &qword_100813A38);
    v68[0] = v29;
    v68[1] = v49;
    v69 = v74;
    v70 = v75;
    v71 = v76;
    v72 = 256;
    v73 = 0;
    return sub_100007840(v68, &qword_100AD6DD8, &qword_100813AF8);
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_10024A98C(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100248374@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  *a2 = sub_10079E474();
  a2[1] = v7;
  v8 = sub_1001F1160(&qword_100AD6D90, &qword_100813A28);
  return sub_100247E3C(v4, v6, v5, a2 + *(v8 + 44), 44.0, 44.0);
}

uint64_t sub_1002483F0@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for TipContentView(0);
  v38 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v39 = v3;
  v40 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10079CF24();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10079C394();
  v7 = *(v6 - 8);
  v33 = v6;
  v34 = v7;
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100AD6C88, &qword_100813830);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = sub_1001F1160(&qword_100AD6C90, &qword_100813838);
  v35 = *(v14 - 8);
  v36 = v14;
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v37 = sub_1001F1160(&qword_100AD6C98, &qword_100813840);
  __chkstk_darwin(v37);
  v18 = &v31 - v17;
  v32 = v1;
  v45 = v1;

  sub_1001F1160(&qword_100AD6CA0, &qword_100813848);
  sub_10024A010();
  v19 = v16;
  sub_10079E054();
  sub_10079C384();
  sub_100005920(&qword_100AD6CE8, &qword_100AD6C88, &qword_100813830, &protocol conformance descriptor for Button<A>);
  sub_10024A98C(&qword_100AD6CF0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v20 = v33;
  sub_10079D6A4();
  (*(v34 + 8))(v9, v20);
  v21 = v32;
  (*(v11 + 8))(v13, v10);
  v22 = *v21;
  if (*v21)
  {
    type metadata accessor for ChromeStyle(0);
    sub_10024A98C(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    v23 = v22;
    v24 = sub_10079B8A4();
    (*(v35 + 32))(v18, v19, v36);
    v25 = &v18[*(v37 + 36)];
    *v25 = v24;
    v25[1] = v22;
    v26 = v41;
    sub_10079CF04();
    v27 = v40;
    sub_10024A238(v21, v40);
    v28 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v29 = swift_allocObject();
    sub_10024A4F4(v27, v29 + v28, type metadata accessor for TipContentView);
    sub_10024A300();
    sub_10079D934();

    (*(v42 + 8))(v26, v43);
    return sub_100007840(v18, &qword_100AD6C98, &qword_100813840);
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_10024A98C(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002489D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001F1160(&qword_100AD6CD8, &qword_100813860);
  __chkstk_darwin(v3 - 8);
  v5 = v24 - v4;
  v6 = sub_1001F1160(&qword_100AD6CC8, &qword_100813858);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v24 - v8;
  v10 = sub_1001F1160(&qword_100AD6CB8, &qword_100813850);
  __chkstk_darwin(v10);
  v12 = v24 - v11;
  *v5 = sub_10079C8D4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v13 = sub_1001F1160(&qword_100AD6D00, &qword_100813868);
  sub_100248D94(v1, &v5[*(v13 + 44)]);
  type metadata accessor for TipContentView(0);
  sub_1001F1160(&qword_100AD6BC0, &unk_100825980);
  sub_10079BDF4();
  sub_10079E474();
  sub_10079BE54();
  sub_10020B3C8(v5, v9, &qword_100AD6CD8, &qword_100813860);
  v14 = &v9[*(v7 + 44)];
  v15 = v24[1];
  *v14 = v24[0];
  *(v14 + 1) = v15;
  *(v14 + 2) = v24[2];
  v16 = *v1;
  if (*v1)
  {
    type metadata accessor for ChromeStyle(0);
    sub_10024A98C(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    v17 = v16;
    v18 = sub_10079B8A4();
    sub_10020B3C8(v9, v12, &qword_100AD6CC8, &qword_100813858);
    v19 = &v12[*(v10 + 36)];
    *v19 = v18;
    v19[1] = v16;
    v20 = *(sub_1001F1160(&qword_100AD6CA0, &qword_100813848) + 36);
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v17;
    sub_10079B9A4((a1 + v20));

    v22 = sub_10079BC44();
    (*(*(v22 - 8) + 56))(a1 + v20, 0, 1, v22);
    return sub_10020B3C8(v12, a1, &qword_100AD6CB8, &qword_100813850);
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_10024A98C(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100248D94@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a2;
  v3 = sub_1001F1160(&qword_100AD6D08, &qword_1008138B8);
  __chkstk_darwin(v3 - 8);
  v158 = v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v156 = v136 - v6;
  v148 = sub_1001F1160(&unk_100AE3FB0, &qword_1008138C0);
  __chkstk_darwin(v148);
  v147 = v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v145 = v136 - v9;
  v10 = sub_10079C0E4();
  v170 = *(v10 - 8);
  v171 = v10;
  __chkstk_darwin(v10);
  v169 = v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v168 = v136 - v13;
  v146 = sub_1001F1160(&qword_100AD53B0, &qword_1008268D0);
  __chkstk_darwin(v146);
  v172 = v136 - v14;
  v15 = sub_10079D484();
  v166 = *(v15 - 8);
  v167 = v15;
  __chkstk_darwin(v15);
  v165 = v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1001F1160(&qword_100AD6D10, &qword_1008138C8);
  __chkstk_darwin(v144);
  v150 = v136 - v17;
  v149 = sub_1001F1160(&qword_100AD6D18, &qword_1008138D0);
  __chkstk_darwin(v149);
  v153 = v136 - v18;
  v152 = sub_1001F1160(&qword_100AD6D20, &qword_1008138D8);
  __chkstk_darwin(v152);
  v155 = v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v151 = v136 - v21;
  __chkstk_darwin(v22);
  v173 = v136 - v23;
  v174 = sub_10079BC44();
  v24 = *(v174 - 8);
  __chkstk_darwin(v174);
  v26 = v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v136 - v28;
  v30 = type metadata accessor for TextFormatSizeLabel(0);
  v31 = v30 - 8;
  __chkstk_darwin(v30);
  v33 = (v136 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v161 = sub_1001F1160(&qword_100AE4750, &qword_100827210);
  __chkstk_darwin(v161);
  v160 = v136 - v34;
  v159 = sub_1001F1160(&qword_100AD6D28, &qword_1008138E0);
  __chkstk_darwin(v159);
  v162 = v136 - v35;
  v164 = sub_1001F1160(&qword_100AD6D30, &qword_1008138E8);
  __chkstk_darwin(v164);
  v163 = v136 - v36;
  v37 = sub_1001F1160(&qword_100AD6D38, &qword_1008138F0);
  __chkstk_darwin(v37 - 8);
  v154 = v136 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v175 = v136 - v40;
  sub_10079D444();
  sub_10079D3F4();
  v41 = sub_10079D464();

  v42 = a1[2];
  v43 = a1[3];
  *v33 = swift_getKeyPath();
  sub_1001F1160(&unk_100ADBC10, &qword_100818090);
  swift_storeEnumTagMultiPayload();
  *(v33 + *(v31 + 28)) = v41;
  v44 = (v33 + *(v31 + 32));
  *v44 = v42;
  v44[1] = v43;
  v176 = a1;
  v45 = *a1;
  if (!*a1)
  {
    goto LABEL_21;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  v46 = v45;
  sub_10079B9A4(v29);

  v47 = *(v24 + 104);
  v139 = enum case for ColorScheme.light(_:);
  v48 = v174;
  v140 = v24 + 104;
  v138 = v47;
  v47(v26);
  v49 = sub_10079BC34();
  v50 = *(v24 + 8);
  v136[1] = v24 + 8;
  v50(v26, v48);
  v141 = v50;
  v50(v29, v48);
  v142 = v29;
  v143 = v26;
  if (v49)
  {
    v51 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  else
  {
    v51 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  v52 = v51;

  KeyPath = swift_getKeyPath();
  v137 = v46;
  v54 = KeyPath;
  v55 = v160;
  sub_10024A4F4(v33, v160, type metadata accessor for TextFormatSizeLabel);
  v56 = (v55 + *(v161 + 36));
  *v56 = v54;
  v56[1] = v52;
  LOBYTE(v52) = sub_10079D284();
  v57 = v162;
  sub_10020B3C8(v55, v162, &qword_100AE4750, &qword_100827210);
  v58 = v57 + *(v159 + 36);
  *v58 = v52;
  *(v58 + 8) = 0u;
  *(v58 + 24) = 0u;
  *(v58 + 40) = 1;
  sub_10079E474();
  sub_10079C414();
  v59 = v57;
  v60 = v163;
  sub_10020B3C8(v59, v163, &qword_100AD6D28, &qword_1008138E0);
  v61 = (v60 + *(v164 + 36));
  v62 = v191;
  v61[4] = v190;
  v61[5] = v62;
  v61[6] = v192;
  v63 = v187;
  *v61 = v186;
  v61[1] = v63;
  v64 = v189;
  v61[2] = v188;
  v61[3] = v64;
  sub_10024A55C();
  sub_10079D944();
  sub_100007840(v60, &qword_100AD6D30, &qword_1008138E8);
  v65 = v176[6];
  *&v181 = v176[5];
  *(&v181 + 1) = v65;
  sub_100206ECC();

  v66 = sub_10079D5D4();
  v68 = v67;
  v70 = v69;
  sub_10079D354();
  v71 = v165;
  v72 = v166;
  v73 = v167;
  (*(v166 + 104))(v165, enum case for Font.Leading.tight(_:), v167);
  sub_10079D4A4();

  (*(v72 + 8))(v71, v73);
  sub_10079D3F4();
  sub_10079D464();

  v74 = sub_10079D5A4();
  v76 = v75;
  LOBYTE(v60) = v77;
  v79 = v78;

  sub_10020B430(v66, v68, v70 & 1);

  v166 = v76;
  v167 = v74;
  *&v181 = v74;
  *(&v181 + 1) = v76;
  v80 = v60 & 1;
  LOBYTE(v182) = v60 & 1;
  *(&v182 + 1) = v79;
  v82 = v170;
  v81 = v171;
  v83 = *(v170 + 104);
  v84 = v168;
  v83(v168, enum case for DynamicTypeSize.xSmall(_:), v171);
  v85 = v169;
  v83(v169, enum case for DynamicTypeSize.xxxLarge(_:), v81);
  sub_10024A98C(&qword_100AD6D58, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if ((sub_1007A20F4() & 1) == 0)
  {
    __break(1u);
LABEL_21:
    type metadata accessor for ChromeStyle(0);
    sub_10024A98C(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);

    result = sub_10079C474();
    __break(1u);
    return result;
  }

  LODWORD(v165) = v80;
  v86 = *(v82 + 32);
  v87 = v145;
  v86(v145, v84, v81);
  v168 = v79;
  v88 = v148;
  v86((v87 + *(v148 + 48)), v85, v81);
  v89 = v147;
  sub_1000077D8(v87, v147, &unk_100AE3FB0, &qword_1008138C0);
  v90 = *(v88 + 48);
  v86(v172, v89, v81);
  v91 = *(v82 + 8);
  v91(v89 + v90, v81);
  sub_10020B3C8(v87, v89, &unk_100AE3FB0, &qword_1008138C0);
  v92 = v172;
  v86(&v172[*(v146 + 36)], (v89 + *(v88 + 48)), v81);
  v91(v89, v81);
  sub_100005920(&qword_100AE40D0, &qword_100AD53B0, &qword_1008268D0, &protocol conformance descriptor for ClosedRange<A>);
  v93 = v150;
  sub_10079D7E4();
  sub_100007840(v92, &qword_100AD53B0, &qword_1008268D0);
  sub_10020B430(v167, v166, v165);

  v94 = swift_getKeyPath();
  v95 = v93 + *(v144 + 36);
  *v95 = v94;
  *(v95 + 8) = 0;
  *(v95 + 16) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  v96 = v137;
  v97 = v142;
  sub_10079B9A4(v142);

  v98 = v143;
  v99 = v174;
  v138(v143, v139, v174);
  LOBYTE(v92) = sub_10079BC34();
  v100 = v98;
  v101 = v141;
  v141(v100, v99);
  v101(v97, v99);
  if (v92)
  {
    v102 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  else
  {
    v102 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  v103 = v102;
  v104 = v153;

  v105 = swift_getKeyPath();
  sub_10020B3C8(v93, v104, &qword_100AD6D10, &qword_1008138C8);
  v106 = (v104 + *(v149 + 36));
  *v106 = v105;
  v106[1] = v103;
  sub_1001F1160(&qword_100AE17F0, &qword_100822890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100812CF0;
  v108 = sub_10079D2A4();
  *(inited + 32) = v108;
  v109 = sub_10079D2B4();
  *(inited + 33) = v109;
  v110 = sub_10079D2E4();
  *(inited + 34) = v110;
  v111 = sub_10079D2D4();
  sub_10079D2D4();
  if (sub_10079D2D4() != v108)
  {
    v111 = sub_10079D2D4();
  }

  sub_10079D2D4();
  if (sub_10079D2D4() != v109)
  {
    v111 = sub_10079D2D4();
  }

  sub_10079D2D4();
  if (sub_10079D2D4() != v110)
  {
    v111 = sub_10079D2D4();
  }

  v112 = v151;
  sub_10020B3C8(v104, v151, &qword_100AD6D18, &qword_1008138D0);
  v113 = v112 + *(v152 + 36);
  *v113 = v111;
  *(v113 + 8) = 0u;
  *(v113 + 24) = 0u;
  *(v113 + 40) = 1;
  sub_10020B3C8(v112, v173, &qword_100AD6D20, &qword_1008138D8);
  v115 = v176[7];
  v114 = v176[8];
  type metadata accessor for ChromeStyle(0);
  sub_10024A98C(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);

  v116 = sub_10079C484();
  v118 = v117;
  v119 = swift_initStackObject();
  *(v119 + 16) = xmmword_10080EFF0;
  v120 = sub_10079D2A4();
  *(v119 + 32) = v120;
  v121 = sub_10079D2E4();
  *(v119 + 33) = v121;
  v122 = sub_10079D2D4();
  sub_10079D2D4();
  if (sub_10079D2D4() != v120)
  {
    v122 = sub_10079D2D4();
  }

  sub_10079D2D4();
  if (sub_10079D2D4() != v121)
  {
    v122 = sub_10079D2D4();
  }

  sub_10079BBA4();
  v185 = 0;
  *&v177 = v116;
  *(&v177 + 1) = v118;
  *&v178 = v115;
  *(&v178 + 1) = v114;
  LOBYTE(v179) = v122;
  *(&v179 + 1) = v123;
  *&v180[0] = v124;
  *(&v180[0] + 1) = v125;
  *&v180[1] = v126;
  BYTE8(v180[1]) = 0;
  sub_1001F1160(&qword_100AD6D60, &qword_100813988);
  sub_10024A614(&qword_100AD6D68, &qword_100AD6D60, &qword_100813988, sub_10024A7E4);
  v127 = v156;
  sub_10079D944();
  v183 = v179;
  v184[0] = v180[0];
  *(v184 + 9) = *(v180 + 9);
  v181 = v177;
  v182 = v178;
  sub_100007840(&v181, &qword_100AD6D60, &qword_100813988);
  v128 = v175;
  v129 = v154;
  sub_1000077D8(v175, v154, &qword_100AD6D38, &qword_1008138F0);
  v130 = v173;
  v131 = v155;
  sub_10002C05C(v173, v155);
  v132 = v158;
  sub_1000077D8(v127, v158, &qword_100AD6D08, &qword_1008138B8);
  v133 = v157;
  sub_1000077D8(v129, v157, &qword_100AD6D38, &qword_1008138F0);
  v134 = sub_1001F1160(&qword_100AD6D78, &qword_100813990);
  sub_10002C05C(v131, v133 + *(v134 + 48));
  sub_1000077D8(v132, v133 + *(v134 + 64), &qword_100AD6D08, &qword_1008138B8);
  sub_100007840(v127, &qword_100AD6D08, &qword_1008138B8);
  sub_100007840(v130, &qword_100AD6D20, &qword_1008138D8);
  sub_100007840(v128, &qword_100AD6D38, &qword_1008138F0);
  sub_100007840(v132, &qword_100AD6D08, &qword_1008138B8);
  sub_100007840(v131, &qword_100AD6D20, &qword_1008138D8);
  return sub_100007840(v129, &qword_100AD6D38, &qword_1008138F0);
}

unint64_t sub_10024A010()
{
  result = qword_100AD6CA8;
  if (!qword_100AD6CA8)
  {
    sub_1001F1234(&qword_100AD6CA0, &qword_100813848);
    sub_10024A0C8();
    sub_100005920(&qword_100AD6CE0, &qword_100ADB270, &unk_10082FE70, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6CA8);
  }

  return result;
}

unint64_t sub_10024A0C8()
{
  result = qword_100AD6CB0;
  if (!qword_100AD6CB0)
  {
    sub_1001F1234(&qword_100AD6CB8, &qword_100813850);
    sub_10024A180();
    sub_100005920(&qword_100AD1D60, &unk_100ADB260, &unk_10080B750, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6CB0);
  }

  return result;
}

unint64_t sub_10024A180()
{
  result = qword_100AD6CC0;
  if (!qword_100AD6CC0)
  {
    sub_1001F1234(&qword_100AD6CC8, &qword_100813858);
    sub_100005920(&qword_100AD6CD0, &qword_100AD6CD8, &qword_100813860, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6CC0);
  }

  return result;
}

uint64_t sub_10024A238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10024A300()
{
  result = qword_100AD6CF8;
  if (!qword_100AD6CF8)
  {
    sub_1001F1234(&qword_100AD6C98, &qword_100813840);
    sub_1001F1234(&qword_100AD6C88, &qword_100813830);
    sub_10079C394();
    sub_100005920(&qword_100AD6CE8, &qword_100AD6C88, &qword_100813830, &protocol conformance descriptor for Button<A>);
    sub_10024A98C(&qword_100AD6CF0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD1D60, &unk_100ADB260, &unk_10080B750, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6CF8);
  }

  return result;
}

uint64_t sub_10024A49C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10079C5B4();
  *a1 = result;
  return result;
}

uint64_t sub_10024A4F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10024A55C()
{
  result = qword_100AD6D40;
  if (!qword_100AD6D40)
  {
    sub_1001F1234(&qword_100AD6D30, &qword_1008138E8);
    sub_10024A614(&qword_100AD6D48, &qword_100AD6D28, &qword_1008138E0, sub_10024A698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6D40);
  }

  return result;
}

uint64_t sub_10024A614(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10024A698()
{
  result = qword_100AD6D50;
  if (!qword_100AD6D50)
  {
    sub_1001F1234(&qword_100AE4750, &qword_100827210);
    sub_10024A98C(&qword_100ADBBF0, type metadata accessor for TextFormatSizeLabel, &unk_100818034);
    sub_100005920(&unk_100AD1D10, &qword_100ADB490, &unk_10080B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6D50);
  }

  return result;
}

uint64_t sub_10024A780@<X0>(uint64_t a1@<X8>)
{
  result = sub_10079C7B4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_10024A7E4()
{
  result = qword_100AD6D70;
  if (!qword_100AD6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6D70);
  }

  return result;
}

uint64_t sub_10024A838(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10024A880(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10024A8D0()
{
  result = qword_100AD6D80;
  if (!qword_100AD6D80)
  {
    sub_1001F1234(&qword_100AD6D88, &qword_1008139D0);
    sub_10024A300();
    sub_10024A98C(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6D80);
  }

  return result;
}

uint64_t sub_10024A98C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10024A9F0()
{
  result = qword_100AD6DA8;
  if (!qword_100AD6DA8)
  {
    sub_1001F1234(&qword_100AD6D98, &qword_100813A30);
    sub_10024AAA8();
    sub_100005920(&unk_100AD1D00, &qword_100AEE3C0, &qword_1008173A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6DA8);
  }

  return result;
}

unint64_t sub_10024AAA8()
{
  result = qword_100AD6DB0;
  if (!qword_100AD6DB0)
  {
    sub_1001F1234(&qword_100AD6DB8, &qword_100813AE8);
    sub_10024AB60();
    sub_100005920(&unk_100AD1CF0, &qword_100ADBDA0, &unk_10080B720, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6DB0);
  }

  return result;
}

unint64_t sub_10024AB60()
{
  result = qword_100AD6DC0;
  if (!qword_100AD6DC0)
  {
    sub_1001F1234(&qword_100AD6DC8, &qword_10082E230);
    sub_100005920(&unk_100AD1D10, &qword_100ADB490, &unk_10080B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6DC0);
  }

  return result;
}

uint64_t sub_10024AC18()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100B22F40);
  sub_100008B98(v0, qword_100B22F40);
  return sub_10079ACD4();
}

uint64_t sub_10024AC98(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = *(v4 + 16);
  v11 = *(v10 + 16);

  v12 = v10 + 56;
  v13 = v11 + 1;
  while (--v13)
  {
    v14 = v12 + 32;
    v31.origin.x = a1;
    v31.origin.y = a2;
    v31.size.width = a3;
    v31.size.height = a4;
    v15 = CGRectEqualToRect(*(v12 - 24), v31);
    v12 = v14;
    if (v15)
    {
    }
  }

  if (qword_100AD1330 != -1)
  {
    swift_once();
  }

  v17 = sub_10079ACE4();
  sub_100008B98(v17, qword_100B22F40);
  v18 = sub_10079ACC4();
  v19 = sub_1007A2994();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29 = v21;
    *v20 = 136315138;
    type metadata accessor for CGRect(0);
    v22 = sub_1007A22E4();
    v24 = sub_1000070F4(v22, v23, &v29);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "adding disallowed rect for close gesture: %s", v20, 0xCu);
    sub_1000074E0(v21);
  }

  v25 = *(v5 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v25;
  if ((result & 1) == 0)
  {
    result = sub_10066A87C(0, *(v25 + 16) + 1, 1, v25);
    v25 = result;
    *(v5 + 16) = result;
  }

  v27 = *(v25 + 16);
  v26 = *(v25 + 24);
  if (v27 >= v26 >> 1)
  {
    result = sub_10066A87C((v26 > 1), v27 + 1, 1, v25);
    v25 = result;
  }

  *(v25 + 16) = v27 + 1;
  v28 = (v25 + 32 * v27);
  v28[4] = a1;
  v28[5] = a2;
  v28[6] = a3;
  v28[7] = a4;
  *(v5 + 16) = v25;
  return result;
}

void sub_10024AF1C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *(v4 + 16);
  v10 = *(v9 + 16);

  if (v10)
  {
    v11 = 0;
    v12 = v9 + 56;
    while (1)
    {
      if (v11 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v31.origin.x = a1;
      v31.origin.y = a2;
      v31.size.width = a3;
      v31.size.height = a4;
      if (CGRectEqualToRect(*(v12 - 24), v31))
      {
        break;
      }

      ++v11;
      v12 += 32;
      if (v10 == v11)
      {
        goto LABEL_6;
      }
    }

    if (qword_100AD1330 != -1)
    {
      swift_once();
    }

    v20 = sub_10079ACE4();
    sub_100008B98(v20, qword_100B22F40);
    v21 = sub_10079ACC4();
    v22 = sub_1007A2994();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      type metadata accessor for CGRect(0);
      v25 = sub_1007A22E4();
      v27 = sub_1000070F4(v25, v26, &v29);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "removing disallowed rect for close gesture: %s", v23, 0xCu);
      sub_1000074E0(v24);
    }

    sub_10048ABE4(v11);
  }

  else
  {
LABEL_6:

    if (qword_100AD1330 != -1)
    {
LABEL_18:
      swift_once();
    }

    v13 = sub_10079ACE4();
    sub_100008B98(v13, qword_100B22F40);
    oslog = sub_10079ACC4();
    v14 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315138;
      type metadata accessor for CGRect(0);
      v17 = sub_1007A22E4();
      v19 = sub_1000070F4(v17, v18, &v29);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, oslog, v14, "Rect was not disallowed for close gesture, cannot now allow it.  ignored removal: %s", v15, 0xCu);
      sub_1000074E0(v16);
    }

    else
    {
    }
  }
}

uint64_t sub_10024B274()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10024B2D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10079C824();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&unk_100ADB4C0, &qword_100813DC0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000077D8(v2, &v14 - v9, &unk_100ADB4C0, &qword_100813DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10020B3C8(v10, a1, &unk_100ADB6B0, qword_100816980);
  }

  v12 = sub_1007A29C4();
  v13 = sub_10079D244();
  sub_10079AB44(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

  sub_10079C814();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10024B4B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB4E0, &qword_100815F30);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for REActionMenuView(0);
  sub_1000077D8(v1 + *(v10 + 24), v9, &unk_100ADB4E0, &qword_100815F30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079CAE4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1007A29C4();
    v14 = sub_10079D244();
    sub_10079AB44(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10024B6B8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10079B8B4();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for REActionMenuView(uint64_t a1)
{
  result = qword_100AD6F00;
  if (!qword_100AD6F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10024B77C(uint64_t a1)
{
  sub_10024BB20(319, &qword_100AD6F10, &unk_100ADB6B0, qword_100816980, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10024BABC(319, &qword_100AD6F18, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10024BABC(319, &qword_100ADB690, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_10024BABC(319, &qword_100AD6F20, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_100247C8C(319);
          if (v5 <= 0x3F)
          {
            sub_10024BABC(319, &qword_100AD6F28, type metadata accessor for UIEdgeInsets, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_10024BB84(319, &qword_100AD6F30, &type metadata for CGFloat);
              if (v7 <= 0x3F)
              {
                sub_10024BB20(319, &qword_100AD6F38, &qword_100AD6F40, &qword_100813C00, &type metadata accessor for State);
                if (v8 <= 0x3F)
                {
                  sub_10024BB84(319, &qword_100AE3F00, &type metadata for Bool);
                  if (v9 <= 0x3F)
                  {
                    sub_10024BBD0();
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for REActionMenuState(319);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for BookReaderViewModel(319);
                        if (v12 <= 0x3F)
                        {
                          sub_10024BC28();
                          if (v13 <= 0x3F)
                          {
                            sub_10079BED4();
                            if (v14 <= 0x3F)
                            {
                              sub_10079ACE4();
                              if (v15 <= 0x3F)
                              {
                                swift_cvw_initStructMetadataWithLayoutString();
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10024BABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10024BB20(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1001F1234(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10024BB84(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_10079E024();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10024BBD0()
{
  if (!qword_100ADB6C0[0])
  {
    v0 = sub_10079CF64();
    if (!v1)
    {
      atomic_store(v0, qword_100ADB6C0);
    }
  }
}

unint64_t sub_10024BC28()
{
  result = qword_100AD6F48;
  if (!qword_100AD6F48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100AD6F48);
  }

  return result;
}

void *sub_10024BCA8()
{
  v1 = v0;
  v103 = sub_1001F1160(&qword_100AD7350, &unk_100843FE0);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v87 - v2;
  v109 = sub_100796CF4();
  v105 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v110 = &v87 - v5;
  v107 = sub_1007A21D4();
  v6 = *(v107 - 8);
  __chkstk_darwin(v107);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v87 - v10;
  v114 = _swiftEmptyArrayStorage;
  v12 = type metadata accessor for REActionMenuView(0);
  sub_10000E3E8(&v0[v12[20]], *&v0[v12[20] + 24]);
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = &selRef_assetReviewForAssetID_completion_;
  v106 = v11;
  if (Strong)
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v15 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v15 == 2)
    {
      sub_1001F1160(&qword_100AD7358, &qword_100814238);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10080B690;
      v96 = sub_100332414();
      v95 = v17;
      v18 = &v0[v12[25]];
      v19 = v18[1];
      v98 = *v18;
      v97 = v19;

      sub_1007A2154();
      sub_100796C94();
      v92 = *(v6 + 16);
      v99 = v12;
      v20 = v107;
      v92(v8, v106, v107);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v91 = ObjCClassFromMetadata;
      v90 = objc_opt_self();
      v22 = [v90 bundleForClass:ObjCClassFromMetadata];
      v23 = v105;
      v104 = v6;
      v89 = *(v105 + 16);
      v24 = v8;
      v25 = v108;
      v100 = v1;
      v26 = v109;
      v89(v108, v110, v109);
      v94 = sub_1007A22D4(v24, 0, 0, v22, v25, "Accessibility string for a button that shows the table of contents", 66, 2);
      v93 = v27;
      v88 = *(v23 + 8);
      v88(v110, v26);
      v28 = v25;
      v8 = v24;
      v87 = *(v104 + 1);
      v87(v106, v20);
      sub_1007A2154();
      sub_100796C94();
      v92(v24, v106, v20);
      v29 = v110;
      v30 = [v90 bundleForClass:v91];
      v89(v28, v29, v26);
      v6 = v104;
      v31 = sub_1007A22D4(v8, 0, 0, v30, v28, "Accessibility hint for a table of contents button", 49, 2);
      v33 = v32;
      v34 = v29;
      v11 = v106;
      v35 = v26;
      v1 = v100;
      v88(v34, v35);
      v14 = &selRef_assetReviewForAssetID_completion_;
      v36 = v20;
      v12 = v99;
      v87(v11, v36);
      v37 = v95;
      *(v16 + 32) = v96;
      *(v16 + 40) = v37;
      *(v16 + 48) = 0;
      *(v16 + 49) = v112;
      *(v16 + 52) = *(&v112 + 3);
      v38 = v97;
      *(v16 + 56) = v98;
      *(v16 + 64) = v38;
      *(v16 + 72) = sub_10024CA6C;
      *(v16 + 80) = 0;
      *(v16 + 88) = 0x73746E65746E6F43;
      v39 = v94;
      *(v16 + 96) = 0xE800000000000000;
      *(v16 + 104) = v39;
      *(v16 + 112) = v93;
      *(v16 + 120) = v31;
      *(v16 + 128) = v33;
      sub_1004841C8(v16);
    }
  }

  v40 = *&v1[v12[16]];
  swift_getKeyPath();
  v41 = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
  v112 = v40;
  v100 = sub_1002596D0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  if (*(v40 + 136))
  {
    sub_1001F1160(&qword_100AD7358, &qword_100814238);
    inited = swift_initStackObject();
    v99 = v41;
    v43 = inited;
    *(inited + 16) = xmmword_10080B690;
    sub_1007A2154();
    v44 = v110;
    sub_100796C94();
    v45 = *(v6 + 16);
    v46 = v8;
    v47 = v11;
    v104 = v8;
    v48 = v11;
    v49 = v107;
    v45(v46, v47, v107);
    type metadata accessor for BundleFinder();
    v50 = swift_getObjCClassFromMetadata();
    v51 = [objc_opt_self() bundleForClass:v50];
    v52 = v6;
    v53 = v105;
    v54 = v108;
    v55 = v109;
    (*(v105 + 16))(v108, v44, v109);
    v56 = sub_1007A22D4(v104, 0, 0, v51, v54, "Action menu bookmarks & highlights button", 41, 2);
    v98 = v57;
    v58 = v53;
    v6 = v52;
    (*(v58 + 8))(v44, v55);
    (*(v52 + 8))(v48, v49);
    swift_getKeyPath();
    v11 = v48;
    v112 = v40;
    sub_100797A14();

    v111 = *(v40 + 136);
    sub_100796C74();
    sub_100258D7C();
    v59 = v101;
    v14 = &selRef_assetReviewForAssetID_completion_;
    sub_100796714();
    sub_100005920(&qword_100AD7368, &qword_100AD7350, &unk_100843FE0, &protocol conformance descriptor for IntegerFormatStyle<A>);
    v60 = v103;
    v8 = v104;
    sub_1007A34E4();
    (v102)[1](v59, v60);
    v61 = v112;
    v62 = v113;
    v63 = v98;
    *(v43 + 32) = v56;
    *(v43 + 40) = v63;
    *(v43 + 48) = 1;
    *(v43 + 49) = v112;
    *(v43 + 52) = *(&v112 + 3);
    *(v43 + 56) = v61;
    *(v43 + 64) = v62;
    *(v43 + 72) = sub_10024CAB4;
    *(v43 + 80) = 0;
    *(v43 + 88) = 0x697461746F6E6E41;
    *(v43 + 96) = 0xEB00000000736E6FLL;
    *(v43 + 104) = 0u;
    *(v43 + 120) = 0u;
    sub_1004841C8(v43);
  }

  sub_1001F1160(&qword_100AD7358, &qword_100814238);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_10080EFF0;
  sub_1007A2154();
  v65 = v11;
  v66 = v110;
  sub_100796C94();
  v67 = *(v6 + 16);
  v101 = (v6 + 16);
  v104 = v67;
  v68 = v107;
  (v67)(v8, v65, v107);
  type metadata accessor for BundleFinder();
  v69 = swift_getObjCClassFromMetadata();
  v103 = v69;
  v102 = objc_opt_self();
  v70 = [v102 v14[381]];
  sub_100796C94();
  v71 = sub_1007A22B4();
  v72 = v8;
  v74 = v73;
  v75 = v6;
  v76 = v105;
  v100 = *(v105 + 8);
  v77 = v68;
  (v100)(v66, v109);
  v99 = *(v75 + 8);
  v78 = v106;
  (v99)(v106, v77);
  *(v64 + 32) = v71;
  *(v64 + 40) = v74;
  *(v64 + 48) = 0;
  *(v64 + 49) = v111;
  *(v64 + 52) = *(&v111 + 3);
  *(v64 + 56) = 0x697966696E67616DLL;
  *(v64 + 64) = 0xEF7373616C67676ELL;
  *(v64 + 72) = sub_10024CAFC;
  *(v64 + 80) = 0;
  *(v64 + 88) = 0x686372616553;
  *(v64 + 96) = 0xE600000000000000;
  *(v64 + 104) = 0u;
  *(v64 + 120) = 0u;
  sub_1007A2154();
  sub_100796C94();
  v79 = v72;
  (v104)(v72, v78, v77);
  v80 = [v102 bundleForClass:v103];
  v81 = v108;
  v82 = v109;
  (*(v76 + 16))(v108, v66, v109);
  v83 = sub_1007A22D4(v79, 0, 0, v80, v81, "Action menu themes button", 25, 2);
  v85 = v84;
  (v100)(v66, v82);
  (v99)(v78, v107);
  *(v64 + 136) = v83;
  *(v64 + 144) = v85;
  *(v64 + 152) = 0;
  *(v64 + 153) = v112;
  *(v64 + 156) = *(&v112 + 3);
  *(v64 + 160) = 0x6D726F6674786574;
  *(v64 + 168) = 0xEF657A69732E7461;
  *(v64 + 176) = sub_10024CB44;
  *(v64 + 184) = 0;
  *(v64 + 192) = 0x73656D656854;
  *(v64 + 200) = 0xE600000000000000;
  *(v64 + 208) = 0u;
  *(v64 + 224) = 0u;
  sub_1004841C8(v64);
  return v114;
}

uint64_t sub_10024CA6C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    ObjectType = swift_getObjectType();
    return (*(a2 + 24))(ObjectType, a2);
  }

  return result;
}

uint64_t sub_10024CAB4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    ObjectType = swift_getObjectType();
    return (*(a2 + 32))(ObjectType, a2);
  }

  return result;
}

uint64_t sub_10024CAFC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    ObjectType = swift_getObjectType();
    return (*(a2 + 16))(ObjectType, a2);
  }

  return result;
}

uint64_t sub_10024CB44(uint64_t result, uint64_t a2)
{
  if (result)
  {
    ObjectType = swift_getObjectType();
    return (*(a2 + 56))(ObjectType, a2);
  }

  return result;
}

uint64_t sub_10024CB8C@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v2 = sub_10079CA64();
  v113 = *(v2 - 8);
  v114 = v2;
  __chkstk_darwin(v2);
  v111 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10079CF24();
  v107 = *(v4 - 8);
  v108 = v4;
  __chkstk_darwin(v4);
  v105 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for REActionMenuView(0);
  v115 = *(v6 - 8);
  __chkstk_darwin(v6);
  v120 = v7;
  v118 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1001F1160(&qword_100AD6FC8, &qword_100813C88);
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v119 = (&v92 - v8);
  v117 = sub_1001F1160(&qword_100AD6FD0, &qword_100813C90);
  __chkstk_darwin(v117);
  v116 = (&v92 - v9);
  v102 = sub_1001F1160(&qword_100AD6FD8, &qword_100813C98);
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v92 - v10;
  v104 = sub_1001F1160(&qword_100AD6FE0, &qword_100813CA0);
  __chkstk_darwin(v104);
  v103 = &v92 - v11;
  v110 = sub_1001F1160(&qword_100AD6FE8, &qword_100813CA8);
  __chkstk_darwin(v110);
  v106 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v109 = &v92 - v14;
  v96 = sub_10079BC44();
  v15 = *(v96 - 8);
  __chkstk_darwin(v96);
  v17 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v92 - v19;
  v21 = *(v1 + *(v6 + 68));
  swift_getKeyPath();
  v122 = v21;
  sub_1002596D0(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  v98 = v6;
  v22 = *(v6 + 36);
  v121 = v1;
  v23 = *(v1 + v22);
  if (v23)
  {
    v24 = v21 + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin;
    v25 = *(v21 + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin + 16);
    v26 = *(v21 + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin + 24);
    v95 = v25;
    v27 = *(v24 + 1);
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = v23;
    sub_10079B9A4(&v122);

    v94 = v122;
    if (v122)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    v93 = v29;
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v28;
    sub_10079B9A4(&v122);

    v31 = v122;
    if (v122)
    {
      v32 = 0;
    }

    else
    {
      v32 = v26;
    }

    v92 = v32;
    _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = v30;
    sub_10079B9A4(v20);

    v34 = v96;
    (*(v15 + 104))(v17, enum case for ColorScheme.dark(_:), v96);
    sub_10079BC34();
    v35 = *(v15 + 8);
    v35(v17, v34);
    v35(v20, v34);
    v36 = sub_10079DE24();

    KeyPath = swift_getKeyPath();
    v38 = v116;
    *v116 = KeyPath;
    sub_1001F1160(&unk_100ADB740, &qword_100819F00);
    swift_storeEnumTagMultiPayload();
    v39 = sub_1001F1160(&qword_100AD6FF0, &unk_100813DA0);
    v40 = v38 + v39[10];
    *v40 = 0;
    v40[8] = 1;
    v41 = v38 + v39[14];
    *v41 = v93;
    v41[8] = v94 ^ 1;
    v42 = v38 + v39[11];
    *v42 = v95;
    v42[8] = 0;
    v43 = v38 + v39[15];
    *v43 = v92;
    v43[8] = v31;
    v44 = v38 + v39[9];
    sub_10024DCF0(v119);
    if (qword_100AD17C8 != -1)
    {
      swift_once();
    }

    v45 = sub_1001F1160(&qword_100AD53B0, &qword_1008268D0);
    sub_100008B98(v45, qword_100B23478);
    v46 = sub_1001F1234(&qword_100AD6FF8, &qword_100813DB0);
    v47 = sub_100005920(&qword_100AD7000, &qword_100AD6FF8, &qword_100813DB0, &protocol conformance descriptor for ZStack<A>);
    v122 = v46;
    v123 = v47;
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AE40D0, &qword_100AD53B0, &qword_1008268D0, &protocol conformance descriptor for ClosedRange<A>);
    v48 = v99;
    v49 = v119;
    sub_10079D7E4();
    (*(v97 + 8))(v49, v48);
    v50 = &v44[*(sub_1001F1160(&qword_100AD7008, &qword_100813DB8) + 36)];
    *v50 = v36;
    *(v50 + 8) = xmmword_100813B30;
    *(v50 + 3) = 0x4020000000000000;
    v51 = v121;
    v52 = v118;
    sub_1002571E4(v121, v118);
    v53 = (*(v115 + 80) + 16) & ~*(v115 + 80);
    v115 = *(v115 + 80);
    v54 = swift_allocObject();
    v119 = type metadata accessor for REActionMenuView;
    sub_10025831C(v52, v54 + v53, type metadata accessor for REActionMenuView);
    v99 = v36;

    v55 = sub_10079E474();
    v57 = v56;
    v58 = &v44[*(sub_1001F1160(&qword_100AD7010, &qword_100813DD0) + 36)];
    *v58 = sub_100364248;
    v58[1] = 0;
    v58[2] = v55;
    v58[3] = v57;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_100257248;
    *(v59 + 24) = v54;
    v60 = &v44[*(sub_1001F1160(&qword_100AD7018, &qword_100813DD8) + 36)];
    *v60 = sub_1002572D8;
    v60[1] = v59;
    v61 = v116;
    v62 = v116 + v39[12];
    *v62 = 0;
    v62[8] = 1;
    v63 = v61 + v39[13];
    *v63 = 0;
    *(v63 + 8) = 1;
    v64 = sub_10079C2C4();
    v65 = sub_10079D294();
    v66 = v61 + *(v117 + 36);
    *v66 = v64;
    *(v66 + 8) = v65;
    v98 = *(v51 + *(v98 + 64));
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10079B9A4(&v122);

    sub_1002571E4(v51, v52);
    v97 = v53;
    v67 = swift_allocObject();
    sub_10025831C(v52, v67 + v53, v119);
    type metadata accessor for UIEdgeInsets(0);
    v69 = v68;
    v70 = sub_10025790C();
    v71 = sub_1002596D0(&qword_100AD7030, type metadata accessor for UIEdgeInsets, &protocol conformance descriptor for UIEdgeInsets);
    v72 = v100;
    v73 = v117;
    sub_10079DC24();

    sub_100007840(v61, &qword_100AD6FD0, &qword_100813C90);
    v74 = v105;
    sub_10079CF04();
    v75 = v52;
    sub_1002571E4(v121, v52);
    v76 = v97;
    v77 = swift_allocObject();
    sub_10025831C(v75, v77 + v76, v119);
    v122 = v73;
    v123 = v69;
    v124 = v70;
    v125 = v71;
    swift_getOpaqueTypeConformance2();
    v78 = v103;
    v79 = v102;
    sub_10079D934();

    (*(v107 + 8))(v74, v108);
    (*(v101 + 8))(v72, v79);
    swift_getKeyPath();
    v80 = v98;
    v122 = v98;
    sub_1002596D0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A14();

    LOBYTE(v74) = *(v80 + 281);
    v81 = v118;
    sub_1002571E4(v121, v118);
    v82 = swift_allocObject();
    sub_10025831C(v81, v82 + v76, v119);
    v83 = (v78 + *(v104 + 36));
    v84 = sub_1001F1160(&qword_100AD7038, &qword_100813E60);
    sub_1007A2704();
    *(v83 + *(v84 + 40)) = v74;
    *v83 = &unk_100813E58;
    v83[1] = v82;
    sub_100257AA8();
    v85 = v106;
    sub_10079DA04();
    sub_100007840(v78, &qword_100AD6FE0, &qword_100813CA0);
    swift_getKeyPath();
    v122 = v80;
    sub_100797A14();

    v86 = v109;
    sub_10079C164();
    sub_100007840(v85, &qword_100AD6FE8, &qword_100813CA8);
    swift_getKeyPath();
    v122 = v80;
    sub_100797A14();

    if (*(v80 + 281) == 1)
    {
      v122 = _swiftEmptyArrayStorage;
      sub_1002596D0(&qword_100AD7068, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
      sub_1001F1160(&qword_100AD7070, &qword_100813E78);
      sub_100005920(&qword_100AD7078, &qword_100AD7070, &qword_100813E78, &protocol conformance descriptor for [A]);
      v87 = v111;
      v88 = v114;
      sub_1007A3594();
      v89 = v113;
    }

    else
    {
      sub_1001F1160(&qword_100AD7060, &qword_100813E70);
      v89 = v113;
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_10080B690;
      sub_10079CA34();
      v122 = v90;
      sub_1002596D0(&qword_100AD7068, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
      sub_1001F1160(&qword_100AD7070, &qword_100813E78);
      sub_100005920(&qword_100AD7078, &qword_100AD7070, &qword_100813E78, &protocol conformance descriptor for [A]);
      v87 = v111;
      v88 = v114;
      sub_1007A3594();
    }

    sub_10079C234();

    (*(v89 + 8))(v87, v88);
    return sub_100007840(v86, &qword_100AD6FE8, &qword_100813CA8);
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_1002596D0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_10024DCF0@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v37 = sub_10079D074();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1001F1160(&qword_100AD6FF8, &qword_100813DB0);
  __chkstk_darwin(v32);
  v4 = (&v30 - v3);
  v5 = sub_10079CEE4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&unk_100ADBB30, &qword_100813E90);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = sub_1001F1160(&unk_100ADB6B0, qword_100816980);
  __chkstk_darwin(v12 - 8);
  v31 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  v33 = v1;
  sub_10024B2D0(&v30 - v18);
  (*(v6 + 104))(v16, enum case for UserInterfaceSizeClass.compact(_:), v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v20 = *(v9 + 56);
  sub_1000077D8(v19, v11, &unk_100ADB6B0, qword_100816980);
  sub_1000077D8(v16, &v11[v20], &unk_100ADB6B0, qword_100816980);
  v21 = *(v6 + 48);
  if (v21(v11, 1, v5) != 1)
  {
    sub_1000077D8(v11, v31, &unk_100ADB6B0, qword_100816980);
    if (v21(&v11[v20], 1, v5) != 1)
    {
      v23 = v30;
      (*(v6 + 32))(v30, &v11[v20], v5);
      sub_1002596D0(&qword_100AE41D0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v24 = v31;
      v22 = sub_1007A2124();
      v25 = *(v6 + 8);
      v25(v23, v5);
      sub_100007840(v16, &unk_100ADB6B0, qword_100816980);
      sub_100007840(v19, &unk_100ADB6B0, qword_100816980);
      v25(v24, v5);
      sub_100007840(v11, &unk_100ADB6B0, qword_100816980);
      goto LABEL_8;
    }

    sub_100007840(v16, &unk_100ADB6B0, qword_100816980);
    sub_100007840(v19, &unk_100ADB6B0, qword_100816980);
    (*(v6 + 8))(v31, v5);
    goto LABEL_6;
  }

  sub_100007840(v16, &unk_100ADB6B0, qword_100816980);
  sub_100007840(v19, &unk_100ADB6B0, qword_100816980);
  if (v21(&v11[v20], 1, v5) != 1)
  {
LABEL_6:
    sub_100007840(v11, &unk_100ADBB30, &qword_100813E90);
    v22 = 0;
    goto LABEL_8;
  }

  sub_100007840(v11, &unk_100ADB6B0, qword_100816980);
  v22 = 1;
LABEL_8:
  *v4 = sub_10079E474();
  v4[1] = v26;
  v27 = sub_1001F1160(&qword_100AD7090, &qword_100813E98);
  sub_1002526E4(v33, v22 & 1, v4 + *(v27 + 44));
  v28 = v34;
  sub_10079D064();
  sub_100005920(&qword_100AD7000, &qword_100AD6FF8, &qword_100813DB0, &protocol conformance descriptor for ZStack<A>);
  sub_10079D9A4();
  (*(v35 + 8))(v28, v37);
  return sub_100007840(v4, &qword_100AD6FF8, &qword_100813DB0);
}

uint64_t sub_10024E2D0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = type metadata accessor for REActionMenuView(0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(a1 + *(v10 + 64));
    swift_getKeyPath();
    sub_1002596D0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A14();

    if ((*(v12 + 281) & 1) == 0)
    {
      sub_1001F1160(&qword_100AD7080, &qword_100813E80);
      sub_10079DFF4();
      if (v14)
      {
LABEL_6:
        sub_10079E004();
        sub_10024AC98(a2, a3, a4, a5);
      }

      v15.origin.x = a2;
      v15.origin.y = a3;
      v15.size.width = a4;
      v15.size.height = a5;
      if (!CGRectEqualToRect(v15, *v13))
      {
        sub_10024AF1C(*v13, *&v13[8], *&v13[16], *&v13[24]);
        goto LABEL_6;
      }
    }
  }

  return result;
}

double sub_10024E4CC(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  type metadata accessor for REActionMenuView(0);
  sub_1001F1160(&qword_100AD7088, &qword_100813E88);
  sub_10079E004();
  return result;
}

uint64_t sub_10024E544(uint64_t a1)
{
  sub_10079E514();
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    type metadata accessor for REActionMenuView(0);
    REActionMenuState.transition(to:)(0x8000000000000000);
  }

  else
  {
    sub_10079BF94();
  }
}

uint64_t sub_10024E600(uint64_t a1)
{
  *(v1 + 104) = a1;
  sub_1007A26F4();
  *(v1 + 112) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_10024E698, v3, v2);
}

uint64_t sub_10024E698()
{
  v1 = *(v0 + 104);

  v2 = type metadata accessor for REActionMenuView(0);
  v3 = *(v1 + v2[16]);
  swift_getKeyPath();
  *(v0 + 16) = v3;
  sub_1002596D0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  v4 = *(v3 + 281);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = (*(v0 + 104) + v2[20]);
    sub_10000E3E8(v6, v6[3]);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_10079F984();
      swift_getObjectType();
      v7 = sub_10079F6D4();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v5 = v7 != 2;
    }

    else
    {
      v5 = 1;
    }
  }

  *(v0 + 16) = v5;
  sub_1001F1160(&qword_100AE3E70, &unk_100813BD0);
  sub_10079CF34();
  if ((v4 & 1) != 0 || (v8 = (*(v0 + 104) + v2[20]), sub_10000E3E8(v8, v8[3]), !swift_unknownObjectWeakLoadStrong()))
  {
    v10 = 0;
  }

  else
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v9 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v10 = v9 == 2;
  }

  v11 = *(v0 + 104);
  *(v0 + 16) = v10;
  sub_10079CF34();
  v12 = v11 + v2[12];
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);
  v15 = *(v12 + 16);
  *(v0 + 16) = *v12;
  *(v0 + 32) = v15;
  *(v0 + 48) = v13;
  *(v0 + 56) = v14;
  sub_1001F1160(&qword_100AD7080, &qword_100813E80);
  sub_10079DFF4();
  if ((*(v0 + 96) & 1) == 0)
  {
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v19 = *(v0 + 80);
    v18 = *(v0 + 88);
    Strong = swift_weakLoadStrong();
    if (v4)
    {
      if (!Strong)
      {
        goto LABEL_17;
      }

      sub_10024AF1C(v17, v16, v19, v18);
    }

    else
    {
      if (!Strong)
      {
        goto LABEL_17;
      }

      sub_10024AC98(v17, v16, v19, v18);
    }
  }

LABEL_17:
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10024E994@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v74 = a1;
  v69 = a3;
  v76 = sub_10079CAE4();
  v6 = *(v76 - 8);
  __chkstk_darwin(v76);
  v72 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v68 - v9;
  __chkstk_darwin(v11);
  v13 = &v68 - v12;
  __chkstk_darwin(v14);
  v16 = &v68 - v15;
  v17 = type metadata accessor for REActionMenuView(0);
  v75 = *(v17 + 88);
  sub_10079BEB4();
  v19 = v18;
  v21 = v20;
  sub_10024B4B0(v16);
  v73 = v17;
  v22 = (v3 + *(v17 + 80));
  v23 = v22[3];
  v71 = v22;
  sub_10000E3E8(v22, v23);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v24 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v25 = v24 == 2;
  }

  else
  {
    v25 = 0;
  }

  sub_1004FB7A0(v16, v25, v19, v21);
  v27 = v26;
  v28 = v16;
  v29 = *(v6 + 8);
  v30 = v76;
  v29(v28, v76);
  sub_10079BEB4();
  v32 = v31;
  v34 = v33;
  sub_10024B4B0(v13);
  (*(v6 + 32))(v10, v13, v30);
  v35 = (*(v6 + 88))(v10, v30);
  v40 = v35 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v35 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:) || v35 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v35 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v35 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v35 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:);
  v70 = v29;
  if (v40)
  {
    v41 = 72.0;
  }

  else
  {
    v29(v10, v30);
    v41 = 48.0;
  }

  v42 = v73;
  if (v34 >= v32)
  {
    v43 = v32;
  }

  else
  {
    v43 = v34;
  }

  if (v43 >= 375.0)
  {
    v44 = v41;
  }

  else
  {
    v44 = v41 * 0.85;
  }

  v45 = v3 + *(v73 + 84);
  swift_unknownObjectWeakLoadStrong();
  v46 = *(v45 + 8);
  v47 = *(v4 + *(v42 + 64));
  swift_getKeyPath();
  v94[0] = v47;
  sub_1002596D0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  LOBYTE(v45) = *(v47 + 328) == 0x8000000000000018;
  v48 = type metadata accessor for ChromeStyle(0);
  sub_1002596D0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
  v73 = v48;
  v81 = sub_10079C484();
  v82 = v49;
  v50 = a2[5];
  v87 = a2[4];
  v88 = v50;
  v89 = *(a2 + 12);
  v51 = a2[1];
  v83 = *a2;
  v84 = v51;
  v52 = a2[2];
  v86 = a2[3];
  v85 = v52;
  v90 = v27;
  v91 = v44;
  v92 = v46;
  swift_unknownObjectWeakInit();
  sub_100258C70(a2, v94);
  swift_unknownObjectRelease();
  v93 = v45;
  sub_10079BEB4();
  v54 = v53;
  v56 = v55;
  v57 = v72;
  sub_10024B4B0(v72);
  sub_10000E3E8(v71, v71[3]);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v58 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v59 = v58 == 2;
  }

  else
  {
    v59 = 0;
  }

  sub_1004FB7A0(v57, v59, v54, v56);
  v70(v57, v76);
  sub_10079E474();
  sub_10079BE54();
  sub_100258D20(&v81, v94);
  v95 = v98;
  v96 = v99;
  v97 = v100;
  v60 = v74 + 1;
  if (__OFADD__(v74, 1))
  {
    __break(1u);
  }

  else
  {
    v61 = sub_10024BCA8()[2];

    v62 = *(v4 + *(v42 + 36));
    if (v62)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v63 = v62;
      sub_10079B9A4(&v81);

      v64 = v81;
      LOBYTE(v81) = 0;
      v82 = v60;
      *&v83 = v61 + 1;
      BYTE8(v83) = v64;
      v77[0] = 1;
      v78 = v60;
      v79 = v61 + 1;
      v80 = v64;
      sub_1002585FC();
      v65 = sub_10079BE74();
      v66 = v69;
      result = sub_10020B3C8(v94, v69, &qword_100AD7210, &qword_100813FB0);
      *(v66 + 208) = v65;
      return result;
    }
  }

  result = sub_10079C474();
  __break(1u);
  return result;
}

uint64_t sub_10024F030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v67 = sub_1001F1160(&qword_100AD73A8, &qword_100814268);
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v60 = v51 - v3;
  v4 = sub_1001F1160(&qword_100AD71D8, &qword_100813F70);
  __chkstk_darwin(v4 - 8);
  v64 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v62 = v51 - v7;
  v8 = type metadata accessor for REActionMenuView(0);
  v53 = *(v8 - 8);
  v9 = *(v53 + 64);
  __chkstk_darwin(v8);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AD71E0, &unk_100813F78);
  v54 = *(v11 - 8);
  v55 = v11;
  __chkstk_darwin(v11);
  v13 = v51 - v12;
  v14 = sub_1001F1160(&qword_100AD73B0, &qword_100814270);
  v58 = *(v14 - 8);
  v59 = v14;
  __chkstk_darwin(v14);
  v57 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v51 - v17;
  v63 = sub_1001F1160(&qword_100AD73B8, &qword_100814278);
  v56 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v51 - v21;
  v23 = *(a1 + *(v8 + 64));
  swift_getKeyPath();
  v68 = v23;
  sub_1002596D0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  if (*(v23 + 281))
  {
    v24 = 1;
    v25 = v66;
  }

  else
  {
    v52 = v22;
    sub_10024F7A0(v22);
    v26 = sub_10024BCA8();
    v27 = v26[2];
    v68 = 0;
    v69 = v27;
    v51[1] = swift_getKeyPath();
    sub_1002571E4(a1, v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v29 = (v9 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    sub_10025831C(v10, v30 + v28, type metadata accessor for REActionMenuView);
    *(v30 + v29) = v26;
    sub_1001F1160(&qword_100AD71E8, &qword_100813FA0);
    sub_1001F1160(&qword_100AD71F0, &qword_100813FA8);
    sub_100258384();
    sub_100258464();
    sub_10079E264();
    sub_1001F1160(&qword_100AE3E70, &unk_100813BD0);
    sub_10079CF44();
    sub_100259564();
    v31 = v18;
    v51[0] = v18;
    v32 = v55;
    sub_10079D9B4();

    (*(v54 + 8))(v13, v32);
    v33 = v62;
    sub_100250194(v62);
    v34 = v56;
    v35 = *(v56 + 16);
    v36 = v61;
    v35(v61, v52, v63);
    v38 = v57;
    v37 = v58;
    v39 = *(v58 + 16);
    v40 = v31;
    v41 = v59;
    v39(v57, v40, v59);
    sub_1000077D8(v33, v64, &qword_100AD71D8, &qword_100813F70);
    v42 = v60;
    v43 = v36;
    v44 = v63;
    v35(v60, v43, v63);
    v45 = sub_1001F1160(&qword_100AD73C8, &qword_100814280);
    v39((v42 + *(v45 + 48)), v38, v41);
    v46 = v64;
    sub_1000077D8(v64, v42 + *(v45 + 64), &qword_100AD71D8, &qword_100813F70);
    sub_100007840(v62, &qword_100AD71D8, &qword_100813F70);
    v47 = *(v37 + 8);
    v47(v51[0], v41);
    v48 = *(v34 + 8);
    v48(v52, v44);
    sub_100007840(v46, &qword_100AD71D8, &qword_100813F70);
    v47(v38, v41);
    v48(v61, v44);
    v49 = v66;
    sub_10020B3C8(v42, v66, &qword_100AD73A8, &qword_100814268);
    v24 = 0;
    v25 = v49;
  }

  return (*(v65 + 56))(v25, v24, 1, v67);
}

uint64_t sub_10024F7A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v99 = a1;
  v3 = sub_10079CAE4();
  v111 = *(v3 - 8);
  __chkstk_darwin(v3);
  v105 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v103 = &v93 - v6;
  __chkstk_darwin(v7);
  v109 = &v93 - v8;
  __chkstk_darwin(v9);
  v102 = &v93 - v10;
  __chkstk_darwin(v11);
  v13 = &v93 - v12;
  __chkstk_darwin(v14);
  v16 = &v93 - v15;
  v17 = type metadata accessor for REScrubberView(0);
  __chkstk_darwin(v17);
  v19 = (&v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = sub_1001F1160(&qword_100AD73D0, &qword_100814288);
  __chkstk_darwin(v97);
  v98 = &v93 - v20;
  v21 = type metadata accessor for REActionMenuView(0);
  v22 = *(v1 + v21[16]);
  v23 = v21[22];
  v104 = v22;

  v110 = v23;
  sub_10079BEB4();
  v25 = v24;
  v27 = v26;
  sub_10024B4B0(v16);
  v106 = v21;
  v28 = (v2 + v21[20]);
  sub_10000E3E8(v28, v28[3]);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v29 = v2;
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v30 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v31 = v30 == 2;
    v2 = v29;
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  sub_1004FB7A0(v16, v32, v25, v27);
  v34 = v33;
  v35 = v111;
  v108 = *(v111 + 8);
  v108(v16, v3);
  sub_10079BEB4();
  v37 = v36;
  v39 = v38;
  sub_10024B4B0(v13);
  v40 = v102;
  v101 = *(v35 + 32);
  v101(v102, v13, v3);
  v100 = *(v35 + 88);
  v41 = v100(v40, v3);
  v42 = enum case for ContentSizeCategory.extraExtraLarge(_:);
  v107 = enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:);
  v43 = 72.0;
  v111 = v35 + 88;
  v93 = enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:);
  v94 = enum case for ContentSizeCategory.accessibilityExtraLarge(_:);
  v95 = enum case for ContentSizeCategory.accessibilityLarge(_:);
  v96 = enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  if (v41 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v41 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:) && v41 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v41 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v41 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v41 != v107)
  {
    (v108)(v40, v3, 72.0);
    v43 = 48.0;
  }

  if (v39 >= v37)
  {
    v44 = v37;
  }

  else
  {
    v44 = v39;
  }

  if (v44 >= 375.0)
  {
    v45 = v43;
  }

  else
  {
    v45 = v43 * 0.85;
  }

  sub_10079BEB4();
  v47 = v46;
  v49 = v48;
  sub_10024B4B0(v109);
  sub_10000E3E8(v28, v28[3]);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v50 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v51 = v50 == 2;
  }

  else
  {
    v51 = 0;
  }

  v52 = v109;
  sub_1004FB7A0(v109, v51, v47, v49);
  v54 = v53;
  v108(v52, v3);
  sub_10079BEB4();
  v56 = v55;
  v58 = v57;
  v59 = v103;
  sub_10024B4B0(v103);
  v60 = v105;
  v101(v105, v59, v3);
  v61 = v100(v60, v3);
  v62 = 72.0;
  if (v61 == v42)
  {
    v63 = v106;
  }

  else
  {
    v63 = v106;
    if (v61 != v96 && v61 != v95 && v61 != v94 && v61 != v93 && v61 != v107)
    {
      (v108)(v60, v3, 72.0);
      v62 = 48.0;
    }
  }

  if (v58 >= v56)
  {
    v64 = v56;
  }

  else
  {
    v64 = v58;
  }

  if (v64 >= 375.0)
  {
    v65 = v62;
  }

  else
  {
    v65 = v62 * 0.85;
  }

  v66 = (v2 + v63[25]);
  v67 = *v66;
  v68 = v66[1];
  type metadata accessor for ChromeStyle(0);
  sub_1002596D0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);

  *v19 = sub_10079C484();
  v19[1] = v69;
  v19[2] = v104;
  v116 = 0x4046000000000000;
  sub_1002582C8();
  sub_10079BDE4();
  *(v19 + v17[7]) = v34;
  *(v19 + v17[8]) = v45;
  v70 = (v19 + v17[9]);
  *v70 = v54;
  v70[1] = v65;
  v71 = (v19 + v17[10]);
  *v71 = v67;
  v71[1] = v68;
  v72 = v19 + v17[11];
  v112 = 0;
  LOBYTE(v113) = 1;
  sub_10079DFE4();
  v73 = v117;
  v74 = v118;
  *v72 = v116;
  v72[8] = v73;
  *(v72 + 2) = v74;
  v75 = v19 + v17[12];
  LOBYTE(v112) = 0;
  sub_10079DFE4();
  v76 = v117;
  *v75 = v116;
  *(v75 + 1) = v76;
  v77 = (v19 + v17[13]);
  v112 = 0;
  sub_10079DFE4();
  v78 = v117;
  *v77 = v116;
  v77[1] = v78;
  v79 = (v19 + v17[14]);
  v112 = 0;
  sub_10079DFE4();
  v80 = v117;
  *v79 = v116;
  v79[1] = v80;
  v81 = v17[15];
  v82 = [objc_opt_self() sharedApplication];
  v83 = [v82 userInterfaceLayoutDirection];

  *(v19 + v81) = v83 == 1;
  *(v19 + v17[16]) = 0x3FD0000000000000;
  v84 = sub_10024BCA8()[2];

  v85 = __OFADD__(v84, 2);
  v86 = v84 + 2;
  if (v85)
  {
    __break(1u);
  }

  else
  {
    v87 = *(v2 + v63[9]);
    if (v87)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v88 = v87;
      sub_10079B9A4(&v116);

      v89 = v116;
      LOBYTE(v116) = 0;
      v117 = 0;
      v118 = v86;
      v119 = v89;
      LOBYTE(v112) = 1;
      v113 = 0;
      v114 = v86;
      v115 = v89;
      sub_1002585FC();
      v90 = sub_10079BE74();
      v91 = v98;
      sub_10025831C(v19, v98, type metadata accessor for REScrubberView);
      *(v91 + *(v97 + 36)) = v90;
      sub_1001F1160(&qword_100AE3E70, &unk_100813BD0);
      sub_10079CF44();
      sub_1002595E8();
      sub_10079D9B4();

      return sub_100007840(v91, &qword_100AD73D0, &qword_100814288);
    }
  }

  result = sub_10079C474();
  __break(1u);
  return result;
}

uint64_t sub_100250194@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_1001F1160(&qword_100AD7238, &qword_100813FC8);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_1001F1160(&qword_100AD7240, &qword_100813FD0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for REActionMenuView(0);
  sub_10000E3E8((v1 + v9[20]), *(v1 + v9[20] + 24));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v10 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v10 == 2)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v11 = 2;
  }

  v12 = sub_10024BCA8()[2];

  v13 = v12 + v11;
  if (__OFADD__(v12, v11))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(v13, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *v5 = sub_10079CB24();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v14 = sub_1001F1160(&qword_100AD7248, &qword_100813FD8);
  sub_100252CC4(v2, &v5[*(v14 + 44)]);
  v15 = *(v2 + v9[9]);
  if (!v15)
  {
LABEL_15:
    type metadata accessor for ChromeStyle(0);
    sub_1002596D0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v15;
  sub_10079B9A4(v29);

  v17 = v29[0];
  LOBYTE(v29[0]) = 0;
  v29[1] = v13 - 1;
  v29[2] = v12 + v11;
  v30 = v17;
  v25[0] = 1;
  v26 = v13 - 1;
  v27 = v12 + v11;
  v28 = v17;
  sub_1002585FC();
  v18 = sub_10079BE74();
  sub_10020B3C8(v5, v8, &qword_100AD7238, &qword_100813FC8);
  *&v8[*(v6 + 36)] = v18;
  v19 = *(v2 + v9[16]);
  swift_getKeyPath();
  v29[0] = v19;
  sub_1002596D0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  if (*(v19 + 328) == 0x8000000000000018)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 1.0;
  }

  v21 = v24;
  sub_10020B3C8(v8, v24, &qword_100AD7240, &qword_100813FD0);
  result = sub_1001F1160(&qword_100AD71D8, &qword_100813F70);
  *(v21 + *(result + 36)) = v20;
  return result;
}

uint64_t sub_100250548@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for REActionMenuView(0);
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  __chkstk_darwin(v4);
  v6 = sub_1001F1160(&qword_100AD7100, &qword_100813EE8);
  __chkstk_darwin(v6 - 8);
  v8 = (&v36 - v7);
  v9 = sub_1001F1160(&qword_100AD70F0, &qword_100813EE0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_10079C8E4();
  sub_10079BEB4();
  if (v14 < v13)
  {
    v13 = v14;
  }

  v15 = v13 < 375.0;
  v16 = 9.35;
  *v8 = v12;
  if (!v15)
  {
    v16 = 11.0;
  }

  v8[1] = v16;
  *(v8 + 16) = 0;
  v17 = sub_1001F1160(&qword_100AD7160, &unk_100813F10);
  sub_100250FE0(v2, v8 + *(v17 + 44));
  v18 = sub_10079D284();
  if (a1)
  {
    v19 = v2 + *(v4 + 40);
    v20 = *(v19 + 32);
    v21 = *(v19 + 16);
    v38 = *v19;
    v39 = v21;
    v40 = v20;
    sub_1001F1160(&qword_100AD7088, &qword_100813E88);
    sub_10079DFF4();
  }

  sub_10079BBA4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_10020B3C8(v8, v11, &qword_100AD7100, &qword_100813EE8);
  v30 = &v11[*(v9 + 36)];
  *v30 = v18;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  sub_1002571E4(v2, &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v32 = swift_allocObject();
  sub_10025831C(&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for REActionMenuView);
  v33 = v37;
  sub_10020B3C8(v11, v37, &qword_100AD70F0, &qword_100813EE0);
  result = sub_1001F1160(&qword_100AD70C0, &qword_100813EC8);
  v35 = (v33 + *(result + 36));
  *v35 = sub_10025810C;
  v35[1] = v32;
  return result;
}

uint64_t sub_100250868@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for REActionMenuView(0);
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  __chkstk_darwin(v4);
  v6 = sub_1001F1160(&qword_100AD7138, &qword_100813F00);
  __chkstk_darwin(v6 - 8);
  v8 = (&v36 - v7);
  v9 = sub_1001F1160(&qword_100AD7128, &qword_100813EF8);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_10079C8E4();
  sub_10079BEB4();
  if (v14 < v13)
  {
    v13 = v14;
  }

  v15 = v13 < 375.0;
  v16 = 9.35;
  *v8 = v12;
  if (!v15)
  {
    v16 = 11.0;
  }

  v8[1] = v16;
  *(v8 + 16) = 0;
  v17 = sub_1001F1160(&qword_100AD7370, &qword_100814240);
  sub_100250B88(v2, v8 + *(v17 + 44));
  v18 = sub_10079D284();
  if (a1)
  {
    v19 = v2 + *(v4 + 40);
    v20 = *(v19 + 32);
    v21 = *(v19 + 16);
    v38 = *v19;
    v39 = v21;
    v40 = v20;
    sub_1001F1160(&qword_100AD7088, &qword_100813E88);
    sub_10079DFF4();
  }

  sub_10079BBA4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_10020B3C8(v8, v11, &qword_100AD7138, &qword_100813F00);
  v30 = &v11[*(v9 + 36)];
  *v30 = v18;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  sub_1002571E4(v2, &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v32 = swift_allocObject();
  sub_10025831C(&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for REActionMenuView);
  v33 = v37;
  sub_10020B3C8(v11, v37, &qword_100AD7128, &qword_100813EF8);
  result = sub_1001F1160(&qword_100AD70B0, &qword_100813EB8);
  v35 = (v33 + *(result + 36));
  *v35 = sub_100259C78;
  v35[1] = v32;
  return result;
}

uint64_t sub_100250B88@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v3 = sub_1001F1160(&qword_100AD7170, &qword_100813F28);
  __chkstk_darwin(v3 - 8);
  v41 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = &v36 - v6;
  v7 = sub_1001F1160(&qword_100AD7178, &qword_100813F30);
  __chkstk_darwin(v7 - 8);
  v9 = (&v36 - v8);
  v10 = sub_1001F1160(&qword_100AD7378, &qword_100814248);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v39 = sub_1001F1160(&qword_100AD7380, &qword_100814250);
  v13 = *(v39 - 8);
  v37 = v13;
  __chkstk_darwin(v39);
  v38 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  type metadata accessor for REActionMenuView(0);
  sub_10079BEB4();
  if (v19 < v18)
  {
    v18 = v19;
  }

  if (v18 >= 375.0)
  {
    v20 = 4.0;
  }

  else
  {
    v20 = 3.4;
  }

  *v9 = sub_10079CB24();
  v9[1] = v20;
  *(v9 + 16) = 0;
  v21 = sub_1001F1160(&qword_100AD7190, &qword_100813F48);
  sub_100251438(a1, v9 + *(v21 + 44));
  v22 = sub_10079E474();
  v24 = v23;
  sub_10020B3C8(v9, v12, &qword_100AD7178, &qword_100813F30);
  v25 = &v12[*(v10 + 36)];
  *v25 = sub_100259C74;
  v25[1] = 0;
  v25[2] = v22;
  v25[3] = v24;
  sub_1001F1160(&qword_100AE3E70, &unk_100813BD0);
  sub_10079CF44();
  sub_100258E40();
  v26 = v17;
  sub_10079D9B4();

  sub_100007840(v12, &qword_100AD7378, &qword_100814248);
  v27 = v40;
  sub_100251A0C(v40);
  v28 = *(v13 + 16);
  v30 = v38;
  v29 = v39;
  v28(v38, v26, v39);
  v31 = v41;
  sub_1000077D8(v27, v41, &qword_100AD7170, &qword_100813F28);
  v32 = v42;
  v28(v42, v30, v29);
  v33 = sub_1001F1160(&qword_100AD73A0, &qword_100814260);
  sub_1000077D8(v31, &v32[*(v33 + 48)], &qword_100AD7170, &qword_100813F28);
  sub_100007840(v27, &qword_100AD7170, &qword_100813F28);
  v34 = *(v37 + 8);
  v34(v26, v29);
  sub_100007840(v31, &qword_100AD7170, &qword_100813F28);
  return (v34)(v30, v29);
}

uint64_t sub_100250FE0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v3 = sub_1001F1160(&qword_100AD7170, &qword_100813F28);
  __chkstk_darwin(v3 - 8);
  v41 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = &v36 - v6;
  v7 = sub_1001F1160(&qword_100AD7178, &qword_100813F30);
  __chkstk_darwin(v7 - 8);
  v9 = (&v36 - v8);
  v10 = sub_1001F1160(&qword_100AD7180, &qword_100813F38);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v39 = sub_1001F1160(&qword_100AD7188, &qword_100813F40);
  v13 = *(v39 - 8);
  v37 = v13;
  __chkstk_darwin(v39);
  v38 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  type metadata accessor for REActionMenuView(0);
  sub_10079BEB4();
  if (v19 < v18)
  {
    v18 = v19;
  }

  if (v18 >= 375.0)
  {
    v20 = 4.0;
  }

  else
  {
    v20 = 3.4;
  }

  *v9 = sub_10079CB24();
  v9[1] = v20;
  *(v9 + 16) = 0;
  v21 = sub_1001F1160(&qword_100AD7190, &qword_100813F48);
  sub_100251438(a1, v9 + *(v21 + 44));
  v22 = sub_10079E474();
  v24 = v23;
  sub_10020B3C8(v9, v12, &qword_100AD7178, &qword_100813F30);
  v25 = &v12[*(v10 + 36)];
  *v25 = sub_100259C74;
  v25[1] = 0;
  v25[2] = v22;
  v25[3] = v24;
  sub_1001F1160(&qword_100AE3E70, &unk_100813BD0);
  sub_10079CF44();
  sub_1002581E4();
  v26 = v17;
  sub_10079D9B4();

  sub_100007840(v12, &qword_100AD7180, &qword_100813F38);
  v27 = v40;
  sub_100251A0C(v40);
  v28 = *(v13 + 16);
  v30 = v38;
  v29 = v39;
  v28(v38, v26, v39);
  v31 = v41;
  sub_1000077D8(v27, v41, &qword_100AD7170, &qword_100813F28);
  v32 = v42;
  v28(v42, v30, v29);
  v33 = sub_1001F1160(&qword_100AD71B8, &qword_100813F58);
  sub_1000077D8(v31, &v32[*(v33 + 48)], &qword_100AD7170, &qword_100813F28);
  sub_100007840(v27, &qword_100AD7170, &qword_100813F28);
  v34 = *(v37 + 8);
  v34(v26, v29);
  sub_100007840(v31, &qword_100AD7170, &qword_100813F28);
  return (v34)(v30, v29);
}

uint64_t sub_100251438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = sub_1001F1160(&qword_100AD71D0, &qword_100813F68);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &KeyPath - v3;
  v4 = sub_1001F1160(&qword_100AD71D8, &qword_100813F70);
  __chkstk_darwin(v4 - 8);
  v40 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v39 = &KeyPath - v7;
  v8 = type metadata accessor for REActionMenuView(0);
  v9 = v8 - 8;
  v38 = *(v8 - 8);
  v10 = *(v38 + 64);
  __chkstk_darwin(v8);
  v11 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&qword_100AD71E0, &unk_100813F78);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &KeyPath - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &KeyPath - v17;
  v19 = a1;
  v20 = *(a1 + *(v9 + 72));
  swift_getKeyPath();
  v45 = v20;
  sub_1002596D0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  if (*(v20 + 281))
  {
    v21 = 1;
    v22 = v43;
  }

  else
  {
    v23 = sub_10024BCA8();
    v24 = v23[2];
    v45 = 0;
    v46 = v24;
    KeyPath = swift_getKeyPath();
    sub_1002571E4(v19, &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    sub_10025831C(v11, v27 + v25, type metadata accessor for REActionMenuView);
    *(v27 + v26) = v23;
    sub_1001F1160(&qword_100AD71E8, &qword_100813FA0);
    sub_1001F1160(&qword_100AD71F0, &qword_100813FA8);
    sub_100258384();
    sub_100258464();
    v28 = v18;
    sub_10079E264();
    v29 = v39;
    sub_100250194(v39);
    v30 = *(v13 + 16);
    v30(v15, v28, v12);
    v31 = v40;
    sub_1000077D8(v29, v40, &qword_100AD71D8, &qword_100813F70);
    v32 = v41;
    v30(v41, v15, v12);
    v33 = sub_1001F1160(&qword_100AD7230, &qword_100813FC0);
    sub_1000077D8(v31, v32 + *(v33 + 48), &qword_100AD71D8, &qword_100813F70);
    sub_100007840(v29, &qword_100AD71D8, &qword_100813F70);
    v34 = *(v13 + 8);
    v34(v28, v12);
    sub_100007840(v31, &qword_100AD71D8, &qword_100813F70);
    v34(v15, v12);
    v35 = v43;
    sub_10020B3C8(v32, v43, &qword_100AD71D0, &qword_100813F68);
    v21 = 0;
    v22 = v35;
  }

  return (*(v42 + 56))(v22, v21, 1, v44);
}

unint64_t *sub_10025196C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(a2 + 16))
  {
    v5 = a2 + 104 * v3;
    v6 = *(v5 + 112);
    v10[4] = *(v5 + 96);
    v10[5] = v6;
    v11 = *(v5 + 128);
    v7 = *(v5 + 48);
    v10[0] = *(v5 + 32);
    v10[1] = v7;
    v8 = *(v5 + 80);
    v10[2] = *(v5 + 64);
    v10[3] = v8;
    sub_100258C70(v10, v9);
    sub_10024E994(v3, v10, a3);
    return sub_100258CCC(v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_100251A0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = sub_10079CAE4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v80 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v78 = &v78 - v7;
  __chkstk_darwin(v8);
  v10 = &v78 - v9;
  __chkstk_darwin(v11);
  v13 = &v78 - v12;
  v14 = type metadata accessor for REScrubberView(0);
  __chkstk_darwin(v14);
  v16 = (&v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = sub_1001F1160(&qword_100AD71C0, &qword_100813F60);
  __chkstk_darwin(v84);
  v86 = &v78 - v17;
  v18 = type metadata accessor for REActionMenuView(0);
  v19 = *(v1 + v18[16]);
  v20 = (v1 + v18[11]);
  v21 = *v20;
  v22 = v20[1];
  *&v91 = v21;
  v83 = v22;
  *(&v91 + 1) = v22;
  v85 = v19;

  v82 = sub_1001F1160(&qword_100AD7168, &qword_100813F20);
  sub_10079DFF4();
  v23 = v89;
  sub_10079BEB4();
  v25 = v24;
  v27 = v26;
  sub_10024B4B0(v13);
  sub_1004FBBDC(v13, v25, v27);
  v29 = v28;
  v79 = v4;
  v30 = *(v4 + 8);
  v81 = v3;
  v88 = v30;
  v30(v13, v3);
  sub_10079BEB4();
  v32 = v31;
  v34 = v33;
  sub_10024B4B0(v10);
  sub_10000E3E8((v2 + v18[20]), *(v2 + v18[20] + 24));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v35 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v36 = v35 == 2;
  }

  else
  {
    v36 = 0;
  }

  sub_1004FB7A0(v10, v36, v32, v34);
  v38 = v37;
  v39 = v81;
  v88(v10, v81);
  sub_10079BEB4();
  v41 = v40;
  v43 = v42;
  v44 = v78;
  sub_10024B4B0(v78);
  v45 = v79;
  v46 = v80;
  (*(v79 + 32))(v80, v44, v39);
  v47 = (*(v45 + 88))(v46, v39);
  v48 = 72.0;
  if (v47 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v47 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:) && v47 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v47 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v47 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v47 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    (v88)(v46, v39, 72.0);
    v48 = 48.0;
  }

  if (v43 >= v41)
  {
    v49 = v41;
  }

  else
  {
    v49 = v43;
  }

  if (v49 >= 375.0)
  {
    v50 = v48;
  }

  else
  {
    v50 = v48 * 0.85;
  }

  v51 = (v2 + v18[25]);
  v53 = *v51;
  v52 = v51[1];
  type metadata accessor for ChromeStyle(0);
  sub_1002596D0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);

  *v16 = sub_10079C484();
  v16[1] = v54;
  v55 = v85;
  v16[2] = v85;
  *&v91 = 0x4046000000000000;
  sub_1002582C8();
  sub_10079BDE4();
  *(v16 + v14[7]) = v23;
  *(v16 + v14[8]) = v29;
  v56 = (v16 + v14[9]);
  *v56 = v38;
  v56[1] = v50;
  v57 = (v16 + v14[10]);
  *v57 = v53;
  v57[1] = v52;
  v58 = v16 + v14[11];
  v89 = 0;
  v90 = 1;
  sub_10079DFE4();
  v59 = BYTE8(v91);
  v60 = v92;
  *v58 = v91;
  v58[8] = v59;
  *(v58 + 2) = v60;
  v61 = v16 + v14[12];
  LOBYTE(v89) = 0;
  sub_10079DFE4();
  v62 = *(&v91 + 1);
  *v61 = v91;
  *(v61 + 1) = v62;
  v63 = (v16 + v14[13]);
  v89 = 0;
  sub_10079DFE4();
  v64 = *(&v91 + 1);
  *v63 = v91;
  v63[1] = v64;
  v65 = (v16 + v14[14]);
  v89 = 0;
  sub_10079DFE4();
  v66 = *(&v91 + 1);
  *v65 = v91;
  v65[1] = v66;
  v67 = v14[15];
  v68 = [objc_opt_self() sharedApplication];
  v69 = [v68 userInterfaceLayoutDirection];

  *(v16 + v67) = v69 == 1;
  *(v16 + v14[16]) = 0x3FD0000000000000;
  *&v91 = v21;
  *(&v91 + 1) = v83;
  sub_10079DFF4();
  sub_10079E474();
  sub_10079C414();
  v70 = v86;
  sub_10025831C(v16, v86, type metadata accessor for REScrubberView);
  v71 = (v70 + *(v84 + 36));
  v72 = v96;
  v71[4] = v95;
  v71[5] = v72;
  v71[6] = v97;
  v73 = v92;
  *v71 = v91;
  v71[1] = v73;
  v74 = v94;
  v71[2] = v93;
  v71[3] = v74;
  swift_getKeyPath();
  v89 = v55;
  sub_1002596D0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  if (*(v55 + 281))
  {
    v75 = 0.0;
  }

  else
  {
    v75 = 1.0;
  }

  v76 = v87;
  sub_10020B3C8(v70, v87, &qword_100AD71C0, &qword_100813F60);
  result = sub_1001F1160(&qword_100AD7170, &qword_100813F28);
  *(v76 + *(result + 36)) = v75;
  return result;
}

uint64_t sub_1002522C8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1007A1C54();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1007A1CA4();
  v7 = *(v19 - 8);
  __chkstk_darwin(v19);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REActionMenuView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = *a1;
  sub_100017E74();
  v14 = sub_1007A2D74();
  sub_1002571E4(a2, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  sub_10025831C(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for REActionMenuView);
  *(v16 + ((v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
  aBlock[4] = sub_100258110;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A106B0;
  v17 = _Block_copy(aBlock);

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002596D0(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v17);

  (*(v20 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v19);
}

void sub_10025266C(uint64_t a1, double a2)
{
  type metadata accessor for REActionMenuView(0);
  sub_1001F1160(&qword_100AD7168, &qword_100813F20);
  sub_10079E004();
}

uint64_t sub_1002526E4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v53 = a3;
  v4 = sub_1001F1160(&qword_100AD7098, &qword_100813EA0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v44 - v5);
  v52 = sub_1001F1160(&qword_100AD70A0, &qword_100813EA8);
  __chkstk_darwin(v52);
  v8 = &v44 - v7;
  v9 = sub_1001F1160(&qword_100AD70A8, &qword_100813EB0);
  __chkstk_darwin(v9);
  v51 = &v44 - v10;
  v47 = sub_1001F1160(&qword_100AD70B0, &qword_100813EB8);
  __chkstk_darwin(v47);
  v44 = &v44 - v11;
  v45 = sub_1001F1160(&qword_100AD70B8, &qword_100813EC0);
  __chkstk_darwin(v45);
  v13 = &v44 - v12;
  v46 = sub_1001F1160(&qword_100AD70C0, &qword_100813EC8);
  __chkstk_darwin(v46);
  v15 = &v44 - v14;
  v50 = sub_1001F1160(&qword_100AD70C8, &qword_100813ED0);
  __chkstk_darwin(v50);
  v17 = &v44 - v16;
  v18 = type metadata accessor for REActionMenuView(0);
  sub_10000E3E8((a1 + *(v18 + 80)), *(a1 + *(v18 + 80) + 24));
  if (swift_unknownObjectWeakLoadStrong() && (v48 = v9, swift_getObjectType(), sub_10079F984(), swift_getObjectType(), v19 = sub_10079F6D4(), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v19 == 2))
  {
    if (v49)
    {
      sub_100250548(1, v15);
      v20 = &qword_100AD70C0;
      v21 = &qword_100813EC8;
      sub_1000077D8(v15, v13, &qword_100AD70C0, &qword_100813EC8);
    }

    else
    {
      v15 = v44;
      sub_100250868(0, v44);
      v20 = &qword_100AD70B0;
      v21 = &qword_100813EB8;
      sub_1000077D8(v15, v13, &qword_100AD70B0, &qword_100813EB8);
    }

    swift_storeEnumTagMultiPayload();
    sub_100257D74();
    sub_100257EE4();
    sub_10079CCA4();
    sub_100007840(v15, v20, v21);
    v40 = &qword_100AD70C8;
    v41 = &qword_100813ED0;
    sub_1000077D8(v17, v51, &qword_100AD70C8, &qword_100813ED0);
    swift_storeEnumTagMultiPayload();
    sub_100257CE8();
    sub_100258054();
    sub_10079CCA4();
    v42 = v17;
  }

  else
  {
    sub_10079BEB4();
    if (v23 < v22)
    {
      v22 = v23;
    }

    if (v22 >= 375.0)
    {
      v24 = 4.0;
    }

    else
    {
      v24 = 3.4;
    }

    *v6 = sub_10079CB24();
    v6[1] = v24;
    *(v6 + 16) = 0;
    v25 = sub_1001F1160(&qword_100AD70D0, &qword_100813ED8);
    sub_10024F030(a1, v6 + *(v25 + 44));
    v26 = sub_10079D284();
    if (v49)
    {
      v27 = (a1 + *(v18 + 40));
      v28 = *(v27 + 4);
      v29 = v27[1];
      v54 = *v27;
      v55 = v29;
      v56 = v28;
      sub_1001F1160(&qword_100AD7088, &qword_100813E88);
      sub_10079DFF4();
    }

    sub_10079BBA4();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    sub_10020B3C8(v6, v8, &qword_100AD7098, &qword_100813EA0);
    v38 = v51;
    v39 = &v8[*(v52 + 36)];
    *v39 = v26;
    *(v39 + 1) = v31;
    *(v39 + 2) = v33;
    *(v39 + 3) = v35;
    *(v39 + 4) = v37;
    v39[40] = 0;
    v40 = &qword_100AD70A0;
    v41 = &qword_100813EA8;
    sub_1000077D8(v8, v38, &qword_100AD70A0, &qword_100813EA8);
    swift_storeEnumTagMultiPayload();
    sub_100257CE8();
    sub_100258054();
    sub_10079CCA4();
    v42 = v8;
  }

  return sub_100007840(v42, v40, v41);
}

uint64_t sub_100252CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_1001F1160(&qword_100AD7258, &qword_100814008);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v35 - v7;
  v8 = type metadata accessor for REActionMenuView(0);
  v9 = v8 - 8;
  v36 = *(v8 - 8);
  v10 = *(v36 + 8);
  __chkstk_darwin(v8);
  v11 = sub_1001F1160(&qword_100AD7260, &qword_100814010);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - v13;
  v15 = sub_1001F1160(&qword_100AD7268, &qword_100814018);
  __chkstk_darwin(v15 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v35 - v19;
  v21 = *(v9 + 60);
  v39 = a1;
  v22 = (a1 + v21);
  v23 = *v22;
  v24 = *(v22 + 1);
  v41 = v23;
  v42 = v24;
  sub_1001F1160(&qword_100ADB850, &qword_100814020);
  sub_10079DFF4();
  if (v40 == 1)
  {
    v25 = v39;
    sub_1002571E4(v39, &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = v36[80];
    v36 = v5;
    v27 = (v26 + 16) & ~v26;
    v28 = swift_allocObject();
    v29 = sub_10025831C(&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for REActionMenuView);
    __chkstk_darwin(v29);
    *(&v35 - 2) = v25;
    sub_1001F1160(&qword_100AD7278, &qword_100814030);
    sub_1002586E4();
    sub_10079E054();
    v5 = v36;
    (*(v12 + 32))(v20, v14, v11);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v12 + 56))(v20, v30, 1, v11);
  v31 = v37;
  sub_100253664(v37);
  sub_1000077D8(v20, v17, &qword_100AD7268, &qword_100814018);
  sub_1000077D8(v31, v5, &qword_100AD7258, &qword_100814008);
  v32 = v38;
  sub_1000077D8(v17, v38, &qword_100AD7268, &qword_100814018);
  v33 = sub_1001F1160(&qword_100AD7270, &qword_100814028);
  sub_1000077D8(v5, v32 + *(v33 + 48), &qword_100AD7258, &qword_100814008);
  sub_100007840(v31, &qword_100AD7258, &qword_100814008);
  sub_100007840(v20, &qword_100AD7268, &qword_100814018);
  sub_100007840(v5, &qword_100AD7258, &qword_100814008);
  return sub_100007840(v17, &qword_100AD7268, &qword_100814018);
}

uint64_t sub_10025313C(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for REActionMenuView(0) + 64));
  result = swift_beginAccess();
  if (*(v1 + 224) == 1)
  {
    *(v1 + 224) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1002596D0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A04();
  }

  return result;
}

double sub_100253274@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10079CAE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v36 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v33[-v8];
  __chkstk_darwin(v10);
  v12 = &v33[-v11];
  _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v13 = sub_10079D564();
  v41 = v14;
  v42 = v13;
  v16 = v15;
  v40 = v17;

  v39 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v38 = sub_10079D294();
  v37 = sub_10079D394();
  KeyPath = swift_getKeyPath();
  v34 = v16 & 1;
  v46 = v16 & 1;
  v18 = type metadata accessor for REActionMenuView(0);
  sub_10079BEB4();
  v20 = v19;
  v22 = v21;
  sub_10024B4B0(v12);
  sub_10000E3E8((a1 + *(v18 + 80)), *(a1 + *(v18 + 80) + 24));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v23 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v24 = v23 == 2;
  }

  else
  {
    v24 = 0;
  }

  sub_1004FB7A0(v12, v24, v20, v22);
  v25 = *(v5 + 8);
  v25(v12, v4);
  sub_10079BEB4();
  sub_10024B4B0(v9);
  v26 = v36;
  (*(v5 + 32))(v36, v9, v4);
  v27 = (*(v5 + 88))(v26, v4);
  if (v27 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v27 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:) && v27 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v27 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v27 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v27 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    (v25)(v26, v4, 72.0);
  }

  sub_10079E474();
  sub_10079BE54();
  v28 = v41;
  *a2 = v42;
  *(a2 + 8) = v28;
  *(a2 + 16) = v34;
  v29 = v39;
  *(a2 + 24) = v40;
  *(a2 + 32) = v29;
  *(a2 + 40) = v38;
  v30 = v37;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = v30;
  v31 = v44;
  *(a2 + 64) = v43;
  *(a2 + 80) = v31;
  result = v45[0];
  *(a2 + 96) = *v45;
  return result;
}

uint64_t sub_100253664@<X0>(uint64_t a1@<X8>)
{
  v32 = sub_10079CAE4();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for REActionMenuView(0);
  v7 = *(v1 + v6[16]);
  swift_getKeyPath();
  v33 = v7;
  sub_1002596D0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  v8 = *(v7 + 298);
  v9 = *(v1 + v6[24]);
  sub_10079BEB4();
  v11 = v10;
  v13 = v12;
  sub_10024B4B0(v5);
  sub_10000E3E8((v1 + v6[20]), *(v1 + v6[20] + 24));
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = v3;
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v14 = sub_10079F6D4();
    swift_unknownObjectRelease();
    v3 = v31;
    swift_unknownObjectRelease();
    v15 = v14 == 2;
  }

  else
  {
    v15 = 0;
  }

  v16 = 3.0;
  if (v8)
  {
    v17 = 4.0;
  }

  else
  {
    v17 = 3.0;
  }

  if (!v8)
  {
    v16 = 2.0;
  }

  if (v9)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  sub_1004FB7A0(v5, v15, v11, v13);
  v20 = v19;
  (*(v3 + 8))(v5, v32);
  sub_10079BEB4();
  if (v22 < v21)
  {
    v21 = v22;
  }

  if (v21 >= 375.0)
  {
    v23 = 4.0;
  }

  else
  {
    v23 = 3.4;
  }

  v24 = floor((v20 - v18 * v23) / v18);
  sub_10079BEB4();
  if (v26 < v25)
  {
    v25 = v26;
  }

  if (v25 >= 375.0)
  {
    v27 = 4.0;
  }

  else
  {
    v27 = 3.4;
  }

  *a1 = sub_10079C8F4();
  *(a1 + 8) = v27;
  *(a1 + 16) = 0;
  v28 = sub_1001F1160(&qword_100AD72A8, &qword_1008140C8);
  return sub_100253988(0xD000000000000013, 0x80000001008C6170, v1, v7, (a1 + *(v28 + 44)), v24);
}

uint64_t sub_100253988@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>, double a6@<D0>)
{
  v257 = a2;
  v256 = a1;
  v241 = a5;
  v237 = a4;
  v269 = (a4 + 264);
  v232 = sub_1001F1160(&qword_100AD72B0, &qword_1008140D0);
  __chkstk_darwin(v232);
  v231 = v201 - v8;
  v250 = sub_1001F1160(&qword_100AD72B8, &qword_1008140D8);
  v236 = *(v250 - 8);
  __chkstk_darwin(v250);
  v235 = v201 - v9;
  v234 = sub_1001F1160(&qword_100AD72C0, &qword_1008140E0);
  __chkstk_darwin(v234);
  v240 = v201 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v233 = v201 - v12;
  __chkstk_darwin(v13);
  v239 = v201 - v14;
  v218 = sub_1001F1160(&qword_100AD72C8, &qword_1008140E8);
  __chkstk_darwin(v218);
  v217 = v201 - v15;
  v228 = sub_1001F1160(&qword_100AD72D0, &qword_1008140F0);
  v249 = *(v228 - 8);
  __chkstk_darwin(v228);
  v216 = v201 - v16;
  v17 = sub_1001F1160(&qword_100AD72D8, &qword_1008140F8);
  __chkstk_darwin(v17 - 8);
  v19 = v201 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v267 = v201 - v21;
  v22 = sub_1001F1160(&qword_100AD72E0, &qword_100814100);
  __chkstk_darwin(v22);
  v210 = v201 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v211 = v201 - v25;
  __chkstk_darwin(v26);
  v214 = v201 - v27;
  v246 = sub_1001F1160(&qword_100AD72E8, &qword_100814108);
  v244 = *(v246 - 8);
  __chkstk_darwin(v246);
  v212 = v201 - v28;
  v225 = sub_100796CF4();
  v242 = *(v225 - 8);
  __chkstk_darwin(v225);
  v222 = v201 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v224 = v201 - v31;
  v223 = sub_1007A21D4();
  v255 = *(v223 - 8);
  __chkstk_darwin(v223);
  v221 = v201 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v208 = v201 - v34;
  v35 = sub_1001F1160(&qword_100AD72F0, &qword_100814110);
  __chkstk_darwin(v35 - 8);
  v266 = v201 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v271 = v201 - v38;
  v39 = sub_10079CAE4();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v227 = v201 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v226 = v201 - v43;
  __chkstk_darwin(v44);
  v213 = v201 - v45;
  __chkstk_darwin(v46);
  v209 = v201 - v47;
  __chkstk_darwin(v48);
  v207 = v201 - v49;
  __chkstk_darwin(v50);
  v206 = v201 - v51;
  __chkstk_darwin(v52);
  v54 = v201 - v53;
  __chkstk_darwin(v55);
  v57 = v201 - v56;
  v220 = sub_1001F1160(&qword_100AD72F8, &qword_100814118);
  __chkstk_darwin(v220);
  v59 = v201 - v58;
  v230 = sub_1001F1160(&qword_100AD7300, &unk_100814120);
  v229 = *(v230 - 8);
  __chkstk_darwin(v230);
  v265 = v201 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v268 = v201 - v62;
  v63 = type metadata accessor for REActionMenuView(0);
  v262 = *(v63 + 88);
  sub_10079BEB4();
  v65 = v64;
  v67 = v66;
  v272 = a3;
  sub_10024B4B0(v57);
  v68 = *(v40 + 32);
  v264 = v40 + 32;
  v263 = v68;
  v68(v54, v57, v39);
  v248 = v40;
  v69 = *(v40 + 88);
  v270 = v39;
  v261 = v40 + 88;
  v260 = v69;
  v70 = v69(v54, v39);
  v71 = 72.0;
  v259 = enum case for ContentSizeCategory.extraExtraLarge(_:);
  v252 = enum case for ContentSizeCategory.accessibilityExtraLarge(_:);
  v253 = enum case for ContentSizeCategory.accessibilityLarge(_:);
  v254 = enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  v238 = v19;
  v247 = enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:);
  v251 = enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:);
  v215 = v22;
  if (v70 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v70 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:) && v70 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v70 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v70 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v70 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    (*(v248 + 8))(v54, v270, 72.0);
    v71 = 48.0;
  }

  if (v67 >= v65)
  {
    v72 = v65;
  }

  else
  {
    v72 = v67;
  }

  if (v72 >= 375.0)
  {
    v73 = v71;
  }

  else
  {
    v73 = v71 * 0.85;
  }

  v219 = v63;
  v74 = v272 + *(v63 + 84);
  swift_unknownObjectWeakLoadStrong();
  v258 = v74;
  v75 = *(v74 + 8);
  v76 = type metadata accessor for ChromeStyle(0);
  v77 = sub_1002596D0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
  v245 = v76;
  v243 = v77;
  v274 = sub_10079C484();
  v275 = v78;
  v280 = 0;
  swift_unknownObjectWeakInit();
  v79 = v256;
  v80 = v257;
  v276 = v256;
  *&v277 = v257;
  v81 = 1;
  BYTE8(v277) = 1;
  v278 = a6;
  v279 = v73;
  v280 = v75;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  v281 = sub_10025590C;
  v282 = 0;
  sub_100258900();
  sub_10079DA04();
  v82 = sub_100258954(&v274);
  __chkstk_darwin(v82);
  v201[-2] = v79;
  v201[-1] = v80;
  v83 = sub_1001F1160(&qword_100AD1D70, &unk_100815B50);
  sub_1002589B0(&qword_100AD7310, &qword_100AD72F8, &qword_100814118, sub_100258900);
  v84 = sub_100005920(&qword_100ADBBB0, &qword_100AD1D70, &unk_100815B50, &protocol conformance descriptor for Label<A, B>);
  v257 = v83;
  v256 = v84;
  sub_10079DAC4();
  sub_100007840(v59, &qword_100AD72F8, &qword_100814118);
  v85 = v237;
  if (*(v272 + *(v219 + 96)) == 1)
  {
    swift_getKeyPath();
    v86 = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
    v274 = v85;
    v87 = sub_1002596D0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    v201[2] = v86;
    v201[1] = v87;
    sub_100797A14();

    v88 = v269;
    swift_beginAccess();
    v89 = (v255 + 16);
    v90 = v242;
    v91 = (v242 + 16);
    v92 = v88[32] == 1;
    v220 = v242 + 16;
    v219 = v255 + 16;
    v99 = v208;
    if (v92)
    {
      sub_1007A2154();
      v100 = v224;
      sub_100796C94();
      v93 = *v89;
      v94 = v221;
      v103 = v223;
      v205 = v93;
      v93(v221, v99, v223);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v96 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v97 = *v91;
      v98 = v222;
      v108 = v225;
      v203 = v97;
      v97(v222, v100, v225);
      v109 = sub_1007A22D4(v94, 0, 0, v96, v98, "Accessibility label for the orientation lock button being in the on state in the action menu.", 93, 2);
    }

    else
    {
      sub_1007A2154();
      v100 = v224;
      sub_100796C94();
      v101 = *v89;
      v102 = v221;
      v103 = v223;
      v205 = v101;
      v101(v221, v99, v223);
      type metadata accessor for BundleFinder();
      v104 = swift_getObjCClassFromMetadata();
      v105 = [objc_opt_self() bundleForClass:v104];
      v106 = *v91;
      v107 = v222;
      v108 = v225;
      v203 = v106;
      v106(v222, v100, v225);
      v109 = sub_1007A22D4(v102, 0, 0, v105, v107, "Accessibility label for the orientation lock button being in the off state in the action menu.", 94, 2);
    }

    v204 = v109;
    v111 = v110;
    v202 = *(v90 + 8);
    v202(v100, v108);
    v112 = *(v255 + 8);
    v255 += 8;
    v112(v99, v103);
    swift_getKeyPath();
    v274 = v85;
    sub_100797A14();

    v113 = v269[32];
    sub_10079BEB4();
    v115 = v114;
    v117 = v116;
    v118 = v206;
    sub_10024B4B0(v206);
    v119 = v207;
    v120 = v270;
    v263(v207, v118, v270);
    v121 = v260(v119, v120);
    v122 = 72.0;
    v123 = v99;
    v242 = v90 + 8;
    v208 = v111;
    if (v121 != v259 && v121 != v254 && v121 != v253 && v121 != v252 && v121 != v251 && v121 != v247)
    {
      (*(v248 + 8))(v119, v270, 72.0);
      v122 = 48.0;
    }

    if (v117 >= v115)
    {
      v124 = v115;
    }

    else
    {
      v124 = v117;
    }

    if (v124 >= 375.0)
    {
      v125 = v122;
    }

    else
    {
      v125 = v122 * 0.85;
    }

    v126 = v258;
    swift_unknownObjectWeakLoadStrong();
    v127 = *(v126 + 8);
    LOBYTE(v274) = v113;
    v275 = 0xD000000000000012;
    v276 = 0x80000001008C61F0;
    v277 = xmmword_100813B40;
    v278 = a6;
    v279 = v125;
    v280 = v127;
    swift_unknownObjectWeakInit();

    swift_unknownObjectRelease();
    v281 = sub_100258BBC;
    v282 = v85;
    sub_100258BC0();
    v128 = v210;
    sub_10079DA04();
    sub_100258C14(&v274);
    sub_1007A2154();
    v129 = v224;
    sub_100796C94();
    v130 = v221;
    v131 = v123;
    v132 = v123;
    v133 = v223;
    v205(v221, v131, v223);
    type metadata accessor for BundleFinder();
    v134 = swift_getObjCClassFromMetadata();
    v135 = [objc_opt_self() bundleForClass:v134];
    v136 = v222;
    v137 = v225;
    v203(v222, v129, v225);
    v138 = sub_1007A22D4(v130, 0, 0, v135, v136, "Accessibility label for an orientation lock button", 50, 2);
    v140 = v139;
    v202(v129, v137);
    v112(v132, v133);
    v274 = v138;
    v275 = v140;
    sub_100206ECC();
    v141 = v211;
    sub_10079C1C4();

    sub_100007840(v128, &qword_100AD72E0, &qword_100814100);
    v274 = v204;
    v275 = v208;
    v142 = v214;
    sub_10079C1E4();
    sub_100007840(v141, &qword_100AD72E0, &qword_100814100);

    sub_1002589B0(&qword_100AD7348, &qword_100AD72E0, &qword_100814100, sub_100258BC0);
    v143 = v212;
    sub_10079DAC4();
    sub_100007840(v142, &qword_100AD72E0, &qword_100814100);
    (*(v244 + 32))(v271, v143, v246);
    v81 = 0;
  }

  v144 = 1;
  (*(v244 + 56))(v271, v81, 1, v246);
  swift_getKeyPath();
  v274 = v85;
  sub_1002596D0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  v145 = v269;
  swift_beginAccess();
  v146 = v250;
  v147 = v267;
  v148 = v228;
  if (v145[34] == 1)
  {
    sub_10079BEB4();
    v150 = v149;
    v152 = v151;
    v153 = v209;
    sub_10024B4B0(v209);
    v154 = v213;
    v155 = v270;
    v263(v213, v153, v270);
    v156 = v260(v154, v155);
    v157 = 72.0;
    if (v156 != v259 && v156 != v254 && v156 != v253 && v156 != v252 && v156 != v251 && v156 != v247)
    {
      (*(v248 + 8))(v154, v270, 72.0);
      v157 = 48.0;
    }

    if (v152 >= v150)
    {
      v158 = v150;
    }

    else
    {
      v158 = v152;
    }

    if (v158 >= 375.0)
    {
      v159 = v157;
    }

    else
    {
      v159 = v157 * 0.85;
    }

    v160 = v258;
    swift_unknownObjectWeakLoadStrong();
    v161 = *(v160 + 8);
    v274 = sub_10079C484();
    v275 = v162;
    v279 = 0.0;
    swift_unknownObjectWeakInit();
    v276 = v85;
    *&v277 = a6;
    *(&v277 + 1) = v159;
    v279 = v161;
    swift_unknownObjectWeakAssign();

    swift_unknownObjectRelease();
    sub_100258B14();
    v163 = v217;
    sub_10079DA04();
    sub_100258B68(&v274);
    sub_1002589B0(&qword_100AD7338, &qword_100AD72C8, &qword_1008140E8, sub_100258B14);
    v164 = v216;
    sub_10079DAC4();
    sub_100007840(v163, &qword_100AD72C8, &qword_1008140E8);
    (*(v249 + 32))(v147, v164, v148);
    v144 = 0;
    v146 = v250;
  }

  (*(v249 + 56))(v147, v144, 1, v148);
  sub_10079BEB4();
  v166 = v165;
  v168 = v167;
  v169 = v226;
  sub_10024B4B0(v226);
  v170 = v227;
  v171 = v270;
  v263(v227, v169, v270);
  v172 = v260(v170, v171);
  v173 = 72.0;
  if (v172 == v259)
  {
    v174 = v235;
  }

  else
  {
    v174 = v235;
    if (v172 != v254 && v172 != v253 && v172 != v252 && v172 != v251 && v172 != v247)
    {
      (*(v248 + 8))(v170, v270, 72.0);
      v173 = 48.0;
    }
  }

  if (v168 >= v166)
  {
    v175 = v166;
  }

  else
  {
    v175 = v168;
  }

  if (v175 >= 375.0)
  {
    v176 = v173;
  }

  else
  {
    v176 = v173 * 0.85;
  }

  v177 = v258;
  swift_unknownObjectWeakLoadStrong();
  v178 = *(v177 + 8);
  v274 = sub_10079C484();
  v275 = v179;
  v280 = 0;
  swift_unknownObjectWeakInit();
  v276 = v85;
  v278 = a6;
  v279 = v176;
  v280 = v178;
  swift_unknownObjectWeakAssign();
  swift_getKeyPath();
  v273 = v85;

  sub_100797A14();

  swift_unknownObjectRelease();
  LOBYTE(v277) = *v269;
  *(&v277 + 1) = 0;
  sub_100258A64();
  v180 = v231;
  sub_10079DA04();
  sub_100258AB8(&v274);
  sub_1002589B0(&qword_100AD7320, &qword_100AD72B0, &qword_1008140D0, sub_100258A64);
  sub_10079DAC4();
  sub_100007840(v180, &qword_100AD72B0, &qword_1008140D0);
  swift_getKeyPath();
  v274 = v85;
  sub_100797A14();

  swift_beginAccess();
  v181 = *(v85 + 216);
  if (v181 == _s5Books17REActionMenuStateC9pageCountSivpfi_0())
  {
    v182 = 1;
  }

  else
  {
    swift_getKeyPath();
    v273 = v85;
    sub_100797A14();

    v183 = *(v85 + 256);
    v182 = v183 == _s5Books17REActionMenuStateC9pageCountSivpfi_0();
  }

  KeyPath = swift_getKeyPath();
  v185 = swift_allocObject();
  *(v185 + 16) = v182;
  v186 = v233;
  (*(v236 + 32))(v233, v174, v146);
  v187 = &v186[*(v234 + 36)];
  *v187 = KeyPath;
  v187[1] = sub_100258B0C;
  v187[2] = v185;
  v188 = v186;
  v189 = v239;
  sub_10020B3C8(v188, v239, &qword_100AD72C0, &qword_1008140E0);
  v190 = v229;
  v191 = *(v229 + 16);
  v192 = v265;
  v193 = v230;
  v191(v265, v268, v230);
  v194 = v266;
  sub_1000077D8(v271, v266, &qword_100AD72F0, &qword_100814110);
  v195 = v238;
  sub_1000077D8(v147, v238, &qword_100AD72D8, &qword_1008140F8);
  v196 = v240;
  sub_1000077D8(v189, v240, &qword_100AD72C0, &qword_1008140E0);
  v197 = v241;
  v191(v241, v192, v193);
  v198 = sub_1001F1160(&qword_100AD7328, &qword_1008141D8);
  sub_1000077D8(v194, &v197[v198[12]], &qword_100AD72F0, &qword_100814110);
  sub_1000077D8(v195, &v197[v198[16]], &qword_100AD72D8, &qword_1008140F8);
  sub_1000077D8(v196, &v197[v198[20]], &qword_100AD72C0, &qword_1008140E0);
  sub_100007840(v189, &qword_100AD72C0, &qword_1008140E0);
  sub_100007840(v267, &qword_100AD72D8, &qword_1008140F8);
  sub_100007840(v271, &qword_100AD72F0, &qword_100814110);
  v199 = *(v190 + 8);
  v199(v268, v193);
  sub_100007840(v196, &qword_100AD72C0, &qword_1008140E0);
  sub_100007840(v195, &qword_100AD72D8, &qword_1008140F8);
  sub_100007840(v266, &qword_100AD72F0, &qword_100814110);
  return (v199)(v265, v193);
}

uint64_t sub_10025590C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    ObjectType = swift_getObjectType();
    return (*(a2 + 64))(ObjectType, a2);
  }

  return result;
}

uint64_t sub_100255954@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v23[1] = a3;
  v23[2] = a1;
  v3 = sub_100796CF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v23 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v23 - v15;
  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v13, v16, v10);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v4 + 16))(v6, v9, v3);
  v19 = sub_1007A22D4(v13, 0, 0, v18, v6, "Accessibility string for a share button", 39, 2);
  v21 = v20;
  (*(v4 + 8))(v9, v3);
  (*(v11 + 8))(v16, v10);
  v23[3] = v19;
  v23[4] = v21;
  sub_100206ECC();

  return sub_10079DFD4();
}

uint64_t sub_100255BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v3 = sub_100796CF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v23 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v23 - v15;
  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v13, v16, v10);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v4 + 16))(v6, v9, v3);
  v19 = sub_1007A22D4(v13, 0, 0, v18, v6, "Accessibility string for an orientation lock button", 51, 2);
  v21 = v20;
  (*(v4 + 8))(v9, v3);
  (*(v11 + 8))(v16, v10);
  v23[5] = v19;
  v23[6] = v21;
  swift_getKeyPath();
  v23[2] = a1;
  sub_1002596D0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  sub_100206ECC();
  return sub_10079DFD4();
}

uint64_t sub_100255F68()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v20 - v12;
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_1007A22D4(v10, 0, 0, v15, v3, "Accessibility string for a line guide button", 44, 2);
  v18 = v17;
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  v20[1] = v16;
  v20[2] = v18;
  sub_100206ECC();
  return sub_10079DFD4();
}

uint64_t sub_100256218@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v21 - v13;
  sub_1007A2154();
  sub_100796C94();
  (*(v9 + 16))(v11, v14, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:{ObjCClassFromMetadata, v21[0]}];
  (*(v2 + 16))(v4, v7, v1);
  v17 = sub_1007A22D4(v11, 0, 0, v16, v4, "Accessibility string for a bookmark button", 42, 2);
  v19 = v18;
  (*(v2 + 8))(v7, v1);
  (*(v9 + 8))(v14, v8);
  v21[1] = v17;
  v21[2] = v19;
  sub_100206ECC();
  return sub_10079DFD4();
}

uint64_t sub_1002564C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_10079E184();
  sub_10079E0A4();
  sub_10079CCB4();
  v5 = sub_10079DEF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v17 - v10;
  v17[4] = v3;
  v17[5] = v4;
  v18 = v2;
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v20 = WitnessTable;
  v21 = v13;
  v14 = swift_getWitnessTable();
  sub_10079DEE4();
  v19 = v14;
  swift_getWitnessTable();
  sub_10039232C();
  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_10039232C();
  return (v15)(v11, v5);
}

uint64_t sub_1002566FC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v7 = sub_10079E0A4();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v33 = &v32 - v11;
  v12 = sub_10079E184();
  v32 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = sub_10079CCB4();
  v37 = *(v18 - 8);
  v38 = v18;
  __chkstk_darwin(v18);
  v36 = &v32 - v19;
  v35 = &v32;
  LOBYTE(v19) = *a1;
  v40 = a2;
  v41 = a3;
  v42 = a1;
  if (v19)
  {
    sub_10079CB24();
    sub_10079E174();
    WitnessTable = swift_getWitnessTable();
    sub_10039232C();
    v21 = *(v32 + 8);
    v21(v14, v12);
    sub_10039232C();
    v22 = swift_getWitnessTable();
    v23 = v36;
    sub_10028B610(v14, v12, v7, WitnessTable, v22);
    v21(v14, v12);
    v21(v17, v12);
  }

  else
  {
    sub_10079C8F4();
    sub_10079E094();
    v24 = swift_getWitnessTable();
    v25 = v33;
    sub_10039232C();
    v26 = *(v34 + 8);
    v26(v9, v7);
    sub_10039232C();
    v27 = swift_getWitnessTable();
    v23 = v36;
    sub_10028B708(v9, v12, v7, v27, v24);
    v26(v9, v7);
    v26(v25, v7);
  }

  v28 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v43 = v28;
  v44 = v29;
  v30 = v38;
  swift_getWitnessTable();
  sub_10039232C();
  return (*(v37 + 8))(v23, v30);
}

uint64_t sub_100256BCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  __chkstk_darwin(a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v13 - v8;
  (*(v10 + 24))(v7);
  sub_10039232C();
  v11 = *(v3 + 8);
  v11(v5, a2);
  sub_10039232C();
  return (v11)(v9, a2);
}

uint64_t sub_100256D3C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v46 = a5;
  v48 = a3;
  v49 = a4;
  v47 = a1;
  v43 = a6;
  v7 = sub_1001F1160(&qword_100AD73F0, &qword_100814408);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v42 - v9;
  v11 = sub_1001F1160(&qword_100AD73F8, &qword_100814410);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  v14 = sub_1001F1160(&qword_100AD7400, &qword_100814418);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v45 = sub_1001F1160(&qword_100AD7408, &qword_100814420);
  __chkstk_darwin(v45);
  v18 = &v42 - v17;
  v44 = sub_1001F1160(&qword_100AD7410, &qword_100814428);
  __chkstk_darwin(v44);
  v20 = &v42 - v19;
  v21 = 1.0;
  if (a2)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.77;
  }

  sub_10079E634();
  v24 = v23;
  v26 = v25;
  v27 = sub_1001F1160(&qword_100AD7418, &qword_100814430);
  result = (*(*(v27 - 8) + 16))(v10, v47, v27);
  v29 = *(v8 + 44);
  v30 = v48;
  v31 = &v10[v29];
  *v31 = v22;
  *(v31 + 1) = v22;
  *(v31 + 2) = v24;
  *(v31 + 3) = v26;
  v32 = 0.0;
  v33 = 0.0;
  if ((a2 & 1) == 0)
  {
    if (__OFSUB__(v49, v30))
    {
      __break(1u);
      goto LABEL_20;
    }

    v33 = fmax((v49 - v30), 0.5) * 25.0;
  }

  sub_10020B3C8(v10, v13, &qword_100AD73F0, &qword_100814408);
  v34 = &v13[*(v11 + 36)];
  *v34 = 0;
  *(v34 + 1) = v33;
  v35 = 32.0;
  if (v46)
  {
    v35 = -32.0;
  }

  if ((a2 & 1) == 0)
  {
    v32 = v35;
  }

  sub_10020B3C8(v13, v16, &qword_100AD73F8, &qword_100814410);
  v36 = &v16[*(v14 + 36)];
  *v36 = v32;
  *(v36 + 1) = 0;
  result = sub_10079E4C4();
  if (a2)
  {
    goto LABEL_15;
  }

  if (__OFADD__(v30, 1))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (__OFSUB__(v49, v30 + 1))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = 0.0;
LABEL_15:
  v37 = sub_10079E4D4();

  sub_10020B3C8(v16, v18, &qword_100AD7400, &qword_100814418);
  v38 = &v18[*(v45 + 36)];
  *v38 = v37;
  v38[8] = a2 & 1;
  sub_10020B3C8(v18, v20, &qword_100AD7408, &qword_100814420);
  *&v20[*(v44 + 36)] = v21;
  result = sub_10079E4A4();
  if (a2)
  {
LABEL_18:
    v39 = sub_10079E4D4();

    v40 = v43;
    sub_10020B3C8(v20, v43, &qword_100AD7410, &qword_100814428);
    result = sub_1001F1160(qword_100AD7420, &qword_100814438);
    v41 = v40 + *(result + 36);
    *v41 = v39;
    *(v41 + 8) = a2 & 1;
    return result;
  }

  if (__OFADD__(v30, 1))
  {
    goto LABEL_21;
  }

  if (!__OFSUB__(v49, v30 + 1))
  {
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1002571E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REActionMenuView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100257248(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *(type metadata accessor for REActionMenuView(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_10024E2D0(v10, a1, a2, a3, a4);
}

uint64_t sub_100257308()
{
  v1 = type metadata accessor for REActionMenuView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1001F1160(&unk_100ADB4C0, &qword_100813DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_10079CEE4();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v2, 1, v3))
    {
      (*(v4 + 8))(v2, v3);
    }
  }

  else
  {
  }

  v5 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10079CEE4();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[6];
  sub_1001F1160(&unk_100ADB4E0, &qword_100815F30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10079CAE4();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  v10 = v1[7];
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079BC44();
    (*(*(v11 - 8) + 8))(v2 + v10, v11);
  }

  else
  {
  }

  v12 = v1[8];
  sub_1001F1160(&unk_100ADB4F0, &qword_100813DC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10079C0E4();
    (*(*(v13 - 8) + 8))(v2 + v12, v13);
  }

  else
  {
  }

  v14 = v2 + v1[14];
  v15 = sub_10079D024();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (!v17(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  sub_1001F1160(&qword_100AE3E70, &unk_100813BD0);

  v18 = v2 + v1[15];
  if (!v17(v18, 1, v15))
  {
    (*(v16 + 8))(v18, v15);
  }

  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();
  sub_1000074E0((v2 + v1[20]));
  swift_unknownObjectWeakDestroy();
  v19 = v1[22];
  v20 = sub_10079BED4();
  (*(*(v20 - 8) + 8))(v2 + v19, v20);
  v21 = v1[23];
  v22 = sub_10079ACE4();
  (*(*(v22 - 8) + 8))(v2 + v21, v22);

  return swift_deallocObject();
}

double sub_10025788C(uint64_t a1, _OWORD *a2)
{
  v5 = *(type metadata accessor for REActionMenuView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10024E4CC(a1, a2, v6);
}

unint64_t sub_10025790C()
{
  result = qword_100AD7020;
  if (!qword_100AD7020)
  {
    sub_1001F1234(&qword_100AD6FD0, &qword_100813C90);
    sub_100005920(&qword_100AD7028, &qword_100AD6FF0, &unk_100813DA0, &unk_10080E750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7020);
  }

  return result;
}

uint64_t sub_1002579DC()
{
  v2 = *(type metadata accessor for REActionMenuView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002812C;

  return sub_10024E600(v0 + v3);
}

unint64_t sub_100257AA8()
{
  result = qword_100AD7040;
  if (!qword_100AD7040)
  {
    sub_1001F1234(&qword_100AD6FE0, &qword_100813CA0);
    sub_100257B60();
    sub_100005920(&qword_100AD7058, &qword_100AD7038, &qword_100813E60, &protocol conformance descriptor for _TaskValueModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7040);
  }

  return result;
}

unint64_t sub_100257B60()
{
  result = qword_100AD7048;
  if (!qword_100AD7048)
  {
    sub_1001F1234(&qword_100AD7050, &qword_100813E68);
    sub_1001F1234(&qword_100AD6FD0, &qword_100813C90);
    type metadata accessor for UIEdgeInsets(255);
    sub_10025790C();
    sub_1002596D0(&qword_100AD7030, type metadata accessor for UIEdgeInsets, &protocol conformance descriptor for UIEdgeInsets);
    swift_getOpaqueTypeConformance2();
    sub_1002596D0(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7048);
  }

  return result;
}

unint64_t sub_100257CE8()
{
  result = qword_100AD70D8;
  if (!qword_100AD70D8)
  {
    sub_1001F1234(&qword_100AD70C8, &qword_100813ED0);
    sub_100257D74();
    sub_100257EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD70D8);
  }

  return result;
}

unint64_t sub_100257D74()
{
  result = qword_100AD70E0;
  if (!qword_100AD70E0)
  {
    sub_1001F1234(&qword_100AD70C0, &qword_100813EC8);
    sub_100257E2C();
    sub_100005920(&qword_100AD7108, &qword_100AD7110, &qword_100813EF0, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD70E0);
  }

  return result;
}

unint64_t sub_100257E2C()
{
  result = qword_100AD70E8;
  if (!qword_100AD70E8)
  {
    sub_1001F1234(&qword_100AD70F0, &qword_100813EE0);
    sub_100005920(&qword_100AD70F8, &qword_100AD7100, &qword_100813EE8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD70E8);
  }

  return result;
}

unint64_t sub_100257EE4()
{
  result = qword_100AD7118;
  if (!qword_100AD7118)
  {
    sub_1001F1234(&qword_100AD70B0, &qword_100813EB8);
    sub_100257F9C();
    sub_100005920(&qword_100AD7140, &qword_100AD7148, &qword_100813F08, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7118);
  }

  return result;
}

unint64_t sub_100257F9C()
{
  result = qword_100AD7120;
  if (!qword_100AD7120)
  {
    sub_1001F1234(&qword_100AD7128, &qword_100813EF8);
    sub_100005920(&qword_100AD7130, &qword_100AD7138, &qword_100813F00, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7120);
  }

  return result;
}

unint64_t sub_100258054()
{
  result = qword_100AD7150;
  if (!qword_100AD7150)
  {
    sub_1001F1234(&qword_100AD70A0, &qword_100813EA8);
    sub_100005920(&qword_100AD7158, &qword_100AD7098, &qword_100813EA0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7150);
  }

  return result;
}

void sub_100258110()
{
  v1 = *(type metadata accessor for REActionMenuView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10025266C(v0 + v2, v3);
}

void sub_1002581A4(uint64_t *a2@<X8>)
{
  v3 = sub_10079DDC4();
  sub_10079BEB4();
  *a2 = v3;
  a2[1] = v4;
}

unint64_t sub_1002581E4()
{
  result = qword_100AD7198;
  if (!qword_100AD7198)
  {
    sub_1001F1234(&qword_100AD7180, &qword_100813F38);
    sub_100005920(&qword_100AD71A0, &qword_100AD7178, &qword_100813F30, &protocol conformance descriptor for VStack<A>);
    sub_100005920(&qword_100AD71A8, &qword_100AD71B0, &qword_100813F50, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7198);
  }

  return result;
}

unint64_t sub_1002582C8()
{
  result = qword_100AD71C8;
  if (!qword_100AD71C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD71C8);
  }

  return result;
}

uint64_t sub_10025831C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100258384()
{
  result = qword_100AD71F8;
  if (!qword_100AD71F8)
  {
    sub_1001F1234(&qword_100AD71E8, &qword_100813FA0);
    sub_100258410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD71F8);
  }

  return result;
}

unint64_t sub_100258410()
{
  result = qword_100AE43A0;
  if (!qword_100AE43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE43A0);
  }

  return result;
}

unint64_t sub_100258464()
{
  result = qword_100AD7200;
  if (!qword_100AD7200)
  {
    sub_1001F1234(&qword_100AD71F0, &qword_100813FA8);
    sub_10025851C();
    sub_100005920(&qword_100AD7220, &qword_100AD7228, &qword_100813FB8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7200);
  }

  return result;
}

unint64_t sub_10025851C()
{
  result = qword_100AD7208;
  if (!qword_100AD7208)
  {
    sub_1001F1234(&qword_100AD7210, &qword_100813FB0);
    sub_1002585A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7208);
  }

  return result;
}

unint64_t sub_1002585A8()
{
  result = qword_100AD7218;
  if (!qword_100AD7218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7218);
  }

  return result;
}

unint64_t sub_1002585FC()
{
  result = qword_100AD7250;
  if (!qword_100AD7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7250);
  }

  return result;
}

uint64_t sub_100258668(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for REActionMenuView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1002586E4()
{
  result = qword_100AD7280;
  if (!qword_100AD7280)
  {
    sub_1001F1234(&qword_100AD7278, &qword_100814030);
    sub_100258770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7280);
  }

  return result;
}

unint64_t sub_100258770()
{
  result = qword_100AD7288;
  if (!qword_100AD7288)
  {
    sub_1001F1234(&qword_100AD7290, &qword_100814038);
    sub_100258828();
    sub_100005920(&unk_100AD1CF0, &qword_100ADBDA0, &unk_10080B720, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7288);
  }

  return result;
}

unint64_t sub_100258828()
{
  result = qword_100AD7298;
  if (!qword_100AD7298)
  {
    sub_1001F1234(&qword_100AD72A0, &qword_100814040);
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0, &qword_100831A40, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7298);
  }

  return result;
}

unint64_t sub_100258900()
{
  result = qword_100AD7308;
  if (!qword_100AD7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7308);
  }

  return result;
}

uint64_t sub_1002589B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2, a3);
    a4();
    sub_1002596D0(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100258A64()
{
  result = qword_100AD7318;
  if (!qword_100AD7318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7318);
  }

  return result;
}

unint64_t sub_100258B14()
{
  result = qword_100AD7330;
  if (!qword_100AD7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7330);
  }

  return result;
}

unint64_t sub_100258BC0()
{
  result = qword_100AD7340;
  if (!qword_100AD7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7340);
  }

  return result;
}

unint64_t sub_100258D7C()
{
  result = qword_100AD7360;
  if (!qword_100AD7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7360);
  }

  return result;
}

uint64_t sub_100258DD0(uint64_t *a1)
{
  v3 = *(type metadata accessor for REActionMenuView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1002522C8(a1, v4);
}

unint64_t sub_100258E40()
{
  result = qword_100AD7388;
  if (!qword_100AD7388)
  {
    sub_1001F1234(&qword_100AD7378, &qword_100814248);
    sub_100005920(&qword_100AD71A0, &qword_100AD7178, &qword_100813F30, &protocol conformance descriptor for VStack<A>);
    sub_100005920(&qword_100AD7390, &qword_100AD7398, &qword_100814258, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7388);
  }

  return result;
}

uint64_t sub_100258F24()
{
  v1 = type metadata accessor for REActionMenuView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1001F1160(&unk_100ADB4C0, &qword_100813DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_10079CEE4();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v2, 1, v3))
    {
      (*(v4 + 8))(v2, v3);
    }
  }

  else
  {
  }

  v5 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10079CEE4();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[6];
  sub_1001F1160(&unk_100ADB4E0, &qword_100815F30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10079CAE4();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  v10 = v1[7];
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079BC44();
    (*(*(v11 - 8) + 8))(v2 + v10, v11);
  }

  else
  {
  }

  v12 = v1[8];
  sub_1001F1160(&unk_100ADB4F0, &qword_100813DC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10079C0E4();
    (*(*(v13 - 8) + 8))(v2 + v12, v13);
  }

  else
  {
  }

  v14 = v2 + v1[14];
  v15 = sub_10079D024();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (!v17(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  sub_1001F1160(&qword_100AE3E70, &unk_100813BD0);

  v18 = v2 + v1[15];
  if (!v17(v18, 1, v15))
  {
    (*(v16 + 8))(v18, v15);
  }

  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();
  sub_1000074E0((v2 + v1[20]));
  swift_unknownObjectWeakDestroy();
  v19 = v1[22];
  v20 = sub_10079BED4();
  (*(*(v20 - 8) + 8))(v2 + v19, v20);
  v21 = v1[23];
  v22 = sub_10079ACE4();
  (*(*(v22 - 8) + 8))(v2 + v21, v22);

  return swift_deallocObject();
}

unint64_t sub_100259564()
{
  result = qword_100AD73C0;
  if (!qword_100AD73C0)
  {
    sub_1001F1234(&qword_100AD71E0, &unk_100813F78);
    sub_100258464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD73C0);
  }

  return result;
}

unint64_t sub_1002595E8()
{
  result = qword_100AD73D8;
  if (!qword_100AD73D8)
  {
    sub_1001F1234(&qword_100AD73D0, &qword_100814288);
    sub_1002596D0(&qword_100AD73E0, type metadata accessor for REScrubberView, &unk_10082C208);
    sub_100005920(&qword_100AD7220, &qword_100AD7228, &qword_100813FB8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD73D8);
  }

  return result;
}

uint64_t sub_1002596D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_100259718(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10025972C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100259780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100259814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_100259868()
{
  result = qword_100AD74A8;
  if (!qword_100AD74A8)
  {
    sub_1001F1234(qword_100AD7420, &qword_100814438);
    sub_100259920();
    sub_100005920(&qword_100AD74E0, &qword_100AD74E8, qword_100814490, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD74A8);
  }

  return result;
}

unint64_t sub_100259920()
{
  result = qword_100AD74B0;
  if (!qword_100AD74B0)
  {
    sub_1001F1234(&qword_100AD7410, &qword_100814428);
    sub_1002599AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD74B0);
  }

  return result;
}

unint64_t sub_1002599AC()
{
  result = qword_100AD74B8;
  if (!qword_100AD74B8)
  {
    sub_1001F1234(&qword_100AD7408, &qword_100814420);
    sub_100259A90(&qword_100AD74C0, &qword_100AD7400, &qword_100814418, sub_100259B14);
    sub_100005920(&qword_100AD74E0, &qword_100AD74E8, qword_100814490, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD74B8);
  }

  return result;
}

uint64_t sub_100259A90(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100259B44()
{
  result = qword_100AD74D0;
  if (!qword_100AD74D0)
  {
    sub_1001F1234(&qword_100AD73F0, &qword_100814408);
    sub_100005920(&qword_100AD74D8, &qword_100AD7418, &qword_100814430, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD74D0);
  }

  return result;
}

unint64_t sub_100259C88(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_1007A38D4();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = sub_1007A3784();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_10025D2FC();
    v8 = sub_1007A3184();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_100259D78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_10079CAE4() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_10025D7A4();
  v7 = 0;
  while ((sub_1007A2124() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_100259EE4(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + *off_100A10EB0[a1]);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v10[4] = sub_10025D828;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1003323D0;
  v10[3] = &unk_100A10D98;
  v8 = _Block_copy(v10);
  v9 = v6;

  [v9 addAnimations:v8];
  _Block_release(v8);
}

void sub_10025A040(void *a1)
{
  v2 = v1;
  v4 = [v1 isReversed];
  v5 = &UITransitionContextToViewKey;
  if (v4)
  {
    v5 = &UITransitionContextFromViewKey;
  }

  v6 = [a1 viewForKey:*v5];
  if (v6)
  {
    v7 = v6;
    v29 = _swiftEmptyArrayStorage;
    v8 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
    if (v8)
    {
      v9 = v8;
      v26 = &OBJC_PROTOCOL___BKPalettePresentationTransitioning_0;
      if (swift_dynamicCastObjCProtocolConditional())
      {
        v10 = v9;
        sub_1007A25C4();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v25 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1007A2614();
        }

        sub_1007A2644();
      }
    }

    v11 = [a1 viewControllerForKey:{UITransitionContextToViewControllerKey, v25, v26}];
    if (v11)
    {
      v12 = v11;
      if (swift_dynamicCastObjCProtocolConditional())
      {
        v13 = v12;
        sub_1007A25C4();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1007A2614();
        }

        sub_1007A2644();
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v15 = sub_10025A3FC(Strong, v1);
    swift_unknownObjectRelease();
    sub_1004842C0(v15);
    v16 = [a1 isInteractive];
    v17 = (*((swift_isaMask & *v1) + 0x1D0))(v7, v29, v16, a1);
    v19 = v18;

    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v16;
    *(v21 + 32) = v17;
    *(v21 + 40) = v19;
    aBlock[4] = sub_10025D764;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A10E10;
    v22 = _Block_copy(aBlock);

    [v2 addNoninteractiveAnimations:v22];
    _Block_release(v22);
    v27.receiver = v2;
    v27.super_class = type metadata accessor for AudiobookPaletteStyleAnimationController();
    v23 = objc_msgSendSuper2(&v27, "interruptibleAnimatorForTransition:", a1);
    v24 = swift_unknownObjectRelease();
    if (v16)
    {
    }

    else
    {
      v17(v24);
    }
  }
}

void *sub_10025A3FC(unint64_t a1, uint64_t a2)
{
  v2 = _swiftEmptyArrayStorage;
  if (a1)
  {
    v3 = a2;
    v15 = OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_interaction;
    v4 = [swift_unknownObjectRetain() coordinatedViewControllersFor:*(a2 + OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_interaction)];
    sub_1001F1160(&qword_100AF7240, &unk_100813070);
    v5 = sub_1007A25E4();

    v16 = _swiftEmptyArrayStorage;
    if (v5 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_1007A3784();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v2 = v8;
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v10 = v3;
        v11 = [v8 coordinatedViewControllersFor:*(v3 + v15)];
        v12 = sub_1007A25E4();

        v13 = v2;
        sub_1007A25C4();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1007A2614();
        }

        sub_1007A2644();
        v2 = &v16;
        sub_1004842C0(v12);

        ++v7;
        v3 = v10;
        if (v9 == i)
        {
          v2 = v16;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_14:
    swift_unknownObjectRelease();
  }

  return v2;
}

char *sub_10025A604(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if (a2)
    {
      v9 = objc_opt_self();
      v10 = swift_allocObject();
      *(v10 + 16) = a3;
      *(v10 + 24) = a4;
      v11 = swift_allocObject();
      v12 = sub_10025D774;
      *(v11 + 16) = sub_10025D774;
      *(v11 + 24) = v10;
      aBlock[4] = sub_10025D79C;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100685954;
      aBlock[3] = &unk_100A10E88;
      v13 = _Block_copy(aBlock);

      [v9 performWithoutAnimation:v13];
      _Block_release(v13);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
LABEL_6:
        [objc_opt_self() setFrameStallSkipRequest:1];
        [*&v8[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_backgroundFadeOutAnimator] startAnimation];
        [*&v8[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_commonAnimator] startAnimation];
        [*&v8[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_delayedCommonAnimator] startAnimationAfterDelay:0.01];
        [*&v8[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_grabberFadeInAnimator] startAnimationAfterDelay:0.13];
        [*&v8[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_grabberFadeOutAnimator] startAnimation];
        [*&v8[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_miniPlayerFadeInAnimator] startAnimationAfterDelay:0.13];
        [*&v8[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_miniPlayerFadeOutAnimator] startAnimationAfterDelay:0.05];
        [*&v8[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_tabBarFadeInAnimator] startAnimation];

        return sub_100007020(v12, v10);
      }

      __break(1u);
    }

    v12 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  return result;
}

id AudiobookPaletteStyleAnimationController.interruptibleAnimator(using:)(void *a1)
{
  if ((v1[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_isPrepared] & 1) == 0)
  {
    sub_10025A040(a1);
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for AudiobookPaletteStyleAnimationController();
  v3 = objc_msgSendSuper2(&v5, "interruptibleAnimatorForTransition:", a1);

  return v3;
}

Swift::Void __swiftcall AudiobookPaletteStyleAnimationController.animationEnded(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_completionBlocks;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = v5 + 40;
    do
    {
      v8 = *(v7 - 8);
      v9 = a1;

      v8(&v9);

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  *(v2 + v4) = _swiftEmptyArrayStorage;
}

void (*sub_10025AC3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a4;
  v7[4] = a1;
  swift_unknownObjectRetain();
  v8 = a1;
  return sub_10025D2F0;
}

void sub_10025ACD4(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_isPrepared;
  if (Strong[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_isPrepared])
  {

    return;
  }

  v231 = Strong;
  v7 = *&Strong[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_interaction];
  v8 = OBJC_IVAR___BKPalettePresentationInteraction_view;
  swift_beginAccess();
  v9 = *(v7 + v8);
  if (!v9 || (v238 = &OBJC_PROTOCOL___BKAudiobookOpenTransitioning, (v10 = swift_dynamicCastObjCProtocolConditional()) == 0))
  {

    return;
  }

  v11 = v10;
  ObjectType = swift_getObjectType();
  v13 = v9;
  v14 = v231;
  v15 = [v11 superview];
  if (!v15)
  {

    goto LABEL_11;
  }

  v229 = v6;
  v16 = v15;
  v17 = [v15 subviews];
  sub_10025D2FC();
  v18 = sub_1007A25E4();

  v19 = v13;
  v230 = v11;
  v20 = sub_100259C88(v11, v18);
  LOBYTE(v17) = v21;

  if (v17)
  {

LABEL_11:
    goto LABEL_12;
  }

  v228 = v20;
  v22 = v14;
  if ([v22 isReversed])
  {
    v23 = [a2 viewControllerForKey:UITransitionContextFromViewControllerKey];
    if (!v23)
    {

LABEL_31:
      aBlock = 0u;
      v233 = 0u;
LABEL_66:
      sub_1000230BC(&aBlock);
      return;
    }

    v24 = v22;
    v25 = v23;
    v26 = [v23 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAudiobookOpenTransitioning];

    if (v26)
    {
      sub_1007A3504();
      swift_unknownObjectRelease();
    }

    else
    {
      v236 = 0u;
      v237 = 0u;
    }

    aBlock = v236;
    v233 = v237;
    v22 = v24;
    if (!*(&v237 + 1))
    {

LABEL_65:
      goto LABEL_66;
    }
  }

  else
  {
    *(&v233 + 1) = ObjectType;
    *&aBlock = v230;
    v27 = v19;
  }

  sub_1001F1160(&qword_100AD7628, qword_1008145D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_62;
  }

  v28 = v236;
  if ([v22 isReversed])
  {
    *(&v233 + 1) = ObjectType;
    *&aBlock = v230;
    v29 = v19;
    goto LABEL_34;
  }

  v30 = [a2 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v30)
  {

    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  v226 = v236;
  v31 = v22;
  v32 = v30;
  v33 = [v30 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAudiobookOpenTransitioning];

  if (v33)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v236 = 0u;
    v237 = 0u;
  }

  aBlock = v236;
  v233 = v237;
  v22 = v31;
  v28 = v226;
  if (!*(&v237 + 1))
  {

    swift_unknownObjectRelease();
    goto LABEL_65;
  }

LABEL_34:
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_unknownObjectRelease();
    goto LABEL_62;
  }

  v225 = v22;
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    swift_unknownObjectRetain();
  }

  v35 = [v34 view];

  if (!v35)
  {
    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();
    if (!v36)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_76;
    }

    v35 = v36;
    swift_unknownObjectRetain();
  }

  v224 = v35;
  v227 = v28;
  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (v37)
  {
    swift_unknownObjectRetain();
  }

  v38 = [v37 view];

  if (!v38)
  {
    objc_opt_self();
    v39 = swift_dynamicCastObjCClass();
    if (v39)
    {
      v38 = v39;
      swift_unknownObjectRetain();
      goto LABEL_45;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_62:
LABEL_63:

    return;
  }

LABEL_45:
  v40 = [v227 transitionCoverViews];
  if (!v40)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_63;
  }

  v41 = v40;
  v42 = sub_1007A25E4();

  v43 = sub_1005AB0B8(v42);

  if (!v43)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_76:
    return;
  }

  v44 = [v236 transitionCoverViews];
  if (!v44)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
LABEL_74:

    goto LABEL_75;
  }

  v45 = v44;
  v46 = sub_1007A25E4();

  v47 = sub_1005AB0B8(v46);

  v223 = v47;
  if (!v47)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_74;
  }

  v48 = [objc_opt_self() delegate];
  v49 = [v48 sceneManager];

  v50 = [v49 primarySceneController];
  v51 = [v50 rootBarCoordinator];

  if (!v51 || (v52 = [v51 rootViewController], swift_unknownObjectRelease(), v53 = objc_msgSend(v52, "view"), v52, !v53))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_75:

    goto LABEL_76;
  }

  sub_10025D348();
  if (!v54)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_76;
  }

  v55 = v54;
  v221 = [v55 snapshotViewAfterScreenUpdates:0];
  if (!v221)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_76;
  }

  v218 = v38;
  v219 = v55;
  v222 = v43;
  v217 = v53;
  v56 = [v227 transitionToolbarViews];
  if (!v56)
  {
    swift_unknownObjectRelease();

LABEL_81:
    swift_unknownObjectRelease();

LABEL_85:

    goto LABEL_76;
  }

  v57 = v56;
  v58 = sub_1007A25E4();

  v59 = sub_1005AB0B8(v58);

  v216 = v59;
  if (!v59)
  {

    swift_unknownObjectRelease();
    goto LABEL_81;
  }

  v60 = [v236 transitionToolbarViews];
  if (!v60)
  {
    swift_unknownObjectRelease();

LABEL_84:
    swift_unknownObjectRelease();

    goto LABEL_85;
  }

  v61 = v60;
  v62 = sub_1007A25E4();

  v63 = sub_1005AB0B8(v62);

  v220 = v63;
  if (!v63)
  {

    swift_unknownObjectRelease();
    goto LABEL_84;
  }

  v64 = [v225 isReversed];

  v65 = [a2 containerView];
  [v227 transitionCoverFrame];
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  [v236 transitionCoverFrame];
  v211 = v75;
  v212 = v74;
  v209 = v77;
  v210 = v76;
  v215 = v65;
  [v65 convertRect:v35 fromCoordinateSpace:{v67, v69, v71, v73}];
  v213 = v78;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v208 = v64;
  if (v64)
  {
    [v217 convertRect:v218 fromCoordinateSpace:{v212, v211, v210, v209}];
    v211 = v86;
    v212 = v85;
    v209 = v88;
    v210 = v87;
  }

  v206 = [v227 transitionBackgroundImageView];
  [v230 frame];
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  [a3 addSubview:v230];
  v97 = v19;
  v239.origin.x = v90;
  v239.origin.y = v92;
  v239.size.width = v94;
  v239.size.height = v96;
  Width = CGRectGetWidth(v239);
  v204 = v90;
  v240.origin.x = v90;
  v99 = v92;
  v240.origin.y = v92;
  v100 = v94;
  v240.size.width = v94;
  v101 = v96;
  v240.size.height = v96;
  [v230 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v240)}];
  v205 = v97;

  v102 = [objc_allocWithZone(UIView) init];
  [v102 setFrame:{*&v213, v80, v82, v84}];
  v103 = v102;
  [v102 bounds];
  v214 = [objc_allocWithZone(UIImageView) initWithFrame:{v104, v105, v106, v107}];
  v108 = [v227 transitionCurrentCoverImage];
  if (v108)
  {
    v109 = v108;
    [v214 setImage:v108];
    [v214 setContentMode:{objc_msgSend(v227, "coverContentMode")}];
  }

  else
  {
    v110 = [v236 transitionCurrentCoverImage];
    [v214 setImage:v110];

    [v214 setContentMode:{objc_msgSend(v236, "coverContentMode")}];
  }

  [v214 setAutoresizingMask:18];
  [v102 addSubview:v214];
  [v102 setClipsToBounds:1];
  [v227 coverCornerRadius];
  [v102 _setContinuousCornerRadius:?];
  [v236 coverCornerRadius];
  v112 = v111;
  [v215 addSubview:v102];
  [v219 frame];
  x = v113;
  y = v115;
  v118 = v117;
  height = v119;

  v241.origin.x = x;
  v241.origin.y = y;
  v241.size.width = v118;
  v241.size.height = height;
  v207 = CGRectOffset(v241, 0.0, 84.0);
  if (v64)
  {
    v121 = x;
    v122 = y;
    v123 = v118;
    v124 = height;
    x = v207.origin.x;
    y = v207.origin.y;
    v118 = v207.size.width;
    height = v207.size.height;
    v207.origin.x = v121;
    v207.origin.y = v122;
    v207.size.width = v123;
    v207.size.height = v124;
  }

  [v221 setFrame:{x, y, v118, height}];
  [v215 addSubview:v221];
  v125 = v43 & 0xFFFFFFFFFFFFFF8;
  if (v43 >> 62)
  {
    goto LABEL_101;
  }

  v126 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &selRef_sampleBadgeColor; v126; i = &selRef_sampleBadgeColor)
  {
    v128 = 0;
    while (1)
    {
      if ((v222 & 0xC000000000000001) != 0)
      {
        v129 = sub_1007A3784();
      }

      else
      {
        if (v128 >= *(v125 + 16))
        {
          goto LABEL_100;
        }

        v129 = *(v222 + 8 * v128 + 32);
      }

      v130 = v129;
      v131 = v128 + 1;
      if (__OFADD__(v128, 1))
      {
        break;
      }

      [v129 i[180]];

      ++v128;
      if (v131 == v126)
      {
        goto LABEL_102;
      }
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    v126 = sub_1007A38D4();
  }

LABEL_102:
  v132 = (v223 & 0xFFFFFFFFFFFFFF8);
  if (v223 >> 62)
  {
    goto LABEL_136;
  }

  for (j = *((v223 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_1007A38D4())
  {
    if (j)
    {
      v134 = 0;
      while (1)
      {
        if ((v223 & 0xC000000000000001) != 0)
        {
          v135 = sub_1007A3784();
        }

        else
        {
          if (v134 >= v132[2])
          {
            goto LABEL_133;
          }

          v135 = *(v223 + v134 + 4);
        }

        v136 = v135;
        v137 = v134 + 1;
        if (__OFADD__(v134, 1))
        {
          break;
        }

        [v135 setAlpha:0.0];

        ++v134;
        if (v137 == j)
        {
          goto LABEL_113;
        }
      }

      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

LABEL_113:
    [v219 setAlpha:0.0];

    v138 = swift_allocObject();
    *(v138 + 2) = v16;
    *(v138 + 3) = v230;
    *(v138 + 4) = v228;
    v138[5] = v204;
    v138[6] = v99;
    v138[7] = v100;
    v138[8] = v101;
    *(v138 + 9) = v222;
    *(v138 + 10) = v223;
    *(v138 + 11) = v216;
    *(v138 + 12) = v219;
    *(v138 + 13) = v206;
    *(v138 + 14) = v103;
    *(v138 + 15) = v221;
    *(v138 + 16) = v220;
    v139 = swift_allocObject();
    *(v139 + 16) = sub_10025D55C;
    *(v139 + 24) = v138;
    v204 = *&v139;
    v140 = OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_completionBlocks;
    swift_beginAccess();
    v141 = *&v225[v140];
    v223 = v205;
    v205 = v219;
    v219 = v16;

    v222 = v206;
    v142 = v103;
    v228 = v221;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v225[v140] = v141;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v141 = sub_10066AAA8(0, v141[2] + 1, 1, v141);
      *&v225[v140] = v141;
    }

    v145 = v141[2];
    v144 = v141[3];
    if (v145 >= v144 >> 1)
    {
      v141 = sub_10066AAA8((v144 > 1), v145 + 1, 1, v141);
    }

    v141[2] = v145 + 1;
    v146 = &v141[2 * v145];
    *(v146 + 4) = sub_10025D5A4;
    v146[5] = v204;
    *&v225[v140] = v141;
    swift_endAccess();

    v147 = swift_allocObject();
    *(v147 + 2) = v142;
    v147[3] = v212;
    v147[4] = v211;
    v147[5] = v210;
    v147[6] = v209;
    *(v147 + 7) = v112;
    v221 = v142;
    if (v208)
    {
      v148 = 1;
    }

    else
    {
      v148 = 2;
    }

    sub_100259EE4(v148, sub_10025D5D0, v147);

    if (v208)
    {

      v149 = swift_allocObject();
      *(v149 + 16) = v206;
      v150 = *&v225[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_backgroundFadeOutAnimator];
      v151 = swift_allocObject();
      v151[2] = sub_10025D674;
      v151[3] = v149;
      v151[4] = v150;
      v234 = sub_10025D828;
      v235 = v151;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v233 = sub_1003323D0;
      *(&v233 + 1) = &unk_100A10B68;
      v152 = _Block_copy(&aBlock);
      v153 = v150;
      v154 = v222;
      v155 = v153;

      [v155 addAnimations:v152];
      _Block_release(v152);

      v156 = swift_allocObject();
      *(v156 + 16) = v228;
      *(v156 + 24) = v207;
      v157 = *&v225[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_commonAnimator];
      v158 = swift_allocObject();
      v158[2] = sub_10025D690;
      v158[3] = v156;
      v158[4] = v157;
      v234 = sub_10025D828;
      v235 = v158;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v233 = sub_1003323D0;
      *(&v233 + 1) = &unk_100A10BE0;
      v159 = _Block_copy(&aBlock);
      v160 = v157;
      v161 = v228;
      v162 = v160;

      [v162 addAnimations:v159];
      _Block_release(v159);

      v163 = swift_allocObject();
      *(v163 + 16) = v216;
      v164 = *&v225[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_grabberFadeOutAnimator];
      v165 = swift_allocObject();
      v165[2] = sub_10025D6AC;
      v165[3] = v163;
      v165[4] = v164;
      v234 = sub_10025D828;
      v235 = v165;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v233 = sub_1003323D0;
      *(&v233 + 1) = &unk_100A10C58;
      v166 = _Block_copy(&aBlock);
      v167 = v164;

      [v167 addAnimations:v166];
      _Block_release(v166);

      [v230 setAlpha:0.0];
      v168 = swift_allocObject();
      *(v168 + 16) = v230;
      v169 = *&v225[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_miniPlayerFadeInAnimator];
      v170 = swift_allocObject();
      v170[2] = sub_10025D6CC;
      v170[3] = v168;
      v170[4] = v169;
      v234 = sub_10025D828;
      v235 = v170;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v233 = sub_1003323D0;
      *(&v233 + 1) = &unk_100A10CD0;
      v171 = _Block_copy(&aBlock);
      v172 = v169;
      v173 = v223;
      v174 = v172;

      [v174 addAnimations:v171];
      _Block_release(v171);

      [v161 setAlpha:0.0];
      v175 = swift_allocObject();
      *(v175 + 16) = v161;
      v176 = *&v225[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_tabBarFadeInAnimator];
      v177 = swift_allocObject();
      v177[2] = sub_10025D824;
      v177[3] = v175;
      v177[4] = v176;
      v234 = sub_10025D828;
      v235 = v177;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v233 = sub_1003323D0;
      *(&v233 + 1) = &unk_100A10D48;
      v178 = _Block_copy(&aBlock);
      v179 = v176;
      v180 = v161;
      v181 = v179;

      [v181 addAnimations:v178];
      goto LABEL_139;
    }

    v182 = swift_allocObject();
    v103 = v228;
    *(v182 + 16) = v228;
    *(v182 + 24) = v207;
    v183 = *&v225[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_backgroundFadeOutAnimator];
    v184 = swift_allocObject();
    v184[2] = sub_10025D854;
    v184[3] = v182;
    v184[4] = v183;
    v234 = sub_10025D634;
    v235 = v184;
    *&aBlock = _NSConcreteStackBlock;
    v112 = 1107296256;
    *(&aBlock + 1) = 1107296256;
    *&v233 = sub_1003323D0;
    *(&v233 + 1) = &unk_100A10A00;
    v185 = _Block_copy(&aBlock);
    v186 = v183;
    v187 = v228;
    v188 = v186;

    v132 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
    [v188 addAnimations:v185];
    _Block_release(v185);

    v189 = swift_allocObject();
    *(v189 + 16) = v230;
    v190 = *&v225[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_miniPlayerFadeOutAnimator];
    v191 = swift_allocObject();
    v191[2] = sub_10025D640;
    v191[3] = v189;
    v191[4] = v190;
    v234 = sub_10025D828;
    v235 = v191;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v233 = sub_1003323D0;
    *(&v233 + 1) = &unk_100A10A78;
    v192 = _Block_copy(&aBlock);
    v193 = v190;
    v194 = v223;
    v195 = v193;

    [v195 addAnimations:v192];
    _Block_release(v192);

    if (!(v220 >> 62))
    {
      v196 = *((v220 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v196)
      {
        break;
      }

      goto LABEL_124;
    }

    v196 = sub_1007A38D4();
    if (!v196)
    {
      break;
    }

LABEL_124:
    v197 = 0;
    while (1)
    {
      if ((v220 & 0xC000000000000001) != 0)
      {
        v198 = sub_1007A3784();
      }

      else
      {
        if (v197 >= *((v220 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_135;
        }

        v198 = *(v220 + 8 * v197 + 32);
      }

      v199 = v198;
      v200 = v197 + 1;
      if (__OFADD__(v197, 1))
      {
        break;
      }

      [v198 setAlpha:0.0];

      ++v197;
      if (v200 == v196)
      {
        goto LABEL_138;
      }
    }

LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    ;
  }

LABEL_138:
  v201 = swift_allocObject();
  *(v201 + 16) = v220;
  v202 = *&v225[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_grabberFadeInAnimator];
  v203 = swift_allocObject();
  v203[2] = sub_10025D654;
  v203[3] = v201;
  v203[4] = v202;
  v234 = sub_10025D828;
  v235 = v203;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v233 = sub_1003323D0;
  *(&v233 + 1) = &unk_100A10AF0;
  v178 = _Block_copy(&aBlock);
  v181 = v202;

  [v181 addAnimations:v178];
LABEL_139:
  v14 = v225;

  _Block_release(v178);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  *(v231 + v229) = 1;
LABEL_12:
}

void sub_10025C844(int a1, id a2, void *a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, void *a8, double a9, double a10, double a11, double a12, void *a13, void *a14, void *a15, unint64_t a16)
{
  [a2 insertSubview:a3 atIndex:a4];
  [a3 setFrame:{a9, a10, a11, a12}];
  [a3 setAlpha:1.0];
  if (a5 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v25 = 0;
    while (1)
    {
      if ((a5 & 0xC000000000000001) != 0)
      {
        v26 = sub_1007A3784();
      }

      else
      {
        if (v25 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v26 = *(a5 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      [v26 setAlpha:1.0];

      ++v25;
      if (v28 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  if (a6 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1007A38D4())
  {
    v30 = 0;
    while (1)
    {
      if ((a6 & 0xC000000000000001) != 0)
      {
        v31 = sub_1007A3784();
      }

      else
      {
        if (v30 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v31 = *(a6 + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      [v31 setAlpha:1.0];

      ++v30;
      if (v33 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
  if (a7 >> 62)
  {
    goto LABEL_39;
  }

  for (k = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = sub_1007A38D4())
  {
    v35 = 0;
    while (1)
    {
      if ((a7 & 0xC000000000000001) != 0)
      {
        v36 = sub_1007A3784();
      }

      else
      {
        if (v35 >= *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v36 = *(a7 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      [v36 setAlpha:1.0];

      ++v35;
      if (v38 == k)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

LABEL_40:
  [a8 setAlpha:1.0];
  if (a13)
  {
    [a13 setAlpha:1.0];
  }

  [a14 removeFromSuperview];
  [a15 removeFromSuperview];
  if (a16 >> 62)
  {
    goto LABEL_54;
  }

  for (m = *((a16 & 0xFFFFFFFFFFFFFF8) + 0x10); m; m = sub_1007A38D4())
  {
    v40 = 0;
    while (1)
    {
      if ((a16 & 0xC000000000000001) != 0)
      {
        v41 = sub_1007A3784();
      }

      else
      {
        if (v40 >= *((a16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v41 = *(a16 + 8 * v40 + 32);
      }

      v42 = v41;
      v43 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      [v41 setAlpha:1.0];

      ++v40;
      if (v43 == m)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

LABEL_55:
  if (k)
  {
    for (n = 0; ; ++n)
    {
      if ((a7 & 0xC000000000000001) != 0)
      {
        v45 = sub_1007A3784();
      }

      else
      {
        if (n >= *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v45 = *(a7 + 8 * n + 32);
      }

      v46 = v45;
      v47 = n + 1;
      if (__OFADD__(n, 1))
      {
        break;
      }

      [v45 setAlpha:1.0];

      if (v47 == k)
      {
        return;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
  }
}

void sub_10025CC2C(unint64_t a1, double a2, double a3)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_1007A3784();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v7 setAlpha:a3];

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void (*sub_10025CD28())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_10025D2E8;
}

void sub_10025CD80(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_isPrepared] = 1;
  }
}

id sub_10025CDF4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10025CE2C(void *a1)
{
  *&v1[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_completionBlocks] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_isPrepared] = 0;
  *&v1[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_interaction] = a1;
  v2 = a1;
  v3 = [objc_allocWithZone(MPCubicSpringTimingParameters) initWithMass:1.0 stiffness:250.0 damping:30.0 initialVelocity:{0.0, 0.0}];
  v4 = [objc_allocWithZone(UICubicTimingParameters) init];
  [v3 setSpringCubicTimingParameters:v4];

  v5 = [objc_allocWithZone(MPCubicSpringAnimator) initWithDuration:v3 timingParameters:0.0];
  *&v1[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_commonAnimator] = v5;
  v6 = [objc_allocWithZone(MPCubicSpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:30.0 initialVelocity:{0.0, 0.0}];
  v7 = [objc_allocWithZone(UICubicTimingParameters) init];
  [v6 setSpringCubicTimingParameters:v7];

  v8 = [objc_allocWithZone(MPCubicSpringAnimator) initWithDuration:v6 timingParameters:0.0];
  *&v1[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_delayedCommonAnimator] = v8;
  v9 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.18 controlPoint2:{0.0, 1.0, 1.0}];
  v10 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v9 timingParameters:0.2];

  *&v1[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_backgroundFadeOutAnimator] = v10;
  v11 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.0 controlPoint2:{0.0, 1.0, 1.0}];
  v12 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v11 timingParameters:0.38];

  *&v1[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_grabberFadeInAnimator] = v12;
  v13 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.19 controlPoint2:{0.0, 1.0, 1.0}];
  v14 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v13 timingParameters:0.04];

  *&v1[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_grabberFadeOutAnimator] = v14;
  v15 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.0 controlPoint2:{0.0, 0.56, 1.0}];
  v16 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v15 timingParameters:0.29];

  *&v1[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_miniPlayerFadeInAnimator] = v16;
  v17 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.0 controlPoint2:{0.0, 1.0, 1.0}];
  v18 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v17 timingParameters:0.14];

  *&v1[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_miniPlayerFadeOutAnimator] = v18;
  v19 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.0 controlPoint2:{0.0, 0.56, 1.0}];
  v20 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v19 timingParameters:0.29];

  *&v1[OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_tabBarFadeInAnimator] = v20;
  v22.receiver = v1;
  v22.super_class = type metadata accessor for AudiobookPaletteStyleAnimationController();
  return objc_msgSendSuper2(&v22, "init");
}

uint64_t _s5Books40AudiobookPaletteStyleAnimationControllerC07paletteD12OpenAnimator11interaction6traits14forceFullSlideSo08_UISheeteF0CAA0C23PresentationInteractionCSg_So17UITraitCollectionCSgSbtFZ_0(void *a1, void *a2, char a3)
{
  result = _UISolariumEnabled();
  if ((result & 1) != 0 || (a3 & 1) != 0 || a2 && (result = [a2 userInterfaceIdiom], result == 1))
  {
    if (a1)
    {
      v7 = type metadata accessor for AudiobookPaletteStyleAnimationControllerPad();
LABEL_9:
      v8 = objc_allocWithZone(v7);
      v9 = a1;
      v10 = sub_10025CE2C(v9);

      return v10;
    }

    __break(1u);
  }

  else if (a1)
  {
    v7 = type metadata accessor for AudiobookPaletteStyleAnimationControllerPhone();
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t sub_10025D2FC()
{
  result = qword_100AD7620;
  if (!qword_100AD7620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD7620);
  }

  return result;
}

void sub_10025D348()
{
  v0 = [objc_opt_self() delegate];
  v1 = [v0 sceneManager];

  v2 = [v1 primarySceneController];
  v3 = [v2 rootBarCoordinator];

  if (v3)
  {
    v4 = [v3 rootViewController];
    v5 = [v4 view];

    if (v5)
    {
      v6 = [v5 subviews];

      sub_10025D2FC();
      v7 = sub_1007A25E4();

      if (v7 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
      {
        v9 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = sub_1007A3784();
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            swift_unknownObjectRelease();

            return;
          }

          ++v9;
          if (v12 == i)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_10025D5D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  [v1 setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];

  return [v1 _setContinuousCornerRadius:v2];
}

id sub_10025D674()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

uint64_t sub_10025D6E0()
{

  return swift_deallocObject();
}

unint64_t sub_10025D7A4()
{
  result = qword_100AD7630;
  if (!qword_100AD7630)
  {
    sub_10079CAE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7630);
  }

  return result;
}

uint64_t sub_10025D868()
{
  v1 = sub_1007A1C54();
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007A1CA4();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007A1CC4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  sub_100017E74();
  v14 = sub_1007A2D74();
  sub_1007A1CB4();
  sub_1007A1D24();
  v19 = *(v8 + 8);
  v19(v10, v7);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  aBlock[4] = sub_10025F8AC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A10F40;
  v16 = _Block_copy(aBlock);
  v17 = v0;

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10025F8BC(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100234698();
  sub_1007A3594();
  sub_1007A2D04();
  _Block_release(v16);

  (*(v22 + 8))(v3, v1);
  (*(v20 + 8))(v6, v21);
  v19(v13, v7);
  return 0;
}

void sub_10025DC04(void *a1)
{
  v1 = [a1 onReceiveHandler];
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))();

    _Block_release(v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_10025DCFC()
{
  v1 = v0;
  [v0 setTestTimeout:100];
  [v0 setRunning:1];
  v2 = sub_10025F4D0();
  v3 = [v1 name];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_1007A2254();
  v7 = v6;

  v8 = [v1 options];
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = sub_1007A2044();

  v15._countAndFlagsBits = v5;
  v15._object = v7;
  v11._rawValue = v10;
  sub_10079CBB4(v15, v11);

  [v1 setResult:0];
  v12 = [v1 onTestFinished];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v13 = v12;
  (*(v12 + 2))();

  _Block_release(v13);
}

id sub_10025DEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(uint64_t))
{
  if (a2)
  {
    v11 = sub_1007A2214();
  }

  else
  {
    v11 = 0;
  }

  if (a3)
  {
    v12.super.isa = sub_1007A2024().super.isa;

    if (a4)
    {
LABEL_6:
      v13.super.isa = sub_1007A2024().super.isa;

      goto LABEL_9;
    }
  }

  else
  {
    v12.super.isa = 0;
    if (a4)
    {
      goto LABEL_6;
    }
  }

  v13.super.isa = 0;
LABEL_9:
  v16.receiver = v6;
  v16.super_class = a6(a1);
  v14 = objc_msgSendSuper2(&v16, "initWithName:options:testDefinition:isMainTest:", v11, v12.super.isa, v13.super.isa, a5 & 1);

  if (v14)
  {
  }

  return v14;
}

id sub_10025DFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t))
{
  if (a3)
  {
    v11 = sub_1007A2254();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  if (a4)
  {
    a4 = sub_1007A2044();
  }

  if (a5)
  {
    v14 = sub_1007A2044();
  }

  else
  {
    v14 = 0;
  }

  return sub_10025DEA0(v11, v13, a4, v14, a6, a7);
}

id sub_10025E0D8(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_10025E230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_1007A3854();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = sub_1007A3864();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  sub_1007A26F4();
  v4[17] = sub_1007A26E4();
  v8 = sub_1007A2694();
  v4[18] = v8;
  v4[19] = v7;

  return _swift_task_switch(sub_10025E3A4, v8, v7);
}

uint64_t sub_10025E3A4(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = sub_10025F4D0();
  sub_100797284(*(v2 + OBJC_IVAR___PPTHostedPageGoToSeeAllTest_seeAllShelfIndex));

  sub_1007A3B54();
  v4 = swift_task_alloc();
  *(v1 + 160) = v4;
  *v4 = v1;
  v4[1] = sub_10025E49C;

  return sub_1004B1524(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10025E49C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v2[21] = v0;

  v6 = *(v4 + 8);
  v2[22] = v6;
  v2[23] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[19];
  v8 = v2[18];
  if (v0)
  {
    v9 = sub_10025E808;
  }

  else
  {
    v9 = sub_10025E648;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10025E648()
{
  v1 = objc_opt_self();
  *(v0 + 192) = v1;
  *(v0 + 216) = 1;
  v2 = [v1 sceneManager];
  v3 = [v2 primarySceneController];

  v4 = [v3 rootBarCoordinator];
  if (!v4)
  {
    return sub_1007A38A4();
  }

  v5 = [v4 selectedTopViewController];
  swift_unknownObjectRelease();
  if (!v5)
  {
    return sub_1007A38A4();
  }

  ObjectType = swift_getObjectType();
  v7 = sub_100797294();
  if (!sub_10025F608(v5, ObjectType, v7, &protocol descriptor for PPTTestHost))
  {

    return sub_1007A38A4();
  }

  sub_100797274();

  sub_1007A3B54();
  *(v0 + 40) = xmmword_1008145F0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return _swift_task_switch(sub_10025EBB4, 0, 0);
}

uint64_t sub_10025E808()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10025E8AC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 96);
  *(*v1 + 208) = v0;

  v3(v4, v5);
  v6 = *(v2 + 152);
  v7 = *(v2 + 144);
  if (v0)
  {
    v8 = sub_10025EB10;
  }

  else
  {
    v8 = sub_10025EA54;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10025EA54()
{
  v1 = *(v0 + 56);

  [v1 finishPPTTestWithResult:0];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10025EB10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10025EBB4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = sub_10025F8BC(&qword_100AD76C0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1007A3B34();
  sub_10025F8BC(&qword_100AD76C8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1007A3874();
  v5 = *(v2 + 8);
  v0[28] = v5;
  v0[29] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = sub_10025ED38;
  v8 = v0[11];
  v7 = v0[12];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v7, v4);
}

uint64_t sub_10025ED38()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    (*(v2 + 224))(*(v2 + 88), *(v2 + 64));
    v3 = sub_10025F100;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 176);
    v7 = *(v2 + 112);
    v8 = *(v2 + 96);
    (*(v2 + 224))(*(v2 + 88), *(v2 + 64));
    v6(v7, v8);
    v4 = *(v2 + 144);
    v5 = *(v2 + 152);
    v3 = sub_10025EE98;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10025EE98()
{
  v1 = *(v0 + 216);
  if (v1 == 5)
  {
    sub_1007A3B54();
    v2 = swift_task_alloc();
    *(v0 + 200) = v2;
    *v2 = v0;
    v2[1] = sub_10025E8AC;

    return sub_1004B1524(2000000000000000000, 0, 0, 0, 1);
  }

  *(v0 + 216) = v1 + 1;
  v4 = [*(v0 + 192) sceneManager];
  v5 = [v4 primarySceneController];

  v6 = [v5 rootBarCoordinator];
  if (!v6)
  {
    return sub_1007A38A4();
  }

  v7 = [v6 selectedTopViewController];
  swift_unknownObjectRelease();
  if (!v7)
  {
    return sub_1007A38A4();
  }

  ObjectType = swift_getObjectType();
  v9 = sub_100797294();
  if (!sub_10025F608(v7, ObjectType, v9, &protocol descriptor for PPTTestHost))
  {

    return sub_1007A38A4();
  }

  sub_100797274();

  sub_1007A3B54();
  *(v0 + 40) = xmmword_1008145F0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return _swift_task_switch(sub_10025EBB4, 0, 0);
}

uint64_t sub_10025F100()
{
  (*(v0 + 176))(*(v0 + 112), *(v0 + 96));
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_10025F16C, v1, v2);
}

uint64_t sub_10025F16C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_10025F3C0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10025F41C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_10025E230(a1, v4, v5, v6);
}

uint64_t sub_10025F4D0()
{
  v0 = [objc_opt_self() sceneManager];
  v1 = [v0 primarySceneController];

  v2 = [v1 rootBarCoordinator];
  if (v2)
  {
    v3 = [v2 selectedTopViewController];
    swift_unknownObjectRelease();
    if (v3)
    {
      ObjectType = swift_getObjectType();
      v5 = sub_100797294();
      result = sub_10025F608(v3, ObjectType, v5, &protocol descriptor for PPTTestHost);
      if (result)
      {
        return result;
      }
    }
  }

  result = sub_1007A38A4();
  __break(1u);
  return result;
}

uint64_t sub_10025F608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_10025F678(Class a1, NSString a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v18 = 0xD000000000000013;
  v19 = 0x80000001008C6910;
  sub_1007A36B4();
  if (!*(a4 + 16) || (v12 = sub_10000E2A4(v20), (v13 & 1) == 0))
  {
LABEL_10:
    sub_10002899C(v20);
    goto LABEL_11;
  }

  sub_100007484(*(a4 + 56) + 32 * v12, v21);
  sub_10002899C(v20);
  if (swift_dynamicCast())
  {
    *&v6[OBJC_IVAR___PPTHostedPageGoToSeeAllTest_seeAllShelfIndex] = v18;
    a2 = sub_1007A2214();
    if (a3)
    {

      a1 = sub_1007A2024().super.isa;
    }

    else
    {
      a1 = 0;
    }

    isa = sub_1007A2024().super.isa;
    v17.receiver = v6;
    v17.super_class = type metadata accessor for PPTHostedPageGoToSeeAllTest();
    v15 = [(objc_class *)&v17 initWithName:a2 options:a1 testDefinition:isa isMainTest:a5 & 1];

    if (v15)
    {
      return v15;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1007A3744(61);
  v22._countAndFlagsBits = 0xD00000000000003ALL;
  v22._object = 0x80000001008C6930;
  sub_1007A23D4(v22);
  v23._countAndFlagsBits = a1;
  v23._object = a2;
  sub_1007A23D4(v23);
  v24._countAndFlagsBits = 39;
  v24._object = 0xE100000000000000;
  sub_1007A23D4(v24);
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

uint64_t sub_10025F8BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AddToWantToReadActionItem(uint64_t a1)
{
  result = qword_100AD7728;
  if (!qword_100AD7728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10025F978(uint64_t a1)
{
  sub_1001FEBC8(319, &unk_100AE9C00, &protocol descriptor for ContextActionDataProtocol);
  if (v1 <= 0x3F)
  {
    sub_1001FEBC8(319, &qword_100AD4AF0, &protocol descriptor for ContextMenuPresentationContextProtocol);
    if (v2 <= 0x3F)
    {
      sub_1001FEB70(319);
      if (v3 <= 0x3F)
      {
        sub_1001FEBC8(319, &qword_100AE9C10, &protocol descriptor for FigaroProviding);
        if (v4 <= 0x3F)
        {
          sub_1001FEBC8(319, &unk_100AD7738, &protocol descriptor for MenuLibraryOperationProviding);
          if (v5 <= 0x3F)
          {
            sub_100797144();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

id sub_10025FA9C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_100009864(a1, v28);
  sub_100009864(a2, v27);
  sub_100009864(a4, v26);
  v10 = objc_opt_self();
  v11 = [v10 delegate];
  v12 = [v11 serviceCenter];

  v13 = [objc_opt_self() defaultManager];
  v14 = [v10 delegate];
  v15 = [v14 engagementManager];

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v17 = result;
    v18 = [objc_opt_self() defaultHelper];
    v24 = &type metadata for MenuLibraryOperationProvider;
    v25 = &off_100A266E8;
    v19 = swift_allocObject();
    *&v23 = v19;
    v19[2] = v12;
    v19[3] = v13;
    v19[4] = v15;
    v19[5] = v17;
    v19[6] = v18;
    sub_1000074E0(a4);
    sub_1000074E0(a2);
    sub_1000074E0(a1);
    v20 = *(type metadata accessor for AddToWantToReadActionItem(0) + 36);
    v21 = enum case for ContextActionType.addToWantToRead(_:);
    v22 = sub_100797144();
    (*(*(v22 - 8) + 104))(a5 + v20, v21, v22);
    sub_1000077C0(v28, a5);
    sub_1000077C0(v27, a5 + 40);
    *(a5 + 80) = a3;
    sub_1000077C0(v26, a5 + 88);
    return sub_1000077C0(&v23, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_10025FCD8@<D0>(_OWORD *a1@<X8>)
{
  sub_10000E3E8(v1, v1[3]);
  sub_1007977A4();
  if (v5)
  {
    sub_1001FF70C(v4);
  }

  else
  {
    sub_1000077C0(v4, v6);
    sub_1000077C0(v6, v4);
    sub_1001F1160(&qword_100AD4B48, qword_10080ED60);
    sub_1001F1160(qword_100AD4B50, &unk_1008171B0);
    if (swift_dynamicCast())
    {
      return result;
    }
  }

  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10025FDB4()
{
  v1 = v0;
  v2 = sub_1007971A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_100799004();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10025FCD8(&v22);
  if (v23)
  {
    v21 = v3;
    sub_1001FF7C8(&v22, &v24);
    sub_10000E3E8(&v24, v25);
    sub_1007976B4();
    if (sub_1007972D4() & 1) != 0 || (sub_10000E3E8(&v24, v25), sub_1007976B4(), (sub_1007972D4()) || (sub_10000E3E8(&v24, v25), v15 = sub_1007975B4(), v15 != 2) && (v15)
    {
      v13 = 0;
    }

    else
    {
      (*(v10 + 104))(v12, enum case for BooksFeatureFlag.unifiedProductPage(_:), v9);
      sub_1002607AC(&unk_100AD9560, &type metadata accessor for BooksFeatureFlag, &protocol conformance descriptor for BooksFeatureFlag);
      sub_100260748();
      v16 = sub_1007A2554();
      (*(v10 + 8))(v12, v9);
      if (v16)
      {
        v13 = 1;
      }

      else
      {
        sub_10000E3E8(v1, v1[3]);
        sub_100797784();
        v17 = v21;
        (*(v21 + 104))(v5, enum case for ContextActionSource.productPage(_:), v2);
        sub_1002607AC(&qword_100AD7780, &type metadata accessor for ContextActionSource, &protocol conformance descriptor for ContextActionSource);
        v18 = sub_1007A2124();
        v19 = *(v17 + 8);
        v19(v5, v2);
        v19(v8, v2);
        v13 = v18 ^ 1;
      }
    }

    sub_1000074E0(&v24);
  }

  else
  {
    sub_1001FF760(&v22);
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_100260148()
{
  v1[14] = v0;
  v2 = sub_10079ACE4();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  sub_1007A26F4();
  v1[18] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v1[19] = v4;
  v1[20] = v3;

  return _swift_task_switch(sub_10026023C, v4, v3);
}

uint64_t sub_10026023C()
{
  sub_10025FCD8((v0 + 64));
  if (*(v0 + 88))
  {
    sub_1001FF7C8((v0 + 64), (v0 + 16));
    sub_10000E3E8((v0 + 16), *(v0 + 40));
    v1 = sub_1007975B4();
    if (v1 == 2 || (v1 & 1) == 0)
    {
      sub_10000E3E8((v0 + 16), *(v0 + 40));
      v2 = sub_100797674();
      v4 = v3;

      v5 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v5 = v2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5)
      {
        v6 = *(v0 + 112);
        v7 = sub_10000E3E8(v6 + 16, v6[19]);
        v8 = v6[10];
        v9 = v7[1];
        v10 = v7[2];
        v11 = swift_task_alloc();
        *(v0 + 168) = v11;
        *v11 = v0;
        v11[1] = sub_1002604B0;

        return sub_1005F3DD8(v0 + 16, v8, (v6 + 5), v9, v10);
      }
    }

    sub_1000074E0((v0 + 16));
  }

  else
  {

    sub_1001FF760(v0 + 64);
    sub_10079AC44();
    v13 = sub_10079ACC4();
    v14 = sub_1007A29B4();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v18 = *(v0 + 120);
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Action doesn't have sufficient information to handle action.", v19, 2u);
    }

    (*(v17 + 8))(v16, v18);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1002604B0()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_1002605D0, v3, v2);
}

uint64_t sub_1002605D0()
{

  sub_1000074E0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100260640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_100797144();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1002606B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_100260148();
}

unint64_t sub_100260748()
{
  result = qword_100AD7778;
  if (!qword_100AD7778)
  {
    sub_1001F1234(&unk_100AD9570, &unk_100814750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7778);
  }

  return result;
}

uint64_t sub_1002607AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AppShareActionItem.__allocating_init(data:context:tracker:figaroProvider:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = sub_10022569C(a1, v9);
  v12 = a2[3];
  v13 = a2[4];
  v14 = sub_10022569C(a2, v12);
  v15 = sub_1002634F4(v11, v14, a3, a4, v4, v9, v12, v10, v13);

  sub_1000074E0(a2);
  sub_1000074E0(a1);
  return v15;
}

uint64_t AppShareActionItem.init(data:context:tracker:figaroProvider:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = a1[3];
  v8 = a1[4];
  v10 = sub_10022569C(a1, v9);
  v11 = __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v16 = a2[3];
  v15 = a2[4];
  v17 = sub_10022569C(a2, v16);
  v18 = __chkstk_darwin(v17);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_1002632CC(v13, v20, a3, a4, v24[1], v9, v16, v8, v15);

  sub_1000074E0(a2);
  sub_1000074E0(a1);
  return v22;
}

uint64_t sub_100260A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_1007969B4();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = sub_1007990E4();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v7 = sub_100798F44();
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v8 = sub_100798FE4();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return _swift_task_switch(sub_100260D14, 0, 0);
}

uint64_t sub_100260D14()
{
  sub_10000E3E8(*(v0 + 96), *(*(v0 + 96) + 24));
  v1 = sub_100797704();
  if (!*(v1 + 16))
  {

    goto LABEL_8;
  }

  sub_100009864(v1 + 32, v0 + 56);

  sub_1000077C0((v0 + 56), v0 + 16);
  sub_10000E3E8((v0 + 16), *(v0 + 40));
  v2 = sub_1007976A4();
  *(v0 + 304) = v2;
  *(v0 + 312) = v3;
  if (!v3)
  {
LABEL_6:
    sub_1000074E0((v0 + 16));
LABEL_8:

    v7 = *(v0 + 8);

    return v7();
  }

  v4 = v3;
  v5 = v2;
  sub_10000E3E8((v0 + 16), *(v0 + 40));
  sub_100797614();
  if (v6)
  {

LABEL_5:

    goto LABEL_6;
  }

  sub_10000E3E8((v0 + 16), *(v0 + 40));
  v9 = sub_1007976B4();
  if (v9 <= 3)
  {
    if (v9 < 2)
    {
      goto LABEL_5;
    }

    if (v9 != 2)
    {
      v10 = *(v0 + 200);
      v11 = *(v0 + 176);
      v12 = *(v0 + 184);
      sub_100798F74();
      (*(v12 + 104))(v10, enum case for MResourceType.audiobooks(_:), v11);
      sub_1007990F4();
      v13 = swift_task_alloc();
      *(v0 + 320) = v13;
      *v13 = v0;
      v13[1] = sub_1002612D8;
      v14 = *(v0 + 200);
      v15 = *(v0 + 168);
LABEL_21:

      return MCatalogService.fetch(adamID:type:relationships:views:additionalParameters:metadata:)(v5, v4, v14, 0, 0, 0, v15);
    }

LABEL_20:
    v22 = *(v0 + 184);
    v21 = *(v0 + 192);
    v23 = *(v0 + 176);
    sub_100798F74();
    (*(v22 + 104))(v21, enum case for MResourceType.books(_:), v23);
    sub_1007990F4();
    v24 = swift_task_alloc();
    *(v0 + 336) = v24;
    *v24 = v0;
    v24[1] = sub_100261828;
    v14 = *(v0 + 192);
    v15 = *(v0 + 160);
    goto LABEL_21;
  }

  if (v9 > 5)
  {
    if (v9 == 6)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  if (v9 == 4)
  {
    sub_100798F74();
    sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
    v16 = swift_allocObject();
    *(v0 + 352) = v16;
    *(v16 + 16) = xmmword_10080B690;
    *(v16 + 32) = v5;
    *(v16 + 40) = v4;

    sub_1007990F4();
    v17 = swift_task_alloc();
    *(v0 + 360) = v17;
    *v17 = v0;
    v17[1] = sub_100261D7C;
    v18 = *(v0 + 152);
    v19 = v16;
    v20 = 0;
  }

  else
  {
    sub_100798F74();
    sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
    v25 = swift_allocObject();
    *(v0 + 376) = v25;
    *(v25 + 16) = xmmword_10080B690;
    *(v25 + 32) = v5;
    *(v25 + 40) = v4;

    sub_1007990F4();
    v26 = swift_task_alloc();
    *(v0 + 384) = v26;
    *v26 = v0;
    v26[1] = sub_1002622B0;
    v18 = *(v0 + 144);
    v19 = 0;
    v20 = v25;
  }

  return MCatalogService.fetch(bookSeries:audiobookSeries:relationships:views:additionalParameters:batchSize:metadata:)(v19, v20, 0, 0, 0, 150, v18);
}

uint64_t sub_1002612D8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 328) = a1;

  v14 = v3[31];
  v4 = v3[27];
  v13 = v3[26];
  v5 = v3[25];
  v6 = v3[23];
  v7 = v3[22];
  v8 = v3[21];
  v9 = v3[17];
  v10 = v3[16];
  if (v1)
  {

    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v14, v13);
    v11 = sub_1002627E0;
  }

  else
  {
    (*(v9 + 8))(v3[21], v3[16]);
    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v14, v13);
    v11 = sub_100261560;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100261560()
{
  v1 = v0[41];
  if (v1)
  {
    sub_1007993C4();

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  (*(v0[14] + 56))(v0[36], v2, 1, v0[13]);
  v3 = v0[37];
  v4 = v0[32];
  v5 = v0[13];
  v6 = v0[14];
  sub_100008EF8(v0[36], v3);
  sub_10000847C(v3, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v7 = v0[32];
    sub_100008F68(v0[37]);
  }

  else
  {
    v7 = v0[37];
    v9 = v0[14];
    v8 = v0[15];
    v17 = v0[13];
    (*(v9 + 32))(v8, v0[32]);
    sub_100796914();
    sub_10022569C((v0 + 2), v0[5]);
    sub_100797624();
    v10 = [objc_opt_self() defaultManager];
    v11 = sub_1007A2214();

    sub_100796944(v12);
    v14 = v13;
    [v10 updateAssetWithID:v11 url:v13];

    (*(v9 + 8))(v8, v17);
  }

  sub_100008F68(v7);
  sub_1000074E0(v0 + 2);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100261828(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 344) = a1;

  v14 = v3[30];
  v4 = v3[27];
  v13 = v3[26];
  v5 = v3[24];
  v6 = v3[23];
  v7 = v3[22];
  v8 = v3[20];
  v9 = v3[17];
  v10 = v3[16];
  if (v1)
  {

    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v14, v13);
    v11 = sub_100262FE8;
  }

  else
  {
    (*(v9 + 8))(v3[20], v3[16]);
    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v14, v13);
    v11 = sub_100261AB0;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100261AB0()
{
  v1 = v0[43];
  if (v1)
  {
    sub_1007993C4();

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  (*(v0[14] + 56))(v0[35], v2, 1, v0[13]);
  v3 = v0[37];
  v4 = v0[32];
  v5 = v0[13];
  v6 = v0[14];
  sub_100008EF8(v0[35], v3);
  sub_10000847C(v3, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v7 = v0[32];
    sub_100008F68(v0[37]);
  }

  else
  {
    v7 = v0[37];
    v9 = v0[14];
    v8 = v0[15];
    v17 = v0[13];
    (*(v9 + 32))(v8, v0[32]);
    sub_100796914();
    sub_10022569C((v0 + 2), v0[5]);
    sub_100797624();
    v10 = [objc_opt_self() defaultManager];
    v11 = sub_1007A2214();

    sub_100796944(v12);
    v14 = v13;
    [v10 updateAssetWithID:v11 url:v13];

    (*(v9 + 8))(v8, v17);
  }

  sub_100008F68(v7);
  sub_1000074E0(v0 + 2);

  v15 = v0[1];

  return v15();
}