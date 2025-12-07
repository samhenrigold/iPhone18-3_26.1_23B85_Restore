void sub_1001831D8()
{
  v1 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v1 - 8);
  v3 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v61 - v5;
  v7 = type metadata accessor for LocationWeatherDataState(0);
  v72 = *(v7 - 8);
  v73 = v7;
  __chkstk_darwin(v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v71 = &v61 - v11;
  v12 = sub_10022C350(&qword_100CAA800, &qword_100A352D8);
  __chkstk_darwin(v12 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v61 - v16;
  v18 = type metadata accessor for BannerStateComputer(0);
  v19 = v18;
  if (*(v0 + *(v18 + 28)) != 1)
  {
    sub_100183848();
    if (v43)
    {
      v44 = *(v0 + *(v19 + 20));
      v45 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      if ((*(v44 + v45 + *(type metadata accessor for ViewState(0) + 40) + 1) & 0xC0) == 0x40)
      {
        v46 = type metadata accessor for ContentStatusBanner(0);
        v47 = *(v46 + 24);
        v48 = type metadata accessor for Date();
        sub_10001B350(&v3[v47], 1, 1, v48);
        *v3 = 0;
        *(v3 + 8) = xmmword_100A3BBB0;
        v49 = v3;
        v50 = 0;
        v51 = v46;
        goto LABEL_21;
      }
    }

LABEL_20:
    v51 = type metadata accessor for ContentStatusBanner(0);
    v49 = v3;
    v50 = 1;
LABEL_21:
    sub_10001B350(v49, v50, 1, v51);
LABEL_22:
    sub_1000B8080();
    return;
  }

  v20 = *(v0 + *(v18 + 20));
  v21 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  if ((*(v20 + v21 + *(type metadata accessor for ViewState(0) + 40) + 1) & 0xC0) != 0x40)
  {
    goto LABEL_20;
  }

  v63 = v6;
  v64 = v3;
  v65 = v19;
  v66 = v0;
  v62 = v20;
  v22 = *(v20 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v25 = *(v22 + 64);
  v24 = v22 + 64;
  v23 = v25;
  v26 = 1 << *(*(v20 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16) + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v23;
  v29 = (v26 + 63) >> 6;
  v70 = *(v20 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v30 = 0;
  v31 = &qword_100CAA808;
  v68 = v17;
  v69 = v9;
  v67 = v14;
  if (v28)
  {
    while (1)
    {
      v32 = v30;
LABEL_11:
      v33 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v34 = (*(v70 + 48) + 16 * (v33 | (v32 << 6)));
      v36 = *v34;
      v35 = v34[1];
      sub_100050FF0();
      v37 = v31;
      v38 = sub_10022C350(v31, &qword_100A352E0);
      v39 = v67;
      *v67 = v36;
      *(v39 + 1) = v35;
      v14 = v39;
      sub_100073140();
      v40 = v38;
      v31 = v37;
      sub_10001B350(v14, 0, 1, v40);

      v17 = v68;
      v9 = v69;
LABEL_12:
      sub_100051BBC();
      v41 = sub_10022C350(v31, &qword_100A352E0);
      if (sub_100024D10(v17, 1, v41) == 1)
      {

        v52 = type metadata accessor for ContentStatusBanner(0);
        sub_10001B350(v64, 1, 1, v52);
        goto LABEL_22;
      }

      sub_100073140();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_100053318(v9, type metadata accessor for LocationWeatherDataState);
      if (!v28)
      {
        goto LABEL_7;
      }
    }

    v53 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
    v54 = *(v53 + 48);
    sub_100053318(&v9[*(v53 + 64)], type metadata accessor for NewsDataModel);
    sub_100053318(&v9[v54], type metadata accessor for PreprocessedWeatherData);
    sub_100053318(v9, type metadata accessor for WeatherData);
    v55 = v62 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    if (*(v55 + *(type metadata accessor for EnvironmentState(0) + 68)))
    {
      v56 = 2;
    }

    else
    {
      v56 = 1;
    }

    v57 = type metadata accessor for ContentStatusBanner(0);
    v58 = *(v57 + 24);
    v59 = type metadata accessor for Date();
    v60 = v63;
    sub_10001B350(&v63[v58], 1, 1, v59);
    *v60 = v56;
    *(v60 + 8) = xmmword_100A3BBB0;
    sub_10001B350(v60, 0, 1, v57);
    sub_1000B8080();
  }

  else
  {
LABEL_7:
    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v32 >= v29)
      {
        v42 = sub_10022C350(v31, &qword_100A352E0);
        sub_10001B350(v14, 1, 1, v42);
        v28 = 0;
        goto LABEL_12;
      }

      v28 = *(v24 + 8 * v32);
      ++v30;
      if (v28)
      {
        v30 = v32;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_100183848()
{
  v1 = type metadata accessor for WeatherData.CachingState(0);
  __chkstk_darwin(v1 - 8);
  v42 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v41);
  v40 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for LocationWeatherDataState(0);
  v44 = *(v47 - 8);
  __chkstk_darwin(v47);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v43 = &v40 - v7;
  v8 = sub_10022C350(&qword_100CAA800, &qword_100A352D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  v14 = *(*(v0 + *(type metadata accessor for BannerStateComputer(0) + 20)) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v45 = v14;

  v20 = 0;
  v48 = v13;
  v49 = v10;
  if (!v18)
  {
LABEL_5:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {
        v37 = sub_10022C350(&qword_100CAA808, &qword_100A352E0);
        sub_10001B350(v10, 1, 1, v37);
        v18 = 0;
        goto LABEL_10;
      }

      v18 = *(v15 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        goto LABEL_9;
      }
    }

    __break(1u);
    return;
  }

  while (1)
  {
    v21 = v20;
LABEL_9:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = (*(v45 + 48) + 16 * (v22 | (v21 << 6)));
    v25 = *v23;
    v24 = v23[1];
    sub_100050FF0();
    v26 = sub_10022C350(&qword_100CAA808, &qword_100A352E0);
    v27 = v49;
    *v49 = v25;
    *(v27 + 1) = v24;
    v10 = v27;
    sub_100073140();
    sub_10001B350(v10, 0, 1, v26);

    v13 = v48;
LABEL_10:
    sub_100051BBC();
    v28 = sub_10022C350(&qword_100CAA808, &qword_100A352E0);
    if (sub_100024D10(v13, 1, v28) == 1)
    {

      return;
    }

    sub_100073140();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    if (EnumCaseMultiPayload != 2)
    {

      v38 = type metadata accessor for LocationWeatherDataState;
      v39 = v5;
      goto LABEL_22;
    }

    sub_100053318(v5, type metadata accessor for LocationWeatherDataState);
LABEL_16:
    if (!v18)
    {
      goto LABEL_5;
    }
  }

  v30 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
  v46 = *(v30 + 48);
  v31 = *(v30 + 64);
  v32 = v40;
  sub_100073140();
  v33 = *(v41 + 28);
  v34 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
  v35 = v5;
  v36 = v42;
  sub_10001B350(v42, 1, 1, v34);
  LOBYTE(v33) = sub_100883384(v32 + v33, v36);
  sub_100053318(v36, type metadata accessor for WeatherData.CachingState);
  sub_100053318(v32, type metadata accessor for WeatherData);
  if ((v33 & 1) == 0)
  {
    sub_100053318(&v35[v31], type metadata accessor for NewsDataModel);
    sub_100053318(&v35[v46], type metadata accessor for PreprocessedWeatherData);
    v5 = v35;
    v13 = v48;
    v10 = v49;
    goto LABEL_16;
  }

  sub_100053318(&v35[v31], type metadata accessor for NewsDataModel);
  v38 = type metadata accessor for PreprocessedWeatherData;
  v39 = &v35[v46];
LABEL_22:
  sub_100053318(v39, v38);
}

uint64_t sub_100183E08(uint64_t a1, char a2, char a3)
{
  v6 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (a3)
  {
    v11 = 3;
  }

  *v8 = v11;
  type metadata accessor for NotificationsAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_10004F034(v8, v13, v10, v9);
  sub_1000E17D8(v13);
  return sub_1000547B8(v8);
}

uint64_t sub_100183F18()
{
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001BF30();
  type metadata accessor for Domain();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_100019530();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v8 = 0;
  v6 = sub_10022C350(&qword_100CAFFD0, &unk_100A964A0);
  sub_100003B6C(v6);
  result = sub_100005908(62, 0x8000000100AC3170, &v8);
  qword_100D8FC00 = result;
  return result;
}

unint64_t sub_10018408C()
{
  result = qword_100CB4780;
  if (!qword_100CB4780)
  {
    result = swift_getWitnessTable(byte_100A47AC0, &type metadata for NetworkAction, v0, v1);
    atomic_store(result, &qword_100CB4780);
  }

  return result;
}

uint64_t sub_1001840E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18[30];
  sub_1000163F8();
  sub_100050D50(v20, v19, v21);
  sub_100003B2C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v18[13] + 8))(v18[30], v18[12]);
      goto LABEL_11;
    case 2u:
      v18[33] = *v18[30];

      v39 = swift_task_alloc();
      v18[34] = v39;
      *v39 = v18;
      sub_100071550(v39);
      sub_1000718DC();

      return sub_1005C4170(v40);
    case 3u:
LABEL_11:
      sub_1000045E0();

      sub_100003B14();
      sub_1000718DC();

      __asm { BRAA            X1, X16 }

      return result;
    case 4u:
      v26 = *v18[30];
      v27 = *(v18[3] + 56);
      v28 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
      v29 = type metadata accessor for LocationsState(0);
      if ((v26 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v26 < *(*(v27 + v28 + *(v29 + 20)) + 16))
      {
        v30 = v18[28];
        sub_100049A00();
        sub_100050D50(v31, v30, v32);
        SavedLocation.identifier.getter();
        static NotificationSubscription.Kind.all.getter();
        v33 = swift_task_alloc();
        v18[32] = v33;
        *v33 = v18;
        v33[1] = sub_1005C22A8;
        sub_1000116B0(v18[25]);
        sub_1000718DC();

        return sub_1005C3C84(v34, v35);
      }

      __break(1u);
      JUMPOUT(0x1001848F0);
    case 5u:
      v42 = *v18[30];
      v43 = *(v18[3] + 64);
      v44 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
      v45 = type metadata accessor for LocationsState(0);
      v46 = *(v42 + 16);
      if (v46)
      {
        v47 = *(v43 + v44 + *(v45 + 40));
        v48 = v18[26];
        v49 = v18[13];
        v50 = v42 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
        v93 = (v49 + 32);
        v89 = v18[6];
        v51 = *(v48 + 72);
        v90 = (v49 + 8);
        v91 = (v49 + 16);
        v98 = (v18[17] + 32);

        v52 = _swiftEmptyArrayStorage;
        v94 = v47;
        v92 = v51;
        while (1)
        {
          v53 = v18[27];
          v54 = v18[11];
          sub_100049A00();
          sub_100050D50(v50, v53, v55);
          SavedLocation.location.getter();
          if (sub_100192228(v54) != 1)
          {
            break;
          }

          v56 = v18[11];
          sub_10000628C();
          sub_10004F998();
          sub_100018144(v56, &qword_100CA65D8, &unk_100A3D9D0);
LABEL_34:
          v50 += v51;
          if (!--v46)
          {

            goto LABEL_40;
          }
        }

        (*v93)(v18[15], v18[11], v18[12]);
        SavedLocation.id.getter();
        if (*(v47 + 16))
        {
          v57 = sub_100031B34();
          v59 = v58;

          if (v59)
          {
            v60 = v18[7];
            v61 = v18[5];
            (*(v89 + 16))(v60, *(v47 + 56) + *(v89 + 72) * v57, v61);
            LocationModel.locationOfInterest.getter();
            (*(v89 + 8))(v60, v61);
LABEL_26:
            v67 = v18[8];
            v66 = v18[9];
            (*v91)(v18[14], v18[15], v18[12]);
            sub_1005C1F54(v66, v67, &qword_100CA3588, &unk_100A4F350);
            type metadata accessor for LocationOfInterest();
            v97 = v52;
            if (sub_100192228(v67) == 1)
            {
              sub_100018144(v18[8], &qword_100CA3588, &unk_100A4F350);
              v68 = 1;
            }

            else
            {
              LocationOfInterest.location.getter();
              sub_100003B20();
              v69 = sub_100003B2C();
              v70(v69);
              v68 = 0;
            }

            v71 = v18[18];
            v72 = v18[15];
            v95 = v18[16];
            v96 = v18[19];
            v73 = v18[12];
            v74 = v18[9];
            sub_10001B350(v18[10], v68, 1, v73);
            NotificationSubscription.Location.init(location:locationOverride:)();
            sub_100018144(v74, &qword_100CA3588, &unk_100A4F350);
            (*v90)(v72, v73);
            sub_10000628C();
            sub_10004F998();
            v75 = *v98;
            (*v98)(v96, v71, v95);
            v52 = v97;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100025278();
              sub_100184910();
              v52 = v79;
            }

            v51 = v92;
            v76 = v52[2];
            v47 = v94;
            if (v76 >= v52[3] >> 1)
            {
              sub_1000B0C98();
              sub_100184910();
              v52 = v80;
            }

            v52[2] = v76 + 1;
            sub_10002426C();
            v75(v77 + v78 * v76);
            goto LABEL_34;
          }
        }

        else
        {
        }

        type metadata accessor for LocationOfInterest();
        sub_100003934();
        sub_10001B350(v62, v63, v64, v65);
        goto LABEL_26;
      }

      v52 = _swiftEmptyArrayStorage;
LABEL_40:
      v18[35] = v52;
      v86 = swift_task_alloc();
      v18[36] = v86;
      *v86 = v18;
      sub_100071550(v86);
      sub_1000718DC();

      return sub_100184BFC(v87);
    case 6u:
      v81 = v18[3];
      sub_100036D9C();
      sub_10004F998();
      v82 = *(v81 + 64) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
      v18[37] = *(v82 + *(type metadata accessor for LocationsState(0) + 40));

      v83 = swift_task_alloc();
      v18[38] = v83;
      *v83 = v18;
      sub_100071550(v83);
      sub_1000718DC();

      return sub_10017F378(v84);
    default:
      v22 = swift_task_alloc();
      v18[31] = v22;
      *v22 = v18;
      sub_100071550(v22);
      sub_1000718DC();

      return sub_100197634(v23);
  }
}

void sub_100184910()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CC5238, &qword_100A5F790);
  sub_100011748();
  type metadata accessor for NotificationSubscription.Location();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(&type metadata accessor for NotificationSubscription.Location, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

uint64_t sub_1001849E8@<X0>(__int16 a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = a1;
  v5 = sub_10022C350(&qword_100CB4788, &qword_100A47B18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  if ((a1 & 0x100) != 0)
  {
    *(inited + 32) = 0x64656C62616E65;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = v4 & 1;
  }

  else
  {
    *(inited + 32) = 28532;
    *(inited + 40) = 0xE200000000000000;
    *(inited + 72) = &type metadata for NetworkState;
    *(inited + 48) = v4;
  }

  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a2[3] = v5;
  a2[4] = sub_100184F08();
  v10 = sub_100042FB0(a2);
  return (*(v6 + 32))(v10, v8, v5);
}

uint64_t sub_100184BFC(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for NotificationSubscription.Location();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100184CE0, 0, 0);
}

uint64_t sub_100184CE0()
{
  sub_100013494();
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  *(v0 + 96) = v2;
  if (v2)
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 152) = v6;
    *(v0 + 104) = *(v4 + 56);
    *(v0 + 112) = v5;
    v7 = *(v0 + 88);
    v8 = *(v0 + 56);
    *(v0 + 120) = 0;
    *(v0 + 128) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v7, v1 + ((v6 + 32) & ~v6), v3);
    sub_1000213E8((v8 + 16));
    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    *v9 = v0;
    v10 = sub_100019AFC(v9);

    return dispatch thunk of NotificationSubscriptionManagerType.updateSubscription(for:)(v10);
  }

  else
  {

    sub_100003B14();

    return v11();
  }
}

uint64_t sub_100184E0C()
{
  sub_100003B08();
  sub_10000C7E4();
  sub_10000CCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100003AF8();
  *v5 = v4;
  *(v6 + 144) = v0;

  sub_10000E700();

  return _swift_task_switch(v7, v8, v9);
}

unint64_t sub_100184F08()
{
  result = qword_100CB4790;
  if (!qword_100CB4790)
  {
    v3 = sub_10022E824(&qword_100CB4788, &qword_100A47B18);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CB4790);
  }

  return result;
}

uint64_t sub_100184F6C()
{
  sub_100013494();
  (*(v1[9] + 8))(v1[11], v1[8]);
  sub_100045424();
  if (v3)
  {

    sub_100003B14();

    return v4();
  }

  else
  {
    v6 = sub_100041A98(v2);
    v7(v6);
    sub_1000213E8((v0 + 16));
    v8 = swift_task_alloc();
    v1[17] = v8;
    *v8 = v1;
    v9 = sub_100019AFC(v8);

    return dispatch thunk of NotificationSubscriptionManagerType.updateSubscription(for:)(v9);
  }
}

unint64_t sub_100185060()
{
  result = qword_100CCFBD0;
  if (!qword_100CCFBD0)
  {
    result = swift_getWitnessTable(byte_100A735E8, &type metadata for NetworkState, v0, v1);
    atomic_store(result, &qword_100CCFBD0);
  }

  return result;
}

uint64_t sub_1001850B4()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001851BC@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = a1;
  v5 = sub_10022C350(&qword_100CB21E0, &unk_100A442C0);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  if (v4 != 4)
  {
    sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2C3F0;
    *(inited + 32) = 0x6361667265746E69;
    *(inited + 40) = 0xE900000000000065;
    *(inited + 72) = &type metadata for NetworkInterface;
    *(inited + 48) = a1;
  }

  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a2[3] = v5;
  a2[4] = sub_1001858E0();
  v12 = sub_100042FB0(a2);
  return (*(v7 + 32))(v12, v10, v5);
}

uint64_t sub_100185394()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100328128, v4, v3);
}

uint64_t sub_1001854C0()
{
  v21 = type metadata accessor for UVIndex();
  v0 = *(v21 - 8);
  __chkstk_darwin(v21);
  v2 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for HourWeather();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = sub_1001A5E78(v7, v8);
  if (v9)
  {
    v11 = v9;
    v12 = 0;
    v13 = *(v9 + 16);
    v19[1] = v4 + 16;
    v20 = v13;
    v14 = (v0 + 8);
    while (1)
    {
      v15 = v20 != v12;
      if (v20 == v12)
      {
LABEL_6:

        goto LABEL_8;
      }

      if (v12 >= *(v11 + 16))
      {
        break;
      }

      (*(v4 + 16))(v6, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12++, v3, v10);
      HourWeather.uvIndex.getter();
      v16 = UVIndex.value.getter();
      (*v14)(v2, v21);
      (*(v4 + 8))(v6, v3);
      if (v16 >= 1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  v15 = 0;
LABEL_8:
  if (qword_100CA2108 != -1)
  {
LABEL_11:
    swift_once();
  }

  v17 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_10000703C(v17, qword_100D8FED0);
  v22 = v15;
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_100185758(uint64_t a1)
{

  v4 = sub_100185FF4(v3, a1, sub_1001D3704);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100087220();
    sub_1000D42E4(v6, v7, v8);
  }

  else
  {
    *(v1 + 16) = a1;

    return sub_1001854C0();
  }
}

uint64_t sub_100185860(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_100185758(v3);
  }

  return result;
}

unint64_t sub_1001858E0()
{
  result = qword_100CB21E8;
  if (!qword_100CB21E8)
  {
    v3 = sub_10022E824(&qword_100CB21E0, &unk_100A442C0);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CB21E8);
  }

  return result;
}

uint64_t sub_100185944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_100CA2488 != -1)
    {
      swift_once();
    }

    type metadata accessor for LocationViewerStoreObserver(0);
    sub_10007DDB8(&qword_100CDAF48, type metadata accessor for LocationViewerStoreObserver, byte_100A8773C);
    Configurable.setting<A>(_:)();
    if (v11 != 1)
    {
      goto LABEL_10;
    }

    Location.Identifier.kind.getter();
    v4 = Location.Identifier.Kind.rawValue.getter();
    v6 = v5;
    if (v4 == Location.Identifier.Kind.rawValue.getter() && v6 == v7)
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
LABEL_10:

        sub_100185EF4(v10);
      }
    }

    sub_100185EF4(0);
  }

  return result;
}

unint64_t sub_100185B00()
{
  result = qword_100CB21B0;
  if (!qword_100CB21B0)
  {
    result = swift_getWitnessTable(byte_100A441E0, &type metadata for NetworkInterface, v0, v1);
    atomic_store(result, &qword_100CB21B0);
  }

  return result;
}

uint64_t sub_100185B58()
{
  v1 = *(type metadata accessor for Location.Identifier() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100185944(v3, v0 + v2, v4);
}

uint64_t sub_100185BE8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10022C350(&qword_100CB21E0, &unk_100A442C0);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a2[3] = v3;
  a2[4] = sub_1001858E0();
  v9 = sub_100042FB0(a2);
  return (*(v5 + 32))(v9, v8, v3);
}

uint64_t sub_100185DA4()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(46, v7, v8);
  qword_100D90720 = result;
  return result;
}

uint64_t sub_100185EF4(uint64_t a1)
{

  v4 = sub_100185FF4(v3, a1, sub_1001D374C);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100087220();
    sub_1000D42E4(v6, v7, v8);
  }

  else
  {
    *(v1 + 24) = a1;

    return sub_1001865C0(v10, v11);
  }
}

BOOL sub_100185FF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    v4 = a3(a1);
  }

  return (v4 & 1) == 0;
}

uint64_t sub_100186038(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_100186044(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CE2950, &qword_100A957E8);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = (&v18 - v4);
  v6 = type metadata accessor for TimeState(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v10(&v19, v7);
  v11 = *(v19 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v12 = *(v19 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v13 = *(v19 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v14 = *(v19 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);

  (v10)(&v19, v15);
  sub_1000863F8(v19 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v9);

  v16 = *(v3 + 56);
  *v5 = v11;
  v5[1] = v12;
  v5[2] = v13;
  v5[3] = v14;
  sub_100086450(v9, v5 + v16);
  sub_10022C350(&qword_100CE2A08, &unk_100A95910);
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t sub_100186210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10001F680();
  sub_10014986C(v3, v4, asc_100A7EE60);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001862B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = a2;

  return sub_1001865C0(v2, v3);
}

uint64_t sub_100186318()
{
  sub_100008188();
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 88);
  v5 = *(v0 + 264);

  sub_10018649C(v4, v2, v1, v5);
  if (v3)
  {
  }

  else
  {
    v7 = *(v0 + 88);
    sub_100187350(*(v0 + 240), *(v0 + 248), *(v0 + 264));

    return _swift_task_switch(sub_10016D974, v7, 0);
  }
}

double sub_1001863EC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10001F680();
  v4 = sub_10014986C(v2, v3, asc_100A7EE60);
  sub_100023108(v4, v5);

  return result;
}

void sub_100186470()
{
  sub_100020AF8();
  sub_1001863EC(v1, v2);
  *v0 = v3;
}

uint64_t sub_10018649C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 112);
  v11 = *(a1 + 120);
  *v10 = a2;
  *(v10 + 1) = a3;
  v10[16] = a4;
  type metadata accessor for LocationsAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_1000DC3D4(a2, a3, a4);
  sub_10004F034(v10, v14, v12, v11);
  sub_10003FDF4(v14, &unk_100CD81B0, &unk_100A3B000);
  return sub_1000547B8(v10);
}

uint64_t sub_1001865C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1001863EC(a1, a2);
  if (v4)
  {
    v5 = *(v4 + 16);

    v6 = v5 > 9;
  }

  else
  {
    v6 = 0;
  }

  swift_getKeyPath();
  sub_10014986C(&qword_100CD6218, type metadata accessor for TipCoordinator, asc_100A7EE60);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v3[32] = v6;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v3[33] = v6;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v3[34] = v6;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_100186810()
{
  sub_100020AF8();
  v2 = sub_10074A448(v0, v1);
  return sub_100005F94(v2);
}

uint64_t sub_100186838(unsigned __int8 *a1)
{
  sub_1000317D8(a1);
  sub_10006A8B0();
  return sub_10074AFB0(v1, v2, v3);
}

uint64_t sub_100186868()
{
  sub_100020AF8();
  v2 = sub_10074A4C8(v0, v1);
  return sub_100005F94(v2);
}

uint64_t sub_100186890(unsigned __int8 *a1)
{
  sub_1000317D8(a1);
  sub_10003BB90();
  return sub_10074AFB0(v1, v2, v3);
}

uint64_t sub_1001868C0()
{
  sub_100020AF8();
  v2 = sub_10074A548(v0, v1);
  return sub_100005F94(v2);
}

uint64_t sub_1001868E8(unsigned __int8 *a1)
{
  sub_1000317D8(a1);
  sub_100036E70();
  return sub_10074AFB0(v1, v2, v3);
}

uint64_t sub_100186918(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Location();
  sub_100003810(v5);
  return sub_100186998(a1, a2, v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80)));
}

uint64_t sub_100186998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10022C350(&qword_100CE2950, &qword_100A957E8);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = (&v17 - v7);
  v9 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000302D8(a1, v8, &qword_100CE2950, &qword_100A957E8);
  v12 = *v8;
  v13 = v8[1];
  v15 = v8[2];
  v14 = v8[3];
  sub_100086450(v8 + *(v6 + 56), v11);
  sub_100186B34(a3, v12, v13, v15, v14, v11, 0);

  return sub_100087544();
}

