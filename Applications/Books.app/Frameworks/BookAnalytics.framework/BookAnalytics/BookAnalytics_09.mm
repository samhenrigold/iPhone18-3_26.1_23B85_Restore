void __swiftcall AppData.init(appVersion:appBundleVersion:jsAppVersion:appBuildNumber:)(BookAnalytics::AppData *__return_ptr retstr, Swift::String appVersion, Swift::Int64 appBundleVersion, Swift::String jsAppVersion, Swift::String appBuildNumber)
{
  retstr->appVersion = appVersion;
  retstr->appBundleVersion = appBundleVersion;
  retstr->jsAppVersion = jsAppVersion;
  retstr->appBuildNumber = appBuildNumber;
}

unint64_t sub_D8F94()
{
  v1 = 0x6973726556707061;
  v2 = 0x726556707041736ALL;
  if (*v0 != 2)
  {
    v2 = 0x646C697542707061;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_D902C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_D98E8(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_D9054(uint64_t a1)
{
  v2 = sub_D96BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D9090(uint64_t a1)
{
  v2 = sub_D96BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_285408, &qword_1F6578);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  v11[0] = v1[6];
  sub_48B8(a1, a1[3]);
  sub_D96BC();
  sub_1E1E00();
  v15 = 0;
  v9 = v11[5];
  sub_1E1CB0();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v14 = 1;
  sub_1E1D10();
  v13 = 2;
  sub_1E1CB0();
  v12 = 3;
  sub_1E1CB0();
  return (*(v4 + 8))(v6, v3);
}

void AppData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_285418, &qword_1F6580);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v57 - v7;
  sub_48B8(a1, a1[3]);
  sub_D96BC();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v64 = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    v19 = v16;
    v63 = 1;
    v59 = sub_1E1C40();
    v62 = 2;
    v20 = sub_1E1BE0();
    v60 = v28;
    v58 = v20;
    v61 = 3;
    v29 = sub_1E1BE0();
    v31 = v30;
    v32 = *(v6 + 8);
    v57 = v29;
    v32(v8, v5);
    *a2 = v19;
    a2[1] = v18;
    v33 = v58;
    a2[2] = v59;
    a2[3] = v33;
    v34 = v60;
    v35 = v57;
    a2[4] = v60;
    a2[5] = v35;
    a2[6] = v31;

    sub_4E48(a1, v36, v37, v38, v39, v40, v41, v42);
    v31, v43, v44, v45, v46, v47, v48, v49;
    v34, v50, v51, v52, v53, v54, v55, v56;
    v18, v21, v22, v23, v24, v25, v26, v27;
  }
}

uint64_t _s13BookAnalytics7AppDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v8)
    {
      return 0;
    }
  }

  else
  {
    v12 = sub_1E1D30();
    result = 0;
    if ((v12 & 1) == 0 || v2 != v8)
    {
      return result;
    }
  }

  if ((v3 != v7 || v4 != v10) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v5 == v9 && v6 == v11)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_D96BC()
{
  result = qword_285410;
  if (!qword_285410)
  {
    result = swift_getWitnessTable(aO_0, &type metadata for AppData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285410);
  }

  return result;
}

unint64_t sub_D9714()
{
  result = qword_285420;
  if (!qword_285420)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppData, &type metadata for AppData, v0, v1);
    atomic_store(result, &qword_285420);
  }

  return result;
}

unint64_t sub_D976C()
{
  result = qword_285428;
  if (!qword_285428)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppData, &type metadata for AppData, v0, v1);
    atomic_store(result, &qword_285428);
  }

  return result;
}

unint64_t sub_D97E4()
{
  result = qword_285430;
  if (!qword_285430)
  {
    result = swift_getWitnessTable(aO_1, &type metadata for AppData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285430);
  }

  return result;
}

unint64_t sub_D983C()
{
  result = qword_285438;
  if (!qword_285438)
  {
    result = swift_getWitnessTable(aMo, &type metadata for AppData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285438);
  }

  return result;
}

unint64_t sub_D9894()
{
  result = qword_285440;
  if (!qword_285440)
  {
    result = swift_getWitnessTable(aUo, &type metadata for AppData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285440);
  }

  return result;
}

