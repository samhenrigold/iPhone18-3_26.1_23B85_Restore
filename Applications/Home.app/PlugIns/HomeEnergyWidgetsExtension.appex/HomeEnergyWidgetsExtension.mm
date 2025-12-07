uint64_t sub_100001CC8@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v18 = sub_1000210BC();
  v16 = *(v18 - 8);
  __chkstk_darwin(v18);
  v17 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000211AC();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100021B7C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000066C8(&qword_100030300, &unk_100022A90);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1000066C8(&qword_1000302C0, &qword_100022A40);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v19 = sub_1000210DC();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = sub_100021B6C();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for ForecastLocationEntity(0);
  if (*(v1 + *(v13 + 28) + 16))
  {
    if (*(v1 + *(v13 + 28) + 16) == 1)
    {
      sub_100021B5C();
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      sub_100021B4C(v22);
      sub_100020F7C();
      sub_100021B3C(v21);

      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      sub_100021B4C(v23);
      sub_1000210CC();
    }

    else
    {
      sub_100021B2C();
      sub_10002119C();
      (*(v16 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v18);
      sub_1000210EC();
    }

    (*(v11 + 56))(v10, 1, 1, v19);
  }

  else
  {
    sub_100021B5C();
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    sub_100021B4C(v24);
    sub_100020F7C();
    sub_100021B3C(v21);

    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_100021B4C(v25);
    sub_1000210CC();
    (*(v11 + 56))(v10, 1, 1, v19);
  }

  sub_100020FEC();
  v14 = sub_100020FFC();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  return sub_10002100C();
}

uint64_t sub_1000021D8()
{
  v0 = sub_1000066C8(&qword_1000302C0, &qword_100022A40);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000210BC();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000211AC();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100021B7C();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000210DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10002106C();
  sub_100008BC0(v10, qword_100030B18);
  sub_100008B88(v10, qword_100030B18);
  sub_100021B2C();
  sub_10002119C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000210EC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10002105C();
}

uint64_t sub_1000024B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000216DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000210DC();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for ForecastLocationEntity(0);
  v8 = *(v7 + 24);
  sub_1000066C8(&qword_1000302D8, &qword_100022A60);
  sub_1000210AC();
  *(a1 + v8) = sub_100020F9C();
  sub_1000216AC();
  v9 = sub_1000216CC();
  v10 = sub_100021CBC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10001EC04(0x292874696E69, 0xE600000000000000, v17);
    _os_log_impl(&_mh_execute_header, v9, v10, "ForecastLocationEntity:%s creating a Current Location entity.", v11, 0xCu);
    sub_100008C24(v12);
  }

  (*(v3 + 8))(v5, v2);
  sub_10002117C();
  if (qword_1000300E8 != -1)
  {
    swift_once();
  }

  v13 = sub_10002118C();
  v14 = sub_100008B88(v13, qword_100030B30);
  (*(*(v13 - 8) + 16))(a1, v14, v13);
  v15 = a1 + *(v7 + 28);
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 2;
  v17[0] = 0xD000000000000010;
  v17[1] = 0x80000001000240E0;
  return sub_100020F8C();
}

uint64_t sub_1000027C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a2;
  v7 = sub_10002118C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000216DC();
  v47 = *(v11 - 8);
  v48 = v11;
  __chkstk_darwin(v11);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1000210DC();
  __chkstk_darwin(v14 - 8);
  v45 = type metadata accessor for ForecastLocationEntity(0);
  v15 = *(v45 + 24);
  sub_1000066C8(&qword_1000302D8, &qword_100022A60);
  sub_1000210AC();
  v16 = sub_100020F9C();
  v49 = a4;
  v44 = v16;
  *(a4 + v15) = v16;
  sub_1000216AC();
  v17 = *(v8 + 16);
  v41 = v10;
  v42 = a1;
  v18 = v10;
  v19 = v7;
  v43 = v17;
  v17(v18, a1, v7);

  v46 = v13;
  v20 = sub_1000216CC();
  v21 = sub_100021CBC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v39 = v20;
    v23 = v22;
    v40 = swift_slowAlloc();
    v51[0] = v40;
    *v23 = 136315650;
    *(v23 + 4) = sub_10001EC04(0xD000000000000016, 0x80000001000240C0, v51);
    v38 = v21;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_10001EC04(v50, a3, v51);
    *(v23 + 22) = 2080;
    v24 = v41;
    v25 = sub_10002115C();
    v27 = v26;
    v28 = *(v8 + 8);
    v28(v24, v19);
    v29 = sub_10001EC04(v25, v27, v51);

    *(v23 + 24) = v29;
    v30 = v39;
    _os_log_impl(&_mh_execute_header, v39, v38, "ForecastLocationEntity:%s creating a HMHome entity: %s : %s", v23, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v28 = *(v8 + 8);
    v28(v41, v7);
  }

  (*(v47 + 8))(v46, v48);
  v31 = v45;
  v32 = v49;
  sub_10002117C();
  v33 = v42;
  v43(v32, v42, v19);
  v34 = v32 + *(v31 + 28);
  v35 = v50;
  *v34 = v50;
  *(v34 + 8) = a3;
  *(v34 + 16) = 0;
  v51[0] = v35;
  v51[1] = a3;

  sub_100020F8C();
  return v28(v33, v19);
}

uint64_t sub_100002BF4()
{
  v1 = type metadata accessor for ForecastLocationEntity(0);
  if (*(v0 + *(v1 + 28) + 16))
  {
    if (*(v0 + *(v1 + 28) + 16) != 1)
    {
      v2 = 0xD000000000000010;
      goto LABEL_7;
    }

    sub_100021D1C(26);

    v5[0] = 0xD000000000000018;
    v5[1] = 0x8000000100023F60;
  }

  else
  {
    strcpy(v5, "Home Entity: ");
    HIWORD(v5[1]) = -4864;
  }

  sub_100020F7C();
  sub_100021BCC(v4);

  v2 = v5[0];
LABEL_7:
  v5[0] = v2;
  sub_10002118C();
  sub_100008D34(&qword_1000302B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v6._countAndFlagsBits = sub_100021D9C();
  sub_100021BCC(v6);

  v7._countAndFlagsBits = 0x4449677562656420;
  v7._object = 0xEA0000000000203ALL;
  sub_100021BCC(v7);

  return v5[0];
}

uint64_t sub_100002D98()
{
  v0 = sub_1000066C8(&qword_1000302E0, &qword_100022A68);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10002118C();
  sub_100008BC0(v3, qword_100030B30);
  v4 = sub_100008B88(v3, qword_100030B30);
  sub_10002114C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100002EC8(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 224) = a1;
  *(v3 + 32) = *(type metadata accessor for ForecastLocationEntity(0) - 8);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();
  v4 = sub_1000215DC();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  v5 = sub_1000216DC();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_100003064, 0, 0);
}

uint64_t sub_100003064()
{
  v22 = v0;
  v1 = [objc_opt_self() sharedAuthorization];
  v2 = [v1 isAuthorized];

  sub_1000216AC();

  v3 = sub_1000216CC();
  v4 = sub_100021CBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v19 = v0[10];
    v20 = v0[14];
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000241B0, &v21);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10001EC04(v7, v6, &v21);
    *(v8 + 22) = 2080;
    if (v2)
    {
      v9 = 21321;
    }

    else
    {
      v9 = 0x544F4E207369;
    }

    if (v2)
    {
      v10 = 0xE200000000000000;
    }

    else
    {
      v10 = 0xE600000000000000;
    }

    v11 = sub_10001EC04(v9, v10, &v21);

    *(v8 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s from %s: HMFLocationAuthorization %s authorized", v8, 0x20u);
    swift_arrayDestroy();

    v12 = *(v5 + 8);
    v12(v20, v19);
  }

  else
  {
    v13 = v0[14];
    v14 = v0[10];
    v15 = v0[11];

    v12 = *(v15 + 8);
    v12(v13, v14);
  }

  v0[15] = v12;
  v0[16] = sub_10002162C();
  v0[17] = sub_10002164C();
  v0[18] = sub_10002163C();
  v0[19] = sub_100008D34(&qword_1000302E8, &type metadata accessor for WidgetActor, &protocol conformance descriptor for WidgetActor);
  v17 = sub_100021C4C();

  return _swift_task_switch(sub_100003338, v17, v16);
}

uint64_t sub_100003338()
{

  *(v0 + 160) = sub_10002161C();

  return _swift_task_switch(sub_1000033AC, 0, 0);
}

uint64_t sub_1000033AC()
{
  sub_100021C6C();
  *(v0 + 168) = sub_100021C5C();
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_100003440, v2, v1);
}

uint64_t sub_100003440()
{

  *(v0 + 176) = sub_1000215EC();

  return _swift_task_switch(sub_1000034B8, 0, 0);
}

uint64_t sub_1000034B8()
{
  v14 = v0;
  if (v0[22])
  {
    v0[23] = sub_10002163C();
    v2 = sub_100021C4C();

    return _swift_task_switch(sub_1000036E4, v2, v1);
  }

  else
  {
    sub_1000216AC();
    v3 = sub_1000216CC();
    v4 = sub_100021CBC();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[15];
    v7 = v0[12];
    v8 = v0[10];
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000241B0, &v13);
      _os_log_impl(&_mh_execute_header, v3, v4, "%s WidgetDataModel returned no home", v9, 0xCu);
      sub_100008C24(v10);
    }

    v6(v7, v8);

    v11 = v0[1];

    return v11(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000036E4()
{

  *(v0 + 192) = sub_10002161C();
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_10000378C;

  return WidgetDataModel.orderedHomes.getter();
}

uint64_t sub_10000378C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {

    v5 = sub_100003EC4;
  }

  else
  {
    *(v4 + 216) = a1;
    v5 = sub_1000038C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

unint64_t sub_1000038C8()
{
  v52 = v0;

  v1 = *(v0 + 216);
  sub_1000216AC();

  v2 = sub_1000216CC();
  v3 = sub_100021CBC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = v1;
    v10 = swift_slowAlloc();
    v51[0] = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000241B0, v51);
    *(v8 + 12) = 2048;
    *(v8 + 14) = *(v9 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "%s WidgetDataModel returned %ld home(s)", v8, 0x16u);
    sub_100008C24(v10);
    v1 = v9;
  }

  else
  {
  }

  v5(v6, v7);
  v51[0] = _swiftEmptyArrayStorage;
  v11 = *(v1 + 16);
  if (v11)
  {
    v12 = *(v0 + 64);
    v14 = *(v12 + 16);
    v13 = v12 + 16;
    v50 = v14;
    v15 = v1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v16 = *(v13 + 56);
    v49 = _swiftEmptyArrayStorage;
    do
    {
      v17 = *(v0 + 176);
      v18 = *(v0 + 72);
      v19 = *(v0 + 56);
      v50(v18, v15, v19);
      v20.super.isa = v17;
      v21 = sub_1000215BC(v20);
      (*(v13 - 8))(v18, v19);
      if (v21)
      {
        sub_100021BFC();
        if (*((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100021C2C();
        }

        sub_100021C3C();
        v49 = v51[0];
      }

      v15 += v16;
      --v11;
    }

    while (v11);

    result = v49;
  }

  else
  {

    result = _swiftEmptyArrayStorage;
  }

  v51[0] = _swiftEmptyArrayStorage;
  if (result >> 62)
  {
    goto LABEL_48;
  }

  v23 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v24 = _swiftEmptyArrayStorage;
    if (v23)
    {
      v25 = 0;
      v26 = result & 0xC000000000000001;
      v27 = result & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v26)
        {
          v28 = result;
          result = sub_100021D2C();
        }

        else
        {
          if (v25 >= *(v27 + 16))
          {
            goto LABEL_45;
          }

          v28 = result;
          result = *(result + 8 * v25 + 32);
        }

        v29 = result;
        v30 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v31 = [result location];
        if (v31)
        {
        }

        else if (*(v0 + 224))
        {

          goto LABEL_19;
        }

        sub_100021D4C();
        sub_100021D6C();
        sub_100021D7C();
        sub_100021D5C();
LABEL_19:
        ++v25;
        result = v28;
        if (v30 == v23)
        {
          v32 = v51[0];
          v24 = _swiftEmptyArrayStorage;

          if ((v32 & 0x8000000000000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_49;
        }
      }
    }

    v32 = _swiftEmptyArrayStorage;

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_31:

    v33 = *(v32 + 16);
    if (!v33)
    {
      goto LABEL_50;
    }

LABEL_33:
    result = sub_10001F1AC(0, v33 & ~(v33 >> 63), 0);
    if (v33 < 0)
    {
      __break(1u);
      return result;
    }

    v34 = 0;
    v35 = *(v0 + 32);
    v24 = _swiftEmptyArrayStorage;
    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if ((v32 & 0xC000000000000001) != 0)
      {
        v37 = sub_100021D2C();
      }

      else
      {
        if (v34 >= *(v32 + 16))
        {
          goto LABEL_47;
        }

        v37 = *(v32 + 8 * v34 + 32);
      }

      v38 = v37;
      v39 = *(v0 + 40);
      v51[0] = v37;
      sub_100004494(v51, v39);

      v41 = _swiftEmptyArrayStorage[2];
      v40 = _swiftEmptyArrayStorage[3];
      if (v41 >= v40 >> 1)
      {
        sub_10001F1AC((v40 > 1), v41 + 1, 1);
      }

      v42 = *(v0 + 40);
      _swiftEmptyArrayStorage[2] = v41 + 1;
      result = sub_100008CD0(v42, _swiftEmptyArrayStorage + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v41);
      ++v34;
      if (v36 == v33)
      {
        goto LABEL_50;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v43 = result;
    v23 = sub_100021D8C();
    result = v43;
  }

LABEL_49:
  v33 = sub_100021D8C();
  if (v33)
  {
    goto LABEL_33;
  }

LABEL_50:

  sub_1000024B4(*(v0 + 48));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_100010044(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v45 = v24[2];
  v44 = v24[3];
  if (v45 >= v44 >> 1)
  {
    v24 = sub_100010044((v44 > 1), v45 + 1, 1, v24);
  }

  v46 = *(v0 + 48);
  v47 = *(v0 + 32);

  v24[2] = v45 + 1;
  sub_100008CD0(v46, v24 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v45);

  v48 = *(v0 + 8);

  return v48(v24);
}

void *sub_100003EC4(uint64_t a1)
{
  v50 = v1;
  sub_1000216AC();

  v2 = sub_1000216CC();
  v3 = sub_100021CBC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 120);
  v6 = *(v1 + 104);
  v7 = *(v1 + 80);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v49[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000241B0, v49);
    *(v8 + 12) = 2048;
    *(v8 + 14) = _swiftEmptyArrayStorage[2];

    _os_log_impl(&_mh_execute_header, v2, v3, "%s WidgetDataModel returned %ld home(s)", v8, 0x16u);
    sub_100008C24(v9);
  }

  else
  {
  }

  v5(v6, v7);
  v49[0] = _swiftEmptyArrayStorage;
  v10 = _swiftEmptyArrayStorage[2];
  if (v10)
  {
    v11 = *(v1 + 64);
    v13 = *(v11 + 16);
    v12 = v11 + 16;
    v47 = v13;
    v48 = _swiftEmptyArrayStorage;
    v14 = _swiftEmptyArrayStorage + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v15 = *(v12 + 56);
    do
    {
      v16 = *(v1 + 176);
      v17 = *(v1 + 72);
      v18 = *(v1 + 56);
      v47(v17, v14, v18);
      v19.super.isa = v16;
      v20 = sub_1000215BC(v19);
      (*(v12 - 8))(v17, v18);
      if (v20)
      {
        sub_100021BFC();
        if (*((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100021C2C();
        }

        sub_100021C3C();
        v48 = v49[0];
      }

      v14 += v15;
      --v10;
    }

    while (v10);
  }

  else
  {
    v48 = _swiftEmptyArrayStorage;
  }

  v49[0] = _swiftEmptyArrayStorage;
  v21 = v48;
  if (v48 >> 62)
  {
    goto LABEL_47;
  }

  v22 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  if (v22)
  {
    v23 = 0;
    v24 = v21 & 0xC000000000000001;
    v25 = v21 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v24)
      {
        v26 = sub_100021D2C();
      }

      else
      {
        if (v23 >= *(v25 + 16))
        {
          goto LABEL_44;
        }

        v26 = *(v21 + 8 * v23 + 32);
      }

      v27 = v26;
      v28 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        v22 = sub_100021D8C();
        goto LABEL_14;
      }

      v29 = [v26 location];
      if (v29)
      {
      }

      else if (*(v1 + 224))
      {

        goto LABEL_18;
      }

      sub_100021D4C();
      sub_100021D6C();
      sub_100021D7C();
      sub_100021D5C();
      v21 = v48;
LABEL_18:
      ++v23;
      if (v28 == v22)
      {
        v30 = v49[0];
        goto LABEL_29;
      }
    }
  }

  v30 = _swiftEmptyArrayStorage;
LABEL_29:

  if ((v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
  {
    v31 = sub_100021D8C();
    if (v31)
    {
      goto LABEL_32;
    }

LABEL_49:

    v21 = _swiftEmptyArrayStorage;
LABEL_50:
    sub_1000024B4(*(v1 + 48));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_100010044(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v43 = *(v21 + 16);
    v42 = *(v21 + 24);
    if (v43 >= v42 >> 1)
    {
      v21 = sub_100010044((v42 > 1), v43 + 1, 1, v21);
    }

    v44 = *(v1 + 48);
    v45 = *(v1 + 32);

    *(v21 + 16) = v43 + 1;
    sub_100008CD0(v44, v21 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v43);

    v46 = *(v1 + 8);

    return v46(v21);
  }

  v31 = *(v30 + 16);
  if (!v31)
  {
    goto LABEL_49;
  }

LABEL_32:
  result = sub_10001F1AC(0, v31 & ~(v31 >> 63), 0);
  if ((v31 & 0x8000000000000000) == 0)
  {
    v33 = 0;
    v34 = *(v1 + 32);
    v21 = _swiftEmptyArrayStorage;
    v48 = v30 & 0xC000000000000001;
    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_45;
      }

      if (v48)
      {
        v36 = sub_100021D2C();
      }

      else
      {
        if (v33 >= *(v30 + 16))
        {
          goto LABEL_46;
        }

        v36 = *(v30 + 8 * v33 + 32);
      }

      v37 = v36;
      v38 = *(v1 + 40);
      v49[0] = v36;
      sub_100004494(v49, v38);

      v40 = _swiftEmptyArrayStorage[2];
      v39 = _swiftEmptyArrayStorage[3];
      if (v40 >= v39 >> 1)
      {
        sub_10001F1AC((v39 > 1), v40 + 1, 1);
      }

      v41 = *(v1 + 40);
      _swiftEmptyArrayStorage[2] = v40 + 1;
      sub_100008CD0(v41, _swiftEmptyArrayStorage + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v40);
      ++v33;
      if (v35 == v31)
      {

        goto LABEL_50;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100004494@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10002118C();
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000216DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_1000216AC();
  v12 = v11;
  v13 = sub_1000216CC();
  LODWORD(v11) = sub_100021CBC();

  v39 = v11;
  if (os_log_type_enabled(v13, v11))
  {
    v14 = swift_slowAlloc();
    v38 = v6;
    v15 = v14;
    v36 = swift_slowAlloc();
    v40 = v36;
    *v15 = 136315394;
    *(v15 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000241B0, &v40);
    *(v15 + 12) = 2080;
    v16 = [v12 name];
    v35 = v7;
    v17 = v16;
    v18 = sub_100021B9C();
    v37 = v12;
    v19 = v8;
    v20 = a2;
    v21 = v18;
    v23 = v22;

    v24 = v21;
    a2 = v20;
    v25 = sub_10001EC04(v24, v23, &v40);

    *(v15 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v13, v39, "%s Creating entity for home '%s' with known loc.", v15, 0x16u);
    swift_arrayDestroy();

    v6 = v38;

    v26 = v10;
    v27 = &ResourceBundleClass;
    (*(v19 + 8))(v26, v35);
    v12 = v37;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    v27 = &ResourceBundleClass;
  }

  v28 = [v12 uniqueIdentifier];
  sub_10002116C();

  v29 = [v12 v27[2].ivar_lyt];
  v30 = sub_100021B9C();
  v32 = v31;

  return sub_1000027C0(v6, v30, v32, a2);
}

uint64_t sub_1000047BC(uint64_t a1)
{
  v1[2] = a1;
  sub_10002118C();
  v1[3] = swift_task_alloc();
  v2 = sub_1000216DC();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[9] = v3;
  *v3 = v1;
  v3[1] = sub_100004900;

  return sub_1000073DC();
}

uint64_t sub_100004900(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100004A00, 0, 0);
}

uint64_t sub_100004A00(uint64_t a1)
{
  v50 = v1;
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = [*(v1 + 80) location];
    if (v3)
    {

      v4 = 0xEE002E6E6F697461;
      v5 = 0x636F6C20444F4F47;
    }

    else
    {
      v4 = 0x8000000100024080;
      v5 = 0xD000000000000031;
    }

    sub_1000216AC();
    v22 = v2;

    v23 = sub_1000216CC();
    v24 = sub_100021CBC();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v1 + 64);
    v27 = &ResourceBundleClass;
    v28 = *(v1 + 32);
    v29 = *(v1 + 40);
    if (v25)
    {
      v46 = v5;
      v30 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v30 = 136315650;
      *(v30 + 4) = sub_10001EC04(0xD000000000000012, 0x8000000100024060, &v49);
      *(v30 + 12) = 2080;
      v48 = v28;
      v31 = [v22 name];
      v47 = v26;
      v32 = sub_100021B9C();
      v34 = v33;

      v35 = sub_10001EC04(v32, v34, &v49);
      v27 = &ResourceBundleClass;

      *(v30 + 14) = v35;
      *(v30 + 22) = 2080;
      v36 = sub_10001EC04(v46, v4, &v49);

      *(v30 + 24) = v36;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s returning default entity for current home '%s' with %s", v30, 0x20u);
      swift_arrayDestroy();

      (*(v29 + 8))(v47, v48);
    }

    else
    {

      (*(v29 + 8))(v26, v28);
    }

    v38 = *(v1 + 16);
    v37 = *(v1 + 24);
    v39 = [v22 uniqueIdentifier];
    sub_10002116C();

    v40 = [v22 v27[2].ivar_lyt];
    v41 = sub_100021B9C();
    v43 = v42;

    sub_1000027C0(v37, v41, v43, v38);
  }

  else
  {
    sub_1000216AC();
    v6 = sub_1000216CC();
    v7 = sub_100021CBC();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v1 + 56);
    v10 = *(v1 + 32);
    v11 = *(v1 + 40);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v49 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10001EC04(0xD000000000000012, 0x8000000100024060, &v49);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s no current home found.", v12, 0xCu);
      sub_100008C24(v13);
    }

    v14 = *(v11 + 8);
    v14(v9, v10);
    sub_1000216AC();
    v15 = sub_1000216CC();
    v16 = sub_100021CBC();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v1 + 48);
    v19 = *(v1 + 32);
    if (v17)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v49 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_10001EC04(0xD000000000000012, 0x8000000100024060, &v49);
      _os_log_impl(&_mh_execute_header, v15, v16, "%s returning default entity (Current Location)", v20, 0xCu);
      sub_100008C24(v21);
    }

    v14(v18, v19);
    sub_1000024B4(*(v1 + 16));
  }

  v44 = *(v1 + 8);

  return v44();
}

