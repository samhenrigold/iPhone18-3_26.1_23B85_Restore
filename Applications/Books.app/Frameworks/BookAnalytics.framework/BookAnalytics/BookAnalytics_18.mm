unint64_t sub_1B7C80()
{
  result = qword_28E5E0;
  if (!qword_28E5E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Rating, &type metadata for Rating, v0, v1);
    atomic_store(result, &qword_28E5E0);
  }

  return result;
}

unint64_t sub_1B7D30()
{
  result = qword_28E5E8;
  if (!qword_28E5E8)
  {
    result = swift_getWitnessTable(aM_21, &type metadata for RatingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E5E8);
  }

  return result;
}

unint64_t sub_1B7D88()
{
  result = qword_28E5F0;
  if (!qword_28E5F0)
  {
    result = swift_getWitnessTable(byte_20D06C, &type metadata for RatingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E5F0);
  }

  return result;
}

unint64_t sub_1B7DE0()
{
  result = qword_28E5F8;
  if (!qword_28E5F8)
  {
    result = swift_getWitnessTable(byte_20D094, &type metadata for RatingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E5F8);
  }

  return result;
}

BookAnalytics::SelectedResultSection_optional __swiftcall SelectedResultSection.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261DA0;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 5;
  if (v5 < 5)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t SelectedResultSection.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x726F74536B6F6F62;
  v4 = 0x6F6F626F69647561;
  if (v1 != 3)
  {
    v4 = 7105633;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7972617262696CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B7F44()
{
  result = qword_28E600;
  if (!qword_28E600)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SelectedResultSection, &type metadata for SelectedResultSection, v0, v1);
    atomic_store(result, &qword_28E600);
  }

  return result;
}

Swift::Int sub_1B7F98()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE900000000000065;
  v3 = 0xEE0065726F74536BLL;
  if (v1 != 3)
  {
    v3 = 0xE300000000000000;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1 <= 1)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = v2;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_1B8084(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xEE0065726F74536BLL;
  if (v2 != 3)
  {
    v4 = 0xE300000000000000;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v1 <= 1u)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = v3;
  }

  sub_1E17D0();

  v5, v6, v7, v8, v9, v10, v11, v12;
}

Swift::Int sub_1B815C(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE900000000000065;
  v4 = 0xEE0065726F74536BLL;
  if (v2 != 3)
  {
    v4 = 0xE300000000000000;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (v2 <= 1)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = v3;
  }

  sub_1E17D0();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1E1DE0();
}

void sub_1B8250(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE900000000000065;
  v6 = 0x726F74536B6F6F62;
  v7 = 0xEE0065726F74536BLL;
  v8 = 0x6F6F626F69647561;
  if (v2 != 3)
  {
    v8 = 7105633;
    v7 = 0xE300000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7972617262696CLL;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1B83B8()
{
  result = qword_28E608;
  if (!qword_28E608)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SelectedResultSection, &type metadata for SelectedResultSection, v0, v1);
    atomic_store(result, &qword_28E608);
  }

  return result;
}

uint64_t UnifiedMessageExposureEvent.messageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_288330, &qword_1FDA50);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UnifiedMessageExposureEvent.messageData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_288330, &qword_1FDA50);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UnifiedMessageExposureEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnifiedMessageExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnifiedMessageExposureEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnifiedMessageExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnifiedMessageExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnifiedMessageExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnifiedMessageExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnifiedMessageExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnifiedMessageExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnifiedMessageExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnifiedMessageExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnifiedMessageExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnifiedMessageExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_288330, &qword_1FDA50);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for UnifiedMessageExposureEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t UnifiedMessageExposureEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 104);
  v10 = *(v1 + 88);
  v11 = v2;
  v4 = *(v1 + 136);
  v12 = *(v1 + 120);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 72);
  v9[0] = *(v1 + 56);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_437B4(v9, &v8);
}

uint64_t UnifiedMessageExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnifiedMessageExposureEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnifiedMessageExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnifiedMessageExposureEvent.Model(0) + 28);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnifiedMessageExposureEvent.Model.init(messageData:contentData:eventData:timedData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 8) = *(a1 + 8);
  *(a5 + 32) = *(a1 + 32);
  v8 = a2[3];
  *(a5 + 88) = a2[2];
  *(a5 + 104) = v8;
  v9 = a2[5];
  *(a5 + 120) = a2[4];
  *(a5 + 136) = v9;
  v10 = a2[1];
  *(a5 + 56) = *a2;
  v11 = *(a1 + 24);
  v12 = *(a1 + 48);
  *a5 = *a1;
  *(a5 + 24) = v11;
  *(a5 + 48) = v12;
  *(a5 + 72) = v10;
  v13 = type metadata accessor for UnifiedMessageExposureEvent.Model(0);
  v14 = *(v13 + 24);
  v15 = sub_1E1150();
  (*(*(v15 - 8) + 32))(a5 + v14, a3, v15);
  v16 = *(v13 + 28);
  v17 = sub_1E11A0();
  v18 = *(*(v17 - 8) + 32);

  return v18(a5 + v16, a4, v17);
}

uint64_t sub_1B8DF4()
{
  v1 = 0x446567617373656DLL;
  v2 = 0x746144746E657665;
  if (*v0 != 2)
  {
    v2 = 0x74614464656D6974;
  }

  if (*v0)
  {
    v1 = 0x44746E65746E6F63;
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

uint64_t sub_1B8E7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1BA59C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1B8EA4(uint64_t a1)
{
  v2 = sub_1B930C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1B8EE0(uint64_t a1)
{
  v2 = sub_1B930C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UnifiedMessageExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28E640, &qword_20D2B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v58 - v6;
  sub_48B8(a1, a1[3]);
  sub_1B930C();
  sub_1E1E00();
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 48);
  v70[0] = *v2;
  v71 = v8;
  v72 = v9;
  v73 = v10;
  v74 = *(v2 + 32);
  v75 = v11;
  v69 = 0;
  sub_12D1C4();

  v12 = v76;
  sub_1E1CF0();
  if (v12)
  {
    v20 = v72;
    v21 = v74;
    v75, v13, v14, v15, v16, v17, v18, v19;
    v20, v22, v23, v24, v25, v26, v27, v28;
    v21, v29, v30, v31, v32, v33, v34, v35;
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v76 = v5;
    v37 = v72;
    v38 = v74;
    v75, v13, v14, v15, v16, v17, v18, v19;
    v37, v39, v40, v41, v42, v43, v44, v45;
    v38, v46, v47, v48, v49, v50, v51, v52;
    v53 = *(v2 + 88);
    v54 = *(v2 + 120);
    v68[3] = *(v2 + 104);
    v68[4] = v54;
    v68[5] = *(v2 + 136);
    v55 = *(v2 + 56);
    v68[1] = *(v2 + 72);
    v68[2] = v53;
    v56 = *(v2 + 88);
    v57 = *(v2 + 120);
    v65 = *(v2 + 104);
    v66 = v57;
    v67 = *(v2 + 136);
    v68[0] = v55;
    v62 = *(v2 + 56);
    v63 = *(v2 + 72);
    v64 = v56;
    v61 = 1;
    sub_437B4(v68, v60);
    sub_143D0();
    sub_1E1C80();
    v60[2] = v64;
    v60[3] = v65;
    v60[4] = v66;
    v60[5] = v67;
    v60[0] = v62;
    v60[1] = v63;
    sub_440C0(v60);
    type metadata accessor for UnifiedMessageExposureEvent.Model(0);
    v59 = 2;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v59 = 3;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
    return (*(v76 + 8))(v7, 0);
  }
}

unint64_t sub_1B930C()
{
  result = qword_28E648;
  if (!qword_28E648)
  {
    result = swift_getWitnessTable(byte_20D498, &type metadata for UnifiedMessageExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E648);
  }

  return result;
}

void UnifiedMessageExposureEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v48 = sub_1E11A0();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v49 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_28E650, &qword_20D2C0);
  v9 = *(v8 - 8);
  v50 = v8;
  v51 = v9;
  __chkstk_darwin(v8);
  v11 = &v43 - v10;
  v12 = type metadata accessor for UnifiedMessageExposureEvent.Model(0);
  __chkstk_darwin(v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v54 = a1;
  sub_48B8(a1, v15);
  sub_1B930C();
  v52 = v11;
  v16 = v53;
  sub_1E1DF0();
  if (v16)
  {
    sub_4E48(v54, v17, v18, v19, v20, v21, v22, v23);
  }

  else
  {
    v53 = v7;
    v45 = v4;
    v24 = v14;
    v25 = v49;
    v61 = 0;
    sub_12D6FC();
    v26 = v50;
    sub_1E1C20();
    v27 = v55[24];
    v28 = v57;
    *v24 = v55[0];
    *(v24 + 8) = *&v55[8];
    *(v24 + 24) = v27;
    *(v24 + 32) = v56;
    *(v24 + 48) = v28;
    v61 = 1;
    sub_14CB8();
    sub_1E1BB0();
    v29 = v57;
    *(v24 + 88) = v56;
    *(v24 + 104) = v29;
    v30 = v59;
    *(v24 + 120) = v58;
    *(v24 + 136) = v30;
    v31 = *&v55[16];
    *(v24 + 56) = *v55;
    *(v24 + 72) = v31;
    v60 = 2;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v32 = v53;
    v44 = v5;
    v43 = 0;
    sub_1E1C20();
    (*(v25 + 32))(v24 + *(v12 + 24), v32, v44);
    v60 = 3;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v33 = v45;
    v34 = v48;
    v35 = v52;
    sub_1E1C20();
    (*(v51 + 8))(v35, v26);
    (*(v46 + 32))(v24 + *(v12 + 28), v33, v34);
    sub_1B9940(v24, v47);
    sub_4E48(v54, v36, v37, v38, v39, v40, v41, v42);
    sub_1B99A4(v24);
  }
}

uint64_t sub_1B9940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMessageExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B99A4(uint64_t a1)
{
  v2 = type metadata accessor for UnifiedMessageExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9AA0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_288330, &qword_1FDA50);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v4, v12);
}

