uint64_t sub_100093678()
{
  v1 = sub_10009CF14();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009D464();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetTileInfo(0);
  result = 0;
  v11 = v0 + *(v9 + 60);
  v12 = *(v11 + 8);
  if ((v12 - 2) < 3)
  {
    return result;
  }

  v37 = v2;
  v38 = v1;
  v13 = v9;
  v14 = *v11;
  if (v12)
  {
    v16 = v14;
    v17 = [v16 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v18 = sub_10009E6A4();

    if (v18 >> 62)
    {
      result = sub_10009EBA4();
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_6:
        if ((v18 & 0xC000000000000001) != 0)
        {
          v19 = sub_10009EAE4();
        }

        else
        {
          if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v19 = *(v18 + 32);
        }

        v15 = v19;

        goto LABEL_10;
      }
    }

    return 0;
  }

  v15 = v14;
LABEL_10:
  v20 = *(v0 + *(v13 + 64));
  v21 = *(v6 + 104);
  v21(v8, enum case for CharacteristicKind.powerState(_:), v5);
  v39 = sub_100016EAC(v8, v20);
  v22 = v39;
  v23 = *(v6 + 8);
  v23(v8, v5);
  if (v22 == 2)
  {
    v21(v8, enum case for CharacteristicKind.active(_:), v5);
    v24 = sub_100016EAC(v8, v20);
    v23(v8, v5);
    if (v24 == 2)
    {

      return 0;
    }

    v39 = v24;
  }

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v25 = sub_10009D924();
  sub_100015B68(v25, qword_1000C8278);
  v26 = v15;
  v27 = sub_10009D904();
  v28 = sub_10009E844();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40 = v30;
    *v29 = 136315394;
    v31 = [v26 uniqueIdentifier];
    sub_10009CF04();

    v32 = sub_10009CEE4();
    v34 = v33;
    (*(v37 + 8))(v4, v38);
    v35 = sub_10002AD68(v32, v34, &v40);

    *(v29 + 4) = v35;
    *(v29 + 12) = 1024;
    *(v29 + 14) = v39 & 1;
    _os_log_impl(&_mh_execute_header, v27, v28, "defaultActivePowerState: %s powerState: %{BOOL}d", v29, 0x12u);
    sub_100015F44(v30);
  }

  v36 = sub_10009E604();

  return v36;
}

uint64_t sub_100093B5C(unsigned int *a1, const char *a2)
{
  v5 = sub_10009CF14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009D464();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WidgetTileInfo(0);
  result = 0;
  v15 = v2 + *(v13 + 60);
  v16 = *(v15 + 8);
  if ((v16 - 2) < 3)
  {
    return result;
  }

  v42 = v6;
  v43 = a2;
  v44 = v13;
  v17 = *v15;
  if (v16)
  {
    v19 = v17;
    v20 = [v19 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v21 = sub_10009E6A4();

    if (v21 >> 62)
    {
      result = sub_10009EBA4();
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_6:
        if ((v21 & 0xC000000000000001) != 0)
        {
          v22 = sub_10009EAE4();
        }

        else
        {
          if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v22 = *(v21 + 32);
        }

        v18 = v22;

        goto LABEL_10;
      }
    }

    return 0;
  }

  v18 = v17;
LABEL_10:
  (*(v10 + 104))(v12, *a1, v9);
  v23 = sub_100016C54(v12, *(v2 + *(v44 + 64)));
  v25 = v24;
  (*(v10 + 8))(v12, v9);
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v23;
  }

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v27 = sub_10009D924();
  sub_100015B68(v27, qword_1000C8278);
  v28 = v18;
  v29 = sub_10009D904();
  v30 = sub_10009E844();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v45 = v32;
    *v31 = 136315394;
    v33 = [v28 uniqueIdentifier];
    sub_10009CF04();

    v34 = sub_10009CEE4();
    v36 = v35;
    (*(v42 + 8))(v8, v5);
    v37 = sub_10002AD68(v34, v36, &v45);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2048;
    *(v31 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v29, v30, v43, v31, 0x16u);
    sub_100015F44(v32);
  }

  sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
  isa = sub_10009E8C4(v26).super.super.isa;
  v39 = sub_10009E8C4(0).super.super.isa;
  v40 = sub_10009E8C4(100).super.super.isa;
  v41 = sub_10006A4E8(isa);

  return v41;
}

unint64_t sub_100093FE4()
{
  result = qword_1000C2E88;
  if (!qword_1000C2E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2E88);
  }

  return result;
}

unint64_t sub_100094038()
{
  result = qword_1000C2EC8;
  if (!qword_1000C2EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2EC8);
  }

  return result;
}

unint64_t sub_10009408C()
{
  result = qword_1000C0CB0;
  if (!qword_1000C0CB0)
  {
    sub_10009D1C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0CB0);
  }

  return result;
}

uint64_t sub_100094108()
{
  v0 = sub_10009D924();
  sub_10001F4BC(v0, qword_1000C3060);
  sub_100015B68(v0, qword_1000C3060);
  return sub_10009D914();
}

