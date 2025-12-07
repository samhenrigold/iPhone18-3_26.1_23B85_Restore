void sub_1041A8(uint64_t a1)
{
  v2 = 0xEC0000006E6F6974;
  if (*v1 != 1)
  {
    v2 = 0xEF6E6F6974637564;
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

Swift::Int sub_10424C(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xEC0000006E6F6974;
  if (v2 != 1)
  {
    v3 = 0xEF6E6F6974637564;
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

void sub_10430C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEC0000006E6F6974;
  v5 = 0x6375646F72506773;
  if (v2 != 1)
  {
    v5 = 0x6F725047536E6F6ELL;
    v4 = 0xEF6E6F6974637564;
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

unint64_t sub_104440()
{
  result = qword_286C08;
  if (!qword_286C08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProductionType, &type metadata for ProductionType, v0, v1);
    atomic_store(result, &qword_286C08);
  }

  return result;
}

uint64_t sub_104494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_104928();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.tracker.getter()
{
  sub_104534();
  sub_1E1490();
  return v1;
}

unint64_t sub_104534()
{
  result = qword_286C10;
  if (!qword_286C10)
  {
    result = swift_getWitnessTable(byte_1FAD44, &type metadata for TrackerKey, v0, v1);
    atomic_store(result, &qword_286C10);
  }

  return result;
}

void *sub_104588@<X0>(void *a1@<X8>)
{
  sub_104534();
  result = sub_1E1490();
  *a1 = v3;
  return result;
}

uint64_t sub_1045D8(id *a1)
{
  v1 = *a1;
  sub_104534();
  v2 = v1;
  return sub_1E14A0();
}

void (*EnvironmentValues.tracker.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_104534();
  sub_1E1490();
  return sub_1046D0;
}

void sub_1046D0(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    sub_1E14A0();
    v5 = *a1;
  }

  else
  {
    sub_1E14A0();
  }
}

void View.tracker(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v5 = a1;
  sub_1E1500();

  KeyPath, v6, v7, v8, v9, v10, v11, v12;
}

void *sub_1047E8@<X0>(void *a1@<X8>)
{
  sub_104534();
  result = sub_1E1490();
  *a1 = v3;
  return result;
}

uint64_t sub_10483C(uint64_t *a1)
{
  v1 = a1[1];
  sub_5DE50(&qword_286C18, &qword_1FAD30);
  v2 = sub_1E1440();
  v4[0] = v1;
  v4[1] = sub_1048B4();
  return swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
}

unint64_t sub_1048B4()
{
  result = qword_286C20;
  if (!qword_286C20)
  {
    v3 = sub_5DE50(&qword_286C18, &qword_1FAD30);
    result = swift_getWitnessTable(&protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>, v3, v0, v1);
    atomic_store(result, &qword_286C20);
  }

  return result;
}

unint64_t sub_104928()
{
  result = qword_286C28;
  if (!qword_286C28)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_5DE50(&qword_286C30, &qword_210090);
    v4[0] = sub_1049AC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_286C28);
  }

  return result;
}

unint64_t sub_1049AC()
{
  result = qword_286C38;
  if (!qword_286C38)
  {
    v3 = type metadata accessor for BATracker();
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v3, v0, v1);
    atomic_store(result, &qword_286C38);
  }

  return result;
}

BookAnalytics::DoNotDisturbStatus_optional __swiftcall DoNotDisturbStatus.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260EE8;
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

unint64_t sub_104A64()
{
  result = qword_286C40;
  if (!qword_286C40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DoNotDisturbStatus, &type metadata for DoNotDisturbStatus, v0, v1);
    atomic_store(result, &qword_286C40);
  }

  return result;
}

unint64_t sub_104B84()
{
  result = qword_286C48;
  if (!qword_286C48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DoNotDisturbStatus, &type metadata for DoNotDisturbStatus, v0, v1);
    atomic_store(result, &qword_286C48);
  }

  return result;
}

uint64_t ScrubEvent.readingSettingsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScrubEvent(0) + 20);
  v4 = sub_3D68(&qword_280D68, &qword_1EBF28);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ScrubEvent.readingSettingsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ScrubEvent(0) + 20);
  v4 = sub_3D68(&qword_280D68, &qword_1EBF28);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ScrubEvent.scrubData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScrubEvent(0) + 24);
  v4 = sub_3D68(&qword_286C80, &qword_1FAEA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ScrubEvent.scrubData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ScrubEvent(0) + 24);
  v4 = sub_3D68(&qword_286C80, &qword_1FAEA0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ScrubEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScrubEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ScrubEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ScrubEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ScrubEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ScrubEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_280D68, &qword_1EBF28);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_286C80, &qword_1FAEA0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t ScrubEvent.Model.readingSettingsData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 98);
  v4 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 2) = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 120);
}

double ScrubEvent.Model.scrubData.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  result = *(v1 + 128);
  *a1 = result;
  *(a1 + 8) = v2;
  return result;
}

uint64_t ScrubEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScrubEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ScrubEvent.Model.init(contentData:readingSettingsData:scrubData:eventData:)@<X0>(_OWORD *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *(a3 + 8);
  v12 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v12;
  v13 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v13;
  v14 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v14;
  *(a5 + 96) = v7;
  *(a5 + 98) = v8;
  *(a5 + 104) = v9;
  *(a5 + 112) = v10;
  *&v14 = *a3;
  *(a5 + 120) = *(a2 + 3);
  *(a5 + 128) = v14;
  *(a5 + 136) = v11;
  v15 = *(type metadata accessor for ScrubEvent.Model(0) + 28);
  v16 = sub_1E1150();
  v17 = *(*(v16 - 8) + 32);

  return v17(a5 + v15, a4, v16);
}

unint64_t sub_1053D0()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x7461446275726373;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_105460@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_106930(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_105488(uint64_t a1)
{
  v2 = sub_10580C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1054C4(uint64_t a1)
{
  v2 = sub_10580C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScrubEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_286C88, &qword_1FAEA8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  sub_48B8(a1, a1[3]);
  sub_10580C();
  sub_1E1E00();
  v8 = *(v2 + 48);
  v9 = *(v2 + 16);
  v42 = *(v2 + 32);
  v43 = v8;
  v10 = *(v2 + 48);
  v11 = *(v2 + 80);
  v44 = *(v2 + 64);
  v45 = v11;
  v12 = *(v2 + 16);
  v41[0] = *v2;
  v41[1] = v12;
  v37 = v42;
  v38 = v10;
  v13 = *(v2 + 80);
  v39 = v44;
  v40 = v13;
  v35 = v41[0];
  v36 = v9;
  v34 = 0;
  sub_13A5C(v41, v33);
  sub_143D0();
  v14 = v46;
  sub_1E1CF0();
  v33[2] = v37;
  v33[3] = v38;
  v33[4] = v39;
  v33[5] = v40;
  v33[0] = v35;
  v33[1] = v36;
  sub_14424(v33);
  if (!v14)
  {
    v15 = *(v2 + 98);
    v16 = *(v2 + 104);
    v17 = *(v2 + 112);
    LOWORD(v29) = *(v2 + 96);
    BYTE2(v29) = v15;
    v30 = v16;
    v31 = v17;
    v32 = *(v2 + 120);
    v28 = 1;
    sub_67C3C();

    sub_1E1CF0();
    v31, v18, v19, v20, v21, v22, v23, v24;
    v25 = *(v2 + 136);
    v29 = *(v2 + 128);
    LODWORD(v30) = v25;
    v28 = 2;
    sub_105860();
    sub_1E1CF0();
    type metadata accessor for ScrubEvent.Model(0);
    LOBYTE(v29) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_10580C()
{
  result = qword_286C90;
  if (!qword_286C90)
  {
    result = swift_getWitnessTable(byte_1FB074, &type metadata for ScrubEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_286C90);
  }

  return result;
}

unint64_t sub_105860()
{
  result = qword_286C98;
  if (!qword_286C98)
  {
    result = swift_getWitnessTable(")", &type metadata for ScrubData, v0, v1);
    atomic_store(result, &qword_286C98);
  }

  return result;
}

void ScrubEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1E1150();
  v36 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_3D68(&qword_286CA0, &qword_1FAEB0);
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v36 - v6;
  v8 = type metadata accessor for ScrubEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v41 = a1;
  sub_48B8(a1, v11);
  sub_10580C();
  v12 = v40;
  sub_1E1DF0();
  if (v12)
  {
    sub_4E48(v41, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v40 = v5;
    v20 = v38;
    v53 = 0;
    sub_14CB8();
    sub_1E1C20();
    v21 = v49;
    *(v10 + 2) = v48;
    *(v10 + 3) = v21;
    v22 = v51;
    *(v10 + 4) = v50;
    *(v10 + 5) = v22;
    v23 = v47;
    *v10 = v46;
    *(v10 + 1) = v23;
    v52 = 1;
    sub_6873C();
    sub_1E1C20();
    v24 = BYTE2(v42);
    v25 = v43;
    v26 = v44;
    *(v10 + 48) = v42;
    v10[98] = v24;
    *(v10 + 13) = v25;
    *(v10 + 14) = v26;
    *(v10 + 15) = v45;
    v52 = 2;
    sub_105D6C();
    sub_1E1C20();
    v27 = v43;
    *(v10 + 16) = v42;
    *(v10 + 34) = v27;
    LOBYTE(v42) = 3;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v28 = v40;
    sub_1E1C20();
    (*(v20 + 8))(v7, v39);
    (*(v36 + 32))(*(v8 + 28), v28, v3);
    sub_105DC0(0, v37);
    sub_4E48(v41, v29, v30, v31, v32, v33, v34, v35);
    sub_105E24(0);
  }
}

unint64_t sub_105D6C()
{
  result = qword_286CA8;
  if (!qword_286CA8)
  {
    result = swift_getWitnessTable("A", &type metadata for ScrubData, v0, v1);
    atomic_store(result, &qword_286CA8);
  }

  return result;
}

uint64_t sub_105DC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrubEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_105E24(uint64_t a1)
{
  v2 = type metadata accessor for ScrubEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_105F20@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_280D68, &qword_1EBF28);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_286C80, &qword_1FAEA0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_1060A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_280D68, &qword_1EBF28);
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

  v14 = sub_3D68(&qword_286C80, &qword_1FAEA0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_106270(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_280D68, &qword_1EBF28);
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

  v16 = sub_3D68(&qword_286C80, &qword_1FAEA0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_106434(uint64_t a1)
{
  sub_106590(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_106590(319, &qword_280E48, sub_6873C, sub_67C3C, &type metadata for ReadingSettingsData);
    if (v2 <= 0x3F)
    {
      sub_106590(319, &unk_286D18, sub_105D6C, sub_105860, &type metadata for ScrubData);
      if (v3 <= 0x3F)
      {
        sub_5684(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_106590(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_106620(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1066E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_106784(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10682C()
{
  result = qword_286DE8;
  if (!qword_286DE8)
  {
    result = swift_getWitnessTable(byte_1FB04C, &type metadata for ScrubEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_286DE8);
  }

  return result;
}

unint64_t sub_106884()
{
  result = qword_286DF0;
  if (!qword_286DF0)
  {
    result = swift_getWitnessTable(aE_7, &type metadata for ScrubEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_286DF0);
  }

  return result;
}

unint64_t sub_1068DC()
{
  result = qword_286DF8;
  if (!qword_286DF8)
  {
    result = swift_getWitnessTable(aM_8, &type metadata for ScrubEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_286DF8);
  }

  return result;
}

uint64_t sub_106930(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000617461;
  v11 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0x8000000000214420;
    if (a1 == 0xD000000000000013 && 0x8000000000214420 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x7461446275726373 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v13, a3, a4, a5, a6, a7, a8;
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

uint64_t AllInSeriesViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AllInSeriesViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AllInSeriesViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AllInSeriesViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AllInSeriesViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_281010, &qword_1EC770);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for AllInSeriesViewEvent(0) + 20);
  v5 = enum case for EventProperty.required<A>(_:);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v7 = *(*(v6 - 8) + 104);

  return v7(a1 + v4, v5, v6);
}

uint64_t AllInSeriesViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AllInSeriesViewEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AllInSeriesViewEvent.Model.init(singleCollectionData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  v6 = *(type metadata accessor for AllInSeriesViewEvent.Model(0) + 20);
  v7 = sub_1E1150();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t sub_106EFC(uint64_t a1)
{
  v2 = sub_10714C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_106F38(uint64_t a1)
{
  v2 = sub_10714C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AllInSeriesViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_286E30, &qword_1FB0D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-v7];
  sub_48B8(a1, a1[3]);
  sub_10714C();
  sub_1E1E00();
  v9 = v3[1];
  v10 = *(v3 + 4);
  v20 = *v3;
  v21 = v9;
  v22 = v10;
  v19[7] = 0;
  sub_12578();

  sub_1E1C80();
  v21, v11, v12, v13, v14, v15, v16, v17;
  if (!v2)
  {
    type metadata accessor for AllInSeriesViewEvent.Model(0);
    LOBYTE(v20) = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10714C()
{
  result = qword_286E38;
  if (!qword_286E38)
  {
    result = swift_getWitnessTable(byte_1FB290, &type metadata for AllInSeriesViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_286E38);
  }

  return result;
}

void AllInSeriesViewEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v34 = sub_1E1150();
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_3D68(&qword_286E40, &qword_1FB0D8);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = &v30 - v6;
  v8 = type metadata accessor for AllInSeriesViewEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_10714C();
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
    sub_12520();
    v21 = v35;
    sub_1E1BB0();
    v22 = v37;
    *v18 = v36;
    *(v18 + 16) = v22;
    LOBYTE(v36) = 1;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v7, v21);
    (*(v31 + 32))(v18 + *(v30 + 20), v5, v19);
    sub_1074B8(v18, v32);
    sub_4E48(a1, v23, v24, v25, v26, v27, v28, v29);
    sub_10751C(v18);
  }
}

uint64_t sub_1074B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AllInSeriesViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10751C(uint64_t a1)
{
  v2 = type metadata accessor for AllInSeriesViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_107618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_281010, &qword_1EC770);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a2 + v6, v7, v8);
}

uint64_t sub_107710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_281010, &qword_1EC770);
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

uint64_t sub_10782C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_281010, &qword_1EC770);
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

uint64_t sub_107980(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_107A4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
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

uint64_t sub_107B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_107BAC()
{
  if (!qword_286F40)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_286F40);
    }
  }
}

unint64_t sub_107C10()
{
  result = qword_286F70;
  if (!qword_286F70)
  {
    result = swift_getWitnessTable(byte_1FB268, &type metadata for AllInSeriesViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_286F70);
  }

  return result;
}

unint64_t sub_107C68()
{
  result = qword_286F78;
  if (!qword_286F78)
  {
    result = swift_getWitnessTable(aI_7, &type metadata for AllInSeriesViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_286F78);
  }

  return result;
}

unint64_t sub_107CC0()
{
  result = qword_286F80;
  if (!qword_286F80)
  {
    result = swift_getWitnessTable(a1_5, &type metadata for AllInSeriesViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_286F80);
  }

  return result;
}

BookAnalytics::DealsData __swiftcall DealsData.init(dealType:originalPricePoint:)(BookAnalytics::DealType_optional dealType, Swift::String_optional originalPricePoint)
{
  *v2 = *dealType.value;
  *(v2 + 8) = originalPricePoint;
  result.originalPricePoint = originalPricePoint;
  result.dealType = dealType;
  return result;
}

uint64_t sub_107D28()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x657079546C616564;
  }
}

void sub_107D68(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = a1 == 0x657079546C616564 && a2 == 0xE800000000000000;
  if (v12 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000216280 == a2)
  {
    a2, 0x8000000000216280, a3, a4, a5, a6, a7, a8;
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

uint64_t sub_107E4C(uint64_t a1)
{
  v2 = sub_1083EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_107E88(uint64_t a1)
{
  v2 = sub_1083EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DealsData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_286F88, &qword_1FB2E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  sub_48B8(a1, a1[3]);
  sub_1083EC();
  sub_1E1E00();
  v14 = v8;
  v13 = 0;
  sub_108440();
  sub_1E1C80();
  if (!v2)
  {
    v12 = 1;
    sub_1E1C50();
  }

  return (*(v5 + 8))(v7, v4);
}

void DealsData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_286FA0, &qword_1FB2E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  sub_48B8(a1, a1[3]);
  sub_1083EC();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
    v34 = 0;
  }

  else
  {
    v37 = 0;
    sub_108494();
    sub_1E1BB0();
    v16 = v38;
    v36 = 1;
    v17 = sub_1E1B80();
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    *(a2 + 8) = v17;
    *(a2 + 16) = v19;

    sub_4E48(a1, v20, v21, v22, v23, v24, v25, v26);
    v34 = v19;
  }

  v34, v27, v28, v29, v30, v31, v32, v33;
}

BOOL _s13BookAnalytics9DealsDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = *(a1 + 2);
  v11 = *a2;
  v13 = *(a2 + 1);
  v12 = *(a2 + 2);
  if (v8 == 3)
  {
    if (v11 != 3)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (v11 == 3)
  {
    return 0;
  }

  v14 = 0xE400000000000000;
  v15 = 1701147238;
  if (v8 != 1)
  {
    v15 = 0x6E776F6E6B6E75;
    v14 = 0xE700000000000000;
  }

  if (*a1)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x6F72446563697270;
  }

  if (v8)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xE900000000000070;
  }

  v18 = 0xE400000000000000;
  v19 = 1701147238;
  if (v11 != 1)
  {
    v19 = 0x6E776F6E6B6E75;
    v18 = 0xE700000000000000;
  }

  if (*a2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0x6F72446563697270;
  }

  if (*a2)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0xE900000000000070;
  }

  if (v16 != v20 || v17 != v21)
  {
    v30 = sub_1E1D30();
    v17, v31, v32, v33, v34, v35, v36, v37;
    v21, v38, v39, v40, v41, v42, v43, v44;
    if ((v30 & 1) == 0)
    {
      return 0;
    }

LABEL_3:
    if (v10)
    {
      return v12 && (v9 == v13 && v10 == v12 || (sub_1E1D30() & 1) != 0);
    }

    return !v12;
  }

  v17, a2, v20, a4, a5, a6, a7, a8;
  v21, v22, v23, v24, v25, v26, v27, v28;
  if (v10)
  {
    return v12 && (v9 == v13 && v10 == v12 || (sub_1E1D30() & 1) != 0);
  }

  return !v12;
}

unint64_t sub_1083EC()
{
  result = qword_286F90;
  if (!qword_286F90)
  {
    result = swift_getWitnessTable(byte_1FB4BC, &type metadata for DealsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_286F90);
  }

  return result;
}

unint64_t sub_108440()
{
  result = qword_286F98;
  if (!qword_286F98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DealType, &type metadata for DealType, v0, v1);
    atomic_store(result, &qword_286F98);
  }

  return result;
}

unint64_t sub_108494()
{
  result = qword_286FA8;
  if (!qword_286FA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DealType, &type metadata for DealType, v0, v1);
    atomic_store(result, &qword_286FA8);
  }

  return result;
}

uint64_t sub_1084F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10854C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1085C4()
{
  result = qword_286FB0;
  if (!qword_286FB0)
  {
    result = swift_getWitnessTable(byte_1FB494, &type metadata for DealsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_286FB0);
  }

  return result;
}