void sub_100186B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v44 = a2;
  v46 = a7;
  v39 = a6;
  v42 = a5;
  v10 = type metadata accessor for TimeState(0);
  v41 = *(v10 - 8);
  v40 = *(v41 + 64);
  __chkstk_darwin(v10 - 8);
  v43 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Location();
  v12 = *(*(v34 - 8) + 64);
  v13 = __chkstk_darwin(v34);
  v15 = v14;
  v32 = v14;
  v16 = *(v14 + 16);
  v16(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  type metadata accessor for WeatherDataUpdateRequestLog(0);
  swift_allocObject();
  v35 = a3;

  v17 = a4;
  v36 = a4;

  v18 = v42;

  v33 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10005B8AC(0, v33, v46, v44, a3, v17, v18);
  v47 = v37;
  v48 = v45;
  v49 = a1;
  sub_10022C350(&qword_100CA6078, &unk_100A30870);
  v38 = firstly<A>(closure:)();
  v19 = v34;
  (v16)(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v34);
  sub_1000863F8(v39, v43);
  v20 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v41 + 80) + v22 + 8) & ~*(v41 + 80);
  v24 = v23 + v40;
  v25 = swift_allocObject();
  v26 = v35;
  v27 = v36;
  *(v25 + 2) = v44;
  *(v25 + 3) = v26;
  v28 = v42;
  *(v25 + 4) = v27;
  *(v25 + 5) = v28;
  (*(v32 + 32))(&v25[v20], v33, v19);
  *&v25[v21] = v37;
  *&v25[v22] = v45;
  sub_100086450(v43, &v25[v23]);
  v25[v24] = v46;

  v29 = zalgo.getter();
  Promise.then<A>(on:closure:)();

  v30 = zalgo.getter();
  Promise.error(on:closure:)();
}

uint64_t sub_100186F18()
{
  sub_10000C778();
  type metadata accessor for Location();
  sub_10000548C();
  sub_100069BF8();
  v2 = type metadata accessor for TimeState(0);
  sub_100003AE8(v2);
  v4 = (((v1 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v3 + 80) + 8) & ~*(v3 + 80);

  v5 = sub_1000751C4();
  v6(v5);

  type metadata accessor for Date();
  sub_100003D98();
  (*(v7 + 8))(v0 + v4);
  sub_100036F2C();
  sub_10000536C();

  return swift_deallocObject();
}

void sub_100187070()
{
  sub_100071630();
  v2 = type metadata accessor for Location();
  sub_100003AE8(v2);
  sub_10002CB50();
  v3 = (v1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for TimeState(0);
  sub_100003AE8(v4);
  v6 = v5;
  v17 = *(v0 + ((v3 + *(v6 + 80) + 8) & ~*(v6 + 80)) + *(v7 + 64));
  v16 = v0 + ((v3 + *(v6 + 80) + 8) & ~*(v6 + 80));
  v8 = sub_10001339C();
  sub_10017EBE4(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_100187198(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000039D8(*(a1 + 8));
  }

  type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
  v5 = sub_1000039EC(*(a3 + 20));

  return sub_100024D10(v5, v6, v7);
}

void sub_100187210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  sub_100003810(v30);
  sub_100003828();
  __chkstk_darwin(v31);
  sub_1000302D8(v23, &a9 - v32, &unk_100CE49F0, &unk_100A3AFA0);
  type metadata accessor for LocationsState(0);
  if (v25 <= 2u)
  {
  }

  sub_1000DC3D4(v29, v27, v25);

  sub_10003A500();
  sub_10000536C();
}

uint64_t sub_100187350(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1001873AC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100187400(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for Location();
    if (*(*(v10 - 8) + 84) == a2)
    {
      v11 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v11 = type metadata accessor for LocationOfInterest();
      v12 = *(a3 + 24);
    }

    return sub_100024D10(&a1[v12], a2, v11);
  }
}

_BYTE *sub_1001874E0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for Location();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for LocationOfInterest();
      v10 = *(a4 + 24);
    }

    return sub_10001B350(&v5[v10], a2, a2, v9);
  }

  return result;
}

