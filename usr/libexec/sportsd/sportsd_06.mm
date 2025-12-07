uint64_t sub_10008F5A0()
{
  v0 = sub_1000916D8();
  sub_10001C3C4(v0);
  v1 = sub_100091548();

  return sub_10008F448(v1, v2, v3);
}

uint64_t sub_10008F600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation(0);
  v11 = *(ActivityOperation - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(ActivityOperation - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v14 - 8);
  v16 = &v25 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = type metadata accessor for TaskPriority();
  sub_100008E2C(v16, 1, 1, v18);
  sub_10008E360(a3, v13);
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_10008E3C8(v13, v21 + v19);
  v22 = (v21 + v20);
  *v22 = a4;
  v22[1] = a5;
  v23 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_1000326E0;
  v23[1] = v17;

  sub_10004A77C();
}

uint64_t sub_10008F7F8()
{
  type metadata accessor for SubscriptionCreateActivityOperation(0);
  sub_10003C224();
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  sub_1000916F4();

  sub_10009162C();
  sub_1000915F0();
  sub_100091798();
  if (!v8)
  {
  }

  if (*(v2 + 472) != 1)
  {

    if (*(v2 + 488) != 1)
    {
    }
  }

  v9 = *(v0 + 48);
  v10 = type metadata accessor for Date();
  if (!sub_1000916B8(v10))
  {
    sub_10000ACDC();
    (*(v11 + 8))(v2 + v9, v3);
  }

  sub_10000AE38();
  sub_10000AE38();
  sub_10000AE38();

  return _swift_deallocObject(v1, ((v7 + ((v5 + 16) & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v5 | 7);
}

uint64_t sub_10008F978(uint64_t a1, uint64_t a2)
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation(0);
  sub_10000AC84(ActivityOperation);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_10008F600(a1, a2, v2 + v10, v12, v13);
}

uint64_t sub_10008FA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = type metadata accessor for SportingEventProgressStatus();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v8[13] = type metadata accessor for SubscriptionCreateActivityOperation(0);
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_10008FB18);
}

uint64_t sub_10008FB18()
{
  sub_10001BEC4();
  if (qword_1000DBA00 != -1)
  {
    sub_100091528(&qword_1000DBA00, v1, v2);
  }

  v3 = *(v0 + 104);
  v4 = *(v0 + 40);
  *(v0 + 120) = qword_1000E6D10;
  v5 = (v4 + *(v3 + 60));
  *(v0 + 128) = *v5;
  *(v0 + 136) = v5[1];
  *(v0 + 192) = *(v4 + 352);
  *(v0 + 193) = *(v4 + 496);
  v6 = (v4 + *(v3 + 56));
  *(v0 + 144) = *v6;
  *(v0 + 152) = v6[1];
  if (qword_1000DB9F0 != -1)
  {
    sub_100091688(&qword_1000DB9F0, v1, v2);
  }

  return _swift_task_switch(sub_10008FC0C);
}

uint64_t sub_10008FC0C()
{
  sub_100052444(*(v0 + 128), *(v0 + 136), *(v0 + 192), *(v0 + 193), *(v0 + 144), *(v0 + 152), *(v0 + 48), *(v0 + 56));
  *(v0 + 160) = 0;

  return _swift_task_switch(sub_10008FCAC);
}

uint64_t sub_10008FCAC()
{
  v33 = v0;
  v1 = *(v0[5] + 304);
  if ((sub_100066914() & 1) == 0)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_100008614((v1 + 16), *(v1 + 40));
  v2 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  v0[21] = v2;
  if (v2)
  {
    v3 = v2;
    if (qword_1000DBA38 != -1)
    {
      swift_once();
    }

    v4 = v0[14];
    v5 = v0[5];
    v6 = type metadata accessor for Logger();
    sub_100007DE8(v6, qword_1000E6D90);
    sub_10008E360(v5, v4);
    v7 = v3;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[14];
    if (v10)
    {
      v12 = v0[12];
      v13 = v0[13];
      v14 = v0[11];
      v31 = v0[10];
      v15 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v15 = 136315394;
      v16 = (v11 + *(v13 + 60));
      v18 = *v16;
      v17 = v16[1];

      sub_1000915C8();
      v19 = sub_1000170D4(v18, v17, &v32);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v20 = SportingEventSubscription.sportingEventDetails.getter();
      SportingEvent.progressStatus.getter();

      v21 = SportingEventProgressStatus.rawValue.getter();
      v23 = v22;
      (*(v14 + 8))(v12, v31);
      v24 = sub_1000170D4(v21, v23, &v32);

      *(v15 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v8, v9, "Update activity for '%s' with latest state %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000915C8();
    }

    v30 = swift_task_alloc();
    v0[22] = v30;
    *v30 = v0;
    v30[1] = sub_100090070;

    return sub_100058748();
  }

  else
  {
    sub_1000908E0();
    if (qword_1000DBA68 != -1)
    {
      sub_100091668(&qword_1000DBA68, v25, v26);
    }

    v27 = v0[8];
    sub_10008AB34(v0[16], v0[17]);
    v27(1, 0);
    sub_1000917B8();

    sub_10001BEDC();

    return v28();
  }
}

uint64_t sub_100090070()
{
  sub_10001BEC4();
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100090418;
  }

  else
  {
    v2 = sub_100090180;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100090180()
{
  sub_1000908E0();
  if (qword_1000DBA68 != -1)
  {
    sub_100091668(&qword_1000DBA68, v1, v2);
  }

  v3 = *(v0 + 64);
  sub_10008AB34(*(v0 + 128), *(v0 + 136));
  v3(1, 0);
  sub_1000917B8();

  sub_10001BEDC();

  return v4();
}

uint64_t sub_100090240()
{
  sub_100091778();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 24);
  if ((v1 & 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    v2 = sub_10001BFB0();
    sub_100090FEC(v2, v3);
LABEL_4:

    v4 = swift_allocObject();
    sub_100091738(v4);
    v5 = qword_1000DB9C0;

    if (v5 != -1)
    {
      sub_100091508(&qword_1000DB9C0, v6, v7);
    }

    sub_1000916A8();
    sub_100091594(v8, v9, v10);

    goto LABEL_12;
  }

  v11 = *(v0 + 64);
  if (v1 == 2)
  {
    v12 = sub_10005A1D0();
    v13 = sub_10007BF3C(&unk_1000D4D78, v12);
    sub_100091724(v13, v14);
    v11();
  }

  else
  {
    v15 = swift_allocObject();
    sub_100091758(v15);
    v16 = sub_10001BFB0();
    sub_100091054(v16, v17);
    if (qword_1000DB9C0 != -1)
    {
      sub_100091508(&qword_1000DB9C0, v18, v19);
    }

    sub_1000916A8();
    sub_100091560(v20, v21, v22);
    v23 = sub_10001BFB0();
    sub_100090FEC(v23, v24);
  }

LABEL_12:

  sub_1000917B8();

  sub_10001BEDC();

  return v25();
}

uint64_t sub_100090418()
{
  sub_100091778();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 24);
  if ((v1 & 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    v2 = sub_10001BFB0();
    sub_100090FEC(v2, v3);
LABEL_4:

    v4 = swift_allocObject();
    sub_100091738(v4);
    v5 = qword_1000DB9C0;

    if (v5 != -1)
    {
      sub_100091508(&qword_1000DB9C0, v6, v7);
    }

    sub_1000916A8();
    sub_100091594(v8, v9, v10);

    goto LABEL_12;
  }

  v11 = *(v0 + 64);
  if (v1 == 2)
  {
    v12 = sub_10005A1D0();
    v13 = sub_10007BF3C(&unk_1000D4D78, v12);
    sub_100091724(v13, v14);
    v11();
  }

  else
  {
    v15 = swift_allocObject();
    sub_100091758(v15);
    v16 = sub_10001BFB0();
    sub_100091054(v16, v17);
    if (qword_1000DB9C0 != -1)
    {
      sub_100091508(&qword_1000DB9C0, v18, v19);
    }

    sub_1000916A8();
    sub_100091560(v20, v21, v22);
    v23 = sub_10001BFB0();
    sub_100090FEC(v23, v24);
  }

LABEL_12:

  sub_1000917B8();

  sub_10001BEDC();

  return v25();
}

uint64_t sub_1000905F8()
{
  type metadata accessor for SubscriptionCreateActivityOperation(0);
  sub_10003C224();
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();
  sub_1000916F4();

  sub_10009162C();
  sub_1000915F0();
  sub_100091798();
  if (!v8)
  {
  }

  if (*(v2 + 472) != 1)
  {

    if (*(v2 + 488) != 1)
    {
    }
  }

  v9 = *(v0 + 48);
  v10 = type metadata accessor for Date();
  if (!sub_1000916B8(v10))
  {
    sub_10000ACDC();
    (*(v11 + 8))(v2 + v9, v3);
  }

  sub_10000AE38();
  sub_10000AE38();
  sub_10000AE38();

  return _swift_deallocObject(v1, ((((v7 + ((v5 + 32) & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v5 | 7);
}

uint64_t sub_100090794(uint64_t a1)
{
  v3 = v2;
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation(0);
  sub_10000AC84(ActivityOperation);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = (v1 + v9);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v1 + v10);
  v17 = *(v1 + v10 + 8);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_100034950;

  return sub_10008FA20(a1, v11, v12, v1 + v7, v14, v15, v16, v17);
}

uint64_t sub_1000908E0()
{
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation(0);
  __chkstk_darwin(ActivityOperation);
  v2 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8[-1] - v3;
  sub_10000A898(*(v0 + 304) + 16, v8);
  sub_100008614(v8, v8[3]);
  v5 = type metadata accessor for Date();
  sub_100008E2C(v4, 1, 1, v5);
  dispatch thunk of PersistentStorable.scheduleLiveActivity(_:forId:)();
  sub_10001BB44(v4, &qword_1000DC5A0, &unk_1000AB0E0);
  return sub_100008A94(v8);
}

uint64_t sub_100090BC4(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_10005A1D0();
  v8 = swift_allocError();
  *v9 = a4;
  v9[1] = a5;
  sub_100091068(a4, a5);
  a2(v8, 1);
}

uint64_t sub_100090C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = type metadata accessor for TaskPriority();
  sub_100008E2C(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = sub_100026094;
  v11[6] = v9;

  sub_10004A77C();
}

uint64_t sub_100090D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100090DA4);
}

uint64_t sub_100090DA4()
{
  sub_10001BEC4();
  if (qword_1000DBA00 != -1)
  {
    sub_100091528(&qword_1000DBA00, v1, v2);
  }

  *(v0 + 40) = qword_1000E6D10;
  if (qword_1000DB9F0 != -1)
  {
    sub_100091688(&qword_1000DB9F0, v1, v2);
  }

  return _swift_task_switch(sub_100090E50);
}

uint64_t sub_100090E50()
{
  sub_10001BEC4();
  *(v0 + 48) = sub_10004F858(v1);

  return _swift_task_switch(sub_100090EB8);
}

uint64_t sub_100090EB8()
{
  v1 = v0[3];
  if (v0[6] >= v0[2])
  {
    v2 = sub_100045BF8();
    sub_10007BF3C(&unk_1000D4F28, v2);
    *v3 = xmmword_1000AC270;
    v1();
  }

  else
  {
    (v1)(0, 0);
  }

  sub_10001BEDC();

  return v4();
}

uint64_t sub_100090F78()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100090FEC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 0xA)
  {
    return sub_100062E30(a1, a2);
  }

  return a1;
}

uint64_t sub_100091000()
{

  if (*(v0 + 40) >= 0xAuLL)
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100091054(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 0xA)
  {
    return sub_100091068(result, a2);
  }

  return result;
}

uint64_t sub_100091068(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xA)
  {
  }

  return result;
}

uint64_t sub_10009107C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10001C2AC();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000910EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10009112C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100091500;

  return sub_100090D80(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100091208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
    v9 = a1 + *(a3 + 48);

    return sub_100008B84(v9, a2, v8);
  }
}

uint64_t sub_1000912B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
    v8 = v5 + *(a4 + 48);

    return sub_100008E2C(v8, a2, a2, v7);
  }

  return result;
}

void sub_10009133C(uint64_t a1)
{
  type metadata accessor for DataRepository();
  if (v1 <= 0x3F)
  {
    sub_10009147C();
    if (v2 <= 0x3F)
    {
      sub_10000D988(319, &qword_1000DEEB8, &unk_1000D21C8);
      if (v3 <= 0x3F)
      {
        sub_10000D988(319, &unk_1000DEEC0, &unk_1000D2260);
        if (v4 <= 0x3F)
        {
          sub_1000448A0(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ActivityCapUtility();
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

unint64_t sub_10009147C()
{
  result = qword_1000DEEB0;
  if (!qword_1000DEEB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DEEB0);
  }

  return result;
}

uint64_t sub_100091508(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_once();
}

uint64_t sub_100091528(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_once();
}

uint64_t sub_100091560@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = (v3 + *(a3 + 52));
  v7 = *v6;
  v8 = v6[1];

  return sub_10002B47C(v7, v8, a1, a2, sub_100091048, v4);
}

uint64_t sub_100091594@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = (v3 + *(a3 + 52));
  v7 = *v6;
  v8 = v6[1];

  return sub_10002B47C(v7, v8, a1, a2, sub_100090FB8, v4);
}

uint64_t sub_1000915C8()
{

  return sub_10009107C(v0, type metadata accessor for SubscriptionCreateActivityOperation);
}

uint64_t sub_1000915F0()
{
  sub_100008A94(v0 + 23);
  sub_100008A94(v0 + 28);
  sub_100008A94(v0 + 33);
}

uint64_t sub_10009162C()
{
  sub_100008A94(v0 + 7);
  sub_100008A94(v0 + 12);
  sub_100008A94(v0 + 17);
}

uint64_t sub_100091668(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_once();
}

uint64_t sub_100091688(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_once();
}

uint64_t sub_1000916B8(uint64_t a1)
{

  return sub_100008B84(v1 + v2, 1, a1);
}

uint64_t sub_1000916D8()
{

  return type metadata accessor for SubscriptionCreateActivityOperation(0);
}

uint64_t sub_1000916F4()
{
  sub_100008A94((v0 + v1));
}

uint64_t sub_100091738(void *a1)
{
  a1[2] = v3;
  a1[3] = v1;
  a1[4] = v2;

  return swift_errorRetain();
}

uint64_t sub_100091758(void *a1)
{
  a1[2] = v4;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
}

uint64_t sub_100091778()
{
  *(v1 + 32) = v0;

  return swift_errorRetain();
}

uint64_t sub_1000917B8()
{
}

id sub_1000917D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC7sportsd16SportsXPCSession_entitlement];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC7sportsd16SportsXPCSession_connection] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for SportsXPCSession();
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_100091820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1000DBA10 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100007DE8(v5, qword_1000E6D18);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "New daemon connection.", v8, 2u);
  }

  v9 = *(v4 + OBJC_IVAR____TtC7sportsd16SportsXPCSession_connection);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 valueForEntitlement:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  sub_100032628(v17, &v15);
  if (!*(&v16 + 1))
  {
    sub_10000B860(&v15);
LABEL_13:
    v12 = &selRef_invalidate;
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v14 & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = &selRef_resume;
LABEL_14:
  [v9 *v12];
  return sub_10000B860(v17);
}