uint64_t sub_1B9C38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_288330, &qword_1FDA50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_1B9E04(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_288330, &qword_1FDA50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_1B9FC8(uint64_t a1)
{
  sub_1BA0EC(319, &qword_2883E0, sub_12D6FC, sub_12D1C4, &type metadata for MessageData);
  if (v1 <= 0x3F)
  {
    sub_1BA0EC(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
    if (v2 <= 0x3F)
    {
      sub_5684(319);
      if (v3 <= 0x3F)
      {
        sub_5750(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BA0EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_1BA17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BA2B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1BA3D8(uint64_t a1)
{
  sub_45610();
  if (v1 <= 0x3F)
  {
    sub_1E1150();
    if (v2 <= 0x3F)
    {
      sub_1E11A0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BA498()
{
  result = qword_28E788;
  if (!qword_28E788)
  {
    result = swift_getWitnessTable(byte_20D470, &type metadata for UnifiedMessageExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E788);
  }

  return result;
}

unint64_t sub_1BA4F0()
{
  result = qword_28E790;
  if (!qword_28E790)
  {
    result = swift_getWitnessTable(aA_28, &type metadata for UnifiedMessageExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E790);
  }

  return result;
}

unint64_t sub_1BA548()
{
  result = qword_28E798;
  if (!qword_28E798)
  {
    result = swift_getWitnessTable(asc_20D408, &type metadata for UnifiedMessageExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E798);
  }

  return result;
}

uint64_t sub_1BA59C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x446567617373656DLL && a2 == 0xEB00000000617461;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, a2, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else
  {
    v12 = sub_1E1D30();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1BA714()
{
  v1 = 0x7469736F50646E65;
  if (*v0 != 1)
  {
    v1 = 0x6E654C6C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736F507472617473;
  }
}

uint64_t sub_1BA78C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1BAD60(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1BA7B4(uint64_t a1)
{
  v2 = sub_1BA9E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1BA7F0(uint64_t a1)
{
  v2 = sub_1BA9E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScrubData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28E7A0, &qword_20D4E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  v9[6] = *(v1 + 4);
  v9[3] = *(v1 + 8);
  sub_48B8(a1, a1[3]);
  sub_1BA9E4();
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

unint64_t sub_1BA9E4()
{
  result = qword_28E7A8;
  if (!qword_28E7A8)
  {
    result = swift_getWitnessTable(byte_20D6C4, &type metadata for ScrubData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E7A8);
  }

  return result;
}

void ScrubData.init(from:)(BAEventReporter **a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_28E7B0, &qword_20D4F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_48B8(a1, a1[3]);
  sub_1BA9E4();
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

unint64_t sub_1BAC5C()
{
  result = qword_28E7B8;
  if (!qword_28E7B8)
  {
    result = swift_getWitnessTable(byte_20D69C, &type metadata for ScrubData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E7B8);
  }

  return result;
}

unint64_t sub_1BACB4()
{
  result = qword_28E7C0;
  if (!qword_28E7C0)
  {
    result = swift_getWitnessTable(byte_20D60C, &type metadata for ScrubData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E7C0);
  }

  return result;
}

unint64_t sub_1BAD0C()
{
  result = qword_28E7C8;
  if (!qword_28E7C8)
  {
    result = swift_getWitnessTable(byte_20D634, &type metadata for ScrubData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E7C8);
  }

  return result;
}

uint64_t sub_1BAD60(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xED00006E6F697469;
  v11 = a1 == 0x736F507472617473 && a2 == 0xED00006E6F697469;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0xEB000000006E6F69;
    if (a1 == 0x7469736F50646E65 && a2 == 0xEB000000006E6F69 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x6E654C6C61746F74 && a2 == 0xEB00000000687467)
    {
      0xEB00000000687467, 0xEB00000000687467, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v14 = sub_1E1D30();
      a2, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

void sub_1BAEA8(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000065707954)
  {
    a2, 0xEC00000065707954, a1, a3, a4, a5, a6, a7;
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

uint64_t sub_1BAF34(uint64_t a1)
{
  v2 = sub_1BB0F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1BAF70(uint64_t a1)
{
  v2 = sub_1BB0F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LocationData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28E7D0, &qword_20D718);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_1BB0F8();
  sub_1E1E00();
  v10 = v7;
  sub_1BB14C();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BB0F8()
{
  result = qword_28E7D8;
  if (!qword_28E7D8)
  {
    result = swift_getWitnessTable(byte_20D8F0, &type metadata for LocationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E7D8);
  }

  return result;
}

unint64_t sub_1BB14C()
{
  result = qword_28E7E0;
  if (!qword_28E7E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationType, &type metadata for LocationType, v0, v1);
    atomic_store(result, &qword_28E7E0);
  }

  return result;
}

void LocationData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28E7E8, &qword_20D720);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_1BB0F8();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1BB30C();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_1BB30C()
{
  result = qword_28E7F0;
  if (!qword_28E7F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationType, &type metadata for LocationType, v0, v1);
    atomic_store(result, &qword_28E7F0);
  }

  return result;
}

unint64_t sub_1BB3BC()
{
  result = qword_28E7F8;
  if (!qword_28E7F8)
  {
    result = swift_getWitnessTable(byte_20D8C8, &type metadata for LocationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E7F8);
  }

  return result;
}

unint64_t sub_1BB414()
{
  result = qword_28E800;
  if (!qword_28E800)
  {
    result = swift_getWitnessTable(byte_20D838, &type metadata for LocationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E800);
  }

  return result;
}

unint64_t sub_1BB46C()
{
  result = qword_28E808;
  if (!qword_28E808)
  {
    result = swift_getWitnessTable(byte_20D860, &type metadata for LocationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E808);
  }

  return result;
}

void sub_1BB4DC(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x657079546C616F67 && a2 == 0xE800000000000000)
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

uint64_t sub_1BB564(uint64_t a1)
{
  v2 = sub_1BB8C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1BB5A0(uint64_t a1)
{
  v2 = sub_1BB8C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GoalAdjustTypeData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28E810, &qword_20D940);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_1BB8C4();
  sub_1E1E00();
  v10 = v7;
  sub_6E79C();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

void GoalAdjustTypeData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28E820, &qword_20D948);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_1BB8C4();
  sub_1E1DF0();
  if (!v2)
  {
    sub_6E904();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_1BB8C4()
{
  result = qword_28E818;
  if (!qword_28E818)
  {
    result = swift_getWitnessTable(aA_29, &type metadata for GoalAdjustTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E818);
  }

  return result;
}

unint64_t sub_1BB944()
{
  result = qword_28E828;
  if (!qword_28E828)
  {
    result = swift_getWitnessTable(aY_25, &type metadata for GoalAdjustTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E828);
  }

  return result;
}

unint64_t sub_1BB99C()
{
  result = qword_28E830;
  if (!qword_28E830)
  {
    result = swift_getWitnessTable(byte_20DA60, &type metadata for GoalAdjustTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E830);
  }

  return result;
}

unint64_t sub_1BB9F4()
{
  result = qword_28E838;
  if (!qword_28E838)
  {
    result = swift_getWitnessTable(byte_20DA88, &type metadata for GoalAdjustTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E838);
  }

  return result;
}

void __swiftcall LinkData.init(previousSectionID:previousSectionName:previousContentID:linkActionType:previousSeriesID:previousGenreID:previousCollectionID:previousAuthorID:previousFlowcaseID:previousBrickID:)(BookAnalytics::LinkData *__return_ptr retstr, Swift::String previousSectionID, Swift::String_optional previousSectionName, Swift::String_optional previousContentID, BookAnalytics::LinkActionType linkActionType, Swift::String_optional previousSeriesID, Swift::String_optional previousGenreID, Swift::String_optional previousCollectionID, Swift::String_optional previousAuthorID, Swift::String_optional previousFlowcaseID, Swift::String_optional previousBrickID)
{
  v11 = *linkActionType;
  retstr->previousSectionID = previousSectionID;
  retstr->previousSectionName = previousSectionName;
  retstr->previousContentID = previousContentID;
  retstr->linkActionType = v11;
  retstr->previousSeriesID.value._countAndFlagsBits = previousSeriesID.value._countAndFlagsBits;
  *&retstr->previousSeriesID.value._object = *&previousSeriesID.value._object;
  *&retstr->previousGenreID.value._object = *(&previousCollectionID - 8);
  *&retstr->previousCollectionID.value._object = *&previousCollectionID.value._object;
  *&retstr->previousAuthorID.value._object = *&previousAuthorID.value._object;
  *&retstr->previousFlowcaseID.value._object = *(&previousBrickID - 8);
  retstr->previousBrickID.value._object = previousBrickID.value._object;
}

uint64_t LinkData.previousAuthorID.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

void LinkData.previousAuthorID.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 112), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 104) = a1;
  *(v8 + 112) = a2;
}

uint64_t LinkData.previousFlowcaseID.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

void LinkData.previousFlowcaseID.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 128), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 120) = a1;
  *(v8 + 128) = a2;
}

uint64_t LinkData.previousBrickID.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

void LinkData.previousBrickID.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 144), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 136) = a1;
  *(v8 + 144) = a2;
}

unint64_t sub_1BBBC0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000012;
    if (a1 != 8)
    {
      v4 = 0x73756F6976657270;
    }

    if (a1 == 7)
    {
      v4 = 0xD000000000000010;
    }

    v5 = 0xD000000000000014;
    if (a1 == 5)
    {
      v5 = 0x73756F6976657270;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x697463416B6E696CLL;
    if (a1 != 3)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000011;
    }

    v2 = 0xD000000000000011;
    if (a1)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1BBD38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1BCC84(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1BBD60(uint64_t a1)
{
  v2 = sub_1BCA20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1BBD9C(uint64_t a1)
{
  v2 = sub_1BCA20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LinkData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28E840, &qword_20DB68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - v5;
  v7 = *(v1 + 16);
  v23 = *(v1 + 24);
  v24 = v7;
  v8 = *(v1 + 32);
  v21 = *(v1 + 40);
  v22 = v8;
  v20 = *(v1 + 48);
  v9 = *(v1 + 56);
  v19[11] = *(v1 + 64);
  v19[12] = v9;
  v10 = *(v1 + 80);
  v19[9] = *(v1 + 72);
  v19[10] = v10;
  v11 = *(v1 + 96);
  v19[7] = *(v1 + 88);
  v19[8] = v11;
  v12 = *(v1 + 112);
  v19[5] = *(v1 + 104);
  v19[6] = v12;
  v13 = *(v1 + 128);
  v19[3] = *(v1 + 120);
  v19[4] = v13;
  v14 = *(v1 + 144);
  v19[1] = *(v1 + 136);
  v19[2] = v14;
  sub_48B8(a1, a1[3]);
  sub_1BCA20();
  sub_1E1E00();
  v36 = 0;
  v15 = v6;
  v16 = v25;
  sub_1E1CB0();
  if (v16)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = v20;
  v35 = 1;
  sub_1E1C50();
  v34 = 2;
  sub_1E1C50();
  v33 = v17;
  v32 = 3;
  sub_1463DC();
  sub_1E1CF0();
  v31 = 4;
  sub_1E1C50();
  v30 = 5;
  sub_1E1C50();
  v29 = 6;
  sub_1E1C50();
  v28 = 7;
  sub_1E1C50();
  v27 = 8;
  sub_1E1C50();
  v26 = 9;
  sub_1E1C50();
  return (*(v4 + 8))(v15, v3);
}

void LinkData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v86 = sub_3D68(&qword_28E850, &qword_20DB70);
  v5 = *(v86 - 8);
  __chkstk_darwin(v86);
  v7 = &v71 - v6;
  sub_48B8(a1, a1[3]);
  sub_1BCA20();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v8, v9, v10, v11, v12, v13, v14);
    swift_bridgeObjectRelease_n();
    0, v15, v16, v17, v18, v19, v20, v21;
    0, v22, v23, v24, v25, v26, v27, v28;
    0, v29, v30, v31, v32, v33, v34, v35;
  }

  else
  {
    v85 = a2;
    LOBYTE(v97[0]) = 0;
    v36 = sub_1E1BE0();
    v84 = v37;
    LOBYTE(v97[0]) = 1;
    v38 = v5;
    v39 = sub_1E1B80();
    v83 = v40;
    LOBYTE(v97[0]) = 2;
    *&v82 = sub_1E1B80();
    *(&v82 + 1) = v41;
    LOBYTE(v87) = 3;
    sub_146430();
    sub_1E1C20();
    v42 = LOBYTE(v97[0]);
    LOBYTE(v97[0]) = 4;
    v80 = sub_1E1B80();
    v81 = v43;
    LOBYTE(v97[0]) = 5;
    v77 = sub_1E1B80();
    v78 = v36;
    v79 = v44;
    LOBYTE(v97[0]) = 6;
    v45 = sub_1E1B80();
    v47 = v46;
    v76 = v45;
    LOBYTE(v97[0]) = 7;
    v48 = sub_1E1B80();
    v50 = v49;
    v74 = v48;
    v112 = v42;
    v75 = v38;
    LOBYTE(v97[0]) = 8;
    v73 = sub_1E1B80();
    v52 = v51;
    v113 = 9;
    v53 = sub_1E1B80();
    v72 = v54;
    v55 = v53;
    (*(v75 + 8))(v7, v86);
    *&v87 = v78;
    *(&v87 + 1) = v84;
    v71 = v39;
    *&v88 = v39;
    v56 = v83;
    *(&v88 + 1) = v83;
    v89 = v82;
    LOBYTE(v90) = v112;
    *(&v90 + 1) = v80;
    *&v91 = v81;
    *(&v91 + 1) = v77;
    *&v92 = v79;
    *(&v92 + 1) = v76;
    *&v93 = v47;
    *(&v93 + 1) = v74;
    *&v94 = v50;
    *(&v94 + 1) = v73;
    *&v95 = v52;
    v57 = v72;
    *(&v95 + 1) = v55;
    v96 = v72;
    v58 = v85;
    *(v85 + 144) = v72;
    v59 = v92;
    v58[4] = v91;
    v58[5] = v59;
    v60 = v90;
    v58[2] = v89;
    v58[3] = v60;
    v61 = v95;
    v62 = v93;
    v58[7] = v94;
    v58[8] = v61;
    v58[6] = v62;
    v63 = v88;
    *v58 = v87;
    v58[1] = v63;
    sub_275C4(&v87, v97);
    sub_4E48(a1, v64, v65, v66, v67, v68, v69, v70);
    v97[0] = v78;
    v97[1] = v84;
    v97[2] = v71;
    v97[3] = v56;
    v98 = v82;
    v99 = v112;
    v100 = v80;
    v101 = v81;
    v102 = v77;
    v103 = v79;
    v104 = v76;
    v105 = v47;
    v106 = v74;
    v107 = v50;
    v108 = v73;
    v109 = v52;
    v110 = v55;
    v111 = v57;
    sub_283A8(v97);
  }
}

uint64_t _s13BookAnalytics8LinkDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = *(a1 + 48);
  v40 = a1[7];
  v44 = a1[8];
  v35 = a1[9];
  v42 = a1[10];
  v38 = a1[12];
  v27 = a1[13];
  v34 = a1[14];
  v23 = a1[15];
  v30 = a1[16];
  v31 = a1[11];
  v21 = a1[17];
  v26 = a1[18];
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *(a2 + 48);
  v39 = *(a2 + 56);
  v43 = *(a2 + 64);
  v36 = *(a2 + 72);
  v41 = *(a2 + 80);
  v37 = *(a2 + 96);
  v32 = *(a2 + 88);
  v33 = *(a2 + 112);
  v28 = *(a2 + 104);
  v29 = *(a2 + 128);
  v22 = *(a2 + 136);
  v24 = *(a2 + 120);
  v25 = *(a2 + 144);
  if ((*a1 != *a2 || a1[1] != v14) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v9)
  {
    if (!v16 || (v8 != v15 || v9 != v16) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (v11)
  {
    if (!v18 || (v10 != v17 || v11 != v18) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (sub_201BC(v12, v19, v13, v14, a5, a6, a7, a8))
  {
    if (v44)
    {
      if (!v43 || (v40 != v39 || v44 != v43) && (sub_1E1D30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v43)
    {
      return 0;
    }

    if (v42)
    {
      if (!v41 || (v35 != v36 || v42 != v41) && (sub_1E1D30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v41)
    {
      return 0;
    }

    if (v38)
    {
      if (!v37 || (v31 != v32 || v38 != v37) && (sub_1E1D30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v37)
    {
      return 0;
    }

    if (v34)
    {
      if (!v33 || (v27 != v28 || v34 != v33) && (sub_1E1D30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v33)
    {
      return 0;
    }

    if (v30)
    {
      if (!v29 || (v23 != v24 || v30 != v29) && (sub_1E1D30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v29)
    {
      return 0;
    }

    if (v26)
    {
      if (v25 && (v21 == v22 && v26 == v25 || (sub_1E1D30() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v25)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1BCA20()
{
  result = qword_28E848;
  if (!qword_28E848)
  {
    result = swift_getWitnessTable(byte_20DDA4, &type metadata for LinkData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E848);
  }

  return result;
}

__n128 sub_1BCA7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1BCAB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1BCAF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BCB80()
{
  result = qword_28E858;
  if (!qword_28E858)
  {
    result = swift_getWitnessTable(byte_20DD7C, &type metadata for LinkData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E858);
  }

  return result;
}

unint64_t sub_1BCBD8()
{
  result = qword_28E860;
  if (!qword_28E860)
  {
    result = swift_getWitnessTable(a5_9, &type metadata for LinkData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E860);
  }

  return result;
}

unint64_t sub_1BCC30()
{
  result = qword_28E868;
  if (!qword_28E868)
  {
    result = swift_getWitnessTable(byte_20DD14, &type metadata for LinkData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E868);
  }

  return result;
}

uint64_t sub_1BCC84(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v9 = 0x8000000000215260;
  v10 = a1 == 0xD000000000000011 && 0x8000000000215260 == a2;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, v9, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0x8000000000215280;
    if (a1 == 0xD000000000000013 && 0x8000000000215280 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0x80000000002152A0;
      if (a1 == 0xD000000000000011 && 0x80000000002152A0 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v15 = 0xEE00657079546E6FLL;
        if (a1 == 0x697463416B6E696CLL && a2 == 0xEE00657079546E6FLL || (sub_1E1D30() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else
        {
          v16 = 0x80000000002152D0;
          if (a1 == 0xD000000000000010 && 0x80000000002152D0 == a2 || (sub_1E1D30() & 1) != 0)
          {
            a2, v16, a3, a4, a5, a6, a7, a8;
            return 4;
          }

          else
          {
            v17 = 0xEF444965726E6547;
            if (a1 == 0x73756F6976657270 && a2 == 0xEF444965726E6547 || (sub_1E1D30() & 1) != 0)
            {
              a2, v17, a3, a4, a5, a6, a7, a8;
              return 5;
            }

            else
            {
              v18 = 0x8000000000215300;
              if (a1 == 0xD000000000000014 && 0x8000000000215300 == a2 || (sub_1E1D30() & 1) != 0)
              {
                a2, v18, a3, a4, a5, a6, a7, a8;
                return 6;
              }

              else
              {
                v19 = 0x8000000000215320;
                if (a1 == 0xD000000000000010 && 0x8000000000215320 == a2 || (sub_1E1D30() & 1) != 0)
                {
                  a2, v19, a3, a4, a5, a6, a7, a8;
                  return 7;
                }

                else
                {
                  v20 = 0x8000000000215340;
                  if (a1 == 0xD000000000000012 && 0x8000000000215340 == a2 || (sub_1E1D30() & 1) != 0)
                  {
                    a2, v20, a3, a4, a5, a6, a7, a8;
                    return 8;
                  }

                  else if (a1 == 0x73756F6976657270 && a2 == 0xEF44496B63697242)
                  {
                    0xEF44496B63697242, 0xEF44496B63697242, a3, a4, a5, a6, a7, a8;
                    return 9;
                  }

                  else
                  {
                    v21 = sub_1E1D30();
                    a2, v22, v23, v24, v25, v26, v27, v28;
                    if (v21)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

void sub_1BCFE8(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000000217550 == a2)
  {
    a2, 0x8000000000217550, 0xD000000000000011, a3, a4, a5, a6, a7;
    v10 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v10 = v11 ^ 1;
  }

  *a8 = v10 & 1;
}

uint64_t sub_1BD07C(uint64_t a1)
{
  v2 = sub_1BD298();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1BD0B8(uint64_t a1)
{
  v2 = sub_1BD298();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingNowData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28E870, &qword_20DDF8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_1BD298();

  sub_1E1E00();
  v16[1] = v7;
  sub_3D68(&qword_28E880, &qword_20DE00);
  sub_1BD49C(&qword_28E888, sub_1AB7C0, &protocol conformance descriptor for <A> [A]);
  sub_1E1CF0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BD298()
{
  result = qword_28E878;
  if (!qword_28E878)
  {
    result = swift_getWitnessTable(byte_20DFE0, &type metadata for ReadingNowData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E878);
  }

  return result;
}

void ReadingNowData.init(from:)(BAEventReporter **a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3D68(&qword_28E890, &qword_20DE08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_1BD298();
  sub_1E1DF0();
  if (!v2)
  {
    sub_3D68(&qword_28E880, &qword_20DE00);
    sub_1BD49C(&qword_28E898, sub_1AB768, &protocol conformance descriptor for <A> [A]);
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v16[1];
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1BD49C(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_5DE50(&qword_28E880, &qword_20DE00);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD570()
{
  result = qword_28E8A0;
  if (!qword_28E8A0)
  {
    result = swift_getWitnessTable(byte_20DFB8, &type metadata for ReadingNowData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E8A0);
  }

  return result;
}

unint64_t sub_1BD5C8()
{
  result = qword_28E8A8;
  if (!qword_28E8A8)
  {
    result = swift_getWitnessTable(byte_20DF28, &type metadata for ReadingNowData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E8A8);
  }

  return result;
}

unint64_t sub_1BD620()
{
  result = qword_28E8B0;
  if (!qword_28E8B0)
  {
    result = swift_getWitnessTable(byte_20DF50, &type metadata for ReadingNowData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E8B0);
  }

  return result;
}

void sub_1BD68C(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x657A6953746E6F66 && a2 == 0xE800000000000000)
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

uint64_t sub_1BD714(uint64_t a1)
{
  v2 = sub_1BD8C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1BD750(uint64_t a1)
{
  v2 = sub_1BD8C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FontSizeData.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_28E8B8, &qword_20E030);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_48B8(a1, a1[3]);
  sub_1BD8C4();
  sub_1E1E00();
  sub_1E1CE0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1BD8C4()
{
  result = qword_28E8C0;
  if (!qword_28E8C0)
  {
    result = swift_getWitnessTable(aQ_18, &type metadata for FontSizeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E8C0);
  }

  return result;
}

void FontSizeData.init(from:)(BAEventReporter **a1@<X0>, float *a2@<X8>)
{
  v5 = sub_3D68(&qword_28E8C8, &qword_20E038);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_48B8(a1, a1[3]);
  sub_1BD8C4();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1E1C10();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_1BDAB8()
{
  result = qword_28E8D0;
  if (!qword_28E8D0)
  {
    result = swift_getWitnessTable(byte_20E1E0, &type metadata for FontSizeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E8D0);
  }

  return result;
}

unint64_t sub_1BDB10()
{
  result = qword_28E8D8;
  if (!qword_28E8D8)
  {
    result = swift_getWitnessTable(byte_20E150, &type metadata for FontSizeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E8D8);
  }

  return result;
}

unint64_t sub_1BDB68()
{
  result = qword_28E8E0;
  if (!qword_28E8E0)
  {
    result = swift_getWitnessTable(byte_20E178, &type metadata for FontSizeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E8E0);
  }

  return result;
}

void ClickData.TargetType.init(rawValue:)(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, char *a3@<X8>)
{
  v15._countAndFlagsBits = a1;
  v5._rawValue = &off_261E38;
  v15._object = a2;
  v6 = sub_1E1B70(v5, v15);
  a2, v7, v8, v9, v10, v11, v12, v13;
  v14 = 11;
  if (v6 < 0xB)
  {
    v14 = v6;
  }

  *a3 = v14;
}

uint64_t ClickData.TargetType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x6E61576F54646461;
    v8 = 0x6E6F74747562;
    v9 = 7959906;
    if (v1 != 3)
    {
      v9 = 0x6574656C6564;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x6D61536F69647561;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x706D615364616572;
    v3 = 0x64616F6C6572;
    if (v1 != 9)
    {
      v3 = 0xD000000000000014;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x7373696D736964;
    v5 = 0x64616F6C6E776F64;
    if (v1 != 6)
    {
      v5 = 0x657461676976616ELL;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int sub_1BDD88()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1DF780(v3, v1);
  return sub_1E1DE0();
}

Swift::Int sub_1BDDD8(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  sub_1DF780(v4, v2);
  return sub_1E1DE0();
}

uint64_t sub_1BDE28@<X0>(uint64_t *a1@<X8>)
{
  result = ClickData.TargetType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ClickData.init(with:linkActionType:index:url:)@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E09E0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *a2;
  sub_1E09D0();
  sub_1E09A0();
  (*(v13 + 8))(v15, v12);
  result = sub_1E1910();
  if (v16 <= 4)
  {
    v28 = 0x6E61576F54646461;
    v21 = 0xE600000000000000;
    v29 = 0x6E6F74747562;
    v30 = 0xE300000000000000;
    v31 = 7959906;
    if (v16 != 3)
    {
      v31 = 0x6574656C6564;
      v30 = 0xE600000000000000;
    }

    if (v16 != 2)
    {
      v29 = v31;
      v21 = v30;
    }

    v24 = 0xEB00000000656C70;
    if (v16)
    {
      v28 = 0x6D61536F69647561;
    }

    else
    {
      v24 = 0xEF646165526F5474;
    }

    v26 = v16 <= 1;
    if (v16 <= 1)
    {
      v27 = v28;
    }

    else
    {
      v27 = v29;
    }
  }

  else
  {
    v20 = 0x706D615364616572;
    v21 = 0xE600000000000000;
    v22 = 0x64616F6C6572;
    if (v16 != 9)
    {
      v22 = 0xD000000000000014;
      v21 = 0x8000000000213310;
    }

    if (v16 == 8)
    {
      v21 = 0xEA0000000000656CLL;
    }

    else
    {
      v20 = v22;
    }

    v23 = 0x7373696D736964;
    v24 = 0xE800000000000000;
    v25 = 0x64616F6C6E776F64;
    if (v16 != 6)
    {
      v25 = 0x657461676976616ELL;
      v24 = 0xE800000000000000;
    }

    if (v16 == 5)
    {
      v24 = 0xE700000000000000;
    }

    else
    {
      v23 = v25;
    }

    v26 = v16 <= 7;
    if (v16 <= 7)
    {
      v27 = v23;
    }

    else
    {
      v27 = v20;
    }
  }

  if (v26)
  {
    v32 = v24;
  }

  else
  {
    v32 = v21;
  }

  *a6 = result;
  *(a6 + 8) = v19;
  *(a6 + 16) = v17;
  *(a6 + 24) = v27;
  *(a6 + 32) = v32;
  *(a6 + 40) = a3;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5;
  return result;
}

void SectionData.ComponentContained.init(rawValue:)(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, char *a3@<X8>)
{
  v15._countAndFlagsBits = a1;
  v5._rawValue = &off_261F60;
  v15._object = a2;
  v6 = sub_1E1B70(v5, v15);
  a2, v7, v8, v9, v10, v11, v12, v13;
  v14 = 5;
  if (v6 < 5)
  {
    v14 = v6;
  }

  *a3 = v14;
}

uint64_t SectionData.ComponentContained.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x756B636F4C706F74;
  v4 = 0x6143736569726573;
  if (v1 != 3)
  {
    v4 = 0x7465656873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x68736F6F7773;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_1BE1E0()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE700000000000000;
  v3 = 0xE900000000000070;
  v4 = 0xEA00000000006472;
  if (v1 != 3)
  {
    v4 = 0xE500000000000000;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1)
  {
    v2 = 0xE600000000000000;
  }

  if (v1 <= 1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  sub_1E17D0();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1E1DE0();
}

void sub_1BE2C4(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000070;
  v5 = 0xEA00000000006472;
  if (v2 != 3)
  {
    v5 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_1E17D0();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

Swift::Int sub_1BE394(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000070;
  v5 = 0xEA00000000006472;
  if (v2 != 3)
  {
    v5 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (v2)
  {
    v3 = 0xE600000000000000;
  }

  if (v2 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_1E17D0();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return sub_1E1DE0();
}

void sub_1BE480(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE900000000000070;
  v6 = 0x756B636F4C706F74;
  v7 = 0xEA00000000006472;
  v8 = 0x6143736569726573;
  if (v2 != 3)
  {
    v8 = 0x7465656873;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x68736F6F7773;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

double SectionData.init(sectionID:name:sectionType:componentContained:exposureIndex:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, _BYTE *a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *a6;
  v9 = 0xE700000000000000;
  v10 = 0x6E776F6E6B6E75;
  v11 = 0xE900000000000070;
  v12 = 0x756B636F4C706F74;
  v13 = 0xEA00000000006472;
  v14 = 0x6143736569726573;
  if (v8 != 3)
  {
    v14 = 0x7465656873;
    v13 = 0xE500000000000000;
  }

  if (v8 != 2)
  {
    v12 = v14;
    v11 = v13;
  }

  if (*a6)
  {
    v10 = 0x68736F6F7773;
    v9 = 0xE600000000000000;
  }

  if (*a6 <= 1u)
  {
    v15 = v10;
  }

  else
  {
    v15 = v12;
  }

  if (*a6 > 1u)
  {
    v9 = v11;
  }

  *a8 = *a5;
  *(a8 + 4) = a7;
  *(a8 + 8) = a3;
  *(a8 + 16) = a4;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0xE000000000000000;
  *(a8 + 40) = v15;
  *(a8 + 48) = v9;
  result = 0.0;
  *(a8 + 56) = 0u;
  *(a8 + 72) = 0u;
  *(a8 + 88) = 0;
  *(a8 + 92) = 1;
  *(a8 + 96) = a1;
  *(a8 + 104) = a2;
  return result;
}

unint64_t sub_1BE6B4()
{
  result = qword_28E8E8;
  if (!qword_28E8E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClickData.TargetType, &type metadata for ClickData.TargetType, v0, v1);
    atomic_store(result, &qword_28E8E8);
  }

  return result;
}

unint64_t sub_1BE70C()
{
  result = qword_28E8F0;
  if (!qword_28E8F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionData.ComponentContained, &type metadata for SectionData.ComponentContained, v0, v1);
    atomic_store(result, &qword_28E8F0);
  }

  return result;
}

unint64_t sub_1BE780()
{
  result = qword_28E8F8;
  if (!qword_28E8F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionData.ComponentContained, &type metadata for SectionData.ComponentContained, v0, v1);
    atomic_store(result, &qword_28E8F8);
  }

  return result;
}

uint64_t AppAnalyticsAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E16A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppAnalyticsAction.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppAnalyticsAction(0) + 20);

  return sub_1BE8A4(v3, a1);
}

uint64_t sub_1BE8A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppAnalyticsAction.Type(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppAnalyticsAction.init(type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E1690();
  v4 = a2 + *(type metadata accessor for AppAnalyticsAction(0) + 20);

  return sub_1BE974(a1, v4);
}

uint64_t sub_1BE974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppAnalyticsAction.Type(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E16A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AppAnalyticsAction.Type(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BEAF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E16A0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AppAnalyticsAction.Type(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BEBEC(uint64_t a1)
{
  result = sub_1E16A0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AppAnalyticsAction.Type(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BECC0(uint64_t a1)
{
  sub_1BEDB4(319);
  if (v1 <= 0x3F)
  {
    sub_1BEE68(319);
    if (v2 <= 0x3F)
    {
      sub_1BEEE4();
      if (v3 <= 0x3F)
      {
        sub_1BEF50(319);
        if (v4 <= 0x3F)
        {
          sub_1BEFC4(319);
          if (v5 <= 0x3F)
          {
            sub_1BF034();
            if (v6 <= 0x3F)
            {
              sub_1BF094(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BEDB4(uint64_t a1)
{
  if (!qword_28EA10)
  {
    sub_5DE50(&qword_27FD08, &qword_1E94F0);
    sub_5DE50(&qword_28EA18, &unk_20E4C0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_28EA10);
    }
  }
}

void sub_1BEE68(uint64_t a1)
{
  if (!qword_28EA20)
  {
    sub_5DE50(&qword_285BB0, &qword_20EAA0);
    sub_1E13A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28EA20);
    }
  }
}

unint64_t sub_1BEEE4()
{
  result = qword_28EA28;
  if (!qword_28EA28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28EA28);
  }

  return result;
}

void sub_1BEF50(uint64_t a1)
{
  if (!qword_28EA30)
  {
    sub_5DE50(&qword_28C0B8, &qword_20E4D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28EA30);
    }
  }
}

void sub_1BEFC4(uint64_t a1)
{
  if (!qword_28EA38)
  {
    sub_1E09E0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_28EA38);
    }
  }
}

void sub_1BF034()
{
  if (!qword_28EA40)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28EA40);
    }
  }
}

void sub_1BF094(uint64_t a1)
{
  if (!qword_28EA48)
  {
    sub_5DE50(&qword_28EA50, &qword_20E4D8);
    sub_5DE50(&unk_28EA58, &qword_20E4E0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_28EA48);
    }
  }
}

uint64_t static ReviewTypeData.== infix(_:_:)(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = *a1;
  v10 = 0xE700000000000000;
  v11 = 0xE600000000000000;
  v12 = 0x776569766572;
  if (v9 != 2)
  {
    v12 = 0x6E41776569766572;
    v11 = 0xEF676E6974615264;
  }

  v13 = 0x676E69746172;
  if (*a1)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v13 = 0x6E776F6E6B6E75;
  }

  if (*a1 <= 1u)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v9 <= 1)
  {
    v15 = v10;
  }

  else
  {
    v15 = v11;
  }

  v16 = 0xE700000000000000;
  v17 = 0xE600000000000000;
  v18 = 0x776569766572;
  if (*a2 != 2)
  {
    v18 = 0x6E41776569766572;
    v17 = 0xEF676E6974615264;
  }

  if (*a2)
  {
    v8 = 0x676E69746172;
    v16 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v19 = v8;
  }

  else
  {
    v19 = v18;
  }

  if (*a2 <= 1u)
  {
    v20 = v16;
  }

  else
  {
    v20 = v17;
  }

  if (v14 == v19 && v15 == v20)
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_1E1D30();
  }

  v15, a2, v19, a4, a5, a6, a7, a8;
  v20, v22, v23, v24, v25, v26, v27, v28;
  return v21 & 1;
}

void sub_1BF28C(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x7954776569766572 && a2 == 0xEA00000000006570)
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

uint64_t sub_1BF31C(uint64_t a1)
{
  v2 = sub_1BF4E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1BF358(uint64_t a1)
{
  v2 = sub_1BF4E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReviewTypeData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28EA88, &qword_20E510);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_1BF4E0();
  sub_1E1E00();
  v10 = v7;
  sub_1BF534();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BF4E0()
{
  result = qword_28EA90;
  if (!qword_28EA90)
  {
    result = swift_getWitnessTable(byte_20E6E8, &type metadata for ReviewTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EA90);
  }

  return result;
}

unint64_t sub_1BF534()
{
  result = qword_28EA98;
  if (!qword_28EA98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReviewType, &type metadata for ReviewType, v0, v1);
    atomic_store(result, &qword_28EA98);
  }

  return result;
}

void ReviewTypeData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28EAA0, &qword_20E518);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_1BF4E0();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1BF6F4();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_1BF6F4()
{
  result = qword_28EAA8;
  if (!qword_28EAA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReviewType, &type metadata for ReviewType, v0, v1);
    atomic_store(result, &qword_28EAA8);
  }

  return result;
}

unint64_t sub_1BF7A4()
{
  result = qword_28EAB0;
  if (!qword_28EAB0)
  {
    result = swift_getWitnessTable(byte_20E6C0, &type metadata for ReviewTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EAB0);
  }

  return result;
}

unint64_t sub_1BF7FC()
{
  result = qword_28EAB8;
  if (!qword_28EAB8)
  {
    result = swift_getWitnessTable(byte_20E630, &type metadata for ReviewTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EAB8);
  }

  return result;
}

unint64_t sub_1BF854()
{
  result = qword_28EAC0;
  if (!qword_28EAC0)
  {
    result = swift_getWitnessTable(byte_20E658, &type metadata for ReviewTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EAC0);
  }

  return result;
}

uint64_t DataStack.subscript.getter(uint64_t *a1)
{
  if (*(*v1 + 16) && (sub_A2F4(*a1, a1[1]), (v2 & 1) != 0))
  {
  }

  else
  {
    return 0;
  }
}

__n128 DataStack.first<A>(of:)(uint64_t a1, objc_class *a2, uint64_t a3, objc_class *a4)
{
  v8 = *v4;
  v9 = swift_allocObject();
  v9[1].super.isa = a2;
  *v9[1].dataProviders = a3;
  v9[2].super.isa = a4;

  sub_3D68(&qword_28EAE8, &qword_20E740);
  sub_EC07C(&qword_28EAF0, &qword_28EAE8, &qword_20E740, &protocol conformance descriptor for LazySequence<A>);
  sub_1E1B60();
  v8, v10, v11, v12, v13, v14, v15, v16;
  v9, v17, v18, v19, v20, v21, v22, v23;
  v24 = v70;
  v58 = v68;
  v59 = v67;
  v63 = v67;
  v64 = v68;
  v57 = v69;
  v65 = v69;
  v66 = v70;
  sub_5DE50(&qword_28EAF8, &qword_20E748);
  sub_1E1A20();
  sub_EC07C(&qword_28EB00, &qword_28EAF8, &qword_20E748, &protocol conformance descriptor for [A : B].Values);
  v25 = sub_1E1B00();
  swift_getWitnessTable(&protocol conformance descriptor for LazyMapSequence<A, B>, v25);
  v26 = sub_1E1B10();
  swift_getWitnessTable(&protocol conformance descriptor for LazyFilterSequence<A>, v26);
  v27 = sub_1E1B00();
  v62 = sub_EC07C(&qword_28EB08, &qword_28EAF8, &qword_20E748, &protocol conformance descriptor for [A : B].Values);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> LazyMapSequence<A, B>, v25, &v62);
  v60 = swift_getWitnessTable(&protocol conformance descriptor for <> LazyFilterSequence<A>, v26, &WitnessTable);
  swift_getWitnessTable(&protocol conformance descriptor for <> LazyMapSequence<A, B>, v27, &v60);
  sub_1E1940();
  v24, v28, v29, v30, v31, v32, v33, v34;
  v57, v35, v36, v37, v38, v39, v40, v41;
  v58, v42, v43, v44, v45, v46, v47, v48;
  v59, v49, v50, v51, v52, v53, v54, v55;
  return result;
}

void sub_1BFBB0(uint64_t a1, uint64_t a2, BAEventReporter *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *v3;
    sub_173E78(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v9, v10, v11, v12, v13, v14, v15;
    *v3 = v41;
  }

  else
  {
    v16 = sub_A2F4(a2, a3);
    v18 = v17;
    a3, v17, v19, v20, v21, v22, v23, v24;
    if (v18)
    {
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v4;
      v42 = *v4;
      if (!v25)
      {
        sub_1746BC();
        v33 = v42;
      }

      *(*(v33 + 48) + 16 * v16 + 8), v26, v27, v28, v29, v30, v31, v32;
      *(*(v33 + 56) + 8 * v16), v34, v35, v36, v37, v38, v39, v40;
      sub_1D612C(v16, v33);
      *v4 = v33;
    }
  }
}

Swift::Int DataStackID.hashValue.getter()
{
  sub_1E1DC0();
  sub_1E17D0();
  return sub_1E1DE0();
}

Swift::Int sub_1BFCFC(uint64_t a1)
{
  sub_1E1DC0();
  sub_1E17D0();
  return sub_1E1DE0();
}

void *sub_1BFD44@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

void sub_1BFD50(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v16 = a2[1];
  v6 = v16;
  v17 = v4;
  v15 = v5;

  v7 = DataStack.subscript.getter(&v15);
  v6, v8, v9, v10, v11, v12, v13, v14;
  *a3 = v7;
}

void sub_1BFDB4(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;

  sub_1BFBB0(v5, v3, v4);
}

void (*DataStack.subscript.modify(void *a1, uint64_t *a2))(BAEventReporter **a1, char a2)
{
  v5 = *a2;
  v4 = a2[1];
  a1[1] = v2;
  a1[2] = v5;
  a1[3] = v4;
  v6 = *v2;
  v7 = *(v6 + 16);

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = sub_A2F4(v5, v4);
  if ((v9 & 1) == 0)
  {
    v4, v9, v10, v11, v12, v13, v14, v15;
LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v16 = *(*(v6 + 56) + 8 * v8);

  v4, v17, v18, v19, v20, v21, v22, v23;
LABEL_6:
  *a1 = v16;
  return sub_1BFEC0;
}

void sub_1BFEC0(BAEventReporter **a1, char a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = *a1;
  if (a2)
  {

    sub_1BFBB0(v5, v3, v2);

    v4, v6, v7, v8, v9, v10, v11, v12;
  }

  else
  {
    sub_1BFBB0(*a1, v3, v2);
  }
}

void sub_1BFF3C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = *(*a1 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    while (v9 < *(v7 + 16))
    {
      sub_E9C4C(v10, v26);
      if (sub_1C008C(v26, a2))
      {
        sub_E9CB0(v26, v27);
        goto LABEL_8;
      }

      ++v9;
      sub_4E48(v26, v11, v12, v13, v14, v15, v16, v17);
      v10 += 48;
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);

    sub_4E48(v26, v19, v20, v21, v22, v23, v24, v25);
    __break(1u);
  }

  else
  {
LABEL_6:
    memset(v27, 0, sizeof(v27));
LABEL_8:
    sub_3D68(&qword_285BB8, &unk_210050);
    v18 = swift_dynamicCast();
    (*(*(a2 - 8) + 56))(a5, v18 ^ 1u, 1, a2);
  }
}

uint64_t sub_1C008C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = __chkstk_darwin(a1);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_E9C4C(v4, v9);
  sub_3D68(&qword_285BB0, &qword_20EAA0);
  result = swift_dynamicCast();
  if (result)
  {
    v8 = result;
    (*(v3 + 8))(v6, a2);
    return v8;
  }

  return result;
}

__n128 DataStack.first<A>(of:)(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v6 = *v3;
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v8 = swift_allocObject();
  v8[1].super.isa = a2;
  *v8[1].dataProviders = a3;
  v8[2].super.isa = sub_1C2654;
  *v8[2].dataProviders = v7;
  swift_bridgeObjectRetain_n();
  sub_3D68(&qword_28EB10, &qword_20E750);
  sub_EC07C(&qword_28EB18, &qword_28EB10, &qword_20E750, &protocol conformance descriptor for LazySequence<A>);
  sub_1E1B60();
  v6, v9, v10, v11, v12, v13, v14, v15;
  v8, v16, v17, v18, v19, v20, v21, v22;
  v23 = v69;
  v57 = v67;
  v58 = v66;
  v62 = v66;
  v63 = v67;
  v56 = v68;
  v64 = v68;
  v65 = v69;
  sub_5DE50(&qword_28EB20, &qword_20E758);
  sub_1E1A20();
  sub_EC07C(&qword_28EB28, &qword_28EB20, &qword_20E758, &protocol conformance descriptor for [A : B]);
  v24 = sub_1E1B00();
  swift_getWitnessTable(&protocol conformance descriptor for LazyMapSequence<A, B>, v24);
  v25 = sub_1E1B10();
  swift_getWitnessTable(&protocol conformance descriptor for LazyFilterSequence<A>, v25);
  v26 = sub_1E1B00();
  v61 = sub_EC07C(&qword_28EB30, &qword_28EB20, &qword_20E758, &protocol conformance descriptor for [A : B]);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> LazyMapSequence<A, B>, v24, &v61);
  v59 = swift_getWitnessTable(&protocol conformance descriptor for <> LazyFilterSequence<A>, v25, &WitnessTable);
  swift_getWitnessTable(&protocol conformance descriptor for <> LazyMapSequence<A, B>, v26, &v59);
  sub_1E1940();
  v23, v27, v28, v29, v30, v31, v32, v33;
  v56, v34, v35, v36, v37, v38, v39, v40;
  v57, v41, v42, v43, v44, v45, v46, v47;
  v58, v48, v49, v50, v51, v52, v53, v54;
  return result;
}

uint64_t sub_1C0480@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a3;
  v36 = a6;
  v10 = sub_1E1A20();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v33 - v13;
  v15 = *(a4 - 8);
  __chkstk_darwin(v12);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[1];
  *&v34 = *a1;
  *(&v34 + 1) = v18;
  v19 = *(a2 + 16);
  if (v19)
  {
    v20 = a2 + 32;
    while (1)
    {
      sub_E9C4C(v20, v37);
      if (sub_1C008C(v37, a4))
      {
        break;
      }

      sub_4E48(v37, v21, v22, v23, v24, v25, v26, v27);
      v20 += 48;
      if (!--v19)
      {
        goto LABEL_5;
      }
    }

    sub_E9CB0(v37, v38);
  }

  else
  {
LABEL_5:
    memset(v38, 0, sizeof(v38));
  }

  sub_3D68(&qword_285BB8, &unk_210050);
  v28 = swift_dynamicCast();
  v29 = *(v15 + 56);
  if (v28)
  {
    v29(v14, 0, 1, a4);
    (*(v15 + 32))(v17, v14, a4);
    v37[0] = v34;

    sub_1E1AC0();
    v30 = v36;
    *&v37[0] = v35;
    (*(a5 + 24))(v38, v37, a4, a5);
    sub_A7F4(v38);
    (*(v15 + 8))(v17, a4);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v29(v14, 1, 1, a4);
    (*(v11 + 8))(v14, v10);
    v30 = v36;
  }

  return (v29)(v30, v31, 1, a4);
}

void sub_1C078C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void))
{
  v6 = *v5;
  v7 = &(*v5)[4];
  v8 = 1 << LOBYTE((*v5)[2].super.isa);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & (*v5)[4].super.isa;
  v11 = (v8 + 63) >> 6;
  v165 = enum case for DataEventTrait.onlyOnce(_:);
  v164 = v6;

  v19 = 0;
  v158 = v11;
  v159 = v7;
  while (v10)
  {
LABEL_10:
    v160 = v10;
    v28 = __clz(__rbit64(v10)) | (v19 << 6);
    v29 = v164[3].super.isa + 16 * v28;
    v167 = *v29;
    v30 = *(*v164[3].dataProviders + 8 * v28);
    isa = v30[1].super.isa;
    v169 = *(v29 + 8);

    v168 = v30;

    v166 = isa;
    if (isa)
    {
      v39 = 0;
      v40 = &v30[2];
      while (v39 < v168[1].super.isa)
      {
        sub_E9C4C(v40, v185);
        sub_E9C4C(v185, &v183);
        sub_E9C4C(&v183, &v176);
        sub_3D68(&qword_285BB0, &qword_20EAA0);
        sub_3D68(&qword_28EB90, &qword_20EAA8);
        if (swift_dynamicCast())
        {
          sub_7EE7C(&v173, v180);
          v66 = v181;
          v67 = v182;
          sub_48B8(v180, v181);
          *&v173 = v167;
          *(&v173 + 1) = v169;

          sub_1E1AC0();
          v170[0] = v164;
          v68 = *(v67 + 24);
          *(&v174 + 1) = v66;
          v175 = v67;
          sub_16305C(&v173);
          v68(&v176, v170, v66, v67);
          sub_A7F4(&v176);
          v69 = *(&v174 + 1);
          v70 = v175;
          v71 = sub_48B8(&v173, *(&v174 + 1));
          v177 = v69;
          v178 = *(v70 + 8);
          v179 = *(v70 + 16);
          v72 = sub_16305C(&v176);
          (*(*(v69 - 8) + 16))(v72, v71, v69);
          sub_4E48(&v183, v73, v74, v75, v76, v77, v78, v79);
          sub_E9CB0(&v176, &v183);
          sub_4E48(&v173, v80, v81, v82, v83, v84, v85, v86);
          sub_4E48(v180, v87, v88, v89, v90, v91, v92, v93);
        }

        else
        {
          v175 = 0;
          v173 = 0u;
          v174 = 0u;
          sub_18E48(&v173, &qword_28EB98, &qword_20EAB0);
        }

        sub_E9C4C(&v183, &v176);
        sub_3D68(&qword_28EBA0, &qword_20EAB8);
        if (swift_dynamicCast())
        {
          sub_7EE7C(&v173, v180);
          sub_17AA4(a2, &v176, &qword_283810, &unk_20EAE0);
          if (v177)
          {
            sub_7EE7C(&v176, &v173);
            v94 = v181;
            v95 = v182;
            sub_48B8(v180, v181);
            v170[0] = v167;
            v170[1] = v169;

            sub_1E1AC0();
            v96 = *(v95 + 24);
            v171 = v94;
            v172 = v95;
            sub_16305C(v170);
            v96(&v176, &v173, v94, v95);
            sub_A7F4(&v176);
            v97 = v171;
            v98 = v172;
            v99 = sub_48B8(v170, v171);
            v177 = v97;
            v178 = *(v98 + 8);
            v179 = *(v98 + 16);
            v100 = sub_16305C(&v176);
            (*(*(v97 - 8) + 16))(v100, v99, v97);
            sub_4E48(&v173, v101, v102, v103, v104, v105, v106, v107);
            sub_4E48(&v183, v108, v109, v110, v111, v112, v113, v114);
            sub_E9CB0(&v176, &v183);
            sub_4E48(v170, v115, v116, v117, v118, v119, v120, v121);
          }

          else
          {
            sub_18E48(&v176, &qword_283810, &unk_20EAE0);
          }

          sub_4E48(v180, v122, v123, v124, v125, v126, v127, v128);
        }

        else
        {
          v175 = 0;
          v173 = 0u;
          v174 = 0u;
          sub_18E48(&v173, &qword_28EBA8, &qword_20EAC0);
        }

        sub_E9C4C(&v183, &v176);
        sub_3D68(&qword_28EBB0, &qword_20EAC8);
        if (swift_dynamicCast())
        {
          sub_7EE7C(&v173, v180);
          if ((a4 & 1) == 0)
          {
            v136 = v181;
            v137 = v182;
            sub_48B8(v180, v181);
            *&v173 = v167;
            *(&v173 + 1) = v169;

            sub_1E1AC0();
            v138 = *(v137 + 24);
            *(&v174 + 1) = v136;
            v175 = v137;
            sub_16305C(&v173);
            v138(&v176, a3, 0, v136, v137);
            sub_A7F4(&v176);
            v139 = *(&v174 + 1);
            v140 = v175;
            v141 = sub_48B8(&v173, *(&v174 + 1));
            v177 = v139;
            v178 = *(v140 + 8);
            v179 = *(v140 + 16);
            v142 = sub_16305C(&v176);
            (*(*(v139 - 8) + 16))(v142, v141, v139);
            sub_4E48(&v183, v143, v144, v145, v146, v147, v148, v149);
            sub_E9CB0(&v176, &v183);
            sub_4E48(&v173, v150, v151, v152, v153, v154, v155, v156);
          }

          sub_4E48(v180, v129, v130, v131, v132, v133, v134, v135);
        }

        else
        {
          v175 = 0;
          v173 = 0u;
          v174 = 0u;
          sub_18E48(&v173, &qword_28EBB8, &unk_20EAD0);
        }

        v39 = (v39 + 1);
        sub_48B8(&v183, v184);
        sub_3D68(&qword_2828D0, &unk_1FD120);
        v41 = sub_1E0CB0();
        v42 = *(v41 - 8);
        v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1E9970;
        (*(v42 + 104))(v44 + v43, v165, v41);
        sub_1E0C00();
        v44, v45, v46, v47, v48, v49, v50, v51;
        sub_4E48(&v183, v52, v53, v54, v55, v56, v57, v58);
        sub_4E48(v185, v59, v60, v61, v62, v63, v64, v65);
        v40 += 48;
        if (v166 == v39)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_4:
    v10 = (v160 - 1) & v160;
    v168, v32, v33, v34, v35, v36, v37, v38;
    v169, v20, v21, v22, v23, v24, v25, v26;
    v11 = v158;
    v7 = v159;
  }

  while (1)
  {
    v27 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v27 >= v11)
    {
      v164, v12, v13, v14, v15, v16, v17, v18;
      a5();
      return;
    }

    v10 = *(v7 + 8 * v27);
    ++v19;
    if (v10)
    {
      v19 = v27;
      goto LABEL_10;
    }
  }

LABEL_30:
  __break(1u);
}

unint64_t sub_1C0F20()
{
  result = sub_325A8(_swiftEmptyArrayStorage);
  qword_28EAC8 = result;
  return result;
}

uint64_t sub_1C0F48@<X0>(void *a1@<X8>)
{
  if (qword_27D768 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_28EAC8;
}

uint64_t sub_1C0FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C2C08();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

void *EnvironmentValues._dataStack.getter()
{
  sub_A848();

  return sub_1E1490();
}

void (*EnvironmentValues._dataStack.modify(void *a1))(BAEventReporter **a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_A848();
  sub_1E1490();
  return sub_1C1104;
}

void sub_1C1104(BAEventReporter **a1, char a2)
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

void View.appAnalyticsData<A>(_:for:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>)
{
  v31 = a7;
  v30 = a6;
  v13 = sub_1E1A20();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  sub_3D68(&qword_28EB38, &qword_20E760);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E9970;
  (*(v14 + 16))(v16, a1, v13);
  v18 = *(a4 - 8);
  if ((*(v18 + 48))(v16, 1, a4) == 1)
  {
    (*(v14 + 8))(v16, v13);
    *(v17 + 48) = 0u;
    *(v17 + 64) = 0u;
    *(v17 + 32) = 0u;
  }

  else
  {
    v20 = v30;
    v19 = v31;
    *(v17 + 56) = a4;
    *(v17 + 64) = v20;
    *(v17 + 72) = v19;
    v21 = sub_16305C((v17 + 32));
    (*(v18 + 32))(v21, v16, a4);
  }

  View.appAnalyticsData(_:for:)(v17, a2, a5, x8_0);
  v17, v22, v23, v24, v25, v26, v27, v28;
}

uint64_t View.appAnalyticsData(_:for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37[0] = a1;
  v37[1] = a5;
  v7 = sub_1E1440();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v37 - v9;
  v11 = *a2;
  v12 = a2[1];
  KeyPath = swift_getKeyPath();
  v40 = 0;
  sub_1E1530();
  sub_A2E8(KeyPath, v40, v13, v14, v15, v16, v17, v18);
  v19 = swift_getKeyPath();
  v20 = swift_allocObject();
  v20[1].super.isa = v37[0];
  *v20[1].dataProviders = v11;
  v20[2].super.isa = v12;
  v21 = sub_1C2718();
  v38[0] = a4;
  v38[1] = v21;

  swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v38);
  sub_1E1510();
  v19, v22, v23, v24, v25, v26, v27, v28;
  v20, v29, v30, v31, v32, v33, v34, v35;
  return (*(v8 + 8))(v10, v7);
}

void sub_1C1584(void *a1, uint64_t a2, uint64_t a3, BAEventReporter *a4)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = _swiftEmptyArrayStorage;
    v8 = a2 + 32;
    do
    {
      sub_17AA4(v8, &v46, &qword_285BB8, &unk_210050);
      v44[0] = v46;
      v44[1] = v47;
      v44[2] = v48;
      if (*(&v47 + 1))
      {
        sub_E9CB0(v44, v45);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_102EC0(0, v7[1].super.isa + 1, &dword_0 + 1, v7, v9, v10, v11, v12);
        }

        isa = v7[1].super.isa;
        v13 = *v7[1].dataProviders;
        if (isa >= v13 >> 1)
        {
          v7 = sub_102EC0((v13 > 1), (isa + 1), &dword_0 + 1, v7, v9, v10, v11, v12);
        }

        v7[1].super.isa = (isa + 1);
        sub_E9CB0(v45, &v7[3 * isa + 2]);
      }

      else
      {
        sub_18E48(v44, &qword_285BB8, &unk_210050);
      }

      v8 += 48;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  *&v46 = v7;
  sub_3D68(&qword_28EBC0, &qword_20EAF0);
  sub_EC07C(&qword_28EBC8, &qword_28EBC0, &qword_20EAF0, &protocol conformance descriptor for [A]);
  if (sub_1E1930())
  {
    v22 = *a1;
    if (*(*a1 + 16) && (v23 = sub_A2F4(a3, a4), (v24 & 1) != 0))
    {
      *&v46 = *(*(v22 + 56) + 8 * v23);

      sub_1C1810(v7);
      v25 = v46;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v45[0] = *a1;
      *a1 = 0x8000000000000000;
      sub_173E78(v25, a3, a4, isUniquelyReferenced_nonNull_native);
      a4, v27, v28, v29, v30, v31, v32, v33;
      v34 = *&v45[0];
    }

    else
    {

      v35 = swift_isUniquelyReferenced_nonNull_native();
      *&v46 = *a1;
      *a1 = 0x8000000000000000;
      sub_173E78(v7, a3, a4, v35);
      a4, v36, v37, v38, v39, v40, v41, v42;
      v34 = v46;
    }

    *a1 = v34;
  }

  else
  {
    v7, v15, v16, v17, v18, v19, v20, v21;
  }
}

void sub_1C1810(BAEventReporter *a1)
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
    v25 = isa + v4;
  }

  else
  {
    v25 = v4;
  }

  v3 = sub_102EC0(isUniquelyReferenced_nonNull_native, v25, &dword_0 + 1, v3, v11, v12, v13, v14);
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
  if (((*v3[1].dataProviders >> 1) - v3[1].super.isa) < isa)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_3D68(&qword_285BB0, &qword_20EAA0);
  swift_arrayInitWithCopy();
  a1, v15, v16, v17, v18, v19, v20, v21;
  if (!isa)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v22 = v3[1].super.isa;
  v23 = __OFADD__(v22, isa);
  v24 = (isa + v22);
  if (!v23)
  {
    v3[1].super.isa = v24;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void View.transformAppAnalyticsData<A>(_:for:transform:)(uint64_t a1, uint64_t *a2, uint64_t a3, objc_class *a4, objc_class *a5, uint64_t a6, objc_class *a7, uint64_t a8, objc_class *a9)
{
  v14 = *a2;
  v15 = a2[1];
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  v17[1].super.isa = a5;
  *v17[1].dataProviders = a6;
  v17[2].super.isa = a7;
  *v17[2].dataProviders = a8;
  v17[3].super.isa = a9;
  *v17[3].dataProviders = v14;
  v17[4].super.isa = v15;
  *v17[4].dataProviders = a3;
  v17[5].super.isa = a4;

  sub_1E1510();
  KeyPath, v18, v19, v20, v21, v22, v23, v24;

  v17, v25, v26, v27, v28, v29, v30, v31;
}

void sub_1C1A18(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, objc_class *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v82 = a5;
  v16 = sub_1E1A20();
  v80 = *(v16 - 8);
  v81 = v16;
  v17 = __chkstk_darwin(v16);
  v83 = &v74 - v18;
  v19 = *(a7 - 1);
  __chkstk_darwin(v17);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  if (*(*a1 + 16))
  {
    v23 = sub_A2F4(a2, a3);
    if (v24)
    {
      v77 = a4;
      v78 = v21;
      v79 = v19;
      v74 = a2;
      v75 = a3;
      v76 = a1;
      v25 = *(*(v22 + 56) + 8 * v23);
      isa = v25[1].super.isa;
      swift_bridgeObjectRetain_n();
      if (isa)
      {
        v34 = 0;
        v84 = a10;
        v35 = 2;
        while (1)
        {
          if (v34 >= v25[1].super.isa)
          {
            __break(1u);
            goto LABEL_18;
          }

          sub_E9C4C(&v25[v35], &v85);
          v36 = sub_1C1E0C(&v85, a6, a7);
          sub_4E48(&v85, v37, v38, v39, v40, v41, v42, v43);
          if (v36)
          {
            break;
          }

          v34 = (v34 + 1);
          v35 += 3;
          if (isa == v34)
          {
            goto LABEL_8;
          }
        }

        v25, v27, v28, v29, v30, v31, v32, v33;
        if (v34 < v25[1].super.isa)
        {
          sub_E9C4C(&v25[v35], &v85);
          sub_3D68(&qword_285BB0, &qword_20EAA0);
          v44 = v83;
          isa = a7;
          v45 = swift_dynamicCast();
          v46 = v79;
          v47 = *(v79 + 56);
          if (v45)
          {
            v47(v44, 0, 1, a7);
            v48 = v78;
            (*(v46 + 32))(v78, v44, isa);
            v77(v48);
            v86 = isa;
            v87 = a9;
            v88 = v84;
            v49 = sub_16305C(&v85);
            (*(v46 + 16))(v49, v48, isa);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_12;
            }

            goto LABEL_19;
          }

          v47(v44, 1, 1, a7);
          (*(v80 + 8))(v44, v81);
LABEL_15:
          v25, v60, v61, v62, v63, v64, v65, v66;
          return;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        v25 = sub_1C2330(v25, v27, v28, v29, v30, v31, v32, v33);
LABEL_12:
        if (v34 < v25[1].super.isa)
        {
          sub_4E48(&v25[v35], v27, v28, v29, v30, v31, v32, v33);
          sub_E9CB0(&v85, &v25[v35]);
          v50 = v75;

          v51 = v76;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v85 = *v51;
          *v51 = 0x8000000000000000;
          sub_173E78(v25, v74, v50, isUniquelyReferenced_nonNull_native);
          v50, v53, v54, v55, v56, v57, v58, v59;
          *v51 = v85;
          (*(v79 + 8))(v78, isa);
          goto LABEL_15;
        }

        __break(1u);

        sub_4E48(&v85, v67, v68, v69, v70, v71, v72, v73);
        __break(1u);
      }

      else
      {
LABEL_8:
        swift_bridgeObjectRelease_n();
      }
    }
  }
}

uint64_t sub_1C1E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_E9C4C(v5, v10);
  sub_3D68(&qword_285BB0, &qword_20EAA0);
  result = swift_dynamicCast();
  if (result)
  {
    v9 = result;
    (*(v4 + 8))(v7, a3);
    return v9;
  }

  return result;
}

void sub_1C1F10(uint64_t a1, BAEventReporter *a2, char a3)
{
  v5 = sub_1E1480();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v25 = a2;
    sub_1C2CA4(a2, 1);
  }

  else
  {
    sub_1C2CA4(a2, 0);
    sub_1E1990();
    v9 = sub_1E14E0();
    sub_1E1320();

    sub_1E1470();
    swift_getAtKeyPath();
    sub_A2E8(a2, 0, v10, v11, v12, v13, v14, v15);
    (*(v6 + 8))(v8, v5);
    a2 = v25;
  }

  v24 = a2;
  if (qword_27D770 != -1)
  {
    swift_once();
  }

  v16 = sub_3D68(&qword_28EB48, &qword_20E790);
  sub_3B2C(v16, qword_28EAD0);
  sub_1E1710();
  v24, v17, v18, v19, v20, v21, v22, v23;
}

void sub_1C20E4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = swift_allocObject();
  v3[1].super.isa = v1;
  v3[1].dataProviders[0] = v2;
  sub_1C2CA4(v1, v2);
  sub_3D68(&qword_28EB80, &qword_20EA98);
  sub_EC07C(&qword_28EB88, &qword_28EB80, &qword_20EA98, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_1E14F0();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_1C21D4()
{
  v0 = sub_3D68(&qword_28EB48, &qword_20E790);
  sub_5F94(v0, qword_28EAD0);
  sub_3B2C(v0, qword_28EAD0);
  return sub_1E1700();
}

uint64_t static MetricsFieldsContext.Property<A>.dataStack.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D770 != -1)
  {
    swift_once();
  }

  v2 = sub_3D68(&qword_28EB48, &qword_20E790);
  v3 = sub_3B2C(v2, qword_28EAD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void _s13BookAnalytics9DataStackV2eeoiySbAC_ACtFZ_0(BAEventReporter **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*a1)[1].super.isa == *(*a2 + 16))
  {
    v4 = v2 + 4;
    v5 = 1 << LOBYTE(v2[2].super.isa);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & v2[4].super.isa;
    v99 = (v5 + 63) >> 6;

    v15 = 0;
    v96 = v3;
    v97 = v2;
    v95 = v2 + 4;
    v16 = v99;
    if (v7)
    {
      while (1)
      {
        v17 = v15;
LABEL_9:
        if (!*(v3 + 16))
        {
          break;
        }

        v98 = v17;
        v18 = __clz(__rbit64(v7)) | (v17 << 6);
        v19 = (v2[3].super.isa + 16 * v18);
        v20 = *(*v2[3].dataProviders + 8 * v18);
        v21 = *v19;
        v22 = v19[1];

        v23 = sub_A2F4(v21, v22);
        if ((v24 & 1) == 0)
        {
          v87 = v22;
LABEL_26:
          v87, v24, v25, v26, v27, v28, v29, v30;
          v20, v88, v89, v90, v91, v92, v93, v94;
          break;
        }

        v31 = *(*(v3 + 56) + 8 * v23);

        v22, v32, v33, v34, v35, v36, v37, v38;
        isa = v20[1].super.isa;
        if (isa != v31[1].super.isa)
        {
          v87 = v31;
          goto LABEL_26;
        }

        v39 = 0;
        v7 &= v7 - 1;
        v40 = 32;
        while (1)
        {
          if (isa == v39)
          {
            v31, v24, v25, v26, v27, v28, v29, v30;
            v20, v58, v59, v60, v61, v62, v63, v64;
            goto LABEL_21;
          }

          if (v39 >= v20[1].super.isa)
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          sub_E9C4C(v20 + v40, v103);
          v48 = v31[1].super.isa;
          if (v39 == v48)
          {
            break;
          }

          if (v39++ >= v48)
          {
            goto LABEL_31;
          }

          v102 = v40 + 48;
          sub_E9CB0(v103, &v104);
          sub_E9C4C(v31 + v40, v108);
          v49 = v105;
          v101 = v106;
          v50 = v107;
          v51 = sub_48B8(&v104, v105);
          v52 = v7;
          v53 = v109;
          v54 = v110;
          v55 = v111;
          v56 = sub_48B8(v108, v109);
          v57 = v54;
          v7 = v52;
          LOBYTE(v55) = sub_567C4(v51, v56, v49, v53, v101, v50, v57, v55);
          sub_18E48(&v104, &qword_28EBD0, &qword_20EAF8);
          v40 = v102;
          if ((v55 & 1) == 0)
          {
            v31, v24, v25, v26, v27, v28, v29, v30;
            v20, v79, v80, v81, v82, v83, v84, v85;
            v86 = v97;
            goto LABEL_28;
          }
        }

        v31, v41, v42, v43, v44, v45, v46, v47;
        v20, v65, v66, v67, v68, v69, v70, v71;
        sub_4E48(v103, v72, v73, v74, v75, v76, v77, v78);
LABEL_21:
        v2 = v97;
        v15 = v98;
        v4 = v95;
        v3 = v96;
        v16 = v99;
        if (!v7)
        {
          goto LABEL_6;
        }
      }

      v86 = v2;
LABEL_28:
      v86, v8, v9, v10, v11, v12, v13, v14;
    }

    else
    {
LABEL_6:
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v16)
        {
          v2, v8, v9, v10, v11, v12, v13, v14;
          return;
        }

        v7 = *(&v4->super.isa + v17);
        ++v15;
        if (v7)
        {
          goto LABEL_9;
        }
      }

LABEL_32:
      __break(1u);
    }
  }
}

uint64_t sub_1C261C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 40, 7);
}

uint64_t sub_1C2660(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 48, 7);
}

uint64_t sub_1C26CC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return _swift_deallocObject(v8, 40, 7);
}

unint64_t sub_1C2718()
{
  result = qword_28EB40;
  if (!qword_28EB40)
  {
    result = swift_getWitnessTable(byte_20EA10, &type metadata for UpdateDataStackInMetricsFieldsContextViewModifier, v0, v1);
    atomic_store(result, &qword_28EB40);
  }

  return result;
}

uint64_t sub_1C276C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 64), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 80), v9, v10, v11, v12, v13, v14, v15;

  return _swift_deallocObject(v8, 88, 7);
}

unint64_t sub_1C27E8()
{
  result = qword_28EB50;
  if (!qword_28EB50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DataStackID, &type metadata for DataStackID, v0, v1);
    atomic_store(result, &qword_28EB50);
  }

  return result;
}

unint64_t sub_1C2840()
{
  result = qword_28EB58;
  if (!qword_28EB58)
  {
    result = swift_getWitnessTable("Q", &type metadata for DataStackID, v0, v1);
    atomic_store(result, &qword_28EB58);
  }

  return result;
}

unint64_t sub_1C28A4()
{
  result = qword_28EB60;
  if (!qword_28EB60)
  {
    result = swift_getWitnessTable("9", &type metadata for DataStackID, v0, v1);
    atomic_store(result, &qword_28EB60);
  }

  return result;
}

uint64_t sub_1C2948(void *a1)
{
  v1 = a1[2];
  v2 = sub_1E1440();
  sub_5DE50(&qword_28EB68, &qword_20E958);
  v3 = sub_1E1440();
  v6[0] = v1;
  v6[1] = sub_1C2718();
  v5[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v6);
  v5[1] = sub_EC07C(&qword_28EB70, &qword_28EB68, &qword_20E958, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
  return swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
}

uint64_t sub_1C2A34(void *a1)
{
  v1 = a1[1];
  v2 = sub_1E1440();
  sub_5DE50(&qword_28EB68, &qword_20E958);
  v3 = sub_1E1440();
  v6[0] = v1;
  v6[1] = sub_1C2718();
  v5[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v6);
  v5[1] = sub_EC07C(&qword_28EB70, &qword_28EB68, &qword_20E958, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
  return swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
}

uint64_t sub_1C2B1C(uint64_t *a1)
{
  v1 = a1[2];
  sub_5DE50(&qword_28EB68, &qword_20E958);
  v2 = sub_1E1440();
  v4[0] = v1;
  v4[1] = sub_EC07C(&qword_28EB70, &qword_28EB68, &qword_20E958, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
  return swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
}

unint64_t sub_1C2C08()
{
  result = qword_28EB78;
  if (!qword_28EB78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DataStack, &type metadata for DataStack, v0, v1);
    atomic_store(result, &qword_28EB78);
  }

  return result;
}

uint64_t sub_1C2C5C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  sub_A2E8(*(v8 + 16), *(v8 + 24), a3, a4, a5, a6, a7, a8);

  return _swift_deallocObject(v8, 25, 7);
}

uint64_t sub_1C2CA4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1C2CB0()
{
  sub_5DE50(&qword_28EB80, &qword_20EA98);
  sub_EC07C(&qword_28EB88, &qword_28EB80, &qword_20EA98, &protocol conformance descriptor for _ViewModifier_Content<A>);
  return swift_getOpaqueTypeConformance2();
}

BookAnalytics::OdpSuggestionType_optional __swiftcall OdpSuggestionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261FF8;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 12;
  if (v5 < 0xC)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

unint64_t OdpSuggestionType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v5 = 0x64656C706D6173;
    if (v1 != 9)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0x706D615364616572;
    v7 = 0xD00000000000001ALL;
    if (v1 == 7)
    {
      v7 = 0x6573616863727570;
    }

    if (v1 != 6)
    {
      v6 = v7;
    }

    if (*v0 <= 8u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6465776569766572;
    v3 = 1684104562;
    if (v1 != 4)
    {
      v3 = 0x64656873696E6966;
    }

    if (v1 == 3)
    {
      v3 = 0x6465776569766572;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000015;
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
}

unint64_t sub_1C2F20()
{
  result = qword_28EBD8;
  if (!qword_28EBD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OdpSuggestionType, &type metadata for OdpSuggestionType, v0, v1);
    atomic_store(result, &qword_28EBD8);
  }

  return result;
}

Swift::Int sub_1C2F74()
{
  sub_1E1DC0();
  OdpSuggestionType.rawValue.getter();
  v1 = v0;
  sub_1E17D0();
  v1, v2, v3, v4, v5, v6, v7, v8;
  return sub_1E1DE0();
}

void sub_1C2FDC(uint64_t a1)
{
  OdpSuggestionType.rawValue.getter();
  v2 = v1;
  sub_1E17D0();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_1C3040(uint64_t a1)
{
  sub_1E1DC0();
  OdpSuggestionType.rawValue.getter();
  v2 = v1;
  sub_1E17D0();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1E1DE0();
}

unint64_t sub_1C30B0@<X0>(unint64_t *a1@<X8>)
{
  result = OdpSuggestionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C3198()
{
  result = qword_28EBE0;
  if (!qword_28EBE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OdpSuggestionType, &type metadata for OdpSuggestionType, v0, v1);
    atomic_store(result, &qword_28EBE0);
  }

  return result;
}

BookAnalytics::ContentType_optional __swiftcall ContentType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_262138;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 7;
  if (v5 < 7)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t ContentType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 4276809;
  if (v1 != 5)
  {
    v3 = 0x694773656E757469;
  }

  v4 = 4605008;
  if (v1 != 3)
  {
    v4 = 5527636;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1802465122;
  if (v1 != 1)
  {
    v5 = 0x6F6F626F69647561;
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

unint64_t sub_1C3324()
{
  result = qword_28EBE8;
  if (!qword_28EBE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentType, &type metadata for ContentType, v0, v1);
    atomic_store(result, &qword_28EBE8);
  }

  return result;
}

void sub_1C3384(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  if (v2 != 5)
  {
    v4 = 0xEE00647261437466;
  }

  if (*v1 <= 4u)
  {
    v4 = 0xE300000000000000;
  }

  v5 = 0xE400000000000000;
  if (v2 != 1)
  {
    v5 = 0xE90000000000006BLL;
  }

  if (*v1)
  {
    v3 = v5;
  }

  if (*v1 <= 2u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_1E17D0();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1C3498(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE300000000000000;
  v6 = 4276809;
  if (v2 != 5)
  {
    v6 = 0x694773656E757469;
    v5 = 0xEE00647261437466;
  }

  v7 = 4605008;
  if (v2 != 3)
  {
    v7 = 5527636;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE300000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1802465122;
  if (v2 != 1)
  {
    v9 = 0x6F6F626F69647561;
    v8 = 0xE90000000000006BLL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_1C3628()
{
  result = qword_28EBF0;
  if (!qword_28EBF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentType, &type metadata for ContentType, v0, v1);
    atomic_store(result, &qword_28EBF0);
  }

  return result;
}

uint64_t ExitLinkTapEvent.externalLinkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_28EC28, &unk_20ED70);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ExitLinkTapEvent.externalLinkData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_28EC28, &unk_20ED70);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ExitLinkTapEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExitLinkTapEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ExitLinkTapEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExitLinkTapEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ExitLinkTapEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_28EC28, &unk_20ED70);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for ExitLinkTapEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t ExitLinkTapEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExitLinkTapEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ExitLinkTapEvent.Model.init(externalLinkData:eventData:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 1) = v5;
  v6 = *(type metadata accessor for ExitLinkTapEvent.Model(0) + 20);
  v7 = sub_1E1150();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a3[v6], a2, v7);
}

uint64_t sub_1C3B9C()
{
  if (*v0)
  {
    return 0x746144746E657665;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_1C3BE0(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0x8000000000217620;
  if (a1 == 0xD000000000000010 && 0x8000000000217620 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
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

uint64_t sub_1C3CD0(uint64_t a1)
{
  v2 = sub_1C3F18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1C3D0C(uint64_t a1)
{
  v2 = sub_1C3F18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ExitLinkTapEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28EC30, &qword_20ED80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-v7];
  sub_48B8(a1, a1[3]);
  sub_1C3F18();
  sub_1E1E00();
  v9 = v3[1];
  v19 = *v3;
  v20 = v9;
  v18[15] = 0;
  sub_1C3F6C();

  sub_1E1CF0();
  v20, v10, v11, v12, v13, v14, v15, v16;
  if (!v2)
  {
    type metadata accessor for ExitLinkTapEvent.Model(0);
    LOBYTE(v19) = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C3F18()
{
  result = qword_28EC38;
  if (!qword_28EC38)
  {
    result = swift_getWitnessTable(asc_20EF3C, &type metadata for ExitLinkTapEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EC38);
  }

  return result;
}

unint64_t sub_1C3F6C()
{
  result = qword_28EC40;
  if (!qword_28EC40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExternalLinkData, &type metadata for ExternalLinkData, v0, v1);
    atomic_store(result, &qword_28EC40);
  }

  return result;
}

void ExitLinkTapEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v34 = sub_1E1150();
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_3D68(&qword_28EC48, &qword_20ED88);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = &v30 - v6;
  v8 = type metadata accessor for ExitLinkTapEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_1C3F18();
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
    v38 = 0;
    sub_1C42D0();
    v21 = v35;
    sub_1E1C20();
    v22 = v37;
    *v18 = v36;
    *(v18 + 1) = v22;
    LOBYTE(v36) = 1;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v7, v21);
    (*(v31 + 32))(&v18[*(v30 + 20)], v5, v19);
    sub_1C4324(v18, v32);
    sub_4E48(a1, v23, v24, v25, v26, v27, v28, v29);
    sub_1C4388(v18);
  }
}

unint64_t sub_1C42D0()
{
  result = qword_28EC50;
  if (!qword_28EC50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExternalLinkData, &type metadata for ExternalLinkData, v0, v1);
    atomic_store(result, &qword_28EC50);
  }

  return result;
}

uint64_t sub_1C4324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExitLinkTapEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4388(uint64_t a1)
{
  v2 = type metadata accessor for ExitLinkTapEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_28EC28, &unk_20ED70);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_1C4570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_28EC28, &unk_20ED70);
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

uint64_t sub_1C468C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_28EC28, &unk_20ED70);
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

void sub_1C47A0(uint64_t a1)
{
  sub_1C4824(319);
  if (v1 <= 0x3F)
  {
    sub_5684(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4824(uint64_t a1)
{
  if (!qword_28ECC0)
  {
    sub_1C42D0();
    sub_1C3F6C();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_28ECC0);
    }
  }
}

uint64_t sub_1C48A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C4960(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
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

uint64_t sub_1C4A04(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C4A94()
{
  result = qword_28ED80;
  if (!qword_28ED80)
  {
    result = swift_getWitnessTable(aU_27, &type metadata for ExitLinkTapEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28ED80);
  }

  return result;
}

unint64_t sub_1C4AEC()
{
  result = qword_28ED88;
  if (!qword_28ED88)
  {
    result = swift_getWitnessTable(byte_20EE84, &type metadata for ExitLinkTapEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28ED88);
  }

  return result;
}

unint64_t sub_1C4B44()
{
  result = qword_28ED90;
  if (!qword_28ED90)
  {
    result = swift_getWitnessTable(byte_20EEAC, &type metadata for ExitLinkTapEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28ED90);
  }

  return result;
}

uint64_t sub_1C4B98(uint64_t a1)
{
  v2 = sub_1C4DD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1C4BD4(uint64_t a1)
{
  v2 = sub_1C4DD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DragDropItemData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28ED98, &qword_20EF90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  sub_48B8(a1, a1[3]);
  sub_1C4DD4();
  sub_1E1E00();
  v14 = 0;
  v9 = v11[5];
  sub_1E1CB0();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1E1CB0();
  v12 = 2;
  sub_1E1CB0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1C4DD4()
{
  result = qword_28EDA0;
  if (!qword_28EDA0)
  {
    result = swift_getWitnessTable(byte_20F184, &type metadata for DragDropItemData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EDA0);
  }

  return result;
}

void DragDropItemData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_28EDA8, &qword_20EF98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53 - v7;
  sub_48B8(a1, a1[3]);
  sub_1C4DD4();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v59 = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    v56 = v16;
    v58 = 1;
    v54 = sub_1E1BE0();
    v55 = v19;
    v57 = 2;
    v20 = sub_1E1BE0();
    v22 = v21;
    v23 = v20;
    (*(v6 + 8))(v8, v5);
    v24 = v55;
    *a2 = v56;
    a2[1] = v18;
    a2[2] = v54;
    a2[3] = v24;
    a2[4] = v23;
    a2[5] = v22;

    sub_4E48(a1, v25, v26, v27, v28, v29, v30, v31);
    v22, v32, v33, v34, v35, v36, v37, v38;
    v24, v39, v40, v41, v42, v43, v44, v45;
    v18, v46, v47, v48, v49, v50, v51, v52;
  }
}

unint64_t sub_1C50FC()
{
  result = qword_28EDB0;
  if (!qword_28EDB0)
  {
    result = swift_getWitnessTable(asc_20F15C, &type metadata for DragDropItemData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EDB0);
  }

  return result;
}

unint64_t sub_1C5154()
{
  result = qword_28EDB8;
  if (!qword_28EDB8)
  {
    result = swift_getWitnessTable(aU_28, &type metadata for DragDropItemData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EDB8);
  }

  return result;
}

unint64_t sub_1C51AC()
{
  result = qword_28EDC0;
  if (!qword_28EDC0)
  {
    result = swift_getWitnessTable(asc_20F0F4, &type metadata for DragDropItemData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EDC0);
  }

  return result;
}

Swift::Int sub_1C5200(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xEC000000676E6964;
  if (a2 != 5)
  {
    v4 = 0xEE00676E696E6574;
  }

  v5 = 0xEB00000000646441;
  if (a2 != 3)
  {
    v5 = 0xEB0000000065726FLL;
  }

  if (a2 <= 4u)
  {
    v4 = v5;
  }

  v6 = 0xEA00000000007061;
  if (a2 != 1)
  {
    v6 = 0xEC0000007061546ELL;
  }

  if (a2)
  {
    v3 = v6;
  }

  if (a2 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1E17D0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1E1DE0();
}

Swift::Int sub_1C5354(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1DC0();
  v3 = 0x8000000000212530;
  v4 = 0x8000000000212550;
  if (a2 != 4)
  {
    v4 = 0xED00007265646165;
  }

  if (a2 != 3)
  {
    v3 = v4;
  }

  v5 = 0x8000000000212510;
  if (a2 == 1)
  {
    v5 = 0xEC00000072656461;
  }

  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xEC00000072656461;
  }

  if (a2 <= 2u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  sub_1E17D0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1E1DE0();
}

Swift::Int sub_1C5470(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  if (a2 != 5)
  {
    v4 = 0xE600000000000000;
  }

  v5 = 0x80000000002128B0;
  if (a2 != 3)
  {
    v5 = 0xEC0000006E6F6974;
  }

  if (a2 <= 4u)
  {
    v4 = v5;
  }

  v6 = 0x8000000000212890;
  if (a2 != 1)
  {
    v6 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = v6;
  }

  if (a2 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1E17D0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1E1DE0();
}

Swift::Int sub_1C5594(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  if (a2 != 5)
  {
    v4 = 0xEE00647261437466;
  }

  if (a2 <= 4u)
  {
    v4 = 0xE300000000000000;
  }

  v5 = 0xE400000000000000;
  if (a2 != 1)
  {
    v5 = 0xE90000000000006BLL;
  }

  if (a2)
  {
    v3 = v5;
  }

  if (a2 <= 2u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_1E17D0();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return sub_1E1DE0();
}

Swift::Int sub_1C56A8(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1DC0();
  v3 = 0xEC000000656C6262;
  v4 = 0xED0000656C626275;
  if (a2 != 5)
  {
    v4 = 0xE700000000000000;
  }

  v5 = 0xE600000000000000;
  if (a2 != 3)
  {
    v5 = 0xE500000000000000;
  }

  if (a2 <= 4u)
  {
    v4 = v5;
  }

  v6 = 0xE600000000000000;
  if (a2 != 1)
  {
    v6 = 0xEC00000072656E6ELL;
  }

  if (a2)
  {
    v3 = v6;
  }

  if (a2 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1E17D0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1E1DE0();
}

Swift::Int sub_1C57DC(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  if (a2 != 5)
  {
    v4 = 0xE600000000000000;
  }

  v5 = 0x80000000002129E0;
  if (a2 != 3)
  {
    v5 = 0xE800000000000000;
  }

  if (a2 <= 4u)
  {
    v4 = v5;
  }

  v6 = 0xE600000000000000;
  if (a2 != 1)
  {
    v6 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = v6;
  }

  if (a2 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1E17D0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1E1DE0();
}

Swift::Int sub_1C58F4(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1DC0();
  if (a2 > 3u)
  {
    v6 = 0x8000000000213460;
    if (a2 != 4)
    {
      v6 = 0x8000000000213480;
    }

    if (a2 <= 5u)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0xED00006D72655464;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x8000000000213420;
    if (a2 != 2)
    {
      v4 = 0x8000000000213440;
    }

    if (a2)
    {
      v3 = 0xEF7061546E6F7474;
    }

    if (a2 <= 1u)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }
  }

  sub_1E17D0();
  v5, v7, v8, v9, v10, v11, v12, v13;
  return sub_1E1DE0();
}

Swift::Int sub_1C5A70(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xEE00657361686372;
  if (a2 != 6)
  {
    v4 = 0xE700000000000000;
  }

  v5 = 0xE600000000000000;
  if (a2 != 4)
  {
    v5 = 0xEC00000065726F74;
  }

  if (a2 <= 5u)
  {
    v4 = v5;
  }

  v6 = 0xEA00000000006465;
  if (a2 != 2)
  {
    v6 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0xE900000000000064;
  }

  if (a2 > 1u)
  {
    v3 = v6;
  }

  if (a2 <= 3u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1E17D0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1E1DE0();
}

Swift::Int sub_1C5BCC(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x8000000000212890;
  if (a2 != 4)
  {
    v5 = 0xE600000000000000;
  }

  if (a2 != 3)
  {
    v4 = v5;
  }

  v6 = 0xEA00000000006B63;
  if (a2 != 1)
  {
    v6 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = v6;
  }

  if (a2 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1E17D0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1E1DE0();
}

Swift::Int sub_1C5CCC(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0x8000000000212960;
  if (a2 == 5)
  {
    v4 = 0xED00006D72655464;
  }

  v5 = 0xE700000000000000;
  if (a2 != 3)
  {
    v5 = 0xED00006D72655464;
  }

  if (a2 <= 4u)
  {
    v4 = v5;
  }

  v6 = 0xE600000000000000;
  if (a2 != 1)
  {
    v6 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = v6;
  }

  if (a2 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1E17D0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1E1DE0();
}

Swift::Int sub_1C5E08(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  if (a2 != 6)
  {
    v4 = 0xE700000000000000;
  }

  v5 = 0xEA00000000007365;
  if (a2 != 4)
  {
    v5 = 0xE700000000000000;
  }

  if (a2 <= 5u)
  {
    v4 = v5;
  }

  v6 = 0xE700000000000000;
  if (a2 != 2)
  {
    v6 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0xE600000000000000;
  }

  if (a2 > 1u)
  {
    v3 = v6;
  }

  if (a2 <= 3u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1E17D0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1E1DE0();
}

Swift::Int sub_1C5F4C(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1DC0();
  v3 = 0xEC000000656C706DLL;
  v4 = 0xE700000000000000;
  if (a2 != 5)
  {
    v4 = 0x80000000002129B0;
  }

  v5 = 0xEB00000000736569;
  if (a2 != 3)
  {
    v5 = 0xEE00736569726553;
  }

  if (a2 <= 4u)
  {
    v4 = v5;
  }

  v6 = 0xEC00000073656972;
  if (a2 != 1)
  {
    v6 = 0xEB00000000736569;
  }

  if (a2)
  {
    v3 = v6;
  }

  if (a2 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1E17D0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1E1DE0();
}

Swift::Int sub_1C60A0(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0xE400000000000000;
  if (a2 != 4)
  {
    v5 = 0x8000000000212F60;
  }

  if (a2 != 3)
  {
    v4 = v5;
  }

  v6 = 0xE200000000000000;
  if (a2 != 1)
  {
    v6 = 0xE300000000000000;
  }

  if (a2)
  {
    v3 = v6;
  }

  if (a2 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1E17D0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1E1DE0();
}

Swift::Int sub_1C6188(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  if (a2 != 6)
  {
    v4 = 0x8000000000212960;
  }

  if (a2 <= 5u)
  {
    v4 = 0xED00006D72655464;
  }

  v5 = 0xE800000000000000;
  if (a2 != 2)
  {
    v5 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0xE600000000000000;
  }

  if (a2 > 1u)
  {
    v3 = v5;
  }

  if (a2 <= 3u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_1E17D0();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return sub_1E1DE0();
}

Swift::Int sub_1C62DC(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  if (a2 != 6)
  {
    v4 = 0xE500000000000000;
  }

  v5 = 0xEA0000000000676ELL;
  if (a2 != 4)
  {
    v5 = 0xE900000000000068;
  }

  if (a2 <= 5u)
  {
    v4 = v5;
  }

  v6 = 0x80000000002130D0;
  if (a2 != 2)
  {
    v6 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0xE500000000000000;
  }

  if (a2 > 1u)
  {
    v3 = v6;
  }

  if (a2 <= 3u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1E17D0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1E1DE0();
}

Swift::Int sub_1C641C(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  if (a2 != 3)
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v3 = 0xE300000000000000;
  }

  if (a2 <= 2u)
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

Swift::Int sub_1C64FC(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  if (a2 != 5)
  {
    v4 = 0xE500000000000000;
  }

  v5 = 0xE900000000000065;
  if (a2 != 3)
  {
    v5 = 0xEA0000000000736BLL;
  }

  if (a2 <= 4u)
  {
    v4 = v5;
  }

  v6 = 0xEA0000000000776FLL;
  if (a2 != 1)
  {
    v6 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = v6;
  }

  if (a2 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1E17D0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1E1DE0();
}

Swift::Int sub_1C6624(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0x8000000000212A80;
  v5 = 0xEF6D6F6F52747369;
  if (a2 != 4)
  {
    v5 = 0xEC00000065676150;
  }

  if (a2 != 3)
  {
    v4 = v5;
  }

  v6 = 0xE90000000000006DLL;
  if (a2 != 1)
  {
    v6 = 0xEA00000000006D6FLL;
  }

  if (a2)
  {
    v3 = v6;
  }

  if (a2 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1E17D0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1E1DE0();
}

Swift::Int sub_1C6748(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xEF676E696863616FLL;
  if (a2 != 5)
  {
    v4 = 0xE900000000000070;
  }

  v5 = 0xE500000000000000;
  if (a2 != 3)
  {
    v5 = 0xE800000000000000;
  }

  if (a2 <= 4u)
  {
    v4 = v5;
  }

  v6 = 0xE600000000000000;
  if (a2 != 1)
  {
    v6 = 0xEF736E6F69746164;
  }

  if (a2)
  {
    v3 = v6;
  }

  if (a2 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1E17D0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return sub_1E1DE0();
}

BookAnalytics::SearchMethod_optional __swiftcall SearchMethod.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_262200;
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

unint64_t SearchMethod.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v4 = 0x6574736567677573;
    if (v1 != 6)
    {
      v4 = 0x6574636572726F63;
    }

    v5 = 0xD00000000000001BLL;
    if (v1 == 4)
    {
      v5 = 0xD000000000000013;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    if (*v0)
    {
      v2 = 0x7542686372616573;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return 0xD000000000000011;
    }
  }
}

unint64_t sub_1C6A14()
{
  result = qword_28EDC8;
  if (!qword_28EDC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchMethod, &type metadata for SearchMethod, v0, v1);
    atomic_store(result, &qword_28EDC8);
  }

  return result;
}

void sub_1C6A90(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v7 = 0x6574736567677573;
    if (v2 != 6)
    {
      v7 = 0x6574636572726F63;
    }

    v8 = 0x8000000000213460;
    v9 = 0xD00000000000001BLL;
    if (v2 == 4)
    {
      v9 = 0xD000000000000013;
    }

    else
    {
      v8 = 0x8000000000213480;
    }

    if (*v1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (*v1 <= 5u)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0xED00006D72655464;
    }

    *a1 = v10;
    a1[1] = v11;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
    v5 = 0x8000000000213420;
    if (v2 != 2)
    {
      v5 = 0x8000000000213440;
    }

    if (*v1)
    {
      v4 = 0x7542686372616573;
      v3 = 0xEF7061546E6F7474;
    }

    if (*v1 <= 1u)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v6;
    a1[1] = v3;
  }
}

unint64_t sub_1C6C8C()
{
  result = qword_28EDD0;
  if (!qword_28EDD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchMethod, &type metadata for SearchMethod, v0, v1);
    atomic_store(result, &qword_28EDD0);
  }

  return result;
}

BookAnalytics::UpSellVariant_optional __swiftcall UpSellVariant.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2622E0;
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

uint64_t UpSellVariant.rawValue.getter()
{
  v1 = 0x6E6F43664F646E65;
  if (*v0 != 1)
  {
    v1 = 0x6F6F42664F646E65;
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

uint64_t sub_1C6DA4(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0x6E6F43664F646E65;
  v10 = 0xEC000000746E6574;
  if (v8 != 1)
  {
    v9 = 0x6F6F42664F646E65;
    v10 = 0xE90000000000006BLL;
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

  v13 = 0x6E6F43664F646E65;
  v14 = 0xEC000000746E6574;
  if (*a2 != 1)
  {
    v13 = 0x6F6F42664F646E65;
    v14 = 0xE90000000000006BLL;
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

unint64_t sub_1C6EC4()
{
  result = qword_28EDD8;
  if (!qword_28EDD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpSellVariant, &type metadata for UpSellVariant, v0, v1);
    atomic_store(result, &qword_28EDD8);
  }

  return result;
}

Swift::Int sub_1C6F18()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xEC000000746E6574;
  if (v1 != 1)
  {
    v2 = 0xE90000000000006BLL;
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

void sub_1C6FC8(uint64_t a1)
{
  v2 = 0xEC000000746E6574;
  if (*v1 != 1)
  {
    v2 = 0xE90000000000006BLL;
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

Swift::Int sub_1C7064(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xEC000000746E6574;
  if (v2 != 1)
  {
    v3 = 0xE90000000000006BLL;
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

void sub_1C711C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEC000000746E6574;
  v5 = 0x6E6F43664F646E65;
  if (v2 != 1)
  {
    v5 = 0x6F6F42664F646E65;
    v4 = 0xE90000000000006BLL;
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

unint64_t sub_1C7248()
{
  result = qword_28EDE0;
  if (!qword_28EDE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpSellVariant, &type metadata for UpSellVariant, v0, v1);
    atomic_store(result, &qword_28EDE0);
  }

  return result;
}

BookAnalytics::ViewType_optional __swiftcall ViewType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_262348;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 5;
  if (v5 < 5)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t ViewType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6B72616D6B6F6F62;
  v4 = 0x7365746F6ELL;
  if (v1 != 3)
  {
    v4 = 0x6867696C68676968;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7368564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1C739C()
{
  result = qword_28EDE8;
  if (!qword_28EDE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewType, &type metadata for ViewType, v0, v1);
    atomic_store(result, &qword_28EDE8);
  }

  return result;
}

Swift::Int sub_1C73F0()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE700000000000000;
  v3 = 0xE800000000000000;
  v4 = 0xE500000000000000;
  if (v1 != 3)
  {
    v4 = 0xEA00000000007374;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1)
  {
    v2 = 0xE300000000000000;
  }

  if (v1 <= 1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  sub_1E17D0();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1E1DE0();
}

void sub_1C74CC(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0xE500000000000000;
  if (v2 != 3)
  {
    v5 = 0xEA00000000007374;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_1E17D0();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

Swift::Int sub_1C7594(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0xE500000000000000;
  if (v2 != 3)
  {
    v5 = 0xEA00000000007374;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (v2)
  {
    v3 = 0xE300000000000000;
  }

  if (v2 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_1E17D0();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return sub_1E1DE0();
}

void sub_1C7678(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE800000000000000;
  v6 = 0x6B72616D6B6F6F62;
  v7 = 0xE500000000000000;
  v8 = 0x7365746F6ELL;
  if (v2 != 3)
  {
    v8 = 0x6867696C68676968;
    v7 = 0xEA00000000007374;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7368564;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1C77D0()
{
  result = qword_28EDF0;
  if (!qword_28EDF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewType, &type metadata for ViewType, v0, v1);
    atomic_store(result, &qword_28EDF0);
  }

  return result;
}

void sub_1C7834(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, _BYTE *a9@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    v20 = 0;
  }

  else
  {
    v12 = sub_1E1D30();
    a2, v13, v14, v15, v16, v17, v18, v19;
    v20 = v12 ^ 1;
  }

  *a9 = v20 & 1;
}

uint64_t sub_1C78BC(uint64_t a1)
{
  v2 = sub_1C7A70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1C78F8(uint64_t a1)
{
  v2 = sub_1C7A70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DebugData.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_28EDF8, &qword_20F520);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_48B8(a1, a1[3]);
  sub_1C7A70();
  sub_1E1E00();
  sub_1E1CB0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1C7A70()
{
  result = qword_28EE00;
  if (!qword_28EE00)
  {
    result = swift_getWitnessTable(asc_20F6FC, &type metadata for DebugData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EE00);
  }

  return result;
}

void DebugData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_28EE08, &qword_20F528);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_48B8(a1, a1[3]);
  sub_1C7A70();
  sub_1E1DF0();
  if (!v2)
  {
    v16 = sub_1E1BE0();
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    a2[1] = v18;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_1C7C3C()
{
  result = qword_28EE10;
  if (!qword_28EE10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DebugData, &type metadata for DebugData, v0, v1);
    atomic_store(result, &qword_28EE10);
  }

  return result;
}

unint64_t sub_1C7C94()
{
  result = qword_28EE18;
  if (!qword_28EE18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DebugData, &type metadata for DebugData, v0, v1);
    atomic_store(result, &qword_28EE18);
  }

  return result;
}

unint64_t sub_1C7D24()
{
  result = qword_28EE20;
  if (!qword_28EE20)
  {
    result = swift_getWitnessTable(byte_20F6D4, &type metadata for DebugData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EE20);
  }

  return result;
}

unint64_t sub_1C7D7C()
{
  result = qword_28EE28;
  if (!qword_28EE28)
  {
    result = swift_getWitnessTable(byte_20F644, &type metadata for DebugData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EE28);
  }

  return result;
}

unint64_t sub_1C7DD4()
{
  result = qword_28EE30;
  if (!qword_28EE30)
  {
    result = swift_getWitnessTable(byte_20F66C, &type metadata for DebugData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EE30);
  }

  return result;
}

unint64_t sub_1C7E2C()
{
  v1 = 0x496E6F6974636573;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x657A69536C6C6563;
  }

  if (*v0)
  {
    v1 = 0x4E6E6F6974636573;
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

uint64_t sub_1C7EB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1C881C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1C7EE0(uint64_t a1)
{
  v2 = sub_1C8598();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1C7F1C(uint64_t a1)
{
  v2 = sub_1C8598();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ExposureData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28EE38, &qword_20F750);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  sub_48B8(a1, a1[3]);
  sub_1C8598();
  sub_1E1E00();
  v16 = 0;
  v10 = v12[7];
  sub_1E1CB0();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_1E1CB0();
  v14 = 2;
  sub_1E1CB0();
  v13 = 3;
  sub_1E1C50();
  return (*(v4 + 8))(v6, v3);
}

void ExposureData.init(from:)(BAEventReporter **a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_28EE48, &qword_20F758);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  sub_48B8(a1, a1[3]);
  sub_1C8598();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    LOBYTE(v45[0]) = 0;
    v16 = sub_1E1BE0();
    v40 = v17;
    LOBYTE(v45[0]) = 1;
    v18 = sub_1E1BE0();
    v39 = v19;
    v37 = v18;
    LOBYTE(v45[0]) = 2;
    v36 = sub_1E1BE0();
    v38 = v20;
    v46 = 3;
    v21 = sub_1E1B80();
    v23 = v22;
    (*(v6 + 8))(v8, v5);
    v24 = v40;
    *&v41 = v16;
    *(&v41 + 1) = v40;
    v26 = v37;
    v25 = v38;
    *&v42 = v37;
    *(&v42 + 1) = v39;
    *&v43 = v36;
    *(&v43 + 1) = v38;
    *&v44 = v21;
    *(&v44 + 1) = v23;
    v27 = v42;
    *a2 = v41;
    a2[1] = v27;
    v28 = v44;
    a2[2] = v43;
    a2[3] = v28;
    sub_1C85EC(&v41, v45);
    sub_4E48(a1, v29, v30, v31, v32, v33, v34, v35);
    v45[0] = v16;
    v45[1] = v24;
    v45[2] = v26;
    v45[3] = v39;
    v45[4] = v36;
    v45[5] = v25;
    v45[6] = v21;
    v45[7] = v23;
    sub_1C8624(v45);
  }
}

uint64_t _s13BookAnalytics12ExposureDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v13 = a2[6];
  v14 = a1[6];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1E1D30()) && (v2 == v7 && v4 == v8 || (sub_1E1D30()) && (v3 == v9 && v5 == v10 || (sub_1E1D30()))
  {
    if (v6)
    {
      if (v11 && (v14 == v13 && v6 == v11 || (sub_1E1D30() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v11)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1C8598()
{
  result = qword_28EE40;
  if (!qword_28EE40)
  {
    result = swift_getWitnessTable(asc_20F950, &type metadata for ExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EE40);
  }

  return result;
}

uint64_t sub_1C865C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C86A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C8718()
{
  result = qword_28EE50;
  if (!qword_28EE50)
  {
    result = swift_getWitnessTable(aA_30, &type metadata for ExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EE50);
  }

  return result;
}

unint64_t sub_1C8770()
{
  result = qword_28EE58;
  if (!qword_28EE58)
  {
    result = swift_getWitnessTable(byte_20F898, &type metadata for ExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EE58);
  }

  return result;
}

unint64_t sub_1C87C8()
{
  result = qword_28EE60;
  if (!qword_28EE60)
  {
    result = swift_getWitnessTable(aQ_19, &type metadata for ExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EE60);
  }

  return result;
}

uint64_t sub_1C881C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x496E6F6974636573 && a2 == 0xE900000000000044;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEB00000000656D61;
    if (a1 == 0x4E6E6F6974636573 && a2 == 0xEB00000000656D61 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x80000000002139D0;
      if (a1 == 0xD000000000000011 && 0x80000000002139D0 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x657A69536C6C6563 && a2 == 0xE800000000000000)
      {
        0xE800000000000000, v13, a3, a4, a5, a6, a7, a8;
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

void sub_1C89B0(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x7079547261656C63 && a2 == 0xE900000000000065)
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

uint64_t sub_1C8A40(uint64_t a1)
{
  v2 = sub_1C8C04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1C8A7C(uint64_t a1)
{
  v2 = sub_1C8C04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ClearedData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28EE68, &qword_20F9A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_1C8C04();
  sub_1E1E00();
  v10 = v7;
  sub_1C8C58();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1C8C04()
{
  result = qword_28EE70;
  if (!qword_28EE70)
  {
    result = swift_getWitnessTable(byte_20FB78, &type metadata for ClearedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EE70);
  }

  return result;
}

unint64_t sub_1C8C58()
{
  result = qword_28EE78;
  if (!qword_28EE78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClearType, &type metadata for ClearType, v0, v1);
    atomic_store(result, &qword_28EE78);
  }

  return result;
}

void ClearedData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28EE80, &qword_20F9A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_1C8C04();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1C8E18();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_1C8E18()
{
  result = qword_28EE88;
  if (!qword_28EE88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClearType, &type metadata for ClearType, v0, v1);
    atomic_store(result, &qword_28EE88);
  }

  return result;
}

unint64_t sub_1C8EC8()
{
  result = qword_28EE90;
  if (!qword_28EE90)
  {
    result = swift_getWitnessTable(byte_20FB50, &type metadata for ClearedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EE90);
  }

  return result;
}

unint64_t sub_1C8F20()
{
  result = qword_28EE98;
  if (!qword_28EE98)
  {
    result = swift_getWitnessTable(aA_31, &type metadata for ClearedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EE98);
  }

  return result;
}

unint64_t sub_1C8F78()
{
  result = qword_28EEA0;
  if (!qword_28EEA0)
  {
    result = swift_getWitnessTable(aI_19, &type metadata for ClearedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EEA0);
  }

  return result;
}

void sub_1C8FEC(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x6C616E7265747865 && a2 == 0xEB000000006C7255)
  {
    a2, 0xEB000000006C7255, a1, a3, a4, a5, a6, a7;
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

uint64_t sub_1C9078(uint64_t a1)
{
  v2 = sub_1C922C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1C90B4(uint64_t a1)
{
  v2 = sub_1C922C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ExternalLinkData.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_28EEA8, &qword_20FBD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_48B8(a1, a1[3]);
  sub_1C922C();
  sub_1E1E00();
  sub_1E1CB0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1C922C()
{
  result = qword_28EEB0;
  if (!qword_28EEB0)
  {
    result = swift_getWitnessTable(byte_20FDB4, &type metadata for ExternalLinkData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EEB0);
  }

  return result;
}

void ExternalLinkData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_28EEB8, &qword_20FBD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_48B8(a1, a1[3]);
  sub_1C922C();
  sub_1E1DF0();
  if (!v2)
  {
    v16 = sub_1E1BE0();
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    a2[1] = v18;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_1C9438()
{
  result = qword_28EEC0;
  if (!qword_28EEC0)
  {
    result = swift_getWitnessTable(byte_20FD8C, &type metadata for ExternalLinkData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EEC0);
  }

  return result;
}

unint64_t sub_1C9490()
{
  result = qword_28EEC8;
  if (!qword_28EEC8)
  {
    result = swift_getWitnessTable(asc_20FCFC, &type metadata for ExternalLinkData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EEC8);
  }

  return result;
}

unint64_t sub_1C94E8()
{
  result = qword_28EED0;
  if (!qword_28EED0)
  {
    result = swift_getWitnessTable(asc_20FD24, &type metadata for ExternalLinkData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EED0);
  }

  return result;
}

BookAnalytics::SearchSuggestionData __swiftcall SearchSuggestionData.init(suggestionsReturnedCount:searchSuggestionSummary:)(Swift::Int32 suggestionsReturnedCount, Swift::OpaquePointer searchSuggestionSummary)
{
  *v2 = suggestionsReturnedCount;
  *(v2 + 8) = searchSuggestionSummary;
  result.searchSuggestionSummary = searchSuggestionSummary;
  result.suggestionsReturnedCount = suggestionsReturnedCount;
  return result;
}

void static SearchSuggestionData.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  if (*a1 == *a2)
  {
    sub_5C744(*(a1 + 8), *(a2 + 8), a3, a4, a5, a6, a7, a8);
  }
}

unint64_t sub_1C956C()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000018;
  }
}

void sub_1C95A4(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0x8000000000217640;
  v13 = a1 == 0xD000000000000018 && 0x8000000000217640 == a2;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v14 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000000217660 == a2)
  {
    a2, 0x8000000000217660, a3, a4, a5, a6, a7, a8;
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

uint64_t sub_1C9684(uint64_t a1)
{
  v2 = sub_1C98CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1C96C0(uint64_t a1)
{
  v2 = sub_1C98CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchSuggestionData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28EED8, &qword_20FE10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  v9[0] = *(v1 + 8);
  sub_48B8(a1, a1[3]);
  sub_1C98CC();
  sub_1E1E00();
  v11 = 0;
  sub_1E1D00();
  if (!v2)
  {
    v9[1] = v9[0];
    v10 = 1;
    sub_3D68(&qword_28EEE8, &qword_20FE18);
    sub_1C9B24(&qword_28EEF0, sub_1370E4, &protocol conformance descriptor for <A> [A]);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1C98CC()
{
  result = qword_28EEE0;
  if (!qword_28EEE0)
  {
    result = swift_getWitnessTable(byte_20FFF8, &type metadata for SearchSuggestionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EEE0);
  }

  return result;
}

void SearchSuggestionData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28EEF8, &qword_20FE20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - v7;
  sub_48B8(a1, a1[3]);
  sub_1C98CC();
  sub_1E1DF0();
  if (!v2)
  {
    v20 = 0;
    v16 = sub_1E1C30();
    sub_3D68(&qword_28EEE8, &qword_20FE18);
    v19 = 1;
    sub_1C9B24(&qword_28EF00, sub_13708C, &protocol conformance descriptor for <A> [A]);
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    v17 = v18[1];
    *a2 = v16;
    *(a2 + 8) = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1C9B24(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_5DE50(&qword_28EEE8, &qword_20FE18);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9BF8()
{
  result = qword_28EF08;
  if (!qword_28EF08)
  {
    result = swift_getWitnessTable(byte_20FFD0, &type metadata for SearchSuggestionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EF08);
  }

  return result;
}

unint64_t sub_1C9C50()
{
  result = qword_28EF10;
  if (!qword_28EF10)
  {
    result = swift_getWitnessTable(byte_20FF40, &type metadata for SearchSuggestionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EF10);
  }

  return result;
}

unint64_t sub_1C9CA8()
{
  result = qword_28EF18;
  if (!qword_28EF18)
  {
    result = swift_getWitnessTable(byte_20FF68, &type metadata for SearchSuggestionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28EF18);
  }

  return result;
}

uint64_t View.collectAppAnalyticsExposure(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v46 = a1;
  v51 = a4;
  v45 = *(a2 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v45 - v8;
  v10 = type metadata accessor for ExposureViewModifier(0);
  __chkstk_darwin(v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1440();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v45 - v18;
  v20 = sub_1E14D0();
  v49 = *(v20 - 8);
  __chkstk_darwin(v20);
  v48 = &v45 - v21;
  sub_17AA4(v46, &v56, &qword_285BB8, &unk_210050);
  if (v57)
  {
    sub_E9CB0(&v56, v58);
    sub_E9C4C(v58, &v56);
    v22 = swift_allocObject();
    sub_E9CB0(&v56, (v22 + 16));
    sub_1CB71C(sub_1CA650, v22, 0, v12);
    v46 = v20;
    v23 = v50;
    sub_1E1530();
    sub_1CA658(v12);
    v24 = sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier, byte_210124);
    v52[0] = v23;
    v52[1] = v24;
    WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v13, v52);
    v26 = *(v14 + 16);
    v26(v19, v17, v13);
    v27 = *(v14 + 8);
    v27(v17, v13);
    v26(v17, v19, v13);
    v28 = v23;
    v20 = v46;
    v29 = v48;
    sub_1CA428(v17, v13, a2, WitnessTable, v28);
    v27(v17, v13);
    v27(v19, v13);
    sub_4E48(v58, v30, v31, v32, v33, v34, v35, v36);
  }

  else
  {
    sub_18E48(&v56, &qword_285BB8, &unk_210050);
    v37 = v45;
    v38 = *(v45 + 16);
    v38(v9, v47, a2);
    v38(v7, v9, a2);
    v39 = sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier, byte_210124);
    v28 = v50;
    v55[0] = v50;
    v55[1] = v39;
    v40 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v13, v55);
    v29 = v48;
    sub_1CA520(v7, v13, a2, v40, v28);
    v41 = *(v37 + 8);
    v41(v7, a2);
    v41(v9, a2);
  }

  v42 = sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier, byte_210124);
  v54[0] = v28;
  v54[1] = v42;
  v53[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v13, v54);
  v53[1] = v28;
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v20, v53);
  v43 = v49;
  (*(v49 + 16))(v51, v29, v20);
  return (*(v43 + 8))(v29, v20);
}

uint64_t type metadata accessor for ExposureViewModifier(uint64_t a1)
{
  result = qword_28EF88;
  if (!qword_28EF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA348(uint64_t a1, uint64_t a2)
{
  sub_E9C4C(a2, v12);
  swift_beginAccess();
  v3 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_102EC0(0, v3[1].super.isa + 1, &dword_0 + 1, v3, v5, v6, v7, v8);
    *(a1 + 16) = v3;
  }

  isa = v3[1].super.isa;
  v9 = *v3[1].dataProviders;
  if (isa >= v9 >> 1)
  {
    v3 = sub_102EC0((v9 > 1), (isa + 1), &dword_0 + 1, v3, v5, v6, v7, v8);
  }

  v3[1].super.isa = (isa + 1);
  sub_E9CB0(v12, &v3[3 * isa + 2]);
  *(a1 + 16) = v3;
  return swift_endAccess();
}

uint64_t sub_1CA428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E14B0();
  __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E14C0();
}

uint64_t sub_1CA520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E14B0();
  __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E14C0();
}

uint64_t sub_1CA618(uint64_t a1, uint64_t a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  sub_4E48((v8 + 16), a2, a3, a4, a5, a6, a7, a8);

  return _swift_deallocObject(v8, 64, 7);
}

uint64_t sub_1CA658(uint64_t a1)
{
  v2 = type metadata accessor for ExposureViewModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.emitAppAnalyticsExposureEvent<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a5;
  v52 = a4;
  v53 = a6;
  v46 = *(a2 - 8);
  v47 = a3;
  v8 = __chkstk_darwin(a1);
  v45 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v44 - v10;
  v11 = type metadata accessor for ExposureViewModifier(0);
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1440();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v44 - v19;
  v21 = sub_1E14D0();
  v51 = *(v21 - 8);
  __chkstk_darwin(v21);
  v50 = &v44 - v22;
  if (a1)
  {
    v23 = swift_allocObject();
    v25 = v47;
    v24 = v48;
    v23[2] = a2;
    v23[3] = v25;
    v47 = v21;
    v26 = v52;
    v23[4] = v52;
    v23[5] = v24;
    v23[6] = a1;
    sub_1CB71C(sub_1CAE98, v23, 1, v13);
    sub_1E1530();
    sub_1CA658(v13);
    v27 = sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier, byte_210124);
    v54[0] = v26;
    v54[1] = v27;
    WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v14, v54);
    v29 = *(v15 + 16);
    v29(v20, v18, v14);
    v30 = *(v15 + 8);
    v30(v18, v14);
    v29(v18, v20, v14);
    v31 = v50;
    v32 = WitnessTable;
    v33 = v26;
    v21 = v47;
    sub_1CA428(v18, v14, a2, v32, v33);
    v30(v18, v14);
    v30(v20, v14);
  }

  else
  {
    v34 = v46;
    v35 = *(v46 + 16);
    v36 = v44;
    v35(v44, v49, a2);
    v37 = v45;
    v35(v45, v36, a2);
    v38 = sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier, byte_210124);
    v33 = v52;
    v57[0] = v52;
    v57[1] = v38;
    v39 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v14, v57);
    v31 = v50;
    sub_1CA520(v37, v14, a2, v39, v33);
    v40 = *(v34 + 8);
    v40(v37, a2);
    v40(v36, a2);
  }

  v41 = sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier, byte_210124);
  v56[0] = v33;
  v56[1] = v41;
  v55[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v14, v56);
  v55[1] = v33;
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v21, v55);
  v42 = v51;
  (*(v51 + 16))(v53, v31, v21);
  return (*(v42 + 8))(v31, v21);
}

void sub_1CAC24(uint64_t a1, objc_class **a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, objc_class *a7, objc_class *a8, uint64_t a9, objc_class *a10, uint64_t a11)
{
  v54 = a8;
  v55 = a7;
  v17 = sub_1E09E0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = &v48[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v53 = *a2;
    v21 = BATracker.copy()();
    if (v21)
    {
      v22 = v21;
      v51 = a10;
      v52 = a11;
      v50 = a9;
      (*(v18 + 16))(&v48[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)], a6, v17);
      sub_17AA4(a3, v56, &qword_283810, &unk_20EAE0);
      v23 = (*(v18 + 80) + 56) & ~*(v18 + 80);
      v24 = (v19 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
      v49 = a5;
      v26 = swift_allocObject();
      v27 = v50;
      v28 = v51;
      v26[1].super.isa = v54;
      *v26[1].dataProviders = v27;
      v29 = v52;
      v26[2].super.isa = v28;
      *v26[2].dataProviders = v29;
      v26[3].super.isa = v55;
      (*(v18 + 32))(v26 + v23, v20, v17);
      *(&v26->super.isa + v24) = v53;
      v30 = v26 + v25;
      *(v30 + 4) = v57;
      v31 = v56[1];
      *v30 = v56[0];
      *(v30 + 1) = v31;
      v32 = v26 + ((v25 + 47) & 0xFFFFFFFFFFFFFFF8);
      *v32 = a4;
      v32[8] = v49 & 1;
      v33 = swift_allocObject();
      v33[1].super.isa = sub_1CE954;
      *v33[1].dataProviders = v26;

      sub_1E10C0();
      v26, v34, v35, v36, v37, v38, v39, v40;

      v33, v41, v42, v43, v44, v45, v46, v47;
    }
  }
}

uint64_t sub_1CAF90(uint64_t a1, uint64_t a2, objc_class *a3, uint64_t a4, objc_class *a5, uint64_t a6)
{
  memset(v19, 0, sizeof(v19));
  v10 = swift_allocObject();
  v10[1].super.isa = a3;
  *v10[1].dataProviders = a4;
  v10[2].super.isa = a5;
  *v10[2].dataProviders = a6;
  sub_1E0C10();
  v10, v11, v12, v13, v14, v15, v16, v17;
  return sub_18E48(v19, &unk_281B50, &unk_1EDD70);
}

void sub_1CB060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_3D68(&unk_287EF0, &qword_1FA978);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v78 - v9;
  v11 = sub_1E0BE0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v79 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v78 - v15;
  v78 = a3;
  v17 = sub_1E0DE0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v78 - v19);
  (*(v18 + 16))(&v78 - v19, a1, v17);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == enum case for EventSubmitResult.success<A>(_:))
  {
    (*(v18 + 96))(v20, v17);
    (*(v12 + 32))(v16, v20, v11);
    v22 = v16;
    v23 = v11;
    if (qword_27D378 != -1)
    {
      swift_once();
    }

    v24 = sub_3B2C(v7, qword_286B28);
    (*(v8 + 16))(v10, v24, v7);
    sub_1E1240();
    (*(v8 + 8))(v10, v7);
    if (v81 == 1)
    {
      if (qword_27D058 != -1)
      {
        swift_once();
      }

      v25 = sub_1E1360();
      sub_3B2C(v25, qword_2802F0);
      v26 = v79;
      (*(v12 + 16))(v79, v22, v11);
      v27 = sub_1E1340();
      v28 = sub_1E1970();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v81 = v30;
        *v29 = 136315138;
        v31 = sub_1E0BD0();
        v33 = v32;
        v34 = *(v12 + 8);
        v34(v26, v23);
        v35 = sub_DD91C(v31, v33, &v81);
        v33, v36, v37, v38, v39, v40, v41, v42;
        *(v29 + 4) = v35;
        _os_log_impl(&dword_0, v27, v28, "Reported %s", v29, 0xCu);
        sub_4E48(v30, v43, v44, v45, v46, v47, v48, v49);

        v34(v22, v23);
      }

      else
      {

        v77 = *(v12 + 8);
        v77(v26, v23);
        v77(v22, v23);
      }
    }

    else
    {
      (*(v12 + 8))(v22, v11);
    }
  }

  else if (v21 == enum case for EventSubmitResult.failed<A>(_:))
  {
    (*(v18 + 96))(v20, v17);
    v50 = *v20;
    if (qword_27D058 != -1)
    {
      swift_once();
    }

    v51 = sub_1E1360();
    sub_3B2C(v51, qword_2802F0);
    swift_errorRetain();
    v52 = sub_1E1340();
    v53 = sub_1E1980();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v54 = 136315394;
      v55 = sub_1E1E30();
      v57 = v56;
      v58 = sub_DD91C(v55, v56, &v81);
      v57, v59, v60, v61, v62, v63, v64, v65;
      *(v54 + 4) = v58;
      *(v54 + 12) = 2080;
      v80 = v50;
      swift_errorRetain();
      sub_3D68(&qword_287758, &qword_210300);
      v66 = sub_1E1790();
      v68 = v67;
      v69 = sub_DD91C(v66, v67, &v81);
      v68, v70, v71, v72, v73, v74, v75, v76;
      *(v54 + 14) = v69;
      _os_log_impl(&dword_0, v52, v53, "Unable to submit %s: %s", v54, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    (*(v18 + 8))(v20, v17);
  }
}

void *sub_1CB71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v31 = a2;
  v6 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v7 = __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  LOBYTE(v33) = 0;
  sub_1E15A0();
  v12 = v35;
  *(a4 + 24) = v34;
  *(a4 + 32) = v12;
  v13 = type metadata accessor for ExposureViewModifier(0);
  v14 = sub_1E09E0();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  sub_17AA4(v11, v9, &qword_287B10, &qword_1FCF80);
  sub_1E15A0();
  sub_18E48(v11, &qword_287B10, &qword_1FCF80);
  v15 = a4 + v13[7];
  LOBYTE(v33) = 0;
  sub_1E15A0();
  v16 = v35;
  *v15 = v34;
  *(v15 + 8) = v16;
  v17 = a4 + v13[8];
  LOBYTE(v33) = 0;
  sub_1E15A0();
  v18 = v35;
  *v17 = v34;
  *(v17 + 8) = v18;
  v19 = a4 + v13[9];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = a4 + v13[10];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = a4 + v13[11];
  *v21 = swift_getKeyPath();
  *(v21 + 40) = 0;
  v22 = a4 + v13[12];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = a4 + v13[13];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = a4 + v13[14];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v34) = 0;
  sub_1E1260();
  v26 = (a4 + v13[16]);
  v33 = sub_1E1550();
  result = sub_1E15A0();
  v28 = v35;
  *v26 = v34;
  v26[1] = v28;
  v29 = v31;
  *a4 = a1;
  *(a4 + 8) = v29;
  *(a4 + 16) = v32;
  return result;
}

uint64_t View.emitAppAnalyticsExposureEvent<A>(_:attaching:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a8;
  v25 = a2;
  v26 = a3;
  type metadata accessor for ExposureViewModifier(255);
  v13 = sub_1E1440();
  v14 = sub_1E14D0();
  v15 = sub_1E1590();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v23 - v17;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = v23;
  v32 = a1;
  v19 = sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier, byte_210124);
  v35[0] = a6;
  v35[1] = v19;
  v34[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v13, v35);
  v34[1] = a6;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v14, v34);
  sub_1E1580();
  v33 = WitnessTable;
  v21 = swift_getWitnessTable(&protocol conformance descriptor for <A> Group<A>, v15, &v33);
  View.appAnalyticsData(_:for:)(v25, v26, v21, v24);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_1CBC44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v22 = a5;
  v23 = a6;
  type metadata accessor for ExposureViewModifier(255);
  v10 = sub_1E1440();
  v11 = sub_1E14D0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  View.emitAppAnalyticsExposureEvent<A>(_:)(a1, a2, a3, a4, v22, v15);
  v18 = sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier, byte_210124);
  v25[0] = a4;
  v25[1] = v18;
  v24[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v10, v25);
  v24[1] = a4;
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v11, v24);
  v19 = *(v12 + 16);
  v19(v17, v15, v11);
  v20 = *(v12 + 8);
  v20(v15, v11);
  v19(v23, v17, v11);
  return (v20)(v17, v11);
}

uint64_t sub_1CBE68(uint64_t *a1)
{
  v1 = a1[1];
  type metadata accessor for ExposureViewModifier(255);
  v2 = sub_1E1440();
  v3 = sub_1E14D0();
  v6[0] = v1;
  v6[1] = sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier, byte_210124);
  v5[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v6);
  v5[1] = v1;
  return swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v5);
}

uint64_t sub_1CBF44(uint64_t *a1)
{
  v1 = a1[2];
  type metadata accessor for ExposureViewModifier(255);
  v2 = sub_1E1440();
  v3 = sub_1E14D0();
  v6[0] = v1;
  v6[1] = sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier, byte_210124);
  v5[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v6);
  v5[1] = v1;
  return swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v5);
}

uint64_t sub_1CC024(uint64_t *a1)
{
  v1 = a1[2];
  type metadata accessor for ExposureViewModifier(255);
  v2 = sub_1E1440();
  v3 = sub_1E14D0();
  v4 = sub_1E1590();
  v5 = sub_1E1440();
  sub_5DE50(&qword_28EB68, &qword_20E958);
  v6 = sub_1E1440();
  v12[0] = v1;
  v12[1] = sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier, byte_210124);
  v11[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v12);
  v11[1] = v1;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v11);
  v9[0] = swift_getWitnessTable(&protocol conformance descriptor for <A> Group<A>, v4, &WitnessTable);
  v9[1] = sub_1C2718();
  v8[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v9);
  v8[1] = sub_EC07C(&qword_28EB70, &qword_28EB68, &qword_20E958, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
  return swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v8);
}

uint64_t sub_1CC20C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_28EF28, &unk_210060);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_3D68(&unk_287EF0, &qword_1FA978);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[15];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[16]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1CC340(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_28EF28, &unk_210060);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_3D68(&unk_287EF0, &qword_1FA978);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[16]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[15];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_1CC45C(uint64_t a1)
{
  sub_1CC7E4(319, &qword_28EF98, &type metadata for Bool, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_1CC728(319, &qword_28EFA0, &qword_287B10, &qword_1FCF80, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_1CC728(319, &qword_28EFA8, &qword_286C30, &qword_210090, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1CC7E4(319, &qword_28EFB0, &type metadata for DataStack, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_1CC728(319, &qword_28EFB8, &qword_283810, &unk_20EAE0, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_1CC728(319, &qword_28EFC0, &qword_28C0B8, &qword_20E4D0, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_1CC728(319, &qword_28EFC8, &qword_28EFD0, &qword_210098, &type metadata accessor for Environment);
              if (v7 <= 0x3F)
              {
                sub_1CC78C(319);
                if (v8 <= 0x3F)
                {
                  sub_1CC7E4(319, &qword_28EFE0, &type metadata for Bool, &type metadata accessor for UserDefault);
                  if (v9 <= 0x3F)
                  {
                    sub_1CC7E4(319, &unk_28EFE8, &type metadata for Color, &type metadata accessor for State);
                    if (v10 <= 0x3F)
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

void sub_1CC728(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_5DE50(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1CC78C(uint64_t a1)
{
  if (!qword_28EFD8)
  {
    type metadata accessor for HostingControllerVisibilityStateManager();
    v1 = sub_1E13B0();
    if (!v2)
    {
      atomic_store(v1, &qword_28EFD8);
    }
  }
}

void sub_1CC7E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1CC840(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1CC888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1CC904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v86 = a1;
  v5 = sub_1E1480();
  v84 = *(v5 - 8);
  v85 = v5;
  __chkstk_darwin(v5);
  v83 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ExposureViewModifier(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E15D0();
  v13 = v12;
  v14 = a2 + *(sub_3D68(&qword_28F048, &qword_210178) + 36);
  sub_1CE12C(v3, v10);
  v15 = *(v8 + 80);
  v16 = (v15 + 16) & ~v15;
  v87 = v9;
  v88 = v15;
  v17 = swift_allocObject();
  sub_1CE1B8(v10, v17 + v16);
  sub_1E1520();
  v17, v18, v19, v20, v21, v22, v23, v24;
  v25 = (v14 + *(sub_3D68(&qword_28F050, &qword_210180) + 36));
  *v25 = v11;
  v25[1] = v13;
  v26 = sub_3D68(&qword_28F058, &unk_210188);
  v27 = *(*(v26 - 8) + 16);
  v89 = a2;
  v27(a2, v86, v26);
  v28 = v3 + *(v7 + 56);
  v29 = *v28;
  LOBYTE(v17) = *(v28 + 8);

  if ((v17 & 1) == 0)
  {
    sub_1E1990();
    v30 = sub_1E14E0();
    sub_1E1320();

    v31 = v83;
    sub_1E1470();
    swift_getAtKeyPath();
    v29, v32, v33, v34, v35, v36, v37, v38;
    (*(v84 + 8))(v31, v85);
    v29 = v91;
  }

  v91 = *v29[2].dataProviders;
  v39 = v91;

  sub_3D68(&qword_285BE8, &qword_1F80A0);
  sub_EC07C(&qword_285BF0, &qword_285BE8, &qword_1F80A0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v40 = sub_1E1390();
  v39, v41, v42, v43, v44, v45, v46, v47;
  v29, v48, v49, v50, v51, v52, v53, v54;
  sub_1CE12C(v3, v10);
  v55 = swift_allocObject();
  sub_1CE1B8(v10, v55 + v16);
  v56 = sub_3D68(&qword_28F060, &qword_210198);
  v57 = v89;
  *(v89 + *(v56 + 52)) = v40;
  v58 = (v57 + *(v56 + 56));
  *v58 = sub_1CE4F8;
  v58[1] = v55;
  v59 = sub_1E15D0();
  v61 = v60;
  sub_3D68(&unk_287EF0, &qword_1FA978);
  sub_1E1240();
  if (v91 == 1)
  {
    v62 = (v3 + *(v7 + 64));
    v64 = *v62;
    v63 = v62[1];
    v91 = v64;
    v92 = v63;
    sub_3D68(&qword_28F080, &qword_2101B8);
    sub_1E15B0();
    v65 = v90;
    v66 = sub_1E1570();
    v65, v67, v68, v69, v70, v71, v72, v73;
    KeyPath = swift_getKeyPath();
  }

  else
  {
    KeyPath = 0;
    v66 = 0;
  }

  v75 = sub_3D68(&qword_28F068, &qword_2101A0);
  v76 = v89;
  v77 = v89 + *(v75 + 36);
  *v77 = KeyPath;
  *(v77 + 8) = v66;
  *(v77 + 16) = 0;
  *(v77 + 24) = v59;
  *(v77 + 32) = v61;
  sub_1CE12C(v3, v10);
  v78 = swift_allocObject();
  sub_1CE1B8(v10, v78 + v16);
  v79 = (v76 + *(sub_3D68(&qword_28F070, &qword_2101A8) + 36));
  *v79 = sub_1CE568;
  v79[1] = v78;
  v79[2] = 0;
  v79[3] = 0;
  sub_1CE12C(v3, v10);
  v80 = swift_allocObject();
  sub_1CE1B8(v10, v80 + v16);
  result = sub_3D68(&qword_28F078, &qword_2101B0);
  v82 = (v76 + *(result + 36));
  *v82 = 0;
  v82[1] = 0;
  v82[2] = sub_1CE580;
  v82[3] = v80;
  return result;
}

void sub_1CCE80(char a1, uint64_t a2)
{
  v4 = sub_1E1480();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ExposureViewModifier(0);
  v9 = (a2 + *(v8 + 28));
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v47) = v10;
  v48 = v11;
  v49 = a1;
  sub_3D68(&qword_28F088, &unk_2101F0);
  sub_1E15C0();
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  v12 = *(a2 + 32);
  LOBYTE(v47) = *(a2 + 24);
  v48 = v12;
  v49 = 1;
  sub_1E15C0();
  v13 = (a2 + *(v8 + 56));
  v14 = *v13;
  v15 = *(v13 + 8);

  if ((v15 & 1) == 0)
  {
    sub_1E1990();
    v16 = sub_1E14E0();
    sub_1E1320();

    sub_1E1470();
    swift_getAtKeyPath();
    v14, v17, v18, v19, v20, v21, v22, v23;
    (*(v5 + 8))(v7, v4);
    v14 = v47;
  }

  swift_beginAccess();
  v24 = *(v14 + 16);
  v14, v25, v26, v27, v28, v29, v30, v31;
  if ((v24 & 1) == 0)
  {
    0xE700000000000000, v32, v33, v34, v35, v36, v37, v38;
    goto LABEL_8;
  }

  v39 = sub_1E1D30();
  0xE600000000000000, v40, v41, v42, v43, v44, v45, v46;
  if (v39)
  {
LABEL_8:
    sub_1CD0C4(a1 & 1);
  }
}

void *sub_1CD0C4(char a1)
{
  v123 = sub_1E1480();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E09E0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v135 = (&v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v134 = &v120 - v7;
  v8 = sub_1E15E0();
  v132 = *(v8 - 8);
  v133 = v8;
  __chkstk_darwin(v8);
  v130 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1E1610();
  v129 = *(v131 - 8);
  __chkstk_darwin(v131);
  v128 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ExposureViewModifier(0);
  v124 = *(v11 - 1);
  v12 = *(v124 + 64);
  __chkstk_darwin(v11);
  v13 = sub_1E1630();
  v126 = *(v13 - 8);
  v127 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v125 = &v120 - v17;
  v18 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v120 - v23;
  __chkstk_darwin(v22);
  v26 = &v120 - v25;
  if (a1)
  {
    sub_1E09C0();
    (*(v4 + 56))(v26, 0, 1, v3);
    sub_17AA4(v26, v24, &qword_287B10, &qword_1FCF80);
    sub_3D68(&qword_28EF28, &unk_210060);
    v27 = v136;
    sub_1E15C0();
    sub_18E48(v26, &qword_287B10, &qword_1FCF80);
    sub_3D68(&unk_287EF0, &qword_1FA978);
    result = sub_1E1240();
    if (LOBYTE(aBlock[0]) == 1)
    {
      sub_4C270();
      v134 = sub_1E19E0();
      sub_1E1620();
      v29 = v125;
      sub_1E1650();
      v135 = *(v126 + 8);
      v30 = v16;
      v31 = v127;
      v135(v30, v127);
      sub_1CE12C(v27, &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      v32 = (*(v124 + 80) + 16) & ~*(v124 + 80);
      v33 = swift_allocObject();
      sub_1CE1B8(&v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32);
      aBlock[4] = sub_1CE77C;
      v138 = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_11AD8C;
      aBlock[3] = &unk_275FB0;
      v34 = _Block_copy(aBlock);
      v138, v35, v36, v37, v38, v39, v40, v41;
      v42 = v128;
      sub_1E1600();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1CE820(&qword_287740, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_3D68(&unk_287C10, &qword_1FC390);
      sub_EC07C(&qword_287748, &unk_287C10, &qword_1FC390, &protocol conformance descriptor for [A]);
      v43 = v130;
      v44 = v133;
      sub_1E1A70();
      v45 = v134;
      sub_1E19C0();
      _Block_release(v34);

      (*(v132 + 8))(v43, v44);
      (*(v129 + 8))(v42, v131);
      return (v135)(v29, v31);
    }
  }

  else
  {
    sub_3D68(&qword_28EF28, &unk_210060);
    v46 = v136;
    sub_1E15B0();
    if ((*(v4 + 48))(v21, 1, v3) == 1)
    {
      return sub_18E48(v21, &qword_287B10, &qword_1FCF80);
    }

    else
    {
      v47 = v3;
      v48 = v4;
      v49 = v134;
      (*(v4 + 32))(v134, v21, v47);
      v50 = v135;
      sub_1E09C0();
      sub_1E0960();
      if (v51 > 1.0)
      {
        v52 = *v46;
        v53 = *(v46 + 8);
        if (*(v46 + 16))
        {
          v133 = v48;
          v54 = v46 + v11[9];
          v55 = *v54;
          if (*(v54 + 8))
          {
            sub_1CE764(v52, v53);
            sub_1CE76C(v55, 1);
          }

          else
          {
            sub_1CE764(v52, v53);
            sub_1CE76C(v55, 0);
            sub_1E1990();
            v63 = sub_1E14E0();
            sub_1E1320();

            v64 = v121;
            sub_1E1470();
            swift_getAtKeyPath();
            sub_1CE19C(v55, 0, v65, v66, v67, v68, v69, v70);
            (*(v122 + 8))(v64, v123);
            v55 = aBlock[0];
          }

          v71 = v46 + v11[10];
          v72 = *v71;
          if (*(v71 + 8) == 1)
          {
            v142 = *v71;
          }

          else
          {

            sub_1E1990();
            v88 = sub_1E14E0();
            sub_1E1320();

            v89 = v121;
            sub_1E1470();
            swift_getAtKeyPath();
            sub_A2E8(v72, 0, v90, v91, v92, v93, v94, v95);
            (*(v122 + 8))(v89, v123);
            v72 = v142;
          }

          v141 = v72;
          sub_1CE598(aBlock);
          v96 = v46 + v11[12];
          v97 = *v96;
          v98 = *(v96 + 8);
          if (*(v96 + 9) != 1)
          {

            sub_1E1990();
            v99 = v47;
            v100 = sub_1E14E0();
            sub_1E1320();

            v47 = v99;
            v49 = v134;
            v101 = v121;
            sub_1E1470();
            swift_getAtKeyPath();
            sub_1CE1A8(v97, v98, 0, v102, v103, v104, v105, v106);
            (*(v122 + 8))(v101, v123);
            v97 = v139;
            LOBYTE(v98) = v140;
          }

          v50 = v135;
          (v52)(v55, &v141, aBlock, v97, v98 & 1, v49);
          sub_1CE194(v52, v53, &dword_0 + 1, v107, v108, v109, v110, v111);

          sub_18E48(aBlock, &qword_283810, &unk_20EAE0);
          v141, v112, v113, v114, v115, v116, v117, v118;
          v48 = v133;
        }

        else
        {
          v56 = v46 + v11[13];
          v57 = *v56;
          if (*(v56 + 8))
          {
            sub_1CE764(*v46, *(v46 + 8));
            j__swift_retain(v57);
          }

          else
          {
            sub_1CE764(*v46, *(v46 + 8));
            j__swift_retain(v57);
            sub_1E1990();
            v73 = sub_1E14E0();
            sub_1E1320();

            v50 = v135;
            v74 = v121;
            sub_1E1470();
            swift_getAtKeyPath();
            j__swift_release(v57, 0, v75, v76, v77, v78, v79, v80);
            (*(v122 + 8))(v74, v123);
            v57 = aBlock[0];
          }

          if (v57)
          {
            v52(v57);
            v57, v81, v82, v83, v84, v85, v86, v87;
          }

          sub_1CE194(v52, v53, 0, v58, v59, v60, v61, v62);
        }
      }

      sub_1CDF6C(v46);
      v119 = *(v48 + 8);
      v119(v50, v47);
      return (v119)(v49, v47);
    }
  }

  return result;
}

void *sub_1CDCD0(_BYTE *a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  if (*a1)
  {
    v8 = sub_1E1D30();
    0xE600000000000000, v9, v10, v11, v12, v13, v14, v15;
    if ((v8 & 1) == 0)
    {
      v17 = 0;
      return sub_1CD0C4(v17);
    }
  }

  else
  {
    0xE700000000000000, a2, a3, a4, a5, a6, a7, a8;
  }

  sub_3D68(&qword_28F088, &unk_2101F0);
  result = sub_1E15B0();
  if (v18 != 1)
  {
    return result;
  }

  type metadata accessor for ExposureViewModifier(0);
  sub_1E15B0();
  sub_1E15B0();
  v17 = v18;
  return sub_1CD0C4(v17);
}

uint64_t sub_1CDE0C(uint64_t a1)
{
  type metadata accessor for ExposureViewModifier(0);
  sub_3D68(&qword_28F088, &unk_2101F0);
  return sub_1E15C0();
}

void *sub_1CDE80(uint64_t a1)
{
  type metadata accessor for ExposureViewModifier(0);
  sub_3D68(&qword_28F088, &unk_2101F0);
  sub_1E15C0();
  return sub_1CD0C4(0);
}

uint64_t sub_1CDEFC(uint64_t a1)
{
  sub_1E1560();
  type metadata accessor for ExposureViewModifier(0);
  sub_3D68(&qword_28F080, &qword_2101B8);
  return sub_1E15C0();
}

void *sub_1CDF6C(uint64_t a1)
{
  v2 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v15 - v6;
  v8 = sub_1E09E0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = type metadata accessor for ExposureViewModifier(0);
  sub_17AA4(v7, v5, &qword_287B10, &qword_1FCF80);
  sub_3D68(&qword_28EF28, &unk_210060);
  sub_1E15C0();
  sub_18E48(v7, &qword_287B10, &qword_1FCF80);
  sub_3D68(&unk_287EF0, &qword_1FA978);
  result = sub_1E1240();
  if (v16 == 1)
  {
    v11 = sub_1E1550();
    v12 = (a1 + *(v9 + 64));
    v14 = *v12;
    v13 = v12[1];
    v16 = v14;
    v17 = v13;
    v15[1] = v11;
    sub_3D68(&qword_28F080, &qword_2101B8);
    return sub_1E15C0();
  }

  return result;
}

uint64_t sub_1CE12C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExposureViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CE19C(id a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  if (a2)
  {
  }

  else
  {
    a1, a2, a3, a4, a5, a6, a7, a8;
  }
}

void sub_1CE1A8(BAEventReporter *self, SEL x1_0, id x2_0, id x3_0, int64_t x4_0, id x5_0, uint64_t w6_0, id x7_0)
{
  if ((x2_0 & 1) == 0)
  {
    self, x1_0, x2_0, x3_0, x4_0, x5_0, w6_0, x7_0;
  }
}

uint64_t sub_1CE1B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExposureViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CE21C(char a1)
{
  v3 = *(type metadata accessor for ExposureViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1CCE80(a1, v4);
}

uint64_t sub_1CE28C()
{
  v1 = type metadata accessor for ExposureViewModifier(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1CE194(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), v6, v7, v8, v9, v10);
  *(v0 + v4 + 32), v11, v12, v13, v14, v15, v16, v17;
  v18 = v0 + v4 + v1[6];
  v19 = sub_1E09E0();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v18, 1, v19))
  {
    (*(v20 + 8))(v18, v19);
  }

  v21 = sub_3D68(&qword_28EF28, &unk_210060);
  *(v18 + *(v21 + 28)), v22, v23, v24, v25, v26, v27, v28;
  *(v5 + v1[7] + 8), v29, v30, v31, v32, v33, v34, v35;
  *(v5 + v1[8] + 8), v36, v37, v38, v39, v40, v41, v42;
  sub_1CE19C(*(v5 + v1[9]), *(v5 + v1[9] + 8), v43, v44, v45, v46, v47, v48);
  sub_A2E8(*(v5 + v1[10]), *(v5 + v1[10] + 8), v49, v50, v51, v52, v53, v54);
  v62 = v5 + v1[11];
  if (*(v62 + 40))
  {
    if (*(v62 + 24))
    {
      sub_4E48(v62, v55, v56, v57, v58, v59, v60, v61);
    }
  }

  else
  {
    *v62, v55, v56, v57, v58, v59, v60, v61;
  }

  sub_1CE1A8(*(v5 + v1[12]), *(v5 + v1[12] + 8), *(v5 + v1[12] + 9), v57, v58, v59, v60, v61);
  j__swift_release(*(v5 + v1[13]), *(v5 + v1[13] + 8), v63, v64, v65, v66, v67, v68);
  *(v5 + v1[14]), v69, v70, v71, v72, v73, v74, v75;
  v76 = v1[15];
  v77 = sub_3D68(&unk_287EF0, &qword_1FA978);
  (*(*(v77 - 8) + 8))(v5 + v76, v77);
  v78 = (v5 + v1[16]);
  *v78, v79, v80, v81, v82, v83, v84, v85;
  v78[1], v86, v87, v88, v89, v90, v91, v92;

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

void *sub_1CE4F8(_BYTE *a1)
{
  v9 = *(type metadata accessor for ExposureViewModifier(0) - 8);
  v10 = (v1 + ((*(v9 + 80) + 16) & ~*(v9 + 80)));

  return sub_1CDCD0(a1, v10, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1CE598@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E1480();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_17AA4(v2, v19, &qword_28F090, &qword_210200);
  if (v21 == 1)
  {
    v9 = v19[1];
    *a1 = v19[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v20;
  }

  else
  {
    v10 = *&v19[0];
    sub_1E1990();
    v11 = sub_1E14E0();
    sub_1E1320();

    sub_1E1470();
    swift_getAtKeyPath();
    v10, v12, v13, v14, v15, v16, v17, v18;
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1CE70C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E1450();
  *a1 = result;
  return result;
}

id sub_1CE76C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1CE794(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ExposureViewModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1CE808(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CE820(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1CE898()
{
  v1 = sub_1E09E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  *(v0 + v5), v7, v8, v9, v10, v11, v12, v13;
  if (*(v0 + v6 + 24))
  {
    sub_4E48((v0 + v6), v14, v15, v16, v17, v18, v19, v20);
  }

  return _swift_deallocObject(v0, ((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

__n128 sub_1CE954(uint64_t a1)
{
  v3 = *(v1 + 16);
  v9 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(sub_1E09E0() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CAED0(a1, *(v1 + 48), v1 + v6, *(v1 + v7), v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 8), v3, v9, *(&v9 + 1), v4);
  return result;
}

uint64_t sub_1CEA38(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_1CEB10(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_5DE50(a2, a3);
    v8[0] = a4();
    v8[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CEB94()
{
  result = qword_28F0A8;
  if (!qword_28F0A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_5DE50(&qword_28F068, &qword_2101A0);
    v4[0] = sub_EC07C(&qword_28F0B0, &qword_28F060, &qword_210198, &protocol conformance descriptor for SubscriptionView<A, B>);
    v4[1] = sub_EC07C(&qword_28F0B8, &qword_28F0C0, &qword_210308, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_28F0A8);
  }

  return result;
}

uint64_t SeriesDetailsViewEvent.exposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27F4F8, &unk_210310);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SeriesDetailsViewEvent.exposureData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27F4F8, &unk_210310);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SeriesDetailsViewEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesDetailsViewEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesDetailsViewEvent.altSeriesContentTypeExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 24);
  v4 = sub_3D68(&qword_28F0F8, &unk_210320);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesDetailsViewEvent.altSeriesContentTypeExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 24);
  v4 = sub_3D68(&qword_28F0F8, &unk_210320);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesDetailsViewEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 28);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesDetailsViewEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 28);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesDetailsViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesDetailsViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesDetailsViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesDetailsViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesDetailsViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SeriesDetailsViewEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.required<A>(_:);
  v7 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_28F0F8, &unk_210320);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v13 - 8) + 104))(a1 + v12, v6, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v6, v15);
}

uint64_t SeriesDetailsViewEvent.Model.exposureData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_17AA4(v7, &v6, &qword_27F500, &unk_210330);
}

uint64_t SeriesDetailsViewEvent.Model.seriesData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v6[0] = v1[4];
  v6[1] = v2;
  v7 = v1[6];
  v3 = v7;
  *a1 = v6[0];
  a1[1] = v2;
  a1[2] = v3;
  return sub_CF18(v6, &v5);
}

void SeriesDetailsViewEvent.Model.altSeriesContentTypeExposureData.getter(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[19];
  v8 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_1CF7E0(v2, v3, v4, v5, v6, v7, v8);
}

void sub_1CF7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 != 1)
  {
  }
}

uint64_t SeriesDetailsViewEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v13[2] = *(v1 + 200);
  v13[3] = v2;
  v3 = *(v1 + 248);
  v13[4] = *(v1 + 232);
  v13[5] = v3;
  v4 = *(v1 + 184);
  v13[0] = *(v1 + 168);
  v13[1] = v4;
  v5 = *(v1 + 280);
  v13[6] = *(v1 + 264);
  v13[7] = v5;
  v7 = *(v1 + 264);
  v6 = *(v1 + 280);
  v13[8] = *(v1 + 296);
  v14 = *(v1 + 312);
  *(a1 + 96) = v7;
  *(a1 + 112) = v6;
  *(a1 + 128) = *(v1 + 296);
  *(a1 + 144) = *(v1 + 312);
  v8 = *(v1 + 216);
  *(a1 + 32) = *(v1 + 200);
  *(a1 + 48) = v8;
  v9 = *(v1 + 248);
  *(a1 + 64) = *(v1 + 232);
  *(a1 + 80) = v9;
  v10 = *(v1 + 184);
  *a1 = *(v1 + 168);
  *(a1 + 16) = v10;
  return sub_17AA4(v13, v12, &qword_27E4A0, &qword_1E8860);
}

uint64_t SeriesDetailsViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesDetailsViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent.Model(0) + 36);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesDetailsViewEvent.Model.init(exposureData:seriesData:altSeriesContentTypeExposureData:linkData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *(a3 + 6);
  v11 = a1[1];
  *a7 = *a1;
  *(a7 + 16) = v11;
  v12 = a1[3];
  *(a7 + 32) = a1[2];
  *(a7 + 48) = v12;
  v13 = a2[1];
  *(a7 + 64) = *a2;
  *(a7 + 80) = v13;
  v14 = *a3;
  v15 = a3[1];
  *(a7 + 96) = a2[2];
  *(a7 + 112) = v14;
  v16 = a3[2];
  *(a7 + 128) = v15;
  *(a7 + 144) = v16;
  *(a7 + 160) = v10;
  v17 = *a4;
  *(a7 + 184) = a4[1];
  *(a7 + 168) = v17;
  v18 = a4[4];
  *(a7 + 248) = a4[5];
  *(a7 + 232) = v18;
  v19 = a4[2];
  *(a7 + 216) = a4[3];
  *(a7 + 200) = v19;
  *(a7 + 312) = *(a4 + 18);
  v20 = a4[8];
  *(a7 + 280) = a4[7];
  *(a7 + 296) = v20;
  *(a7 + 264) = a4[6];
  v21 = type metadata accessor for SeriesDetailsViewEvent.Model(0);
  v22 = *(v21 + 32);
  v23 = sub_1E1150();
  (*(*(v23 - 8) + 32))(a7 + v22, a5, v23);
  v24 = *(v21 + 36);
  v25 = sub_1E11A0();
  v26 = *(*(v25 - 8) + 32);

  return v26(a7 + v24, a6, v25);
}

uint64_t sub_1CFB50()
{
  v1 = *v0;
  v2 = 0x657275736F707865;
  v3 = 0x617461446B6E696CLL;
  v4 = 0x746144746E657665;
  if (v1 != 4)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6144736569726573;
  if (v1 != 1)
  {
    v5 = 0xD000000000000020;
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

uint64_t sub_1CFC24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1D19B0(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CFC4C(uint64_t a1)
{
  v2 = sub_1D0278();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1CFC88(uint64_t a1)
{
  v2 = sub_1D0278();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SeriesDetailsViewEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28F100, &qword_210340);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  sub_48B8(a1, a1[3]);
  sub_1D0278();
  sub_1E1E00();
  v8 = v2[1];
  v79[0] = *v2;
  v79[1] = v8;
  v9 = v2[3];
  v11 = *v2;
  v10 = v2[1];
  v79[2] = v2[2];
  v79[3] = v9;
  v75 = v11;
  v76 = v10;
  v12 = v2[3];
  v77 = v2[2];
  v78 = v12;
  v74 = 0;
  sub_17AA4(v79, &v49, &qword_27F500, &unk_210330);
  sub_38C28();
  v13 = v80;
  sub_1E1C80();
  if (v13)
  {
    v49 = v75;
    v50 = v76;
    v51 = v77;
    v52 = v78;
    sub_18E48(&v49, &qword_27F500, &unk_210330);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v72[0] = v75;
    v72[1] = v76;
    v72[2] = v77;
    v72[3] = v78;
    sub_18E48(v72, &qword_27F500, &unk_210330);
    v15 = v2[5];
    v73[0] = v2[4];
    v73[1] = v15;
    v17 = v2[4];
    v16 = v2[5];
    v73[2] = v2[6];
    v69 = v17;
    v70 = v16;
    v71 = v2[6];
    v68 = 1;
    sub_CF18(v73, &v49);
    sub_D57C();
    sub_1E1CF0();
    v67[0] = v69;
    v67[1] = v70;
    v67[2] = v71;
    sub_D5D0(v67);
    v18 = *(v2 + 15);
    v19 = *(v2 + 16);
    v20 = *(v2 + 17);
    v21 = *(v2 + 18);
    v22 = *(v2 + 19);
    v23 = *(v2 + 20);
    v60 = *(v2 + 14);
    v61 = v18;
    v62 = v19;
    v63 = v20;
    v64 = v21;
    v65 = v22;
    v66 = v23;
    v59 = 2;
    sub_1CF7E0(v60, v18, v19, v20, v21, v22, v23);
    sub_BC82C();
    sub_1E1C80();
    sub_1D02CC(v60, v61, v62, v63, v64, v65, v66, v24);
    v25 = *(v2 + 280);
    v55 = *(v2 + 264);
    v56 = v25;
    v27 = *(v2 + 264);
    v26 = *(v2 + 280);
    v57 = *(v2 + 296);
    v28 = *(v2 + 216);
    v51 = *(v2 + 200);
    v52 = v28;
    v29 = *(v2 + 248);
    v53 = *(v2 + 232);
    v54 = v29;
    v30 = *(v2 + 184);
    v49 = *(v2 + 168);
    v50 = v30;
    v58 = *(v2 + 39);
    v45 = v27;
    v46 = v26;
    v47 = *(v2 + 296);
    v48 = *(v2 + 39);
    v31 = *(v2 + 216);
    v41 = *(v2 + 200);
    v42 = v31;
    v32 = *(v2 + 248);
    v43 = *(v2 + 232);
    v44 = v32;
    v33 = *(v2 + 184);
    v39 = *(v2 + 168);
    v40 = v33;
    v38 = 3;
    sub_17AA4(&v49, v36, &qword_27E4A0, &qword_1E8860);
    sub_18630();
    sub_1E1C80();
    v36[6] = v45;
    v36[7] = v46;
    v36[8] = v47;
    v37 = v48;
    v36[2] = v41;
    v36[3] = v42;
    v36[4] = v43;
    v36[5] = v44;
    v36[0] = v39;
    v36[1] = v40;
    sub_18E48(v36, &qword_27E4A0, &qword_1E8860);
    type metadata accessor for SeriesDetailsViewEvent.Model(0);
    v35 = 4;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v35 = 5;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
    return (*(v5 + 8))(v7, 0);
  }
}

unint64_t sub_1D0278()
{
  result = qword_28F108;
  if (!qword_28F108)
  {
    result = swift_getWitnessTable(aI_20, &type metadata for SeriesDetailsViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F108);
  }

  return result;
}

void sub_1D02CC(uint64_t a1, const char *a2, BAEventReporter *a3, void *a4, BAEventReporter *a5, int64_t a6, BAEventReporter *a7, void *a8)
{
  if (a3 != (&dword_0 + 1))
  {
    a3, a2, a3, a4, a5, a6, a7, a8;
    a5, v11, v12, v13, v14, v15, v16, v17;

    a7, v18, v19, v20, v21, v22, v23, v24;
  }
}

void SeriesDetailsViewEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v52 = sub_1E11A0();
  v49 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1150();
  v54 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_3D68(&qword_28F110, &qword_210348);
  v53 = *(v56 - 8);
  __chkstk_darwin(v56);
  v8 = v47 - v7;
  v9 = type metadata accessor for SeriesDetailsViewEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v79 = a1;
  sub_48B8(a1, v12);
  sub_1D0278();
  v55 = v8;
  v13 = v57;
  sub_1E1DF0();
  if (v13)
  {
    sub_4E48(v79, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v48 = v6;
    v22 = v53;
    v21 = v54;
    v57 = v11;
    v64 = 0;
    sub_393C4();
    sub_1E1BB0();
    v23 = v66;
    v24 = v57;
    *v57 = v65;
    *(v24 + 16) = v23;
    v25 = v68;
    *(v24 + 32) = v67;
    *(v24 + 48) = v25;
    v60 = 1;
    sub_DAD8();
    sub_1E1C20();
    v26 = v62;
    *(v24 + 64) = v61;
    *(v24 + 80) = v26;
    *(v24 + 96) = v63;
    v59 = 2;
    sub_BC7D4();
    sub_1E1BB0();
    v47[1] = v4;
    v27 = v72;
    v28 = v70;
    v29 = v71;
    *(v24 + 112) = v69;
    *(v24 + 128) = v28;
    *(v24 + 144) = v29;
    *(v24 + 160) = v27;
    v59 = 3;
    sub_18FA4();
    v47[0] = 0;
    sub_1E1BB0();
    v30 = v9;
    v31 = v70;
    *(v24 + 200) = v71;
    v32 = v73;
    *(v24 + 216) = v72;
    *(v24 + 232) = v32;
    v33 = v75;
    *(v24 + 248) = v74;
    *(v24 + 168) = v69;
    *(v24 + 184) = v31;
    v34 = v76;
    v35 = v77;
    *(v24 + 264) = v33;
    *(v24 + 280) = v34;
    *(v24 + 312) = v78;
    *(v24 + 296) = v35;
    v58 = 4;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v36 = v48;
    sub_1E1C20();
    (*(v21 + 32))(v24 + *(v30 + 32), v36, v4);
    v58 = 5;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v37 = v30;
    v39 = v51;
    v38 = v52;
    sub_1E1C20();
    (*(v22 + 8))(v55, v56);
    (*(v49 + 32))(v24 + *(v37 + 36), v39, v38);
    sub_1D0A68(v24, v50);
    sub_4E48(v79, v40, v41, v42, v43, v44, v45, v46);
    sub_1D0ACC(v24);
  }
}

uint64_t sub_1D0A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeriesDetailsViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0ACC(uint64_t a1)
{
  v2 = type metadata accessor for SeriesDetailsViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D0BC8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_28F0F8, &unk_210320);
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v14 - 8) + 104))(a2 + v13, v7, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v7, v16);
}

uint64_t sub_1D0DF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27F4F8, &unk_210310);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27DD80, &qword_1E4D30);
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

  v14 = sub_3D68(&qword_28F0F8, &unk_210320);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_1D106C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27F4F8, &unk_210310);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27DD80, &qword_1E4D30);
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

  v16 = sub_3D68(&qword_28F0F8, &unk_210320);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v20 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[9];

  return v21(v22, a2, a2, v20);
}

void sub_1D12D8(uint64_t a1)
{
  sub_1D149C(319, &unk_27F598, sub_393C4, sub_38C28, &type metadata for ExposureData);
  if (v1 <= 0x3F)
  {
    sub_1D149C(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
    if (v2 <= 0x3F)
    {
      sub_1D149C(319, &unk_28F180, sub_BC7D4, sub_BC82C, &type metadata for AltSeriesContentTypeExposureData);
      if (v3 <= 0x3F)
      {
        sub_1D149C(319, &unk_27E588, sub_18FA4, sub_18630, &type metadata for LinkData);
        if (v4 <= 0x3F)
        {
          sub_5684(319);
          if (v5 <= 0x3F)
          {
            sub_5750(319);
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

void sub_1D149C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_1D152C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1E1150();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1E11A0();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D1670(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1D1794(uint64_t a1)
{
  sub_19FE0(319, &unk_27F640, &type metadata for ExposureData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &unk_28F228, &type metadata for AltSeriesContentTypeExposureData);
    if (v2 <= 0x3F)
    {
      sub_19FE0(319, &unk_27E650, &type metadata for LinkData);
      if (v3 <= 0x3F)
      {
        sub_1E1150();
        if (v4 <= 0x3F)
        {
          sub_1E11A0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1D18AC()
{
  result = qword_28F268;
  if (!qword_28F268)
  {
    result = swift_getWitnessTable(aA_32, &type metadata for SeriesDetailsViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F268);
  }

  return result;
}

unint64_t sub_1D1904()
{
  result = qword_28F270;
  if (!qword_28F270)
  {
    result = swift_getWitnessTable(byte_210478, &type metadata for SeriesDetailsViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F270);
  }

  return result;
}

unint64_t sub_1D195C()
{
  result = qword_28F278;
  if (!qword_28F278)
  {
    result = swift_getWitnessTable(byte_2104A0, &type metadata for SeriesDetailsViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F278);
  }

  return result;
}

uint64_t sub_1D19B0(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEC00000061746144;
  v11 = a1 == 0x657275736F707865 && a2 == 0xEC00000061746144;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v13 = 0x80000000002176A0;
    if (a1 == 0xD000000000000020 && 0x80000000002176A0 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v13, a3, a4, a5, a6, a7, a8;
      return 5;
    }

    else
    {
      v14 = sub_1E1D30();
      a2, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
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

uint64_t static NotificationOptInLocationData.== infix(_:_:)(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = *a1;
  v10 = 0xE700000000000000;
  v11 = 0xE700000000000000;
  v12 = 0x656D6F636C6577;
  v13 = 0x8000000000212480;
  if (v9 != 2)
  {
    v12 = 0xD000000000000012;
    v11 = 0x8000000000212480;
  }

  v14 = 0x6553656369766564;
  if (*a1)
  {
    v10 = 0xEE0073676E697474;
  }

  else
  {
    v14 = 0x6E776F6E6B6E75;
  }

  if (*a1 <= 1u)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  if (v9 <= 1)
  {
    v16 = v10;
  }

  else
  {
    v16 = v11;
  }

  v17 = 0xE700000000000000;
  v18 = 0x656D6F636C6577;
  if (*a2 == 2)
  {
    v13 = 0xE700000000000000;
  }

  else
  {
    v18 = 0xD000000000000012;
  }

  if (*a2)
  {
    v8 = 0x6553656369766564;
    v17 = 0xEE0073676E697474;
  }

  if (*a2 <= 1u)
  {
    v19 = v8;
  }

  else
  {
    v19 = v18;
  }

  if (*a2 <= 1u)
  {
    v20 = v17;
  }

  else
  {
    v20 = v13;
  }

  if (v15 == v19 && v16 == v20)
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_1E1D30();
  }

  v16, a2, v19, a4, a5, a6, a7, a8;
  v20, v22, v23, v24, v25, v26, v27, v28;
  return v21 & 1;
}

void sub_1D1D3C(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
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

uint64_t sub_1D1DC4(uint64_t a1)
{
  v2 = sub_1D1F88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1D1E00(uint64_t a1)
{
  v2 = sub_1D1F88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NotificationOptInLocationData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28F280, &qword_210580);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_1D1F88();
  sub_1E1E00();
  v10 = v7;
  sub_1D1FDC();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D1F88()
{
  result = qword_28F288;
  if (!qword_28F288)
  {
    result = swift_getWitnessTable(byte_210764, &type metadata for NotificationOptInLocationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F288);
  }

  return result;
}

unint64_t sub_1D1FDC()
{
  result = qword_28F290;
  if (!qword_28F290)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Location, &type metadata for Location, v0, v1);
    atomic_store(result, &qword_28F290);
  }

  return result;
}

void NotificationOptInLocationData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28F298, &qword_210588);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_1D1F88();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1D219C();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_1D219C()
{
  result = qword_28F2A0;
  if (!qword_28F2A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Location, &type metadata for Location, v0, v1);
    atomic_store(result, &qword_28F2A0);
  }

  return result;
}

unint64_t sub_1D224C()
{
  result = qword_28F2A8;
  if (!qword_28F2A8)
  {
    result = swift_getWitnessTable(asc_21073C, &type metadata for NotificationOptInLocationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F2A8);
  }

  return result;
}

unint64_t sub_1D22A4()
{
  result = qword_28F2B0;
  if (!qword_28F2B0)
  {
    result = swift_getWitnessTable(aU_29, &type metadata for NotificationOptInLocationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F2B0);
  }

  return result;
}

unint64_t sub_1D22FC()
{
  result = qword_28F2B8;
  if (!qword_28F2B8)
  {
    result = swift_getWitnessTable(asc_2106D4, &type metadata for NotificationOptInLocationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F2B8);
  }

  return result;
}

void BATracker.transaction(_:)(objc_class *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[1].super.isa = a1;
  *v4[1].dataProviders = a2;

  sub_1E10C0();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

Swift::String_optional __swiftcall BATracker.contentPrivateID(for:)(Swift::String a1)
{
  v1 = sub_1D23F4(a1._countAndFlagsBits, a1._object, &selRef_contentPrivateIDForContentID_);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall BATracker.contentUserID(for:)(Swift::String a1)
{
  v1 = sub_1D23F4(a1._countAndFlagsBits, a1._object, &selRef_contentUserIDForContentID_);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

void *sub_1D23F4(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1E1770();
    v7 = [v5 *a3];

    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = sub_1E1780();

      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id BATracker.chain(with:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1E1130();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v4 = objc_allocWithZone(ObjectType);
  v5 = OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory;
  sub_3D68(&qword_281B00, &unk_1EDCF8);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = _swiftEmptyArrayStorage;
  *&v4[v5] = v6;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker] = v3;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v16.receiver = v4;
  v16.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v16, "init");
  v3, v8, v9, v10, v11, v12, v13, v14;
  swift_unknownObjectRelease();
  return v7;
}

id BATracker.optedIn.getter()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isDiagnosticSubmissionAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BATracker.pop<A>(type:)(objc_class *a1, uint64_t a2, uint64_t a3, objc_class *a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);

  os_unfair_lock_lock((v9 + 24));
  sub_1D4258((v9 + 16), a1, a2, a3, a4);
  os_unfair_lock_unlock((v9 + 24));
  v9, v10, v11, v12, v13, v14, v15, v16;
  return sub_1E10F0();
}

void BATracker.push<A>(data:traits:file:line:)(uint64_t a1, BAEventReporter *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(v7 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);

  os_unfair_lock_lock((v9 + 24));
  sub_1D445C((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));
  v9, v10, v11, v12, v13, v14, v15, v16;
  if (a2)
  {
    v17 = a2;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  sub_1E1110();
  v17, v18, v19, v20, v21, v22, v23, v24;
}

uint64_t BATracker.time<A>(_:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_3D68(&qword_287B10, &qword_1FCF80);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1E09E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_103800(a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_18E48(v7, &qword_287B10, &qword_1FCF80);
    return sub_1E1120();
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_1E10D0();
    return (*(v9 + 8))(v11, v8);
  }
}

BAEventReporter *BATracker.__allocating_init(tracker:sessionOperationDelegate:)(BAEventReporter *a1, uint64_t a2)
{
  v3 = v2;
  v5 = objc_allocWithZone(v3);
  v6 = OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory;
  sub_3D68(&qword_281B00, &unk_1EDCF8);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = _swiftEmptyArrayStorage;
  *&v5[v6] = v7;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v17.receiver = v5;
  v17.super_class = v3;

  v8 = [(BAEventReporter *)&v17 init];
  a1, v9, v10, v11, v12, v13, v14, v15;
  swift_unknownObjectRelease();
  return v8;
}

BAEventReporter *BATracker.copy()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1E10A0();
  if (v3)
  {
    v4 = sub_1E10B0();
    sub_1E0CA0();
    v6 = v5;

    v7 = sub_1E1130();
    v3, v8, v9, v10, v11, v12, v13, v14;
    v6, v15, v16, v17, v18, v19, v20, v21;
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v22 = objc_allocWithZone(ObjectType);
    v23 = OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory;
    sub_3D68(&qword_281B00, &unk_1EDCF8);
    v24 = swift_allocObject();
    *(v24 + 24) = 0;
    *(v24 + 16) = _swiftEmptyArrayStorage;
    *&v22[v23] = v24;
    swift_unknownObjectWeakInit();
    *&v22[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker] = v7;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v49.receiver = v22;
    v49.super_class = ObjectType;
    swift_retain_n();
    v3 = objc_msgSendSuper2(&v49, "init");
    v7, v25, v26, v27, v28, v29, v30, v31;
    v32 = swift_unknownObjectRelease();
    v33 = *(v1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);
    __chkstk_darwin(v32);

    os_unfair_lock_lock((v33 + 24));
    sub_1D4680(v33 + 16);
    os_unfair_lock_unlock((v33 + 24));
    v7, v34, v35, v36, v37, v38, v39, v40;
    v33, v41, v42, v43, v44, v45, v46, v47;
  }

  return v3;
}

uint64_t BATracker.sessionOperationDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*BATracker.sessionOperationDelegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13BookAnalytics9BATracker_sessionOperationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_11B43C;
}

id static BATracker.mock.getter()
{
  v0 = sub_1E0F50();
  __chkstk_darwin(v0 - 8);
  v26[7] = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1E0F70();
  __chkstk_darwin(v2 - 8);
  v26[6] = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E0FB0();
  __chkstk_darwin(v4 - 8);
  v26[5] = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E0B70();
  v26[0] = *(v6 - 8);
  __chkstk_darwin(v6);
  v26[1] = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E0D40();
  __chkstk_darwin(v8);
  v26[4] = sub_1E0D60();
  sub_1E0E80();
  v26[3] = sub_1E0E70();
  v26[2] = dispatch_group_create();
  v29[0] = _swiftEmptyArrayStorage;
  sub_1D6864(&qword_287BA0, &type metadata accessor for SessionManager.Options, &protocol conformance descriptor for SessionManager.Options);
  sub_3D68(&qword_287BA8, &qword_1FCFA0);
  sub_EC07C(&qword_287BB0, &qword_287BA8, &qword_1FCFA0, &protocol conformance descriptor for [A]);
  sub_1E1A70();
  sub_3D68(&qword_287BB8, &qword_1FCFA8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1FCF60;
  sub_1E0B60();
  sub_1E0B40();
  sub_1E0B50();
  v29[0] = v9;
  sub_1D6864(&qword_287BC0, &type metadata accessor for FlushEvents, &protocol conformance descriptor for FlushEvents);
  sub_3D68(&qword_287BC8, &unk_1FCFB0);
  sub_EC07C(&unk_287BD0, &qword_287BC8, &unk_1FCFB0, &protocol conformance descriptor for [A]);
  sub_1E1A70();
  sub_1E0CD0();
  swift_allocObject();
  sub_1E0CC0();
  v10 = sub_1E0D90();
  v29[3] = v10;
  v29[4] = &protocol witness table for TimestampJitter;
  v11 = sub_16305C(v29);
  (*(*(v10 - 8) + 104))(v11, enum case for TimestampJitter.disabled(_:), v10);
  sub_1E1020();
  swift_allocObject();
  sub_1E1010();
  sub_1E0FA0();
  sub_1E0F60();
  sub_1E0F40();
  v12 = sub_1E0CF0();
  v13 = sub_1E0D50();
  v12, v14, v15, v16, v17, v18, v19, v20;
  v21 = v27;
  v22 = objc_allocWithZone(v27);
  v23 = OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory;
  sub_3D68(&qword_281B00, &unk_1EDCF8);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = _swiftEmptyArrayStorage;
  *&v22[v23] = v24;
  swift_unknownObjectWeakInit();
  *&v22[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker] = v13;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v28.receiver = v22;
  v28.super_class = v21;
  return objc_msgSendSuper2(&v28, "init");
}

id BATracker.init(tracker:sessionOperationDelegate:)(BAEventReporter *a1, uint64_t a2)
{
  v3 = sub_1D6388(a1, a2);
  a1, v4, v5, v6, v7, v8, v9, v10;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1D3474(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

void BATracker.timeRawEvent(_:properties:startTime:)(BAEventReporter *a1, BAEventReporter *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v84 - v12;
  v14 = sub_1E09E0();
  v15 = __chkstk_darwin(v14);
  v85 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v84 - v18;
  v20 = __chkstk_darwin(v17);
  v87 = &v84 - v21;
  __chkstk_darwin(v20);
  v23 = &v84 - v22;
  v86 = a1;
  v88 = a2;
  v24 = a3;
  v26 = v25;
  v27 = sub_1D646C(a1, a2, v24);
  sub_103800(a4, v13);
  v28 = *(v26 + 48);
  if (v28(v13, 1, v14) == 1)
  {
    sub_18E48(v13, &qword_287B10, &qword_1FCF80);
    v29 = sub_1E10B0();
    [v29 timeRawEvent:v27];
  }

  else
  {
    v84 = v27;
    v30 = *(v26 + 32);
    v30(v23, v13, v14);
    BATracker.sessionStartTime.getter(v11);
    if (v28(v11, 1, v14) == 1)
    {
      sub_18E48(v11, &qword_287B10, &qword_1FCF80);
      v31 = v87;
      (*(v26 + 16))(v87, v23, v14);
      v32 = v23;
    }

    else
    {
      v33 = v26;
      v30(v19, v11, v14);
      v34 = sub_1E0980();
      v31 = v87;
      if (v34)
      {
        (*(v26 + 8))(v19, v14);
        v35 = *(v26 + 16);
        v36 = v85;
        v37 = v23;
        v35(v85, v23, v14);
      }

      else
      {
        v37 = v23;
        v36 = v85;
        v30(v85, v19, v14);
      }

      v30(v31, v36, v14);
      v26 = v33;
      v32 = v37;
    }

    sub_1D6864(&qword_28F2D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v38 = sub_1E1760();
    v39 = v84;
    v40 = v88;
    if ((v38 & 1) == 0)
    {
      (*(v26 + 24))(v32, v31, v14);
      if (qword_27D030 != -1)
      {
        swift_once();
      }

      v41 = sub_1E1360();
      sub_3B2C(v41, qword_280278);

      v42 = sub_1E1340();
      v43 = sub_1E1960();
      v40, v44, v45, v46, v47, v48, v49, v50;
      if (os_log_type_enabled(v42, v43))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v89[0] = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_DD91C(v86, v88, v89);
        _os_log_impl(&dword_0, v42, v43, "Analytics: Timing %s attempted to use a date earlier than the sessionStartTime.", v51, 0xCu);
        sub_4E48(v52, v53, v54, v55, v56, v57, v58, v59);

        v40 = v88;
      }
    }

    if (qword_27D030 != -1)
    {
      swift_once();
    }

    v60 = sub_1E1360();
    sub_3B2C(v60, qword_280278);

    v61 = sub_1E1340();
    v62 = sub_1E1960();
    v40, v63, v64, v65, v66, v67, v68, v69;
    if (os_log_type_enabled(v61, v62))
    {
      v70 = v40;
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v89[0] = v72;
      *v71 = 136315394;
      *(v71 + 4) = sub_DD91C(v86, v70, v89);
      *(v71 + 12) = 2048;
      swift_beginAccess();
      sub_1E09A0();
      *(v71 + 14) = v73 * 1000.0;
      _os_log_impl(&dword_0, v61, v62, "Analytics: Timing %s with startTime: %f", v71, 0x16u);
      sub_4E48(v72, v74, v75, v76, v77, v78, v79, v80);
    }

    v81 = sub_1E10B0();
    swift_beginAccess();
    isa = sub_1E0970().super.isa;
    [v81 timeRawEvent:v39 startTime:isa];

    v83 = *(v26 + 8);
    v83(v31, v14);
    v83(v32, v14);
  }
}

uint64_t BATracker.sessionStartTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3D68(&qword_287B10, &qword_1FCF80);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = [Strong sessionStartTime];
    swift_unknownObjectRelease();
    if (v6)
    {
      sub_1E09B0();

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v10 = sub_1E09E0();
    (*(*(v10 - 8) + 56))(v4, v7, 1, v10);
    return sub_1D68AC(v4, a1);
  }

  else
  {
    v8 = sub_1E09E0();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

void BATracker.pushRawDataEvent(with:data:traits:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = objc_allocWithZone(sub_1E0E40());

  v10 = sub_1E0E30();
  v11 = sub_1E10B0();
  v12 = v10;
  v13 = sub_1E1770();
  [v11 pushDataEvent:v12 traits:a4 file:v13 line:a7];
}

void BATracker.submitRawEvent(_:properties:endTime:)(BAEventReporter *a1, BAEventReporter *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_3D68(&qword_287B10, &qword_1FCF80);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  v12 = sub_1E09E0();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v48 - v17;
  v19 = sub_1D646C(a1, a2, a3);
  sub_103800(a4, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_18E48(v11, &qword_287B10, &qword_1FCF80);
    v20 = sub_1E10B0();
    [v20 submitRawEvent:v19];
  }

  else
  {
    v49 = a1;
    v50 = v4;
    (*(v13 + 32))(v18, v11, v12);
    if (qword_27D030 != -1)
    {
      swift_once();
    }

    v21 = sub_1E1360();
    sub_3B2C(v21, qword_280278);
    (*(v13 + 16))(v16, v18, v12);

    v22 = sub_1E1340();
    v23 = sub_1E1960();
    a2, v24, v25, v26, v27, v28, v29, v30;
    if (os_log_type_enabled(v22, v23))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48 = v19;
      v33 = v32;
      v51 = v32;
      *v31 = 136315394;
      *(v31 + 4) = sub_DD91C(v49, a2, &v51);
      *(v31 + 12) = 2048;
      sub_1E09A0();
      v35 = v34;
      v36 = *(v13 + 8);
      v36(v16, v12);
      v37 = v36;
      *(v31 + 14) = v35 * 1000.0;
      _os_log_impl(&dword_0, v22, v23, "Analytics: Submitting %s with endTime: %f", v31, 0x16u);
      sub_4E48(v33, v38, v39, v40, v41, v42, v43, v44);
      v19 = v48;
    }

    else
    {

      v45 = *(v13 + 8);
      v45(v16, v12);
      v37 = v45;
    }

    v46 = sub_1E10B0();
    isa = sub_1E0970().super.isa;
    [v46 explicitSubmitRawEvent:v19 submitTime:isa];

    v37(v18, v12);
  }
}

__n128 sub_1D4258(BAEventReporter **a1, objc_class *a2, uint64_t a3, uint64_t a4, objc_class *a5)
{
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_103008(0, v9[1].super.isa + 1, 1, v9, v10, v11, v12, v13);
  }

  isa = v9[1].super.isa;
  v14 = *v9[1].dataProviders;
  if (isa >= v14 >> 1)
  {
    v9 = sub_103008((v14 > 1), isa + 1, 1, v9, v10, v11, v12, v13);
  }

  v9[1].super.isa = (isa + 1);
  v16 = &v9[4 * isa];
  v16[2].super.isa = a2;
  *v16[2].dataProviders = a4;
  v16[3].super.isa = a5;
  result = v18;
  *v16[4].dataProviders = v19;
  *(v16 + 56) = v18;
  v16[5].dataProviders[0] = 1;
  *a1 = v9;
  return result;
}

__n128 sub_1D433C(BAEventReporter **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *v23.dataProviders = a4;
  *v24 = a5;
  *&v24[8] = a6;
  v10 = sub_16305C(&v22);
  (*(*(a4 - 8) + 16))(v10, a2, a4);
  *&v24[16] = a3;
  v24[24] = 0;
  v11 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_103008(0, v11[1].super.isa + 1, 1, v11, v12, v13, v14, v15);
  }

  isa = v11[1].super.isa;
  v16 = *v11[1].dataProviders;
  if (isa >= v16 >> 1)
  {
    v11 = sub_103008((v16 > 1), isa + 1, 1, v11, v12, v13, v14, v15);
  }

  v11[1].super.isa = (isa + 1);
  v18 = &v11[4 * isa];
  result = v22;
  v20 = v23;
  v21 = *v24;
  *(v18 + 73) = *&v24[9];
  v18[3] = v20;
  v18[4] = v21;
  v18[2] = result;
  *a1 = v11;
  return result;
}

void sub_1D4574(uint64_t result)
{
  v1 = *(*result + 16);
  if (v1)
  {
    v2 = *result + 32;
    do
    {
      sub_1D6C0C(v2, &v24);
      if (v27)
      {
        BATracker.pop<A>(type:)(v24, v24, *(&v24 + 1), v25);
      }

      else
      {
        v3 = v26;
        sub_E9CB0(&v24, &v21);
        v4 = v22;
        v5 = v23;
        v6 = sub_48B8(&v21, v22);
        if (!v3)
        {
          v3 = _swiftEmptyArrayStorage;
        }

        BATracker.push<A>(data:traits:file:line:)(v6, v3, 0xD00000000000005FLL, 0x8000000000217790, 157, v4, v5);
        v3, v7, v8, v9, v10, v11, v12, v13;
        sub_4E48(&v21, v14, v15, v16, v17, v18, v19, v20);
      }

      v2 += 64;
      --v1;
    }

    while (v1);
  }
}

void BATracker.onSessionChange(with:)(objc_class *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[1].super.isa = a1;
  *v4[1].dataProviders = a2;

  v5 = sub_1E10E0();
  v5, v6, v7, v8, v9, v10, v11, v12;

  v4, v13, v14, v15, v16, v17, v18, v19;
}

id BATracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t BATracker.name.getter(uint64_t a1)
{
  v1 = sub_1E10B0();
  v2 = sub_1E0CA0();

  return v2;
}

uint64_t BATracker.path.getter()
{
  v9 = sub_1E1100();
  sub_3D68(&qword_281BC0, &unk_1EDD80);
  sub_EC07C(&qword_28F2E0, &qword_281BC0, &unk_1EDD80, &protocol conformance descriptor for [A]);
  v0 = sub_1E1750();
  v9, v1, v2, v3, v4, v5, v6, v7;
  return v0;
}

Swift::Void __swiftcall BATracker.timeRawEvent(eventNameValue:propertiesValue:startTimeValue:)(JSValue eventNameValue, JSValue propertiesValue, JSValue startTimeValue)
{
  v6 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v56 - v10;
  if ([(objc_class *)eventNameValue.super.isa isString]&& (v12 = [(objc_class *)eventNameValue.super.isa toString]) != 0)
  {
    v13 = v12;
    v14 = sub_1E1780();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  if ([(objc_class *)propertiesValue.super.isa isObject]&& (v17 = [(objc_class *)propertiesValue.super.isa toDictionary]) != 0)
  {
    v18 = v17;
    v19 = sub_1E1730();

    sub_1D4EDC(v19);
    v21 = v20;
    v19, v22, v23, v24, v25, v26, v27, v28;
  }

  else
  {
    v21 = 0;
  }

  if ([(objc_class *)startTimeValue.super.isa isDate])
  {
    v29 = [(objc_class *)startTimeValue.super.isa toDate];
    if (v29)
    {
      v30 = v29;
      sub_1E09B0();

      v31 = sub_1E09E0();
      (*(*(v31 - 8) + 56))(v9, 0, 1, v31);
    }

    else
    {
      v55 = sub_1E09E0();
      (*(*(v55 - 8) + 56))(v9, 1, 1, v55);
    }

    sub_1D68AC(v9, v11);
    if (!v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v32 = sub_1E09E0();
    (*(*(v32 - 8) + 56))(v11, 1, 1, v32);
    if (!v16)
    {
LABEL_18:
      sub_18E48(v11, &qword_287B10, &qword_1FCF80);
      v54 = v21;
      goto LABEL_19;
    }
  }

  if (v21)
  {
    BATracker.timeRawEvent(_:properties:startTime:)(v14, v16, v21, v11);
    v21, v33, v34, v35, v36, v37, v38, v39;
    v16, v40, v41, v42, v43, v44, v45, v46;
    sub_18E48(v11, &qword_287B10, &qword_1FCF80);
    return;
  }

  sub_18E48(v11, &qword_287B10, &qword_1FCF80);
  v54 = v16;
LABEL_19:
  v54, v47, v48, v49, v50, v51, v52, v53;
}

void sub_1D4EDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_3D68(&qword_28B458, &qword_2051A0);
    v2 = sub_1E1B50();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v14 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v26 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    if (v26 >= v6)
    {
      a1, v7, v8, v9, v10, v11, v12, v13;
      return;
    }

    v5 = *(a1 + 64 + 8 * v26);
    ++v14;
  }

  while (!v5);
  while (1)
  {
    v27 = __clz(__rbit64(v5)) | (v26 << 6);
    sub_A798(*(a1 + 48) + 40 * v27, v68);
    sub_326BC(*(a1 + 56) + 32 * v27, v69 + 8);
    v66[0] = v69[0];
    v66[1] = v69[1];
    v67 = v70;
    v65[0] = v68[0];
    v65[1] = v68[1];
    sub_A798(v65, v64);
    if (!swift_dynamicCast())
    {
      sub_18E48(v65, &qword_28F310, &qword_210868);
      a1, v41, v42, v43, v44, v45, v46, v47;
      goto LABEL_23;
    }

    sub_326BC(v66 + 8, v64);
    sub_18E48(v65, &qword_28F310, &qword_210868);
    sub_3D68(&qword_28B468, &qword_2051D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v5 &= v5 - 1;
    v35 = sub_A2F4(v62, v63);
    v36 = v35;
    if (v7)
    {
      v15 = (v2[3].super.isa + 16 * v35);
      v16 = v15[1];
      *v15 = v62;
      v15[1] = v63;
      v16, v7, v8, v9, v10, v11, v12, v13;
      v17 = *v2[3].dataProviders;
      v18 = *(v17 + 8 * v36);
      *(v17 + 8 * v36) = v62;
      v18, v19, v20, v21, v22, v23, v24, v25;
      v14 = v26;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[1].super.isa >= *v2[1].dataProviders)
      {
        goto LABEL_25;
      }

      *(&v2[4].super.isa + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) = (*(&v2[4].super.isa + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) | (1 << v35));
      v37 = (v2[3].super.isa + 16 * v35);
      *v37 = v62;
      v37[1] = v63;
      *(*v2[3].dataProviders + 8 * v35) = v62;
      isa = v2[1].super.isa;
      v39 = __OFADD__(isa, 1);
      v40 = (isa + 1);
      if (v39)
      {
        goto LABEL_26;
      }

      v2[1].super.isa = v40;
      v14 = v26;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v26 = v14;
  }

  a1, v28, v29, v30, v31, v32, v33, v34;
  v63, v55, v56, v57, v58, v59, v60, v61;
LABEL_23:
  v2, v48, v49, v50, v51, v52, v53, v54;
}

Swift::Void __swiftcall BATracker.submitRawEvent(_:properties:)(Swift::String _, Swift::OpaquePointer properties)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v5 = sub_3D68(&qword_287B10, &qword_1FCF80);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  v8 = sub_1E09E0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  BATracker.submitRawEvent(_:properties:endTime:)(countAndFlagsBits, object, properties._rawValue, v7);
  sub_18E48(v7, &qword_287B10, &qword_1FCF80);
}

Swift::Void __swiftcall BATracker.submitRawEvent(_:properties:endTimeValue:)(Swift::String _, Swift::OpaquePointer properties, JSValue_optional endTimeValue)
{
  isa = endTimeValue.value.super.isa;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v7 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  if (isa && [(objc_class *)isa isDate])
  {
    v13 = [(objc_class *)isa toDate];
    if (v13)
    {
      v14 = v13;
      sub_1E09B0();

      v15 = sub_1E09E0();
      (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
    }

    else
    {
      v17 = sub_1E09E0();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    }

    sub_1D68AC(v10, v12);
  }

  else
  {
    v16 = sub_1E09E0();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  BATracker.submitRawEvent(_:properties:endTime:)(countAndFlagsBits, object, properties._rawValue, v12);
  sub_18E48(v12, &qword_287B10, &qword_1FCF80);
}

Swift::Void __swiftcall BATracker.submitRawEvent(_:properties:onlyIfTimed:)(Swift::String _, Swift::OpaquePointer properties, Swift::Bool onlyIfTimed)
{
  v4 = sub_1D646C(_._countAndFlagsBits, _._object, properties._rawValue);
  v5 = sub_1E10B0();
  [v5 submitRawEvent:v4 onlyIfTimed:onlyIfTimed];
}

Swift::Void __swiftcall BATracker.pushRawDataEvent(with:data:traitValues:)(Swift::String with, Swift::OpaquePointer data, Swift::OpaquePointer traitValues)
{
  v4 = objc_allocWithZone(sub_1E0E40());

  v5 = sub_1E0E30();
  v6 = [objc_allocWithZone(sub_1E0ED0()) init];
  v15 = 0x65636E4F796C6E6FLL;
  v16 = 0xE800000000000000;
  v14 = &v15;
  v7 = sub_1D62DC(sub_1D6948, v13, traitValues._rawValue);
  if (v7)
  {
    v7 = sub_1E0EC0();
  }

  v15 = 0x657571696E75;
  v16 = 0xE600000000000000;
  __chkstk_darwin(v7);
  v12[2] = &v15;
  if (sub_1D62DC(sub_1D6C54, v12, traitValues._rawValue))
  {
    sub_1E0EB0();
  }

  v8 = sub_1E10B0();
  v9 = v5;
  v10 = v6;
  v11 = sub_1E1770();
  [v8 pushDataEvent:v9 traits:v10 file:v11 line:0];
}

Swift::Void __swiftcall BATracker.popRawDataEvent(with:)(Swift::String with)
{
  v1 = sub_1E10B0();
  v2 = sub_1E1770();
  [v1 popDataEventByName:v2];
}

id sub_1D5DDC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, BAEventReporter *))
{
  v6 = sub_1E1780();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
  v11 = v10;

  v8, v12, v13, v14, v15, v16, v17, v18;
  if (v11)
  {
    v19 = sub_1E1770();
    v11, v20, v21, v22, v23, v24, v25, v26;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void BATracker.performAfterPrivateDataFetched(completionHandler:)(uint64_t a1, BAEventReporter *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    aBlock[4] = a1;
    v16 = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_11AD8C;
    aBlock[3] = &unk_276240;
    v6 = _Block_copy(aBlock);
    v7 = v16;

    v7, v8, v9, v10, v11, v12, v13, v14;
    [v5 performAfterPrivateDataFetchedWithCompletionHandler:v6];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }
}

id sub_1D6024(SEL *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = [Strong *a1];
  swift_unknownObjectRelease();
  return v3;
}

id sub_1D60AC(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = [Strong *a3];
  swift_unknownObjectRelease();
  return v5;
}

void sub_1D612C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1A90() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1E1DC0();

      sub_1E17D0();
      v10 = sub_1E1DE0();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

uint64_t sub_1D62DC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v19[0] = *(v7 - 1);
      v19[1] = v8;

      v9 = a1(v19);
      v8, v10, v11, v12, v13, v14, v15, v16;
      if (v3)
      {
        break;
      }

      v17 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v17) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_1D6388(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory;
  sub_3D68(&qword_281B00, &unk_1EDCF8);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = _swiftEmptyArrayStorage;
  *&v2[v5] = v6;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v8.receiver = v2;
  v8.super_class = ObjectType;

  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_1D646C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;

  v16 = 0;
  v17 = &_swiftEmptyDictionarySingleton;
LABEL_4:
  while (2)
  {
    while (2)
    {
      v79 = v17;
      while (1)
      {
        if (!v7)
        {
          while (1)
          {
            v18 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v18 >= v8)
            {
              a3, v9, v10, v11, v12, v13, v14, v15;
              sub_1E0E60();

              sub_1E0E50();
              v76 = objc_allocWithZone(sub_1E0D80());
              return sub_1E0D70();
            }

            v7 = *(v4 + 8 * v18);
            ++v16;
            if (v7)
            {
              v16 = v18;
              goto LABEL_10;
            }
          }

          __break(1u);
          goto LABEL_38;
        }

LABEL_10:
        v19 = __clz(__rbit64(v7)) | (v16 << 6);
        v20 = (*(a3 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(a3 + 56) + 8 * v19);
        isa = v23[1].super.isa;

        if (isa && (v32 = sub_A2F4(0x6465726975716572, 0xE800000000000000), (v25 & 1) != 0) && (sub_326BC(*v23[3].dataProviders + 32 * v32, v83), (swift_dynamicCast() & 1) != 0) && (v82 & 1) != 0)
        {
          if (!v23[1].super.isa)
          {
            goto LABEL_19;
          }
        }

        else if (!v23[1].super.isa)
        {
          goto LABEL_19;
        }

        v33 = sub_A2F4(1701869940, 0xE400000000000000);
        if (v25)
        {
          sub_326BC(*v23[3].dataProviders + 32 * v33, v83);
          v23, v34, v35, v36, v37, v38, v39, v40;
          swift_dynamicCast();
          goto LABEL_20;
        }

LABEL_19:
        v23, v25, v26, v27, v28, v29, v30, v31;
LABEL_20:
        v7 &= v7 - 1;
        v41 = objc_allocWithZone(sub_1E0F30());
        v42 = sub_1E0F20();
        if (v42)
        {
          break;
        }

        v43 = v22;
        v17 = v79;
        v44 = sub_A2F4(v43, v21);
        v46 = v45;
        v21, v45, v47, v48, v49, v50, v51, v52;
        if (v46)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v83[0] = v79;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_17482C();
            v17 = v83[0];
          }

          *(v17[6] + 16 * v44 + 8), v54, v55, v56, v57, v58, v59, v60;

          sub_1D612C(v44, v17);
          goto LABEL_4;
        }
      }

      v61 = v42;
      v78 = swift_isUniquelyReferenced_nonNull_native();
      v83[0] = v79;
      v62 = sub_A2F4(v22, v21);
      v63 = v79[2];
      v64 = (v9 & 1) == 0;
      v65 = v63 + v64;
      if (__OFADD__(v63, v64))
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (v79[3] < v65)
      {
        v80 = v9;
        sub_173A58(v65, v78);
        v66 = sub_A2F4(v22, v21);
        v68 = v67 & 1;
        v9 = v80;
        if ((v80 & 1) != v68)
        {
          goto LABEL_40;
        }

        v62 = v66;
        if ((v80 & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_32:
        v21, v9, v10, v11, v12, v13, v14, v15;
        v17 = v83[0];
        v69 = *(v83[0] + 56);
        v70 = *(v69 + 8 * v62);
        *(v69 + 8 * v62) = v61;

        continue;
      }

      break;
    }

    if (v78)
    {
      if (v9)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v81 = v9;
      sub_17482C();
      v9 = v81;
      if (v81)
      {
        goto LABEL_32;
      }
    }

LABEL_34:
    v71 = v83[0];
    *(v83[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
    v72 = (v71[6] + 16 * v62);
    *v72 = v22;
    v72[1] = v21;
    *(v71[7] + 8 * v62) = v61;
    v73 = v71[2];
    v74 = __OFADD__(v73, 1);
    v75 = v73 + 1;
    if (!v74)
    {
      v17 = v71;
      v71[2] = v75;
      continue;
    }

    break;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_1E1D60();
  __break(1u);
  return result;
}

uint64_t sub_1D6864(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1D68AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_287B10, &qword_1FCF80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6964(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E1D30() & 1;
  }
}

uint64_t sub_1D69BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D69D4@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1D6AE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6B24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D6B74(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_1D6BC0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t HideBookEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HideBookEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HideBookEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HideBookEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HideBookEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for HideBookEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t HideBookEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HideBookEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HideBookEvent.Model.init(contentData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1[3];
  *(a3 + 2) = a1[2];
  *(a3 + 3) = v5;
  v6 = a1[5];
  *(a3 + 4) = a1[4];
  *(a3 + 5) = v6;
  v7 = a1[1];
  *a3 = *a1;
  *(a3 + 1) = v7;
  v8 = *(type metadata accessor for HideBookEvent.Model(0) + 20);
  v9 = sub_1E1150();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a3[v8], a2, v9);
}

uint64_t sub_1D70B8(uint64_t a1)
{
  v2 = sub_1D7388();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1D70F4(uint64_t a1)
{
  v2 = sub_1D7388();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HideBookEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28F348, &qword_210870);
  v30 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v15[-v6];
  sub_48B8(a1, a1[3]);
  sub_1D7388();
  sub_1E1E00();
  v8 = v3[2];
  v9 = v3[4];
  v27 = v3[3];
  v28 = v9;
  v10 = v3[4];
  v29 = v3[5];
  v11 = *v3;
  v12 = v3[2];
  v25 = v3[1];
  v26 = v12;
  v13 = *v3;
  v21 = v27;
  v22 = v10;
  v23 = v3[5];
  v24 = v13;
  v18 = v11;
  v19 = v25;
  v20 = v8;
  v17 = 0;
  sub_13A5C(&v24, v16);
  sub_143D0();
  sub_1E1CF0();
  v16[2] = v20;
  v16[3] = v21;
  v16[4] = v22;
  v16[5] = v23;
  v16[0] = v18;
  v16[1] = v19;
  sub_14424(v16);
  if (!v2)
  {
    type metadata accessor for HideBookEvent.Model(0);
    v15[15] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v30 + 8))(v7, v5);
}

unint64_t sub_1D7388()
{
  result = qword_28F350;
  if (!qword_28F350)
  {
    result = swift_getWitnessTable(aQ_20, &type metadata for HideBookEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F350);
  }

  return result;
}

void HideBookEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_1E1150();
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_3D68(&qword_28F358, &qword_210878);
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v31 - v7;
  v9 = type metadata accessor for HideBookEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v36 = a1;
  sub_48B8(a1, v12);
  sub_1D7388();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v36, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = v34;
    v44 = 0;
    sub_14CB8();
    sub_1E1C20();
    v21 = v40;
    *(v11 + 2) = v39;
    *(v11 + 3) = v21;
    v22 = v42;
    *(v11 + 4) = v41;
    *(v11 + 5) = v22;
    v23 = v38;
    *v11 = v37;
    *(v11 + 1) = v23;
    v43 = 1;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v8, v35);
    (*(v32 + 32))(&v11[*(v9 + 20)], v6, v4);
    sub_1D777C(v11, v33);
    sub_4E48(v36, v24, v25, v26, v27, v28, v29, v30);
    sub_1D77E0(v11);
  }
}

uint64_t sub_1D777C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HideBookEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77E0(uint64_t a1)
{
  v2 = type metadata accessor for HideBookEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D78F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
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

uint64_t sub_1D7A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
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

uint64_t sub_1D7B34(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7BF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
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

unint64_t sub_1D7CAC()
{
  result = qword_28F480;
  if (!qword_28F480)
  {
    result = swift_getWitnessTable(aI_21, &type metadata for HideBookEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F480);
  }

  return result;
}

unint64_t sub_1D7D04()
{
  result = qword_28F488;
  if (!qword_28F488)
  {
    result = swift_getWitnessTable(byte_210970, &type metadata for HideBookEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F488);
  }

  return result;
}

unint64_t sub_1D7D5C()
{
  result = qword_28F490;
  if (!qword_28F490)
  {
    result = swift_getWitnessTable(byte_210998, &type metadata for HideBookEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F490);
  }

  return result;
}

uint64_t sub_1D7E70(uint64_t a1)
{
  v2 = sub_1D804C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1D7EAC(uint64_t a1)
{
  v2 = sub_1D804C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PortraitOrientationLockEvent.Model.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_28F4C8, &qword_210A78);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_48B8(a1, a1[3]);
  sub_1D804C();
  sub_1E1E00();
  sub_1E1150();
  sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
  sub_1E1CF0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D804C()
{
  result = qword_28F4D0;
  if (!qword_28F4D0)
  {
    result = swift_getWitnessTable(aA_33, &type metadata for PortraitOrientationLockEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F4D0);
  }

  return result;
}

void PortraitOrientationLockEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_1E1150();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3D68(&qword_28F4D8, &qword_210A80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = type metadata accessor for PortraitOrientationLockEvent.Model(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_1D804C();
  v12 = v25;
  sub_1E1DF0();
  if (!v12)
  {
    v20 = v23;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    (*(v20 + 32))(v11, v24, v3);
    sub_1D832C(v11, v22);
  }

  sub_4E48(a1, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1D832C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PortraitOrientationLockEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D842C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D84B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D8568(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D85E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_1D866C()
{
  result = qword_28F600;
  if (!qword_28F600)
  {
    result = swift_getWitnessTable(aY_26, &type metadata for PortraitOrientationLockEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F600);
  }

  return result;
}

unint64_t sub_1D86C4()
{
  result = qword_28F608;
  if (!qword_28F608)
  {
    result = swift_getWitnessTable(byte_210B80, &type metadata for PortraitOrientationLockEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F608);
  }

  return result;
}

unint64_t sub_1D871C()
{
  result = qword_28F610;
  if (!qword_28F610)
  {
    result = swift_getWitnessTable(byte_210BA8, &type metadata for PortraitOrientationLockEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F610);
  }

  return result;
}

uint64_t sub_1D8770()
{
  v0 = sub_3D68(&qword_28F638, &qword_210C88);
  sub_5F94(v0, qword_28F618);
  v1 = sub_3B2C(v0, qword_28F618);
  v2 = sub_1E1680();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_1D8810@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7B8 != -1)
  {
    swift_once();
  }

  v2 = sub_3D68(&qword_28F638, &qword_210C88);
  v3 = sub_3B2C(v2, qword_28F618);

  return sub_1D8AB4(v3, a1);
}

void *EnvironmentValues.pageMetrics.getter()
{
  sub_1D88DC();

  return sub_1E1490();
}

unint64_t sub_1D88DC()
{
  result = qword_28F630;
  if (!qword_28F630)
  {
    result = swift_getWitnessTable(asc_210CA8, &type metadata for PageMetricsKey, v0, v1);
    atomic_store(result, &qword_28F630);
  }

  return result;
}

uint64_t sub_1D8930(uint64_t a1)
{
  v2 = sub_3D68(&qword_28F638, &qword_210C88);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1D8AB4(a1, &v9 - v6);
  sub_1D8AB4(v7, v5);
  sub_1D88DC();
  sub_1E14A0();
  return sub_1D8B24(v7);
}

uint64_t EnvironmentValues.pageMetrics.setter(uint64_t a1)
{
  v2 = sub_3D68(&qword_28F638, &qword_210C88);
  __chkstk_darwin(v2 - 8);
  sub_1D8AB4(a1, &v5 - v3);
  sub_1D88DC();
  sub_1E14A0();
  return sub_1D8B24(a1);
}

uint64_t sub_1D8AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_28F638, &qword_210C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8B24(uint64_t a1)
{
  v2 = sub_3D68(&qword_28F638, &qword_210C88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*EnvironmentValues.pageMetrics.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_3D68(&qword_28F638, &qword_210C88) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_1D88DC();
  sub_1E1490();
  return sub_1D8CA4;
}

void sub_1D8CA4(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_1D8AB4((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_1D8AB4(v3[2], v3[1]);
    sub_1E14A0();
    sub_1D8B24(v6);
  }

  else
  {
    sub_1E14A0();
  }

  sub_1D8B24(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

unint64_t sub_1D8DC8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000013;
  }
}

void sub_1D8E04(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v11 = 0x8000000000217910;
  v12 = a1 == 0xD000000000000013 && 0x8000000000217910 == a2;
  if (v12 || (sub_1E1D30() & 1) != 0)
  {
    a2, v11, a3, a4, a5, a6, a7, a8;
    v14 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000217930 == a2)
  {
    a2, 0x8000000000217930, a3, a4, a5, a6, a7, a8;
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

uint64_t sub_1D8EE8(uint64_t a1)
{
  v2 = sub_1D90EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1D8F24(uint64_t a1)
{
  v2 = sub_1D90EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingGoalsDurationData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28F640, &qword_210CE0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  sub_48B8(a1, a1[3]);
  sub_1D90EC();
  sub_1E1E00();
  v11 = 0;
  sub_1E1D10();
  if (!v2)
  {
    v10 = 1;
    sub_1E1D10();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D90EC()
{
  result = qword_28F648;
  if (!qword_28F648)
  {
    result = swift_getWitnessTable(byte_210EBC, &type metadata for ReadingGoalsDurationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F648);
  }

  return result;
}

void ReadingGoalsDurationData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_28F650, &qword_210CE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_48B8(a1, a1[3]);
  sub_1D90EC();
  sub_1E1DF0();
  if (!v2)
  {
    v20 = 0;
    v16 = sub_1E1C40();
    v19 = 1;
    v17 = sub_1E1C40();
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    a2[1] = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_1D933C()
{
  result = qword_28F658;
  if (!qword_28F658)
  {
    result = swift_getWitnessTable(byte_210E94, &type metadata for ReadingGoalsDurationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F658);
  }

  return result;
}

unint64_t sub_1D9394()
{
  result = qword_28F660;
  if (!qword_28F660)
  {
    result = swift_getWitnessTable(byte_210E04, &type metadata for ReadingGoalsDurationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F660);
  }

  return result;
}

unint64_t sub_1D93EC()
{
  result = qword_28F668;
  if (!qword_28F668)
  {
    result = swift_getWitnessTable(byte_210E2C, &type metadata for ReadingGoalsDurationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F668);
  }

  return result;
}

BookAnalytics::BackgroundColor_optional __swiftcall BackgroundColor.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2623E0;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 11;
  if (v5 < 0xB)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t BackgroundColor.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0x6169706573;
    v9 = 2036691559;
    if (v1 != 3)
    {
      v9 = 0x6B63616C62;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x6574696877;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 1835819363;
    v3 = 0x7375636F66;
    if (v1 != 9)
    {
      v3 = 1684828002;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x6C616E696769726FLL;
    v5 = 0x7465697571;
    if (v1 != 6)
    {
      v5 = 0x7265706170;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1D95CC()
{
  result = qword_28F670;
  if (!qword_28F670)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BackgroundColor, &type metadata for BackgroundColor, v0, v1);
    atomic_store(result, &qword_28F670);
  }

  return result;
}

Swift::Int sub_1D9620()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1DFCB4(v3, v1);
  return sub_1E1DE0();
}

Swift::Int sub_1D9670(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  sub_1DFCB4(v4, v2);
  return sub_1E1DE0();
}

uint64_t sub_1D96C0@<X0>(uint64_t *a1@<X8>)
{
  result = BackgroundColor.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D97A8()
{
  result = qword_28F678;
  if (!qword_28F678)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BackgroundColor, &type metadata for BackgroundColor, v0, v1);
    atomic_store(result, &qword_28F678);
  }

  return result;
}

uint64_t ActionModel.instrumentingAppAnalyticsClickEvent(using:refId:dataStack:sizeProvider:clickData:additionalData:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v43 = a8;
  v42 = a6;
  v41 = a2;
  v15 = sub_1E16A0();
  __chkstk_darwin(v15 - 8);
  v16 = sub_1E16C0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a3;
  v21 = a5[1];
  v50 = *a5;
  v51 = v21;
  v22 = a5[3];
  v52 = a5[2];
  v53 = v22;
  if (a1)
  {
    v23 = a1;
    sub_1E1690();
    sub_17AA4(a4, v48, &qword_283810, &unk_20EAE0);
    sub_17AA4(v41, v46, &qword_28F680, &qword_211040);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v25 = v51;
    *(v24 + 24) = v50;
    *(v24 + 40) = v25;
    v26 = v53;
    *(v24 + 56) = v52;
    *(v24 + 72) = v26;
    *(v24 + 88) = v20;
    v27 = v48[1];
    *(v24 + 96) = v48[0];
    *(v24 + 112) = v27;
    v28 = v42;
    *(v24 + 128) = v49;
    *(v24 + 136) = v28;
    v29 = v46[0];
    v30 = v46[1];
    *(v24 + 176) = v47;
    *(v24 + 144) = v29;
    *(v24 + 160) = v30;
    v41 = v23;
    sub_B4464(&v50, v45);

    sub_1E16B0();
    v31 = v44;
    v32 = v43;
    sub_1E1670();
    sub_3D68(&qword_28F688, &qword_211048);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1E7EA0;
    *(v33 + 56) = v16;
    *(v33 + 64) = &protocol witness table for ClosureAction;
    v34 = sub_16305C((v33 + 32));
    (*(v17 + 16))(v34, v19, v16);
    *(v33 + 96) = a7;
    *(v33 + 104) = v32;
    v35 = sub_16305C((v33 + 72));
    (*(*(a7 - 8) + 16))(v35, v31, a7);
    a9[3] = sub_1E16E0();
    a9[4] = &protocol witness table for CompoundAction;
    sub_16305C(a9);
    sub_1E16D0();

    return (*(v17 + 8))(v19, v16);
  }

  else
  {
    v37 = v43;
    a9[3] = a7;
    a9[4] = v37;
    v38 = sub_16305C(a9);
    v39 = *(*(a7 - 8) + 16);
    v40 = v44;

    return v39(v38, v40, a7);
  }
}

void sub_1D9BCC(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = BATracker.copy()();
  if (v11)
  {
    v12 = v11;
    sub_17AA4(a4, v37, &qword_283810, &unk_20EAE0);
    sub_17AA4(a6, v35, &qword_28F680, &qword_211040);
    v13 = swift_allocObject();
    v14 = a2[1];
    *(v13 + 16) = *a2;
    *(v13 + 32) = v14;
    v15 = a2[3];
    *(v13 + 48) = a2[2];
    *(v13 + 64) = v15;
    *(v13 + 80) = a3;
    v16 = v37[1];
    *(v13 + 88) = v37[0];
    *(v13 + 104) = v16;
    *(v13 + 120) = v38;
    *(v13 + 128) = a5;
    v17 = v35[0];
    v18 = v35[1];
    *(v13 + 168) = v36;
    *(v13 + 152) = v18;
    *(v13 + 136) = v17;
    v19 = swift_allocObject();
    v19[1].super.isa = sub_1DA018;
    *v19[1].dataProviders = v13;
    sub_B4464(a2, &v34);

    sub_1E10C0();
    v13, v20, v21, v22, v23, v24, v25, v26;

    v19, v27, v28, v29, v30, v31, v32, v33;
  }
}

uint64_t sub_1D9D50()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 56), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 80), v15, v16, v17, v18, v19, v20, v21;
  *(v0 + 88), v22, v23, v24, v25, v26, v27, v28;
  if (*(v0 + 120))
  {
    sub_4E48((v0 + 96), v29, v30, v31, v32, v33, v34, v35);
  }

  *(v0 + 136), v29, v30, v31, v32, v33, v34, v35;
  if (*(v0 + 168))
  {
    sub_4E48((v0 + 144), v36, v37, v38, v39, v40, v41, v42);
  }

  return _swift_deallocObject(v0, 184, 7);
}

void sub_1D9E00(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v6 = sub_1E0CB0();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E9970;
  (*(v7 + 104))(v9 + v8, enum case for DataEventTrait.onlyOnce(_:), v6);
  sub_1B4058();
  sub_1E0C00();
  v9, v10, v11, v12, v13, v14, v15, v16;
  sub_1C078C(a1, a4, 0, 1, sub_1DA128);
}

uint64_t sub_1D9FA0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 48), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 72), v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 80), v23, v24, v25, v26, v27, v28, v29;
  if (*(v8 + 112))
  {
    sub_4E48((v8 + 88), v30, v31, v32, v33, v34, v35, v36);
  }

  *(v8 + 128), v30, v31, v32, v33, v34, v35, v36;
  if (*(v8 + 160))
  {
    sub_4E48((v8 + 136), v37, v38, v39, v40, v41, v42, v43);
  }

  return _swift_deallocObject(v8, 176, 7);
}

uint64_t sub_1DA030(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_1DA068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = (a1 + 32);
    do
    {
      sub_1DA134(v7, a3, a4);
      v7 += 6;
      --v4;
    }

    while (v4);
  }

  type metadata accessor for ClickEvent(0);
  sub_1DA5BC();
  memset(v9, 0, 32);
  sub_1E0C10();
  return sub_18E48(v9, &unk_281B50, &unk_1EDD70);
}

void sub_1DA134(void *a1, uint64_t a2, uint64_t a3)
{
  sub_E9C4C(a1, v71);
  sub_3D68(&qword_285BB0, &qword_20EAA0);
  sub_3D68(&qword_28EBA0, &qword_20EAB8);
  if (swift_dynamicCast())
  {
    sub_7EE7C(&v68, v72);
    sub_17AA4(a2, &v68, &qword_283810, &unk_20EAE0);
    if (*(&v69 + 1))
    {
      sub_7EE7C(&v68, v71);
      sub_17AA4(a3, &v65, &qword_28F680, &qword_211040);
      if (*(&v66 + 1))
      {
        v68 = v65;
        v69 = v66;
        v70 = v67;
        v13 = v73;
        v14 = v74;
        v15 = sub_48B8(v72, v73);
        v75 = &v64;
        v64 = *(v13 - 8);
        __chkstk_darwin(v15);
        v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v14 + 24))(&v68, v71, v13, v14);
        sub_3D68(&qword_2828D0, &unk_1FD120);
        v18 = sub_1E0CB0();
        v19 = *(v18 - 8);
        v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1E9970;
        (*(v19 + 104))(v21 + v20, enum case for DataEventTrait.onlyOnce(_:), v18);
        sub_1E0C00();
        v21, v22, v23, v24, v25, v26, v27, v28;
        (*(v64 + 8))(v17, v13);
        sub_A7F4(&v68);
        sub_4E48(v71, v29, v30, v31, v32, v33, v34, v35);
        sub_4E48(v72, v36, v37, v38, v39, v40, v41, v42);
        return;
      }

      sub_4E48(v71, v6, v7, v8, v9, v10, v11, v12);
      v43 = &qword_28F680;
      v44 = &qword_211040;
      v45 = &v65;
    }

    else
    {
      v43 = &qword_283810;
      v44 = &unk_20EAE0;
      v45 = &v68;
    }

    sub_18E48(v45, v43, v44);
    sub_4E48(v72, v46, v47, v48, v49, v50, v51, v52);
  }

  else
  {
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    sub_18E48(&v68, &qword_28EBA8, &qword_20EAC0);
  }

  sub_48B8(a1, a1[3]);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v53 = sub_1E0CB0();
  v54 = *(v53 - 8);
  v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1E9970;
  (*(v54 + 104))(v56 + v55, enum case for DataEventTrait.onlyOnce(_:), v53);
  sub_1E0C00();
  v56, v57, v58, v59, v60, v61, v62, v63;
}

unint64_t sub_1DA5BC()
{
  result = qword_28E278;
  if (!qword_28E278)
  {
    v3 = type metadata accessor for ClickEvent(255);
    result = swift_getWitnessTable(protocol conformance descriptor for ClickEvent, v3, v0, v1);
    atomic_store(result, &qword_28E278);
  }

  return result;
}

uint64_t DislikeEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DislikeEvent(0) + 20);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DislikeEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DislikeEvent(0) + 20);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DislikeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DislikeEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DislikeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DislikeEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DislikeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for DislikeEvent(0);
  v5 = *(v4 + 20);
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = *(v4 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v8, v2, v9);
}

uint64_t DislikeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DislikeEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DislikeEvent.Model.init(contentData:suggestionData:eventData:)@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v7;
  v8 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v8;
  v9 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v9;
  *(a4 + 96) = v6;
  v10 = *(type metadata accessor for DislikeEvent.Model(0) + 24);
  v11 = sub_1E1150();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t sub_1DAC20(uint64_t a1)
{
  v2 = sub_1DAF30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DAC5C(uint64_t a1)
{
  v2 = sub_1DAF30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DislikeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28F6C0, &qword_211050);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-v6];
  sub_48B8(a1, a1[3]);
  sub_1DAF30();
  sub_1E1E00();
  v8 = v2[2];
  v9 = v2[4];
  v34 = v2[3];
  v35 = v9;
  v10 = v2[4];
  v36 = v2[5];
  v11 = *v2;
  v12 = v2[2];
  v32 = v2[1];
  v33 = v12;
  v13 = *v2;
  v28 = v34;
  v29 = v10;
  v30 = v2[5];
  v31 = v13;
  v25 = v11;
  v26 = v32;
  v27 = v8;
  v24 = 0;
  sub_13A5C(&v31, &v18);
  sub_143D0();
  v14 = v37;
  sub_1E1CF0();
  if (v14)
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_14424(&v18);
  }

  else
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_14424(&v18);
    v17 = *(v2 + 96);
    v16[14] = 1;
    sub_284F8();
    sub_1E1C80();
    type metadata accessor for DislikeEvent.Model(0);
    v17 = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1DAF30()
{
  result = qword_28F6C8;
  if (!qword_28F6C8)
  {
    result = swift_getWitnessTable(aI_22, &type metadata for DislikeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F6C8);
  }

  return result;
}

void DislikeEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_1E1150();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_3D68(&qword_28F6D0, &qword_211058);
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = &v33 - v7;
  v9 = type metadata accessor for DislikeEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v38 = a1;
  sub_48B8(a1, v12);
  sub_1DAF30();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v38, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v33 = v9;
    v20 = v36;
    v21 = v6;
    v47 = 0;
    sub_14CB8();
    v22 = v37;
    sub_1E1C20();
    v23 = v43;
    *(v11 + 2) = v42;
    *(v11 + 3) = v23;
    v24 = v45;
    *(v11 + 4) = v44;
    *(v11 + 5) = v24;
    v25 = v41;
    *v11 = v40;
    *(v11 + 1) = v25;
    v46 = 1;
    sub_28F9C();
    sub_1E1BB0();
    v11[96] = v39[0];
    LOBYTE(v39[0]) = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v8, v22);
    (*(v34 + 32))(&v11[*(v33 + 24)], v21, v4);
    sub_1DB37C(v11, v35);
    sub_4E48(v38, v26, v27, v28, v29, v30, v31, v32);
    sub_1DB3E0(v11);
  }
}

uint64_t sub_1DB37C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DislikeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB3E0(uint64_t a1)
{
  v2 = type metadata accessor for DislikeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1DB668(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1DB7EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DB8AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1DB964()
{
  result = qword_28F808;
  if (!qword_28F808)
  {
    result = swift_getWitnessTable(byte_2111E8, &type metadata for DislikeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F808);
  }

  return result;
}

unint64_t sub_1DB9BC()
{
  result = qword_28F810;
  if (!qword_28F810)
  {
    result = swift_getWitnessTable(byte_211158, &type metadata for DislikeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F810);
  }

  return result;
}

unint64_t sub_1DBA14()
{
  result = qword_28F818;
  if (!qword_28F818)
  {
    result = swift_getWitnessTable(byte_211180, &type metadata for DislikeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F818);
  }

  return result;
}

BookAnalytics::AudioPlaybackSpeedData __swiftcall AudioPlaybackSpeedData.init(playbackSpeed:previousPlaybackSpeed:)(Swift::Float playbackSpeed, Swift::Float previousPlaybackSpeed)
{
  *v2 = playbackSpeed;
  v2[1] = previousPlaybackSpeed;
  result.previousPlaybackSpeed = previousPlaybackSpeed;
  result.playbackSpeed = playbackSpeed;
  return result;
}

unint64_t sub_1DBA9C()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD00000000000001ELL;
  }
}

void sub_1DBAD8(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v11 = 0x80000000002179C0;
  v12 = a1 == 0xD00000000000001ELL && 0x80000000002179C0 == a2;
  if (v12 || (sub_1E1D30() & 1) != 0)
  {
    a2, v11, a3, a4, a5, a6, a7, a8;
    v14 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000000002179E0 == a2)
  {
    a2, 0x80000000002179E0, a3, a4, a5, a6, a7, a8;
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

uint64_t sub_1DBBBC(uint64_t a1)
{
  v2 = sub_1DBDBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DBBF8(uint64_t a1)
{
  v2 = sub_1DBDBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScrollData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28F820, &qword_211260);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_48B8(a1, a1[3]);
  sub_1DBDBC();
  sub_1E1E00();
  v8[15] = 0;
  sub_1E1CE0();
  if (!v1)
  {
    v8[14] = 1;
    sub_1E1CE0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DBDBC()
{
  result = qword_28F828;
  if (!qword_28F828)
  {
    result = swift_getWitnessTable(aE_20, &type metadata for ScrollData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F828);
  }

  return result;
}

void ScrollData.init(from:)(BAEventReporter **a1@<X0>, float *a2@<X8>)
{
  v5 = sub_3D68(&qword_28F830, &qword_211268);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_48B8(a1, a1[3]);
  sub_1DBDBC();
  sub_1E1DF0();
  if (!v2)
  {
    v22 = 0;
    sub_1E1C10();
    v17 = v16;
    v21 = 1;
    sub_1E1C10();
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
    *(a2 + 1) = v19;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t getEnumTagSinglePayload for ScrollData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScrollData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1DC05C()
{
  result = qword_28F838;
  if (!qword_28F838)
  {
    result = swift_getWitnessTable(asc_21140C, &type metadata for ScrollData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F838);
  }

  return result;
}

unint64_t sub_1DC0B4()
{
  result = qword_28F840;
  if (!qword_28F840)
  {
    result = swift_getWitnessTable(byte_21137C, &type metadata for ScrollData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F840);
  }

  return result;
}

unint64_t sub_1DC10C()
{
  result = qword_28F848;
  if (!qword_28F848)
  {
    result = swift_getWitnessTable(byte_2113A4, &type metadata for ScrollData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F848);
  }

  return result;
}

_BYTE *MessageData.init(messageType:messageIdentifier:hasActionable:actionIdentifier:placementName:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = *result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

unint64_t sub_1DC190()
{
  v1 = *v0;
  v2 = 0x546567617373656DLL;
  v3 = 0x6F69746341736168;
  v4 = 0x6E656D6563616C70;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DC250@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1DCD04(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1DC278(uint64_t a1)
{
  v2 = sub_1DCA44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DC2B4(uint64_t a1)
{
  v2 = sub_1DCA44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MessageData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28F850, &qword_211488);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v16 = *(v1 + 2);
  v17 = v9;
  v15 = v1[24];
  v10 = *(v1 + 4);
  v13[2] = *(v1 + 5);
  v14 = v10;
  v13[1] = *(v1 + 6);
  sub_48B8(a1, a1[3]);
  sub_1DCA44();
  sub_1E1E00();
  v24 = v8;
  v23 = 0;
  sub_1DCA98();
  sub_1E1CF0();
  if (!v2)
  {
    v11 = v14;
    v22 = 1;
    sub_1E1C50();
    v21 = 2;
    sub_1E1CC0();
    v18 = v11;
    v20 = 3;
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    sub_6E7F0(&qword_281190, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1E1C80();
    v19 = 4;
    sub_1E1CB0();
  }

  return (*(v5 + 8))(v7, v4);
}

void MessageData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28F868, &qword_211490);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v54 - v7;
  sub_48B8(a1, a1[3]);
  sub_1DCA44();
  sub_1E1DF0();
  if (v2)
  {
    v27 = 0;
    v26 = 0;
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v63 = 0;
    sub_1DCAEC();
    sub_1E1C20();
    v16 = v64;
    v62 = 1;
    v17 = sub_1E1B80();
    v26 = v25;
    v57 = v17;
    v61 = 2;
    v56 = sub_1E1BF0();
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    v60 = 3;
    sub_6E7F0(&qword_2811B8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1E1BB0();
    v55 = v16;
    v27 = v58;
    v59 = 4;
    v28 = sub_1E1BE0();
    v30 = v29;
    v56 &= 1u;
    v31 = *(v6 + 8);
    v54 = v28;
    v31(v8, v5);
    *a2 = v55;
    *(a2 + 8) = v57;
    *(a2 + 16) = v26;
    *(a2 + 24) = v56;
    v32 = v54;
    *(a2 + 32) = v27;
    *(a2 + 40) = v32;
    *(a2 + 48) = v30;

    sub_4E48(a1, v33, v34, v35, v36, v37, v38, v39);
    v30, v40, v41, v42, v43, v44, v45, v46;
  }

  v27, v47, v48, v49, v50, v51, v52, v53;
  v26, v18, v19, v20, v21, v22, v23, v24;
}

uint64_t _s13BookAnalytics11MessageDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v13 = *(a2 + 1);
  v12 = *(a2 + 2);
  v14 = a2[24];
  v16 = *(a2 + 4);
  v15 = *(a2 + 5);
  v17 = *(a2 + 6);
  if ((sub_24878(*a1, *a2, a3, a4, a5, a6, a7, a8) & 1) == 0)
  {
    return 0;
  }

  if (!v9)
  {
    result = 0;
    if (v12)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (!v12)
  {
    return 0;
  }

  if (v8 != v13 || v9 != v12)
  {
    v19 = sub_1E1D30();
    result = 0;
    if ((v19 & 1) == 0)
    {
      return result;
    }

LABEL_11:
    if ((v10 ^ v14))
    {
      return result;
    }

    goto LABEL_12;
  }

  if (v10 != v14)
  {
    return 0;
  }

LABEL_12:
  if (!v11)
  {
    if (!v16)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (!v16 || (sub_5C5F8(v11, v16) & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  if (v20 == v15 && v21 == v17)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_1DCA44()
{
  result = qword_28F858;
  if (!qword_28F858)
  {
    result = swift_getWitnessTable(byte_211688, &type metadata for MessageData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F858);
  }

  return result;
}

unint64_t sub_1DCA98()
{
  result = qword_28F860;
  if (!qword_28F860)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageType, &type metadata for MessageType, v0, v1);
    atomic_store(result, &qword_28F860);
  }

  return result;
}

unint64_t sub_1DCAEC()
{
  result = qword_28F870;
  if (!qword_28F870)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageType, &type metadata for MessageType, v0, v1);
    atomic_store(result, &qword_28F870);
  }

  return result;
}

uint64_t sub_1DCB48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DCB90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DCC00()
{
  result = qword_28F878;
  if (!qword_28F878)
  {
    result = swift_getWitnessTable(asc_211660, &type metadata for MessageData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F878);
  }

  return result;
}

unint64_t sub_1DCC58()
{
  result = qword_28F880;
  if (!qword_28F880)
  {
    result = swift_getWitnessTable(aQ_21, &type metadata for MessageData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F880);
  }

  return result;
}

unint64_t sub_1DCCB0()
{
  result = qword_28F888;
  if (!qword_28F888)
  {
    result = swift_getWitnessTable(a9_9, &type metadata for MessageData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F888);
  }

  return result;
}

uint64_t sub_1DCD04(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000657079;
  v11 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0x8000000000217A00;
    if (a1 == 0xD000000000000011 && 0x8000000000217A00 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0xED0000656C62616ELL;
      if (a1 == 0x6F69746341736168 && a2 == 0xED0000656C62616ELL || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v15 = 0x8000000000217A20;
        if (a1 == 0xD000000000000010 && 0x8000000000217A20 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else if (a1 == 0x6E656D6563616C70 && a2 == 0xED0000656D614E74)
        {
          0xED0000656D614E74, 0xED0000656D614E74, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else
        {
          v16 = sub_1E1D30();
          a2, v17, v18, v19, v20, v21, v22, v23;
          if (v16)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1DCED8()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x6B63616279616C70;
  }
}

void sub_1DCF24(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0xED00006465657053;
  v13 = a1 == 0x6B63616279616C70 && a2 == 0xED00006465657053;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v14 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000000217A40 == a2)
  {
    a2, 0x8000000000217A40, a3, a4, a5, a6, a7, a8;
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

uint64_t sub_1DD010(uint64_t a1)
{
  v2 = sub_1DD210();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DD04C(uint64_t a1)
{
  v2 = sub_1DD210();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AudioPlaybackSpeedData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28F890, &qword_2116E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_48B8(a1, a1[3]);
  sub_1DD210();
  sub_1E1E00();
  v8[15] = 0;
  sub_1E1CE0();
  if (!v1)
  {
    v8[14] = 1;
    sub_1E1CE0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DD210()
{
  result = qword_28F898;
  if (!qword_28F898)
  {
    result = swift_getWitnessTable(byte_2118BC, &type metadata for AudioPlaybackSpeedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F898);
  }

  return result;
}

void AudioPlaybackSpeedData.init(from:)(BAEventReporter **a1@<X0>, float *a2@<X8>)
{
  v5 = sub_3D68(&qword_28F8A0, &qword_2116E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_48B8(a1, a1[3]);
  sub_1DD210();
  sub_1E1DF0();
  if (!v2)
  {
    v22 = 0;
    sub_1E1C10();
    v17 = v16;
    v21 = 1;
    sub_1E1C10();
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
    *(a2 + 1) = v19;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_1DD468()
{
  result = qword_28F8A8;
  if (!qword_28F8A8)
  {
    result = swift_getWitnessTable(aS_1, &type metadata for AudioPlaybackSpeedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F8A8);
  }

  return result;
}

unint64_t sub_1DD4C0()
{
  result = qword_28F8B0;
  if (!qword_28F8B0)
  {
    result = swift_getWitnessTable(byte_211804, &type metadata for AudioPlaybackSpeedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F8B0);
  }

  return result;
}

unint64_t sub_1DD518()
{
  result = qword_28F8B8;
  if (!qword_28F8B8)
  {
    result = swift_getWitnessTable(byte_21182C, &type metadata for AudioPlaybackSpeedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F8B8);
  }

  return result;
}

unint64_t sub_1DD570()
{
  if (*v0)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return 0xD000000000000020;
  }
}

void sub_1DD5AC(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0x8000000000217A60;
  v13 = a1 == 0xD000000000000020 && 0x8000000000217A60 == a2;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v14 = 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000000216E80 == a2)
  {
    a2, 0x8000000000216E80, a3, a4, a5, a6, a7, a8;
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

uint64_t sub_1DD68C(uint64_t a1)
{
  v2 = sub_1DDBE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DD6C8(uint64_t a1)
{
  v2 = sub_1DDBE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CellularData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28F8C0, &qword_211910);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  sub_48B8(a1, a1[3]);
  sub_1DDBE8();
  sub_1E1E00();
  v15 = v8;
  v14 = 0;
  sub_144EF4();
  sub_1E1CF0();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

void CellularData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28F8D0, &qword_211918);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_48B8(a1, a1[3]);
  sub_1DDBE8();
  sub_1E1DF0();
  if (!v2)
  {
    v21 = 0;
    sub_145098();
    sub_1E1C20();
    v16 = v22;
    v19 = 1;
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    v17 = v20;
    *a2 = v16;
    a2[1] = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t _s13BookAnalytics12CellularDataV2eeoiySbAC_ACtFZ_0()
{
  v0 = CellularRadioAccessTechnology.rawValue.getter();
  v2 = v1;
  v3 = CellularRadioAccessTechnology.rawValue.getter();
  v11 = v4;
  if (v0 == v3 && v2 == v4)
  {
    v2, v4, v5, v6, v7, v8, v9, v10;
    v11, v29, v30, v31, v32, v33, v34, v35;
  }

  else
  {
    v13 = sub_1E1D30();
    v2, v14, v15, v16, v17, v18, v19, v20;
    v11, v21, v22, v23, v24, v25, v26, v27;
    v28 = 0;
    if ((v13 & 1) == 0)
    {
      return v28 & 1;
    }
  }

  v36 = CellularRadioAccessTechnology.rawValue.getter();
  v38 = v37;
  v40 = CellularRadioAccessTechnology.rawValue.getter();
  v46 = v39;
  if (v36 == v40 && v38 == v39)
  {
    v28 = 1;
  }

  else
  {
    v28 = sub_1E1D30();
  }

  v38, v39, v40, v41, v42, v43, v44, v45;
  v46, v47, v48, v49, v50, v51, v52, v53;
  return v28 & 1;
}

unint64_t sub_1DDBE8()
{
  result = qword_28F8C8;
  if (!qword_28F8C8)
  {
    result = swift_getWitnessTable(byte_211AE8, &type metadata for CellularData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F8C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CellularData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 65295 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65295 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65295;
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

      return (*a1 | (v4 << 16)) - 65295;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65295;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for CellularData(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65295 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65295 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 16) + 1;
    *result = a2 - 241;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DDDAC()
{
  result = qword_28F8D8;
  if (!qword_28F8D8)
  {
    result = swift_getWitnessTable(byte_211AC0, &type metadata for CellularData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F8D8);
  }

  return result;
}

unint64_t sub_1DDE04()
{
  result = qword_28F8E0;
  if (!qword_28F8E0)
  {
    result = swift_getWitnessTable(byte_211A30, &type metadata for CellularData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F8E0);
  }

  return result;
}

unint64_t sub_1DDE5C()
{
  result = qword_28F8E8;
  if (!qword_28F8E8)
  {
    result = swift_getWitnessTable(aB_0, &type metadata for CellularData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F8E8);
  }

  return result;
}

BookAnalytics::OsInstallVariant_optional __swiftcall OsInstallVariant.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_262508;
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

uint64_t OsInstallVariant.rawValue.getter()
{
  v1 = 0x6C616E7265746E69;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747865;
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

uint64_t sub_1DDF5C(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6C616E7265746E69;
  v9 = *a1;
  if (v9 == 1)
  {
    v10 = 0x6C616E7265746E69;
  }

  else
  {
    v10 = 0x6C616E7265747865;
  }

  if (*a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6E776F6E6B6E75;
  }

  if (v9)
  {
    v12 = 0xE800000000000000;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v8 = 0x6C616E7265747865;
  }

  if (*a2)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v14 = 0xE800000000000000;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  if (v11 == v13 && v12 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1E1D30();
  }

  v12, a2, v13, a4, a5, a6, a7, a8;
  v14, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

unint64_t sub_1DE038()
{
  result = qword_28F8F0;
  if (!qword_28F8F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OsInstallVariant, &type metadata for OsInstallVariant, v0, v1);
    atomic_store(result, &qword_28F8F0);
  }

  return result;
}

Swift::Int sub_1DE08C()
{
  v1 = *v0;
  sub_1E1DC0();
  if (v1)
  {
    v2 = 0xE800000000000000;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  sub_1E17D0();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1E1DE0();
}

void sub_1DE124(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE800000000000000;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  sub_1E17D0();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_1DE1A8(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  if (v2)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_1DE248(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C616E7265746E69;
  if (v2 != 1)
  {
    v4 = 0x6C616E7265747865;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1DE35C()
{
  result = qword_28F8F8;
  if (!qword_28F8F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OsInstallVariant, &type metadata for OsInstallVariant, v0, v1);
    atomic_store(result, &qword_28F8F8);
  }

  return result;
}

void __swiftcall SectionData.init(sectionType:exposureIndex:name:cellSize:componentContained:subSectionID:subSectionName:subSectionPosition:sectionID:)(BookAnalytics::SectionData *__return_ptr retstr, BookAnalytics::SectionType sectionType, Swift::Int32 exposureIndex, Swift::String name, Swift::String cellSize, Swift::String componentContained, Swift::String_optional subSectionID, Swift::String_optional subSectionName, Swift::Int32_optional subSectionPosition, Swift::String sectionID)
{
  retstr->sectionType = *sectionType;
  retstr->exposureIndex = exposureIndex;
  retstr->name = name;
  retstr->cellSize = cellSize;
  retstr->componentContained = componentContained;
  retstr->subSectionID = subSectionID;
  retstr->subSectionName = subSectionName;
  retstr->subSectionPosition.value = subSectionPosition.value;
  retstr->subSectionPosition.is_nil = subSectionPosition.is_nil;
  retstr->sectionID = sectionID;
}

unint64_t sub_1DE3F8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x546E6F6974636573;
    v6 = 1701667182;
    if (a1 != 2)
    {
      v6 = 0x657A69536C6C6563;
    }

    if (a1)
    {
      v5 = 0x657275736F707865;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6974636553627573;
    v2 = 0xD000000000000012;
    if (a1 != 7)
    {
      v2 = 0x496E6F6974636573;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    if (a1 != 4)
    {
      v3 = 0x6974636553627573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1DE548@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1DF478(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1DE570(uint64_t a1)
{
  v2 = sub_1DF184();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DE5AC(uint64_t a1)
{
  v2 = sub_1DF184();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SectionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28F900, &qword_211C60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - v5;
  v7 = *v1;
  v33 = *(v1 + 1);
  v8 = *(v1 + 1);
  v31 = *(v1 + 2);
  v32 = v8;
  v9 = *(v1 + 3);
  v29 = *(v1 + 4);
  v30 = v9;
  v10 = *(v1 + 6);
  v27 = *(v1 + 5);
  v28 = v10;
  v11 = *(v1 + 8);
  v25 = *(v1 + 7);
  v26 = v11;
  v12 = *(v1 + 10);
  v23 = *(v1 + 9);
  v24 = v12;
  v22 = *(v1 + 22);
  v21 = v1[92];
  v13 = *(v1 + 13);
  v14 = a1[3];
  v15 = a1;
  v17 = v16;
  sub_48B8(v15, v14);
  sub_1DF184();
  sub_1E1E00();
  v45 = v7;
  v44 = 0;
  sub_1DF1D8();
  v18 = v34;
  sub_1E1CF0();
  if (!v18)
  {
    v34 = v13;
    v43 = 1;
    sub_1E1D00();
    v42 = 2;
    sub_1E1CB0();
    v41 = 3;
    sub_1E1CB0();
    v40 = 4;
    sub_1E1CB0();
    v39 = 5;
    sub_1E1C50();
    v38 = 6;
    sub_1E1C50();
    v37 = 7;
    v36 = v21;
    sub_1E1C90();
    v35 = 8;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v6, v17);
}

void SectionData.init(from:)(BAEventReporter **a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_28F918, &qword_211C68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v58 - v7;
  sub_48B8(a1, a1[3]);
  sub_1DF184();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
    0, v18, v19, v20, v21, v22, v23, v24;
    0, v25, v26, v27, v28, v29, v30, v31;
  }

  else
  {
    LOBYTE(v71) = 0;
    sub_1DF22C();
    sub_1E1C20();
    v16 = v78[0];
    v78[0] = 1;
    v17 = sub_1E1C30();
    v78[0] = 2;
    v67 = sub_1E1BE0();
    v69 = v32;
    v78[0] = 3;
    v33 = sub_1E1BE0();
    v68 = v34;
    v64 = v33;
    v78[0] = 4;
    v66 = 0;
    v63 = sub_1E1BE0();
    v65 = v35;
    v78[0] = 5;
    v62 = sub_1E1B80();
    v61 = a2;
    v70 = v36;
    v78[0] = 6;
    v37 = sub_1E1B80();
    v39 = v38;
    v60 = v37;
    v78[0] = 7;
    v66 = sub_1E1BC0();
    v95 = BYTE4(v66) & 1;
    v96 = 8;
    v59 = sub_1E1BE0();
    v41 = v40;
    (*(v6 + 8))(v8, v5);
    LOBYTE(v71) = v16;
    DWORD1(v71) = v17;
    *(&v71 + 1) = v67;
    v42 = v69;
    *&v72 = v69;
    *(&v72 + 1) = v64;
    *&v73 = v68;
    *(&v73 + 1) = v63;
    *&v74 = v65;
    v43 = v70;
    *(&v74 + 1) = v62;
    *&v75 = v70;
    *(&v75 + 1) = v60;
    *&v76 = v39;
    DWORD2(v76) = v66;
    v94 = v95;
    BYTE12(v76) = v95;
    v44 = v59;
    *&v77 = v59;
    *(&v77 + 1) = v41;
    v45 = v72;
    v46 = v61;
    *v61 = v71;
    v46[1] = v45;
    v47 = v73;
    v48 = v74;
    v49 = v77;
    v50 = v75;
    v46[5] = v76;
    v46[6] = v49;
    v46[3] = v48;
    v46[4] = v50;
    v46[2] = v47;
    sub_274D4(&v71, v78);
    sub_4E48(a1, v51, v52, v53, v54, v55, v56, v57);
    v78[0] = v16;
    v79 = v17;
    v80 = v67;
    v81 = v42;
    v82 = v64;
    v83 = v68;
    v84 = v63;
    v85 = v65;
    v86 = v62;
    v87 = v43;
    v88 = v60;
    v89 = v39;
    v90 = v66;
    v91 = v94;
    v92 = v44;
    v93 = v41;
    sub_28354(v78);
  }
}

uint64_t _s13BookAnalytics11SectionDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *(a1 + 4);
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v39 = *(a1 + 48);
  v40 = *(a1 + 40);
  v32 = *(a1 + 56);
  v36 = *(a1 + 64);
  v27 = *(a1 + 72);
  v34 = *(a1 + 80);
  v24 = *(a1 + 88);
  v28 = *(a1 + 92);
  v13 = *(a2 + 1);
  v14 = *(a2 + 1);
  v15 = *(a2 + 2);
  v17 = *(a2 + 3);
  v16 = *(a2 + 4);
  v38 = *(a2 + 5);
  v37 = *(a2 + 6);
  v35 = *(a2 + 8);
  v30 = *(a2 + 9);
  v31 = *(a2 + 7);
  v33 = *(a2 + 10);
  v21 = *(a2 + 22);
  v29 = a2[92];
  v25 = *(a2 + 13);
  v26 = *(a2 + 12);
  v22 = *(a1 + 104);
  v23 = *(a1 + 96);
  v18 = sub_244E0(*a1, *a2, a3, a4, a5, a6, a7, a8);
  result = 0;
  if ((v18 & 1) == 0 || v8 != v13)
  {
    return result;
  }

  if ((v10 != v14 || v9 != v15) && (sub_1E1D30() & 1) == 0 || (v11 != v17 || v12 != v16) && (sub_1E1D30() & 1) == 0 || (v40 != v38 || v39 != v37) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v36)
  {
    if (!v35 || (v32 != v31 || v36 != v35) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  if (v34)
  {
    if (!v33 || (v27 != v30 || v34 != v33) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_26;
  }

  if (v33)
  {
    return 0;
  }

LABEL_26:
  if (v28)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    v20 = v29;
    if (v24 != v21)
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  if (v23 == v26 && v22 == v25)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_1DF184()
{
  result = qword_28F908;
  if (!qword_28F908)
  {
    result = swift_getWitnessTable(byte_211E88, &type metadata for SectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F908);
  }

  return result;
}

unint64_t sub_1DF1D8()
{
  result = qword_28F910;
  if (!qword_28F910)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionType, &type metadata for SectionType, v0, v1);
    atomic_store(result, &qword_28F910);
  }

  return result;
}

unint64_t sub_1DF22C()
{
  result = qword_28F920;
  if (!qword_28F920)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionType, &type metadata for SectionType, v0, v1);
    atomic_store(result, &qword_28F920);
  }

  return result;
}

__n128 sub_1DF288(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1DF2AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1DF2F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DF374()
{
  result = qword_28F928;
  if (!qword_28F928)
  {
    result = swift_getWitnessTable(asc_211E60, &type metadata for SectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F928);
  }

  return result;
}

unint64_t sub_1DF3CC()
{
  result = qword_28F930;
  if (!qword_28F930)
  {
    result = swift_getWitnessTable(aQ_22, &type metadata for SectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F930);
  }

  return result;
}

unint64_t sub_1DF424()
{
  result = qword_28F938;
  if (!qword_28F938)
  {
    result = swift_getWitnessTable(a9_10, &type metadata for SectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28F938);
  }

  return result;
}

uint64_t sub_1DF478(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000657079;
  v11 = a1 == 0x546E6F6974636573 && a2 == 0xEB00000000657079;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0xED00007865646E49;
    if (a1 == 0x657275736F707865 && a2 == 0xED00007865646E49 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x657A69536C6C6563 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else
    {
      v14 = 0x8000000000217A90;
      if (a1 == 0xD000000000000012 && 0x8000000000217A90 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 4;
      }

      else
      {
        v15 = 0xEC00000044496E6FLL;
        if (a1 == 0x6974636553627573 && a2 == 0xEC00000044496E6FLL || (sub_1E1D30() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 5;
        }

        else
        {
          v16 = 0xEE00656D614E6E6FLL;
          if (a1 == 0x6974636553627573 && a2 == 0xEE00656D614E6E6FLL || (sub_1E1D30() & 1) != 0)
          {
            a2, v16, a3, a4, a5, a6, a7, a8;
            return 6;
          }

          else
          {
            v17 = 0x8000000000213FD0;
            if (a1 == 0xD000000000000012 && 0x8000000000213FD0 == a2 || (sub_1E1D30() & 1) != 0)
            {
              a2, v17, a3, a4, a5, a6, a7, a8;
              return 7;
            }

            else if (a1 == 0x496E6F6974636573 && a2 == 0xE900000000000044)
            {
              0xE900000000000044, v17, a3, a4, a5, a6, a7, a8;
              return 8;
            }

            else
            {
              v18 = sub_1E1D30();
              a2, v19, v20, v21, v22, v23, v24, v25;
              if (v18)
              {
                return 8;
              }

              else
              {
                return 9;
              }
            }
          }
        }
      }
    }
  }
}

void sub_1DF780(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 4u)
  {
    v6 = 0xEF646165526F5474;
    v7 = 0xE600000000000000;
    v8 = 0xE300000000000000;
    if (a2 != 3)
    {
      v8 = 0xE600000000000000;
    }

    if (a2 != 2)
    {
      v7 = v8;
    }

    if (a2)
    {
      v6 = 0xEB00000000656C70;
    }

    if (a2 <= 1u)
    {
      v5 = v6;
    }

    else
    {
      v5 = v7;
    }
  }

  else
  {
    v2 = 0xEA0000000000656CLL;
    v3 = 0xE600000000000000;
    if (a2 != 9)
    {
      v3 = 0x8000000000213310;
    }

    if (a2 != 8)
    {
      v2 = v3;
    }

    v4 = 0xE700000000000000;
    if (a2 != 5)
    {
      v4 = 0xE800000000000000;
    }

    if (a2 <= 7u)
    {
      v5 = v4;
    }

    else
    {
      v5 = v2;
    }
  }

  sub_1E17D0();

  v5, v9, v10, v11, v12, v13, v14, v15;
}

void sub_1DF918(uint64_t a1, unsigned __int8 a2)
{
  v2 = 0xE700000000000000;
  v3 = 0xE300000000000000;
  if (a2 != 6)
  {
    v3 = 0xE500000000000000;
  }

  v4 = 0xEA0000000000676ELL;
  if (a2 != 4)
  {
    v4 = 0xE900000000000068;
  }

  if (a2 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x80000000002130D0;
  if (a2 != 2)
  {
    v5 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0xE500000000000000;
  }

  if (a2 > 1u)
  {
    v2 = v5;
  }

  if (a2 <= 3u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  sub_1E17D0();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1DFA44(uint64_t a1, unsigned __int8 a2)
{
  v2 = 0xE700000000000000;
  v3 = 0xE300000000000000;
  if (a2 != 6)
  {
    v3 = 0x8000000000212960;
  }

  if (a2 <= 5u)
  {
    v3 = 0xED00006D72655464;
  }

  v4 = 0xE800000000000000;
  if (a2 != 2)
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0xE600000000000000;
  }

  if (a2 > 1u)
  {
    v2 = v4;
  }

  if (a2 <= 3u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  sub_1E17D0();

  v5, v6, v7, v8, v9, v10, v11, v12;
}

void sub_1DFB84(uint64_t a1, unsigned __int8 a2)
{
  v2 = 0xE700000000000000;
  v3 = 0xE700000000000000;
  if (a2 != 6)
  {
    v3 = 0xE700000000000000;
  }

  v4 = 0xEA00000000007365;
  if (a2 != 4)
  {
    v4 = 0xE700000000000000;
  }

  if (a2 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xE700000000000000;
  if (a2 != 2)
  {
    v5 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0xE600000000000000;
  }

  if (a2 > 1u)
  {
    v2 = v5;
  }

  if (a2 <= 3u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  sub_1E17D0();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1DFCB4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 4u)
  {
    v6 = 0xE700000000000000;
    v7 = 0xE500000000000000;
    v8 = 0xE400000000000000;
    if (a2 != 3)
    {
      v8 = 0xE500000000000000;
    }

    if (a2 != 2)
    {
      v7 = v8;
    }

    if (a2)
    {
      v6 = 0xE500000000000000;
    }

    if (a2 <= 1u)
    {
      v5 = v6;
    }

    else
    {
      v5 = v7;
    }
  }

  else
  {
    v2 = 0xE400000000000000;
    v3 = 0xE500000000000000;
    if (a2 != 9)
    {
      v3 = 0xE400000000000000;
    }

    if (a2 != 8)
    {
      v2 = v3;
    }

    v4 = 0xE800000000000000;
    if (a2 != 5)
    {
      v4 = 0xE500000000000000;
    }

    if (a2 <= 7u)
    {
      v5 = v4;
    }

    else
    {
      v5 = v2;
    }
  }

  sub_1E17D0();

  v5, v9, v10, v11, v12, v13, v14, v15;
}

void sub_1DFE14(uint64_t a1, unsigned __int8 a2)
{
  v2 = 0xE700000000000000;
  v3 = 0xEE00657361686372;
  if (a2 != 6)
  {
    v3 = 0xE700000000000000;
  }

  v4 = 0xE600000000000000;
  if (a2 != 4)
  {
    v4 = 0xEC00000065726F74;
  }

  if (a2 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xEA00000000006465;
  if (a2 != 2)
  {
    v5 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0xE900000000000064;
  }

  if (a2 > 1u)
  {
    v2 = v5;
  }

  if (a2 <= 3u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  sub_1E17D0();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1DFF5C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 3u)
  {
    v5 = 0x8000000000213460;
    if (a2 != 4)
    {
      v5 = 0x8000000000213480;
    }

    if (a2 <= 5u)
    {
      v4 = v5;
    }

    else
    {
      v4 = 0xED00006D72655464;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v3 = 0x8000000000213420;
    if (a2 != 2)
    {
      v3 = 0x8000000000213440;
    }

    if (a2)
    {
      v2 = 0xEF7061546E6F7474;
    }

    if (a2 <= 1u)
    {
      v4 = v2;
    }

    else
    {
      v4 = v3;
    }
  }

  sub_1E17D0();

  v4, v6, v7, v8, v9, v10, v11, v12;
}

void sub_1E00C4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    v6 = 0xE700000000000000;
    v7 = 0xED00007061546E65;
    if (a2 != 2)
    {
      v7 = 0xEA00000000006863;
    }

    if (a2)
    {
      v6 = 0xEC0000006B6E694CLL;
    }

    if (a2 <= 1u)
    {
      v5 = v6;
    }

    else
    {
      v5 = v7;
    }
  }

  else
  {
    v2 = 0xEC0000006E6F6974;
    v3 = 0xE600000000000000;
    if (a2 != 7)
    {
      v3 = 0xE900000000000074;
    }

    if (a2 != 6)
    {
      v2 = v3;
    }

    v4 = 0x80000000002131C0;
    if (a2 != 4)
    {
      v4 = 0x80000000002131E0;
    }

    if (a2 <= 5u)
    {
      v5 = v4;
    }

    else
    {
      v5 = v2;
    }
  }

  sub_1E17D0();

  v5, v8, v9, v10, v11, v12, v13, v14;
}

void sub_1E0240(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 4u)
  {
    v6 = 0xEC0000006E6F6974;
    v7 = 0x8000000000213590;
    if (a2 != 8)
    {
      v7 = 0xEF726F7272457472;
    }

    if (a2 != 7)
    {
      v6 = v7;
    }

    v8 = 0xEB00000000737765;
    if (a2 != 5)
    {
      v8 = 0x8000000000213570;
    }

    if (a2 <= 6u)
    {
      v5 = v8;
    }

    else
    {
      v5 = v6;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v3 = 0xEF656C62616C6961;
    v4 = 0xEB00000000444965;
    if (a2 != 3)
    {
      v4 = 0xED0000656D616E6BLL;
    }

    if (a2 != 2)
    {
      v3 = v4;
    }

    if (a2)
    {
      v2 = 0x8000000000213520;
    }

    if (a2 <= 1u)
    {
      v5 = v2;
    }

    else
    {
      v5 = v3;
    }
  }

  sub_1E17D0();

  v5, v9, v10, v11, v12, v13, v14, v15;
}

BookAnalytics::DialogType_optional __swiftcall DialogType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_262570;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 10;
  if (v5 < 0xA)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

unint64_t DialogType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x6163696669746F6ELL;
    v7 = 0xD000000000000021;
    if (v1 != 8)
    {
      v7 = 0x6F53736569726573;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000015;
    if (v1 == 5)
    {
      v8 = 0x6976655274726F73;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0x76616E556B6F6F62;
    v4 = 0x6C70704177656976;
    if (v1 != 3)
    {
      v4 = 0x63694E7265746E65;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD000000000000013;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t sub_1E05DC()
{
  result = qword_28F940;
  if (!qword_28F940)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DialogType, &type metadata for DialogType, v0, v1);
    atomic_store(result, &qword_28F940);
  }

  return result;
}

Swift::Int sub_1E0630()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E0240(v3, v1);
  return sub_1E1DE0();
}

Swift::Int sub_1E0680(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  sub_1E0240(v4, v2);
  return sub_1E1DE0();
}

unint64_t sub_1E06D0@<X0>(unint64_t *a1@<X8>)
{
  result = DialogType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1E07B8()
{
  result = qword_28F948;
  if (!qword_28F948)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DialogType, &type metadata for DialogType, v0, v1);
    atomic_store(result, &qword_28F948);
  }

  return result;
}