uint64_t sub_D98E8(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000215E80;
    if (a1 == 0xD000000000000010 && 0x8000000000215E80 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0xEC0000006E6F6973;
      if (a1 == 0x726556707041736ALL && a2 == 0xEC0000006E6F6973 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x646C697542707061 && a2 == 0xEE007265626D754ELL)
      {
        0xEE007265626D754ELL, 0xEE007265626D754ELL, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v14 = sub_1E1D30();
        a2, v15, v16, v17, v18, v19, v20, v21;
        if (v14)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

void sub_D9A88(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x6974634172657375 && a2 == 0xEA00000000006E6FLL)
  {
    a2, a2, a1, a3, a4, a5, a6, a7;
    v19 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a8 = v19 & 1;
}

uint64_t sub_D9B18(uint64_t a1)
{
  v2 = sub_D9F6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D9B54(uint64_t a1)
{
  v2 = sub_D9F6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NotificationOptInActionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_285448, &qword_1F67C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_D9F6C();
  sub_1E1E00();
  v10 = v7;
  sub_D9FC0();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

void NotificationOptInActionData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_285460, &qword_1F67C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_D9F6C();
  sub_1E1DF0();
  if (!v2)
  {
    sub_DA014();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t _s13BookAnalytics27NotificationOptInActionDataV2eeoiySbAC_ACtFZ_0(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE500000000000000;
  v10 = 0x6E4974706FLL;
  if (v8 != 1)
  {
    v10 = 0x74754F74706FLL;
    v9 = 0xE600000000000000;
  }

  if (*a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  v13 = 0xE500000000000000;
  v14 = 0x6E4974706FLL;
  if (*a2 != 1)
  {
    v14 = 0x74754F74706FLL;
    v13 = 0xE600000000000000;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

unint64_t sub_D9F6C()
{
  result = qword_285450;
  if (!qword_285450)
  {
    result = swift_getWitnessTable(byte_1F69A0, &type metadata for NotificationOptInActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285450);
  }

  return result;
}

unint64_t sub_D9FC0()
{
  result = qword_285458;
  if (!qword_285458)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserAction, &type metadata for UserAction, v0, v1);
    atomic_store(result, &qword_285458);
  }

  return result;
}

unint64_t sub_DA014()
{
  result = qword_285468;
  if (!qword_285468)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserAction, &type metadata for UserAction, v0, v1);
    atomic_store(result, &qword_285468);
  }

  return result;
}

unint64_t sub_DA094()
{
  result = qword_285470;
  if (!qword_285470)
  {
    result = swift_getWitnessTable(byte_1F6978, &type metadata for NotificationOptInActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285470);
  }

  return result;
}

unint64_t sub_DA0EC()
{
  result = qword_285478;
  if (!qword_285478)
  {
    result = swift_getWitnessTable(a9m, &type metadata for NotificationOptInActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285478);
  }

  return result;
}

unint64_t sub_DA144()
{
  result = qword_285480;
  if (!qword_285480)
  {
    result = swift_getWitnessTable(aM_5, &type metadata for NotificationOptInActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285480);
  }

  return result;
}

BookAnalytics::RedownloadFailureReason_optional __swiftcall RedownloadFailureReason.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260888;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 3;
  if (v5 < 3)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t RedownloadFailureReason.rawValue.getter()
{
  v1 = 0x436572756C696166;
  if (*v0 != 1)
  {
    v1 = 0x6F436572756C6166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t _s13BookAnalytics18RedownloadFailDataV2eeoiySbAC_ACtFZ_0(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0x436572756C696166;
  v10 = 0xEC0000003165646FLL;
  if (v8 != 1)
  {
    v9 = 0x6F436572756C6166;
    v10 = 0xEB00000000326564;
  }

  if (*a1)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  v13 = 0x436572756C696166;
  v14 = 0xEC0000003165646FLL;
  if (*a2 != 1)
  {
    v13 = 0x6F436572756C6166;
    v14 = 0xEB00000000326564;
  }

  if (*a2)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

unint64_t sub_DA388()
{
  result = qword_285488;
  if (!qword_285488)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RedownloadFailureReason, &type metadata for RedownloadFailureReason, v0, v1);
    atomic_store(result, &qword_285488);
  }

  return result;
}

Swift::Int sub_DA3DC()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xEC0000003165646FLL;
  if (v1 != 1)
  {
    v2 = 0xEB00000000326564;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_DA490(uint64_t a1)
{
  v2 = 0xEC0000003165646FLL;
  if (*v1 != 1)
  {
    v2 = 0xEB00000000326564;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_DA530(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xEC0000003165646FLL;
  if (v2 != 1)
  {
    v3 = 0xEB00000000326564;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_DA5EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEC0000003165646FLL;
  v5 = 0x436572756C696166;
  if (v2 != 1)
  {
    v5 = 0x6F436572756C6166;
    v4 = 0xEB00000000326564;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_DA71C()
{
  result = qword_285490;
  if (!qword_285490)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RedownloadFailureReason, &type metadata for RedownloadFailureReason, v0, v1);
    atomic_store(result, &qword_285490);
  }

  return result;
}

uint64_t DragDropEvent.dragDropData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_2854C8, &qword_1F6B18);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DragDropEvent.dragDropData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_2854C8, &qword_1F6B18);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DragDropEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DragDropEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DragDropEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DragDropEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DragDropEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_2854C8, &qword_1F6B18);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for DragDropEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t DragDropEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DragDropEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DragDropEvent.Model.init(dragDropData:eventData:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for DragDropEvent.Model(0) + 20);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_DAC90()
{
  if (*v0)
  {
    return 0x746144746E657665;
  }

  else
  {
    return 0x706F724467617264;
  }
}

void sub_DACD8(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0xEC00000061746144;
  v13 = a1 == 0x706F724467617264 && a2 == 0xEC00000061746144;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v14 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
    v14 = 1;
  }

  else
  {
    v15 = sub_1E1D30();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a9 = v14;
}

uint64_t sub_DADC0(uint64_t a1)
{
  v2 = sub_DB008();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_DADFC(uint64_t a1)
{
  v2 = sub_DB008();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DragDropEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_2854D0, &qword_1F6B20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-v7];
  sub_48B8(a1, a1[3]);
  sub_DB008();
  sub_1E1E00();
  v18 = *v3;
  v17[7] = 0;
  sub_DB05C();

  sub_1E1CF0();
  v18, v9, v10, v11, v12, v13, v14, v15;
  if (!v2)
  {
    type metadata accessor for DragDropEvent.Model(0);
    v17[6] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_DB008()
{
  result = qword_2854D8;
  if (!qword_2854D8)
  {
    result = swift_getWitnessTable(byte_1F6CD8, &type metadata for DragDropEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2854D8);
  }

  return result;
}

unint64_t sub_DB05C()
{
  result = qword_2854E0;
  if (!qword_2854E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragDropData, &type metadata for DragDropData, v0, v1);
    atomic_store(result, &qword_2854E0);
  }

  return result;
}

void DragDropEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v35 = sub_1E1150();
  v32 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_3D68(&qword_2854E8, &qword_1F6B28);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v7 = &v30 - v6;
  v8 = type metadata accessor for DragDropEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_DB008();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v31 = v8;
    v18 = v10;
    v20 = v34;
    v19 = v35;
    v38 = 0;
    sub_DB3CC();
    v21 = v36;
    sub_1E1C20();
    v30 = v18;
    *v18 = v39;
    v37 = 1;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v7, v21);
    v22 = v30;
    (*(v32 + 32))(&v30[*(v31 + 20)], v5, v19);
    sub_DB420(v22, v33);
    sub_4E48(a1, v23, v24, v25, v26, v27, v28, v29);
    sub_DB484(v22);
  }
}

unint64_t sub_DB3CC()
{
  result = qword_2854F0;
  if (!qword_2854F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragDropData, &type metadata for DragDropData, v0, v1);
    atomic_store(result, &qword_2854F0);
  }

  return result;
}

uint64_t sub_DB420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragDropEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DB484(uint64_t a1)
{
  v2 = type metadata accessor for DragDropEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DB580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_2854C8, &qword_1F6B18);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_DB66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_2854C8, &qword_1F6B18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_DB788(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_2854C8, &qword_1F6B18);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_DB89C(uint64_t a1)
{
  sub_DB920(319);
  if (v1 <= 0x3F)
  {
    sub_5684(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_DB920(uint64_t a1)
{
  if (!qword_285560)
  {
    sub_DB3CC();
    sub_DB05C();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_285560);
    }
  }
}

uint64_t sub_DB99C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_DBA5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_DBB00(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_DBB90()
{
  result = qword_285620;
  if (!qword_285620)
  {
    result = swift_getWitnessTable(byte_1F6CB0, &type metadata for DragDropEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_285620);
  }

  return result;
}

unint64_t sub_DBBE8()
{
  result = qword_285628;
  if (!qword_285628)
  {
    result = swift_getWitnessTable(byte_1F6C20, &type metadata for DragDropEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_285628);
  }

  return result;
}

unint64_t sub_DBC40()
{
  result = qword_285630;
  if (!qword_285630)
  {
    result = swift_getWitnessTable(byte_1F6C48, &type metadata for DragDropEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_285630);
  }

  return result;
}

BookAnalytics::ContentSubType_optional __swiftcall ContentSubType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2608F0;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 4;
  if (v5 < 4)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t ContentSubType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x79616C6465786966;
  if (*v0 != 2)
  {
    v2 = 0x6F69746964617274;
  }

  if (*v0)
  {
    v1 = 7630194;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_DBD84()
{
  result = qword_285638;
  if (!qword_285638)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentSubType, &type metadata for ContentSubType, v0, v1);
    atomic_store(result, &qword_285638);
  }

  return result;
}

Swift::Int sub_DBDD8()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE700000000000000;
  v3 = 0xEB0000000074756FLL;
  if (v1 != 2)
  {
    v3 = 0xEB000000006C616ELL;
  }

  if (v1)
  {
    v2 = 0xE300000000000000;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_DBEA4(uint64_t a1)
{
  v2 = 0xE700000000000000;
  v3 = 0xEB0000000074756FLL;
  if (*v1 != 2)
  {
    v3 = 0xEB000000006C616ELL;
  }

  if (*v1)
  {
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1E17D0();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

Swift::Int sub_DBF5C(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xEB0000000074756FLL;
  if (v2 != 2)
  {
    v4 = 0xEB000000006C616ELL;
  }

  if (v2)
  {
    v3 = 0xE300000000000000;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  sub_1E17D0();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1E1DE0();
}

void sub_DC030(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEB0000000074756FLL;
  v5 = 0x79616C6465786966;
  if (*v1 != 2)
  {
    v5 = 0x6F69746964617274;
    v4 = 0xEB000000006C616ELL;
  }

  if (*v1)
  {
    v3 = 7630194;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_DC178()
{
  result = qword_285640;
  if (!qword_285640)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentSubType, &type metadata for ContentSubType, v0, v1);
    atomic_store(result, &qword_285640);
  }

  return result;
}

BookAnalytics::DefaultReadingGoal_optional __swiftcall DefaultReadingGoal.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260970;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 3;
  if (v5 < 3)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t DefaultReadingGoal.rawValue.getter()
{
  v1 = 89;
  if (*v0 != 1)
  {
    v1 = 78;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 16718;
  }
}

uint64_t sub_DC260(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 89;
  if (v8 != 1)
  {
    v9 = 78;
  }

  if (*a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 16718;
  }

  if (v8)
  {
    v11 = 0xE100000000000000;
  }

  else
  {
    v11 = 0xE200000000000000;
  }

  v12 = 89;
  if (*a2 != 1)
  {
    v12 = 78;
  }

  if (*a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = &loc_414C + 2;
  }

  if (*a2)
  {
    v14 = 0xE100000000000000;
  }

  else
  {
    v14 = 0xE200000000000000;
  }

  if (v10 == v13 && v11 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1E1D30();
  }

  v11, a2, v13, a4, a5, a6, a7, a8;
  v14, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

unint64_t sub_DC330()
{
  result = qword_285648;
  if (!qword_285648)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultReadingGoal, &type metadata for DefaultReadingGoal, v0, v1);
    atomic_store(result, &qword_285648);
  }

  return result;
}

Swift::Int sub_DC384()
{
  v1 = *v0;
  sub_1E1DC0();
  if (v1)
  {
    v2 = 0xE100000000000000;
  }

  else
  {
    v2 = 0xE200000000000000;
  }

  sub_1E17D0();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1E1DE0();
}

void sub_DC404(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE100000000000000;
  }

  else
  {
    v2 = 0xE200000000000000;
  }

  sub_1E17D0();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_DC470(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  if (v2)
  {
    v3 = 0xE100000000000000;
  }

  else
  {
    v3 = 0xE200000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_DC4F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 89;
  if (v2 != 1)
  {
    v4 = 78;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 16718;
  }

  if (!v5)
  {
    v3 = 0xE100000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_DC5F4()
{
  result = qword_285650;
  if (!qword_285650)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultReadingGoal, &type metadata for DefaultReadingGoal, v0, v1);
    atomic_store(result, &qword_285650);
  }

  return result;
}

void sub_DC688(char *a1@<X8>)
{
  type metadata accessor for NetworkReachability();
  inited = swift_initStackObject();
  inited[1].super.isa = 0;
  *&address.sa_data[6] = 0;
  *&address.sa_len = 528;
  inited[1].super.isa = SCNetworkReachabilityCreateWithAddress(0, &address);
  sub_11A444(&v564);
  if (!v564)
  {
    inited, v3, v4, v5, v6, v7, v8, v9;
    v10 = 13;
    goto LABEL_21;
  }

  if (v564 != 1)
  {
    sub_4C270();
    v11 = sub_1E19E0();
    v12 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v11];

    *&address.sa_len = 0;
    v13 = [v12 getCurrentDataServiceDescriptorSync:&address];
    v14 = *&address.sa_len;
    if (v13)
    {
      v15 = v13;
      *&address.sa_len = 0;
      v16 = v14;
      v17 = [v12 getCurrentRat:v15 error:&address];
      v18 = *&address.sa_len;
      if (v17)
      {
        v19 = v17;
        v20 = sub_1E1780();
        v22 = v21;
        v23 = v18;

        v24 = sub_1E1780();
        v32 = v25;
        if (v24 == v20 && v25 == v22)
        {
          inited, v25, v26, v27, v28, v29, v30, v31;

          v32, v33, v34, v35, v36, v37, v38, v39;
LABEL_20:
          v22, v40, v41, v42, v43, v44, v45, v46;
          v10 = 1;
          goto LABEL_21;
        }

        v86 = sub_1E1D30();
        v32, v87, v88, v89, v90, v91, v92, v93;
        if (v86)
        {
          inited, v94, v95, v96, v97, v98, v99, v100;

          goto LABEL_20;
        }

        v101 = sub_1E1780();
        v109 = v102;
        if (v101 == v20 && v102 == v22)
        {
          inited, v102, v103, v104, v105, v106, v107, v108;

          v109, v110, v111, v112, v113, v114, v115, v116;
LABEL_27:
          v22, v117, v118, v119, v120, v121, v122, v123;
          v10 = 2;
          goto LABEL_21;
        }

        v124 = sub_1E1D30();
        v109, v125, v126, v127, v128, v129, v130, v131;
        if (v124)
        {
          inited, v132, v133, v134, v135, v136, v137, v138;

          goto LABEL_27;
        }

        v139 = sub_1E1780();
        v147 = v140;
        if (v139 == v20 && v140 == v22)
        {
          inited, v140, v141, v142, v143, v144, v145, v146;

          v147, v148, v149, v150, v151, v152, v153, v154;
LABEL_33:
          v22, v155, v156, v157, v158, v159, v160, v161;
          v10 = 3;
          goto LABEL_21;
        }

        v162 = sub_1E1D30();
        v147, v163, v164, v165, v166, v167, v168, v169;
        if (v162)
        {
          inited, v170, v171, v172, v173, v174, v175, v176;

          goto LABEL_33;
        }

        v177 = sub_1E1780();
        v185 = v178;
        if (v177 == v20 && v178 == v22)
        {
          inited, v178, v179, v180, v181, v182, v183, v184;

          v185, v186, v187, v188, v189, v190, v191, v192;
LABEL_39:
          v22, v193, v194, v195, v196, v197, v198, v199;
          v10 = 4;
          goto LABEL_21;
        }

        v200 = sub_1E1D30();
        v185, v201, v202, v203, v204, v205, v206, v207;
        if (v200)
        {
          inited, v208, v209, v210, v211, v212, v213, v214;

          goto LABEL_39;
        }

        v215 = sub_1E1780();
        v223 = v216;
        if (v215 == v20 && v216 == v22)
        {
          inited, v216, v217, v218, v219, v220, v221, v222;

          v223, v224, v225, v226, v227, v228, v229, v230;
LABEL_45:
          v22, v231, v232, v233, v234, v235, v236, v237;
          v10 = 5;
          goto LABEL_21;
        }

        v238 = sub_1E1D30();
        v223, v239, v240, v241, v242, v243, v244, v245;
        if (v238)
        {
          inited, v246, v247, v248, v249, v250, v251, v252;

          goto LABEL_45;
        }

        v253 = sub_1E1780();
        v261 = v254;
        if (v253 == v20 && v254 == v22)
        {
          inited, v254, v255, v256, v257, v258, v259, v260;

          v261, v262, v263, v264, v265, v266, v267, v268;
LABEL_51:
          v22, v269, v270, v271, v272, v273, v274, v275;
          v10 = 6;
          goto LABEL_21;
        }

        v276 = sub_1E1D30();
        v261, v277, v278, v279, v280, v281, v282, v283;
        if (v276)
        {
          inited, v284, v285, v286, v287, v288, v289, v290;

          goto LABEL_51;
        }

        v291 = sub_1E1780();
        v299 = v292;
        if (v291 == v20 && v292 == v22)
        {
          inited, v292, v293, v294, v295, v296, v297, v298;

          v299, v300, v301, v302, v303, v304, v305, v306;
LABEL_57:
          v22, v307, v308, v309, v310, v311, v312, v313;
          v10 = 7;
          goto LABEL_21;
        }

        v314 = sub_1E1D30();
        v299, v315, v316, v317, v318, v319, v320, v321;
        if (v314)
        {
          inited, v322, v323, v324, v325, v326, v327, v328;

          goto LABEL_57;
        }

        v329 = sub_1E1780();
        v337 = v330;
        if (v329 == v20 && v330 == v22)
        {
          inited, v330, v331, v332, v333, v334, v335, v336;

          v337, v338, v339, v340, v341, v342, v343, v344;
LABEL_63:
          v22, v345, v346, v347, v348, v349, v350, v351;
          v10 = 8;
          goto LABEL_21;
        }

        v352 = sub_1E1D30();
        v337, v353, v354, v355, v356, v357, v358, v359;
        if (v352)
        {
          inited, v360, v361, v362, v363, v364, v365, v366;

          goto LABEL_63;
        }

        v367 = sub_1E1780();
        v375 = v368;
        if (v367 == v20 && v368 == v22)
        {
          inited, v368, v369, v370, v371, v372, v373, v374;

          v375, v376, v377, v378, v379, v380, v381, v382;
LABEL_69:
          v22, v383, v384, v385, v386, v387, v388, v389;
          v10 = 9;
          goto LABEL_21;
        }

        v390 = sub_1E1D30();
        v375, v391, v392, v393, v394, v395, v396, v397;
        if (v390)
        {
          inited, v398, v399, v400, v401, v402, v403, v404;

          goto LABEL_69;
        }

        v405 = sub_1E1780();
        v413 = v406;
        if (v405 == v20 && v406 == v22)
        {
          inited, v406, v407, v408, v409, v410, v411, v412;

          v413, v414, v415, v416, v417, v418, v419, v420;
LABEL_75:
          v22, v421, v422, v423, v424, v425, v426, v427;
          v10 = 10;
          goto LABEL_21;
        }

        v428 = sub_1E1D30();
        v413, v429, v430, v431, v432, v433, v434, v435;
        if (v428)
        {
          inited, v436, v437, v438, v439, v440, v441, v442;

          goto LABEL_75;
        }

        v443 = sub_1E1780();
        v451 = v444;
        if (v443 == v20 && v444 == v22)
        {
          inited, v444, v445, v446, v447, v448, v449, v450;

          v451, v452, v453, v454, v455, v456, v457, v458;
LABEL_81:
          v22, v459, v460, v461, v462, v463, v464, v465;
          v10 = 11;
          goto LABEL_21;
        }

        v466 = sub_1E1D30();
        v451, v467, v468, v469, v470, v471, v472, v473;
        if (v466)
        {
          inited, v474, v475, v476, v477, v478, v479, v480;

          goto LABEL_81;
        }

        v481 = sub_1E1780();
        v489 = v482;
        if (v481 == v20 && v482 == v22)
        {
          inited, v482, v483, v484, v485, v486, v487, v488;

          v489, v490, v491, v492, v493, v494, v495, v496;
LABEL_87:
          v22, v497, v498, v499, v500, v501, v502, v503;
          v10 = 14;
          goto LABEL_21;
        }

        v504 = sub_1E1D30();
        v489, v505, v506, v507, v508, v509, v510, v511;
        if (v504)
        {
          inited, v512, v513, v514, v515, v516, v517, v518;

          goto LABEL_87;
        }

        v519 = sub_1E1780();
        v527 = v520;
        if (v519 == v20 && v520 == v22)
        {
          v22, v520, v521, v522, v523, v524, v525, v526;
          v527, v528, v529, v530, v531, v532, v533, v534;
          inited, v535, v536, v537, v538, v539, v540, v541;

          v10 = 15;
          goto LABEL_21;
        }

        v542 = sub_1E1D30();
        v22, v543, v544, v545, v546, v547, v548, v549;
        v527, v550, v551, v552, v553, v554, v555, v556;
        inited, v557, v558, v559, v560, v561, v562, v563;

        if (v542)
        {
          v10 = 15;
          goto LABEL_21;
        }

LABEL_17:
        v10 = 0;
        goto LABEL_21;
      }

      v48 = *&address.sa_len;
      sub_1E08C0();

      swift_willThrow();
    }

    else
    {
      v47 = *&address.sa_len;
      sub_1E08C0();

      swift_willThrow();
    }

    if (qword_27D068 != -1)
    {
      swift_once();
    }

    v49 = sub_1E1360();
    sub_3B2C(v49, qword_280320);
    swift_errorRetain();
    v50 = sub_1E1340();
    v51 = sub_1E1980();

    if (os_log_type_enabled(v50, v51))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&address.sa_len = v60;
      *v59 = 136315138;
      swift_getErrorValue();
      v61 = sub_1E1D70();
      v63 = v62;
      v64 = sub_DD91C(v61, v62, &address);
      v63, v65, v66, v67, v68, v69, v70, v71;
      *(v59 + 4) = v64;
      _os_log_impl(&dword_0, v50, v51, "Could not get current data service descriptor: %s", v59, 0xCu);
      sub_4E48(v60, v72, v73, v74, v75, v76, v77, v78);

      inited, v79, v80, v81, v82, v83, v84, v85;
    }

    else
    {
      inited, v52, v53, v54, v55, v56, v57, v58;
    }

    goto LABEL_17;
  }

  inited, v3, v4, v5, v6, v7, v8, v9;
  v10 = 12;
LABEL_21:
  *a1 = v10;
}

unint64_t sub_DD094@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x2000503040100uLL >> (8 * result);
  if (result >= 7)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_DD0BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v33 = sub_1E1290();
  v29 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E11B0();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_285658, &qword_1F6F68);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_1E11D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E12C0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4C2BC(a1, v35);
  sub_3D68(&qword_285660, &qword_1F6F70);
  if (swift_dynamicCast())
  {
    result = (*(v15 + 8))(v17, v14);
    v19 = 2;
  }

  else
  {
    sub_4C2BC(a1, v35);
    v20 = swift_dynamicCast();
    v21 = *(v11 + 56);
    if (v20)
    {
      v21(v9, 0, 1, v10);
      (*(v11 + 32))(v13, v9, v10);
      sub_1E11C0();
      (*(v11 + 8))(v13, v10);
      v23 = v30;
      v22 = v31;
      v24 = (*(v30 + 88))(v6, v31);
      v25 = enum case for LibraryBookInfo.BookType.epub(_:);
      result = (*(v23 + 8))(v6, v22);
      if (v24 == v25)
      {
        v19 = 1;
      }

      else
      {
        v19 = 5;
      }
    }

    else
    {
      v21(v9, 1, 1, v10);
      sub_DE010(v9);
      sub_4C2BC(a1, v35);
      v27 = v32;
      v26 = v33;
      result = swift_dynamicCast();
      if (result)
      {
        result = (*(v29 + 8))(v27, v26);
        v19 = 3;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  *v34 = v19;
  return result;
}

uint64_t sub_DD4FC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 orientation];

  if (sub_DE078(v1))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_DD564(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x6964616552626F65;
    }

    if (a1 == 3)
    {
      return 0x4E676E6964616572;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 == 1)
    {
      return 16718;
    }
  }

  result = sub_1E1D50();
  __break(1u);
  return result;
}

uint64_t sub_DD704(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E75;
    case 2:
      return 0x6F6F42664F646E65;
    case 1:
      return 0x6E6F43664F646E65;
  }

  result = sub_1E1D50();
  __break(1u);
  return result;
}

id Utilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Utilities();
  return objc_msgSendSuper2(&v2, "init");
}

id Utilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Utilities();
  return objc_msgSendSuper2(&v4, "dealloc");
}

BAEventReporter *sub_DD91C(BAEventReporter *a1, BAEventReporter *a2, uint64_t *a3)
{

  v6 = sub_DD9E8(v18, 0, 0, 1, a1, a2);
  v14 = v18[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v18[0] = a1;
    v18[1] = a2;
    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;
  a2, v7, v8, v9, v10, v11, v12, v13;
  ObjectType = swift_getObjectType();
  v18[0] = v15;
  v16 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_326BC(v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  sub_4E48(v18, v7, v8, v9, v10, v11, v12, v13);
  return v14;
}

unint64_t sub_DD9E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_DDAF4(a5, a6);
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
    result = sub_1E1AF0();
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

void *sub_DDAF4(uint64_t a1, unint64_t a2)
{
  v3 = sub_DDB40(a1, a2);
  sub_DDC70(&off_2609D8);
  return v3;
}

void *sub_DDB40(uint64_t a1, unint64_t a2)
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

  v6 = sub_E87CC(v5, 0);
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

  result = sub_1E1AF0();
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
        v10 = sub_1E1800();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_E87CC(v10, 0);
        result = sub_1E1AD0();
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

void sub_DDC70(BAEventReporter *a1)
{
  isa = a1[1].super.isa;
  v3 = *v1;
  v4 = (*v1)[1].super.isa;
  v5 = isa + v4;
  if (__OFADD__(v4, isa))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3[1].dataProviders >> 1)
  {
    if (a1[1].super.isa)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = isa + v4;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_DDD5C(isUniquelyReferenced_nonNull_native, v26, &dword_0 + 1, v3, v11, v12, v13, v14);
  if (!a1[1].super.isa)
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
    if (!isa)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = v3[1].super.isa;
  if ((*v3[1].dataProviders >> 1) - v15 < isa)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(v15 + v3 + 32, &a1[2], isa);
  a1, v16, v17, v18, v19, v20, v21, v22;
  if (!isa)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = v3[1].super.isa;
  v24 = __OFADD__(v23, isa);
  v25 = (isa + v23);
  if (!v24)
  {
    v3[1].super.isa = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

BAEventReporter *sub_DDD5C(BAEventReporter *result, int64_t a2, void *a3, BAEventReporter *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4[1].dataProviders;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  isa = a4[1].super.isa;
  if (v11 <= isa)
  {
    v13 = a4[1].super.isa;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_3D68(&qword_285690, &qword_1F6F98);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[1].super.isa = isa;
    *v14[1].dataProviders = 2 * v15 - 64;
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v16 = v14 + 2;
  v17 = a4 + 2;
  if (v9)
  {
    if (v14 != a4 || v16 >= (isa + v17))
    {
      memmove(v16, v17, isa);
    }

    a4[1].super.isa = 0;
  }

  else
  {
    memcpy(v16, v17, isa);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t sub_DDE50(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x50656D6568544D49 && a2 == 0xEF79617247656761 || (sub_1E1D30() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0xD000000000000010 && 0x8000000000215ED0 == a2 || (sub_1E1D30() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0xD000000000000010 && 0x8000000000215EF0 == a2)
  {
    return 0;
  }

  v5 = sub_1E1D30();
  result = 0;
  v7 = a1 == 0x50656D6568544D49 && a2 == 0xEB00000000656761;
  if ((v5 & 1) == 0 && !v7)
  {
    if (sub_1E1D30())
    {
      return 0;
    }

    if (a1 == 0xD000000000000010 && 0x8000000000215F10 == a2)
    {
      return 1;
    }

    else if (sub_1E1D30())
    {
      return 1;
    }

    else
    {
      return 4;
    }
  }

  return result;
}

uint64_t sub_DDFE4(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    return 2 * (a1 == 6);
  }

  else
  {
    return qword_1F6FA0[a1 - 1];
  }
}

uint64_t sub_DE010(uint64_t a1)
{
  v2 = sub_3D68(&qword_285658, &qword_1F6F68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of static Utilities.contentType(from:)()
{
  return (*(v0 + 104))();
}

{
  return (*(v0 + 112))();
}

{
  return (*(v0 + 120))();
}

void EventReporter.emitAnnotationActionEvent(using:contentData:viewData:)(uint64_t a1, _OWORD *a2, char *a3)
{
  v4 = a2[3];
  v33[2] = a2[2];
  v33[3] = v4;
  v5 = a2[5];
  v33[4] = a2[4];
  v33[5] = v5;
  v6 = a2[1];
  v33[0] = *a2;
  v33[1] = v6;
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = [objc_opt_self() sharedConnection];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 isDiagnosticSubmissionAllowed];

    if (v12)
    {
      v13 = swift_allocObject();
      v14 = a2[3];
      *(v13 + 48) = a2[2];
      *(v13 + 64) = v14;
      v15 = a2[5];
      *(v13 + 80) = a2[4];
      *(v13 + 96) = v15;
      v16 = a2[1];
      *(v13 + 16) = *a2;
      *(v13 + 32) = v16;
      *(v13 + 112) = v7;
      *(v13 + 113) = v8;
      *(v13 + 114) = v9;
      v17 = swift_allocObject();
      v17[1].super.isa = sub_DFE7C;
      *v17[1].dataProviders = v13;
      sub_13A5C(v33, &v32);

      sub_1E10C0();
      v13, v18, v19, v20, v21, v22, v23, v24;
      v17, v25, v26, v27, v28, v29, v30, v31;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_DE350(uint64_t a1, __int128 *a2, unsigned int a3)
{
  v3 = a2[3];
  v30 = a2[2];
  v31 = v3;
  v4 = a2[5];
  v32 = a2[4];
  v33 = v4;
  v5 = a2[1];
  v28 = *a2;
  v29 = v5;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v6 = sub_1E0CB0();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E9970;
  v10 = enum case for DataEventTrait.onlyOnce(_:);
  v11 = *(v7 + 104);
  v11(v9 + v8, enum case for DataEventTrait.onlyOnce(_:), v6);
  sub_4C164();
  sub_1E0C00();
  v9, v12, v13, v14, v15, v16, v17, v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E9970;
  v11(v19 + v8, v10, v6);
  sub_E058C();
  sub_1E0C00();
  v19, v20, v21, v22, v23, v24, v25, v26;
  type metadata accessor for AnnotationActionEvent(0);
  sub_E05E0(&qword_2856F8, type metadata accessor for AnnotationActionEvent, protocol conformance descriptor for AnnotationActionEvent);
  v28 = 0u;
  v29 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v28);
}

void EventReporter.emitExitLinkTapEvent(using:with:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E0930();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  (*(v4 + 16))(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v8 = swift_allocObject();
  v8[1].super.isa = sub_DFE84;
  *v8[1].dataProviders = v7;

  sub_1E10C0();
  v7, v9, v10, v11, v12, v13, v14, v15;
  v8, v16, v17, v18, v19, v20, v21, v22;
}

uint64_t sub_DE734()
{
  *&v20[0] = sub_1E08F0();
  *(&v20[0] + 1) = v0;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v1 = sub_1E0CB0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E9970;
  (*(v2 + 104))(v4 + v3, enum case for DataEventTrait.onlyOnce(_:), v1);
  sub_E0538();
  sub_1E0C00();
  v4, v5, v6, v7, v8, v9, v10, v11;
  *(&v20[0] + 1), v12, v13, v14, v15, v16, v17, v18;
  type metadata accessor for ExitLinkTapEvent(0);
  sub_E05E0(&qword_2856E8, type metadata accessor for ExitLinkTapEvent, protocol conformance descriptor for ExitLinkTapEvent);
  memset(v20, 0, sizeof(v20));
  sub_1E0C10();
  return sub_4C1B8(v20);
}

void EventReporter.emitGetStartedActionEvent(using:for:)(uint64_t a1, objc_class *a2)
{
  v3 = swift_allocObject();
  v3[1].super.isa = a2;
  v4 = swift_allocObject();
  v4[1].super.isa = sub_DFE98;
  *v4[1].dataProviders = v3;

  sub_1E10C0();
  v3, v5, v6, v7, v8, v9, v10, v11;

  v4, v12, v13, v14, v15, v16, v17, v18;
}

uint64_t sub_DEB88(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    LOBYTE(v14[0]) = a2;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v2 = sub_1E0CB0();
    v3 = *(v2 - 8);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1E9970;
    (*(v3 + 104))(v5 + v4, enum case for DataEventTrait.onlyOnce(_:), v2);
    sub_E04E4();
    sub_1E0C00();
    v5, v6, v7, v8, v9, v10, v11, v12;
    type metadata accessor for GetStartedActionEvent(0);
    sub_E05E0(&qword_2856D8, type metadata accessor for GetStartedActionEvent, "\t\a\a");
    memset(v14, 0, sizeof(v14));
    sub_1E0C10();
    return sub_4C1B8(v14);
  }

  return result;
}

void EventReporter.emitNotificationEngagementEvent(using:for:with:)(uint64_t a1, void *a2, objc_class *a3)
{
  v5 = swift_allocObject();
  v5[1].super.isa = a3;
  *v5[1].dataProviders = a2;
  v6 = swift_allocObject();
  v6[1].super.isa = sub_DFF18;
  *v6[1].dataProviders = v5;
  v7 = a3;
  v8 = a2;

  sub_1E10C0();
  v5, v9, v10, v11, v12, v13, v14, v15;

  v6, v16, v17, v18, v19, v20, v21, v22;
}

uint64_t sub_DEEF8()
{
  sub_A5880(&v37);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v0 = sub_1E0CB0();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E9970;
  v4 = enum case for DataEventTrait.onlyOnce(_:);
  v5 = *(v1 + 104);
  v5(v3 + v2, enum case for DataEventTrait.onlyOnce(_:), v0);
  sub_E043C();
  sub_1E0C00();
  v3, v6, v7, v8, v9, v10, v11, v12;
  v43[2] = v39;
  v43[3] = v40;
  v43[4] = v41;
  v43[5] = v42;
  v43[0] = v37;
  v43[1] = v38;
  sub_6E990(v43);
  sub_A5CF0(&v37);
  v36 = v38;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E9970;
  v5(v13 + v2, v4, v0);
  sub_E0490();
  sub_1E0C00();
  v13, v14, v15, v16, v17, v18, v19, v20;
  v36, v21, v22, v23, v24, v25, v26, v27;
  *(&v36 + 1), v28, v29, v30, v31, v32, v33, v34;
  type metadata accessor for NotificationEngagementEvent(0);
  sub_E05E0(&qword_2856C8, type metadata accessor for NotificationEngagementEvent, protocol conformance descriptor for NotificationEngagementEvent);
  v37 = 0u;
  v38 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v37);
}

void EventReporter.emitScrubEvent(using:contentData:readingSettingsData:startPosition:endPosition:totalLength:)(uint64_t a1, _OWORD *a2, _OWORD *a3, int a4, int a5, int a6)
{
  v11 = a2[3];
  v39[2] = a2[2];
  v39[3] = v11;
  v12 = a2[5];
  v39[4] = a2[4];
  v39[5] = v12;
  v13 = a2[1];
  v39[0] = *a2;
  v39[1] = v13;
  v14 = a3[1];
  v40[0] = *a3;
  v40[1] = v14;
  v15 = [objc_opt_self() sharedConnection];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 isDiagnosticSubmissionAllowed];

    if (v17)
    {
      v18 = swift_allocObject();
      v19 = a2[3];
      *(v18 + 48) = a2[2];
      *(v18 + 64) = v19;
      v20 = a2[5];
      *(v18 + 80) = a2[4];
      *(v18 + 96) = v20;
      v21 = a2[1];
      *(v18 + 16) = *a2;
      *(v18 + 32) = v21;
      v22 = a3[1];
      *(v18 + 112) = *a3;
      *(v18 + 128) = v22;
      *(v18 + 144) = a4;
      *(v18 + 148) = a5;
      *(v18 + 152) = a6;
      v23 = swift_allocObject();
      v23[1].super.isa = sub_E00EC;
      *v23[1].dataProviders = v18;
      sub_13A5C(v39, v38);
      sub_E0100(v40, v38);

      sub_1E10C0();
      v18, v24, v25, v26, v27, v28, v29, v30;
      v23, v31, v32, v33, v34, v35, v36, v37;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_DF504(uint64_t a1, __int128 *a2, __int128 *a3, unsigned int a4, unsigned int a5, int a6)
{
  v6 = a2[3];
  v42 = a2[2];
  v43 = v6;
  v7 = a2[5];
  v44 = a2[4];
  v45 = v7;
  v8 = a2[1];
  v40 = *a2;
  v41 = v8;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v39 = sub_1E0CB0();
  v9 = *(v39 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E9970;
  v12 = enum case for DataEventTrait.onlyOnce(_:);
  v13 = *(v9 + 104);
  v38 = enum case for DataEventTrait.onlyOnce(_:);
  v13(v11 + v10, enum case for DataEventTrait.onlyOnce(_:), v39);
  sub_4C164();
  sub_1E0C00();
  v11, v14, v15, v16, v17, v18, v19, v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1E9970;
  v13(v21 + v10, v12, v39);
  sub_92AF0();
  sub_1E0C00();
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1E9970;
  v13(v29 + v10, v38, v39);
  sub_E033C();
  sub_1E0C00();
  v29, v30, v31, v32, v33, v34, v35, v36;
  type metadata accessor for ScrubEvent(0);
  sub_E05E0(&qword_2856B0, type metadata accessor for ScrubEvent, protocol conformance descriptor for ScrubEvent);
  v40 = 0u;
  v41 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v40);
}

void EventReporter.emitUnifiedMessageActionEvent(using:with:messageType:messageIdentifier:hasActionable:actionIdentifier:placementName:)(uint64_t a1, uint64_t a2, objc_class *a3, objc_class *a4, uint64_t a5, objc_class *a6, unsigned __int8 a7, objc_class *a8, uint64_t a9, objc_class *a10)
{
  v16 = swift_allocObject();
  v16[1].super.isa = a4;
  *v16[1].dataProviders = a2;
  v16[2].super.isa = a3;
  *v16[2].dataProviders = a5;
  v16[3].super.isa = a6;
  v16[3].dataProviders[0] = a7;
  v16[4].super.isa = a8;
  *v16[4].dataProviders = a9;
  v16[5].super.isa = a10;
  v17 = swift_allocObject();
  v17[1].super.isa = sub_E0160;
  *v17[1].dataProviders = v16;

  sub_1E10C0();
  v16, v18, v19, v20, v21, v22, v23, v24;

  v17, v25, v26, v27, v28, v29, v30, v31;
}

uint64_t sub_DF91C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, BAEventReporter *a6, char a7, BAEventReporter *a8, uint64_t a9, BAEventReporter *a10)
{
  if (a2 >= 7)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    *&v45[0] = a3;
    *(&v45[0] + 1) = a4;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v12 = sub_1E0CB0();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1E9970;
    (*(v13 + 104))(v15 + v14, enum case for DataEventTrait.onlyOnce(_:), v12);
    sub_E02E8();

    sub_1E0C00();
    v15, v16, v17, v18, v19, v20, v21, v22;
    v46 = a8;
    v47 = a9;
    v48 = a10;
    sub_98990();
    sub_1E0C00();
    a10, v23, v24, v25, v26, v27, v28, v29;
    a8, v30, v31, v32, v33, v34, v35, v36;
    a6, v37, v38, v39, v40, v41, v42, v43;
    type metadata accessor for UnifiedMessageActionEvent(0);
    sub_E05E0(&qword_2856A0, type metadata accessor for UnifiedMessageActionEvent, protocol conformance descriptor for UnifiedMessageActionEvent);
    memset(v45, 0, sizeof(v45));
    sub_1E0C10();
    return sub_4C1B8(v45);
  }

  return result;
}

void _s13BookAnalytics13EventReporterC020emitAnnotationActionC05using11contentData04viewJ0yAA9BATrackerC_AA014BridgedContentJ0CAA0m4ViewJ0CtF_0()
{
  sub_A3F08(v27);
  sub_A78F0(v26);
  v0 = v26[0];
  v1 = v26[1];
  v2 = v26[2];
  v3 = [objc_opt_self() sharedConnection];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isDiagnosticSubmissionAllowed];

    if (v5)
    {
      v6 = swift_allocObject();
      v7 = v27[3];
      *(v6 + 48) = v27[2];
      *(v6 + 64) = v7;
      v8 = v27[5];
      *(v6 + 80) = v27[4];
      *(v6 + 96) = v8;
      v9 = v27[1];
      *(v6 + 16) = v27[0];
      *(v6 + 32) = v9;
      *(v6 + 112) = v0;
      *(v6 + 113) = v1;
      *(v6 + 114) = v2;
      v10 = swift_allocObject();
      v10[1].super.isa = sub_E06DC;
      *v10[1].dataProviders = v6;
      sub_13A5C(v27, v25);

      sub_1E10C0();
      sub_14424(v27);
      v6, v11, v12, v13, v14, v15, v16, v17;
      v10, v18, v19, v20, v21, v22, v23, v24;
    }

    else
    {
      sub_14424(v27);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_DFEA0(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_DFED8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void _s13BookAnalytics13EventReporterC09emitScrubC05using11contentData015readingSettingsI013startPosition03endM011totalLengthyAA9BATrackerC_AA014BridgedContentI0CAA0r7ReadingkI0CSo8NSNumberCA2RtF_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  sub_A3F08(v36);
  sub_A6A60(v37);
  v9 = [a4 intValue];
  v10 = [a5 intValue];
  v11 = [a6 intValue];
  v12 = [objc_opt_self() sharedConnection];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 isDiagnosticSubmissionAllowed];

    if (v14)
    {
      v15 = swift_allocObject();
      v16 = v36[3];
      *(v15 + 48) = v36[2];
      *(v15 + 64) = v16;
      v17 = v36[5];
      *(v15 + 80) = v36[4];
      *(v15 + 96) = v17;
      v18 = v36[1];
      *(v15 + 16) = v36[0];
      *(v15 + 32) = v18;
      v19 = v37[1];
      *(v15 + 112) = v37[0];
      *(v15 + 128) = v19;
      *(v15 + 144) = v9;
      *(v15 + 148) = v10;
      *(v15 + 152) = v11;
      v20 = swift_allocObject();
      v20[1].super.isa = sub_E068C;
      *v20[1].dataProviders = v15;
      sub_13A5C(v36, v35);
      sub_E0100(v37, v35);

      sub_1E10C0();
      sub_E0390(v37);
      sub_14424(v36);
      v15, v21, v22, v23, v24, v25, v26, v27;
      v20, v28, v29, v30, v31, v32, v33, v34;
    }

    else
    {
      sub_E0390(v37);
      sub_14424(v36);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_E0164(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8[4], a2, a3, a4, a5, a6, a7, a8;
  v8[6], v9, v10, v11, v12, v13, v14, v15;
  v8[8], v16, v17, v18, v19, v20, v21, v22;
  v8[10], v23, v24, v25, v26, v27, v28, v29;

  return _swift_deallocObject(v8, 88, 7);
}

uint64_t sub_E01F0()
{
  v1 = sub_1E0930();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_E0278()
{
  sub_1E0930();

  return sub_DE734();
}

unint64_t sub_E02E8()
{
  result = qword_285698;
  if (!qword_285698)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionData, &type metadata for ActionData, v0, v1);
    atomic_store(result, &qword_285698);
  }

  return result;
}

unint64_t sub_E033C()
{
  result = qword_2856A8;
  if (!qword_2856A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrubData, &type metadata for ScrubData, v0, v1);
    atomic_store(result, &qword_2856A8);
  }

  return result;
}

uint64_t sub_E03E4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[6], v9, v10, v11, v12, v13, v14, v15;
  v8[8], v16, v17, v18, v19, v20, v21, v22;
  v8[13], v23, v24, v25, v26, v27, v28, v29;
  v8[16], v30, v31, v32, v33, v34, v35, v36;

  return _swift_deallocObject(v8, 156, 7);
}

unint64_t sub_E043C()
{
  result = qword_2856B8;
  if (!qword_2856B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationData, &type metadata for NotificationData, v0, v1);
    atomic_store(result, &qword_2856B8);
  }

  return result;
}

unint64_t sub_E0490()
{
  result = qword_2856C0;
  if (!qword_2856C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationEngagementData, &type metadata for NotificationEngagementData, v0, v1);
    atomic_store(result, &qword_2856C0);
  }

  return result;
}

unint64_t sub_E04E4()
{
  result = qword_2856D0;
  if (!qword_2856D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GetStartedActionData, &type metadata for GetStartedActionData, v0, v1);
    atomic_store(result, &qword_2856D0);
  }

  return result;
}

unint64_t sub_E0538()
{
  result = qword_2856E0;
  if (!qword_2856E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExternalLinkData, &type metadata for ExternalLinkData, v0, v1);
    atomic_store(result, &qword_2856E0);
  }

  return result;
}

unint64_t sub_E058C()
{
  result = qword_2856F0;
  if (!qword_2856F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewData, &type metadata for ViewData, v0, v1);
    atomic_store(result, &qword_2856F0);
  }

  return result;
}

uint64_t sub_E05E0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_E0628(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[6], v9, v10, v11, v12, v13, v14, v15;
  v8[8], v16, v17, v18, v19, v20, v21, v22;
  v8[13], v23, v24, v25, v26, v27, v28, v29;

  return _swift_deallocObject(v8, 115, 7);
}

BookAnalytics::ClearType_optional __swiftcall ClearType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260A00;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (!v5)
  {
    v14 = 0;
  }

  *v3 = v14;
  return result;
}

uint64_t ClearType.rawValue.getter()
{
  if (*v0)
  {
    return 0x796C746E65636572;
  }

  else
  {
    return 0x6553746E65636572;
  }
}

uint64_t static ClearedData.== infix(_:_:)(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x796C746E65636572;
  }

  else
  {
    v9 = 0x6553746E65636572;
  }

  if (v8)
  {
    v10 = 0xEE00736568637261;
  }

  else
  {
    v10 = 0xEE00646577656956;
  }

  if (*a2)
  {
    v11 = 0x796C746E65636572;
  }

  else
  {
    v11 = 0x6553746E65636572;
  }

  if (*a2)
  {
    v12 = 0xEE00646577656956;
  }

  else
  {
    v12 = 0xEE00736568637261;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1E1D30();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

unint64_t sub_E0864()
{
  result = qword_285700;
  if (!qword_285700)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClearType, &type metadata for ClearType, v0, v1);
    atomic_store(result, &qword_285700);
  }

  return result;
}

Swift::Int sub_E08B8()
{
  v1 = *v0;
  sub_1E1DC0();
  if (v1)
  {
    v2 = 0xEE00646577656956;
  }

  else
  {
    v2 = 0xEE00736568637261;
  }

  sub_1E17D0();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1E1DE0();
}

void sub_E0954(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xEE00646577656956;
  }

  else
  {
    v2 = 0xEE00736568637261;
  }

  sub_1E17D0();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_E09DC(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  if (v2)
  {
    v3 = 0xEE00646577656956;
  }

  else
  {
    v3 = 0xEE00736568637261;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_E0A74(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v14._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_260A00;
  v14._object = v3;
  v5 = sub_1E1B70(v4, v14);
  v3, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_E0AD4(uint64_t *a1@<X8>)
{
  v2 = 0x6553746E65636572;
  if (*v1)
  {
    v2 = 0x796C746E65636572;
  }

  v3 = 0xEE00736568637261;
  if (*v1)
  {
    v3 = 0xEE00646577656956;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_E0BEC()
{
  result = qword_285708;
  if (!qword_285708)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClearType, &type metadata for ClearType, v0, v1);
    atomic_store(result, &qword_285708);
  }

  return result;
}

uint64_t static LibrarySortData.== infix(_:_:)(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = *a1;
  v10 = 0xE700000000000000;
  v11 = *a2;
  v12 = 0xE500000000000000;
  v13 = 0x656C746974;
  v14 = 0x726F68747561;
  if (v9 != 3)
  {
    v14 = 0x6C61756E616DLL;
  }

  if (v9 != 2)
  {
    v13 = v14;
    v12 = 0xE600000000000000;
  }

  v15 = 0x746E65636572;
  if (*a1)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (*a1 <= 1u)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (v9 <= 1)
  {
    v17 = v10;
  }

  else
  {
    v17 = v12;
  }

  v18 = 0xE700000000000000;
  v19 = 0xE500000000000000;
  v20 = 0x656C746974;
  v21 = 0x726F68747561;
  if (v11 != 3)
  {
    v21 = 0x6C61756E616DLL;
  }

  if (v11 != 2)
  {
    v20 = v21;
    v19 = 0xE600000000000000;
  }

  if (*a2)
  {
    v8 = 0x746E65636572;
    v18 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v22 = v8;
  }

  else
  {
    v22 = v20;
  }

  if (*a2 <= 1u)
  {
    v23 = v18;
  }

  else
  {
    v23 = v19;
  }

  if (v16 == v22 && v17 == v23)
  {
    v24 = 1;
  }

  else
  {
    v24 = sub_1E1D30();
  }

  v17, a2, v22, a4, a5, a6, a7, a8;
  v23, v25, v26, v27, v28, v29, v30, v31;
  return v24 & 1;
}

void sub_E0DBC(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x6570795474726F73 && a2 == 0xE800000000000000)
  {
    a2, a2, a1, a3, a4, a5, a6, a7;
    v19 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a8 = v19 & 1;
}

uint64_t sub_E0E44(uint64_t a1)
{
  v2 = sub_E11B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E0E80(uint64_t a1)
{
  v2 = sub_E11B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LibrarySortData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_285710, &qword_1F70C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_E11B0();
  sub_1E1E00();
  v10 = v7;
  sub_E1204();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

void LibrarySortData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_285728, &qword_1F70D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_E11B0();
  sub_1E1DF0();
  if (!v2)
  {
    sub_E1258();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_E11B0()
{
  result = qword_285718;
  if (!qword_285718)
  {
    result = swift_getWitnessTable(byte_1F72A4, &type metadata for LibrarySortData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285718);
  }

  return result;
}

unint64_t sub_E1204()
{
  result = qword_285720;
  if (!qword_285720)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SortType, &type metadata for SortType, v0, v1);
    atomic_store(result, &qword_285720);
  }

  return result;
}

unint64_t sub_E1258()
{
  result = qword_285730;
  if (!qword_285730)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SortType, &type metadata for SortType, v0, v1);
    atomic_store(result, &qword_285730);
  }

  return result;
}

unint64_t sub_E12B0()
{
  result = qword_285738;
  if (!qword_285738)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibrarySortData, &type metadata for LibrarySortData, v0, v1);
    atomic_store(result, &qword_285738);
  }

  return result;
}

unint64_t sub_E1308()
{
  result = qword_285740;
  if (!qword_285740)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibrarySortData, &type metadata for LibrarySortData, v0, v1);
    atomic_store(result, &qword_285740);
  }

  return result;
}