id sub_100091A2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SportsXPCSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100091AD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = -1.0;
  switch(a4)
  {
    case 1:
      return 0.0;
    case 2:
      v13 = (a3 + 48);
      v14 = *(a3 + 16) + 1;
      while (--v14)
      {
        v15 = *(v13 - 2);
        v16 = *(v13 - 1);
        v4 = *v13;
        if (v15 != a1 || v16 != a2)
        {
          v13 += 3;
          if ((sub_100092668(v15, v16) & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      v4 = 0.0;
LABEL_20:
      v25 = a3;

      sub_100091C84(&v25);
      v18 = (v25 + 48);
      v19 = *(v25 + 16) + 1;
      while (1)
      {
        if (!--v19)
        {
LABEL_30:

          return v4;
        }

        v20 = *v18;
        if (v4 < *v18)
        {

          return v20 + 1.0;
        }

        if (v20 == v4)
        {
          v21 = *(v18 - 2);
          v22 = *(v18 - 1);
          v23 = v21 == a1 && v22 == a2;
          if (!v23 && (sub_100092668(v21, v22) & 1) == 0)
          {
            break;
          }
        }

        v18 += 3;
        if (v20 < v4)
        {
          goto LABEL_30;
        }
      }

      return v4 + 1.0;
    case 3:
      return v4;
    default:
      v8 = (a3 + 48);
      v9 = *(a3 + 16) + 1;
      break;
  }

  while (--v9)
  {
    v10 = *(v8 - 2);
    v11 = *(v8 - 1);
    v4 = *v8;
    if (v10 != a1 || v11 != a2)
    {
      v8 += 3;
      if ((sub_100092668(v10, v11) & 1) == 0)
      {
        continue;
      }
    }

    return v4;
  }

  return 0.0;
}

Swift::Int sub_100091C84(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10008333C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_100091CF0(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_100091CF0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100003998(&qword_1000DC500, &qword_1000AAF48);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_100091E74(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100091DF4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100091DF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 1) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = *(v9 + 1);
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v11;
        *(v9 - 1) = v7;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_100091E74(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v84 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9 + 16);
        v11 = *a3 + 24 * v7;
        v12 = 24 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 64);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 3;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 24 * v6 - 8;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = v24[1];
                v28 = v24[2];
                v29 = *v25;
                *v24 = *(v25 - 1);
                v24[2] = v29;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
              }

              ++v22;
              v20 -= 24;
              v12 += 24;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9 + 16);
              v34 = v32;
              v35 = v31;
              do
              {
                if (*(v35 - 1) >= v33)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *v35;
                v37 = *(v35 + 1);
                *v35 = *(v35 - 3);
                v35[2] = *(v35 - 1);
                *(v35 - 2) = v37;
                *(v35 - 1) = v33;
                *(v35 - 3) = v36;
                v35 -= 3;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v86 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100016B2C();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_100016B2C();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v86;
      v87 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1000924C0((*a3 + 24 * *v75), (*a3 + 24 * *v77), *a3 + 24 * v78, v87);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v86;
      a4 = v84;
      if (v86 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_100092388(&v89, *result, a3);
LABEL_89:
}

uint64_t sub_100092388(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100082EC4(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1000924C0((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1000924C0(char *a1, char *a2, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_100016F38(a1, (a2 - a1) / 24, a4);
    v10 = &v4[3 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[2] >= v6[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 3;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 3;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = v12[2];
    *v7 = v14;
    goto LABEL_13;
  }

  sub_100016F38(a2, (a3 - a2) / 24, a4);
  v10 = &v4[3 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v17 = v6 - 3;
      v13 = v5 + 24 == v6;
      v6 -= 3;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = v17[2];
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 3);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 3;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[3 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

uint64_t sub_100092668(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100092684(uint64_t a1)
{
  v1 = SportingEvent.clock.getter();
  v2 = SportingEventCurrentClock.current.getter();

  dispatch thunk of SportingEventClock.minutes.getter();
  v3 = SportingEvent.clock.getter();
  v4 = SportingEventCurrentClock.current.getter();

  v5 = dispatch thunk of SportingEventClock.seconds.getter();
  v7 = v6;

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  v9 = SportingEvent.clock.getter();
  v10 = SportingEventCurrentClock.current.getter();

  v11 = dispatch thunk of SportingEventClock.milliseconds.getter();
  v13 = v12;

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  v22 = dispatch thunk of CustomStringConvertible.description.getter();
  v15._countAndFlagsBits = 58;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  sub_100003998(&qword_1000DC508, &qword_1000AAF50);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000AA5B0;
  *(v16 + 56) = &type metadata for Int;
  *(v16 + 64) = &protocol witness table for Int;
  *(v16 + 32) = v8;
  v17._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 46;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000AA5B0;
  *(v19 + 56) = &type metadata for Int;
  *(v19 + 64) = &protocol witness table for Int;
  *(v19 + 32) = v14;
  v20._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v20);

  return v22;
}

void sub_10009285C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v23 = _swiftEmptyArrayStorage;
    sub_100017D18(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v23;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(a3 + 8 * v8 + 32);
      }

      v4 = v11;
      v20 = v11;
      a1(&v21, &v20);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v12 = v21;
      v13 = v22;
      v23 = v9;
      v15 = v9[2];
      v14 = v9[3];
      v4 = (v15 + 1);
      if (v15 >= v14 >> 1)
      {
        v18 = v21;
        v17 = v22;
        sub_100017D18((v14 > 1), v15 + 1, 1);
        v13 = v17;
        v12 = v18;
        v9 = v23;
      }

      v9[2] = v4;
      v16 = &v9[2 * v15];
      v16[4] = v12;
      *(v16 + 40) = v13;
      ++v8;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_100092A08(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v20 = a3 & 0xC000000000000001;
  v21 = sub_10001BE20(a3);
  v18 = a3 & 0xFFFFFFFFFFFFFF8;
  v19 = a3;
  v6 = _swiftEmptyArrayStorage;
  while (v21 != v5)
  {
    if (v20)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v18 + 16))
      {
        goto LABEL_19;
      }

      v7 = *(v19 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v26 = v7;
    a1(&v22, &v26);
    if (v3)
    {

      return;
    }

    v9 = v23;
    if (v23)
    {
      v10 = v22;
      v11 = v24;
      v12 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000166C8();
        v6 = v15;
      }

      v13 = v6[2];
      if (v13 >= v6[3] >> 1)
      {
        sub_1000166C8();
        v6 = v16;
      }

      v6[2] = v13 + 1;
      v14 = &v6[4 * v13];
      v14[4] = v10;
      v14[5] = v9;
      v14[6] = v11;
      v14[7] = v12;
    }

    ++v5;
  }
}

void sub_100092B94(unint64_t a1, uint64_t a2)
{
  v330 = a2;
  v4 = sub_100003998(&qword_1000DEF58, &qword_1000AF358);
  __chkstk_darwin(v4 - 8);
  sub_100045DAC(&v324 - v5);
  v6 = type metadata accessor for IngestionError();
  sub_10000AC48();
  v328 = v7;
  __chkstk_darwin(v8);
  sub_1000499AC();
  v331 = v9;
  __chkstk_darwin(v10);
  sub_100045DAC(&v324 - v11);
  v12 = type metadata accessor for SportingEventMetadataType();
  sub_10000AC48();
  v329 = v13;
  __chkstk_darwin(v14);
  sub_1000499AC();
  v348 = v15;
  __chkstk_darwin(v16);
  v18 = &v324 - v17;
  v352 = type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
  sub_10000AC48();
  v341 = v19;
  __chkstk_darwin(v20);
  sub_10000ADA0();
  sub_100045DAC(v22 - v21);
  v345 = type metadata accessor for SportingEventProgressStatus();
  sub_10000AC48();
  v344 = v23;
  __chkstk_darwin(v24);
  sub_10000ADA0();
  sub_100045DAC(v26 - v25);
  v27 = type metadata accessor for SportingEventClockBreakType();
  sub_10000AC48();
  v340 = v28;
  __chkstk_darwin(v29);
  sub_10000ADA0();
  v339 = (v31 - v30);
  v32 = sub_100003998(&qword_1000DEF60, &qword_1000AF360);
  __chkstk_darwin(v32 - 8);
  v34 = &v324 - v33;
  v35 = sub_100003998(&qword_1000DE8A8, &qword_1000AEB80);
  __chkstk_darwin(v35 - 8);
  v350 = &v324 - v36;
  if (qword_1000DBA18 != -1)
  {
    goto LABEL_215;
  }

  while (1)
  {
    v332 = v6;
    v37 = type metadata accessor for Logger();
    v343 = sub_100007DE8(v37, qword_1000E6D30);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    v40 = os_log_type_enabled(v38, v39);
    v349 = v12;
    v347 = v18;
    v346 = v27;
    if (v40)
    {
      v337 = a1;
      v338 = v34;
      sub_10001C4D0();
      v336 = sub_10009797C();
      v360[0] = v336;
      *v2 = 136315138;
      v41 = type metadata accessor for ActivityAuthorization();
      v42 = [objc_allocWithZone(v41) init];
      v43 = sub_1000499E0();
      v45 = v44;
      v356 = v41;
      v357 = &off_1000D1900;
      p_isa = v42;
      type metadata accessor for ActivityCapUtility();
      inited = swift_initStackObject();
      v47 = sub_10000B90C(&p_isa, v356);
      __chkstk_darwin(v47);
      sub_10000ADA0();
      v50 = (v49 - v48);
      (*(v51 + 16))(v49 - v48);
      v52 = *v50;
      inited[5] = v41;
      inited[6] = &off_1000D1900;
      inited[7] = v43;
      inited[2] = v52;
      inited[8] = v45;
      sub_100008A94(&p_isa);
      LOBYTE(v41) = sub_100066914();
      swift_setDeallocating();
      sub_100066950();
      if (v41)
      {
        v53 = 1212631368;
        v54 = 0xE400000000000000;
      }

      else
      {
        v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v55)
        {
          v53 = 1212631368;
        }

        else
        {
          v53 = 5721932;
        }

        if (v55)
        {
          v54 = 0xE400000000000000;
        }

        else
        {
          v54 = 0xE300000000000000;
        }
      }

      a1 = v337;
      sub_1000170D4(v53, v54, v360);
      sub_10001C1DC();

      *(v2 + 4) = v53;
      sub_100097A08(&_mh_execute_header, v56, v39, "Live activity cap: %s");
      v57 = v336;
      sub_100008A94(v336);
      sub_10000B008(v57);
      sub_10005AED8();

      v27 = v346;
      v34 = v338;
    }

    else
    {
    }

    v58 = a1;
    v59 = sub_100097998(v58);
    v60 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v59, v60))
    {
      sub_10001C4D0();
      v61 = sub_10009797C();
      sub_100097A64(v61);
      *v2 = 136315138;
      v62 = SportingEvent.version.getter();
      v64 = sub_1000170D4(v62, v63, &p_isa);

      *(v2 + 4) = v64;
      sub_100097A08(&_mh_execute_header, v65, v60, "Version: %s");
      v66 = sub_100097A9C();
      sub_10000B008(v66);
      sub_10005AED8();
    }

    v67 = v58;
    v68 = sub_100097998(v67);
    v69 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v68, v69))
    {
      sub_10001C4D0();
      v70 = sub_10009797C();
      v71 = sub_100097A64(v70);
      *v2 = 136315138;
      v72 = sub_100092684(v71);
      v74 = sub_1000170D4(v72, v73, &p_isa);

      *(v2 + 4) = v74;
      sub_100097A08(&_mh_execute_header, v75, v69, "Event clock: %s");
      v76 = sub_100097A9C();
      sub_10000B008(v76);
      sub_10005AED8();
    }

    v77 = v67;
    v78 = sub_100097998(v77);
    v79 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v2 = sub_10003FC24();
      v80 = swift_slowAlloc();
      p_isa = v80;
      *v2 = 136315650;
      v81 = SportingEvent.clock.getter();
      v82 = SportingEventCurrentClock.current.getter();

      v83 = SportingEventClock.period.getter();
      v84 = v350;
      dispatch thunk of SportingEventClockPeriod.type.getter();

      v85 = type metadata accessor for SportingEventClockPeriodType();
      if (sub_100008B84(v84, 1, v85) == 1)
      {
        sub_10000A7A8(v84, &qword_1000DE8A8, &qword_1000AEB80);
        v86 = 0xE400000000000000;
        v87 = 1819047278;
      }

      else
      {
        v87 = v84;
        SportingEventClockPeriodType.rawValue.getter();
        sub_10001C1DC();
        v86 = v88;
        sub_10000ACDC();
        (*(v89 + 8))();
      }

      v90 = sub_1000979B0();
      sub_1000170D4(v90, v86, v91);
      sub_10001C1DC();

      *(v2 + 4) = v87;
      *(v2 + 12) = 2080;
      v92 = SportingEvent.clock.getter();
      v93 = SportingEventCurrentClock.current.getter();

      v94 = SportingEventClock.period.getter();
      v95 = dispatch thunk of SportingEventClockPeriod.index.getter();
      v97 = v96;

      if (v97)
      {
        v98 = sub_10009794C();
      }

      else
      {
        v360[0] = v95;
        v94 = v360;
        v98 = dispatch thunk of CustomStringConvertible.description.getter();
        v95 = v99;
      }

      sub_1000170D4(v98, v95, &p_isa);
      sub_10001C1DC();

      *(v2 + 14) = v94;
      *(v2 + 22) = 2080;
      v100 = SportingEvent.clock.getter();
      v101 = SportingEventCurrentClock.current.getter();

      v102 = SportingEventClock.period.getter();
      dispatch thunk of SportingEventClockPeriod.subdivision.getter();

      v103 = type metadata accessor for SportingEventClockPeriodSubdivision();
      if (sub_100008B84(v34, 1, v103) == 1)
      {
        sub_10000A7A8(v34, &qword_1000DEF60, &qword_1000AF360);
        v104 = 0xE400000000000000;
        v105 = 1819047278;
      }

      else
      {
        v105 = SportingEventClockPeriodSubdivision.rawValue.getter();
        v104 = v106;
        sub_10000ACDC();
        (*(v107 + 8))(v34, v103);
      }

      v108 = sub_1000979B0();
      sub_1000170D4(v108, v104, v109);
      sub_10001C1DC();

      *(v2 + 24) = v105;
      _os_log_impl(&_mh_execute_header, v78, v79, "Clock period: type=%s, index=%s, subdivision=%s", v2, 0x20u);
      swift_arrayDestroy();
      sub_10000B008(v80);
      sub_10005AED8();

      v27 = v346;
    }

    else
    {
    }

    v12 = v77;
    v110 = sub_100097998(v12);
    v111 = static os_log_type_t.debug.getter();

    v112 = os_log_type_enabled(v110, v111);
    a1 = 0x65736C6166;
    v350 = v12;
    if (v112)
    {
      v113 = sub_100097AB8();
      v2 = sub_10005B3EC();
      p_isa = v2;
      *v113 = 136315394;
      v114 = SportingEvent.clock.getter();
      v115 = SportingEventCurrentClock.current.getter();

      v116 = dispatch thunk of SportingEventClock.runningState.getter();
      if (v116)
      {
        v12 = dispatch thunk of SportingEventClockRunningState.isReliable.getter();
        v34 = v12;

        v117 = sub_10009794C();
        if (v12 != 2)
        {
          v117 = (v12 & 1) != 0 ? 1702195828 : 0x65736C6166;
          if ((v12 & 1) == 0)
          {
            v115 = 0xE500000000000000;
          }
        }
      }

      else
      {
        v117 = sub_10009794C();
      }

      sub_1000170D4(v117, v115, &p_isa);
      sub_10001C1DC();

      *(v113 + 4) = v116;
      *(v113 + 12) = 2080;
      v118 = SportingEvent.clock.getter();
      v119 = SportingEventCurrentClock.current.getter();

      v120 = dispatch thunk of SportingEventClock.runningState.getter();
      if (v120)
      {
        v12 = dispatch thunk of SportingEventClockRunningState.isActive.getter();
        v34 = v12;

        v119 = 0xE400000000000000;
        v121 = 1819047278;
        if (v12 != 2)
        {
          v121 = (v12 & 1) != 0 ? 1702195828 : 0x65736C6166;
          if ((v12 & 1) == 0)
          {
            v119 = 0xE500000000000000;
          }
        }
      }

      else
      {
        v121 = sub_10009794C();
      }

      sub_1000170D4(v121, v119, &p_isa);
      sub_10001C1DC();

      *(v113 + 14) = v120;
      _os_log_impl(&_mh_execute_header, v110, v111, "Running clock: isReliable=%s, isActive=%s", v113, 0x16u);
      swift_arrayDestroy();
      sub_10005AED8();
      sub_10000B008(v113);

      sub_1000979CC();
    }

    else
    {
    }

    v122 = sub_1000979D8();
    sub_100095020(v122, v123);
    v124 = SportingEvent.clock.getter();
    v125 = SportingEventCurrentClock.current.getter();

    v126 = dispatch thunk of SportingEventClock.activityStatus.getter();
    if (v126)
    {
      v128 = v126;
      v129 = sub_100097998(v128);
      v130 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v129, v130))
      {
        v2 = sub_100097AB8();
        v34 = sub_10005B3EC();
        p_isa = v34;
        *v2 = 136315394;
        v131 = SportingEventClockActivityStatus.isBreak.getter();
        v132 = (v131 & 1) == 0;
        v133 = (v131 & 1) != 0 ? 1702195828 : 0x65736C6166;
        v134 = v132 ? 0xE500000000000000 : 0xE400000000000000;
        v135 = sub_1000170D4(v133, v134, &p_isa);

        *(v2 + 4) = v135;
        *(v2 + 12) = 2080;
        a1 = v339;
        SportingEventClockActivityStatus.breakType.getter();
        SportingEventClockBreakType.rawValue.getter();
        v12 = v136;
        v340[1](a1, v27);
        v137 = sub_1000979B0();
        v139 = sub_1000170D4(v137, v12, v138);
        sub_1000979CC();

        *(v2 + 14) = v139;
        _os_log_impl(&_mh_execute_header, v129, v130, "Clock activity status: isBreak=%s, breakType=%s", v2, 0x16u);
        swift_arrayDestroy();
        sub_10000B008(v34);
        sub_10005AED8();
      }

      else
      {
      }
    }

    else
    {
      v140 = sub_100097998(v127);
      v141 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        *v142 = 0;
        _os_log_impl(&_mh_execute_header, v140, v141, "Clock activity status: null", v142, 2u);
        sub_10000B008(v142);
      }
    }

    v143 = SportingEvent.clock.getter();
    v144 = dispatch thunk of SportingEventCurrentClock.total.getter();

    if (v144)
    {
      v145 = dispatch thunk of SportingEventClock.additional.getter();

      if (v145)
      {
        v146 = v145;
        v147 = sub_100097998(v146);
        v2 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v147, v2))
        {
          v148 = sub_100097AB8();
          v34 = sub_10005B3EC();
          v360[0] = v34;
          *v148 = 136315394;
          p_isa = dispatch thunk of SportingEventClock.minutes.getter();
          LOBYTE(v354) = v149 & 1;
          sub_100003998(&qword_1000DEF70, &qword_1000AF370);
          v150 = String.init<A>(describing:)();
          a1 = sub_1000170D4(v150, v151, v360);

          *(v148 + 4) = a1;
          *(v148 + 12) = 2080;
          p_isa = dispatch thunk of SportingEventClock.seconds.getter();
          LOBYTE(v354) = v152 & 1;
          v153 = String.init<A>(describing:)();
          v12 = sub_1000170D4(v153, v154, v360);

          *(v148 + 14) = v12;
          sub_1000979CC();
          _os_log_impl(&_mh_execute_header, v147, v2, "Clock injury time: minutes=%s, seconds=%s", v148, 0x16u);
          swift_arrayDestroy();
          sub_10000B008(v34);
          sub_10000B008(v148);
        }

        else
        {
        }
      }
    }

    v6 = SportingEvent.clock.getter();
    v155 = dispatch thunk of SportingEventCurrentClock.periods.getter();

    if (!v155)
    {
      break;
    }

    v18 = sub_10001BE20(v155);
    v2 = 0;
    v12 = v155 & 0xC000000000000001;
    a1 = v155 & 0xFFFFFFFFFFFFFF8;
    v156 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v18 == v2)
      {

        sub_1000979CC();
        goto LABEL_83;
      }

      if (v12)
      {
        v157 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_207;
        }

        v157 = *(v155 + 8 * v2 + 32);
      }

      v6 = v157;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v360[0] = v157;
      sub_100096EF8(v360, &p_isa);

      v27 = v354;
      if (v354)
      {
        v34 = p_isa;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100016520();
          v156 = v163;
        }

        v158 = v156;
        v159 = v156[2];
        v160 = v158;
        v161 = v158[3];
        v6 = v159 + 1;
        if (v159 >= v161 >> 1)
        {
          sub_100097970(v161);
          sub_100016520();
          v160 = v164;
        }

        v160[2] = v6;
        v162 = &v160[2 * v159];
        v156 = v160;
        v162[4] = v34;
        v162[5] = v27;
      }

      ++v2;
    }

LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    swift_once();
  }

  v156 = _swiftEmptyArrayStorage;
LABEL_83:
  if (v156[2])
  {

    v166 = sub_100097998(v165);
    v167 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v166, v167))
    {
      sub_10001C4D0();
      v168 = sub_10009797C();
      sub_100097A64(v168);
      *v2 = 136315138;
      v169 = Array.description.getter();
      a1 = sub_1000170D4(v169, v170, &p_isa);

      *(v2 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v166, v167, "AnnouncedAdditional: %s", v2, 0xCu);
      sub_100097A9C();
      sub_1000979CC();
      sub_10000B008(v171);
      sub_10005AED8();
    }
  }

  v172 = v12;
  v34 = sub_100097998(v172);
  v18 = static os_log_type_t.debug.getter();

  v173 = os_log_type_enabled(v34, v18);
  v335 = v156;
  if (v173)
  {
    sub_10001C4D0();
    v174 = sub_10009797C();
    sub_100097A64(v174);
    *v2 = 136315138;
    v175 = v342;
    SportingEvent.progressStatus.getter();
    SportingEventProgressStatus.rawValue.getter();
    a1 = v176;
    (v344[1])(v175, v345);
    v177 = sub_1000979B0();
    v179 = sub_1000170D4(v177, a1, v178);

    *(v2 + 4) = v179;
    _os_log_impl(&_mh_execute_header, v34, v18, "Progress status: %s", v2, 0xCu);
    v180 = sub_100097A9C();
    sub_10000B008(v180);
    sub_10005AED8();
  }

  v181 = v172;
  v182 = sub_100097998(v181);
  v12 = static os_log_type_t.debug.getter();

  v183 = os_log_type_enabled(v182, v12);
  v340 = v181;
  if (v183)
  {
    LODWORD(v338) = v12;
    v339 = v182;
    v184 = sub_10001C4D0();
    v336 = sub_10003FC24();
    p_isa = v336;
    v337 = v184;
    *v184 = 136315138;
    v2 = dispatch thunk of SportingEvent.competitors.getter();
    v185 = sub_10001BE20(v2);
    sub_100097A4C(v185);
    v6 = 0;
    v346 = v2 & 0xC000000000000001;
    v345 = (v2 & 0xFFFFFFFFFFFFFF8);
    LODWORD(v344) = enum case for SportingEventCompetitorScoreStatisticType.StatisticName.score(_:);
    v12 = (v341 + 104);
    v18 = (v341 + 8);
    v342 = _swiftEmptyArrayStorage;
    v186 = v351;
    v27 = v352;
    while (1)
    {
      sub_10008366C();
      if (v187 == v6)
      {
        break;
      }

      if (v346)
      {
        v189 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        sub_1000979BC();
        if (v188)
        {
          goto LABEL_209;
        }

        v189 = *(v2 + 8 * v6 + 32);
      }

      v34 = v189;
      a1 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_208;
      }

      (*v12)(v186, v344, v27);
      v190 = dispatch thunk of SportingEventCompetitorContainer.getScoreEntry(name:)();
      (*v18)(v186, v27);
      if (v190)
      {
        SportingEventCompetitorScoreEntry.value.getter();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v192 = sub_100097920();
          sub_100016A44(v192, v193, v194, v195);
          v342 = v196;
        }

        sub_100097A24();
        if (v188)
        {
          v197 = sub_10009795C(v191);
          sub_100016A44(v197, v198, v199, v342);
          v342 = v200;
        }

        sub_100097A38(&v359);
        ++v6;
      }

      else
      {

        ++v6;
      }
    }

    v325 = 0;

    v12 = v342;
    v201 = v342[2];
    if (v201)
    {
      v360[0] = _swiftEmptyArrayStorage;
      sub_100017B68(0, v201, 0);
      v18 = 32;
      v202 = v360[0];
      v34 = &protocol witness table for Int;
      do
      {
        v358 = *(v12 + v18);
        v203 = dispatch thunk of CustomStringConvertible.description.getter();
        v205 = v204;
        v360[0] = v202;
        v207 = v202[2];
        v206 = v202[3];
        a1 = v207 + 1;
        if (v207 >= v206 >> 1)
        {
          v209 = sub_100097970(v206);
          sub_100017B68(v209, v207 + 1, 1);
          v202 = v360[0];
        }

        v202[2] = a1;
        v208 = &v202[2 * v207];
        v208[4] = v203;
        v208[5] = v205;
        v18 += 8;
        --v201;
        v12 = v342;
      }

      while (v201);
    }

    else
    {

      v202 = _swiftEmptyArrayStorage;
    }

    v360[0] = v202;
    sub_100003998(&qword_1000DC420, &unk_1000ADE60);
    sub_100097844();
    sub_1000979F0();
    BidirectionalCollection<>.joined(separator:)();
    v211 = v210;

    v212 = sub_1000979B0();
    v214 = sub_1000170D4(v212, v211, v213);

    v215 = v337;
    *(v337 + 4) = v214;
    v216 = v339;
    _os_log_impl(&_mh_execute_header, v339, v338, "Scores: %s", v215, 0xCu);
    v217 = v336;
    sub_100008A94(v336);
    sub_10000B008(v217);
    sub_10000B008(v215);
  }

  else
  {
    v325 = 0;
  }

  v218 = dispatch thunk of SportingEvent.competitors.getter();
  v219 = sub_10001BE20(v218);
  sub_100097A4C(v219);
  v6 = 0;
  v346 = v218 & 0xC000000000000001;
  v345 = (v218 & 0xFFFFFFFFFFFFFF8);
  v2 = enum case for SportingEventCompetitorScoreStatisticType.StatisticName.shootout(_:);
  v220 = (v341 + 104);
  v27 = v341 + 8;
  v333 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_10008366C();
    if (v221 == v6)
    {
      break;
    }

    if (v346)
    {
      v222 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      sub_1000979BC();
      if (v188)
      {
        goto LABEL_205;
      }

      v222 = *(v218 + 8 * v6 + 32);
    }

    v34 = v222;
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_205:
      __break(1u);
      goto LABEL_206;
    }

    v18 = v351;
    a1 = v352;
    (v220->isa)(v351, v2, v352);
    v223 = dispatch thunk of SportingEventCompetitorContainer.getScoreEntry(name:)();
    (*v27)(v18, a1);
    if (v223)
    {
      SportingEventCompetitorScoreEntry.value.getter();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v225 = sub_100097920();
        sub_100016A44(v225, v226, v227, v228);
        v333 = v229;
      }

      sub_100097A24();
      if (v188)
      {
        v230 = sub_10009795C(v224);
        sub_100016A44(v230, v231, v232, v333);
        v333 = v233;
      }

      sub_100097A38(&v355);
      ++v6;
    }

    else
    {

      ++v6;
    }
  }

  v234 = v333;
  if (v333[2])
  {

    v18 = sub_100097998(v235);
    a1 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, a1))
    {
      v236 = sub_10001C4D0();
      v237 = sub_10003FC24();
      v220 = v237;
      p_isa = &v237->isa;
      *v236 = 136315138;
      v238 = v234[2];
      v239 = _swiftEmptyArrayStorage;
      if (v238)
      {
        v346 = v237;
        v350 = v236;
        LODWORD(v351) = a1;
        v352 = v18;
        v360[0] = _swiftEmptyArrayStorage;
        sub_100097A7C();
        v239 = v360[0];
        v27 = (v234 + 4);
        do
        {
          v240 = *v27;
          v27 += 8;
          v358 = v240;
          v241 = dispatch thunk of CustomStringConvertible.description.getter();
          v243 = v242;
          v360[0] = v239;
          v245 = v239[2];
          v244 = v239[3];
          if (v245 >= v244 >> 1)
          {
            v247 = sub_100097970(v244);
            sub_100017B68(v247, v245 + 1, 1);
            v239 = v360[0];
          }

          v239[2] = v245 + 1;
          v246 = &v239[2 * v245];
          v246[4] = v241;
          v246[5] = v243;
          --v238;
        }

        while (v238);
        v18 = v352;
        a1 = v351;
        v236 = v350;
        v220 = v346;
      }

      v360[0] = v239;
      sub_100003998(&qword_1000DC420, &unk_1000ADE60);
      sub_100097844();
      sub_1000979F0();
      BidirectionalCollection<>.joined(separator:)();
      v12 = v248;

      v249 = sub_1000979B0();
      v251 = sub_1000170D4(v249, v12, v250);

      *(v236 + 4) = v251;
      _os_log_impl(&_mh_execute_header, v18, a1, "Shootout scores: %s", v236, 0xCu);
      sub_100008A94(v220);
      sub_10000B008(v220);
      sub_10000B008(v236);
    }

    sub_100097938();
    v6 = dispatch thunk of SportingEvent.competitors.getter();
    v339 = sub_10001BE20(v6);
    v34 = 0;
    v338 = v6 & 0xC000000000000001;
    v337 = v6 & 0xFFFFFFFFFFFFFF8;
    v326 = v6;
    v336 = (v6 + 32);
    LODWORD(v346) = enum case for SportingEventMetadataType.shootoutsContext(_:);
    v345 = (v329 + 104);
    v2 = v329 + 8;
    v344 = _swiftEmptyArrayStorage;