uint64_t sub_100004F24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10002118C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100004FC8(uint64_t a1)
{
  v2 = sub_100008D34(&qword_1000301B8, type metadata accessor for ForecastLocationEntity, &unk_100022438);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100005048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000510C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10000510C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100005200(uint64_t a1)
{
  v2 = sub_100008D34(&qword_100030188, type metadata accessor for ForecastLocationEntity, &unk_100022610);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000527C(uint64_t a1)
{
  v1[2] = a1;
  sub_1000066C8(&qword_1000302C0, &qword_100022A40);
  v1[3] = swift_task_alloc();
  v2 = sub_1000216DC();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[7] = v3;
  *v3 = v1;
  v3[1] = sub_1000053BC;

  return sub_100002EC8(1, 0xD000000000000019, 0x8000000100024150);
}

uint64_t sub_1000053BC(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_1000054BC, 0, 0);
}

uint64_t sub_1000054BC()
{
  v15 = v0;
  v1 = *(v0[8] + 16);

  sub_1000216AC();
  v2 = sub_1000216CC();
  v3 = sub_100021CBC();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_10001EC04(0xD000000000000013, 0x8000000100024190, &v14);
    *(v8 + 12) = 2048;
    *(v8 + 14) = v1;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s returning %ld locations", v8, 0x16u);
    sub_100008C24(v9);
  }

  (*(v6 + 8))(v5, v7);
  v10 = v0[3];
  sub_1000210AC();
  v11 = sub_1000210DC();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_1000056E4;

  return sub_100002EC8(1, 0xD000000000000018, 0x8000000100024170);
}

uint64_t sub_1000056E4(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1000057E4, 0, 0);
}

uint64_t sub_1000057E4()
{
  type metadata accessor for ForecastLocationEntity(0);
  sub_100008D34(&qword_100030150, type metadata accessor for ForecastLocationEntity, &unk_100022528);
  sub_100008D34(&qword_100030180, type metadata accessor for ForecastLocationEntity, &unk_1000225B0);
  sub_100020FDC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005900(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008D8C;

  return sub_100007F1C(a1);
}

uint64_t sub_1000059A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000510C;

  return sub_10000527C(a1);
}

uint64_t sub_100005A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100005B00;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100005B00(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100005C00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000068B8();
  *v5 = v2;
  v5[1] = sub_100008D7C;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100005CB4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_100005D50;

  return sub_1000047BC(a1);
}

uint64_t sub_100005D50()
{

  return _swift_task_switch(sub_100005E4C, 0, 0);
}