unint64_t sub_E1380()
{
  result = qword_285748;
  if (!qword_285748)
  {
    result = swift_getWitnessTable(byte_1F727C, &type metadata for LibrarySortData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285748);
  }

  return result;
}

unint64_t sub_E13D8()
{
  result = qword_285750;
  if (!qword_285750)
  {
    result = swift_getWitnessTable(a5d, &type metadata for LibrarySortData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285750);
  }

  return result;
}

unint64_t sub_E1430()
{
  result = qword_285758;
  if (!qword_285758)
  {
    result = swift_getWitnessTable(byte_1F7214, &type metadata for LibrarySortData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285758);
  }

  return result;
}

BookAnalytics::DealType_optional __swiftcall DealType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260A50;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 3;
  if (v5 < 3)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t DealType.rawValue.getter()
{
  v1 = 1701147238;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F72446563697270;
  }
}

uint64_t sub_E1538(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE400000000000000;
  v10 = 1701147238;
  if (v8 != 1)
  {
    v10 = 0x6E776F6E6B6E75;
    v9 = 0xE700000000000000;
  }

  if (*a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6F72446563697270;
  }

  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE900000000000070;
  }

  v13 = 0xE400000000000000;
  v14 = 1701147238;
  if (*a2 != 1)
  {
    v14 = 0x6E776F6E6B6E75;
    v13 = 0xE700000000000000;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x6F72446563697270;
  }

  if (*a2)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE900000000000070;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