LABEL_138:
    while (v34 != v339)
    {
      if (v338)
      {
        v252 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v34 >= *(v337 + 16))
        {
          goto LABEL_211;
        }

        v252 = v336[v34];
      }

      v6 = v252;
      if (__OFADD__(v34++, 1))
      {
        goto LABEL_210;
      }

      v254 = SportingEventCompetitorContainer.competitor.getter();
      v255 = dispatch thunk of SportingEventCompetitor.metadata.getter();

      if (v255)
      {
        v341 = v6;
        v342 = v34;
        v352 = sub_10001BE20(v255);
        v256 = 0;
        *&v351 = v255 & 0xC000000000000001;
        v350 = (v255 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          sub_100097A70();
          if (v257 == v256)
          {

            v34 = v342;
            goto LABEL_138;
          }

          if (v351)
          {
            v259 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            sub_10008366C();
            if (v256 >= *(v258 + 16))
            {
              goto LABEL_199;
            }

            v259 = *(v255 + 8 * v256 + 32);
          }

          v6 = v259;
          if (__OFADD__(v256, 1))
          {
            __break(1u);
LABEL_199:
            __break(1u);
            goto LABEL_200;
          }

          v12 = v347;
          SportingEventMetadata.metadataType.getter();
          (*v345)(v220, v346, v27);
          sub_1000978A8(&qword_1000DD260, &type metadata accessor for SportingEventMetadataType, &protocol conformance descriptor for SportingEventMetadataType);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v18 = v354;
          if (p_isa == v360[0] && v354 == v360[1])
          {
            break;
          }

          v261 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v262 = v220;
          v220 = v261;
          a1 = *v2;
          (*v2)(v262, v27);
          (a1)(v12, v27);

          if (v220)
          {
            goto LABEL_160;
          }

          ++v256;
          sub_100097938();
        }

        v263 = *v2;
        (*v2)(v220, v27);
        v263(v12, v27);

LABEL_160:

        v264 = SportingEventMetadata.value.getter();
        v12 = v265;

        v266 = v341;
        v267 = SportingEventCompetitorContainer.competitor.getter();
        v6 = SportingEventCompetitor.canonicalId.getter();
        v269 = v268;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100097920();
          sub_1000166C8();
          v344 = v273;
        }

        sub_100097938();
        v34 = v342;
        a1 = v344[2];
        v270 = v344[3];
        v18 = a1 + 1;
        if (a1 >= v270 >> 1)
        {
          sub_100097970(v270);
          sub_1000166C8();
          v344 = v274;
        }

        v271 = v344;
        v344[2] = v18;
        v272 = &v271[4 * a1];
        v272[4] = v6;
        v272[5] = v269;
        v272[6] = v264;
        v272[7] = v12;
      }

      else
      {
      }
    }

    v6 = 0;
    v27 = v344[2];
    v275 = v344 + 7;
    *&v276 = 136315394;
    v351 = v276;
    sub_100097A58();
    v352 = v27;
    while (v27 != v6)
    {
      sub_1000979BC();
      if (v188)
      {
        goto LABEL_212;
      }

      v2 = *(v275 - 3);
      v12 = *(v275 - 2);
      a1 = *(v275 - 1);
      v18 = *v275;

      v278 = sub_100097998(v277);
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v278, v34))
      {
        v279 = sub_100097AB8();
        v280 = sub_10005B3EC();
        p_isa = v280;
        *v279 = v351;
        *(v279 + 4) = sub_1000170D4(v2, v12, &p_isa);
        *(v279 + 12) = 2080;
        *(v279 + 14) = sub_1000170D4(a1, v18, &p_isa);
        _os_log_impl(&_mh_execute_header, v278, v34, "Competitor: %s; Contextual shootout: %s)", v279, 0x16u);
        swift_arrayDestroy();
        v281 = v280;
        v27 = v352;
        sub_10000B008(v281);
        sub_10000B008(v279);
      }

      v275 += 4;
      ++v6;
      sub_100097A58();
    }
  }

  else
  {

    sub_100097A58();
  }

  v282 = dispatch thunk of SportingEvent.coverage.getter();
  if (v282)
  {
    v283 = v282;
    v284 = dispatch thunk of SportingEventCoverage.ingestion.getter();

    if (v284)
    {
      v285 = dispatch thunk of SportingEventCoverageIngestion.coverageUpdates.getter();

      if (v285)
      {
        v12 = sub_10001BE20(v285);
        v2 = 0;
        v27 = (v285 & 0xFFFFFFFFFFFFFF8);
        v352 = v328 + 32;
        a1 = &qword_1000AF358;
        v350 = _swiftEmptyArrayStorage;
        v6 = v332;
        while (v12 != v2)
        {
          if ((v285 & 0xC000000000000001) != 0)
          {
            v286 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v2 >= *((v285 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_214;
            }

            v286 = *(v285 + 8 * v2 + 32);
          }

          v287 = v286;
          v34 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_213;
          }

          v18 = v334;
          dispatch thunk of SportingEventCoverageIngestionUpdate.statusCode.getter();

          if (sub_100008B84(v18, 1, v6) == 1)
          {
            sub_10000A7A8(v18, &qword_1000DEF58, &qword_1000AF358);
            ++v2;
          }

          else
          {
            sub_100097A70();
            v289 = *v288;
            (*v288)(v327, v18, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100097920();
              sub_10001696C();
              sub_100097A4C(v293);
            }

            sub_10008366C();
            v292 = *(v290 + 16);
            v291 = *(v290 + 24);
            if (v292 >= v291 >> 1)
            {
              sub_10009795C(v291);
              sub_10001696C();
              sub_100097A4C(v294);
            }

            *(v350 + 2) = v292 + 1;
            v6 = v332;
            sub_100097A70();
            v289();
            v2 = v34;
          }
        }

        v295 = swift_allocObject();
        v296 = v350;
        *(v295 + 16) = v350;
        sub_10005B070();
        v297 = swift_allocObject();
        *(v297 + 16) = sub_1000977D8;
        *(v297 + 24) = v295;

        v220 = sub_100097998(v298);
        LODWORD(v27) = static os_log_type_t.debug.getter();
        v299 = swift_allocObject();
        *(v299 + 16) = 32;
        v300 = swift_allocObject();
        *(v300 + 16) = 8;
        sub_10005B070();
        v301 = swift_allocObject();
        *(v301 + 16) = sub_1000977E0;
        *(v301 + 24) = v297;
        sub_10005B070();
        v302 = swift_allocObject();
        *(v302 + 16) = sub_100097834;
        *(v302 + 24) = v301;
        sub_100003998(&qword_1000DEF68, &qword_1000AF368);
        v303 = swift_initStackObject();
        *(v303 + 16) = xmmword_1000AB130;
        *(v303 + 32) = sub_1000977F8;
        *(v303 + 40) = v299;
        *(v303 + 48) = sub_10009791C;
        *(v303 + 56) = v300;
        *(v303 + 64) = sub_10009783C;
        *(v303 + 72) = v302;
        swift_setDeallocating();
        sub_1000867AC();
        if (os_log_type_enabled(v220, v27))
        {
          v12 = sub_10001C4D0();
          v304 = sub_10003FC24();
          v18 = v304;
          p_isa = v304;
          *v12 = 136315138;
          v305 = *(v296 + 2);
          if (v305)
          {
            v346 = v304;
            v347 = v12;
            LODWORD(v348) = v27;
            v349 = v220;
            v360[0] = _swiftEmptyArrayStorage;
            sub_100097A7C();
            v306 = v360[0];
            v352 = *(v328 + 16);
            v307 = &v296[(*(v328 + 80) + 32) & ~*(v328 + 80)];
            *&v351 = *(v328 + 72);
            v308 = (v328 + 8);
            do
            {
              v309 = v331;
              v310 = v332;
              sub_100097A70();
              v311();
              v312 = IngestionError.rawValue.getter();
              v314 = v313;
              (*v308)(v309, v310);
              v360[0] = v306;
              v316 = *(v306 + 16);
              v315 = *(v306 + 24);
              if (v316 >= v315 >> 1)
              {
                v318 = sub_100097970(v315);
                sub_100017B68(v318, v316 + 1, 1);
                v306 = v360[0];
              }

              *(v306 + 16) = v316 + 1;
              v317 = v306 + 16 * v316;
              *(v317 + 32) = v312;
              *(v317 + 40) = v314;
              v307 += v351;
              --v305;
            }

            while (v305);

            v220 = v349;
            LOBYTE(v27) = v348;
            v12 = v347;
            v18 = v346;
          }

          else
          {
LABEL_200:
          }

          v319 = Array.description.getter();
          v321 = v320;

          v322 = sub_1000170D4(v319, v321, &p_isa);

          *(v12 + 4) = v322;
          _os_log_impl(&_mh_execute_header, v220, v27, "Ingestion Errors: %s", v12, 0xCu);
          sub_100008A94(v18);
          sub_10000B008(v18);
          sub_10000B008(v12);
        }

        else
        {
        }

        sub_100097A58();
      }
    }
  }

  v323 = sub_1000979D8();
  sub_100095AE8(v323);
}

uint64_t sub_100095020(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003998(&qword_1000DD228, &qword_1000ABE40);
  __chkstk_darwin(v3 - 8);
  v5 = v33 - v4;
  v6 = type metadata accessor for SportingEventViewContext();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_100008E2C(v5, 1, 1, v6);
    return sub_10000A7A8(v5, &qword_1000DD228, &qword_1000ABE40);
  }

  SportingEventSubscription.view.getter();
  if (sub_100008B84(v5, 1, v6) == 1)
  {
    return sub_10000A7A8(v5, &qword_1000DD228, &qword_1000ABE40);
  }

  v33[0] = v7;
  (*(v7 + 32))(v9, v5, v6);
  v10 = SportingEventViewContext.mode.getter();
  v12 = &unk_1000DB000;
  v13 = &unk_1000AA000;
  if (!v11)
  {
    goto LABEL_11;
  }

  v7 = v10;
  v14 = v11;
  if (qword_1000DBA18 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v15 = type metadata accessor for Logger();
    sub_100007DE8(v15, qword_1000E6D30);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34[0] = v19;
      *v18 = v13[181];
      v7 = sub_1000170D4(v7, v14, v34);

      *(v18 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v16, v17, "Mode: %s", v18, 0xCu);
      sub_100008A94(v19);

      v12 = &unk_1000DB000;
    }

    else
    {
    }

LABEL_11:
    if (SportingEventViewContext.players.getter())
    {
      if (*(v12 + 323) != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100007DE8(v21, qword_1000E6D30);

      v22 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v22, v7))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v34[0] = v24;
        *v23 = v13[181];
        v25 = Array.description.getter();
        v27 = v26;

        v28 = sub_1000170D4(v25, v27, v34);

        *(v23 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v22, v7, "Players: %s", v23, 0xCu);
        sub_100008A94(v24);
      }

      else
      {
      }
    }

    v29 = SportingEventViewContext.statistics.getter();
    v13 = v33[0];
    if (!v29)
    {
      break;
    }

    v30 = v29;
    v31 = 0;
    v14 = 0;
    v12 = *(v29 + 16);
    for (i = (v29 + 40); ; i += 2)
    {
      if (v12 == v31)
      {

        return (v13[1])(v9, v6);
      }

      if (v31 >= *(v30 + 16))
      {
        break;
      }

      ++v31;
      v7 = *i;
      v34[0] = *(i - 1);
      v34[1] = v7;

      sub_1000954BC(v34);
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  return (v13[1])(v9, v6);
}

uint64_t sub_1000954BC(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_100003998(qword_1000DEFA0, &qword_1000AF388);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = *a1;
  v8 = a1[1];

  v31 = v7;
  SportingEventCompetitorStatisticType.StatisticName.init(rawValue:)();
  v9 = dispatch thunk of SportingEvent.competitors.getter();
  v33 = v6;
  v35 = v6;
  sub_10009285C(sub_1000978F0, v34, v9);
  v11 = v10;
  v32 = v2;

  v12 = *(v11 + 16);
  if (v12)
  {
    v30 = v8;
    v38 = _swiftEmptyArrayStorage;
    sub_100017B68(0, v12, 0);
    v13 = v38;
    v29[1] = v11;
    v14 = (v11 + 40);
    do
    {
      if (*v14)
      {
        v15 = 0xE300000000000000;
        v16 = 4271950;
      }

      else
      {
        v36 = 0;
        v37 = 0xE000000000000000;
        Double.write<A>(to:)();
        v16 = v36;
        v15 = v37;
      }

      v38 = v13;
      v18 = v13[2];
      v17 = v13[3];
      if (v18 >= v17 >> 1)
      {
        sub_100017B68((v17 > 1), v18 + 1, 1);
        v13 = v38;
      }

      v13[2] = v18 + 1;
      v19 = &v13[2 * v18];
      v19[4] = v16;
      v19[5] = v15;
      v14 += 16;
      --v12;
    }

    while (v12);

    v8 = v30;
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  v36 = v13;
  sub_100003998(&qword_1000DC420, &unk_1000ADE60);
  sub_100097844();
  v20 = BidirectionalCollection<>.joined(separator:)();
  v22 = v21;

  if (qword_1000DBA18 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100007DE8(v23, qword_1000E6D30);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v26 = 136315394;
    *(v26 + 4) = sub_1000170D4(v31, v8, &v36);
    *(v26 + 12) = 2080;
    v27 = sub_1000170D4(v20, v22, &v36);

    *(v26 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v24, v25, "Statistic '%s': %s", v26, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return sub_10000A7A8(v33, qword_1000DEFA0, &qword_1000AF388);
}

uint64_t sub_100095874@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v18 = a3;
  v5 = type metadata accessor for SportingEventCompetitorStatisticType.StatisticName();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003998(qword_1000DEFA0, &qword_1000AF388);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  sub_10000A744(a2, &v16 - v10, qword_1000DEFA0, &qword_1000AF388);
  result = sub_100008B84(v11, 1, v5);
  if (result == 1)
  {
    v13 = 0;
    v14 = 1;
LABEL_5:
    v15 = v18;
    *v18 = v13;
    *(v15 + 8) = v14 & 1;
    return result;
  }

  (*(v6 + 32))(v8, v11, v5);
  sub_100095A5C(&v16);
  if (!v3)
  {
    result = (*(v6 + 8))(v8, v5);
    v13 = v16;
    v14 = v17;
    goto LABEL_5;
  }

  result = (*(v6 + 8))(v8, v5);
  __break(1u);
  return result;
}

void sub_100095A5C(uint64_t a2@<X8>)
{
  v3 = SportingEventCompetitorContainer.competitor.getter();
  v4 = dispatch thunk of SportingEventCompetitor.getStatistic(name:)();

  if (v4)
  {
    SportingEventCompetitorStatistic.value.getter();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v4 == 0;
}

void sub_100095AE8(void *a1)
{
  v190 = a1;
  v181 = type metadata accessor for SportingEventPlay.BaseballPlay();
  v1 = *(v181 - 8);
  __chkstk_darwin(v181);
  v180 = v175 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for SportingEventCompetitorContainer.BaseballScores();
  v3 = *(v211 - 8);
  __chkstk_darwin(v211);
  v210 = v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Sport();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v175 - v10;
  v208 = type metadata accessor for SportingEventPlayAnnotation();
  v12 = *(v208 - 8);
  __chkstk_darwin(v208);
  v207 = v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for CharacterSet();
  v14 = *(v189 - 8);
  __chkstk_darwin(v189);
  v188 = v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = dispatch thunk of SportingEvent.plays.getter();
  v194 = sub_10001BE20(v16);
  v193 = v16 & 0xC000000000000001;
  v192 = v16 & 0xFFFFFFFFFFFFFF8;
  v175[1] = v16;
  v191 = v16 + 32;
  v17 = 0;
  v187 = (v14 + 8);
  v206 = v12 + 16;
  v177 = v12;
  v205 = (v12 + 8);
  v185 = enum case for Sport.baseball(_:);
  v184 = (v6 + 104);
  v183 = (v6 + 8);
  v209 = (v3 + 8);
  v179 = (v1 + 8);
  *&v18 = 134219778;
  v182 = v18;
  *&v18 = 134218754;
  v178 = v18;
  v176 = xmmword_1000AA5B0;
  v197 = v5;
  v196 = v8;
  v195 = v11;
  while (1)
  {
    if (v17 == v194)
    {

      return;
    }

    if (v193)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *(v192 + 16))
      {
        goto LABEL_117;
      }

      v19 = *(v191 + 8 * v17);
    }

    v20 = v19;
    v21 = __OFADD__(v17, 1);
    v22 = v17 + 1;
    if (v21)
    {
      goto LABEL_116;
    }

    v201 = v22;
    v23 = 0xE000000000000000;
    v220 = 0;
    v221 = 0xE000000000000000;
    v24 = dispatch thunk of SportingEventPlay.clock.getter();
    if (v24)
    {
      v25 = v24;
      v26 = dispatch thunk of SportingEventClock.minutes.getter();
      v28 = v27;

      if (v28 & 1) != 0 || (v29 = dispatch thunk of SportingEventPlay.clock.getter()) == 0 || (v30 = v29, v31 = dispatch thunk of SportingEventClock.seconds.getter(), v33 = v32, v30, (v33))
      {
        v203 = 0;
        v23 = 0xE000000000000000;
      }

      else
      {
        v215 = v26;
        v218 = dispatch thunk of CustomStringConvertible.description.getter();
        v219 = v34;
        v35._countAndFlagsBits = 58;
        v35._object = 0xE100000000000000;
        String.append(_:)(v35);
        sub_100003998(&qword_1000DC508, &qword_1000AAF50);
        v36 = swift_allocObject();
        *(v36 + 16) = v176;
        *(v36 + 56) = &type metadata for Int;
        *(v36 + 64) = &protocol witness table for Int;
        *(v36 + 32) = v31;
        v37._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v37);

        v38 = v218;
        v23 = v219;
        swift_beginAccess();
        v203 = v38;
        v220 = v38;
        v221 = v23;
      }
    }

    else
    {
      v203 = 0;
    }

    v39 = dispatch thunk of SportingEventPlay.competitors.getter();
    v40 = v39;
    v41 = v39 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v202 = v23;
    if (v41)
    {
      break;
    }

    v42 = _swiftEmptyArrayStorage;
LABEL_39:
    v218 = v42;
    v61 = sub_100003998(&qword_1000DC420, &unk_1000ADE60);
    v62 = sub_100097844();
    v200 = v61;
    v199 = v62;
    v63 = BidirectionalCollection<>.joined(separator:)();
    v65 = v64;

    v218 = SportingEventPlay.playDescription.getter();
    v219 = v66;
    v67 = v188;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10000E304();
    v68 = StringProtocol.trimmingCharacters(in:)();
    v70 = v69;
    (*v187)(v67, v189);

    v71 = HIBYTE(v70) & 0xF;
    if ((v70 & 0x2000000000000000) == 0)
    {
      v71 = v68 & 0xFFFFFFFFFFFFLL;
    }

    v72 = v197;
    v73 = v196;
    v74 = v195;
    if (!v71)
    {
      if (qword_1000DBA18 != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      sub_100007DE8(v75, qword_1000E6D30);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "Blank Play:", v78, 2u);
      }
    }

    if (qword_1000DBA18 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    v80 = sub_100007DE8(v79, qword_1000E6D30);
    v81 = v20;

    v198 = v80;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();

    v84 = os_log_type_enabled(v82, v83);
    v204 = v81;
    if (v84)
    {
      LODWORD(v213) = v83;
      v85 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      v218 = v212;
      *v85 = v182;
      *(v85 + 4) = v201;
      *(v85 + 12) = 2080;
      v86 = dispatch thunk of SportingEventPlay.id.getter();
      if (v87)
      {
        v88 = v87;
      }

      else
      {
        v86 = 1819047278;
        v88 = 0xE400000000000000;
      }

      v89 = v63;
      v90 = sub_1000170D4(v86, v88, &v218);

      *(v85 + 14) = v90;
      *(v85 + 22) = 2048;
      v91 = dispatch thunk of SportingEventPlay.stamp.getter();
      LOBYTE(v90) = v92;

      if (v90)
      {
        v93 = -1;
      }

      else
      {
        v93 = v91;
      }

      *(v85 + 24) = v93;

      *(v85 + 32) = 2080;
      v94 = v202;

      v95 = sub_1000170D4(v203, v94, &v218);

      *(v85 + 34) = v95;
      *(v85 + 42) = 2080;
      v96 = sub_1000170D4(v89, v65, &v218);

      *(v85 + 44) = v96;
      *(v85 + 52) = 2080;
      v97 = SportingEventPlay.playDescription.getter();
      v99 = sub_1000170D4(v97, v98, &v218);

      *(v85 + 54) = v99;
      *(v85 + 62) = 2080;
      dispatch thunk of SportingEventPlay.levels.getter();
      type metadata accessor for SportingEventPlayLevel();
      v100 = Array.description.getter();
      v102 = v101;

      v103 = sub_1000170D4(v100, v102, &v218);

      *(v85 + 64) = v103;
      *(v85 + 72) = 2080;
      v81 = v204;
      v104 = dispatch thunk of SportingEventPlay.annotations.getter();
      v214 = v82;
      if (v104)
      {
        v105 = *(v104 + 16);
        v203 = v104;
        if (v105)
        {
          v106 = v104 + ((*(v177 + 80) + 32) & ~*(v177 + 80));
          v107 = *(v177 + 72);
          v108 = *(v177 + 16);
          v109 = _swiftEmptyArrayStorage;
          do
          {
            v111 = v207;
            v110 = v208;
            v108(v207, v106, v208);
            v112 = SportingEventPlayAnnotation.rawValue.getter();
            v114 = v113;
            (*v205)(v111, v110);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100016520();
              v109 = v117;
            }

            v115 = v109[2];
            if (v115 >= v109[3] >> 1)
            {
              sub_100016520();
              v109 = v118;
            }

            v109[2] = v115 + 1;
            v116 = &v109[2 * v115];
            v116[4] = v112;
            v116[5] = v114;
            v106 += v107;
            --v105;
          }

          while (v105);
        }

        v72 = v197;
        v73 = v196;
        v74 = v195;
        v81 = v204;
      }

      v119 = Array.description.getter();
      v121 = v120;

      v122 = sub_1000170D4(v119, v121, &v218);

      *(v85 + 74) = v122;
      v123 = v214;
      _os_log_impl(&_mh_execute_header, v214, v213, "Play[%ld], id: %s, play stamp: %ld, play clock: %s, play score: %s - %s, play levels: %s, play annotations: %s", v85, 0x52u);
      swift_arrayDestroy();
    }

    else
    {
    }

    if (!v190)
    {

      goto LABEL_104;
    }

    v124 = v190;
    SportingEventSubscription.sport.getter();
    Sport.init(rawValue:)();
    (*v184)(v73, v185, v72);
    sub_1000978A8(&qword_1000DDF38, &type metadata accessor for Sport, &protocol conformance descriptor for Sport);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v218 == v215 && v219 == v216)
    {

      v129 = *v183;
      (*v183)(v73, v72);
      v129(v74, v72);
    }

    else
    {
      v126 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v127 = *v183;
      (*v183)(v73, v72);
      v127(v74, v72);
      if ((v126 & 1) == 0)
      {

        v128 = v204;
LABEL_100:

        goto LABEL_104;
      }
    }

    v130 = v204;
    v131 = dispatch thunk of SportingEventPlay.competitors.getter();
    v132 = v131;
    if (v131 >> 62)
    {
      v133 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v133 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v186 = v124;
    if (v133)
    {
      v218 = _swiftEmptyArrayStorage;
      sub_100017B68(0, v133 & ~(v133 >> 63), 0);
      v134 = v218;
      v135 = sub_10001BE20(v132);
      if ((v133 & 0x8000000000000000) == 0)
      {
        v136 = v135;
        v137 = 0;
        v214 = (v132 & 0xC000000000000001);
        v203 = v132 & 0xFFFFFFFFFFFFFF8;
        v138 = v135 + 3;
        v212 = v133;
        v213 = v132;
        while ((v136 ^ v137) != 0x8000000000000000)
        {
          v139 = v138 - 4;
          if (v214)
          {
            v140 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v139 & 0x8000000000000000) != 0)
            {
              goto LABEL_114;
            }

            if (v139 >= *(v203 + 16))
            {
              goto LABEL_115;
            }

            v140 = *(v132 + 8 * v138);
          }

          v141 = v140;
          v142 = v210;
          SportingEventCompetitorContainer.baseballScores.getter();
          sub_1000978A8(&qword_1000DEF90, &type metadata accessor for SportingEventCompetitorContainer.BaseballScores, &protocol conformance descriptor for SportingEventCompetitorContainer.BaseballScores);
          v143 = v211;
          v144 = dispatch thunk of CustomStringConvertible.description.getter();
          v146 = v145;
          (*v209)(v142, v143);

          v218 = v134;
          isa = v134[2].isa;
          v147 = v134[3].isa;
          if (isa >= v147 >> 1)
          {
            sub_100017B68((v147 > 1), isa + 1, 1);
            v134 = v218;
          }

          v137 = (v137 + 1);
          v134[2].isa = (isa + 1);
          v149 = &v134[2 * isa];
          v149[4].isa = v144;
          v149[5].isa = v146;
          --v138;
          v132 = v213;
          if (v212 == v137)
          {

            v130 = v204;
            goto LABEL_94;
          }
        }

        goto LABEL_111;
      }

      goto LABEL_119;
    }

    v134 = _swiftEmptyArrayStorage;
LABEL_94:
    v218 = v134;
    v150 = BidirectionalCollection<>.joined(separator:)();
    v152 = v151;

    v153 = v130;

    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v154, v155))
    {

      v128 = v186;
      goto LABEL_100;
    }

    v156 = swift_slowAlloc();
    v214 = swift_slowAlloc();
    v218 = v214;
    *v156 = v178;
    *(v156 + 4) = v201;
    *(v156 + 12) = 2080;
    v157 = v180;
    SportingEventPlay.baseballPlay.getter();
    sub_1000978A8(&qword_1000DEF98, &type metadata accessor for SportingEventPlay.BaseballPlay, &protocol conformance descriptor for SportingEventPlay.BaseballPlay);
    v158 = v181;
    v159 = dispatch thunk of CustomStringConvertible.description.getter();
    v161 = v160;
    (*v179)(v157, v158);
    v162 = sub_1000170D4(v159, v161, &v218);

    *(v156 + 14) = v162;
    *(v156 + 22) = 2080;
    v163 = sub_1000170D4(v150, v152, &v218);

    *(v156 + 24) = v163;
    *(v156 + 32) = 2080;
    v164 = dispatch thunk of SportingEventPlay.clock.getter();
    if (v164)
    {
      v165 = v164;
      v166 = SportingEventClock.period.getter();

      v167 = dispatch thunk of SportingEventClockPeriod.subPeriod.getter();
      if (v167 && (v168 = dispatch thunk of SportingEventClockPeriod.index.getter(), v170 = v169, v167, (v170 & 1) == 0))
      {
        v215 = v168;
        v172 = dispatch thunk of CustomStringConvertible.description.getter();
        v171 = v173;
      }

      else
      {
        v171 = 0xE400000000000000;
        v172 = 1819047278;
      }
    }

    else
    {
      v171 = 0xE400000000000000;
      v172 = 1819047278;
    }

    v174 = sub_1000170D4(v172, v171, &v218);

    *(v156 + 34) = v174;
    _os_log_impl(&_mh_execute_header, v154, v155, "Play_baseball[%ld]: %s, Scores: %s SubPeriod: %s", v156, 0x2Au);
    swift_arrayDestroy();

LABEL_104:
    v17 = v201;
  }

  v215 = _swiftEmptyArrayStorage;
  sub_100017B68(0, v41 & ~(v41 >> 63), 0);
  v42 = v215;
  v43 = sub_10001BE20(v40);
  if (v41 < 0)
  {
    goto LABEL_118;
  }

  v44 = v43;
  v204 = v20;
  v45 = 0;
  v213 = v41;
  v214 = (v40 & 0xC000000000000001);
  v212 = (v40 & 0xFFFFFFFFFFFFFF8);
  v46 = v43 + 3;
  while (2)
  {
    if ((v44 ^ v45) != 0x8000000000000000)
    {
      v47 = v46 - 4;
      if (v214)
      {
        v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v47 & 0x8000000000000000) != 0)
        {
          goto LABEL_112;
        }

        if (v47 >= v212[2].isa)
        {
          goto LABEL_113;
        }

        v48 = *(v40 + 8 * v46);
      }

      v49 = v48;
      v218 = 0;
      v219 = 0xE000000000000000;
      v50 = SportingEventCompetitorContainer.score.getter();
      v51 = SportingEventCompetitorScore.scoreEntries.getter();

      if (v51 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_32;
        }