uint64_t sub_100005E4C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ForecastLocationEntity(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100005EF0()
{
  v0 = sub_1000210BC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000211AC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100021B7C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000210DC();
  sub_100008BC0(v6, qword_100030B48);
  sub_100008B88(v6, qword_100030B48);
  sub_100021B2C();
  sub_10002119C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000210EC();
}

unint64_t sub_1000060D0()
{
  v0 = type metadata accessor for ForecastLocationEntity(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000066C8(&qword_1000302A8, &unk_100022A30);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_100021D1C(32);

  v12 = 0xD00000000000001ELL;
  v13 = 0x8000000100023F20;
  sub_100020FBC();
  if ((*(v1 + 48))(v6, 1, v0))
  {
    sub_100008C70(v6, &qword_1000302A8, &unk_100022A30);
    v7 = 0xE500000000000000;
    v8._countAndFlagsBits = 0x3E6C696E3CLL;
  }

  else
  {
    sub_10000731C(v6, v3);
    sub_100008C70(v6, &qword_1000302A8, &unk_100022A30);
    v9 = sub_100002BF4();
    v7 = v10;
    sub_100007380(v3);
    v8._countAndFlagsBits = v9;
  }

  v8._object = v7;
  sub_100021BCC(v8);

  return v12;
}

uint64_t sub_1000062F4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100008B88(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000063B4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100008B34();
  *v4 = v2;
  v4[1] = sub_100006460;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_100006460()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100006568@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000861C();
  *a1 = result;
  return result;
}

uint64_t sub_100006590(uint64_t a1)
{
  v2 = sub_100006CEC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000065E8(__int128 *a1)
{
  v2 = *a1;
  if (sub_1000209D4(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10000665C(uint64_t *a1)
{
  v1 = a1[1];
  if (sub_1000209D4(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_1000066C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006710(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for ForecastLocationEntity(uint64_t a1)
{
  result = qword_100030250;
  if (!qword_100030250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000068B8()
{
  result = qword_100030160;
  if (!qword_100030160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030160);
  }

  return result;
}

unint64_t sub_100006B10()
{
  result = qword_1000301A8;
  if (!qword_1000301A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000301A8);
  }

  return result;
}

unint64_t sub_100006B68()
{
  result = qword_1000301B0;
  if (!qword_1000301B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000301B0);
  }

  return result;
}

unint64_t sub_100006C08()
{
  result = qword_1000301C0;
  if (!qword_1000301C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000301C0);
  }

  return result;
}

uint64_t sub_100006CA0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100006710(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100006CEC()
{
  result = qword_1000301D8;
  if (!qword_1000301D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000301D8);
  }

  return result;
}

unint64_t sub_100006D44()
{
  result = qword_1000301E0;
  if (!qword_1000301E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000301E0);
  }

  return result;
}

unint64_t sub_100006D9C()
{
  result = qword_1000301E8;
  if (!qword_1000301E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000301E8);
  }

  return result;
}

unint64_t sub_100006DF4()
{
  result = qword_1000301F0;
  if (!qword_1000301F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000301F0);
  }

  return result;
}

uint64_t sub_100006EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002118C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100006F8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10002118C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_100007044(uint64_t a1)
{
  sub_10002118C();
  if (v1 <= 0x3F)
  {
    sub_1000070D0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000070D0(uint64_t a1)
{
  if (!qword_100030260)
  {
    sub_10000712C();
    v1 = sub_100020FAC();
    if (!v2)
    {
      atomic_store(v1, &qword_100030260);
    }
  }
}

unint64_t sub_10000712C()
{
  result = qword_100030268;
  if (!qword_100030268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030268);
  }

  return result;
}

uint64_t sub_100007180(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_10000719C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000071B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000071F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10000723C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

__n128 sub_100007264(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100007274(uint64_t a1, int a2)
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

uint64_t sub_100007294(uint64_t result, int a2, int a3)
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

void type metadata accessor for CGSize()
{
  if (!qword_1000302A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000302A0);
    }
  }
}

uint64_t sub_10000731C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForecastLocationEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007380(uint64_t a1)
{
  v2 = type metadata accessor for ForecastLocationEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000073DC()
{
  v1 = sub_1000216DC();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  sub_1000066C8(&qword_1000302E0, &qword_100022A68);
  v0[6] = swift_task_alloc();
  v2 = sub_1000215DC();
  v0[7] = v2;
  v0[8] = *(v2 - 8);
  v0[9] = swift_task_alloc();

  return _swift_task_switch(sub_100007538, 0, 0);
}

uint64_t sub_100007538()
{
  v0[10] = sub_10002162C();
  v0[11] = sub_10002164C();
  v0[12] = sub_10002163C();
  v0[13] = sub_100008D34(&qword_1000302E8, &type metadata accessor for WidgetActor, &protocol conformance descriptor for WidgetActor);
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_100007610, v2, v1);
}

uint64_t sub_100007610()
{

  *(v0 + 112) = sub_10002161C();

  return _swift_task_switch(sub_100007684, 0, 0);
}

uint64_t sub_100007684()
{
  v1 = v0[6];
  v2 = sub_10002118C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_100007768;
  v4 = v0[9];
  v5 = v0[6];

  return WidgetDataModel.home(_:)(v4, v5);
}

uint64_t sub_100007768()
{
  v2 = *(*v1 + 48);
  *(*v1 + 128) = v0;

  sub_100008C70(v2, &qword_1000302E0, &qword_100022A68);

  if (v0)
  {
    v3 = sub_100007D00;
  }

  else
  {
    v3 = sub_1000078CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000078CC()
{
  *(v0 + 136) = sub_10002163C();
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_100007960, v2, v1);
}

uint64_t sub_100007960()
{

  *(v0 + 144) = sub_10002161C();

  return _swift_task_switch(sub_1000079D4, 0, 0);
}

uint64_t sub_1000079D4()
{
  sub_100021C6C();
  *(v0 + 152) = sub_100021C5C();
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_100007A68, v2, v1);
}

uint64_t sub_100007A68()
{

  *(v0 + 160) = sub_1000215EC();

  return _swift_task_switch(sub_100007AE0, 0, 0);
}

uint64_t sub_100007AE0(uint64_t a1)
{
  v20 = v1;
  v2 = *(v1 + 160);
  if (v2 && (v3.super.isa = *(v1 + 160), v4 = sub_1000215BC(v3), v2, v4))
  {
    (*(*(v1 + 64) + 8))(*(v1 + 72), *(v1 + 56));
  }

  else
  {
    sub_1000216AC();
    v5 = sub_1000216CC();
    v6 = sub_100021CBC();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v1 + 64);
    v8 = *(v1 + 72);
    v10 = *(v1 + 56);
    v11 = *(v1 + 40);
    v13 = *(v1 + 16);
    v12 = *(v1 + 24);
    if (v7)
    {
      v18 = *(v1 + 72);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_10001EC04(0xD000000000000010, 0x8000000100024130, &v19);
      _os_log_impl(&_mh_execute_header, v5, v6, "%s WidgetDataModel failed to load current Home", v14, 0xCu);
      sub_100008C24(v15);

      (*(v12 + 8))(v11, v13);
      (*(v9 + 8))(v18, v10);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
      (*(v9 + 8))(v8, v10);
    }

    v4 = 0;
  }

  v16 = *(v1 + 8);

  return v16(v4);
}

uint64_t sub_100007D00(uint64_t a1)
{
  v15 = v1;
  sub_1000216AC();
  swift_errorRetain();
  v2 = sub_1000216CC();
  v3 = sub_100021CBC();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[2];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_10001EC04(0xD000000000000010, 0x8000000100024130, &v14);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s WidgetDataModel threw an error: %@", v8, 0x16u);
    sub_100008C70(v9, &qword_1000302F0, &qword_100022A70);

    sub_100008C24(v10);
  }

  else
  {
  }

  (*(v6 + 8))(v5, v7);

  v12 = v1[1];

  return v12(0);
}

uint64_t sub_100007F1C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000216DC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for ForecastLocationEntity(0);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[10] = v4;
  *v4 = v1;
  v4[1] = sub_100008094;

  return sub_100002EC8(0, 0x7365697469746E65, 0xEE00293A726F6628);
}

uint64_t sub_100008094(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_100008194, 0, 0);
}

uint64_t sub_100008194()
{
  v36 = v0;
  result = v0[11];
  v31 = *(result + 16);
  if (v31)
  {
    v2 = 0;
    v27 = v0[2];
    v28 = v0[7];
    v29 = v0[11];
    v30 = _swiftEmptyArrayStorage;
    while (v2 < *(result + 16))
    {
      v3 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v4 = v2 + 1;
      v33 = *(v28 + 72);
      sub_10000731C(v0[11] + v3 + v33 * v2, v0[9]);
      v5 = 0;
      v6 = *(v27 + 16);
      do
      {
        if (v6 == v5)
        {
          sub_100007380(v0[9]);
          goto LABEL_4;
        }

        sub_10002118C();
        sub_100008D34(&qword_1000302F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        ++v5;
      }

      while ((sub_100021B1C() & 1) == 0);
      sub_100008CD0(v0[9], v0[8]);
      v7 = v30;
      v35 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001F1AC(0, v30[2] + 1, 1);
        v7 = v35;
      }

      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_10001F1AC((v8 > 1), v9 + 1, 1);
        v7 = v35;
      }

      v10 = v0[8];
      *(v7 + 16) = v9 + 1;
      v30 = v7;
      sub_100008CD0(v10, v7 + v3 + v9 * v33);
LABEL_4:
      v2 = v4;
      result = v29;
      if (v4 == v31)
      {
        v11 = v30;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_16:

    sub_1000216AC();
    swift_retain_n();

    v12 = sub_1000216CC();
    v13 = sub_100021CBC();

    if (os_log_type_enabled(v12, v13))
    {
      v34 = v0[5];
      v14 = v0[4];
      v32 = v0[3];
      v15 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v15 = 136315906;
      *(v15 + 4) = sub_10001EC04(0x7365697469746E65, 0xEE00293A726F6628, &v35);
      *(v15 + 12) = 2080;
      sub_10002118C();
      v16 = sub_100021C1C();
      v18 = sub_10001EC04(v16, v17, &v35);

      *(v15 + 14) = v18;
      *(v15 + 22) = 2048;
      v19 = v11[2];

      *(v15 + 24) = v19;

      *(v15 + 32) = 2080;
      v20 = sub_100021C1C();
      v22 = sub_10001EC04(v20, v21, &v35);

      *(v15 + 34) = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s requested entities (%s) returning %ld: %s", v15, 0x2Au);
      swift_arrayDestroy();

      (*(v14 + 8))(v34, v32);
    }

    else
    {
      v23 = v0[4];
      v24 = v0[5];
      v25 = v0[3];

      (*(v23 + 8))(v24, v25);
    }

    v26 = v0[1];

    return v26(v11);
  }

  return result;
}

uint64_t sub_10000861C()
{
  v0 = sub_10002102C();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000066C8(&qword_1000302B8, &unk_100023530);
  v3 = __chkstk_darwin(v2 - 8);
  v26 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v25 = v24 - v5;
  v6 = sub_1000066C8(&qword_1000302A8, &unk_100022A30);
  __chkstk_darwin(v6 - 8);
  v8 = v24 - v7;
  v9 = sub_1000066C8(&qword_1000302C0, &qword_100022A40);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  v12 = sub_1000210BC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000211AC();
  __chkstk_darwin(v16 - 8);
  v17 = sub_100021B7C();
  __chkstk_darwin(v17 - 8);
  v18 = sub_1000210DC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v24[1] = sub_1000066C8(&qword_1000302C8, &qword_100022A48);
  sub_100021B2C();
  sub_10002119C();
  (*(v13 + 104))(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  sub_1000210EC();
  (*(v19 + 56))(v11, 1, 1, v18);
  v20 = type metadata accessor for ForecastLocationEntity(0);
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  v21 = sub_100020F6C();
  v22 = *(*(v21 - 8) + 56);
  v22(v25, 1, 1, v21);
  v22(v26, 1, 1, v21);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  sub_100008D34(&qword_1000301B8, type metadata accessor for ForecastLocationEntity, &unk_100022438);
  return sub_100020FCC();
}

unint64_t sub_100008B34()
{
  result = qword_1000302D0;
  if (!qword_1000302D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000302D0);
  }

  return result;
}

uint64_t sub_100008B88(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100008BC0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100008C24(void *a1)
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

uint64_t sub_100008C70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000066C8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100008CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForecastLocationEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008D34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100008D90@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v51 = sub_10002150C();
  v44 = *(v51 - 8);
  __chkstk_darwin(v51);
  v43 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000212EC();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10002113C();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v39 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002144C();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = __chkstk_darwin(v5);
  v45 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v35 - v8;
  v48 = sub_1000066C8(&qword_1000303F8, &unk_100022BE0);
  __chkstk_darwin(v48);
  v49 = (v35 - v10);
  v11 = sub_100021A5C();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v35 - v17;
  __chkstk_darwin(v16);
  v20 = v35 - v19;
  v21 = v1 + *(type metadata accessor for HistoricalUsageWidgetEntryView(0) + 24);
  v22 = type metadata accessor for HistoricalUsageEntry(0);
  if (*(v21 + v22[7]) == 2)
  {
    sub_10000A44C(v20);
    (*(v12 + 104))(v18, enum case for WidgetFamily.accessoryCircular(_:), v11);
    sub_10000A844(&qword_100030438, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    sub_100021BEC();
    sub_100021BEC();
    v23 = *(v12 + 8);
    v23(v18, v11);
    v23(v20, v11);
    if (v57 == v52)
    {
      v24 = v22[8];
      v56 = 0;
      LOBYTE(v52) = 2;
      *v53 = *(v21 + v24);
      HIBYTE(v54) = 0;
    }

    else
    {
      v28 = sub_10002192C();
      v56 = 1;
      v55 = 1;
      LOBYTE(v52) = 2;
      v53[0] = v28;
      memset(&v53[8], 0, 32);
      v54 = 257;
    }

    sub_1000066C8(&qword_100030420, &unk_100022BF0);
    sub_10000A710();
    sub_10000A764();
    sub_1000218BC();
    v29 = v58;
    v30 = v49;
    *v49 = v57;
    v30[1] = v29;
    v30[2] = v59;
    *(v30 + 24) = v60;
    swift_storeEnumTagMultiPayload();
    sub_1000066C8(&qword_100030400, &unk_1000238B0);
    sub_10000A684();
    sub_10000A844(&qword_100030430, &type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily, &protocol conformance descriptor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily);
    return sub_1000218BC();
  }

  else
  {
    (*(v37 + 16))(v39, v21, v38);
    (*(v40 + 16))(v41, v21 + v22[5], v42);
    sub_10002143C();
    sub_10000A44C(v15);
    (*(v46 + 16))(v45, v9, v47);
    sub_100020FBC();
    v36 = v9;
    v35[1] = v15;
    if (*(&v57 + 1) && (sub_10000A634(v57, *(&v57 + 1), v58, *(&v58 + 1), v59), sub_100020FBC(), *(&v57 + 1)))
    {
      sub_100020F7C();

      v42 = v57;
    }

    else
    {
      v42 = 0;
    }

    sub_100020FBC();
    v25 = v57;
    v26 = v58;
    v27 = v59;
    if (*(&v57 + 1))
    {
    }

    sub_10000A634(v25, *(&v25 + 1), v26, *(&v26 + 1), v27);
    v32 = v43;
    sub_1000214FC();
    v33 = v44;
    v34 = v51;
    (*(v44 + 16))(v49, v32, v51);
    swift_storeEnumTagMultiPayload();
    sub_1000066C8(&qword_100030400, &unk_1000238B0);
    sub_10000A684();
    sub_10000A844(&qword_100030430, &type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily, &protocol conformance descriptor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily);
    sub_1000218BC();
    (*(v33 + 8))(v32, v34);
    return (*(v46 + 8))(v36, v47);
  }
}

HomeEnergyWidgetsExtension::HistoricalUsageWidget __swiftcall HistoricalUsageWidget.init()()
{
  v0 = 0x8000000100022A90;
  v1 = 0xD000000000000015;
  result.kind._object = v0;
  result.kind._countAndFlagsBits = v1;
  return result;
}

uint64_t HistoricalUsageWidget.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v32[1] = a1;
  v37 = a3;
  v3 = sub_1000066C8(&qword_100030118, "$+");
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v32 - v5;
  v7 = sub_1000066C8(&qword_100030308, "*'");
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v32 - v8;
  v38 = sub_1000066C8(&qword_100030310, ">'");
  v34 = *(v38 - 8);
  __chkstk_darwin(v38);
  v11 = v32 - v10;
  v12 = sub_1000066C8(&qword_100030318, "^'");
  v13 = *(v12 - 8);
  v35 = v12;
  v36 = v13;
  __chkstk_darwin(v12);
  v32[0] = v32 - v14;
  type metadata accessor for HistoricalUsageWidgetEntryView(0);
  sub_10000A844(&qword_100030320, type metadata accessor for HistoricalUsageWidgetEntryView, &unk_100022B90);
  sub_100009CFC();

  sub_100021A9C();
  v15 = sub_100009D50();
  sub_10002189C();
  (*(v4 + 8))(v6, v3);
  v39 = sub_10002153C();
  v40 = v16;
  v43 = v3;
  v44 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_100009DB4();
  sub_1000218AC();

  (*(v33 + 8))(v9, v7);
  v43 = sub_10002152C();
  v44 = v19;
  v39 = v7;
  v40 = &type metadata for String;
  v41 = OpaqueTypeConformance2;
  v42 = v18;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = v32[0];
  v22 = v38;
  sub_10002187C();

  (*(v34 + 8))(v11, v22);
  sub_1000066C8(&qword_100030338, &qword_100022AE8);
  v23 = sub_100021A5C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100022AA0;
  v28 = v27 + v26;
  v29 = *(v24 + 104);
  v29(v27 + v26, enum case for WidgetFamily.systemSmall(_:), v23);
  v29(v28 + v25, enum case for WidgetFamily.accessoryRectangular(_:), v23);
  v29(v28 + 2 * v25, enum case for WidgetFamily.accessoryCircular(_:), v23);
  v39 = v38;
  v40 = &type metadata for String;
  v41 = v20;
  v42 = v18;
  swift_getOpaqueTypeConformance2();
  v30 = v35;
  sub_10002188C();

  return (*(v36 + 8))(v21, v30);
}

uint64_t sub_100009BF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for HistoricalUsageWidgetEntryView(0);
  sub_10000A8FC(a1, a2 + *(v4 + 24));
  *a2 = swift_getKeyPath();
  sub_1000066C8(&qword_100030448, &qword_100022C30);
  swift_storeEnumTagMultiPayload();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_1000066C8(&qword_100030440, &qword_100022E10);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for HistoricalUsageWidgetEntryView(uint64_t a1)
{
  result = qword_1000303A8;
  if (!qword_1000303A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100009CFC()
{
  result = qword_100030328;
  if (!qword_100030328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030328);
  }

  return result;
}

unint64_t sub_100009D50()
{
  result = qword_100030120;
  if (!qword_100030120)
  {
    sub_100006710(&qword_100030118, "$+");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030120);
  }

  return result;
}

unint64_t sub_100009DB4()
{
  result = qword_100030330;
  if (!qword_100030330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030330);
  }

  return result;
}

uint64_t sub_100009E4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100009E94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100009EE0()
{
  sub_100006710(&qword_100030318, "^'");
  sub_100006710(&qword_100030310, ">'");
  sub_100006710(&qword_100030308, "*'");
  sub_100006710(&qword_100030118, "$+");
  sub_100009D50();
  swift_getOpaqueTypeConformance2();
  sub_100009DB4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000A038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000066C8(&qword_100030340, &qword_100022B60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000066C8(&qword_100030348, &qword_100022B68);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for HistoricalUsageEntry(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10000A1A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000066C8(&qword_100030340, &qword_100022B60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000066C8(&qword_100030348, &qword_100022B68);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for HistoricalUsageEntry(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_10000A308(uint64_t a1)
{
  sub_10000A3DC(319, &qword_1000303B8, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    sub_10000A3DC(319, &unk_1000303C0, &type metadata accessor for WidgetFamily);
    if (v2 <= 0x3F)
    {
      type metadata accessor for HistoricalUsageEntry(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000A3DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000216EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10000A44C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000217CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000066C8(&qword_100030440, &qword_100022E10);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10000A88C(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100021A5C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100021CAC();
    v13 = sub_10002191C();
    sub_10002168C();

    sub_1000217BC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_10000A634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

unint64_t sub_10000A684()
{
  result = qword_100030408;
  if (!qword_100030408)
  {
    sub_100006710(&qword_100030400, &unk_1000238B0);
    sub_10000A710();
    sub_10000A764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030408);
  }

  return result;
}

unint64_t sub_10000A710()
{
  result = qword_100030410;
  if (!qword_100030410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030410);
  }

  return result;
}

unint64_t sub_10000A764()
{
  result = qword_100030418;
  if (!qword_100030418)
  {
    sub_100006710(&qword_100030420, &unk_100022BF0);
    sub_10000A7F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030418);
  }

  return result;
}

unint64_t sub_10000A7F0()
{
  result = qword_100030428;
  if (!qword_100030428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030428);
  }

  return result;
}

uint64_t sub_10000A844(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000A88C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000066C8(&qword_100030440, &qword_100022E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A8FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalUsageEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000A970()
{
  result = qword_100030450;
  if (!qword_100030450)
  {
    sub_100006710(&qword_100030458, qword_100022C68);
    sub_10000A684();
    sub_10000A844(&qword_100030430, &type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily, &protocol conformance descriptor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030450);
  }

  return result;
}

uint64_t sub_10000AA2C@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v53 = sub_10002133C();
  v45 = *(v53 - 8);
  __chkstk_darwin(v53);
  v44 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10002113C();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10002131C();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002126C();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = __chkstk_darwin(v5);
  v47 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v38 - v8;
  v50 = sub_1000066C8(&qword_100030520, &qword_100022DA0);
  __chkstk_darwin(v50);
  v51 = (&v38 - v10);
  v11 = sub_100021A5C();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v38 - v17;
  __chkstk_darwin(v16);
  v20 = &v38 - v19;
  v21 = *(type metadata accessor for UtilityRateInfoWidgetEntryView(0) + 24);
  v46 = v1;
  v22 = &v1[v21];
  v23 = type metadata accessor for UtilityRateInfoEntry(0);
  if (v22[v23[7]] == 2)
  {
    sub_10000A44C(v20);
    (*(v12 + 104))(v18, enum case for WidgetFamily.accessoryCircular(_:), v11);
    sub_10000BFB0(&qword_100030438, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    sub_100021BEC();
    sub_100021BEC();
    v24 = *(v12 + 8);
    v24(v18, v11);
    v24(v20, v11);
    if (v59 == v54)
    {
      v25 = v23[8];
      v58 = 0;
      LOBYTE(v54) = 2;
      *v55 = *&v22[v25];
      HIBYTE(v56) = 0;
    }

    else
    {
      v28 = sub_10002192C();
      v58 = 1;
      v57 = 1;
      LOBYTE(v54) = 2;
      v55[0] = v28;
      memset(&v55[8], 0, 32);
      v56 = 257;
    }

    sub_1000066C8(&qword_100030420, &unk_100022BF0);
    sub_10000A710();
    sub_10000A764();
    sub_1000218BC();
    v29 = v60;
    v30 = v51;
    *v51 = v59;
    v30[1] = v29;
    v30[2] = v61;
    *(v30 + 24) = v62;
    swift_storeEnumTagMultiPayload();
    sub_1000066C8(&qword_100030400, &unk_1000238B0);
    sub_10000A684();
    sub_10000BFB0(&qword_100030528, &type metadata accessor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily, &protocol conformance descriptor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily);
    return sub_1000218BC();
  }

  else
  {
    sub_100020FBC();
    v26 = *(&v59 + 1);
    v27 = BYTE8(v61);
    sub_10000A634(v59, *(&v59 + 1), v60, *(&v60 + 1), v61);
    (*(v38 + 16))(v40, &v22[v23[5]], v39);
    (*(v41 + 16))(v42, v22, v43);
    sub_10002122C();
    sub_10000A44C(v15);
    (*(v48 + 16))(v47, v9, v49);
    if (v26)
    {
      if (v27)
      {
        sub_100020FBC();
        if (*(&v59 + 1))
        {
          sub_100020F7C();
        }
      }
    }

    v43 = v15;
    v46 = v9;
    sub_100020FBC();
    v32 = v59;
    v33 = v60;
    v34 = v61;
    if (*(&v59 + 1))
    {
    }

    sub_10000A634(v32, *(&v32 + 1), v33, *(&v33 + 1), v34);
    v35 = v44;
    sub_10002132C();
    v36 = v45;
    v37 = v53;
    (*(v45 + 16))(v51, v35, v53);
    swift_storeEnumTagMultiPayload();
    sub_1000066C8(&qword_100030400, &unk_1000238B0);
    sub_10000A684();
    sub_10000BFB0(&qword_100030528, &type metadata accessor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily, &protocol conformance descriptor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily);
    sub_1000218BC();
    (*(v36 + 8))(v35, v37);
    return (*(v48 + 8))(v46, v49);
  }
}

HomeEnergyWidgetsExtension::UtilityRateInfoWidget __swiftcall UtilityRateInfoWidget.init()()
{
  v0 = 0x8000000100022C60;
  v1 = 0xD000000000000015;
  result.kind._object = v0;
  result.kind._countAndFlagsBits = v1;
  return result;
}

uint64_t UtilityRateInfoWidget.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v32[1] = a1;
  v37 = a3;
  v3 = sub_1000066C8(&qword_100030128, &qword_100022428);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v32 - v5;
  v7 = sub_1000066C8(&qword_100030460, "H'");
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v32 - v8;
  v38 = sub_1000066C8(&qword_100030468, "\\'");
  v34 = *(v38 - 8);
  __chkstk_darwin(v38);
  v11 = v32 - v10;
  v12 = sub_1000066C8(&qword_100030470, "|'");
  v13 = *(v12 - 8);
  v35 = v12;
  v36 = v13;
  __chkstk_darwin(v12);
  v32[0] = v32 - v14;
  type metadata accessor for UtilityRateInfoWidgetEntryView(0);
  sub_10000BFB0(&qword_100030478, type metadata accessor for UtilityRateInfoWidgetEntryView, "ɣ");
  sub_10000B98C();

  sub_100021A9C();
  v15 = sub_10000B9E0();
  sub_10002189C();
  (*(v4 + 8))(v6, v3);
  v39 = sub_10002136C();
  v40 = v16;
  v43 = v3;
  v44 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_100009DB4();
  sub_1000218AC();

  (*(v33 + 8))(v9, v7);
  v43 = sub_10002135C();
  v44 = v19;
  v39 = v7;
  v40 = &type metadata for String;
  v41 = OpaqueTypeConformance2;
  v42 = v18;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = v32[0];
  v22 = v38;
  sub_10002187C();

  (*(v34 + 8))(v11, v22);
  sub_1000066C8(&qword_100030338, &qword_100022AE8);
  v23 = sub_100021A5C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100022AA0;
  v28 = v27 + v26;
  v29 = *(v24 + 104);
  v29(v27 + v26, enum case for WidgetFamily.accessoryRectangular(_:), v23);
  v29(v28 + v25, enum case for WidgetFamily.systemSmall(_:), v23);
  v29(v28 + 2 * v25, enum case for WidgetFamily.accessoryCircular(_:), v23);
  v39 = v38;
  v40 = &type metadata for String;
  v41 = v20;
  v42 = v18;
  swift_getOpaqueTypeConformance2();
  v30 = v35;
  sub_10002188C();

  return (*(v36 + 8))(v21, v30);
}

uint64_t sub_10000B880@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UtilityRateInfoWidgetEntryView(0);
  sub_10000BFF8(a1, a2 + *(v4 + 24));
  *a2 = swift_getKeyPath();
  sub_1000066C8(&qword_100030448, &qword_100022C30);
  swift_storeEnumTagMultiPayload();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_1000066C8(&qword_100030440, &qword_100022E10);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for UtilityRateInfoWidgetEntryView(uint64_t a1)
{
  result = qword_1000304E0;
  if (!qword_1000304E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000B98C()
{
  result = qword_100030480;
  if (!qword_100030480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030480);
  }

  return result;
}

unint64_t sub_10000B9E0()
{
  result = qword_100030130;
  if (!qword_100030130)
  {
    sub_100006710(&qword_100030128, &qword_100022428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030130);
  }

  return result;
}

uint64_t sub_10000BA98()
{
  sub_100006710(&qword_100030470, "|'");
  sub_100006710(&qword_100030468, "\\'");
  sub_100006710(&qword_100030460, "H'");
  sub_100006710(&qword_100030128, &qword_100022428);
  sub_10000B9E0();
  swift_getOpaqueTypeConformance2();
  sub_100009DB4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000BBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000066C8(&qword_100030340, &qword_100022B60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000066C8(&qword_100030348, &qword_100022B68);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for UtilityRateInfoEntry(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10000BD5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000066C8(&qword_100030340, &qword_100022B60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000066C8(&qword_100030348, &qword_100022B68);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for UtilityRateInfoEntry(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_10000BEC0(uint64_t a1)
{
  sub_10000A3DC(319, &qword_1000303B8, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    sub_10000A3DC(319, &unk_1000303C0, &type metadata accessor for WidgetFamily);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UtilityRateInfoEntry(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10000BFB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000BFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityRateInfoEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000C06C()
{
  result = qword_100030530;
  if (!qword_100030530)
  {
    sub_100006710(&qword_100030538, &qword_100022E18);
    sub_10000A684();
    sub_10000BFB0(&qword_100030528, &type metadata accessor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily, &protocol conformance descriptor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030530);
  }

  return result;
}

uint64_t sub_10000C128()
{

  sub_1000066C8(&qword_100030548, &qword_100022E78);
  sub_10002170C();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000C230();
  sub_10002171C();
  return 0;
}

unint64_t sub_10000C230()
{
  result = qword_100030540;
  if (!qword_100030540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030540);
  }

  return result;
}

unint64_t sub_10000C2B4()
{
  result = qword_100030550;
  if (!qword_100030550)
  {
    sub_100006710(&qword_100030558, &unk_100022E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030550);
  }

  return result;
}

uint64_t sub_10000C33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002113C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10002131C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10000C45C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10002113C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10002131C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for UtilityRateInfoEntry(uint64_t a1)
{
  result = qword_1000305B8;
  if (!qword_1000305B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000C5B0(uint64_t a1)
{
  sub_10002113C();
  if (v1 <= 0x3F)
  {
    sub_10002131C();
    if (v2 <= 0x3F)
    {
      sub_10000C66C();
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10000C66C()
{
  if (!qword_1000305C8)
  {
    v0 = sub_100021CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000305C8);
    }
  }
}

uint64_t sub_10000C6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a1;
  v3 = sub_10002131C();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = sub_10002113C();
  v6 = *(v22[0] - 8);
  __chkstk_darwin(v22[0]);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002126C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002134C();
  sub_10002125C();
  sub_10002123C();
  v13 = sub_100020540();
  if (sub_10002124C())
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  sub_100021ACC();
  v16 = v15;
  v18 = v17;
  (*(v10 + 8))(v12, v9);
  (*(v6 + 32))(a2, v8, v22[0]);
  v19 = type metadata accessor for UtilityRateInfoEntry(0);
  result = (*(v23 + 32))(a2 + v19[5], v5, v24);
  *(a2 + v19[6]) = v13;
  *(a2 + v19[7]) = v14;
  v21 = (a2 + v19[8]);
  *v21 = v16;
  v21[1] = v18;
  return result;
}

uint64_t sub_10000C934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = sub_10002131C();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v5 = sub_10002113C();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v6 = sub_10002126C();
  v3[10] = v6;
  v3[11] = *(v6 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_10000CAAC, 0, 0);
}

uint64_t sub_10000CAAC(uint64_t a1)
{
  sub_10002134C();
  *(v1 + 104) = sub_10002162C();
  sub_10002164C();
  *(v1 + 112) = sub_10002163C();
  sub_10000EA40(&qword_1000302E8, &type metadata accessor for WidgetActor, &protocol conformance descriptor for WidgetActor);
  v3 = sub_100021C4C();

  return _swift_task_switch(sub_10000CB84, v3, v2);
}

uint64_t sub_10000CB84()
{

  *(v0 + 120) = sub_10002161C();

  return _swift_task_switch(sub_10000CBF4, 0, 0);
}

uint64_t sub_10000CBF4()
{
  sub_100021C6C();
  *(v0 + 128) = sub_100021C5C();
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_10000CC88, v2, v1);
}

uint64_t sub_10000CC88()
{

  *(v0 + 136) = sub_1000215EC();

  return _swift_task_switch(sub_10000CD00, 0, 0);
}

uint64_t sub_10000CD00(id a1)
{
  v2 = v1[17];
  v22 = v2;
  if (v2)
  {
    v3 = [v2 homes];
    sub_10000E9F4();
    v4 = sub_100021C0C();

    if (v4 >> 62)
    {
      v5 = sub_100021D8C();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if ((v5 == 0) | [v2 hasOptedToHH2] & 1)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 3;
  }

  v27 = v6;
  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[9];
  v23 = v1[10];
  v10 = v1[8];
  v12 = v1[5];
  v11 = v1[6];
  v25 = v1[7];
  v26 = v1[4];
  v13 = v1[2];
  sub_10002125C();
  sub_10002123C();
  v24 = sub_100020540();
  sub_100021ACC();
  v15 = v14;
  v17 = v16;

  (*(v7 + 8))(v8, v23);
  (*(v10 + 32))(v13, v9, v25);
  v18 = type metadata accessor for UtilityRateInfoEntry(0);
  (*(v12 + 32))(v13 + v18[5], v11, v26);
  *(v13 + v18[6]) = v24;
  *(v13 + v18[7]) = v27;
  v19 = (v13 + v18[8]);
  *v19 = v15;
  v19[1] = v17;

  v20 = v1[1];

  return v20();
}

uint64_t sub_10000CF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_100021A8C();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  sub_10002118C();
  v3[15] = swift_task_alloc();
  v5 = sub_1000215DC();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v6 = sub_1000214EC();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v7 = sub_1000216DC();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_10000D128, 0, 0);
}

uint64_t sub_10000D128()
{
  v15 = v0;
  sub_10002169C();

  v1 = sub_1000216CC();
  v2 = sub_100021CBC();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10001EC04(0xD000000000000011, 0x8000000100024300, &v14);
    *(v7 + 12) = 2080;
    v8 = sub_10001FFD0();
    v10 = sub_10001EC04(v8, v9, &v14);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s resolving usageSnapshot type for configuration: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  (*(v5 + 8))(v4, v6);
  v0[25] = sub_10002162C();
  sub_10002164C();
  v0[26] = sub_10002163C();
  sub_10000EA40(&qword_1000302E8, &type metadata accessor for WidgetActor, &protocol conformance descriptor for WidgetActor);
  v12 = sub_100021C4C();

  return _swift_task_switch(sub_10000D35C, v12, v11);
}

uint64_t sub_10000D35C()
{

  *(v0 + 216) = sub_10002161C();
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_10000D400;

  return WidgetDataModel.orderedHomes.getter();
}

uint64_t sub_10000D400(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {

    v4 = sub_10000D7BC;
  }

  else
  {
    v4 = sub_10000D528;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000D528()
{
  v1 = v0[29];

  v2 = *(v1 + 16);
  v3 = v0[29];
  if (v2)
  {
    v4 = v0[20];
    v5 = v0[17];
    sub_10001F234(0, v2, 0);
    v7 = *(v5 + 16);
    v6 = v5 + 16;
    v8 = v3 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v24 = *(v6 + 56);
    v25 = v7;
    do
    {
      v9 = v0[18];
      v10 = v0[16];
      v25(v9, v8, v10);
      sub_1000215AC();
      sub_1000215CC();
      sub_1000214CC();
      (*(v6 - 8))(v9, v10);
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_10001F234((v11 > 1), v12 + 1, 1);
      }

      v13 = v0[21];
      v14 = v0[19];
      _swiftEmptyArrayStorage[2] = v12 + 1;
      (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v13, v14);
      v8 += v24;
      --v2;
    }

    while (v2);
  }

  v0[31] = v0[30];
  v0[32] = _swiftEmptyArrayStorage;
  sub_100020FBC();
  v16 = v0[2];
  v15 = v0[3];
  v0[33] = v15;
  v17 = v0[4];
  v18 = v0[5];
  v19 = v0[6];
  if (v15)
  {

    v20 = v16;
  }

  else
  {
    v20 = 0;
  }

  sub_10000A634(v16, v15, v17, v18, v19);
  v21 = swift_task_alloc();
  v0[34] = v21;
  *v21 = v0;
  v21[1] = sub_10000D8DC;
  v22 = v0[14];

  return static UtilityRateWidgetCommon.timeline(siteDetailIdentifier:homes:)(v22, v20, v15, _swiftEmptyArrayStorage);
}

uint64_t sub_10000D7BC(uint64_t a1)
{
  v1[31] = 0;
  v1[32] = _swiftEmptyArrayStorage;
  sub_100020FBC();
  v3 = v1[2];
  v2 = v1[3];
  v1[33] = v2;
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  if (v2)
  {

    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  sub_10000A634(v3, v2, v4, v5, v6);
  v8 = swift_task_alloc();
  v1[34] = v8;
  *v8 = v1;
  v8[1] = sub_10000D8DC;
  v9 = v1[14];

  return static UtilityRateWidgetCommon.timeline(siteDetailIdentifier:homes:)(v9, v7, v2, _swiftEmptyArrayStorage);
}

uint64_t sub_10000D8DC(uint64_t a1)
{
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_10000DA18, 0, 0);
}

uint64_t sub_10000DA18()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = swift_task_alloc();
  *(v6 + 16) = *(v0 + 72);
  sub_10001CDC4(sub_10000E9D4, v6, v1);

  (*(v4 + 16))(v3, v2, v5);
  type metadata accessor for UtilityRateInfoEntry(0);
  sub_10000EA40(&qword_100030608, type metadata accessor for UtilityRateInfoEntry, &unk_100022F00);
  sub_100021B0C();
  (*(v4 + 8))(v2, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10000DBC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v20 = a2;
  v21 = a1;
  v4 = sub_10002131C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002113C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002125C();
  sub_10002123C();
  if (sub_10002124C())
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  sub_100021ACC();
  v14 = v13;
  v16 = v15;
  (*(v9 + 32))(a3, v11, v8);
  v17 = type metadata accessor for UtilityRateInfoEntry(0);
  (*(v5 + 32))(a3 + v17[5], v7, v4);
  *(a3 + v17[6]) = v21;
  *(a3 + v17[7]) = v12;
  v18 = (a3 + v17[8]);
  *v18 = v14;
  v18[1] = v16;
}

uint64_t sub_10000DDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008D7C;

  return sub_10000C934(a1, v6, a3);
}

uint64_t sub_10000DE58(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008D7C;

  return sub_10000CF18(a1, v6, a3);
}

uint64_t sub_10000DF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000510C;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10000DFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008D7C;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_10000E080()
{
  sub_100021D1C(53);
  v1._countAndFlagsBits = 0xD000000000000018;
  v1._object = 0x8000000100024320;
  sub_100021BCC(v1);
  v2._countAndFlagsBits = sub_10002112C();
  sub_100021BCC(v2);

  v3._countAndFlagsBits = 2106912;
  v3._object = 0xE300000000000000;
  sub_100021BCC(v3);
  type metadata accessor for UtilityRateInfoEntry(0);
  v4._countAndFlagsBits = sub_10001FFD0();
  sub_100021BCC(v4);

  v5._object = 0x8000000100024340;
  v5._countAndFlagsBits = 0xD000000000000014;
  sub_100021BCC(v5);
  sub_10002131C();
  sub_10000EA40(&qword_100030630, &type metadata accessor for UtilityRateInfoSnapshot, &protocol conformance descriptor for UtilityRateInfoSnapshot);
  v6._countAndFlagsBits = sub_100021D9C();
  sub_100021BCC(v6);

  return 0;
}

uint64_t sub_10000E1D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10002113C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_10000E294()
{
  result = qword_100030610;
  if (!qword_100030610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030610);
  }

  return result;
}

uint64_t sub_10000E2E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v24 = a2;
  v5 = type metadata accessor for UtilityRateInfoEntry(0);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000216DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002169C();
  v12 = sub_1000216CC();
  v13 = sub_100021C9C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v22 = a1;
    v17 = v16;
    v25 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_10001EC04(0xD00000000000001FLL, 0x80000001000242E0, &v25);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s THIS SHOULD NEVER GET CALLED", v15, 0xCu);
    sub_100008C24(v17);
    a1 = v22;

    a3 = v23;
  }

  (*(v9 + 8))(v11, v8);
  sub_10002111C();
  sub_10002130C();
  sub_100021ACC();
  *&v7[v5[6]] = a1;
  v7[v5[7]] = 3;
  v18 = &v7[v5[8]];
  *v18 = v19;
  *(v18 + 1) = v20;

  a3(v7);
  return sub_10000E978(v7);
}

uint64_t sub_10000E558(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v32 = a2;
  v33 = a1;
  v6 = sub_100021A8C();
  __chkstk_darwin(v6 - 8);
  v35 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000066C8(&qword_100030618, &unk_100022FD0);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = v29 - v8;
  v10 = type metadata accessor for UtilityRateInfoEntry(0);
  v31 = *(v10 - 1);
  __chkstk_darwin(v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000216DC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002169C();
  v17 = sub_1000216CC();
  v18 = sub_100021C9C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29[1] = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v30 = a3;
    v22 = v21;
    v37 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10001EC04(0xD00000000000001FLL, 0x80000001000242C0, &v37);
    _os_log_impl(&_mh_execute_header, v17, v18, "%s THIS SHOULD NEVER GET CALLED", v20, 0xCu);
    sub_100008C24(v22);
    a3 = v30;
  }

  (*(v14 + 8))(v16, v13);
  sub_10002111C();
  sub_1000212FC();
  sub_100021ACC();
  *&v12[v10[6]] = v33;
  v12[v10[7]] = 3;
  v23 = &v12[v10[8]];
  *v23 = v24;
  *(v23 + 1) = v25;
  sub_1000066C8(&qword_100030620, &unk_100023D20);
  v26 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100022E90;
  sub_10000BFF8(v12, v27 + v26);

  sub_100021A7C();
  sub_10000EA40(&qword_100030608, type metadata accessor for UtilityRateInfoEntry, &unk_100022F00);
  sub_100021B0C();
  a3(v9);
  (*(v34 + 8))(v9, v36);
  return sub_10000E978(v12);
}

uint64_t sub_10000E978(uint64_t a1)
{
  v2 = type metadata accessor for UtilityRateInfoEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000E9F4()
{
  result = qword_100030628;
  if (!qword_100030628)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100030628);
  }

  return result;
}

uint64_t sub_10000EA40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000EA8C()
{
  result = qword_100030638;
  if (!qword_100030638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030638);
  }

  return result;
}

unint64_t sub_10000EAE0()
{
  sub_100021D1C(31);

  sub_100020FBC();
  sub_1000066C8(&qword_1000306D8, &qword_100023528);
  v1._countAndFlagsBits = sub_100021BBC();
  sub_100021BCC(v1);

  return 0xD00000000000001DLL;
}

uint64_t sub_10000EB9C()
{
  v0 = sub_1000210BC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000211AC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100021B7C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000210DC();
  sub_100008BC0(v6, qword_100030B60);
  sub_100008B88(v6, qword_100030B60);
  sub_100021B2C();
  sub_10002119C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000210EC();
}

unint64_t sub_10000ED8C()
{
  result = qword_100030640;
  if (!qword_100030640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030640);
  }

  return result;
}

unint64_t sub_10000EDE4()
{
  result = qword_100030648;
  if (!qword_100030648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030648);
  }

  return result;
}

uint64_t sub_10000EEC0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100013034();
  *v4 = v2;
  v4[1] = sub_100006460;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_10000EF6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000103E4();
  *a1 = result;
  return result;
}

uint64_t sub_10000EF94(uint64_t a1)
{
  v2 = sub_10000EA8C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000EFD4()
{
  result = qword_100030650;
  if (!qword_100030650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030650);
  }

  return result;
}

unint64_t sub_10000F02C()
{
  result = qword_100030658;
  if (!qword_100030658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030658);
  }

  return result;
}

unint64_t sub_10000F084()
{
  result = qword_100030660;
  if (!qword_100030660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030660);
  }

  return result;
}

unint64_t sub_10000F0DC()
{
  result = qword_100030668;
  if (!qword_100030668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030668);
  }

  return result;
}

uint64_t sub_10000F13C()
{
  v0 = sub_10002106C();
  sub_100008BC0(v0, qword_100030B78);
  sub_100008B88(v0, qword_100030B78);
  return sub_10002104C();
}

uint64_t sub_10000F194()
{
  v0 = sub_1000066C8(&qword_100030300, &unk_100022A90);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_1000066C8(&qword_1000302C0, &qword_100022A40);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1000210DC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = sub_100021B6C();
  __chkstk_darwin(v8 - 8);
  sub_100021B5C();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_100021B4C(v12);
  sub_100020F7C();
  sub_100021B3C(v11);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_100021B4C(v13);
  sub_1000210CC();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_100020FFC();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_10002100C();
}

uint64_t sub_10000F404(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10001021C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_10000F500()
{
  result = qword_100030670;
  if (!qword_100030670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030670);
  }

  return result;
}

unint64_t sub_10000F558()
{
  result = qword_100030678;
  if (!qword_100030678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030678);
  }

  return result;
}

unint64_t sub_10000F5B0()
{
  result = qword_100030680;
  if (!qword_100030680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030680);
  }

  return result;
}

unint64_t sub_10000F608()
{
  result = qword_100030688;
  if (!qword_100030688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030688);
  }

  return result;
}

uint64_t sub_10000F668@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10000F6AC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100008B88(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

unint64_t sub_10000F758()
{
  result = qword_100030690;
  if (!qword_100030690)
  {
    sub_100006710(&qword_100030698, &qword_100023278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030690);
  }

  return result;
}

uint64_t sub_10000F7BC(uint64_t a1)
{
  v2 = sub_10000F964();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000F80C()
{
  result = qword_1000306A0;
  if (!qword_1000306A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000306A0);
  }

  return result;
}

uint64_t sub_10000F864(uint64_t a1)
{
  v2 = sub_10000F608();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000F8B4()
{
  result = qword_1000306A8;
  if (!qword_1000306A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000306A8);
  }

  return result;
}

unint64_t sub_10000F90C()
{
  result = qword_1000306B0;
  if (!qword_1000306B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000306B0);
  }

  return result;
}

unint64_t sub_10000F964()
{
  result = qword_1000306B8;
  if (!qword_1000306B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000306B8);
  }

  return result;
}

uint64_t sub_10000F9B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008D8C;

  return sub_100011D48(a1);
}