unint64_t sub_E1630()
{
  result = qword_285760;
  if (!qword_285760)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DealType, &type metadata for DealType, v0, v1);
    atomic_store(result, &qword_285760);
  }

  return result;
}

Swift::Int sub_E1684()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE400000000000000;
  if (v1 != 1)
  {
    v2 = 0xE700000000000000;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE900000000000070;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_E1724(uint64_t a1)
{
  v2 = 0xE400000000000000;
  if (*v1 != 1)
  {
    v2 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE900000000000070;
  }

  sub_1E17D0();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_E17B0(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE400000000000000;
  if (v2 != 1)
  {
    v3 = 0xE700000000000000;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE900000000000070;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_E1858(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000070;
  v4 = 0xE400000000000000;
  v5 = 1701147238;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F72446563697270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_E1974()
{
  result = qword_285768;
  if (!qword_285768)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DealType, &type metadata for DealType, v0, v1);
    atomic_store(result, &qword_285768);
  }

  return result;
}

uint64_t static FormatFilterData.== infix(_:_:)(unsigned __int8 *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0xEB00000000736569;
  v9 = 0x7265536E496C6C61;
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a2 + 1);
  v13 = 0xE600000000000000;
  v14 = 0x646165726E75;
  if (v10 != 2)
  {
    v14 = 0x6E776F6E6B6E75;
    v13 = 0xE700000000000000;
  }

  v15 = 0x6573616863727570;
  v16 = 0xE900000000000064;
  if (!*a1)
  {
    v15 = 0x7265536E496C6C61;
    v16 = 0xEB00000000736569;
  }

  if (*a1 <= 1u)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  if (v10 <= 1)
  {
    v18 = v16;
  }

  else
  {
    v18 = v13;
  }

  v19 = 0xE600000000000000;
  v20 = 0x646165726E75;
  if (*a2 != 2)
  {
    v20 = 0x6E776F6E6B6E75;
    v19 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = 0x6573616863727570;
    v8 = 0xE900000000000064;
  }

  if (*a2 <= 1u)
  {
    v21 = v9;
  }

  else
  {
    v21 = v20;
  }

  if (*a2 <= 1u)
  {
    v22 = v8;
  }

  else
  {
    v22 = v19;
  }

  if (v17 == v21 && v18 == v22)
  {
    v18, a2, v21, a4, a5, a6, a7, a8;
    v22, v23, v24, v25, v26, v27, v28, v29;
  }

  else
  {
    v36 = sub_1E1D30();
    v18, v37, v38, v39, v40, v41, v42, v43;
    v22, v44, v45, v46, v47, v48, v49, v50;
    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_21478(v11, v12, v30, v31, v32, v33, v34, v35);
}

uint64_t sub_E1B5C()
{
  if (*v0)
  {
    return 0x794274726F73;
  }

  else
  {
    return 0x79547265746C6966;
  }
}

void sub_E1B98(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = a1 == 0x79547265746C6966 && a2 == 0xEA00000000006570;
  if (v12 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0x794274726F73 && a2 == 0xE600000000000000)
  {
    0xE600000000000000, a2, a3, a4, a5, a6, a7, a8;
    v13 = 1;
  }

  else
  {
    v14 = sub_1E1D30();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a9 = v13;
}

uint64_t sub_E1C78(uint64_t a1)
{
  v2 = sub_E20EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E1CB4(uint64_t a1)
{
  v2 = sub_E20EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FormatFilterData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_285770, &qword_1F7400);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  sub_48B8(a1, a1[3]);
  sub_E20EC();
  sub_1E1E00();
  v15 = v8;
  v14 = 0;
  sub_E2140();
  sub_1E1CF0();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_E2194();
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

void FormatFilterData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_285790, &qword_1F7408);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_48B8(a1, a1[3]);
  sub_E20EC();
  sub_1E1DF0();
  if (!v2)
  {
    v21 = 0;
    sub_E21E8();
    sub_1E1C20();
    v16 = v22;
    v19 = 1;
    sub_E223C();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    v17 = v20;
    *a2 = v16;
    a2[1] = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_E2060(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = a1[1];
  v9 = a2[1];
  if ((sub_236D0(*a1, *a2, a3, a4, a5, a6, a7, a8) & 1) == 0)
  {
    return 0;
  }

  return sub_21478(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_E20EC()
{
  result = qword_285778;
  if (!qword_285778)
  {
    result = swift_getWitnessTable(byte_1F75D4, &type metadata for FormatFilterData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285778);
  }

  return result;
}

unint64_t sub_E2140()
{
  result = qword_285780;
  if (!qword_285780)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FilterType, &type metadata for FilterType, v0, v1);
    atomic_store(result, &qword_285780);
  }

  return result;
}

unint64_t sub_E2194()
{
  result = qword_285788;
  if (!qword_285788)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SortBy, &type metadata for SortBy, v0, v1);
    atomic_store(result, &qword_285788);
  }

  return result;
}

unint64_t sub_E21E8()
{
  result = qword_285798;
  if (!qword_285798)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FilterType, &type metadata for FilterType, v0, v1);
    atomic_store(result, &qword_285798);
  }

  return result;
}

unint64_t sub_E223C()
{
  result = qword_2857A0;
  if (!qword_2857A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SortBy, &type metadata for SortBy, v0, v1);
    atomic_store(result, &qword_2857A0);
  }

  return result;
}

unint64_t sub_E2294()
{
  result = qword_2857A8;
  if (!qword_2857A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FormatFilterData, &type metadata for FormatFilterData, v0, v1);
    atomic_store(result, &qword_2857A8);
  }

  return result;
}

unint64_t sub_E22EC()
{
  result = qword_2857B0;
  if (!qword_2857B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FormatFilterData, &type metadata for FormatFilterData, v0, v1);
    atomic_store(result, &qword_2857B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatFilterData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for FormatFilterData(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_E24A8()
{
  result = qword_2857B8;
  if (!qword_2857B8)
  {
    result = swift_getWitnessTable(byte_1F75AC, &type metadata for FormatFilterData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2857B8);
  }

  return result;
}

unint64_t sub_E2500()
{
  result = qword_2857C0;
  if (!qword_2857C0)
  {
    result = swift_getWitnessTable(byte_1F751C, &type metadata for FormatFilterData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2857C0);
  }

  return result;
}

unint64_t sub_E2558()
{
  result = qword_2857C8;
  if (!qword_2857C8)
  {
    result = swift_getWitnessTable(byte_1F7544, &type metadata for FormatFilterData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2857C8);
  }

  return result;
}

BookAnalytics::ScrubData __swiftcall ScrubData.init(startPosition:endPosition:totalLength:)(Swift::Int32 startPosition, Swift::Int32 endPosition, Swift::Int32 totalLength)
{
  *v3 = startPosition;
  v3[1] = endPosition;
  v3[2] = totalLength;
  result.totalLength = endPosition;
  result.startPosition = startPosition;
  return result;
}

uint64_t sub_E2618()
{
  v1 = 0x6E756F4365746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6867696C68676968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B72616D6B6F6F62;
  }
}

uint64_t sub_E2690@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_E2C64(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_E26B8(uint64_t a1)
{
  v2 = sub_E28E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E26F4(uint64_t a1)
{
  v2 = sub_E28E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ContentSettingsData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_2857D0, &qword_1F7630);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  v9[6] = *(v1 + 4);
  v9[3] = *(v1 + 8);
  sub_48B8(a1, a1[3]);
  sub_E28E8();
  sub_1E1E00();
  v12 = 0;
  sub_1E1D00();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = 1;
  sub_1E1D00();
  v10 = 2;
  sub_1E1D00();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_E28E8()
{
  result = qword_2857D8;
  if (!qword_2857D8)
  {
    result = swift_getWitnessTable(aA_11, &type metadata for ContentSettingsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2857D8);
  }

  return result;
}

void ContentSettingsData.init(from:)(BAEventReporter **a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_2857E0, &qword_1F7638);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_48B8(a1, a1[3]);
  sub_E28E8();
  sub_1E1DF0();
  if (!v2)
  {
    v23 = 0;
    v16 = sub_1E1C30();
    v22 = 1;
    v20 = sub_1E1C30();
    v21 = 2;
    v17 = sub_1E1C30();
    (*(v6 + 8))(v8, v5);
    v18 = v20;
    *a2 = v16;
    a2[1] = v18;
    a2[2] = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_E2B60()
{
  result = qword_2857E8;
  if (!qword_2857E8)
  {
    result = swift_getWitnessTable(aY_10, &type metadata for ContentSettingsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2857E8);
  }

  return result;
}

unint64_t sub_E2BB8()
{
  result = qword_2857F0;
  if (!qword_2857F0)
  {
    result = swift_getWitnessTable(byte_1F7760, &type metadata for ContentSettingsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2857F0);
  }

  return result;
}

unint64_t sub_E2C10()
{
  result = qword_2857F8;
  if (!qword_2857F8)
  {
    result = swift_getWitnessTable(byte_1F7788, &type metadata for ContentSettingsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2857F8);
  }

  return result;
}

uint64_t sub_E2C64(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xED0000746E756F43;
  v11 = a1 == 0x6B72616D6B6F6F62 && a2 == 0xED0000746E756F43;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6E756F4365746F6ELL && a2 == 0xE900000000000074 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x6867696C68676968 && a2 == 0xEE00746E756F4374)
  {
    0xEE00746E756F4374, 0xEE00746E756F4374, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v13 = sub_1E1D30();
    a2, v14, v15, v16, v17, v18, v19, v20;
    if (v13)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t LibraryDataEditEvent.libraryEditData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_285830, &unk_1F7870);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LibraryDataEditEvent.libraryEditData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_285830, &unk_1F7870);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LibraryDataEditEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryDataEditEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryDataEditEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LibraryDataEditEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LibraryDataEditEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_285830, &unk_1F7870);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for LibraryDataEditEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t LibraryDataEditEvent.Model.libraryEditData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t LibraryDataEditEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryDataEditEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryDataEditEvent.Model.init(libraryEditData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  *a3 = *a1;
  *(a3 + 8) = v5;
  v6 = *(type metadata accessor for LibraryDataEditEvent.Model(0) + 20);
  v7 = sub_1E1150();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t sub_E32D0()
{
  if (*v0)
  {
    return 0x746144746E657665;
  }

  else
  {
    return 0x457972617262696CLL;
  }
}

void sub_E331C(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0xEF61746144746964;
  v13 = a1 == 0x457972617262696CLL && a2 == 0xEF61746144746964;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v14 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
    v14 = 1;
  }

  else
  {
    v15 = sub_1E1D30();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a9 = v14;
}

uint64_t sub_E3408(uint64_t a1)
{
  v2 = sub_E3658();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E3444(uint64_t a1)
{
  v2 = sub_E3658();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LibraryDataEditEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_285838, &qword_1F7880);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-v7];
  sub_48B8(a1, a1[3]);
  sub_E3658();
  sub_1E1E00();
  v9 = *(v3 + 8);
  v19 = *v3;
  v20 = v9;
  v18[15] = 0;
  sub_80508();

  sub_1E1CF0();
  v19, v10, v11, v12, v13, v14, v15, v16;
  if (!v2)
  {
    type metadata accessor for LibraryDataEditEvent.Model(0);
    v18[14] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_E3658()
{
  result = qword_285840;
  if (!qword_285840)
  {
    result = swift_getWitnessTable(a9_3, &type metadata for LibraryDataEditEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_285840);
  }

  return result;
}

void LibraryDataEditEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v34 = sub_1E1150();
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_3D68(&qword_285848, &qword_1F7888);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = &v30 - v6;
  v8 = type metadata accessor for LibraryDataEditEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_E3658();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v30 = v8;
    v18 = v10;
    v20 = v33;
    v19 = v34;
    v39 = 0;
    sub_804B0();
    v21 = v35;
    sub_1E1C20();
    v22 = v37;
    *v18 = v36;
    *(v18 + 8) = v22;
    v38 = 1;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v7, v21);
    (*(v31 + 32))(v18 + *(v30 + 20), v5, v19);
    sub_E39C4(v18, v32);
    sub_4E48(a1, v23, v24, v25, v26, v27, v28, v29);
    sub_E3A28(v18);
  }
}

uint64_t sub_E39C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryDataEditEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E3A28(uint64_t a1)
{
  v2 = type metadata accessor for LibraryDataEditEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E3B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_285830, &unk_1F7870);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_E3C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_285830, &unk_1F7870);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_E3D2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_285830, &unk_1F7870);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_E3E40(uint64_t a1)
{
  sub_E3EC4(319);
  if (v1 <= 0x3F)
  {
    sub_5684(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_E3EC4(uint64_t a1)
{
  if (!qword_2858B8)
  {
    sub_804B0();
    sub_80508();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_2858B8);
    }
  }
}

uint64_t sub_E3F40(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_E4000(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_E40A4(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_E4134()
{
  result = qword_285978;
  if (!qword_285978)
  {
    result = swift_getWitnessTable(aQ_3, &type metadata for LibraryDataEditEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_285978);
  }

  return result;
}

unint64_t sub_E418C()
{
  result = qword_285980;
  if (!qword_285980)
  {
    result = swift_getWitnessTable(byte_1F7988, &type metadata for LibraryDataEditEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_285980);
  }

  return result;
}

unint64_t sub_E41E4()
{
  result = qword_285988;
  if (!qword_285988)
  {
    result = swift_getWitnessTable(byte_1F79B0, &type metadata for LibraryDataEditEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_285988);
  }

  return result;
}

uint64_t PageViewEvent.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PageViewEvent.pageData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PageViewEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageViewEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PageViewEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageViewEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PageViewEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageViewEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PageViewEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageViewEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PageViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PageViewEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PageViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PageViewEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v13 - 8) + 104))(a1 + v12, v6, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t PageViewEvent.Model.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
}

uint64_t PageViewEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  v3 = *(v1 + 112);
  v20 = *(v1 + 128);
  v21 = v2;
  v4 = *(v1 + 144);
  v22 = *(v1 + 160);
  v5 = *(v1 + 80);
  v7 = *(v1 + 48);
  v16 = *(v1 + 64);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 80);
  v9 = *(v1 + 112);
  v18 = *(v1 + 96);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 48);
  v15[0] = *(v1 + 32);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 160);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 176);
  *(a1 + 144) = *(v1 + 176);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_17AA4(v15, v14, &qword_27E4A0, &qword_1E8860);
}