LABEL_27:
        if ((v51 & 0xC000000000000001) != 0)
        {
          v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_110;
          }

          v52 = *(v51 + 32);
        }

        v53 = v52;

        v54 = SportingEventCompetitorScoreEntry.value.getter();
      }

      else
      {
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

LABEL_32:

        v54 = -1;
      }

      v217 = v54;
      v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v55);

      v57 = v218;
      v56 = v219;
      v215 = v42;
      v59 = v42[2].isa;
      v58 = v42[3].isa;
      if (v59 >= v58 >> 1)
      {
        sub_100017B68((v58 > 1), v59 + 1, 1);
        v42 = v215;
      }

      ++v45;
      v42[2].isa = (v59 + 1);
      v60 = &v42[2 * v59];
      v60[4].isa = v57;
      v60[5].isa = v56;
      --v46;
      if (v213 == v45)
      {

        v20 = v204;
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
}

void sub_100096EF8(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100003998(&qword_1000DE8A8, &qword_1000AEB80);
  __chkstk_darwin(v5 - 8);
  v53 = &v52 - v6;
  v7 = type metadata accessor for SportingEventClockTimeType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v58 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100003998(&qword_1000DEF78, &qword_1000AF378);
  __chkstk_darwin(v59);
  v11 = &v52 - v10;
  v12 = sub_100003998(&qword_1000DEF80, &qword_1000AF380);
  __chkstk_darwin(v12 - 8);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  __chkstk_darwin(v18);
  v20 = &v52 - v19;
  v54 = *a1;
  v21 = dispatch thunk of SportingEventClockTimeContainer.clockTimes.getter();
  if (!v21)
  {
LABEL_25:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v22 = v21;
  v55 = a2;
  v56 = v2;
  v23 = sub_10001BE20(v21);
  v24 = 0;
  v67 = v22 & 0xC000000000000001;
  v68 = v23;
  v66 = v22 & 0xFFFFFFFFFFFFFF8;
  v65 = enum case for SportingEventClockTimeType.announcedAdditional(_:);
  v63 = v22;
  v64 = (v8 + 104);
  v57 = (v8 + 32);
  v61 = v17;
  v62 = (v8 + 8);
  v25 = v59;
  v69 = v14;
  while (1)
  {
    if (v68 == v24)
    {

      a2 = v55;
      goto LABEL_25;
    }

    if (v67)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v24 >= *(v66 + 16))
      {
        goto LABEL_28;
      }

      v26 = *(v22 + 8 * v24 + 32);
    }

    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v70 = v26;
    dispatch thunk of SportingEventClockTime.clockType.getter();
    (*v64)(v17, v65, v7);
    sub_100008E2C(v17, 0, 1, v7);
    v27 = *(v25 + 48);
    sub_10000A744(v20, v11, &qword_1000DEF80, &qword_1000AF380);
    sub_10000A744(v17, &v11[v27], &qword_1000DEF80, &qword_1000AF380);
    if (sub_100008B84(v11, 1, v7) == 1)
    {
      break;
    }

    sub_10000A744(v11, v69, &qword_1000DEF80, &qword_1000AF380);
    if (sub_100008B84(&v11[v27], 1, v7) == 1)
    {
      sub_10000A7A8(v17, &qword_1000DEF80, &qword_1000AF380);
      sub_10000A7A8(v20, &qword_1000DEF80, &qword_1000AF380);
      (*v62)(v69, v7);
      goto LABEL_13;
    }

    v28 = v58;
    (*v57)(v58, &v11[v27], v7);
    sub_1000978A8(&qword_1000DEF88, &type metadata accessor for SportingEventClockTimeType, &protocol conformance descriptor for SportingEventClockTimeType);
    v60 = dispatch thunk of static Equatable.== infix(_:_:)();
    v29 = *v62;
    v30 = v28;
    v25 = v59;
    (*v62)(v30, v7);
    sub_10000A7A8(v61, &qword_1000DEF80, &qword_1000AF380);
    sub_10000A7A8(v20, &qword_1000DEF80, &qword_1000AF380);
    v29(v69, v7);
    v17 = v61;
    sub_10000A7A8(v11, &qword_1000DEF80, &qword_1000AF380);
    v22 = v63;
    if (v60)
    {
      goto LABEL_18;
    }

LABEL_15:

    ++v24;
  }

  sub_10000A7A8(v17, &qword_1000DEF80, &qword_1000AF380);
  sub_10000A7A8(v20, &qword_1000DEF80, &qword_1000AF380);
  if (sub_100008B84(&v11[v27], 1, v7) != 1)
  {
LABEL_13:
    sub_10000A7A8(v11, &qword_1000DEF78, &qword_1000AF378);
    v22 = v63;
    goto LABEL_15;
  }

  sub_10000A7A8(v11, &qword_1000DEF80, &qword_1000AF380);
LABEL_18:

  v31 = v70;
  v32 = dispatch thunk of SportingEventClockTime.minutes.getter();
  v34 = v33;

  a2 = v55;
  if (v34)
  {
    goto LABEL_25;
  }

  v35 = dispatch thunk of SportingEventClockTimeContainer.period.getter();
  if (!v35)
  {
    goto LABEL_25;
  }

  v36 = v35;
  v37 = v53;
  dispatch thunk of SportingEventClockPeriod.type.getter();

  v38 = type metadata accessor for SportingEventClockPeriodType();
  if (sub_100008B84(v37, 1, v38) == 1)
  {
    sub_10000A7A8(v37, &qword_1000DE8A8, &qword_1000AEB80);
    goto LABEL_25;
  }

  v39 = SportingEventClockPeriodType.rawValue.getter();
  v41 = v40;
  (*(*(v38 - 8) + 8))(v37, v38);
  v42 = dispatch thunk of SportingEventClockTimeContainer.period.getter();
  if (!v42 || (v43 = v42, v44 = dispatch thunk of SportingEventClockPeriod.index.getter(), v46 = v45, v43, (v46 & 1) != 0))
  {

    goto LABEL_25;
  }

  v71 = 0;
  v72 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v71 = v39;
  v72 = v41;
  v47._countAndFlagsBits = 32;
  v47._object = 0xE100000000000000;
  String.append(_:)(v47);
  v73 = v44;
  v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v48);

  v49._countAndFlagsBits = 0x736574756E696D20;
  v49._object = 0xEA0000000000203ALL;
  String.append(_:)(v49);
  v73 = v32;
  v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v50);

  v51 = v72;
  *a2 = v71;
  a2[1] = v51;
}

void sub_1000975DC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = type metadata accessor for IngestionError();
  v4 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v20 = a2;
    v25 = _swiftEmptyArrayStorage;
    sub_100017B68(0, v7, 0);
    v8 = v25;
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v22 = *(v9 + 56);
    v23 = v10;
    v21 = (v9 - 8);
    do
    {
      v12 = v24;
      v13 = v9;
      v23(v6, v11, v24);
      v14 = IngestionError.rawValue.getter();
      v16 = v15;
      (*v21)(v6, v12);
      v25 = v8;
      v18 = v8[2];
      v17 = v8[3];
      if (v18 >= v17 >> 1)
      {
        sub_100017B68((v17 > 1), v18 + 1, 1);
        v8 = v25;
      }

      v8[2] = v18 + 1;
      v19 = &v8[2 * v18];
      v19[4] = v14;
      v19[5] = v16;
      v11 += v22;
      --v7;
      v9 = v13;
    }

    while (v7);
    a2 = v20;
  }

  *a2 = v8;
}

uint64_t sub_1000977A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100097800()
{

  sub_10005B070();

  return _swift_deallocObject(v0, v1, v2);
}

unint64_t sub_100097844()
{
  result = qword_1000DC428;
  if (!qword_1000DC428)
  {
    sub_1000089A8(&qword_1000DC420, &unk_1000ADE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC428);
  }

  return result;
}

uint64_t sub_1000978A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10009797C()
{

  return swift_slowAlloc();
}

uint64_t sub_100097998(uint64_t a1)
{

  return Logger.logObject.getter();
}

void sub_100097A08(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void sub_100097A38(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);
  *(v4 + 16) = v2;
  *(v4 + 8 * v3 + 32) = v1;
}

char *sub_100097A7C()
{

  return sub_100017B68(0, v0, 0);
}

uint64_t sub_100097AB8()
{

  return swift_slowAlloc();
}

uint64_t sub_100097B24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void *sub_100097BAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a2;
  v16 = a4;
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  type metadata accessor for ApsPayload.ContentWrapper.CodingKeys(255, v17);
  swift_getWitnessTable();
  v9 = type metadata accessor for KeyedDecodingContainer();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  v13 = sub_100008614(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v7)
  {
    type metadata accessor for Array();
    v17[7] = v16;
    swift_getWitnessTable();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v10 + 8))(v12, v9);
    v13 = v17[0];
  }

  sub_100008A94(a1);
  return v13;
}

Swift::Int sub_100097DE0()
{
  Hasher.init(_seed:)();
  LiveActivityAppIntentServiceError.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100097E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100097B24(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100097EA8@<X0>(_BYTE *a1@<X8>)
{
  result = static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100097EE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100097F38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

void *sub_100097F8C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_100097BAC(a1, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_100097FC8(uint64_t a1)
{
  v1 = swift_allocObject();
  sub_100098018();
  return v1;
}

void sub_100098018()
{
  sub_1000643A8();
  v3 = v2;
  v4 = *v0;
  v51 = v1;
  v52 = v4;
  v5 = *(v4 + 80);
  v40[5] = type metadata accessor for Optional();
  sub_10000AC48();
  v40[4] = v6;
  sub_10000ACFC();
  __chkstk_darwin(v7);
  v40[6] = v40 - v8;
  v40[3] = *(v5 - 8);
  sub_10000ACFC();
  __chkstk_darwin(v9);
  v40[2] = v40 - v10;
  v11 = *(v4 + 88);
  type metadata accessor for Optional();
  sub_10000AC48();
  v44 = v13;
  v45 = v12;
  sub_10000ACFC();
  __chkstk_darwin(v14);
  v41 = v40 - v15;
  type metadata accessor for Date();
  sub_10000AC48();
  v46 = v16;
  v47 = v17;
  __chkstk_darwin(v16);
  v48 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + 96);
  v20 = *(v4 + 112);
  v21 = *(v4 + 120);
  v49 = v5;
  v54[0] = v5;
  v54[1] = v11;
  v40[7] = v11;
  v43 = v19;
  v55 = v19;
  v42 = v20;
  v56 = v20;
  v57 = v21;
  type metadata accessor for ApsPayload.PayloadWrapper.CodingKeys(255, v54);
  sub_10009A57C();
  swift_getWitnessTable();
  type metadata accessor for KeyedDecodingContainer();
  sub_10000AC48();
  v50 = v22;
  sub_10000ACFC();
  __chkstk_darwin(v23);
  v25 = v40 - v24;
  sub_100008614(v3, v3[3]);
  v26 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v51 = v21;
    v27 = v48;
    LOBYTE(v54[0]) = 0;
    *(v0 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10009A5E8(1);
    *(v0 + 3) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v0 + 4) = v28;
    sub_10009A5E8(2);
    *(v0 + 5) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v0 + 6) = v29;
    LOBYTE(v54[0]) = 3;
    sub_100099FA4(qword_1000DC110, &protocol conformance descriptor for Date);
    v30 = v46;
    v40[1] = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v47 + 32))(&v0[qword_1000E6DF8], v27, v30);
    sub_10009A5E8(4);
    v48 = v25;
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32 = &v0[qword_1000E6E00];
    *v32 = v31;
    v32[8] = v33 & 1;
    LOBYTE(v54[0]) = 5;
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = v41;
    v36 = &v0[qword_1000E6E08];
    *v36 = v34;
    v36[1] = v37;
    LOBYTE(v54[0]) = 6;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v44 + 32))(&v0[*(*v0 + 176)], v35, v45);
    type metadata accessor for Array();
    v53 = 7;
    swift_getWitnessTable();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v38 = sub_10009A5BC();
    v39(v38);
    *&v0[*(*v0 + 184)] = v54[0];
  }

  sub_100008A94(v3);
  sub_1000643C0();
}

uint64_t sub_100098A24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6556616D65686373 && a2 == 0xED00006E6F697372;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7365536F706D6574 && a2 == 0xEE0064496E6F6973;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x697463416576696CLL && a2 == 0xEF6C745479746976;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x5464616F6C796170 && a2 == 0xEC0000006E656B6FLL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 2003134838 && a2 == 0xE400000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100098CC0(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x6556616D65686373;
      break;
    case 2:
      result = 0x7365536F706D6574;
      break;
    case 3:
      result = 0x6D617473656D6974;
      break;
    case 4:
      result = 0x697463416576696CLL;
      break;
    case 5:
      result = 0x5464616F6C796170;
      break;
    case 6:
      result = 2003134838;
      break;
    case 7:
      result = 0x746E65746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_100098E24()
{
  Hasher.init(_seed:)();
  sub_10000C8CC(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_100098EE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100098F38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t *sub_100098F8C()
{

  v1 = qword_1000E6DF8;
  type metadata accessor for Date();
  sub_100026794();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 176);
  type metadata accessor for Optional();
  sub_100026794();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t sub_100099080()
{
  sub_100098F8C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_1000990D8()
{
  sub_1000643A8();
  v18 = v1;
  v2 = v0;
  v4 = v3;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v16 = *(*v2 + 120);
  v17 = v6;
  v20 = v6;
  v15 = *(v5 + 88);
  v21 = v15;
  v14 = *(v5 + 104);
  v22 = v14;
  v23 = v16;
  type metadata accessor for ApsPayload.PayloadWrapper.CodingKeys(255, &v20);
  sub_10009A57C();
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  sub_10000AC48();
  v9 = v8;
  sub_10000ACFC();
  __chkstk_darwin(v10);
  v12 = &v14 - v11;
  sub_100008614(v4, v4[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = 0;
  v13 = v18;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v13)
  {
    (*(v9 + 8))(v12, v7);
  }

  else
  {
    sub_10009A5AC(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10009A5AC(2);
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v20) = 3;
    type metadata accessor for Date();
    sub_100099FA4(qword_1000DF0A8, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10009A5AC(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10009A5AC(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v20) = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = *(v2 + *(*v2 + 184));
    type metadata accessor for Array();
    v19 = v14;
    swift_getWitnessTable();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v9 + 8))(v12, 0);
  }

  sub_1000643C0();
}

uint64_t sub_100099478@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100097FC8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000994C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F437365747962 && a2 == 0xEA0000000000746ELL)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100099598(char a1)
{
  if (a1)
  {
    return 0x756F437365747962;
  }

  else
  {
    return 0x64616F6C796170;
  }
}

Swift::Int sub_100099620()
{
  Hasher.init(_seed:)();
  sub_10006209C(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_1000996A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7]);
  *a5 = result;
  return result;
}

uint64_t sub_100099728@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t, void, void, void, void, void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(a1, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7]);
  *a4 = result;
  return result;
}

uint64_t sub_100099768(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1000997BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100099830()
{
  sub_100099810();

  return _swift_deallocClassInstance(v0, 32, 7);
}

void sub_10009987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000643A8();
  v48 = v20;
  v22 = v21;
  sub_10009A5CC();
  v46 = *(v23 + 80);
  sub_10009A5CC();
  v45 = *(v24 + 88);
  sub_10009A5CC();
  v44 = *(v25 + 96);
  sub_10009A5CC();
  v43 = *(v26 + 104);
  sub_10009A5CC();
  v42 = *(v27 + 112);
  sub_10009A5CC();
  v29 = *(v28 + 120);
  v50 = v30;
  v51 = v31;
  v52 = v32;
  v53 = v33;
  v54 = v34;
  v55 = v29;
  type metadata accessor for ApsPayload.CodingKeys(255, &v50);
  sub_10009A594();
  swift_getWitnessTable();
  v35 = type metadata accessor for KeyedEncodingContainer();
  sub_10000AC48();
  v47 = v36;
  sub_10000ACFC();
  __chkstk_darwin(v37);
  v39 = &v42 - v38;
  sub_100008614(v22, v22[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v49 = 0;
  v50 = v46;
  v51 = v45;
  v52 = v44;
  v53 = v43;
  v54 = v42;
  v55 = v29;
  type metadata accessor for ApsPayload.PayloadWrapper(0, &v50);
  swift_getWitnessTable();
  v40 = v48;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v40)
  {
    (*(v47 + 8))(v39, v35);
  }

  else
  {
    v41 = v47;
    LOBYTE(v50) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v41 + 8))(v39, v35);
  }

  sub_1000643C0();
}

uint64_t sub_100099AD8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_100099C48(a1, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return v2;
}

uint64_t sub_100099B28(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_100099C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000643A8();
  v12 = v10;
  v14 = v13;
  v15 = *(*v10 + 96);
  v16 = *(*v10 + 104);
  v17 = *(*v10 + 112);
  v18 = *(*v10 + 120);
  v27 = *(*v10 + 88);
  v28 = *(*v10 + 80);
  v29 = v28;
  v30 = v27;
  v25 = v16;
  v26 = v15;
  v31 = v15;
  v32 = v16;
  v23 = v18;
  v24 = v17;
  v33 = v17;
  v34 = v18;
  type metadata accessor for ApsPayload.CodingKeys(255, &v29);
  sub_10009A594();
  swift_getWitnessTable();
  type metadata accessor for KeyedDecodingContainer();
  sub_10000AC48();
  sub_10000ACFC();
  __chkstk_darwin(v19);
  sub_100008614(v14, v14[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v29 = v28;
    v30 = v27;
    v31 = v26;
    v32 = v25;
    v33 = v24;
    v34 = v23;
    type metadata accessor for ApsPayload.PayloadWrapper(0, &v29);
    LOBYTE(v29) = 0;
    swift_getWitnessTable();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10[2] = a10;
    LOBYTE(v29) = 1;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = sub_10009A5D8();
    v22(v21);
    v12[3] = v20;
  }

  sub_100008A94(v14);
  sub_1000643C0();
}

uint64_t sub_100099F24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100099AD8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100099FA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10009A018(uint64_t a1, uint64_t a2)
{
  if (sub_10009A084(a2, a2))
  {

    return sub_100003998(&qword_1000DC4A8, &qword_1000AAF20);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t sub_10009A084(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009A0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10009A0FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10009A13C(uint64_t result, int a2, int a3)
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

uint64_t sub_10009A178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_10009A1B4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10009A280);
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

_BYTE *sub_10009A2A8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10009A374);
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

_BYTE *sub_10009A45C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10009A4F8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10009A5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a1;
  v56 = a8;
  v57 = a2;
  v51 = a7;
  v58 = a5;
  v59 = a6;
  v60 = a3;
  v9 = sub_100003998(&qword_1000DF3D0, "ԣ");
  sub_10000AC48();
  v11 = v10;
  sub_10000ACFC();
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  v54 = sub_100003998(&qword_1000DF3D8, &qword_1000AF988);
  sub_10000AC48();
  v52 = v15;
  sub_10000ACFC();
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  v55 = sub_100003998(&qword_1000DF3E0, &qword_1000AF990);
  sub_10000AC48();
  v53 = v19;
  sub_10000ACFC();
  __chkstk_darwin(v20);
  v22 = &v46 - v21;
  sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  sub_10000ACFC();
  __chkstk_darwin(v23);
  v25 = &v46 - v24;
  v26 = type metadata accessor for URL();
  sub_10000AC48();
  v28 = v27;
  __chkstk_darwin(v29);
  v31 = &v46 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {

    URL.init(string:)();
    if (sub_100008B84(v25, 1, v26) != 1)
    {
      v48 = v28;
      (*(v28 + 32))(v31, v25, v26);
      v34 = sub_100008614((v49 + 16), *(v49 + 40));
      v61 = sub_100066A9C(v31, v58, v59, *v34, v34[1]);
      sub_100003998(&qword_1000DF3F0, &qword_1000AF998);
      sub_100003998(&qword_1000DC470, &qword_1000AA620);
      v47 = v22;
      sub_10000A6FC(&qword_1000DF3F8, &qword_1000DF3F0, &qword_1000AF998, &protocol conformance descriptor for AnyPublisher<A, B>);
      Publisher.mapError<A>(_:)();

      v35 = swift_allocObject();
      swift_weakInit();
      v36 = swift_allocObject();
      v37 = v59;
      v36[2] = v58;
      v36[3] = v37;
      v38 = v50;
      v40 = v56;
      v39 = v57;
      v36[4] = v51;
      v36[5] = v40;
      v36[6] = v35;
      v36[7] = v38;
      v41 = v60;
      v36[8] = v39;
      v36[9] = v41;
      v36[10] = a4;
      type metadata accessor for LogoDownloadResult(0);
      sub_10000A6FC(&qword_1000DF400, &qword_1000DF3D8, &qword_1000AF988, &protocol conformance descriptor for Publishers.MapError<A, B>);

      v42 = v47;
      v43 = v54;
      Publisher.map<A>(_:)();

      (*(v52 + 8))(v18, v43);
      sub_10000A6FC(&qword_1000DF408, &qword_1000DF3E0, &qword_1000AF990, &protocol conformance descriptor for Publishers.Map<A, B>);
      v44 = v55;
      v33 = Publisher.eraseToAnyPublisher()();
      (*(v53 + 8))(v42, v44);
      (*(v48 + 8))(v31, v26);
      return v33;
    }

    sub_10009B8B0(v25);
  }

  v32 = objc_allocWithZone(NSError);
  v61 = sub_100029EF8(0xD00000000000001ELL, 0x80000001000B2AC0, 1, 0);
  type metadata accessor for LogoDownloadResult(0);
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  Fail.init(error:)();
  sub_10000A6FC(&qword_1000DF3E8, &qword_1000DF3D0, "ԣ", &protocol conformance descriptor for Fail<A, B>);
  v33 = Publisher.eraseToAnyPublisher()();
  (*(v11 + 8))(v14, v9);
  return v33;
}

uint64_t sub_10009ABF4(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for LogoDownloadResult(0) + 24);

  return static SportingEventSubscription.Competitor.LogoFilePaths.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t sub_10009AC94@<X0>(uint64_t a1@<X0>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9)
{
  v19 = a8;
  v20 = a5;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:)();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10009AE38(a1, v15);
  }

  URL.path(percentEncoded:)(1);
  type metadata accessor for LogoDownloadResult(0);
  SportingEventSubscription.Competitor.LogoFilePaths.init(smallSize:defaultSize:)();
  (*(v13 + 8))(v15, v12);
  v16 = v19;
  *a7 = v20;
  a7[1] = a6;
  a7[2] = v16;
  a7[3] = a9;
}

uint64_t sub_10009AE38(uint64_t a1, uint64_t a2)
{
  v45[3] = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  __chkstk_darwin(v5);
  v7 = v45 - v6;
  __chkstk_darwin(v8);
  v10 = v45 - v9;
  v11 = type metadata accessor for SportsLogoSize();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for SportsLogoSize.small(_:), v11, v13);
  v17 = sub_10009B514(v16);
  v18 = v15;
  v19 = v17;
  (*(v12 + 8))(v18, v11);
  if (!v19)
  {
    if (qword_1000DBA28 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100007DE8(v32, qword_1000E6D60);
    (*(v4 + 16))(v7, a1, v3);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v46 = v36;
      *v35 = 136315138;
      v37 = URL.absoluteString.getter();
      v39 = v38;
      (*(v4 + 8))(v7, v3);
      v40 = sub_1000170D4(v37, v39, &v46);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "LogoRepository: can't create CGImage from URL: %s", v35, 0xCu);
      sub_100008A94(v36);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    return 0;
  }

  v20 = sub_10009B678(v19);
  if (v21 >> 60 == 15)
  {
    v22 = v3;
    if (qword_1000DBA28 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100007DE8(v23, qword_1000E6D60);
    (*(v4 + 16))(v10, a1, v3);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v46 = v27;
      *v26 = 136315138;
      v28 = URL.absoluteString.getter();
      v30 = v29;
      (*(v4 + 8))(v10, v22);
      v31 = sub_1000170D4(v28, v30, &v46);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "LogoRepository: can't create data from image with URL: %s", v26, 0xCu);
      sub_100008A94(v27);
    }

    else
    {

      (*(v4 + 8))(v10, v3);
    }

    return 0;
  }

  v41 = v20;
  v42 = v21;
  Data.write(to:options:)();
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  sub_10001F19C(v41, v42);

  return countAndFlagsBits;
}