uint64_t sub_10000FA60(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000FB04;

  return sub_100012398();
}

uint64_t sub_10000FB04(uint64_t a1)
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

unint64_t sub_10000FC18()
{
  result = qword_1000306C0;
  if (!qword_1000306C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000306C0);
  }

  return result;
}

unint64_t sub_10000FC70()
{
  result = qword_1000306C8;
  if (!qword_1000306C8)
  {
    sub_100006710(&qword_1000306D0, qword_1000233B8);
    sub_10000F5B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000306C8);
  }

  return result;
}

uint64_t sub_10000FCF4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000F0DC();
  *v5 = v2;
  v5[1] = sub_10000510C;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10000FDA8(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_10000FE54;

  return sub_100012790(v1 + 16);
}

uint64_t sub_10000FE54()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v7 = *v0;

  v3 = v1[1];
  v4 = v1[2];
  *(v2 + 25) = *(v1 + 41);
  *v2 = v3;
  v2[1] = v4;
  v5 = *(v7 + 8);

  return v5();
}

__n128 sub_10000FF7C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000FF90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000FFD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_100010044(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000066C8(&qword_100030700, &qword_100023588);
  v10 = *(type metadata accessor for ForecastLocationEntity(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ForecastLocationEntity(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10001021C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000066C8(&qword_1000306F0, &qword_100023570);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100010338(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000103E4()
{
  v0 = sub_1000216DC();
  v34 = *(v0 - 8);
  v35 = v0;
  __chkstk_darwin(v0);
  v30 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002102C();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000066C8(&qword_1000302B8, &unk_100023530);
  v5 = __chkstk_darwin(v4 - 8);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = sub_1000066C8(&qword_1000302C0, &qword_100022A40);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_1000210BC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000211AC();
  __chkstk_darwin(v16 - 8);
  v17 = sub_100021B7C();
  __chkstk_darwin(v17 - 8);
  v18 = sub_1000210DC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v28 = sub_1000066C8(&qword_1000306E0, &qword_100023540);
  sub_100021B2C();
  sub_10002119C();
  (*(v13 + 104))(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  sub_1000210EC();
  (*(v19 + 56))(v11, 1, 1, v18);
  v20 = v30;
  v21 = sub_100020F6C();
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  v22 = *(*(v21 - 8) + 56);
  v22(v8, 1, 1, v21);
  v22(v29, 1, 1, v21);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  sub_10000F964();
  v23 = sub_100020FCC();
  sub_1000216BC();
  v24 = sub_1000216CC();
  v25 = sub_100021CBC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "HistoricalUsageWidgetConfiguration init without siteDetail...", v26, 2u);
  }

  (*(v34 + 8))(v20, v35);
  return v23;
}

uint64_t sub_100010950()
{
  sub_1000210DC();
  v0[7] = swift_task_alloc();
  v0[8] = sub_1000066C8(&qword_1000306E8, &unk_100023560);
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v1 = sub_10002118C();
  v0[11] = v1;
  v0[12] = *(v1 - 8);
  v0[13] = swift_task_alloc();
  v2 = sub_1000215DC();
  v0[14] = v2;
  v0[15] = *(v2 - 8);
  v0[16] = swift_task_alloc();
  v3 = sub_1000214EC();
  v0[17] = v3;
  v0[18] = *(v3 - 8);
  v0[19] = swift_task_alloc();
  v4 = sub_1000216DC();
  v0[20] = v4;
  v0[21] = *(v4 - 8);
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();

  return _swift_task_switch(sub_100010BAC, 0, 0);
}

uint64_t sub_100010BAC()
{
  v0[6] = _swiftEmptyArrayStorage;
  v0[25] = sub_10002162C();
  sub_10002164C();
  v0[26] = sub_10002163C();
  sub_100012F18();
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_100010C58, v2, v1);
}

uint64_t sub_100010C58()
{

  *(v0 + 216) = sub_10002161C();
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_100010CFC;

  return WidgetDataModel.orderedHomes.getter();
}

uint64_t sub_100010CFC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100011164;
  }

  else
  {
    *(v4 + 232) = a1;
    v5 = sub_100010E34;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100010E34()
{
  v29 = v0;

  v1 = v0[29];
  v0[30] = v1;
  sub_1000216BC();

  v2 = sub_1000216CC();
  v3 = sub_100021CBC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[24];
  v6 = v0[20];
  v7 = v0[21];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_10001EC04(0xD000000000000017, 0x80000001000243D0, &v28);
    *(v8 + 12) = 2048;
    *(v8 + 14) = *(v1 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "%s WidgetDataModel returned %ld home(s), checking if onboarded...", v8, 0x16u);
    sub_100008C24(v9);
  }

  else
  {
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[31] = v10;
  v11 = *(v1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v13 = v0[18];
    v14 = v0[15];
    v28 = _swiftEmptyArrayStorage;
    sub_10001F234(0, v11, 0);
    v12 = v28;
    v16 = *(v14 + 16);
    v15 = v14 + 16;
    v17 = v1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v26 = *(v15 + 56);
    v27 = v16;
    do
    {
      v18 = v0[16];
      v19 = v0[14];
      v27(v18, v17, v19);
      sub_1000215AC();
      sub_1000215CC();
      sub_1000214CC();
      (*(v15 - 8))(v18, v19);
      v28 = v12;
      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        sub_10001F234((v20 > 1), v21 + 1, 1);
        v12 = v28;
      }

      v22 = v0[19];
      v23 = v0[17];
      v12[2] = v21 + 1;
      (*(v13 + 32))(v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, v22, v23);
      v17 += v26;
      --v11;
    }

    while (v11);
  }

  v0[32] = v12;
  v24 = swift_task_alloc();
  v0[33] = v24;
  *v24 = v0;
  v24[1] = sub_10001148C;

  return static HistoricalUsageWidgetCommon.utilityOnboardedHomesAndEnergySites(homes:)(v12);
}

uint64_t sub_100011164(uint64_t a1)
{
  v29 = v1;
  v2 = _swiftEmptyArrayStorage;
  v1[30] = _swiftEmptyArrayStorage;
  sub_1000216BC();

  v3 = sub_1000216CC();
  v4 = sub_100021CBC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[24];
  v7 = v1[20];
  v8 = v1[21];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_10001EC04(0xD000000000000017, 0x80000001000243D0, &v28);
    *(v9 + 12) = 2048;
    *(v9 + 14) = _swiftEmptyArrayStorage[2];

    _os_log_impl(&_mh_execute_header, v3, v4, "%s WidgetDataModel returned %ld home(s), checking if onboarded...", v9, 0x16u);
    sub_100008C24(v10);
  }

  else
  {
  }

  v11 = *(v8 + 8);
  v11(v6, v7);
  v1[31] = v11;
  v12 = _swiftEmptyArrayStorage[2];
  if (v12)
  {
    v13 = v1[18];
    v14 = v1[15];
    v28 = _swiftEmptyArrayStorage;
    sub_10001F234(0, v12, 0);
    v16 = *(v14 + 16);
    v15 = v14 + 16;
    v17 = _swiftEmptyArrayStorage + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v2 = v28;
    v26 = *(v15 + 56);
    v27 = v16;
    do
    {
      v18 = v1[16];
      v19 = v1[14];
      v27(v18, v17, v19);
      sub_1000215AC();
      sub_1000215CC();
      sub_1000214CC();
      (*(v15 - 8))(v18, v19);
      v28 = v2;
      v21 = v2[2];
      v20 = v2[3];
      if (v21 >= v20 >> 1)
      {
        sub_10001F234((v20 > 1), v21 + 1, 1);
        v2 = v28;
      }

      v22 = v1[19];
      v23 = v1[17];
      v2[2] = v21 + 1;
      (*(v13 + 32))(v2 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, v22, v23);
      v17 += v26;
      --v12;
    }

    while (v12);
  }

  v1[32] = v2;
  v24 = swift_task_alloc();
  v1[33] = v24;
  *v24 = v1;
  v24[1] = sub_10001148C;

  return static HistoricalUsageWidgetCommon.utilityOnboardedHomesAndEnergySites(homes:)(v2);
}

uint64_t sub_10001148C(uint64_t a1)
{
  *(*v1 + 272) = a1;

  return _swift_task_switch(sub_1000115AC, 0, 0);
}

uint64_t sub_1000115AC()
{
  v61 = v0;
  v1 = v0[34];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[18];
    v4 = v0[12];
    v51 = v0[8];
    v50 = v2 != 1;
    v60 = _swiftEmptyArrayStorage;
    sub_10001F278(0, v2, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = (v1 + 64);
    v7 = sub_100021CEC();
    sub_1000066C8(&qword_1000302D8, &qword_100022A60);
    v52 = v3;
    v8 = v4 + 8;
    v49 = (v4 + 8);
    v47 = (v1 + 64);
    v48 = v1;
    while ((v7 & 0x8000000000000000) == 0)
    {
      v8 = 1 << *(v1 + 32);
      if (v7 >= v8)
      {
        break;
      }

      v8 = *&v6[8 * (v7 >> 6)];
      if ((v8 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      v53 = v2;
      v54 = *(v1 + 36);
      v9 = v0[17];
      v58 = v5;
      v10 = v0[13];
      v11 = v0[10];
      v55 = v0[11];
      v12 = v0[9];
      (*(v52 + 16))(v11, *(v1 + 48) + *(v52 + 72) * v7, v9);
      v13 = *(*(v1 + 56) + 8 * v7);
      (*(v52 + 32))(v12, v11, v9);
      *(v12 + *(v51 + 48)) = v13;

      v57 = sub_10002165C();
      v3 = v14;
      v15 = sub_1000214DC();
      v2 = v16;
      sub_1000214BC();
      v56 = sub_10002115C();
      v4 = v17;
      v18 = v10;
      v5 = v58;
      (*v49)(v18, v55);
      sub_1000210AC();
      v19 = sub_100020F9C();
      v59[2] = v15;
      v59[3] = v2;
      v0 = v59;

      v6 = v19;
      sub_100020F8C();

      sub_100012F70(v12);
      v60 = v58;
      v21 = v58[2];
      v20 = v58[3];
      if (v21 >= v20 >> 1)
      {
        v6 = &v60;
        sub_10001F278((v20 > 1), v21 + 1, 1);
        v5 = v60;
      }

      v5[2] = v21 + 1;
      v22 = &v5[6 * v21];
      v22[4] = v57;
      v22[5] = v3;
      v22[6] = v19;
      v22[7] = v56;
      v22[8] = v4;
      *(v22 + 72) = v50;
      v1 = v48;
      v8 = -1 << *(v48 + 32);
      if (v7 >= -v8)
      {
        goto LABEL_28;
      }

      v6 = v47;
      if ((*&v47[8 * (v7 >> 6)] & (1 << v7)) == 0)
      {
        goto LABEL_29;
      }

      if (v54 != *(v48 + 36))
      {
        goto LABEL_30;
      }

      v7 = sub_100021CFC();
      v2 = v53 - 1;
      if (v53 == 1)
      {

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v6 = sub_10001021C((v8 > 1), v4, 1, v6);
    goto LABEL_22;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_14:
  swift_bridgeObjectRetain_n();
  sub_1000216BC();

  v23 = sub_1000216CC();
  v24 = sub_100021CBC();
  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[31];
  v27 = v0[23];
  v28 = v0[20];
  if (v25)
  {
    v29 = v0[31];
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v60 = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_10001EC04(0xD000000000000017, 0x80000001000243D0, &v60);
    *(v30 + 12) = 2048;
    v32 = v5[2];

    *(v30 + 14) = v32;

    _os_log_impl(&_mh_execute_header, v23, v24, "%s Found %ld home(s) with an onboarded utility)", v30, 0x16u);
    sub_100008C24(v31);

    v29(v27, v28);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v26(v27, v28);
  }

  v33 = v5[2];

  v34 = v59;
  if (v33)
  {
    sub_10000F404(v5);
    v6 = v59[6];
    goto LABEL_23;
  }

  v5 = 0xD000000000000017;

  sub_1000216BC();
  v35 = sub_1000216CC();
  v36 = sub_100021CBC();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v59[31];
  v39 = v59[22];
  v40 = v59[20];
  if (v37)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v60 = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_10001EC04(0xD000000000000017, 0x80000001000243D0, &v60);
    _os_log_impl(&_mh_execute_header, v35, v36, "%s No onboarded homes found! (returning error SiteDetail: <NO ONBOARDED HOMES ERROR>)", v41, 0xCu);
    sub_100008C24(v42);

    v34 = v59;
  }

  v38(v39, v40);
  v1 = 0x80000001000243B0;
  sub_1000066C8(&qword_1000302D8, &qword_100022A60);
  sub_1000210AC();
  v0 = sub_100020F9C();
  v43 = v34;
  v2 = 0xE000000000000000;
  v43[4] = 0;
  v43[5] = 0xE000000000000000;

  sub_100020F8C();

  v6 = sub_10001021C(0, 1, 1, _swiftEmptyArrayStorage);
  v3 = *(v6 + 2);
  v8 = *(v6 + 3);
  v4 = v3 + 1;
  if (v3 >= v8 >> 1)
  {
    goto LABEL_31;
  }

LABEL_22:
  *(v6 + 2) = v4;
  v44 = &v6[48 * v3];
  *(v44 + 4) = v5 + 3;
  *(v44 + 5) = v1;
  *(v44 + 6) = v0;
  *(v44 + 7) = 0;
  *(v44 + 8) = v2;
  v44[72] = 0;
  v34 = v59;
LABEL_23:

  v45 = v34[1];

  return v45(v6);
}

uint64_t sub_100011D48(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_1000216DC();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[8] = v3;
  *v3 = v1;
  v3[1] = sub_100011E48;

  return sub_100010950();
}

uint64_t sub_100011E48(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_100011F48, 0, 0);
}

void sub_100011F48()
{
  v49 = v0;
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v42 = -v2;
    v43 = v0 + 2;
    v4 = v1 + 72;
    v5 = _swiftEmptyArrayStorage;
    v44 = v0[9];
    v40 = v1 + 72;
    do
    {
      v41 = v5;
      v6 = (v4 + 48 * v3);
      v7 = v3 + 1;
      while (1)
      {
        if ((v7 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v46 = v7;
        v8 = v0[4];
        v10 = *(v6 - 5);
        v9 = *(v6 - 4);
        v12 = *(v6 - 3);
        v11 = *(v6 - 2);
        v13 = *(v6 - 1);
        v14 = *v6;
        v0[2] = v10;
        v0[3] = v9;
        v15 = v13;
        v16 = swift_task_alloc();
        *(v16 + 16) = v43;

        LOBYTE(v8) = sub_100010338(sub_100012FDC, v16, v8);

        if (v8)
        {
          break;
        }

        v0 = v45;
        v7 = v46 + 1;
        v6 += 48;
        v1 = v44;
        if (v42 + v46 + 1 == 1)
        {
          v5 = v41;
          goto LABEL_15;
        }
      }

      v17 = v12;
      v5 = v41;
      v48[0] = v41;
      v18 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001F278(0, *(v41 + 16) + 1, 1);
        v5 = v48[0];
      }

      v19 = v11;
      v4 = v40;
      v20 = v10;
      v21 = v14;
      v23 = v5[2];
      v22 = v5[3];
      if (v23 >= v22 >> 1)
      {
        sub_10001F278((v22 > 1), v23 + 1, 1);
        v21 = v14;
        v19 = v11;
        v4 = v40;
        v20 = v10;
        v5 = v48[0];
      }

      v5[2] = v23 + 1;
      v24 = &v5[6 * v23];
      v24[4] = v20;
      v24[5] = v9;
      v24[6] = v17;
      v24[7] = v19;
      v24[8] = v18;
      *(v24 + 72) = v21;
      v0 = v45;
      v3 = v46;
      v1 = v44;
    }

    while (v42 + v46);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

LABEL_15:

  sub_1000216BC();
  swift_retain_n();

  v25 = sub_1000216CC();
  v26 = sub_100021CBC();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[6];
  v29 = v0[7];
  v30 = v0[5];
  if (v27)
  {
    v31 = swift_slowAlloc();
    v48[0] = swift_slowAlloc();
    *v31 = 136315906;
    *(v31 + 4) = sub_10001EC04(0x7365697469746E65, 0xEE00293A726F6628, v48);
    *(v31 + 12) = 2080;
    v32 = sub_100021C1C();
    v47 = v29;
    v34 = sub_10001EC04(v32, v33, v48);

    *(v31 + 14) = v34;
    *(v31 + 22) = 2048;
    v35 = v5[2];

    *(v31 + 24) = v35;

    *(v31 + 32) = 2080;
    v36 = sub_100021C1C();
    v38 = sub_10001EC04(v36, v37, v48);

    *(v31 + 34) = v38;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s filtering for utility onboarded homes with these IDs: %s, FOUND %ld: %s", v31, 0x2Au);
    swift_arrayDestroy();
    v0 = v45;

    (*(v28 + 8))(v47, v30);
  }

  else
  {

    (*(v28 + 8))(v29, v30);
  }

  v39 = v0[1];

  v39(v5);
}

uint64_t sub_100012398()
{
  v1 = sub_1000216DC();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_100012494;

  return sub_100010950();
}

uint64_t sub_100012494(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100012594, 0, 0);
}

uint64_t sub_100012594(uint64_t a1)
{
  v18 = v1;
  sub_1000216BC();

  v2 = sub_1000216CC();
  v3 = sub_100021CBC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v1[3];
    v4 = v1[4];
    v6 = v1[2];
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10001EC04(0xD000000000000013, 0x8000000100024190, &v17);
    *(v7 + 12) = 2080;
    v8 = sub_100021C1C();
    v10 = sub_10001EC04(v8, v9, &v17);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s returning all utility onboarded homes: %s", v7, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v12 = v1[3];
    v11 = v1[4];
    v13 = v1[2];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[1];
  v15 = v1[6];

  return v14(v15);
}

uint64_t sub_100012790(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000216DC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = sub_100012890;

  return sub_100012398();
}

uint64_t sub_100012890(uint64_t a1)
{
  *(*v2 + 56) = a1;

  if (v1)
  {

    v3 = sub_100012CA0;
  }

  else
  {
    v3 = sub_1000129AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000129AC()
{
  v31 = v0;
  v1 = v0[7];
  if (*(v1 + 16))
  {
    v3 = *(v1 + 32);
    v2 = *(v1 + 40);
    v5 = *(v1 + 48);
    v4 = *(v1 + 56);
    v6 = *(v1 + 64);
    v7 = *(v1 + 72);
  }

  else
  {

    v3 = 0;
    v2 = 0;
    v5 = 0;
    v4 = 0;
    v6 = 0;
    v7 = 0;
  }

  sub_1000216BC();
  sub_100012EC8(v3, v2, v5, v4, v6);
  v8 = sub_1000216CC();
  v9 = sub_100021CBC();
  if (os_log_type_enabled(v8, v9))
  {
    v27 = v6;
    v28 = v5;
    v10 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10001EC04(0x52746C7561666564, 0xEF2928746C757365, &v30);
    *(v10 + 12) = 2080;
    v26 = v3;
    if (v2)
    {
      v11 = v3;
      v12 = v2;
      v13 = v2;
      v14 = v27;
      v15 = v7;
      sub_10000A634(v11, v13, v28, v4, v27);

      v16 = v4;
    }

    else
    {
      v12 = 0;
      v15 = v7;
      v14 = 0xE500000000000000;
      v16 = 0x3E6C696E3CLL;
    }

    v19 = v0[4];
    v24 = v0[3];
    v25 = v0[5];
    v20 = sub_10001EC04(v16, v14, &v30);

    *(v10 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s returning: %s", v10, 0x16u);
    swift_arrayDestroy();

    (*(v19 + 8))(v25, v24);
    v5 = v28;
    v7 = v15;
    v2 = v12;
    v3 = v26;
    v6 = v27;
  }

  else
  {
    v17 = v0[4];
    v29 = v0[5];
    v18 = v0[3];
    sub_10000A634(v3, v2, v5, v4, v6);

    (*(v17 + 8))(v29, v18);
  }

  v21 = v0[2];

  *v21 = v3;
  *(v21 + 8) = v2;
  *(v21 + 16) = v5;
  *(v21 + 24) = v4;
  *(v21 + 32) = v6;
  *(v21 + 40) = v7;
  v22 = v0[1];

  return v22();
}

uint64_t sub_100012CA0(uint64_t a1)
{
  v16 = v1;
  sub_1000216BC();
  sub_100012EC8(0, 0, 0, 0, 0);
  v2 = sub_1000216CC();
  v3 = sub_100021CBC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_10001EC04(0x52746C7561666564, 0xEF2928746C757365, &v15);
    *(v4 + 12) = 2080;
    v6 = v1[4];
    v5 = v1[5];
    v7 = v1[3];
    v8 = sub_10001EC04(0x3E6C696E3CLL, 0xE500000000000000, &v15);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s returning: %s", v4, 0x16u);
    swift_arrayDestroy();

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v10 = v1[4];
    v9 = v1[5];
    v11 = v1[3];
    sub_10000A634(0, 0, 0, 0, 0);

    (*(v10 + 8))(v9, v11);
  }

  v12 = v1[2];

  *(v12 + 25) = 0u;
  *v12 = 0u;
  v12[1] = 0u;
  v13 = v1[1];

  return v13();
}

void sub_100012EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

unint64_t sub_100012F18()
{
  result = qword_1000302E8;
  if (!qword_1000302E8)
  {
    sub_10002164C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000302E8);
  }

  return result;
}

uint64_t sub_100012F70(uint64_t a1)
{
  v2 = sub_1000066C8(&qword_1000306E8, &unk_100023560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012FDC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100021DAC() & 1;
  }
}

unint64_t sub_100013034()
{
  result = qword_1000306F8;
  if (!qword_1000306F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000306F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BlockOutError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BlockOutError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for BlockoutCirculeView(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BlockoutCirculeView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[24])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BlockoutCirculeView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1000132B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v22 = a1;
  v25 = a2;
  v3 = sub_1000218FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000066C8(&qword_100030758, &qword_100023720);
  v23 = *(v7 - 8);
  v24 = v7;
  __chkstk_darwin(v7);
  v9 = &v21[-v8];
  v10 = sub_1000217DC();
  v30 = 1;
  sub_100013674(v2, &v39);
  v33 = v41;
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v31 = v39;
  v32 = v40;
  v38 = v44;
  v37[2] = v41;
  v37[3] = v42;
  v37[4] = v43;
  v37[0] = v39;
  v37[1] = v40;
  sub_1000148C8(&v31, &v26);
  sub_100008C70(v37, &qword_100030760, &qword_100023728);
  *&v29[39] = v33;
  *&v29[55] = v34;
  *&v29[71] = v35;
  v29[87] = v36;
  *&v29[7] = v31;
  *&v29[23] = v32;
  LOBYTE(v2) = v30;
  v11 = sub_1000219FC();
  KeyPath = swift_getKeyPath();
  *(&v27[2] + 1) = *&v29[32];
  *(&v27[3] + 1) = *&v29[48];
  *(&v27[4] + 1) = *&v29[64];
  *(v27 + 1) = *v29;
  v26 = v10;
  LOBYTE(v27[0]) = v2;
  *(&v27[5] + 1) = *&v29[80];
  *(&v27[1] + 1) = *&v29[16];
  *&v28 = KeyPath;
  *(&v28 + 1) = v11;
  sub_1000218EC();
  v13 = sub_1000066C8(&qword_100030768, &qword_100023760);
  v14 = sub_100014990();
  sub_1000219DC();
  (*(v4 + 8))(v6, v3);
  v43 = v27[3];
  v44 = v27[4];
  v45 = v27[5];
  v46 = v28;
  v39 = v26;
  v40 = v27[0];
  v41 = v27[1];
  v42 = v27[2];
  sub_100008C70(&v39, &qword_100030768, &qword_100023760);
  *&v26 = 0;
  *(&v26 + 1) = 0xE000000000000000;
  sub_100021D1C(36);

  v15._countAndFlagsBits = 0xD00000000000001CLL;
  *&v26 = 0xD000000000000022;
  *(&v26 + 1) = 0x80000001000245D0;
  if (!v22)
  {
    v15._countAndFlagsBits = 0xD00000000000002BLL;
    v17 = "NoAccessOutsideOfScheduleForRestrictedGuest";
LABEL_6:
    v16 = v17 - 32;
    goto LABEL_7;
  }

  if (v22 != 1)
  {
    v17 = "AppleHomeUpdateToHH2Required";
    goto LABEL_6;
  }

  v16 = "AppleHomeUpdateToHH2Required";
  v15._countAndFlagsBits = 0xD000000000000026;
LABEL_7:
  v18 = v24;
  v19 = v23;
  v15._object = (v16 | 0x8000000000000000);
  sub_100021BCC(v15);

  *&v26 = v13;
  *(&v26 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  sub_1000219EC();

  return (*(v19 + 8))(v9, v18);
}

uint64_t sub_100013674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10002184C();
  sub_100013740(a1, v12);
  v5 = v12[0];
  v6 = v12[1];
  v7 = v13;
  v9 = v14;
  v8 = v15;
  v10 = v16;
  LOBYTE(v12[0]) = 0;
  v18 = v13;
  v17 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v9;
  *(a2 + 56) = v8;
  *(a2 + 64) = v10;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  sub_100014A74(v5, v6, v7);

  sub_1000147F8(v5, v6, v7);
}

uint64_t sub_100013740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = sub_10002182C();
  __chkstk_darwin(v4 - 8);
  sub_10002181C();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_10002180C(v12);
  sub_100021A0C();
  sub_1000217EC();

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  sub_10002180C(v13);
  v14._countAndFlagsBits = sub_1000138B0(v2);
  sub_1000217FC(v14);

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_10002180C(v15);
  sub_10002183C();
  v5 = sub_10002196C();
  v7 = v6;
  *a2 = v5;
  *(a2 + 8) = v6;
  v9 = v8 & 1;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_100014A74(v5, v6, v8 & 1);

  sub_1000147F8(v5, v7, v9);
}

uint64_t sub_1000138B0(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_1000211AC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100021B7C();
  __chkstk_darwin(v3 - 8);
  if (v1 != 2)
  {
    return 0;
  }

  sub_100021B2C();
  v4 = sub_100021B8C();
  v5 = [objc_opt_self() bundleWithIdentifier:v4];

  sub_10002119C();
  return sub_100021BAC();
}

uint64_t sub_100013A54(char a1)
{
  v1 = sub_1000211AC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100021B7C();
  __chkstk_darwin(v2 - 8);
  sub_100009DB4();
  if (sub_100021CDC() & 1) != 0 || (sub_100021CDC())
  {
  }

  else
  {
    v3 = sub_100021CDC();

    if ((v3 & 1) == 0)
    {
      return sub_10002197C();
    }
  }

  sub_100021B2C();
  sub_10002119C();
  sub_100021BAC();
  return sub_10002197C();
}

uint64_t sub_100013CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v33 = a1;
  v4 = sub_1000218FC();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v37 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000066C8(&qword_100030708, &qword_1000236A8);
  __chkstk_darwin(v6 - 8);
  v8 = &v32[-v7];
  v9 = sub_1000066C8(&qword_100030710, &qword_1000236B0);
  v10 = *(v9 - 8);
  v35 = v9;
  v36 = v10;
  __chkstk_darwin(v9);
  v12 = &v32[-v11];
  v38 = sub_1000066C8(&qword_100030718, &qword_1000236B8);
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v34 = &v32[-v13];
  v39 = sub_1000066C8(&qword_100030720, &qword_1000236C0);
  __chkstk_darwin(v39);
  v15 = &v32[-v14];
  v16 = sub_100021A3C();
  v18 = v17;
  sub_1000143C0(&v48);
  v65 = v54;
  v66 = v55;
  v67 = v56;
  v61 = v50;
  v62 = v51;
  v63 = v52;
  v64 = v53;
  v59 = v48;
  v60 = v49;
  v69[6] = v54;
  v69[7] = v55;
  v69[8] = v56;
  v69[2] = v50;
  v69[3] = v51;
  v69[4] = v52;
  v69[5] = v53;
  v68 = v57;
  v70 = v57;
  v69[0] = v48;
  v69[1] = v49;
  sub_100014860(&v59, v46, &qword_100030728, &qword_1000236C8);
  sub_100008C70(v69, &qword_100030728, &qword_1000236C8);
  v55 = v65;
  v56 = v66;
  v57 = v67;
  v58 = v68;
  v51 = v61;
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v49 = v59;
  v50 = v60;
  *&v48 = v16;
  *(&v48 + 1) = v18;
  sub_1000210FC();

  v19 = sub_1000066C8(&qword_100030730, &qword_1000236D0);
  v20 = sub_100006CA0(&qword_100030738, &qword_100030730, &qword_1000236D0, &protocol conformance descriptor for ZStack<A>);
  sub_10002198C();
  sub_100008C70(v8, &qword_100030708, &qword_1000236A8);
  v46[7] = v55;
  v46[8] = v56;
  v46[9] = v57;
  v47 = v58;
  v46[4] = v52;
  v46[5] = v53;
  v46[6] = v54;
  v46[0] = v48;
  v46[1] = v49;
  v46[2] = v50;
  v46[3] = v51;
  sub_100008C70(v46, &qword_100030730, &qword_1000236D0);
  v21 = v37;
  sub_1000218DC();
  v44 = v19;
  v45 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v34;
  v23 = v35;
  sub_1000219DC();
  (*(v41 + 8))(v21, v42);
  v25 = v23;
  (*(v36 + 8))(v12, v23);
  v26 = sub_100013A54(v33);
  v28 = v27;
  LOBYTE(v23) = v29;
  v44 = v25;
  v45 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v30 = v38;
  sub_1000219CC();
  sub_1000147F8(v26, v28, v23 & 1);

  (*(v40 + 8))(v24, v30);
  sub_10002173C();
  return sub_100008C70(v15, &qword_100030720, &qword_1000236C0);
}

uint64_t sub_1000143C0@<X0>(uint64_t a2@<X8>)
{
  v7 = sub_1000066C8(&qword_100030740, &qword_1000236D8);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_1000066C8(&qword_100030748, &qword_1000236E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v41 = sub_1000218CC();
  sub_1000216FC();
  v13 = v66;
  v14 = v67;
  v15 = v68;
  v16 = v69;
  v38 = v70;
  v17 = v71;
  v18 = sub_100021A3C();
  v39 = v19;
  v40 = v18;
  sub_100021A3C();
  sub_10002172C();
  sub_100021A1C();
  sub_10002185C();
  v20 = sub_10002186C();
  (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
  v37 = sub_100021A2C();

  sub_100008C70(v12, &qword_100030748, &qword_1000236E0);
  sub_10002194C();
  v21 = sub_10002193C();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  v22 = sub_10002195C();
  sub_100008C70(v9, &qword_100030740, &qword_1000236D8);
  KeyPath = swift_getKeyPath();
  *&v42 = v13 * 0.5;
  *(&v42 + 1) = v13;
  *&v43 = __PAIR64__(v15, v14);
  *(&v43 + 1) = v16;
  v25 = v38;
  v24 = v39;
  *&v44 = v38;
  *(&v44 + 1) = v17;
  v26 = v14;
  v27 = v41;
  *&v45 = v41 | 0x3F80000000000000;
  WORD4(v45) = 256;
  HIWORD(v45) = v76;
  *(&v45 + 10) = v75;
  v28 = v15;
  v29 = v40;
  *&v46 = v40;
  *(&v46 + 1) = v39;
  v49 = v74;
  v48 = v73;
  v47 = v72;
  v30 = v42;
  v31 = v43;
  v32 = v45;
  *(a2 + 32) = v44;
  *(a2 + 48) = v32;
  *a2 = v30;
  *(a2 + 16) = v31;
  v33 = v46;
  v34 = v47;
  v35 = v49;
  *(a2 + 96) = v48;
  *(a2 + 112) = v35;
  *(a2 + 64) = v33;
  *(a2 + 80) = v34;
  *(a2 + 128) = v37;
  *(a2 + 136) = KeyPath;
  *(a2 + 144) = v22;
  sub_100014860(&v42, v50, &qword_100030750, &qword_100023718);
  v50[0] = v13 * 0.5;
  v50[1] = v13;
  v51 = v26;
  v52 = v28;
  v53 = v16;
  v54 = v25;
  v55 = v17;
  v56 = v27;
  v57 = 1065353216;
  v58 = 256;
  v59 = v75;
  v60 = v76;
  v61 = v29;
  v62 = v24;
  v65 = v74;
  v64 = v73;
  v63 = v72;
  return sub_100008C70(v50, &qword_100030750, &qword_100023718);
}

uint64_t sub_1000147F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100014808@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002176C();
  *a1 = result;
  return result;
}

uint64_t sub_100014860(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000066C8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000148C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000066C8(&qword_100030760, &qword_100023728);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014938@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002174C();
  *a1 = result;
  return result;
}

unint64_t sub_100014990()
{
  result = qword_100030770;
  if (!qword_100030770)
  {
    sub_100006710(&qword_100030768, &qword_100023760);
    sub_100006CA0(&qword_100030778, &qword_100030780, &qword_100023768, &protocol conformance descriptor for HStack<A>);
    sub_100006CA0(&qword_100030788, &qword_100030790, &qword_100023770, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030770);
  }

  return result;
}

uint64_t sub_100014A74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100014A88()
{
  result = qword_100030798;
  if (!qword_100030798)
  {
    sub_100006710(&qword_100030720, &qword_1000236C0);
    sub_100006710(&qword_100030710, &qword_1000236B0);
    sub_100006710(&qword_100030730, &qword_1000236D0);
    sub_100006CA0(&qword_100030738, &qword_100030730, &qword_1000236D0, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100014BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030798);
  }

  return result;
}

unint64_t sub_100014BC8()
{
  result = qword_1000307A0;
  if (!qword_1000307A0)
  {
    sub_10002190C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000307A0);
  }

  return result;
}

unint64_t sub_100014C24()
{
  result = qword_1000307A8;
  if (!qword_1000307A8)
  {
    sub_100006710(&qword_1000307B0, &qword_100023778);
    sub_100006710(&qword_100030768, &qword_100023760);
    sub_100014990();
    swift_getOpaqueTypeConformance2();
    sub_100014BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000307A8);
  }

  return result;
}

HomeEnergyWidgetsExtension::EnergyForecastWidget __swiftcall EnergyForecastWidget.init()()
{
  v0 = 0x8000000100023760;
  v1 = 0xD000000000000014;
  result.kind._object = v0;
  result.kind._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_100014D14()
{
  result = os_variant_has_internal_diagnostics();
  byte_100030B90 = result;
  return result;
}

uint64_t sub_100014D3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v52 = sub_10002118C();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000066C8(&qword_1000302A8, &unk_100022A30);
  __chkstk_darwin(v4 - 8);
  v61 = &v50 - v5;
  v68 = sub_1000213AC();
  v63 = *(v68 - 8);
  __chkstk_darwin(v68);
  v62 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10002113C();
  v56 = *(v58 - 8);
  v7 = __chkstk_darwin(v58);
  v57 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v54 = &v50 - v9;
  v53 = sub_10002121C();
  v10 = *(v53 - 8);
  __chkstk_darwin(v53);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1000212BC();
  v59 = *(v60 - 8);
  v13 = __chkstk_darwin(v60);
  v55 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v65 = &v50 - v15;
  v66 = sub_1000066C8(&qword_100030878, &qword_1000238A8);
  __chkstk_darwin(v66);
  v67 = (&v50 - v16);
  v17 = sub_100021A5C();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v50 - v23;
  __chkstk_darwin(v22);
  v26 = &v50 - v25;
  v27 = *(type metadata accessor for EnergyForecastWidgetEntryView(0) + 24);
  v64 = v2;
  v28 = v2 + v27;
  v29 = type metadata accessor for GridForecastEntry(0);
  if (*(v28 + v29[9]) == 2)
  {
    sub_10000A44C(v26);
    (*(v18 + 104))(v24, enum case for WidgetFamily.accessoryCircular(_:), v17);
    sub_100016950(&qword_100030438, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    sub_100021BEC();
    sub_100021BEC();
    v30 = *(v18 + 8);
    v30(v24, v17);
    v30(v26, v17);
    if (*&v75[0] == v70)
    {
      v31 = v29[10];
      v74 = 0;
      LOBYTE(v70) = 2;
      *v71 = *(v28 + v31);
      HIBYTE(v72) = 0;
    }

    else
    {
      v40 = sub_10002192C();
      v74 = 1;
      v73 = 1;
      LOBYTE(v70) = 2;
      v71[0] = v40;
      memset(&v71[8], 0, 32);
      v72 = 257;
    }

    sub_1000066C8(&qword_100030420, &unk_100022BF0);
    sub_10000A710();
    sub_10000A764();
    sub_1000218BC();
    v41 = v75[1];
    v42 = v67;
    *v67 = v75[0];
    v42[1] = v41;
    v42[2] = v75[2];
    *(v42 + 24) = v76;
    swift_storeEnumTagMultiPayload();
    sub_1000066C8(&qword_100030400, &unk_1000238B0);
    sub_10000A684();
    sub_100016950(&qword_100030880, &type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily, &protocol conformance descriptor for GridForecastWidgetCommon.GridForecastWidgetForFamily);
    return sub_1000218BC();
  }

  else
  {
    (*(v10 + 16))(v12, v28, v53);
    sub_100016884(v28 + v29[5], v75);
    v32 = *(v56 + 16);
    v33 = v58;
    v32(v54, v28 + v29[6], v58);
    v32(v57, v28 + v29[7], v33);
    v34 = v65;
    sub_10002128C();
    sub_10000A44C(v21);
    v35 = v59;
    v36 = v60;
    (*(v59 + 16))(v55, v34, v60);
    v37 = v61;
    sub_100020FBC();
    v38 = type metadata accessor for ForecastLocationEntity(0);
    v39 = v36;
    if ((*(*(v38 - 8) + 48))(v37, 1, v38))
    {
      sub_1000168E8(v37);
    }

    else
    {
      v44 = v51;
      v45 = v50;
      v46 = v52;
      (*(v51 + 16))(v50, v37, v52);
      sub_1000168E8(v37);
      sub_10002115C();
      v39 = v36;
      (*(v44 + 8))(v45, v46);
    }

    sub_100015700();
    v47 = v62;
    sub_10002139C();
    v48 = v63;
    v49 = v68;
    (*(v63 + 16))(v67, v47, v68);
    swift_storeEnumTagMultiPayload();
    sub_1000066C8(&qword_100030400, &unk_1000238B0);
    sub_10000A684();
    sub_100016950(&qword_100030880, &type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily, &protocol conformance descriptor for GridForecastWidgetCommon.GridForecastWidgetForFamily);
    sub_1000218BC();
    (*(v48 + 8))(v47, v49);
    return (*(v35 + 8))(v65, v39);
  }
}

uint64_t sub_100015700()
{
  v0 = sub_1000216DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002118C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000066C8(&qword_1000302A8, &unk_100022A30);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  if (qword_100030108 != -1)
  {
    swift_once();
  }

  if (byte_100030B90 != 1)
  {
    return 0;
  }

  v11 = objc_allocWithZone(NSUserDefaults);
  v12 = sub_100021B8C();
  v13 = [v11 initWithSuiteName:v12];

  if (!v13)
  {
    return 0;
  }

  v24 = v1;
  v14 = sub_100021B8C();
  v15 = [v13 BOOLForKey:v14];

  if (!v15)
  {

    return 0;
  }

  type metadata accessor for EnergyForecastWidgetEntryView(0);
  type metadata accessor for GridForecastEntry(0);
  sub_100020FBC();
  v16 = type metadata accessor for ForecastLocationEntity(0);
  if ((*(*(v16 - 8) + 48))(v10, 1, v16))
  {

    sub_1000168E8(v10);
    return 0;
  }

  (*(v5 + 16))(v7, &v10[*(v16 + 20)], v4);
  sub_1000168E8(v10);
  v18 = sub_10002115C();
  v20 = v19;
  (*(v5 + 8))(v7, v4);
  sub_1000216AC();

  v21 = sub_1000216CC();
  v22 = sub_100021C8C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v23 = 136315394;
    *(v23 + 4) = sub_10001EC04(0x7865546775626564, 0xE900000000000074, &v25);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_10001EC04(v18, v20, &v25);
    _os_log_impl(&_mh_execute_header, v21, v22, "EnergyForecastWidgetEntryView:%s will show debug text: %s", v23, 0x16u);
    swift_arrayDestroy();
  }

  (*(v24 + 8))(v3, v0);
  return v18;
}

uint64_t EnergyForecastWidget.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v32[1] = a1;
  v37 = a3;
  v3 = sub_1000066C8(&qword_100030138, &qword_100022430);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v32 - v5;
  v7 = sub_1000066C8(&qword_1000307B8, ":#");
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v32 - v8;
  v38 = sub_1000066C8(&qword_1000307C0, "N#");
  v34 = *(v38 - 8);
  __chkstk_darwin(v38);
  v11 = v32 - v10;
  v12 = sub_1000066C8(&qword_1000307C8, "n#");
  v13 = *(v12 - 8);
  v35 = v12;
  v36 = v13;
  __chkstk_darwin(v12);
  v32[0] = v32 - v14;
  type metadata accessor for EnergyForecastWidgetEntryView(0);
  sub_100016950(&qword_1000307D0, type metadata accessor for EnergyForecastWidgetEntryView, "ɘ");
  sub_100016260();

  sub_100021A9C();
  v15 = sub_1000162B4();
  sub_10002189C();
  (*(v4 + 8))(v6, v3);
  v39 = sub_1000213DC();
  v40 = v16;
  v43 = v3;
  v44 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_100009DB4();
  sub_1000218AC();

  (*(v33 + 8))(v9, v7);
  v43 = sub_1000213CC();
  v44 = v19;
  v39 = v7;
  v40 = &type metadata for String;
  v41 = OpaqueTypeConformance2;
  v42 = v18;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = v32[0];
  v22 = v38;
  sub_10002187C();

  (*(v34 + 8))(v11, v22);
  sub_1000066C8(&qword_100030338, &qword_100022AE8);
  v23 = sub_100021A5C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100022AA0;
  v28 = v27 + v26;
  v29 = *(v24 + 104);
  v29(v27 + v26, enum case for WidgetFamily.accessoryRectangular(_:), v23);
  v29(v28 + v25, enum case for WidgetFamily.systemSmall(_:), v23);
  v29(v28 + 2 * v25, enum case for WidgetFamily.systemMedium(_:), v23);
  v39 = v38;
  v40 = &type metadata for String;
  v41 = v20;
  v42 = v18;
  swift_getOpaqueTypeConformance2();
  v30 = v35;
  sub_10002188C();

  return (*(v36 + 8))(v21, v30);
}

uint64_t sub_100016154@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for EnergyForecastWidgetEntryView(0);
  sub_100016AA8(a1, a2 + *(v4 + 24));
  *a2 = swift_getKeyPath();
  sub_1000066C8(&qword_100030448, &qword_100022C30);
  swift_storeEnumTagMultiPayload();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_1000066C8(&qword_100030440, &qword_100022E10);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for EnergyForecastWidgetEntryView(uint64_t a1)
{
  result = qword_100030838;
  if (!qword_100030838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100016260()
{
  result = qword_1000307D8;
  if (!qword_1000307D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000307D8);
  }

  return result;
}

unint64_t sub_1000162B4()
{
  result = qword_100030140;
  if (!qword_100030140)
  {
    sub_100006710(&qword_100030138, &qword_100022430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030140);
  }

  return result;
}

uint64_t sub_10001636C()
{
  sub_100006710(&qword_1000307C8, "n#");
  sub_100006710(&qword_1000307C0, "N#");
  sub_100006710(&qword_1000307B8, ":#");
  sub_100006710(&qword_100030138, &qword_100022430);
  sub_1000162B4();
  swift_getOpaqueTypeConformance2();
  sub_100009DB4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000164C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000066C8(&qword_100030340, &qword_100022B60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000066C8(&qword_100030348, &qword_100022B68);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for GridForecastEntry(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100016630(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000066C8(&qword_100030340, &qword_100022B60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000066C8(&qword_100030348, &qword_100022B68);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for GridForecastEntry(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_100016794(uint64_t a1)
{
  sub_10000A3DC(319, &qword_1000303B8, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    sub_10000A3DC(319, &unk_1000303C0, &type metadata accessor for WidgetFamily);
    if (v2 <= 0x3F)
    {
      type metadata accessor for GridForecastEntry(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100016884(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000168E8(uint64_t a1)
{
  v2 = sub_1000066C8(&qword_1000302A8, &unk_100022A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100016950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000169E0(uint64_t a1)
{
  v2 = sub_100021A4C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000217AC();
}

uint64_t sub_100016AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridForecastEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100016B5C()
{
  result = qword_100030888;
  if (!qword_100030888)
  {
    sub_100006710(&qword_100030890, &unk_100023930);
    sub_10000A684();
    sub_100016950(&qword_100030880, &type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily, &protocol conformance descriptor for GridForecastWidgetCommon.GridForecastWidgetForFamily);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030888);
  }

  return result;
}

uint64_t sub_100016C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002121C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_10002113C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100016D78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10002121C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_10002113C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for GridForecastEntry(uint64_t a1)
{
  result = qword_1000308F0;
  if (!qword_1000308F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100016EEC(uint64_t a1)
{
  sub_10002121C();
  if (v1 <= 0x3F)
  {
    sub_100016FC8();
    if (v2 <= 0x3F)
    {
      sub_10002113C();
      if (v3 <= 0x3F)
      {
        sub_10000C66C();
        if (v4 <= 0x3F)
        {
          type metadata accessor for CGSize();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_100016FC8()
{
  result = qword_100030900;
  if (!qword_100030900)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100030900);
  }

  return result;
}

uint64_t sub_10001702C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1000212BC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000170F0, 0, 0);
}

uint64_t sub_1000170F0()
{
  sub_1000213EC();
  *(v0 + 64) = sub_10002162C();
  sub_10002164C();
  *(v0 + 72) = sub_10002163C();
  sub_10001C774(&qword_1000302E8, &type metadata accessor for WidgetActor, &protocol conformance descriptor for WidgetActor);
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_1000171C8, v2, v1);
}

uint64_t sub_1000171C8()
{

  *(v0 + 80) = sub_10002161C();

  return _swift_task_switch(sub_100017238, 0, 0);
}

uint64_t sub_100017238()
{
  sub_100021C6C();
  *(v0 + 88) = sub_100021C5C();
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_1000172CC, v2, v1);
}

uint64_t sub_1000172CC()
{

  *(v0 + 96) = sub_1000215EC();

  return _swift_task_switch(sub_100017344, 0, 0);
}

uint64_t sub_100017344()
{
  v1 = *(v0 + 96);
  if (v1 && ((v2 = [*(v0 + 96) homes], sub_10000E9F4(), v3 = sub_100021C0C(), v2, v3 >> 62) ? (v4 = sub_100021D8C()) : (v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10)), (, v5 = objc_msgSend(v1, "hasOptedToHH2"), v4) ? (v6 = v5 == 0) : (v6 = 0), v6))
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  v22 = v7;
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 40);
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);
  sub_10002129C();
  v13 = type metadata accessor for GridForecastEntry(0);
  v14 = (v12 + v13[5]);
  v14[3] = sub_10002121C();
  v14[4] = sub_10001C774(&qword_100030958, &type metadata accessor for GridForecastSnapshot, &protocol conformance descriptor for GridForecastSnapshot);
  sub_10001C6E8(v14);
  sub_10002129C();
  sub_1000212AC();
  sub_10002127C();
  sub_100021ACC();
  v16 = v15;
  v18 = v17;

  (*(v9 + 8))(v8, v10);
  *(v12 + v13[8]) = v11;
  *(v12 + v13[9]) = v22;
  v19 = (v12 + v13[10]);
  *v19 = v16;
  v19[1] = v18;

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100017558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for GridForecastEntry(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_1000212BC();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  sub_1000066C8(&qword_100030968, &qword_100023A88);
  v3[12] = swift_task_alloc();
  v6 = sub_1000211EC();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v7 = sub_100021A8C();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v8 = sub_10002121C();
  v3[21] = v8;
  v3[22] = *(v8 - 8);
  v3[23] = swift_task_alloc();
  v9 = sub_1000216DC();
  v3[24] = v9;
  v3[25] = *(v9 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_100017844, 0, 0);
}

uint64_t sub_100017844(uint64_t a1)
{
  v18 = v1;
  sub_1000216AC();

  v2 = sub_1000216CC();
  v3 = sub_100021CBC();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[27];
  v6 = v1[24];
  v7 = v1[25];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_10001EC04(0xD000000000000011, 0x8000000100024300, &v17);
    *(v8 + 12) = 2080;
    v9 = sub_1000060D0();
    v11 = sub_10001EC04(v9, v10, &v17);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s resolving forecastSnapshot type for configuration: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[28] = v12;
  v13 = swift_task_alloc();
  v1[29] = v13;
  *v13 = v1;
  v13[1] = sub_100017A44;
  v14 = v1[23];
  v15 = v1[4];

  return sub_1000185B0(v14, v15);
}

uint64_t sub_100017A44()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_100018044;
  }

  else
  {
    v2 = sub_100017B58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100017B58()
{
  v0[31] = sub_1000213FC();
  v0[32] = sub_10002162C();
  sub_10002164C();
  v0[33] = sub_10002163C();
  sub_10001C774(&qword_1000302E8, &type metadata accessor for WidgetActor, &protocol conformance descriptor for WidgetActor);
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_100017C38, v2, v1);
}

uint64_t sub_100017C38()
{

  *(v0 + 272) = sub_10002161C();

  return _swift_task_switch(sub_100017CA8, 0, 0);
}

uint64_t sub_100017CA8()
{
  sub_100021C6C();
  *(v0 + 280) = sub_100021C5C();
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_100017D3C, v2, v1);
}

uint64_t sub_100017D3C()
{

  *(v0 + 288) = sub_1000215EC();

  return _swift_task_switch(sub_100017DB4, 0, 0);
}

uint64_t sub_100017DB4()
{
  v1 = v0[36];
  if (v1 && ((v2 = [v1 homes], sub_10000E9F4(), v3 = sub_100021C0C(), v2, v3 >> 62) ? (v4 = sub_100021D8C()) : (v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10)), (, v5 = objc_msgSend(v1, "hasOptedToHH2"), v4) ? (v6 = v5 == 0) : (v6 = 0), v6))
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  v8 = v0[31];
  v9 = v0[22];
  v19 = v0[21];
  v20 = v0[23];
  v10 = v0[19];
  v11 = v0[17];
  v17 = v0[16];
  v18 = v0[20];
  v12 = v0[5];
  v13 = v0[4];
  v14 = swift_task_alloc();
  *(v14 + 16) = v13;
  *(v14 + 24) = v7;
  *(v14 + 32) = v12;
  sub_10001CE2C(sub_10001C74C, v14, v8);

  (*(v11 + 16))(v10, v18, v17);
  sub_10001C774(&qword_100030948, type metadata accessor for GridForecastEntry, &unk_10002399C);
  sub_100021B0C();

  (*(v11 + 8))(v18, v17);
  (*(v9 + 8))(v20, v19);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100018044(uint64_t a1)
{
  v45 = v1;
  sub_1000216AC();
  swift_errorRetain();
  v2 = sub_1000216CC();
  v3 = sub_100021C9C();

  if (os_log_type_enabled(v2, v3))
  {
    v42 = v1[28];
    v4 = v1[26];
    v5 = v1[24];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v44 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_10001EC04(0xD000000000000011, 0x8000000100024300, &v44);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s:ERROR: %@", v6, 0x16u);
    sub_100008C70(v7, &qword_1000302F0, &qword_100022A70);

    sub_100008C24(v8);

    v42(v4, v5);
  }

  else
  {
    v10 = v1[28];
    v11 = v1[26];
    v12 = v1[24];

    v10(v11, v12);
  }

  v13 = v1[14];
  v1[2] = v1[30];
  swift_errorRetain();
  sub_1000066C8(&qword_100030970, &unk_100023A98);
  v14 = swift_dynamicCast();
  v15 = *(v13 + 56);
  v17 = v1[14];
  v16 = v1[15];
  v19 = v1[12];
  v18 = v1[13];
  if (v14)
  {
    v15(v1[12], 0, 1, v1[13]);
    (*(v17 + 32))(v16, v19, v18);
  }

  else
  {
    v15(v1[12], 1, 1, v1[13]);
    (*(v17 + 104))(v16, enum case for GridForecastError.otherError(_:), v18);
  }

  v20 = v1[21];
  v35 = v1[19];
  v36 = v1[18];
  v21 = v1[17];
  v38 = v1[15];
  v41 = v1[14];
  v43 = v1[13];
  v22 = v1[11];
  v23 = v1[8];
  v39 = v1[10];
  v40 = v1[9];
  v24 = v1[6];
  v25 = v1[7];
  v26 = v1[4];
  v37 = v1[16];
  sub_10002138C();
  sub_10002129C();
  v27 = (v23 + v24[5]);
  v27[3] = v20;
  v27[4] = sub_10001C774(&qword_100030958, &type metadata accessor for GridForecastSnapshot, &protocol conformance descriptor for GridForecastSnapshot);
  sub_10001C6E8(v27);
  sub_10002129C();
  sub_1000212AC();
  sub_10002127C();
  sub_100021ACC();
  *(v23 + v24[8]) = v26;
  *(v23 + v24[9]) = 3;
  v28 = (v23 + v24[10]);
  *v28 = v29;
  v28[1] = v30;
  sub_1000066C8(&qword_100030960, &qword_100023A78);
  v31 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100022E90;
  sub_100016AA8(v23, v32 + v31);
  (*(v21 + 16))(v36, v35, v37);
  sub_10001C774(&qword_100030948, type metadata accessor for GridForecastEntry, &unk_10002399C);

  sub_100021B0C();

  (*(v21 + 8))(v35, v37);
  (*(v39 + 8))(v22, v40);
  (*(v41 + 8))(v38, v43);
  sub_10001C7BC(v23, type metadata accessor for GridForecastEntry);

  v33 = v1[1];

  return v33();
}

uint64_t sub_1000185B0(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1000215DC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_10002118C();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  sub_1000066C8(&qword_1000302E0, &qword_100022A68);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v5 = sub_10002147C();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = sub_1000216DC();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  sub_1000066C8(&qword_1000302A8, &unk_100022A30);
  v2[29] = swift_task_alloc();
  v7 = type metadata accessor for ForecastLocationEntity(0);
  v2[30] = v7;
  v2[31] = *(v7 - 8);
  v2[32] = swift_task_alloc();
  sub_100021C6C();
  v2[33] = sub_100021C5C();
  v9 = sub_100021C4C();
  v2[34] = v9;
  v2[35] = v8;

  return _swift_task_switch(sub_1000188FC, v9, v8);
}

uint64_t sub_1000188FC(uint64_t a1)
{
  v61 = v1;
  v2 = v1[30];
  v3 = v1[31];
  v4 = v1[29];
  sub_100020FBC();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v1[29];

    sub_100008C70(v5, &qword_1000302A8, &unk_100022A30);
    sub_1000216AC();
    v6 = sub_1000216CC();
    v7 = sub_100021C9C();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v1[20];
    v9 = v1[21];
    v11 = v1[19];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v60[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v60);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s: Widget configuration has no entity (home not found)", v12, 0xCu);
      sub_100008C24(v13);
    }

    (*(v10 + 8))(v9, v11);
    v14 = sub_1000211EC();
    sub_10001C774(&qword_100030978, &type metadata accessor for GridForecastError, &protocol conformance descriptor for GridForecastError);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, enum case for GridForecastError.homeNotFound(_:), v14);
    swift_willThrow();

    v16 = v1[1];

    return v16();
  }

  else
  {
    v18 = v1[32];
    v19 = v1[30];
    sub_100008CD0(v1[29], v18);
    sub_100020F7C();
    v21 = v1[2];
    v20 = v1[3];
    v22 = v18 + *(v19 + 28);
    v23 = *v22;
    v1[36] = *v22;
    v1[37] = *(v22 + 8);
    v24 = *(v22 + 16);
    if (v24)
    {
      if (v24 == 1)
      {
        v25 = v23;
        sub_1000216AC();

        v26 = sub_1000216CC();
        v27 = sub_100021CBC();

        v28 = os_log_type_enabled(v26, v27);
        v29 = v1[28];
        v31 = v1[19];
        v30 = v1[20];
        if (v28)
        {
          v59 = v25;
          v32 = swift_slowAlloc();
          v60[0] = swift_slowAlloc();
          *v32 = 136315394;
          *(v32 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v60);
          *(v32 + 12) = 2080;
          *(v32 + 14) = sub_10001EC04(v21, v20, v60);
          _os_log_impl(&_mh_execute_header, v26, v27, "%s: Widget configuration is for static location: %s", v32, 0x16u);
          swift_arrayDestroy();

          v25 = v59;

          (*(v30 + 8))(v29, v31);
        }

        else
        {

          (*(v30 + 8))(v29, v31);
        }

        v53 = v1[15];
        v54 = v1[9];
        v55 = v1[10];
        (*(v1[17] + 104))(v1[18], enum case for GridForecastSnapshotManager.SnapshotManagerType.widgetSingleShot(_:), v1[16]);
        (*(v55 + 56))(v53, 1, 1, v54);
        sub_10002149C();
        swift_allocObject();
        v56 = v25;
        v1[38] = sub_10002148C();
        v57 = swift_task_alloc();
        v1[39] = v57;
        *v57 = v1;
        v57[1] = sub_1000191C8;
        v58 = v1[4];

        return GridForecastSnapshotManager.retrieveFixedSnapshot()(v58);
      }

      else
      {

        sub_1000216AC();
        v40 = sub_1000216CC();
        v41 = sub_100021CBC();
        v42 = os_log_type_enabled(v40, v41);
        v43 = v1[22];
        v44 = v1[19];
        v45 = v1[20];
        if (v42)
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v60[0] = v47;
          *v46 = 136315138;
          *(v46 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v60);
          _os_log_impl(&_mh_execute_header, v40, v41, "%s: Widget configuration is for current location.", v46, 0xCu);
          sub_100008C24(v47);
        }

        (*(v45 + 8))(v43, v44);
        v48 = v1[15];
        v49 = v1[9];
        v50 = v1[10];
        (*(v1[17] + 104))(v1[18], enum case for GridForecastSnapshotManager.SnapshotManagerType.widgetSingleShot(_:), v1[16]);
        (*(v50 + 56))(v48, 1, 1, v49);
        sub_10002149C();
        swift_allocObject();
        v1[58] = sub_10002148C();
        v51 = swift_task_alloc();
        v1[59] = v51;
        *v51 = v1;
        v51[1] = sub_10001AB0C;
        v52 = v1[4];

        return GridForecastSnapshotManager.retrieveImmediateLocationSnapshotForWidget()(v52);
      }
    }

    else
    {
      v33 = v1[32];
      v34 = v1[13];
      v35 = v1[9];
      v36 = v1[10];

      v37 = *(v36 + 16);
      v1[40] = v37;
      v1[41] = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v37(v34, v33, v35);
      v1[42] = sub_10002162C();
      v1[43] = sub_10002164C();
      v1[44] = sub_10002163C();
      v1[45] = sub_10001C774(&qword_1000302E8, &type metadata accessor for WidgetActor, &protocol conformance descriptor for WidgetActor);
      v39 = sub_100021C4C();

      return _swift_task_switch(sub_10001946C, v39, v38);
    }
  }
}

uint64_t sub_1000191C8()
{
  v1 = *v0;

  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return _swift_task_switch(sub_1000192E8, v3, v2);
}

uint64_t sub_1000192E8()
{
  v1 = v0[37];
  v2 = v0[36];

  sub_10001C81C(v2, v1, 1);
  sub_10001C7BC(v0[32], type metadata accessor for ForecastLocationEntity);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10001946C()
{

  v0[46] = sub_10002161C();
  v1 = v0[34];
  v2 = v0[35];

  return _swift_task_switch(sub_1000194DC, v1, v2);
}

uint64_t sub_1000194DC(uint64_t a1)
{
  v37 = v1;
  v2 = sub_1000215EC();
  v1[47] = v2;

  if (v2)
  {
    v1[48] = sub_10002163C();
    v4 = sub_100021C4C();

    return _swift_task_switch(sub_10001994C, v4, v3);
  }

  else
  {

    v5 = v1[40];
    v6 = v1[13];
    v7 = v1[11];
    v8 = v1[9];
    sub_1000216AC();
    v5(v7, v6, v8);
    v9 = sub_1000216CC();
    v10 = sub_100021CBC();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v1[23];
    v14 = v1[19];
    v13 = v1[20];
    v16 = v1[10];
    v15 = v1[11];
    v17 = v1[9];
    if (v11)
    {
      v33 = v10;
      v18 = swift_slowAlloc();
      v36[0] = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v36);
      *(v18 + 12) = 2080;
      v35 = v14;
      v19 = sub_10002115C();
      v34 = v12;
      v21 = v20;
      v22 = v17;
      v23 = *(v16 + 8);
      v23(v15, v22);
      v24 = sub_10001EC04(v19, v21, v36);

      *(v18 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v9, v33, "%s: Widget configuration could not find %s", v18, 0x16u);
      swift_arrayDestroy();

      v25 = v23;

      (*(v13 + 8))(v34, v35);
    }

    else
    {

      v25 = *(v16 + 8);
      v25(v15, v17);
      (*(v13 + 8))(v12, v14);
    }

    v26 = v1[32];
    v27 = v1[13];
    v28 = v1[9];
    v29 = sub_1000211EC();
    sub_10001C774(&qword_100030978, &type metadata accessor for GridForecastError, &protocol conformance descriptor for GridForecastError);
    swift_allocError();
    (*(*(v29 - 8) + 104))(v30, enum case for GridForecastError.homeNotFound(_:), v29);
    swift_willThrow();
    v25(v27, v28);
    sub_10001C7BC(v26, type metadata accessor for ForecastLocationEntity);

    v31 = v1[1];

    return v31();
  }
}

uint64_t sub_10001994C()
{

  v0[49] = sub_10002161C();
  v1 = v0[34];
  v2 = v0[35];

  return _swift_task_switch(sub_1000199BC, v1, v2);
}

uint64_t sub_1000199BC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  (*(v0 + 320))(v1, *(v0 + 104), v2);
  v4 = *(v3 + 56);
  *(v0 + 400) = v4;
  *(v0 + 408) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 0, 1, v2);
  v5 = swift_task_alloc();
  *(v0 + 416) = v5;
  *v5 = v0;
  v5[1] = sub_100019AA8;
  v6 = *(v0 + 112);
  v7 = *(v0 + 64);

  return WidgetDataModel.home(_:)(v7, v6);
}

uint64_t sub_100019AA8()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 112);
  if (v0)
  {

    sub_100008C70(v4, &qword_1000302E0, &qword_100022A68);
    v5 = *(v3 + 272);
    v6 = *(v3 + 280);
    v7 = sub_10001AD9C;
  }

  else
  {
    sub_100008C70(v4, &qword_1000302E0, &qword_100022A68);

    v5 = *(v3 + 272);
    v6 = *(v3 + 280);
    v7 = sub_100019C38;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100019C38()
{
  v116 = v0;
  v1.super.isa = *(v0 + 376);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = sub_1000215BC(v1);
  *(v0 + 424) = v5;
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v6 = *(v0 + 320);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v9 = *(v0 + 72);
    sub_1000216AC();
    v6(v8, v7, v9);
    v10 = v5;
    v11 = sub_1000216CC();
    v12 = sub_100021CBC();

    v107 = v12;
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 216);
    v15 = *(v0 + 160);
    v111 = *(v0 + 152);
    v113 = v10;
    v16 = *(v0 + 96);
    v18 = *(v0 + 72);
    v17 = *(v0 + 80);
    v103 = v5;
    if (v13)
    {
      v101 = *(v0 + 216);
      v19 = swift_slowAlloc();
      log = v11;
      v20 = swift_slowAlloc();
      v115[0] = swift_slowAlloc();
      *v19 = 136315650;
      *(v19 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v115);
      *(v19 + 12) = 2112;
      *(v19 + 14) = v10;
      *v20 = v5;
      *(v19 + 22) = 2080;
      v21 = v10;
      v22 = sub_10002115C();
      v24 = v23;
      v25 = *(v17 + 8);
      v25(v16, v18);
      v26 = v22;
      v10 = v113;
      v27 = sub_10001EC04(v26, v24, v115);

      *(v19 + 24) = v27;
      _os_log_impl(&_mh_execute_header, log, v107, "%s: Widget configuration is for a home: %@ with ID: %s", v19, 0x20u);
      sub_100008C70(v20, &qword_1000302F0, &qword_100022A70);

      swift_arrayDestroy();

      v28 = *(v15 + 8);
      v28(v101, v111);
    }

    else
    {

      v25 = *(v17 + 8);
      v25(v16, v18);
      v28 = *(v15 + 8);
      v28(v14, v111);
    }

    *(v0 + 432) = v25;
    v51 = [v10 location];
    v112 = v51;
    if (v51)
    {
      v52 = v51;
      v109 = v28;
      sub_1000216AC();
      v53 = v52;
      v54 = sub_1000216CC();
      v55 = sub_100021C7C();

      v56 = os_log_type_enabled(v54, v55);
      v57 = *(v0 + 208);
      v58 = *(v0 + 152);
      if (v56)
      {
        v105 = *(v0 + 208);
        v59 = swift_slowAlloc();
        v115[0] = swift_slowAlloc();
        *v59 = 136315394;
        *(v59 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v115);
        *(v59 + 12) = 2080;
        v60 = sub_10002167C();
        v62 = sub_10001EC04(v60, v61, v115);

        *(v59 + 14) = v62;
        _os_log_impl(&_mh_execute_header, v54, v55, "%s: Home location found...%s", v59, 0x16u);
        swift_arrayDestroy();

        v63 = v105;
      }

      else
      {

        v63 = v57;
      }

      v109(v63, v58);
      sub_1000216AC();
      v74 = v53;
      v75 = sub_1000216CC();
      v76 = sub_100021C8C();

      v77 = os_log_type_enabled(v75, v76);
      v78 = *(v0 + 200);
      v79 = *(v0 + 152);
      if (v77)
      {
        v80 = swift_slowAlloc();
        v106 = v78;
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v115[0] = v82;
        *v80 = 136315394;
        *(v80 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v115);
        *(v80 + 12) = 2112;
        *(v80 + 14) = v74;
        *v81 = v112;
        v74 = v74;
        _os_log_impl(&_mh_execute_header, v75, v76, "\t...%s:%@", v80, 0x16u);
        sub_100008C70(v81, &qword_1000302F0, &qword_100022A70);

        sub_100008C24(v82);

        v83 = v79;
        v84 = v112;
        v109(v106, v83);
      }

      else
      {

        v109(v78, v79);
        v84 = v112;
      }
    }

    else
    {
      sub_1000216AC();
      v64 = v10;
      v65 = sub_1000216CC();
      v66 = sub_100021C9C();

      v67 = os_log_type_enabled(v65, v66);
      v68 = *(v0 + 192);
      v69 = *(v0 + 152);
      if (v67)
      {
        v110 = v28;
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v115[0] = v72;
        *v70 = 136315394;
        *(v70 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v115);
        *(v70 + 12) = 2112;
        *(v70 + 14) = v64;
        *v71 = v103;
        v73 = v64;
        _os_log_impl(&_mh_execute_header, v65, v66, "%s: Home location disappeared, no longer valid: %@", v70, 0x16u);
        sub_100008C70(v71, &qword_1000302F0, &qword_100022A70);

        sub_100008C24(v72);

        v110(v68, v69);
      }

      else
      {

        v28(v68, v69);
      }

      v74 = sub_10002166C();
      v84 = 0;
    }

    *(v0 + 440) = v74;
    v102 = *(v0 + 400);
    v92 = *(v0 + 320);
    v93 = *(v0 + 120);
    v94 = *(v0 + 104);
    v95 = *(v0 + 72);
    (*(*(v0 + 136) + 104))(*(v0 + 144), enum case for GridForecastSnapshotManager.SnapshotManagerType.widgetSingleShot(_:), *(v0 + 128));
    v96 = v84;
    v97 = [v113 name];
    sub_100021B9C();

    v92(v93, v94, v95);
    v102(v93, 0, 1, v95);
    sub_10002149C();
    swift_allocObject();
    *(v0 + 448) = sub_10002148C();
    v98 = swift_task_alloc();
    *(v0 + 456) = v98;
    *v98 = v0;
    v98[1] = sub_10001A848;
    v99 = *(v0 + 32);

    return GridForecastSnapshotManager.retrieveFixedSnapshot()(v99);
  }

  else
  {
    v29 = *(v0 + 376);

    v30 = *(v0 + 320);
    v31 = *(v0 + 104);
    v32 = *(v0 + 88);
    v33 = *(v0 + 72);
    sub_1000216AC();
    v30(v32, v31, v33);
    v34 = sub_1000216CC();
    v35 = sub_100021CBC();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 184);
    v39 = *(v0 + 152);
    v38 = *(v0 + 160);
    v41 = *(v0 + 80);
    v40 = *(v0 + 88);
    v42 = *(v0 + 72);
    if (v36)
    {
      v104 = v35;
      v43 = swift_slowAlloc();
      v115[0] = swift_slowAlloc();
      *v43 = 136315394;
      *(v43 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v115);
      *(v43 + 12) = 2080;
      v114 = v39;
      v44 = sub_10002115C();
      v108 = v37;
      v46 = v45;
      v47 = v42;
      v48 = *(v41 + 8);
      v48(v40, v47);
      v49 = sub_10001EC04(v44, v46, v115);

      *(v43 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v34, v104, "%s: Widget configuration could not find %s", v43, 0x16u);
      swift_arrayDestroy();

      v50 = v48;

      (*(v38 + 8))(v108, v114);
    }

    else
    {

      v50 = *(v41 + 8);
      v50(v40, v42);
      (*(v38 + 8))(v37, v39);
    }

    v85 = *(v0 + 256);
    v86 = *(v0 + 104);
    v87 = *(v0 + 72);
    v88 = sub_1000211EC();
    sub_10001C774(&qword_100030978, &type metadata accessor for GridForecastError, &protocol conformance descriptor for GridForecastError);
    swift_allocError();
    (*(*(v88 - 8) + 104))(v89, enum case for GridForecastError.homeNotFound(_:), v88);
    swift_willThrow();
    v50(v86, v87);
    sub_10001C7BC(v85, type metadata accessor for ForecastLocationEntity);

    v90 = *(v0 + 8);

    return v90();
  }
}

uint64_t sub_10001A848()
{
  v1 = *v0;

  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return _swift_task_switch(sub_10001A968, v3, v2);
}

uint64_t sub_10001A968()
{
  v1 = v0[55];
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[47];
  v5 = v0[13];
  v6 = v0[9];

  v2(v5, v6);
  sub_10001C7BC(v0[32], type metadata accessor for ForecastLocationEntity);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10001AB0C()
{
  v1 = *v0;

  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return _swift_task_switch(sub_10001AC2C, v3, v2);
}

uint64_t sub_10001AC2C()
{

  sub_10001C7BC(*(v0 + 256), type metadata accessor for ForecastLocationEntity);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001AD9C()
{
  v34 = v0;
  v1 = v0[47];

  v2 = v0[40];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[9];
  sub_1000216AC();
  v2(v4, v3, v5);
  v6 = sub_1000216CC();
  v7 = sub_100021CBC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[23];
  v11 = v0[19];
  v10 = v0[20];
  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[9];
  if (v8)
  {
    v30 = v7;
    v15 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v33);
    *(v15 + 12) = 2080;
    v32 = v11;
    v16 = sub_10002115C();
    v31 = v9;
    v18 = v17;
    v19 = v14;
    v20 = *(v13 + 8);
    v20(v12, v19);
    v21 = sub_10001EC04(v16, v18, v33);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v6, v30, "%s: Widget configuration could not find %s", v15, 0x16u);
    swift_arrayDestroy();

    v22 = v20;

    (*(v10 + 8))(v31, v32);
  }

  else
  {

    v22 = *(v13 + 8);
    v22(v12, v14);
    (*(v10 + 8))(v9, v11);
  }

  v23 = v0[32];
  v24 = v0[13];
  v25 = v0[9];
  v26 = sub_1000211EC();
  sub_10001C774(&qword_100030978, &type metadata accessor for GridForecastError, &protocol conformance descriptor for GridForecastError);
  swift_allocError();
  (*(*(v26 - 8) + 104))(v27, enum case for GridForecastError.homeNotFound(_:), v26);
  swift_willThrow();
  v22(v24, v25);
  sub_10001C7BC(v23, type metadata accessor for ForecastLocationEntity);

  v28 = v0[1];

  return v28();
}

uint64_t sub_10001B184@<X0>(uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_10002129C();
  v7 = type metadata accessor for GridForecastEntry(0);
  v8 = (a4 + v7[5]);
  v8[3] = sub_10002121C();
  v8[4] = sub_10001C774(&qword_100030958, &type metadata accessor for GridForecastSnapshot, &protocol conformance descriptor for GridForecastSnapshot);
  sub_10001C6E8(v8);
  sub_10002129C();
  sub_1000212AC();
  sub_10002127C();
  sub_100021ACC();
  *(a4 + v7[8]) = a2;
  *(a4 + v7[9]) = a3;
  v9 = (a4 + v7[10]);
  *v9 = v10;
  v9[1] = v11;
}

uint64_t sub_10001B284@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000212BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000213BC();
  sub_10002129C();
  v6 = type metadata accessor for GridForecastEntry(0);
  v7 = (a1 + v6[5]);
  v7[3] = sub_10002121C();
  v7[4] = sub_10001C774(&qword_100030958, &type metadata accessor for GridForecastSnapshot, &protocol conformance descriptor for GridForecastSnapshot);
  sub_10001C6E8(v7);
  sub_10002129C();
  sub_1000212AC();
  sub_10002127C();
  v8 = sub_10000861C();
  sub_100021ACC();
  v10 = v9;
  v12 = v11;
  result = (*(v3 + 8))(v5, v2);
  *(a1 + v6[8]) = v8;
  *(a1 + v6[9]) = 3;
  v14 = (a1 + v6[10]);
  *v14 = v10;
  v14[1] = v12;
  return result;
}

uint64_t sub_10001B42C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008D7C;

  return sub_10001702C(a1, v6, a3);
}

uint64_t sub_10001B4DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008D7C;

  return sub_100017558(a1, v6, a3);
}