uint64_t sub_1001875A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100187600(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_100003A9C();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_100187654(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1001876B0()
{
  v1 = sub_100003B38();
  v2(v1);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

uint64_t sub_100187704()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10018775C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v62 = type metadata accessor for HomeAndWorkRefinementRowViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v6 = &v56[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10022C350(&qword_100CB4B98, &qword_100A48100);
  sub_100003828();
  __chkstk_darwin(v7);
  v61 = &v56[-v8];
  v9 = sub_10022C350(&qword_100CB9E60, &qword_100A4F428);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v56[-v11];
  v13 = type metadata accessor for LocationOfInterest();
  v63 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v56[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v56[-v17];
  v19 = sub_10022C350(&qword_100CB9E68, &unk_100A4F430);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v56[-v21];
  if (__PAIR64__(a1[1], *a1) != __PAIR64__(a2[1], *a2) || a1[2] != a2[2])
  {
    goto LABEL_3;
  }

  v25 = *(a1 + 2);
  v26 = *(a2 + 2);
  if (v25)
  {
    if (!v26)
    {
      goto LABEL_3;
    }

    v27 = *(a1 + 1) == *(a2 + 1) && v25 == v26;
    if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (v26)
  {
    goto LABEL_3;
  }

  v28 = *(a1 + 3);
  if (*(a2 + 3))
  {
    if (!v28)
    {
      goto LABEL_3;
    }
  }

  else if (v28)
  {
    goto LABEL_3;
  }

  v60 = type metadata accessor for LocationFooterViewModel(0);
  if ((sub_100187E68(&a1[v60[9]], &a2[v60[9]]) & 1) == 0)
  {
    goto LABEL_3;
  }

  v29 = v60;
  v30 = v60[10];
  v31 = *&a1[v30] | (a1[v30 + 2] << 16);
  v32 = *&a2[v30] | (a2[v30 + 2] << 16);
  if (v31 == 2)
  {
    if (v32 == 2)
    {
      goto LABEL_24;
    }

    goto LABEL_3;
  }

  if (v31 == 3)
  {
    if (v32 == 3)
    {
      goto LABEL_24;
    }

LABEL_3:
    v23 = 0;
    return v23 & 1;
  }

  if ((v32 & 0xFE) == 2)
  {
    goto LABEL_3;
  }

  v59 = v12;
  v23 = 0;
  if ((v32 ^ v31) & 1) != 0 || (((v32 ^ v31) >> 8))
  {
    return v23 & 1;
  }

  v57 = BYTE2(v32);
  v37 = PredictedLocationsAuthorizationState.rawValue.getter(SBYTE2(v31));
  v58 = v38;
  if (v37 == PredictedLocationsAuthorizationState.rawValue.getter(v57) && v58 == v39)
  {

    v12 = v59;
    v29 = v60;
    goto LABEL_24;
  }

  v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v12 = v59;
  v29 = v60;
  if ((v57 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_24:
  v59 = v12;
  v33 = v29[11];
  v34 = *(v19 + 48);
  sub_100035AD0(&a1[v33], v22, &qword_100CA3588, &unk_100A4F350);
  v35 = &a2[v33];
  v36 = v34;
  sub_100035AD0(v35, &v22[v34], &qword_100CA3588, &unk_100A4F350);
  sub_100003A40(v22);
  if (!v27)
  {
    sub_100035AD0(v22, v18, &qword_100CA3588, &unk_100A4F350);
    sub_100003A40(&v22[v34]);
    if (!v41)
    {
      v45 = v63;
      (*(v63 + 32))(v15, &v22[v36], v13);
      sub_100188240();
      LODWORD(v58) = dispatch thunk of static Equatable.== infix(_:_:)();
      v46 = *(v45 + 8);
      v46(v15, v13);
      v46(v18, v13);
      sub_1000180EC(v22, &qword_100CA3588, &unk_100A4F350);
      if ((v58 & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_44;
    }

    (*(v63 + 8))(v18, v13);
LABEL_41:
    v42 = &qword_100CB9E68;
    v43 = &unk_100A4F430;
    v44 = v22;
LABEL_42:
    sub_1000180EC(v44, v42, v43);
    goto LABEL_3;
  }

  sub_100003A40(&v22[v34]);
  if (!v27)
  {
    goto LABEL_41;
  }

  sub_1000180EC(v22, &qword_100CA3588, &unk_100A4F350);
LABEL_44:
  if (a1[v60[12]] != a2[v60[12]] || a1[v60[13]] != a2[v60[13]])
  {
    goto LABEL_3;
  }

  v47 = v60[14];
  v48 = *(v9 + 48);
  v49 = &a1[v47];
  v50 = v59;
  sub_100035AD0(v49, v59, &qword_100CB4B98, &qword_100A48100);
  sub_100035AD0(&a2[v47], v50 + v48, &qword_100CB4B98, &qword_100A48100);
  v51 = v62;
  if (sub_100024D10(v50, 1, v62) == 1)
  {
    if (sub_100024D10(v50 + v48, 1, v51) == 1)
    {
      sub_1000180EC(v50, &qword_100CB4B98, &qword_100A48100);
      v23 = 1;
      return v23 & 1;
    }

    goto LABEL_52;
  }

  v52 = v61;
  sub_100035AD0(v50, v61, &qword_100CB4B98, &qword_100A48100);
  if (sub_100024D10(v50 + v48, 1, v51) == 1)
  {
    sub_1001882FC(v52);
LABEL_52:
    v42 = &qword_100CB9E60;
    v43 = &qword_100A4F428;
    v44 = v50;
    goto LABEL_42;
  }

  sub_100188298(v50 + v48, v6);
  if (*v52 == *v6 && (static Location.== infix(_:_:)() & 1) != 0)
  {
    if (static LocationOfInterest.== infix(_:_:)())
    {
      v52 = v61;
      v53 = *(v62 + 28);
      v54 = v61[v53];
      v55 = v6[v53];
      sub_1001882FC(v6);
      v23 = v54 ^ v55 ^ 1;
    }

    else
    {
      sub_1001882FC(v6);
      v23 = 0;
      v52 = v61;
    }
  }

  else
  {
    sub_1001882FC(v6);
    v23 = 0;
  }

  sub_1001882FC(v52);
  sub_1000180EC(v59, &qword_100CB4B98, &qword_100A48100);
  return v23 & 1;
}

uint64_t sub_100187E68(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v8 - 8);
  v10 = v31 - v9;
  v11 = sub_10022C350(qword_100CAD4D0, &unk_100A3EA40);
  __chkstk_darwin(v11);
  v13 = v31 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1001007D4();
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for LearnMoreAttributorViewModel(0);
  v16 = v15[6];
  v17 = *(v11 + 48);
  sub_1000E594C(&a1[v16], v13);
  sub_1000E594C(&a2[v16], &v13[v17]);
  sub_100003A40(v13);
  if (!v18)
  {
    sub_1000E594C(v13, v10);
    sub_100003A40(&v13[v17]);
    if (!v18)
    {
      (*(v5 + 32))(v7, &v13[v17], v4);
      sub_10068D030();
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_10003FDF4(v13, &qword_100CB3AB0, &unk_100A2FB80);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    (*(v5 + 8))(v10, v4);
LABEL_11:
    sub_10003FDF4(v13, qword_100CAD4D0, &unk_100A3EA40);
    return 0;
  }

  sub_100003A40(&v13[v17]);
  if (!v18)
  {
    goto LABEL_11;
  }

  sub_10003FDF4(v13, &qword_100CB3AB0, &unk_100A2FB80);
LABEL_15:
  v22 = v15[7];
  v23 = *&a1[v22];
  v24 = *&a1[v22 + 8];
  v25 = &a2[v22];
  v26 = v23 == *v25 && v24 == *(v25 + 1);
  if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v27 = v15[8];
    v28 = *&a1[v27];
    v29 = *&a2[v27];
    if (v28)
    {
      v31[1] = v28;
      if (v29)
      {
        v31[0] = v29;
        sub_10022C350(&qword_100CC4180, &unk_100A5D760);
        sub_1001881C4();

        v30 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v30)
        {
          return 1;
        }
      }
    }

    else if (!v29)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1001881C4()
{
  result = qword_100CD06F8;
  if (!qword_100CD06F8)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = sub_10022E824(&qword_100CC4180, &unk_100A5D760);
    v4[0] = &protocol witness table for String;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> Lazy<A>, v3, v4);
    atomic_store(result, &qword_100CD06F8);
  }

  return result;
}

unint64_t sub_100188240()
{
  result = qword_100CB9E70[0];
  if (!qword_100CB9E70[0])
  {
    v3 = type metadata accessor for LocationOfInterest();
    result = swift_getWitnessTable(&protocol conformance descriptor for LocationOfInterest, v3, v0, v1);
    atomic_store(result, qword_100CB9E70);
  }

  return result;
}

uint64_t sub_100188298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAndWorkRefinementRowViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001882FC(uint64_t a1)
{
  v2 = type metadata accessor for HomeAndWorkRefinementRowViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100188358(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001883B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100188408(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100188460(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1001884C0()
{
  v1 = v0;
  v2 = type metadata accessor for Locale.Language();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  v20 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocationComponentHeaderViewModel(0);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  v14 = type metadata accessor for LocationComponentHeaderMetricsComputer(0);
  v15 = *(v1 + *(v14 + 64));
  sub_10019937C(v1, v13, type metadata accessor for LocationComponentHeaderViewModel);
  v16 = dbl_100A4C998[swift_getEnumCaseMultiPayload()];
  sub_1001995A8(v13, type metadata accessor for LocationComponentHeaderViewModel);
  sub_10019937C(v1, v10, type metadata accessor for LocationComponentHeaderViewModel);
  v17 = 8.0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      break;
    case 3u:
      static Locale.current.getter();
      Locale.language.getter();
      (*(v20 + 8))(v7, v5);
      v18 = Locale.Language.languageContainsLowCharacters.getter();
      (*(v21 + 8))(v4, v2);
      if ((v18 & 1) == 0 || (v17 = 0.0, (*(v1 + *(v14 + 52)) & 1) == 0))
      {
        v17 = 15.0;
      }

      break;
    default:
      v17 = 0.0;
      break;
  }

  sub_1001995A8(v10, type metadata accessor for LocationComponentHeaderViewModel);
  return v15 + 11.0 + v16 + v17;
}

void *sub_1001887D4(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v4 == 2)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4)
  {
    return result;
  }

  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v3 == 2)
  {
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for TipCoordinator(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_10074A5F0(v3 & 1);
}

uint64_t sub_100188908()
{
  v0 = type metadata accessor for WeatherData(0);
  sub_100003AE8(v0);
  v1 = type metadata accessor for PreprocessedWeatherData(0);
  sub_100003AE8(v1);
  v2 = type metadata accessor for NewsDataModel(0);
  sub_100003AE8(v2);
  v3 = type metadata accessor for Location();
  sub_100003AE8(v3);
  sub_1000A40A4();

  return sub_100189E74(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100188AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v76 = a5;
  v83 = a4;
  v71 = a2;
  v72 = a3;
  v70 = a1;
  v5 = type metadata accessor for NewsDataModel(0);
  v73 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v74 = v6;
  v82 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PreprocessedWeatherData(0);
  v68 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v69 = v8;
  v81 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WeatherData(0);
  v66 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v67 = v10;
  v80 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for LocationCoordinate();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v59 = &v58 - v13;
  v77 = type metadata accessor for Location();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v79 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v14;
  __chkstk_darwin(v15);
  v63 = &v58 - v16;
  v17 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  __chkstk_darwin(v17 - 8);
  v19 = &v58 - v18;
  v20 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v20 - 8);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CurrentLocation();
  __chkstk_darwin(v23);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v64 = &v58 - v27;
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchPredicate();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = (&v58 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100040690();
  *v34 = static OS_dispatch_queue.main.getter();
  (*(v32 + 104))(v34, enum case for DispatchPredicate.onQueue(_:), v31);
  v35 = _dispatchPreconditionTest(_:)();
  result = (*(v32 + 8))(v34, v31);
  if (v35)
  {
    v58 = updated;
    swift_storeEnumTagMultiPayload();
    v37 = v76;
    sub_10005C1D4(v30);
    sub_100087544();
    v38 = v83;
    v39 = Location.kind.getter();
    v40 = v75;
    if (v39)
    {
      (*(v78 + 16))(v84);
      sub_1000863F8(v84[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v22);

      sub_1000302D8(v22, v19, &unk_100CE49F0, &unk_100A3AFA0);
      sub_100087544();
      if (sub_100024D10(v19, 1, v23) == 1)
      {
        v39 = sub_100018144(v19, &unk_100CE49F0, &unk_100A3AFA0);
      }

      else
      {
        v41 = v64;
        sub_100086450(v19, v64);
        sub_1000863F8(v41, v25);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_100087544();
        }

        else
        {
          (*(v40 + 32))(v63, v25, v77);
          Location.coordinate.getter();
          v42 = v59;
          LocationCoordinate.init(_:)();
          Location.coordinate.getter();
          v43 = v60;
          LocationCoordinate.init(_:)();
          sub_1000675AC(&qword_100CAAA28, &type metadata accessor for LocationCoordinate);
          v44 = v62;
          v45 = dispatch thunk of static Equatable.== infix(_:_:)();
          v46 = *(v61 + 8);
          v46(v43, v44);
          v46(v42, v44);
          if ((v45 & 1) == 0)
          {
            v56 = v63;
            v57 = v77;
            (*(v40 + 16))(v30, v63, v77);
            swift_storeEnumTagMultiPayload();
            sub_10005C1D4(v30);
            sub_100087544();
            sub_10018E2C0(0, 0);
            (*(v40 + 8))(v56, v57);
            return sub_100087544();
          }

          (*(v40 + 8))(v63, v77);
        }

        v39 = sub_100087544();
      }
    }

    v47 = v78;
    (*(v78 + 16))(v84, v39);
    v48 = sub_100189F18(v38, v84[0]);

    v49 = v77;
    (*(v40 + 16))(v79, v38, v77);
    sub_1000863F8(v70, v80);
    sub_1000863F8(v71, v81);
    sub_1000863F8(v72, v82);
    v50 = (*(v40 + 80) + 40) & ~*(v40 + 80);
    v51 = (v65 + *(v66 + 80) + v50) & ~*(v66 + 80);
    v52 = (v67 + *(v68 + 80) + v51) & ~*(v68 + 80);
    v53 = v37;
    v54 = (v69 + *(v73 + 80) + v52) & ~*(v73 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = v53;
    v48 &= 1u;
    *(v55 + 24) = v48;
    *(v55 + 32) = v47;
    (*(v40 + 32))(v55 + v50, v79, v49);
    sub_100086450(v80, v55 + v51);
    sub_100086450(v81, v55 + v52);
    sub_100086450(v82, v55 + v54);

    sub_10018C9B4(v83, v48, sub_10018CD7C);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100189544()
{
  v1 = type metadata accessor for Location();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for WeatherData(0);
  sub_100003DDC();
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v81 = type metadata accessor for PreprocessedWeatherData(0);
  sub_1000037C4();
  v13 = *(v12 + 80);
  v14 = sub_100045454();
  type metadata accessor for NewsDataModel(v14);
  sub_1000037C4();
  v84 = *(v15 + 80);
  sub_10004ECA4();
  sub_1000452A4();

  (*(v3 + 8))(v0 + v4, v1);
  v83 = v0;
  v16 = v0 + v9;

  v17 = v7[5];
  v18 = type metadata accessor for Locale();
  if (!sub_1000186A8(v0 + v9 + v17))
  {
    sub_100019B68();
    (*(v19 + 8))(v16 + v17, v18);
  }

  v82 = v13;
  v20 = v11 + v13;
  v21 = v7[6];
  type metadata accessor for WeatherDataModel();
  sub_100003D98();
  (*(v22 + 8))(v16 + v21);
  v23 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
  if (!sub_10002120C(v23))
  {
    v11 = type metadata accessor for Date();
    sub_1000037E8();
    v25 = *(v24 + 8);
    v26 = sub_10002C598();
    v25(v26);
    v27 = sub_1000C8C20();
    if (!sub_100052794(v27))
    {
      v28 = sub_1008B1674();
      v25(v28);
    }
  }

  v29 = v9 + v20;
  v30 = v16 + v7[8];
  v31 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  v32 = sub_100088740(v31);
  if (v32 == 1)
  {
    type metadata accessor for WeatherStatisticsModel();
    sub_100003D98();
    (*(v35 + 8))(v30);
    v34 = v81;
    v33 = v82;
  }

  else
  {
    v34 = v81;
    v33 = v82;
    if (!v32)
    {
    }
  }

  v36 = v29 & ~v33;
  v37 = v16 + v7[9];
  v38 = type metadata accessor for WeatherDataOverrides(0);
  if (!sub_1000B9AB0(v38))
  {
    v39 = type metadata accessor for Date();
    if (!sub_100003EB0(v39))
    {
      sub_100019B68();
      v40 = sub_100025214();
      v41(v40);
    }

    v42 = *(v11 + 20);
    if (!sub_1000186A8(v37 + v42))
    {
      sub_100019B68();
      (*(v43 + 8))(v37 + v42, v30);
    }
  }

  v79 = v29 & ~v33;
  v44 = v83 + v36;
  v45 = type metadata accessor for UUID();
  sub_1000037E8();
  v47 = *(v46 + 8);
  v48 = sub_100025214();
  v47(v48);

  type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0);
  v49 = sub_1000E3268();
  if (!sub_1000138DC(v49))
  {

    sub_100030298();
    sub_100003D98();
    (*(v50 + 8))(v36);
    v51 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
    sub_1000BAEF0(v51);
  }

  sub_10001979C();
  v52 = v44 + v34[7];
  if (!sub_1000186A8(v52))
  {
    (v47)(v52, v45);
  }

  type metadata accessor for HourlyForecastComponentViewModel(0);

  v53 = *(type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0) + 20);
  v54 = type metadata accessor for WeatherDescription();
  if (!sub_100024D10(v52 + v53, 1, v54))
  {
    sub_100003B20();
    (*(v55 + 8))(v52 + v53, v54);
  }

  v56 = v44 + v34[8];

  v57 = v56 + *(type metadata accessor for ListPreprocessedDataModel(0) + 32);
  v58 = type metadata accessor for Date();
  sub_1000037E8();
  v78 = *(v59 + 8);
  v78(v57, v58);
  v60 = type metadata accessor for WeatherConditionBackgroundTimeData(0);
  v61 = *(v60 + 20);
  v62 = type metadata accessor for Elevation();
  if (!sub_100024D10(v57 + v61, 1, v62))
  {
    sub_100003B20();
    (*(v63 + 8))(v57 + v61, v62);
  }

  v64 = *(v60 + 24);
  v65 = type metadata accessor for BackgroundMoonData();
  if (!sub_100024D10(v57 + v64, 1, v65))
  {
    sub_100003B20();
    (*(v66 + 8))(v57 + v64, v65);
  }

  v67 = v44 + v81[10];
  sub_100003B20();
  (*(v68 + 8))(v67, v54);
  type metadata accessor for UVIndexComponentPreprocessedDataModel(0);

  v69 = v44 + v81[12];
  type metadata accessor for PressureTrend();
  sub_100003D98();
  (*(v70 + 8))(v69);
  type metadata accessor for PressureComponentPreprocessedDataModel(0);
  sub_10001979C();
  sub_10001979C();
  sub_10001979C();
  sub_10001979C();

  v71 = v44 + v81[14];
  v78(v71, v58);
  v72 = *(v60 + 20);
  if (!sub_100024D10(v71 + v72, 1, v62))
  {
    sub_100003B20();
    (*(v73 + 8))(v71 + v72, v62);
  }

  v74 = *(v60 + 24);
  if (!sub_100024D10(v71 + v74, 1, v65))
  {
    sub_100003B20();
    (*(v75 + 8))(v71 + v74, v65);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    type metadata accessor for News();
    sub_100003D98();
    (*(v76 + 8))(v83 + ((v79 + v80 + v84) & ~v84));
  }

  return swift_deallocObject();
}

uint64_t sub_100189E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  sub_100188AAC(a2, a3, a4, a5, a6);
  sub_10018E2C0(1, v8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10018E604(a5);
  }

  return result;
}

uint64_t sub_100189F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = *(a2 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v8 = Location.id.getter();
  sub_1000864C0(v8, v9, v7);

  v10 = type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v6, 1, v10) == 1)
  {
    sub_100018144(v6, &qword_100CA37B0, &unk_100A2D740);
LABEL_6:
    v11 = sub_10018A0DC(a1, a2);
    return v11 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100087544();
    goto LABEL_6;
  }

  sub_10022C350(&qword_100CA75D8, &unk_100A32600);
  sub_100087544();
  sub_100087544();
  sub_100087544();
  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10018A0DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  sub_10018A614(a2, &v18 - v7);
  sub_1000302D8(v8, v5, &qword_100CADBA0, &qword_100A3D250);
  v9 = type metadata accessor for Location.Identifier();
  if (sub_100024D10(v5, 1, v9) == 1)
  {
    sub_100018144(v5, &qword_100CADBA0, &qword_100A3D250);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = Location.Identifier.id.getter();
    v11 = v12;
    (*(*(v9 - 8) + 8))(v5, v9);
  }

  v13 = Location.id.getter();
  if (v11)
  {
    if (v10 == v13 && v11 == v14)
    {
      v16 = 1;
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    sub_100018144(v8, &qword_100CADBA0, &qword_100A3D250);
  }

  else
  {
    sub_100018144(v8, &qword_100CADBA0, &qword_100A3D250);

    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_10018A2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Font.Leading();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  v18 = type metadata accessor for FontWithSmallVariantModifier(0);
  if (*(v2 + *(v18 + 28)) == 1)
  {
    sub_10018ACBC(v2 + *(v18 + 24), v10);
    if (sub_100024D10(v10, 1, v11) == 1)
    {
      (*(v12 + 104))(v17, enum case for Font.Leading.standard(_:), v11);
      if (sub_100024D10(v10, 1, v11) != 1)
      {
        sub_1001CA7E0(v10);
      }
    }

    else
    {
      (*(v12 + 32))(v17, v10, v11);
    }
  }

  else
  {
    v17 = v14;
    sub_10018ACBC(v2 + *(v18 + 24), v7);
    if (sub_100024D10(v7, 1, v11) == 1)
    {
      (*(v12 + 104))(v14, enum case for Font.Leading.standard(_:), v11);
      if (sub_100024D10(v7, 1, v11) != 1)
      {
        sub_1001CA7E0(v7);
      }
    }

    else
    {
      (*(v12 + 32))(v14, v7, v11);
    }
  }

  v19 = Font.leading(_:)();
  (*(v12 + 8))(v17, v11);
  KeyPath = swift_getKeyPath();
  v21 = sub_10022C350(&qword_100CBEC78, &qword_100A56350);
  (*(*(v21 - 8) + 16))(a2, a1, v21);
  result = sub_10022C350(&qword_100CBEC80, &unk_100A56358);
  v23 = (a2 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = v19;
  return result;
}

uint64_t sub_10018A614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  __chkstk_darwin(active - 8);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Location.Identifier();
  v36 = *(v41 - 8);
  __chkstk_darwin(v41);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v39);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v40);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for Location();
  v38 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LocationPreviewViewState(0);
  __chkstk_darwin(v19 - 8);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000863F8(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v18);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100087544();
  }

  else
  {
    v22 = v38;
    sub_100086450(v18, v21);
    sub_1006E6234(v12);
    if (sub_100024D10(v12, 1, v13) != 1)
    {
      (*(v22 + 32))(v15, v12, v13);
      v27 = v42;
      Location.identifier.getter();
      (*(v22 + 8))(v15, v13);
      sub_100087544();
      v26 = 0;
      v25 = v41;
      return sub_10001B350(v27, v26, 1, v25);
    }

    sub_100087544();
    sub_100018144(v12, &qword_100CA65D8, &unk_100A3D9D0);
  }

  sub_1000863F8(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v9);
  v23 = v40;
  sub_1000863F8(&v9[*(v40 + 20)], v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = v41;
  if (EnumCaseMultiPayload == 1)
  {
    sub_100087544();
    sub_100087544();
LABEL_7:
    v26 = 1;
    v27 = v42;
    return sub_10001B350(v27, v26, 1, v25);
  }

  v28 = *v7;
  if (*&v9[*(v23 + 36) + 8] == 1)
  {
    v29 = [objc_opt_self() currentDevice];
    [v29 userInterfaceIdiom];

    LOBYTE(v29) = v9[*(v23 + 28)];
    sub_100087544();
    if ((v29 & 1) == 0)
    {

      goto LABEL_7;
    }
  }

  else
  {
    sub_100087544();
  }

  v30 = v37;
  sub_1000863F8(v28 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v37);

  v31 = sub_100024D10(v30, 1, v25);
  v27 = v42;
  if (v31 == 1)
  {
    sub_100087544();
    v26 = 1;
  }

  else
  {
    v32 = v35;
    v33 = *(v36 + 32);
    v33(v35, v30, v25);
    v33(v27, v32, v25);
    v26 = 0;
  }

  return sub_10001B350(v27, v26, 1, v25);
}

uint64_t type metadata accessor for FontWithSmallVariantModifier(uint64_t a1)
{
  result = qword_100CBEC30;
  if (!qword_100CBEC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10018ACBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018AD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v230 = a2;
  v227 = sub_10022C350(&qword_100CB5DE8, &qword_100A51120);
  __chkstk_darwin(v227);
  v231 = &v189 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v229 = &v189 - v5;
  v6 = sub_10022C350(qword_100CA5418, &qword_100A2F670);
  __chkstk_darwin(v6 - 8);
  v220 = &v189 - v7;
  v218 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v216 = *(v218 - 8);
  __chkstk_darwin(v218);
  v189 = &v189 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v211 = &v189 - v10;
  __chkstk_darwin(v11);
  v210 = &v189 - v12;
  __chkstk_darwin(v13);
  v209 = &v189 - v14;
  __chkstk_darwin(v15);
  v208 = &v189 - v16;
  v219 = type metadata accessor for WeatherDayVarianceView();
  v217 = *(v219 - 8);
  __chkstk_darwin(v219);
  v214 = &v189 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_10022C350(&qword_100CBB8A8, &qword_100A51128);
  __chkstk_darwin(v213);
  v247 = &v189 - v18;
  v225 = sub_10022C350(&qword_100CB5DE0, &unk_100A49610);
  __chkstk_darwin(v225);
  v228 = &v189 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v224 = &v189 - v21;
  __chkstk_darwin(v22);
  v252 = &v189 - v23;
  v24 = type metadata accessor for ColorSchemeContrast();
  v199 = *(v24 - 8);
  v200 = v24;
  __chkstk_darwin(v24);
  v198 = &v189 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v197 = &v189 - v27;
  v248 = sub_10022C350(&qword_100CBB8B0, &qword_100A7A7C0);
  __chkstk_darwin(v248);
  v226 = &v189 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v206 = &v189 - v30;
  v196 = sub_10022C350(&qword_100CBB8B8, &qword_100A51130);
  __chkstk_darwin(v196);
  v203 = &v189 - v31;
  v201 = sub_10022C350(&qword_100CBB8C0, &qword_100A51138);
  __chkstk_darwin(v201);
  v205 = &v189 - v32;
  v204 = sub_10022C350(&qword_100CB5DD8, &qword_100A51140);
  __chkstk_darwin(v204);
  v251 = &v189 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v202 = &v189 - v35;
  __chkstk_darwin(v36);
  v249 = &v189 - v37;
  v207 = sub_10022C350(&qword_100CB5DD0, &unk_100A49600);
  __chkstk_darwin(v207);
  v250 = &v189 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v256 = &v189 - v40;
  v41 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v41 - 8);
  v223 = &v189 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  KeyPath = &v189 - v44;
  v45 = type metadata accessor for EnvironmentValues();
  v253 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v189 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Font.TextStyle();
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v51 = &v189 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  v52 = (a1 + v257[5]);
  v53 = v52[1];
  v317[0] = *v52;
  v317[1] = v53;
  v54 = sub_10002D5A4();

  v239 = v54;
  v55 = Text.init<A>(_:)();
  v194 = v56;
  v195 = v55;
  v193 = v57;
  v212 = v58;
  v59 = *(v49 + 104);
  LODWORD(v238) = enum case for Font.TextStyle.title3(_:);
  v59(v51);
  static Font.Weight.medium.getter();
  v192 = static Font.system(_:weight:)();
  v60 = *(v49 + 8);
  v60(v51, v48);
  v237 = enum case for Font.TextStyle.body(_:);
  v241 = v59;
  v242 = v49 + 104;
  v59(v51);
  static Font.Weight.medium.getter();
  v61 = static Font.system(_:weight:)();
  v243 = v51;
  v244 = v49 + 8;
  v245 = v48;
  v240 = v60;
  v60(v51, v48);
  v259 = type metadata accessor for DailyComponentForecastRowView(0);
  v62 = *(v259 + 68);
  v63 = a1;
  v64 = v253;
  v258 = v63;
  v65 = v63 + v62;
  v66 = *v65;
  v254 = *(v65 + 8);
  v232 = v45;
  v246 = v47;
  v255 = v66;
  if (v254 == 1)
  {
    v301 = v66 & 1;
    v67 = v66;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v68 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v66, 0);
    (*(v64 + 8))(v47, v45);
    v67 = v301;
  }

  v69 = enum case for Font.Leading.tight(_:);
  v70 = type metadata accessor for Font.Leading();
  v71 = *(v70 - 8);
  v72 = *(v71 + 104);
  v73 = KeyPath;
  v235 = v69;
  v233 = v71 + 104;
  v234 = v72;
  v72(KeyPath, v69, v70);
  v236 = v70;
  sub_10001B350(v73, 0, 1, v70);
  v74 = v223;
  sub_1000302D8(v73, v223, &qword_100CACFF0, &unk_100A48000);
  v75 = v192;

  sub_1001C987C(v75, v61, v67 & 1, v74);
  v76 = v193;
  v77 = v194;
  v78 = v195;
  v79 = Text.font(_:)();
  v222 = v80;
  v223 = v79;
  v82 = v81;
  v221 = v83;

  sub_10010CD64(v78, v77, v76 & 1);

  sub_1000180EC(v73, &qword_100CACFF0, &unk_100A48000);
  KeyPath = swift_getKeyPath();
  v84 = v258;
  static Alignment.topLeading.getter();
  _FrameLayout.init(width:height:alignment:)();
  LODWORD(v212) = v82 & 1;
  v304 = v82 & 1;
  v303 = 0;
  *&v302[7] = v305;
  *&v302[23] = v306;
  *&v302[39] = v307;
  v85 = v256;
  sub_100464044(v256);
  *(v85 + *(v207 + 36)) = 0x3FF0000000000000;
  v86 = (v84 + v257[17]);
  v87 = v86[1];
  v317[0] = *v86;
  v317[1] = v87;

  v88 = Text.init<A>(_:)();
  v194 = v89;
  v195 = v88;
  v193 = v90;
  v207 = v91;
  v192 = swift_getKeyPath();
  v92 = v243;
  v93 = v245;
  v94 = v241;
  (v241)(v243, v238, v245);
  static Font.Weight.medium.getter();
  v191 = static Font.system(_:weight:)();
  v95 = v240;
  v240(v92, v93);
  (v94)(v92, v237, v93);
  static Font.Weight.medium.getter();
  v190 = static Font.system(_:weight:)();
  v95(v92, v93);
  if (v254)
  {
    v96 = v255;
  }

  else
  {
    v97 = v255;

    static os_log_type_t.fault.getter();
    v98 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v99 = v246;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v97, 0);
    (*(v253 + 8))(v99, v232);
    v96 = v317[0];
  }

  v100 = v216;
  v101 = v206;
  v102 = &v206[*(v248 + 36)];
  v103 = type metadata accessor for FontWithSmallVariantModifier(0);
  v104 = *(v103 + 24);
  v105 = v236;
  v234(v102 + v104, v235, v236);
  sub_10001B350(v102 + v104, 0, 1, v105);
  v106 = v190;
  *v102 = v191;
  v102[1] = v106;
  v216 = v103;
  *(v102 + *(v103 + 28)) = v96 & 1;
  v107 = v194;
  *v101 = v195;
  *(v101 + 8) = v107;
  *(v101 + 16) = v193 & 1;
  v108 = v192;
  *(v101 + 24) = v207;
  *(v101 + 32) = v108;
  *(v101 + 40) = 1;
  *(v101 + 48) = 0;
  v109 = sub_1001CC7B8();
  v110 = v203;
  v207 = v109;
  View.monospacedDigit()();
  sub_1000180EC(v101, &qword_100CBB8B0, &qword_100A7A7C0);
  v206 = sub_10022C350(&qword_100CBB8D8, &unk_100A51178);
  *(v110 + *(v206 + 9)) = 257;
  v111 = *(v196 + 36);
  v112 = enum case for BlendMode.plusLighter(_:);
  v113 = type metadata accessor for BlendMode();
  (*(*(v113 - 8) + 104))(v110 + v111, v112, v113);
  v114 = v197;
  v115 = v258;
  sub_100463B38(v197);
  v117 = v198;
  v116 = v199;
  v118 = v200;
  (*(v199 + 104))(v198, enum case for ColorSchemeContrast.increased(_:), v200);
  LOBYTE(v112) = static ColorSchemeContrast.== infix(_:_:)();
  v119 = *(v116 + 8);
  v119(v117, v118);
  v119(v114, v118);
  v120 = 1.0;
  v121 = v246;
  v122 = v218;
  if ((v112 & 1) == 0)
  {
    v123 = v115 + *(v259 + 76);
    v124 = *v123;
    if (*(v123 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v125 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v124, 0);
      (*(v253 + 8))(v121, v232);
      LOBYTE(v124) = v317[0];
    }

    if (v124)
    {
      v120 = 1.0;
    }

    else
    {
      v120 = 0.27;
    }
  }

  v126 = v205;
  sub_10011C0F0(v110, v205, &qword_100CBB8B8, &qword_100A51130);
  *(v126 + *(v201 + 36)) = v120;
  v127 = v259;
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  v128 = v202;
  sub_10011C0F0(v126, v202, &qword_100CBB8C0, &qword_100A51138);
  v129 = (v128 + *(v204 + 36));
  v130 = v309;
  *v129 = v308;
  v129[1] = v130;
  v129[2] = v310;
  sub_10011C0F0(v128, v249, &qword_100CB5DD8, &qword_100A51140);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v202 = v311;
  v203 = v313;
  v204 = v316;
  v205 = v315;
  v300 = 1;
  v298 = v312;
  v296 = v314;
  v131 = v208;
  Measurement<>.converted(rounded:)();
  Measurement.value.getter();
  v132 = *(v100 + 8);
  v132(v131, v122);
  v133 = v209;
  Measurement<>.converted(rounded:)();
  Measurement.value.getter();
  v132(v133, v122);
  v134 = v210;
  Measurement<>.converted(rounded:)();
  Measurement.value.getter();
  v132(v134, v122);
  v135 = v211;
  Measurement<>.converted(rounded:)();
  Measurement.value.getter();
  v132(v135, v122);
  v136 = v220;
  sub_1000302D8(v115 + *(v127 + 28), v220, qword_100CA5418, &qword_100A2F670);
  if (sub_100024D10(v136, 1, v122) == 1)
  {
    sub_1000180EC(v136, qword_100CA5418, &qword_100A2F670);
  }

  else
  {
    v137 = v189;
    Measurement<>.converted(rounded:)();
    v132(v136, v122);
    Measurement.value.getter();
    v132(v137, v122);
  }

  sub_10018CA78(v138);
  v139 = v214;
  WeatherDayVarianceView.init(weekMaxTemp:weekMinTemp:dayHighTemp:dayLowTemp:currentTemp:isDaylight:temperatureGradient:)();
  v140 = v247;
  (*(v217 + 32))(v247, v139, v219);
  *(v140 + *(v213 + 36)) = 1;
  if (v254)
  {
    if (v255)
    {
      v141 = 50.0;
    }

    else
    {
      v141 = 70.0;
    }

    if (v255)
    {
      v142 = 70.0;
    }

    else
    {
      v142 = 100.0;
    }

    v143 = v142;
  }

  else
  {
    v144 = v255;

    static os_log_type_t.fault.getter();
    v145 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v144, 0);
    v146 = *(v253 + 8);
    v147 = v232;
    v146(v121, v232);
    if (LOBYTE(v317[0]))
    {
      v141 = 50.0;
    }

    else
    {
      v141 = 70.0;
    }

    static os_log_type_t.fault.getter();
    v148 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v144, 0);
    v146(v121, v147);
    if (LOBYTE(v317[0]))
    {
      v143 = 70.0;
    }

    else
    {
      v143 = 100.0;
    }

    static os_log_type_t.fault.getter();
    v149 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v115 = v258;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v144, 0);
    v146(v121, v147);
    if (LOBYTE(v317[0]))
    {
      v142 = 70.0;
    }

    else
    {
      v142 = 100.0;
    }
  }

  sub_10022C350(&qword_100CBB750, &unk_100A51050);
  ScaledValue.wrappedValue.getter();
  v150 = *v317;
  ScaledValue.wrappedValue.getter();
  v151 = *v317;
  ScaledValue.wrappedValue.getter();
  v152 = *v317;
  static Alignment.center.getter();
  if (v141 > v143 || v143 > v142 || v150 > v151 || v151 > v152)
  {
    static os_log_type_t.fault.getter();
    v156 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v115 = v258;
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v157 = v224;
  sub_10011C0F0(v247, v224, &qword_100CBB8A8, &qword_100A51128);
  memcpy((v157 + *(v225 + 36)), v317, 0x70uLL);
  sub_10011C0F0(v157, v252, &qword_100CB5DE0, &unk_100A49610);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v220 = v317[14];
  v247 = v321;
  v224 = v319;
  v225 = v322;
  v294 = 1;
  v292 = v318;
  v290 = v320;
  v158 = (v115 + v257[18]);
  v159 = v158[1];
  v287[0] = *v158;
  v287[1] = v159;

  v239 = Text.init<A>(_:)();
  v219 = v160;
  LODWORD(v218) = v161;
  v257 = v162;
  v217 = swift_getKeyPath();
  v163 = v243;
  v164 = v245;
  v165 = v241;
  (v241)(v243, v238, v245);
  static Font.Weight.medium.getter();
  v238 = static Font.system(_:weight:)();
  v166 = v240;
  v240(v163, v164);
  (v165)(v163, v237, v164);
  static Font.Weight.medium.getter();
  v167 = static Font.system(_:weight:)();
  v166(v163, v164);
  if (v254)
  {
    v168 = v255;
    v288 = v255 & 1;
  }

  else
  {
    v169 = v255;

    static os_log_type_t.fault.getter();
    v170 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v171 = v246;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v169, 0);
    (*(v253 + 8))(v171, v232);
    v168 = v288;
  }

  v172 = v226;
  v173 = &v226[*(v248 + 36)];
  v174 = v216;
  v175 = *(v216 + 24);
  v176 = v236;
  v234(v173 + v175, v235, v236);
  sub_10001B350(v173 + v175, 0, 1, v176);
  *v173 = v238;
  v173[1] = v167;
  *(v173 + *(v174 + 28)) = v168 & 1;
  v177 = v219;
  *v172 = v239;
  *(v172 + 8) = v177;
  *(v172 + 16) = v218 & 1;
  v178 = v217;
  *(v172 + 24) = v257;
  *(v172 + 32) = v178;
  *(v172 + 40) = 1;
  *(v172 + 48) = 0;
  v179 = v229;
  View.monospacedDigit()();
  sub_1000180EC(v172, &qword_100CBB8B0, &qword_100A7A7C0);
  *(v179 + *(v206 + 9)) = 257;
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  v180 = (v179 + *(v227 + 36));
  v181 = v324;
  *v180 = v323;
  v180[1] = v181;
  v180[2] = v325;
  v286[0] = v223;
  v286[1] = v222;
  LOBYTE(v286[2]) = v212;
  v286[3] = v221;
  v286[4] = KeyPath;
  v286[5] = 1;
  LOBYTE(v286[6]) = 0;
  *(&v286[6] + 1) = *v302;
  *(&v286[8] + 1) = *&v302[16];
  *(&v286[10] + 1) = *&v302[32];
  v286[12] = *&v302[47];
  LOWORD(v286[13]) = 257;
  v284 = 0;
  v285 = 1;
  v286[14] = v286;
  v286[15] = &v284;
  v182 = v250;
  sub_1000302D8(v256, v250, &qword_100CB5DD0, &unk_100A49600);
  v282 = 0;
  v283 = 1;
  v286[16] = v182;
  v286[17] = &v282;
  v183 = v249;
  v184 = v251;
  sub_1000302D8(v249, v251, &qword_100CB5DD8, &qword_100A51140);
  v271 = 0;
  v272 = v300;
  *v273 = *v299;
  *&v273[3] = *&v299[3];
  v274 = v202;
  v275 = v298;
  *v276 = *v297;
  *&v276[3] = *&v297[3];
  v277 = v203;
  v278 = v296;
  *v279 = *v295;
  *&v279[3] = *&v295[3];
  v280 = v205;
  v281 = v204;
  v286[18] = v184;
  v286[19] = &v271;
  v185 = v252;
  v186 = v228;
  sub_1000302D8(v252, v228, &qword_100CB5DE0, &unk_100A49610);
  v260 = 0;
  v261 = v294;
  *v262 = *v293;
  *&v262[3] = *&v293[3];
  v263 = v220;
  v264 = v292;
  *v265 = *v291;
  *&v265[3] = *&v291[3];
  v266 = v224;
  v267 = v290;
  *v268 = *v289;
  *&v268[3] = *&v289[3];
  v269 = v247;
  v270 = v225;
  v286[20] = v186;
  v286[21] = &v260;
  v187 = v231;
  sub_1000302D8(v179, v231, &qword_100CB5DE8, &qword_100A51120);
  v286[22] = v187;
  sub_10018D464();
  sub_1000180EC(v179, &qword_100CB5DE8, &qword_100A51120);
  sub_1000180EC(v185, &qword_100CB5DE0, &unk_100A49610);
  sub_1000180EC(v183, &qword_100CB5DD8, &qword_100A51140);
  sub_1000180EC(v256, &qword_100CB5DD0, &unk_100A49600);
  sub_1000180EC(v187, &qword_100CB5DE8, &qword_100A51120);
  sub_1000180EC(v186, &qword_100CB5DE0, &unk_100A49610);
  sub_1000180EC(v251, &qword_100CB5DD8, &qword_100A51140);
  sub_1000180EC(v250, &qword_100CB5DD0, &unk_100A49600);
  memcpy(v287, v286, 0x6AuLL);
  return sub_1000180EC(v287, &qword_100CB5DF0, &unk_100A49620);
}

uint64_t sub_10018C9B4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(a1);
  }

  static Animation.easeIn(duration:)();
  v3 = Transaction.animation.setter();
  __chkstk_darwin(v3);
  withTransaction<A>(_:_:)();
}

uint64_t sub_10018CA78(uint64_t a1)
{
  v19 = type metadata accessor for Color.RGBColorSpace();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10018CEF4(0, v8, 0);
    v9 = enum case for Color.RGBColorSpace.sRGB(_:);
    v10 = *(v3 + 104);
    v11 = a1 + 64;
    do
    {
      v10(v7, v9, v19);
      Color.init(_:red:green:blue:opacity:)();
      v12 = Gradient.Stop.init(color:location:)();
      v14 = v13;
      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_10018CEF4((v15 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
      v11 += 40;
      --v8;
    }

    while (v8);
  }

  return Gradient.init(stops:)();
}

char *sub_10018CC44(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CAC3F8, &qword_100A3B368);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10018CD7C()
{
  v1 = type metadata accessor for Location();
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for WeatherData(0);
  sub_100003AE8(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = type metadata accessor for PreprocessedWeatherData(0);
  sub_100003AE8(v11);
  v13 = (v8 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = type metadata accessor for NewsDataModel(0);
  sub_100003810(v14);
  v15 = sub_1000C8B74();
  v17 = *(v0 + 24);
  v18 = *(v0 + 32);

  return sub_10018CF5C(v15, v17, v18, v0 + v3, (v0 + v8), v0 + v13, v0 + v16);
}

char *sub_10018CEF4(char *a1, int64_t a2, char a3)
{
  result = sub_10018CC44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10018CF14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000399C(a1, a2, a3, a4);
  sub_100003A9C();
  v5 = sub_100003940();
  v6(v5);
  return v4;
}

uint64_t sub_10018CF5C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v32 = a6;
  v33 = a7;
  v10 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v10);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = a2;
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v15);
  sub_100087544();
  v16 = *(a3 + 48);
  v30 = *(a3 + 56);
  v31 = v16;
  v17 = sub_10022C350(&qword_100CAC0C8, &unk_100A3AFC0);
  v18 = v12 + v17[12];
  v19 = v17[16];
  v20 = v17[20];
  *v12 = Location.id.getter();
  v12[1] = v21;
  v23 = *a5;
  v22 = *(a5 + 1);
  v24 = type metadata accessor for WeatherData(0);
  v25 = v24[6];
  v26 = type metadata accessor for WeatherDataModel();
  (*(*(v26 - 8) + 16))(&v18[v25], &a5[v25], v26);
  sub_1000863F8(&a5[v24[8]], &v18[v24[8]]);
  sub_1000863F8(&a5[v24[7]], &v18[v24[7]]);
  sub_1000302D8(&a5[v24[9]], &v18[v24[9]], &qword_100CA75C8, &unk_100A325F0);
  v27 = v24[5];

  static Locale.current.getter();
  v28 = type metadata accessor for Locale();
  sub_10001B350(&v18[v27], 0, 1, v28);
  *v18 = v23;
  *(v18 + 1) = v22;
  sub_1000863F8(v32, v12 + v19);
  sub_1000863F8(v33, v12 + v20);
  type metadata accessor for WeatherDataAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_10004F034(v12, v34, v31, v30);
  sub_100018144(v34, &unk_100CD81B0, &unk_100A3B000);
  return sub_100087544();
}

uint64_t sub_10018D264@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_10022C350(&qword_100CA3508, &unk_100A2D530);
    v13 = *(type metadata accessor for MainAction(0) - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100A2C3F0;
    sub_10004F14C(a2, v15 + v14);
    v16 = v6;

    result = sub_10018E468(v15);
LABEL_6:
    v11 = v16;
    goto LABEL_7;
  }

  v8 = *(Strong + OBJC_IVAR____TtC7Weather29WeatherDataDebounceMiddleware_resetAccumulator);
  sub_10022C350(&qword_100CA3508, &unk_100A2D530);
  v9 = *(type metadata accessor for MainAction(0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100A2C3F0;
  sub_10004F14C(a2, v11 + v10);
  if ((v8 & 1) == 0)
  {
    v16 = v6;

    sub_10018E468(v11);

    goto LABEL_6;
  }

LABEL_7:
  *a4 = v11;
  return result;
}

uint64_t sub_10018D464()
{
  sub_100014594();
  memcpy(__dst, v2, 0x6AuLL);
  v3 = sub_10001920C();
  memmove(v3, v4, 0x6AuLL);
  v5 = *(v1 + 8);
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  *(v0 + 112) = v6;
  *(v0 + 120) = v5;
  v7 = sub_10022C350(&qword_100CB5DC8, &qword_100A495F8);
  sub_10018CF14(*(v1 + 16), v0 + v7[16], &qword_100CB5DD0, &unk_100A49600);
  sub_100008514(v0 + v7[20]);
  sub_10018CF14(v8, v0 + v7[24], &qword_100CB5DD8, &qword_100A51140);
  sub_100005B94(v0 + v7[28]);
  sub_10018CF14(v9, v0 + v7[32], &qword_100CB5DE0, &unk_100A49610);
  sub_100005B94(v0 + v7[36]);
  sub_10018CF14(v10, v0 + v7[40], &qword_100CB5DE8, &qword_100A51120);
  return sub_10018CF14(__dst, &v12, &qword_100CB5DF0, &unk_100A49620);
}

uint64_t sub_10018D59C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10018D5F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10018D64C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v68 = v4;
  v69 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v67 = v6 - v5;
  v7 = type metadata accessor for DailyForecastRowViewButtonStyle(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = (v10 - v9);
  v12 = type metadata accessor for DailyComponentForecastRowView(0);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_10022C350(&qword_100CBB860, &qword_100A510E0);
  sub_1000037C4();
  v59 = v16;
  v60 = v17;
  sub_100003828();
  __chkstk_darwin(v18);
  v20 = &v55 - v19;
  sub_10022C350(&qword_100CBB868, &qword_100A510E8);
  sub_1000037C4();
  v62 = v21;
  v63 = v22;
  sub_100003828();
  __chkstk_darwin(v23);
  v56 = &v55 - v24;
  sub_10022C350(&qword_100CBB870, &qword_100A510F0);
  sub_1000037C4();
  v64 = v25;
  v65 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v57 = &v55 - v28;
  v66 = sub_10022C350(&qword_100CBB878, &unk_100A510F8);
  sub_1000037E8();
  __chkstk_darwin(v29);
  v58 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v61 = &v55 - v32;
  sub_10018E6F0(v1, &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DailyComponentForecastRowView);
  v33 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v34 = swift_allocObject();
  sub_1001CB82C(&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33);
  v71 = v1;
  sub_10022C350(&qword_100CBB880, &qword_100A51108);
  sub_100006F64(&qword_100CBB888, &qword_100CBB880, &qword_100A51108, &protocol conformance descriptor for HStack<A>);
  Button.init(action:label:)();
  v35 = *(v1 + *(v13 + 60));
  sub_10022C350(&qword_100CABD18, &unk_100A3AC40);
  Binding.projectedValue.getter();
  sub_10018E6F0(v1, &v11[*(v7 + 24)], type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
  *v11 = v35;
  v36 = sub_100006F64(&qword_100CBB890, &qword_100CBB860, &qword_100A510E0, &protocol conformance descriptor for Button<A>);
  v37 = sub_10018E874(&qword_100CBB898, type metadata accessor for DailyForecastRowViewButtonStyle, byte_100A3AC78);
  v38 = v56;
  v39 = v59;
  View.buttonStyle<A>(_:)();
  sub_10018EA58(v11);
  (*(v60 + 8))(v20, v39);
  v40 = v67;
  static AccessibilityChildBehavior.ignore.getter();
  v72 = v39;
  v73 = v7;
  v74 = v36;
  v75 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v57;
  v43 = v62;
  View.accessibilityElement(children:)();
  (*(v68 + 8))(v40, v69);
  (*(v63 + 8))(v38, v43);
  v72 = v43;
  v73 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v44 = v58;
  v45 = v64;
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v65 + 8))(v42, v45);
  v46 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  v47 = (v2 + *(v46 + 76));
  v49 = *v47;
  v48 = v47[1];
  v72 = v49;
  v73 = v48;
  sub_10002D5A4();
  v50 = v61;
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_1000180EC(v44, &qword_100CBB878, &unk_100A510F8);
  sub_10022C350(&qword_100CA7300, &qword_100A51110);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_100A2C3F0;
  v52 = (v2 + *(v46 + 24));
  v53 = v52[1];
  *(v51 + 32) = *v52;
  *(v51 + 40) = v53;

  ModifiedContent<>.accessibilityInputLabels<A>(_:)();

  return sub_1000180EC(v50, &qword_100CBB878, &unk_100A510F8);
}

uint64_t sub_10018DD38()
{
  v1 = type metadata accessor for DailyComponentForecastRowView(0);
  v29 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v29 + 16) & ~v29);
  type metadata accessor for Date();
  sub_1000037E8();
  v30 = v4;
  v28 = *(v3 + 8);
  (v28)(v2);
  v5 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  sub_100014668(v5[5]);

  sub_100014668(v5[6]);

  v6 = v5[7];
  v7 = type metadata accessor for TimeZone();
  sub_1000037E8();
  v27 = *(v8 + 8);
  v27(v2 + v6, v7);
  v9 = v5[8];
  v10 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037E8();
  v12 = *(v11 + 8);
  v12(v2 + v9, v10);
  v12(v2 + v5[9], v10);
  sub_100014668(v5[10]);

  sub_100014668(v5[11]);

  sub_100014668(v5[14]);

  v13 = v5[15];
  v14 = type metadata accessor for Precipitation();
  if (!sub_100024D10(v2 + v13, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v2 + v13, v14);
  }

  sub_100014668(v5[17]);

  sub_100014668(v5[18]);

  sub_100014668(v5[19]);

  v12(v2 + v1[5], v10);
  v12(v2 + v1[6], v10);
  v15 = v1[7];
  if (!sub_100024D10(v2 + v15, 1, v10))
  {
    v12(v2 + v15, v10);
  }

  sub_100014668(v1[11]);

  v16 = v2 + v1[14];

  v17 = v16 + *(sub_10022C350(&qword_100CABD18, &unk_100A3AC40) + 32);
  if (!sub_100024D10(v17, 1, v5))
  {
    v28(v17, v30);
    sub_10001979C();
    sub_10001979C();
    v27(v17 + v5[7], v7);
    v12(v17 + v5[8], v10);
    v12(v17 + v5[9], v10);
    sub_10001979C();
    sub_10001979C();
    sub_10001979C();
    v18 = v5[15];
    if (!sub_100024D10(v17 + v18, 1, v14))
    {
      (*(*(v14 - 8) + 8))(v17 + v18, v14);
    }

    sub_10001979C();
    sub_10001979C();
    sub_10001979C();
  }

  v19 = v1[15];
  sub_10022C350(&qword_100CB2AC8, &unk_100A45020);
  sub_1000037E8();
  (*(v20 + 8))(v2 + v19);
  v21 = v1[16];
  sub_10022C350(&qword_100CBB750, &unk_100A51050);
  sub_1000037E8();
  (*(v22 + 8))(v2 + v21);
  sub_100022C00(v1[17]);
  sub_100022C00(v1[18]);
  sub_100022C00(v1[19]);
  v23 = v1[20];
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_1000037E8();
    (*(v24 + 8))(v2 + v23);
  }

  else
  {
  }

  if (!sub_100024D10(v2 + v1[22], 1, v30))
  {
    v25 = sub_100003940();
    (v28)(v25);
  }

  sub_10022C350(&qword_100CBB758, &unk_100A51060);

  return swift_deallocObject();
}