CGImageRef sub_10009B514@<X0>(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v2 = v1;
  v3 = CGImageSourceCreateWithURL(v1, 0);

  if (!v3)
  {
    return 0;
  }

  sub_100003998(&qword_1000DF410, &unk_1000AF9A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AB130;
  *(inited + 32) = kCGImageSourceThumbnailMaxPixelSize;
  v5 = kCGImageSourceThumbnailMaxPixelSize;
  *(inited + 40) = SportsLogoSize.rawValue.getter();
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = kCGImageSourceCreateThumbnailFromImageAlways;
  *(inited + 80) = 1;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kCGImageSourceCreateThumbnailWithTransform;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 120) = 1;
  sub_10009B9E0();
  sub_10009BA24();
  v6 = kCGImageSourceCreateThumbnailFromImageAlways;
  v7 = kCGImageSourceCreateThumbnailWithTransform;
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v3, 0, isa);

  return ThumbnailAtIndex;
}

uint64_t sub_10009B678(CGImage *a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    return 0;
  }

  v7 = Mutable;
  static UTType.png.getter();
  UTType.identifier.getter();
  (*(v3 + 8))(v5, v2);
  v8 = String._bridgeToObjectiveC()();

  v9 = CGImageDestinationCreateWithData(v7, v8, 1uLL, 0);

  if (!v9)
  {

    return 0;
  }

  CGImageDestinationAddImage(v9, a1, 0);
  if (!CGImageDestinationFinalize(v9))
  {

    return 0;
  }

  v10 = v7;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v11;
}