uint64_t sub_10001B59C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_1000066C8(&qword_100030980, &qword_100023AB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_10002159C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000066C8(&qword_100030988, &qword_100023AB8);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_10002157C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002120C();
  type metadata accessor for GridForecastEntry(0);
  v22 = v1;
  sub_10002158C();
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100008C70(v11, &qword_100030988, &qword_100023AB8);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_10002156C();
    v16 = sub_10002113C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v4, 1, v16) != 1)
    {
      sub_10002110C();
      (*(v17 + 8))(v4, v16);
      v19 = v23;
      sub_100021AAC();
      (*(v13 + 8))(v15, v12);
      v18 = 0;
      goto LABEL_7;
    }

    sub_100008C70(v4, &qword_100030980, &qword_100023AB0);
    (*(v13 + 8))(v15, v12);
  }

  v18 = 1;
  v19 = v23;
LABEL_7:
  v20 = sub_100021ABC();
  return (*(*(v20 - 8) + 56))(v19, v18, 1, v20);
}

uint64_t sub_10001B958()
{
  sub_100021D1C(91);
  v1._countAndFlagsBits = 0xD000000000000013;
  v1._object = 0x8000000100024710;
  sub_100021BCC(v1);
  type metadata accessor for GridForecastEntry(0);
  v2._countAndFlagsBits = sub_10002112C();
  sub_100021BCC(v2);

  v3._object = 0x8000000100024730;
  v3._countAndFlagsBits = 0xD000000000000011;
  sub_100021BCC(v3);
  v4._countAndFlagsBits = sub_1000060D0();
  sub_100021BCC(v4);

  v5._countAndFlagsBits = 0xD000000000000018;
  v5._object = 0x8000000100024750;
  sub_100021BCC(v5);
  v6._countAndFlagsBits = sub_1000211FC();
  sub_100021BCC(v6);

  v7._countAndFlagsBits = 0xD000000000000017;
  v7._object = 0x8000000100024770;
  sub_100021BCC(v7);
  v8._countAndFlagsBits = sub_10002112C();
  sub_100021BCC(v8);

  return 0;
}

