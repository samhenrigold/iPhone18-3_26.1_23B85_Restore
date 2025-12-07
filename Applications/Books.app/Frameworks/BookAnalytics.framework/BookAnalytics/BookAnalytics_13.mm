void ReadingGoalChangedEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_1E1150();
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_288D60, &qword_1FEFC0);
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for ReadingGoalChangedEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v33 = a1;
  sub_48B8(a1, v13);
  sub_139720();
  sub_1E1DF0();
  if (!v2)
  {
    v27 = v10;
    v28 = v6;
    v21 = v31;
    v36 = 0;
    sub_139B5C();
    v22 = v32;
    sub_1E1BB0();
    v23 = v35;
    v24 = v12;
    *v12 = v34;
    v12[16] = v23;
    v36 = 1;
    sub_139BB0();
    sub_1E1C20();
    *(v12 + 24) = v34;
    LOBYTE(v34) = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v25 = v28;
    sub_1E1C20();
    (*(v21 + 8))(v9, v22);
    (*(v29 + 32))(v24 + *(v27 + 24), v25, v4);
    sub_139C04(v24, v30);
  }

  sub_4E48(v33, v14, v15, v16, v17, v18, v19, v20);
}

unint64_t sub_139B5C()
{
  result = qword_288D68;
  if (!qword_288D68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReadingGoalsDurationData, &type metadata for ReadingGoalsDurationData, v0, v1);
    atomic_store(result, &qword_288D68);
  }

  return result;
}

unint64_t sub_139BB0()
{
  result = qword_288D70;
  if (!qword_288D70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReadingGoalYearlyData, &type metadata for ReadingGoalYearlyData, v0, v1);
    atomic_store(result, &qword_288D70);
  }

  return result;
}

uint64_t sub_139C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingGoalChangedEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_139D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_288D30, &qword_1FEFA0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_288D38, &unk_1FEFA8);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = *(a1 + 24);
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v9, v7, v10);
}

uint64_t sub_139E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_288D30, &qword_1FEFA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_288D38, &unk_1FEFA8);
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

uint64_t sub_139FC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_288D30, &qword_1FEFA0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_288D38, &unk_1FEFA8);
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