void sub_10018E2C0(char a1, char a2)
{

  Atomic.wrappedValue.getter();

  if (v23 == 1)
  {
    sub_1000A7CB4();
    v5 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100071538();
    if (sub_1000867CC())
    {
      v6 = sub_100018264();
      sub_1000205BC();
      sub_100040C04();
      *v6 = 136446210;
      *(v6 + 4) = sub_1000C87A8(v7, v8);
      sub_10004E754();
      _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
      sub_100006F14(v2);
      sub_10000EBB0();
      sub_100016BD8();
    }
  }

  sub_1000D3ED4();
  Atomic.wrappedValue.setter();

  sub_1000A7CB4();
  v14 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100071538();
  if (sub_1000867CC())
  {
    v15 = swift_slowAlloc();
    sub_1000205BC();
    sub_100040C04();
    *v15 = 67240706;
    *(v15 + 4) = a1 & 1;
    *(v15 + 8) = 1024;
    *(v15 + 10) = a2 & 1;
    *(v15 + 14) = 2082;
    *(v15 + 16) = sub_1000C87A8(v16, v17);
    sub_10004E754();
    _os_log_impl(v18, v19, v20, v21, v22, 0x18u);
    sub_100006F14(v2);
    sub_10000EBB0();
    sub_100016BD8();
  }
}

uint64_t sub_10018E4A8(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for Date();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return sub_1000039D8(*(a1 + a3[5] + 8));
    }

    type metadata accessor for TimeZone();
    sub_100003928();
    if (*(v12 + 84) == a2)
    {
      v8 = v11;
      v13 = a3[7];
    }

    else
    {
      sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
      sub_100003928();
      if (*(v15 + 84) == a2)
      {
        v8 = v14;
        v13 = a3[8];
      }

      else
      {
        v8 = sub_10022C350(&qword_100CB5F98, "rQ\v");
        v13 = a3[15];
      }
    }

    v9 = a1 + v13;
  }

  return sub_100024D10(v9, a2, v8);
}

uint64_t sub_10018E604(uint64_t a1)
{
  type metadata accessor for UnfairLock();

  sub_10022C350(&qword_100CB6C28, &unk_100A4A630);
  Lock.sync<A>(_:)();

  v2 = *(v6 + 16);
  if (v2)
  {
    v3 = v6 + 40;
    do
    {
      v4 = *(v3 - 8);

      v4(a1);

      v3 += 16;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_10018E6F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_10018E74C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC7Weather29WeatherDataDebounceMiddleware_resetAccumulator) = a3;
  }

  return result;
}

uint64_t sub_10018E7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  sub_10018EAB4(a2, *(a1 + 464));
  v7 = v6;
  swift_endAccess();
  if (!v7)
  {
    v7 = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  sub_10018F028();
  swift_endAccess();

  *a3 = v7;
  return result;
}