uint64_t sub_10001BAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_10002113C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10001BB7C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v44 = a2;
  v45 = a1;
  v6 = type metadata accessor for GridForecastEntry(0);
  __chkstk_darwin(v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000211EC();
  v40 = *(v9 - 8);
  v41 = v9;
  __chkstk_darwin(v9);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100021A8C();
  v38 = *(v12 - 8);
  v39 = v12;
  __chkstk_darwin(v12);
  v37 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000212BC();
  v42 = *(v14 - 8);
  v43 = v14;
  __chkstk_darwin(v14);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000216DC();
  v17 = *(v36 - 8);
  __chkstk_darwin(v36);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000216AC();
  v20 = sub_1000216CC();
  v21 = sub_100021C9C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v34[1] = a4;
    v23 = v22;
    v24 = swift_slowAlloc();
    v35 = a3;
    v25 = v24;
    v46 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_10001EC04(0xD00000000000001FLL, 0x80000001000242E0, &v46);
    _os_log_impl(&_mh_execute_header, v20, v21, "%s THIS SHOULD NEVER GET CALLED", v23, 0xCu);
    sub_100008C24(v25);
    a3 = v35;
  }

  (*(v17 + 8))(v19, v36);
  v27 = v40;
  v26 = v41;
  (*(v40 + 104))(v11, enum case for GridForecastError.otherError(_:), v41);
  v28 = v37;
  sub_10002138C();
  (*(v27 + 8))(v11, v26);
  (*(v38 + 8))(v28, v39);
  sub_10002129C();
  v29 = &v8[v6[5]];
  v29[3] = sub_10002121C();
  v29[4] = sub_10001C774(&qword_100030958, &type metadata accessor for GridForecastSnapshot, &protocol conformance descriptor for GridForecastSnapshot);
  sub_10001C6E8(v29);
  sub_10002129C();
  sub_1000212AC();
  sub_10002127C();
  sub_100021ACC();
  *&v8[v6[8]] = v45;
  v8[v6[9]] = 3;
  v30 = &v8[v6[10]];
  *v30 = v31;
  *(v30 + 1) = v32;

  a3(v8);
  (*(v42 + 8))(v16, v43);
  return sub_10001C7BC(v8, type metadata accessor for GridForecastEntry);
}