uint64_t PageViewEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 232);
  v10 = *(v1 + 216);
  v11 = v2;
  v3 = *(v1 + 248);
  v5 = *(v1 + 200);
  v9[0] = *(v1 + 184);
  v4 = v9[0];
  v9[1] = v5;
  v6 = *(v1 + 264);
  v12 = v3;
  v13 = v6;
  a1[2] = v10;
  a1[3] = v2;
  *a1 = v4;
  a1[1] = v5;
  a1[4] = v3;
  a1[5] = v6;
  return sub_17AA4(v9, &v8, &qword_27FD08, &qword_1E94F0);
}

uint64_t PageViewEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 296);
  *a1 = *(v1 + 280);
  *(a1 + 16) = v2;
}

uint64_t PageViewEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[38];
  v3 = v1[39];
  v4 = v1[40];
  v5 = v1[41];
  v6 = v1[42];
  v7 = v1[43];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t PageViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageViewEvent.Model(0) + 36);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageViewEvent.Model.init(pageData:linkData:contentData:upSellData:seriesData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a4 + 16);
  *a7 = *a1;
  *(a7 + 16) = v9;
  *(a7 + 24) = v10;
  v12 = *(a2 + 112);
  *(a7 + 128) = *(a2 + 96);
  *(a7 + 144) = v12;
  *(a7 + 160) = *(a2 + 128);
  *(a7 + 176) = *(a2 + 144);
  v13 = *(a2 + 48);
  *(a7 + 64) = *(a2 + 32);
  *(a7 + 80) = v13;
  v14 = *(a2 + 80);
  *(a7 + 96) = *(a2 + 64);
  *(a7 + 112) = v14;
  v15 = *(a2 + 16);
  *(a7 + 32) = *a2;
  *(a7 + 48) = v15;
  v16 = a3[3];
  *(a7 + 216) = a3[2];
  *(a7 + 232) = v16;
  v17 = a3[5];
  *(a7 + 248) = a3[4];
  *(a7 + 264) = v17;
  v18 = a3[1];
  *(a7 + 184) = *a3;
  *(a7 + 200) = v18;
  *(a7 + 280) = *a4;
  *(a7 + 296) = v11;
  v19 = a5[1];
  *(a7 + 304) = *a5;
  *(a7 + 320) = v19;
  *(a7 + 336) = a5[2];
  v20 = *(type metadata accessor for PageViewEvent.Model(0) + 36);
  v21 = sub_1E1150();
  v22 = *(*(v21 - 8) + 32);

  return v22(a7 + v20, a6, v21);
}