uint64_t sub_10018E874(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10018E8BC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_10018E904(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v4);
  v6 = (v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  if (*(*a1 + 16))
  {
    v8 = *(a2 + 136);
    if (v8)
    {
      v9 = *(a2 + 144);
      *v6 = v7;
      type metadata accessor for LocationsAction(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v11 = 0;
      memset(v10, 0, sizeof(v10));
      sub_10007A47C(v8);

      sub_10004F034(v6, v10, v8, v9);
      sub_10002B028(v8);
      sub_1000180EC(v10, &unk_100CD81B0, &unk_100A3B000);
      sub_10004FE68(v6, type metadata accessor for MainAction);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10018EA58(uint64_t a1)
{
  v2 = type metadata accessor for DailyForecastRowViewButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10018EAB4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_10007ADA4();
    if (v3)
    {
      sub_100015064(v2);
    }
  }
}

void sub_10018EB00()
{
  sub_100019170();
  type metadata accessor for Location.Identifier();
  v0 = sub_10005B6CC(&qword_100CA3A40, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
  v1 = sub_100031BB0(v0);
  sub_100011350(v1, v1, &type metadata accessor for Location.Identifier, &qword_100CA3A48);
}

uint64_t sub_10018EBD0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_10018EC2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10018EC84()
{
  v1 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CABDF8, &unk_100A3AD20);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v8 = sub_10022C350(&unk_100CABD90, &qword_100A3AC70);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  v17 = type metadata accessor for DailyForecastRowViewButtonStyle(0);
  sub_10022C350(&qword_100CABD18, &unk_100A3AC40);
  Binding.wrappedValue.getter();
  sub_10019147C(v0 + *(v17 + 24), v13, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
  sub_10001B350(v13, 0, 1, v1);
  v18 = *(v5 + 56);
  sub_1001914DC(v16, v7);
  sub_1001914DC(v13, &v7[v18]);
  if (sub_100024D10(v7, 1, v1) != 1)
  {
    sub_1001914DC(v7, v10);
    if (sub_100024D10(&v7[v18], 1, v1) != 1)
    {
      sub_10019141C(&v7[v18], v3, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
      v19 = sub_1001D1BB8(v10, v3);
      sub_1001B56D4(v3, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
      sub_100018144(v13, &unk_100CABD90, &qword_100A3AC70);
      sub_100018144(v16, &unk_100CABD90, &qword_100A3AC70);
      sub_1001B56D4(v10, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
      sub_100018144(v7, &unk_100CABD90, &qword_100A3AC70);
      return v19 & 1;
    }

    sub_100018144(v13, &unk_100CABD90, &qword_100A3AC70);
    sub_100018144(v16, &unk_100CABD90, &qword_100A3AC70);
    sub_1001B56D4(v10, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
    goto LABEL_6;
  }

  sub_100018144(v13, &unk_100CABD90, &qword_100A3AC70);
  sub_100018144(v16, &unk_100CABD90, &qword_100A3AC70);
  if (sub_100024D10(&v7[v18], 1, v1) != 1)
  {
LABEL_6:
    sub_100018144(v7, &qword_100CABDF8, &unk_100A3AD20);
    v19 = 0;
    return v19 & 1;
  }

  sub_100018144(v7, &unk_100CABD90, &qword_100A3AC70);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_10018F028()
{
  v2 = v0;
  sub_10007ADA4();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100025198();
  sub_100008574();
  v4 = sub_10022C350(&qword_100CB6C20, &qword_100A957F0);
  sub_1000145E4(v4, v5, v6, v7, v8, v9, v10, v11, v18, v19);
  v12 = *(v20 + 48);
  v13 = type metadata accessor for Location();
  sub_1000037E8();
  (*(v14 + 8))(v12 + *(v14 + 72) * v1, v13);
  v15 = *(*(v20 + 56) + 8 * v1);
  sub_10022C350(&qword_100CB6C28, &unk_100A4A630);
  v16 = sub_10005E424(&qword_100CA39F8, &type metadata accessor for Location, &protocol conformance descriptor for Location);
  sub_10001842C(v16);
  *v2 = v20;
  return v15;
}

uint64_t sub_10018F15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a1;
  v44 = a2;
  v43 = type metadata accessor for PrimitiveButtonStyleConfiguration();
  sub_1000037C4();
  v5 = v4;
  v42 = *(v6 + 64);
  __chkstk_darwin(v7);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DailyForecastRowViewButtonStyle(0);
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  v15 = sub_10022C350(&qword_100CABDC8, &qword_100A3ACB0);
  v39 = v15;
  sub_100003B20();
  __chkstk_darwin(v16);
  v18 = &v37 - v17;
  v40 = &v37 - v17;
  PrimitiveButtonStyleConfiguration.label.getter();
  v19 = *v2;
  v20 = sub_10018EC84();
  v21 = &v18[*(v15 + 36)];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = type metadata accessor for DailyComponentForecastRowBackgroundView(0);
  v23 = v22[5];
  *&v21[v23] = swift_getKeyPath();
  sub_10022C350(&qword_100CABDD0, &qword_100A3AD08);
  swift_storeEnumTagMultiPayload();
  v21[v22[6]] = v19;
  v21[v22[7]] = v20 & 1;
  v24 = static Alignment.center.getter();
  v26 = v25;
  v27 = &v21[*(sub_10022C350(&qword_100CABDD8, &unk_100A3AD10) + 36)];
  *v27 = v24;
  v27[1] = v26;
  sub_10019147C(v3, v14, type metadata accessor for DailyForecastRowViewButtonStyle);
  v28 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v29 = swift_allocObject();
  sub_10019141C(v14, v29 + v28, type metadata accessor for DailyForecastRowViewButtonStyle);
  sub_10019147C(v3, v11, type metadata accessor for DailyForecastRowViewButtonStyle);
  v30 = v5;
  v31 = v41;
  v32 = v43;
  (*(v5 + 16))(v41, v37, v43);
  v33 = (v28 + v10 + *(v5 + 80)) & ~*(v5 + 80);
  v34 = swift_allocObject();
  sub_10019141C(v11, v34 + v28, type metadata accessor for DailyForecastRowViewButtonStyle);
  (*(v30 + 32))(v34 + v33, v31, v32);
  sub_100191558();
  v35 = v40;
  View._onButtonGesture(pressing:perform:)();

  return sub_100018144(v35, &qword_100CABDC8, &qword_100A3ACB0);
}

uint64_t sub_10018F538()
{
  v1 = v0;
  v2 = type metadata accessor for DailyForecastRowViewButtonStyle(0);
  sub_100003DDC();
  v39 = *(v3 + 80);
  v37 = *(v4 + 64);
  v5 = type metadata accessor for PrimitiveButtonStyleConfiguration();
  sub_1000037C4();
  v7 = v6;
  v8 = *(v6 + 80);
  v38 = (v39 + 16) & ~v39;
  v9 = v0 + v38;
  v10 = v0 + v38 + *(v2 + 20);

  v11 = v10 + *(sub_10022C350(&qword_100CABD18, &unk_100A3AC40) + 32);
  v12 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  if (!sub_100024D10(v11, 1, v12))
  {
    v35 = v5;
    v36 = v0;
    type metadata accessor for Date();
    sub_100003D98();
    (*(v13 + 8))(v11);
    sub_100003DC4();
    sub_100003DC4();
    v14 = v12[7];
    type metadata accessor for TimeZone();
    sub_100003D98();
    (*(v15 + 8))(v11 + v14);
    v16 = v12[8];
    v17 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
    sub_1000037E8();
    v19 = *(v18 + 8);
    v19(v11 + v16, v17);
    v19(v11 + v12[9], v17);
    sub_100003DC4();
    sub_100003DC4();
    sub_100003DC4();
    v20 = v12[15];
    v21 = type metadata accessor for Precipitation();
    if (!sub_100024D10(v11 + v20, 1, v21))
    {
      sub_100003B20();
      (*(v22 + 8))(v11 + v20, v21);
    }

    sub_100003DC4();
    sub_100003DC4();
    sub_100003DC4();

    v5 = v35;
    v1 = v36;
  }

  v23 = v9 + *(v2 + 24);
  type metadata accessor for Date();
  sub_100003D98();
  (*(v24 + 8))(v23);
  sub_100003DAC();
  sub_100003DAC();
  v25 = v12[7];
  type metadata accessor for TimeZone();
  sub_100003D98();
  (*(v26 + 8))(v23 + v25);
  v27 = v12[8];
  v28 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037E8();
  v30 = *(v29 + 8);
  v30(v23 + v27, v28);
  v30(v23 + v12[9], v28);
  sub_100003DAC();
  sub_100003DAC();
  sub_100003DAC();
  v31 = v12[15];
  v32 = type metadata accessor for Precipitation();
  if (!sub_100024D10(v23 + v31, 1, v32))
  {
    sub_100003B20();
    (*(v33 + 8))(v23 + v31, v32);
  }

  sub_100003DAC();
  sub_100003DAC();
  sub_100003DAC();

  (*(v7 + 8))(v1 + ((v38 + v37 + v8) & ~v8), v5);

  return swift_deallocObject();
}

uint64_t sub_10018F988()
{
  v1 = type metadata accessor for TimeState(0);
  sub_100003AE8(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[7];
  v13 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001902BC(v7, v8, v9, v10, v11, v12, v0 + v6, v13);
}

uint64_t sub_10018FA18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = type metadata accessor for EnvironmentValues();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Color.RGBColorSpace();
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CABEA8, &qword_100A3ADA8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v51 = (&v44 - v9);
  v10 = type metadata accessor for LocationComponentCornerRadiusConfiguration(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RoundedCornersShape();
  v48 = *(v13 - 8);
  v49 = v13;
  __chkstk_darwin(v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CABEB0, &qword_100A3ADB0);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v44 - v18;
  v20 = sub_10022C350(&qword_100CABEB8, &qword_100A3ADB8);
  __chkstk_darwin(v20 - 8);
  v22 = &v44 - v21;
  *v22 = static HorizontalAlignment.center.getter();
  *(v22 + 1) = 0;
  v22[16] = 1;
  type metadata accessor for DailyComponentForecastRowBackgroundView(0);
  sub_1001D3424();
  sub_1001B56D4(v12, type metadata accessor for LocationComponentCornerRadiusConfiguration);
  RoundedCornersShape.init(corners:radius:)();
  v23 = *(sub_10022C350(&qword_100CABEC0, &qword_100A3ADC0) + 44);
  (*(v52 + 104))(v50, enum case for Color.RGBColorSpace.sRGB(_:), v53);
  v24 = Color.init(_:white:opacity:)();
  v25 = *(v8 + 44);
  v26 = enum case for BlendMode.plusLighter(_:);
  v27 = type metadata accessor for BlendMode();
  v28 = v51;
  (*(*(v27 - 8) + 104))(v51 + v25, v26, v27);
  *v28 = v24;
  (*(v48 + 32))(v19, v15, v49);
  sub_1002AB08C(v28, &v19[*(v17 + 60)], &qword_100CABEA8, &qword_100A3ADA8);
  *&v19[*(v17 + 64)] = 256;
  sub_1002AB08C(v19, &v22[v23], &qword_100CABEB0, &qword_100A3ADB0);
  v29 = static Edge.Set.horizontal.getter();
  v30 = *v2;
  if (*(v2 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v32 = v45;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v30, 0);
    (*(v46 + 8))(v32, v47);
  }

  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v54;
  sub_1002AB08C(v22, v54, &qword_100CABEB8, &qword_100A3ADB8);
  result = sub_10022C350(&qword_100CABEC8, &qword_100A3ADC8);
  v43 = v41 + *(result + 36);
  *v43 = v29;
  *(v43 + 8) = v34;
  *(v43 + 16) = v36;
  *(v43 + 24) = v38;
  *(v43 + 32) = v40;
  *(v43 + 40) = 0;
  return result;
}

uint64_t sub_10018FFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17[1] = a1;
  v17[2] = a3;
  v6 = sub_10022C350(&qword_100CA4680, &unk_100A59690);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - v8;
  v10 = type metadata accessor for NamedCoordinateSpace();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + *(type metadata accessor for HighLowModifier(0) + 24)) == 1)
  {
    static CoordinateSpaceProtocol<>.scrollView.getter();
    GeometryProxy.bounds(of:)();
    (*(v11 + 8))(v13, v10);
  }

  v14 = type metadata accessor for EmptyVisualEffect();
  v15 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  VisualEffect.offset(x:y:)();
  v17[3] = v14;
  v17[4] = v15;
  swift_getOpaqueTypeConformance2();
  VisualEffect.opacity(_:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1001902BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + 112);

    os_unfair_lock_lock((v9 + 20));
    sub_1009AA5D0((v9 + 16), v15);
    os_unfair_lock_unlock((v9 + 20));
    v10 = v15[0];

    if (v10 != 2 && (v10 & 1) != 0)
    {
      if (qword_100CA2730 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000703C(v11, qword_100D90BE8);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Fetching weather data for non-priority locations", v14, 2u);
      }

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        sub_1001906B0();
      }

      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {

        sub_1001919F8();
      }
    }
  }

  return result;
}

uint64_t sub_10019050C(double *a1, uint64_t a2)
{
  v3 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[3];
  type metadata accessor for LocationComponentContainerView(0);
  type metadata accessor for LocationComponentActionState();
  sub_100061A3C(&qword_100CC07E8, type metadata accessor for LocationComponentActionState, byte_100A58B10);
  v9 = *(StateObject.wrappedValue.getter() + 16);

  if (v9 == 1 && v6 > 0.0 && v7 > -v8)
  {
    *(StateObject.wrappedValue.getter() + 16) = 0;

    v12 = type metadata accessor for Date();
    sub_10001B350(v5, 1, 1, v12);
    sub_1004E1C1C();
    return sub_100018198(v5, &unk_100CB2CF0);
  }

  return result;
}

void sub_1001906B0()
{
  sub_10000C778();
  LODWORD(v77) = v1;
  v78 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v80 = v11;
  v84 = v12;
  v13 = type metadata accessor for TimeState(0);
  v14 = sub_100003AE8(v13);
  v71 = v15;
  __chkstk_darwin(v14);
  v70 = v16;
  sub_10001376C();
  v82 = v17;
  sub_1000038CC();
  v86 = type metadata accessor for Location();
  sub_1000037C4();
  v73 = v18;
  __chkstk_darwin(v19);
  sub_10000FBD0();
  v81 = v20;
  v76 = v21;
  __chkstk_darwin(v22);
  v24 = &v56 - v23;
  v83 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v74 = v25;
  __chkstk_darwin(v26);
  sub_10000FBD0();
  v68 = v27;
  v69 = v28;
  sub_1000E1390();
  __chkstk_darwin(v29);
  v31 = &v56 - v30;
  v32 = v0;
  sub_1000161C0((v0 + 120), *(v0 + 144));
  v72 = v31;
  v33 = v86;
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  v34 = *(v84 + 2);
  if (v34)
  {
    v35 = v24;
    v66 = *(v73 + 16);
    v36 = *(v73 + 80);
    v37 = &v84[(v36 + 32) & ~v36];
    v64 = *(v73 + 72);
    v63 = v74 + 16;
    v65 = v36;
    v62 = (v36 + 24) & ~v36;
    v61 = (v76 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = v61 + 32;
    v59 = (v73 + 32);
    v58 = v74 + 32;
    v78 &= 1u;
    v57 = v77 & 1;
    v73 += 16;
    v56 = (v73 - 8);
    v67 = v4;
    v85 = v24;
    v79 = v10;
    do
    {
      v84 = v37;
      v77 = v34;
      v38 = v66;
      v66(v35, v37, v33);
      v39 = v81;
      v38(v81, v35, v33);
      type metadata accessor for WeatherDataUpdateRequestLog(0);
      sub_1008B1694();
      swift_allocObject();

      v75 = sub_10005B8AC(0, v39, v78, v80, v10, v8, v6);
      __chkstk_darwin(v75);
      *(&v56 - 4) = v40;
      *(&v56 - 3) = v32;
      *(&v56 - 2) = v85;
      sub_10022C350(&qword_100CA6078, &unk_100A30870);
      v76 = firstly<A>(closure:)();
      v38(v39, v85, v86);
      sub_100037324();
      sub_1000863F8(v4, v82);
      v41 = v74;
      v42 = v68;
      (*(v74 + 16))(v68, v72, v83);
      v43 = (v60 + *(v71 + 80)) & ~*(v71 + 80);
      v44 = (v70 + *(v41 + 80) + v43) & ~*(v41 + 80);
      v45 = v8;
      v46 = v6;
      v47 = v44 + v69;
      v48 = v32;
      v49 = (v44 + v69 + 9) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      *(v50 + 16) = v48;
      (*v59)(v50 + v62, v81, v86);
      v51 = (v50 + v61);
      v52 = v79;
      *v51 = v80;
      v51[1] = v52;
      v51[2] = v45;
      v51[3] = v46;
      sub_10003011C();
      sub_100086450(v82, v50 + v43);
      (*(v41 + 32))(v50 + v44, v42, v83);
      v53 = (v50 + v47);
      v6 = v46;
      v8 = v45;
      v10 = v79;
      *v53 = v78;
      v53[1] = v57;
      *(v50 + v49) = v75;

      v32 = v48;

      v54 = zalgo.getter();
      Promise.then<A>(on:closure:)();

      v4 = v67;

      v55 = zalgo.getter();
      Promise.error(on:closure:)();

      v35 = v85;

      v33 = v86;
      (*v56)(v35, v86);
      v37 = &v84[v64];
      v34 = v77 - 1;
    }

    while (v77 != 1);
  }

  (*(v74 + 8))(v72, v83);
  sub_10000536C();
}

void sub_100190D78(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for Date();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 8) = (a2 - 1);
      return;
    }

    type metadata accessor for TimeZone();
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[8];
      }

      else
      {
        v10 = sub_10022C350(&qword_100CB5F98, "rQ\v");
        v14 = a4[15];
      }
    }

    v11 = a1 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_100190EDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = type metadata accessor for HighLowModifier(0);
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for LocationHeaderViewMeasurements(0);
  __chkstk_darwin(v34);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = type metadata accessor for EnvironmentValues();
  v8 = *(v33 - 8);
  __chkstk_darwin(v33);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 8);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v32 = v3;
    v12 = static Log.runtimeIssuesLog.getter();
    v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v3 = v32;

    (*(v8 + 8))(v10, v33);
  }

  sub_100160D94();
  v15 = sub_10023DE64(v13, v14);
  sub_10023DE64(v16, v17);
  v19 = v18;
  *&v20 = COERCE_DOUBLE(sub_100155544((v7 + *(v34 + 32))));
  if (v21)
  {
    v22 = (v19 - (v7[1] + v7[3] + v7[5] + v7[7])) * 0.5;
  }

  else
  {
    v22 = *&v20;
  }

  sub_1000A3C14(v2, v5, type metadata accessor for HighLowModifier);
  v23 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v24 = (v4 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_1001540E8(v5, v25 + v23, type metadata accessor for HighLowModifier);
  *(v25 + v24) = v15;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
  sub_10022C350(&qword_100CA4768, &qword_100A2E910);
  sub_10022C350(&qword_100CA4670, &unk_100A2E850);
  sub_10023FBF4(&qword_100CA4770, &qword_100CA4768, &qword_100A2E910, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v26 = sub_10022E824(&qword_100CA4680, &unk_100A59690);
  v27 = type metadata accessor for EmptyVisualEffect();
  v28 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v37 = v27;
  v38 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v26;
  v38 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  return sub_1000DFD78(v7, type metadata accessor for LocationHeaderViewMeasurements);
}

uint64_t sub_1001913A0()
{
  v1 = sub_100017580();
  v2 = type metadata accessor for LocationComponentContainerView(v1);
  sub_100003810(v2);
  sub_100008550();

  return sub_10019050C(v0, v3);
}

uint64_t sub_10019141C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10019147C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001914DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&unk_100CABD90, &qword_100A3AC70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100191558()
{
  result = qword_100CABDE0;
  if (!qword_100CABDE0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CABDC8, &qword_100A3ACB0);
    v4[0] = sub_1001CE524();
    v4[1] = sub_100006F64(&qword_100CABDF0, &qword_100CABDD8, &unk_100A3AD10, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CABDE0);
  }

  return result;
}

uint64_t sub_100191610(double *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v7 = *a1;
  v8 = a1[1];
  sub_10022C350(&qword_100CBA108, &qword_100A4F688);
  State.wrappedValue.getter();
  sub_100191C44(a4, a5, v7, v8);
}

uint64_t sub_100191694(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Location.Identifier();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10022C350(&qword_100CD12D8, &qword_100A766A8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
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
        goto LABEL_29;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1006A76B8(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10005E46C(&qword_100CA3A40, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1001919F8()
{
  sub_10000C778();
  v2 = v1;
  type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v14 = v4;
  v15 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v7 = v6 - v5;
  sub_1000161C0((v0 + 120), *(v0 + 144));
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  v8 = *(v2 + 16);
  if (v8)
  {
    v9 = type metadata accessor for Location();
    sub_100003AE8(v9);
    v11 = v2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v12 + 72);
    do
    {
      sub_10016E538();
      v11 += v13;
      --v8;
    }

    while (v8);
  }

  (*(v14 + 8))(v7, v15);
  sub_10000536C();
}

uint64_t sub_100191B7C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100191CB8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 33);
}

uint64_t sub_100191BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100191B7C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100191C44(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  result = sub_100191B7C(a1, a2);
  if ((result & 1) == 0)
  {
    *(v4 + 16) = a3;
    *(v4 + 24) = a4;

    return sub_100191D10(a1, a2);
  }

  return result;
}

unint64_t sub_100191CB8()
{
  result = qword_100CBA0F0;
  if (!qword_100CBA0F0)
  {
    v3 = type metadata accessor for VisibilityState(255);
    result = swift_getWitnessTable(byte_100A4F590, v3, v0, v1);
    atomic_store(result, &qword_100CBA0F0);
  }

  return result;
}

uint64_t (*sub_100191D10(uint64_t (*result)(uint64_t), uint64_t a2))(uint64_t)
{
  v3 = result;
  if ((*(v2 + 16) > 0.0 || *(v2 + 24) > 0.0) && *(v2 + 32) == 1)
  {
    v4 = sub_100198380(1, a2);
    return v3(v4);
  }

  return result;
}

double sub_100191DB4()
{
  v23 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_1000426CC();
  sub_10022C350(&qword_100CC0970, &qword_100A592A8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v5);
  v6 = sub_10016DB38();
  sub_1000037E8();
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v24 = v0;
  sub_1005026A8();
  sub_1000302D8(v13, v14, v15, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001AD070();
  }

  else
  {
    v17 = static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    sub_100016A84(v17, &_mh_execute_header, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v1, v23);
  }

  v19 = &v12[*(v6 + 28)];
  v20 = *v19;
  v21 = v19[8];
  sub_1000A7C88();
  sub_100192034();
  if (v21 == 1)
  {
    sub_10019200C();
    v20 = *&v9[*(v6 + 20)];
    sub_1000A7C88();
    sub_100192034();
  }

  return v20;
}

uint64_t sub_100192034()
{
  v1 = sub_100017580();
  v2(v1);
  sub_100003D98();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_100192084(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001920DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10019213C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100192194()
{
  sub_100019410();
  v0 = sub_1000081A4();

  return sub_10019227C(v0, v1, v2);
}

uint64_t sub_100192228(uint64_t a1)
{

  return sub_100024D10(a1, 1, v1);
}

double sub_10019225C()
{

  swift_beginAccess();
  return result;
}

uint64_t sub_10019227C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a2;
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Daemon.enablePushLocationViewLoadData.getter();
  SettingReader.read<A>(_:)();

  if (v7 == 1)
  {
    v6 = type metadata accessor for LocationViewObserverView(0);
    return sub_10078DB3C(a3 + *(v6 + 24), v4);
  }

  return result;
}

BOOL sub_100192338()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10019236C()
{

  return sub_1000D37D4();
}

void *sub_1001923CC()
{

  return sub_1003BD6E4(v1 - 96, v0);
}

uint64_t sub_1001923E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = v3;
  v7 = *(v5 - 480);

  return sub_100050170(v4, a1 + v2, v7);
}

uint64_t sub_100192468(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100192484()
{

  return sub_1000302D8(v3, v0, v2, v1);
}

uint64_t sub_1001924FC()
{

  return type metadata accessor for WindComponentCompassViewModel();
}

uint64_t sub_100192518()
{
  result = v0;
  *(v2 - 240) = v1;
  return result;
}

uint64_t sub_10019252C()
{

  return swift_unknownObjectRelease();
}

id sub_1001925A4()
{
  v3 = *(v1 + 3880);

  return [v0 v3];
}

uint64_t sub_1001925BC()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001925D8()
{
  v1 = type metadata accessor for Location();
  sub_100003AE8(v1);
  sub_100049E3C();
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + v5);

  return sub_100192658(v3, v4, v0 + v2, v6);
}

uint64_t sub_100192658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for NewsDataModel(0);
  __chkstk_darwin(v7);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = a2;
  swift_storeEnumTagMultiPayload();

  sub_10019272C(v9, a3, a4);
  return sub_100087544();
}

uint64_t sub_10019272C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v39 = a2;
  v35 = a1;
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NewsDataModel(0);
  v33 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v40 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v7;
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v41 = type metadata accessor for Location();
  v11 = *(v41 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v41);
  v38 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100040690();
  *v19 = static OS_dispatch_queue.main.getter();
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v20 = _dispatchPreconditionTest(_:)();
  result = (*(v17 + 8))(v19, v16);
  if (v20)
  {
    v22 = *(v11 + 16);
    v32 = updated;
    v23 = v41;
    v22(v15, v39, v41);
    sub_1000863F8(v35, v10);
    v22(v38, v15, v23);
    sub_1000863F8(v10, v40);
    v24 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v25 = (v12 + *(v33 + 80) + v24) & ~*(v33 + 80);
    v26 = swift_allocObject();
    v27 = v37;
    *(v26 + 16) = v37;
    v35 = v11;
    (*(v11 + 32))(v26 + v24, v15, v23);
    sub_100086450(v10, v26 + v25);
    v28 = *(v27 + 16);

    v28(&v42, v29);
    LOBYTE(v22) = sub_100189F18(v39, v42);

    *v5 = v22 & 1;
    swift_storeEnumTagMultiPayload();
    sub_10005C1D4(v5);
    sub_100087544();
    if (v22)
    {
      sub_100087544();
      (*(v35 + 8))(v38, v41);
      v42 = 0;
      static Animation.easeIn(duration:)();
      v30 = Transaction.animation.setter();
      __chkstk_darwin(v30);
      *(&v32 - 2) = sub_1001935DC;
      *(&v32 - 1) = v26;
      withTransaction<A>(_:_:)();
    }

    else
    {
      v31 = v38;
      sub_100193928(v27, v38, v40);

      sub_100087544();
      return (*(v35 + 8))(v31, v41);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100192C80()
{
  sub_10000C778();
  type metadata accessor for Location();
  sub_10000548C();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  type metadata accessor for NewsDataModel(0);
  sub_100003DDC();
  v8 = (v4 + v6 + *(v7 + 80)) & ~*(v7 + 80);

  (*(v3 + 8))(v1 + v4, v0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    type metadata accessor for News();
    sub_100003D98();
    (*(v9 + 8))(v1 + v8);
  }

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_100192DF0()
{
  v1 = v0;
  v2 = type metadata accessor for LocationViewModel(0);
  __chkstk_darwin(v2);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(sub_10014F17C() + 16);

  if (v5)
  {
    if (*(v1 + *(type metadata accessor for LocationContentView(0) + 72)))
    {
      type metadata accessor for TipCoordinator(0);

      ObservableResolver.resolve<A>(_:)();

      if (v9[1])
      {
        sub_100140210();
        v7 = *&v4[*(v2 + 28)];

        sub_100147C14(v4, type metadata accessor for LocationViewModel);
        sub_100192F8C(v7);
        sub_1001945A4(v8);
      }

      __break(1u);
    }

    type metadata accessor for ObservableResolver();
    sub_10008152C(&qword_100CB0468, &type metadata accessor for ObservableResolver, &protocol conformance descriptor for ObservableResolver);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_100192F8C(uint64_t a1)
{
  v3 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for MapComponentViewModel(0);
  __chkstk_darwin(v10 - 8);
  sub_1000037D8();
  v13 = v12 - v11;
  v77 = type metadata accessor for LocationComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000088C0();
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037C4();
  v62 = v19;
  v63 = v18;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v22 = v21 - v20;
  v23 = sub_10019369C();
  if (v23 == 6)
  {
    v24 = 0;
    v25 = *(a1 + 16);
    v64 = a1 + 32;
    v65 = v25;
    v72 = (v5 + 88);
    v73 = (v5 + 16);
    v68 = (v5 + 8);
    v71 = enum case for WeatherMapOverlayKind.wind(_:)[0];
    v70 = _swiftEmptyArrayStorage;
    v61 = a1;
    v74 = v9;
    v75 = v3;
    v76 = v13;
    while (1)
    {
      if (v24 == v65)
      {

        return;
      }

      if (v24 >= *(a1 + 16))
      {
        break;
      }

      v69 = v24;
      v26 = (v64 + 24 * v24);
      v27 = *v26;
      v28 = *(*v26 + 16);
      if (v28)
      {
        v29 = v26[2];
        v30 = v62;
        v78 = *(v63 + 20);
        v31 = v27 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
        v67 = v27;

        v66 = v29;

        v32 = *(v30 + 72);
        v33 = _swiftEmptyArrayStorage;
        while (1)
        {
          sub_1001943BC(v31, v22);
          sub_100004EAC();
          sub_1001943BC(v22 + v78, v17);
          sub_1001943BC(v17, v1);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 18)
          {
            break;
          }

          switch(EnumCaseMultiPayload)
          {
            case 1:
              v35 = 0;
              goto LABEL_23;
            case 5:
              sub_100028E04();
              v36 = v76;
              sub_1001944F0(v1, v76);
              v37 = v74;
              v38 = v75;
              (*v73)(v74, v36, v75);
              v39 = (*v72)(v37, v38);
              if (v39 == v71)
              {
                if (qword_100CA2100 != -1)
                {
                  sub_100023558();
                  swift_once();
                }

                v40 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
                sub_10000703C(v40, qword_100D8FEB8);
                swift_beginAccess();
                Tips.Parameter.wrappedValue.getter();
                v41 = v79;
                swift_endAccess();
                sub_100011018();
                sub_10019213C(v76, v42);
                sub_10001FD30();
                sub_10019213C(v17, v43);
                sub_10001D280();
                if (v41)
                {
                  v35 = 2;
                }

                else
                {
                  v35 = 3;
                }
              }

              else
              {
                sub_10019213C(v36, type metadata accessor for MapComponentViewModel);
                sub_10001FD30();
                sub_10019213C(v17, v46);
                sub_10001D280();
                (*v68)(v37, v38);
                v35 = 2;
              }

              goto LABEL_24;
            case 16:
              v35 = 4;
LABEL_23:
              sub_10019213C(v17, type metadata accessor for LocationComponentViewModel);
              sub_10001D280();
              sub_10019213C(v1, type metadata accessor for LocationComponentViewModel);
LABEL_24:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_100194418();
                v33 = v47;
              }

              v45 = v33[2];
              v30 = v45 + 1;
              if (v45 >= v33[3] >> 1)
              {
                sub_100194418();
                v33 = v48;
              }

              v33[2] = v30;
              *(v33 + v45 + 32) = v35;
              goto LABEL_29;
            case 0:
              v35 = 1;
              goto LABEL_23;
          }

          sub_100006B94();
          sub_10019213C(v17, v44);
          sub_10001D280();
          sub_10019213C(v1, v30);
LABEL_29:
          v31 += v32;
          if (!--v28)
          {

            a1 = v61;
            goto LABEL_33;
          }
        }

        v35 = 5;
        goto LABEL_23;
      }

      v33 = _swiftEmptyArrayStorage;
LABEL_33:
      v49 = v33[2];
      v50 = v70;
      v51 = v70[2];
      if (__OFADD__(v51, v49))
      {
        goto LABEL_47;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v51 + v49 > v50[3] >> 1)
      {
        sub_100194418();
        v50 = v52;
      }

      v24 = v69 + 1;
      v53 = v33[2];
      v70 = v50;
      if (v53)
      {
        v54 = v50[2];
        if ((v50[3] >> 1) - v54 < v49)
        {
          goto LABEL_48;
        }

        memcpy(v50 + v54 + 32, v33 + 4, v49);

        if (v49)
        {
          v55 = v70[2];
          v56 = __OFADD__(v55, v49);
          v57 = v55 + v49;
          if (v56)
          {
            goto LABEL_49;
          }

          v70[2] = v57;
        }
      }

      else
      {

        if (v49)
        {
          __break(1u);
          goto LABEL_44;
        }
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  else
  {
LABEL_44:
    v58 = v23;

    sub_10022C350(&qword_100CD14B0, &unk_100A99910);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_100A2C3F0;
    *(v59 + 32) = v58;
  }
}

uint64_t sub_1001935DC()
{
  v1 = type metadata accessor for Location();
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = type metadata accessor for NewsDataModel(0);
  sub_100003810(v4);
  v5 = sub_1000C8B74();

  return sub_100193928(v5, v0 + v3, v0 + v6);
}

uint64_t sub_10019369C()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2440 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  if (v6)
  {
    return 1;
  }

  static SettingReader.shared.getter();
  if (qword_100CA2448 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  if (v5)
  {
    return 0;
  }

  static SettingReader.shared.getter();
  if (qword_100CA2450 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  if (v4)
  {
    return 2;
  }

  static SettingReader.shared.getter();
  if (qword_100CA2458 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  if (v3)
  {
    return 3;
  }

  static SettingReader.shared.getter();
  if (qword_100CA2468 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  if (v2)
  {
    return 5;
  }

  static SettingReader.shared.getter();
  if (qword_100CA2460 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  if (v1)
  {
    return 4;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_100193928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v5);
  v7 = (v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(sub_10022C350(&qword_100CAC0B8, &unk_100A3AFB0) + 48);
  *v7 = Location.id.getter();
  v7[1] = v11;
  sub_1000863F8(a3, v7 + v10);
  type metadata accessor for WeatherDataAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_10004F034(v7, v13, v9, v8);
  sub_100018144(v13, &unk_100CD81B0, &unk_100A3B000);
  return sub_100087544();
}

uint64_t sub_100193A7C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(61, v7, v8);
  qword_100D906D8 = result;
  return result;
}

uint64_t sub_100193BCC()
{

  v1 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_location;
  type metadata accessor for Location();
  sub_1000037E8();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC7Weather27WeatherDataUpdateRequestLog_logger;
  type metadata accessor for Logger();
  sub_1000037E8();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t sub_100193C74()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(64, v7, v8);
  qword_100D906E0 = result;
  return result;
}

uint64_t sub_100193DC4()
{
  sub_100193BCC();

  return swift_deallocClassInstance();
}

uint64_t sub_100193E1C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(54, v7, v8);
  qword_100D906E8 = result;
  return result;
}

uint64_t sub_100193F6C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(58, v7, v8);
  qword_100D906F0 = result;
  return result;
}

uint64_t sub_1001940BC()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(55, v7, v8);
  qword_100D90700 = result;
  return result;
}

uint64_t sub_10019420C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(58, v7, v8);
  qword_100D906F8 = result;
  return result;
}

uint64_t sub_10019435C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001943BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

void sub_100194418()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100074DD8();
  if (v3)
  {
    sub_10022C350(&qword_100CD14B0, &unk_100A99910);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    sub_1000D3DB0(v8);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000B99E0();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

uint64_t sub_1001944F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_10019454C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

void sub_1001945A4(uint64_t a1)
{
  if (qword_100CA27B0 != -1)
  {
    sub_10000F960(&qword_100CA27B0);
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90D68);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_100018264();
    v5 = sub_1000205BC();
    v22 = v5;
    *v4 = 136315138;

    v6 = String.init<A>(describing:)();
    v8 = sub_100078694(v6, v7, &v22);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "tipPriorityQueue update attempted - queue=%s", v4, 0xCu);
    sub_100006F14(v5);
    sub_100003884(v5);
    sub_100003884(v4);
  }

  sub_1001947EC(v9, v10);
  if (!v11 || (v12 = *(v11 + 16), , !v12))
  {

    sub_1001948CC(v13, v14);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = sub_100018264();
      v18 = sub_1000205BC();
      v22 = v18;
      *v17 = 136315138;

      v19 = String.init<A>(describing:)();
      v21 = sub_100078694(v19, v20, &v22);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "tipPriorityQueueUpdated - queue=%s", v17, 0xCu);
      sub_100006F14(v18);
      sub_10000FC14();
      sub_100003884(v17);
    }
  }
}

double sub_1001947EC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10014986C(&qword_100CD6218, type metadata accessor for TipCoordinator, asc_100A7EE60);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

void sub_100194890()
{
  sub_100020AF8();
  sub_1001947EC(v1, v2);
  *v0 = v3;
}

uint64_t sub_1001948CC(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v7 = v2;
  v8 = a1;
  sub_100186210(KeyPath, sub_1001949D8, &v6);
}

void sub_100194940(uint64_t a1, uint64_t a2)
{
  sub_1001947EC(a1, a2);
  if (v2)
  {
    v3 = *(v2 + 16);

    if (v3)
    {
      if (sub_10014A168(v4, v5))
      {

        sub_10074B5C0();
      }
    }
  }
}

void sub_100194994(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = a2;

  sub_100194940(v2, v3);
}

uint64_t sub_1001949F4()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for DispatchPredicate();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = (v14 - v13);
  sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v9);
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v15, v9);
  if (v16)
  {
    if (*(v1 + 104) == 1 && (*(v1 + 32) & 1) == 0)
    {
      v18 = *(v1 + 16);
      if (v18)
      {
        v19 = *(v1 + 24);
        *(v1 + 32) = 1;

        static os_signpost_type_t.event.getter();
        sub_10000C70C(0, &qword_100CA2E40, OS_os_log_ptr);
        v20 = OS_os_log.init(subsystem:category:)();
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();

        (*(v4 + 8))(v8, v2);
        v21 = [objc_opt_self() sharedApplication];
        v22 = swift_allocObject();
        swift_weakInit();
        sub_100018450();
        v23 = swift_allocObject();
        v23[2] = v18;
        v23[3] = v19;
        v23[4] = v22;
        v30 = sub_100423C34;
        v31 = v23;
        aBlock = _NSConcreteStackBlock;
        v27 = 1107296256;
        sub_100003F74();
        v28 = v24;
        v29 = &unk_100C56708;
        v25 = _Block_copy(&aBlock);

        [v21 installCACommitCompletionBlock:{v25, aBlock, v27}];
        _Block_release(v25);

        return sub_10002B028(v18);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100194D44()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100194D7C()
{

  sub_100018450();

  return swift_deallocObject();
}

uint64_t sub_100194DDC(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for NetworkActivityCompletion(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  sub_10005ABDC();
  return sub_10005AE3C(v6);
}

uint64_t sub_100194EDC()
{
  sub_100013494();
  sub_100011388();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_100014158(v1);

  return v4(v3);
}

uint64_t sub_100194F6C(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (*(v2 + 16))
  {
    result = sub_100194DDC(result, a2, 0);
  }

  if (*(v2 + 24))
  {
    return sub_100194DDC(v4, a2, 0);
  }

  return result;
}

uint64_t sub_100194FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100088884();
  sub_10003A0D8();
  v10 = sub_100017580();
  v11 = type metadata accessor for NotificationsAction(v10);
  sub_100003AE8(v11);
  sub_10003A294();
  v12 = swift_task_alloc();
  v13 = sub_100007F54(v12);
  *v13 = v14;
  v13[1] = sub_1000D8400;
  sub_100074CA4();
  sub_100044D14();

  return sub_1001953C8(v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1001950B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X8>)
{
  v10 = type metadata accessor for NWActivity.CompletionReason();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId + 8);
  if (!v14 || a3 && (*(a1 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId) == a2 ? (v15 = v14 == a3) : (v15 = 0), v15 || (_stringCompareWithSmolCheck(_:_:expecting:)())) && (v16 = *(a1 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_rootActivity)) != 0 && ((v17 = OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapActivity, (v18 = *(a1 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapActivity)) == 0) || (a4))
  {
    v31 = a4;
    v32 = v11;
    v22 = OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapTilesActivity;
    v23 = *(a1 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapTilesActivity);
    *(a1 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_rootActivity) = 0;
    *(a1 + v17) = 0;
    *(a1 + v22) = 0;

    sub_10022C350(&qword_100CE1B90, &qword_100A92A18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A3BBA0;
    *(inited + 32) = v16;
    *(inited + 40) = v18;
    *(inited + 48) = v23;
    v33 = _swiftEmptyArrayStorage;

    v30[1] = v23;

    v25 = 0;
    v21 = _swiftEmptyArrayStorage;
    while (v25 != 3)
    {
      if (v25 > 2)
      {
        __break(1u);
        return result;
      }

      if (*(inited + 8 * v25++ + 32))
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v21 = v33;
      }
    }

    swift_setDeallocating();
    sub_100195474();
    v27 = v32;
    v28 = &enum case for NWActivity.CompletionReason.success(_:);
    if ((v31 & 1) == 0)
    {
      v28 = &enum case for NWActivity.CompletionReason.cancelled(_:);
    }

    (*(v32 + 104))(v13, *v28, v10);

    v29 = *(type metadata accessor for NetworkActivityCompletion(0) + 24);
    (*(v27 + 32))(&a5[v29], v13, v10);
    result = sub_10001B350(&a5[v29], 0, 1, v10);
  }

  else
  {
    v19 = type metadata accessor for NetworkActivityCompletion(0);
    result = sub_10001B350(&a5[*(v19 + 24)], 1, 1, v10);
    v21 = _swiftEmptyArrayStorage;
  }

  *a5 = _swiftEmptyArrayStorage;
  *(a5 + 1) = v21;
  return result;
}

uint64_t sub_1001953C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_100195488, v8, v7);
}

uint64_t sub_100195488()
{
  sub_100003B08();
  v1 = *(*(v0 + 32) + 64);
  v2 = swift_task_alloc();
  v3 = sub_100040F7C(v2);
  *v3 = v4;
  v3[1] = sub_10017DFEC;
  v5 = sub_1000116B0(*(v0 + 24));

  return sub_10019598C(v5, v1);
}

void sub_100195538(uint64_t a1)
{

  sub_1006A7AB4();
}

uint64_t sub_100195570(uint64_t a1, uint64_t a2)
{

  return String.write(to:)();
}

id sub_100195598()
{
  v2 = *(v0 - 272);

  return v2;
}

uint64_t sub_1001955BC(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = sub_10022C350(&qword_100CAC800, &unk_100A3BD30);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for NWActivity.CompletionReason();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2718 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000703C(v10, qword_100D90BA0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v27 = v7;
    v28 = v2;
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v26;
    *v13 = 136446722;
    v30 = NWActivity.domain.getter();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = sub_100078694(v14, v15, &v31);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    v30 = NWActivity.label.getter();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = sub_100078694(v17, v18, &v31);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2082;
    if (NWActivity.parentActivity.getter())
    {

      v20 = 0xE300000000000000;
      v21 = 7562617;
    }

    else
    {
      v20 = 0xE200000000000000;
      v21 = 28526;
    }

    v22 = sub_100078694(v21, v20, &v31);

    *(v13 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "Completing parent network activity. domain=%{public}s, label=%{public}s, hasParent=%{public}s", v13, 0x20u);
    swift_arrayDestroy();

    v7 = v27;
  }

  else
  {
  }

  v23 = type metadata accessor for NetworkActivityCompletion(0);
  sub_100195C0C(v29 + *(v23 + 24), v5);
  if (sub_100024D10(v5, 1, v6) == 1)
  {
    (*(v7 + 104))(v9, enum case for NWActivity.CompletionReason.success(_:), v6);
    if (sub_100024D10(v5, 1, v6) != 1)
    {
      sub_100316AF0(v5);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  NWActivity.complete(reason:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10019598C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Location.Identifier();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for Location();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = type metadata accessor for NotificationSubscription.Kind();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v8 = type metadata accessor for NotificationSubscription.Location();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = type metadata accessor for NotificationsAction(0);
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_10017DB68, 0, 0);
}

uint64_t sub_100195C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAC800, &unk_100A3BD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100195CA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = type metadata accessor for WeatherConditionBackgroundModifier(0);
  sub_100003810(v3);
  v4 = sub_1000081A4();

  return a3(v4);
}

uint64_t sub_100195D40(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 40) = a1;
  return _swift_task_switch(sub_100197490, 0, 0);
}

uint64_t sub_100195D64(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v103 = a1;
  v86 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v83 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchQoS();
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WeatherConditionBackgroundModifier(0);
  v76 = *(v7 - 8);
  __chkstk_darwin(v7);
  v77 = v8;
  v78 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for DispatchTime();
  v80 = *(v91 - 8);
  __chkstk_darwin(v91);
  v75 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v79 = &v74 - v11;
  v12 = type metadata accessor for VFXEffectViewID();
  v97 = *(v12 - 8);
  v98 = v12;
  __chkstk_darwin(v12);
  v94 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v93 = &v74 - v15;
  v16 = type metadata accessor for WeatherConditionBackgroundOptions();
  v99 = *(v16 - 8);
  v100 = v16;
  __chkstk_darwin(v16);
  v90 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v89 = &v74 - v19;
  __chkstk_darwin(v20);
  v92 = &v74 - v21;
  v22 = type metadata accessor for BackgroundAnimationData();
  v95 = *(v22 - 8);
  v96 = v22;
  __chkstk_darwin(v22);
  v88 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v87 = &v74 - v25;
  __chkstk_darwin(v26);
  v28 = &v74 - v27;
  v29 = type metadata accessor for BackgroundAnimationKind();
  v101 = *(v29 - 8);
  __chkstk_darwin(v29);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10022C350(&qword_100CA4BB0, &qword_100A2EE60);
  __chkstk_darwin(v32 - 8);
  v34 = &v74 - v33;
  v74 = v7;
  v35 = *(v7 + 100);
  v102 = a3;
  v36 = a3 + v35;
  v38 = *(v36 + 8);
  aBlock = *v36;
  v37 = aBlock;
  v105 = v38;
  sub_10022C350(&qword_100CEB070, &unk_100AA0AF8);
  State.wrappedValue.getter();
  v39 = type metadata accessor for WeatherConditionBackgroundModel();
  (*(*(v39 - 8) + 16))(v34, a2, v39);
  sub_10001B350(v34, 0, 1, v39);
  sub_1009AD464(v34);

  aBlock = v37;
  v105 = v38;
  State.wrappedValue.getter();
  LODWORD(v37) = *(v110 + OBJC_IVAR____TtC7WeatherP33_5624985E7B87C7961D79AEAA50BEAAE139WeatherConditionBackgroundModifierState_isVisible);

  if (v37 == 1)
  {
    WeatherConditionBackgroundModel.animationKind.getter();
    v41 = v101;
    if ((*(v101 + 88))(v31, v29) == enum case for BackgroundAnimationKind.vfx(_:))
    {
      WeatherConditionBackgroundModel.animationData.getter();
      v42 = v92;
      BackgroundAnimationData.options.getter();
      v43 = v96;
      v101 = *(v95 + 8);
      (v101)(v28, v96);
      v44 = v93;
      WeatherConditionBackgroundOptions.effectViewID.getter();
      v99 = *(v99 + 8);
      (v99)(v42, v100);
      v46 = v97;
      v45 = v98;
      v47 = v94;
      (*(v97 + 104))(v94, enum case for VFXEffectViewID.locationViewer(_:), v98);
      v48 = static VFXEffectViewID.== infix(_:_:)();
      v49 = *(v46 + 8);
      v49(v47, v45);
      v49(v44, v45);
      v50 = v102;
      if (v48)
      {
        v51 = v87;
        v98 = a2;
        WeatherConditionBackgroundModel.animationData.getter();
        v52 = v89;
        BackgroundAnimationData.options.getter();
        v53 = v51;
        v54 = v101;
        (v101)(v53, v43);
        v95 = WeatherConditionBackgroundOptions.locationViewerOrientation.getter();
        LODWORD(v97) = v55;
        v56 = v52;
        v58 = v99;
        v57 = v100;
        (v99)(v56, v100);
        v59 = v88;
        WeatherConditionBackgroundModel.animationData.getter();
        v60 = v90;
        BackgroundAnimationData.options.getter();
        v54(v59, v43);
        v61 = WeatherConditionBackgroundOptions.locationViewerOrientation.getter();
        v63 = v62;
        v58(v60, v57);
        if ((v97 & 1) == 0)
        {
          a2 = v98;
          if ((v63 & 1) == 0 && v95 == v61)
          {
            goto LABEL_8;
          }

          goto LABEL_12;
        }

        a2 = v98;
        if ((v63 & 1) == 0)
        {
LABEL_12:
          swift_getObjectType();
          WeatherConditionPlaybackCoordinatorType.pause(_:)(0);
          sub_100040690();
          v101 = static OS_dispatch_queue.main.getter();
          v64 = v75;
          static DispatchTime.now()();
          v65 = v79;
          + infix(_:_:)();
          v103 = *(v80 + 8);
          v103(v64, v91);
          v66 = v78;
          sub_1009B8AB4(v50, v78, type metadata accessor for WeatherConditionBackgroundModifier);
          v67 = (*(v76 + 80) + 16) & ~*(v76 + 80);
          v68 = swift_allocObject();
          sub_10011A168(v66, v68 + v67);
          v108 = sub_1009B8F94;
          v109 = v68;
          aBlock = _NSConcreteStackBlock;
          v105 = 1107296256;
          v106 = sub_1000742F0;
          v107 = &unk_100C798C8;
          v69 = _Block_copy(&aBlock);

          v70 = v81;
          static DispatchQoS.unspecified.getter();
          aBlock = _swiftEmptyArrayStorage;
          sub_1009B7E78(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
          sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
          v71 = v83;
          v72 = v86;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v73 = v101;
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v69);

          (*(v85 + 8))(v71, v72);
          (*(v82 + 8))(v70, v84);
          v103(v65, v91);
          a2 = v98;
        }
      }
    }

    else
    {
      (*(v41 + 8))(v31, v29);
    }

LABEL_8:
    sub_1001968B4(a2);
    sub_1009AD64C();
    return sub_1009AF3F8();
  }

  return result;
}

uint64_t sub_1001968B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BackgroundAnimationData();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WeatherConditionBackgroundModel();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnimatedGradient();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SkyBackgroundGradient();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  WeatherConditionBackgroundModel.gradient.getter();
  v16 = SkyBackgroundGradient.gradient()();
  (*(v13 + 8))(v15, v12);
  type metadata accessor for WeatherConditionBackgroundModifier(0);
  sub_10022C350(&qword_100CACB08, &unk_100A3BEF0);
  v39 = v2;
  State.wrappedValue.getter();
  AnimatedGradient.visibleGradient.getter();
  (*(v9 + 8))(v11, v8);
  v17 = v16;
  LOBYTE(v11) = static Gradient.== infix(_:_:)();

  if (v11)
  {
  }

  if (qword_100CA26E8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000703C(v19, qword_100D90B20);
  v21 = v40;
  v20 = v41;
  v22 = v38;
  (*(v40 + 16))(v38, a1, v41);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42 = v34;
    *v25 = 141558275;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    v26 = v35;
    WeatherConditionBackgroundModel.animationData.getter();
    sub_1009B7E78(&qword_100CEB0B0, &type metadata accessor for BackgroundAnimationData, &protocol conformance descriptor for BackgroundAnimationData);
    v27 = v22;
    v28 = v37;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v36 + 8))(v26, v28);
    (*(v21 + 8))(v27, v41);
    v32 = sub_100078694(v29, v31, &v42);

    *(v25 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "Updating gradient background; model=%{private,mask.hash}s", v25, 0x16u);
    sub_100006F14(v34);
  }

  else
  {

    (*(v21 + 8))(v22, v20);
  }

  v33 = static Animation.easeInOut(duration:)();
  __chkstk_darwin(v33);
  *(&v34 - 2) = v39;
  *(&v34 - 1) = v17;
  withAnimation<A>(_:_:)();
}

uint64_t sub_100196E04()
{
  sub_100013494();
  sub_100011388();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_100014158(v1);

  return v4(v3);
}

uint64_t sub_100196E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100088884();
  sub_10003A0D8();
  v10 = sub_100017580();
  v11 = type metadata accessor for LocationsAction(v10);
  sub_100003AE8(v11);
  sub_10003A294();
  v12 = swift_task_alloc();
  v13 = sub_100007F54(v12);
  *v13 = v14;
  v13[1] = sub_1000D8400;
  sub_100074CA4();
  sub_100044D14();

  return sub_100197064(v15, v16, v17, v18, v19, v20);
}