uint64_t sub_10009B808()
{
  sub_100008A94((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t type metadata accessor for LogoDownloadResult(uint64_t a1)
{
  result = qword_1000DF480;
  if (!qword_1000DF480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009B8B0(uint64_t a1)
{
  v2 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009B918()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009B950()
{

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_10009B9E0()
{
  result = qword_1000DF418;
  if (!qword_1000DF418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DF418);
  }

  return result;
}

unint64_t sub_10009BA24()
{
  result = qword_1000DF420;
  if (!qword_1000DF420)
  {
    sub_10009B9E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF420);
  }

  return result;
}

uint64_t sub_10009BA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SportingEventSubscription.Competitor.LogoFilePaths();
    v9 = a1 + *(a3 + 24);

    return sub_100008B84(v9, a2, v8);
  }
}

uint64_t sub_10009BB2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SportingEventSubscription.Competitor.LogoFilePaths();
    v8 = v5 + *(a4 + 24);

    return sub_100008E2C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009BBAC(uint64_t a1)
{
  result = type metadata accessor for SportingEventSubscription.Competitor.LogoFilePaths();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10009BC28(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_10009BC68()
{
  sub_10009BE7C(v0, __src);
  v1 = swift_allocObject();
  memcpy((v1 + 16), __src, 0xD8uLL);
  sub_100003998(&qword_1000DD038, &unk_1000AB9A0);
  swift_allocObject();
  __src[0] = Future.init(_:)();
  sub_10009BF34();
  v2 = Publisher.eraseToAnyPublisher()();

  return v2;
}

uint64_t sub_10009BD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  __chkstk_darwin(v6 - 8);
  v8 = &__src[-v7 - 8];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = type metadata accessor for TaskPriority();
  sub_100008E2C(v8, 1, 1, v10);
  sub_10009BE7C(a3, __src);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  memcpy(v11 + 4, __src, 0xD8uLL);
  v11[31] = sub_100026094;
  v11[32] = v9;

  sub_10004A77C();
}

uint64_t sub_10009BEB4()
{
  sub_100008A94(v0 + 2);

  sub_100008A94(v0 + 9);
  sub_100008A94(v0 + 14);
  sub_100008A94(v0 + 19);

  return _swift_deallocObject(v0, 232, 7);
}

unint64_t sub_10009BF34()
{
  result = qword_1000DD040;
  if (!qword_1000DD040)
  {
    sub_1000089A8(&qword_1000DD038, &unk_1000AB9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD040);
  }

  return result;
}

uint64_t sub_10009BF98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009BFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[30] = a5;
  v6[31] = a6;
  v6[29] = a4;
  return _swift_task_switch(sub_10009BFF4);
}

uint64_t sub_10009BFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = v3;
  if (qword_1000DBA38 != -1)
  {
    swift_once();
  }

  v4 = v3[29];
  v5 = type metadata accessor for Logger();
  sub_100007DE8(v5, qword_1000E6D90);
  sub_10009BE7C(v4, (v3 + 2));
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = v3[27];
    v11 = v3[28];

    sub_100078B54((v3 + 2));
    v12 = sub_1000170D4(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "SubscriptionStopActivityOperation: destroying activity for '%s'", v8, 0xCu);
    sub_100008A94(v9);
  }

  else
  {

    sub_100078B54((v3 + 2));
  }

  if (qword_1000DBA00 != -1)
  {
    swift_once();
  }

  v13 = swift_task_alloc();
  v3[32] = v13;
  *v13 = v3;
  v13[1] = sub_10009C234;

  return sub_10005625C();
}

uint64_t sub_10009C234()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_10009C3B4;
  }

  else
  {
    v2 = sub_10009C348;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10009C348()
{
  (*(v0 + 240))(1, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009C3B4()
{
  v1 = v0[33];
  v2 = v0[30];
  swift_errorRetain();
  v2(v1, 1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10009C444()
{
  swift_unknownObjectRelease();
  sub_100008A94(v0 + 4);

  sub_100008A94(v0 + 11);
  sub_100008A94(v0 + 16);
  sub_100008A94(v0 + 21);

  return _swift_deallocObject(v0, 264, 7);
}

uint64_t sub_10009C4CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[31];
  v7 = v1[32];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002C904;

  return sub_10009BFD0(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_10009C59C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_10009C5DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10009C660(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v6 = sub_100003998(&qword_1000DED80, &unk_1000AF218);
  sub_10000AC48();
  v107 = v7;
  sub_10000ACFC();
  __chkstk_darwin(v8);
  v104 = &v93 - v9;
  v10 = type metadata accessor for MetricsFieldsContext();
  sub_10000AC48();
  v105 = v11;
  __chkstk_darwin(v12);
  sub_100045D70();
  v102 = v13 - v14;
  sub_1000498EC();
  __chkstk_darwin(v15);
  v103 = &v93 - v16;
  v17 = type metadata accessor for MetricsData();
  sub_10000AC48();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_10000ADA0();
  v23 = v22 - v21;
  v24 = sub_100003998(&qword_1000DF5E8, &unk_1000AFBF0);
  sub_10001C3C4(v24);
  sub_10000ACFC();
  __chkstk_darwin(v25);
  v27 = &v93 - v26;
  v28 = [objc_allocWithZone(ACAccountStore) init];
  ACAccountStore.activeAccount.getter();

  v29 = type metadata accessor for Account();
  if (sub_100008B84(v27, 1, v29) == 1)
  {
    return sub_10000A7A8(v27, &qword_1000DF5E8, &unk_1000AFBF0);
  }

  v96 = v19;
  v97 = v17;
  sub_10000A7A8(v27, &qword_1000DF5E8, &unk_1000AFBF0);
  v115 = a1;
  v116 = v4 & 0x101;
  v31 = &OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_loadUrlLottery;
  if (v4)
  {
    v31 = &OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_notificationLottery;
  }

  v32 = (v3 + *v31);
  v33 = *v32;
  v34 = v32[1];
  v35 = 0x80000001000B2B50;
  v36 = 0x6C725564616F6CLL;
  if ((v4 & 1) == 0)
  {
    v35 = 0xE700000000000000;
  }

  isUniquelyReferenced_nonNull_native = &type metadata for String;
  *(&v111 + 1) = &type metadata for String;
  if (v4)
  {
    v36 = 0xD000000000000011;
  }

  *&v110 = v36;
  *(&v110 + 1) = v35;

  sub_100079618(&v110, 4);
  *(&v111 + 1) = &type metadata for Double;
  *&v110 = v33;
  sub_100079618(&v110, 19);
  *(&v111 + 1) = &type metadata for Double;
  *&v110 = v34;
  sub_100079618(&v110, 20);
  *(&v111 + 1) = &type metadata for String;
  *&v110 = 0xD000000000000011;
  *(&v110 + 1) = 0x80000001000B0480;
  sub_100079618(&v110, 0);
  if (qword_1000DBA88 != -1)
  {
LABEL_54:
    swift_once();
  }

  *(&v111 + 1) = isUniquelyReferenced_nonNull_native;
  v110 = xmmword_1000DF4C0;

  sub_100079618(&v110, 2);
  v38 = v115;
  sub_10007BFB0(1uLL, v115, &v110);
  v39 = *(&v111 + 1);
  sub_10000A7A8(&v110, &qword_1000DE878, &qword_1000AE970);
  if (v39 == 1)
  {
    *(&v111 + 1) = isUniquelyReferenced_nonNull_native;
    strcpy(&v110, "com.apple.tv");
    BYTE13(v110) = 0;
    HIWORD(v110) = -5120;
    sub_100079618(&v110, 1);
    v38 = v115;
  }

  sub_10007BFB0(0x2BuLL, v38, &v113);
  v99 = v23;
  v95 = v6;
  v94 = v10;
  v98 = v4;
  if (*(&v114 + 1) == 1)
  {
    v40 = &qword_1000DE878;
    v41 = &qword_1000AE970;
    v42 = &v113;
LABEL_18:
    sub_10000A7A8(v42, v40, v41);
    goto LABEL_19;
  }

  v110 = v113;
  v111 = v114;
  if (!*(&v114 + 1))
  {
    v40 = &qword_1000DBD08;
    v41 = &qword_1000AA690;
    v42 = &v110;
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v45 = *(v3 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_environmentDataCenter + 8);
    if (v45)
    {
      v46 = *(v3 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_environmentDataCenter);
      v47 = &type metadata for String;
    }

    else
    {
      v46 = 0;
      *&v111 = 0;
      v47 = 1;
    }

    *&v110 = v46;
    *(&v110 + 1) = v45;
    *(&v111 + 1) = v47;

    sub_100079618(&v110, 43);
    goto LABEL_23;
  }

  v43 = *(&v109[0] + 1);
  v44 = (v3 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_environmentDataCenter);
  *v44 = *&v109[0];
  v44[1] = v43;

LABEL_23:
  v100 = v3;
  sub_10009FBE0(&v115);
  v3 = v115;
  v48 = v115 + 64;
  v49 = 1 << *(v115 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v10 = v50 & *(v115 + 64);
  v51 = (v49 + 63) >> 6;

  v52 = 0;
  v53 = &_swiftEmptyDictionarySingleton;
  v4 = &qword_1000DBD08;
  isUniquelyReferenced_nonNull_native = &qword_1000AA690;
  v6 = v107;
  v106 = v3;
  while (1)
  {
    if (!v10)
    {
      while (1)
      {
        v54 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v54 >= v51)
        {
          goto LABEL_48;
        }

        v10 = *(v48 + 8 * v54);
        ++v52;
        if (v10)
        {
          v52 = v54;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_31:
    v55 = __clz(__rbit64(v10)) | (v52 << 6);
    v23 = *(*(v3 + 48) + v55);
    sub_10000A744(*(v3 + 56) + 32 * v55, &v110, &qword_1000DBD08, isUniquelyReferenced_nonNull_native);
    if (*(&v111 + 1) == 1)
    {
      break;
    }

    v10 &= v10 - 1;
    if ((v23 & 0xFE) == 0x2C)
    {
      sub_10000A7A8(&v110, &qword_1000DBD08, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v6 = sub_100083914(v23);
      v23 = v56;
      sub_10000A744(&v110, &v113, &qword_1000DBD08, isUniquelyReferenced_nonNull_native);
      if (*(&v114 + 1))
      {
        sub_100008EA8(&v113, v109);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = v53;
        v57 = v23;
        v23 = v6;
        v101 = v57;
        v58 = sub_100017538(v6, v57);
        v60 = v53[2];
        v61 = (v59 & 1) == 0;
        v3 = v60 + v61;
        if (__OFADD__(v60, v61))
        {
          goto LABEL_53;
        }

        v62 = v58;
        v63 = v59;
        sub_100003998(&qword_1000DEA68, &unk_1000AFC00);
        v64 = sub_1000A2578();
        if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v64, v65))
        {
          v3 = v106;
          v66 = v23;
          v23 = v101;
          if ((v63 & 1) == 0)
          {
            goto LABEL_39;
          }

LABEL_44:

          v53 = v108;
          v80 = (v108[7] + 32 * v62);
          sub_100008A94(v80);
          sub_100008EA8(v109, v80);
          v81 = &v110;
          v4 = &qword_1000DBD08;
          isUniquelyReferenced_nonNull_native = &qword_1000AA690;
          goto LABEL_47;
        }

        v66 = v23;
        v67 = v23;
        v23 = v101;
        v68 = sub_100017538(v67, v101);
        v3 = v106;
        if ((v63 & 1) != (v69 & 1))
        {
          goto LABEL_56;
        }

        v62 = v68;
        if (v63)
        {
          goto LABEL_44;
        }

LABEL_39:
        v53 = v108;
        v108[(v62 >> 6) + 8] |= 1 << v62;
        v70 = (v53[6] + 16 * v62);
        *v70 = v66;
        v70[1] = v23;
        sub_100008EA8(v109, (v53[7] + 32 * v62));
        v4 = &qword_1000DBD08;
        isUniquelyReferenced_nonNull_native = &qword_1000AA690;
        sub_10000A7A8(&v110, &qword_1000DBD08, &qword_1000AA690);
        v71 = v53[2];
        v72 = __OFADD__(v71, 1);
        v73 = v71 + 1;
        if (v72)
        {
          __break(1u);
LABEL_56:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v53[2] = v73;
        v6 = v107;
      }

      else
      {
        sub_10000A7A8(&v113, &qword_1000DBD08, isUniquelyReferenced_nonNull_native);
        v74 = sub_100017538(v6, v23);
        v75 = isUniquelyReferenced_nonNull_native;
        v77 = v76;

        if (v77)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v108 = v53;
          v23 = v75;
          sub_100003998(&qword_1000DEA68, &unk_1000AFC00);
          v78 = sub_1000A2578();
          v3 = v106;
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v78, v79);
          v53 = v108;

          sub_100008EA8((v53[7] + 32 * v74), v109);
          _NativeDictionary._delete(at:)();
          sub_10000A7A8(&v110, &qword_1000DBD08, v23);
          isUniquelyReferenced_nonNull_native = v23;
        }

        else
        {
          sub_10000A7A8(&v110, &qword_1000DBD08, v75);
          memset(v109, 0, sizeof(v109));
          isUniquelyReferenced_nonNull_native = v75;
          v3 = v106;
        }

        v81 = v109;
LABEL_47:
        sub_10000A7A8(v81, &qword_1000DBD08, isUniquelyReferenced_nonNull_native);
        v6 = v107;
      }
    }
  }

LABEL_48:

  MetricsData.init(topic:shouldFlush:fields:includingFields:excludingFields:)();
  if (sub_1000A05A8(v3, v98 & 1))
  {
    v82 = v102;
    MetricsFieldsContext.init()();
    *&v110 = 0xD000000000000012;
    *(&v110 + 1) = 0x80000001000B0440;
    v83 = v104;
    static MetricsFieldsContext.Property<A>.topic.getter();
    v84 = v103;
    MetricsFieldsContext.addingValue<A>(_:forProperty:)();
    (*(v6 + 8))(v83, v95);
    v85 = *(v105 + 8);
    v86 = v94;
    v85(v82, v94);
    MetricsPipeline.process(_:using:)();
    v85(v84, v86);
    v87 = sub_10001BDC0(0, &qword_1000DC5D8, OS_dispatch_queue_ptr);
    v88 = static OS_dispatch_queue.main.getter();
    *(&v111 + 1) = v87;
    v112 = &protocol witness table for OS_dispatch_queue;
    *&v110 = v88;
    Promise.then(perform:orCatchError:on:)();

    v89 = sub_1000A24AC();
    v90(v89);
    sub_100008A94(&v110);
  }

  else
  {
    v91 = sub_1000A24AC();
    v92(v91);
  }
}

uint64_t sub_10009D150()
{
  v1 = v0;
  v2 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  sub_10001C3C4(v2);
  sub_10000ACFC();
  __chkstk_darwin(v3);
  v139 = &v132 - v4;
  v5 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v6 = sub_10001C3C4(v5);
  __chkstk_darwin(v6);
  sub_100045D70();
  v142 = v7 - v8;
  sub_1000498EC();
  __chkstk_darwin(v9);
  sub_1000498F8();
  v141 = v10;
  sub_1000498EC();
  __chkstk_darwin(v11);
  sub_1000498F8();
  v140 = v12;
  sub_1000498EC();
  __chkstk_darwin(v13);
  sub_1000498F8();
  v138 = v14;
  sub_1000498EC();
  __chkstk_darwin(v15);
  sub_1000498F8();
  v136 = v16;
  sub_1000498EC();
  __chkstk_darwin(v17);
  sub_1000498F8();
  v135 = v18;
  sub_1000498EC();
  __chkstk_darwin(v19);
  sub_1000498F8();
  v133 = v20;
  sub_1000498EC();
  __chkstk_darwin(v21);
  v23 = &v132 - v22;
  __chkstk_darwin(v24);
  v26 = &v132 - v25;
  __chkstk_darwin(v27);
  v29 = &v132 - v28;
  __chkstk_darwin(v30);
  v32 = &v132 - v31;
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AFAA0;
  *(inited + 32) = 6;
  v34 = type metadata accessor for ApiRequestMetrics(0);
  v134 = v34[10];
  sub_10000A744(v1 + v134, v32, &qword_1000DC5A0, &unk_1000AB0E0);
  v35 = type metadata accessor for Date();
  v36 = sub_100008B84(v32, 1, v35);
  if (v36 == 1)
  {
    sub_10000A7A8(v32, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 40) = 0u;
    *(inited + 56) = 0u;
  }

  else
  {
    sub_10008C99C(v36);
    *(inited + 64) = &type metadata for UInt64;
    *(inited + 40) = v37;
    sub_1000A23C0();
    v38 = sub_1000A256C();
    v39(v38);
  }

  *(inited + 72) = 7;
  v137 = v34[15];
  sub_10000A744(v1 + v137, v29, &qword_1000DC5A0, &unk_1000AB0E0);
  v40 = sub_1000A23D0(v29);
  v41 = v139;
  if (v42)
  {
    sub_10000A7A8(v29, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 80) = 0u;
    *(inited + 96) = 0u;
  }

  else
  {
    sub_10008C99C(v40);
    *(inited + 104) = &type metadata for UInt64;
    *(inited + 80) = v43;
    sub_1000A23C0();
    (*(v44 + 8))(v29, v35);
  }

  *(inited + 112) = 26;
  sub_10000A744(v1, v26, &qword_1000DC5A0, &unk_1000AB0E0);
  v45 = sub_1000A23D0(v26);
  if (v42)
  {
    sub_10000A7A8(v26, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 120) = 0u;
    *(inited + 136) = 0u;
  }

  else
  {
    sub_10008C99C(v45);
    *(inited + 144) = &type metadata for UInt64;
    *(inited + 120) = v46;
    sub_1000A23C0();
    (*(v47 + 8))(v26, v35);
  }

  *(inited + 152) = 27;
  v48 = *(v1 + v34[11]);
  *(inited + 184) = &type metadata for Bool;
  *(inited + 160) = v48;
  *(inited + 192) = 28;
  sub_10000A744(v1 + v34[5], v23, &qword_1000DC5A0, &unk_1000AB0E0);
  v49 = sub_1000A23D0(v23);
  v50 = v136;
  if (v42)
  {
    sub_10000A7A8(v23, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 200) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    sub_10008C99C(v49);
    *(inited + 224) = &type metadata for UInt64;
    *(inited + 200) = v51;
    sub_1000A23C0();
    (*(v52 + 8))(v23, v35);
  }

  v53 = v133;
  *(inited + 232) = 29;
  sub_10000A744(v1 + v34[8], v53, &qword_1000DC5A0, &unk_1000AB0E0);
  v54 = sub_1000A23D0(v53);
  v55 = v138;
  if (v42)
  {
    sub_10000A7A8(v53, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 240) = 0u;
    *(inited + 256) = 0u;
  }

  else
  {
    sub_10008C99C(v54);
    *(inited + 264) = &type metadata for UInt64;
    *(inited + 240) = v56;
    sub_1000A23C0();
    v57 = sub_1000A256C();
    v58(v57);
  }

  v59 = v135;
  *(inited + 272) = 30;
  sub_10000A744(v1 + v34[9], v59, &qword_1000DC5A0, &unk_1000AB0E0);
  v60 = sub_1000A23D0(v59);
  if (v42)
  {
    sub_10000A7A8(v59, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 280) = 0u;
    *(inited + 296) = 0u;
  }

  else
  {
    sub_10008C99C(v60);
    *(inited + 304) = &type metadata for UInt64;
    *(inited + 280) = v61;
    sub_1000A23C0();
    v62 = sub_1000A256C();
    v63(v62);
  }

  *(inited + 312) = 31;
  sub_10000A744(v1 + v134, v50, &qword_1000DC5A0, &unk_1000AB0E0);
  v64 = sub_1000A23D0(v50);
  if (v42)
  {
    sub_10000A7A8(v50, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 320) = 0u;
    *(inited + 336) = 0u;
  }

  else
  {
    sub_10008C99C(v64);
    *(inited + 344) = &type metadata for UInt64;
    *(inited + 320) = v65;
    sub_1000A23C0();
    (*(v66 + 8))(v50, v35);
  }

  *(inited + 352) = 32;
  v67 = (v1 + v34[12]);
  v68 = v67[1];
  if (v68)
  {
    v69 = *v67;
    v70 = &type metadata for String;
    v71 = v68;
  }

  else
  {
    sub_1000A2414();
    *(inited + 376) = 0;
  }

  *(inited + 360) = v69;
  *(inited + 368) = v71;
  *(inited + 384) = v70;
  *(inited + 392) = 33;
  v72 = *(v1 + v34[6]);
  *(inited + 424) = &type metadata for Int64;
  *(inited + 400) = v72;
  *(inited + 432) = 34;
  sub_10000A744(v1 + v34[13], v55, &qword_1000DC5A0, &unk_1000AB0E0);
  v73 = v55;
  v74 = sub_100008B84(v55, 1, v35);

  if (v74 == 1)
  {
    sub_10000A7A8(v73, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 440) = 0u;
    *(inited + 456) = 0u;
  }

  else
  {
    sub_10008C99C(v75);
    *(inited + 464) = &type metadata for UInt64;
    *(inited + 440) = v76;
    sub_1000A23C0();
    v77 = sub_1000A256C();
    v78(v77);
  }

  *(inited + 472) = 5;
  sub_10000A744(v1 + v34[14], v41, &unk_1000DD7B0, &qword_1000AC150);
  v79 = type metadata accessor for URL();
  if (sub_100008B84(v41, 1, v79) == 1)
  {
    sub_10000A7A8(v41, &unk_1000DD7B0, &qword_1000AC150);
    *(inited + 480) = 0u;
    *(inited + 496) = 0u;
  }

  else
  {
    v80 = URL.absoluteString.getter();
    *(inited + 504) = &type metadata for String;
    *(inited + 480) = v80;
    *(inited + 488) = v81;
    sub_10000ACDC();
    (*(v82 + 8))(v41, v79);
  }

  v83 = v142;
  v84 = v140;
  *(inited + 512) = 35;
  sub_10000A744(v1 + v137, v84, &qword_1000DC5A0, &unk_1000AB0E0);
  v85 = sub_1000A23D0(v84);
  if (v42)
  {
    sub_10000A7A8(v84, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 520) = 0u;
    *(inited + 536) = 0u;
  }

  else
  {
    sub_10008C99C(v85);
    *(inited + 544) = &type metadata for UInt64;
    *(inited + 520) = v86;
    sub_1000A23C0();
    (*(v87 + 8))(v84, v35);
  }

  *(inited + 552) = 36;
  v88 = *(v1 + v34[7]);
  *(inited + 584) = &type metadata for Int64;
  *(inited + 560) = v88;
  *(inited + 592) = 37;
  v89 = v141;
  sub_10000A744(v1 + v34[16], v141, &qword_1000DC5A0, &unk_1000AB0E0);
  v90 = sub_1000A23D0(v89);
  if (v42)
  {
    sub_10000A7A8(v89, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 600) = 0u;
    *(inited + 616) = 0u;
  }

  else
  {
    sub_10008C99C(v90);
    *(inited + 624) = &type metadata for UInt64;
    *(inited + 600) = v91;
    sub_1000A23C0();
    (*(v92 + 8))(v89, v35);
  }

  *(inited + 632) = 38;
  sub_10000A744(v1 + v34[17], v83, &qword_1000DC5A0, &unk_1000AB0E0);
  v93 = sub_1000A23D0(v83);
  if (v42)
  {
    sub_10000A7A8(v83, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 640) = 0u;
    *(inited + 656) = 0u;
  }

  else
  {
    sub_10008C99C(v93);
    *(inited + 664) = &type metadata for UInt64;
    *(inited + 640) = v94;
    sub_1000A23C0();
    (*(v95 + 8))(v83, v35);
  }

  *(inited + 672) = 39;
  v96 = v1 + v34[18];
  if (*(v96 + 8))
  {
    v97 = 0;
    v98 = 0;
    *(inited + 688) = 0u;
  }

  else
  {
    v97 = *v96;
    v98 = &type metadata for Int;
  }

  *(inited + 680) = v97;
  *(inited + 704) = v98;
  *(inited + 712) = 40;
  v99 = (v1 + v34[19]);
  v100 = v99[1];
  if (v100)
  {
    v101 = *v99;
    v102 = &type metadata for String;
    v103 = v100;
  }

  else
  {
    sub_1000A2414();
    *(inited + 736) = 0;
  }

  *(inited + 720) = v101;
  *(inited + 728) = v103;
  *(inited + 744) = v102;
  *(inited + 752) = 41;
  v104 = (v1 + v34[20]);
  v105 = v104[1];
  if (v105)
  {
    v106 = *v104;
    v107 = &type metadata for String;
    v108 = v105;
  }

  else
  {
    sub_1000A2414();
    *(inited + 776) = 0;
  }

  *(inited + 760) = v106;
  *(inited + 768) = v108;
  *(inited + 784) = v107;
  *(inited + 792) = 42;
  v109 = (v1 + v34[21]);
  v110 = v109[1];
  if (v110)
  {
    v111 = *v109;
    v112 = &type metadata for String;
    v113 = v110;
  }

  else
  {
    sub_1000A2414();
    *(inited + 816) = 0;
  }

  *(inited + 800) = v111;
  *(inited + 808) = v113;
  *(inited + 824) = v112;
  *(inited + 832) = 43;
  v114 = (v1 + v34[22]);
  v115 = v114[1];
  if (v115)
  {
    v116 = *v114;
    v117 = &type metadata for String;
    v118 = v115;
  }

  else
  {
    sub_1000A2414();
    *(inited + 856) = 0;
  }

  *(inited + 840) = v116;
  *(inited + 848) = v118;
  *(inited + 864) = v117;
  *(inited + 872) = 16;
  v119 = (v1 + v34[23]);
  v120 = v119[1];
  if (v120)
  {
    v121 = *v119;
    v122 = &type metadata for String;
    v123 = v120;
  }

  else
  {
    sub_1000A2414();
    *(inited + 896) = 0;
  }

  *(inited + 880) = v121;
  *(inited + 888) = v123;
  *(inited + 904) = v122;
  v124 = (inited + 920);
  *(inited + 912) = 47;
  v125 = *(v1 + v34[24]);
  if (v125 == 2)
  {
    v126 = 0;
    *v124 = 0;
    *(inited + 928) = 0;
    *(inited + 936) = 0;
  }

  else
  {
    *v124 = v125 & 1;
    v126 = &type metadata for Bool;
  }

  *(inited + 944) = v126;
  *(inited + 952) = 48;
  v127 = (v1 + v34[25]);
  v128 = v127[1];
  if (v128)
  {
    v129 = *v127;
    v130 = &type metadata for String;
  }

  else
  {
    v129 = 0;
    v130 = 0;
    *(inited + 976) = 0;
  }

  *(inited + 960) = v129;
  *(inited + 968) = v128;
  *(inited + 984) = v130;

  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10009DDF4()
{
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AA5B0;
  *(inited + 32) = 39;
  type metadata accessor for AMSError(0);
  sub_1000A2218(&qword_1000DBB28, type metadata accessor for AMSError, &unk_1000AA2F0);
  v1 = _BridgedStoredNSError.errorUserInfo.getter();
  sub_10007BF54(0x7574617453534D41, 0xED000065646F4373, v1, (inited + 40));

  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10009DF18(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1000A1764(a1, sub_1000A16BC, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_10009DF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v5 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  sub_10001C3C4(v5);
  sub_10000ACFC();
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v9 = type metadata accessor for Date();
  sub_10000AC48();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000ADA0();
  v15 = v14 - v13;
  sub_10007C2F4(44, a2, &v39);
  if (v40)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_10000A7A8(&v39, &qword_1000DBD08, &qword_1000AA690);
  }

  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AB130;
  *(inited + 32) = 10;
  v17 = Date.init()();
  sub_10008C99C(v17);
  v19 = v18;
  (*(v11 + 8))(v15, v9);
  *(inited + 64) = &type metadata for UInt64;
  *(inited + 40) = v19;
  *(inited + 72) = 5;
  URLRequest.url.getter();
  v20 = type metadata accessor for URL();
  if (sub_100008B84(v8, 1, v20) == 1)
  {
    sub_10000A7A8(v8, &unk_1000DD7B0, &qword_1000AC150);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    *(inited + 96) = 0;
  }

  else
  {
    v21 = URL.absoluteString.getter();
    v22 = v24;
    sub_10000ACDC();
    (*(v25 + 8))(v8, v20);
    v23 = &type metadata for String;
  }

  *(inited + 80) = v21;
  *(inited + 88) = v22;
  *(inited + 104) = v23;
  *(inited + 112) = 40;
  v26 = URLRequest.httpMethod.getter();
  if (v27)
  {
    v28 = &type metadata for String;
  }

  else
  {
    v26 = 0;
    v28 = 0;
    *(inited + 136) = 0;
  }

  *(inited + 120) = v26;
  *(inited + 128) = v27;
  *(inited + 144) = v28;
  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  v29 = Dictionary.init(dictionaryLiteral:)();
  v30 = sub_10009E380(a2);
  v31 = sub_10009DF18(v30, v29);

  v33 = sub_10009DF18(v32, v31);
  sub_10000A744(v38, &v39, &qword_1000DD548, &qword_1000ABF90);
  v34 = v40;
  if (v40)
  {
    v35 = v41;
    sub_100008614(&v39, v40);
    v36 = (*(v35 + 8))(v34, v35);
    sub_100008A94(&v39);
  }

  else
  {
    sub_10000A7A8(&v39, &qword_1000DD548, &qword_1000ABF90);
    v36 = Dictionary.init(dictionaryLiteral:)();
  }

  return sub_10009DF18(v36, v33);
}

Swift::Int sub_10009E380(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003998(&qword_1000DF5F0, &qword_1000AFC10);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = *(*(a1 + 48) + v11);
    sub_10001B798(*(a1 + 56) + 32 * v11, v26 + 8);
    LOBYTE(v26[0]) = v12;
    v24[0] = v26[0];
    v24[1] = v26[1];
    v25 = v27;
    sub_100008EA8((v24 + 8), &v22);
    sub_100003998(&qword_1000DBD08, &qword_1000AA690);
    swift_dynamicCast();
    *v23 = *&v23[8];
    *&v23[16] = *&v23[24];
    Hasher.init(_seed:)();
    sub_100083914(v12);
    String.hash(into:)();

    result = Hasher._finalize()();
    v13 = -1 << v2[32];
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *&v7[8 * v15];
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
    *(*(v2 + 6) + v16) = v12;
    v21 = (*(v2 + 7) + 32 * v16);
    *v21 = *v23;
    v21[1] = *&v23[16];
    ++*(v2 + 2);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10009E64C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000AC48();
  v28 = v1;
  __chkstk_darwin(v2);
  sub_10000ADA0();
  v5 = v4 - v3;
  type metadata accessor for DispatchQoS();
  sub_10000AC48();
  v26 = v7;
  v27 = v6;
  __chkstk_darwin(v6);
  sub_10000ADA0();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchTime();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_100045D70();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = &v23 - v17;
  sub_10001BDC0(0, &qword_1000DC5D8, OS_dispatch_queue_ptr);
  v23 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v12 + 8);
  v24(v15, v11);
  v19 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000A21F8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007B4E8;
  aBlock[3] = &unk_1000D4AB0;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000A2218(&qword_1000DF620, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003998(&qword_1000DF628, &qword_1000AFC40);
  sub_10000A6FC(&qword_1000DF630, &qword_1000DF628, &qword_1000AFC40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v23;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  (*(v28 + 8))(v5, v0);
  (*(v26 + 8))(v10, v27);
  return (v24)(v18, v25);
}

unint64_t sub_10009E9F4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CFAA0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10009EA40(char a1)
{
  result = 0x6172747369676572;
  switch(a1)
  {
    case 1:
      result = 0x7473696765726E75;
      break;
    case 2:
      result = 0x6C6C416863746566;
      break;
    case 3:
      result = 0x61684364756F6C63;
      break;
    case 4:
      result = 0x4D7370416C6C7566;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10009EB3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009E9F4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10009EB6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009EA40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_10009EB98()
{
  type metadata accessor for SportsPerformanceMeasurement(0);
  swift_allocObject();
  result = sub_10009EC60();
  qword_1000E6E10 = result;
  return result;
}

void sub_10009EBD8()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = MGGetBoolAnswer();

  v2 = 0x6C616E7265746E69;
  if (!v1)
  {
    v2 = 0x72656D6F74737563;
  }

  *&xmmword_1000DF4C0 = v2;
  *(&xmmword_1000DF4C0 + 1) = 0xE800000000000000;
}

void *sub_10009EC60()
{
  v1 = v0;
  v97 = *v0;
  v96 = type metadata accessor for MetricsPipeline();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for MetricsFieldExclusionRequest();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v89 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for MetricsFieldsAggregator();
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v86 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v87 = &v80 - v6;
  v105 = type metadata accessor for MetricsPipeline.Configuration();
  v88 = *(v105 - 8);
  __chkstk_darwin(v105);
  v84 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v80 - v9;
  __chkstk_darwin(v10);
  v104 = &v80 - v11;
  v12 = sub_100003998(&qword_1000DF608, &qword_1000AFC28);
  __chkstk_darwin(v12 - 8);
  v83 = &v80 - v13;
  v14 = type metadata accessor for AMSMetricsIdentifierFieldsProvider();
  v102 = *(v14 - 8);
  v103 = v14;
  __chkstk_darwin(v14);
  v100 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for Bag();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v80 = &v80 - v19;
  v20 = OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_dataRepository;
  if (qword_1000DB9C8 != -1)
  {
    swift_once();
  }

  *(v1 + v20) = qword_1000E6CD0;
  v98 = OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_activityCapUtility;
  v21 = type metadata accessor for ActivityAuthorization();
  v22 = objc_allocWithZone(v21);

  v23 = [v22 init];
  v24 = sub_1000499E0();
  v26 = v25;
  v107 = v21;
  v108 = &off_1000D1900;
  v106[0] = v23;
  type metadata accessor for ActivityCapUtility();
  v27 = swift_allocObject();
  v28 = sub_10000B90C(v106, v21);
  v29 = __chkstk_darwin(v28);
  v31 = (&v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31, v29);
  v33 = *v31;
  v27[5] = v21;
  v27[6] = &off_1000D1900;
  v27[2] = v33;
  v27[7] = v24;
  v27[8] = v26;
  sub_100008A94(v106);

  *(v1 + v98) = v27;
  v82 = v1;
  v34 = (v1 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_environmentDataCenter);
  *v34 = 0;
  v34[1] = 0;
  if (qword_1000DB9B8 != -1)
  {
    swift_once();
  }

  v35 = *(qword_1000E6CC0 + 16);
  v36 = v80;
  Bag.init(from:)();
  v81 = sub_100003998(&qword_1000DED90, &unk_1000AFC30);
  v37 = *(v99 + 16);
  v38 = v101;
  v37(v17, v36);
  v98 = LowMemoryMetricsEventLinter.__allocating_init(defaultTopic:bag:rules:)();
  v39 = [objc_allocWithZone(ACAccountStore) init];
  v107 = sub_10001BDC0(0, &qword_1000DF610, ACAccountStore_ptr);
  v108 = &protocol witness table for ACAccountStore;
  v106[0] = v39;
  v40 = v83;
  (v37)(v83, v36, v38);
  sub_100008E2C(v40, 0, 1, v38);
  sub_100003998(&qword_1000DC4A8, &qword_1000AAF20);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1000AFAB0;
  sub_10001BDC0(0, &qword_1000DF618, AMSMetricsIdentifierKey_ptr);
  *(v41 + 32) = sub_10009F8B0(0x6449746E65696C63, 0xE800000000000000, 0);
  v42 = [objc_opt_self() currentProcess];
  static AMSMetricsIdentifierFieldsProvider.metricsResetInterval.getter();
  v43 = v100;
  AMSMetricsIdentifierFieldsProvider.init(accountProvider:process:bag:shouldMigrate:resetInterval:keys:activeITunesAccountRequired:)();
  v44 = type metadata accessor for AMSMetricsEventRecorder();
  v45 = v38;
  (v37)(v17, v36, v38);
  sub_1000592AC(&off_1000CEF28);
  v46 = AMSMetricsEventRecorder.__allocating_init(bag:defaultTopic:anonymousTopics:)();
  v47 = OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_eventRecorder;
  v48 = v82;
  *(v82 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_eventRecorder) = v46;
  (v37)(v17, v36, v45);
  v107 = v81;
  v108 = sub_10000A6FC(&qword_1000DEDA0, &qword_1000DED90, &unk_1000AFC30, &protocol conformance descriptor for LowMemoryMetricsEventLinter<A>);
  v106[0] = v98;

  sub_1000592AC(&off_1000CEF58);
  v49 = v84;
  MetricsPipeline.Configuration.init(bag:linter:anonymousTopics:)();
  v50 = *(v48 + v47);
  v107 = v44;
  v108 = &protocol witness table for AMSMetricsEventRecorder;
  v106[0] = v50;

  v51 = v85;
  MetricsPipeline.Configuration.withRecorder(_:)();
  v52 = v88;
  v81 = *(v88 + 8);
  v83 = (v88 + 8);
  v81(v49, v105);
  sub_100008A94(v106);
  v53 = v86;
  MetricsFieldsAggregator.init()();
  v54 = v103;
  v107 = v103;
  v108 = &protocol witness table for AMSMetricsIdentifierFieldsProvider;
  v55 = sub_10003F5B0(v106);
  (*(v102 + 16))(v55, v43, v54);
  v56 = v89;
  static MetricsFieldExclusionRequest.amsMetricsID.getter();
  v57 = v87;
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  (*(v91 + 8))(v56, v93);
  v58 = *(v90 + 8);
  v59 = v48;
  v60 = v92;
  v58(v53, v92);
  sub_100008A94(v106);
  v61 = v104;
  MetricsPipeline.Configuration.withAggregator(_:)();
  v58(v57, v60);
  v62 = v105;
  v63 = v81;
  v81(v51, v105);
  (*(v52 + 16))(v51, v61, v62);
  v64 = v94;
  MetricsPipeline.init(from:)();
  (*(v95 + 32))(v59 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_metricsPipeline, v64, v96);
  v65 = COERCE_DOUBLE(sub_10009F91C(v36, 0xD000000000000017, 0x80000001000B2BA0));
  v67 = 1.0;
  if (v66)
  {
    v68 = 1.0;
  }

  else
  {
    v68 = v65;
  }

  v69 = COERCE_DOUBLE(sub_10009F91C(v36, 0x446E6F6973736573, 0xEF6E6F6974617275));
  if (v70)
  {
    v71 = 60.0;
  }

  else
  {
    v71 = v69 / 1000.0;
  }

  v72 = COERCE_DOUBLE(sub_10009F91C(v36, 0xD000000000000028, 0x80000001000B2BC0));
  if ((v73 & 1) == 0)
  {
    v67 = v72;
  }

  v74 = COERCE_DOUBLE(sub_10009F91C(v36, 0xD000000000000020, 0x80000001000B2BF0));
  if (v75)
  {
    v76 = 60.0;
  }

  else
  {
    v76 = v74 / 1000.0;
  }

  v77 = v59 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_loadUrlLottery;
  *v77 = v68;
  *(v77 + 8) = v71;
  *(v77 + 16) = 0x6C725564616F6CLL;
  *(v77 + 24) = 0xE700000000000000;

  v63(v104, v62);
  (*(v102 + 8))(v100, v103);
  (*(v99 + 8))(v36, v101);
  v78 = v59 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_notificationLottery;
  *v78 = v67;
  *(v78 + 8) = v76;
  *(v78 + 16) = 0xD000000000000011;
  *(v78 + 24) = 0x80000001000B2B50;
  return v59;
}

id sub_10009F8B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [swift_getObjCClassFromMetadata() keyWithName:v4 crossDeviceSync:a3 & 1];

  return v5;
}

id sub_10009F91C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = Bag.amsBag.getter();
  _StringGuts.grow(_:)(41);

  v26 = 0x80000001000B2C20;
  v6._countAndFlagsBits = a2;
  v6._object = a3;
  String.append(_:)(v6);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v5 doubleForKey:v7];

  swift_unknownObjectRelease();
  v25 = 0;
  v9 = [v8 valueWithError:&v25];

  v10 = v25;
  if (v9)
  {
    v25 = 0;
    LOBYTE(v26) = 1;
    v11 = v10;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    v12 = v25;
    v13 = v26;
  }

  else
  {
    v14 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v12 = 0;
    v13 = 1;
  }

  v15 = Bag.amsBag.getter();
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v25 = 0xD000000000000014;
  v26 = 0x80000001000B2C50;
  v16._countAndFlagsBits = a2;
  v16._object = a3;
  String.append(_:)(v16);
  v17 = String._bridgeToObjectiveC()();

  v18 = [v15 doubleForKey:v17];

  swift_unknownObjectRelease();
  v25 = 0;
  v19 = [v18 valueWithError:&v25];

  v20 = v25;
  if (v19)
  {
    v25 = 0;
    LOBYTE(v26) = 1;
    v21 = v20;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    v22 = v25;
  }

  else
  {
    v23 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v22 = 0;
  }

  if (v13)
  {
    return v22;
  }

  else
  {
    return v12;
  }
}

void sub_10009FBE0(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Sport();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v93 - v9;
  v11 = type metadata accessor for SportingEventProgressStatus();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (!*(*a1 + 16))
  {
    return;
  }

  v16 = sub_1000175AC(3);
  if ((v17 & 1) == 0)
  {
    return;
  }

  sub_10000A744(*(v15 + 56) + 32 * v16, &v103, &qword_1000DBD08, &qword_1000AA690);
  v105 = v103;
  v106 = v104;
  if (!*(&v104 + 1))
  {
LABEL_29:
    v42 = &qword_1000DBD08;
    v43 = &qword_1000AA690;
    v44 = &v105;
    goto LABEL_30;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v99 = v12;
  v100 = v5;
  v18 = *(v2 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_dataRepository);
  v101 = a1;
  sub_100008614((v18 + 16), *(v18 + 40));
  v19 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();

  if (!v19)
  {
    return;
  }

  v20 = SportingEventSubscription.qosRegistrationId.getter();
  if (v21)
  {
    v22 = &type metadata for String;
  }

  else
  {
    v20 = 0;
    *&v106 = 0;
    v22 = 1;
  }

  v23 = v101;
  *&v105 = v20;
  *(&v105 + 1) = v21;
  *(&v106 + 1) = v22;
  sub_100079618(&v105, 21);
  v24 = SportingEventSubscription.sportingEventDetails.getter();
  v25 = dispatch thunk of SportingEvent.coverage.getter();

  if (v25 && (v26 = dispatch thunk of SportingEventCoverage.ingestion.getter(), v25, v26) && (v27 = dispatch thunk of SportingEventCoverageIngestion.last.getter(), v29 = v28, v26, (v29 & 1) == 0))
  {
    sub_10008CA40(*&v27);
    *(&v106 + 1) = &type metadata for UInt64;
    *&v105 = v48;
  }

  else
  {
    v105 = 0uLL;
    *&v106 = 0;
    *(&v106 + 1) = 1;
  }

  v30 = v99;
  sub_100079618(&v105, 15);
  v31 = SportingEventSubscription.applicationType.getter();
  if (v32)
  {
    v33 = &type metadata for String;
  }

  else
  {
    v31 = 0;
    *&v106 = 0;
    v33 = 1;
  }

  *&v105 = v31;
  *(&v105 + 1) = v32;
  *(&v106 + 1) = v33;
  sub_100079618(&v105, 22);
  v34 = SportingEventSubscription.clientApp.getter();
  *(&v106 + 1) = &type metadata for String;
  *&v105 = v34;
  *(&v105 + 1) = v35;
  sub_100079618(&v105, 1);
  v36 = SportingEventSubscription.sportingEventDetails.getter();
  SportingEvent.progressStatus.getter();

  v37 = SportingEventProgressStatus.rawValue.getter();
  v39 = v38;
  (*(v30 + 8))(v14, v11);
  *(&v106 + 1) = &type metadata for String;
  *&v105 = v37;
  *(&v105 + 1) = v39;
  sub_100079618(&v105, 46);
  SportingEventSubscription.sport.getter();
  Sport.init(rawValue:)();
  v40 = v100;
  (*(v100 + 104))(v7, enum case for Sport.baseball(_:), v4);
  LOBYTE(v37) = sub_100064D34(v10, v7);
  v41 = *(v40 + 8);
  v41(v7, v4);
  v41(v10, v4);
  if ((v37 & 1) == 0)
  {
    goto LABEL_79;
  }

  sub_10007BFB0(0x2DuLL, *v23, &v103);
  if (*(&v104 + 1) == 1)
  {

    v42 = &qword_1000DE878;
    v43 = &qword_1000AE970;
    v44 = &v103;
LABEL_30:
    sub_10000A7A8(v44, v42, v43);
    return;
  }

  v105 = v103;
  v106 = v104;
  if (!*(&v104 + 1))
  {

    goto LABEL_29;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_79:

    return;
  }

  if (sub_10009EA40(v102) == 0x4D7370416C6C7566 && v45 == 0xEE00656761737365)
  {
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v47 & 1) == 0)
    {
      goto LABEL_79;
    }
  }

  v49 = SportingEventSubscription.sportingEventDetails.getter();
  v50 = dispatch thunk of SportingEvent.competitors.getter();

  v51 = sub_10001BE20(v50);
  v52 = 0;
  v93 = 0;
  v99 = v50 & 0xC000000000000001;
  v100 = v51;
  v53 = _swiftEmptyArrayStorage;
  v98 = v50 & 0xFFFFFFFFFFFFFF8;
LABEL_33:
  for (i = v52; v100 != i; ++i)
  {
    if (v99)
    {
      v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(v98 + 16))
      {
        goto LABEL_83;
      }

      v55 = *(v50 + 8 * i + 32);
    }

    v56 = v55;
    v52 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      return;
    }

    v57 = SportingEventCompetitorContainer.competitor.getter();
    v58 = dispatch thunk of SportingEventCompetitor.members.getter();

    if (v58)
    {
      v95 = v53;
      v96 = v19;
      *&v105 = _swiftEmptyArrayStorage;
      v59 = sub_10001BE20(v58);
      v60 = 0;
      v97 = (v58 & 0xC000000000000001);
      while (v59 != v60)
      {
        if (v97)
        {
          v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v60 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_85;
          }

          v61 = *(v58 + 8 * v60 + 32);
        }

        v62 = v61;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_84;
        }

        v63 = dispatch thunk of SportingEventParticipant.images.getter();
        if (v63 && (v63 >> 62 ? (v64 = _CocoaArrayWrapper.endIndex.getter()) : (v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v64))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v60;
      }

      v94 = v50;

      v65 = v105;
      v66 = sub_10001BE20(v105);
      v67 = 0;
      v97 = _swiftEmptyArrayStorage;
      while (v66 != v67)
      {
        if ((v65 & 0xC000000000000001) != 0)
        {
          v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v67 >= *(v65 + 16))
          {
            goto LABEL_87;
          }

          v68 = *(v65 + 8 * v67 + 32);
        }

        v69 = v68;
        v70 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          goto LABEL_86;
        }

        v71 = dispatch thunk of SportingEventParticipant.displayName.getter();
        v73 = v72;

        ++v67;
        if (v73)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100016520();
            v97 = v77;
          }

          v74 = v97[2];
          if (v74 >= v97[3] >> 1)
          {
            sub_100016520();
            v97 = v78;
          }

          v75 = v97;
          v97[2] = v74 + 1;
          v76 = &v75[2 * v74];
          v76[4] = v71;
          v76[5] = v73;
          v67 = v70;
        }
      }

      *&v105 = v97;
      sub_100003998(&qword_1000DC420, &unk_1000ADE60);
      sub_10000A6FC(&qword_1000DC428, &qword_1000DC420, &unk_1000ADE60, &protocol conformance descriptor for [A]);
      v79 = BidirectionalCollection<>.joined(separator:)();
      v81 = v80;

      v82 = v95;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100016520();
        v82 = v86;
      }

      v23 = v101;
      v19 = v96;
      v83 = v82[2];
      v84 = v82;
      if (v83 >= v82[3] >> 1)
      {
        sub_100016520();
        v84 = v87;
      }

      v84[2] = v83 + 1;
      v53 = v84;
      v85 = &v84[2 * v83];
      v85[4] = v79;
      v85[5] = v81;
      v50 = v94;
      goto LABEL_33;
    }
  }

  *&v105 = v53;
  sub_100003998(&qword_1000DC420, &unk_1000ADE60);
  sub_10000A6FC(&qword_1000DC428, &qword_1000DC420, &unk_1000ADE60, &protocol conformance descriptor for [A]);
  v88 = BidirectionalCollection<>.joined(separator:)();
  v90 = v89;

  v91 = HIBYTE(v90) & 0xF;
  if ((v90 & 0x2000000000000000) == 0)
  {
    v91 = v88 & 0xFFFFFFFFFFFFLL;
  }

  if (v91)
  {
    v92 = sub_10001D984(v88, v90);

    sub_1000A16F0(v92, sub_1000A16BC, 0, v23);
    goto LABEL_79;
  }
}