unint64_t sub_10861C()
{
  result = qword_286FB8;
  if (!qword_286FB8)
  {
    result = swift_getWitnessTable(byte_1FB404, &type metadata for DealsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_286FB8);
  }

  return result;
}

unint64_t sub_108674()
{
  result = qword_286FC0;
  if (!qword_286FC0)
  {
    result = swift_getWitnessTable(byte_1FB42C, &type metadata for DealsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_286FC0);
  }

  return result;
}

uint64_t sub_1086CC()
{
  if (*v0)
  {
    return 0x7574617453646E65;
  }

  else
  {
    return 0x6174537472617473;
  }
}

void sub_108714(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0xEB00000000737574;
  v13 = a1 == 0x6174537472617473 && a2 == 0xEB00000000737574;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v14 = 0;
  }

  else if (a1 == 0x7574617453646E65 && a2 == 0xE900000000000073)
  {
    0xE900000000000073, v12, a3, a4, a5, a6, a7, a8;
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

uint64_t sub_1087FC(uint64_t a1)
{
  v2 = sub_108DD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_108838(uint64_t a1)
{
  v2 = sub_108DD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DoNotDisturbData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_286FC8, &qword_1FB510);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  sub_48B8(a1, a1[3]);
  sub_108DD4();
  sub_1E1E00();
  v15 = v8;
  v14 = 0;
  sub_108E28();
  sub_1E1CF0();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

void DoNotDisturbData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_286FE0, &qword_1FB518);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_48B8(a1, a1[3]);
  sub_108DD4();
  sub_1E1DF0();
  if (!v2)
  {
    v21 = 0;
    sub_108E7C();
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

uint64_t _s13BookAnalytics16DoNotDisturbDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a2 + 1);
  v11 = 0xE200000000000000;
  v12 = 28271;
  if (v8 != 1)
  {
    v12 = 6710895;
    v11 = 0xE300000000000000;
  }

  if (*a1)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  v15 = 0xE200000000000000;
  v16 = 28271;
  if (*a2 != 1)
  {
    v16 = 6710895;
    v15 = 0xE300000000000000;
  }

  if (*a2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0xE700000000000000;
  }

  if (v13 == v17 && v14 == v18)
  {
    v14, a2, v17, a4, a5, a6, a7, a8;
    v18, v19, v20, v21, v22, v23, v24, v25;
    goto LABEL_21;
  }

  v33 = sub_1E1D30();
  v14, v34, v35, v36, v37, v38, v39, v40;
  v18, v41, v42, v43, v44, v45, v46, v47;
  v48 = 0;
  if (v33)
  {
LABEL_21:
    v49 = 0xE200000000000000;
    v50 = 28271;
    if (v9 != 1)
    {
      v50 = 6710895;
      v49 = 0xE300000000000000;
    }

    if (v9)
    {
      v51 = v50;
    }

    else
    {
      v51 = 0x6E776F6E6B6E75;
    }

    if (v9)
    {
      v52 = v49;
    }

    else
    {
      v52 = 0xE700000000000000;
    }

    if (v10)
    {
      if (v10 == 1)
      {
        v53 = 0xE200000000000000;
        if (v51 != 28271)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v53 = 0xE300000000000000;
        if (v51 != 6710895)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v53 = 0xE700000000000000;
      if (v51 != 0x6E776F6E6B6E75)
      {
        goto LABEL_38;
      }
    }

    if (v52 == v53)
    {
      v48 = 1;
LABEL_39:
      v52, v26, v27, v28, v29, v30, v31, v32;
      v53, v54, v55, v56, v57, v58, v59, v60;
      return v48 & 1;
    }

LABEL_38:
    v48 = sub_1E1D30();
    goto LABEL_39;
  }

  return v48 & 1;
}

unint64_t sub_108DD4()
{
  result = qword_286FD0;
  if (!qword_286FD0)
  {
    result = swift_getWitnessTable(byte_1FB6E4, &type metadata for DoNotDisturbData.CodingKeys, v0, v1);
    atomic_store(result, &qword_286FD0);
  }

  return result;
}

unint64_t sub_108E28()
{
  result = qword_286FD8;
  if (!qword_286FD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DoNotDisturbStatus, &type metadata for DoNotDisturbStatus, v0, v1);
    atomic_store(result, &qword_286FD8);
  }

  return result;
}

unint64_t sub_108E7C()
{
  result = qword_286FE8;
  if (!qword_286FE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DoNotDisturbStatus, &type metadata for DoNotDisturbStatus, v0, v1);
    atomic_store(result, &qword_286FE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
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

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
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

_WORD *storeEnumTagSinglePayload for AccountData(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_109040()
{
  result = qword_286FF0;
  if (!qword_286FF0)
  {
    result = swift_getWitnessTable(byte_1FB6BC, &type metadata for DoNotDisturbData.CodingKeys, v0, v1);
    atomic_store(result, &qword_286FF0);
  }

  return result;
}

unint64_t sub_109098()
{
  result = qword_286FF8;
  if (!qword_286FF8)
  {
    result = swift_getWitnessTable(byte_1FB62C, &type metadata for DoNotDisturbData.CodingKeys, v0, v1);
    atomic_store(result, &qword_286FF8);
  }

  return result;
}

unint64_t sub_1090F0()
{
  result = qword_287000;
  if (!qword_287000)
  {
    result = swift_getWitnessTable(byte_1FB654, &type metadata for DoNotDisturbData.CodingKeys, v0, v1);
    atomic_store(result, &qword_287000);
  }

  return result;
}

void sub_10916C(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000000002156F0 == a2)
  {
    a2, 0x80000000002156F0, 0xD000000000000014, a3, a4, a5, a6, a7;
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

uint64_t sub_109200(uint64_t a1)
{
  v2 = sub_1093C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10923C(uint64_t a1)
{
  v2 = sub_1093C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AutoNightThemeSettingData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_287008, &qword_1FB740);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_1093C4();
  sub_1E1E00();
  v10 = v7;
  sub_109418();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1093C4()
{
  result = qword_287010;
  if (!qword_287010)
  {
    result = swift_getWitnessTable(aY_12, &type metadata for AutoNightThemeSettingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_287010);
  }

  return result;
}

unint64_t sub_109418()
{
  result = qword_287018;
  if (!qword_287018)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutoNightThemeStatus, &type metadata for AutoNightThemeStatus, v0, v1);
    atomic_store(result, &qword_287018);
  }

  return result;
}

void AutoNightThemeSettingData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_287020, &qword_1FB748);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_1093C4();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1095D8();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_1095D8()
{
  result = qword_287028;
  if (!qword_287028)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutoNightThemeStatus, &type metadata for AutoNightThemeStatus, v0, v1);
    atomic_store(result, &qword_287028);
  }

  return result;
}

unint64_t sub_109630()
{
  result = qword_287030;
  if (!qword_287030)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutoNightThemeSettingData, &type metadata for AutoNightThemeSettingData, v0, v1);
    atomic_store(result, &qword_287030);
  }

  return result;
}

unint64_t sub_109688()
{
  result = qword_287038;
  if (!qword_287038)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutoNightThemeSettingData, &type metadata for AutoNightThemeSettingData, v0, v1);
    atomic_store(result, &qword_287038);
  }

  return result;
}

unint64_t sub_109730()
{
  result = qword_287040;
  if (!qword_287040)
  {
    result = swift_getWitnessTable(aQ_4, &type metadata for AutoNightThemeSettingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_287040);
  }

  return result;
}

unint64_t sub_109788()
{
  result = qword_287048;
  if (!qword_287048)
  {
    result = swift_getWitnessTable(byte_1FB868, &type metadata for AutoNightThemeSettingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_287048);
  }

  return result;
}

unint64_t sub_1097E0()
{
  result = qword_287050;
  if (!qword_287050)
  {
    result = swift_getWitnessTable(byte_1FB890, &type metadata for AutoNightThemeSettingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_287050);
  }

  return result;
}

uint64_t BrowseStoreViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrowseStoreViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrowseStoreViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrowseStoreViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrowseStoreViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for BrowseStoreViewEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t BrowseStoreViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrowseStoreViewEvent.Model(0) + 20);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrowseStoreViewEvent.Model.init(eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E1150();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for BrowseStoreViewEvent.Model(0) + 20);
  v8 = sub_1E11A0();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_109CA4(uint64_t a1)
{
  v2 = sub_109F1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_109CE0(uint64_t a1)
{
  v2 = sub_109F1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BrowseStoreViewEvent.Model.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_287088, &qword_1FB970);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_48B8(a1, a1[3]);
  sub_109F1C();
  sub_1E1E00();
  v8[15] = 0;
  sub_1E1150();
  sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
  sub_1E1CF0();
  if (!v1)
  {
    type metadata accessor for BrowseStoreViewEvent.Model(0);
    v8[14] = 1;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_109F1C()
{
  result = qword_287090;
  if (!qword_287090)
  {
    result = swift_getWitnessTable(aI_8, &type metadata for BrowseStoreViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_287090);
  }

  return result;
}

void BrowseStoreViewEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v37 = sub_1E11A0();
  v34 = *(v37 - 8);
  __chkstk_darwin(v37);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1E1150();
  v36 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_3D68(&qword_287098, &qword_1FB978);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v32 - v7;
  v9 = type metadata accessor for BrowseStoreViewEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_109F1C();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    v33 = v9;
    v19 = v11;
    v21 = v36;
    v20 = v37;
    v43 = 0;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v22 = v38;
    sub_1E1C20();
    v23 = *(v21 + 32);
    v32 = v19;
    v23(v19, v22, v40);
    v42 = 1;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1C20();
    (*(v39 + 8))(v8, v41);
    v24 = v32;
    (*(v34 + 32))(v32 + *(v33 + 20), v5, v20);
    sub_10A390(v24, v35);
    sub_4E48(a1, v25, v26, v27, v28, v29, v30, v31);
    sub_10A3F4(v24);
  }
}

uint64_t sub_10A390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseStoreViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10A3F4(uint64_t a1)
{
  v2 = type metadata accessor for BrowseStoreViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10A504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10A620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10A748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1150();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1E11A0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10A84C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E1150();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1E11A0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

unint64_t sub_10A95C()
{
  result = qword_2871C0;
  if (!qword_2871C0)
  {
    result = swift_getWitnessTable(aA_12, &type metadata for BrowseStoreViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2871C0);
  }

  return result;
}

unint64_t sub_10A9B4()
{
  result = qword_2871C8;
  if (!qword_2871C8)
  {
    result = swift_getWitnessTable(byte_1FBA78, &type metadata for BrowseStoreViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2871C8);
  }

  return result;
}

unint64_t sub_10AA0C()
{
  result = qword_2871D0;
  if (!qword_2871D0)
  {
    result = swift_getWitnessTable(byte_1FBAA0, &type metadata for BrowseStoreViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2871D0);
  }

  return result;
}

uint64_t YearInReviewViewEvent.yIRDetailedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_287208, &qword_1FBB80);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t YearInReviewViewEvent.yIRDetailedData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_287208, &qword_1FBB80);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t YearInReviewViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YearInReviewViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t YearInReviewViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for YearInReviewViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t YearInReviewViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YearInReviewViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t YearInReviewViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for YearInReviewViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t YearInReviewViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_287208, &qword_1FBB80);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for YearInReviewViewEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

void YearInReviewViewEvent.Model.yIRDetailedData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t YearInReviewViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YearInReviewViewEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t YearInReviewViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YearInReviewViewEvent.Model(0) + 24);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t YearInReviewViewEvent.Model.init(yIRDetailedData:eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *a4 = *a1;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  v10 = type metadata accessor for YearInReviewViewEvent.Model(0);
  v11 = *(v10 + 20);
  v12 = sub_1E1150();
  (*(*(v12 - 8) + 32))(a4 + v11, a2, v12);
  v13 = *(v10 + 24);
  v14 = sub_1E11A0();
  v15 = *(*(v14 - 8) + 32);

  return v15(a4 + v13, a3, v14);
}

uint64_t sub_10B230()
{
  v1 = 0x746144746E657665;
  if (*v0 != 1)
  {
    v1 = 0x74614464656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6961746544524979;
  }
}