uint64_t sub_100196F78()
{
  if (*v0)
  {

    v3 = sub_10011BE3C(v1, v2);
    v5 = v4;
    v6 = v3;

    v7 = sub_1001681FC(v6, v5);

    if (v7 > 0.0)
    {
      return type metadata accessor for WeatherConditionBackgroundModifier(0);
    }
  }

  else
  {
    type metadata accessor for LocationViewCollisionOptions(0);
    sub_1009B7E78(&qword_100CACC60, type metadata accessor for LocationViewCollisionOptions, byte_100A95518);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100197064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = type metadata accessor for MainActor();
  v6[3] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_100185394;

  return sub_100197128(a5, a6);
}

uint64_t sub_100197128(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for LocationModel();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for Location();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for NotificationSubscription.Location();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for NotificationSubscription.Kind();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v8 = type metadata accessor for Location.Identifier();
  v3[23] = v8;
  v3[24] = *(v8 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = *(type metadata accessor for SavedLocation() - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = type metadata accessor for LocationsAction(0);
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_1001840E0, 0, 0);
}

uint64_t sub_100197490()
{
  sub_100003B08();
  switch(*(v0 + 40))
  {
    case 1:
      v1 = swift_task_alloc();
      *(v0 + 32) = v1;
      *v1 = v0;
      v1[1] = sub_1001981A4;
      v2 = sub_1000116B0(*(v0 + 16));

      result = sub_100197634(v2);
      break;
    case 2:
      sub_1005C5B28();
      sub_1005C5B84();
      goto LABEL_6;
    default:
LABEL_6:
      sub_100003B14();

      result = v4();
      break;
  }

  return result;
}

uint64_t sub_100197588()
{
  type metadata accessor for VisibilityStateHolder();
  sub_10001F794();
  v2 = sub_10006748C(v0, v1, a1_6);
  sub_10001CCF8(v2);
  sub_100010AE8();
}

uint64_t sub_100197634(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  v3 = type metadata accessor for NotificationSubscription.Kind();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for NotificationSubscription.Location();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  sub_10022C350(&qword_100CC84C8, &qword_100A65FF8);
  v2[19] = swift_task_alloc();
  v5 = type metadata accessor for NotificationSubscription();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v6 = type metadata accessor for Location();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  v2[27] = swift_task_alloc();
  v2[28] = type metadata accessor for CurrentLocation();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_100197940, 0, 0);
}

uint64_t sub_100197940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100021DB0();
  sub_1000C8394();
  v13 = v12[9];
  if (*(v13 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications) != 1)
  {
LABEL_13:
    sub_1000248CC();

    sub_100003B14();
    sub_1000208FC();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }

  v14 = v13 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  if (LocationAuthorizationState.rawValue.getter(*(v14 + 1)) == 0xD000000000000010 && 0x8000000100ABA410 == v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v18 = v12[28];
  sub_1005C1F54(v12[9] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v12[27], &unk_100CE49F0, &unk_100A3AFA0);
  v19 = sub_10000C834();
  if (sub_100024D10(v19, v20, v18) == 1)
  {
    sub_100018144(v12[27], &unk_100CE49F0, &unk_100A3AFA0);
    goto LABEL_13;
  }

  sub_100050170(v12[27], v12[30], &type metadata accessor for CurrentLocation);
  v21 = sub_100003B2C();
  sub_100050D50(v21, v22, v23);
  sub_10001920C();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10004F998();
    sub_100003B2C();
    sub_10004F998();
    goto LABEL_13;
  }

  v33 = v12[10];
  (*(v12[24] + 32))(v12[26], v12[29], v12[23]);
  sub_1000161C0((v33 + 16), *(v33 + 40));
  Location.id.getter();
  v12[31] = v34;
  v35 = swift_task_alloc();
  v12[32] = v35;
  *v35 = v12;
  v35[1] = sub_1005C3268;
  sub_100032620();
  sub_1000208FC();

  return dispatch thunk of NotificationSubscriptionManagerType.subscription(with:)(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t sub_100197C14()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  sub_100003B14();

  return v3();
}

void sub_100197CF4(char a1, uint64_t a2, uint64_t a3, void (*a4)(double))
{
  v33 = a2;
  v34 = a3;
  v7 = a1 & 1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v35 = *(v11 - 8);
  v36 = v11;
  __chkstk_darwin(v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTime();
  __chkstk_darwin(v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v29 - v20;
  if (*(v4 + 16) != v7)
  {
    *(v4 + 16) = v7;
    if (a1)
    {
      v22 = v18;
      sub_100040690();
      v30 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v23 = *(v22 + 8);
      v31 = v22 + 8;
      v32 = v23;
      v23(v16, v14);
      v24 = swift_allocObject();
      v25 = v34;
      *(v24 + 16) = v33;
      *(v24 + 24) = v25;
      aBlock[4] = sub_100190294;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000742F0;
      aBlock[3] = &unk_100C6B5B0;
      v26 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10006748C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
      sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
      v27 = v38;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v28 = v30;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v26);

      (*(v37 + 8))(v10, v27);
      (*(v35 + 8))(v13, v36);
      v32(v21, v14);
    }

    else
    {
      a4(v19);
    }
  }
}

uint64_t sub_1001980FC()
{

  return swift_deallocObject();
}

uint64_t sub_100198134(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_10022C350(&qword_100CBA108, &qword_100A4F688);
  State.wrappedValue.getter();
  sub_10019831C(a3, a4);
}

uint64_t sub_1001981B4()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100198298()
{
  sub_10000EB1C();
  sub_100008188();
  sub_10003C62C();

  sub_100003B14();
  sub_10002C7FC();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10019831C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  result = sub_100191B7C(a1, a2);
  if ((result & 1) == 0)
  {
    *(v2 + 32) = 1;

    return sub_100191D10(a1, a2);
  }

  return result;
}

uint64_t sub_100198380(uint64_t result, uint64_t a2)
{
  v3 = result & 1;
  if (*(v2 + 33) == (result & 1))
  {
    *(v2 + 33) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v6[2] = v2;
    v7 = v3;
    sub_100198428(v5, sub_1001984B0, v6);
  }

  return result;
}

void sub_1001984C0()
{
  type metadata accessor for DispatchPredicate();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_10001C80C();
  v2 = sub_100040690();
  *v0 = static OS_dispatch_queue.main.getter();
  v3 = sub_100008AB4();
  v4(v3);
  _dispatchPreconditionTest(_:)();
  v5 = sub_100006354();
  v6(v5);
  if (v2)
  {
    if (sub_1001987B8())
    {
      sub_1006113E8();
    }

    else
    {
      sub_100198888(0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001985C4()
{
  v0 = type metadata accessor for Location();
  sub_100003810(v0);
  v1 = sub_100040C54();

  return sub_100198624(v1, v2);
}

uint64_t sub_100198624(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v3);
  v5 = (v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v8);
  sub_100087544();
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  *v5 = Location.id.getter();
  v5[1] = v11;
  type metadata accessor for WeatherDataAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_10004F034(v5, v13, v10, v9);
  sub_100018144(v13, &unk_100CD81B0, &unk_100A3B000);
  return sub_100087544();
}

BOOL sub_1001987B8()
{
  v0 = type metadata accessor for DispatchTime();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  static DispatchTime.now()();
  OS_dispatch_group.wait(timeout:)();
  (*(v2 + 8))(v6, v0);
  return (static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0;
}

void sub_100198888(char a1)
{
  v3 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v1 + 16))
  {
    *(v1 + 16) = 2;
    if (a1)
    {
      [objc_opt_self() setFrameStallSkipRequest:1];
    }

    sub_1006111A0(1, v7);
    sub_1001CAEBC();
    static os_signpost_type_t.event.getter();
    if (qword_100CA2710 != -1)
    {
      swift_once();
    }

    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v5 + 8))(v9, v3);
  }
}

uint64_t storeEnumTagSinglePayload for LocationHeaderViewFrameCoordinator.Metrics(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for LocationHeaderViewFrameCoordinator.Metrics(uint64_t a1, int a2)
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

uint64_t sub_100198A3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100198A68();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100198A68()
{
  sub_100198AA4();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_100198AA4()
{
  result = qword_100CA60C0;
  if (!qword_100CA60C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TipAlignmentKey, &type metadata for TipAlignmentKey, v0, v1);
    atomic_store(result, &qword_100CA60C0);
  }

  return result;
}

double sub_100198AF8@<D0>(_OWORD *a1@<X8>)
{
  TipAlignmentKey.defaultValue.unsafeMutableAddressor();
  result = *&static TipAlignmentKey.defaultValue;
  *a1 = static TipAlignmentKey.defaultValue;
  return result;
}

__int128 *TipAlignmentKey.defaultValue.unsafeMutableAddressor()
{
  if (qword_100CA1EB0 != -1)
  {
    sub_10000FA48(&qword_100CA1EB0);
  }

  return &static TipAlignmentKey.defaultValue;
}

unint64_t sub_100198BF0()
{
  result = qword_100CA6108;
  if (!qword_100CA6108)
  {
    result = swift_getWitnessTable(byte_100A30A9C, &type metadata for UseLargerLayoutKey, v0, v1);
    atomic_store(result, &qword_100CA6108);
  }

  return result;
}

uint64_t sub_100198C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v8 = *v2;
  v9 = *(v2 + 24);
  v27 = *(v2 + 8);
  v28 = v9;
  v10 = *(v2 + 56);
  v29 = *(v2 + 40);
  v30 = v10;
  v11 = *(v2 + 72);
  if (v11)
  {
    *&v26[1] = *(v2 + 8);
    *&v26[3] = *(v2 + 24);
    *&v26[5] = *(v2 + 40);
    *&v26[7] = *(v2 + 56);
    v26[0] = v8;
  }

  else
  {
    sub_1007E9DC4(v2, v25);
    sub_1007E9DC4(v2, v25);
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1007E9DFC(v2);
    (*(v5 + 8))(v7, v4);
  }

  memcpy(v25, v26, 0x48uLL);
  v13 = sub_1000EF898();
  if (v11)
  {
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v24 = v30;
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1007E9DFC(v2);
    (*(v5 + 8))(v7, v4);
  }

  v15 = v13 - (*&v24 + *&v24);
  v16 = sub_10022C350(&qword_100CDA060, &qword_100A850D0);
  (*(*(v16 - 8) + 16))(a2, v20, v16);
  result = sub_10022C350(&qword_100CDA068, &qword_100A850D8);
  v18 = a2 + *(result + 36);
  *v18 = KeyPath;
  *(v18 + 8) = v15;
  *(v18 + 16) = 0;
  return result;
}

uint64_t sub_100198F60()
{
  sub_10000FE4C();
  v0 = sub_100198F8C();
  return sub_10000EDD8(v0, v1);
}

unint64_t sub_100198FAC()
{
  result = qword_100CA6158;
  if (!qword_100CA6158)
  {
    result = swift_getWitnessTable(aQ_15, &unk_100C49F38, v0, v1);
    atomic_store(result, &qword_100CA6158);
  }

  return result;
}

uint64_t sub_100199044()
{
  sub_10000FE4C();
  v0 = sub_10014B6BC();
  return sub_10000EDD8(v0, v1);
}

uint64_t sub_10019906C()
{
  v3 = sub_10000C76C();
  v4 = type metadata accessor for LocationComponentContainerViewModel(v3);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_100019530();
  sub_1001B7EB8(v1);
  sub_1001993DC();
  KeyPath = swift_getKeyPath();
  v7 = sub_10022C350(&qword_100CC0A00, &qword_100A59428);
  return sub_1001C9C7C(v2, KeyPath, 0, v0 + *(v7 + 36));
}

uint64_t sub_10019913C()
{
  sub_10000FE4C();
  v0 = sub_100198F8C();
  return sub_10000EDD8(v0, v1);
}

void *sub_100199164()
{
  sub_1001992A8();

  return EnvironmentValues.subscript.getter();
}

uint64_t sub_1001991D0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = (a3 + *(sub_10022C350(&qword_100CB87B8, &qword_100A4C918) + 36));
  v7 = sub_10022C350(&qword_100CB87C0, &qword_100A4C920);
  sub_1001B60B4(v6 + *(v7 + 28));
  *v6 = KeyPath;
  sub_10022C350(&qword_100CB87C8, &qword_100A4C928);
  sub_1000037E8();
  v10 = *(v9 + 16);

  return v10(a3, a1, v8);
}

unint64_t sub_1001992A8()
{
  result = qword_100CB8640;
  if (!qword_100CB8640)
  {
    result = swift_getWitnessTable(byte_100A4C8B8, &_s44LocationComponentHeaderMetricsEnvironmentKeyVN, v0, v1);
    atomic_store(result, &qword_100CB8640);
  }

  return result;
}

uint64_t sub_1001992FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA20A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocationComponentHeaderMetrics(0);
  v3 = sub_10000703C(v2, qword_100CB8628);
  return sub_10019937C(v3, a1, type metadata accessor for LocationComponentHeaderMetrics);
}

uint64_t sub_10019937C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001993DC()
{
  v1 = sub_100003B38();
  v2(v1);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

void sub_10019949C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x2Au);
}

uint64_t sub_1001994F4(uint64_t a1)
{
  v2 = type metadata accessor for LocationComponentHeaderMetrics(0);
  __chkstk_darwin(v2 - 8);
  sub_1000037D8();
  sub_10019937C(a1, v4 - v3, type metadata accessor for LocationComponentHeaderMetrics);
  sub_1001992A8();
  EnvironmentValues.subscript.setter();
  return sub_1001995A8(a1, type metadata accessor for LocationComponentHeaderMetrics);
}

uint64_t sub_1001995A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10019960C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = type metadata accessor for LocationComponentContainerView(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v31 = sub_10022C350(&qword_100CC0AE0, &qword_100A59620);
  __chkstk_darwin(v31);
  v5 = &v30 - v4;
  v6 = type metadata accessor for LocationComponentContainerContentView(0);
  sub_1001993DC();
  v33 = *(v1 + *(v3 + 28));
  sub_1001993DC();
  v7 = swift_allocObject();
  sub_1001AD070();
  type metadata accessor for PagingContentOffsetsStorage(0);
  sub_100061A3C(&qword_100CC0808, type metadata accessor for PagingContentOffsetsStorage, aY_35);
  swift_unknownObjectRetain();
  StateObject.wrappedValue.getter();
  v8 = (v1 + *(v3 + 56));
  v9 = *(v8 + 16);
  v10 = *(v8 + 3);
  v38 = *v8;
  v39 = v9;
  v40 = v10;
  sub_10022C350(&qword_100CC0B18, &unk_100AA7910);
  State.projectedValue.getter();
  v30 = v34;
  v11 = v35;
  v12 = v36;
  LOBYTE(v3) = v37;
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  *(v5 + 2) = swift_getKeyPath();
  v5[24] = 0;
  *&v5[v6[7]] = v33;
  v13 = &v5[v6[8]];
  *v13 = sub_1004FB33C;
  v13[1] = v7;
  v14 = &v5[v6[9]];
  *v14 = ObservedObject.init(wrappedValue:)();
  v14[1] = v15;
  v16 = &v5[v6[10]];
  *v16 = v30;
  *(v16 + 2) = v11;
  *(v16 + 3) = v12;
  v16[32] = v3;
  KeyPath = swift_getKeyPath();
  v18 = swift_getKeyPath();
  v19 = &v5[*(v31 + 36)];
  *v19 = KeyPath;
  v19[8] = 0;
  *(v19 + 2) = v18;
  *(v19 + 12) = 0;
  v20 = LocalizedStringKey.init(stringLiteral:)();
  v24 = Text.init(_:tableName:bundle:comment:)(v20, v22, v21 & 1, v23, 0, 0, 0, 0, 0, 256);
  v26 = v25;
  v28 = v27;
  sub_1001CB770();
  View.accessibilityHint(_:)();
  sub_10010CD64(v24, v26, v28 & 1);

  return sub_100018198(v5, &qword_100CC0AE0);
}

uint64_t sub_1001999F4()
{
  sub_10000FE4C();
  v0 = sub_1000EF2B0();
  return sub_100005F94(v0);
}

__n128 sub_100199A2C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_100199A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, char a4@<W2>, uint64_t a5@<X3>, __int16 a6@<W4>)
{
  KeyPath = swift_getKeyPath();
  v13 = sub_1004E3640(a2, a4 & 1, a5, a6 | ((HIBYTE(a6) & 1) << 8));
  LOBYTE(a5) = v14;
  v15 = sub_10022C350(&qword_100CC1B98, &qword_100A5A7C8);
  (*(*(v15 - 8) + 16))(a3, a1, v15);
  result = sub_10022C350(&qword_100CC1BA0, &qword_100A5A7D0);
  v17 = a3 + *(result + 36);
  *v17 = KeyPath;
  *(v17 + 8) = v13;
  *(v17 + 16) = a5 & 1;
  return result;
}