uint64_t sub_10001C048(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v55 = a4;
  v56 = a3;
  v49 = a2;
  v52 = a1;
  v4 = sub_1000066C8(&qword_100030950, &qword_100023A70);
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v51 = &v40 - v5;
  v6 = type metadata accessor for GridForecastEntry(0);
  v47 = *(v6 - 1);
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000211EC();
  v42 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100021A8C();
  v48 = *(v50 - 8);
  v12 = __chkstk_darwin(v50);
  v43 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v46 = &v40 - v14;
  v15 = sub_1000212BC();
  v44 = *(v15 - 8);
  v45 = v15;
  __chkstk_darwin(v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000216DC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000216AC();
  v22 = sub_1000216CC();
  v23 = sub_100021C9C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v40 = v18;
    v25 = v24;
    v26 = swift_slowAlloc();
    v41 = v9;
    v27 = v26;
    v57 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_10001EC04(0xD00000000000001FLL, 0x80000001000242C0, &v57);
    _os_log_impl(&_mh_execute_header, v22, v23, "%s THIS SHOULD NEVER GET CALLED", v25, 0xCu);
    sub_100008C24(v27);
    v9 = v41;

    (*(v19 + 8))(v21, v40);
  }

  else
  {

    (*(v19 + 8))(v21, v18);
  }

  v28 = v42;
  (*(v42 + 104))(v11, enum case for GridForecastError.otherError(_:), v9);
  v29 = v46;
  sub_10002138C();
  (*(v28 + 8))(v11, v9);
  sub_10002129C();
  v30 = &v8[v6[5]];
  v30[3] = sub_10002121C();
  v30[4] = sub_10001C774(&qword_100030958, &type metadata accessor for GridForecastSnapshot, &protocol conformance descriptor for GridForecastSnapshot);
  sub_10001C6E8(v30);
  sub_10002129C();
  sub_1000212AC();
  sub_10002127C();
  sub_100021ACC();
  *&v8[v6[8]] = v52;
  v8[v6[9]] = 3;
  v31 = &v8[v6[10]];
  *v31 = v32;
  *(v31 + 1) = v33;
  sub_1000066C8(&qword_100030960, &qword_100023A78);
  v34 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100022E90;
  sub_100016AA8(v8, v35 + v34);
  v36 = v48;
  v37 = v50;
  (*(v48 + 16))(v43, v29, v50);
  sub_10001C774(&qword_100030948, type metadata accessor for GridForecastEntry, &unk_10002399C);

  v38 = v51;
  sub_100021B0C();
  v56(v38);
  (*(v53 + 8))(v38, v54);
  (*(v36 + 8))(v29, v37);
  (*(v44 + 8))(v17, v45);
  return sub_10001C7BC(v8, type metadata accessor for GridForecastEntry);
}