uint64_t sub_E5018()
{
  v1 = *v0;
  v2 = 0x6174614465676170;
  v3 = 0x61446C6C65537075;
  v4 = 0x6144736569726573;
  if (v1 != 4)
  {
    v4 = 0x746144746E657665;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x617461446B6E696CLL;
  if (v1 != 1)
  {
    v5 = 0x44746E65746E6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_E50E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_E6C2C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_E5110(uint64_t a1)
{
  v2 = sub_E56D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E514C(uint64_t a1)
{
  v2 = sub_E56D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PageViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_2859C0, &qword_1F7A90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v55 - v7;
  sub_48B8(a1, a1[3]);
  sub_E56D4();
  sub_1E1E00();
  v9 = v3[3];
  v89 = *v3;
  v90 = *(v3 + 1);
  v91 = v9;
  v95 = 0;
  sub_18598();

  sub_1E1CF0();
  v10 = v90;
  v91, v11, v12, v13, v14, v15, v16, v17;
  v10, v18, v19, v20, v21, v22, v23, v24;
  if (!v2)
  {
    v25 = *(v3 + 9);
    v26 = *(v3 + 7);
    v85 = *(v3 + 8);
    v86 = v25;
    v27 = *(v3 + 9);
    v87 = *(v3 + 10);
    v28 = *(v3 + 5);
    v29 = *(v3 + 3);
    v81 = *(v3 + 4);
    v82 = v28;
    v30 = *(v3 + 5);
    v31 = *(v3 + 7);
    v83 = *(v3 + 6);
    v84 = v31;
    v32 = *(v3 + 3);
    v80[0] = *(v3 + 2);
    v80[1] = v32;
    v76 = v85;
    v77 = v27;
    v78 = *(v3 + 10);
    v72 = v81;
    v73 = v30;
    v74 = v83;
    v75 = v26;
    v88 = v3[22];
    v79 = v3[22];
    v70 = v80[0];
    v71 = v29;
    v94 = 1;
    sub_17AA4(v80, v68, &qword_27E4A0, &qword_1E8860);
    sub_18630();
    sub_1E1C80();
    v68[6] = v76;
    v68[7] = v77;
    v68[8] = v78;
    v69 = v79;
    v68[2] = v72;
    v68[3] = v73;
    v68[4] = v74;
    v68[5] = v75;
    v68[0] = v70;
    v68[1] = v71;
    sub_18E48(v68, &qword_27E4A0, &qword_1E8860);
    v33 = *(v3 + 29);
    v67[2] = *(v3 + 27);
    v67[3] = v33;
    v34 = *(v3 + 33);
    v67[4] = *(v3 + 31);
    v67[5] = v34;
    v35 = *(v3 + 25);
    v67[0] = *(v3 + 23);
    v67[1] = v35;
    v36 = *(v3 + 29);
    v63 = *(v3 + 27);
    v64 = v36;
    v37 = *(v3 + 33);
    v65 = *(v3 + 31);
    v66 = v37;
    v38 = *(v3 + 25);
    v61 = *(v3 + 23);
    v62 = v38;
    v93 = 2;
    sub_17AA4(v67, v60, &qword_27FD08, &qword_1E94F0);
    sub_143D0();
    sub_1E1C80();
    v60[2] = v63;
    v60[3] = v64;
    v60[4] = v65;
    v60[5] = v66;
    v60[0] = v61;
    v60[1] = v62;
    sub_18E48(v60, &qword_27FD08, &qword_1E94F0);
    v39 = v3[37];
    v55 = *(v3 + 35);
    v56 = v39;
    v92 = 3;
    sub_28450();

    sub_1E1C80();
    v56, v40, v41, v42, v43, v44, v45, v46;
    v47 = v3[39];
    v48 = v3[40];
    v49 = v3[41];
    v50 = v3[42];
    v51 = v3[43];
    *&v55 = v3[38];
    *(&v55 + 1) = v47;
    v56 = v48;
    v57 = v49;
    v58 = v50;
    v59 = v51;
    v92 = 4;
    sub_13BDC(v55, v47, v48, v49, v50, v51);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v55, *(&v55 + 1), v56, v57, v58, v59, v52, v53);
    type metadata accessor for PageViewEvent.Model(0);
    LOBYTE(v55) = 5;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_E56D4()
{
  result = qword_2859C8;
  if (!qword_2859C8)
  {
    result = swift_getWitnessTable(byte_1F7C78, &type metadata for PageViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2859C8);
  }

  return result;
}

void PageViewEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_1E1150();
  v43 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_3D68(&qword_2859D0, &qword_1F7A98);
  v44 = *(v47 - 8);
  __chkstk_darwin(v47);
  v7 = v40 - v6;
  v8 = type metadata accessor for PageViewEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v63 = a1;
  sub_48B8(a1, v11);
  sub_E56D4();
  v46 = v7;
  v12 = v48;
  sub_1E1DF0();
  if (v12)
  {
    sub_4E48(v63, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v48 = v5;
    v20 = v10;
    v21 = v44;
    v22 = v45;
    LOBYTE(v54) = 0;
    sub_18F50();
    sub_1E1C20();
    v23 = *(&v61[1] + 1);
    *v20 = *&v61[0];
    v41 = *(v61 + 8);
    *(v20 + 8) = *(v61 + 8);
    v42 = v23;
    *(v20 + 24) = v23;
    v60 = 1;
    sub_18FA4();
    sub_1E1BB0();
    v24 = v61[7];
    *(v20 + 128) = v61[6];
    *(v20 + 144) = v24;
    *(v20 + 160) = v61[8];
    *(v20 + 176) = v62;
    v25 = v61[3];
    *(v20 + 64) = v61[2];
    *(v20 + 80) = v25;
    v26 = v61[5];
    *(v20 + 96) = v61[4];
    *(v20 + 112) = v26;
    v27 = v61[1];
    *(v20 + 32) = v61[0];
    *(v20 + 48) = v27;
    v53 = 2;
    sub_14CB8();
    v40[1] = 0;
    sub_1E1BB0();
    v28 = v57;
    *(v20 + 216) = v56;
    *(v20 + 232) = v28;
    *(v20 + 248) = v58;
    v29 = v55;
    *(v20 + 184) = v54;
    *(v20 + 200) = v29;
    *(v20 + 264) = v59;
    v52 = 3;
    sub_28EF4();
    sub_1E1BB0();
    v30 = v50;
    *(v20 + 280) = v49;
    *(v20 + 296) = v30;
    v52 = 4;
    sub_DAD8();
    sub_1E1BB0();
    v31 = v50;
    *(v20 + 304) = v49;
    *(v20 + 320) = v31;
    *(v20 + 336) = v51;
    LOBYTE(v49) = 5;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v32 = v48;
    sub_1E1C20();
    (*(v21 + 8))(v46, v47);
    (*(v43 + 32))(v20 + *(v8 + 36), v32, v3);
    sub_E5D98(v20, v22);
    sub_4E48(v63, v33, v34, v35, v36, v37, v38, v39);
    sub_E5DFC(v20);
  }
}

uint64_t sub_E5D98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E5DFC(uint64_t a1)
{
  v2 = type metadata accessor for PageViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E5EF8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v14 - 8) + 104))(a2 + v13, v7, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

uint64_t sub_E6128(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_E639C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[9];

  return v21(v22, a2, a2, v20);
}

void sub_E6608(uint64_t a1)
{
  sub_E6804(319, &qword_27E580, sub_18F50, sub_18598, &type metadata for PageData);
  if (v1 <= 0x3F)
  {
    sub_E6804(319, &unk_27E588, sub_18FA4, sub_18630, &type metadata for LinkData);
    if (v2 <= 0x3F)
    {
      sub_E6804(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
      if (v3 <= 0x3F)
      {
        sub_E6804(319, &qword_27EAE8, sub_28EF4, sub_28450, &type metadata for UpSellData);
        if (v4 <= 0x3F)
        {
          sub_E6804(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
          if (v5 <= 0x3F)
          {
            sub_5684(319);
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

void sub_E6804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_E6894(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_E6954(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_E69F8(uint64_t a1)
{
  sub_19FE0(319, &unk_27E650, &type metadata for LinkData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_27FE30, &type metadata for ContentData);
    if (v2 <= 0x3F)
    {
      sub_19FE0(319, &qword_27EBC8, &type metadata for UpSellData);
      if (v3 <= 0x3F)
      {
        sub_19FE0(319, &qword_27E398, &type metadata for SeriesData);
        if (v4 <= 0x3F)
        {
          sub_1E1150();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_E6B28()
{
  result = qword_285B18;
  if (!qword_285B18)
  {
    result = swift_getWitnessTable(byte_1F7C50, &type metadata for PageViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_285B18);
  }

  return result;
}

unint64_t sub_E6B80()
{
  result = qword_285B20;
  if (!qword_285B20)
  {
    result = swift_getWitnessTable(aAz, &type metadata for PageViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_285B20);
  }

  return result;
}

unint64_t sub_E6BD8()
{
  result = qword_285B28;
  if (!qword_285B28)
  {
    result = swift_getWitnessTable(aIz, &type metadata for PageViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_285B28);
  }

  return result;
}

uint64_t sub_E6C2C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6174614465676170 && a2 == 0xE800000000000000;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v12 = 0xEB00000000617461;
    if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
      return 5;
    }

    else
    {
      v13 = sub_1E1D30();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 5;
      }

      else
      {
        return 6;
      }
    }
  }
}

uint64_t OptionListData.init(optionIdentifier:optionSelected:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static UserEmbedding.== infix(_:_:)(uint64_t *a1, void *a2)
{
  result = *a1;
  v4 = a1[2];
  v5 = a2[2];
  if (result != *a2 || a1[1] != a2[1])
  {
    result = sub_1E1D30();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(v4 + 16);
  if (v7 != *(v5 + 16))
  {
    return 0;
  }

  if (!v7 || v4 == v5)
  {
    return 1;
  }

  v8 = (v4 + 32);
  v9 = (v5 + 32);
  while (v7)
  {
    v10 = *v8++;
    v11 = v10;
    v12 = *v9++;
    result = v11 == v12;
    if (v11 != v12 || v7-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_E6F28()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701667182;
  }
}

void sub_E6F58(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v11 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {
    0xE500000000000000, a2, a3, a4, a5, a6, a7, a8;
    v13 = 1;
  }

  else
  {
    v14 = sub_1E1D30();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a9 = v13;
}

uint64_t sub_E7030(uint64_t a1)
{
  v2 = sub_E7274();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E706C(uint64_t a1)
{
  v2 = sub_E7274();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UserFeature.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_285B30, &qword_1F7CC8);
  v10 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  sub_48B8(a1, a1[3]);
  sub_E7274();
  sub_1E1E00();
  v13 = 0;
  sub_1E1CB0();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    sub_3D68(&qword_285B40, &qword_1F7CD0);
    sub_E7510(&qword_285B48, &protocol witness table for Float, &protocol conformance descriptor for <A> [A]);
    sub_1E1CF0();
  }

  return (*(v10 + 8))(v6, v4);
}

unint64_t sub_E7274()
{
  result = qword_285B38;
  if (!qword_285B38)
  {
    result = swift_getWitnessTable(byte_1F7EB8, &type metadata for UserFeature.CodingKeys, v0, v1);
    atomic_store(result, &qword_285B38);
  }

  return result;
}

void UserFeature.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_285B50, &qword_1F7CD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v42 - v7;
  sub_48B8(a1, a1[3]);
  sub_E7274();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v44 = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    v19 = v16;
    sub_3D68(&qword_285B40, &qword_1F7CD0);
    v43 = 1;
    sub_E7510(&qword_285B58, &protocol witness table for Float, &protocol conformance descriptor for <A> [A]);
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    v20 = v42[1];
    *a2 = v19;
    a2[1] = v18;
    a2[2] = v20;

    sub_4E48(a1, v21, v22, v23, v24, v25, v26, v27);
    v20, v28, v29, v30, v31, v32, v33, v34;
    v18, v35, v36, v37, v38, v39, v40, v41;
  }
}

uint64_t sub_E7510(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_5DE50(&qword_285B40, &qword_1F7CD0);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_E7580()
{
  result = qword_285B60;
  if (!qword_285B60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserFeature, &type metadata for UserFeature, v0, v1);
    atomic_store(result, &qword_285B60);
  }

  return result;
}

unint64_t sub_E75D8()
{
  result = qword_285B68;
  if (!qword_285B68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserFeature, &type metadata for UserFeature, v0, v1);
    atomic_store(result, &qword_285B68);
  }

  return result;
}

uint64_t sub_E762C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  return sub_5D094(v2, v3);
}

uint64_t sub_E76D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_E7718(uint64_t result, int a2, int a3)
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

unint64_t sub_E777C()
{
  result = qword_285B70;
  if (!qword_285B70)
  {
    result = swift_getWitnessTable(byte_1F7E90, &type metadata for UserFeature.CodingKeys, v0, v1);
    atomic_store(result, &qword_285B70);
  }

  return result;
}

unint64_t sub_E77D4()
{
  result = qword_285B78;
  if (!qword_285B78)
  {
    result = swift_getWitnessTable(aX, &type metadata for UserFeature.CodingKeys, v0, v1);
    atomic_store(result, &qword_285B78);
  }

  return result;
}

unint64_t sub_E782C()
{
  result = qword_285B80;
  if (!qword_285B80)
  {
    result = swift_getWitnessTable(aX_0, &type metadata for UserFeature.CodingKeys, v0, v1);
    atomic_store(result, &qword_285B80);
  }

  return result;
}

BookAnalytics::ContentSource_optional __swiftcall ContentSource.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260AB8;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 8;
  if (v5 < 8)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t ContentSource.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x7550796C696D6166;
  if (v1 != 6)
  {
    v3 = 0x646567616E616DLL;
  }

  v4 = 0x656C706D6173;
  if (v1 != 4)
  {
    v4 = 0x5364656E776F6E75;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x64616F6C65646973;
  if (v1 != 2)
  {
    v5 = 0x726564726F657270;
  }

  if (*v0)
  {
    v2 = 0x6573616863727570;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_E7A00()
{
  result = qword_285B88;
  if (!qword_285B88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentSource, &type metadata for ContentSource, v0, v1);
    atomic_store(result, &qword_285B88);
  }

  return result;
}

void sub_E7A7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEE00657361686372;
  v6 = 0x7550796C696D6166;
  if (v2 != 6)
  {
    v6 = 0x646567616E616DLL;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C706D6173;
  if (v2 != 4)
  {
    v8 = 0x5364656E776F6E75;
    v7 = 0xEC00000065726F74;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006465;
  v10 = 0x64616F6C65646973;
  if (v2 != 2)
  {
    v10 = 0x726564726F657270;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x6573616863727570;
    v3 = 0xE900000000000064;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_E7C54()
{
  result = qword_285B90;
  if (!qword_285B90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentSource, &type metadata for ContentSource, v0, v1);
    atomic_store(result, &qword_285B90);
  }

  return result;
}

void __swiftcall ContentExposureData.init(hasLanguageFlag:)(BookAnalytics::ContentExposureData *__return_ptr retstr, Swift::Bool_optional hasLanguageFlag)
{
  retstr->sectionType._countAndFlagsBits = 0;
  retstr->sectionType._object = 0xE000000000000000;
  retstr->sectionID._countAndFlagsBits = 0;
  retstr->sectionID._object = 0xE000000000000000;
  retstr->sectionName._countAndFlagsBits = 0;
  retstr->sectionName._object = 0xE000000000000000;
  retstr->positionInSection._countAndFlagsBits = 0;
  retstr->positionInSection._object = 0xE000000000000000;
  retstr->cellSize._countAndFlagsBits = 0;
  retstr->cellSize._object = 0xE000000000000000;
  retstr->positionInSubSection.value = 0;
  retstr->positionInSubSection.is_nil = 1;
  *(&retstr->subSectionID.value + 3) = 0;
  *(&retstr->subSectionID + 7) = 1;
  retstr->subSectionName.value._countAndFlagsBits = 0;
  retstr->subSectionName.value._object = 0;
  retstr->subSectionPosition.value = 0;
  retstr->subSectionPosition.is_nil = 1;
  retstr->hasLanguageTag = hasLanguageFlag;
}

void ContentExposureData.updating(for:with:)(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v7 = v2[5];
  v150 = v2[4];
  v151 = v7;
  *v152 = v2[6];
  *&v152[14] = *(v2 + 110);
  v8 = v2[1];
  v146 = *v2;
  v147 = v8;
  v9 = v2[3];
  v148 = v2[2];
  v149 = v9;
  v141 = v6;
  v142 = sub_E97BC;
  v143 = 0;
  v144 = sub_E99E4;
  v145 = 0;

  sub_E97C4();
  if (v12)
  {
    goto LABEL_97;
  }

  if (*(v6 + 36) != v11)
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v10 == 1 << *(v6 + 32))
  {
    v6, v11, v12, v13, v14, v15, v16, v17;
    v18 = v151;
    *(a2 + 64) = v150;
    *(a2 + 80) = v18;
    *(a2 + 96) = *v152;
    *(a2 + 110) = *&v152[14];
    v19 = v147;
    *a2 = v146;
    *(a2 + 16) = v19;
    v20 = v149;
    *(a2 + 32) = v148;
    *(a2 + 48) = v20;
    sub_52748(&v146, &v121);
    return;
  }

  v21 = sub_E99F4(v10, v11, 0, v6);

  sub_E8688(v22, &v121);
  v21, v23, v24, v25, v26, v27, v28, v29;
  *v138 = v125;
  *&v138[16] = v126;
  v134 = v121;
  v135 = v122;
  v136 = v123;
  v137 = v124;
  v140[1] = v122;
  v140[2] = v123;
  v139 = v127;
  v140[0] = v121;
  v140[3] = v124;
  v140[4] = v125;
  v140[5] = v126;
  v140[6] = v127;
  sub_E9A44(&v134, v133);
  sub_E9AB4(v140);
  if (!v135)
  {
    goto LABEL_98;
  }

  v6, v30, v31, v32, v33, v34, v35, v36;
  v4 = v135;
  v37 = *v138;
  v38 = *(&v139 + 1);
  v130 = v149;
  v131 = v150;
  v132 = v151;
  v111 = DWORD2(v151);
  v112 = v138[28];
  v39 = BYTE12(v151);
  v129 = HIBYTE(v151);
  v128 = *(&v151 + 13);
  v118 = v139;
  v119 = *(&v134 + 1);
  v113 = *&v138[24];
  v114 = *(&v137 + 1);
  if (v134 <= 2u)
  {
    if (v134)
    {
      if (v134 == 1)
      {
        v117 = 0xE600000000000000;
        v40 = 0x68736F6F7773;
      }

      else
      {
        v117 = 0xE500000000000000;
        v40 = 0x6B63697262;
      }
    }

    else
    {
      v117 = 0xE700000000000000;
      v40 = 0x6E776F6E6B6E75;
    }
  }

  else if (v134 > 4u)
  {
    if (v134 == 5)
    {
      v117 = 0xE500000000000000;
      v40 = 0x736C616F67;
    }

    else
    {
      v117 = 0xE600000000000000;
      v40 = 0x6573776F7262;
    }
  }

  else if (v134 == 3)
  {
    v117 = 0x80000000002129E0;
    v40 = 0xD000000000000010;
  }

  else
  {
    v117 = 0xE800000000000000;
    v40 = 0x65736163776F6C66;
  }

  v116 = v40;
  v41 = *&v152[16];
  v42 = v152[20];
  v120 = *&v138[8];
  v110 = *v152;
  v115 = v152[21];
  v43 = *(&v148 + 1);
  v44 = *(&v147 + 1);
  v45 = *(&v146 + 1);
  sub_52748(&v146, &v121);
  v45, v46, v47, v48, v49, v50, v51, v52;
  v3 = v38;

  v44, v53, v54, v55, v56, v57, v58, v59;

  v43, v60, v61, v62, v63, v64, v65, v66;
  if (!v37)
  {
    sub_E9AB4(&v134);
    v76 = v110;
    v77 = v115;
    v78 = v111;
LABEL_88:
    *a2 = v116;
    *(a2 + 8) = v117;
    *(a2 + 16) = v118;
    *(a2 + 24) = v3;
    *(a2 + 32) = v119;
    *(a2 + 40) = v4;
    v101 = v131;
    *(a2 + 48) = v130;
    *(a2 + 64) = v101;
    *(a2 + 80) = v132;
    *(a2 + 88) = v78;
    *(a2 + 92) = v39;
    *(a2 + 93) = v128;
    *(a2 + 95) = v129;
    *(a2 + 96) = v76;
    *(a2 + 112) = v41;
    *(a2 + 116) = v42;
    *(a2 + 117) = v77;
    return;
  }

  v67 = HIBYTE(v37) & 0xF;
  v68 = v114 & 0xFFFFFFFFFFFFLL;
  if ((v37 & 0x2000000000000000) != 0)
  {
    v69 = HIBYTE(v37) & 0xF;
  }

  else
  {
    v69 = v114 & 0xFFFFFFFFFFFFLL;
  }

  if (!v69)
  {
LABEL_90:
    v78 = 0;
    LOBYTE(v67) = 1;
    v77 = v115;
LABEL_87:
    v93 = *&v152[8];
    LOBYTE(v121) = v67 & 1;

    v93, v94, v95, v96, v97, v98, v99, v100;
    sub_E9AB4(&v134);
    v76 = v120;
    v41 = v113;
    v42 = v112 & 1;
    v133[0] = v112 & 1;
    v39 = v121;
    goto LABEL_88;
  }

  if ((v37 & 0x1000000000000000) != 0)
  {

    sub_E8840(v114, v37, 10);
    v72 = v102;
    v37, v103, v104, v105, v106, v107, v108, v109;
    v67 = HIDWORD(v72) & 1;
    goto LABEL_83;
  }

  if ((v37 & 0x2000000000000000) != 0)
  {
    *&v121 = v114;
    *(&v121 + 1) = v37 & 0xFFFFFFFFFFFFFFLL;
    if (v114 == 43)
    {
      if (v67)
      {
        if (--v67)
        {
          LODWORD(v72) = 0;
          v85 = &v121 + 1;
          while (1)
          {
            v86 = *v85 - 48;
            if (v86 > 9)
            {
              break;
            }

            v87 = 10 * v72;
            if (v87 != v87)
            {
              break;
            }

            LODWORD(v72) = v87 + v86;
            if (__OFADD__(v87, v86))
            {
              break;
            }

            ++v85;
            if (!--v67)
            {
              goto LABEL_82;
            }
          }
        }

        goto LABEL_81;
      }

      goto LABEL_96;
    }

    if (v114 != 45)
    {
      if (v67)
      {
        LODWORD(v72) = 0;
        v90 = &v121;
        while (1)
        {
          v91 = *v90 - 48;
          if (v91 > 9)
          {
            break;
          }

          v92 = 10 * v72;
          if (v92 != v92)
          {
            break;
          }

          LODWORD(v72) = v92 + v91;
          if (__OFADD__(v92, v91))
          {
            break;
          }

          ++v90;
          if (!--v67)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    if (v67)
    {
      if (--v67)
      {
        LODWORD(v72) = 0;
        v79 = &v121 + 1;
        while (1)
        {
          v80 = *v79 - 48;
          if (v80 > 9)
          {
            break;
          }

          v81 = 10 * v72;
          if (v81 != v81)
          {
            break;
          }

          LODWORD(v72) = v81 - v80;
          if (__OFSUB__(v81, v80))
          {
            break;
          }

          ++v79;
          if (!--v67)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }
  }

  else
  {
    if ((v114 & 0x1000000000000000) != 0)
    {
      v70 = ((v37 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v70 = sub_1E1AF0();
    }

    v71 = *v70;
    if (v71 == 43)
    {
      if (v68 >= 1)
      {
        v67 = v68 - 1;
        if (v68 != 1)
        {
          LODWORD(v72) = 0;
          if (v70)
          {
            v82 = v70 + 1;
            while (1)
            {
              v83 = *v82 - 48;
              if (v83 > 9)
              {
                goto LABEL_81;
              }

              v84 = 10 * v72;
              if (v84 != v84)
              {
                goto LABEL_81;
              }

              LODWORD(v72) = v84 + v83;
              if (__OFADD__(v84, v83))
              {
                goto LABEL_81;
              }

              ++v82;
              if (!--v67)
              {
                goto LABEL_82;
              }
            }
          }

          goto LABEL_73;
        }

        goto LABEL_81;
      }

      goto LABEL_95;
    }

    if (v71 != 45)
    {
      if (v68)
      {
        LODWORD(v72) = 0;
        if (v70)
        {
          while (1)
          {
            v88 = *v70 - 48;
            if (v88 > 9)
            {
              goto LABEL_81;
            }

            v89 = 10 * v72;
            if (v89 != v89)
            {
              goto LABEL_81;
            }

            LODWORD(v72) = v89 + v88;
            if (__OFADD__(v89, v88))
            {
              goto LABEL_81;
            }

            ++v70;
            if (!--v68)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_73;
      }

LABEL_81:
      LODWORD(v72) = 0;
      LOBYTE(v67) = 1;
      goto LABEL_82;
    }

    if (v68 >= 1)
    {
      v67 = v68 - 1;
      if (v68 != 1)
      {
        LODWORD(v72) = 0;
        if (v70)
        {
          v73 = v70 + 1;
          while (1)
          {
            v74 = *v73 - 48;
            if (v74 > 9)
            {
              goto LABEL_81;
            }

            v75 = 10 * v72;
            if (v75 != v75)
            {
              goto LABEL_81;
            }

            LODWORD(v72) = v75 - v74;
            if (__OFSUB__(v75, v74))
            {
              goto LABEL_81;
            }

            ++v73;
            if (!--v67)
            {
              goto LABEL_82;
            }
          }
        }

LABEL_73:
        LOBYTE(v67) = 0;
LABEL_82:
        v133[0] = v67;
LABEL_83:
        if (v67)
        {
          v78 = 0;
        }

        else
        {
          v78 = v72;
        }

        v77 = v115;
        goto LABEL_87;
      }

      goto LABEL_81;
    }

    __break(1u);
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
}

void ContentExposureData.updating(for:with:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = v4[5];
  v44 = v4[4];
  v45 = v7;
  v46[0] = v4[6];
  *(v46 + 14) = *(v4 + 110);
  v8 = v4[1];
  v43[0] = *v4;
  v43[1] = v8;
  v9 = v4[3];
  v43[2] = v4[2];
  v43[3] = v9;
  v10 = a2[3];
  v11 = a2[4];
  sub_48B8(a2, v10);
  (*(v11 + 8))(a1, v10, v11);
  if (v12)
  {
    v13 = v4[5];
    *(a3 + 64) = v4[4];
    *(a3 + 80) = v13;
    *(a3 + 96) = v4[6];
    *(a3 + 110) = *(v4 + 110);
    v14 = v4[1];
    *a3 = *v4;
    *(a3 + 16) = v14;
    v15 = v4[3];
    *(a3 + 32) = v4[2];
    *(a3 + 48) = v15;
    sub_52748(v43, &v41);
  }

  else
  {
    v16 = *(&v44 + 1);
    v37 = *v4;
    v38 = v4[1];
    v39 = v4[2];
    v40 = v4[3];
    v35 = v4[5];
    *v36 = v4[6];
    *&v36[14] = *(v4 + 110);
    sub_52748(v43, &v41);
    v41 = sub_1E1910();
    v42 = v17;
    v47._countAndFlagsBits = 44;
    v47._object = 0xE100000000000000;
    sub_1E17E0(v47);
    v48._countAndFlagsBits = sub_1E1910();
    object = v48._object;
    sub_1E17E0(v48);
    v16, v19, v20, v21, v22, v23, v24, v25;
    object, v26, v27, v28, v29, v30, v31, v32;
    v33 = v41;
    v34 = v42;
    *a3 = v37;
    *(a3 + 16) = v38;
    *(a3 + 32) = v39;
    *(a3 + 48) = v40;
    *(a3 + 64) = v33;
    *(a3 + 72) = v34;
    *(a3 + 80) = v35;
    *(a3 + 96) = *v36;
    *(a3 + 110) = *&v36[14];
  }
}

__n128 ContentExposureData.updating(for:with:)@<Q0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(v3 + 80);
  v33[4] = *(v3 + 64);
  v34 = v7;
  v35[0] = *(v3 + 96);
  *(v35 + 14) = *(v3 + 110);
  v8 = *(v3 + 16);
  v33[0] = *v3;
  v33[1] = v8;
  v9 = *(v3 + 48);
  v33[2] = *(v3 + 32);
  v33[3] = v9;
  v10 = *(&v9 + 1);
  v11 = v7;
  v12 = BYTE4(v7);
  if (a2)
  {
    sub_52748(v33, v32);
    v10, v13, v14, v15, v16, v17, v18, v19;
    v20 = 0;
    v21 = 0xE000000000000000;
    if ((BYTE12(v34) & 1) == 0)
    {
      v11 = 0;
LABEL_9:
      v12 = a2 & 1;
      v32[0] = a2 & 1;
    }
  }

  else
  {
    sub_52748(v33, v32);
    sub_E9B1C();
    v20 = sub_1E1A50();
    v21 = v23;
    v10, v23, v24, v25, v26, v27, v28, v29;
    if ((BYTE12(v34) & 1) == 0)
    {
      if (a1 < 0xFFFFFFFF80000000)
      {
        v11 = 0x80000000;
      }

      else if (a1 >= 0x7FFFFFFF)
      {
        v11 = 0x7FFFFFFF;
      }

      else
      {
        v11 = a1;
      }

      goto LABEL_9;
    }
  }

  v30 = *(v4 + 16);
  *a3 = *v4;
  *(a3 + 16) = v30;
  *(a3 + 32) = *(v4 + 32);
  *(a3 + 48) = v20;
  *(a3 + 56) = v21;
  *(a3 + 64) = *(v4 + 64);
  *(a3 + 80) = v11;
  *(a3 + 84) = v12;
  *(a3 + 117) = *(v4 + 117);
  *(a3 + 101) = *(v4 + 101);
  result = *(v4 + 85);
  *(a3 + 85) = result;
  return result;
}

double sub_E8688@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_E9C4C(v4, v15);
      sub_E9C4C(v15, v14);
      sub_3D68(&qword_285BB0, &qword_20EAA0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_4E48(v15, v5, v6, v7, v8, v9, v10, v11);
      v4 += 48;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v13[4] = v13[11];
    v13[5] = v13[12];
    v13[6] = v13[13];
    v13[0] = v13[7];
    v13[1] = v13[8];
    v13[2] = v13[9];
    v13[3] = v13[10];
    sub_28354(v13);
    sub_E9CB0(v15, v16);
  }

  else
  {
LABEL_5:
    memset(v16, 0, sizeof(v16));
  }

  sub_3D68(&qword_285BB8, &unk_210050);
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    a2[5] = 0u;
    a2[6] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

void *sub_E87CC(uint64_t a1, uint64_t a2)
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

  sub_3D68(&qword_285690, &qword_1F6F98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_E8840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = a1;
  v88 = a2;

  v4 = sub_1E1860();
  v12 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v46 = v5;
    v12 = sub_E9348(v4, v5);
    v48 = v47;
    v46, v47, v49, v50, v51, v52, v53, v54;
    v5 = v48;
    if ((v48 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v12 & 0x1000000000000000) != 0)
    {
      v13 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v85 = v5;
      v13 = sub_1E1AF0();
      v14 = v86;
      v5 = v85;
    }

    v15 = *v13;
    if (v15 == 43)
    {
      if (v14 >= 1)
      {
        v28 = v14 - 1;
        if (v28)
        {
          v29 = a3 + 48;
          v30 = a3 + 55;
          v31 = a3 + 87;
          if (a3 > 10)
          {
            v29 = 58;
          }

          else
          {
            v31 = 97;
            v30 = 65;
          }

          if (v13)
          {
            v32 = 0;
            v33 = v13 + 1;
            v22 = 1;
            do
            {
              v34 = *v33;
              if (v34 < 0x30 || v34 >= v29)
              {
                if (v34 < 0x41 || v34 >= v30)
                {
                  if (v34 < 0x61 || v34 >= v31)
                  {
                    goto LABEL_127;
                  }

                  v35 = -87;
                }

                else
                {
                  v35 = -55;
                }
              }

              else
              {
                v35 = -48;
              }

              v36 = v32 * a3;
              if (v36 != v36)
              {
                goto LABEL_126;
              }

              v37 = v34 + v35;
              v27 = __OFADD__(v36, v37);
              v32 = v36 + v37;
              if (v27)
              {
                goto LABEL_126;
              }

              ++v33;
              --v28;
            }

            while (v28);
LABEL_46:
            v22 = 0;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v22 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v15 != 45)
    {
      if (v14)
      {
        v38 = a3 + 48;
        v39 = a3 + 55;
        v40 = a3 + 87;
        if (a3 > 10)
        {
          v38 = 58;
        }

        else
        {
          v40 = 97;
          v39 = 65;
        }

        if (v13)
        {
          v41 = 0;
          v22 = 1;
          do
          {
            v42 = *v13;
            if (v42 < 0x30 || v42 >= v38)
            {
              if (v42 < 0x41 || v42 >= v39)
              {
                if (v42 < 0x61 || v42 >= v40)
                {
                  goto LABEL_127;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v41 * a3;
            if (v44 != v44)
            {
              goto LABEL_126;
            }

            v45 = v42 + v43;
            v27 = __OFADD__(v44, v45);
            v41 = v44 + v45;
            if (v27)
            {
              goto LABEL_126;
            }

            ++v13;
            --v14;
          }

          while (v14);
          v22 = 0;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v14 >= 1)
    {
      v16 = v14 - 1;
      if (v16)
      {
        v17 = a3 + 48;
        v18 = a3 + 55;
        v19 = a3 + 87;
        if (a3 > 10)
        {
          v17 = 58;
        }

        else
        {
          v19 = 97;
          v18 = 65;
        }

        if (v13)
        {
          v20 = 0;
          v21 = v13 + 1;
          v22 = 1;
          while (1)
          {
            v23 = *v21;
            if (v23 < 0x30 || v23 >= v17)
            {
              if (v23 < 0x41 || v23 >= v18)
              {
                if (v23 < 0x61 || v23 >= v19)
                {
                  goto LABEL_127;
                }

                v24 = -87;
              }

              else
              {
                v24 = -55;
              }
            }

            else
            {
              v24 = -48;
            }

            v25 = v20 * a3;
            if (v25 != v25)
            {
              goto LABEL_126;
            }

            v26 = v23 + v24;
            v27 = __OFSUB__(v25, v26);
            v20 = v25 - v26;
            if (v27)
            {
              goto LABEL_126;
            }

            ++v21;
            if (!--v16)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v22 = 0;
LABEL_127:
        v5, v5, v6, v7, v8, v9, v10, v11;
        LOBYTE(v87) = v22;
        return;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v55 = HIBYTE(v5) & 0xF;
  v87 = v12;
  v88 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v12 != 43)
  {
    if (v12 != 45)
    {
      if (v55)
      {
        v76 = 0;
        v77 = a3 + 48;
        v78 = a3 + 55;
        v79 = a3 + 87;
        if (a3 > 10)
        {
          v77 = 58;
        }

        else
        {
          v79 = 97;
          v78 = 65;
        }

        v80 = &v87;
        v22 = 1;
        while (1)
        {
          v81 = *v80;
          if (v81 < 0x30 || v81 >= v77)
          {
            if (v81 < 0x41 || v81 >= v78)
            {
              if (v81 < 0x61 || v81 >= v79)
              {
                goto LABEL_127;
              }

              v82 = -87;
            }

            else
            {
              v82 = -55;
            }
          }

          else
          {
            v82 = -48;
          }

          v83 = v76 * a3;
          if (v83 != v83)
          {
            goto LABEL_126;
          }

          v84 = v81 + v82;
          v27 = __OFADD__(v83, v84);
          v76 = v83 + v84;
          if (v27)
          {
            goto LABEL_126;
          }

          v80 = (v80 + 1);
          if (!--v55)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v55)
    {
      v56 = v55 - 1;
      if (v56)
      {
        v57 = 0;
        v58 = a3 + 48;
        v59 = a3 + 55;
        v60 = a3 + 87;
        if (a3 > 10)
        {
          v58 = 58;
        }

        else
        {
          v60 = 97;
          v59 = 65;
        }

        v61 = &v87 + 1;
        v22 = 1;
        while (1)
        {
          v62 = *v61;
          if (v62 < 0x30 || v62 >= v58)
          {
            if (v62 < 0x41 || v62 >= v59)
            {
              if (v62 < 0x61 || v62 >= v60)
              {
                goto LABEL_127;
              }

              v63 = -87;
            }

            else
            {
              v63 = -55;
            }
          }

          else
          {
            v63 = -48;
          }

          v64 = v57 * a3;
          if (v64 != v64)
          {
            goto LABEL_126;
          }

          v65 = v62 + v63;
          v27 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          if (v27)
          {
            goto LABEL_126;
          }

          ++v61;
          if (!--v56)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v55)
  {
    v66 = v55 - 1;
    if (v66)
    {
      v67 = 0;
      v68 = a3 + 48;
      v69 = a3 + 55;
      v70 = a3 + 87;
      if (a3 > 10)
      {
        v68 = 58;
      }

      else
      {
        v70 = 97;
        v69 = 65;
      }

      v71 = &v87 + 1;
      v22 = 1;
      do
      {
        v72 = *v71;
        if (v72 < 0x30 || v72 >= v68)
        {
          if (v72 < 0x41 || v72 >= v69)
          {
            if (v72 < 0x61 || v72 >= v70)
            {
              goto LABEL_127;
            }

            v73 = -87;
          }

          else
          {
            v73 = -55;
          }
        }

        else
        {
          v73 = -48;
        }

        v74 = v67 * a3;
        if (v74 != v74)
        {
          goto LABEL_126;
        }

        v75 = v72 + v73;
        v27 = __OFADD__(v74, v75);
        v67 = v74 + v75;
        if (v27)
        {
          goto LABEL_126;
        }

        ++v71;
        --v66;
      }

      while (v66);
LABEL_125:
      v22 = 0;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
}

void sub_E8DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a1;
  v80 = a2;

  v4 = sub_1E1860();
  v12 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v41 = v5;
    v12 = sub_E9348(v4, v5);
    v43 = v42;
    v41, v42, v44, v45, v46, v47, v48, v49;
    v5 = v43;
    if ((v43 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v12 & 0x1000000000000000) != 0)
    {
      v13 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v77 = v5;
      v13 = sub_1E1AF0();
      v14 = v78;
      v5 = v77;
    }

    v15 = *v13;
    if (v15 == 43)
    {
      if (v14 >= 1)
      {
        v25 = v14 - 1;
        if (v25)
        {
          v26 = a3 + 48;
          v27 = a3 + 55;
          v28 = a3 + 87;
          if (a3 > 10)
          {
            v26 = 58;
          }

          else
          {
            v28 = 97;
            v27 = 65;
          }

          if (v13)
          {
            v29 = 0;
            v30 = v13 + 1;
            while (1)
            {
              v31 = *v30;
              if (v31 < 0x30 || v31 >= v26)
              {
                if (v31 < 0x41 || v31 >= v27)
                {
                  if (v31 < 0x61 || v31 >= v28)
                  {
                    goto LABEL_125;
                  }

                  v32 = -87;
                }

                else
                {
                  v32 = -55;
                }
              }

              else
              {
                v32 = -48;
              }

              v33 = v29 * a3;
              if ((v29 * a3) >> 64 == (v29 * a3) >> 63)
              {
                v29 = v33 + (v31 + v32);
                if (!__OFADD__(v33, (v31 + v32)))
                {
                  ++v30;
                  if (--v25)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v15 != 45)
    {
      if (v14)
      {
        v34 = a3 + 48;
        v35 = a3 + 55;
        v36 = a3 + 87;
        if (a3 > 10)
        {
          v34 = 58;
        }

        else
        {
          v36 = 97;
          v35 = 65;
        }

        if (v13)
        {
          v37 = 0;
          while (1)
          {
            v38 = *v13;
            if (v38 < 0x30 || v38 >= v34)
            {
              if (v38 < 0x41 || v38 >= v35)
              {
                if (v38 < 0x61 || v38 >= v36)
                {
                  goto LABEL_125;
                }

                v39 = -87;
              }

              else
              {
                v39 = -55;
              }
            }

            else
            {
              v39 = -48;
            }

            v40 = v37 * a3;
            if ((v37 * a3) >> 64 == (v37 * a3) >> 63)
            {
              v37 = v40 + (v38 + v39);
              if (!__OFADD__(v40, (v38 + v39)))
              {
                ++v13;
                if (--v14)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v14 >= 1)
    {
      v16 = v14 - 1;
      if (v16)
      {
        v17 = a3 + 48;
        v18 = a3 + 55;
        v19 = a3 + 87;
        if (a3 > 10)
        {
          v17 = 58;
        }

        else
        {
          v19 = 97;
          v18 = 65;
        }

        if (v13)
        {
          v20 = 0;
          v21 = v13 + 1;
          while (1)
          {
            v22 = *v21;
            if (v22 < 0x30 || v22 >= v17)
            {
              if (v22 < 0x41 || v22 >= v18)
              {
                if (v22 < 0x61 || v22 >= v19)
                {
                  break;
                }

                v23 = -87;
              }

              else
              {
                v23 = -55;
              }
            }

            else
            {
              v23 = -48;
            }

            v24 = v20 * a3;
            if ((v20 * a3) >> 64 == (v20 * a3) >> 63)
            {
              v20 = v24 - (v22 + v23);
              if (!__OFSUB__(v24, (v22 + v23)))
              {
                ++v21;
                if (--v16)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:
      v5, v5, v6, v7, v8, v9, v10, v11;
      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v50 = HIBYTE(v5) & 0xF;
  v79 = v12;
  v80 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v12 != 43)
  {
    if (v12 != 45)
    {
      if (v50)
      {
        v69 = 0;
        v70 = a3 + 48;
        v71 = a3 + 55;
        v72 = a3 + 87;
        if (a3 > 10)
        {
          v70 = 58;
        }

        else
        {
          v72 = 97;
          v71 = 65;
        }

        v73 = &v79;
        while (1)
        {
          v74 = *v73;
          if (v74 < 0x30 || v74 >= v70)
          {
            if (v74 < 0x41 || v74 >= v71)
            {
              if (v74 < 0x61 || v74 >= v72)
              {
                goto LABEL_125;
              }

              v75 = -87;
            }

            else
            {
              v75 = -55;
            }
          }

          else
          {
            v75 = -48;
          }

          v76 = v69 * a3;
          if ((v69 * a3) >> 64 == (v69 * a3) >> 63)
          {
            v69 = v76 + (v74 + v75);
            if (!__OFADD__(v76, (v74 + v75)))
            {
              v73 = (v73 + 1);
              if (--v50)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v50)
    {
      v51 = v50 - 1;
      if (v51)
      {
        v52 = 0;
        v53 = a3 + 48;
        v54 = a3 + 55;
        v55 = a3 + 87;
        if (a3 > 10)
        {
          v53 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v56 = &v79 + 1;
        while (1)
        {
          v57 = *v56;
          if (v57 < 0x30 || v57 >= v53)
          {
            if (v57 < 0x41 || v57 >= v54)
            {
              if (v57 < 0x61 || v57 >= v55)
              {
                goto LABEL_125;
              }

              v58 = -87;
            }

            else
            {
              v58 = -55;
            }
          }

          else
          {
            v58 = -48;
          }

          v59 = v52 * a3;
          if ((v52 * a3) >> 64 == (v52 * a3) >> 63)
          {
            v52 = v59 - (v57 + v58);
            if (!__OFSUB__(v59, (v57 + v58)))
            {
              ++v56;
              if (--v51)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v50)
  {
    v60 = v50 - 1;
    if (v60)
    {
      v61 = 0;
      v62 = a3 + 48;
      v63 = a3 + 55;
      v64 = a3 + 87;
      if (a3 > 10)
      {
        v62 = 58;
      }

      else
      {
        v64 = 97;
        v63 = 65;
      }

      v65 = &v79 + 1;
      while (1)
      {
        v66 = *v65;
        if (v66 < 0x30 || v66 >= v62)
        {
          if (v66 < 0x41 || v66 >= v63)
          {
            if (v66 < 0x61 || v66 >= v64)
            {
              goto LABEL_125;
            }

            v67 = -87;
          }

          else
          {
            v67 = -55;
          }
        }

        else
        {
          v67 = -48;
        }

        v68 = v61 * a3;
        if ((v61 * a3) >> 64 == (v61 * a3) >> 63)
        {
          v61 = v68 + (v66 + v67);
          if (!__OFADD__(v68, (v66 + v67)))
          {
            ++v65;
            if (--v60)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_E9348(uint64_t a1, unint64_t a2)
{
  v2 = sub_1E1870();
  v4 = v3;
  v7 = sub_E93C8(v2, v5, v6, v3);
  v4, v8, v9, v10, v11, v12, v13, v14;
  return v7;
}

uint64_t sub_E93C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v29[0] = a3;
      v29[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1E17C0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1E1A30();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_E87CC(v9, 0);
  v12 = sub_E9520(v29, &v11[2], v10, a1, a2, a3, a4);
  v13 = v29[3];

  v13, v14, v15, v16, v17, v18, v19, v20;
  if (v12 == v10)
  {
LABEL_13:
    v21 = sub_1E17C0();
    v11, v22, v23, v24, v25, v26, v27, v28;
    return v21;
  }

  __break(1u);
LABEL_11:
  sub_1E1AF0();
LABEL_4:

  return sub_1E17C0();
}

unint64_t sub_E9520(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_E9740(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1E1830();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1E1AF0();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_E9740(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1E1810();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_E9740(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1E1840();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1E1820();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_E97C4()
{
  v1 = *v0;
  v30 = v0[1];
  v29 = v0[3];
  v2 = *v0 + 64;
  v3 = sub_1E1A80();
  v4 = *(v1 + 36);
  while (1)
  {
    v6 = 1 << *(v1 + 32);
    if (v3 == v6)
    {
      break;
    }

    if (v3 < 0 || v3 >= v6)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v7 = v3 >> 6;
    if ((*(v2 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
    {
      goto LABEL_20;
    }

    v32 = *(*(v1 + 56) + 8 * v3);
    v8 = v32;

    v30(v31, &v32);
    v8, v9, v10, v11, v12, v13, v14, v15;
    v16 = v29(v31);
    v33[3] = v31[3];
    v33[4] = v31[4];
    v33[5] = v31[5];
    v33[6] = v31[6];
    v33[0] = v31[0];
    v33[1] = v31[1];
    v33[2] = v31[2];
    sub_E9AB4(v33);
    if (v16)
    {
      return;
    }

    v5 = 1 << *(v1 + 32);
    if (v3 >= v5)
    {
      goto LABEL_21;
    }

    v22 = *(v2 + 8 * v7);
    if ((v22 & (1 << v3)) == 0)
    {
      goto LABEL_22;
    }

    if (v4 != *(v1 + 36))
    {
      goto LABEL_23;
    }

    v23 = v22 & (-2 << (v3 & 0x3F));
    if (v23)
    {
      v5 = __clz(__rbit64(v23)) | v3 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v7 << 6;
      v25 = v7 + 1;
      v26 = (v1 + 72 + 8 * v7);
      while (v25 < (v5 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          sub_E9CC8(v3, v4, 0, v17, v18, v19, v20, v21);
          v5 = __clz(__rbit64(v27)) + v24;
          goto LABEL_3;
        }
      }

      sub_E9CC8(v3, v4, 0, v17, v18, v19, v20, v21);
    }

LABEL_3:
    v3 = v5;
    if (v4 != *(v1 + 36))
    {
      goto LABEL_24;
    }
  }
}

uint64_t sub_E99F4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_E9A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27E490, &qword_205F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E9AB4(uint64_t a1)
{
  v2 = sub_3D68(&qword_27E490, &qword_205F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_E9B1C()
{
  result = qword_285B98;
  if (!qword_285B98)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int, &type metadata for Int, v0, v1);
    atomic_store(result, &qword_285B98);
  }

  return result;
}

unint64_t sub_E9B70()
{
  result = qword_285BA0;
  if (!qword_285BA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentExposureData, &type metadata for ContentExposureData, v0, v1);
    atomic_store(result, &qword_285BA0);
  }

  return result;
}

unint64_t sub_E9BC4()
{
  result = qword_285BA8;
  if (!qword_285BA8)
  {
    result = swift_getWitnessTable("q7\a", &type metadata for ContentExposureData, v0, v1);
    atomic_store(result, &qword_285BA8);
  }

  return result;
}

unint64_t sub_E9C1C(uint64_t a1)
{
  *(a1 + 8) = sub_E9B70();
  result = sub_E9BC4();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_E9C4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_E9CB0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

void sub_E9CC8(BAEventReporter *self, SEL x1_0, id x2_0, id x3_0, id x4_0, int64_t x5_0, int64_t x6_0, id x7_0)
{
  if (x2_0)
  {
    self, x1_0, x2_0, x3_0, x4_0, x5_0, x6_0, x7_0;
  }
}

uint64_t HostingControllerVisibilityStateManager.State.rawValue.getter()
{
  if (*v0)
  {
    return 0x6E6564646968;
  }

  else
  {
    return 0x656C6269736976;
  }
}

uint64_t sub_E9D1C(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x6E6564646968;
  }

  else
  {
    v9 = 0x656C6269736976;
  }

  if (v8)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (*a2)
  {
    v11 = 0x6E6564646968;
  }

  else
  {
    v11 = 0x656C6269736976;
  }

  if (*a2)
  {
    v12 = 0xE600000000000000;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1E1D30();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

Swift::Int sub_E9DC0()
{
  v1 = *v0;
  sub_1E1DC0();
  if (v1)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  sub_1E17D0();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1E1DE0();
}

void sub_E9E40(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  sub_1E17D0();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_E9EAC(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  if (v2)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_E9F34(uint64_t *a1@<X8>)
{
  v2 = 0x656C6269736976;
  if (*v1)
  {
    v2 = 0x6E6564646968;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t HostingControllerVisibilityStateManager.HostingControllerLifeCycleEvent.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_E9FB8(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0xD000000000000014;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (v8)
  {
    v10 = "d";
  }

  else
  {
    v10 = "hostViewDidAppear";
  }

  v11 = (v10 | 0x8000000000000000);
  if (*a2)
  {
    v12 = 0xD000000000000014;
  }

  else
  {
    v12 = 0xD000000000000011;
  }

  if (*a2)
  {
    v13 = "hostViewDidAppear";
  }

  else
  {
    v13 = "d";
  }

  v14 = (v13 | 0x8000000000000000);
  if (v9 == v12 && v11 == v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1E1D30();
  }

  v11, a2, v12, a4, a5, a6, a7, a8;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

Swift::Int sub_EA064()
{
  v1 = *v0;
  sub_1E1DC0();
  if (v1)
  {
    v2 = "hostViewDidAppear";
  }

  else
  {
    v2 = "d";
  }

  sub_1E17D0();
  (v2 | 0x8000000000000000), v3, v4, v5, v6, v7, v8, v9;
  return sub_1E1DE0();
}

void sub_EA0E4(uint64_t a1)
{
  if (*v1)
  {
    v2 = "hostViewDidAppear";
  }

  else
  {
    v2 = "d";
  }

  sub_1E17D0();

  (v2 | 0x8000000000000000), v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_EA150(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  if (v2)
  {
    v3 = "hostViewDidAppear";
  }

  else
  {
    v3 = "d";
  }

  sub_1E17D0();
  (v3 | 0x8000000000000000), v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_EA1D8(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v1)
  {
    v3 = "hostViewDidAppear";
  }

  else
  {
    v3 = "d";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

void sub_EA224(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, Swift::OpaquePointer a3@<X2>, char *a4@<X8>)
{
  v16._countAndFlagsBits = a1;
  v16._object = a2;
  v7 = sub_1E1B70(a3, v16);
  a2, v8, v9, v10, v11, v12, v13, v14;
  if (v7 == 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  if (!v7)
  {
    v15 = 0;
  }

  *a4 = v15;
}

uint64_t HostingControllerVisibilityStateManager.SwiftUILifeCycleEvent.rawValue.getter()
{
  if (*v0)
  {
    return 0x7070617369446E6FLL;
  }

  else
  {
    return 0x7261657070416E6FLL;
  }
}

uint64_t sub_EA2C8(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x7070617369446E6FLL;
  }

  else
  {
    v9 = 0x7261657070416E6FLL;
  }

  if (v8)
  {
    v10 = 0xE800000000000000;
  }

  else
  {
    v10 = 0xEB00000000726165;
  }

  if (*a2)
  {
    v11 = 0x7070617369446E6FLL;
  }

  else
  {
    v11 = 0x7261657070416E6FLL;
  }

  if (*a2)
  {
    v12 = 0xEB00000000726165;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1E1D30();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

Swift::Int sub_EA378()
{
  v1 = *v0;
  sub_1E1DC0();
  if (v1)
  {
    v2 = 0xEB00000000726165;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  sub_1E17D0();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1E1DE0();
}

void sub_EA404(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xEB00000000726165;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  sub_1E17D0();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_EA47C(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  if (v2)
  {
    v3 = 0xEB00000000726165;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_EA510(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v15._countAndFlagsBits = *a1;
  v4 = a1[1];
  v15._object = v4;
  v6 = sub_1E1B70(a2, v15);
  v4, v7, v8, v9, v10, v11, v12, v13;
  if (v6 == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (!v6)
  {
    v14 = 0;
  }

  *a3 = v14;
}

void sub_EA56C(uint64_t *a1@<X8>)
{
  v2 = 0x7261657070416E6FLL;
  if (*v1)
  {
    v2 = 0x7070617369446E6FLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000726165;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t HostingControllerVisibilityStateManager.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t HostingControllerVisibilityStateManager.hostingControllerEventPublisher.getter()
{
  sub_3D68(&qword_285BC8, &qword_1F8090);
  sub_EC07C(&qword_285BD0, &qword_285BC8, &qword_1F8090, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return sub_1E1390();
}

uint64_t HostingControllerVisibilityStateManager.swiftUIEventPublisher.getter()
{
  sub_3D68(&qword_285BD8, &qword_1F8098);
  sub_EC07C(&qword_285BE0, &qword_285BD8, &qword_1F8098, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return sub_1E1390();
}

uint64_t HostingControllerVisibilityStateManager.statePublisher.getter()
{
  sub_3D68(&qword_285BE8, &qword_1F80A0);
  sub_EC07C(&qword_285BF0, &qword_285BE8, &qword_1F80A0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return sub_1E1390();
}

uint64_t HostingControllerVisibilityStateManager.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_3D68(&qword_285BC8, &qword_1F8090);
  swift_allocObject();
  *(v0 + 24) = sub_1E1380();
  sub_3D68(&qword_285BD8, &qword_1F8098);
  swift_allocObject();
  *(v0 + 32) = sub_1E1380();
  sub_3D68(&qword_285BE8, &qword_1F80A0);
  swift_allocObject();
  *(v0 + 40) = sub_1E1380();
  *(v0 + 48) = 0;
  *(v0 + 16) = 1;
  return v0;
}

uint64_t HostingControllerVisibilityStateManager.init()()
{
  sub_3D68(&qword_285BC8, &qword_1F8090);
  swift_allocObject();
  *(v0 + 24) = sub_1E1380();
  sub_3D68(&qword_285BD8, &qword_1F8098);
  swift_allocObject();
  *(v0 + 32) = sub_1E1380();
  sub_3D68(&qword_285BE8, &qword_1F80A0);
  swift_allocObject();
  *(v0 + 40) = sub_1E1380();
  *(v0 + 48) = 0;
  *(v0 + 16) = 1;
  return v0;
}

Swift::Void __swiftcall HostingControllerVisibilityStateManager.signal(event:)(BookAnalytics::HostingControllerVisibilityStateManager::HostingControllerLifeCycleEvent event)
{
  v2 = *event;
  *(v1 + 49) = v2 ^ 1;
  sub_EAA9C();
  v26 = v2;
  sub_1E1370();
  if (qword_27D060 != -1)
  {
    swift_once();
  }

  v3 = sub_1E1360();
  sub_3B2C(v3, qword_280308);
  v4 = sub_1E1340();
  v5 = sub_1E19A0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    if (v2)
    {
      v8 = 0xD000000000000014;
    }

    else
    {
      v8 = 0xD000000000000011;
    }

    if (v2)
    {
      v9 = "hostViewDidAppear";
    }

    else
    {
      v9 = "d";
    }

    v10 = sub_DD91C(v8, (v9 | 0x8000000000000000), &v25);
    (v9 | 0x8000000000000000), v11, v12, v13, v14, v15, v16, v17;
    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v4, v5, "Did signal HostingControllerLifeCycleEvent.%s", v6, 0xCu);
    sub_4E48(v7, v18, v19, v20, v21, v22, v23, v24);
  }
}

void sub_EAA9C()
{
  v1 = v0;
  v2 = *(v0 + 48) != 1 || (*(v0 + 49) & 1) == 0;
  if (qword_27D060 != -1)
  {
    swift_once();
  }

  v3 = sub_1E1360();
  sub_3B2C(v3, qword_280308);
  swift_retain_n();
  v4 = sub_1E1340();
  v5 = sub_1E19A0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v84 = v7;
    *v6 = 136315650;
    if (v2)
    {
      v8 = 0x6E6564646968;
    }

    else
    {
      v8 = 0x656C6269736976;
    }

    if (v2)
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    v10 = sub_DD91C(v8, v9, &v84);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v6 + 4) = v10;
    *(v6 + 12) = 1024;
    v18 = *(v1 + 48);
    v1, v19, v20, v21, v22, v23, v24, v25;
    *(v6 + 14) = v18;
    v1, v26, v27, v28, v29, v30, v31, v32;
    *(v6 + 18) = 1024;
    LODWORD(v10) = *(v1 + 49);
    v1, v33, v34, v35, v36, v37, v38, v39;
    *(v6 + 20) = v10;
    v1, v40, v41, v42, v43, v44, v45, v46;
    _os_log_impl(&dword_0, v4, v5, "Did recompute state: %s, swiftUIViewIsVisible: %{BOOL}d, hostingControllerViewIsVisible:%{BOOL}d", v6, 0x18u);
    sub_4E48(v7, v47, v48, v49, v50, v51, v52, v53);
  }

  else
  {

    if (v2)
    {
      v8 = 0x6E6564646968;
    }

    else
    {
      v8 = 0x656C6269736976;
    }

    if (v2)
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = 0xE700000000000000;
    }
  }

  swift_beginAccess();
  if (*(v1 + 16))
  {
    v60 = 0x6E6564646968;
  }

  else
  {
    v60 = 0x656C6269736976;
  }

  if (*(v1 + 16))
  {
    v61 = 0xE600000000000000;
  }

  else
  {
    v61 = 0xE700000000000000;
  }

  if (v8 == v60 && v9 == v61)
  {
    v9, v54, v60, v55, v56, v57, v58, v59;
    v61, v62, v63, v64, v65, v66, v67, v68;
  }

  else
  {
    v69 = sub_1E1D30();
    v9, v70, v71, v72, v73, v74, v75, v76;
    v61, v77, v78, v79, v80, v81, v82, v83;
    if ((v69 & 1) == 0)
    {
      *(v1 + 16) = v2;
      sub_1E1370();
    }
  }
}

Swift::Void __swiftcall HostingControllerVisibilityStateManager.signal(event:)(BookAnalytics::HostingControllerVisibilityStateManager::SwiftUILifeCycleEvent event)
{
  v2 = *event;
  *(v1 + 48) = v2 ^ 1;
  sub_EAA9C();
  v26 = v2;
  sub_1E1370();
  if (qword_27D060 != -1)
  {
    swift_once();
  }

  v3 = sub_1E1360();
  sub_3B2C(v3, qword_280308);
  v4 = sub_1E1340();
  v5 = sub_1E19A0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    if (v2)
    {
      v8 = 0x7070617369446E6FLL;
    }

    else
    {
      v8 = 0x7261657070416E6FLL;
    }

    if (v2)
    {
      v9 = 0xEB00000000726165;
    }

    else
    {
      v9 = 0xE800000000000000;
    }

    v10 = sub_DD91C(v8, v9, &v25);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v4, v5, "Did signal SwiftUILifeCycleEvent.%s", v6, 0xCu);
    sub_4E48(v7, v18, v19, v20, v21, v22, v23, v24);
  }
}

BAEventReporter **HostingControllerVisibilityStateManager.deinit(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;
  return v8;
}

uint64_t HostingControllerVisibilityStateManager.__deallocating_deinit(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;

  return _swift_deallocClassInstance(v8, 50, 7);
}

uint64_t sub_EAF64()
{
  type metadata accessor for HostingControllerVisibilityStateManager();
  v0 = swift_allocObject();
  sub_3D68(&qword_285BC8, &qword_1F8090);
  swift_allocObject();
  *(v0 + 24) = sub_1E1380();
  sub_3D68(&qword_285BD8, &qword_1F8098);
  swift_allocObject();
  *(v0 + 32) = sub_1E1380();
  sub_3D68(&qword_285BE8, &qword_1F80A0);
  swift_allocObject();
  result = sub_1E1380();
  *(v0 + 40) = result;
  *(v0 + 48) = 0;
  *(v0 + 16) = 1;
  qword_285BC0 = v0;
  return result;
}

uint64_t sub_EB02C@<X0>(void *a1@<X8>)
{
  if (qword_27D2F8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_285BC0;
}

uint64_t EnvironmentValues.analyticsVisibilityManager.getter()
{
  sub_EB924();
  sub_1E1490();
  return v1;
}

void *sub_EB0D8@<X0>(void *a1@<X8>)
{
  sub_EB924();
  result = sub_1E1490();
  *a1 = v3;
  return result;
}

uint64_t sub_EB128(uint64_t *a1)
{
  sub_EB924();

  return sub_1E14A0();
}

void (*EnvironmentValues.analyticsVisibilityManager.modify(void *a1))(BAEventReporter **a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_EB924();
  sub_1E1490();
  return sub_EB224;
}

void sub_EB224(BAEventReporter **a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_1E14A0();
    v10 = *a1;

    v10, v3, v4, v5, v6, v7, v8, v9;
  }

  else
  {
    sub_1E14A0();
  }
}

void View.observeAnalyticsVisibility()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_1E1530();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
}

void View.analyticsVisibilityState(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  sub_1E1530();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
}

void sub_EB3B4(BAEventReporter *a1, char a2, char a3)
{
  v6 = sub_1E1480();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1E1990();
    v10 = sub_1E14E0();
    sub_1E1320();

    sub_1E1470();
    swift_getAtKeyPath();
    a1, v11, v12, v13, v14, v15, v16, v17;
    (*(v7 + 8))(v9, v6);
    a1 = v26;
  }

  HIBYTE(v25) = a3;
  HostingControllerVisibilityStateManager.signal(event:)((&v25 + 7));
  a1, v18, v19, v20, v21, v22, v23, v24;
}

uint64_t sub_EB510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = sub_3D68(&qword_285CF0, &qword_1F85D8);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(sub_3D68(&qword_285CF8, &qword_1F85E0) + 36));
  *v9 = sub_EBE8C;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v6;
  v11 = (a2 + *(sub_3D68(&qword_285D00, &qword_1F85E8) + 36));
  *v11 = 0;
  v11[1] = 0;
  v11[2] = sub_EBEB0;
  v11[3] = v10;
  return swift_retain_n();
}

void sub_EB648(uint64_t a1, uint64_t a2, BAEventReporter *a3, __int16 a4)
{
  v6 = sub_1E1480();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a4 & 1) == 0)
  {
    sub_1E1990();
    v17 = sub_1E14E0();
    sub_1E1320();

    sub_1E1470();
    swift_getAtKeyPath();
    a3, v18, v19, v20, v21, v22, v23, v24;
    (*(v7 + 8))(v9, v6);
    a3 = v35;
  }

  if ((a4 & 0x100) != 0)
  {
    v26 = 1;
    v25 = 0xE600000000000000;
  }

  else
  {
    v25 = 0xE700000000000000;
    v26 = sub_1E1D30();
  }

  v25, v10, v11, v12, v13, v14, v15, v16;
  HIBYTE(v34) = v26 & 1;
  HostingControllerVisibilityStateManager.signal(event:)((&v34 + 7));
  a3, v27, v28, v29, v30, v31, v32, v33;
}

void sub_EB814()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v11 = *(v0 + 9);
  v3 = swift_allocObject();
  v3[1].super.isa = v1;
  v3[1].dataProviders[0] = v2;
  v3[1].dataProviders[1] = v11;

  sub_3D68(&qword_285D08, &qword_1F85F0);
  sub_EC07C(&qword_285D10, &qword_285D08, &qword_1F85F0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_EB9D0();
  sub_1E1540();
  v3, v4, v5, v6, v7, v8, v9, v10;
}

unint64_t sub_EB924()
{
  result = qword_285BF8;
  if (!qword_285BF8)
  {
    result = swift_getWitnessTable(a5x, &type metadata for HostingControllerVisibilityStateManagerKey, v0, v1);
    atomic_store(result, &qword_285BF8);
  }

  return result;
}

void *sub_EB978@<X0>(void *a1@<X8>)
{
  sub_EB924();
  result = sub_1E1490();
  *a1 = v3;
  return result;
}

unint64_t sub_EB9D0()
{
  result = qword_285C00;
  if (!qword_285C00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HostingControllerVisibilityStateManager.State, &type metadata for HostingControllerVisibilityStateManager.State, v0, v1);
    atomic_store(result, &qword_285C00);
  }

  return result;
}

unint64_t sub_EBA28()
{
  result = qword_285C08;
  if (!qword_285C08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HostingControllerVisibilityStateManager.HostingControllerLifeCycleEvent, &type metadata for HostingControllerVisibilityStateManager.HostingControllerLifeCycleEvent, v0, v1);
    atomic_store(result, &qword_285C08);
  }

  return result;
}

unint64_t sub_EBA80()
{
  result = qword_285C10;
  if (!qword_285C10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HostingControllerVisibilityStateManager.SwiftUILifeCycleEvent, &type metadata for HostingControllerVisibilityStateManager.SwiftUILifeCycleEvent, v0, v1);
    atomic_store(result, &qword_285C10);
  }

  return result;
}

unint64_t sub_EBB7C()
{
  result = qword_285CE0;
  if (!qword_285CE0)
  {
    result = swift_getWitnessTable(byte_1F854C, &type metadata for ObserveAnalyticsVisibilityViewModifier, v0, v1);
    atomic_store(result, &qword_285CE0);
  }

  return result;
}

uint64_t sub_EBBF0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1[1];
  v5 = sub_1E1440();
  v7[0] = v4;
  v7[1] = a3();
  return swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

unint64_t sub_EBC60()
{
  result = qword_285CE8;
  if (!qword_285CE8)
  {
    result = swift_getWitnessTable(asc_1F84FC, &type metadata for SetAnalyticsVisibilityStateViewModifier, v0, v1);
    atomic_store(result, &qword_285CE8);
  }

  return result;
}