uint64_t sub_100199B64()
{
  sub_10000FE4C();
  result = sub_100199A40();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

unint64_t sub_100199B98()
{
  result = qword_100CA6190;
  if (!qword_100CA6190)
  {
    result = swift_getWitnessTable(byte_100A30E7C, &type metadata for LocationComponentContentWidthPreferenceKey, v0, v1);
    atomic_store(result, &qword_100CA6190);
  }

  return result;
}

uint64_t sub_100199BEC(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  sub_1000037C4();
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v9 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  sub_10001B350(v11, 1, 1, v12);
  (*(v5 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v5 + 32))(v14 + v13, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;

  sub_1006C0138();
}

uint64_t sub_100199DA4()
{
  v1 = type metadata accessor for Date();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_100199EA0(uint64_t a1)
{
  v2 = type metadata accessor for Location.Identifier();
  v22 = *(v2 - 8);
  __chkstk_darwin(v2);
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  __chkstk_darwin(active - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v7);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);

  v13(&v23, v14);

  sub_1000950F8(v23 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v12, type metadata accessor for ViewState);

  sub_1000950F8(&v12[v10[5]], v9, type metadata accessor for ViewState.SecondaryViewState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10009EE68(v12, type metadata accessor for ViewState);
    return sub_10009EE68(v9, type metadata accessor for ViewState.SecondaryViewState);
  }

  v16 = *v9;
  if (*&v12[v10[9] + 8] == 1)
  {
    v17 = [objc_opt_self() currentDevice];
    [v17 userInterfaceIdiom];

    LOBYTE(v17) = v12[v10[7]];
    sub_10009EE68(v12, type metadata accessor for ViewState);
    if ((v17 & 1) == 0)
    {
    }
  }

  else
  {
    sub_10009EE68(v12, type metadata accessor for ViewState);
  }

  sub_1000950F8(v16 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v6, type metadata accessor for LocationViewerActiveLocationState);
  if (sub_100024D10(v6, 1, v2) == 1)
  {
  }

  v19 = v21;
  v18 = v22;
  (*(v22 + 32))(v21, v6, v2);
  sub_10019A274(v19);

  return (*(v18 + 8))(v19, v2);
}

void sub_10019A274(uint64_t a1)
{
  v2 = v1;
  v66 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v72 = v4;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v70 = v7 - v6;
  v71 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v69 = v8;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v68 = v11 - v10;
  v12 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  v64 = v16;
  v74 = &v61[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_10022C350(&qword_100CADD58, &unk_100A3E650);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v61[-v19];
  v21 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v21 - 8);
  v23 = &v61[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v26 = &v61[-v25];
  __chkstk_darwin(v27);
  v29 = &v61[-v28];
  v73 = Location.Identifier.intentIdentifier.getter();
  v75 = v30;
  v76 = v14;
  v31 = *(v14 + 16);
  v67 = a1;
  v63 = v31;
  v31(v29, a1, v12);
  sub_10001B350(v29, 0, 1, v12);
  v32 = OBJC_IVAR____TtC7Weather26InteractionDonationManager_previousDonatedLocationIdentifier;
  swift_beginAccess();
  v33 = *(v18 + 56);
  sub_1000952C4(v29, v20);
  v65 = v2;
  sub_1000952C4(v2 + v32, &v20[v33]);
  sub_10000556C(v20);
  if (!v34)
  {
    sub_1000952C4(v20, v26);
    sub_10000556C(&v20[v33]);
    if (!v34)
    {
      v51 = v76;
      v52 = v74;
      (*(v76 + 32))(v74, &v20[v33], v12);
      sub_100067444(&qword_100CA3A48, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
      v62 = dispatch thunk of static Equatable.== infix(_:_:)();
      v53 = *(v51 + 8);
      v53(v52, v12);
      sub_1000180EC(v29, &qword_100CADBA0, &qword_100A3D250);
      v53(v26, v12);
      sub_1000180EC(v20, &qword_100CADBA0, &qword_100A3D250);
      if (v62)
      {
        goto LABEL_12;
      }

LABEL_10:
      v35 = v67;
      v36 = v63;
      v63(v23, v67, v12);
      sub_10001B350(v23, 0, 1, v12);
      v37 = v65;
      swift_beginAccess();
      sub_10007DEA8(v23, v37 + v32);
      swift_endAccess();
      v38 = v74;
      v36(v74, v35, v12);
      v39 = v76;
      v40 = (*(v76 + 80) + 16) & ~*(v76 + 80);
      v41 = (v64 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      (*(v39 + 32))(v42 + v40, v38, v12);
      v43 = (v42 + v41);
      v44 = v75;
      *v43 = v73;
      v43[1] = v44;
      aBlock[4] = sub_10017D4F8;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000742F0;
      aBlock[3] = &unk_100C5ED18;
      v45 = _Block_copy(aBlock);
      v46 = v68;
      static DispatchQoS.unspecified.getter();
      v77 = _swiftEmptyArrayStorage;
      sub_100006190();
      sub_100067444(v47, v48, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
      sub_100067638(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00);
      v49 = v70;
      v50 = v66;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v45);
      (*(v72 + 8))(v49, v50);
      (*(v69 + 8))(v46, v71);

      return;
    }

    sub_1000180EC(v29, &qword_100CADBA0, &qword_100A3D250);
    (*(v76 + 8))(v26, v12);
LABEL_9:
    sub_1000180EC(v20, &qword_100CADD58, &unk_100A3E650);
    goto LABEL_10;
  }

  sub_1000180EC(v29, &qword_100CADBA0, &qword_100A3D250);
  sub_10000556C(&v20[v33]);
  if (!v34)
  {
    goto LABEL_9;
  }

  sub_1000180EC(v20, &qword_100CADBA0, &qword_100A3D250);
LABEL_12:
  if (qword_100CA2770 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  sub_10000703C(v54, qword_100D90CA8);
  v55 = v75;

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v58 = 141558275;
    *(v58 + 4) = 1752392040;
    *(v58 + 12) = 2081;
    v60 = sub_100078694(v73, v55, aBlock);

    *(v58 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v56, v57, "The interaction to donate matches the most recently donated interaction. Bailing to avoid donating a duplicate interaction. persistentIdentifier=%{private,mask.hash}s", v58, 0x16u);
    sub_100006F14(v59);
  }

  else
  {
  }
}

uint64_t sub_10019AA9C()
{
  type metadata accessor for Location.Identifier();
  sub_1000037E8();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_10019AB34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v95 = a1;
  v93 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v93);
  v94 = (&v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for LocationComponentContainerViewModel(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v83 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v97);
  v100 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v99 = &v72 - v9;
  v82 = type metadata accessor for LocationComponentContainerView(0);
  v10 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v11;
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  v15 = sub_10022C350(&qword_100CBC478, &qword_100A52E28);
  __chkstk_darwin(v15);
  v17 = &v72 - v16;
  v81 = sub_10022C350(&qword_100CBC468, &qword_100A52E20);
  __chkstk_darwin(v81);
  v85 = &v72 - v18;
  v80 = sub_10022C350(&qword_100CBC458, &qword_100A52E18);
  __chkstk_darwin(v80);
  v87 = &v72 - v19;
  v86 = sub_10022C350(&qword_100CBC448, &qword_100A52E10);
  __chkstk_darwin(v86);
  v92 = &v72 - v20;
  v88 = sub_10022C350(&qword_100CBC438, &qword_100A52E08);
  __chkstk_darwin(v88);
  v91 = &v72 - v21;
  v89 = sub_10022C350(&qword_100CBC418, &qword_100A52E00);
  __chkstk_darwin(v89);
  v90 = &v72 - v22;
  v23 = type metadata accessor for LocationComponentViewModel(0);
  __chkstk_darwin(v23);
  __chkstk_darwin(v24);
  v26 = &v72 - v25;
  __chkstk_darwin(v27);
  v28 = *(v5 + 28);
  sub_1001993DC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v84 = 6;
  }

  else
  {
    sub_1001993DC();
    v84 = sub_1001B8FB8(v26);
  }

  sub_100192034();
  sub_1001993DC();
  v76 = ((swift_getEnumCaseMultiPayload() - 1) & 0xFFFFFFF7) == 0;
  sub_100192034();
  v98 = type metadata accessor for LocationComponentContainerView;
  sub_1001993DC();
  v96 = *(v10 + 80);
  v77 = v14;
  v74 = swift_allocObject();
  sub_1001AD070();
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v29 = v15[13];
  v72 = &v17[v15[12]];
  v73 = &v17[v29];
  v30 = &v17[v15[14]];
  LOBYTE(v102) = 0;
  State.init(wrappedValue:)();
  v31 = v104;
  *v30 = v103;
  *(v30 + 1) = v31;
  v78 = type metadata accessor for Date();
  v32 = v99;
  sub_10001B350(v99, 1, 1, v78);
  v75 = v28;
  sub_1000302D8(v32, v100, &unk_100CB2CF0, &unk_100A2D7F0);
  State.init(wrappedValue:)();
  sub_100018198(v32, &unk_100CB2CF0);
  v33 = v15;
  v34 = &v17[v15[10]];
  *v34 = static HorizontalAlignment.leading.getter();
  *(v34 + 1) = 0;
  v34[16] = 0;
  v35 = sub_10022C350(&qword_100CC0A30, &qword_100A59480);
  sub_1001B94C0(&v34[*(v35 + 44)]);
  sub_1001993DC();
  v36 = swift_allocObject();
  sub_1001AD070();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1004FAE24;
  *(v37 + 24) = v36;
  v38 = static Alignment.center.getter();
  v40 = v39;
  v41 = &v34[*(sub_10022C350(&qword_100CC0A38, &qword_100A59488) + 36)];
  *v41 = sub_1004FAE98;
  v41[1] = v37;
  v41[2] = v38;
  v41[3] = v40;
  sub_1001993DC();
  v42 = sub_10022C350(&qword_100CC0A40, &qword_100A59490);
  sub_1004E1868(&v34[*(v42 + 36)]);
  v43 = &v17[v33[11]];
  v44 = v74;
  *v43 = sub_1004FA158;
  v43[1] = v44;
  v17[9] = v76;
  v45 = v72;
  *v72 = 0u;
  *(v45 + 1) = 0u;
  v46 = v73;
  *v73 = 0u;
  *(v46 + 1) = 0u;
  v47 = (v2 + *(v82 + 116));
  v49 = *v47;
  v48 = v47[1];
  v103 = v49;
  v104 = v48;
  sub_10022C350(&qword_100CC0A48, &qword_100A59498);
  State.wrappedValue.getter();
  v50 = *(v102 + 16);

  v51 = v85;
  sub_1000302D8(v17, v85, &qword_100CBC478, &qword_100A52E28);
  *(v51 + *(v81 + 36)) = v50;
  sub_100018198(v17, &qword_100CBC478);
  v52 = sub_1001B3DAC();
  v53 = v94;
  *v94 = v52;
  v53[1] = v54;
  *(v53 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v55 = v87;
  v56 = &v87[*(v80 + 36)];
  type metadata accessor for AutomationInfoProperty(0);
  sub_1001993DC();
  sub_100192034();
  *v56 = 0;
  *(v56 + 1) = 0xE000000000000000;
  *(v56 + 2) = swift_getKeyPath();
  v56[24] = 0;
  sub_10011C0F0(v51, v55, &qword_100CBC468, &qword_100A52E20);
  sub_1001993DC();
  v57 = swift_allocObject();
  sub_1001AD070();
  v58 = v92;
  sub_10011C0F0(v55, v92, &qword_100CBC458, &qword_100A52E18);
  v59 = (v58 + *(v86 + 36));
  *v59 = sub_1001913A0;
  v59[1] = v57;
  sub_1001993DC();
  v60 = swift_allocObject();
  sub_1001AD070();
  v61 = v91;
  v62 = &v91[*(v88 + 36)];
  *v62 = xmmword_100A58AB0;
  *(v62 + 2) = sub_1004FAEA0;
  *(v62 + 3) = v60;
  v63 = type metadata accessor for TrackExposureModifier(0);
  v64 = v99;
  sub_10001B350(v99, 1, 1, v78);
  sub_1000302D8(v64, v100, &unk_100CB2CF0, &unk_100A2D7F0);

  State.init(wrappedValue:)();
  sub_100018198(v64, &unk_100CB2CF0);
  v65 = &v62[*(v63 + 32)];
  LOBYTE(v102) = 0;
  State.init(wrappedValue:)();

  v66 = v104;
  *v65 = v103;
  *(v65 + 1) = v66;
  sub_10011C0F0(v58, v61, &qword_100CBC448, &qword_100A52E10);
  v68 = qword_100CC0658;
  v67 = off_100CC0660;
  v69 = v90;
  sub_10011C0F0(v61, v90, &qword_100CBC438, &qword_100A52E08);
  v70 = (v69 + *(v89 + 36));
  *v70 = v68;
  v70[1] = v67;

  sub_1001C8E18(v84);
  return sub_100018198(v69, &qword_100CBC418);
}

uint64_t sub_10019B750()
{

  return swift_deallocObject();
}

char *sub_10019B79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v281 = a6;
  v260 = a5;
  v282 = a4;
  v283 = a3;
  v279 = a2;
  v280 = a1;
  v269 = type metadata accessor for WeatherStatisticsModel();
  sub_1000037C4();
  v267 = v6;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v265 = v9 - v8;
  v277 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = (v12 - v11);
  v268 = type metadata accessor for AvailableDataSets();
  sub_1000037C4();
  v266 = v14;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v264 = v17 - v16;
  type metadata accessor for UUID();
  sub_1000037C4();
  v273 = v19;
  v274 = v18;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v271 = v21 - v20;
  v276 = type metadata accessor for LocationAvailableDataSetState(0);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_100003C38();
  v270 = (v23 - v24);
  __chkstk_darwin(v25);
  sub_10000E70C();
  v272 = v26;
  v27 = sub_10022C350(&qword_100CE2A28, &qword_100A95958);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  v30 = &v246 - v29;
  v31 = type metadata accessor for TimeState(0);
  v32 = sub_100003810(v31);
  __chkstk_darwin(v32);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_10000E70C();
  v35 = sub_100003918(v34);
  v36 = type metadata accessor for WeatherData.CachingState(v35);
  v37 = sub_100003810(v36);
  __chkstk_darwin(v37);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_10000E70C();
  v42 = sub_100003918(v41);
  v43 = type metadata accessor for NewsDataModel(v42);
  v44 = sub_100003810(v43);
  __chkstk_darwin(v44);
  sub_100003C38();
  v47 = v45 - v46;
  __chkstk_darwin(v48);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_10000E70C();
  v51 = sub_100003918(v50);
  v52 = type metadata accessor for PreprocessedWeatherData(v51);
  v53 = sub_100003810(v52);
  __chkstk_darwin(v53);
  sub_100003C38();
  v56 = v54 - v55;
  __chkstk_darwin(v57);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v58);
  sub_10000E70C();
  v60 = sub_100003918(v59);
  v262 = type metadata accessor for WeatherData(v60);
  sub_1000037E8();
  __chkstk_darwin(v61);
  sub_100003C38();
  v64 = v62 - v63;
  __chkstk_darwin(v65);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_10000E70C();
  v70 = sub_100003918(v69);
  v278 = type metadata accessor for LocationWeatherDataState(v70);
  sub_1000037E8();
  __chkstk_darwin(v71);
  sub_100003C38();
  v74 = (v72 - v73);
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_10000E70C();
  v275 = v77;
  v78 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  v79 = sub_100003810(v78);
  __chkstk_darwin(v79);
  sub_100003C38();
  v82 = v80 - v81;
  __chkstk_darwin(v83);
  v85 = &v246 - v84;
  type metadata accessor for WeatherDataAction(0);
  sub_1000037E8();
  __chkstk_darwin(v86);
  sub_1000037D8();
  v89 = (v88 - v87);
  sub_10019CD2C(v281, v88 - v87, type metadata accessor for WeatherDataAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v124 = *v89;
      v125 = v89[1];
      v126 = v282;
      sub_100171164(v124, v125, v282);
      if (sub_100024D10(v30, 1, v276) == 1)
      {
        goto LABEL_15;
      }

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_100009238();
          sub_1008CA4BC(v30, v128);
LABEL_15:
          v64 = v272;
          swift_storeEnumTagMultiPayload();
          sub_10001A138();
          v85 = v270;
          sub_10019CD2C(v64, v270, v129);

          swift_isUniquelyReferenced_nonNull_native();
          v284 = v126;
          sub_10023997C();

          UUID.init()();
          UUID.uuidString.getter();
          v130 = sub_100024BBC();
          v131(v130);

          v109 = type metadata accessor for LocationAvailableDataSetState;
          goto LABEL_16;
        }

LABEL_30:
      }

      else
      {

        sub_100009238();
        sub_1008CA4BC(v30, v154);
      }

LABEL_31:

      return v280;
    case 2u:
      v111 = v89[2];
      v112 = v89[3];
      v113 = v89[4];
      v85 = v89[5];
      v114 = *v89;
      v115 = v89[1];
      sub_1000864C0(*v89, v115, v283);
      if (sub_100024D10(v82, 1, v278) == 1)
      {
        sub_10030F924(v82);
        v91 = v275;
        *v275 = v113;
        v91[1] = v85;
        v91[2] = v111;
        v91[3] = v112;
        swift_storeEnumTagMultiPayload();
        sub_10019CE54();
        sub_10004ECD8();
LABEL_8:

        sub_10001FC1C();
        v117 = v91;
      }

      else
      {
        v281 = v114;
        v277 = v115;
        v150 = v263;
        sub_1008CA514(v82, v263, type metadata accessor for LocationWeatherDataState);
        sub_10019CD2C(v150, v74, type metadata accessor for LocationWeatherDataState);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v155 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
            v156 = *(v155 + 48);
            v276 = v155;
            v157 = *(v155 + 64);
            sub_100028D50();
            v158 = v259;
            sub_1008CA514(v74, v259, v159);
            sub_100004DF8();
            v160 = v256;
            sub_1008CA514(v74 + v156, v256, v161);
            sub_100010F50();
            v162 = v74 + v157;
            v163 = v255;
            sub_1008CA514(v162, v255, v164);
            v165 = v260;
            if (sub_1008CA0F0(v158, v260))
            {
              sub_1000243E4();
              swift_storeEnumTagMultiPayload();
              sub_10002CB78(v158);
              sub_10004ECD8();

              sub_1000234B8();
              sub_1008CA4BC(v158, v166);
              sub_10001D130();
              sub_1008CA4BC(v163, v167);
              sub_100006B10();
              sub_1008CA4BC(v160, v168);
              v169 = v259;
            }

            else
            {
              sub_10031EF8C(v111, v112);

              v191 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
              v192 = *(v191 + 48);
              sub_100037E44();
              v194 = v247;
              sub_10019CD2C(v165 + v193, v247, v195);
              v196 = type metadata accessor for Date();
              v197 = *(v196 - 8);
              v198 = v250;
              (*(v197 + 32))(v250, v194, v196);
              sub_100020C88();
              v199 = v259;
              v201 = v248;
              sub_10019CD2C(&v259[v200], v248, v202);
              if (sub_100024D10(v201, 1, v191) == 1)
              {
                v203 = type metadata accessor for WeatherDataRelevancy(0);
                sub_10001B350(v198 + v192, 1, 1, v203);
              }

              else
              {
                sub_1001A5758(v201 + *(v191 + 48), v198 + v192);
                (*(v197 + 8))(v201, v196);
              }

              v225 = v256;
              sub_10001B350(v198, 0, 1, v191);
              v226 = *v199;
              v74 = *(v199 + 1);
              v85 = v198;
              v227 = v262;
              v228 = v249;
              sub_1005C1F54(&v199[*(v262 + 20)], &v249[*(v262 + 20)], &qword_100CAA9F0, qword_100A44F50);
              v229 = *(v227 + 24);
              type metadata accessor for WeatherDataModel();
              sub_1000037E8();
              (*(v230 + 16))(&v228[v229], &v199[v229]);
              sub_1000318E8();
              sub_10019CD2C(&v199[v231], &v228[v231], v232);
              sub_1000521A8();
              sub_1008CA514(v85, &v228[v233], v234);
              sub_1005C1F54(&v199[*(v227 + 36)], &v228[*(v227 + 36)], &qword_100CA75C8, &unk_100A325F0);
              *v228 = v226;
              *(v228 + 1) = v74;
              v235 = v275;
              v236 = *(v276 + 48);
              v237 = *(v276 + 64);
              sub_1000150F4();
              sub_10019CD2C(v228, v235, v238);
              sub_100017098();
              sub_10019CD2C(v225, v235 + v236, v239);
              sub_100049E88();
              v240 = v255;
              sub_10019CD2C(v255, v235 + v237, v241);
              swift_storeEnumTagMultiPayload();

              sub_10002CB78(v235);
              sub_10004ECD8();

              sub_1000234B8();
              sub_1008CA4BC(v235, v242);
              sub_1008CA4BC(v228, type metadata accessor for WeatherData);
              sub_10001D130();
              sub_1008CA4BC(v240, v243);
              sub_100006B10();
              sub_1008CA4BC(v256, v244);
              v169 = v199;
            }

            sub_1008CA4BC(v169, type metadata accessor for WeatherData);
            v117 = v263;
            break;
          case 3u:
            goto LABEL_22;
          default:
            sub_10001FC1C();
            sub_1008CA4BC(v74, v151);
LABEL_22:
            sub_1000243E4();
            swift_storeEnumTagMultiPayload();
            sub_10002CB78(v82);
            sub_10004ECD8();

            sub_1000234B8();
            sub_1008CA4BC(v82, v152);
            v117 = v150;
            break;
        }

LABEL_41:
        v116 = v74;
      }

LABEL_42:
      sub_1008CA4BC(v117, v116);
      return v85;
    case 3u:
      v118 = v89[3];
      v119 = v272;
      *v272 = v89[2];
      *(v119 + 8) = v118;
      swift_storeEnumTagMultiPayload();
      sub_10001A138();
      v85 = v270;
      sub_10019CD2C(v119, v270, v120);
      v121 = v282;

      swift_isUniquelyReferenced_nonNull_native();
      v284 = v121;
      sub_10023997C();

      UUID.init()();
      UUID.uuidString.getter();
      v122 = sub_100024BBC();
      v123(v122);

      sub_100009238();
      v117 = v119;
      goto LABEL_42;
    case 4u:
      v85 = *v89;
      v92 = sub_10022C350(&qword_100CAC0C8, &unk_100A3AFC0);
      v93 = *(v92 + 64);
      v94 = *(v92 + 80);
      sub_100028D50();
      sub_1008CA514(v89 + v95, v64, v96);
      sub_100004DF8();
      sub_1008CA514(v89 + v93, v56, v97);
      sub_100010F50();
      sub_1008CA514(v89 + v94, v47, v98);
      v99 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
      v100 = *(v99 + 48);
      v101 = *(v99 + 64);
      sub_1000150F4();
      v102 = v275;
      sub_10019CD2C(v64, v275, v103);
      sub_100017098();
      sub_10019CD2C(v56, v102 + v100, v104);
      sub_100049E88();
      sub_10019CD2C(v47, v102 + v101, v105);
      swift_storeEnumTagMultiPayload();
      sub_10001884C();
      sub_10019CE54();
      sub_100017FCC();
      sub_10001FC1C();
      sub_1008CA4BC(v102, v106);
      sub_10001D130();
      sub_1008CA4BC(v47, v107);
      sub_100006B10();
      sub_1008CA4BC(v56, v108);
      v109 = type metadata accessor for WeatherData;
LABEL_16:
      v116 = v109;
      v117 = v64;
      goto LABEL_42;
    case 5u:
      sub_10022C350(&qword_100CAC0B8, &unk_100A3AFB0);
      sub_100010F50();
      sub_1008CA514(v89 + v132, v47, v133);
      sub_10001884C();
      sub_10070D3FC();
      sub_100017FCC();
      sub_10001D130();
      v117 = v47;
      goto LABEL_42;
    case 6u:
      v85 = *v89;
      v134 = sub_10022C350(&qword_100CAC0C0, &unk_100A53DF0);
      v135 = v266;
      v136 = v264;
      v137 = v268;
      (*(v266 + 32))(v264, v89 + *(v134 + 48), v268);
      v138 = v272;
      (*(v135 + 16))(v272, v136, v137);
      swift_storeEnumTagMultiPayload();
      sub_10001A138();
      sub_10019CD2C(v138, v270, v139);
      v140 = v282;

      swift_isUniquelyReferenced_nonNull_native();
      v284 = v140;
      sub_10023997C();

      UUID.init()();
      UUID.uuidString.getter();
      v141 = sub_100024BBC();
      v142(v141);

      sub_100009238();
      sub_1008CA4BC(v138, v143);
      (*(v135 + 8))(v136, v137);
      return v85;
    case 7u:
      goto LABEL_10;
    case 8u:
      v144 = sub_10022C350(&qword_100CAC0B0, &unk_100A41710);
      v145 = v267;
      v146 = v265;
      v147 = v269;
      (*(v267 + 32))(v265, v89 + *(v144 + 48), v269);
      (*(v145 + 16))(v13, v146, v147);
      swift_storeEnumTagMultiPayload();
      sub_10001884C();
      sub_10070D800();
      sub_100017FCC();
      v148 = sub_10000EEC4();
      sub_1008CA4BC(v148, v149);
      (*(v145 + 8))(v146, v147);
      return v85;
    case 9u:
      v110 = v89[3];
      *v13 = v89[2];
      v13[1] = v110;
LABEL_10:
      swift_storeEnumTagMultiPayload();
      sub_10001884C();
      sub_10070D800();
      sub_100017FCC();
      v117 = sub_10000EEC4();
      goto LABEL_42;
    default:
      v90 = *v89;
      sub_1000864C0(*v89, v89[1], v283);
      if (sub_100024D10(v85, 1, v278) != 1)
      {
        v281 = v90;
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v171 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
            v172 = *(v171 + 48);
            v277 = v171;
            v173 = *(v171 + 64);
            sub_100028D50();
            v174 = v257;
            sub_1008CA514(v85, v257, v175);
            sub_100004DF8();
            sub_1008CA514(&v85[v172], v261, v176);
            sub_100010F50();
            sub_1008CA514(&v85[v173], v258, v177);
            v178 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
            v179 = *(v178 + 48);
            sub_100037E44();
            v181 = v251;
            sub_10019CD2C(v260 + v180, v251, v182);
            v183 = type metadata accessor for Date();
            v184 = *(v183 - 8);
            v185 = v254;
            (*(v184 + 32))(v254, v181, v183);
            sub_100020C88();
            v187 = v174 + v186;
            v188 = v252;
            sub_10019CD2C(v187, v252, v189);
            if (sub_100024D10(v188, 1, v178) == 1)
            {
              v190 = type metadata accessor for WeatherDataRelevancy(0);
              sub_10001B350(v185 + v179, 1, 1, v190);
            }

            else
            {
              sub_1001A5758(v188 + *(v178 + 48), v185 + v179);
              (*(v184 + 8))(v188, v183);
            }

            sub_10001B350(v185, 0, 1, v178);
            v204 = v257;
            v206 = *v257;
            v205 = v257[1];
            v207 = v262;
            v208 = v253;
            sub_1005C1F54(v257 + *(v262 + 20), &v253[*(v262 + 20)], &qword_100CAA9F0, qword_100A44F50);
            v209 = *(v207 + 24);
            type metadata accessor for WeatherDataModel();
            sub_1000037E8();
            (*(v210 + 16))(&v208[v209], &v204[v209]);
            sub_1000318E8();
            sub_10019CD2C(&v204[v211], &v208[v211], v212);
            sub_1000521A8();
            sub_1008CA514(v185, &v208[v213], v214);
            sub_1005C1F54(&v204[*(v207 + 36)], &v208[*(v207 + 36)], &qword_100CA75C8, &unk_100A325F0);
            *v208 = v206;
            *(v208 + 1) = v205;
            v85 = v205;
            v215 = *(v277 + 48);
            v216 = *(v277 + 64);
            sub_1000150F4();
            v217 = v275;
            sub_10019CD2C(v208, v275, v218);
            sub_100017098();
            sub_10019CD2C(v261, v217 + v215, v219);
            sub_100049E88();
            v220 = v258;
            sub_10019CD2C(v258, v217 + v216, v221);
            swift_storeEnumTagMultiPayload();

            sub_10019CE54();
            sub_10004ECD8();

            sub_10001FC1C();
            sub_1008CA4BC(v217, v222);
            v74 = type metadata accessor for WeatherData;
            sub_1008CA4BC(v208, type metadata accessor for WeatherData);
            sub_10001D130();
            sub_1008CA4BC(v220, v223);
            sub_100006B10();
            sub_1008CA4BC(v261, v224);
            v117 = v204;
            goto LABEL_41;
          case 2u:
            sub_10001FC1C();
            sub_1008CA4BC(v85, v170);
            break;
          case 3u:
            goto LABEL_30;
          default:

            sub_10001FC1C();
            sub_1008CA4BC(v85, v153);
            goto LABEL_31;
        }
      }

      v91 = v275;
      sub_100003940();
      swift_storeEnumTagMultiPayload();
      sub_10019CE54();
      sub_10004ECD8();
      goto LABEL_8;
  }
}