uint64_t type metadata accessor for WidgetPredictionAnalyticsInfo(uint64_t a1)
{
  result = qword_1000C3170;
  if (!qword_1000C3170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_100094278()
{
  v1 = *v0;
  sub_10009EDD4();
  sub_10009EDE4(v1);
  return sub_10009EE04();
}

Swift::Int sub_1000942EC(uint64_t a1)
{
  v2 = *v1;
  sub_10009EDD4();
  sub_10009EDE4(v2);
  return sub_10009EE04();
}

unint64_t sub_100094330()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_100094368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001000A6060 == a2 || (sub_10009ED34() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000A6080 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_10009ED34();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100094464(uint64_t a1)
{
  v2 = sub_100098BF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000944A0(uint64_t a1)
{
  v2 = sub_100098BF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WidgetPredictionAnalyticsInfo.encode(to:)(void *a1)
{
  v3 = sub_100003714(&qword_1000C3088, &qword_1000A3A50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100024330(a1, a1[3]);
  sub_100098BF8();
  sub_10009EE24();
  v8[15] = 0;
  sub_10009D054();
  sub_100098C4C(&qword_1000C3098, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsScoringValues, &protocol conformance descriptor for HomeAnalyticsUtilities.PredictionAnalyticsScoringValues);
  sub_10009EC94();
  if (!v1)
  {
    type metadata accessor for WidgetPredictionAnalyticsInfo(0);
    v8[14] = 1;
    sub_10009D074();
    sub_100098C4C(&qword_1000C30A0, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsContext, &protocol conformance descriptor for HomeAnalyticsUtilities.PredictionAnalyticsContext);
    sub_10009EC94();
  }

  return (*(v4 + 8))(v6, v3);
}

void WidgetPredictionAnalyticsInfo.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10009D074();
  v21 = *(v3 - 8);
  v22 = v3;
  __chkstk_darwin(v3);
  v20 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003714(&qword_1000C3080, &qword_1000A3A48);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_10009D054();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003714(&qword_1000C3078, &qword_1000A3A40);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  sub_10001E0A8(v2, &v19 - v13, &qword_1000C3078, &qword_1000A3A40);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_10009EDF4(0);
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_10009EDF4(1u);
    sub_100098C4C(&qword_1000C30A8, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsScoringValues, &protocol conformance descriptor for HomeAnalyticsUtilities.PredictionAnalyticsScoringValues);
    sub_10009E504();
    (*(v9 + 8))(v11, v8);
  }

  v15 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
  sub_10001E0A8(v2 + *(v15 + 20), v7, &qword_1000C3080, &qword_1000A3A48);
  v17 = v21;
  v16 = v22;
  if ((*(v21 + 48))(v7, 1, v22) == 1)
  {
    sub_10009EDF4(0);
  }

  else
  {
    v18 = v20;
    (*(v17 + 32))(v20, v7, v16);
    sub_10009EDF4(1u);
    sub_100098C4C(&qword_1000C30B0, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsContext, &protocol conformance descriptor for HomeAnalyticsUtilities.PredictionAnalyticsContext);
    sub_10009E504();
    (*(v17 + 8))(v18, v16);
  }
}

Swift::Int WidgetPredictionAnalyticsInfo.hashValue.getter()
{
  sub_10009EDD4();
  WidgetPredictionAnalyticsInfo.hash(into:)(v1);
  return sub_10009EE04();
}

uint64_t WidgetPredictionAnalyticsInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_100003714(&qword_1000C3080, &qword_1000A3A48);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_100003714(&qword_1000C3078, &qword_1000A3A40);
  __chkstk_darwin(v7 - 8);
  v23 = &v19 - v8;
  v24 = sub_100003714(&qword_1000C30B8, &qword_1000A3A58);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v10 = &v19 - v9;
  v11 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
  __chkstk_darwin(v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024330(a1, a1[3]);
  sub_100098BF8();
  sub_10009EE14();
  if (v2)
  {
    return sub_100015F44(a1);
  }

  v20 = v11;
  v14 = v13;
  v15 = v22;
  sub_10009D054();
  v26 = 0;
  sub_100098C4C(&qword_1000C30C0, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsScoringValues, &protocol conformance descriptor for HomeAnalyticsUtilities.PredictionAnalyticsScoringValues);
  v16 = v23;
  v17 = v24;
  sub_10009EC14();
  sub_10005B0FC(v16, v14, &qword_1000C3078, &qword_1000A3A40);
  sub_10009D074();
  v25 = 1;
  sub_100098C4C(&qword_1000C30C8, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsContext, &protocol conformance descriptor for HomeAnalyticsUtilities.PredictionAnalyticsContext);
  sub_10009EC14();
  (*(v15 + 8))(v10, v17);
  sub_10005B0FC(v6, v14 + *(v20 + 20), &qword_1000C3080, &qword_1000A3A48);
  sub_100098C94(v14, v21);
  sub_100015F44(a1);
  return sub_100098CF8(v14);
}

Swift::Int sub_100094E74()
{
  sub_10009EDD4();
  WidgetPredictionAnalyticsInfo.hash(into:)(v1);
  return sub_10009EE04();
}

Swift::Int sub_100094EB8(uint64_t a1)
{
  sub_10009EDD4();
  WidgetPredictionAnalyticsInfo.hash(into:)(v2);
  return sub_10009EE04();
}

uint64_t HMHome.fetchPredictions()()
{
  v1[23] = v0;
  sub_100003714(&qword_1000C3078, &qword_1000A3A40);
  v1[24] = swift_task_alloc();
  v2 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  sub_100003714(&qword_1000C30D0, &qword_1000A3A68);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v3 = sub_10009D074();
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  sub_100003714(&qword_1000C30D8, &qword_1000A3A70);
  v1[34] = swift_task_alloc();
  v4 = sub_10009CF14();
  v1[35] = v4;
  v1[36] = *(v4 - 8);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();

  return _swift_task_switch(sub_100095190, 0, 0);
}

uint64_t sub_100095190()
{
  v1 = [*(v0 + 184) userActionPredictionController];
  *(v0 + 336) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_1000953B4;
    v3 = swift_continuation_init();
    *(v0 + 136) = sub_100003714(&qword_1000C30E0, &unk_1000A3A78);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1000962A8;
    *(v0 + 104) = &unk_1000BC518;
    *(v0 + 112) = v3;
    [v2 fetchPredictionsWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v6 = sub_100098D54(_swiftEmptyArrayStorage);

    v4 = *(v0 + 8);

    return v4(0, v6);
  }
}

uint64_t sub_1000953B4()
{

  return _swift_task_switch(sub_100095494, 0, 0);
}

uint64_t sub_100095494()
{
  v140 = v0;
  v1 = v0[21];
  if (v1 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10009EBA4())
  {
    v133 = v1;
    if (i)
    {
      v3 = 0;
      v4 = v0[36];
      v128 = v1 & 0xFFFFFFFFFFFFFF8;
      v130 = (v1 & 0xC000000000000001);
      v5 = (v4 + 32);
      v124 = (v4 + 56);
      v126 = v4;
      v122 = (v4 + 48);
      v6 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v130)
        {
          v7 = sub_10009EAE4();
        }

        else
        {
          if (v3 >= *(v128 + 16))
          {
            goto LABEL_56;
          }

          v7 = *(v1 + 8 * v3 + 32);
        }

        v8 = v7;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v136 = v3 + 1;
        v9 = [v7 targetServiceUUID];
        if (v9)
        {
          v135 = v0[40];
          v10 = i;
          v11 = v6;
          v12 = v0[39];
          v13 = v0[35];
          v14 = v138[34];
          v15 = v9;
          sub_10009CF04();

          v16 = *v5;
          v17 = v12;
          v6 = v11;
          i = v10;
          (*v5)(v14, v17, v13);
          (*v124)(v14, 0, 1, v13);
          v0 = v138;
          v16(v135, v14, v13);
        }

        else
        {
          v19 = v0[34];
          v18 = v0[35];
          (*v124)(v19, 1, 1, v18);
          v20 = [v8 predictionTargetUUID];
          sub_10009CF04();

          v0 = v138;
          if ((*v122)(v19, 1, v18) != 1)
          {
            sub_1000160CC(v138[34], &qword_1000C30D8, &qword_1000A3A70);
          }
        }

        v21 = *v5;
        (*v5)(v0[41], v0[40], v0[35]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_100097488(0, v6[2] + 1, 1, v6);
        }

        v23 = v6[2];
        v22 = v6[3];
        if (v23 >= v22 >> 1)
        {
          v6 = sub_100097488((v22 > 1), v23 + 1, 1, v6);
        }

        v24 = v0[41];
        v25 = v0[35];
        v6[2] = v23 + 1;
        v21(v6 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v23, v24, v25);
        ++v3;
        v1 = v133;
        if (v136 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v6 = _swiftEmptyArrayStorage;
LABEL_21:
    v0[22] = v6;
    if (qword_1000C2F70 != -1)
    {
      swift_once();
    }

    v26 = v0[23];
    v27 = sub_10009D924();
    sub_100015B68(v27, qword_1000C3060);
    v28 = v26;
    v29 = sub_10009D904();
    v30 = sub_10009E844();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v0[39];
      v33 = v0[35];
      v32 = v0[36];
      v131 = v0[23];
      v34 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      *v34 = 134218498;
      *(v34 + 4) = v6[2];
      *(v34 + 12) = 2080;

      v35 = sub_10009E6B4();
      v37 = v36;

      v38 = sub_100097660(v35, v37, &v139);

      *(v34 + 14) = v38;
      *(v34 + 22) = 2080;
      v39 = [v131 uniqueIdentifier];
      sub_10009CF04();

      sub_100098C4C(&qword_1000C3100, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v40 = sub_10009ED04();
      v42 = v41;
      (*(v32 + 8))(v31, v33);
      v43 = sub_100097660(v40, v42, &v139);

      *(v34 + 24) = v43;
      _os_log_impl(&_mh_execute_header, v29, v30, "HomeKit predictionUUIDs (%ld) = %s homeID = %s", v34, 0x20u);
      swift_arrayDestroy();
    }

    v44 = v0[23];

    v46 = HMHome.backfill(predictionUUIDs:)(v45);

    swift_beginAccess();
    v0[22] = v46;

    v47 = v44;
    v48 = sub_10009D904();
    v49 = sub_10009E844();

    v129 = v46;
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v0[39];
      v52 = v0[35];
      v51 = v0[36];
      v53 = v0[23];
      v54 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      *v54 = 136315394;

      v55 = sub_10009E6B4();
      v57 = v56;

      v58 = sub_100097660(v55, v57, &v139);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2080;
      v59 = [v53 uniqueIdentifier];
      sub_10009CF04();

      sub_100098C4C(&qword_1000C3100, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v60 = sub_10009ED04();
      v62 = v61;
      (*(v51 + 8))(v50, v52);
      v63 = sub_100097660(v60, v62, &v139);

      *(v54 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v48, v49, "RETURNING predictions = %s homeID = %s", v54, 0x16u);
      swift_arrayDestroy();

      v0 = v138;

      v64 = v129;
    }

    else
    {

      v64 = v46;
    }

    v65 = v0[29];
    v1 = v0[30];
    sub_100007330(0, &qword_1000C30E8, HMHome_ptr);
    sub_100098F88();
    v66 = sub_10009D044();

    v67 = sub_10009CEC4();
    (*(*(v67 - 8) + 56))(v1, 1, 1, v67);
    sub_100007330(0, &qword_1000C30F8, NSUserDefaults_ptr);
    sub_10009E864();
    sub_10009D064();
    sub_1000160CC(v65, &qword_1000C30D0, &qword_1000A3A68);
    sub_1000160CC(v1, &qword_1000C30D0, &qword_1000A3A68);
    v68 = sub_100098D54(_swiftEmptyArrayStorage);
    v125 = *(v64 + 16);
    v127 = v66;
    if (!v125)
    {
      break;
    }

    v69 = v64;
    v70 = v0[36];
    v71 = v0[32];
    v121 = v64 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v123 = v70;
    v120 = v0[25];
    v137 = (v70 + 8);
    v119 = (v71 + 16);
    v117 = v0[26];
    v118 = (v71 + 56);

    v72 = 0;
    while (v72 < *(v69 + 16))
    {
      v0 = v138;
      v73 = v138[37];
      v74 = v138[35];
      v132 = *(v123 + 72);
      v75 = *(v123 + 16);
      v75(v138[38], v121 + v132 * v72, v74);
      v134 = v75;
      v75(v73, v121 + v132 * v72, v74);
      v76 = v138[37];
      if (*(v66 + 16))
      {
        v77 = sub_100097C08(v76);
        v78 = v138[37];
        v79 = v138[35];
        v80 = v138[24];
        if (v81)
        {
          v82 = v77;
          v83 = *(v66 + 56);
          v84 = sub_10009D054();
          v85 = *(v84 - 8);
          (*(v85 + 16))(v80, v83 + *(v85 + 72) * v82, v84);
          v86 = *v137;
          (*v137)(v78, v79);
          (*(v85 + 56))(v80, 0, 1, v84);
        }

        else
        {
          v86 = *v137;
          (*v137)(v138[37], v138[35]);
          v89 = sub_10009D054();
          (*(*(v89 - 8) + 56))(v80, 1, 1, v89);
        }

        v0 = v138;
      }

      else
      {
        v87 = v138[24];
        v86 = *v137;
        (*v137)(v76, v138[35]);
        v88 = sub_10009D054();
        (*(*(v88 - 8) + 56))(v87, 1, 1, v88);
      }

      v90 = v0[38];
      v1 = v0[31];
      v92 = v0[27];
      v91 = v0[28];
      v93 = v0[24];
      v94 = *(v120 + 20);
      (*v119)(v91 + v94, v0[33], v1);
      (*v118)(v91 + v94, 0, 1, v1);
      sub_10005B0FC(v93, v91, &qword_1000C3078, &qword_1000A3A40);
      sub_100098FF0(v91, v92);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v139 = v68;
      v96 = sub_100097C08(v90);
      v98 = v68[2];
      v99 = (v97 & 1) == 0;
      v100 = __OFADD__(v98, v99);
      v101 = v98 + v99;
      if (v100)
      {
        goto LABEL_58;
      }

      v102 = v97;
      if (v68[3] >= v101)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v110 = v96;
          sub_1000982C4();
          v96 = v110;
          v68 = v139;
        }
      }

      else
      {
        v1 = v138[38];
        sub_100097CA0(v101, isUniquelyReferenced_nonNull_native);
        v68 = v139;
        v96 = sub_100097C08(v1);
        if ((v102 & 1) != (v103 & 1))
        {

          return sub_10009ED74();
        }
      }

      v104 = v138[38];
      v105 = v138[35];
      v106 = v138[27];
      if (v102)
      {
        sub_100099054(v138[27], v68[7] + *(v117 + 72) * v96);
        v86(v104, v105);
      }

      else
      {
        v68[(v96 >> 6) + 8] |= 1 << v96;
        v107 = v96;
        v134(v68[6] + v96 * v132, v104, v105);
        sub_100098FF0(v106, v68[7] + *(v117 + 72) * v107);
        v86(v104, v105);
        v108 = v68[2];
        v100 = __OFADD__(v108, 1);
        v109 = v108 + 1;
        if (v100)
        {
          goto LABEL_59;
        }

        v68[2] = v109;
      }

      ++v72;
      v66 = v127;
      v69 = v129;
      if (v125 == v72)
      {

        goto LABEL_49;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_49:
  v111 = v138[42];
  v113 = v138[32];
  v112 = v138[33];
  v114 = v138[31];

  (*(v113 + 8))(v112, v114);

  v115 = v138[1];

  return v115(v129, v68);
}

uint64_t sub_1000962A8(uint64_t a1, uint64_t a2)
{
  v2 = *sub_100024330((a1 + 32), *(a1 + 56));
  sub_100007330(0, &qword_1000C31F8, HMUserActionPrediction_ptr);
  **(*(v2 + 64) + 40) = sub_10009E6A4();

  return _swift_continuation_resume(v2);
}

char *sub_10009632C(unint64_t a1, unint64_t *a2)
{
  v40 = a2;
  v3 = sub_100003714(&qword_1000C30D8, &qword_1000A3A70);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_10009CF14();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v39 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v28 - v11;
  __chkstk_darwin(v10);
  v29 = &v28 - v13;
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
  {
    v15 = 0;
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = a1 & 0xC000000000000001;
    v28 = a1;
    v33 = (v7 + 56);
    v34 = (v7 + 8);
    v32 = (v7 + 48);
    v30 = a1 + 32;
    v31 = (v7 + 32);
    v41 = _swiftEmptyArrayStorage;
    v35 = i;
    v36 = v5;
    while (v38)
    {
      v16 = sub_10009EAE4();
      v17 = __OFADD__(v15++, 1);
      if (v17)
      {
        goto LABEL_22;
      }

LABEL_9:
      a1 = *v40;

      v18 = [v16 uniqueIdentifier];
      sub_10009CF04();

      v19 = 0;
      v20 = *(a1 + 16);
      while (v20 != v19)
      {
        v21 = v19 + 1;
        sub_100098C4C(&qword_1000C31D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v22 = sub_10009E534();
        v19 = v21;
        if (v22)
        {

          (*v34)(v12, v6);
          v5 = v36;
          (*v33)(v36, 1, 1, v6);
          goto LABEL_14;
        }
      }

      (*v34)(v12, v6);
      a1 = [v16 uniqueIdentifier];
      v5 = v36;
      sub_10009CF04();

      (*v33)(v5, 0, 1, v6);
LABEL_14:
      swift_unknownObjectRelease();
      if ((*v32)(v5, 1, v6) == 1)
      {
        sub_1000160CC(v5, &qword_1000C30D8, &qword_1000A3A70);
      }

      else
      {
        v23 = *v31;
        v24 = v29;
        (*v31)(v29, v5, v6);
        v23(v39, v24, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_100097488(0, *(v41 + 2) + 1, 1, v41);
        }

        v5 = *(v41 + 2);
        v25 = *(v41 + 3);
        a1 = v5 + 1;
        if (v5 >= v25 >> 1)
        {
          v41 = sub_100097488((v25 > 1), v5 + 1, 1, v41);
        }

        v26 = v41;
        *(v41 + 2) = a1;
        v23(&v26[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5], v39, v6);
      }

      if (v15 == v35)
      {
        return v41;
      }
    }

    if (v15 >= *(v37 + 16))
    {
      goto LABEL_23;
    }

    v16 = *(v30 + 8 * v15);
    swift_unknownObjectRetain();
    v17 = __OFADD__(v15++, 1);
    if (!v17)
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  return _swiftEmptyArrayStorage;
}

unint64_t HMHome.backfill(predictionUUIDs:)(unint64_t a1)
{
  v3 = sub_10009CF14();
  v89 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v87 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v9 = &v81 - v8;
  v91 = a1;
  v10 = *(a1 + 16);
  if (v10 >= 0x10)
  {
  }

  else
  {
    v83 = v7;
    v11 = 16 - v10;
    v12 = objc_opt_self();

    isa = sub_10009E694().super.isa;
    v14 = [v12 predictionsPaddingFavoriteServicesForHome:v1 withLimit:v11 ignoreUUIDs:isa];

    v84 = sub_100003714(&qword_1000C3108, &qword_1000A3A88);
    v15 = sub_10009E6A4();

    if (v15 >> 62)
    {
      goto LABEL_45;
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v82 = v1;
    v85 = v12;
    v88 = v3;
    if (v16)
    {
      v17 = 0;
      v86 = v15 & 0xC000000000000001;
      v3 = v15 & 0xFFFFFFFFFFFFFF8;
      v18 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v86)
        {
          v19 = v15;
          v15 = sub_10009EAE4();
          v1 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (v17 >= *(v3 + 16))
          {
            goto LABEL_42;
          }

          v19 = v15;
          v15 = *(v15 + 8 * v17 + 32);
          swift_unknownObjectRetain();
          v1 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            v16 = sub_10009EBA4();
            goto LABEL_4;
          }
        }

        v20 = [v15 uniqueIdentifier];
        sub_10009CF04();

        swift_unknownObjectRelease();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100097488(0, v18[2] + 1, 1, v18);
        }

        v12 = v18[2];
        v21 = v18[3];
        if (v12 >= v21 >> 1)
        {
          v18 = sub_100097488((v21 > 1), v12 + 1, 1, v18);
        }

        v18[2] = v12 + 1;
        (*(v89 + 32))(v18 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v12, v9, v88);
        ++v17;
        v15 = v19;
        if (v1 == v16)
        {
          goto LABEL_20;
        }
      }
    }

    v18 = _swiftEmptyArrayStorage;
LABEL_20:

    if (qword_1000C2F70 != -1)
    {
      swift_once();
    }

    v22 = sub_10009D924();
    v23 = sub_100015B68(v22, qword_1000C3060);

    v24 = v82;
    v25 = sub_10009D904();
    v26 = sub_10009E844();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v88;
    v86 = v23;
    if (v27)
    {
      v29 = swift_slowAlloc();
      v90[0] = swift_slowAlloc();
      *v29 = 136315394;

      v30 = sub_10009E6B4();
      v32 = v31;

      v33 = sub_100097660(v30, v32, v90);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v34 = [v24 uniqueIdentifier];
      v35 = v83;
      sub_10009CF04();

      sub_100098C4C(&qword_1000C3100, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v36 = sub_10009ED04();
      v38 = v37;
      (*(v89 + 8))(v35, v28);
      v39 = sub_100097660(v36, v38, v90);

      *(v29 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v25, v26, "Backfilling with favoriteUUIDs = %s homeID = %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    v9 = v84;
    v40 = v85;
    sub_10009735C(v18);
    v41 = [v40 favoriteActionSetsForHome:v24 withLimit:16 - *(v91 + 16)];
    v42 = sub_10009E6A4();

    v43 = sub_10009632C(v42, &v91);

    v44 = v24;

    v45 = sub_10009D904();
    v46 = sub_10009E844();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v90[0] = swift_slowAlloc();
      *v47 = 136315394;

      v48 = sub_10009E6B4();
      v50 = v49;

      v51 = sub_100097660(v48, v50, v90);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      v52 = [v44 uniqueIdentifier];
      v53 = v83;
      sub_10009CF04();

      sub_100098C4C(&qword_1000C3100, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v54 = sub_10009ED04();
      v56 = v55;
      (*(v89 + 8))(v53, v28);
      v57 = sub_100097660(v54, v56, v90);

      *(v47 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v45, v46, "Backfilling with sceneUUIDs = %s homeID = %s", v47, 0x16u);
      swift_arrayDestroy();
      v9 = v84;
    }

    sub_10009735C(v43);
    v58 = 16 - *(v91 + 16);
    v12 = sub_10009E694().super.isa;
    v59 = [v85 predictionsPaddingNonFavoriteServicesForHome:v44 withLimit:v58 ignoreUUIDs:v12];

    v1 = sub_10009E6A4();
    if (v1 >> 62)
    {
      v15 = sub_10009EBA4();
      v85 = v44;
      if (v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v85 = v44;
      if (v15)
      {
LABEL_28:
        v60 = 0;
        v3 = v1 & 0xFFFFFFFFFFFFFF8;
        v61 = _swiftEmptyArrayStorage;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v9 = sub_10009EAE4();
            v62 = v60 + 1;
            if (__OFADD__(v60, 1))
            {
              goto LABEL_43;
            }
          }

          else
          {
            if (v60 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v9 = *(v1 + 8 * v60 + 32);
            swift_unknownObjectRetain();
            v62 = v60 + 1;
            if (__OFADD__(v60, 1))
            {
              goto LABEL_43;
            }
          }

          v63 = [v9 uniqueIdentifier];
          sub_10009CF04();

          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = sub_100097488(0, v61[2] + 1, 1, v61);
          }

          v12 = v61[2];
          v64 = v61[3];
          v9 = (v12 + 1);
          if (v12 >= v64 >> 1)
          {
            v61 = sub_100097488((v64 > 1), v12 + 1, 1, v61);
          }

          v61[2] = v9;
          (*(v89 + 32))(v61 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v12, v87, v88);
          ++v60;
          if (v62 == v15)
          {
            goto LABEL_48;
          }
        }
      }
    }

    v61 = _swiftEmptyArrayStorage;
LABEL_48:

    v65 = v85;

    v66 = sub_10009D904();
    v67 = sub_10009E844();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v90[0] = swift_slowAlloc();
      *v68 = 136315394;

      v69 = v88;
      v70 = sub_10009E6B4();
      v72 = v71;

      v73 = sub_100097660(v70, v72, v90);

      *(v68 + 4) = v73;
      *(v68 + 12) = 2080;
      v74 = [v65 uniqueIdentifier];
      v75 = v83;
      sub_10009CF04();

      sub_100098C4C(&qword_1000C3100, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v76 = sub_10009ED04();
      v78 = v77;
      (*(v89 + 8))(v75, v69);
      v79 = sub_100097660(v76, v78, v90);

      *(v68 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v66, v67, "Backfilling with nonFavoriteUUIDs = %s homeID = %s", v68, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009735C(v61);
    return v91;
  }

  return a1;
}

uint64_t sub_10009735C(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100097488(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_10009CF14();
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100097488(void *result, int64_t a2, char a3, void *a4)
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

  sub_100003714(&qword_1000C31F0, &qword_1000A3CB8);
  v10 = *(sub_10009CF14() - 8);
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
  v15 = *(sub_10009CF14() - 8);
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

unint64_t sub_100097660(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10009772C(v11, 0, 0, 1, a1, a2);
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
    sub_10001B668(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100015F44(v11);
  return v7;
}

unint64_t sub_10009772C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100097838(a5, a6);
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
    result = sub_10009EB24();
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

void *sub_100097838(uint64_t a1, unint64_t a2)
{
  v3 = sub_100097884(a1, a2);
  sub_1000979B4(&off_1000BC4B8);
  return v3;
}

void *sub_100097884(uint64_t a1, unint64_t a2)
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

  v6 = sub_100097AA0(v5, 0);
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

  result = sub_10009EB24();
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
        v10 = sub_10009E644();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100097AA0(v10, 0);
        result = sub_10009EAB4();
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

uint64_t sub_1000979B4(uint64_t result)
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

  result = sub_100097B14(result, v11, 1, v3);
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

void *sub_100097AA0(uint64_t a1, uint64_t a2)
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

  sub_100003714(&qword_1000C31D8, &qword_1000A3CA8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100097B14(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000C31D8, &qword_1000A3CA8);
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

unint64_t sub_100097C08(uint64_t a1)
{
  sub_10009CF14();
  sub_100098C4C(&qword_1000C31E8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = sub_10009E4F4();

  return sub_100098104(a1, v2);
}

uint64_t sub_100097CA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10009CF14();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100003714(&qword_1000C31E0, &qword_1000A3CB0);
  v43 = v4;
  result = sub_10009EBC4();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_100098FF0(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_100098C94(v29 + v28 * v24, v47);
      }

      sub_100098C4C(&qword_1000C31E8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_10009E4F4();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_100098FF0(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

unint64_t sub_100098104(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_10009CF14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
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
      sub_100098C4C(&qword_1000C31D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = sub_10009E534();
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

char *sub_1000982C4()
{
  v1 = v0;
  v2 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
  v36 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10009CF14();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003714(&qword_1000C31E0, &qword_1000A3CB0);
  v5 = *v0;
  v6 = sub_10009EBB4();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_100098C94(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_100098FF0(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

BOOL _s14HomeWidgetCore0B23PredictionAnalyticsInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009D074();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003714(&qword_1000C3080, &qword_1000A3A48);
  __chkstk_darwin(v6 - 8);
  v39 = &v38 - v7;
  v40 = sub_100003714(&qword_1000C3208, &qword_1000A3CC8);
  __chkstk_darwin(v40);
  v41 = &v38 - v8;
  v9 = sub_10009D054();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003714(&qword_1000C3078, &qword_1000A3A40);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = sub_100003714(&qword_1000C3210, &unk_1000A3CD0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v38 - v18;
  v20 = *(v17 + 56);
  v42 = a1;
  sub_10001E0A8(a1, &v38 - v18, &qword_1000C3078, &qword_1000A3A40);
  v43 = a2;
  sub_10001E0A8(a2, &v19[v20], &qword_1000C3078, &qword_1000A3A40);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_10001E0A8(v19, v15, &qword_1000C3078, &qword_1000A3A40);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      (*(v10 + 32))(v12, &v19[v20], v9);
      sub_100098C4C(&unk_1000C3220, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsScoringValues, &protocol conformance descriptor for HomeAnalyticsUtilities.PredictionAnalyticsScoringValues);
      v25 = sub_10009E534();
      v26 = *(v10 + 8);
      v26(v12, v9);
      v26(v15, v9);
      sub_1000160CC(v19, &qword_1000C3078, &qword_1000A3A40);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v10 + 8))(v15, v9);
LABEL_6:
    v22 = &qword_1000C3210;
    v23 = &unk_1000A3CD0;
    v24 = v19;
LABEL_14:
    sub_1000160CC(v24, v22, v23);
    return 0;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_1000160CC(v19, &qword_1000C3078, &qword_1000A3A40);
LABEL_8:
  v27 = *(type metadata accessor for WidgetPredictionAnalyticsInfo(0) + 20);
  v28 = v41;
  v29 = *(v40 + 48);
  sub_10001E0A8(v42 + v27, v41, &qword_1000C3080, &qword_1000A3A48);
  sub_10001E0A8(v43 + v27, v28 + v29, &qword_1000C3080, &qword_1000A3A48);
  v31 = v44;
  v30 = v45;
  v32 = *(v44 + 48);
  if (v32(v28, 1, v45) == 1)
  {
    if (v32(v28 + v29, 1, v30) == 1)
    {
      sub_1000160CC(v28, &qword_1000C3080, &qword_1000A3A48);
      return 1;
    }

    goto LABEL_13;
  }

  v33 = v39;
  sub_10001E0A8(v28, v39, &qword_1000C3080, &qword_1000A3A48);
  if (v32(v28 + v29, 1, v30) == 1)
  {
    (*(v31 + 8))(v33, v30);
LABEL_13:
    v22 = &qword_1000C3208;
    v23 = &qword_1000A3CC8;
    v24 = v28;
    goto LABEL_14;
  }

  v35 = v38;
  (*(v31 + 32))(v38, v28 + v29, v30);
  sub_100098C4C(&qword_1000C3218, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsContext, &protocol conformance descriptor for HomeAnalyticsUtilities.PredictionAnalyticsContext);
  v36 = sub_10009E534();
  v37 = *(v31 + 8);
  v37(v35, v30);
  v37(v33, v30);
  sub_1000160CC(v28, &qword_1000C3080, &qword_1000A3A48);
  return (v36 & 1) != 0;
}

unint64_t sub_100098BF8()
{
  result = qword_1000C3090;
  if (!qword_1000C3090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C3090);
  }

  return result;
}

uint64_t sub_100098C4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100098C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100098CF8(uint64_t a1)
{
  v2 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100098D54(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C3200, &qword_1000A3CC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003714(&qword_1000C31E0, &qword_1000A3CB0);
    v7 = sub_10009EBD4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001E0A8(v9, v5, &qword_1000C3200, &qword_1000A3CC0);
      result = sub_100097C08(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10009CF14();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
      result = sub_100098FF0(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_100098F88()
{
  result = qword_1000C30F0;
  if (!qword_1000C30F0)
  {
    sub_100007330(255, &qword_1000C30E8, HMHome_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C30F0);
  }

  return result;
}

uint64_t sub_100098FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100099054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100099114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003714(&qword_1000C3078, &qword_1000A3A40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100003714(&qword_1000C3080, &qword_1000A3A48);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100099230(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003714(&qword_1000C3078, &qword_1000A3A40);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100003714(&qword_1000C3080, &qword_1000A3A48);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100099344(uint64_t a1)
{
  sub_100099400(319, &qword_1000C3180, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsScoringValues);
  if (v1 <= 0x3F)
  {
    sub_100099400(319, &unk_1000C3188, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsContext);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100099400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10009E944();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for WidgetPredictionAnalyticsInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetPredictionAnalyticsInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000995D0()
{
  result = qword_1000C31B8;
  if (!qword_1000C31B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C31B8);
  }

  return result;
}

unint64_t sub_100099628()
{
  result = qword_1000C31C0;
  if (!qword_1000C31C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C31C0);
  }

  return result;
}

unint64_t sub_100099680()
{
  result = qword_1000C31C8;
  if (!qword_1000C31C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C31C8);
  }

  return result;
}

uint64_t sub_1000996D4()
{
  type metadata accessor for HomeSettingsActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1000C3230 = v0;
  return result;
}

uint64_t HomeWidget.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10009979C()
{
  if (qword_1000C2F78 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000997F8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HomeSettingsActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

uint64_t sub_100099830()
{
  type metadata accessor for UserHomeSettings();
  v0 = swift_allocObject();
  result = sub_100099C8C();
  qword_1000C3238 = v0;
  return result;
}

uint64_t sub_100099890(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t UserHomeSettings.isHomeSensingEnabled.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_10009E5B4();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    sub_10009E974();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_100099A54();
    if (swift_dynamicCast())
    {
      v4 = [v6 BOOLValue];

      return v4;
    }
  }

  else
  {
    sub_1000999EC(v9);
  }

  return 1;
}

uint64_t sub_1000999EC(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C3240, &qword_1000A3CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100099A54()
{
  result = qword_1000C3248;
  if (!qword_1000C3248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C3248);
  }

  return result;
}

uint64_t UserHomeSettings.selectedHome.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = sub_10009E5B4();
  v5 = [v3 stringForKey:v4];

  if (v5)
  {
    sub_10009E5C4();

    sub_10009CED4();
  }

  else
  {
    v7 = sub_10009CF14();
    v8 = *(*(v7 - 8) + 56);

    return v8(a1, 1, 1, v7);
  }
}

uint64_t UserHomeSettings.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100099C14(uint64_t a1, uint64_t a2)
{
  result = qword_1000C3250;
  if (!qword_1000C3250)
  {
    type metadata accessor for HomeSettingsActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C3250);
  }

  return result;
}

uint64_t sub_100099C8C()
{
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = sub_10009E5B4();
  v3 = [v1 initWithSuiteName:v2];

  if (!v3)
  {
    v3 = [objc_opt_self() standardUserDefaults];
  }

  *(v0 + 16) = v3;
  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = sub_10009E5B4();
  v6 = [v4 initWithSuiteName:v5];

  if (!v6)
  {
    v6 = [objc_opt_self() standardUserDefaults];
  }

  *(v0 + 24) = v6;
  return v0;
}

uint64_t sub_100099E9C()
{
  v0 = sub_10009D924();
  sub_10001F4BC(v0, qword_1000C8320);
  sub_100015B68(v0, qword_1000C8320);
  return sub_10009D914();
}

Swift::Int sub_100099F34()
{
  sub_10009EDD4();
  sub_10009EDE4(0);
  return sub_10009EE04();
}

Swift::Int sub_100099FA0(uint64_t a1)
{
  sub_10009EDD4();
  sub_10009EDE4(0);
  return sub_10009EE04();
}

uint64_t sub_100099FF0(uint64_t a1)
{
  type metadata accessor for HomeWidget();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10009D0F4();
  result = sub_10009D0E4();
  qword_1000C33A0 = v1;
  return result;
}

uint64_t static HomeWidget.shared.getter()
{
  if (qword_1000C2F90 != -1)
  {
    swift_once();
  }
}

uint64_t HomeWidget.synchronizeWithHomeKit<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a2 - 8);
  v4[7] = swift_task_alloc();
  v5 = sub_10009D274();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10009A1B0, v3, 0);
}

uint64_t sub_10009A1B0()
{
  v0[11] = sub_10009D024();
  v0[12] = sub_10009D1E4();
  v0[13] = sub_10009D1D4();
  v0[14] = sub_10009C218(&qword_1000C33A8, &type metadata accessor for WidgetActor, &protocol conformance descriptor for WidgetActor);
  v2 = sub_10009E714();

  return _swift_task_switch(sub_10009A288, v2, v1);
}

uint64_t sub_10009A288()
{

  *(v0 + 120) = sub_10009D004();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_10009A330;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_10009A330(uint64_t a1)
{
  *(*v1 + 136) = a1;

  sub_10009D774();
  sub_10009C218(&qword_1000C33B0, &type metadata accessor for WidgetSnapshotModerator, &protocol conformance descriptor for WidgetSnapshotModerator);
  v3 = sub_10009E714();

  return _swift_task_switch(sub_10009A4A4, v3, v2);
}

uint64_t sub_10009A4A4()
{
  v0[18] = sub_10009D744();

  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_10009A550;
  v2 = v0[10];

  return sub_10009AB98(v2);
}

uint64_t sub_10009A550()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = sub_10009A6FC;
  }

  else
  {
    v5 = v2[5];
    (*(v2[9] + 8))(v2[10], v2[8]);
    v4 = sub_10009A688;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10009A688()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10009A6FC()
{
  if (qword_1000C2F88 != -1)
  {
    swift_once();
  }

  v1 = sub_10009D924();
  sub_100015B68(v1, qword_1000C8320);
  swift_errorRetain();
  v2 = sub_10009D904();
  v3 = sub_10009E824();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "synchronizeWithHomeKit() failed to build snapshot: %@", v4, 0xCu);
    sub_1000160CC(v5, &qword_1000C33B8, &qword_1000A3E18);
  }

  *(v0 + 168) = sub_10009D1D4();
  v8 = sub_10009E714();

  return _swift_task_switch(sub_10009A8C4, v8, v7);
}

uint64_t sub_10009A8C4()
{
  v1 = *(v0 + 40);

  *(v0 + 176) = sub_10009D004();

  return _swift_task_switch(sub_10009A93C, v1, 0);
}

uint64_t sub_10009A93C()
{
  (*(v0[6] + 16))(v0[7], v0[2], v0[3]);
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_10009A9F4;
  v2 = v0[7];
  v3 = v0[3];
  v4 = v0[4];

  return WidgetDataModel.queueForNextUpdate<A>(configuration:)(v2, v3, v4);
}

uint64_t sub_10009A9F4()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_10009AB20, v1, 0);
}

uint64_t sub_10009AB20()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10009AB98(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = sub_100003714(&qword_1000C3478, &qword_1000A3F50);
  v2[10] = swift_task_alloc();
  v3 = sub_10009D704();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  sub_100003714(&qword_1000C30D8, &qword_1000A3A70);
  v2[14] = swift_task_alloc();
  sub_100003714(&qword_1000C3480, &qword_1000A3F58);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10009AD04, v1, 0);
}

uint64_t sub_10009AD04()
{
  v1 = v0[14];
  v2 = sub_10009CF14();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v0[2] = sub_10009D224();
  v0[3] = v3;
  v0[4] = v4;
  v0[5] = v5;
  sub_100003714(&qword_1000C3488, &qword_1000A3F60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10009F8D0;
  sub_10009D6F4();
  v0[6] = v6;
  sub_10009C218(&qword_1000C3490, &type metadata accessor for WidgetRefreshOptions, &protocol conformance descriptor for WidgetRefreshOptions);
  sub_100003714(&qword_1000C3498, qword_1000A3F68);
  sub_10009C260();
  sub_10009E984();
  sub_10009D2D4();
  v0[16] = sub_10009D024();
  sub_10009D1E4();
  v0[17] = sub_10009D1D4();
  sub_10009C218(&qword_1000C33A8, &type metadata accessor for WidgetActor, &protocol conformance descriptor for WidgetActor);
  v8 = sub_10009E714();

  return _swift_task_switch(sub_10009AF30, v8, v7);
}

uint64_t sub_10009AF30()
{
  v1 = *(v0 + 64);

  *(v0 + 144) = sub_10009D004();

  return _swift_task_switch(sub_10009AFA4, v1, 0);
}

uint64_t sub_10009AFA4()
{
  sub_10009C2C4(v0[15], v0[10]);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_10009B074;
  v2 = v0[10];
  v3 = v0[7];

  return WidgetDataModel.snapshotOf<A>(updateType:)(v3, v2, &type metadata for BasicIdentity, &protocol witness table for BasicIdentity);
}

uint64_t sub_10009B074()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_10009B248;
  }

  else
  {
    v4 = sub_10009B1BC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10009B1BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009B248()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t HomeWidget.queueForNextUpdate<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a2 - 8);
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_10009B38C, v3, 0);
}

uint64_t sub_10009B38C()
{
  *(v0 + 64) = sub_10009D024();
  sub_10009D1E4();
  *(v0 + 72) = sub_10009D1D4();
  sub_10009C218(&qword_1000C33A8, &type metadata accessor for WidgetActor, &protocol conformance descriptor for WidgetActor);
  v2 = sub_10009E714();

  return _swift_task_switch(sub_10009B45C, v2, v1);
}

uint64_t sub_10009B45C()
{
  v1 = *(v0 + 40);

  *(v0 + 80) = sub_10009D004();

  return _swift_task_switch(sub_10009B4D0, v1, 0);
}

uint64_t sub_10009B4D0()
{
  (*(v0[6] + 16))(v0[7], v0[2], v0[3]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_10009B588;
  v2 = v0[7];
  v3 = v0[3];
  v4 = v0[4];

  return WidgetDataModel.queueForNextUpdate<A>(configuration:)(v2, v3, v4);
}

uint64_t sub_10009B588()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t HomeWidget.recommendedHome<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = v3;
  sub_100003714(&qword_1000C30D8, &qword_1000A3A70);
  v4[3] = swift_task_alloc();
  sub_100003714(&qword_1000C33C0, &qword_1000A3E30);
  v4[4] = swift_task_alloc();
  v8 = sub_10009CF94();
  v4[5] = v8;
  v4[6] = *(v8 - 8);
  v4[7] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[8] = v9;
  *v9 = v4;
  v9[1] = sub_10009B830;

  return HomeWidget.synchronizeWithHomeKit<A>(configuration:)(a1, a2, a3);
}

uint64_t sub_10009B830(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_10009B948, v2, 0);
}

uint64_t sub_10009B948()
{
  if (v0[9])
  {
    v0[10] = sub_10009D024();
    sub_10009D1E4();
    v0[11] = sub_10009D1D4();
    sub_10009C218(&qword_1000C33A8, &type metadata accessor for WidgetActor, &protocol conformance descriptor for WidgetActor);
    v2 = sub_10009E714();

    return _swift_task_switch(sub_10009BAB4, v2, v1);
  }

  else
  {
    sub_10009C040();
    swift_allocError();
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10009BAB4()
{
  v1 = *(v0 + 16);

  *(v0 + 96) = sub_10009D004();

  return _swift_task_switch(sub_10009BB28, v1, 0);
}

uint64_t sub_10009BB28()
{
  v1 = v0[3];
  v2 = sub_10009CF14();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_10009BC08;
  v5 = v0[3];
  v4 = v0[4];

  return WidgetDataModel.home(_:)(v4, v5);
}

uint64_t sub_10009BC08()
{
  v2 = *v1;

  v3 = *(v2 + 24);
  v4 = *(v2 + 16);
  if (v0)
  {

    sub_1000160CC(v3, &qword_1000C30D8, &qword_1000A3A70);
    v5 = sub_10009BF38;
  }

  else
  {
    sub_1000160CC(v3, &qword_1000C30D8, &qword_1000A3A70);

    v5 = sub_10009BDB0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10009BDB0()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  (*(v3 + 56))(v4, 0, 1, v5);
  (*(v3 + 32))(v2, v4, v5);
  v6.super.isa = v1;
  v7 = sub_10009CF74(v6);

  (*(v3 + 8))(v2, v5);
  if (v7)
  {

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    sub_10009C040();
    swift_allocError();
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10009BF38()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);

  (*(v2 + 56))(v3, 1, 1, v1);
  sub_1000160CC(v3, &qword_1000C33C0, &qword_1000A3E30);
  sub_10009C040();
  swift_allocError();
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_10009C040()
{
  result = qword_1000C33C8;
  if (!qword_1000C33C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C33C8);
  }

  return result;
}

unint64_t sub_10009C098()
{
  result = qword_1000C33D0;
  if (!qword_1000C33D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C33D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeWidget.HomeWidgetError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for HomeWidget.HomeWidgetError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_10009C218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10009C260()
{
  result = qword_1000C34A0;
  if (!qword_1000C34A0)
  {
    sub_10000375C(&qword_1000C3498, qword_1000A3F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C34A0);
  }

  return result;
}

uint64_t sub_10009C2C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C3480, &qword_1000A3F58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009C33C(int a1, int a2, int a3, int a4)
{
  if (qword_1000C8158 == -1)
  {
    if (qword_1000C8160)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10009C804();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1000C8160)
    {
      return _availability_version_check();
    }
  }

  if (qword_1000C8150 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10009C81C();
    a3 = v10;
    a4 = v9;
    v8 = dword_1000C8140 < v11;
    if (dword_1000C8140 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1000C8144 > a3)
      {
        return 1;
      }

      if (dword_1000C8144 >= a3)
      {
        return dword_1000C8148 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1000C8140 < a2;
  if (dword_1000C8140 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10009C4D0(uint64_t result)
{
  v1 = qword_1000C8160;
  if (qword_1000C8160)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1000C8160 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1000C8140, &dword_1000C8144, &dword_1000C8148);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}