uint64_t sub_1000A05A8(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    if (*(a1 + 16))
    {
      v5 = sub_1000175AC(3);
      if (v6)
      {
        sub_10000A744(*(a1 + 56) + 32 * v5, &v13, &qword_1000DBD08, &qword_1000AA690);
        sub_10000A7A8(&v13, &qword_1000DE878, &qword_1000AE970);
LABEL_9:
        v9 = OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_notificationLottery;
        goto LABEL_10;
      }
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
    sub_10000A7A8(&v13, &qword_1000DE878, &qword_1000AE970);
    sub_10007BFB0(0x17uLL, a1, &v13);
    v10 = v16;
    sub_10000A7A8(&v13, &qword_1000DE878, &qword_1000AE970);
    if (v10 != 1)
    {
      goto LABEL_9;
    }

LABEL_12:
    v11 = 0;
    return v11 & 1;
  }

  if (!*(a1 + 16) || (v7 = sub_1000175AC(5), (v8 & 1) == 0))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
    sub_10000A7A8(&v13, &qword_1000DE878, &qword_1000AE970);
    goto LABEL_12;
  }

  sub_10000A744(*(a1 + 56) + 32 * v7, &v13, &qword_1000DBD08, &qword_1000AA690);
  sub_10000A7A8(&v13, &qword_1000DE878, &qword_1000AE970);
  v9 = OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_loadUrlLottery;
LABEL_10:
  v11 = sub_1000A0904(*(v3 + v9 + 16), *(v3 + v9 + 24), *(v3 + v9), *(v3 + v9 + 8));
  return v11 & 1;
}

void sub_1000A0728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000DBA18 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100007DE8(v3, qword_1000E6D30);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, oslog, v4, "SportsPerformanceMeasurement: error: %@", v5, 0xCu);
    sub_10000A7A8(v6, &unk_1000DD790, &unk_1000AB7A0);
  }
}

uint64_t sub_1000A0884(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    AMSMetricsEventRecorder.flush()();
  }

  return result;
}