void sub_13A134(uint64_t a1)
{
  sub_13A240(319, &qword_288DE0, sub_139B5C, sub_139774, &type metadata for ReadingGoalsDurationData);
  if (v1 <= 0x3F)
  {
    sub_13A240(319, &unk_288DE8, sub_139BB0, sub_1397C8, &type metadata for ReadingGoalYearlyData);
    if (v2 <= 0x3F)
    {
      sub_5684(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_13A240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_13A2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_13A35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1E1150();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_13A3D8(uint64_t a1)
{
  sub_13A464();
  if (v1 <= 0x3F)
  {
    sub_1E1150();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_13A464()
{
  if (!qword_288E88)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_288E88);
    }
  }
}

unint64_t sub_13A4C8()
{
  result = qword_288EC0;
  if (!qword_288EC0)
  {
    result = swift_getWitnessTable(asc_1FF15C, &type metadata for ReadingGoalChangedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288EC0);
  }

  return result;
}

unint64_t sub_13A520()
{
  result = qword_288EC8;
  if (!qword_288EC8)
  {
    result = swift_getWitnessTable(aU_13, &type metadata for ReadingGoalChangedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288EC8);
  }

  return result;
}

unint64_t sub_13A578()
{
  result = qword_288ED0;
  if (!qword_288ED0)
  {
    result = swift_getWitnessTable(asc_1FF0F4, &type metadata for ReadingGoalChangedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288ED0);
  }

  return result;
}

uint64_t sub_13A5CC(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000216CC0;
  v11 = a1 == 0xD000000000000018 && 0x8000000000216CC0 == a2;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0x8000000000216CE0;
    if (a1 == 0xD000000000000015 && 0x8000000000216CE0 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v13, a3, a4, a5, a6, a7, a8;
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

void sub_13A714(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000000216D00 == a2)
  {
    a2, 0x8000000000216D00, 0xD000000000000010, a3, a4, a5, a6, a7;
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

uint64_t sub_13A7A8(uint64_t a1)
{
  v2 = sub_13A95C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_13A7E4(uint64_t a1)
{
  v2 = sub_13A95C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DialogActionData.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_288ED8, &qword_1FF1E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_48B8(a1, a1[3]);
  sub_13A95C();
  sub_1E1E00();
  sub_1E1CB0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_13A95C()
{
  result = qword_288EE0;
  if (!qword_288EE0)
  {
    result = swift_getWitnessTable(byte_1FF3C4, &type metadata for DialogActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288EE0);
  }

  return result;
}

void DialogActionData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_288EE8, &qword_1FF1E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_48B8(a1, a1[3]);
  sub_13A95C();
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

unint64_t sub_13AB68()
{
  result = qword_288EF0;
  if (!qword_288EF0)
  {
    result = swift_getWitnessTable(byte_1FF39C, &type metadata for DialogActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288EF0);
  }

  return result;
}

unint64_t sub_13ABC0()
{
  result = qword_288EF8;
  if (!qword_288EF8)
  {
    result = swift_getWitnessTable(byte_1FF30C, &type metadata for DialogActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288EF8);
  }

  return result;
}

unint64_t sub_13AC18()
{
  result = qword_288F00;
  if (!qword_288F00)
  {
    result = swift_getWitnessTable(byte_1FF334, &type metadata for DialogActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_288F00);
  }

  return result;
}

uint64_t WriteReviewEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WriteReviewEvent(0) + 20);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WriteReviewEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WriteReviewEvent(0) + 20);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WriteReviewEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WriteReviewEvent(0) + 24);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WriteReviewEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WriteReviewEvent(0) + 24);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WriteReviewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WriteReviewEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WriteReviewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WriteReviewEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WriteReviewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WriteReviewEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t WriteReviewEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 16) = v2;
}

uint64_t WriteReviewEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[15];
  v3 = v1[16];
  v4 = v1[17];
  v5 = v1[18];
  v6 = v1[19];
  v7 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t WriteReviewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WriteReviewEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WriteReviewEvent.Model.init(contentData:upSellData:seriesData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v7;
  v8 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v8;
  v9 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v9;
  *(a5 + 96) = *a2;
  v10 = a3[1];
  *(a5 + 120) = *a3;
  *(a5 + 112) = *(a2 + 16);
  *(a5 + 136) = v10;
  *(a5 + 152) = a3[2];
  v11 = *(type metadata accessor for WriteReviewEvent.Model(0) + 28);
  v12 = sub_1E1150();
  v13 = *(*(v12 - 8) + 32);

  return v13(a5 + v11, a4, v12);
}

uint64_t sub_13B468()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x6144736569726573;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (*v0)
  {
    v1 = 0x61446C6C65537075;
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

uint64_t sub_13B4F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_13C980(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_13B520(uint64_t a1)
{
  v2 = sub_13B8A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_13B55C(uint64_t a1)
{
  v2 = sub_13B8A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WriteReviewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_288F38, &qword_1FF420);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  sub_48B8(a1, a1[3]);
  sub_13B8A8();
  sub_1E1E00();
  v9 = *(v3 + 48);
  v10 = *(v3 + 16);
  v44 = *(v3 + 32);
  v45 = v9;
  v11 = *(v3 + 48);
  v12 = *(v3 + 80);
  v46 = *(v3 + 64);
  v47 = v12;
  v13 = *(v3 + 16);
  v43[0] = *v3;
  v43[1] = v13;
  v39 = v44;
  v40 = v11;
  v14 = *(v3 + 80);
  v41 = v46;
  v42 = v14;
  v37 = v43[0];
  v38 = v10;
  v49 = 0;
  sub_13A5C(v43, v36);
  sub_143D0();
  sub_1E1CF0();
  v36[2] = v39;
  v36[3] = v40;
  v36[4] = v41;
  v36[5] = v42;
  v36[0] = v37;
  v36[1] = v38;
  sub_14424(v36);
  if (!v2)
  {
    v15 = *(v3 + 112);
    v31 = *(v3 + 96);
    v32 = v15;
    v48 = 1;
    sub_28450();

    sub_1E1C80();
    v32, v16, v17, v18, v19, v20, v21, v22;
    v23 = *(v3 + 128);
    v24 = *(v3 + 136);
    v25 = *(v3 + 144);
    v26 = *(v3 + 152);
    v27 = *(v3 + 160);
    *&v31 = *(v3 + 120);
    *(&v31 + 1) = v23;
    v32 = v24;
    v33 = v25;
    v34 = v26;
    v35 = v27;
    v48 = 2;
    sub_13BDC(v31, v23, v24, v25, v26, v27);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v31, *(&v31 + 1), v32, v33, v34, v35, v28, v29);
    type metadata accessor for WriteReviewEvent.Model(0);
    LOBYTE(v31) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_13B8A8()
{
  result = qword_288F40;
  if (!qword_288F40)
  {
    result = swift_getWitnessTable(byte_1FF5EC, &type metadata for WriteReviewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_288F40);
  }

  return result;
}

void WriteReviewEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1E1150();
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_3D68(&qword_288F48, &qword_1FF428);
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = type metadata accessor for WriteReviewEvent.Model(0);
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v40 = a1;
  sub_48B8(a1, v9);
  sub_13B8A8();
  v10 = v39;
  sub_1E1DF0();
  if (v10)
  {
    sub_4E48(v40, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v18 = v8;
    v39 = v5;
    v19 = v37;
    v51 = 0;
    sub_14CB8();
    v20 = v38;
    sub_1E1C20();
    v21 = v47;
    v22 = v18;
    *(v18 + 2) = v46;
    *(v18 + 3) = v21;
    v23 = v49;
    *(v18 + 4) = v48;
    *(v18 + 5) = v23;
    v24 = v45;
    *v18 = v44;
    *(v18 + 1) = v24;
    v50 = 1;
    sub_28EF4();
    sub_1E1BB0();
    v25 = v42;
    *(v18 + 6) = v41;
    *(v18 + 14) = v25;
    v50 = 2;
    sub_DAD8();
    sub_1E1BB0();
    v26 = v42;
    *(v18 + 120) = v41;
    *(v18 + 136) = v26;
    *(v18 + 152) = v43;
    LOBYTE(v41) = 3;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v27 = v39;
    sub_1E1C20();
    (*(v19 + 8))(0, v20);
    (*(v35 + 32))(v22 + *(v6 + 28), v27, v3);
    sub_13BDC4(v22, v36);
    sub_4E48(v40, v28, v29, v30, v31, v32, v33, v34);
    sub_13BE28(v22);
  }
}

uint64_t sub_13BDC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WriteReviewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13BE28(uint64_t a1)
{
  v2 = type metadata accessor for WriteReviewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_13BF24@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v4, v12);
}

uint64_t sub_13C0BC(uint64_t a1, uint64_t a2, int *a3)
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

  v11 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
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

  v14 = sub_3D68(&qword_27DD80, &qword_1E4D30);
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

uint64_t sub_13C288(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  v13 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
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

  v16 = sub_3D68(&qword_27DD80, &qword_1E4D30);
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

void sub_13C44C(uint64_t a1)
{
  sub_13C5A8(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_13C5A8(319, &qword_27EAE8, sub_28EF4, sub_28450, &type metadata for UpSellData);
    if (v2 <= 0x3F)
    {
      sub_13C5A8(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
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

void sub_13C5A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_13C638(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_13C6F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_13C79C(uint64_t a1)
{
  sub_19FE0(319, &qword_27EBC8, &type metadata for UpSellData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_27E398, &type metadata for SeriesData);
    if (v2 <= 0x3F)
    {
      sub_1E1150();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_13C87C()
{
  result = qword_289080;
  if (!qword_289080)
  {
    result = swift_getWitnessTable(byte_1FF5C4, &type metadata for WriteReviewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289080);
  }

  return result;
}

unint64_t sub_13C8D4()
{
  result = qword_289088;
  if (!qword_289088)
  {
    result = swift_getWitnessTable(byte_1FF534, &type metadata for WriteReviewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289088);
  }

  return result;
}

unint64_t sub_13C92C()
{
  result = qword_289090;
  if (!qword_289090)
  {
    result = swift_getWitnessTable(byte_1FF55C, &type metadata for WriteReviewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289090);
  }

  return result;
}

uint64_t sub_13C980(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000617461;
  v11 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, v10, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else
  {
    v13 = sub_1E1D30();
    a2, v14, v15, v16, v17, v18, v19, v20;
    if (v13)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

BookAnalytics::EndReasonType_optional __swiftcall EndReasonType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261108;
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

unint64_t EndReasonType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0xD000000000000027;
  if (*v0 != 2)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0)
  {
    v1 = 0x756F72676B636162;
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

unint64_t sub_13CC00()
{
  result = qword_289098;
  if (!qword_289098)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EndReasonType, &type metadata for EndReasonType, v0, v1);
    atomic_store(result, &qword_289098);
  }

  return result;
}

Swift::Int sub_13CC54()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE700000000000000;
  v3 = 0x8000000000212EF0;
  if (v1 != 2)
  {
    v3 = 0xEF74657365527265;
  }

  if (v1)
  {
    v2 = 0xEC0000006465646ELL;
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

void sub_13CD30(uint64_t a1)
{
  v2 = 0xE700000000000000;
  v3 = 0x8000000000212EF0;
  if (*v1 != 2)
  {
    v3 = 0xEF74657365527265;
  }

  if (*v1)
  {
    v2 = 0xEC0000006465646ELL;
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

Swift::Int sub_13CDF8(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0x8000000000212EF0;
  if (v2 != 2)
  {
    v4 = 0xEF74657365527265;
  }

  if (v2)
  {
    v3 = 0xEC0000006465646ELL;
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

void sub_13CEDC(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0x8000000000212EF0;
  v5 = 0xD000000000000027;
  if (*v1 != 2)
  {
    v5 = 0x696669746E656469;
    v4 = 0xEF74657365527265;
  }

  if (*v1)
  {
    v3 = 0x756F72676B636162;
    v2 = 0xEC0000006465646ELL;
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

unint64_t sub_13D034()
{
  result = qword_2890A0;
  if (!qword_2890A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EndReasonType, &type metadata for EndReasonType, v0, v1);
    atomic_store(result, &qword_2890A0);
  }

  return result;
}

void __swiftcall WidgetData.init(widgetFamily:displayMode:isContentExposed:isStreakExposed:)(BookAnalytics::WidgetData *__return_ptr retstr, Swift::String widgetFamily, Swift::String displayMode, Swift::Bool isContentExposed, Swift::Bool isStreakExposed)
{
  retstr->widgetFamily = widgetFamily;
  retstr->displayMode = displayMode;
  retstr->isContentExposed = isContentExposed;
  retstr->isStreakExposed = isStreakExposed;
}

unint64_t sub_13D0E0()
{
  v1 = 0x6146746567646977;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x6B61657274537369;
  }

  if (*v0)
  {
    v1 = 0x4D79616C70736964;
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

uint64_t sub_13D17C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_13DA8C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_13D1A4(uint64_t a1)
{
  v2 = sub_13D7C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_13D1E0(uint64_t a1)
{
  v2 = sub_13D7C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WidgetData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2890A8, &qword_1FF750);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v7;
  v14 = *(v1 + 32);
  v10[1] = *(v1 + 33);
  sub_48B8(a1, a1[3]);
  sub_13D7C0();
  sub_1E1E00();
  v18 = 0;
  v8 = v13;
  sub_1E1CB0();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = 1;
  sub_1E1CB0();
  v16 = 2;
  sub_1E1CC0();
  v15 = 3;
  sub_1E1CC0();
  return (*(v4 + 8))(v6, v3);
}

void WidgetData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_2890B8, &qword_1FF758);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v45 - v7;
  sub_48B8(a1, a1[3]);
  sub_13D7C0();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v53 = 0;
    v16 = sub_1E1BE0();
    v48 = v17;
    v52 = 1;
    v46 = sub_1E1BE0();
    v47 = v18;
    v51 = 2;
    v49 = sub_1E1BF0();
    v50 = 3;
    v26 = sub_1E1BF0();
    v27 = v49 & 1;
    (*(v6 + 8))(v8, v5);
    v28 = v26 & 1;
    v30 = v47;
    v29 = v48;
    *a2 = v16;
    *(a2 + 8) = v29;
    *(a2 + 16) = v46;
    *(a2 + 24) = v30;
    *(a2 + 32) = v27;
    *(a2 + 33) = v28;

    sub_4E48(a1, v31, v32, v33, v34, v35, v36, v37);
    v30, v38, v39, v40, v41, v42, v43, v44;
    v29, v19, v20, v21, v22, v23, v24, v25;
  }
}

uint64_t _s13BookAnalytics10WidgetDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v6 && v3 == v7)
  {
    if (v4 != v8)
    {
      return 0;
    }

    return v5 ^ v9 ^ 1u;
  }

  v11 = sub_1E1D30();
  result = 0;
  if ((v11 & 1) != 0 && ((v4 ^ v8) & 1) == 0)
  {
    return v5 ^ v9 ^ 1u;
  }

  return result;
}

unint64_t sub_13D7C0()
{
  result = qword_2890B0;
  if (!qword_2890B0)
  {
    result = swift_getWitnessTable(asc_1FF93C, &type metadata for WidgetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2890B0);
  }

  return result;
}

unint64_t sub_13D818()
{
  result = qword_2890C0;
  if (!qword_2890C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WidgetData, &type metadata for WidgetData, v0, v1);
    atomic_store(result, &qword_2890C0);
  }

  return result;
}

unint64_t sub_13D870()
{
  result = qword_2890C8;
  if (!qword_2890C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WidgetData, &type metadata for WidgetData, v0, v1);
    atomic_store(result, &qword_2890C8);
  }

  return result;
}

__n128 sub_13D8C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_13D8D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_13D920(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_13D988()
{
  result = qword_2890D0;
  if (!qword_2890D0)
  {
    result = swift_getWitnessTable(aU_14, &type metadata for WidgetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2890D0);
  }

  return result;
}

unint64_t sub_13D9E0()
{
  result = qword_2890D8;
  if (!qword_2890D8)
  {
    result = swift_getWitnessTable(byte_1FF884, &type metadata for WidgetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2890D8);
  }

  return result;
}

unint64_t sub_13DA38()
{
  result = qword_2890E0;
  if (!qword_2890E0)
  {
    result = swift_getWitnessTable(byte_1FF8AC, &type metadata for WidgetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2890E0);
  }

  return result;
}

uint64_t sub_13DA8C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEC000000796C696DLL;
  v11 = a1 == 0x6146746567646977 && a2 == 0xEC000000796C696DLL;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0xEB0000000065646FLL;
    if (a1 == 0x4D79616C70736964 && a2 == 0xEB0000000065646FLL || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0x8000000000215960;
      if (a1 == 0xD000000000000010 && 0x8000000000215960 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x6B61657274537369 && a2 == 0xEF6465736F707845)
      {
        0xEF6465736F707845, 0xEF6465736F707845, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v15 = sub_1E1D30();
        a2, v16, v17, v18, v19, v20, v21, v22;
        if (v15)
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

uint64_t sub_13DC08()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x7544657A6F6F6E73;
  }
}

void sub_13DC54(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0xEE006E6F69746172;
  v13 = a1 == 0x7544657A6F6F6E73 && a2 == 0xEE006E6F69746172;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v14 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000216D20 == a2)
  {
    a2, 0x8000000000216D20, a3, a4, a5, a6, a7, a8;
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

uint64_t sub_13DD40(uint64_t a1)
{
  v2 = sub_13DF4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_13DD7C(uint64_t a1)
{
  v2 = sub_13DF4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AudioSnoozeData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2890E8, &qword_1FF990);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  sub_48B8(a1, a1[3]);
  sub_13DF4C();
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

unint64_t sub_13DF4C()
{
  result = qword_2890F0;
  if (!qword_2890F0)
  {
    result = swift_getWitnessTable(byte_1FFB7C, &type metadata for AudioSnoozeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2890F0);
  }

  return result;
}

void AudioSnoozeData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_2890F8, &qword_1FF998);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  sub_48B8(a1, a1[3]);
  sub_13DF4C();
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

unint64_t sub_13E1FC()
{
  result = qword_289100;
  if (!qword_289100)
  {
    result = swift_getWitnessTable(byte_1FFB54, &type metadata for AudioSnoozeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_289100);
  }

  return result;
}

unint64_t sub_13E254()
{
  result = qword_289108;
  if (!qword_289108)
  {
    result = swift_getWitnessTable(asc_1FFAC4, &type metadata for AudioSnoozeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_289108);
  }

  return result;
}

unint64_t sub_13E2AC()
{
  result = qword_289110;
  if (!qword_289110)
  {
    result = swift_getWitnessTable(aE_10, &type metadata for AudioSnoozeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_289110);
  }

  return result;
}

uint64_t ReportAnIssueCompletionEvent.optionListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAnIssueCompletionEvent(0) + 20);
  v4 = sub_3D68(&qword_289148, &unk_1FFBD8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReportAnIssueCompletionEvent.optionListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportAnIssueCompletionEvent(0) + 20);
  v4 = sub_3D68(&qword_289148, &unk_1FFBD8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReportAnIssueCompletionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAnIssueCompletionEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReportAnIssueCompletionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportAnIssueCompletionEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReportAnIssueCompletionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReportAnIssueCompletionEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_289148, &unk_1FFBD8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t ReportAnIssueCompletionEvent.Model.optionListData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 16) = v2;
}

uint64_t ReportAnIssueCompletionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAnIssueCompletionEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReportAnIssueCompletionEvent.Model.init(contentData:optionListData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 16);
  v7 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v7;
  v8 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v8;
  v9 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v9;
  *(a4 + 96) = *a2;
  *(a4 + 112) = v6;
  v10 = *(type metadata accessor for ReportAnIssueCompletionEvent.Model(0) + 24);
  v11 = sub_1E1150();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t sub_13E948()
{
  v1 = 0x694C6E6F6974706FLL;
  if (*v0 != 1)
  {
    v1 = 0x746144746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44746E65746E6F63;
  }
}

uint64_t sub_13E9BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_13FC64(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_13E9E4(uint64_t a1)
{
  v2 = sub_13ED1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_13EA20(uint64_t a1)
{
  v2 = sub_13ED1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReportAnIssueCompletionEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_289150, &qword_1FFBE8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32[-v6];
  sub_48B8(a1, a1[3]);
  sub_13ED1C();
  sub_1E1E00();
  v8 = *(v2 + 48);
  v9 = *(v2 + 16);
  v49 = *(v2 + 32);
  v50 = v8;
  v10 = *(v2 + 48);
  v11 = *(v2 + 80);
  v51 = *(v2 + 64);
  v52 = v11;
  v12 = *(v2 + 16);
  v48[0] = *v2;
  v48[1] = v12;
  v44 = v49;
  v45 = v10;
  v13 = *(v2 + 80);
  v46 = v51;
  v47 = v13;
  v42 = v48[0];
  v43 = v9;
  v41 = 0;
  sub_13A5C(v48, &v35);
  sub_143D0();
  v14 = v53;
  sub_1E1CF0();
  if (v14)
  {
    v37 = v44;
    v38 = v45;
    v39 = v46;
    v40 = v47;
    v35 = v42;
    v36 = v43;
    sub_14424(&v35);
  }

  else
  {
    v37 = v44;
    v38 = v45;
    v39 = v46;
    v40 = v47;
    v35 = v42;
    v36 = v43;
    sub_14424(&v35);
    v15 = *(v2 + 112);
    v33 = *(v2 + 96);
    v34 = v15;
    v32[15] = 1;
    sub_13ED70();

    sub_1E1CF0();
    v16 = v33;
    v34, v17, v18, v19, v20, v21, v22, v23;
    v16, v24, v25, v26, v27, v28, v29, v30;
    type metadata accessor for ReportAnIssueCompletionEvent.Model(0);
    LOBYTE(v33) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_13ED1C()
{
  result = qword_289158;
  if (!qword_289158)
  {
    result = swift_getWitnessTable(byte_1FFDB8, &type metadata for ReportAnIssueCompletionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289158);
  }

  return result;
}

unint64_t sub_13ED70()
{
  result = qword_289160;
  if (!qword_289160)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OptionListData, &type metadata for OptionListData, v0, v1);
    atomic_store(result, &qword_289160);
  }

  return result;
}

void ReportAnIssueCompletionEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_1E1150();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_3D68(&qword_289168, &qword_1FFBF0);
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = &v33 - v7;
  v9 = type metadata accessor for ReportAnIssueCompletionEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v38 = a1;
  sub_48B8(a1, v12);
  sub_13ED1C();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v38, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = v36;
    v33 = v6;
    v48 = 0;
    sub_14CB8();
    v21 = v37;
    sub_1E1C20();
    v22 = v44;
    *(v11 + 2) = v43;
    *(v11 + 3) = v22;
    v23 = v46;
    *(v11 + 4) = v45;
    *(v11 + 5) = v23;
    v24 = v42;
    *v11 = v41;
    *(v11 + 1) = v24;
    v47 = 1;
    sub_13F1F4();
    sub_1E1C20();
    v25 = v40;
    *(v11 + 6) = v39;
    *(v11 + 14) = v25;
    LOBYTE(v39) = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v8, v21);
    (*(v34 + 32))(&v11[*(v9 + 24)], v33, v4);
    sub_13F248(v11, v35);
    sub_4E48(v38, v26, v27, v28, v29, v30, v31, v32);
    sub_13F2AC(v11);
  }
}

unint64_t sub_13F1F4()
{
  result = qword_289170;
  if (!qword_289170)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OptionListData, &type metadata for OptionListData, v0, v1);
    atomic_store(result, &qword_289170);
  }

  return result;
}

uint64_t sub_13F248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportAnIssueCompletionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13F2AC(uint64_t a1)
{
  v2 = type metadata accessor for ReportAnIssueCompletionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_13F3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_289148, &unk_1FFBD8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_13F4E0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = sub_3D68(&qword_289148, &unk_1FFBD8);
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

uint64_t sub_13F658(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

  v13 = sub_3D68(&qword_289148, &unk_1FFBD8);
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

void sub_13F7C8(uint64_t a1)
{
  sub_13F8D4(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_13F8D4(319, &unk_2891E0, sub_13F1F4, sub_13ED70, &type metadata for OptionListData);
    if (v2 <= 0x3F)
    {
      sub_5684(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_13F8D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_13F964(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_13FA24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_13FAC8(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_13FB60()
{
  result = qword_2892B0;
  if (!qword_2892B0)
  {
    result = swift_getWitnessTable(byte_1FFD90, &type metadata for ReportAnIssueCompletionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2892B0);
  }

  return result;
}

unint64_t sub_13FBB8()
{
  result = qword_2892B8;
  if (!qword_2892B8)
  {
    result = swift_getWitnessTable(asc_1FFD00, &type metadata for ReportAnIssueCompletionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2892B8);
  }

  return result;
}

unint64_t sub_13FC10()
{
  result = qword_2892C0;
  if (!qword_2892C0)
  {
    result = swift_getWitnessTable(asc_1FFD28, &type metadata for ReportAnIssueCompletionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2892C0);
  }

  return result;
}

uint64_t sub_13FC64(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
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
    v13 = 0xEE00617461447473;
    if (a1 == 0x694C6E6F6974706FLL && a2 == 0xEE00617461447473 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v13, a3, a4, a5, a6, a7, a8;
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

uint64_t ListeningSessionData.remainingBufferTime.setter(uint64_t result)
{
  *(v1 + 44) = result;
  *(v1 + 48) = BYTE4(result) & 1;
  return result;
}

uint64_t ListeningSessionData.percentCompletionEnd.setter(uint64_t result)
{
  *(v1 + 52) = result;
  *(v1 + 56) = BYTE4(result) & 1;
  return result;
}

void __swiftcall ListeningSessionData.init(startTime:endTime:playbackSpeed:listeningID:isPreview:isStreaming:remainingBufferTime:isBackgrounded:percentCompletionEnd:isSnoozeTimeReached:)(BookAnalytics::ListeningSessionData *__return_ptr retstr, Swift::Float_optional *startTime, Swift::Float_optional *endTime, Swift::Float playbackSpeed, Swift::String_optional listeningID, Swift::Bool isPreview, Swift::Bool isStreaming, Swift::Int32_optional remainingBufferTime, Swift::Bool isBackgrounded, Swift::Float_optional *percentCompletionEnd, Swift::Bool_optional isSnoozeTimeReached)
{
  LODWORD(retstr->startTime.value) = startTime;
  retstr->startTime.is_nil = BYTE4(startTime) & 1;
  *(&retstr->endTime.value + 3) = endTime;
  LOBYTE(retstr->playbackSpeed) = BYTE4(endTime) & 1;
  *&retstr->listeningID.value._countAndFlagsBits = playbackSpeed;
  *&retstr->listeningID.value._object = listeningID;
  LOBYTE(retstr->percentCompletionEnd.value) = isPreview;
  BYTE1(retstr->percentCompletionEnd.value) = isStreaming;
  *&retstr->percentCompletionEnd.is_nil = remainingBufferTime.value;
  LOBYTE(retstr[1].startTime.value) = remainingBufferTime.is_nil;
  BYTE1(retstr[1].startTime.value) = isBackgrounded;
  *&retstr[1].startTime.is_nil = percentCompletionEnd;
  HIBYTE(retstr[1].endTime.value) = BYTE4(percentCompletionEnd) & 1;
  retstr[1].endTime.is_nil = isSnoozeTimeReached.value;
}

unint64_t sub_13FF18(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x72676B6361427369;
    if (a1 == 8)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6D61657274537369;
    if (a1 != 5)
    {
      v7 = 0xD000000000000013;
    }

    if (a1 <= 6u)
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
    v1 = 0x6D69547472617473;
    v2 = 0x6B63616279616C70;
    v3 = 0x6E696E657473696CLL;
    if (a1 != 3)
    {
      v3 = 0x6569766572507369;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656D6954646E65;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_14008C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_140D3C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1400B4(uint64_t a1)
{
  v2 = sub_140ADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1400F0(uint64_t a1)
{
  v2 = sub_140ADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ListeningSessionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2892C8, &qword_1FFE10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  v7 = *(v1 + 4);
  v23 = *(v1 + 8);
  v22 = *(v1 + 12);
  v8 = *(v1 + 24);
  v20 = *(v1 + 32);
  v21 = v8;
  LODWORD(v8) = *(v1 + 40);
  v18 = *(v1 + 41);
  v19 = v8;
  v17 = *(v1 + 44);
  LODWORD(v8) = *(v1 + 48);
  v15 = *(v1 + 49);
  v16 = v8;
  v14 = *(v1 + 52);
  LODWORD(v8) = *(v1 + 56);
  v12[2] = *(v1 + 57);
  v13 = v8;
  sub_48B8(a1, a1[3]);
  sub_140ADC();
  sub_1E1E00();
  v38 = 0;
  v37 = v7;
  v9 = v24;
  sub_1E1C70();
  if (!v9)
  {
    v10 = v16;
    v36 = 1;
    v35 = v22;
    sub_1E1C70();
    v34 = 2;
    sub_1E1CE0();
    v33 = 3;
    sub_1E1C50();
    v32 = 4;
    sub_1E1CC0();
    v31 = 5;
    sub_1E1CC0();
    v30 = 6;
    v29 = v10;
    sub_1E1C90();
    v28 = 7;
    sub_1E1CC0();
    v27 = 8;
    v26 = v13;
    sub_1E1C70();
    v25 = 9;
    sub_1E1C60();
  }

  return (*(v4 + 8))(v6, v3);
}

void ListeningSessionData.init(from:)(BAEventReporter **a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_2892D8, &qword_1FFE18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  sub_48B8(a1, a1[3]);
  sub_140ADC();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
    0, v20, v21, v22, v23, v24, v25, v26;
  }

  else
  {
    LOBYTE(v59) = 0;
    v16 = sub_1E1BA0();
    v78 = BYTE4(v16) & 1;
    LOBYTE(v59) = 1;
    v55 = sub_1E1BA0();
    v77 = BYTE4(v55) & 1;
    LOBYTE(v59) = 2;
    sub_1E1C10();
    v18 = v17;
    LOBYTE(v59) = 3;
    v19 = sub_1E1B80();
    v28 = v27;
    v54 = v19;
    LOBYTE(v59) = 4;
    v53 = sub_1E1BF0();
    LOBYTE(v59) = 5;
    v52 = sub_1E1BF0();
    LOBYTE(v59) = 6;
    v51 = sub_1E1BC0();
    v76 = BYTE4(v51) & 1;
    LOBYTE(v59) = 7;
    v50 = sub_1E1BF0();
    LOBYTE(v59) = 8;
    v49 = sub_1E1BA0();
    v75 = BYTE4(v49) & 1;
    v74 = 9;
    v48 = sub_1E1B90();
    v29 = v53 & 1;
    v45 = v53 & 1;
    v53 = v52 & 1;
    v52 = v50 & 1;
    (*(v6 + 8))(v8, v5);
    v47 = v16;
    LODWORD(v56) = v16;
    v50 = v78;
    BYTE4(v56) = v78;
    DWORD2(v56) = v55;
    v46 = v77;
    BYTE12(v56) = v77;
    LODWORD(v57) = v18;
    v30 = v54;
    *(&v57 + 1) = v54;
    *v58 = v28;
    v58[8] = v29;
    v58[9] = v53;
    v31 = v51;
    *&v58[12] = v51;
    HIDWORD(v44) = v76;
    v58[16] = v76;
    v58[17] = v52;
    LODWORD(v16) = v49;
    *&v58[20] = v49;
    v32 = v75;
    v58[24] = v75;
    v33 = v48;
    v58[25] = v48;
    v34 = v56;
    v35 = v57;
    v36 = *v58;
    *(a2 + 42) = *&v58[10];
    a2[1] = v35;
    a2[2] = v36;
    *a2 = v34;
    sub_3D9DC(&v56, &v59);
    sub_4E48(a1, v37, v38, v39, v40, v41, v42, v43);
    v59 = v47;
    v60 = v50;
    v61 = v55;
    v62 = v46;
    v63 = v18;
    v64 = v30;
    v65 = v28;
    v66 = v45;
    v67 = v53;
    v68 = v31;
    v69 = BYTE4(v44);
    v70 = v52;
    v71 = v16;
    v72 = v32;
    v73 = v33;
    sub_3E68C(&v59);
  }
}

uint64_t _s13BookAnalytics20ListeningSessionDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 41);
  v9 = *(a1 + 44);
  v10 = *(a1 + 48);
  v11 = *(a1 + 49);
  v12 = *(a1 + 52);
  v13 = *(a1 + 56);
  v14 = *(a1 + 57);
  v15 = *(a2 + 8);
  v16 = *(a2 + 12);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  v21 = *(a2 + 41);
  v22 = *(a2 + 44);
  v23 = *(a2 + 48);
  v24 = *(a2 + 49);
  v25 = *(a2 + 52);
  v26 = *(a2 + 56);
  v27 = *(a2 + 57);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v28 = *(a2 + 4);
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  if (*(a1 + 12))
  {
    if (v4 == v17)
    {
      v29 = v16;
    }

    else
    {
      v29 = 0;
    }

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v16)
    {
      return 0;
    }

    result = 0;
    if (v3 != v15 || v4 != v17)
    {
      return result;
    }
  }

  if (!v5)
  {
    result = 0;
    if (v19 || ((v7 ^ v20) & 1) != 0)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (!v19)
  {
    return 0;
  }

  if (v6 != v18 || v5 != v19)
  {
    v34 = v26;
    v35 = v13;
    v36 = v27;
    v37 = v14;
    v31 = sub_1E1D30();
    result = 0;
    if ((v31 & 1) == 0)
    {
      return result;
    }

    if ((v7 ^ v20))
    {
      return result;
    }

    v27 = v36;
    v14 = v37;
    v26 = v34;
    v13 = v35;
    if ((v8 ^ v21))
    {
      return result;
    }

    goto LABEL_30;
  }

  result = 0;
  if (v7 != v20)
  {
    return result;
  }

LABEL_25:
  if ((v8 ^ v21))
  {
    return result;
  }

LABEL_30:
  result = 0;
  if (v10)
  {
    if (!v23)
    {
      return result;
    }

LABEL_37:
    if ((v11 ^ v24))
    {
      return result;
    }

    if (v13)
    {
      if (!v26)
      {
        return 0;
      }
    }

    else
    {
      if (v12 == v25)
      {
        v33 = v26;
      }

      else
      {
        v33 = 1;
      }

      if (v33)
      {
        return 0;
      }
    }

    if (v14 == 2)
    {
      if (v27 != 2)
      {
        return 0;
      }
    }

    else if (v27 == 2 || ((v27 ^ v14) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (v9 == v22)
  {
    v32 = v23;
  }

  else
  {
    v32 = 1;
  }

  if ((v32 & 1) == 0)
  {
    goto LABEL_37;
  }

  return result;
}

unint64_t sub_140ADC()
{
  result = qword_2892D0;
  if (!qword_2892D0)
  {
    result = swift_getWitnessTable(aA_17, &type metadata for ListeningSessionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2892D0);
  }

  return result;
}

__n128 sub_140B38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_140B54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 58))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_140BB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_140C38()
{
  result = qword_2892E0;
  if (!qword_2892E0)
  {
    result = swift_getWitnessTable(aY_16, &type metadata for ListeningSessionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2892E0);
  }

  return result;
}

unint64_t sub_140C90()
{
  result = qword_2892E8;
  if (!qword_2892E8)
  {
    result = swift_getWitnessTable(byte_1FFF60, &type metadata for ListeningSessionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2892E8);
  }

  return result;
}

unint64_t sub_140CE8()
{
  result = qword_2892F0;
  if (!qword_2892F0)
  {
    result = swift_getWitnessTable(byte_1FFF88, &type metadata for ListeningSessionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2892F0);
  }

  return result;
}

uint64_t sub_140D3C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v12 = 0xED00006465657053;
    if (a1 == 0x6B63616279616C70 && a2 == 0xED00006465657053 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = 0xEB00000000444967;
      if (a1 == 0x6E696E657473696CLL && a2 == 0xEB00000000444967 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v14 = 0xE900000000000077;
        if (a1 == 0x6569766572507369 && a2 == 0xE900000000000077 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else
        {
          v15 = 0xEB00000000676E69;
          if (a1 == 0x6D61657274537369 && a2 == 0xEB00000000676E69 || (sub_1E1D30() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 5;
          }

          else
          {
            v16 = 0x8000000000216D40;
            if (a1 == 0xD000000000000013 && 0x8000000000216D40 == a2 || (sub_1E1D30() & 1) != 0)
            {
              a2, v16, a3, a4, a5, a6, a7, a8;
              return 6;
            }

            else
            {
              v17 = 0xEE006465646E756FLL;
              if (a1 == 0x72676B6361427369 && a2 == 0xEE006465646E756FLL || (sub_1E1D30() & 1) != 0)
              {
                a2, v17, a3, a4, a5, a6, a7, a8;
                return 7;
              }

              else
              {
                v18 = 0x80000000002155E0;
                if (a1 == 0xD000000000000014 && 0x80000000002155E0 == a2 || (sub_1E1D30() & 1) != 0)
                {
                  a2, v18, a3, a4, a5, a6, a7, a8;
                  return 8;
                }

                else if (a1 == 0xD000000000000013 && 0x8000000000216D60 == a2)
                {
                  a2, 0x8000000000216D60, a3, a4, a5, a6, a7, a8;
                  return 9;
                }

                else
                {
                  v19 = sub_1E1D30();
                  a2, v20, v21, v22, v23, v24, v25, v26;
                  if (v19)
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

uint64_t YIRSourceData.totalReadTime.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t YIRSourceData.longestPageCount.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t YIRSourceData.finishedSeries.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t LinkData.previousGenreID.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void LinkData.previousGenreID.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 72) = a1;
  *(v8 + 80) = a2;
}

uint64_t LinkData.previousCollectionID.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

void LinkData.previousCollectionID.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 96), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 88) = a1;
  *(v8 + 96) = a2;
}

uint64_t YIRSourceData.totalRatedContent.setter(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t YIRSourceData.finishedBooks.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t YIRSourceData.longestStreak.setter(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

uint64_t YIRSourceData.readingGoalsReachedDays.setter(uint64_t result, char a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2 & 1;
  return result;
}

uint64_t YIRSourceData.avgReadingTime.setter(uint64_t result, char a2)
{
  *(v2 + 168) = result;
  *(v2 + 176) = a2 & 1;
  return result;
}

void __swiftcall YIRSourceData.init(frameName:readerType:totalReadTime:longestPageCount:longestAudiobook:finishedSeries:mostContentGenre:mostContentAuthor:totalRatedContent:finishedBooks:longestStreak:readingGoalsReachedDays:avgReadingTime:)(BookAnalytics::YIRSourceData *__return_ptr retstr, BookAnalytics::FrameName_optional frameName, BookAnalytics::ReaderType_optional readerType, Swift::Int64_optional totalReadTime, Swift::Int64_optional longestPageCount, Swift::Int64_optional longestAudiobook, Swift::Int64_optional finishedSeries, Swift::String_optional mostContentGenre, Swift::String_optional mostContentAuthor, Swift::Int64_optional totalRatedContent, Swift::Int64_optional finishedBooks, Swift::Int64_optional longestStreak, Swift::Int64_optional readingGoalsReachedDays, Swift::Int64_optional avgReadingTime)
{
  v14 = *readerType.value;
  retstr->frameName.value = *frameName.value;
  retstr->readerType.value = v14;
  *(&retstr->totalReadTime.value + 6) = totalReadTime.value;
  BYTE5(retstr->longestPageCount.value) = totalReadTime.is_nil;
  *(&retstr->longestAudiobook.value + 4) = longestPageCount.value;
  BYTE3(retstr->finishedSeries.value) = longestPageCount.is_nil;
  retstr->mostContentGenre.value._countAndFlagsBits = longestAudiobook.value;
  LOBYTE(retstr->mostContentGenre.value._object) = longestAudiobook.is_nil;
  retstr->mostContentAuthor.value._countAndFlagsBits = finishedSeries.value;
  LOBYTE(retstr->mostContentAuthor.value._object) = finishedSeries.is_nil;
  *&retstr->totalRatedContent.value = mostContentGenre;
  *(&retstr->finishedBooks.value + 7) = mostContentAuthor;
  *(&retstr->readingGoalsReachedDays.value + 5) = totalRatedContent.value;
  BYTE4(retstr->avgReadingTime.value) = totalRatedContent.is_nil;
  *&retstr[1].frameName.value = finishedBooks.value;
  BYTE6(retstr[1].totalReadTime.value) = finishedBooks.is_nil;
  *(&retstr[1].longestPageCount.value + 5) = longestStreak.value;
  BYTE4(retstr[1].longestAudiobook.value) = longestStreak.is_nil;
  *(&retstr[1].finishedSeries.value + 3) = readingGoalsReachedDays.value;
  LOBYTE(retstr[1].mostContentGenre.value._countAndFlagsBits) = readingGoalsReachedDays.is_nil;
  retstr[1].mostContentGenre.value._object = avgReadingTime.value;
  LOBYTE(retstr[1].mostContentAuthor.value._countAndFlagsBits) = avgReadingTime.is_nil;
}

unint64_t sub_1413B0(char a1)
{
  result = 0x6D614E656D617266;
  switch(a1)
  {
    case 1:
      result = 0x7954726564616572;
      break;
    case 2:
      result = 0x6165526C61746F74;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 9:
      result = 0x64656873696E6966;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
    case 8:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x53747365676E6F6CLL;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0x6964616552677661;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_14157C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_143190(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1415B0(uint64_t a1)
{
  v2 = sub_142B50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1415EC(uint64_t a1)
{
  v2 = sub_142B50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t YIRSourceData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2892F8, &qword_200068);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - v5;
  v7 = *v1;
  v35 = v1[1];
  v34 = *(v1 + 1);
  v33 = v1[16];
  v32 = *(v1 + 3);
  v8 = v1[32];
  v29 = *(v1 + 5);
  v30 = v1[48];
  v31 = v8;
  v9 = *(v1 + 7);
  v28 = v1[64];
  v10 = *(v1 + 9);
  v26 = *(v1 + 10);
  v27 = v9;
  v11 = *(v1 + 12);
  v23 = *(v1 + 11);
  v24 = v11;
  v25 = v10;
  v21 = *(v1 + 13);
  v22 = v1[112];
  v19 = *(v1 + 15);
  v20 = v1[128];
  v17 = *(v1 + 17);
  v18 = v1[144];
  v15[1] = *(v1 + 19);
  v16 = v1[160];
  v15[0] = *(v1 + 21);
  v12 = v1[176];
  sub_48B8(a1, a1[3]);
  sub_142B50();
  sub_1E1E00();
  v51 = v7;
  v50 = 0;
  sub_142BA4();
  v13 = v36;
  sub_1E1C80();
  if (v13)
  {
    return (*(v4 + 8))(v6, v3);
  }

  LODWORD(v36) = v12;
  v49 = v35;
  v48 = 1;
  sub_142BF8();
  sub_1E1C80();
  v47 = 2;
  sub_1E1CA0();
  v46 = 3;
  sub_1E1CA0();
  v45 = 4;
  sub_1E1CA0();
  v44 = 5;
  sub_1E1CA0();
  v43[0] = 6;
  sub_1E1C50();
  v42 = 7;
  sub_1E1C50();
  v41 = 8;
  sub_1E1CA0();
  v40 = 9;
  sub_1E1CA0();
  v39 = 10;
  sub_1E1CA0();
  v38 = 11;
  sub_1E1CA0();
  v37 = 12;
  sub_1E1CA0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t YIRSourceData.init(from:)@<X0>(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v66 = sub_3D68(&qword_289318, &qword_200070);
  v5 = *(v66 - 8);
  __chkstk_darwin(v66);
  v7 = &v51 - v6;
  v137 = 1;
  v135 = 1;
  v133 = 1;
  v131 = 1;
  v129 = 1;
  v127 = 1;
  v125 = 1;
  v123 = 1;
  v121 = 1;
  v8 = a1[3];
  v67 = a1;
  sub_48B8(a1, v8);
  sub_142B50();
  sub_1E1DF0();
  if (v2)
  {
    v140 = v2;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    sub_4E48(v67, v9, v10, v11, v12, v13, v14, v15);
    v88 = 1552;
    v89 = v138;
    v90 = v139;
    v91 = 0;
    v92 = v137;
    *v93 = *v136;
    *&v93[3] = *&v136[3];
    v94 = 0;
    v95 = v135;
    *v96 = *v134;
    *&v96[3] = *&v134[3];
    v97 = 0;
    v98 = v133;
    *v99 = *v132;
    *&v99[3] = *&v132[3];
    v100 = 0;
    v101 = v131;
    *v102 = *v130;
    *&v102[3] = *&v130[3];
    v103 = 0;
    v104 = v71;
    v105 = v69;
    v106 = v70;
    v107 = v68;
    v108 = v129;
    *&v109[3] = *&v128[3];
    *v109 = *v128;
    v110 = v74;
    v111 = v127;
    *&v112[3] = *&v126[3];
    *v112 = *v126;
    v113 = v73;
    v114 = v125;
    *v115 = *v124;
    *&v115[3] = *&v124[3];
    v116 = v72;
    v117 = v123;
    *&v118[3] = *&v122[3];
    *v118 = *v122;
    v119 = 0;
    v120 = v121;
  }

  else
  {
    LOBYTE(v75) = 0;
    sub_142C7C();
    sub_1E1BB0();
    v65 = v88;
    LOBYTE(v75) = 1;
    sub_142CD0();
    sub_1E1BB0();
    v64 = v88;
    LOBYTE(v88) = 2;
    v63 = sub_1E1BD0();
    v137 = v17 & 1;
    LOBYTE(v88) = 3;
    v62 = sub_1E1BD0();
    v135 = v18 & 1;
    LOBYTE(v88) = 4;
    v61 = sub_1E1BD0();
    v133 = v19 & 1;
    LOBYTE(v88) = 5;
    v60 = sub_1E1BD0();
    v131 = v20 & 1;
    LOBYTE(v88) = 6;
    v59 = sub_1E1B80();
    v71 = v21;
    LOBYTE(v88) = 7;
    v69 = sub_1E1B80();
    v70 = v22;
    LOBYTE(v88) = 8;
    v23 = sub_1E1BD0();
    v140 = 0;
    v68 = v23;
    v129 = v24 & 1;
    LOBYTE(v88) = 9;
    v74 = sub_1E1BD0();
    v140 = 0;
    v127 = v25 & 1;
    LOBYTE(v88) = 10;
    v73 = sub_1E1BD0();
    v140 = 0;
    v125 = v26 & 1;
    LOBYTE(v88) = 11;
    v72 = sub_1E1BD0();
    v140 = 0;
    v123 = v27 & 1;
    v87 = 12;
    v28 = sub_1E1BD0();
    v140 = 0;
    v29 = v28;
    v31 = v30;
    (*(v5 + 8))(v7, v66);
    v121 = v31 & 1;
    v32 = v64;
    v33 = v65;
    LOBYTE(v75) = v65;
    BYTE1(v75) = v64;
    v34 = v62;
    *(&v75 + 1) = v63;
    v52 = v137;
    LOBYTE(v76) = v137;
    *(&v76 + 1) = v62;
    v53 = v135;
    LOBYTE(v77) = v135;
    v35 = v61;
    *(&v77 + 1) = v61;
    v54 = v133;
    LOBYTE(v78) = v133;
    *(&v78 + 1) = v60;
    v56 = v131;
    LOBYTE(v79) = v131;
    *(&v79 + 1) = v59;
    *&v80 = v71;
    *(&v80 + 1) = v69;
    *&v81 = v70;
    *(&v81 + 1) = v68;
    LODWORD(v66) = v129;
    LOBYTE(v82) = v129;
    *(&v82 + 1) = *v128;
    DWORD1(v82) = *&v128[3];
    *(&v82 + 1) = v74;
    v58 = v127;
    LOBYTE(v83) = v127;
    *(&v83 + 1) = *v126;
    DWORD1(v83) = *&v126[3];
    *(&v83 + 1) = v73;
    v57 = v125;
    LOBYTE(v84) = v125;
    DWORD1(v84) = *&v124[3];
    *(&v84 + 1) = *v124;
    *(&v84 + 1) = v72;
    v55 = v123;
    LOBYTE(v85) = v123;
    DWORD1(v85) = *&v122[3];
    *(&v85 + 1) = *v122;
    *(&v85 + 1) = v29;
    v36 = v121;
    v86 = v121;
    *(a2 + 176) = v121;
    v37 = v84;
    *(a2 + 128) = v83;
    *(a2 + 144) = v37;
    v38 = v75;
    v39 = v76;
    v40 = v78;
    *(a2 + 32) = v77;
    *(a2 + 48) = v40;
    *a2 = v38;
    *(a2 + 16) = v39;
    v41 = v79;
    v42 = v80;
    v43 = v82;
    *(a2 + 96) = v81;
    *(a2 + 112) = v43;
    *(a2 + 64) = v41;
    *(a2 + 80) = v42;
    *(a2 + 160) = v85;
    sub_142D24(&v75, &v88);
    sub_4E48(v67, v44, v45, v46, v47, v48, v49, v50);
    LOBYTE(v88) = v33;
    HIBYTE(v88) = v32;
    v89 = v138;
    v90 = v139;
    v91 = v63;
    v92 = v52;
    *v93 = *v136;
    *&v93[3] = *&v136[3];
    v94 = v34;
    v95 = v53;
    *v96 = *v134;
    *&v96[3] = *&v134[3];
    v97 = v35;
    v98 = v54;
    *&v99[3] = *&v132[3];
    *v99 = *v132;
    v100 = v60;
    v101 = v56;
    *v102 = *v130;
    *&v102[3] = *&v130[3];
    v103 = v59;
    v104 = v71;
    v105 = v69;
    v106 = v70;
    v107 = v68;
    v108 = v66;
    *&v109[3] = *&v128[3];
    *v109 = *v128;
    v110 = v74;
    v111 = v58;
    *v112 = *v126;
    *&v112[3] = *&v126[3];
    v113 = v73;
    v114 = v57;
    *v115 = *v124;
    *&v115[3] = *&v124[3];
    v116 = v72;
    v117 = v55;
    *&v118[3] = *&v122[3];
    *v118 = *v122;
    v119 = v29;
    v120 = v36;
  }

  return sub_142C4C(&v88);
}

BOOL _s13BookAnalytics13YIRSourceDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1);
  v164 = *(a1 + 8);
  v167 = *(a1 + 16);
  v160 = *(a1 + 24);
  v165 = *(a1 + 32);
  v157 = *(a1 + 40);
  v161 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v7 = *(a1 + 88);
  v6 = *(a1 + 96);
  v8 = *(a1 + 104);
  v9 = *(a1 + 120);
  v152 = *(a1 + 128);
  v153 = *(a1 + 112);
  v10 = *(a1 + 136);
  v11 = *(a1 + 144);
  v12 = *(a1 + 152);
  v13 = *(a1 + 160);
  v149 = *(a1 + 168);
  v14 = *(a1 + 176);
  v15 = *a2;
  v16 = a2[1];
  v162 = *(a2 + 1);
  v166 = a2[16];
  v158 = *(a2 + 3);
  v163 = a2[32];
  v155 = *(a2 + 5);
  v159 = a2[48];
  v154 = *(a2 + 7);
  v156 = a2[64];
  v17 = *(a2 + 10);
  v19 = *(a2 + 11);
  v18 = *(a2 + 12);
  v20 = *(a2 + 13);
  v21 = a2[112];
  v22 = *(a2 + 15);
  v23 = a2[128];
  v150 = *(a2 + 17);
  v24 = a2[144];
  v25 = *(a2 + 19);
  v151 = a2[160];
  v148 = *(a2 + 21);
  v26 = a2[176];
  if (*a1 == 16)
  {
    v146 = *(a1 + 64);
    v147 = *(a2 + 9);
    if (v15 != 16)
    {
      return 0;
    }

LABEL_3:
    if (v2 == 6)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (v15 == 16)
  {
    return 0;
  }

  v146 = *(a1 + 64);
  v108 = *(a1 + 56);
  v109 = *(a2 + 10);
  v147 = *(a2 + 9);
  v118 = *(a1 + 80);
  v120 = *(a1 + 72);
  v128 = *(a2 + 12);
  v134 = *(a2 + 13);
  v138 = a2[112];
  v110 = *(a2 + 15);
  v111 = *(a1 + 120);
  v131 = a2[128];
  v27 = *(a1 + 96);
  v28 = a2[144];
  v29 = *(a2 + 19);
  v30 = *(a1 + 104);
  v121 = a2[176];
  v123 = *(a1 + 176);
  v112 = *(a1 + 144);
  v113 = *(a1 + 136);
  v115 = *(a1 + 160);
  v142 = *(a1 + 152);
  v31 = FrameName.rawValue.getter();
  v33 = v32;
  v35 = FrameName.rawValue.getter();
  v41 = v34;
  if (v31 != v35 || v33 != v34)
  {
    v64 = sub_1E1D30();
    v33, v65, v66, v67, v68, v69, v70, v71;
    v41, v72, v73, v74, v75, v76, v77, v78;
    v26 = v121;
    v14 = v123;
    v12 = v142;
    v13 = v115;
    v10 = v113;
    v11 = v112;
    v22 = v110;
    v9 = v111;
    v8 = v30;
    v25 = v29;
    v24 = v28;
    v6 = v27;
    v23 = v131;
    v21 = v138;
    v20 = v134;
    v18 = v128;
    v5 = v118;
    v4 = v120;
    v3 = v108;
    v17 = v109;
    if ((v64 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  v33, v34, v35, v36, v37, v38, v39, v40;
  v41, v42, v43, v44, v45, v46, v47, v48;
  v26 = v121;
  v14 = v123;
  v12 = v142;
  v13 = v115;
  v10 = v113;
  v11 = v112;
  v22 = v110;
  v9 = v111;
  v8 = v30;
  v25 = v29;
  v24 = v28;
  v6 = v27;
  v23 = v131;
  v21 = v138;
  v20 = v134;
  v18 = v128;
  v5 = v118;
  v4 = v120;
  v3 = v108;
  v17 = v109;
  if (v2 == 6)
  {
LABEL_4:
    if (v16 != 6)
    {
      return 0;
    }

    goto LABEL_12;
  }

LABEL_10:
  if (v16 == 6)
  {
    return 0;
  }

  v49 = v2;
  v50 = v16;
  v143 = v12;
  v51 = v13;
  v52 = v10;
  v139 = v21;
  v53 = v11;
  v122 = v26;
  v124 = v14;
  v119 = v5;
  v54 = v9;
  v126 = v19;
  v129 = v18;
  v55 = v8;
  v132 = v23;
  v114 = v25;
  v116 = v6;
  v56 = v24;
  v57 = v22;
  v135 = v20;
  v58 = v17;
  v59 = v3;
  v60 = sub_23D4C(v49, v50, v3, v17, v6, v22, v14, v24);
  v3 = v59;
  v17 = v58;
  v20 = v135;
  v26 = v122;
  LOBYTE(v14) = v124;
  v22 = v57;
  v25 = v114;
  v6 = v116;
  LODWORD(v24) = v56;
  v23 = v132;
  v8 = v55;
  v19 = v126;
  v18 = v129;
  v9 = v54;
  v5 = v119;
  v11 = v53;
  v21 = v139;
  v10 = v52;
  v13 = v51;
  v12 = v143;
  if ((v60 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v61 = v3;
  if (v167)
  {
    v62 = v147;
    v63 = v146;
    if (!v166)
    {
      return 0;
    }
  }

  else
  {
    v79 = v166;
    if (v164 != v162)
    {
      v79 = 1;
    }

    v62 = v147;
    v63 = v146;
    if (v79)
    {
      return 0;
    }
  }

  if (v165)
  {
    if (!v163)
    {
      return 0;
    }
  }

  else
  {
    v80 = v163;
    if (v160 != v158)
    {
      v80 = 1;
    }

    if (v80)
    {
      return 0;
    }
  }

  if (v161)
  {
    if (!v159)
    {
      return 0;
    }
  }

  else
  {
    v81 = v159;
    if (v157 != v155)
    {
      v81 = 1;
    }

    if (v81)
    {
      return 0;
    }
  }

  if (v63)
  {
    if (!v156)
    {
      return 0;
    }
  }

  else
  {
    v82 = v156;
    if (v61 != v154)
    {
      v82 = 1;
    }

    if (v82)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v17)
    {
      return 0;
    }

    if (v4 != v62 || v5 != v17)
    {
      v168 = v24;
      v133 = v23;
      v117 = v6;
      v144 = v12;
      v83 = v13;
      v127 = v19;
      v130 = v18;
      v84 = v10;
      v140 = v21;
      v85 = v11;
      v136 = v20;
      v86 = v26;
      v87 = v9;
      v88 = v8;
      v89 = v25;
      v90 = v22;
      v91 = v14;
      v92 = sub_1E1D30();
      LOBYTE(v14) = v91;
      v22 = v90;
      v6 = v117;
      v23 = v133;
      LODWORD(v24) = v168;
      v25 = v89;
      v8 = v88;
      v9 = v87;
      v26 = v86;
      v20 = v136;
      v11 = v85;
      v21 = v140;
      v10 = v84;
      v19 = v127;
      v18 = v130;
      v13 = v83;
      v12 = v144;
      if ((v92 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v6)
  {
    if (!v18)
    {
      return 0;
    }

    if (v7 != v19 || v6 != v18)
    {
      v169 = v24;
      v145 = v12;
      v93 = v13;
      v94 = v10;
      v141 = v21;
      v95 = v11;
      v137 = v20;
      v96 = v26;
      v97 = v9;
      v98 = v8;
      v99 = v25;
      v100 = v22;
      v125 = v14;
      v101 = sub_1E1D30();
      LOBYTE(v14) = v125;
      v22 = v100;
      LODWORD(v24) = v169;
      v25 = v99;
      v8 = v98;
      v9 = v97;
      v26 = v96;
      v20 = v137;
      v11 = v95;
      v21 = v141;
      v10 = v94;
      v13 = v93;
      v12 = v145;
      if ((v101 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v153)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == v20)
    {
      v102 = v21;
    }

    else
    {
      v102 = 1;
    }

    if (v102)
    {
      return 0;
    }
  }

  if (v152)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == v22)
    {
      v103 = v23;
    }

    else
    {
      v103 = 1;
    }

    if (v103)
    {
      return 0;
    }
  }

  if (v11)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == v150)
    {
      v104 = v24;
    }

    else
    {
      v104 = 1;
    }

    if (v104)
    {
      return 0;
    }
  }

  if (v13)
  {
    if (!v151)
    {
      return 0;
    }
  }

  else
  {
    v105 = v151;
    if (v12 != v25)
    {
      v105 = 1;
    }

    if (v105)
    {
      return 0;
    }
  }

  if ((v14 & 1) == 0)
  {
    if (v149 == v148)
    {
      v107 = v26;
    }

    else
    {
      v107 = 1;
    }

    return (v107 & 1) == 0;
  }

  return (v26 & 1) != 0;
}

unint64_t sub_142B50()
{
  result = qword_289300;
  if (!qword_289300)
  {
    result = swift_getWitnessTable(byte_200280, &type metadata for YIRSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_289300);
  }

  return result;
}

unint64_t sub_142BA4()
{
  result = qword_289308;
  if (!qword_289308)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FrameName, &type metadata for FrameName, v0, v1);
    atomic_store(result, &qword_289308);
  }

  return result;
}

unint64_t sub_142BF8()
{
  result = qword_289310;
  if (!qword_289310)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReaderType, &type metadata for ReaderType, v0, v1);
    atomic_store(result, &qword_289310);
  }

  return result;
}

unint64_t sub_142C7C()
{
  result = qword_289320;
  if (!qword_289320)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FrameName, &type metadata for FrameName, v0, v1);
    atomic_store(result, &qword_289320);
  }

  return result;
}

unint64_t sub_142CD0()
{
  result = qword_289328;
  if (!qword_289328)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReaderType, &type metadata for ReaderType, v0, v1);
    atomic_store(result, &qword_289328);
  }

  return result;
}

unint64_t sub_142D60()
{
  result = qword_289330;
  if (!qword_289330)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for YIRSourceData, &type metadata for YIRSourceData, v0, v1);
    atomic_store(result, &qword_289330);
  }

  return result;
}

unint64_t sub_142DB8()
{
  result = qword_289338;
  if (!qword_289338)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for YIRSourceData, &type metadata for YIRSourceData, v0, v1);
    atomic_store(result, &qword_289338);
  }

  return result;
}

__n128 sub_142E0C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_142E48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 177))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 80);
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

uint64_t sub_142EA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for YIRSourceData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for YIRSourceData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_14308C()
{
  result = qword_289340;
  if (!qword_289340)
  {
    result = swift_getWitnessTable(byte_200258, &type metadata for YIRSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_289340);
  }

  return result;
}

unint64_t sub_1430E4()
{
  result = qword_289348;
  if (!qword_289348)
  {
    result = swift_getWitnessTable(aY_17, &type metadata for YIRSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_289348);
  }

  return result;
}

unint64_t sub_14313C()
{
  result = qword_289350;
  if (!qword_289350)
  {
    result = swift_getWitnessTable(aA_18, &type metadata for YIRSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_289350);
  }

  return result;
}

uint64_t sub_143190(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6D614E656D617266 && a2 == 0xE900000000000065;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x7954726564616572 && a2 == 0xEA00000000006570 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v12 = 0xED0000656D695464;
    if (a1 == 0x6165526C61746F74 && a2 == 0xED0000656D695464 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = 0x8000000000216D80;
      if (a1 == 0xD000000000000010 && 0x8000000000216D80 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v14 = 0x8000000000216DA0;
        if (a1 == 0xD000000000000010 && 0x8000000000216DA0 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else
        {
          v15 = 0xEE00736569726553;
          if (a1 == 0x64656873696E6966 && a2 == 0xEE00736569726553 || (sub_1E1D30() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 5;
          }

          else
          {
            v16 = 0x8000000000216DC0;
            if (a1 == 0xD000000000000010 && 0x8000000000216DC0 == a2 || (sub_1E1D30() & 1) != 0)
            {
              a2, v16, a3, a4, a5, a6, a7, a8;
              return 6;
            }

            else
            {
              v17 = 0x8000000000216DE0;
              if (a1 == 0xD000000000000011 && 0x8000000000216DE0 == a2 || (sub_1E1D30() & 1) != 0)
              {
                a2, v17, a3, a4, a5, a6, a7, a8;
                return 7;
              }

              else
              {
                v18 = 0x8000000000216E00;
                if (a1 == 0xD000000000000011 && 0x8000000000216E00 == a2 || (sub_1E1D30() & 1) != 0)
                {
                  a2, v18, a3, a4, a5, a6, a7, a8;
                  return 8;
                }

                else
                {
                  v19 = 0xED0000736B6F6F42;
                  if (a1 == 0x64656873696E6966 && a2 == 0xED0000736B6F6F42 || (sub_1E1D30() & 1) != 0)
                  {
                    a2, v19, a3, a4, a5, a6, a7, a8;
                    return 9;
                  }

                  else
                  {
                    v20 = 0xED00006B61657274;
                    if (a1 == 0x53747365676E6F6CLL && a2 == 0xED00006B61657274 || (sub_1E1D30() & 1) != 0)
                    {
                      a2, v20, a3, a4, a5, a6, a7, a8;
                      return 10;
                    }

                    else
                    {
                      v21 = 0x8000000000216E20;
                      if (a1 == 0xD000000000000017 && 0x8000000000216E20 == a2 || (sub_1E1D30() & 1) != 0)
                      {
                        a2, v21, a3, a4, a5, a6, a7, a8;
                        return 11;
                      }

                      else if (a1 == 0x6964616552677661 && a2 == 0xEE00656D6954676ELL)
                      {
                        0xEE00656D6954676ELL, 0xEE00656D6954676ELL, a3, a4, a5, a6, a7, a8;
                        return 12;
                      }

                      else
                      {
                        v22 = sub_1E1D30();
                        a2, v23, v24, v25, v26, v27, v28, v29;
                        if (v22)
                        {
                          return 12;
                        }

                        else
                        {
                          return 13;
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

void __swiftcall SessionData.init(utcOffset:countryCode:languageCode:iCloudAccountState:iTunesAccountState:startMethod:productType:cellularRadioAccessTechnology:iCloudDriveStatus:notificationOptInStatus:readingGoal:onDevicePersonalization:launchType:isParallel:isMainWindow:isWidgetInstalled:notificationOptInPriceDropStatus:)(BookAnalytics::SessionData *__return_ptr retstr, Swift::Int32 utcOffset, Swift::String countryCode, Swift::String languageCode, Swift::Bool iCloudAccountState, Swift::Bool iTunesAccountState, BookAnalytics::StartMethod startMethod, Swift::String productType, BookAnalytics::CellularRadioAccessTechnology cellularRadioAccessTechnology, BookAnalytics::ICloudDriveStatus iCloudDriveStatus, BookAnalytics::FeatureEnabled notificationOptInStatus, BookAnalytics::FeatureEnabled readingGoal, Swift::Bool onDevicePersonalization, BookAnalytics::LaunchType launchType, Swift::Bool isParallel, Swift::Bool isMainWindow, Swift::Bool isWidgetInstalled, Swift::Bool notificationOptInPriceDropStatus)
{
  v18 = *startMethod;
  v19 = *cellularRadioAccessTechnology;
  v20 = *isWidgetInstalled;
  v21 = *v24;
  v22 = *v25;
  v23 = *v27;
  retstr->utcOffset = utcOffset;
  retstr->countryCode = countryCode;
  retstr->languageCode = languageCode;
  retstr->iCloudAccountState = iCloudAccountState;
  retstr->iTunesAccountState = iTunesAccountState;
  retstr->startMethod = v18;
  retstr->productType = productType;
  retstr->cellularRadioAccessTechnology = v19;
  retstr->iCloudDriveStatus = v20;
  retstr->notificationOptInStatus = v21;
  retstr->readingGoal = v22;
  retstr->onDevicePersonalization = v26;
  retstr->launchType = v23;
  retstr->isParallel = v28;
  retstr->isMainWindow = v29;
  retstr->isWidgetInstalled = v30;
  retstr->notificationOptInPriceDropStatus = v31;
}

unint64_t sub_143828(char a1)
{
  result = 0x657366664F637475;
  switch(a1)
  {
    case 1:
      result = 0x437972746E756F63;
      break;
    case 2:
      result = 0x65676175676E616CLL;
      break;
    case 3:
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x74654D7472617473;
      break;
    case 6:
      result = 0x54746375646F7270;
      break;
    case 7:
      result = 0xD00000000000001DLL;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
    case 11:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0x47676E6964616572;
      break;
    case 12:
      result = 0x795468636E75616CLL;
      break;
    case 13:
      result = 0x6C6C617261507369;
      break;
    case 14:
      result = 0x69576E69614D7369;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_143A7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1455F8(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_143AB0(uint64_t a1)
{
  v2 = sub_144E4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_143AEC(uint64_t a1)
{
  v2 = sub_144E4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SessionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_289358, &qword_2002D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - v5;
  v7 = *(v1 + 8);
  v26 = *(v1 + 16);
  v27 = v7;
  v8 = *(v1 + 24);
  v24 = *(v1 + 32);
  v25 = v8;
  v29 = *(v1 + 40);
  LODWORD(v8) = *(v1 + 41);
  v22 = *(v1 + 42);
  v23 = v8;
  v9 = *(v1 + 56);
  v20 = *(v1 + 48);
  v21 = v9;
  LODWORD(v8) = *(v1 + 64);
  v18 = *(v1 + 65);
  v19 = v8;
  LODWORD(v8) = *(v1 + 66);
  v16 = *(v1 + 67);
  v17 = v8;
  LODWORD(v8) = *(v1 + 68);
  v14 = *(v1 + 69);
  v15 = v8;
  LODWORD(v8) = *(v1 + 70);
  v13[4] = *(v1 + 71);
  v13[5] = v8;
  v13[3] = *(v1 + 72);
  v10 = *(v1 + 73);
  sub_48B8(a1, a1[3]);
  sub_144E4C();
  sub_1E1E00();
  v31 = 0;
  v11 = v28;
  sub_1E1D00();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  LODWORD(v28) = v10;
  v31 = 1;
  sub_1E1CB0();
  v31 = 2;
  sub_1E1CB0();
  v31 = 3;
  sub_1E1CC0();
  v31 = 4;
  sub_1E1CC0();
  v31 = v22;
  v30 = 5;
  sub_144EA0();
  sub_1E1CF0();
  v31 = 6;
  sub_1E1CB0();
  v31 = v19;
  v30 = 7;
  sub_144EF4();
  sub_1E1CF0();
  v31 = v18;
  v30 = 8;
  sub_144F48();
  sub_1E1CF0();
  v31 = v17;
  v30 = 9;
  sub_144F9C();
  sub_1E1CF0();
  v31 = v16;
  v30 = 10;
  sub_1E1CF0();
  v31 = 11;
  sub_1E1CC0();
  v31 = v14;
  v30 = 12;
  sub_144FF0();
  sub_1E1CF0();
  v31 = 13;
  sub_1E1CC0();
  v31 = 14;
  sub_1E1CC0();
  v31 = 15;
  sub_1E1CC0();
  v31 = 16;
  sub_1E1CC0();
  return (*(v4 + 8))(v6, 0);
}

void SessionData.init(from:)(BAEventReporter **a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_289390, &qword_2002D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - v7;
  sub_48B8(a1, a1[3]);
  sub_144E4C();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    LOBYTE(v62) = 0;
    v16 = sub_1E1C30();
    LOBYTE(v62) = 1;
    v55 = sub_1E1BE0();
    v57 = v17;
    LOBYTE(v62) = 2;
    v18 = sub_1E1BE0();
    v56 = v19;
    v53 = v18;
    LOBYTE(v62) = 3;
    v52 = sub_1E1BF0();
    LOBYTE(v62) = 4;
    v51 = sub_1E1BF0();
    LOBYTE(v58) = 5;
    sub_145044();
    sub_1E1C20();
    v50 = v62;
    LOBYTE(v62) = 6;
    v49 = sub_1E1BE0();
    v54 = v20;
    LOBYTE(v58) = 7;
    sub_145098();
    sub_1E1C20();
    v48 = v62;
    LOBYTE(v58) = 8;
    sub_1450EC();
    sub_1E1C20();
    v46 = v62;
    LOBYTE(v58) = 9;
    v47 = sub_145140();
    sub_1E1C20();
    v45 = v62;
    LOBYTE(v58) = 10;
    sub_1E1C20();
    LODWORD(v47) = v62;
    LOBYTE(v62) = 11;
    v44 = sub_1E1BF0();
    LOBYTE(v58) = 12;
    sub_145194();
    sub_1E1C20();
    v43 = v62;
    LOBYTE(v62) = 13;
    v42 = sub_1E1BF0();
    LOBYTE(v62) = 14;
    v41 = sub_1E1BF0();
    LOBYTE(v62) = 15;
    v40 = sub_1E1BF0();
    v84 = 16;
    v21 = sub_1E1BF0();
    v22 = v52 & 1;
    v39 = v52 & 1;
    HIDWORD(v38) = v51 & 1;
    v44 &= 1u;
    v42 &= 1u;
    v52 = v41 & 1;
    v51 = v40 & 1;
    (*(v6 + 8))(v8, v5);
    v41 = v21 & 1;
    LODWORD(v58) = v16;
    v23 = v55;
    v24 = v57;
    *(&v58 + 1) = v55;
    *&v59 = v57;
    v25 = v56;
    *(&v59 + 1) = v53;
    *&v60 = v56;
    BYTE8(v60) = v22;
    v26 = BYTE4(v38);
    BYTE9(v60) = BYTE4(v38);
    v27 = v50;
    BYTE10(v60) = v50;
    *v61 = v49;
    *&v61[8] = v54;
    v61[16] = v48;
    v61[17] = v46;
    v61[18] = v45;
    v61[19] = v47;
    v61[20] = v44;
    v61[21] = v43;
    v61[22] = v42;
    v61[23] = v52;
    v61[24] = v51;
    v61[25] = v41;
    v28 = v58;
    v29 = v59;
    *(a2 + 58) = *&v61[10];
    v30 = *v61;
    a2[2] = v60;
    a2[3] = v30;
    *a2 = v28;
    a2[1] = v29;
    sub_1451E8(&v58, &v62);
    sub_4E48(a1, v31, v32, v33, v34, v35, v36, v37);
    v62 = v16;
    v63 = v23;
    v64 = v24;
    v65 = v53;
    v66 = v25;
    v67 = v39;
    v68 = v26;
    v69 = v27;
    v70 = v85;
    v71 = v86;
    v72 = v49;
    v73 = v54;
    v74 = v48;
    v75 = v46;
    v76 = v45;
    v77 = v47;
    v78 = v44;
    v79 = v43;
    v80 = v42;
    v81 = v52;
    v82 = v51;
    v83 = v41;
    sub_127688(&v62);
  }
}

uint64_t _s13BookAnalytics11SessionDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 41);
  v12 = *(a1 + 42);
  v211 = *(a1 + 48);
  v210 = *(a1 + 56);
  v206 = *(a1 + 65);
  v204 = *(a1 + 66);
  v201 = *(a1 + 68);
  v202 = *(a1 + 67);
  v198 = *(a1 + 70);
  v199 = *(a1 + 71);
  v195 = *(a1 + 72);
  v191 = *(a1 + 73);
  v192 = *(a1 + 69);
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *(a2 + 41);
  v19 = *(a2 + 42);
  v208 = *(a2 + 56);
  v209 = *(a2 + 48);
  v207 = *(a2 + 65);
  v205 = *(a2 + 66);
  v203 = *(a2 + 67);
  v200 = *(a2 + 68);
  v196 = *(a2 + 70);
  v197 = *(a2 + 71);
  v193 = *(a2 + 69);
  v194 = *(a2 + 72);
  v190 = *(a2 + 73);
  if (*(a1 + 8) != __PAIR128__(v14, v13) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v8 == v15 && v9 == v16)
  {
    result = 0;
    if (v10 != v17)
    {
      return result;
    }
  }

  else
  {
    v21 = sub_1E1D30();
    result = 0;
    if (v21 & 1) == 0 || ((v10 ^ v17))
    {
      return result;
    }
  }

  if ((v11 ^ v18))
  {
    return result;
  }

  if ((sub_241D4(v12, v19, v13, v14, a5, a6, a7, a8) & 1) == 0 || (v211 != v209 || v210 != v208) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  v22 = CellularRadioAccessTechnology.rawValue.getter();
  v24 = v23;
  v26 = CellularRadioAccessTechnology.rawValue.getter();
  v32 = v25;
  if (v22 == v26 && v24 == v25)
  {
    v24, v25, v26, v27, v28, v29, v30, v31;
    v32, v33, v34, v35, v36, v37, v38, v39;
  }

  else
  {
    v46 = sub_1E1D30();
    v24, v47, v48, v49, v50, v51, v52, v53;
    v32, v54, v55, v56, v57, v58, v59, v60;
    if ((v46 & 1) == 0)
    {
      return 0;
    }
  }

  v61 = 0x6E776F6E6B6E75;
  if (v206)
  {
    v62 = v207;
    if (v206 == 1)
    {
      v63 = 0xE200000000000000;
      v64 = 28271;
    }

    else
    {
      v63 = 0xE300000000000000;
      v64 = 6710895;
    }
  }

  else
  {
    v63 = 0xE700000000000000;
    v64 = 0x6E776F6E6B6E75;
    v62 = v207;
  }

  if (v62)
  {
    if (v62 == 1)
    {
      v65 = 0xE200000000000000;
      v66 = 28271;
    }

    else
    {
      v65 = 0xE300000000000000;
      v66 = 6710895;
    }
  }

  else
  {
    v65 = 0xE700000000000000;
    v66 = 0x6E776F6E6B6E75;
  }

  if (v64 == v66 && v63 == v65)
  {
    v63, v40, v66, v41, v42, v43, v44, v45;
    v65, v67, v68, v69, v70, v71, v72, v73;
  }

  else
  {
    v80 = sub_1E1D30();
    v63, v81, v82, v83, v84, v85, v86, v87;
    v65, v88, v89, v90, v91, v92, v93, v94;
    if ((v80 & 1) == 0)
    {
      return 0;
    }
  }

  v95 = 0x64656C62616E65;
  if (v204)
  {
    v96 = v205;
    if (v204 == 1)
    {
      v97 = 0xE700000000000000;
      v98 = 0x64656C62616E65;
    }

    else
    {
      v97 = 0xE800000000000000;
      v98 = 0x64656C6261736964;
    }
  }

  else
  {
    v97 = 0xE700000000000000;
    v98 = 0x6E776F6E6B6E75;
    v96 = v205;
  }

  if (v96)
  {
    if (v96 == 1)
    {
      v99 = 0xE700000000000000;
      v100 = 0x64656C62616E65;
    }

    else
    {
      v99 = 0xE800000000000000;
      v100 = 0x64656C6261736964;
    }
  }

  else
  {
    v99 = 0xE700000000000000;
    v100 = 0x6E776F6E6B6E75;
  }

  if (v98 == v100 && v97 == v99)
  {
    v97, v74, v100, v75, v76, v77, v78, v79;
    v99, v101, v102, v103, v104, v105, v106, v107;
  }

  else
  {
    v115 = sub_1E1D30();
    v97, v116, v117, v118, v119, v120, v121, v122;
    v99, v123, v124, v125, v126, v127, v128, v129;
    if ((v115 & 1) == 0)
    {
      return 0;
    }
  }

  if (v202)
  {
    v130 = v203;
    if (v202 == 1)
    {
      v131 = 0xE700000000000000;
      v132 = 0x64656C62616E65;
    }

    else
    {
      v131 = 0xE800000000000000;
      v132 = 0x64656C6261736964;
    }
  }

  else
  {
    v131 = 0xE700000000000000;
    v132 = 0x6E776F6E6B6E75;
    v130 = v203;
  }

  if (v130)
  {
    if (v130 == 1)
    {
      v133 = 0xE700000000000000;
    }

    else
    {
      v133 = 0xE800000000000000;
      v95 = 0x64656C6261736964;
    }
  }

  else
  {
    v133 = 0xE700000000000000;
    v95 = 0x6E776F6E6B6E75;
  }

  if (v132 == v95 && v131 == v133)
  {
    v131, v108, v109, v110, v111, v112, v113, v114;
    v133, v134, v135, v136, v137, v138, v139, v140;
    if (v201 != v200)
    {
      return 0;
    }

    goto LABEL_64;
  }

  v148 = sub_1E1D30();
  v131, v149, v150, v151, v152, v153, v154, v155;
  v133, v156, v157, v158, v159, v160, v161, v162;
  result = 0;
  if ((v148 & 1) != 0 && ((v201 ^ v200) & 1) == 0)
  {
LABEL_64:
    if (v192)
    {
      v163 = v193;
      v164 = 0xE400000000000000;
      if (v192 == 1)
      {
        v165 = 1684828003;
      }

      else
      {
        v165 = 1836212599;
      }
    }

    else
    {
      v164 = 0xE700000000000000;
      v165 = 0x6E776F6E6B6E75;
      v163 = v193;
    }

    if (v163)
    {
      v166 = 0xE400000000000000;
      if (v163 == 1)
      {
        v61 = 1684828003;
      }

      else
      {
        v61 = 1836212599;
      }
    }

    else
    {
      v166 = 0xE700000000000000;
    }

    v167 = v195 ^ v194;
    if (v165 == v61 && v164 == v166)
    {
      v164, v141, v142, v143, v144, v145, v146, v147;
      v166, v168, v169, v170, v171, v172, v173, v174;
      if (((v198 ^ v196 | v199 ^ v197 | v167) & 1) == 0)
      {
        return v191 ^ v190 ^ 1u;
      }
    }

    else
    {
      v175 = sub_1E1D30();
      v164, v176, v177, v178, v179, v180, v181, v182;
      v166, v183, v184, v185, v186, v187, v188, v189;
      if (!((v198 ^ v196) & 1 | ((v175 & 1) == 0) | ((v199 ^ v197) | v167) & 1))
      {
        return v191 ^ v190 ^ 1u;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_144E4C()
{
  result = qword_289360;
  if (!qword_289360)
  {
    result = swift_getWitnessTable(aY_18, &type metadata for SessionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_289360);
  }

  return result;
}

unint64_t sub_144EA0()
{
  result = qword_289368;
  if (!qword_289368)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StartMethod, &type metadata for StartMethod, v0, v1);
    atomic_store(result, &qword_289368);
  }

  return result;
}

unint64_t sub_144EF4()
{
  result = qword_289370;
  if (!qword_289370)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CellularRadioAccessTechnology, &type metadata for CellularRadioAccessTechnology, v0, v1);
    atomic_store(result, &qword_289370);
  }

  return result;
}

unint64_t sub_144F48()
{
  result = qword_289378;
  if (!qword_289378)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ICloudDriveStatus, &type metadata for ICloudDriveStatus, v0, v1);
    atomic_store(result, &qword_289378);
  }

  return result;
}

unint64_t sub_144F9C()
{
  result = qword_289380;
  if (!qword_289380)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FeatureEnabled, &type metadata for FeatureEnabled, v0, v1);
    atomic_store(result, &qword_289380);
  }

  return result;
}

unint64_t sub_144FF0()
{
  result = qword_289388;
  if (!qword_289388)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LaunchType, &type metadata for LaunchType, v0, v1);
    atomic_store(result, &qword_289388);
  }

  return result;
}

unint64_t sub_145044()
{
  result = qword_289398;
  if (!qword_289398)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StartMethod, &type metadata for StartMethod, v0, v1);
    atomic_store(result, &qword_289398);
  }

  return result;
}

unint64_t sub_145098()
{
  result = qword_2893A0;
  if (!qword_2893A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CellularRadioAccessTechnology, &type metadata for CellularRadioAccessTechnology, v0, v1);
    atomic_store(result, &qword_2893A0);
  }

  return result;
}

unint64_t sub_1450EC()
{
  result = qword_2893A8;
  if (!qword_2893A8)
  {
    result = swift_getWitnessTable("ِ\a", &type metadata for ICloudDriveStatus, v0, v1);
    atomic_store(result, &qword_2893A8);
  }

  return result;
}

unint64_t sub_145140()
{
  result = qword_2893B0;
  if (!qword_2893B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FeatureEnabled, &type metadata for FeatureEnabled, v0, v1);
    atomic_store(result, &qword_2893B0);
  }

  return result;
}

unint64_t sub_145194()
{
  result = qword_2893B8;
  if (!qword_2893B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LaunchType, &type metadata for LaunchType, v0, v1);
    atomic_store(result, &qword_2893B8);
  }

  return result;
}

unint64_t sub_145224()
{
  result = qword_2893C0;
  if (!qword_2893C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionData, &type metadata for SessionData, v0, v1);
    atomic_store(result, &qword_2893C0);
  }

  return result;
}

unint64_t sub_14527C()
{
  result = qword_2893C8;
  if (!qword_2893C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionData, &type metadata for SessionData, v0, v1);
    atomic_store(result, &qword_2893C8);
  }

  return result;
}

__n128 sub_1452D0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1452F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
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

uint64_t sub_14533C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1454F4()
{
  result = qword_2893D0;
  if (!qword_2893D0)
  {
    result = swift_getWitnessTable(byte_2004D8, &type metadata for SessionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2893D0);
  }

  return result;
}

unint64_t sub_14554C()
{
  result = qword_2893D8;
  if (!qword_2893D8)
  {
    result = swift_getWitnessTable(byte_200448, &type metadata for SessionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2893D8);
  }

  return result;
}

unint64_t sub_1455A4()
{
  result = qword_2893E0;
  if (!qword_2893E0)
  {
    result = swift_getWitnessTable(byte_200470, &type metadata for SessionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2893E0);
  }

  return result;
}

uint64_t sub_1455F8(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x657366664F637475 && a2 == 0xE900000000000074;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v12 = 0xEC00000065646F43;
    if (a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = 0x8000000000216E40;
      if (a1 == 0xD000000000000012 && 0x8000000000216E40 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v14 = 0x8000000000216E60;
        if (a1 == 0xD000000000000012 && 0x8000000000216E60 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else
        {
          v15 = 0xEB00000000646F68;
          if (a1 == 0x74654D7472617473 && a2 == 0xEB00000000646F68 || (sub_1E1D30() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 5;
          }

          else
          {
            v16 = 0xEB00000000657079;
            if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079 || (sub_1E1D30() & 1) != 0)
            {
              a2, v16, a3, a4, a5, a6, a7, a8;
              return 6;
            }

            else
            {
              v17 = 0x8000000000216E80;
              if (a1 == 0xD00000000000001DLL && 0x8000000000216E80 == a2 || (sub_1E1D30() & 1) != 0)
              {
                a2, v17, a3, a4, a5, a6, a7, a8;
                return 7;
              }

              else
              {
                v18 = 0x8000000000216EA0;
                if (a1 == 0xD000000000000011 && 0x8000000000216EA0 == a2 || (sub_1E1D30() & 1) != 0)
                {
                  a2, v18, a3, a4, a5, a6, a7, a8;
                  return 8;
                }

                else
                {
                  v19 = 0x8000000000216EC0;
                  if (a1 == 0xD000000000000017 && 0x8000000000216EC0 == a2 || (sub_1E1D30() & 1) != 0)
                  {
                    a2, v19, a3, a4, a5, a6, a7, a8;
                    return 9;
                  }

                  else
                  {
                    v20 = 0xEB000000006C616FLL;
                    if (a1 == 0x47676E6964616572 && a2 == 0xEB000000006C616FLL || (sub_1E1D30() & 1) != 0)
                    {
                      a2, v20, a3, a4, a5, a6, a7, a8;
                      return 10;
                    }

                    else
                    {
                      v21 = 0x8000000000216EE0;
                      if (a1 == 0xD000000000000017 && 0x8000000000216EE0 == a2 || (sub_1E1D30() & 1) != 0)
                      {
                        a2, v21, a3, a4, a5, a6, a7, a8;
                        return 11;
                      }

                      else if (a1 == 0x795468636E75616CLL && a2 == 0xEA00000000006570 || (sub_1E1D30() & 1) != 0)
                      {
                        a2, v21, a3, a4, a5, a6, a7, a8;
                        return 12;
                      }

                      else
                      {
                        v22 = 0xEA00000000006C65;
                        if (a1 == 0x6C6C617261507369 && a2 == 0xEA00000000006C65 || (sub_1E1D30() & 1) != 0)
                        {
                          a2, v22, a3, a4, a5, a6, a7, a8;
                          return 13;
                        }

                        else
                        {
                          v23 = 0xEC000000776F646ELL;
                          if (a1 == 0x69576E69614D7369 && a2 == 0xEC000000776F646ELL || (sub_1E1D30() & 1) != 0)
                          {
                            a2, v23, a3, a4, a5, a6, a7, a8;
                            return 14;
                          }

                          else
                          {
                            v24 = 0x8000000000216F00;
                            if (a1 == 0xD000000000000011 && 0x8000000000216F00 == a2 || (sub_1E1D30() & 1) != 0)
                            {
                              a2, v24, a3, a4, a5, a6, a7, a8;
                              return 15;
                            }

                            else if (a1 == 0xD000000000000020 && 0x8000000000216F20 == a2)
                            {
                              a2, 0x8000000000216F20, a3, a4, a5, a6, a7, a8;
                              return 16;
                            }

                            else
                            {
                              v25 = sub_1E1D30();
                              a2, v26, v27, v28, v29, v30, v31, v32;
                              if (v25)
                              {
                                return 16;
                              }

                              else
                              {
                                return 17;
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

void __swiftcall ClickData.init(clickID:linkActionType:targetType:index:outBoundURL:)(BookAnalytics::ClickData *__return_ptr retstr, Swift::String_optional clickID, BookAnalytics::LinkActionType linkActionType, Swift::String targetType, Swift::Int64 index, Swift::String_optional outBoundURL)
{
  v6 = *linkActionType;
  retstr->clickID = clickID;
  retstr->linkActionType = v6;
  retstr->targetType = targetType;
  retstr->index = index;
  retstr->outBoundURL = outBoundURL;
}

uint64_t sub_145B90()
{
  v1 = *v0;
  v2 = 0x44496B63696C63;
  v3 = 0x7954746567726174;
  v4 = 0x7865646E69;
  if (v1 != 3)
  {
    v4 = 0x646E756F4274756FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x697463416B6E696CLL;
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

uint64_t sub_145C40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_14664C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_145C68(uint64_t a1)
{
  v2 = sub_146388();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_145CA4(uint64_t a1)
{
  v2 = sub_146388();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ClickData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_2893E8, &qword_200550);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - v6;
  v16 = *(v1 + 16);
  v8 = *(v1 + 24);
  v15[3] = *(v1 + 32);
  v15[4] = v8;
  v9 = *(v1 + 40);
  v15[1] = *(v1 + 48);
  v15[2] = v9;
  v15[0] = *(v1 + 56);
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  sub_48B8(v11, v10);
  sub_146388();
  sub_1E1E00();
  v22 = 0;
  sub_1E1C50();
  if (!v2)
  {
    v21 = v16;
    v20 = 1;
    sub_1463DC();
    sub_1E1CF0();
    v19 = 2;
    sub_1E1CB0();
    v18 = 3;
    sub_1E1D10();
    v17 = 4;
    sub_1E1C50();
  }

  return (*(v5 + 8))(v7, v13);
}

void ClickData.init(from:)(BAEventReporter **a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_289400, &qword_200558);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - v7;
  sub_48B8(a1, a1[3]);
  sub_146388();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
    0, v17, v18, v19, v20, v21, v22, v23;
  }

  else
  {
    LOBYTE(v53[0]) = 0;
    v16 = sub_1E1B80();
    v25 = v24;
    v48 = v16;
    LOBYTE(v49) = 1;
    sub_146430();
    sub_1E1C20();
    v26 = LOBYTE(v53[0]);
    LOBYTE(v53[0]) = 2;
    v27 = sub_1E1BE0();
    v29 = v28;
    v47 = v27;
    LOBYTE(v53[0]) = 3;
    v30 = sub_1E1C40();
    v60 = v26;
    v46 = v30;
    v61 = 4;
    v31 = sub_1E1B80();
    v32 = v8;
    v34 = v33;
    (*(v6 + 8))(v32, v5);
    v35 = v48;
    *&v49 = v48;
    *(&v49 + 1) = v25;
    LOBYTE(v50) = v60;
    v36 = v46;
    *(&v50 + 1) = v47;
    *&v51 = v29;
    *(&v51 + 1) = v46;
    *&v52 = v31;
    *(&v52 + 1) = v34;
    v37 = v50;
    *a2 = v49;
    a2[1] = v37;
    v38 = v52;
    a2[2] = v51;
    a2[3] = v38;
    sub_B4464(&v49, v53);
    sub_4E48(a1, v39, v40, v41, v42, v43, v44, v45);
    v53[0] = v35;
    v53[1] = v25;
    v54 = v60;
    v55 = v47;
    v56 = v29;
    v57 = v36;
    v58 = v31;
    v59 = v34;
    sub_B5218(v53);
  }
}

BOOL _s13BookAnalytics9ClickDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v9 = a1[1];
  v10 = *(a1 + 16);
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[7];
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = *(a2 + 32);
  v19 = *(a2 + 40);
  v20 = *(a2 + 56);
  if (v9)
  {
    if (!v15)
    {
      return 0;
    }

    v23 = *(a2 + 48);
    v24 = a1[6];
    a3 = *a2;
    if ((*a1 != *a2 || v9 != v15) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v23 = *(a2 + 48);
    v24 = a1[6];
    if (v15)
    {
      return 0;
    }
  }

  if ((sub_201BC(v10, v16, a3, v15, a5, a6, a7, a8) & 1) == 0)
  {
    return 0;
  }

  if (v11 == v17 && v12 == v18)
  {
    if (v13 != v19)
    {
      return 0;
    }

    goto LABEL_15;
  }

  v21 = sub_1E1D30();
  result = 0;
  if ((v21 & 1) != 0 && v13 == v19)
  {
LABEL_15:
    if (v14)
    {
      return v20 && (v24 == v23 && v14 == v20 || (sub_1E1D30() & 1) != 0);
    }

    return !v20;
  }

  return result;
}

unint64_t sub_146388()
{
  result = qword_2893F0;
  if (!qword_2893F0)
  {
    result = swift_getWitnessTable(asc_20074C, &type metadata for ClickData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2893F0);
  }

  return result;
}

unint64_t sub_1463DC()
{
  result = qword_2893F8;
  if (!qword_2893F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LinkActionType, &type metadata for LinkActionType, v0, v1);
    atomic_store(result, &qword_2893F8);
  }

  return result;
}

unint64_t sub_146430()
{
  result = qword_289408;
  if (!qword_289408)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LinkActionType, &type metadata for LinkActionType, v0, v1);
    atomic_store(result, &qword_289408);
  }

  return result;
}

uint64_t sub_14648C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1464D4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_146548()
{
  result = qword_289410;
  if (!qword_289410)
  {
    result = swift_getWitnessTable(aE_11, &type metadata for ClickData.CodingKeys, v0, v1);
    atomic_store(result, &qword_289410);
  }

  return result;
}

unint64_t sub_1465A0()
{
  result = qword_289418;
  if (!qword_289418)
  {
    result = swift_getWitnessTable(byte_200694, &type metadata for ClickData.CodingKeys, v0, v1);
    atomic_store(result, &qword_289418);
  }

  return result;
}

unint64_t sub_1465F8()
{
  result = qword_289420;
  if (!qword_289420)
  {
    result = swift_getWitnessTable(aU_15, &type metadata for ClickData.CodingKeys, v0, v1);
    atomic_store(result, &qword_289420);
  }

  return result;
}

uint64_t sub_14664C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x44496B63696C63 && a2 == 0xE700000000000000;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEE00657079546E6FLL;
    if (a1 == 0x697463416B6E696CLL && a2 == 0xEE00657079546E6FLL || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x7954746567726174 && a2 == 0xEA00000000006570 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0x646E756F4274756FLL && a2 == 0xEB000000004C5255)
    {
      0xEB000000004C5255, 0xEB000000004C5255, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else
    {
      v13 = sub_1E1D30();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
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

BookAnalytics::ViewLocation_optional __swiftcall ViewLocation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261188;
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

uint64_t ViewLocation.rawValue.getter()
{
  v1 = 0x434F546D6F7266;
  if (*v0 != 1)
  {
    v1 = 0x646165526D6F7266;
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

uint64_t sub_1468CC(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE700000000000000;
  v10 = 0xE700000000000000;
  v11 = 0x434F546D6F7266;
  if (v8 != 1)
  {
    v11 = 0x646165526D6F7266;
    v10 = 0xEB00000000676E69;
  }

  if (*a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  v14 = 0x434F546D6F7266;
  if (*a2 != 1)
  {
    v14 = 0x646165526D6F7266;
    v9 = 0xEB00000000676E69;
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
    v16 = v9;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v12 == v15 && v13 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v13, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

unint64_t sub_1469E0()
{
  result = qword_289428;
  if (!qword_289428)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewLocation, &type metadata for ViewLocation, v0, v1);
    atomic_store(result, &qword_289428);
  }

  return result;
}

Swift::Int sub_146A34()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE700000000000000;
  if (v1 != 1)
  {
    v2 = 0xEB00000000676E69;
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

void sub_146AE0(uint64_t a1)
{
  v2 = 0xE700000000000000;
  if (*v1 != 1)
  {
    v2 = 0xEB00000000676E69;
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

Swift::Int sub_146B78(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  if (v2 != 1)
  {
    v3 = 0xEB00000000676E69;
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

void sub_146C2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x434F546D6F7266;
  if (v2 != 1)
  {
    v5 = 0x646165526D6F7266;
    v4 = 0xEB00000000676E69;
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

unint64_t sub_146D54()
{
  result = qword_289430;
  if (!qword_289430)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewLocation, &type metadata for ViewLocation, v0, v1);
    atomic_store(result, &qword_289430);
  }

  return result;
}

uint64_t sub_146E68(uint64_t a1)
{
  v2 = sub_147044();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_146EA4(uint64_t a1)
{
  v2 = sub_147044();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppResignEvent.Model.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_289468, &qword_2008B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_48B8(a1, a1[3]);
  sub_147044();
  sub_1E1E00();
  sub_1E1150();
  sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
  sub_1E1CF0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_147044()
{
  result = qword_289470;
  if (!qword_289470)
  {
    result = swift_getWitnessTable(byte_200A5C, &type metadata for AppResignEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289470);
  }

  return result;
}

void AppResignEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_1E1150();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3D68(&qword_289478, &qword_2008B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = type metadata accessor for AppResignEvent.Model(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_147044();
  v12 = v25;
  sub_1E1DF0();
  if (!v12)
  {
    v20 = v23;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    (*(v20 + 32))(v11, v24, v3);
    sub_147324(v11, v22);
  }

  sub_4E48(a1, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_147324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppResignEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_147424(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1474B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_147560(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1475E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_147664()
{
  result = qword_2895A0;
  if (!qword_2895A0)
  {
    result = swift_getWitnessTable(a5_5, &type metadata for AppResignEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2895A0);
  }

  return result;
}

unint64_t sub_1476BC()
{
  result = qword_2895A8;
  if (!qword_2895A8)
  {
    result = swift_getWitnessTable(asc_2009A4, &type metadata for AppResignEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2895A8);
  }

  return result;
}

unint64_t sub_147714()
{
  result = qword_2895B0;
  if (!qword_2895B0)
  {
    result = swift_getWitnessTable(aE_12, &type metadata for AppResignEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2895B0);
  }

  return result;
}

uint64_t static CollectionData.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E1D30(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_1E1D30() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_147808()
{
  if (*v0)
  {
    return 0x54746E65746E6F63;
  }

  else
  {
    return 0x697463656C6C6F63;
  }
}

void sub_147854(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0xEC00000044496E6FLL;
  v13 = a1 == 0x697463656C6C6F63 && a2 == 0xEC00000044496E6FLL;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v14 = 0;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079)
  {
    0xEB00000000657079, 0xEB00000000657079, a3, a4, a5, a6, a7, a8;
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

uint64_t sub_147938(uint64_t a1)
{
  v2 = sub_147B44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_147974(uint64_t a1)
{
  v2 = sub_147B44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2895B8, &qword_200AB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  sub_48B8(a1, a1[3]);
  sub_147B44();
  sub_1E1E00();
  v12 = 0;
  v8 = v10[3];
  sub_1E1CB0();
  if (!v8)
  {
    v11 = 1;
    sub_1E1C50();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_147B44()
{
  result = qword_2895C0;
  if (!qword_2895C0)
  {
    result = swift_getWitnessTable(byte_200C98, &type metadata for CollectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2895C0);
  }

  return result;
}

void CollectionData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_2895C8, &qword_200AB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  sub_48B8(a1, a1[3]);
  sub_147B44();
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
    v19 = sub_1E1B80();
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

unint64_t sub_147DF4()
{
  result = qword_2895D0;
  if (!qword_2895D0)
  {
    result = swift_getWitnessTable(byte_200C70, &type metadata for CollectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2895D0);
  }

  return result;
}

unint64_t sub_147E4C()
{
  result = qword_2895D8;
  if (!qword_2895D8)
  {
    result = swift_getWitnessTable(aA_19, &type metadata for CollectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2895D8);
  }

  return result;
}

unint64_t sub_147EA4()
{
  result = qword_2895E0;
  if (!qword_2895E0)
  {
    result = swift_getWitnessTable(asc_200C08, &type metadata for CollectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2895E0);
  }

  return result;
}

uint64_t WidgetEngagementEvent.widgetData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_289618, &unk_200CF0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WidgetEngagementEvent.widgetData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_289618, &unk_200CF0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WidgetExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_289618, &unk_200CF0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for WidgetExposureEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t WidgetEngagementEvent.Model.widgetData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 33);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 33) = v6;
}

uint64_t WidgetExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExposureEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetExposureEvent.Model.init(widgetData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 33);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  *(a3 + 33) = v8;
  v9 = *(type metadata accessor for WidgetExposureEvent.Model(0) + 20);
  v10 = sub_1E1150();
  v11 = *(*(v10 - 8) + 32);

  return v11(a3 + v9, a2, v10);
}

uint64_t sub_148484()
{
  if (*v0)
  {
    return 0x746144746E657665;
  }

  else
  {
    return 0x6144746567646977;
  }
}

void sub_1484C8(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = a1 == 0x6144746567646977 && a2 == 0xEA00000000006174;
  if (v12 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, a2, a3, a4, a5, a6, a7, a8;
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

uint64_t sub_1485B4(uint64_t a1)
{
  v2 = sub_148828();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1485F0(uint64_t a1)
{
  v2 = sub_148828();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WidgetExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_289620, &qword_200D00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30[-v7];
  sub_48B8(a1, a1[3]);
  sub_148828();
  sub_1E1E00();
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v12 = *(v3 + 32);
  v13 = *(v3 + 33);
  v31 = *v3;
  v32 = v9;
  v33 = v10;
  v34 = v11;
  v35 = v12;
  v36 = v13;
  v30[7] = 0;
  sub_13D870();

  sub_1E1CF0();
  v14 = v32;
  v34, v15, v16, v17, v18, v19, v20, v21;
  v14, v22, v23, v24, v25, v26, v27, v28;
  if (!v2)
  {
    type metadata accessor for WidgetExposureEvent.Model(0);
    LOBYTE(v31) = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_148828()
{
  result = qword_289628;
  if (!qword_289628)
  {
    result = swift_getWitnessTable(byte_200EC0, &type metadata for WidgetExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289628);
  }

  return result;
}

void WidgetExposureEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v37 = sub_1E1150();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3D68(&qword_289630, &qword_200D08);
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for WidgetExposureEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_148828();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    v19 = v11;
    v34 = v9;
    v20 = v37;
    v45 = 0;
    sub_13D818();
    v21 = v39;
    sub_1E1C20();
    v22 = v41;
    v23 = v42;
    v24 = v43;
    v25 = v44;
    *v19 = v40;
    *(v19 + 16) = v22;
    *(v19 + 24) = v23;
    *(v19 + 32) = v24;
    *(v19 + 33) = v25;
    LOBYTE(v40) = 1;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v38 + 8))(v8, v21);
    (*(v35 + 32))(v19 + *(v34 + 20), v5, v20);
    sub_148BB8(v19, v36);
    sub_4E48(a1, v26, v27, v28, v29, v30, v31, v32);
    sub_148C1C(v19);
  }
}

uint64_t sub_148BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_148C1C(uint64_t a1)
{
  v2 = type metadata accessor for WidgetExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_148D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_289618, &unk_200CF0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_148E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_289618, &unk_200CF0);
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

uint64_t sub_148F20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_289618, &unk_200CF0);
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

void sub_149034(uint64_t a1)
{
  sub_1490B8(319);
  if (v1 <= 0x3F)
  {
    sub_5684(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1490B8(uint64_t a1)
{
  if (!qword_2896A0)
  {
    sub_13D818();
    sub_13D870();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_2896A0);
    }
  }
}

uint64_t sub_149134(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1491F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_149298(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_149328()
{
  result = qword_289760;
  if (!qword_289760)
  {
    result = swift_getWitnessTable(byte_200E98, &type metadata for WidgetExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289760);
  }

  return result;
}

unint64_t sub_149380()
{
  result = qword_289768;
  if (!qword_289768)
  {
    result = swift_getWitnessTable(byte_200E08, &type metadata for WidgetExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289768);
  }

  return result;
}

unint64_t sub_1493D8()
{
  result = qword_289770;
  if (!qword_289770)
  {
    result = swift_getWitnessTable(byte_200E30, &type metadata for WidgetExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289770);
  }

  return result;
}

void __swiftcall SkipData.init(startTime:endTime:skipInterval:skipDirection:skipActionType:listeningID:isBackgrounded:)(BookAnalytics::SkipData *__return_ptr retstr, Swift::Float startTime, Swift::Float endTime, Swift::Float_optional *skipInterval, BookAnalytics::SkipDirection skipDirection, BookAnalytics::SkipActionType skipActionType, Swift::String_optional listeningID, Swift::Bool isBackgrounded)
{
  v8 = *skipDirection;
  v9 = *skipActionType;
  retstr->startTime = startTime;
  retstr->endTime = endTime;
  LODWORD(retstr->skipInterval.value) = skipInterval;
  retstr->skipInterval.is_nil = BYTE4(skipInterval) & 1;
  retstr->skipDirection = v8;
  retstr->skipActionType = v9;
  retstr->listeningID = listeningID;
  retstr->isBackgrounded = isBackgrounded;
}

uint64_t sub_149484()
{
  v1 = *v0;
  v2 = 0x6D69547472617473;
  v3 = 0x6E696E657473696CLL;
  if (v1 != 5)
  {
    v3 = 0x72676B6361427369;
  }

  v4 = 0x6572694470696B73;
  if (v1 != 3)
  {
    v4 = 0x6974634170696B73;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656D6954646E65;
  if (v1 != 1)
  {
    v5 = 0x65746E4970696B73;
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

uint64_t sub_149598@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_14A23C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1495C0(uint64_t a1)
{
  v2 = sub_149EB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1495FC(uint64_t a1)
{
  v2 = sub_149EB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SkipData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_289778, &qword_200F10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v16 = *(v1 + 8);
  v7 = *(v1 + 12);
  v14 = *(v1 + 13);
  v15 = v7;
  v13 = *(v1 + 14);
  v8 = *(v1 + 24);
  v12 = *(v1 + 16);
  sub_48B8(a1, a1[3]);
  sub_149EB4();
  sub_1E1E00();
  v27 = 0;
  v9 = v17;
  sub_1E1CE0();
  if (!v9)
  {
    v11 = v15;
    v17 = v8;
    v26 = 1;
    sub_1E1CE0();
    v25 = 2;
    v24 = v11;
    sub_1E1C70();
    v23 = v14;
    v22 = 3;
    sub_149F08();
    sub_1E1CF0();
    v21 = v13;
    v20 = 4;
    sub_149F5C();
    sub_1E1CF0();
    v19 = 5;
    sub_1E1C50();
    v18 = 6;
    sub_1E1CC0();
  }

  return (*(v4 + 8))(v6, v3);
}

void SkipData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_289798, &qword_200F18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - v7;
  sub_48B8(a1, a1[3]);
  sub_149EB4();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
    0, v18, v19, v20, v21, v22, v23, v24;
  }

  else
  {
    LOBYTE(v52[0]) = 0;
    sub_1E1C10();
    v17 = v16;
    LOBYTE(v52[0]) = 1;
    sub_1E1C10();
    v26 = v25;
    LOBYTE(v52[0]) = 2;
    v27 = sub_1E1BA0();
    v28 = v27;
    v60 = BYTE4(v27) & 1;
    LOBYTE(v49) = 3;
    sub_149FB0();
    sub_1E1C20();
    v29 = LOBYTE(v52[0]);
    LOBYTE(v49) = 4;
    sub_14A004();
    sub_1E1C20();
    v59 = v29;
    v30 = LOBYTE(v52[0]);
    LOBYTE(v52[0]) = 5;
    v31 = sub_1E1B80();
    v33 = v32;
    v47 = v30;
    v48 = v31;
    v61 = 6;
    v34 = sub_1E1BF0();
    (*(v6 + 8))(v8, v5);
    *&v49 = __PAIR64__(v26, v17);
    DWORD2(v49) = v28;
    v46 = v60;
    BYTE12(v49) = v60;
    v35 = v59;
    BYTE13(v49) = v59;
    v36 = v47;
    BYTE14(v49) = v47;
    v37 = v48;
    *&v50 = v48;
    *(&v50 + 1) = v33;
    v34 &= 1u;
    v51 = v34;
    *(a2 + 32) = v34;
    v38 = v50;
    *a2 = v49;
    *(a2 + 16) = v38;
    sub_13AF8(&v49, v52);
    sub_4E48(a1, v39, v40, v41, v42, v43, v44, v45);
    v52[0] = v17;
    v52[1] = v26;
    v52[2] = v28;
    v53 = v46;
    v54 = v35;
    v55 = v36;
    v56 = v37;
    v57 = v33;
    v58 = v34;
    sub_144CC(v52);
  }
}

uint64_t _s13BookAnalytics8SkipDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4))
  {
    v10 = *(a1 + 13);
    v11 = *(a1 + 14);
    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    v14 = *(a1 + 32);
    v15 = *(a2 + 14);
    v17 = *(a2 + 16);
    v16 = *(a2 + 24);
    v18 = *(a2 + 32);
    if (*(a1 + 12))
    {
      if (!*(a2 + 12))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 8) == *(a2 + 8))
      {
        v19 = *(a2 + 12);
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        return 0;
      }
    }

    v56 = v14;
    v20 = 0xE700000000000000;
    v21 = 0xE700000000000000;
    v22 = 0x64726177726F66;
    if (v10 != 1)
    {
      v22 = 1801675106;
      v21 = 0xE400000000000000;
    }

    if (v10)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0x6E776F6E6B6E75;
    }

    if (v10)
    {
      v24 = v21;
    }

    else
    {
      v24 = 0xE700000000000000;
    }

    v25 = 0x64726177726F66;
    if (*(a2 + 13) != 1)
    {
      v25 = 1801675106;
      v20 = 0xE400000000000000;
    }

    if (*(a2 + 13))
    {
      v26 = v25;
    }

    else
    {
      v26 = 0x6E776F6E6B6E75;
    }

    if (*(a2 + 13))
    {
      v27 = v20;
    }

    else
    {
      v27 = 0xE700000000000000;
    }

    if (v23 == v26 && v24 == v27)
    {
      v24, a2, v26, a4, a5, a6, a7, a8;
      v27, v28, v29, v30, v31, v32, v33, v34;
    }

    else
    {
      v41 = sub_1E1D30();
      v24, v42, v43, v44, v45, v46, v47, v48;
      v27, v49, v50, v51, v52, v53, v54, v55;
      if ((v41 & 1) == 0)
      {
        return 0;
      }
    }

    if (sub_20BCC(v11, v15, v35, v36, v37, v38, v39, v40))
    {
      if (v13)
      {
        if (!v16 || (v12 != v17 || v13 != v16) && (sub_1E1D30() & 1) == 0)
        {
          return 0;
        }

        return v56 ^ v18 ^ 1u;
      }

      if (!v16)
      {
        return v56 ^ v18 ^ 1u;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_149EB4()
{
  result = qword_289780;
  if (!qword_289780)
  {
    result = swift_getWitnessTable(aU_16, &type metadata for SkipData.CodingKeys, v0, v1);
    atomic_store(result, &qword_289780);
  }

  return result;
}

unint64_t sub_149F08()
{
  result = qword_289788;
  if (!qword_289788)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SkipDirection, &type metadata for SkipDirection, v0, v1);
    atomic_store(result, &qword_289788);
  }

  return result;
}

unint64_t sub_149F5C()
{
  result = qword_289790;
  if (!qword_289790)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SkipActionType, &type metadata for SkipActionType, v0, v1);
    atomic_store(result, &qword_289790);
  }

  return result;
}

unint64_t sub_149FB0()
{
  result = qword_2897A0;
  if (!qword_2897A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SkipDirection, &type metadata for SkipDirection, v0, v1);
    atomic_store(result, &qword_2897A0);
  }

  return result;
}

unint64_t sub_14A004()
{
  result = qword_2897A8;
  if (!qword_2897A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SkipActionType, &type metadata for SkipActionType, v0, v1);
    atomic_store(result, &qword_2897A8);
  }

  return result;
}

uint64_t sub_14A060(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_14A0BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_14A138()
{
  result = qword_2897B0;
  if (!qword_2897B0)
  {
    result = swift_getWitnessTable(byte_2010DC, &type metadata for SkipData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2897B0);
  }

  return result;
}

unint64_t sub_14A190()
{
  result = qword_2897B8;
  if (!qword_2897B8)
  {
    result = swift_getWitnessTable(byte_20104C, &type metadata for SkipData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2897B8);
  }

  return result;
}

unint64_t sub_14A1E8()
{
  result = qword_2897C0;
  if (!qword_2897C0)
  {
    result = swift_getWitnessTable(byte_201074, &type metadata for SkipData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2897C0);
  }

  return result;
}

uint64_t sub_14A23C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v12 = 0xEC0000006C617672;
    if (a1 == 0x65746E4970696B73 && a2 == 0xEC0000006C617672 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = 0xED00006E6F697463;
      if (a1 == 0x6572694470696B73 && a2 == 0xED00006E6F697463 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v14 = 0xEE00657079546E6FLL;
        if (a1 == 0x6974634170696B73 && a2 == 0xEE00657079546E6FLL || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else
        {
          v15 = 0xEB00000000444967;
          if (a1 == 0x6E696E657473696CLL && a2 == 0xEB00000000444967 || (sub_1E1D30() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 5;
          }

          else if (a1 == 0x72676B6361427369 && a2 == 0xEE006465646E756FLL)
          {
            0xEE006465646E756FLL, 0xEE006465646E756FLL, a3, a4, a5, a6, a7, a8;
            return 6;
          }

          else
          {
            v16 = sub_1E1D30();
            a2, v17, v18, v19, v20, v21, v22, v23;
            if (v16)
            {
              return 6;
            }

            else
            {
              return 7;
            }
          }
        }
      }
    }
  }
}

uint64_t ReadingOrientationChangeEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingOrientationChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingOrientationChangeEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingOrientationChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingOrientationChangeEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingOrientationChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_280D78, &unk_1ED080);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingOrientationChangeEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingOrientationChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_280D78, &unk_1ED080);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingOrientationChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingOrientationChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingOrientationChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingOrientationChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingOrientationChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReadingOrientationChangeEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_280D78, &unk_1ED080);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

__n128 ReadingOrientationChangeEvent.Model.orientationData.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[8].n128_u32[0];
  result = v1[7];
  *a1 = result;
  a1[1].n128_u32[0] = v2;
  return result;
}

uint64_t ReadingOrientationChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingOrientationChangeEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingOrientationChangeEvent.Model.init(readingSessionData:contentData:orientationData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 4);
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  v10 = *(a1 + 13);
  v11 = *(a1 + 14);
  v12 = *(a3 + 16);
  *a5 = *a1;
  *(a5 + 4) = v7;
  *(a5 + 8) = v8;
  *(a5 + 12) = v9;
  *(a5 + 13) = v10;
  *(a5 + 14) = v11;
  v13 = a2[1];
  *(a5 + 16) = *a2;
  *(a5 + 32) = v13;
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[5];
  *(a5 + 80) = a2[4];
  *(a5 + 96) = v16;
  *(a5 + 48) = v14;
  *(a5 + 64) = v15;
  *(a5 + 112) = *a3;
  *(a5 + 128) = v12;
  v17 = *(type metadata accessor for ReadingOrientationChangeEvent.Model(0) + 28);
  v18 = sub_1E1150();
  v19 = *(*(v18 - 8) + 32);

  return v19(a5 + v17, a4, v18);
}

unint64_t sub_14ACA8()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x7461746E6569726FLL;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_14AD40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_14C0D8(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_14AD68(uint64_t a1)
{
  v2 = sub_14B0DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14ADA4(uint64_t a1)
{
  v2 = sub_14B0DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingOrientationChangeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_2897F8, &qword_201160);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-v6];
  sub_48B8(a1, a1[3]);
  sub_14B0DC();
  sub_1E1E00();
  v8 = *(v2 + 4);
  v9 = v2[2];
  v10 = *(v2 + 12);
  v11 = *(v2 + 13);
  v12 = *(v2 + 14);
  v39 = *v2;
  v40 = v8;
  v41 = v9;
  v42 = v10;
  v43 = v11;
  v44 = v12;
  v38 = 0;
  sub_67BE8();
  v13 = v45;
  sub_1E1CF0();
  if (!v13)
  {
    v14 = *(v2 + 4);
    v15 = *(v2 + 2);
    v34 = *(v2 + 3);
    v35 = v14;
    v16 = *(v2 + 4);
    v17 = *(v2 + 6);
    v36 = *(v2 + 5);
    v37 = v17;
    v18 = *(v2 + 2);
    v33[0] = *(v2 + 1);
    v33[1] = v18;
    v29 = v34;
    v30 = v16;
    v19 = *(v2 + 6);
    v31 = v36;
    v32 = v19;
    v27 = v33[0];
    v28 = v15;
    v26 = 1;
    sub_13A5C(v33, v25);
    sub_143D0();
    sub_1E1CF0();
    v25[2] = v29;
    v25[3] = v30;
    v25[4] = v31;
    v25[5] = v32;
    v25[0] = v27;
    v25[1] = v28;
    sub_14424(v25);
    v20 = v2[32];
    v23 = *(v2 + 7);
    v24 = v20;
    v22[15] = 2;
    sub_67CE4();
    sub_1E1C80();
    type metadata accessor for ReadingOrientationChangeEvent.Model(0);
    LOBYTE(v23) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_14B0DC()
{
  result = qword_289800;
  if (!qword_289800)
  {
    result = swift_getWitnessTable(aA_20, &type metadata for ReadingOrientationChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289800);
  }

  return result;
}

void ReadingOrientationChangeEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = sub_1E1150();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_289808, &qword_201168);
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  v10 = type metadata accessor for ReadingOrientationChangeEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v44 = a1;
  sub_48B8(a1, v13);
  sub_14B0DC();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v44, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v39 = v10;
    v21 = v42;
    LOBYTE(v45) = 0;
    sub_686E8();
    sub_1E1C20();
    v22 = BYTE4(v47);
    v23 = DWORD2(v47);
    v24 = BYTE12(v47);
    v25 = BYTE13(v47);
    v26 = BYTE14(v47);
    *v12 = v47;
    v12[4] = v22;
    *(v12 + 2) = v23;
    v12[12] = v24;
    v12[13] = v25;
    v12[14] = v26;
    v54 = 1;
    sub_14CB8();
    sub_1E1C20();
    v27 = v50;
    *(v12 + 3) = v49;
    *(v12 + 4) = v27;
    v28 = v52;
    *(v12 + 5) = v51;
    *(v12 + 6) = v28;
    v29 = v48;
    *(v12 + 1) = v47;
    *(v12 + 2) = v29;
    v53 = 2;
    sub_687E4();
    sub_1E1BB0();
    v30 = v46;
    *(v12 + 7) = v45;
    *(v12 + 32) = v30;
    LOBYTE(v45) = 3;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v31 = v43;
    sub_1E1C20();
    (*(v21 + 8))(v9, v31);
    (*(v40 + 32))(&v12[*(v39 + 28)], v6, v4);
    sub_14B54C(v12, v41);
    sub_4E48(v44, v32, v33, v34, v35, v36, v37, v38);
    sub_14B5B0(v12);
  }
}

uint64_t sub_14B54C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingOrientationChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14B5B0(uint64_t a1)
{
  v2 = type metadata accessor for ReadingOrientationChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_14B6AC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_280D78, &unk_1ED080);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v4, v12);
}

uint64_t sub_14B844(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_280D60, &qword_1EF5E0);
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

  v14 = sub_3D68(&qword_280D78, &unk_1ED080);
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

uint64_t sub_14BA10(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_280D60, &qword_1EF5E0);
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

  v16 = sub_3D68(&qword_280D78, &unk_1ED080);
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

void sub_14BBD4(uint64_t a1)
{
  sub_14BD30(319, &qword_280E40, sub_686E8, sub_67BE8, &type metadata for ReadingSessionData);
  if (v1 <= 0x3F)
  {
    sub_14BD30(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
    if (v2 <= 0x3F)
    {
      sub_14BD30(319, &qword_280E58, sub_687E4, sub_67CE4, &type metadata for OrientationData);
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

void sub_14BD30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_14BDC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_14BE80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_14BF24(uint64_t a1)
{
  sub_71E64();
  if (v1 <= 0x3F)
  {
    sub_1E1150();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_14BFD4()
{
  result = qword_289940;
  if (!qword_289940)
  {
    result = swift_getWitnessTable(aY_19, &type metadata for ReadingOrientationChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289940);
  }

  return result;
}

unint64_t sub_14C02C()
{
  result = qword_289948;
  if (!qword_289948)
  {
    result = swift_getWitnessTable(byte_201280, &type metadata for ReadingOrientationChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289948);
  }

  return result;
}

unint64_t sub_14C084()
{
  result = qword_289950;
  if (!qword_289950)
  {
    result = swift_getWitnessTable(byte_2012A8, &type metadata for ReadingOrientationChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289950);
  }

  return result;
}

uint64_t sub_14C0D8(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000214400;
  if (a1 == 0xD000000000000012 && 0x8000000000214400 == a2 || (sub_1E1D30() & 1) != 0)
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
      v13 = 0xEF617461446E6F69;
      if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_1E1D30() & 1) != 0)
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
}

BookAnalytics::UserAction_optional __swiftcall UserAction.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2611F0;
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

uint64_t UserAction.rawValue.getter()
{
  v1 = 0x6E4974706FLL;
  if (*v0 != 1)
  {
    v1 = 0x74754F74706FLL;
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

unint64_t sub_14C310()
{
  result = qword_289958;
  if (!qword_289958)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserAction, &type metadata for UserAction, v0, v1);
    atomic_store(result, &qword_289958);
  }

  return result;
}

Swift::Int sub_14C364()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE500000000000000;
  if (v1 != 1)
  {
    v2 = 0xE600000000000000;
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

void sub_14C400(uint64_t a1)
{
  v2 = 0xE500000000000000;
  if (*v1 != 1)
  {
    v2 = 0xE600000000000000;
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

Swift::Int sub_14C488(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE500000000000000;
  if (v2 != 1)
  {
    v3 = 0xE600000000000000;
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

void sub_14C52C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6E4974706FLL;
  if (v2 != 1)
  {
    v5 = 0x74754F74706FLL;
    v4 = 0xE600000000000000;
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

unint64_t sub_14C644()
{
  result = qword_289960;
  if (!qword_289960)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserAction, &type metadata for UserAction, v0, v1);
    atomic_store(result, &qword_289960);
  }

  return result;
}

unint64_t sub_14C69C()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_14C6D8(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0x8000000000216F50;
  if (a1 == 0xD000000000000010 && 0x8000000000216F50 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000216F70 == a2)
  {
    a2, 0x8000000000216F70, a3, a4, a5, a6, a7, a8;
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

uint64_t sub_14C7BC(uint64_t a1)
{
  v2 = sub_14CDB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14C7F8(uint64_t a1)
{
  v2 = sub_14CDB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PrevAltContentExposureData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_289968, &qword_2014A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  sub_48B8(a1, a1[3]);
  sub_14CDB8();
  sub_1E1E00();
  v15 = v8;
  v14 = 0;
  sub_14CE0C();
  sub_1E1CF0();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_14CE60();
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

void PrevAltContentExposureData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_289988, &qword_2014A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_48B8(a1, a1[3]);
  sub_14CDB8();
  sub_1E1DF0();
  if (!v2)
  {
    v21 = 0;
    sub_14CEB4();
    sub_1E1C20();
    v16 = v22;
    v19 = 1;
    sub_14CF08();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    v17 = v20;
    *a2 = v16;
    a2[1] = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t _s13BookAnalytics26PrevAltContentExposureDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a2 + 1);
  v11 = 0xE800000000000000;
  v12 = 0x6573616863727570;
  v13 = 0x80000000002124A0;
  if (v8 != 1)
  {
    v12 = 0xD000000000000012;
    v11 = 0x80000000002124A0;
  }

  if (*a1)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v15 = v11;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  v16 = 0x6573616863727570;
  if (*a2 == 1)
  {
    v13 = 0xE800000000000000;
  }

  else
  {
    v16 = 0xD000000000000012;
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
    v18 = v13;
  }

  else
  {
    v18 = 0xE700000000000000;
  }

  if (v14 == v17 && v15 == v18)
  {
    v15, a2, v17, a4, a5, a6, a7, a8;
    v18, v19, v20, v21, v22, v23, v24, v25;
    goto LABEL_22;
  }

  v33 = sub_1E1D30();
  v15, v34, v35, v36, v37, v38, v39, v40;
  v18, v41, v42, v43, v44, v45, v46, v47;
  v48 = 0;
  if (v33)
  {
LABEL_22:
    v49 = 0xE600000000000000;
    v50 = 0x656C676E6973;
    if (v9 != 1)
    {
      v50 = 2037277037;
      v49 = 0xE400000000000000;
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
        v53 = 0xE600000000000000;
        if (v51 != 0x656C676E6973)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v53 = 0xE400000000000000;
        if (v51 != 2037277037)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v53 = 0xE700000000000000;
      if (v51 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }

    if (v52 == v53)
    {
      v48 = 1;
LABEL_40:
      v52, v26, v27, v28, v29, v30, v31, v32;
      v53, v54, v55, v56, v57, v58, v59, v60;
      return v48 & 1;
    }

LABEL_39:
    v48 = sub_1E1D30();
    goto LABEL_40;
  }

  return v48 & 1;
}

unint64_t sub_14CDB8()
{
  result = qword_289970;
  if (!qword_289970)
  {
    result = swift_getWitnessTable(byte_201680, &type metadata for PrevAltContentExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_289970);
  }

  return result;
}

unint64_t sub_14CE0C()
{
  result = qword_289978;
  if (!qword_289978)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExposureType, &type metadata for ExposureType, v0, v1);
    atomic_store(result, &qword_289978);
  }

  return result;
}

unint64_t sub_14CE60()
{
  result = qword_289980;
  if (!qword_289980)
  {
    result = swift_getWitnessTable("!R\a", &type metadata for ExposureTypeView, v0, v1);
    atomic_store(result, &qword_289980);
  }

  return result;
}

unint64_t sub_14CEB4()
{
  result = qword_289990;
  if (!qword_289990)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExposureType, &type metadata for ExposureType, v0, v1);
    atomic_store(result, &qword_289990);
  }

  return result;
}

unint64_t sub_14CF08()
{
  result = qword_289998;
  if (!qword_289998)
  {
    result = swift_getWitnessTable("9R\a", &type metadata for ExposureTypeView, v0, v1);
    atomic_store(result, &qword_289998);
  }

  return result;
}

unint64_t sub_14CF88()
{
  result = qword_2899A0;
  if (!qword_2899A0)
  {
    result = swift_getWitnessTable(byte_201658, &type metadata for PrevAltContentExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2899A0);
  }

  return result;
}

unint64_t sub_14CFE0()
{
  result = qword_2899A8;
  if (!qword_2899A8)
  {
    result = swift_getWitnessTable(aY_20, &type metadata for PrevAltContentExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2899A8);
  }

  return result;
}

unint64_t sub_14D038()
{
  result = qword_2899B0;
  if (!qword_2899B0)
  {
    result = swift_getWitnessTable(aA_21, &type metadata for PrevAltContentExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2899B0);
  }

  return result;
}

void SectionData.updating(for:with:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = v4[5];
  v47 = v4[4];
  v48 = v7;
  v49 = v4[6];
  v8 = v4[1];
  v44[0] = *v4;
  v44[1] = v8;
  v9 = v4[3];
  v45 = v4[2];
  v46 = v9;
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
    v14 = v4[1];
    *a3 = *v4;
    *(a3 + 16) = v14;
    v15 = v4[3];
    *(a3 + 32) = v4[2];
    *(a3 + 48) = v15;
    sub_274D4(v44, &v42);
  }

  else
  {
    v16 = v45;
    v40 = *v4;
    v41 = *(v4 + 2);
    v37 = *(v4 + 72);
    v38 = *(v4 + 88);
    v39 = *(v4 + 13);
    v35 = *(v4 + 40);
    v36 = *(v4 + 56);
    sub_274D4(v44, &v42);
    v42 = sub_1E1910();
    v43 = v17;
    v50._countAndFlagsBits = 44;
    v50._object = 0xE100000000000000;
    sub_1E17E0(v50);
    v51._countAndFlagsBits = sub_1E1910();
    object = v51._object;
    sub_1E17E0(v51);
    v16, v19, v20, v21, v22, v23, v24, v25;
    object, v26, v27, v28, v29, v30, v31, v32;
    *a3 = v40;
    *(a3 + 56) = v36;
    *(a3 + 72) = v37;
    *(a3 + 88) = v38;
    v33 = v42;
    v34 = v43;
    *(a3 + 16) = v41;
    *(a3 + 24) = v33;
    *(a3 + 32) = v34;
    *(a3 + 104) = v39;
    *(a3 + 40) = v35;
  }
}

unint64_t sub_14D228(uint64_t a1)
{
  *(a1 + 8) = sub_14D258();
  result = sub_14D2AC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_14D258()
{
  result = qword_2899B8;
  if (!qword_2899B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionData, &type metadata for SectionData, v0, v1);
    atomic_store(result, &qword_2899B8);
  }

  return result;
}

unint64_t sub_14D2AC()
{
  result = qword_2899C0;
  if (!qword_2899C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionData, &type metadata for SectionData, v0, v1);
    atomic_store(result, &qword_2899C0);
  }

  return result;
}

uint64_t sub_14D304()
{
  if (*v0)
  {
    return 0x65536E6F6974706FLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_14D350(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0x8000000000216F90;
  if (a1 == 0xD000000000000010 && 0x8000000000216F90 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0x65536E6F6974706FLL && a2 == 0xEE0064657463656CLL)
  {
    0xEE0064657463656CLL, 0xEE0064657463656CLL, a3, a4, a5, a6, a7, a8;
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

uint64_t sub_14D440(uint64_t a1)
{
  v2 = sub_14D9A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14D47C(uint64_t a1)
{
  v2 = sub_14D9A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t OptionListData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_2899C8, &qword_2016F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v18[1] = *(v1 + 16);
  v18[2] = v8;
  sub_48B8(a1, a1[3]);
  sub_14D9A4();

  sub_1E1E00();
  v21 = v9;
  v20 = 0;
  sub_3D68(&qword_281BC0, &unk_1EDD80);
  sub_6E7F0(&qword_281190, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1E1C80();
  v9, v10, v11, v12, v13, v14, v15, v16;
  if (!v2)
  {
    v19 = 1;
    sub_1E1CB0();
  }

  return (*(v5 + 8))(v7, v4);
}

void OptionListData.init(from:)(BAEventReporter **a1@<X0>, BAEventReporter **a2@<X8>)
{
  v5 = sub_3D68(&qword_2899D8, &qword_2016F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41[-v7];
  sub_48B8(a1, a1[3]);
  sub_14D9A4();
  sub_1E1DF0();
  if (v2)
  {
    v16 = 0;
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    v41[15] = 0;
    sub_6E7F0(&qword_2811B8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1E1BB0();
    v16 = v42;
    v41[14] = 1;
    v24 = sub_1E1BE0();
    v26 = v25;
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    a2[1] = v24;
    a2[2] = v26;

    sub_4E48(a1, v27, v28, v29, v30, v31, v32, v33);
    v26, v34, v35, v36, v37, v38, v39, v40;
  }

  v16, v17, v18, v19, v20, v21, v22, v23;
}

uint64_t _s13BookAnalytics14OptionListDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  if (!v4)
  {
    if (!v7)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!v7 || (sub_5C5F8(v4, v7) & 1) == 0)
  {
    return 0;
  }

LABEL_4:
  if (v5 == v8 && v6 == v9)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_14D9A4()
{
  result = qword_2899D0;
  if (!qword_2899D0)
  {
    result = swift_getWitnessTable(byte_2018D8, &type metadata for OptionListData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2899D0);
  }

  return result;
}

unint64_t sub_14DA24()
{
  result = qword_2899E0;
  if (!qword_2899E0)
  {
    result = swift_getWitnessTable(byte_2018B0, &type metadata for OptionListData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2899E0);
  }

  return result;
}

unint64_t sub_14DA7C()
{
  result = qword_2899E8;
  if (!qword_2899E8)
  {
    result = swift_getWitnessTable(byte_201820, &type metadata for OptionListData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2899E8);
  }

  return result;
}

unint64_t sub_14DAD4()
{
  result = qword_2899F0;
  if (!qword_2899F0)
  {
    result = swift_getWitnessTable(byte_201848, &type metadata for OptionListData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2899F0);
  }

  return result;
}

void __swiftcall AltContentTypeExposureData.init(altContentType:altContentID:exposureType:exposureTypeView:altPricePoint:altPriceCurrency:productionType:)(BookAnalytics::AltContentTypeExposureData *__return_ptr retstr, BookAnalytics::ContentType altContentType, Swift::OpaquePointer altContentID, BookAnalytics::ExposureType exposureType, BookAnalytics::ExposureTypeView exposureTypeView, Swift::String_optional altPricePoint, Swift::String_optional altPriceCurrency, BookAnalytics::ProductionType_optional productionType)
{
  v8 = *exposureType;
  v9 = *exposureTypeView;
  v10 = *productionType.value;
  retstr->altContentType = *altContentType;
  retstr->altContentID = altContentID;
  retstr->exposureType = v8;
  retstr->exposureTypeView = v9;
  retstr->altPricePoint = altPricePoint;
  retstr->altPriceCurrency = altPriceCurrency;
  retstr->productionType.value = v10;
}

unint64_t sub_14DBAC()
{
  v1 = 0x65746E6F43746C61;
  v2 = *v0;
  v3 = 0xD000000000000010;
  if (v2 != 5)
  {
    v3 = 0x69746375646F7270;
  }

  v4 = 0xD000000000000010;
  if (v2 != 3)
  {
    v4 = 0x6563697250746C61;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x657275736F707865;
  if (v2 == 1)
  {
    v5 = 0x65746E6F43746C61;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_14DCA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_14EB60(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_14DCD0(uint64_t a1)
{
  v2 = sub_14E8C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14DD0C(uint64_t a1)
{
  v2 = sub_14E8C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AltContentTypeExposureData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_2899F8, &unk_201930);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = *v1;
  v21 = *(v1 + 1);
  v23 = v1[16];
  v20 = v1[17];
  v9 = *(v1 + 3);
  v18 = *(v1 + 4);
  v19 = v9;
  v10 = *(v1 + 6);
  v16 = *(v1 + 5);
  v17 = v10;
  HIDWORD(v15) = v1[56];
  sub_48B8(a1, a1[3]);
  sub_14E8C0();
  v11 = v4;
  sub_1E1E00();
  LOBYTE(v22) = v8;
  v24 = 0;
  sub_C480();
  sub_1E1CF0();
  if (!v2)
  {
    v12 = v23;
    v13 = v20;
    v22 = v21;
    v24 = 1;
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    sub_6E7F0(&qword_281190, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1E1CF0();
    LOBYTE(v22) = v12;
    v24 = 2;
    sub_14CE0C();
    sub_1E1CF0();
    LOBYTE(v22) = v13;
    v24 = 3;
    sub_14CE60();
    sub_1E1CF0();
    LOBYTE(v22) = 4;
    sub_1E1C50();
    LOBYTE(v22) = 5;
    sub_1E1C50();
    LOBYTE(v22) = BYTE4(v15);
    v24 = 6;
    sub_F0F68();
    sub_1E1C80();
  }

  return (*(v5 + 8))(v7, v11);
}

void AltContentTypeExposureData.init(from:)(BAEventReporter **a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_289A08, &qword_201940);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - v7;
  sub_48B8(a1, a1[3]);
  sub_14E8C0();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
    0, v17, v18, v19, v20, v21, v22, v23;
  }

  else
  {
    LOBYTE(v48) = 0;
    sub_C4D4();
    sub_1E1C20();
    v16 = v51[0];
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    LOBYTE(v48) = 1;
    sub_6E7F0(&qword_2811B8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1E1C20();
    v47 = v51[0];
    LOBYTE(v48) = 2;
    sub_14CEB4();
    sub_1E1C20();
    v24 = LOBYTE(v51[0]);
    LOBYTE(v48) = 3;
    sub_14CF08();
    sub_1E1C20();
    v59 = LOBYTE(v51[0]);
    LOBYTE(v51[0]) = 4;
    v25 = sub_1E1B80();
    v46 = v24;
    v45 = v25;
    v27 = v26;
    LOBYTE(v51[0]) = 5;
    v43 = sub_1E1B80();
    v44 = v28;
    v60 = 6;
    sub_F110C();
    sub_1E1BB0();
    (*(v6 + 8))(v8, v5);
    v42 = v61;
    LOBYTE(v48) = v16;
    v29 = v47;
    *(&v48 + 1) = v47;
    LOBYTE(v49) = v46;
    BYTE1(v49) = v59;
    v31 = v44;
    v30 = v45;
    *(&v49 + 1) = v45;
    *v50 = v27;
    v32 = v43;
    *&v50[8] = v43;
    *&v50[16] = v44;
    v50[24] = v61;
    v33 = v49;
    *a2 = v48;
    a2[1] = v33;
    a2[2] = *v50;
    *(a2 + 41) = *&v50[9];
    sub_14E914(&v48, v51);
    sub_4E48(a1, v34, v35, v36, v37, v38, v39, v40);
    LOBYTE(v51[0]) = v16;
    v51[1] = v29;
    v52 = v46;
    v53 = v59;
    v54 = v30;
    v55 = v27;
    v56 = v32;
    v57 = v31;
    v58 = v42;
    sub_14E94C(v51);
  }
}

BOOL _s13BookAnalytics26AltContentTypeExposureDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 17);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a2 + 1);
  v14 = a2[16];
  v15 = a2[17];
  v17 = *(a2 + 3);
  v16 = *(a2 + 4);
  v122 = *(a2 + 5);
  v123 = *(a1 + 40);
  v126 = *(a2 + 6);
  v127 = *(a1 + 48);
  v124 = *(a1 + 56);
  v125 = a2[56];
  if ((sub_218F4(*a1, *a2, a3, a4, a5, a6, a7, a8) & 1) == 0 || (sub_5C5F8(v8, v13) & 1) == 0)
  {
    return 0;
  }

  v24 = 0xE800000000000000;
  v25 = 0x6573616863727570;
  v26 = 0x80000000002124A0;
  if (v9 != 1)
  {
    v25 = 0xD000000000000012;
    v24 = 0x80000000002124A0;
  }

  if (v9)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0x6E776F6E6B6E75;
  }

  if (v9)
  {
    v28 = v24;
  }

  else
  {
    v28 = 0xE700000000000000;
  }

  v29 = 0x6E776F6E6B6E75;
  v30 = 0x6573616863727570;
  if (v14 == 1)
  {
    v26 = 0xE800000000000000;
  }

  else
  {
    v30 = 0xD000000000000012;
  }

  if (v14)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0x6E776F6E6B6E75;
  }

  if (v14)
  {
    v32 = v26;
  }

  else
  {
    v32 = 0xE700000000000000;
  }

  if (v27 == v31 && v28 == v32)
  {
    v28, v18, v31, v19, v20, v21, v22, v23;
    v32, v33, v34, v35, v36, v37, v38, v39;
  }

  else
  {
    v46 = sub_1E1D30();
    v28, v47, v48, v49, v50, v51, v52, v53;
    v32, v54, v55, v56, v57, v58, v59, v60;
    if ((v46 & 1) == 0)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v61 = 0x656C676E6973;
    }

    else
    {
      v61 = 2037277037;
    }

    if (v10 == 1)
    {
      v62 = 0xE600000000000000;
    }

    else
    {
      v62 = 0xE400000000000000;
    }
  }

  else
  {
    v62 = 0xE700000000000000;
    v61 = 0x6E776F6E6B6E75;
  }

  v63 = 0xE600000000000000;
  v64 = 0x656C676E6973;
  if (v15 != 1)
  {
    v64 = 2037277037;
    v63 = 0xE400000000000000;
  }

  if (v15)
  {
    v65 = v64;
  }

  else
  {
    v65 = 0x6E776F6E6B6E75;
  }

  if (v15)
  {
    v66 = v63;
  }

  else
  {
    v66 = 0xE700000000000000;
  }

  if (v61 == v65 && v62 == v66)
  {
    v62, v40, v65, v41, v42, v43, v44, v45;
    v66, v67, v68, v69, v70, v71, v72, v73;
  }

  else
  {
    v80 = sub_1E1D30();
    v62, v81, v82, v83, v84, v85, v86, v87;
    v66, v88, v89, v90, v91, v92, v93, v94;
    if ((v80 & 1) == 0)
    {
      return 0;
    }
  }

  if (v12)
  {
    if (!v16 || (v11 != v17 || v12 != v16) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v95 = v127;
  if (v127)
  {
    v75 = v126;
    if (!v126)
    {
      return 0;
    }

    v74 = v122;
    if ((v123 != v122 || v127 != v126) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v126)
  {
    return 0;
  }

  if (v124 == 3)
  {
    return v125 == 3;
  }

  if (v125 == 3)
  {
    return 0;
  }

  if (v124)
  {
    if (v124 == 1)
    {
      v97 = 0x6375646F72506773;
      v98 = 0xEC0000006E6F6974;
    }

    else
    {
      v97 = 0x6F725047536E6F6ELL;
      v98 = 0xEF6E6F6974637564;
    }
  }

  else
  {
    v98 = 0xE700000000000000;
    v97 = 0x6E776F6E6B6E75;
  }

  if (v125)
  {
    if (v125 == 1)
    {
      v29 = 0x6375646F72506773;
      v99 = 0xEC0000006E6F6974;
    }

    else
    {
      v29 = 0x6F725047536E6F6ELL;
      v99 = 0xEF6E6F6974637564;
    }
  }

  else
  {
    v99 = 0xE700000000000000;
  }

  if (v97 == v29 && v98 == v99)
  {
    v98, v95, v74, v75, v76, v77, v78, v79;
    v99, v100, v101, v102, v103, v104, v105, v106;
  }

  else
  {
    v107 = sub_1E1D30();
    v98, v108, v109, v110, v111, v112, v113, v114;
    v99, v115, v116, v117, v118, v119, v120, v121;
    if ((v107 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}