uint64_t sub_10B2A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_10C4B8(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_10B2C8(uint64_t a1)
{
  v2 = sub_10B5A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10B304(uint64_t a1)
{
  v2 = sub_10B5A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t YearInReviewViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_287210, &qword_1FBB88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_48B8(a1, a1[3]);
  sub_10B5A0();
  sub_1E1E00();
  v9 = *(v3 + 8);
  v10 = v3[2];
  v11 = *(v3 + 24);
  v14 = *v3;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v13[15] = 0;
  sub_6F5B8();
  sub_1E1CF0();
  if (!v2)
  {
    type metadata accessor for YearInReviewViewEvent.Model(0);
    LOBYTE(v14) = 1;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    LOBYTE(v14) = 2;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10B5A0()
{
  result = qword_287218;
  if (!qword_287218)
  {
    result = swift_getWitnessTable(asc_1FBD50, &type metadata for YearInReviewViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_287218);
  }

  return result;
}

void YearInReviewViewEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = sub_1E11A0();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1150();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_3D68(&qword_287220, &qword_1FBB90);
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v36 - v7;
  v9 = type metadata accessor for YearInReviewViewEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_10B5A0();
  v43 = v8;
  v12 = v45;
  sub_1E1DF0();
  if (v12)
  {
    sub_4E48(a1, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = v11;
    v45 = a1;
    v22 = v41;
    v21 = v42;
    v50 = 0;
    sub_6F560();
    sub_1E1C20();
    v23 = v47;
    v24 = v48;
    v25 = v49;
    *v20 = v46;
    *(v20 + 8) = v23;
    *(v20 + 16) = v24;
    *(v20 + 24) = v25;
    LOBYTE(v46) = 1;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    v26 = *(v40 + 32);
    v36 = *(v9 + 20);
    v26(v20 + v36, v6, v4);
    LOBYTE(v46) = 2;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v27 = v21;
    v28 = v39;
    sub_1E1C20();
    (*(v22 + 8))(v43, v44);
    (*(v37 + 32))(v20 + *(v9 + 24), v27, v28);
    sub_10BA6C(v20, v38);
    sub_4E48(v45, v29, v30, v31, v32, v33, v34, v35);
    sub_10BAD0(v20);
  }
}

uint64_t sub_10BA6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YearInReviewViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10BAD0(uint64_t a1)
{
  v2 = type metadata accessor for YearInReviewViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10BBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_287208, &qword_1FBB80);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_10BD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_287208, &qword_1FBB80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10BE7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_287208, &qword_1FBB80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_10BFEC(uint64_t a1)
{
  sub_10C088(319);
  if (v1 <= 0x3F)
  {
    sub_5684(319);
    if (v2 <= 0x3F)
    {
      sub_5750(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10C088(uint64_t a1)
{
  if (!qword_287290)
  {
    sub_6F560();
    sub_6F5B8();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_287290);
    }
  }
}

uint64_t sub_10C104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1150();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_1E11A0();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_10C20C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E1150();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_1E11A0();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_10C30C(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    result = sub_1E11A0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10C3B4()
{
  result = qword_287360;
  if (!qword_287360)
  {
    result = swift_getWitnessTable(aA_13, &type metadata for YearInReviewViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_287360);
  }

  return result;
}

unint64_t sub_10C40C()
{
  result = qword_287368;
  if (!qword_287368)
  {
    result = swift_getWitnessTable(byte_1FBC98, &type metadata for YearInReviewViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_287368);
  }

  return result;
}

unint64_t sub_10C464()
{
  result = qword_287370;
  if (!qword_287370)
  {
    result = swift_getWitnessTable(aQ_5, &type metadata for YearInReviewViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_287370);
  }

  return result;
}

uint64_t sub_10C4B8(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEF6174614464656CLL;
  v11 = a1 == 0x6961746544524979 && a2 == 0xEF6174614464656CLL;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, v10, a3, a4, a5, a6, a7, a8;
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

uint64_t ShareSeriesEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareSeriesEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSeriesEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareSeriesEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareSeriesEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareSeriesEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSeriesEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareSeriesEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareSeriesEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ShareSeriesEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t ShareSeriesEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareSeriesEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSeriesEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareSeriesEvent.Model(0) + 24);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSeriesEvent.Model.init(seriesData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = a1[1];
  *a4 = *a1;
  *(a4 + 1) = v7;
  *(a4 + 2) = a1[2];
  v8 = type metadata accessor for ShareSeriesEvent.Model(0);
  v9 = *(v8 + 20);
  v10 = sub_1E1150();
  (*(*(v10 - 8) + 32))(&a4[v9], a2, v10);
  v11 = *(v8 + 24);
  v12 = sub_1E11A0();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a4[v11], a3, v12);
}

uint64_t sub_10CC9C(uint64_t a1)
{
  v2 = sub_10CFC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10CCD8(uint64_t a1)
{
  v2 = sub_10CFC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShareSeriesEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_2873A8, &qword_1FBDA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_48B8(a1, a1[3]);
  sub_10CFC8();
  sub_1E1E00();
  v9 = v3[1];
  v23[0] = *v3;
  v10 = *v3;
  v11 = v3[1];
  v12 = v3[2];
  v23[1] = v9;
  v23[2] = v12;
  v20 = v10;
  v21 = v11;
  v22 = v3[2];
  v19 = 0;
  sub_CF18(v23, &v16);
  sub_D57C();
  sub_1E1CF0();
  if (v2)
  {
    v16 = v20;
    v17 = v21;
    v18 = v22;
    sub_D5D0(&v16);
  }

  else
  {
    v16 = v20;
    v17 = v21;
    v18 = v22;
    sub_D5D0(&v16);
    type metadata accessor for ShareSeriesEvent.Model(0);
    v15 = 1;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v15 = 2;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10CFC8()
{
  result = qword_2873B0;
  if (!qword_2873B0)
  {
    result = swift_getWitnessTable(asc_1FBF6C, &type metadata for ShareSeriesEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2873B0);
  }

  return result;
}

void ShareSeriesEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = sub_1E11A0();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_3D68(&qword_2873B8, &qword_1FBDB0);
  v40 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = &v36 - v8;
  v10 = type metadata accessor for ShareSeriesEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v45 = a1;
  sub_48B8(a1, v13);
  sub_10CFC8();
  v42 = v9;
  v14 = v44;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v45, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v22 = v12;
    v44 = v4;
    v24 = v40;
    v23 = v41;
    v50 = 0;
    sub_DAD8();
    sub_1E1C20();
    v25 = v48;
    v26 = v22;
    *v22 = v47;
    *(v22 + 1) = v25;
    *(v22 + 2) = v49;
    LOBYTE(v46) = 1;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    v36 = v10;
    (*(v23 + 32))(&v22[*(v10 + 20)], v7, v5);
    LOBYTE(v46) = 2;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v27 = v44;
    v28 = v39;
    sub_1E1C20();
    (*(v24 + 8))(v42, v43);
    (*(v37 + 32))(v26 + *(v36 + 24), v27, v28);
    sub_10D4D0(v26, v38);
    sub_4E48(v45, v29, v30, v31, v32, v33, v34, v35);
    sub_10D534(v26);
  }
}

uint64_t sub_10D4D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareSeriesEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10D534(uint64_t a1)
{
  v2 = type metadata accessor for ShareSeriesEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10D644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10D7BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_10D940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
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
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1E11A0();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_10DA84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t sub_10DBBC()
{
  result = qword_2874F0;
  if (!qword_2874F0)
  {
    result = swift_getWitnessTable(asc_1FBF44, &type metadata for ShareSeriesEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2874F0);
  }

  return result;
}

unint64_t sub_10DC14()
{
  result = qword_2874F8;
  if (!qword_2874F8)
  {
    result = swift_getWitnessTable(aM_9, &type metadata for ShareSeriesEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2874F8);
  }

  return result;
}

unint64_t sub_10DC6C()
{
  result = qword_287500;
  if (!qword_287500)
  {
    result = swift_getWitnessTable(aU_10, &type metadata for ShareSeriesEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_287500);
  }

  return result;
}

uint64_t GiftEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GiftEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GiftEvent.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftEvent.contentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GiftEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GiftEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GiftEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GiftEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GiftEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GiftEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for GiftEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t GiftEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftEvent.Model.init(contentData:contentStoreData:contentExposureData:suggestionData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a1[3];
  *(a6 + 32) = a1[2];
  *(a6 + 48) = v8;
  v9 = a1[5];
  *(a6 + 64) = a1[4];
  *(a6 + 80) = v9;
  v10 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v10;
  v11 = *(a2 + 48);
  *(a6 + 128) = *(a2 + 32);
  *(a6 + 144) = v11;
  v12 = *(a2 + 16);
  *(a6 + 96) = *a2;
  *(a6 + 112) = v12;
  v13 = a6 + 168;
  v14 = *(a3 + 80);
  *(a6 + 232) = *(a3 + 64);
  *(a6 + 248) = v14;
  *(v13 + 96) = *(a3 + 96);
  v15 = *(a3 + 16);
  *(a6 + 168) = *a3;
  *(a6 + 184) = v15;
  v16 = *(a3 + 48);
  *(a6 + 200) = *(a3 + 32);
  v17 = *a4;
  *(a6 + 157) = *(a2 + 61);
  *(v13 + 110) = *(a3 + 110);
  *(a6 + 216) = v16;
  *(a6 + 286) = v17;
  v18 = *(type metadata accessor for GiftEvent.Model(0) + 32);
  v19 = sub_1E1150();
  v20 = *(*(v19 - 8) + 32);

  return v20(a6 + v18, a5, v19);
}

unint64_t sub_10E664()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0xD000000000000013;
  v4 = 0x6974736567677573;
  if (v1 != 3)
  {
    v4 = 0x746144746E657665;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_10E724@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_10FF58(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_10E74C(uint64_t a1)
{
  v2 = sub_10ECAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10E788(uint64_t a1)
{
  v2 = sub_10ECAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GiftEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_287538, &qword_1FBFC0);
  v72 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  sub_48B8(a1, a1[3]);
  sub_10ECAC();
  v7 = v4;
  sub_1E1E00();
  v8 = *(v2 + 48);
  v9 = *(v2 + 16);
  v68 = *(v2 + 32);
  v69 = v8;
  v10 = *(v2 + 48);
  v11 = *(v2 + 80);
  v70 = *(v2 + 64);
  v71 = v11;
  v12 = *(v2 + 16);
  v67[0] = *v2;
  v67[1] = v12;
  v63 = v68;
  v64 = v10;
  v13 = *(v2 + 80);
  v65 = v70;
  v66 = v13;
  v61 = v67[0];
  v62 = v9;
  v60 = 0;
  sub_13A5C(v67, &v43);
  sub_143D0();
  v14 = v6;
  v15 = v28;
  sub_1E1CF0();
  if (v15)
  {
    v45 = v63;
    v46 = v64;
    v47 = v65;
    v48 = v66;
    v43 = v61;
    v44 = v62;
    sub_14424(&v43);
    return (*(v72 + 8))(v6, v7);
  }

  else
  {
    v17 = v72;
    v55[2] = v63;
    v55[3] = v64;
    v55[4] = v65;
    v55[5] = v66;
    v55[0] = v61;
    v55[1] = v62;
    sub_14424(v55);
    v18 = *(v2 + 128);
    v19 = *(v2 + 96);
    v57 = *(v2 + 112);
    v58 = v18;
    v20 = *(v2 + 128);
    *v59 = *(v2 + 144);
    v56 = *(v2 + 96);
    v21 = *(v2 + 144);
    v53 = v20;
    v54[0] = v21;
    *&v59[13] = *(v2 + 157);
    *(v54 + 13) = *(v2 + 157);
    v51 = v19;
    v52 = v57;
    v50 = 1;
    sub_17AA4(&v56, &v43, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    sub_1E1C80();
    v41[2] = v53;
    v42[0] = v54[0];
    *(v42 + 13) = *(v54 + 13);
    v41[0] = v51;
    v41[1] = v52;
    sub_18E48(v41, &qword_27FFF0, &unk_1E9C00);
    v22 = *(v2 + 248);
    v47 = *(v2 + 232);
    v48 = v22;
    *v49 = *(v2 + 264);
    *&v49[14] = *(v2 + 278);
    v23 = *(v2 + 184);
    v43 = *(v2 + 168);
    v44 = v23;
    v24 = *(v2 + 216);
    v45 = *(v2 + 200);
    v46 = v24;
    v25 = *(v2 + 248);
    v38 = *(v2 + 232);
    v39 = v25;
    v40[0] = *(v2 + 264);
    *(v40 + 14) = *(v2 + 278);
    v26 = *(v2 + 184);
    v34 = *(v2 + 168);
    v35 = v26;
    v27 = *(v2 + 216);
    v36 = *(v2 + 200);
    v37 = v27;
    v33 = 2;
    sub_17AA4(&v43, v31, &qword_27FFF8, &qword_1F06D0);
    sub_4F070();
    sub_1E1C80();
    v31[4] = v38;
    v31[5] = v39;
    *v32 = v40[0];
    *&v32[14] = *(v40 + 14);
    v31[0] = v34;
    v31[1] = v35;
    v31[2] = v36;
    v31[3] = v37;
    sub_18E48(v31, &qword_27FFF8, &qword_1F06D0);
    v30 = *(v2 + 286);
    v29 = 3;
    sub_284F8();
    sub_1E1C80();
    type metadata accessor for GiftEvent.Model(0);
    v30 = 4;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    return (*(v17 + 8))(v14, v7);
  }
}

unint64_t sub_10ECAC()
{
  result = qword_287540;
  if (!qword_287540)
  {
    result = swift_getWitnessTable(byte_1FC198, &type metadata for GiftEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_287540);
  }

  return result;
}

void GiftEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = sub_1E1150();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3D68(&qword_287548, &qword_1FBFC8);
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v6 = type metadata accessor for GiftEvent.Model(0);
  __chkstk_darwin(v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v58 = a1;
  sub_48B8(a1, v9);
  sub_10ECAC();
  v10 = v43;
  sub_1E1DF0();
  if (v10)
  {
    sub_4E48(v58, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v37 = v6;
    v43 = v4;
    v18 = v41;
    v56 = 0;
    sub_14CB8();
    v19 = v42;
    sub_1E1C20();
    v20 = v57[3];
    *(v8 + 2) = v57[2];
    *(v8 + 3) = v20;
    v21 = v57[5];
    *(v8 + 4) = v57[4];
    *(v8 + 5) = v21;
    v22 = v57[1];
    *v8 = v57[0];
    *(v8 + 1) = v22;
    v55 = 1;
    sub_4FB64();
    sub_1E1BB0();
    v23 = v54[0];
    *(v8 + 8) = v53[4];
    *(v8 + 9) = v23;
    *(v8 + 157) = *(v54 + 13);
    v24 = v53[3];
    *(v8 + 6) = v53[2];
    *(v8 + 7) = v24;
    v46 = 2;
    sub_4FBB8();
    sub_1E1BB0();
    v25 = v18;
    v26 = v52;
    *(v8 + 232) = v51;
    *(v8 + 248) = v26;
    v27 = v48;
    *(v8 + 168) = v47;
    *(v8 + 184) = v27;
    v28 = v50;
    *(v8 + 200) = v49;
    *(v8 + 216) = v28;
    *(v8 + 264) = v53[0];
    *(v8 + 278) = *(v53 + 14);
    v44 = 3;
    sub_28F9C();
    sub_1E1BB0();
    v8[286] = v45;
    v45 = 4;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v29 = v40;
    sub_1E1C20();
    (*(v25 + 8))(0, v19);
    (*(v38 + 32))(&v8[*(v37 + 32)], v43, v29);
    sub_10F230(v8, v39);
    sub_4E48(v58, v30, v31, v32, v33, v34, v35, v36);
    sub_10F294(v8);
  }
}

uint64_t sub_10F230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GiftEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10F294(uint64_t a1)
{
  v2 = type metadata accessor for GiftEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10F390@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_10F574(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_10F794(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_10F9AC(uint64_t a1)
{
  sub_10FB58(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_10FB58(319, &qword_2800D8, sub_4FB64, sub_4F01C, &type metadata for ContentStoreData);
    if (v2 <= 0x3F)
    {
      sub_10FB58(319, &qword_2800E0, sub_4FBB8, sub_4F070, &type metadata for ContentExposureData);
      if (v3 <= 0x3F)
      {
        sub_10FB58(319, &unk_27EAF8, sub_28F9C, sub_284F8, &type metadata for SuggestionData);
        if (v4 <= 0x3F)
        {
          sub_5684(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10FB58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_10FBE8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10FCA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10FD4C(uint64_t a1)
{
  sub_19FE0(319, &qword_2801C0, &type metadata for ContentStoreData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_2801C8, &type metadata for ContentExposureData);
    if (v2 <= 0x3F)
    {
      sub_19FE0(319, &qword_27EBD8, &type metadata for SuggestionData);
      if (v3 <= 0x3F)
      {
        sub_1E1150();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_10FE54()
{
  result = qword_287690;
  if (!qword_287690)
  {
    result = swift_getWitnessTable(byte_1FC170, &type metadata for GiftEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_287690);
  }

  return result;
}

unint64_t sub_10FEAC()
{
  result = qword_287698;
  if (!qword_287698)
  {
    result = swift_getWitnessTable(aA_14, &type metadata for GiftEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_287698);
  }

  return result;
}

unint64_t sub_10FF04()
{
  result = qword_2876A0;
  if (!qword_2876A0)
  {
    result = swift_getWitnessTable(asc_1FC108, &type metadata for GiftEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2876A0);
  }

  return result;
}

uint64_t sub_10FF58(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000617461;
  v11 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0x8000000000213F30;
    if (a1 == 0xD000000000000010 && 0x8000000000213F30 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0x8000000000213F50;
      if (a1 == 0xD000000000000013 && 0x8000000000213F50 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v15 = 0xEE00617461446E6FLL;
        if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
        {
          0xE900000000000061, v15, a3, a4, a5, a6, a7, a8;
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

BookAnalytics::UpSellLocation_optional __swiftcall UpSellLocation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260F50;
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

uint64_t UpSellLocation.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6964616552626F65;
  if (*v0 != 2)
  {
    v2 = 0x4E676E6964616572;
  }

  if (*v0)
  {
    v1 = 16718;
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

unint64_t sub_11020C()
{
  result = qword_2876A8;
  if (!qword_2876A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpSellLocation, &type metadata for UpSellLocation, v0, v1);
    atomic_store(result, &qword_2876A8);
  }

  return result;
}

Swift::Int sub_110260()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE700000000000000;
  v3 = 0xEA0000000000676ELL;
  if (v1 != 2)
  {
    v3 = 0xEA0000000000776FLL;
  }

  if (v1)
  {
    v2 = 0xE200000000000000;
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

void sub_110320(uint64_t a1)
{
  v2 = 0xE700000000000000;
  v3 = 0xEA0000000000676ELL;
  if (*v1 != 2)
  {
    v3 = 0xEA0000000000776FLL;
  }

  if (*v1)
  {
    v2 = 0xE200000000000000;
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

Swift::Int sub_1103CC(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xEA0000000000676ELL;
  if (v2 != 2)
  {
    v4 = 0xEA0000000000776FLL;
  }

  if (v2)
  {
    v3 = 0xE200000000000000;
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

void sub_110494(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x6964616552626F65;
  if (*v1 != 2)
  {
    v5 = 0x4E676E6964616572;
    v4 = 0xEA0000000000776FLL;
  }

  if (*v1)
  {
    v3 = 16718;
    v2 = 0xE200000000000000;
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

unint64_t sub_1105D0()
{
  result = qword_2876B0;
  if (!qword_2876B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpSellLocation, &type metadata for UpSellLocation, v0, v1);
    atomic_store(result, &qword_2876B0);
  }

  return result;
}

id sub_110624()
{
  result = [objc_allocWithZone(type metadata accessor for AppManager(0)) init];
  qword_2876B8 = result;
  return result;
}

id static AppManager.shared.getter()
{
  if (qword_27D3E0 != -1)
  {
    swift_once();
  }

  v1 = qword_2876B8;

  return v1;
}

void sub_110730(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___BAAppManager_applicationGroupIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;

  v5, v6, v7, v8, v9, v10, v11, v12;
}

void sub_11079C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BAAppManager_uploadBatchEventConfig;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1107FC()
{
  v1 = OBJC_IVAR___BAAppManager_uploadBatchEventConfig;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id sub_110848()
{
  v1 = v0;
  v2 = sub_1E0F70();
  __chkstk_darwin(v2 - 8);
  v3 = &v0[OBJC_IVAR___BAAppManager_applicationGroupIdentifier];
  *v3 = 0;
  v3[1] = 0;
  *&v0[OBJC_IVAR___BAAppManager_uploadBatchEventConfig] = 0;
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = [v4 BOOLForKey:@"BAAppAnalyticsUseDebugProcessor"];

  v6 = 0;
  if (v5)
  {
    type metadata accessor for DebugEventProcessor();
    swift_allocObject();
    v6 = sub_171350();
  }

  *&v1[OBJC_IVAR___BAAppManager_debugProcessor] = v6;
  v1[OBJC_IVAR___BAAppManager_enableUploads] = 0;
  *&v1[OBJC_IVAR___BAAppManager_flushManager] = 0;
  v7 = OBJC_IVAR___BAAppManager_targetURL;
  v8 = sub_1E0930();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  sub_1E0B30();
  sub_1E0DC0();
  sub_1E0DB0();
  v15 = sub_1E0C30();
  v16 = &protocol witness table for CrashDetector;
  v14 = sub_1E0C20();
  sub_1E0F60();
  *&v1[OBJC_IVAR___BAAppManager_appSessionManager] = sub_1E0B20();
  sub_1E1050();
  v9 = [objc_opt_self() mainBundle];
  *&v1[OBJC_IVAR___BAAppManager_client] = sub_1E1040();
  v13.receiver = v1;
  v13.super_class = type metadata accessor for AppManager(0);
  v10 = objc_msgSendSuper2(&v13, "init");
  sub_113D90();
  v11 = [objc_opt_self() defaultCenter];
  [v11 addObserver:v10 selector:"privacyAcknowledgementNotification:" name:@"BAPrivacyAcknowledgementChanged" object:0];

  return v10;
}

void sub_110B00(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + OBJC_IVAR___BAAppManager_enableUploads) = a3;
  sub_110B44(a1, a2);
  sub_110D58();
  sub_110E60();
  sub_1E0B00();
}

void sub_110B44(uint64_t a1, uint64_t a2)
{
  v5 = sub_3D68(&qword_287EC0, &qword_205170);
  __chkstk_darwin(v5 - 8);
  v7 = &v33[-v6];
  v8 = sub_3D68(&qword_2876E8, &qword_1FC308);
  __chkstk_darwin(v8 - 8);
  v10 = &v33[-v9];
  v11 = (v2 + OBJC_IVAR___BAAppManager_applicationGroupIdentifier);
  swift_beginAccess();
  v12 = v11[1];
  *v11 = a1;
  v11[1] = a2;

  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = sub_1E0930();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  v21 = OBJC_IVAR___BAAppManager_targetURL;
  swift_beginAccess();
  sub_114310(v10, v2 + v21);
  swift_endAccess();
  v22 = sub_1E1900();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  v23 = swift_allocObject();
  v23[1].super.isa = 0;
  *v23[1].dataProviders = 0;
  v23[2].super.isa = v2;
  v24 = v2;
  v25 = sub_170D1C(0, 0, v7, &unk_1FC3B8, v23);
  v25, v26, v27, v28, v29, v30, v31, v32;
}

void sub_110D58()
{
  if (*(v0 + OBJC_IVAR___BAAppManager_enableUploads) == 1)
  {
    v1 = v0;
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = sub_1E1770();
    [v2 BOOLForKey:v3];

    sub_1E0F10();
    v4 = sub_1E0F00();
    v5 = sub_1E0EF0();

    v6 = sub_1E0EE0();
    v7 = OBJC_IVAR___BAAppManager_uploadBatchEventConfig;
    swift_beginAccess();
    v8 = *(v1 + v7);
    *(v1 + v7) = v6;
  }
}

void sub_110E60()
{
  if (*(v0 + OBJC_IVAR___BAAppManager_enableUploads) == 1)
  {
    v1 = OBJC_IVAR___BAAppManager_uploadBatchEventConfig;
    swift_beginAccess();
    v2 = *(v0 + v1);
    if (v2)
    {
      sub_1E0BB0();
      v3 = *(v0 + OBJC_IVAR___BAAppManager_client);
      sub_1E1000();
      swift_allocObject();
      v4 = v2;

      v5 = v3;
      sub_1E0FF0();
      swift_unknownObjectRetain();
      v6 = sub_1E0B90();
      v7 = *(v0 + OBJC_IVAR___BAAppManager_flushManager);
      *(v0 + OBJC_IVAR___BAAppManager_flushManager) = v6;
      v7, v8, v9, v10, v11, v12, v13, v14;
    }
  }
}

uint64_t sub_1110B8()
{
  *(v1 + 40) = v0;
  sub_3D68(&qword_2876E8, &qword_1FC308);
  *(v1 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_111154, 0, 0);
}

uint64_t sub_111154()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = OBJC_IVAR___BAAppManager_targetURL;
  swift_beginAccess();
  sub_1137B8(v1 + v3, v2);
  v4 = sub_1E0930();
  LODWORD(v1) = (*(*(v4 - 8) + 48))(v2, 1, v4);
  sub_113828(v2);
  if (v1 == 1)
  {
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_111374;

    return sub_111834();
  }

  else
  {
    v7 = *(v0[5] + OBJC_IVAR___BAAppManager_flushManager);
    v0[10] = v7;
    if (v7)
    {

      v8 = swift_task_alloc();
      v0[11] = v8;
      *v8 = v0;
      v8[1] = sub_1116D0;

      return withCheckedContinuation<A>(isolation:function:_:)();
    }

    else
    {

      v9 = v0[1];

      return v9();
    }
  }
}

uint64_t sub_111374()
{

  return _swift_task_switch(sub_111470, 0, 0);
}

uint64_t sub_111470()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_111558;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_111558()
{

  return _swift_task_switch(sub_111670, 0, 0);
}

uint64_t sub_111670()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1116D0()
{

  return _swift_task_switch(sub_1117CC, 0, 0);
}

uint64_t sub_1117CC(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_111834()
{
  v1[6] = v0;
  v2 = sub_1E0930();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[9] = v3;
  v4 = swift_task_alloc();
  v1[10] = v4;
  *v4 = v1;
  v4[1] = sub_11192C;

  return sub_1122A0(v3);
}

uint64_t sub_11192C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_111D50;
  }

  else
  {
    v2 = sub_111A40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_111A40()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = [objc_opt_self() standardUserDefaults];
  sub_1E0900(v5);
  v7 = v6;
  v8 = sub_1E1770();
  [v4 setURL:v7 forKey:v8];

  (*(v2 + 8))(v1, v3);
  v9 = v0[6];
  v10 = swift_task_alloc();
  v0[12] = v10;
  *(v10 + 16) = v9;
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_111BD8;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_111BD8()
{

  return _swift_task_switch(sub_111CF0, 0, 0);
}

uint64_t sub_111CF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_111D50()
{
  v29 = v0;
  if (qword_27D040 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1360();
  sub_3B2C(v1, qword_2802A8);
  swift_errorRetain();
  v2 = sub_1E1340();
  v3 = sub_1E1980();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v28 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_1E1D70();
    v8 = v7;
    v9 = sub_DD91C(v6, v7, &v28);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "No URL found for Upload Session Processor: %s", v4, 0xCu);
    sub_4E48(v5, v17, v18, v19, v20, v21, v22, v23);
  }

  else
  {
  }

  v24 = v0[6];
  v25 = swift_task_alloc();
  v0[12] = v25;
  *(v25 + 16) = v24;
  v26 = swift_task_alloc();
  v0[13] = v26;
  *v26 = v0;
  v26[1] = sub_111BD8;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

void sub_111FA4(uint64_t a1)
{
  v2 = sub_3D68(&qword_282650, &qword_1EFF18);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - v4;
  (*(v3 + 16))(&v15 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_1E0BA0();
  v7, v8, v9, v10, v11, v12, v13, v14;
}

id AppManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppManager(uint64_t a1)
{
  result = qword_287730;
  if (!qword_287730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_112210()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7E674;

  return sub_111834();
}

uint64_t sub_1122A0(uint64_t a1)
{
  v2[41] = a1;
  v2[42] = v1;
  sub_3D68(&qword_2876E8, &qword_1FC308);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();

  return _swift_task_switch(sub_112384, 0, 0);
}

uint64_t sub_112384()
{
  v1 = v0[49];
  v2 = v0[42];
  v3 = OBJC_IVAR___BAAppManager_targetURL;
  v0[50] = OBJC_IVAR___BAAppManager_targetURL;
  swift_beginAccess();
  sub_1137B8(v2 + v3, v1);
  v4 = sub_1E0930();
  v0[51] = v4;
  v5 = *(v4 - 8);
  v0[52] = v5;
  v6 = *(v5 + 48);
  if (v6(v1, 1, v4) == 1)
  {
    sub_113828(v0[49]);
    v7 = sub_112F3C();
    if (v7 > 2)
    {
      if (v7 != 3)
      {
        if (v7 != 4)
        {
          v60 = v0[43];
          sub_1E1780();
          v62 = v61;
          sub_1E0920();
          v62, v63, v64, v65, v66, v67, v68, v69;
          v18 = v6(v60, 1, v4);
          if (v18 != 1)
          {
            v70 = v0[47];
            v71 = v0[41];
            (*(v5 + 32))(v71, v0[43], v4);
            (*(v5 + 16))(v70, v71, v4);
            (*(v5 + 56))(v70, 0, 1, v4);
            swift_beginAccess();
            sub_114310(v70, v2 + v3);
            goto LABEL_21;
          }

          goto LABEL_29;
        }

        v21 = v0[44];
        sub_1E1780();
        v23 = v22;
        sub_1E0920();
        v23, v24, v25, v26, v27, v28, v29, v30;
        v18 = v6(v21, 1, v4);
        if (v18 != 1)
        {
          v31 = v0[47];
          v32 = v0[41];
          (*(v5 + 32))(v32, v0[44], v4);
          (*(v5 + 16))(v31, v32, v4);
          (*(v5 + 56))(v31, 0, 1, v4);
          swift_beginAccess();
          sub_114310(v31, v2 + v3);
          goto LABEL_21;
        }

        goto LABEL_27;
      }

      v36 = v0[45];
      sub_1E1780();
      v38 = v37;
      sub_1E0920();
      v38, v39, v40, v41, v42, v43, v44, v45;
      v18 = v6(v36, 1, v4);
      if (v18 != 1)
      {
        v46 = v0[47];
        v47 = v0[41];
        (*(v5 + 32))(v47, v0[45], v4);
        (*(v5 + 16))(v46, v47, v4);
        (*(v5 + 56))(v46, 0, 1, v4);
        swift_beginAccess();
        sub_114310(v46, v2 + v3);
        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v7)
      {
        v33 = [objc_opt_self() defaultBag];
        v34 = [v33 appAnalyticsURL];
        v0[53] = v34;

        v0[2] = v0;
        v0[7] = v0 + 39;
        v0[3] = sub_112AA4;
        v35 = swift_continuation_init();
        v0[17] = sub_3D68(&qword_287750, &qword_1FC3A8);
        v0[10] = _NSConcreteStackBlock;
        v0[11] = 1107296256;
        v0[12] = sub_1131E4;
        v0[13] = &unk_26DAC0;
        v0[14] = v35;
        [v34 valueWithCompletion:v0 + 10];
        v18 = (v0 + 2);

        return _swift_continuation_await(v18);
      }

      if (v7 != 1)
      {
        v48 = v0[46];
        sub_1E1780();
        v50 = v49;
        sub_1E0920();
        v50, v51, v52, v53, v54, v55, v56, v57;
        v18 = v6(v48, 1, v4);
        if (v18 != 1)
        {
          v58 = v0[47];
          v59 = v0[41];
          (*(v5 + 32))(v59, v0[46], v4);
          (*(v5 + 16))(v58, v59, v4);
          (*(v5 + 56))(v58, 0, 1, v4);
          swift_beginAccess();
          sub_114310(v58, v2 + v3);
          goto LABEL_21;
        }

        goto LABEL_28;
      }

      v8 = v0[48];
      sub_1E1780();
      v10 = v9;
      sub_1E0920();
      v10, v11, v12, v13, v14, v15, v16, v17;
      v18 = v6(v8, 1, v4);
      if (v18 != 1)
      {
        v19 = v0[47];
        v20 = v0[41];
        (*(v5 + 32))(v20, v0[48], v4);
        (*(v5 + 16))(v19, v20, v4);
        (*(v5 + 56))(v19, 0, 1, v4);
        swift_beginAccess();
        sub_114310(v19, v2 + v3);
LABEL_21:
        swift_endAccess();
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return _swift_continuation_await(v18);
  }

  (*(v5 + 32))(v0[41], v0[49], v4);
LABEL_22:

  v72 = v0[1];

  return v72();
}

uint64_t sub_112AA4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 432) = v1;
  if (v1)
  {
    v2 = sub_112CFC;
  }

  else
  {
    v2 = sub_112BB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_112BB4()
{
  v1 = *(v0 + 416);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 376);
  v5 = *(v0 + 328);
  v6 = *(v0 + 336);
  v7 = *(v0 + 312);

  sub_1E0910();
  (*(v1 + 16))(v4, v5, v2);
  (*(v1 + 56))(v4, 0, 1, v2);
  swift_beginAccess();
  sub_114310(v4, v6 + v3);
  swift_endAccess();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_112CFC()
{
  v1 = *(v0 + 424);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void sub_112DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_3D68(&qword_282650, &qword_1EFF18);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v10 = *(a2 + OBJC_IVAR___BAAppManager_flushManager);
  if (v10)
  {
    (*(v7 + 16))(v9, a1, v6);
    v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v12 = swift_allocObject();
    (*(v7 + 32))(v12 + v11, v9, v6);

    sub_1E0BA0();
    v12, v13, v14, v15, v16, v17, v18, v19;
    v10, v20, v21, v22, v23, v24, v25, v26;
  }

  else
  {
    sub_1E18E0();
  }
}

uint64_t sub_112F3C()
{
  v1 = v0 + OBJC_IVAR___BAAppManager_applicationGroupIdentifier;
  swift_beginAccess();
  v2 = *(v1 + 8);
  if (!v2 || (v3 = objc_allocWithZone(NSUserDefaults), , v4 = sub_1E1770(), v2, v5, v6, v7, v8, v9, v10, v11, v12 = [v3 initWithSuiteName:v4], v4, !v12))
  {
    v12 = [objc_opt_self() standardUserDefaults];
  }

  v13 = [v12 stringForKey:@"BAEnvironment"];
  if (!v13)
  {

    return 0;
  }

  v14 = v13;
  v15 = sub_1E1780();
  v17 = v16;

  v25 = v15 == 7759204 && v17 == 0xE300000000000000;
  if (v25 || (sub_1E1D30() & 1) != 0)
  {
    v17, v18, v19, v20, v21, v22, v23, v24;

    return 1;
  }

  v27 = v15 == 24945 && v17 == 0xE200000000000000;
  if (!v27 && (sub_1E1D30() & 1) == 0)
  {
    v28 = v15 == 1953719668 && v17 == 0xE400000000000000;
    if (v28 || (sub_1E1D30() & 1) != 0)
    {
      v17, v18, v19, v20, v21, v22, v23, v24;

      return 3;
    }

    if (v15 == 0x676E6967617473 && v17 == 0xE700000000000000 || (sub_1E1D30() & 1) != 0)
    {
      v17, v18, v19, v20, v21, v22, v23, v24;

      return 4;
    }

    if (v15 == 1685025392 && v17 == 0xE400000000000000)
    {
      0xE400000000000000, v18, v19, v20, v21, v22, v23, v24;

      return 5;
    }

    v29 = sub_1E1D30();
    v17, v30, v31, v32, v33, v34, v35, v36;

    if (v29)
    {
      return 5;
    }

    return 0;
  }

  v17, v18, v19, v20, v21, v22, v23, v24;

  return 2;
}

uint64_t sub_1131E4(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = sub_48B8((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    sub_3D68(&qword_287758, &qword_210300);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return _swift_continuation_throwingResumeWithError(v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v7);
  }
}

void sub_1132C4()
{
  v0 = BUOnboardingBooksBundleID();
  if (!v0)
  {
    sub_1E1780();
    v2 = v1;
    v0 = sub_1E1770();
    v2, v3, v4, v5, v6, v7, v8, v9;
  }

  v10 = [objc_opt_self() acknowledgementNeededForPrivacyIdentifier:v0];

  if ((v10 & 1) == 0)
  {
    sub_1E0DC0();
    v11 = sub_1E0DB0();
    sub_1E0DA0();
  }
}

uint64_t AppManager.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E0930();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_2876E8, &qword_1FC308);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v13 = OBJC_IVAR___BAAppManager_targetURL;
  swift_beginAccess();
  sub_1137B8(v1 + v13, v12);
  v14 = *(v4 + 48);
  if (v14(v12, 1, v3) != 1)
  {
    return (*(v4 + 32))(a1, v12, v3);
  }

  sub_113828(v12);
  v15 = [objc_opt_self() standardUserDefaults];
  v16 = sub_1E1770();
  v17 = [v15 URLForKey:v16];

  if (v17)
  {
    sub_1E0910();

    v12 = v6;
    return (*(v4 + 32))(a1, v12, v3);
  }

  sub_1E1780();
  v19 = v18;
  sub_1E0920();
  v19, v20, v21, v22, v23, v24, v25, v26;
  result = (v14)(v10, 1, v3);
  v12 = v10;
  if (result != 1)
  {
    return (*(v4 + 32))(a1, v12, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1137B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_2876E8, &qword_1FC308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_113828(uint64_t a1)
{
  v2 = sub_3D68(&qword_2876E8, &qword_1FC308);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppManager.name.getter()
{
  v0 = sub_112F3C();
  v1 = 0x61622D736B6F6F62;
  if (v0 == 2)
  {
    v1 = 0x61712D736B6F6F62;
  }

  if (v0 == 1)
  {
    return 0x65642D736B6F6F62;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_113A58()
{
  v1 = (v0 + OBJC_IVAR___BAAppManager_applicationGroupIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_113AB0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___BAAppManager_applicationGroupIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id sub_113B0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BAAppManager_uploadBatchEventConfig;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_113B80(uint64_t a1)
{
  sub_113D38(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_113D38(uint64_t a1)
{
  if (!qword_287D80)
  {
    sub_1E0930();
    v1 = sub_1E1A20();
    if (!v2)
    {
      atomic_store(v1, &qword_287D80);
    }
  }
}

uint64_t sub_113D90()
{
  v0 = sub_1E15E0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = sub_1E1610();
  v4 = *(v14[0] - 8);
  __chkstk_darwin(v14[0]);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E15F0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4C270();
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v7);
  v11 = sub_1E1A10();
  (*(v8 + 8))(v10, v7);
  aBlock[4] = sub_1132C4;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11AD8C;
  aBlock[3] = &unk_26DA20;
  v12 = _Block_copy(aBlock);
  sub_1E1600();
  v14[1] = _swiftEmptyArrayStorage;
  sub_1140BC();
  sub_3D68(&unk_287C10, &qword_1FC390);
  sub_114114();
  sub_1E1A70();
  sub_1E19F0();
  _Block_release(v12);

  (*(v1 + 8))(v3, v0);
  return (*(v4 + 8))(v6, v14[0]);
}

uint64_t sub_1140A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1140BC()
{
  result = qword_287740;
  if (!qword_287740)
  {
    v3 = sub_1E15E0();
    result = swift_getWitnessTable(&protocol conformance descriptor for DispatchWorkItemFlags, v3, v0, v1);
    atomic_store(result, &qword_287740);
  }

  return result;
}

unint64_t sub_114114()
{
  result = qword_287748;
  if (!qword_287748)
  {
    v3 = sub_5DE50(&unk_287C10, &qword_1FC390);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_287748);
  }

  return result;
}

uint64_t sub_1141F4()
{
  v1 = sub_3D68(&qword_282650, &qword_1EFF18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_114310(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_2876E8, &qword_1FC308);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_114380()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1143C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7E674;

  return sub_112210();
}

uint64_t PurchaseFailEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 28);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.contentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 28);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.prevAltContentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 32);
  v4 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.prevAltContentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 32);
  v4 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 36);
  v4 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 36);
  v4 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.purchaseFailData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 40);
  v4 = sub_3D68(&qword_287790, &unk_1FC3C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.purchaseFailData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 40);
  v4 = sub_3D68(&qword_287790, &unk_1FC3C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 44);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 44);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 48);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 48);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 52);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 52);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.uppParentContentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 56);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.uppParentContentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 56);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 60);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 60);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PurchaseFailEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.required<A>(_:);
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  (*(*(v15 - 8) + 104))(a1 + v14, v6, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_287790, &unk_1FC3C0);
  (*(*(v17 - 8) + 104))(a1 + v16, v6, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  v25 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  v27 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v28 = *(*(v27 - 8) + 104);

  return v28(a1 + v26, v6, v27);
}

uint64_t PurchaseFailEvent.Model.purchaseFailData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 396);
  v3 = *(v1 + 400);
  v4 = *(v1 + 408);
  v5 = *(v1 + 432);
  *a1 = *(v1 + 392);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 416);
  *(a1 + 40) = v5;
}

uint64_t PurchaseFailEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 456);
  *a1 = *(v1 + 440);
  *(a1 + 16) = v2;
}

uint64_t PurchaseFailEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[58];
  v3 = v1[59];
  v4 = v1[60];
  v5 = v1[61];
  v6 = v1[62];
  v7 = v1[63];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

void PurchaseFailEvent.Model.uppParentContentData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 520);
  v3 = *(v1 + 528);
  v4 = *(v1 + 536);
  v5 = *(v1 + 544);
  v6 = *(v1 + 552);
  v7 = *(v1 + 560);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v1 + 568);
  sub_4E2A0(v2, v3, v4, v5, v6, v7);
}

uint64_t PurchaseFailEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent.Model(0) + 60);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.Model.init(altContentTypeExposureData:contentData:contentStoreData:contentExposureData:prevAltContentExposureData:purchaseData:purchaseFailData:upSellData:seriesData:suggestionData:uppParentContentData:eventData:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int16 *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, char *a11, uint64_t a12, uint64_t a13)
{
  v14 = *a5;
  v15 = *a6;
  v16 = a6[1];
  v17 = *(a6 + 16);
  v18 = *(a6 + 17);
  v20 = a6[3];
  v19 = a6[4];
  v21 = *a7;
  v22 = *(a7 + 1);
  v23 = a7[8];
  v24 = *(a8 + 16);
  v25 = *a11;
  v26 = *(a12 + 48);
  v27 = *a1;
  v28 = a1[1];
  v29 = a1[2];
  *(a9 + 41) = *(a1 + 41);
  *(a9 + 16) = v28;
  *(a9 + 32) = v29;
  *a9 = v27;
  v30 = a2[3];
  *(a9 + 96) = a2[2];
  *(a9 + 112) = v30;
  v31 = a2[5];
  *(a9 + 128) = a2[4];
  *(a9 + 144) = v31;
  v32 = a2[1];
  *(a9 + 64) = *a2;
  *(a9 + 80) = v32;
  v33 = *a3;
  v34 = a3[1];
  v35 = a3[2];
  v36 = a3[3];
  *(a9 + 221) = *(a3 + 61);
  *(a9 + 192) = v35;
  *(a9 + 208) = v36;
  *(a9 + 160) = v33;
  *(a9 + 176) = v34;
  v37 = *a4;
  v38 = a4[1];
  v39 = a4[3];
  *(a9 + 264) = a4[2];
  *(a9 + 280) = v39;
  *(a9 + 248) = v38;
  *(a9 + 232) = v37;
  v40 = a4[4];
  v41 = a4[5];
  v42 = a4[6];
  *(a9 + 342) = *(a4 + 110);
  *(a9 + 312) = v41;
  *(a9 + 328) = v42;
  *(a9 + 296) = v40;
  *(a9 + 350) = v14;
  *(a9 + 352) = v15;
  *(a9 + 360) = v16;
  *(a9 + 368) = v17;
  *(a9 + 369) = v18;
  *(a9 + 376) = v20;
  *(a9 + 384) = v19;
  *(a9 + 392) = v21;
  *(a9 + 396) = v22;
  *(a9 + 400) = v23;
  v43 = *(a7 + 2);
  *(a9 + 408) = *(a7 + 1);
  *(a9 + 424) = v43;
  *(a9 + 440) = *a8;
  *(a9 + 456) = v24;
  v44 = a10[1];
  *(a9 + 464) = *a10;
  *(a9 + 480) = v44;
  *(a9 + 496) = a10[2];
  *(a9 + 512) = v25;
  v45 = *(a12 + 16);
  *(a9 + 520) = *a12;
  *(a9 + 536) = v45;
  *(a9 + 552) = *(a12 + 32);
  *(a9 + 568) = v26;
  v46 = *(type metadata accessor for PurchaseFailEvent.Model(0) + 60);
  v47 = sub_1E1150();
  v48 = *(*(v47 - 8) + 32);

  return v48(a9 + v46, a13, v47);
}

uint64_t sub_115B24(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x6974736567677573;
    v6 = 0xD000000000000014;
    if (a1 != 10)
    {
      v6 = 0x746144746E657665;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    v8 = 0x61446C6C65537075;
    if (a1 != 7)
    {
      v8 = 0x6144736569726573;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x44746E65746E6F63;
    v2 = 0xD000000000000013;
    v3 = 0xD00000000000001ALL;
    if (a1 != 4)
    {
      v3 = 0x6573616863727570;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 != 1)
    {
      v1 = 0xD000000000000010;
    }

    if (!a1)
    {
      v1 = 0xD00000000000001ALL;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_115CF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_11889C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_115D24(uint64_t a1)
{
  v2 = sub_116690();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_115D60(uint64_t a1)
{
  v2 = sub_116690();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PurchaseFailEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_287798, &qword_1FC3D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v90 - v7;
  sub_48B8(a1, a1[3]);
  sub_116690();
  sub_1E1E00();
  v9 = v3[1];
  v143[0] = *v3;
  v143[1] = v9;
  v11 = *v3;
  v10 = v3[1];
  v144[0] = v3[2];
  *(v144 + 9) = *(v3 + 41);
  v140 = v11;
  v141 = v10;
  v142[0] = v3[2];
  *(v142 + 9) = *(v3 + 41);
  v139 = 0;
  sub_17AA4(v143, &v110, &qword_27FFE8, &qword_1FC3D0);
  sub_4EFC8();
  sub_1E1C80();
  if (v2)
  {
    v110 = v140;
    v111 = v141;
    v112[0] = v142[0];
    *(v112 + 9) = *(v142 + 9);
    sub_18E48(&v110, &qword_27FFE8, &qword_1FC3D0);
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v132[0] = v140;
    v132[1] = v141;
    v133[0] = v142[0];
    *(v133 + 9) = *(v142 + 9);
    sub_18E48(v132, &qword_27FFE8, &qword_1FC3D0);
    v13 = v3[7];
    v14 = v3[5];
    v135 = v3[6];
    v136 = v13;
    v15 = v3[7];
    v16 = v3[9];
    v137 = v3[8];
    v138 = v16;
    v17 = v3[5];
    v134[0] = v3[4];
    v134[1] = v17;
    v128 = v135;
    v129 = v15;
    v18 = v3[9];
    v130 = v137;
    v131 = v18;
    v126 = v134[0];
    v127 = v14;
    v125 = 1;
    sub_13A5C(v134, &v110);
    sub_143D0();
    sub_1E1CF0();
    v121[2] = v128;
    v121[3] = v129;
    v121[4] = v130;
    v121[5] = v131;
    v121[0] = v126;
    v121[1] = v127;
    sub_14424(v121);
    v19 = v3[11];
    v20 = v3[13];
    v123 = v3[12];
    *v124 = v20;
    v21 = v3[11];
    v122[0] = v3[10];
    v122[1] = v21;
    v22 = v3[13];
    v119 = v123;
    v120[0] = v22;
    *&v124[13] = *(v3 + 221);
    *(v120 + 13) = *(v3 + 221);
    v117 = v122[0];
    v118 = v19;
    v116 = 2;
    sub_17AA4(v122, &v110, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    v145 = v5;
    sub_1E1C80();
    v108[2] = v119;
    v109[0] = v120[0];
    *(v109 + 13) = *(v120 + 13);
    v108[0] = v117;
    v108[1] = v118;
    sub_18E48(v108, &qword_27FFF0, &unk_1E9C00);
    v23 = *(v3 + 312);
    v24 = *(v3 + 280);
    v113 = *(v3 + 296);
    v114 = v23;
    v25 = *(v3 + 312);
    *v115 = *(v3 + 328);
    v26 = *(v3 + 248);
    v110 = *(v3 + 232);
    v111 = v26;
    v27 = *(v3 + 280);
    v112[0] = *(v3 + 264);
    v112[1] = v27;
    v105 = v113;
    v106 = v25;
    v107[0] = *(v3 + 328);
    v28 = *(v3 + 248);
    v101 = *(v3 + 232);
    v102 = v28;
    *&v115[14] = *(v3 + 342);
    *(v107 + 14) = *(v3 + 342);
    v103 = v112[0];
    v104 = v24;
    v100 = 3;
    sub_17AA4(&v110, v98, &qword_27FFF8, &qword_1F06D0);
    sub_4F070();
    sub_1E1C80();
    v98[4] = v105;
    v98[5] = v106;
    *v99 = v107[0];
    *&v99[14] = *(v107 + 14);
    v98[0] = v101;
    v98[1] = v102;
    v98[2] = v103;
    v98[3] = v104;
    sub_18E48(v98, &qword_27FFF8, &qword_1F06D0);
    LOWORD(v92) = *(v3 + 175);
    v97 = 4;
    sub_4F0C4();
    sub_1E1C80();
    v29 = *(v3 + 45);
    v30 = *(v3 + 368);
    v31 = *(v3 + 369);
    v32 = *(v3 + 47);
    v33 = *(v3 + 48);
    *&v92 = *(v3 + 44);
    *(&v92 + 1) = v29;
    LOBYTE(v93) = v30;
    BYTE1(v93) = v31;
    *&v94 = v32;
    *(&v94 + 1) = v33;
    v97 = 5;
    sub_2C904();

    v91 = v8;
    sub_1E1CF0();
    v34 = *(&v92 + 1);
    *(&v94 + 1), v35, v36, v37, v38, v39, v40, v41;
    v34, v42, v43, v44, v45, v46, v47, v48;
    v49 = *(v3 + 99);
    v50 = *(v3 + 400);
    v51 = *(v3 + 51);
    v52 = *(v3 + 54);
    LOBYTE(v92) = *(v3 + 392);
    DWORD1(v92) = v49;
    BYTE8(v92) = v50;
    v93 = v51;
    v94 = v3[26];
    v95 = v52;
    v97 = 6;
    sub_1166E4();

    sub_1E1CF0();
    v53 = v95;
    v94, v54, v55, v56, v57, v58, v59, v60;
    v53, v61, v62, v63, v64, v65, v66, v67;
    v68 = *(v3 + 57);
    v92 = *(v3 + 440);
    v93 = v68;
    v97 = 7;
    sub_28450();

    sub_1E1C80();
    v93, v69, v70, v71, v72, v73, v74, v75;
    v76 = *(v3 + 59);
    v77 = *(v3 + 60);
    v78 = *(v3 + 61);
    v79 = *(v3 + 62);
    v80 = *(v3 + 63);
    *&v92 = *(v3 + 58);
    *(&v92 + 1) = v76;
    v93 = v77;
    *&v94 = v78;
    *(&v94 + 1) = v79;
    v95 = v80;
    v97 = 8;
    sub_13BDC(v92, v76, v77, v78, v79, v80);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v92, *(&v92 + 1), v93, v94, *(&v94 + 1), v95, v81, v82);
    LOBYTE(v92) = *(v3 + 512);
    v97 = 9;
    sub_284F8();
    sub_1E1C80();
    v83 = *(v3 + 66);
    v84 = *(v3 + 67);
    v85 = *(v3 + 68);
    v86 = *(v3 + 69);
    v87 = *(v3 + 70);
    v88 = *(v3 + 568);
    *&v92 = *(v3 + 65);
    *(&v92 + 1) = v83;
    v93 = v84;
    *&v94 = v85;
    *(&v94 + 1) = v86;
    v95 = v87;
    v96 = v88;
    v97 = 10;
    sub_4E2A0(v92, v83, v84, v85, v86, v87);
    sub_4F118();
    sub_1E1C80();
    sub_4F16C(v92, *(&v92 + 1), v93, v94, *(&v94 + 1), v95, v96, v89);
    type metadata accessor for PurchaseFailEvent.Model(0);
    LOBYTE(v92) = 11;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    return (*(v6 + 8))(v91, v145);
  }
}

unint64_t sub_116690()
{
  result = qword_2877A0;
  if (!qword_2877A0)
  {
    result = swift_getWitnessTable(aM_10, &type metadata for PurchaseFailEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2877A0);
  }

  return result;
}

unint64_t sub_1166E4()
{
  result = qword_2877A8;
  if (!qword_2877A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PurchaseFailData, &type metadata for PurchaseFailData, v0, v1);
    atomic_store(result, &qword_2877A8);
  }

  return result;
}

void PurchaseFailEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1E1150();
  v54 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_3D68(&qword_2877B0, &qword_1FC3E0);
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v7 = v51 - v6;
  v8 = type metadata accessor for PurchaseFailEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v83 = a1;
  sub_48B8(a1, v11);
  sub_116690();
  v57 = v7;
  v12 = v59;
  sub_1E1DF0();
  if (v12)
  {
    sub_4E48(v83, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v52 = v5;
    v53 = v3;
    v59 = v10;
    v20 = v56;
    v78 = 0;
    sub_4FB10();
    sub_1E1BB0();
    v21 = v80;
    v22 = v59;
    *v59 = v79;
    *(v22 + 1) = v21;
    *(v22 + 2) = v81[0];
    *(v22 + 41) = *(v81 + 9);
    v71 = 1;
    sub_14CB8();
    sub_1E1C20();
    v23 = v75;
    *(v22 + 6) = v74;
    *(v22 + 7) = v23;
    v24 = v77;
    *(v22 + 8) = v76;
    *(v22 + 9) = v24;
    v25 = v73;
    *(v22 + 4) = v72;
    *(v22 + 5) = v25;
    v66 = 2;
    sub_4FB64();
    v51[1] = 0;
    sub_1E1BB0();
    v26 = *v70;
    *(v22 + 12) = v69;
    *(v22 + 13) = v26;
    *(v22 + 221) = *&v70[13];
    v27 = v68;
    *(v22 + 10) = v67;
    *(v22 + 11) = v27;
    v65 = 3;
    sub_4FBB8();
    sub_1E1BB0();
    v28 = v81[3];
    *(v22 + 232) = v81[2];
    *(v22 + 248) = v28;
    v29 = v81[7];
    *(v22 + 296) = v81[6];
    *(v22 + 312) = v29;
    *(v22 + 328) = v82[0];
    *(v22 + 342) = *(v82 + 14);
    v30 = v81[5];
    *(v22 + 264) = v81[4];
    *(v22 + 280) = v30;
    v64 = 4;
    sub_4FC0C();
    sub_1E1BB0();
    *(v22 + 175) = v60;
    v64 = 5;
    sub_2C8AC();
    sub_1E1C20();
    v31 = *(&v60 + 1);
    v32 = v61;
    v33 = BYTE1(v61);
    v34 = *(&v61 + 1);
    v35 = v62;
    *(v22 + 44) = v60;
    *(v22 + 45) = v31;
    v22[368] = v32;
    v22[369] = v33;
    *(v22 + 47) = v34;
    *(v22 + 48) = v35;
    v64 = 6;
    sub_11716C();
    sub_1E1C20();
    v36 = DWORD1(v60);
    v37 = BYTE8(v60);
    v22[392] = v60;
    *(v22 + 99) = v36;
    v22[400] = v37;
    v38 = v62;
    *(v22 + 408) = v61;
    *(v22 + 424) = v38;
    v64 = 7;
    sub_28EF4();
    sub_1E1BB0();
    v39 = v61;
    *(v22 + 440) = v60;
    *(v22 + 57) = v39;
    v64 = 8;
    sub_DAD8();
    sub_1E1BB0();
    v40 = v61;
    *(v22 + 29) = v60;
    *(v22 + 30) = v40;
    *(v22 + 31) = v62;
    v64 = 9;
    sub_28F9C();
    sub_1E1BB0();
    v59[512] = v60;
    v64 = 10;
    sub_4FC60();
    sub_1E1BB0();
    v41 = v63;
    v42 = v61;
    *(v22 + 520) = v60;
    *(v22 + 536) = v42;
    *(v22 + 552) = v62;
    v59[568] = v41;
    LOBYTE(v60) = 11;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v57, v58);
    v43 = v59;
    (*(v54 + 32))(&v59[*(v8 + 60)], v52, v53);
    sub_1171C0(v43, v55);
    sub_4E48(v83, v44, v45, v46, v47, v48, v49, v50);
    sub_117224(v43);
  }
}

unint64_t sub_11716C()
{
  result = qword_2877B8;
  if (!qword_2877B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PurchaseFailData, &type metadata for PurchaseFailData, v0, v1);
    atomic_store(result, &qword_2877B8);
  }

  return result;
}

uint64_t sub_1171C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseFailEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_117224(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseFailEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_117320@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  (*(*(v16 - 8) + 104))(a2 + v15, v7, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_287790, &unk_1FC3C0);
  (*(*(v18 - 8) + 104))(a2 + v17, v7, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  v24 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  v26 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  v28 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v29 = *(*(v28 - 8) + 104);

  return v29(a2 + v27, v7, v28);
}

uint64_t sub_117718(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_24:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_23:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_24;
  }

  v14 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_23;
  }

  v15 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_23;
  }

  v16 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_23;
  }

  v17 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_23;
  }

  v18 = sub_3D68(&qword_287790, &unk_1FC3C0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_23;
  }

  v19 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_23;
  }

  v20 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_23;
  }

  v21 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_23;
  }

  v22 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_23;
  }

  v24 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v25 = *(*(v24 - 8) + 48);
  v26 = a1 + a3[15];

  return v25(v26, a2, v24);
}

uint64_t sub_117B84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_24:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_23:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_24;
  }

  v16 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_23;
  }

  v17 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_23;
  }

  v18 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_23;
  }

  v19 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_23;
  }

  v20 = sub_3D68(&qword_287790, &unk_1FC3C0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_23;
  }

  v21 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_23;
  }

  v22 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_23;
  }

  v23 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_23;
  }

  v24 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_23;
  }

  v26 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v27 = *(*(v26 - 8) + 56);
  v28 = a1 + a4[15];

  return v27(v28, a2, a2, v26);
}

void sub_117FE8(uint64_t a1)
{
  sub_1183C4(319, &qword_2800D0, sub_4FB10, sub_4EFC8, &type metadata for AltContentTypeExposureData);
  if (v1 <= 0x3F)
  {
    sub_1183C4(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
    if (v2 <= 0x3F)
    {
      sub_1183C4(319, &qword_2800D8, sub_4FB64, sub_4F01C, &type metadata for ContentStoreData);
      if (v3 <= 0x3F)
      {
        sub_1183C4(319, &qword_2800E0, sub_4FBB8, sub_4F070, &type metadata for ContentExposureData);
        if (v4 <= 0x3F)
        {
          sub_1183C4(319, &qword_2800E8, sub_4FC0C, sub_4F0C4, &type metadata for PrevAltContentExposureData);
          if (v5 <= 0x3F)
          {
            sub_1183C4(319, &qword_2800F0, sub_2C8AC, sub_2C904, &type metadata for PurchaseData);
            if (v6 <= 0x3F)
            {
              sub_1183C4(319, &unk_287828, sub_11716C, sub_1166E4, &type metadata for PurchaseFailData);
              if (v7 <= 0x3F)
              {
                sub_1183C4(319, &qword_27EAE8, sub_28EF4, sub_28450, &type metadata for UpSellData);
                if (v8 <= 0x3F)
                {
                  sub_1183C4(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
                  if (v9 <= 0x3F)
                  {
                    sub_1183C4(319, &unk_27EAF8, sub_28F9C, sub_284F8, &type metadata for SuggestionData);
                    if (v10 <= 0x3F)
                    {
                      sub_1183C4(319, &unk_2800F8, sub_4FC60, sub_4F118, &type metadata for UppParentContentData);
                      if (v11 <= 0x3F)
                      {
                        sub_5684(319);
                        if (v12 <= 0x3F)
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

void sub_1183C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_118454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
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
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_118514(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1185B8(uint64_t a1)
{
  sub_19FE0(319, &qword_2801B8, &type metadata for AltContentTypeExposureData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_2801C0, &type metadata for ContentStoreData);
    if (v2 <= 0x3F)
    {
      sub_19FE0(319, &qword_2801C8, &type metadata for ContentExposureData);
      if (v3 <= 0x3F)
      {
        sub_19FE0(319, &qword_2801D0, &type metadata for PrevAltContentExposureData);
        if (v4 <= 0x3F)
        {
          sub_19FE0(319, &qword_27EBC8, &type metadata for UpSellData);
          if (v5 <= 0x3F)
          {
            sub_19FE0(319, &qword_27E398, &type metadata for SeriesData);
            if (v6 <= 0x3F)
            {
              sub_19FE0(319, &qword_27EBD8, &type metadata for SuggestionData);
              if (v7 <= 0x3F)
              {
                sub_19FE0(319, &unk_2801D8, &type metadata for UppParentContentData);
                if (v8 <= 0x3F)
                {
                  sub_1E1150();
                  if (v9 <= 0x3F)
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

unint64_t sub_118798()
{
  result = qword_287938;
  if (!qword_287938)
  {
    result = swift_getWitnessTable(byte_1FC5E4, &type metadata for PurchaseFailEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_287938);
  }

  return result;
}

unint64_t sub_1187F0()
{
  result = qword_287940;
  if (!qword_287940)
  {
    result = swift_getWitnessTable(byte_1FC554, &type metadata for PurchaseFailEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_287940);
  }

  return result;
}

unint64_t sub_118848()
{
  result = qword_287948;
  if (!qword_287948)
  {
    result = swift_getWitnessTable(byte_1FC57C, &type metadata for PurchaseFailEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_287948);
  }

  return result;
}

uint64_t sub_11889C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000213F10;
  if (a1 == 0xD00000000000001ALL && 0x8000000000213F10 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEB00000000617461;
    if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x8000000000213F30;
      if (a1 == 0xD000000000000010 && 0x8000000000213F30 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v14 = 0x8000000000213F50;
        if (a1 == 0xD000000000000013 && 0x8000000000213F50 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else
        {
          v15 = 0x8000000000213F70;
          if (a1 == 0xD00000000000001ALL && 0x8000000000213F70 == a2 || (sub_1E1D30() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 4;
          }

          else
          {
            v16 = 0xEC00000061746144;
            if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
            {
              a2, v16, a3, a4, a5, a6, a7, a8;
              return 5;
            }

            else
            {
              v17 = 0x80000000002164A0;
              if (a1 == 0xD000000000000010 && 0x80000000002164A0 == a2 || (sub_1E1D30() & 1) != 0)
              {
                a2, v17, a3, a4, a5, a6, a7, a8;
                return 6;
              }

              else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
              {
                a2, v17, a3, a4, a5, a6, a7, a8;
                return 7;
              }

              else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
              {
                a2, v17, a3, a4, a5, a6, a7, a8;
                return 8;
              }

              else
              {
                v18 = 0xEE00617461446E6FLL;
                if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
                {
                  a2, v18, a3, a4, a5, a6, a7, a8;
                  return 9;
                }

                else
                {
                  v19 = 0x8000000000213F90;
                  if (a1 == 0xD000000000000014 && 0x8000000000213F90 == a2 || (sub_1E1D30() & 1) != 0)
                  {
                    a2, v19, a3, a4, a5, a6, a7, a8;
                    return 10;
                  }

                  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
                  {
                    0xE900000000000061, v19, a3, a4, a5, a6, a7, a8;
                    return 11;
                  }

                  else
                  {
                    v20 = sub_1E1D30();
                    a2, v21, v22, v23, v24, v25, v26, v27;
                    if (v20)
                    {
                      return 11;
                    }

                    else
                    {
                      return 12;
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

void sub_118CB4(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x8000000000214F30 == a2)
  {
    a2, 0x8000000000214F30, 0xD000000000000019, a3, a4, a5, a6, a7;
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

uint64_t sub_118D48(uint64_t a1)
{
  v2 = sub_118F64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_118D84(uint64_t a1)
{
  v2 = sub_118F64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BooksTreatmentData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_287950, &qword_1FC660);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_118F64();

  sub_1E1E00();
  v16[1] = v7;
  sub_3D68(&qword_287960, &qword_1FC668);
  sub_119168(&qword_287968, sub_EF154, &protocol conformance descriptor for <A> [A]);
  sub_1E1CF0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_118F64()
{
  result = qword_287958;
  if (!qword_287958)
  {
    result = swift_getWitnessTable(a1_6, &type metadata for BooksTreatmentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_287958);
  }

  return result;
}

void BooksTreatmentData.init(from:)(BAEventReporter **a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3D68(&qword_287970, &qword_1FC670);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_118F64();
  sub_1E1DF0();
  if (!v2)
  {
    sub_3D68(&qword_287960, &qword_1FC668);
    sub_119168(&qword_287978, sub_EF0FC, &protocol conformance descriptor for <A> [A]);
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v16[1];
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_119168(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_5DE50(&qword_287960, &qword_1FC668);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1191E4()
{
  result = qword_287980;
  if (!qword_287980)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BooksTreatmentData, &type metadata for BooksTreatmentData, v0, v1);
    atomic_store(result, &qword_287980);
  }

  return result;
}

unint64_t sub_11923C()
{
  result = qword_287988;
  if (!qword_287988)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BooksTreatmentData, &type metadata for BooksTreatmentData, v0, v1);
    atomic_store(result, &qword_287988);
  }

  return result;
}

unint64_t sub_1192E4()
{
  result = qword_287990;
  if (!qword_287990)
  {
    result = swift_getWitnessTable(aI_9, &type metadata for BooksTreatmentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_287990);
  }

  return result;
}

unint64_t sub_11933C()
{
  result = qword_287998;
  if (!qword_287998)
  {
    result = swift_getWitnessTable(byte_1FC790, &type metadata for BooksTreatmentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_287998);
  }

  return result;
}

unint64_t sub_119394()
{
  result = qword_2879A0;
  if (!qword_2879A0)
  {
    result = swift_getWitnessTable(aY_13, &type metadata for BooksTreatmentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2879A0);
  }

  return result;
}

BookAnalytics::GiftFailureReason_optional __swiftcall GiftFailureReason.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260FD0;
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

unint64_t sub_119448()
{
  result = qword_2879A8;
  if (!qword_2879A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GiftFailureReason, &type metadata for GiftFailureReason, v0, v1);
    atomic_store(result, &qword_2879A8);
  }

  return result;
}

unint64_t sub_119568()
{
  result = qword_2879B0;
  if (!qword_2879B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GiftFailureReason, &type metadata for GiftFailureReason, v0, v1);
    atomic_store(result, &qword_2879B0);
  }

  return result;
}

void __swiftcall GenreData.init(genreId:subGenreId:contentType:)(BookAnalytics::GenreData *__return_ptr retstr, Swift::String genreId, Swift::String_optional subGenreId, Swift::String_optional contentType)
{
  retstr->genreId = genreId;
  retstr->subGenreId = subGenreId;
  retstr->contentType = contentType;
}

uint64_t static LibraryEditActionData.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E1D30() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1E1D30();
}

uint64_t sub_1196C4()
{
  v1 = 0x55746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x49746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_119734@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_119E6C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_11975C(uint64_t a1)
{
  v2 = sub_119998();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_119798(uint64_t a1)
{
  v2 = sub_119998();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LibraryEditActionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2879B8, &qword_1FC9C0);
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
  sub_119998();
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

unint64_t sub_119998()
{
  result = qword_2879C0;
  if (!qword_2879C0)
  {
    result = swift_getWitnessTable(byte_1FCBBC, &type metadata for LibraryEditActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2879C0);
  }

  return result;
}

void LibraryEditActionData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_2879C8, &qword_1FC9C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53 - v7;
  sub_48B8(a1, a1[3]);
  sub_119998();
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

__n128 sub_119C9C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_119CB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_119CF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_119D68()
{
  result = qword_2879D0;
  if (!qword_2879D0)
  {
    result = swift_getWitnessTable(byte_1FCB94, &type metadata for LibraryEditActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2879D0);
  }

  return result;
}

unint64_t sub_119DC0()
{
  result = qword_2879D8;
  if (!qword_2879D8)
  {
    result = swift_getWitnessTable(byte_1FCB04, &type metadata for LibraryEditActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2879D8);
  }

  return result;
}

unint64_t sub_119E18()
{
  result = qword_2879E0;
  if (!qword_2879E0)
  {
    result = swift_getWitnessTable(byte_1FCB2C, &type metadata for LibraryEditActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2879E0);
  }

  return result;
}

uint64_t sub_119E6C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x80000000002138D0;
  if (a1 == 0xD000000000000010 && 0x80000000002138D0 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xED00004449726573;
    if (a1 == 0x55746E65746E6F63 && a2 == 0xED00004449726573 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000044)
    {
      0xE900000000000044, v12, a3, a4, a5, a6, a7, a8;
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
}

uint64_t NetworkReachability.__allocating_init()()
{
  v0 = swift_allocObject();
  *&address.sa_data[6] = 0;
  *&address.sa_len = 528;
  *(v0 + 16) = SCNetworkReachabilityCreateWithAddress(0, &address);
  return v0;
}

BookAnalytics::NetworkReachabilityStatus_optional __swiftcall NetworkReachabilityStatus.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261038;
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

uint64_t NetworkReachabilityStatus.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6863616552746F6ELL;
  }
}

uint64_t sub_11A0EC(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0x8000000000212EA0;
  if (v8 == 1)
  {
    v10 = 0x8000000000212EA0;
  }

  else
  {
    v10 = 0x8000000000212EC0;
  }

  if (*a1)
  {
    v11 = 0xD000000000000010;
  }

  else
  {
    v11 = 0x6863616552746F6ELL;
  }

  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xEC000000656C6261;
  }

  if (*a2 != 1)
  {
    v9 = 0x8000000000212EC0;
  }

  if (*a2)
  {
    v13 = 0xD000000000000010;
  }

  else
  {
    v13 = 0x6863616552746F6ELL;
  }

  if (*a2)
  {
    v14 = v9;
  }

  else
  {
    v14 = 0xEC000000656C6261;
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

Swift::Int sub_11A1C4()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0x8000000000212EA0;
  if (v1 != 1)
  {
    v2 = 0x8000000000212EC0;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xEC000000656C6261;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_11A278(uint64_t a1)
{
  v2 = 0x8000000000212EA0;
  if (*v1 != 1)
  {
    v2 = 0x8000000000212EC0;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xEC000000656C6261;
  }

  sub_1E17D0();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_11A318(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0x8000000000212EA0;
  if (v2 != 1)
  {
    v3 = 0x8000000000212EC0;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xEC000000656C6261;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_11A3D4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000656C6261;
  v4 = 0x8000000000212EA0;
  if (v2 != 1)
  {
    v4 = 0x8000000000212EC0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x6863616552746F6ELL;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

const __SCNetworkReachability *sub_11A444@<X0>(char *a1@<X8>)
{
  result = *(v1 + 16);
  if (result)
  {
    flags = 0;
    result = SCNetworkReachabilityGetFlags(result, &flags);
    v4 = 0;
    if ((flags & 2) != 0)
    {
      v4 = (flags & 4) == 0;
      v5 = (flags & 0x10) == 0 || (flags & 4) == 0;
      if ((flags & 0x28) != 0)
      {
        v4 = v5;
      }

      if ((flags & 0x40000) != 0)
      {
        v4 = 2;
      }
    }

    *a1 = v4;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t NetworkReachability.init()()
{
  *(v0 + 16) = 0;
  *&address.sa_data[6] = 0;
  *&address.sa_len = 528;
  v1 = SCNetworkReachabilityCreateWithAddress(0, &address);
  v2 = *(v0 + 16);
  *(v0 + 16) = v1;

  return v0;
}

uint64_t NetworkReachability.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t sub_11A5BC()
{
  result = qword_2879E8;
  if (!qword_2879E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NetworkReachabilityStatus, &type metadata for NetworkReachabilityStatus, v0, v1);
    atomic_store(result, &qword_2879E8);
  }

  return result;
}

uint64_t sub_11A694()
{
  if (*v0)
  {
    return 0x7263736544706974;
  }

  else
  {
    return 0x7574616546706974;
  }
}

void sub_11A6E0(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = a1 == 0x7574616546706974 && a2 == 0xEA00000000006572;
  if (v12 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0x7263736544706974 && a2 == 0xEE006E6F69747069)
  {
    0xEE006E6F69747069, 0xEE006E6F69747069, a3, a4, a5, a6, a7, a8;
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

uint64_t sub_11A7CC(uint64_t a1)
{
  v2 = sub_11A9D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_11A808(uint64_t a1)
{
  v2 = sub_11A9D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ToolTipData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_287AB0, &qword_1FCD18);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  sub_48B8(a1, a1[3]);
  sub_11A9D8();
  sub_1E1E00();
  v12 = 0;
  v8 = v10[3];
  sub_1E1CB0();
  if (!v8)
  {
    v11 = 1;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_11A9D8()
{
  result = qword_287AB8;
  if (!qword_287AB8)
  {
    result = swift_getWitnessTable(aY_14, &type metadata for ToolTipData.CodingKeys, v0, v1);
    atomic_store(result, &qword_287AB8);
  }

  return result;
}

void ToolTipData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_287AC0, &qword_1FCD20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  sub_48B8(a1, a1[3]);
  sub_11A9D8();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v46 = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    v44 = v16;
    v45 = 1;
    v19 = sub_1E1BE0();
    v21 = v20;
    (*(v6 + 8))(v8, v5);
    *a2 = v44;
    a2[1] = v18;
    a2[2] = v19;
    a2[3] = v21;

    sub_4E48(a1, v22, v23, v24, v25, v26, v27, v28);
    v21, v29, v30, v31, v32, v33, v34, v35;
    v18, v36, v37, v38, v39, v40, v41, v42;
  }
}

unint64_t sub_11AC88()
{
  result = qword_287AC8;
  if (!qword_287AC8)
  {
    result = swift_getWitnessTable(byte_1FCED8, &type metadata for ToolTipData.CodingKeys, v0, v1);
    atomic_store(result, &qword_287AC8);
  }

  return result;
}

unint64_t sub_11ACE0()
{
  result = qword_287AD0;
  if (!qword_287AD0)
  {
    result = swift_getWitnessTable(byte_1FCE48, &type metadata for ToolTipData.CodingKeys, v0, v1);
    atomic_store(result, &qword_287AD0);
  }

  return result;
}

unint64_t sub_11AD38()
{
  result = qword_287AD8;
  if (!qword_287AD8)
  {
    result = swift_getWitnessTable(byte_1FCE70, &type metadata for ToolTipData.CodingKeys, v0, v1);
    atomic_store(result, &qword_287AD8);
  }

  return result;
}

void sub_11AD8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);

  v2, v4, v5, v6, v7, v8, v9, v10;
}

void *sub_11AE1C()
{
  v1 = OBJC_IVAR___BAAnalyticsController_applicationTracker;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_11AEC8(uint64_t a1)
{
  v3 = OBJC_IVAR___BAAnalyticsController_applicationTracker;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_11AF20(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BAAnalyticsController_applicationTracker;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void sub_11AFE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BAAnalyticsController_sessionManager;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  v5, v6, v7, v8, v9, v10, v11, v12;
}

uint64_t (*sub_11B0C0(uint64_t *a1))()
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
  v5 = OBJC_IVAR___BAAnalyticsController_userConfiguration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_11B158;
}

uint64_t (*sub_11B18C(uint64_t *a1))()
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
  v5 = OBJC_IVAR___BAAnalyticsController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_127BB0;
}

id sub_11B230(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_11B348(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_11B3A4(uint64_t *a1))()
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
  v5 = OBJC_IVAR___BAAnalyticsController_configurationProvider;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_127BB0;
}

void sub_11B43C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_11B664(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_17AA4(v3 + v4, a1, &qword_287B10, &qword_1FCF80);

  os_unfair_lock_unlock((v3 + v5));
}

char *AnalyticsController.init()()
{
  v1 = v0;
  v42 = type metadata accessor for AnalyticsController.LockProtectedData(0) - 8;
  __chkstk_darwin(v42);
  v41 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1E19D0();
  v3 = *(v43 - 8);
  __chkstk_darwin(v43);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E19B0();
  __chkstk_darwin(v6);
  v7 = sub_1E1610();
  __chkstk_darwin(v7 - 8);
  *&v0[OBJC_IVAR___BAAnalyticsController_applicationTracker] = 0;
  *&v0[OBJC_IVAR___BAAnalyticsController_sessionManager] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___BAAnalyticsController_assertionProvider] = 0;
  v40 = OBJC_IVAR___BAAnalyticsController_workQueue;
  v8 = sub_127784(0, &qword_282880, OS_dispatch_queue_ptr);
  v38 = "hability";
  v39 = v8;
  sub_1E1600();
  v45 = _swiftEmptyArrayStorage;
  v37 = sub_127AFC(&qword_287B30, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v36 = sub_3D68(&qword_287B38, &qword_1FCF88);
  sub_125E1C(&qword_287B40, &qword_287B38, &qword_1FCF88);
  sub_1E1A70();
  v9 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v10 = v3 + 104;
  v11 = *(v3 + 104);
  v34 = v5;
  v35 = v10;
  v11(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v43);
  *&v0[v40] = sub_1E1A00();
  v40 = OBJC_IVAR___BAAnalyticsController_privateDataQueue;
  sub_1E1600();
  v45 = _swiftEmptyArrayStorage;
  sub_1E1A70();
  v11(v34, v9, v43);
  v12 = sub_1E1A00();
  dispatch_suspend(v12);
  *&v1[v40] = v12;
  v1[OBJC_IVAR___BAAnalyticsController_privateDataQueueActive] = 0;
  v13 = OBJC_IVAR___BAAnalyticsController_privateDataSource;
  *&v1[v13] = [objc_allocWithZone(BAPrivateDataSource) init];
  v14 = OBJC_IVAR___BAAnalyticsController_sessionStateCondition;
  *&v1[v14] = [objc_allocWithZone(NSCondition) init];
  v1[OBJC_IVAR___BAAnalyticsController_sessionState] = 0;
  v15 = OBJC_IVAR___BAAnalyticsController_lockProtectedData;
  v16 = sub_1E09E0();
  v17 = v41;
  (*(*(v16 - 8) + 56))(v41, 1, 1, v16);
  v18 = v42;
  *&v17[*(v42 + 28)] = &_swiftEmptyDictionarySingleton;
  v19 = v17;
  v20 = v18[8];
  v21 = sub_1E0930();
  (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
  v22 = (v19 + v18[9]);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v19 + v18[10]);
  *v23 = 0u;
  v23[1] = 0u;
  v24 = (v19 + v18[11]);
  *v24 = xmmword_1FCF50;
  v24[1] = 0u;
  v24[2] = 0u;
  v24[3] = 0u;
  v24[4] = 0u;
  *(v19 + v18[12]) = 0;
  *(v19 + v18[13]) = 0;
  sub_3D68(&qword_287B70, &qword_1FCF90);
  v25 = swift_allocObject();
  *(v25 + ((*(*v25 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_11BDD8(v19, v25 + *(*v25 + class metadata base offset for ManagedBuffer + 16));
  *&v1[v15] = v25;
  v1[OBJC_IVAR___BAAnalyticsController_userIDResetEventPending] = 0;
  v1[OBJC_IVAR___BAAnalyticsController_privateDataCacheIsCurrent] = 0;
  v1[OBJC_IVAR___BAAnalyticsController_launchedFromShortcutItem] = 0;
  v1[OBJC_IVAR___BAAnalyticsController_priceDropNotificationsEnabled] = 0;
  v26 = type metadata accessor for AnalyticsController();
  v44.receiver = v1;
  v44.super_class = v26;
  v27 = objc_msgSendSuper2(&v44, "init");
  v28 = *&v27[OBJC_IVAR___BAAnalyticsController_privateDataSource];
  v29 = v27;
  [v28 setDelegate:v29];
  v30 = [objc_allocWithZone(BUCountingAssertionProvider) initWithDelegate:v29];
  v31 = *&v29[OBJC_IVAR___BAAnalyticsController_assertionProvider];
  *&v29[OBJC_IVAR___BAAnalyticsController_assertionProvider] = v30;

  return v29;
}

uint64_t type metadata accessor for AnalyticsController.LockProtectedData(uint64_t a1)
{
  result = qword_287D60;
  if (!qword_287D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11BDD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsController.LockProtectedData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id AnalyticsController.__deallocating_deinit()
{
  if ((v0[OBJC_IVAR___BAAnalyticsController_privateDataQueueActive] & 1) == 0)
  {
    dispatch_resume(*&v0[OBJC_IVAR___BAAnalyticsController_privateDataQueue]);
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_11C028()
{
  v1 = v0;
  v41 = sub_1E0B70();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E0D90();
  __chkstk_darwin(v3 - 8);
  v38 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1E0D40();
  __chkstk_darwin(v5);
  v6 = sub_1E0FE0();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3D68(&qword_287B98, &qword_1FCF98);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E9970;
  sub_1E0D30();
  v45 = v9;
  sub_127AFC(&qword_287BA0, &type metadata accessor for SessionManager.Options, &protocol conformance descriptor for SessionManager.Options);
  sub_3D68(&qword_287BA8, &qword_1FCFA0);
  sub_125E1C(&qword_287BB0, &qword_287BA8, &qword_1FCFA0);
  sub_1E1A70();
  sub_11C610(v38);
  sub_3D68(&qword_287BB8, &qword_1FCFA8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1FCF60;
  sub_1E0B60();
  sub_1E0B40();
  sub_1E0B50();
  v45 = v10;
  sub_127AFC(&qword_287BC0, &type metadata accessor for FlushEvents, &protocol conformance descriptor for FlushEvents);
  sub_3D68(&qword_287BC8, &unk_1FCFB0);
  sub_125E1C(&unk_287BD0, &qword_287BC8, &unk_1FCFB0);
  sub_1E1A70();
  sub_1E0CD0();
  swift_allocObject();
  sub_1E0CC0();
  sub_1E1020();
  swift_allocObject();
  sub_1E1010();
  sub_1E0FD0();
  if (qword_27D3E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1E0B10();
  v12 = OBJC_IVAR___BAAnalyticsController_sessionManager;
  swift_beginAccess();
  v13 = *(v1 + v12);
  *(v1 + v12) = v11;

  v13, v14, v15, v16, v17, v18, v19, v20;
  v21 = sub_1E0D50();
  v11, v22, v23, v24, v25, v26, v27, v28;
  v29 = type metadata accessor for BATracker();
  v30 = objc_allocWithZone(v29);
  v31 = OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory;
  sub_3D68(&qword_281B00, &unk_1EDCF8);
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 16) = _swiftEmptyArrayStorage;
  *&v30[v31] = v32;
  swift_unknownObjectWeakInit();
  *&v30[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker] = v21;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v44.receiver = v30;
  v44.super_class = v29;
  v33 = objc_msgSendSuper2(&v44, "init");
  v34 = OBJC_IVAR___BAAnalyticsController_applicationTracker;
  swift_beginAccess();
  v35 = *(v1 + v34);
  *(v1 + v34) = v33;

  sub_11CC04();
  return (*(v42 + 8))(v8, v43);
}

uint64_t sub_11C610@<X0>(double *a1@<X8>)
{
  v49 = a1;
  v1 = sub_3D68(&qword_286B40, &unk_1FD180);
  v47 = *(v1 - 8);
  v48 = v1;
  __chkstk_darwin(v1);
  v46 = &v44[-v2];
  v3 = sub_3D68(&unk_287EF0, &qword_1FA978);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v44[-v5];
  sub_1E1920();
  v8 = v7;
  sub_1E1920();
  v10 = v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v12 = Strong, v13 = @"kBAJitterTimestampEnabled", v14 = [v12 analyticsControllerConfigurationForKey:v13], v13, swift_unknownObjectRelease(), sub_1E1A60(), swift_unknownObjectRelease(), sub_127784(0, &qword_287EB8, NSNumber_ptr), (swift_dynamicCast() & 1) != 0))
  {
    v15 = v50;
    v45 = [v50 BOOLValue];
  }

  else
  {
    v45 = 0;
  }

  v16 = -v8;
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = @"kBAJitterTimestampLowerBound";
    v20 = [v18 analyticsControllerConfigurationForKey:v19];

    swift_unknownObjectRelease();
    sub_1E1A60();
    swift_unknownObjectRelease();
    sub_127784(0, &qword_287EB8, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v21 = v50;
      [v50 doubleValue];
      v16 = v22;
    }
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    v25 = @"kBAJitterTimestampUpperBound";
    v26 = [v24 analyticsControllerConfigurationForKey:v25];

    swift_unknownObjectRelease();
    sub_1E1A60();
    swift_unknownObjectRelease();
    sub_127784(0, &qword_287EB8, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v27 = v50;
      [v50 doubleValue];
      v10 = v28;
    }
  }

  v29 = v48;
  if (qword_27D360 != -1)
  {
    swift_once();
  }

  v30 = sub_3B2C(v3, qword_286AE0);
  (*(v4 + 16))(v6, v30, v3);
  sub_1E1240();
  (*(v4 + 8))(v6, v3);
  if (v51[0] == 1)
  {
    if (qword_27D368 != -1)
    {
      swift_once();
    }

    v31 = sub_3B2C(v29, qword_286AF8);
    v32 = v46;
    v33 = v47;
    v34 = *(v47 + 16);
    v34(v46, v31, v29);
    sub_1E1240();
    v35 = *(v33 + 8);
    v35(v32, v29);
    v36 = *v51;
    if (qword_27D370 != -1)
    {
      swift_once();
    }

    v16 = v36;
    v37 = sub_3B2C(v29, qword_286B10);
    v34(v32, v37, v29);
    sub_1E1240();
    v35(v32, v29);
    v10 = *v51;
    goto LABEL_20;
  }

  if (v45)
  {
LABEL_20:
    v38 = v49;
    *v49 = v16;
    v38[1] = v10;
    v39 = enum case for TimestampJitter.enabled(_:);
    v40 = sub_1E0D90();
    return (*(*(v40 - 8) + 104))(v38, v39, v40);
  }

  v42 = enum case for TimestampJitter.disabled(_:);
  v43 = sub_1E0D90();
  return (*(*(v43 - 8) + 104))(v49, v42, v43);
}

void sub_11CC04()
{
  v1 = v0;
  v2 = sub_1E0FC0();
  __chkstk_darwin(v2);
  v4 = (&v141 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = 1;
  (*(v5 + 104))(v4, enum case for LoggingEventProcessorFormat.json(_:));
  sub_1E0EA0();
  swift_allocObject();
  v6 = sub_1E0E90();
  v7 = OBJC_IVAR___BAAnalyticsController_sessionManager;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (v8)
  {

    v9 = sub_1E0CE0();
    v8, v10, v11, v12, v13, v14, v15, v16;

    sub_1E0DD0();
    v9, v17, v18, v19, v20, v21, v22, v23;
    v6, v24, v25, v26, v27, v28, v29, v30;
  }

  if (qword_27D3E0 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v31 = qword_2876B8;
    v32 = OBJC_IVAR___BAAppManager_uploadBatchEventConfig;
    swift_beginAccess();
    v33 = *&v31[v32];
    if (v33)
    {
      sub_1E0F90();
      v34 = *&v31[OBJC_IVAR___BAAppManager_client];
      v35 = v33;
      v36 = v34;
      v37 = v31;
      v45 = sub_1E0F80();
      v46 = *(v1 + v7);
      if (v46)
      {

        v47 = sub_1E0CE0();
        v46, v48, v49, v50, v51, v52, v53, v54;

        sub_1E0DD0();
        v47, v55, v56, v57, v58, v59, v60, v61;
        v45, v62, v63, v64, v65, v66, v67, v68;
      }

      v45, v38, v39, v40, v41, v42, v43, v44;
    }

    if (*&v31[OBJC_IVAR___BAAppManager_debugProcessor])
    {
      v69 = *(v1 + v7);
      if (v69)
      {

        v70 = sub_1E0CE0();
        v69, v71, v72, v73, v74, v75, v76, v77;
        sub_127AFC(&unk_287EE0, type metadata accessor for DebugEventProcessor, byte_2050E4);

        sub_1E0DD0();
        v70, v78, v79, v80, v81, v82, v83, v84;
      }
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      break;
    }

    v142 = v6;
    v93 = [Strong additionalEventProcessors];
    swift_unknownObjectRelease();
    v94 = sub_1E18C0();

    isa = v94[1].super.isa;
    if (isa)
    {
      v141 = v94;
      v103 = &v94[2];
      v104 = _swiftEmptyArrayStorage;
      v6 = &qword_1FAAC0;
      do
      {
        sub_326BC(v103, v146);
        sub_326AC(v146, &v144);
        sub_3D68(&qword_286BC0, &qword_1FAAC0);
        if (swift_dynamicCast() && v145.super.isa)
        {
          v143 = v145;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = sub_103264(0, v104[1].super.isa + 1, &dword_0 + 1, v104, v108, v109, v110, v111);
          }

          v113 = v104[1].super.isa;
          v112 = *v104[1].dataProviders;
          v114 = v143;
          if (v113 >= v112 >> 1)
          {
            v115 = sub_103264((v112 > 1), (v113 + 1), &dword_0 + 1, v104, v108, v109, v110, v111);
            v114 = v143;
            v104 = v115;
          }

          v104[1].super.isa = (v113 + 1);
          v104[v113 + 2] = v114;
        }

        v103 += 32;
        isa = (isa - 1);
      }

      while (isa);
      v141, v105, v106, v107, v108, v109, v110, v111;
      v123 = v104[1].super.isa;
      if (!v123)
      {
LABEL_30:
        v104, v116, v117, v118, v119, v120, v121, v122;
        v6 = v142;
        break;
      }
    }

    else
    {
      v94, v95, v96, v97, v98, v99, v100, v101;
      v104 = _swiftEmptyArrayStorage;
      v123 = _swiftEmptyArrayStorage[2];
      if (!v123)
      {
        goto LABEL_30;
      }
    }

    v124 = 0;
    dataProviders = v104[2].dataProviders;
    while (v124 < v104[1].super.isa)
    {
      v126 = *(v1 + v7);
      if (v126)
      {
        swift_unknownObjectRetain();

        v6 = sub_1E0CE0();
        v126, v127, v128, v129, v130, v131, v132, v133;
        sub_1E0DD0();
        v6, v134, v135, v136, v137, v138, v139, v140;
        swift_unknownObjectRelease();
      }

      v124 = (v124 + 1);
      dataProviders += 16;
      if (v123 == v124)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  v6, v86, v87, v88, v89, v90, v91, v92;
}

uint64_t sub_11D1A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v131 = sub_1E08B0();
  v136 = *(v131 - 8);
  __chkstk_darwin(v131);
  v127 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3D68(&unk_287BE0, &unk_1FCFC0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v120 - v10;
  v12 = sub_3D68(&qword_2876E8, &qword_1FC308);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v120 - v17;
  __chkstk_darwin(v16);
  v132 = &v120 - v19;
  v143._countAndFlagsBits = 0x6C7070612E6D6F63;
  v143._object = 0xEA00000000002E65;
  if (sub_1E1850(v143))
  {
    v134 = a3;
  }

  else
  {
    v134 = 0xE500000000000000;
    a2 = 0x726568746FLL;
  }

  v133 = a2;
  if (sub_1E08D0())
  {
    v21 = objc_allocWithZone(NSString);
    v22 = 0xE800000000000000;
    v23 = sub_1E1770();
    v24 = [v21 initWithString:v23];

    sub_1E08E0();
    v26 = v25;
    v27 = sub_1E1770();
    v26, v28, v29, v30, v31, v32, v33, v34;
    v35 = [v24 stringByAppendingPathExtension:v27];

    if (v35)
    {
      v36 = sub_1E1780();
      v22 = v37;
    }

    else
    {
      v36 = 0x6465746361646572;
    }

    sub_1E0870();
    v52 = *(v136 + 48);
    v53 = v131;
    if (v52(v9, 1, v131))
    {
      v22, v54, v55, v56, v57, v58, v59, v60;
    }

    else
    {
      v63 = objc_opt_self();
      sub_3D68(&qword_287BF0, &unk_1FCFD0);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1FCF60;
      *(v64 + 32) = 47;
      *(v64 + 40) = 0xE100000000000000;
      *(v64 + 48) = 0x6465746361646572;
      *(v64 + 56) = 0xE800000000000000;
      *(v64 + 64) = v36;
      *(v64 + 72) = v22;
      isa = sub_1E18B0().super.isa;
      v64, v66, v67, v68, v69, v70, v71, v72;
      v73 = [v63 pathWithComponents:isa];

      sub_1E1780();
      sub_1E0890();
    }

    if (v52(v9, 1, v53))
    {
      v74 = sub_1E0930();
      (*(*(v74 - 8) + 56))(v15, 1, 1, v74);
    }

    else
    {
      v75 = v136;
      v76 = v127;
      (*(v136 + 16))(v127, v9, v53);
      sub_1E0880();
      (*(v75 + 8))(v76, v53);
    }

    v130 = 0;
    v129 = 0;
    v128 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = v9;
    goto LABEL_39;
  }

  sub_1E0900(v20);
  v39 = v38;
  v40 = [v38 bu_dictionaryForQueryItems];

  v41 = sub_1E1730();
  if (!v41[1].super.isa)
  {
    v61 = 0;
    v62 = 0;
    v129 = 0;
    v130 = 0;
LABEL_27:
    v88 = 0;
    v89 = 0;
    goto LABEL_28;
  }

  v49 = sub_A2F4(0x6E676961706D6163, 0xEB0000000064695FLL);
  if (v42)
  {
    v50 = (*v41[3].dataProviders + 16 * v49);
    v51 = v50[1];
    v130 = *v50;
  }

  else
  {
    v130 = 0;
    v51 = 0;
  }

  v85 = v41[1].super.isa;
  v129 = v51;
  if (!v85)
  {
    v61 = 0;
    v62 = 0;
    goto LABEL_27;
  }

  v86 = sub_A2F4(29795, 0xE200000000000000);
  if (v42)
  {
    v87 = (*v41[3].dataProviders + 16 * v86);
    v88 = *v87;
    v89 = v87[1];

    if (v41[1].super.isa)
    {
      goto LABEL_23;
    }

LABEL_41:
    v61 = 0;
    v62 = 0;
    goto LABEL_28;
  }

  v88 = 0;
  v89 = 0;
  if (!v41[1].super.isa)
  {
    goto LABEL_41;
  }

LABEL_23:
  v90 = sub_A2F4(29793, 0xE200000000000000);
  if ((v42 & 1) == 0)
  {
    v62 = 0;
    v61 = 0;
    if (v41[1].super.isa)
    {
      goto LABEL_43;
    }

LABEL_28:
    v92 = 0;
    v93 = 0;
    goto LABEL_29;
  }

  v91 = (*v41[3].dataProviders + 16 * v90);
  v62 = *v91;
  v61 = v91[1];

  if (!v41[1].super.isa)
  {
    goto LABEL_28;
  }

LABEL_43:
  v118 = sub_A2F4(0x7463737469, 0xE500000000000000);
  if ((v42 & 1) == 0)
  {
    goto LABEL_28;
  }

  v119 = (*v41[3].dataProviders + 16 * v118);
  v92 = *v119;
  v93 = v119[1];

LABEL_29:
  v94 = v41[1].super.isa;
  v128 = v88;
  v126 = v89;
  v125 = v61;
  v123 = v93;
  if (v94 && (v95 = sub_A2F4(0x6763737469, 0xE500000000000000), (v42 & 1) != 0))
  {
    v96 = *(*v41[3].dataProviders + 16 * v95);
  }

  else
  {
    v96 = 0;
    v97 = 0;
  }

  v121 = v97;
  v41, v42, v43, v44, v45, v46, v47, v48;
  sub_1E0870();
  v98 = *(v136 + 48);
  v99 = v131;
  if (!v98(v11, 1, v131))
  {
    sub_1E08A0();
  }

  v122 = v96;
  v124 = v92;
  v78 = v62;
  if (v98(v11, 1, v99))
  {
    v100 = sub_1E0930();
    v15 = v18;
    (*(*(v100 - 8) + 56))(v18, 1, 1, v100);
  }

  else
  {
    v101 = v136;
    v102 = v127;
    (*(v136 + 16))(v127, v11, v99);
    sub_1E0880();
    v103 = v99;
    v15 = v18;
    (*(v101 + 8))(v102, v103);
  }

  v77 = v126;
  v84 = v11;
  v79 = v125;
  v80 = v124;
  v81 = v123;
  v82 = v122;
  v83 = v121;
LABEL_39:
  v104 = v132;
  sub_125A54(v15, v132);
  v105 = sub_18E48(v84, &unk_287BE0, &unk_1FCFC0);
  *&v137 = v130;
  *(&v137 + 1) = v129;
  *&v138 = v128;
  *(&v138 + 1) = v77;
  *&v139 = v78;
  *(&v139 + 1) = v79;
  *&v140 = v80;
  *(&v140 + 1) = v81;
  *&v141 = v82;
  *(&v141 + 1) = v83;
  v142[3] = v140;
  v142[4] = v141;
  v142[1] = v138;
  v142[2] = v139;
  v142[0] = v137;
  v106 = *(v135 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  __chkstk_darwin(v105);
  *(&v120 - 2) = v104;
  *(&v120 - 1) = v142;
  v107 = v134;
  *(&v120 - 4) = v133;
  *(&v120 - 3) = v107;
  v108 = *(*v106 + class metadata base offset for ManagedBuffer + 16);
  v109 = (*(*v106 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v106 + v109));
  sub_125AC4(v106 + v108);
  os_unfair_lock_unlock((v106 + v109));
  v107, v110, v111, v112, v113, v114, v115, v116;
  sub_D1EE8(&v137);
  sub_11F754();
  return sub_18E48(v104, &qword_2876E8, &qword_1FC308);
}

__n128 sub_11DB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  v10 = a5[3];
  v56 = a5[2];
  v57 = v10;
  v58 = a5[4];
  v11 = a5[1];
  v54 = *a5;
  v55 = v11;
  v12 = sub_3D68(&qword_2876E8, &qword_1FC308);
  __chkstk_darwin(v12 - 8);
  v14 = &v50 - v13;
  v15 = type metadata accessor for AnalyticsController.LockProtectedData(0);
  v16 = (a1 + v15[7]);
  v17 = v16[1];

  v17, v18, v19, v20, v21, v22, v23, v24;
  v51 = a2;
  *v16 = a2;
  v16[1] = a3;
  sub_127A8C(a4, a1 + v15[6]);
  sub_17AA4(a4, v14, &qword_2876E8, &qword_1FC308);
  v25 = sub_1E0930();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v14, 1, v25) == 1)
  {
    sub_18E48(v14, &qword_2876E8, &qword_1FC308);
  }

  else
  {
    v27 = sub_1E08F0();
    v29 = v28;
    (*(v26 + 8))(v14, v25);
    *&v53[0] = v27;
    *(&v53[0] + 1) = v29;
    sub_12758C();
    if (sub_1E1930())
    {
      v37 = (a1 + v15[8]);
      v38 = *v37;
      v50 = v37[1];
      v39 = v37[2];
      v40 = v37[3];

      sub_185EC(v38, v50, v39, v40, v41, v42, v43, v44);
      *v37 = v51;
      v37[1] = a3;
      v37[2] = v27;
      v37[3] = v29;
    }

    else
    {
      v29, v30, v31, v32, v33, v34, v35, v36;
    }
  }

  v45 = (a1 + v15[9]);
  v46 = v45[3];
  v53[2] = v45[2];
  v53[3] = v46;
  v53[4] = v45[4];
  v47 = v45[1];
  v53[0] = *v45;
  v53[1] = v47;
  sub_D1F18(a5, v52);
  sub_18E48(v53, &qword_287E48, &qword_1FD118);
  v48 = v57;
  v45[2] = v56;
  v45[3] = v48;
  v45[4] = v58;
  result = v55;
  *v45 = v54;
  v45[1] = result;
  return result;
}

void sub_11DF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  v9 = v8;
  if (a1)
  {
    sub_A3270(v75, a4, a5, a6, a7, a8);
    v10 = *&v75[0];
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v8 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  __chkstk_darwin(a1);
  v12 = *(*v11 + class metadata base offset for ManagedBuffer + 16);
  v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v11 + v13));
  sub_125AE4(v11 + v12);
  os_unfair_lock_unlock((v11 + v13));
  v14 = OBJC_IVAR___BAAnalyticsController_applicationTracker;
  swift_beginAccess();
  v22 = *(v9 + v14);
  if (v22)
  {
    v23 = OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory;
    v24 = *&v22[OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory];
    v74 = v22;

    os_unfair_lock_lock((v24 + 24));
    v25 = sub_125B3C();
    v26 = sub_125B90();
    v27 = *(v24 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v24 + 16) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isa = v27[1].super.isa;

      v65 = sub_103008(0, isa + 1, 1, v27, v61, v62, v63, v64);
      v66 = *(v24 + 16);
      *(v24 + 16) = v65;
      v66, v67, v68, v69, v70, v71, v72, v73;
      v27 = *(v24 + 16);
    }

    v34 = v27[1].super.isa;
    v33 = *v27[1].dataProviders;
    if (v34 >= v33 >> 1)
    {
      v27 = sub_103008((v33 > 1), v34 + 1, 1, v27, v29, v30, v31, v32);
    }

    v27[1].super.isa = (v34 + 1);
    v35 = &v27[4 * v34];
    v35[2].super.isa = &type metadata for BooksTreatmentData;
    *v35[2].dataProviders = v25;
    v35[3].super.isa = v26;
    v36 = v75[0];
    *(v35 + 72) = v75[1];
    *v35[3].dataProviders = v36;
    v35[5].dataProviders[0] = 1;
    *(v24 + 16) = v27;
    os_unfair_lock_unlock((v24 + 24));
    v24, v37, v38, v39, v40, v41, v42, v43;
    v44 = sub_1E10F0();
    if (v10)
    {
      *&v75[0] = v10;
      v45 = *&v22[v23];
      __chkstk_darwin(v44);

      os_unfair_lock_lock((v45 + 24));
      sub_125CF0((v45 + 16));
      os_unfair_lock_unlock((v45 + 24));
      v45, v46, v47, v48, v49, v50, v51, v52;
      sub_1E1110();
      v10, v53, v54, v55, v56, v57, v58, v59;
    }
  }

  else
  {
    v10, v15, v16, v17, v18, v19, v20, v21;
  }

  sub_11F754();
}

void sub_11E27C()
{
  v1 = *(v0 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_125D0C((v1 + v2));
  os_unfair_lock_unlock((v1 + v3));
  sub_11F754();
}

void sub_11E330(unsigned __int8 *dataProviders, BAEventReporter *a2, Class a3)
{
  v6 = *(type metadata accessor for AnalyticsController.LockProtectedData(0) + 44);
  v7 = *(v6 + dataProviders);
  if (v7)
  {
    v8 = *(v6 + dataProviders);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  sub_127A38();

  v9 = sub_1E1A40();
  if (v9[1].super.isa)
  {
    v62 = a2;
    v63 = v6;
    v65 = a3;
    v64 = dataProviders;
    isa = v9[2].super.isa;
    a2 = *v9[2].dataProviders;
    v18 = v9;

    v18, v19, v20, v21, v22, v23, v24, v25;
    v33 = v8[1].super.isa;
    if (v33)
    {
      v6 = 0;
      dataProviders = v8[2].dataProviders;
      while (1)
      {
        if (v6 >= v8[1].super.isa)
        {
          __break(1u);
          goto LABEL_32;
        }

        a3 = *(dataProviders - 1);
        v34 = *dataProviders;

        v66._countAndFlagsBits = isa;
        v66._object = a2;
        if (sub_1E1850(v66))
        {
          break;
        }

        v34, v35, v36, v37, v38, v39, v40, v41;
        v6 = (v6 + 1);
        dataProviders += 16;
        if (v33 == v6)
        {
          goto LABEL_10;
        }
      }

      a2, v35, v36, v37, v38, v39, v40, v41;
      v43 = v8[1].super.isa;
      if (!v43)
      {
LABEL_20:
        v42 = v34;
        goto LABEL_21;
      }

      v44 = 0;
      v45 = 0;
      while (1)
      {
        v26 = *v8[v44 + 2].dataProviders;
        v46 = v8[v44 + 2].super.isa == a3 && v26 == v34;
        if (v46 || (sub_1E1D30() & 1) != 0)
        {
          break;
        }

        v45 = (v45 + 1);
        ++v44;
        if (v43 == v45)
        {
          goto LABEL_20;
        }
      }

      v34, v26, v27, v28, v29, v30, v31, v32;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1C231C(v8, v53, v54, v55, v56, v57, v58, v59);
      }

      if (v45 < v8[1].super.isa)
      {
        v60 = &v8[v44];
        v61 = *v8[v44 + 2].dataProviders;
        v60[2].super.isa = v62;
        *v60[2].dataProviders = v65;
        v7, v53, v54, v55, v56, v57, v58, v59;
        v7 = v61;
        dataProviders = v64;
        v6 = v63;
        goto LABEL_26;
      }

      __break(1u);
      return;
    }

LABEL_10:
    v42 = a2;
LABEL_21:
    v42, v26, v27, v28, v29, v30, v31, v32;
    dataProviders = v64;
    a2 = v62;
    v6 = v63;
    a3 = v65;
  }

  else
  {
    v9, v10, v11, v12, v13, v14, v15, v16;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_32:
    v8 = sub_103398(0, v8[1].super.isa + 1, &dword_0 + 1, v8, v29, v30, v31, v32);
  }

  v51 = v8[1].super.isa;
  v50 = *v8[1].dataProviders;
  if (v51 >= v50 >> 1)
  {
    v8 = sub_103398((v50 > 1), v51 + 1, &dword_0 + 1, v8, v29, v30, v31, v32);
  }

  v8[1].super.isa = (v51 + 1);
  v52 = &v8[v51];
  v52[2].super.isa = a2;
  *v52[2].dataProviders = a3;
LABEL_26:
  v7, v47, v48, v49, v29, v30, v31, v32;
  *(v6 + dataProviders) = v8;
}

void sub_11E6E4(uint64_t a1, uint64_t a2)
{
  v133 = a1;
  v134 = a2;
  v3 = sub_1E15E0();
  v139 = *(v3 - 8);
  v140 = v3;
  __chkstk_darwin(v3);
  v137 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1E1610();
  v136 = *(v138 - 8);
  __chkstk_darwin(v138);
  v135 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D030 != -1)
  {
    swift_once();
  }

  v6 = sub_1E1360();
  sub_3B2C(v6, qword_280278);
  v7 = v2;
  v8 = sub_1E1340();
  v9 = sub_1E1960();

  if (os_log_type_enabled(v8, v9))
  {
    v132 = v9;
    v10 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    aBlock = v131;
    *v10 = 136315394;
    v11 = *&v7[OBJC_IVAR___BAAnalyticsController_lockProtectedData];
    v12 = v11 + *(*v11 + class metadata base offset for ManagedBuffer + 16);
    v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v11 + v13));
    v14 = sub_1E1780();
    v16 = v15;
    v129 = *(type metadata accessor for AnalyticsController.LockProtectedData(0) + 20);
    v24 = *(v12 + v129);
    v25 = *(v24 + 16);
    v130 = v8;
    if (v25)
    {
      v128 = v12;
      v26 = sub_A2F4(v14, v16);
      v28 = v27;
      v16, v27, v29, v30, v31, v32, v33, v34;
      if (v28)
      {
        v35 = (*(v24 + 56) + 16 * v26);
        v37 = *v35;
        v36 = v35[1];
      }

      else
      {
        v37 = 0;
        v36 = 0;
      }

      v12 = v128;
    }

    else
    {
      v16, v17, v18, v19, v20, v21, v22, v23;
      v37 = 0;
      v36 = 0;
    }

    os_unfair_lock_unlock((v11 + v13));
    if (v36)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0x6E776F6E6B6E753CLL;
    }

    if (!v36)
    {
      v36 = 0xE90000000000003ELL;
    }

    v39 = sub_DD91C(v38, v36, &aBlock);
    v36, v40, v41, v42, v43, v44, v45, v46;
    *(v10 + 4) = v39;
    *(v10 + 12) = 2080;
    os_unfair_lock_lock((v11 + v13));
    v47 = sub_1E1780();
    v55 = *(v12 + v129);
    if (*(v55 + 16))
    {
      v56 = v48;
      v57 = sub_A2F4(v47, v48);
      v59 = v58;
      v56, v58, v60, v61, v62, v63, v64, v65;
      v66 = v130;
      if (v59)
      {
        v67 = (*(v55 + 56) + 16 * v57);
        v69 = *v67;
        v68 = v67[1];
      }

      else
      {
        v69 = 0;
        v68 = 0;
      }
    }

    else
    {
      v48, v48, v49, v50, v51, v52, v53, v54;
      v69 = 0;
      v68 = 0;
      v66 = v130;
    }

    os_unfair_lock_unlock((v11 + v13));
    if (v68)
    {
      v70 = v69;
    }

    else
    {
      v70 = 0x6E776F6E6B6E753CLL;
    }

    if (!v68)
    {
      v68 = 0xE90000000000003ELL;
    }

    v71 = sub_DD91C(v70, v68, &aBlock);
    v68, v72, v73, v74, v75, v76, v77, v78;
    *(v10 + 14) = v71;
    _os_log_impl(&dword_0, v66, v132, "ResetIDBegin: currentAnalyticsID = %s, currentUserPrivateSeed = %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v79 = *&v7[OBJC_IVAR___BAAnalyticsController_privateDataSource];
  v80 = [v79 generatePrivateData];
  v81 = sub_1E1730();

  v82 = *&v7[OBJC_IVAR___BAAnalyticsController_lockProtectedData];
  __chkstk_darwin(v83);
  *(&v128 - 2) = v81;
  v84 = *(*v82 + class metadata base offset for ManagedBuffer + 16);
  v85 = (*(*v82 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v82 + v85));
  sub_125D28(v82 + v84, &aBlock);
  os_unfair_lock_unlock((v82 + v85));
  sub_124C5C(v7);
  isa = sub_1E1720().super.isa;
  v81, v87, v88, v89, v90, v91, v92, v93;
  v94 = swift_allocObject();
  v96 = v133;
  v95 = v134;
  *(v94 + 16) = v133;
  *(v94 + 24) = v95;
  v146 = sub_125D84;
  v147 = v94;
  aBlock = _NSConcreteStackBlock;
  v143 = 1107296256;
  v144 = sub_11AD8C;
  v145 = &unk_26E020;
  v97 = _Block_copy(&aBlock);
  v98 = v147;
  sub_125DCC(v96, v95);
  v98, v99, v100, v101, v102, v103, v104, v105;
  [v79 syncPrivateData:isa toCloudWithCompletion:v97];
  _Block_release(v97);

  v106 = *&v7[OBJC_IVAR___BAAnalyticsController_workQueue];
  v107 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v146 = sub_125E14;
  v147 = v107;
  aBlock = _NSConcreteStackBlock;
  v143 = 1107296256;
  v144 = sub_11AD8C;
  v145 = &unk_26E070;
  v108 = _Block_copy(&aBlock);
  v109 = v106;

  v110 = v135;
  sub_1E1600();
  v141 = _swiftEmptyArrayStorage;
  sub_127AFC(&qword_287740, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_3D68(&unk_287C10, &qword_1FC390);
  sub_125E1C(&qword_287748, &unk_287C10, &qword_1FC390);
  v111 = v137;
  v112 = v140;
  sub_1E1A70();
  sub_1E19F0();
  _Block_release(v108);

  (*(v139 + 8))(v111, v112);
  (*(v136 + 8))(v110, v138);
  v113 = v147;
  v107, v114, v115, v116, v117, v118, v119, v120;
  v113, v121, v122, v123, v124, v125, v126, v127;
}

void sub_11EEF0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR___BAAnalyticsController_privateDataCacheIsCurrent) = 1;
    *(Strong + OBJC_IVAR___BAAnalyticsController_userIDResetEventPending) = 1;
    sub_11EF60();
  }
}

void sub_11EF60()
{
  v1 = sub_1E1640();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___BAAnalyticsController_workQueue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = sub_1E1660();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (*(v0 + OBJC_IVAR___BAAnalyticsController_sessionState) == 1)
    {
      v7 = OBJC_IVAR___BAAnalyticsController_userIDResetEventPending;
      if (*(v0 + OBJC_IVAR___BAAnalyticsController_userIDResetEventPending) == 1)
      {
        v8 = OBJC_IVAR___BAAnalyticsController_applicationTracker;
        swift_beginAccess();
        v9 = *(v0 + v8);
        if (v9)
        {
          type metadata accessor for ResetPrivateIDsEvent(0);
          sub_127AFC(&qword_287E00, type metadata accessor for ResetPrivateIDsEvent, protocol conformance descriptor for ResetPrivateIDsEvent);
          v10 = v9;
          sub_1E1140();
        }

        *(v0 + v7) = 0;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_11F200(double a1)
{
  v2 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v44 - v6;
  v52 = sub_1E09E0();
  v8 = *(v52 - 8);
  v9 = __chkstk_darwin(v52);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v50 = &v44 - v12;
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  if (qword_27D030 != -1)
  {
    swift_once();
  }

  v15 = sub_1E1360();
  v44 = sub_3B2C(v15, qword_280278);
  v16 = sub_1E1340();
  v17 = sub_1E1960();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = a1;
    _os_log_impl(&dword_0, v16, v17, "waitForSessionEnd timeout is: %f", v18, 0xCu);
  }

  sub_1E09D0();
  if (a1 <= 0.0)
  {
    v19 = 1;
  }

  else
  {
    sub_1E0990();
    v19 = 0;
  }

  v21 = v51;
  v20 = v52;
  v46 = v14;
  v47 = v8;
  (*(v8 + 56))(v7, v19, 1, v52);
  v53 = OBJC_IVAR___BAAnalyticsController_sessionStateCondition;
  [*(v21 + OBJC_IVAR___BAAnalyticsController_sessionStateCondition) lock];
  v22 = OBJC_IVAR___BAAnalyticsController_sessionState;
  v23 = *(v21 + OBJC_IVAR___BAAnalyticsController_sessionState) == 0;
  if (*(v21 + OBJC_IVAR___BAAnalyticsController_sessionState) && a1 != 0.0)
  {
    v24 = (v47 + 48);
    v48 = (v47 + 8);
    v49 = (v47 + 32);
    v25 = &qword_287B10;
    do
    {
      sub_17AA4(v7, v5, v25, &qword_1FCF80);
      if ((*v24)(v5, 1, v20) == 1)
      {
        sub_18E48(v5, v25, &qword_1FCF80);
        [*(v21 + v53) wait];
        v26 = 0;
      }

      else
      {
        v27 = v22;
        v28 = v25;
        v29 = v50;
        (*v49)(v50, v5, v20);
        v30 = *(v21 + v53);
        isa = sub_1E0970().super.isa;
        v32 = v7;
        v33 = [v30 waitUntilDate:isa];

        v20 = v52;
        v34 = v29;
        v25 = v28;
        v22 = v27;
        (*v48)(v34, v52);
        v26 = v33 ^ 1;
        v7 = v32;
        v21 = v51;
      }

      v23 = *(v21 + v22) == 0;
    }

    while (*(v21 + v22) && !v26);
  }

  [*(v21 + v53) unlock];
  v35 = v45;
  sub_1E09D0();
  v36 = v46;
  sub_1E0960();
  v38 = v37;
  v39 = *(v47 + 8);
  v39(v35, v20);
  v40 = sub_1E1340();
  v41 = sub_1E1960();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134217984;
    *(v42 + 4) = v38;
    _os_log_impl(&dword_0, v40, v41, "waitForSessionEnd took: %f", v42, 0xCu);
  }

  sub_18E48(v7, &qword_287B10, &qword_1FCF80);
  v39(v36, v52);
  return v23;
}

void sub_11F754()
{
  v1 = sub_1E15E0();
  v28 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1610();
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR___BAAnalyticsController_workQueue);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_125E70;
  v31 = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11AD8C;
  aBlock[3] = &unk_26E098;
  v9 = _Block_copy(aBlock);
  v10 = v7;

  sub_1E1600();
  v29 = _swiftEmptyArrayStorage;
  sub_127AFC(&qword_287740, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_3D68(&unk_287C10, &qword_1FC390);
  sub_125E1C(&qword_287748, &unk_287C10, &qword_1FC390);
  sub_1E1A70();
  sub_1E19F0();
  _Block_release(v9);

  (*(v28 + 8))(v3, v1);
  (*(v26 + 8))(v6, v27);
  v11 = v31;
  v8, v12, v13, v14, v15, v16, v17, v18;
  v11, v19, v20, v21, v22, v23, v24, v25;
}

void sub_11FA34(uint64_t a1)
{
  v1 = sub_1E1640();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7 && (v8 = v7, swift_beginAccess(), v9 = swift_unknownObjectWeakLoadStrong(), v8, v9))
    {
      v10 = [v9 analyticsSessionDataIsPriceDropNotificationEnabled];
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0;
    }

    v6[OBJC_IVAR___BAAnalyticsController_priceDropNotificationsEnabled] = v10;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = *(v11 + OBJC_IVAR___BAAnalyticsController_workQueue);
    *v4 = v13;
    (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
    v14 = v13;
    LOBYTE(v13) = sub_1E1660();
    (*(v2 + 8))(v4, v1);
    if (v13)
    {
      if (v12[OBJC_IVAR___BAAnalyticsController_sessionState] == 1)
      {
        sub_120490();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_11FC8C(unsigned __int8 a1)
{
  v3 = sub_1E1640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR___BAAnalyticsController_workQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = sub_1E1660();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = OBJC_IVAR___BAAnalyticsController_sessionStateCondition;
    [*(v1 + OBJC_IVAR___BAAnalyticsController_sessionStateCondition) lock];
    if (*(v1 + OBJC_IVAR___BAAnalyticsController_sessionState) != a1)
    {
      *(v1 + OBJC_IVAR___BAAnalyticsController_sessionState) = a1;
      [*(v1 + v10) broadcast];
    }

    return [*(v1 + v10) unlock];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_11FDF0()
{
  v1 = v0;
  v2 = sub_3D68(&qword_287B10, &qword_1FCF80);
  __chkstk_darwin(v2 - 8);
  v4 = &v74 - v3;
  v5 = sub_1E09E0();
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v84 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1E1080();
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E0A10();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1640();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = OBJC_IVAR___BAAnalyticsController_workQueue;
  v16 = *(v1 + OBJC_IVAR___BAAnalyticsController_workQueue);
  *v15 = v16;
  v17 = *(v13 + 104);
  v78 = enum case for DispatchPredicate.onQueue(_:);
  v80 = v13 + 104;
  v77 = v17;
  v17(v15);
  v18 = v16;
  v19 = sub_1E1660();
  v20 = *(v13 + 8);
  v81 = v12;
  v76 = v13 + 8;
  v20(v15, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v75 = v20;
  v86 = v4;
  v21 = OBJC_IVAR___BAAnalyticsController_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong analyticsControllerWillStartSession:v1];
    swift_unknownObjectRelease();
  }

  sub_1E0A00();
  sub_1E09F0();
  v24 = v23;
  (*(v9 + 8))(v11, v8);
  v25 = OBJC_IVAR___BAAnalyticsController_sessionManager;
  swift_beginAccess();
  v33 = *(v1 + v25);
  v34 = v87;
  if (v33)
  {
    v74 = v21;
    v36 = v82;
    v35 = v83;
    v37 = v85;
    (*(v83 + 104))(v82, enum case for Session.Kind.userEvents(_:), v85);

    v38 = v84;
    sub_1E09D0();
    sub_1E0D20();
    v24, v39, v40, v41, v42, v43, v44, v45;
    v33, v46, v47, v48, v49, v50, v51, v52;
    v53 = v38;
    v54 = v88;
    (*(v34 + 8))(v53, v88);
    (*(v35 + 8))(v36, v37);
  }

  else
  {
    v24, v26, v27, v28, v29, v30, v31, v32;
    v54 = v88;
  }

  v55 = *(v1 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  v56 = *(*v55 + class metadata base offset for ManagedBuffer + 16);
  v57 = (*(*v55 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v55 + v57));
  v58 = v86;
  sub_1E09D0();
  (*(v34 + 56))(v58, 0, 1, v54);
  sub_1273C4(v58, v55 + v56);
  os_unfair_lock_unlock((v55 + v57));
  v59 = swift_unknownObjectWeakLoadStrong();
  if (v59)
  {
    [v59 analyticsControllerDidStartSession:v1];
    swift_unknownObjectRelease();
  }

  if (*(v1 + OBJC_IVAR___BAAnalyticsController_privateDataCacheIsCurrent) != 1)
  {
    v64 = *(v1 + OBJC_IVAR___BAAnalyticsController_privateDataSource);
    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_127434;
    v90 = v65;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_121A38;
    aBlock[3] = &unk_26E308;
    v66 = _Block_copy(aBlock);
    v90, v67, v68, v69, v70, v71, v72, v73;
    [v64 fetchPrivateData:v66];
    _Block_release(v66);
    return;
  }

  sub_120490();
  v60 = *(v1 + v79);
  *v15 = v60;
  v61 = v81;
  v77(v15, v78, v81);
  v62 = v60;
  LOBYTE(v60) = sub_1E1660();
  v75(v15, v61);
  if ((v60 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v63 = OBJC_IVAR___BAAnalyticsController_privateDataQueueActive;
  if ((*(v1 + OBJC_IVAR___BAAnalyticsController_privateDataQueueActive) & 1) == 0)
  {
    dispatch_resume(*(v1 + OBJC_IVAR___BAAnalyticsController_privateDataQueue));
    *(v1 + v63) = 1;
  }
}