uint64_t sub_1000A0904(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v26 - v18;
  if (a3 <= 0.0)
  {
    return 0;
  }

  if (a3 < 1.0)
  {
    sub_1000A1468(a1, a2, v12);
    if (sub_100008B84(v12, 1, v13) == 1)
    {
      sub_10000A7A8(v12, &qword_1000DC5A0, &unk_1000AB0E0);
      goto LABEL_7;
    }

    (*(v14 + 32))(v19, v12, v13);
    Date.init()();
    v20 = static Date.< infix(_:_:)();
    v21 = *(v14 + 8);
    v21(v16, v13);
    v21(v19, v13);
    if ((v20 & 1) == 0)
    {
LABEL_7:
      sub_1000A1F40(0.0, 1.0);
      if (v23 != 0.0 && v23 <= a3)
      {
        Date.init()();
        v22 = 1;
        sub_100008E2C(v9, 0, 1, v13);
        sub_1000A128C(v9, a1, a2);
        return v22;
      }

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000A0B90()
{
  v1 = OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_metricsPipeline;
  type metadata accessor for MetricsPipeline();
  sub_10000ACDC();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1000A0C58()
{
  sub_1000A0B90();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000A0CB0()
{
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AB130;
  *(inited + 32) = 23;
  sub_1000A25A0([v0 code], &type metadata for Int);
  v2 = [v0 domain];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(inited + 104) = &type metadata for String;
  *(inited + 80) = v3;
  *(inited + 88) = v5;
  *(inited + 112) = 25;
  v6 = [v0 localizedDescription];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(inited + 144) = &type metadata for String;
  *(inited + 120) = v7;
  *(inited + 128) = v9;
  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000A0E04()
{
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AB130;
  *(inited + 32) = 23;
  v1 = CloudChannelError.errorCode.getter();
  sub_1000A25A0(v1, &type metadata for Int);
  v2 = static CloudChannelError.errorDomain.getter();
  *(inited + 104) = &type metadata for String;
  *(inited + 80) = v2;
  *(inited + 88) = v3;
  *(inited + 112) = 25;
  v4 = CloudChannelError.errorUserInfo.getter();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10007BF54(v5, v6, v4, (inited + 120));

  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t type metadata accessor for SportsPerformanceMeasurement(uint64_t a1)
{
  result = qword_1000DF530;
  if (!qword_1000DF530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A0F60(uint64_t a1)
{
  result = type metadata accessor for MetricsPipeline();
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

uint64_t sub_1000A1018(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1000A1058(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1000A10A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v5 = String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  return v5;
}

uint64_t sub_1000A1128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [objc_opt_self() standardUserDefaults];
  sub_1000A10A8(a1, a2, 0xD000000000000028, 0x80000001000B2B70);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_10000A7A8(v14, &qword_1000DBD08, &qword_1000AA690);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v9 = 1;
    goto LABEL_9;
  }

  Date.init(timeIntervalSinceReferenceDate:)();
  v9 = 0;
LABEL_9:
  v10 = type metadata accessor for Date();
  return sub_100008E2C(a3, v9, 1, v10);
}

uint64_t sub_1000A128C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  __chkstk_darwin(v6 - 8);
  v8 = v15 - v7;
  v9 = [objc_opt_self() standardUserDefaults];
  sub_10000A744(a1, v8, &qword_1000DC5A0, &unk_1000AB0E0);
  v10 = type metadata accessor for Date();
  if (sub_100008B84(v8, 1, v10) == 1)
  {
    sub_10000A7A8(v8, &qword_1000DC5A0, &unk_1000AB0E0);
    v11 = 0;
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v15[1] = v12;
    (*(*(v10 - 8) + 8))(v8, v10);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  sub_1000A10A8(a2, a3, 0xD000000000000028, 0x80000001000B2B70);
  v13 = String._bridgeToObjectiveC()();

  [v9 setObject:v11 forKey:v13];

  swift_unknownObjectRelease();
  return sub_10000A7A8(a1, &qword_1000DC5A0, &unk_1000AB0E0);
}

uint64_t sub_1000A1468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A1128(a1, a2, v9);
  if (sub_100008B84(v9, 1, v10) == 1)
  {
    sub_10000A7A8(v9, &qword_1000DC5A0, &unk_1000AB0E0);
    v14 = 1;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    Date.addingTimeInterval(_:)();
    (*(v11 + 8))(v13, v10);
    v14 = 0;
  }

  return sub_100008E2C(a3, v14, 1, v10);
}

uint64_t sub_1000A162C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return a2;
}

uint64_t sub_1000A16BC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A1678((a2 + 8), *a1, (a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1000A16F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_1000A1764(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_1000A1764(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_1000A2048(a1, a2, a3, v45);
  v41 = v45[0];
  v42 = v45[1];
  v43 = v45[2];
  v44 = v46;
  v34 = a1;

  v33 = a3;

  while (1)
  {
    sub_1000A2084(&v38 + 8);
    if (*(&v40 + 1) == 1)
    {
      sub_10001B8A0(v41);
    }

    v9 = BYTE8(v38);
    v36 = v39;
    v37 = v40;
    v10 = *a5;
    v18 = sub_1000175AC(BYTE8(v38));
    v19 = *(v10 + 16);
    v20 = (v11 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v11;
    if (*(v10 + 24) >= v21)
    {
      if (a4)
      {
        if (v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_100003998(&qword_1000DD7C0, &unk_1000AC128);
        _NativeDictionary.copy()();
        if (v22)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1000A1BAC(v21, a4 & 1, v12, v13, v14, v15, v16, v17, v33, v34, v35[0], v35[1], v35[2], v35[3], v36, *(&v36 + 1), v37, *(&v37 + 1), v38, v39, v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1), v44, *&v45[0], *(&v45[0] + 1), *&v45[1]);
      v23 = sub_1000175AC(v9);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_18;
      }

      v18 = v23;
      if (v22)
      {
LABEL_10:
        v25 = *a5;
        sub_10000A744(*(*a5 + 56) + 32 * v18, v35, &qword_1000DBD08, &qword_1000AA690);
        sub_10000A7A8(&v36, &qword_1000DBD08, &qword_1000AA690);
        sub_100045358(v35, *(v25 + 56) + 32 * v18);
        goto LABEL_14;
      }
    }

    v26 = *a5;
    *(*a5 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    *(v26[6] + v18) = v9;
    v27 = (v26[7] + 32 * v18);
    v28 = v37;
    *v27 = v36;
    v27[1] = v28;
    v29 = v26[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_17;
    }

    v26[2] = v31;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000A199C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1000A25D0();
  v35 = v34;
  v36 = *v34;
  v73 = v37;
  sub_100003998(&qword_1000DF5F8, &qword_1000AFC18);
  v38 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!v36[2])
  {
LABEL_28:

LABEL_29:
    *v35 = v38;
    sub_1000A25B4();
    return;
  }

  v72 = v36;
  v39 = 0;
  v40 = v36;
  sub_1000A23F0();
  v43 = v42 & v41;
  v45 = (v44 + 63) >> 6;
  v46 = v38 + 64;
  if ((v42 & v41) == 0)
  {
LABEL_4:
    v48 = v39;
    while (1)
    {
      v39 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v39 >= v45)
      {
        break;
      }

      ++v48;
      if (v40[v39])
      {
        sub_1000A2504();
        v43 = v50 & v49;
        goto LABEL_9;
      }
    }

    if ((v73 & 1) == 0)
    {

      v35 = v34;
      goto LABEL_29;
    }

    sub_1000A2514();
    v35 = v34;
    if (v70 != v71)
    {
      sub_1000A24E4(v69);
    }

    else
    {
      sub_1000A248C(v69);
    }

    v36[2] = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v47 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
LABEL_9:
    v51 = v47 | (v39 << 6);
    v52 = (v36[6] + 16 * v51);
    v53 = *v52;
    v54 = v52[1];
    v55 = (v36[7] + 16 * v51);
    v56 = v55[1];
    v74 = *v55;
    if ((v73 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    sub_1000A2424();
    if (((v59 << v58) & ~*(v46 + 8 * v57)) == 0)
    {
      break;
    }

    sub_1000A2478();
LABEL_20:
    sub_1000A243C();
    *(v46 + v64) |= v65;
    v67 = (*(v38 + 48) + 16 * v66);
    *v67 = v53;
    v67[1] = v54;
    v68 = (*(v38 + 56) + 16 * v66);
    *v68 = v74;
    v68[1] = v56;
    sub_1000A24F4();
    v36 = v72;
    if (!v43)
    {
      goto LABEL_4;
    }
  }

  sub_1000A2464();
  while (++v60 != v62 || (v61 & 1) == 0)
  {
    v63 = v60 == v62;
    if (v60 == v62)
    {
      v60 = 0;
    }

    v61 |= v63;
    if (*(v46 + 8 * v60) != -1)
    {
      sub_1000A2450();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1000A1BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1000A25D0();
  a31 = v35;
  a32 = v36;
  sub_1000A24C8();
  sub_100003998(&qword_1000DF5F0, &qword_1000AFC10);
  v37 = sub_1000A2548();
  if (!v33[2])
  {
LABEL_29:

LABEL_30:
    *v32 = v37;
    sub_1000A25B4();
    return;
  }

  v70 = v32;
  v38 = 0;
  sub_1000A23F0();
  v41 = v40 & v39;
  v43 = (v42 + 63) >> 6;
  v44 = v37 + 64;
  if ((v40 & v39) == 0)
  {
LABEL_4:
    v46 = v38;
    while (1)
    {
      v38 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v38 >= v43)
      {
        break;
      }

      ++v46;
      if (v33[v38])
      {
        sub_1000A2504();
        v41 = v48 & v47;
        goto LABEL_9;
      }
    }

    if ((v34 & 1) == 0)
    {

      v32 = v70;
      goto LABEL_30;
    }

    sub_1000A2514();
    v32 = v70;
    if (v68 != v69)
    {
      sub_1000A24E4(v67);
    }

    else
    {
      sub_1000A248C(v67);
    }

    v33[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v45 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
LABEL_9:
    v49 = v45 | (v38 << 6);
    v50 = *(v33[6] + v49);
    v51 = (v33[7] + 32 * v49);
    if (v34)
    {
      v52 = v51[1];
      a19 = *v51;
      a20 = v52;
    }

    else
    {
      sub_10000A744(v51, &a19, &qword_1000DBD08, &qword_1000AA690);
    }

    Hasher.init(_seed:)();
    v53 = sub_100083914(v50);
    sub_1000A2524(v53, v54, v55);

    Hasher._finalize()();
    sub_1000A2424();
    if (((v58 << v57) & ~*(v44 + 8 * v56)) == 0)
    {
      break;
    }

    sub_1000A2478();
LABEL_21:
    sub_1000A243C();
    sub_1000A258C();
    *(v64 + v63) = v50;
    v65 = (*(v37 + 56) + 32 * v63);
    v66 = a20;
    *v65 = a19;
    v65[1] = v66;
    sub_1000A24F4();
    if (!v41)
    {
      goto LABEL_4;
    }
  }

  sub_1000A2464();
  while (++v59 != v61 || (v60 & 1) == 0)
  {
    v62 = v59 == v61;
    if (v59 == v61)
    {
      v59 = 0;
    }

    v60 |= v62;
    if (*(v44 + 8 * v59) != -1)
    {
      sub_1000A2450();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1000A1D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_1000A25D0();
  a32 = v36;
  a33 = v37;
  sub_1000A24C8();
  sub_100003998(&qword_1000DF600, &qword_1000AFC20);
  v38 = sub_1000A2548();
  if (!v34[2])
  {
LABEL_29:

LABEL_30:
    *v33 = v38;
    sub_1000A25B4();
    return;
  }

  v68 = v33;
  v39 = 0;
  sub_1000A23F0();
  v42 = v41 & v40;
  v44 = (v43 + 63) >> 6;
  v45 = v38 + 64;
  if ((v41 & v40) == 0)
  {
LABEL_4:
    v47 = v39;
    while (1)
    {
      v39 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v39 >= v44)
      {
        break;
      }

      ++v47;
      if (v34[v39])
      {
        sub_1000A2504();
        v42 = v49 & v48;
        goto LABEL_9;
      }
    }

    if ((v35 & 1) == 0)
    {

      v33 = v68;
      goto LABEL_30;
    }

    sub_1000A2514();
    v33 = v68;
    if (v66 != v67)
    {
      sub_1000A24E4(v65);
    }

    else
    {
      sub_1000A248C(v65);
    }

    v34[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v46 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
LABEL_9:
    v50 = v46 | (v39 << 6);
    v51 = *(v34[6] + v50);
    v52 = (v34[7] + 32 * v50);
    if (v35)
    {
      sub_100008EA8(v52, &a19);
    }

    else
    {
      sub_10001B798(v52, &a19);
    }

    Hasher.init(_seed:)();
    v53 = sub_100083914(v51);
    sub_1000A2524(v53, v54, v55);

    Hasher._finalize()();
    sub_1000A2424();
    if (((v58 << v57) & ~*(v45 + 8 * v56)) == 0)
    {
      break;
    }

    sub_1000A2478();
LABEL_21:
    sub_1000A243C();
    sub_1000A258C();
    *(v64 + v63) = v51;
    sub_100008EA8(&a19, (*(v38 + 56) + 32 * v63));
    sub_1000A24F4();
    if (!v42)
    {
      goto LABEL_4;
    }
  }

  sub_1000A2464();
  while (++v59 != v61 || (v60 & 1) == 0)
  {
    v62 = v59 == v61;
    if (v59 == v61)
    {
      v59 = 0;
    }

    v60 |= v62;
    if (*(v45 + 8 * v59) != -1)
    {
      sub_1000A2450();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1000A1F40(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_1000A1FB8(0x20000000000001uLL);
  }
}

unint64_t sub_1000A1FB8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A2048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1000A2084@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_8:
    v10 = (v7 - 1) & v7;
    v11 = __clz(__rbit64(v7)) | (v8 << 6);
    v12 = *(*(v3 + 48) + v11);
    result = sub_10000A744(*(v3 + 56) + 32 * v11, v17, &qword_1000DBD08, &qword_1000AA690);
    v14 = *v17;
    v15 = *&v17[16];
    v9 = v18;
LABEL_9:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v10;
    if (v9 == 1)
    {
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 1;
    }

    else
    {
      v16 = v1[5];
      *v17 = v12;
      *&v17[8] = v14;
      v18 = v15;
      v19 = v9;
      v16(v17);
      return sub_10000A7A8(v17, &qword_1000DD030, &unk_1000AC840);
    }
  }

  else
  {
    v9 = 1;
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v12 = 0;
        v10 = 0;
        v14 = 0uLL;
        goto LABEL_9;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000A21C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A2200(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A2218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for EventType.EventName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x1000A232CLL);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000A2368()
{
  result = qword_1000DF638;
  if (!qword_1000DF638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF638);
  }

  return result;
}

uint64_t sub_1000A248C@<X0>(uint64_t a1@<X8>)
{

  return sub_10008BE9C(0, (a1 + 63) >> 6, v1);
}

uint64_t sub_1000A2524(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

uint64_t sub_1000A2548()
{

  return static _DictionaryStorage.resize(original:capacity:move:)();
}

uint64_t sub_1000A25A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 64) = a2;
  *(v2 + 40) = result;
  *(v2 + 72) = 24;
  return result;
}

uint64_t sub_1000A25EC()
{
  v1 = v0;
  sub_100003998(&qword_1000DD020, &unk_1000AB990);
  sub_10000AC48();
  v83 = v2;
  v84 = v3;
  sub_10000ACFC();
  __chkstk_darwin(v4);
  sub_10000ADEC();
  v85 = v5;
  refreshed = type metadata accessor for SubscriptionRefreshOperation(0);
  v70 = *(refreshed - 8);
  __chkstk_darwin(refreshed - 8);
  v71 = v7;
  v72 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003998(&qword_1000DF640, &qword_1000AFD08);
  sub_10000AC48();
  v74 = v9;
  v75 = v8;
  sub_10000ACFC();
  __chkstk_darwin(v10);
  sub_10000ADEC();
  v73 = v11;
  sub_100003998(&qword_1000DF648, &qword_1000AFD10);
  sub_10000AC48();
  v78 = v13;
  v79 = v12;
  sub_10000ACFC();
  __chkstk_darwin(v14);
  sub_10000ADEC();
  v76 = v15;
  sub_100003998(&qword_1000DF650, &qword_1000AFD18);
  sub_10000AC48();
  v80 = v17;
  v81 = v16;
  sub_10000ACFC();
  __chkstk_darwin(v18);
  sub_10000ADEC();
  v77 = v19;
  sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  sub_10000ACFC();
  __chkstk_darwin(v20);
  v22 = &v68 - v21;
  v86 = type metadata accessor for URL();
  sub_10000AC48();
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v27);
  v28 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v82 = &v68 - v30;
  v31 = v0[7];
  v32 = v0[8];
  sub_100008614((*v0 + 16), *(*v0 + 40));
  v33 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  if (v33)
  {
    v34 = v33;
    v35 = v85;
    SportingEventSubscription.eventStateURL.getter();
    if (sub_100008B84(v22, 1, v86) == 1)
    {
      sub_1000261E8(v22, &unk_1000DD7B0, &qword_1000AC150);
      v87 = 0;
      v88 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      v36._object = 0x80000001000B2CB0;
      v36._countAndFlagsBits = 0xD000000000000035;
      String.append(_:)(v36);
      v37._countAndFlagsBits = v31;
      v37._object = v32;
      String.append(_:)(v37);
      v38 = sub_100029E04(4u, v87, v88);

      v87 = v38;
      sub_100003998(&qword_1000DC470, &qword_1000AA620);
      Fail.init(error:)();
      sub_1000A4504(&qword_1000DD028, &qword_1000DD020, &unk_1000AB990);
      v39 = v83;
      v40 = Publisher.eraseToAnyPublisher()();

      (v84[1])(v35, v39);
    }

    else
    {
      v85 = *(v24 + 32);
      v46 = v82;
      v85(v82, v22, v86);
      v47 = sub_100008614(v0 + 2, v0[5]);
      v48 = sub_1000A2FC0();
      v84 = sub_100008614(v47, v47[3]);
      v69 = v24;
      v49 = v86;
      v50 = (*(v24 + 16))(v28, v46, v86);
      v83 = sub_1000698CC(v50, v51, v52);
      v53 = (*(v24 + 80) + 16) & ~*(v24 + 80);
      v54 = swift_allocObject();
      v85(v54 + v53, v28, v49);
      *(v54 + ((v26 + v53 + 7) & 0xFFFFFFFFFFFFFFF8)) = v83;
      v55 = v47[5];

      v56 = sub_1000A3BD4(sub_10005BF74, v54, v48, 0, v55, v84);
      swift_bridgeObjectRelease_n();

      v87 = v56;
      v57 = v72;
      sub_1000A3F24(v1, v72);
      v58 = (*(v70 + 80) + 24) & ~*(v70 + 80);
      v59 = swift_allocObject();
      *(v59 + 16) = v34;
      sub_1000A4084(v57, v59 + v58);
      v60 = v34;
      sub_100003998(&qword_1000DF658, &unk_1000AFD20);
      sub_10000A6FC(&qword_1000DF660, &qword_1000DF658, &unk_1000AFD20, &protocol conformance descriptor for AnyPublisher<A, B>);
      v61 = v73;
      Publisher.tryFilter(_:)();

      sub_10000A6FC(&qword_1000DF668, &qword_1000DF640, &qword_1000AFD08, &protocol conformance descriptor for Publishers.TryFilter<A>);
      v62 = v75;
      v63 = v76;
      Publisher.map<A>(_:)();
      (*(v74 + 8))(v61, v62);
      sub_100003998(&qword_1000DCC18, &qword_1000AB790);
      sub_10000A6FC(&qword_1000DF670, &qword_1000DF648, &qword_1000AFD10, &protocol conformance descriptor for Publishers.Map<A, B>);
      sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790, &protocol conformance descriptor for AnyPublisher<A, B>);
      v64 = v77;
      v65 = v79;
      Publisher.catch<A>(_:)();
      (*(v78 + 8))(v63, v65);
      sub_10000A6FC(&qword_1000DF678, &qword_1000DF650, &qword_1000AFD18, &protocol conformance descriptor for Publishers.Catch<A, B>);
      v66 = v81;
      v40 = Publisher.eraseToAnyPublisher()();

      (*(v80 + 8))(v64, v66);
      (*(v69 + 8))(v82, v49);
    }
  }

  else
  {
    v87 = 0;
    v88 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v41._countAndFlagsBits = 0xD00000000000003FLL;
    v41._object = 0x80000001000B2C70;
    String.append(_:)(v41);
    v42._countAndFlagsBits = v31;
    v42._object = v32;
    String.append(_:)(v42);
    v43 = sub_100029E04(3u, v87, v88);

    v87 = v43;
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    v44 = v85;
    Fail.init(error:)();
    sub_1000A4504(&qword_1000DD028, &qword_1000DD020, &unk_1000AB990);
    v45 = v83;
    v40 = Publisher.eraseToAnyPublisher()();
    (v84[1])(v44, v45);
  }

  return v40;
}

uint64_t type metadata accessor for SubscriptionRefreshOperation(uint64_t a1)
{
  result = qword_1000DF700;
  if (!qword_1000DF700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A2FC0()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AB8E0;
  *(inited + 32) = 3;
  v8 = *(v1 + 56);
  v7 = *(v1 + 64);
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v8;
  *(inited + 48) = v7;
  *(inited + 72) = 8;

  v9 = Date.init()();
  sub_10008C99C(v9);
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  *(inited + 104) = &type metadata for UInt64;
  *(inited + 80) = v11;
  *(inited + 112) = 9;
  v12 = *(v1 + *(type metadata accessor for SubscriptionRefreshOperation(0) + 40));
  *(inited + 144) = &type metadata for UInt64;
  *(inited + 120) = v12;
  *(inited + 152) = 44;
  LOBYTE(v12) = *(v1 + 72);
  *(inited + 184) = &type metadata for Bool;
  *(inited + 160) = v12;
  *(inited + 192) = 45;
  *(inited + 224) = &type metadata for EventType.EventName;
  *(inited + 200) = 2;
  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  v13 = Dictionary.init(dictionaryLiteral:)();
  v14 = sub_10005B41C(v13);

  return v14;
}

uint64_t sub_1000A31AC()
{
  type metadata accessor for URL();
  sub_100026794();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000A323C(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v64 = a2;
  refreshed = type metadata accessor for SubscriptionRefreshOperation(0);
  __chkstk_darwin(refreshed);
  v59 = &v54[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  __chkstk_darwin(v6 - 8);
  v58 = &v54[-v7];
  v8 = type metadata accessor for SportsManager.RefreshOptions();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for SportingEventProgressStatus();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v54[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v54[-v17];
  v56 = sub_100003998(&qword_1000DBD38, &qword_1000AA6B0);
  v57 = a1;
  v19 = *(a1 + *(v56 + 40));
  if (sub_10001BE20(v19))
  {
    v61 = a3;
    sub_1000835D4();
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v20 = *(v19 + 32);
    }

    v60 = v20;
    v21 = v64;
    v22 = SportingEventSubscription.sportingEventDetails.getter();
    SportingEvent.progressStatus.getter();

    (*(v13 + 104))(v15, enum case for SportingEventProgressStatus.unknown(_:), v12);
    v55 = sub_100064D7C(v18, v15);
    v23 = *(v13 + 8);
    v23(v15, v12);
    v23(v18, v12);
    static SportsManager.RefreshOptions.subscription.getter();
    sub_1000A415C();
    v24 = v61;
    LOBYTE(v23) = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v25 = *(v9 + 8);
    v25(v11, v8);
    if (v23 & 1) != 0 || (static SportsManager.RefreshOptions.subscriptionIfUnknown.getter(), v47 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v25(v11, v8), (v47) && (v21 = v64, (v55))
    {
      v26 = v60;
      v27 = SportingEvent.partialSportingEvent.getter();
      v28 = dispatch thunk of SportingEvent.versionNumber.getter();

      v29 = SportingEventSubscription.sportingEventDetails.getter();
      v30 = dispatch thunk of SportingEvent.versionNumber.getter();

      if (v28 >= v30)
      {
        v48 = SportingEvent.partialSportingEvent.getter();
        v49 = type metadata accessor for Date();
        v50 = v58;
        sub_100008E2C(v58, 1, 1, v49);
        SportingEventSubscription.update(sportingEventDetails:updatedAt:)();

        sub_1000261E8(v50, &qword_1000DC5A0, &unk_1000AB0E0);
        v51 = *(v24 + 72);
        sub_100008614((*v24 + 16), *(*v24 + 40));
        v52 = v63;
        dispatch thunk of PersistentStorable.writeEventSubscription(_:isConventionalOrUnified:)();
        if (!v52)
        {
          sub_1000A38AC(*(v57 + *(v56 + 36)), *(v57 + *(v56 + 36) + 8), *(v24 + 56), *(v24 + 64), v51);
        }
      }

      else
      {
        if (qword_1000DBA18 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_100007DE8(v31, qword_1000E6D30);
        v32 = v59;
        sub_1000A3F24(v24, v59);
        v33 = v26;
        v34 = v21;
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v65 = v38;
          *v37 = 136315650;
          v39 = v32;
          v40 = *(v32 + 7);
          v41 = *(v32 + 8);

          sub_1000A41B4(v39);
          v42 = sub_1000170D4(v40, v41, &v65);

          *(v37 + 4) = v42;
          *(v37 + 12) = 2048;
          v43 = SportingEvent.partialSportingEvent.getter();
          v44 = dispatch thunk of SportingEvent.versionNumber.getter();

          *(v37 + 14) = v44;
          *(v37 + 22) = 2048;
          v45 = SportingEventSubscription.sportingEventDetails.getter();
          v46 = dispatch thunk of SportingEvent.versionNumber.getter();

          *(v37 + 24) = v46;
          _os_log_impl(&_mh_execute_header, v35, v36, "Skipped stale subscription refresh update for canonical id: %s. (%ld < %ld)", v37, 0x20u);
          sub_100008A94(v38);
        }

        else
        {

          sub_1000A41B4(v32);
        }
      }
    }

    else
    {
    }
  }

  else
  {
    sub_100029E04(5u, 0xD000000000000013, 0x80000001000B2CF0);
    swift_willThrow();
  }

  return 1;
}

void sub_1000A38AC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a2 >> 60 == 15)
  {
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100007DE8(v7, qword_1000E6D48);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000170D4(a3, a4, &v15);
      _os_log_impl(&_mh_execute_header, oslog, v8, "Unexpected empty response from Tempo current event state for canonicalId: %s", v9, 0xCu);
      sub_100008A94(v10);
    }
  }

  else
  {
    sub_100008B28(a1, a2);
    sub_10002D244(a1, a2, a3, a4, a5 & 1);

    sub_10001F19C(a1, a2);
  }
}

uint64_t sub_1000A3A6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100003998(&qword_1000DD020, &unk_1000AB990);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  v10[1] = *a1;
  swift_errorRetain();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  Fail.init(error:)();
  sub_10000A6FC(&qword_1000DD028, &qword_1000DD020, &unk_1000AB990, &protocol conformance descriptor for Fail<A, B>);
  v8 = Publisher.eraseToAnyPublisher()();
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  return result;
}

uint64_t sub_1000A3BD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23 = sub_100003998(&qword_1000DF688, &unk_1000AFD30);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = v22 - v12;
  v28[3] = &type metadata for AMSApiRequest;
  v28[4] = &off_1000D0740;
  v14 = swift_allocObject();
  v28[0] = v14;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v15 = a4;

  sub_100008180(a1, a2, a3, a4, a6);
  v22[1] = v16;
  v27 = v16;
  sub_100008A38(a6, __src);
  sub_10000BC8C(v28, v25);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  memcpy((v17 + 24), __src, 0x60uLL);
  sub_10000AC3C(v25, v17 + 120);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1000A42B8;
  *(v18 + 24) = v17;

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DBC58, &qword_1000AA630);
  sub_100003998(&qword_1000DBD38, &qword_1000AA6B0);
  sub_100003998(&qword_1000DF690, &unk_1000AFD40);
  sub_10000A6FC(&qword_1000DBC68, &qword_1000DBC58, &qword_1000AA630, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000A6FC(&qword_1000DF698, &qword_1000DF690, &unk_1000AFD40, &protocol conformance descriptor for Publishers.MapError<A, B>);
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  sub_10000A6FC(&qword_1000DF6A0, &qword_1000DF688, &unk_1000AFD30, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v19 = v23;
  v20 = Publisher.eraseToAnyPublisher()();
  (*(v24 + 8))(v13, v19);
  sub_100008A94(v28);
  return v20;
}

uint64_t sub_1000A3F24(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for SubscriptionRefreshOperation(0);
  (*(*(refreshed - 8) + 16))(a2, a1, refreshed);
  return a2;
}

uint64_t sub_1000A3F88()
{
  v1 = (type metadata accessor for SubscriptionRefreshOperation(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  sub_100008A94((v0 + v3 + 16));

  v5 = v1[11];
  type metadata accessor for SportsManager.RefreshOptions();
  sub_100026794();
  (*(v6 + 8))(v0 + v3 + v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A4084(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for SubscriptionRefreshOperation(0);
  (*(*(refreshed - 8) + 32))(a2, a1, refreshed);
  return a2;
}

unint64_t sub_1000A415C()
{
  result = qword_1000DF680;
  if (!qword_1000DF680)
  {
    type metadata accessor for SportsManager.RefreshOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF680);
  }

  return result;
}

uint64_t sub_1000A41B4(uint64_t a1)
{
  refreshed = type metadata accessor for SubscriptionRefreshOperation(0);
  (*(*(refreshed - 8) + 8))(a1, refreshed);
  return a1;
}

uint64_t sub_1000A4210()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A4258()
{

  sub_100008A94((v0 + 32));
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 80));
  sub_100008A94((v0 + 120));

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_1000A42C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A4314(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    refreshed = type metadata accessor for SportsManager.RefreshOptions();
    v9 = a1 + *(a3 + 36);

    return sub_100008B84(v9, a2, refreshed);
  }
}

void *sub_1000A43B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    refreshed = type metadata accessor for SportsManager.RefreshOptions();
    v8 = v5 + *(a4 + 36);

    return sub_100008E2C(v8, a2, a2, refreshed);
  }

  return result;
}

uint64_t sub_1000A4430(uint64_t a1)
{
  result = type metadata accessor for DataRepository();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PlaysStore();
    if (v3 <= 0x3F)
    {
      result = sub_10005D748();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for SportsManager.RefreshOptions();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000A4504(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_10000A6FC(a1, a2, a3, &protocol conformance descriptor for Fail<A, B>);
}

uint64_t sub_1000A4528(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1000A45FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Box(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_1000A46D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      if (a4)
      {
        return 0;
      }

      return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
    case 1:
      if (a4 != 1)
      {
        return 0;
      }

      return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
    case 2:
      if (a4 != 2)
      {
        return 0;
      }

      return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
    case 3:
      if (a4 != 3)
      {
        return 0;
      }

      return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
    case 4:
      if (a4 != 4)
      {
        return 0;
      }

      return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
    case 5:
      if (a4 != 5)
      {
        return 0;
      }

      return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
    case 6:
      if (a4 != 6)
      {
        return 0;
      }

      return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
    case 7:
      if (a4 != 7)
      {
        return 0;
      }

      return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
    case 8:
      if (a4 == 8)
      {
        return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
      }

      return 0;
    case 9:
      if (a4 != 9)
      {
        return 0;
      }

      return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
    default:
      if (a4 < 0xA)
      {
        return 0;
      }

      if (a1 == a3 && a2 == a4)
      {
        return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
      }

      else
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
  }
}

uint64_t sub_1000A47C0(uint64_t a1)
{
  v2 = sub_1000A5144();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000A47FC(uint64_t a1)
{
  v2 = sub_1000A5144();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000A484C(uint64_t a1, void *a2)
{
  switch(a2)
  {
    case 0uLL:
      sub_1000A566C();
      result = v3 - 22;
      break;
    case 1uLL:
      sub_1000A566C();
      result = v8 - 16;
      break;
    case 2uLL:
      sub_1000A566C();
      result = v6 - 1;
      break;
    case 3uLL:
      result = 0xD00000000000002ALL;
      break;
    case 4uLL:
      result = 0xD00000000000002ALL;
      break;
    case 5uLL:
      sub_1000A566C();
      result = v9 - 26;
      break;
    case 6uLL:
      sub_1000A566C();
      result = v10 - 4;
      break;
    case 7uLL:
      sub_1000A566C();
      result = v7 | 1;
      break;
    case 8uLL:
      sub_1000A566C();
      result = v13 - 3;
      break;
    case 9uLL:
      sub_1000A566C();
      result = v5 - 5;
      break;
    default:
      sub_1000A5680();
      _StringGuts.grow(_:)(36);

      sub_1000A5690();
      v12._countAndFlagsBits = a1;
      v12._object = a2;
      String.append(_:)(v12);
      result = 0xD000000000000022;
      break;
  }

  return result;
}

uint64_t sub_1000A4A08(uint64_t a1, unint64_t a2)
{
  if (a2 > 9)
  {
    return 3;
  }

  else
  {
    return qword_1000B02F8[a2];
  }
}

void *sub_1000A4A28(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 < 0xA)
  {
    return sub_1000A569C();
  }

  sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AA5B0;
  *(inited + 32) = 0x6449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000A4B34(uint64_t a1)
{
  v2 = sub_1000A5198();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000A4B70(uint64_t a1)
{
  v2 = sub_1000A5198();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000A4C38(uint64_t a1)
{
  v2 = sub_1000A51EC();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000A4C74(uint64_t a1)
{
  v2 = sub_1000A51EC();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000A4D48(uint64_t a1)
{
  v2 = sub_1000A5240();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000A4D84(uint64_t a1)
{
  v2 = sub_1000A5240();

  return Error<>._code.getter(a1, v2);
}

unint64_t sub_1000A4DC0(uint64_t a1, void *a2)
{
  if (a2 == 10)
  {
    sub_1000A5680();
    _StringGuts.grow(_:)(26);

    sub_1000A5690();
    v11 = 0xD000000000000018;
    v4 = 0xD000000000000029;
    v3 = 0x80000001000B2F20;
    goto LABEL_5;
  }

  if (a2 == 11)
  {
    sub_1000A5680();
    _StringGuts.grow(_:)(25);

    sub_1000A5690();
    v11 = 0xD000000000000017;
    v3 = 0x80000001000B2F70;
    v4 = 0xD000000000000017;
LABEL_5:
    String.append(_:)(*&v4);
    return v11;
  }

  _StringGuts.grow(_:)(25);

  sub_1000A5690();
  v11 = 0xD000000000000017;
  v6 = sub_1000A484C(a1, a2);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = v8;
  String.append(_:)(*&v6);

  return v11;
}

uint64_t sub_1000A4F1C(uint64_t a1, uint64_t a2)
{
  if (a2 == 10)
  {
    return 1;
  }

  else
  {
    return 2 * (a2 == 11);
  }
}

uint64_t sub_1000A4F34(uint64_t a1, unint64_t a2)
{
  if (a2 == 10 || a2 == 11)
  {
    v2 = sub_1000A5294();
    swift_dynamicCast();
    v3 = v7;
  }

  else
  {
    sub_100091068(a1, a2);
    v2 = sub_1000A5294();
    swift_dynamicCast();
    v3 = v8;
  }

  sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AA5B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  sub_1000A5294();
  *(inited + 72) = v2;
  *(inited + 48) = v3;
  return Dictionary.init(dictionaryLiteral:)();
}

unint64_t sub_1000A5090()
{
  result = qword_1000DF7D0;
  if (!qword_1000DF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF7D0);
  }

  return result;
}

unint64_t sub_1000A50E8()
{
  result = qword_1000DF7D8;
  if (!qword_1000DF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF7D8);
  }

  return result;
}

unint64_t sub_1000A5144()
{
  result = qword_1000DF7E0;
  if (!qword_1000DF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF7E0);
  }

  return result;
}

unint64_t sub_1000A5198()
{
  result = qword_1000DF7E8;
  if (!qword_1000DF7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF7E8);
  }

  return result;
}

unint64_t sub_1000A51EC()
{
  result = qword_1000DF7F0;
  if (!qword_1000DF7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF7F0);
  }

  return result;
}

unint64_t sub_1000A5240()
{
  result = qword_1000DF7F8;
  if (!qword_1000DF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF7F8);
  }

  return result;
}

unint64_t sub_1000A5294()
{
  result = qword_1000DF800;
  if (!qword_1000DF800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DF800);
  }

  return result;
}

uint64_t sub_1000A52D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000A52F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF5 && *(a1 + 16))
  {
    return (*a1 + 2147483638);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 9;
  if (v4 >= 0xB)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A5348(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483638;
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 9;
    }
  }

  return result;
}

_BYTE *sub_1000A53B4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1000A5450);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000A5484(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 10;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A54A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 16))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 9;
  if (v4 < 0xB)
  {
    v5 = 0;
  }

  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A550C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 11;
    }
  }

  return result;
}

void *sub_1000A555C(void *result, unsigned int a2)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 2147483638;
  }

  else if (a2)
  {
    result[1] = a2 + 9;
  }

  return result;
}

unint64_t sub_1000A55A0()
{
  result = qword_1000DF808;
  if (!qword_1000DF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF808);
  }

  return result;
}

unint64_t sub_1000A55F8()
{
  result = qword_1000DF810;
  if (!qword_1000DF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF810);
  }

  return result;
}

uint64_t sub_1000A569C()
{

  return Dictionary.init(dictionaryLiteral:)();
}

void *sub_1000A56B0()
{
  v0 = type metadata accessor for URL();
  __chkstk_darwin(v0 - 8);
  sub_10000ADA0();
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  if (qword_1000DBA00 != -1)
  {
    swift_once();
  }

  v1 = qword_1000E6D10;
  v2 = type metadata accessor for LiveActivityManager();

  sub_10001EF70(&v36, &qword_1000DD648, &qword_1000AC0E0);
  *&v36 = v1;
  *(&v37 + 1) = v2;
  v38 = &off_1000D1920;
  sub_10003FA5C(&v36, v35, &qword_1000DD648, &qword_1000AC0E0);
  bzero(v34, 0xB8uLL);
  if (qword_1000DB9C8 != -1)
  {
    swift_once();
  }

  v3 = qword_1000E6CD0;
  v4 = qword_1000DBA80;

  if (v4 != -1)
  {
    swift_once();
  }

  v28 = qword_1000E6E10;
  v5 = [objc_opt_self() defaultManager];
  NSFileManager.currentContainerURL.getter();

  type metadata accessor for PlaysStore();
  swift_allocObject();
  v29 = PlaysStore.init(storeUrl:)();
  v6 = type metadata accessor for ActivityAuthorization();
  v7 = [objc_allocWithZone(v6) init];
  v8 = sub_1000499E0();
  v10 = v9;
  v32 = v6;
  v33 = &off_1000D1900;
  v31[0] = v7;
  type metadata accessor for ActivityCapUtility();
  v11 = swift_allocObject();
  sub_10000B90C(v31, v6);
  sub_1000A6560();
  __chkstk_darwin(v12);
  sub_10000ADA0();
  v15 = (v14 - v13);
  (*(v16 + 16))(v14 - v13);
  v17 = *v15;
  v11[5] = v6;
  v11[6] = &off_1000D1900;
  v11[2] = v17;
  v11[7] = v8;
  v11[8] = v10;
  sub_100008A94(v31);

  v18 = type metadata accessor for SportsPerformanceMeasurement(0);
  v32 = v18;
  v33 = &off_1000D4A78;
  v31[0] = v28;
  v19 = swift_allocObject();
  sub_10000B90C(v31, v18);
  sub_1000A6560();
  __chkstk_darwin(v20);
  sub_10000ADA0();
  v23 = (v22 - v21);
  (*(v24 + 16))(v22 - v21);
  v25 = *v23;
  v30[3] = v18;
  v30[4] = &off_1000D4A78;
  v30[0] = v25;
  bzero(v19 + 17, 0xB8uLL);
  v19[2] = v3;
  sub_10000BC8C(v30, (v19 + 3));
  v19[8] = v29;
  sub_10003FA5C(v35, (v19 + 9), &qword_1000DD648, &qword_1000AC0E0);
  v19[40] = v11;
  v19[15] = sub_1000669B4;
  v19[16] = 0;
  swift_beginAccess();

  sub_1000A64F0(v34, (v19 + 17));
  swift_endAccess();
  v26 = [objc_allocWithZone(NSOperationQueue) init];
  v19[14] = v26;
  [v26 setMaxConcurrentOperationCount:1];
  sub_10001EF70(v34, &qword_1000DCD20, &unk_1000AB820);
  sub_10001EF70(v35, &qword_1000DD648, &qword_1000AC0E0);
  sub_10001EF70(&v36, &qword_1000DD648, &qword_1000AC0E0);
  sub_100008A94(v30);
  sub_100008A94(v31);
  return v19;
}

uint64_t sub_1000A5B88(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 120);
  v8[2] = a1;
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = a3;
  return v6(0xD00000000000001DLL, 0x80000001000B30B0, sub_1000A6468, v8);
}

void sub_1000A5BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a6;
  v54 = a7;
  v52 = a5;
  v49 = a3;
  v55 = a1;
  v56 = a2;
  v10 = type metadata accessor for Date();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v46 - v14;
  v16 = *(a4 + 64);
  v46 = *(a4 + 16);
  v47 = v16;
  sub_10003FA5C(a4 + 72, v64, &qword_1000DD648, &qword_1000AC0E0);
  v48 = *(a4 + 320);
  swift_beginAccess();
  sub_10003FA5C(a4 + 136, v63, &qword_1000DCD20, &unk_1000AB820);
  sub_10000BC8C(a4 + 24, v62);
  sub_10003FA5C(a8, v15, &qword_1000DC5A0, &unk_1000AB0E0);
  v17 = sub_10000B90C(v62, v62[3]);
  v18 = __chkstk_darwin(v17);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v18);
  v22 = *v20;
  v23 = type metadata accessor for SportsPerformanceMeasurement(0);
  v60 = v23;
  v61 = &off_1000D4A78;
  v59[0] = v22;
  v24 = type metadata accessor for ApsMessageProcessingOperation(0);
  v25 = objc_allocWithZone(v24);
  v26 = sub_10000B90C(v59, v60);
  v27 = __chkstk_darwin(v26);
  v29 = (&v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = *v29;
  v58[3] = v23;
  v58[4] = &off_1000D4A78;
  v58[0] = v31;
  *&v25[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_cancellable] = 0;
  *&v25[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_cancellables] = _swiftEmptyArrayStorage;
  v32 = &v25[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_messageVersion];
  *v32 = 0;
  v32[1] = 0;
  *&v25[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_message] = v49;
  v33 = v47;
  *&v25[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_dataRepository] = v46;
  *&v25[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_playsStore] = v33;
  sub_10003FA5C(v64, &v25[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateable], &qword_1000DD648, &qword_1000AC0E0);
  *&v25[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityCapUtility] = v48;
  sub_10003FA5C(v63, &v25[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_subscriptionOperationFactory], &qword_1000DCD20, &unk_1000AB820);

  v34 = Date.init()();
  sub_10008C99C(v34);
  v36 = v35;
  (*(v50 + 8))(v12, v51);
  *&v25[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_notificationReceiptTime] = v36;
  sub_10000BC8C(v58, &v25[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_performance]);
  v25[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_isLowCapLiveActivity] = v52;
  v37 = &v25[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateCompletion];
  v39 = v53;
  v38 = v54;
  *v37 = v53;
  v37[1] = v38;
  sub_10003FA5C(v15, &v25[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_processDate], &qword_1000DC5A0, &unk_1000AB0E0);
  sub_1000A64E0(v39, v38);
  v57.receiver = v25;
  v57.super_class = v24;
  v40 = objc_msgSendSuper2(&v57, "init");
  sub_10001EF70(v15, &qword_1000DC5A0, &unk_1000AB0E0);
  sub_10001EF70(v63, &qword_1000DCD20, &unk_1000AB820);
  sub_10001EF70(v64, &qword_1000DD648, &qword_1000AC0E0);
  sub_100008A94(v58);
  sub_100008A94(v59);
  sub_100008A94(v62);
  v41 = swift_allocObject();
  v42 = v55;
  v43 = v56;
  v41[2] = v40;
  v41[3] = v42;
  v41[4] = v43;
  v63[4] = sub_1000A64BC;
  v63[5] = v41;
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 1107296256;
  v63[2] = sub_10007B4E8;
  v63[3] = &unk_1000D4F70;
  v44 = _Block_copy(v63);
  v45 = v40;

  sub_1000A64E0(sub_1000A64BC, v41);

  [v45 setCompletionBlock:v44];
  _Block_release(v44);

  [*(a4 + 112) addOperation:v45];
}

uint64_t sub_1000A61F8(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (qword_1000DBA10 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100007DE8(v5, qword_1000E6D18);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    if (*&v6[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_messageVersion + 8])
    {
      v11 = *&v6[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_messageVersion];
      v12 = *&v6[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_messageVersion + 8];
    }

    else
    {
      v12 = 0xE300000000000000;
      v11 = 7104878;
    }

    v13 = sub_1000170D4(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "releasing os_transaction taken for message version %s", v9, 0xCu);
    sub_100008A94(v10);
  }

  return a2();
}

uint64_t sub_1000A6398()
{

  sub_100008A94((v0 + 24));

  sub_10001EF70(v0 + 72, &qword_1000DD648, &qword_1000AC0E0);

  sub_10001EF70(v0 + 136, &qword_1000DCD20, &unk_1000AB820);

  return v0;
}

uint64_t sub_1000A6410()
{
  sub_1000A6398();

  return _swift_deallocClassInstance(v0, 328, 7);
}

uint64_t sub_1000A647C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A64C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A64E0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000A64F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DCD20, &unk_1000AB820);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Publisher<>.flatMap<A>(maxPublishers:_:)()
{
  return Publisher<>.flatMap<A>(maxPublishers:_:)();
}

{
  return Publisher<>.flatMap<A>(maxPublishers:_:)();
}

Swift::OpaquePointer_optional __swiftcall SportingEventCompetitor.contextualShootouts()()
{
  v0 = SportingEventCompetitor.contextualShootouts()();
  result.value._rawValue = v0;
  result.is_nil = v1;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}