uint64_t sub_10019CD2C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_10019CD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LocationComponentHeaderViewModel(0);
  sub_100003928();
  if (*(v7 + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 32));
    if (v9 >= 2)
    {
      return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_10019CE54()
{
  sub_10000C778();
  v135 = v4;
  v136 = v3;
  v6 = v5;
  v130 = v7;
  sub_1000038D8();
  type metadata accessor for UUID();
  sub_1000037C4();
  v133 = v9;
  v134 = v8;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v132 = v11 - v10;
  v12 = sub_10022C350(&qword_100CA74F8, &qword_100A32528);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000039BC();
  v126 = v14;
  v15 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  v120 = v17;
  v18 = sub_1000038CC();
  v19 = type metadata accessor for WeatherData.WeatherStatisticsState(v18);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_100003848();
  v117 = v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  v118 = &v111 - v23;
  v24 = sub_10022C350(&qword_100CD4D40, &unk_100A7C928);
  sub_100003810(v24);
  sub_100003828();
  __chkstk_darwin(v25);
  sub_1000039BC();
  v123 = v26;
  v27 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  sub_100003810(v27);
  sub_100003828();
  __chkstk_darwin(v28);
  v29 = sub_1000115E8();
  v125 = type metadata accessor for NewsDataModel(v29);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_100003848();
  v119 = v31;
  sub_10000386C();
  __chkstk_darwin(v32);
  sub_100003878();
  v121 = v33;
  sub_10000386C();
  __chkstk_darwin(v34);
  sub_100003878();
  v122 = v35;
  sub_10000386C();
  __chkstk_darwin(v36);
  sub_100003878();
  v128 = v37;
  sub_10000386C();
  __chkstk_darwin(v38);
  sub_10003BA64();
  v39 = type metadata accessor for PreprocessedWeatherData(0);
  v40 = sub_100003810(v39);
  __chkstk_darwin(v40);
  sub_1000037D8();
  v43 = v42 - v41;
  v124 = type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v44);
  sub_100003848();
  v116 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_100003878();
  v129 = v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  v50 = &v111 - v49;
  v51 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v52);
  sub_100003848();
  v131 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v127 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  v58 = &v111 - v57;
  __chkstk_darwin(v59);
  v61 = &v111 - v60;
  sub_1001A0E7C(v0, &v111 - v60);
  sub_1001A0E7C(v0, v58);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    sub_100019DF0();
    sub_1001A126C(v58, v68);
    goto LABEL_18;
  }

  v62 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
  v63 = *(v62 + 48);
  v114 = v62;
  v64 = *(v62 + 64);
  sub_100014D4C();
  sub_1001A10BC(v58, v50);
  sub_10002307C();
  sub_1001A10BC(&v58[v63], v43);
  sub_100010968();
  sub_1001A10BC(&v58[v64], v1);

  sub_1000864C0(v130, v136, v6);
  v115 = v51;
  if (sub_100024D10(v2, 1, v51) != 1)
  {
    v113 = v43;
    v112 = v6;
    sub_10000496C();
    v69 = v127;
    sub_1001A10BC(v2, v127);
    sub_1000249E4();
    sub_1001A0E7C(v50, v129);
    sub_1000289EC();
    v111 = v1;
    v70 = v128;
    sub_1001A0E7C(v1, v128);
    v71 = v123;
    v72 = v124;
    sub_100882BD0(v123);
    v73 = type metadata accessor for WeatherStatisticsModel();
    v74 = sub_100024D10(v71, 1, v73);
    sub_1000180EC(v71, &qword_100CD4D40, &unk_100A7C928);
    if (v74 == 1)
    {
      v75 = v120;
      sub_1001A0D3C();
      if (sub_100024D10(v75, 1, v72) == 1)
      {
        sub_1000180EC(v75, &qword_100CA3898, &qword_100A314D0);
      }

      else
      {
        sub_10003728C();
        v77 = v117;
        sub_1001A0E7C(v75 + v76, v117);
        sub_10001F620();
        v123 = v78;
        sub_1001A126C(v75, v79);
        v80 = v118;
        sub_1001A10BC(v77, v118);
        v81 = v129;
        v82 = *(v129 + 1);
        v120 = *v129;
        v83 = v116;
        sub_1005C1F54(&v129[v72[5]], v116 + v72[5], &qword_100CAA9F0, qword_100A44F50);
        v84 = v72[6];
        type metadata accessor for WeatherDataModel();
        sub_1000037E8();
        (*(v85 + 16))(v83 + v84, &v81[v84]);
        v86 = v80;
        v70 = v128;
        sub_1001A10BC(v86, v83 + v72[8]);
        sub_100025378();
        sub_1001A0E7C(&v81[v87], v83 + v87);
        sub_1005C1F54(&v81[v72[9]], v83 + v72[9], &qword_100CA75C8, &unk_100A325F0);

        sub_1001A126C(v81, v123);
        *v83 = v120;
        v83[1] = v82;
        sub_100014D4C();
        v88 = v83;
        v69 = v127;
        sub_1001A10BC(v88, v81);
      }
    }

    v89 = v126;
    sub_1001A8724();
    sub_1001A126C(v69, type metadata accessor for LocationWeatherDataState);
    sub_10001F620();
    sub_1001A126C(v50, v90);
    sub_1001A126C(v61, type metadata accessor for LocationWeatherDataState);
    v91 = v125;
    if (sub_100024D10(v89, 1, v125) == 1)
    {
      sub_10001CB98();
      sub_1001A126C(v111, v92);
      sub_1000180EC(v89, &qword_100CA74F8, &qword_100A32528);
    }

    else
    {
      sub_100010968();
      v93 = v122;
      sub_1001A10BC(v89, v122);
      sub_1000289EC();
      v94 = v121;
      sub_1001A0E7C(v93, v121);
      sub_100003B2C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_10001CB98();
        sub_1001A126C(v94, v95);
        sub_100010968();
        sub_1001A10BC(v111, v119);
        sub_100003B2C();
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_10002CA04();
          sub_1001A126C(v70, v102);
          v103 = sub_100003B2C();
          sub_1001A126C(v103, v104);
          sub_100010968();
          v105 = sub_10002C598();
          sub_1001A10BC(v105, v106);
          goto LABEL_17;
        }

        sub_10002CA04();
        v96 = v93;
        v98 = v97;
      }

      else
      {
        sub_10002CA04();
        sub_1001A126C(v93, v99);
        v96 = v111;
        v98 = v91;
      }

      sub_1001A126C(v96, v98);
      v100 = sub_100003B2C();
      sub_1001A126C(v100, v101);
    }

LABEL_17:
    v107 = *(v114 + 48);
    v108 = *(v114 + 64);
    sub_100014D4C();
    sub_1001A10BC(v129, v61);
    sub_10002307C();
    sub_1001A10BC(v113, &v61[v107]);
    sub_100010968();
    sub_1001A10BC(v70, &v61[v108]);
    swift_storeEnumTagMultiPayload();
    v6 = v112;
    goto LABEL_18;
  }

  sub_10001CB98();
  sub_1001A126C(v1, v65);
  sub_100008D68();
  sub_1001A126C(v43, v66);
  sub_10001F620();
  sub_1001A126C(v50, v67);
  sub_1000180EC(v2, &qword_100CA37B0, &unk_100A2D740);
LABEL_18:
  sub_100006610();
  sub_1001A0E7C(v61, v131);

  swift_isUniquelyReferenced_nonNull_native();
  v137 = v6;
  sub_1002391FC();

  v109 = v132;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v133 + 8))(v109, v134);
  sub_100019DF0();
  sub_1001A126C(v61, v110);
  sub_10000536C();
}

void sub_10019D828(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003B38();
  type metadata accessor for LocationComponentHeaderViewModel(v8);
  sub_100003928();
  if (*(v10 + 84) == a3)
  {

    sub_10001B350(v5, v4, v4, v9);
  }

  else
  {
    *(v5 + *(a4 + 32)) = v4 + 1;
  }
}

void sub_10019D8D4(uint64_t a1, void (*a2)(char *, char *, uint64_t), char *a3)
{
  v167 = a2;
  v159 = a3;
  v150 = type metadata accessor for VisibleLocationFailedLoadingEvent();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v148 = &v143 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for VisibleLocationFinishedLoadingEvent.EndReason();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v155 = &v143 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VisibleLocationFinishedLoadingEvent();
  v157 = *(v5 - 8);
  v158 = v5;
  __chkstk_darwin(v5);
  v156 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v164 = *(v7 - 8);
  v165 = v7;
  __chkstk_darwin(v7);
  v147 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v163 = &v143 - v10;
  __chkstk_darwin(v11);
  v160 = &v143 - v12;
  __chkstk_darwin(v13);
  v162 = &v143 - v14;
  __chkstk_darwin(v15);
  v152 = &v143 - v16;
  __chkstk_darwin(v17);
  v151 = &v143 - v18;
  __chkstk_darwin(v19);
  v21 = &v143 - v20;
  __chkstk_darwin(v22);
  v24 = &v143 - v23;
  __chkstk_darwin(v25);
  v27 = &v143 - v26;
  __chkstk_darwin(v28);
  v30 = &v143 - v29;
  v31 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v31 - 8);
  v33 = &v143 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v143 - v35;
  __chkstk_darwin(v37);
  v161 = &v143 - v38;
  __chkstk_darwin(v39);
  v41 = &v143 - v40;
  v42 = type metadata accessor for WeatherDataAction(0);
  __chkstk_darwin(v42);
  v44 = &v143 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051168();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v145 = v27;
    v146 = v30;
    v63 = *v44;
    v62 = *(v44 + 8);
    v64 = sub_10022C350(&qword_100CAC0C8, &unk_100A3AFC0);
    v65 = v64[12];
    v66 = v64[16];
    v162 = v64[20];
    v163 = v66;
    v67 = sub_10019ECB0(v167);
    v69 = v166;
    if (v68)
    {
      if (v63 == v67 && v68 == v62)
      {
      }

      else
      {
        v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v71 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v77 = OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_startLoadTime;
      swift_beginAccess();
      sub_100095588();
      v78 = v165;
      if (sub_100024D10(v36, 1, v165) != 1)
      {
        v150 = v77;
        v160 = v65;
        v90 = v164;
        v91 = v146;
        v164[4](v146, v36, v78);
        sub_10019F754(v63, v62, v167);
        if (v92)
        {
          (v90[1])(v91, v78);
        }

        else
        {
          v108 = v90[2];
          v109 = v145;
          v108(v145, v159, v78);
          v149 = OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_logger;
          v108(v24, v146, v78);
          v159 = (v90 + 2);
          v167 = v108;
          v108(v21, v109, v78);

          v110 = Logger.logObject.getter();
          v111 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            v113 = swift_slowAlloc();
            v168[0] = v113;
            *v112 = 141558531;
            *(v112 + 4) = 1752392040;
            *(v112 + 12) = 2081;
            v114 = sub_100078694(v63, v62, v168);

            *(v112 + 14) = v114;
            *(v112 + 22) = 2048;
            Date.distance(to:)();
            v116 = v115;
            v117 = v164[1];
            v118 = v21;
            v119 = v165;
            (v117)(v118, v165);
            v164 = v117;
            (v117)(v24, v119);
            *(v112 + 24) = v116;
            _os_log_impl(&_mh_execute_header, v110, v111, "%{private,mask.hash}s finished loading while displayed. User witnessed %fs of loading.", v112, 0x20u);
            sub_100006F14(v113);

            v69 = v166;
          }

          else
          {

            v132 = v164[1];
            v133 = v21;
            v134 = v165;
            (v132)(v133, v165);
            v164 = v132;
            (v132)(v24, v134);
          }

          v135 = v146;
          v136 = v165;
          v137 = v167;
          v167(v151, v146, v165);
          v138 = v145;
          v137(v152, v145, v136);
          (*(v153 + 104))(v155, enum case for VisibleLocationFinishedLoadingEvent.EndReason.loadCompleted(_:), v154);
          v139 = v156;
          VisibleLocationFinishedLoadingEvent.init(location:startTime:endTime:endReason:loadingBeganDuringObservation:)();
          v140 = v161;
          sub_10001B350(v161, 1, 1, v136);
          v141 = v150;
          swift_beginAccess();
          sub_10019F6D8(v140, v69 + v141);
          swift_endAccess();
          sub_1000161C0((v69 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_backend), *(v69 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_backend + 24));
          dispatch thunk of WeatherDataVisibleLocationLoadingTelemetryBackend.record(event:)();
          (*(v157 + 8))(v139, v158);
          v142 = v164;
          (v164)(v138, v136);
          (v142)(v135, v136);
        }

        sub_10004FF18(&v162[v44], type metadata accessor for NewsDataModel);
        sub_10004FF18(&v163[v44], type metadata accessor for PreprocessedWeatherData);
        v72 = type metadata accessor for WeatherData;
        v73 = &v160[v44];
        goto LABEL_56;
      }

      sub_1000180EC(v36, &unk_100CB2CF0, &unk_100A2D7F0);
      goto LABEL_32;
    }

LABEL_24:

LABEL_32:
    sub_10004FF18(&v162[v44], type metadata accessor for NewsDataModel);
    sub_10004FF18(&v163[v44], type metadata accessor for PreprocessedWeatherData);
    v72 = type metadata accessor for WeatherData;
    v73 = &v65[v44];
    goto LABEL_56;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v47 = *v44;
      v46 = *(v44 + 8);
      v48 = sub_10019ECB0(v167);
      if (v49)
      {
        if (v47 == v48 && v49 == v46)
        {

          v52 = v166;
        }

        else
        {
          v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v52 = v166;
          if ((v51 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        v79 = OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_startLoadTime;
        swift_beginAccess();
        sub_100095588();
        v80 = v165;
        if (sub_100024D10(v41, 1, v165) == 1)
        {
          sub_1000180EC(v41, &unk_100CB2CF0, &unk_100A2D7F0);
          v81 = v161;
          v164[2](v161, v159, v80);
          sub_10001B350(v81, 0, 1, v80);
          swift_beginAccess();
          sub_10019F6D8(v81, v52 + v79);
          swift_endAccess();
          *(v52 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_loadBeganDuringObservation) = 0;

          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v168[0] = v85;
            *v84 = 141558275;
            *(v84 + 4) = 1752392040;
            *(v84 + 12) = 2081;
            v86 = sub_100078694(v47, v46, v168);

            *(v84 + 14) = v86;
            _os_log_impl(&_mh_execute_header, v82, v83, "%{private,mask.hash}s started loading while displayed.", v84, 0x16u);
            sub_100006F14(v85);
          }

          else
          {
          }

          return;
        }

        v76 = v41;
LABEL_44:
        sub_1000180EC(v76, &unk_100CB2CF0, &unk_100A2D7F0);
        return;
      }

LABEL_40:

      return;
    }

    v72 = type metadata accessor for WeatherDataAction;
    v73 = v44;
LABEL_56:
    sub_10004FF18(v73, v72);
    return;
  }

  v54 = *v44;
  v53 = *(v44 + 8);
  v56 = *(v44 + 32);
  v55 = *(v44 + 40);
  sub_10031EF8C(*(v44 + 16), *(v44 + 24));
  v57 = sub_10019ECB0(v167);
  if (!v58)
  {
LABEL_39:

    goto LABEL_40;
  }

  if (v54 == v57 && v58 == v53)
  {

    v61 = v163;
  }

  else
  {
    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v61 = v163;
    if ((v60 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v74 = OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_startLoadTime;
  swift_beginAccess();
  sub_100095588();
  v75 = v165;
  if (sub_100024D10(v33, 1, v165) == 1)
  {

    v76 = v33;
    goto LABEL_44;
  }

  v146 = v56;
  v145 = v74;
  v87 = v164;
  v88 = v162;
  v164[4](v162, v33, v75);
  sub_10019F754(v54, v53, v167);
  if (v89)
  {
    (v87[1])(v88, v75);
    goto LABEL_39;
  }

  v144 = v55;
  v93 = v87[2];
  v94 = v160;
  (v93)(v160, v159, v75);
  v143 = OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_logger;
  (v93)(v61, v88, v75);
  v95 = v147;
  v167 = (v87 + 2);
  v159 = v93;
  (v93)(v147, v94, v75);
  v96 = v144;

  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = v95;
    v100 = swift_slowAlloc();
    v168[0] = swift_slowAlloc();
    *v100 = 141558787;
    *(v100 + 4) = 1752392040;
    *(v100 + 12) = 2081;
    v101 = sub_100078694(v54, v53, v168);
    v102 = v98;
    v103 = v101;

    *(v100 + 14) = v103;
    *(v100 + 22) = 2048;
    v104 = v163;
    Date.distance(to:)();
    v106 = v105;
    v107 = v87[1];
    v143 = (v87 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v107)(v99, v75);
    v164 = v107;
    (v107)(v104, v75);
    *(v100 + 24) = v106;
    *(v100 + 32) = 2080;
    *(v100 + 34) = sub_100078694(v146, v96, v168);
    _os_log_impl(&_mh_execute_header, v97, v102, "%{private,mask.hash}s failed loading while displayed. User witnessed %fs of loading. Error=%s", v100, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v120 = v87[1];
    v143 = (v87 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v120)(v95, v75);
    v164 = v120;
    (v120)(v163, v75);
  }

  v121 = v151;
  v122 = v159;
  (v159)(v151, v162, v75);
  v123 = v152;
  (v122)(v152, v160, v75);
  (*(v153 + 104))(v155, enum case for VisibleLocationFinishedLoadingEvent.EndReason.loadFailed(_:), v154);
  v124 = v166;
  v125 = v156;
  VisibleLocationFinishedLoadingEvent.init(location:startTime:endTime:endReason:loadingBeganDuringObservation:)();
  v126 = (v124 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_backend);
  sub_1000161C0((v124 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_backend), *(v124 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_backend + 24));
  dispatch thunk of WeatherDataVisibleLocationLoadingTelemetryBackend.record(event:)();
  (v122)(v121, v162, v75);
  (v122)(v123, v160, v75);
  v127 = v148;
  VisibleLocationFailedLoadingEvent.init(location:startTime:endTime:errorDescription:)();
  v128 = v161;
  sub_10001B350(v161, 1, 1, v75);
  v129 = v145;
  v130 = v166;
  swift_beginAccess();
  sub_10019F6D8(v128, &v129[v130]);
  swift_endAccess();
  sub_1000161C0(v126, v126[3]);
  dispatch thunk of WeatherDataVisibleLocationLoadingTelemetryBackend.record(event:)();
  (*(v149 + 8))(v127, v150);
  (*(v157 + 8))(v125, v158);
  v131 = v164;
  (v164)(v160, v75);
  (v131)(v162, v75);
}

uint64_t sub_10019EBF8@<X0>(uint64_t a1@<X8>)
{
  sub_1001993DC();
  KeyPath = swift_getKeyPath();
  v3 = type metadata accessor for HourlyForecastComponentView(0);
  *(a1 + *(v3 + 28)) = KeyPath;
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  swift_storeEnumTagMultiPayload();
  v4 = a1 + *(v3 + 20);
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  return Text.Measurements.init()();
}

uint64_t sub_10019ECB0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA65B8, &unk_100A313D0);
  __chkstk_darwin(v2 - 8);
  v50 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v49 = &v45 - v5;
  v46 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v46);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v7);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocationPreviewViewState(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CA65E0, &unk_100A31400);
  __chkstk_darwin(v15 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v45 - v19;
  v21 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  __chkstk_darwin(v21 - 8);
  v23 = &v45 - v22;
  v24 = type metadata accessor for PreviewLocation(0);
  __chkstk_darwin(v24);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10019F48C();
  if (sub_100024D10(v23, 1, v24) == 1)
  {
    sub_1000180EC(v23, &qword_100CA65C8, &unk_100A31670);
    sub_100051168();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_100051BBC();
      sub_100095588();
      v27 = type metadata accessor for ModalViewState.MapViewModal(0);
      if (sub_100024D10(v17, 1, v27) != 1)
      {
        sub_1000501CC();
        sub_1006E6430();
        v29 = v40;
        sub_10004FF18(v11, type metadata accessor for LocationPreviewViewState);
        sub_1000180EC(v20, &qword_100CA65E0, &unk_100A31400);
        return v29;
      }

      sub_1000180EC(v20, &qword_100CA65E0, &unk_100A31400);
      sub_1000180EC(v17, &qword_100CA65E0, &unk_100A31400);
    }

    else
    {
      sub_10004FF18(v14, type metadata accessor for ModalViewState);
    }

    v32 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
    v33 = v7[10];
    v34 = (v32 + v33 + *(type metadata accessor for WeatherMapPresentationState(0) + 28));
    if (v34[1])
    {
      v29 = *v34;

      return v29;
    }

    v35 = v48;
    sub_100051168();
    v36 = v47;
    sub_100051168();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10004FF18(v35, type metadata accessor for ViewState);
      sub_10004FF18(v36, type metadata accessor for ViewState.SecondaryViewState);
      v37 = 1;
      v39 = v49;
      v38 = v50;
LABEL_20:
      active = type metadata accessor for LocationViewerActiveLocationState(0);
      sub_10001B350(v39, v37, 1, active);
      sub_100095588();
      if (sub_100024D10(v38, 1, active) == 1)
      {
        sub_1000180EC(v39, &qword_100CA65B8, &unk_100A313D0);

        sub_1000180EC(v38, &qword_100CA65B8, &unk_100A313D0);
        return 0;
      }

      v29 = sub_1000E0924();

      sub_1000180EC(v39, &qword_100CA65B8, &unk_100A313D0);
      v30 = type metadata accessor for LocationViewerActiveLocationState;
      v31 = v38;
      goto LABEL_6;
    }

    v41 = *v36;
    v39 = v49;
    if (*(v35 + v7[9] + 8) == 1)
    {
      v42 = [objc_opt_self() currentDevice];
      [v42 userInterfaceIdiom];

      LOBYTE(v42) = *(v35 + v7[7]);
      sub_10004FF18(v35, type metadata accessor for ViewState);
      v38 = v50;
      if ((v42 & 1) == 0)
      {

        goto LABEL_19;
      }
    }

    else
    {
      sub_10004FF18(v35, type metadata accessor for ViewState);
      v38 = v50;
    }

    if (v41)
    {
      sub_100051168();
      v37 = 0;
      goto LABEL_20;
    }

LABEL_19:
    v37 = 1;
    goto LABEL_20;
  }

  sub_1000501CC();
  sub_1006E6430();
  v29 = v28;
  v30 = type metadata accessor for PreviewLocation;
  v31 = v26;
LABEL_6:
  sub_10004FF18(v31, v30);
  return v29;
}