uint64_t *sub_10001C6E8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10001C774(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001C7BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10001C81C(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

unint64_t BlockOutError.description.getter(char a1)
{
  if (!a1)
  {
    return 0xD00000000000002BLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000026;
  }

  return 0xD00000000000001CLL;
}

Swift::Int BlockOutError.hashValue.getter(unsigned __int8 a1)
{
  sub_100021DFC();
  sub_100021E0C(a1);
  return sub_100021E1C();
}

Swift::Int sub_10001C928()
{
  v1 = *v0;
  sub_100021DFC();
  sub_100021E0C(v1);
  return sub_100021E1C();
}

Swift::Int sub_10001C99C(uint64_t a1)
{
  v2 = *v1;
  sub_100021DFC();
  sub_100021E0C(v2);
  return sub_100021E1C();
}

unint64_t sub_10001C9E4()
{
  result = qword_100030990;
  if (!qword_100030990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030990);
  }

  return result;
}

uint64_t sub_10001CA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002113C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000212EC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10001CBB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10002113C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000212EC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for HistoricalUsageEntry(uint64_t a1)
{
  result = qword_1000309F0;
  if (!qword_1000309F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001CD08(uint64_t a1)
{
  sub_10002113C();
  if (v1 <= 0x3F)
  {
    sub_1000212EC();
    if (v2 <= 0x3F)
    {
      sub_10000C66C();
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void *sub_10001CE94(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v26 = a7;
  v27 = a1;
  v10 = v7;
  v28 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - v14;
  v16 = *(a3 + 16);
  v17 = _swiftEmptyArrayStorage;
  if (!v16)
  {
    return v17;
  }

  v29 = _swiftEmptyArrayStorage;
  v24 = a5;
  a5(0, v16, 0);
  v17 = v29;
  v18 = *(a6(0) - 8);
  v19 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v25 = *(v18 + 72);
  while (1)
  {
    v27(v19);
    if (v10)
    {
      break;
    }

    v10 = 0;
    v29 = v17;
    v21 = v17[2];
    v20 = v17[3];
    if (v21 >= v20 >> 1)
    {
      v24(v20 > 1, v21 + 1, 1);
      v17 = v29;
    }

    v17[2] = v21 + 1;
    sub_10001FEC8(v15, v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, v26);
    v19 += v25;
    if (!--v16)
    {
      return v17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001D0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = sub_1000212EC();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v5 = sub_10002113C();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v6 = sub_10002144C();
  v3[10] = v6;
  v3[11] = *(v6 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_10001D218, 0, 0);
}

uint64_t sub_10001D218()
{
  *(v0 + 104) = sub_10002162C();
  sub_10002164C();
  *(v0 + 112) = sub_10002163C();
  sub_10001FF30(&qword_1000302E8, &type metadata accessor for WidgetActor, &protocol conformance descriptor for WidgetActor);
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_10001D2E8, v2, v1);
}

uint64_t sub_10001D2E8()
{

  *(v0 + 120) = sub_10002161C();

  return _swift_task_switch(sub_10001D358, 0, 0);
}

uint64_t sub_10001D358()
{
  sub_100021C6C();
  *(v0 + 128) = sub_100021C5C();
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_10001D3EC, v2, v1);
}

uint64_t sub_10001D3EC()
{

  *(v0 + 136) = sub_1000215EC();

  return _swift_task_switch(sub_10001D464, 0, 0);
}

uint64_t sub_10001D464()
{
  v1 = v0[17];
  v22 = v1;
  if (v1)
  {
    v2 = [v1 homes];
    sub_10000E9F4();
    v3 = sub_100021C0C();

    if (v3 >> 62)
    {
      sub_100021D8C();
    }

    [v1 hasOptedToHH2];
  }

  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[8];
  v23 = v0[10];
  v24 = v0[7];
  v9 = v0[5];
  v8 = v0[6];
  v25 = v0[4];
  v10 = v0[2];
  sub_10002154C();
  sub_10002142C();
  sub_10002140C();
  v21 = sub_1000103E4();
  if (sub_10002141C())
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  v20 = v11;
  sub_100021ACC();
  v13 = v12;
  v15 = v14;

  (*(v4 + 8))(v5, v23);
  (*(v7 + 32))(v10, v6, v24);
  v16 = type metadata accessor for HistoricalUsageEntry(0);
  (*(v9 + 32))(v10 + v16[5], v8, v25);
  *(v10 + v16[6]) = v21;
  *(v10 + v16[7]) = v20;
  v17 = (v10 + v16[8]);
  *v17 = v13;
  v17[1] = v15;

  v18 = v0[1];

  return v18();
}

uint64_t sub_10001D68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_100021A8C();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  sub_10002118C();
  v3[15] = swift_task_alloc();
  v5 = sub_1000215DC();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v6 = sub_1000214EC();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v7 = sub_1000216DC();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_10001D89C, 0, 0);
}

uint64_t sub_10001D89C(uint64_t a1)
{
  v16 = v1;
  sub_1000216BC();

  v2 = sub_1000216CC();
  v3 = sub_100021CBC();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[23];
  v5 = v1[24];
  v7 = v1[22];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_10001EC04(0xD000000000000011, 0x8000000100024300, &v15);
    *(v8 + 12) = 2080;
    v9 = sub_10000EAE0();
    v11 = sub_10001EC04(v9, v10, &v15);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s resolving usageSnapshot type for configuration: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  (*(v6 + 8))(v5, v7);
  v1[25] = sub_10002162C();
  v1[26] = sub_10002164C();
  v1[27] = sub_10002163C();
  v1[28] = sub_10001FF30(&qword_1000302E8, &type metadata accessor for WidgetActor, &protocol conformance descriptor for WidgetActor);
  v13 = sub_100021C4C();

  return _swift_task_switch(sub_10001DAD8, v13, v12);
}

uint64_t sub_10001DAD8()
{

  *(v0 + 232) = sub_10002161C();

  return _swift_task_switch(sub_10001DB4C, 0, 0);
}

uint64_t sub_10001DB4C()
{
  sub_100021C6C();
  *(v0 + 240) = sub_100021C5C();
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_10001DBE0, v2, v1);
}

uint64_t sub_10001DBE0()
{

  *(v0 + 248) = sub_1000215EC();

  return _swift_task_switch(sub_10001DC58, 0, 0);
}

uint64_t sub_10001DC58(uint64_t a1)
{
  *(v1 + 256) = sub_10002163C();
  v3 = sub_100021C4C();

  return _swift_task_switch(sub_10001DCEC, v3, v2);
}

uint64_t sub_10001DCEC()
{

  *(v0 + 264) = sub_10002161C();
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_10001DD94;

  return WidgetDataModel.orderedHomes.getter();
}

uint64_t sub_10001DD94(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {

    v4 = sub_10001E150;
  }

  else
  {
    v4 = sub_10001DEBC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001DEBC()
{
  v1 = v0[35];

  v2 = *(v1 + 16);
  v3 = v0[35];
  if (v2)
  {
    v4 = v0[20];
    v5 = v0[17];
    sub_10001F234(0, v2, 0);
    v7 = *(v5 + 16);
    v6 = v5 + 16;
    v8 = v3 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v24 = *(v6 + 56);
    v25 = v7;
    do
    {
      v9 = v0[18];
      v10 = v0[16];
      v25(v9, v8, v10);
      sub_1000215AC();
      sub_1000215CC();
      sub_1000214CC();
      (*(v6 - 8))(v9, v10);
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_10001F234((v11 > 1), v12 + 1, 1);
      }

      v13 = v0[21];
      v14 = v0[19];
      _swiftEmptyArrayStorage[2] = v12 + 1;
      (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v13, v14);
      v8 += v24;
      --v2;
    }

    while (v2);
  }

  v0[37] = v0[36];
  v0[38] = _swiftEmptyArrayStorage;
  sub_100020FBC();
  v16 = v0[2];
  v15 = v0[3];
  v0[39] = v15;
  v17 = v0[4];
  v18 = v0[5];
  v19 = v0[6];
  if (v15)
  {

    v20 = v16;
  }

  else
  {
    v20 = 0;
  }

  sub_10000A634(v16, v15, v17, v18, v19);
  v21 = swift_task_alloc();
  v0[40] = v21;
  *v21 = v0;
  v21[1] = sub_10001E270;
  v22 = v0[14];

  return static HistoricalUsageWidgetCommon.timeline(siteDetailIdentifier:homes:)(v22, v20, v15, _swiftEmptyArrayStorage);
}

uint64_t sub_10001E150(uint64_t a1)
{
  v1[37] = 0;
  v1[38] = _swiftEmptyArrayStorage;
  sub_100020FBC();
  v3 = v1[2];
  v2 = v1[3];
  v1[39] = v2;
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  if (v2)
  {

    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  sub_10000A634(v3, v2, v4, v5, v6);
  v8 = swift_task_alloc();
  v1[40] = v8;
  *v8 = v1;
  v8[1] = sub_10001E270;
  v9 = v1[14];

  return static HistoricalUsageWidgetCommon.timeline(siteDetailIdentifier:homes:)(v9, v7, v2, _swiftEmptyArrayStorage);
}

uint64_t sub_10001E270(uint64_t a1)
{
  *(*v1 + 328) = a1;

  return _swift_task_switch(sub_10001E3AC, 0, 0);
}

uint64_t sub_10001E3AC()
{
  v1 = v0[41];
  v2 = v0[31];
  v3 = v0[14];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[9];
  v11 = v0[11];
  v8 = swift_task_alloc();
  v8[2] = v7;
  v8[3] = v2;
  v8[4] = v6;
  sub_10001CE94(sub_10001FEA4, v8, v1, type metadata accessor for HistoricalUsageEntry, sub_10001F2DC, &type metadata accessor for HistoricalUsageEntryCommon, type metadata accessor for HistoricalUsageEntry);

  (*(v5 + 16))(v4, v3, v11);
  type metadata accessor for HistoricalUsageEntry(0);
  sub_10001FF30(&qword_100030A38, type metadata accessor for HistoricalUsageEntry, &unk_100023C20);
  sub_100021B0C();

  (*(v5 + 8))(v3, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10001E5B8@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v22 = a3;
  v23 = a1;
  v6 = sub_1000212EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002113C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002142C();
  sub_10002140C();
  if (a2)
  {
    if ([a2 hasOptedToHH2])
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }
  }

  else
  {
    v14 = 3;
  }

  sub_100021ACC();
  v16 = v15;
  v18 = v17;
  (*(v11 + 32))(a4, v13, v10);
  v19 = type metadata accessor for HistoricalUsageEntry(0);
  (*(v7 + 32))(a4 + v19[5], v9, v6);
  *(a4 + v19[6]) = v23;
  *(a4 + v19[7]) = v14;
  v20 = (a4 + v19[8]);
  *v20 = v16;
  v20[1] = v18;
}

uint64_t sub_10001E7C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10002144C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002151C();
  sub_10002142C();
  v6 = type metadata accessor for HistoricalUsageEntry(0);
  sub_10002140C();
  v7 = sub_1000103E4();
  sub_100021ACC();
  v9 = v8;
  v11 = v10;
  result = (*(v3 + 8))(v5, v2);
  *(a1 + v6[6]) = v7;
  *(a1 + v6[7]) = 3;
  v13 = (a1 + v6[8]);
  *v13 = v9;
  v13[1] = v11;
  return result;
}

uint64_t sub_10001E8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008D7C;

  return sub_10001D0A0(a1, v6, a3);
}

uint64_t sub_10001E99C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008D7C;

  return sub_10001D68C(a1, v6, a3);
}

uint64_t sub_10001EA5C()
{
  sub_100021D1C(54);
  v1._countAndFlagsBits = 0xD000000000000018;
  v1._object = 0x8000000100024790;
  sub_100021BCC(v1);
  v2._countAndFlagsBits = sub_10002112C();
  sub_100021BCC(v2);

  v3._countAndFlagsBits = 2106912;
  v3._object = 0xE300000000000000;
  sub_100021BCC(v3);
  type metadata accessor for HistoricalUsageEntry(0);
  v4._countAndFlagsBits = sub_10000EAE0();
  sub_100021BCC(v4);

  v5._object = 0x80000001000247B0;
  v5._countAndFlagsBits = 0xD000000000000015;
  sub_100021BCC(v5);
  sub_1000212EC();
  sub_10001FF30(&qword_100030A60, &type metadata accessor for HistoricalUsageSnapshot, &protocol conformance descriptor for HistoricalUsageSnapshot);
  v6._countAndFlagsBits = sub_100021D9C();
  sub_100021BCC(v6);

  return 0;
}

unint64_t sub_10001EC04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001ECD0(v11, 0, 0, 1, a1, a2);
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
    sub_10001FE48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008C24(v11);
  return v7;
}

unint64_t sub_10001ECD0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001EDDC(a5, a6);
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
    result = sub_100021D3C();
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

void *sub_10001EDDC(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001EE28(a1, a2);
  sub_10001EF58(&off_10002D538);
  return v3;
}

void *sub_10001EE28(uint64_t a1, unint64_t a2)
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

  v6 = sub_10001F044(v5, 0);
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

  result = sub_100021D3C();
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
        v10 = sub_100021BDC();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001F044(v10, 0);
        result = sub_100021D0C();
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

uint64_t sub_10001EF58(uint64_t result)
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

  result = sub_10001F0B8(result, v11, 1, v3);
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