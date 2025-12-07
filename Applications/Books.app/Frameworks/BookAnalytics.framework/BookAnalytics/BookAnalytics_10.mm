uint64_t sub_EBCC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_EBD08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_EBD5C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_EBD70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_EBDB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_EBE54(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 25, 7);
}

uint64_t sub_EBED4(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 26, 7);
}

void sub_EBF0C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_EB648(a1, a2, *(v2 + 16), v3 | *(v2 + 24));
}

unint64_t sub_EBF38()
{
  result = qword_285D18;
  if (!qword_285D18)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_5DE50(&qword_285D00, &qword_1F85E8);
    v4[0] = sub_EBFC4();
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_285D18);
  }

  return result;
}

unint64_t sub_EBFC4()
{
  result = qword_285D20;
  if (!qword_285D20)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_5DE50(&qword_285CF8, &qword_1F85E0);
    v4[0] = sub_EC07C(&qword_285D28, &qword_285CF0, &qword_1F85D8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_285D20);
  }

  return result;
}

uint64_t sub_EC07C(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_5DE50(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_EC0C4()
{
  sub_5DE50(&qword_285D08, &qword_1F85F0);
  sub_EC07C(&qword_285D10, &qword_285D08, &qword_1F85F0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_EB9D0();
  return swift_getOpaqueTypeConformance2();
}

void sub_EC1D0(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x656E746867697262 && a2 == 0xEF6C6576654C7373)
  {
    a2, 0xEF6C6576654C7373, a1, a3, a4, a5, a6, a7;
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

uint64_t sub_EC260(uint64_t a1)
{
  v2 = sub_EC410();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_EC29C(uint64_t a1)
{
  v2 = sub_EC410();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BrightnessData.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_285D30, &qword_1F85F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_48B8(a1, a1[3]);
  sub_EC410();
  sub_1E1E00();
  sub_1E1D00();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_EC410()
{
  result = qword_285D38;
  if (!qword_285D38)
  {
    result = swift_getWitnessTable(byte_1F87D0, &type metadata for BrightnessData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285D38);
  }

  return result;
}

void BrightnessData.init(from:)(BAEventReporter **a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_285D40, &qword_1F8600);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_48B8(a1, a1[3]);
  sub_EC410();
  sub_1E1DF0();
  if (!v2)
  {
    v16 = sub_1E1C30();
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_EC5BC()
{
  result = qword_285D48;
  if (!qword_285D48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BrightnessData, &type metadata for BrightnessData, v0, v1);
    atomic_store(result, &qword_285D48);
  }

  return result;
}

unint64_t sub_EC614()
{
  result = qword_285D50;
  if (!qword_285D50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BrightnessData, &type metadata for BrightnessData, v0, v1);
    atomic_store(result, &qword_285D50);
  }

  return result;
}

unint64_t sub_EC6A4()
{
  result = qword_285D58;
  if (!qword_285D58)
  {
    result = swift_getWitnessTable(byte_1F87A8, &type metadata for BrightnessData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285D58);
  }

  return result;
}

unint64_t sub_EC6FC()
{
  result = qword_285D60;
  if (!qword_285D60)
  {
    result = swift_getWitnessTable(aO_2, &type metadata for BrightnessData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285D60);
  }

  return result;
}

unint64_t sub_EC754()
{
  result = qword_285D68;
  if (!qword_285D68)
  {
    result = swift_getWitnessTable(byte_1F8740, &type metadata for BrightnessData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285D68);
  }

  return result;
}

uint64_t ReadingFontChangeEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingFontChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingFontChangeEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingFontChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingFontChangeEvent.fontData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingFontChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_285DA0, &unk_1F8820);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingFontChangeEvent.fontData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingFontChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_285DA0, &unk_1F8820);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingFontChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingFontChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingFontChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingFontChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingFontChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReadingFontChangeEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_285DA0, &unk_1F8820);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t ReadingFontChangeEvent.Model.fontData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 112);
  a1[1] = v2;
}

uint64_t ReadingFontChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingFontChangeEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingFontChangeEvent.Model.init(readingSessionData:contentData:fontData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 4);
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  v10 = *(a1 + 13);
  v11 = *(a1 + 14);
  v12 = *a3;
  v13 = a3[1];
  *a5 = *a1;
  *(a5 + 4) = v7;
  *(a5 + 8) = v8;
  *(a5 + 12) = v9;
  *(a5 + 13) = v10;
  *(a5 + 14) = v11;
  v14 = a2[1];
  *(a5 + 16) = *a2;
  *(a5 + 32) = v14;
  v15 = a2[2];
  v16 = a2[3];
  v17 = a2[5];
  *(a5 + 80) = a2[4];
  *(a5 + 96) = v17;
  *(a5 + 48) = v15;
  *(a5 + 64) = v16;
  *(a5 + 112) = v12;
  *(a5 + 120) = v13;
  v18 = *(type metadata accessor for ReadingFontChangeEvent.Model(0) + 28);
  v19 = sub_1E1150();
  v20 = *(*(v19 - 8) + 32);

  return v20(a5 + v18, a4, v19);
}

unint64_t sub_ECF80()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x61746144746E6F66;
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

uint64_t sub_ED00C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_EE3B4(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_ED034(uint64_t a1)
{
  v2 = sub_ED3C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_ED070(uint64_t a1)
{
  v2 = sub_ED3C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingFontChangeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_285DA8, &qword_1F8830);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29[-v6];
  sub_48B8(a1, a1[3]);
  sub_ED3C0();
  sub_1E1E00();
  v8 = *(v2 + 4);
  v9 = v2[2];
  v10 = *(v2 + 12);
  v11 = *(v2 + 13);
  v12 = *(v2 + 14);
  v46 = *v2;
  v47 = v8;
  v48 = v9;
  v49 = v10;
  v50 = v11;
  v51 = v12;
  v45 = 0;
  sub_67BE8();
  v13 = v52;
  sub_1E1CF0();
  if (!v13)
  {
    v14 = *(v2 + 4);
    v15 = *(v2 + 2);
    v41 = *(v2 + 3);
    v42 = v14;
    v16 = *(v2 + 4);
    v17 = *(v2 + 6);
    v43 = *(v2 + 5);
    v44 = v17;
    v18 = *(v2 + 2);
    v40[0] = *(v2 + 1);
    v40[1] = v18;
    v36 = v41;
    v37 = v16;
    v19 = *(v2 + 6);
    v38 = v43;
    v39 = v19;
    v34 = v40[0];
    v35 = v15;
    v33 = 1;
    sub_13A5C(v40, v32);
    sub_143D0();
    sub_1E1CF0();
    v32[2] = v36;
    v32[3] = v37;
    v32[4] = v38;
    v32[5] = v39;
    v32[0] = v34;
    v32[1] = v35;
    sub_14424(v32);
    v20 = *(v2 + 15);
    v30 = *(v2 + 14);
    v31 = v20;
    v29[15] = 2;
    sub_3781C();

    sub_1E1CF0();
    v31, v21, v22, v23, v24, v25, v26, v27;
    type metadata accessor for ReadingFontChangeEvent.Model(0);
    LOBYTE(v30) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_ED3C0()
{
  result = qword_285DB0;
  if (!qword_285DB0)
  {
    result = swift_getWitnessTable(aYl, &type metadata for ReadingFontChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_285DB0);
  }

  return result;
}

void ReadingFontChangeEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = sub_1E1150();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_285DB8, &qword_1F8838);
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  v10 = type metadata accessor for ReadingFontChangeEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v44 = a1;
  sub_48B8(a1, v13);
  sub_ED3C0();
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
    sub_377C4();
    sub_1E1C20();
    v30 = v46;
    *(v12 + 14) = v45;
    *(v12 + 15) = v30;
    LOBYTE(v45) = 3;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v31 = v43;
    sub_1E1C20();
    (*(v21 + 8))(v9, v31);
    (*(v40 + 32))(&v12[*(v39 + 28)], v6, v4);
    sub_ED844(v12, v41);
    sub_4E48(v44, v32, v33, v34, v35, v36, v37, v38);
    sub_ED8A8(v12);
  }
}

uint64_t sub_ED844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingFontChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_ED8A8(uint64_t a1)
{
  v2 = type metadata accessor for ReadingFontChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_ED9A4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_285DA0, &unk_1F8820);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_EDB28(uint64_t a1, uint64_t a2, int *a3)
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

  v14 = sub_3D68(&qword_285DA0, &unk_1F8820);
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

uint64_t sub_EDCF4(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  v16 = sub_3D68(&qword_285DA0, &unk_1F8820);
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

void sub_EDEB8(uint64_t a1)
{
  sub_EE014(319, &qword_280E40, sub_686E8, sub_67BE8, &type metadata for ReadingSessionData);
  if (v1 <= 0x3F)
  {
    sub_EE014(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
    if (v2 <= 0x3F)
    {
      sub_EE014(319, &unk_285E28, sub_377C4, sub_3781C, &type metadata for FontData);
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

void sub_EE014(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_EE0A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_EE164(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_EE208(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_EE2B0()
{
  result = qword_285EF8;
  if (!qword_285EF8)
  {
    result = swift_getWitnessTable(byte_1F89D8, &type metadata for ReadingFontChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_285EF8);
  }

  return result;
}

unint64_t sub_EE308()
{
  result = qword_285F00;
  if (!qword_285F00)
  {
    result = swift_getWitnessTable(byte_1F8948, &type metadata for ReadingFontChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_285F00);
  }

  return result;
}

unint64_t sub_EE360()
{
  result = qword_285F08;
  if (!qword_285F08)
  {
    result = swift_getWitnessTable(byte_1F8970, &type metadata for ReadingFontChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_285F08);
  }

  return result;
}

uint64_t sub_EE3B4(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
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

    else if (a1 == 0x61746144746E6F66 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
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
}

uint64_t RemoteConfigNamespaceData.init(name:treatmentIDs:segmentIDs:segmentSetIDs:previousTreatmentIDs:previousSegmentIDs:previousSegmentSetIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_EE5E4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6E656D7461657274;
    if (v1 != 1)
    {
      v5 = 0x49746E656D676573;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 1701667182;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 == 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000014;
    if (v1 == 3)
    {
      v3 = 0x53746E656D676573;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_EE6D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_EF3A4(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_EE6FC(uint64_t a1)
{
  v2 = sub_EF0A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_EE738(uint64_t a1)
{
  v2 = sub_EF0A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RemoteConfigNamespaceData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_285F10, &unk_1F8A50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - v5;
  v7 = v1[2];
  v18 = v1[3];
  v19 = v7;
  v8 = v1[4];
  v16 = v1[5];
  v17 = v8;
  v9 = v1[6];
  v14 = v1[7];
  v15 = v9;
  sub_48B8(a1, a1[3]);
  sub_EF0A4();
  sub_1E1E00();
  LOBYTE(v22) = 0;
  v10 = v20;
  sub_1E1C50();
  if (!v10)
  {
    v12 = v17;
    v11 = v18;
    v22 = v19;
    v21 = 1;
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    sub_6E7F0(&qword_281190, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1E1C80();
    v22 = v11;
    v21 = 2;
    sub_1E1C80();
    v22 = v12;
    v21 = 3;
    sub_1E1C80();
    v22 = v16;
    v21 = 4;
    sub_1E1C80();
    v22 = v15;
    v21 = 5;
    sub_1E1C80();
    v22 = v14;
    v21 = 6;
    sub_1E1C80();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RemoteConfigNamespaceData.init(from:)@<X0>(BAEventReporter **a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_285F20, &qword_1F8A60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  sub_48B8(a1, a1[3]);
  sub_EF0A4();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
    v46 = 0uLL;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
  }

  else
  {
    LOBYTE(v46) = 0;
    *&v40 = sub_1E1B80();
    *(&v40 + 1) = v17;
    v18 = sub_3D68(&qword_281BC0, &unk_1EDD80);
    LOBYTE(v41) = 1;
    sub_6E7F0(&qword_2811B8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1E1BB0();
    v39 = v46;
    LOBYTE(v41) = 2;
    sub_1E1BB0();
    v19 = v46;
    LOBYTE(v41) = 3;
    sub_1E1BB0();
    v20 = v18;
    v21 = v46;
    LOBYTE(v41) = 4;
    v38 = v20;
    sub_1E1BB0();
    v37 = a2;
    v22 = v46;
    LOBYTE(v41) = 5;
    sub_1E1BB0();
    v36 = v6;
    v23 = v46;
    v45 = 6;
    sub_1E1BB0();
    (*(v36 + 8))(v8, v5);
    v38 = v53;
    v24 = v40;
    v41 = v40;
    v25 = v39;
    *&v42 = v39;
    *(&v42 + 1) = v19;
    *&v43 = v21;
    *(&v43 + 1) = v22;
    *&v44 = v23;
    *(&v44 + 1) = v53;
    v26 = v42;
    v27 = v37;
    *v37 = v40;
    v27[1] = v26;
    v28 = v44;
    v27[2] = v43;
    v27[3] = v28;
    sub_5E410(&v41, &v46);
    sub_4E48(a1, v29, v30, v31, v32, v33, v34, v35);
    v46 = v24;
    v47 = v25;
    v48 = v19;
    v49 = v21;
    v50 = v22;
    v51 = v23;
    v52 = v38;
  }

  return sub_5E46C(&v46);
}

uint64_t _s13BookAnalytics25RemoteConfigNamespaceDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a2[1];
  v10 = a2[2];
  v12 = a2[3];
  v11 = a2[4];
  v14 = a2[5];
  v13 = a2[6];
  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    v16 = a2[7];
    v17 = a1[7];
    if ((*a1 != *a2 || v3 != v9) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v16 = a2[7];
    v17 = a1[7];
    if (v9)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v10 || (sub_5C5F8(v4, v10) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v12 || (sub_5C5F8(v6, v12) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v5)
  {
    if (!v11 || (sub_5C5F8(v5, v11) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v8)
  {
    if (!v14 || (sub_5C5F8(v8, v14) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v7)
  {
    if (!v13 || (sub_5C5F8(v7, v13) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v17)
  {
    if (v16 && (sub_5C5F8(v17, v16) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_EF0A4()
{
  result = qword_285F18;
  if (!qword_285F18)
  {
    result = swift_getWitnessTable(byte_1F8C90, &type metadata for RemoteConfigNamespaceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285F18);
  }

  return result;
}

unint64_t sub_EF0FC()
{
  result = qword_285F28;
  if (!qword_285F28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteConfigNamespaceData, &type metadata for RemoteConfigNamespaceData, v0, v1);
    atomic_store(result, &qword_285F28);
  }

  return result;
}

unint64_t sub_EF154()
{
  result = qword_285F30;
  if (!qword_285F30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteConfigNamespaceData, &type metadata for RemoteConfigNamespaceData, v0, v1);
    atomic_store(result, &qword_285F30);
  }

  return result;
}

__n128 sub_EF1A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_EF1BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_EF218(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_EF2A0()
{
  result = qword_285F38;
  if (!qword_285F38)
  {
    result = swift_getWitnessTable(byte_1F8C68, &type metadata for RemoteConfigNamespaceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285F38);
  }

  return result;
}

unint64_t sub_EF2F8()
{
  result = qword_285F40;
  if (!qword_285F40)
  {
    result = swift_getWitnessTable(aIj, &type metadata for RemoteConfigNamespaceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285F40);
  }

  return result;
}

unint64_t sub_EF350()
{
  result = qword_285F48;
  if (!qword_285F48)
  {
    result = swift_getWitnessTable(a1j, &type metadata for RemoteConfigNamespaceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285F48);
  }

  return result;
}

uint64_t sub_EF3A4(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v9 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v9 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEC00000073444974;
    if (a1 == 0x6E656D7461657274 && a2 == 0xEC00000073444974 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x49746E656D676573 && a2 == 0xEA00000000007344 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = 0xED00007344497465;
      if (a1 == 0x53746E656D676573 && a2 == 0xED00007344497465 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v14 = 0x8000000000215780;
        if (a1 == 0xD000000000000014 && 0x8000000000215780 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else
        {
          v15 = 0x80000000002157A0;
          if (a1 == 0xD000000000000012 && 0x80000000002157A0 == a2 || (sub_1E1D30() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 5;
          }

          else if (a1 == 0xD000000000000015 && 0x80000000002157C0 == a2)
          {
            a2, 0x80000000002157C0, a3, a4, a5, a6, a7, a8;
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

void __swiftcall ContentData.init(contentID:contentType:contentPrivateID:contentUserID:contentAcquisitionType:contentSubType:contentLength:supplementalContentCount:seriesType:productionType:mangaFlag:isUnified:isAccoladedContent:contentKind:)(BookAnalytics::ContentData *__return_ptr retstr, Swift::String contentID, BookAnalytics::ContentType contentType, Swift::String contentPrivateID, Swift::String contentUserID, BookAnalytics::ContentAcquisitionType_optional contentAcquisitionType, BookAnalytics::ContentSubType_optional contentSubType, Swift::Int32_optional contentLength, Swift::Int32_optional supplementalContentCount, BookAnalytics::SeriesType_optional seriesType, BookAnalytics::ProductionType_optional productionType, BookAnalytics::MangaFlag_optional mangaFlag, Swift::Bool_optional isUnified, Swift::Bool_optional isAccoladedContent, Swift::String_optional contentKind)
{
  v15 = *contentType;
  v16 = *contentAcquisitionType.value;
  v17 = *contentSubType.value;
  v18 = *seriesType.value;
  v19 = *contentKind.value._countAndFlagsBits;
  v20 = *contentKind.value._object;
  retstr->contentID = contentID;
  retstr->contentType = v15;
  retstr->contentPrivateID = contentPrivateID;
  retstr->contentUserID = contentUserID;
  retstr->contentAcquisitionType.value = v16;
  retstr->contentSubType.value = v17;
  *(&retstr->contentLength.value + 2) = contentLength.value;
  BYTE1(retstr->supplementalContentCount.value) = contentLength.is_nil;
  *&retstr->seriesType.value = supplementalContentCount.value;
  retstr->isAccoladedContent.value = supplementalContentCount.is_nil;
  *(&retstr->isAccoladedContent + 1) = v18;
  *(&retstr->isAccoladedContent + 2) = v19;
  *(&retstr->isAccoladedContent + 3) = v20;
  *(&retstr->isAccoladedContent + 2) = v21;
  retstr->contentKind.value._countAndFlagsBits = v22;
  retstr->contentKind.value._object = v23;
}

uint64_t ContentData.contentLength.setter(uint64_t result)
{
  *(v1 + 60) = result;
  *(v1 + 64) = BYTE4(result) & 1;
  return result;
}

uint64_t ContentData.supplementalContentCount.setter(uint64_t result)
{
  *(v1 + 68) = result;
  *(v1 + 72) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_EF838(char a1)
{
  result = 0x49746E65746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x54746E65746E6F63;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x55746E65746E6F63;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x53746E65746E6F63;
      break;
    case 6:
      result = 0x4C746E65746E6F63;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0x7954736569726573;
      break;
    case 9:
      result = 0x69746375646F7270;
      break;
    case 10:
      result = 0x616C4661676E616DLL;
      break;
    case 11:
      result = 0x656966696E557369;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x4B746E65746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_EFA54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_F1424(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_EFA88(uint64_t a1)
{
  v2 = sub_F0E18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_EFAC4(uint64_t a1)
{
  v2 = sub_F0E18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ContentData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_285F50, &qword_1F8CE0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  v29 = *(v1 + 16);
  v7 = *(v1 + 24);
  v26 = *(v1 + 32);
  v27 = v7;
  v8 = *(v1 + 40);
  v24 = *(v1 + 48);
  v25 = v8;
  LODWORD(v8) = *(v1 + 56);
  v22 = *(v1 + 57);
  v23 = v8;
  v21 = *(v1 + 60);
  v20 = *(v1 + 64);
  v19 = *(v1 + 68);
  LODWORD(v8) = *(v1 + 72);
  v17 = *(v1 + 73);
  v18 = v8;
  LODWORD(v8) = *(v1 + 74);
  v15 = *(v1 + 75);
  v16 = v8;
  LODWORD(v8) = *(v1 + 76);
  v13 = *(v1 + 77);
  v14 = v8;
  v9 = *(v1 + 88);
  v12[0] = *(v1 + 80);
  v12[1] = v9;
  sub_48B8(a1, a1[3]);
  sub_F0E18();
  sub_1E1E00();
  v31 = 0;
  v10 = v28;
  sub_1E1CB0();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v31 = v29;
  v30 = 1;
  sub_C480();
  sub_1E1CF0();
  v31 = 2;
  sub_1E1CB0();
  v28 = v4;
  v31 = 3;
  sub_1E1CB0();
  v31 = v23;
  v30 = 4;
  sub_F0E6C();
  sub_1E1C80();
  v31 = v22;
  v30 = 5;
  sub_F0EC0();
  sub_1E1C80();
  v31 = 6;
  v30 = v20;
  sub_1E1C90();
  v31 = 7;
  v30 = v18;
  sub_1E1C90();
  v31 = v17;
  v30 = 8;
  sub_F0F14();
  sub_1E1C80();
  v31 = v16;
  v30 = 9;
  sub_F0F68();
  sub_1E1C80();
  v31 = v15;
  v30 = 10;
  sub_F0FBC();
  sub_1E1C80();
  v31 = 11;
  sub_1E1C60();
  v31 = 12;
  sub_1E1C60();
  v31 = 13;
  sub_1E1C50();
  return (*(v4 + 8))(v6, 0);
}

void ContentData.init(from:)(BAEventReporter **a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_285F88, &qword_1F8CE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - v7;
  sub_48B8(a1, a1[3]);
  sub_F0E18();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    LOBYTE(v60[0]) = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    LOBYTE(v54) = 1;
    sub_C4D4();
    sub_1E1C20();
    v88 = v18;
    LODWORD(v18) = LOBYTE(v60[0]);
    LOBYTE(v60[0]) = 2;
    v51 = sub_1E1BE0();
    v50 = v18;
    v53 = v19;
    LOBYTE(v60[0]) = 3;
    v49 = sub_1E1BE0();
    v52 = v20;
    LOBYTE(v54) = 4;
    sub_F1010();
    sub_1E1BB0();
    v48 = LOBYTE(v60[0]);
    LOBYTE(v54) = 5;
    sub_F1064();
    sub_1E1BB0();
    v47 = LOBYTE(v60[0]);
    LOBYTE(v60[0]) = 6;
    v46 = sub_1E1BC0();
    v86 = BYTE4(v46) & 1;
    LOBYTE(v60[0]) = 7;
    v45 = sub_1E1BC0();
    v83 = BYTE4(v45) & 1;
    LOBYTE(v54) = 8;
    sub_F10B8();
    sub_1E1BB0();
    LOBYTE(v18) = v60[0];
    LOBYTE(v54) = 9;
    sub_F110C();
    sub_1E1BB0();
    v44 = LOBYTE(v60[0]);
    LOBYTE(v54) = 10;
    sub_F1160();
    sub_1E1BB0();
    v43 = LOBYTE(v60[0]);
    LOBYTE(v60[0]) = 11;
    v42 = sub_1E1B90();
    LOBYTE(v60[0]) = 12;
    v41 = sub_1E1B90();
    v82 = 13;
    v21 = sub_1E1B80();
    v40 = v22;
    v23 = v21;
    (*(v6 + 8))(v8, v5);
    *&v54 = v16;
    v24 = v88;
    *(&v54 + 1) = v88;
    v25 = v50;
    LOBYTE(v55) = v50;
    *(&v55 + 1) = v51;
    v26 = v53;
    *&v56 = v53;
    *(&v56 + 1) = v49;
    *&v57 = v52;
    BYTE8(v57) = v48;
    BYTE9(v57) = v47;
    HIDWORD(v57) = v46;
    v38 = v86;
    LOBYTE(v58) = v86;
    DWORD1(v58) = v45;
    v39 = v83;
    BYTE8(v58) = v83;
    BYTE9(v58) = v18;
    BYTE10(v58) = v44;
    BYTE11(v58) = v43;
    BYTE12(v58) = v42;
    BYTE13(v58) = v41;
    *&v59 = v23;
    *(&v59 + 1) = v40;
    v27 = v55;
    *a2 = v54;
    a2[1] = v27;
    v28 = v56;
    v29 = v57;
    v30 = v59;
    a2[4] = v58;
    a2[5] = v30;
    a2[2] = v28;
    a2[3] = v29;
    sub_13A5C(&v54, v60);
    sub_4E48(a1, v31, v32, v33, v34, v35, v36, v37);
    v60[0] = v16;
    v60[1] = v24;
    v61 = v25;
    *v62 = *v87;
    *&v62[3] = *&v87[3];
    v63 = v51;
    v64 = v26;
    v65 = v49;
    v66 = v52;
    v67 = v48;
    v68 = v47;
    v69 = v46;
    v70 = v38;
    v71 = v84;
    v72 = v85;
    v73 = v45;
    v74 = v39;
    v75 = v18;
    v76 = v44;
    v77 = v43;
    v78 = v42;
    v79 = v41;
    v80 = v23;
    v81 = v40;
    sub_14424(v60);
  }
}

BOOL _s13BookAnalytics11ContentDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *(a1 + 16);
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v132 = *(a1 + 57);
  v133 = *(a1 + 56);
  v127 = *(a1 + 15);
  v130 = *(a1 + 64);
  v128 = *(a1 + 72);
  v123 = *(a1 + 17);
  v124 = *(a1 + 73);
  v119 = *(a1 + 74);
  v117 = *(a1 + 75);
  v113 = *(a1 + 77);
  v114 = *(a1 + 76);
  v110 = a1[10];
  v112 = a1[11];
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *(a2 + 48);
  v134 = *(a2 + 56);
  v131 = *(a2 + 57);
  v129 = *(a2 + 64);
  v125 = *(a2 + 60);
  v126 = *(a2 + 72);
  v121 = *(a2 + 68);
  v122 = *(a2 + 73);
  v120 = *(a2 + 74);
  v118 = *(a2 + 75);
  v115 = *(a2 + 76);
  v116 = *(a2 + 77);
  v109 = *(a2 + 80);
  v111 = *(a2 + 88);
  if ((*a1 != *a2 || a1[1] != v14) && (sub_1E1D30() & 1) == 0 || (sub_218F4(v8, v15, v13, v14, a5, a6, a7, a8) & 1) == 0 || (v9 != v16 || v10 != v17) && (sub_1E1D30() & 1) == 0 || (v11 != v18 || v12 != v19) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v133 == 3)
  {
    if (v134 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v134 == 3)
    {
      return 0;
    }

    v27 = 0x6E776F6E6B6E75;
    if (v133)
    {
      if (v133 == 1)
      {
        v28 = 0x756F4265726F7473;
        v29 = 0xEB00000000746867;
      }

      else
      {
        v28 = 0x65726F74536E6F6ELL;
        v29 = 0xEE00746867756F42;
      }
    }

    else
    {
      v29 = 0xE700000000000000;
      v28 = 0x6E776F6E6B6E75;
    }

    if (v134)
    {
      if (v134 == 1)
      {
        v27 = 0x756F4265726F7473;
        v30 = 0xEB00000000746867;
      }

      else
      {
        v27 = 0x65726F74536E6F6ELL;
        v30 = 0xEE00746867756F42;
      }
    }

    else
    {
      v30 = 0xE700000000000000;
    }

    if (v28 == v27 && v29 == v30)
    {
      v29, v20, v27, v22, v23, v24, v25, v26;
      v30, v31, v32, v33, v34, v35, v36, v37;
    }

    else
    {
      v38 = sub_1E1D30();
      v29, v39, v40, v41, v42, v43, v44, v45;
      v30, v46, v47, v48, v49, v50, v51, v52;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v132 == 4)
  {
    if (v131 != 4)
    {
      return 0;
    }
  }

  else if (v131 == 4 || (sub_24AAC(v132, v131, v21, v22, v23, v24, v25, v26) & 1) == 0)
  {
    return 0;
  }

  if (v130)
  {
    if (!v129)
    {
      return 0;
    }
  }

  else
  {
    v53 = v129;
    if (v127 != v125)
    {
      v53 = 1;
    }

    if (v53)
    {
      return 0;
    }
  }

  if (v128)
  {
    if (!v126)
    {
      return 0;
    }
  }

  else
  {
    v54 = v126;
    if (v123 != v121)
    {
      v54 = 1;
    }

    if (v54)
    {
      return 0;
    }
  }

  if (v124 == 4)
  {
    if (v122 != 4)
    {
      return 0;
    }
  }

  else if (v122 == 4 || (sub_24C00(v124, v122, v21, v22, v23, v24, v25, v26) & 1) == 0)
  {
    return 0;
  }

  if (v119 == 3)
  {
    if (v120 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v120 == 3)
    {
      return 0;
    }

    v55 = 0x6E776F6E6B6E75;
    if (v119)
    {
      if (v119 == 1)
      {
        v56 = 0x6375646F72506773;
        v57 = 0xEC0000006E6F6974;
      }

      else
      {
        v56 = 0x6F725047536E6F6ELL;
        v57 = 0xEF6E6F6974637564;
      }
    }

    else
    {
      v57 = 0xE700000000000000;
      v56 = 0x6E776F6E6B6E75;
    }

    if (v120)
    {
      if (v120 == 1)
      {
        v55 = 0x6375646F72506773;
        v58 = 0xEC0000006E6F6974;
      }

      else
      {
        v55 = 0x6F725047536E6F6ELL;
        v58 = 0xEF6E6F6974637564;
      }
    }

    else
    {
      v58 = 0xE700000000000000;
    }

    if (v56 == v55 && v57 == v58)
    {
      v57, v20, v55, v22, v23, v24, v25, v26;
      v58, v59, v60, v61, v62, v63, v64, v65;
    }

    else
    {
      v66 = sub_1E1D30();
      v57, v67, v68, v69, v70, v71, v72, v73;
      v58, v74, v75, v76, v77, v78, v79, v80;
      if ((v66 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v117 == 3)
  {
    if (v118 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v118 == 3)
    {
      return 0;
    }

    v81 = 7562617;
    if (v117)
    {
      if (v117 == 1)
      {
        v82 = 0xE200000000000000;
        v83 = 28526;
      }

      else
      {
        v82 = 0xE700000000000000;
        v83 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      v82 = 0xE300000000000000;
      v83 = 7562617;
    }

    if (v118)
    {
      if (v118 == 1)
      {
        v84 = 0xE200000000000000;
        v81 = 28526;
      }

      else
      {
        v84 = 0xE700000000000000;
        v81 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      v84 = 0xE300000000000000;
    }

    if (v83 == v81 && v82 == v84)
    {
      v82, v20, v81, v22, v23, v24, v25, v26;
      v84, v85, v86, v87, v88, v89, v90, v91;
    }

    else
    {
      v92 = sub_1E1D30();
      v82, v93, v94, v95, v96, v97, v98, v99;
      v84, v100, v101, v102, v103, v104, v105, v106;
      if ((v92 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v114 == 2)
  {
    v107 = v116;
    if (v115 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    v107 = v116;
    if (v115 == 2 || ((v115 ^ v114) & 1) != 0)
    {
      return result;
    }
  }

  if (v113 == 2)
  {
    if (v107 != 2)
    {
      return 0;
    }

    goto LABEL_97;
  }

  result = 0;
  if (v107 != 2 && ((v107 ^ v113) & 1) == 0)
  {
LABEL_97:
    if (v112)
    {
      return v111 && (v110 == v109 && v112 == v111 || (sub_1E1D30() & 1) != 0);
    }

    return !v111;
  }

  return result;
}

unint64_t sub_F0E18()
{
  result = qword_285F58;
  if (!qword_285F58)
  {
    result = swift_getWitnessTable(aQg, &type metadata for ContentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285F58);
  }

  return result;
}

unint64_t sub_F0E6C()
{
  result = qword_285F60;
  if (!qword_285F60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentAcquisitionType, &type metadata for ContentAcquisitionType, v0, v1);
    atomic_store(result, &qword_285F60);
  }

  return result;
}

unint64_t sub_F0EC0()
{
  result = qword_285F68;
  if (!qword_285F68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentSubType, &type metadata for ContentSubType, v0, v1);
    atomic_store(result, &qword_285F68);
  }

  return result;
}

unint64_t sub_F0F14()
{
  result = qword_285F70;
  if (!qword_285F70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SeriesType, &type metadata for SeriesType, v0, v1);
    atomic_store(result, &qword_285F70);
  }

  return result;
}

unint64_t sub_F0F68()
{
  result = qword_285F78;
  if (!qword_285F78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProductionType, &type metadata for ProductionType, v0, v1);
    atomic_store(result, &qword_285F78);
  }

  return result;
}

unint64_t sub_F0FBC()
{
  result = qword_285F80;
  if (!qword_285F80)
  {
    result = swift_getWitnessTable("ad\a", &type metadata for MangaFlag, v0, v1);
    atomic_store(result, &qword_285F80);
  }

  return result;
}

unint64_t sub_F1010()
{
  result = qword_285F90;
  if (!qword_285F90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentAcquisitionType, &type metadata for ContentAcquisitionType, v0, v1);
    atomic_store(result, &qword_285F90);
  }

  return result;
}

unint64_t sub_F1064()
{
  result = qword_285F98;
  if (!qword_285F98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentSubType, &type metadata for ContentSubType, v0, v1);
    atomic_store(result, &qword_285F98);
  }

  return result;
}

unint64_t sub_F10B8()
{
  result = qword_285FA0;
  if (!qword_285FA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SeriesType, &type metadata for SeriesType, v0, v1);
    atomic_store(result, &qword_285FA0);
  }

  return result;
}

unint64_t sub_F110C()
{
  result = qword_285FA8;
  if (!qword_285FA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProductionType, &type metadata for ProductionType, v0, v1);
    atomic_store(result, &qword_285FA8);
  }

  return result;
}

unint64_t sub_F1160()
{
  result = qword_285FB0;
  if (!qword_285FB0)
  {
    result = swift_getWitnessTable("yd\a", &type metadata for MangaFlag, v0, v1);
    atomic_store(result, &qword_285FB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_F1320()
{
  result = qword_285FB8;
  if (!qword_285FB8)
  {
    result = swift_getWitnessTable(byte_1F8EE0, &type metadata for ContentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285FB8);
  }

  return result;
}

unint64_t sub_F1378()
{
  result = qword_285FC0;
  if (!qword_285FC0)
  {
    result = swift_getWitnessTable(byte_1F8E50, &type metadata for ContentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285FC0);
  }

  return result;
}

unint64_t sub_F13D0()
{
  result = qword_285FC8;
  if (!qword_285FC8)
  {
    result = swift_getWitnessTable(byte_1F8E78, &type metadata for ContentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285FC8);
  }

  return result;
}

uint64_t sub_F1424(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000044;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEB00000000657079;
    if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x80000000002138D0;
      if (a1 == 0xD000000000000010 && 0x80000000002138D0 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v14 = 0xED00004449726573;
        if (a1 == 0x55746E65746E6F63 && a2 == 0xED00004449726573 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else
        {
          v15 = 0x8000000000215030;
          if (a1 == 0xD000000000000016 && 0x8000000000215030 == a2 || (sub_1E1D30() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 4;
          }

          else if (a1 == 0x53746E65746E6F63 && a2 == 0xEE00657079546275 || (sub_1E1D30() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 5;
          }

          else
          {
            v16 = 0xED00006874676E65;
            if (a1 == 0x4C746E65746E6F63 && a2 == 0xED00006874676E65 || (sub_1E1D30() & 1) != 0)
            {
              a2, v16, a3, a4, a5, a6, a7, a8;
              return 6;
            }

            else
            {
              v17 = 0x8000000000215070;
              if (a1 == 0xD000000000000018 && 0x8000000000215070 == a2 || (sub_1E1D30() & 1) != 0)
              {
                a2, v17, a3, a4, a5, a6, a7, a8;
                return 7;
              }

              else if (a1 == 0x7954736569726573 && a2 == 0xEA00000000006570 || (sub_1E1D30() & 1) != 0)
              {
                a2, v17, a3, a4, a5, a6, a7, a8;
                return 8;
              }

              else
              {
                v18 = 0xEE00657079546E6FLL;
                if (a1 == 0x69746375646F7270 && a2 == 0xEE00657079546E6FLL || (sub_1E1D30() & 1) != 0)
                {
                  a2, v18, a3, a4, a5, a6, a7, a8;
                  return 9;
                }

                else
                {
                  v19 = 0xE900000000000067;
                  if (a1 == 0x616C4661676E616DLL && a2 == 0xE900000000000067 || (sub_1E1D30() & 1) != 0)
                  {
                    a2, v19, a3, a4, a5, a6, a7, a8;
                    return 10;
                  }

                  else
                  {
                    v20 = 0xE900000000000064;
                    if (a1 == 0x656966696E557369 && a2 == 0xE900000000000064 || (sub_1E1D30() & 1) != 0)
                    {
                      a2, v20, a3, a4, a5, a6, a7, a8;
                      return 11;
                    }

                    else
                    {
                      v21 = 0x80000000002150B0;
                      if (a1 == 0xD000000000000012 && 0x80000000002150B0 == a2 || (sub_1E1D30() & 1) != 0)
                      {
                        a2, v21, a3, a4, a5, a6, a7, a8;
                        return 12;
                      }

                      else if (a1 == 0x4B746E65746E6F63 && a2 == 0xEB00000000646E69)
                      {
                        0xEB00000000646E69, 0xEB00000000646E69, a3, a4, a5, a6, a7, a8;
                        return 13;
                      }

                      else
                      {
                        v22 = sub_1E1D30();
                        a2, v23, v24, v25, v26, v27, v28, v29;
                        if (v22)
                        {
                          return 13;
                        }

                        else
                        {
                          return 14;
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

void sub_F18C4(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, _BYTE *a9@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_F194C(uint64_t a1)
{
  v2 = sub_F1B10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F1988(uint64_t a1)
{
  v2 = sub_F1B10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NotificationOptInTypeData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_285FD0, &qword_1F8F60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_F1B10();
  sub_1E1E00();
  v10 = v7;
  sub_F1B64();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_F1B10()
{
  result = qword_285FD8;
  if (!qword_285FD8)
  {
    result = swift_getWitnessTable(a9e, &type metadata for NotificationOptInTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285FD8);
  }

  return result;
}

unint64_t sub_F1B64()
{
  result = qword_285FE0;
  if (!qword_285FE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelType, &type metadata for ModelType, v0, v1);
    atomic_store(result, &qword_285FE0);
  }

  return result;
}

void NotificationOptInTypeData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_285FE8, &qword_1F8F68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_F1B10();
  sub_1E1DF0();
  if (!v2)
  {
    sub_F1D24();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_F1D24()
{
  result = qword_285FF0;
  if (!qword_285FF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelType, &type metadata for ModelType, v0, v1);
    atomic_store(result, &qword_285FF0);
  }

  return result;
}

unint64_t sub_F1DD4()
{
  result = qword_285FF8;
  if (!qword_285FF8)
  {
    result = swift_getWitnessTable(aQe, &type metadata for NotificationOptInTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_285FF8);
  }

  return result;
}

unint64_t sub_F1E2C()
{
  result = qword_286000;
  if (!qword_286000)
  {
    result = swift_getWitnessTable(byte_1F9088, &type metadata for NotificationOptInTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_286000);
  }

  return result;
}

unint64_t sub_F1E84()
{
  result = qword_286008;
  if (!qword_286008)
  {
    result = swift_getWitnessTable(byte_1F90B0, &type metadata for NotificationOptInTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_286008);
  }

  return result;
}

uint64_t ListenEvent.listeningSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ListenEvent.listeningSessionData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ListenEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ListenEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t ListenEvent.Model.listeningSessionData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 42);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_3D9DC(v7, &v6);
}

uint64_t ListenEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  *a1 = *(v1 + 160);
  *(a1 + 16) = v2;
}

uint64_t ListenEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenEvent.Model(0) + 32);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenEvent.Model.init(listeningSessionData:contentData:upSellData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a3 + 16);
  v10 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v10;
  *(a6 + 32) = a1[2];
  *(a6 + 42) = *(a1 + 42);
  v11 = a2[3];
  *(a6 + 96) = a2[2];
  *(a6 + 112) = v11;
  v12 = a2[5];
  *(a6 + 128) = a2[4];
  *(a6 + 144) = v12;
  v13 = a2[1];
  *(a6 + 64) = *a2;
  *(a6 + 80) = v13;
  *(a6 + 160) = *a3;
  *(a6 + 176) = v9;
  v14 = type metadata accessor for ListenEvent.Model(0);
  v15 = *(v14 + 28);
  v16 = sub_1E1150();
  (*(*(v16 - 8) + 32))(a6 + v15, a4, v16);
  v17 = *(v14 + 32);
  v18 = sub_1E11A0();
  v19 = *(*(v18 - 8) + 32);

  return v19(a6 + v17, a5, v18);
}

unint64_t sub_F2A60()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0x61446C6C65537075;
  v4 = 0x746144746E657665;
  if (v1 != 3)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_F2B14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_F4544(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_F2B3C(uint64_t a1)
{
  v2 = sub_F2FFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F2B78(uint64_t a1)
{
  v2 = sub_F2FFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ListenEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_286040, &qword_1F9190);
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v28 - v5;
  sub_48B8(a1, a1[3]);
  sub_F2FFC();
  sub_1E1E00();
  v7 = v2[1];
  v52[0] = *v2;
  v52[1] = v7;
  v9 = *v2;
  v8 = v2[1];
  v53[0] = v2[2];
  *(v53 + 10) = *(v2 + 42);
  v49 = v9;
  v50 = v8;
  v51[0] = v2[2];
  *(v51 + 10) = *(v2 + 42);
  v48 = 0;
  sub_3D9DC(v52, &v43);
  sub_3E638();
  v54 = v6;
  v10 = v28[1];
  sub_1E1CF0();
  if (v10)
  {
    v43 = v49;
    v44 = v50;
    v45[0] = v51[0];
    *(v45 + 10) = *(v51 + 10);
    sub_3E68C(&v43);
    return (*(v29 + 8))(v54, v4);
  }

  else
  {
    v12 = v29;
    v41[0] = v49;
    v41[1] = v50;
    v42[0] = v51[0];
    *(v42 + 10) = *(v51 + 10);
    sub_3E68C(v41);
    v13 = v2[7];
    v14 = v2[5];
    v45[0] = v2[6];
    v45[1] = v13;
    v15 = v2[7];
    v16 = v2[9];
    v46 = v2[8];
    v47 = v16;
    v17 = v2[5];
    v43 = v2[4];
    v44 = v17;
    v37 = v45[0];
    v38 = v15;
    v18 = v2[9];
    v39 = v46;
    v40 = v18;
    v35 = v43;
    v36 = v14;
    v34 = 1;
    sub_13A5C(&v43, v33);
    sub_143D0();
    sub_1E1CF0();
    v33[2] = v37;
    v33[3] = v38;
    v33[4] = v39;
    v33[5] = v40;
    v33[0] = v35;
    v33[1] = v36;
    sub_14424(v33);
    v19 = *(v2 + 22);
    v31 = v2[10];
    v32 = v19;
    v30 = 2;
    sub_28450();

    sub_1E1C80();
    v32, v20, v21, v22, v23, v24, v25, v26;
    type metadata accessor for ListenEvent.Model(0);
    LOBYTE(v31) = 3;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v27 = v54;
    sub_1E1CF0();
    LOBYTE(v31) = 4;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
    return (*(v12 + 8))(v27, v4);
  }
}

unint64_t sub_F2FFC()
{
  result = qword_286048;
  if (!qword_286048)
  {
    result = swift_getWitnessTable(aC_0, &type metadata for ListenEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_286048);
  }

  return result;
}

void ListenEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = sub_1E11A0();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v4 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v45 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_3D68(&qword_286050, &qword_1F9198);
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v9 = v40 - v8;
  v10 = type metadata accessor for ListenEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v64 = a1;
  sub_48B8(a1, v13);
  sub_F2FFC();
  v48 = v9;
  v14 = v49;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v64, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v49 = v7;
    v41 = v4;
    v22 = v12;
    v23 = v45;
    v60 = 0;
    sub_3F258();
    v24 = v46;
    sub_1E1C20();
    v25 = v62;
    *v22 = v61;
    *(v22 + 16) = v25;
    *(v22 + 32) = *v63;
    *(v22 + 42) = *&v63[10];
    v53 = 1;
    sub_14CB8();
    sub_1E1C20();
    v26 = v57;
    *(v22 + 96) = v56;
    *(v22 + 112) = v26;
    v27 = v59;
    *(v22 + 128) = v58;
    *(v22 + 144) = v27;
    v28 = v55;
    *(v22 + 64) = v54;
    *(v22 + 80) = v28;
    v50 = 2;
    sub_28EF4();
    v40[1] = 0;
    sub_1E1BB0();
    v40[0] = v10;
    v29 = v52;
    *(v22 + 160) = v51;
    *(v22 + 176) = v29;
    LOBYTE(v51) = 3;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v30 = v49;
    sub_1E1C20();
    (*(v23 + 32))(v22 + *(v40[0] + 28), v30, v5);
    LOBYTE(v51) = 4;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v31 = v41;
    v32 = v44;
    sub_1E1C20();
    (*(v47 + 8))(v48, v24);
    (*(v42 + 32))(v22 + *(v40[0] + 32), v31, v32);
    sub_F374C(v22, v43);
    sub_4E48(v64, v33, v34, v35, v36, v37, v38, v39);
    sub_F37B0(v22);
  }
}

uint64_t sub_F374C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListenEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F37B0(uint64_t a1)
{
  v2 = type metadata accessor for ListenEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F38AC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_F3A90(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
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

  v14 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_F3CB0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
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

  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_F3EC8(uint64_t a1)
{
  sub_F403C(319, &qword_27F998, sub_3F258, sub_3E638, &type metadata for ListeningSessionData);
  if (v1 <= 0x3F)
  {
    sub_F403C(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
    if (v2 <= 0x3F)
    {
      sub_F403C(319, &qword_27EAE8, sub_28EF4, sub_28450, &type metadata for UpSellData);
      if (v3 <= 0x3F)
      {
        sub_5684(319);
        if (v4 <= 0x3F)
        {
          sub_5750(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_F403C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_F40CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_F4204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_F4328(uint64_t a1)
{
  sub_F43DC();
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

void sub_F43DC()
{
  if (!qword_27EBC8)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_27EBC8);
    }
  }
}

unint64_t sub_F4440()
{
  result = qword_286198;
  if (!qword_286198)
  {
    result = swift_getWitnessTable(aC_1, &type metadata for ListenEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_286198);
  }

  return result;
}

unint64_t sub_F4498()
{
  result = qword_2861A0;
  if (!qword_2861A0)
  {
    result = swift_getWitnessTable(aMc, &type metadata for ListenEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2861A0);
  }

  return result;
}

unint64_t sub_F44F0()
{
  result = qword_2861A8;
  if (!qword_2861A8)
  {
    result = swift_getWitnessTable(aUc, &type metadata for ListenEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2861A8);
  }

  return result;
}

uint64_t sub_F4544(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000213D80;
  if (a1 == 0xD000000000000014 && 0x8000000000213D80 == a2 || (sub_1E1D30() & 1) != 0)
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

    else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
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

void sub_F4744(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000000002160C0 == a2)
  {
    a2, 0x80000000002160C0, 0xD000000000000014, a3, a4, a5, a6, a7;
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

uint64_t sub_F47D8(uint64_t a1)
{
  v2 = sub_F49F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F4814(uint64_t a1)
{
  v2 = sub_F49F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchResultsData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2861B0, &qword_1F93C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_F49F4();

  sub_1E1E00();
  v16[1] = v7;
  sub_3D68(&qword_2861C0, &qword_1F93C8);
  sub_F4C4C(&qword_2861C8, sub_F4A48, &protocol conformance descriptor for <A> [A]);
  sub_1E1CF0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_F49F4()
{
  result = qword_2861B8;
  if (!qword_2861B8)
  {
    result = swift_getWitnessTable(byte_1F95A8, &type metadata for SearchResultsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2861B8);
  }

  return result;
}

unint64_t sub_F4A48()
{
  result = qword_2861D0;
  if (!qword_2861D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchResultsItemTypeData, &type metadata for SearchResultsItemTypeData, v0, v1);
    atomic_store(result, &qword_2861D0);
  }

  return result;
}

void SearchResultsData.init(from:)(BAEventReporter **a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3D68(&qword_2861D8, &qword_1F93D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_F49F4();
  sub_1E1DF0();
  if (!v2)
  {
    sub_3D68(&qword_2861C0, &qword_1F93C8);
    sub_F4C4C(&qword_2861E0, sub_F4CC4, &protocol conformance descriptor for <A> [A]);
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v16[1];
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_F4C4C(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_5DE50(&qword_2861C0, &qword_1F93C8);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_F4CC4()
{
  result = qword_2861E8;
  if (!qword_2861E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchResultsItemTypeData, &type metadata for SearchResultsItemTypeData, v0, v1);
    atomic_store(result, &qword_2861E8);
  }

  return result;
}

unint64_t sub_F4D74()
{
  result = qword_2861F0;
  if (!qword_2861F0)
  {
    result = swift_getWitnessTable(byte_1F9580, &type metadata for SearchResultsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2861F0);
  }

  return result;
}

unint64_t sub_F4DCC()
{
  result = qword_2861F8;
  if (!qword_2861F8)
  {
    result = swift_getWitnessTable(a1a, &type metadata for SearchResultsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2861F8);
  }

  return result;
}

unint64_t sub_F4E24()
{
  result = qword_286200;
  if (!qword_286200)
  {
    result = swift_getWitnessTable(byte_1F9518, &type metadata for SearchResultsData.CodingKeys, v0, v1);
    atomic_store(result, &qword_286200);
  }

  return result;
}

uint64_t ViewSupplementalContentEvent.viewSourceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ViewSupplementalContentEvent(0) + 20);
  v4 = sub_3D68(&qword_286238, &qword_1F95F8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ViewSupplementalContentEvent.viewSourceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ViewSupplementalContentEvent(0) + 20);
  v4 = sub_3D68(&qword_286238, &qword_1F95F8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ViewSupplementalContentEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ViewSupplementalContentEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ViewSupplementalContentEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ViewSupplementalContentEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ViewSupplementalContentEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ViewSupplementalContentEvent(0);
  v5 = *(v4 + 20);
  v6 = enum case for EventProperty.required<A>(_:);
  v7 = sub_3D68(&qword_286238, &qword_1F95F8);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = *(v4 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v8, v6, v9);
}

uint64_t ReadingSettingsContextualViewEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
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

uint64_t ViewSupplementalContentEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ViewSupplementalContentEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ViewSupplementalContentEvent.Model.init(contentData:viewSourceData:eventData:)@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
  v10 = *(type metadata accessor for ViewSupplementalContentEvent.Model(0) + 24);
  v11 = sub_1E1150();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t sub_F54C8()
{
  v1 = 0x72756F5377656976;
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

uint64_t sub_F553C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_F67A4(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_F5564(uint64_t a1)
{
  v2 = sub_F5874();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F55A0(uint64_t a1)
{
  v2 = sub_F5874();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ViewSupplementalContentEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_286240, &qword_1F9600);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-v6];
  sub_48B8(a1, a1[3]);
  sub_F5874();
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
  sub_437B4(&v31, &v18);
  sub_143D0();
  v14 = v37;
  sub_1E1C80();
  if (v14)
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_440C0(&v18);
  }

  else
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_440C0(&v18);
    v17 = *(v2 + 96);
    v16[14] = 1;
    sub_F58C8();
    sub_1E1CF0();
    type metadata accessor for ViewSupplementalContentEvent.Model(0);
    v17 = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_F5874()
{
  result = qword_286248;
  if (!qword_286248)
  {
    result = swift_getWitnessTable(byte_1F97D8, &type metadata for ViewSupplementalContentEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_286248);
  }

  return result;
}

unint64_t sub_F58C8()
{
  result = qword_286250;
  if (!qword_286250)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewSourceData, &type metadata for ViewSourceData, v0, v1);
    atomic_store(result, &qword_286250);
  }

  return result;
}

void ViewSupplementalContentEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_1E1150();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_3D68(&qword_286258, &qword_1F9608);
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = &v33 - v7;
  v9 = type metadata accessor for ViewSupplementalContentEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v38 = a1;
  sub_48B8(a1, v12);
  sub_F5874();
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
    sub_1E1BB0();
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
    sub_F5D14();
    sub_1E1C20();
    v11[96] = v39[0];
    LOBYTE(v39[0]) = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v8, v22);
    (*(v34 + 32))(&v11[*(v33 + 24)], v21, v4);
    sub_F5D68(v11, v35);
    sub_4E48(v38, v26, v27, v28, v29, v30, v31, v32);
    sub_F5DCC(v11);
  }
}

unint64_t sub_F5D14()
{
  result = qword_286260;
  if (!qword_286260)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewSourceData, &type metadata for ViewSourceData, v0, v1);
    atomic_store(result, &qword_286260);
  }

  return result;
}

uint64_t sub_F5D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewSupplementalContentEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F5DCC(uint64_t a1)
{
  v2 = type metadata accessor for ViewSupplementalContentEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F5EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_286238, &qword_1F95F8);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = *(a1 + 24);
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v9, v7, v10);
}

uint64_t sub_F600C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = sub_3D68(&qword_286238, &qword_1F95F8);
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

uint64_t sub_F6184(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

  v13 = sub_3D68(&qword_286238, &qword_1F95F8);
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

void sub_F62F4(uint64_t a1)
{
  sub_F6400(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_F6400(319, &unk_2862D0, sub_F5D14, sub_F58C8, &type metadata for ViewSourceData);
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

void sub_F6400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_F6490(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_F655C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_F6600(uint64_t a1)
{
  sub_45610();
  if (v1 <= 0x3F)
  {
    sub_1E1150();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_F66A0()
{
  result = qword_2863A0;
  if (!qword_2863A0)
  {
    result = swift_getWitnessTable(byte_1F97B0, &type metadata for ViewSupplementalContentEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2863A0);
  }

  return result;
}

unint64_t sub_F66F8()
{
  result = qword_2863A8;
  if (!qword_2863A8)
  {
    result = swift_getWitnessTable(byte_1F9720, &type metadata for ViewSupplementalContentEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2863A8);
  }

  return result;
}

unint64_t sub_F6750()
{
  result = qword_2863B0;
  if (!qword_2863B0)
  {
    result = swift_getWitnessTable(byte_1F9748, &type metadata for ViewSupplementalContentEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2863B0);
  }

  return result;
}

uint64_t sub_F67A4(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
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
    v13 = 0xEE00617461446563;
    if (a1 == 0x72756F5377656976 && a2 == 0xEE00617461446563 || (sub_1E1D30() & 1) != 0)
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

uint64_t SearchEndEvent.searchEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEndEvent(0) + 20);
  v4 = sub_3D68(&qword_2863E8, &qword_1F9828);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchEndEvent.searchEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchEndEvent(0) + 20);
  v4 = sub_3D68(&qword_2863E8, &qword_1F9828);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchEndEvent.searchSuggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEndEvent(0) + 24);
  v4 = sub_3D68(&qword_2863F0, &qword_1FA280);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchEndEvent.searchSuggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchEndEvent(0) + 24);
  v4 = sub_3D68(&qword_2863F0, &qword_1FA280);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchEndEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEndEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchEndEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchEndEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchEndEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchEndEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.required<A>(_:);
  v7 = sub_3D68(&qword_2863E8, &qword_1F9828);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_2863F0, &qword_1FA280);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v6, v11);
}

uint64_t SearchCompleteEvent.Model.searchSuggestionData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t SearchEndEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEndEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchEndEvent.Model.init(searchData:searchEndData:searchSuggestionData:eventData:)@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v8;
  *(a5 + 32) = v7;
  *(a5 + 40) = *a3;
  v9 = *(type metadata accessor for SearchEndEvent.Model(0) + 28);
  v10 = sub_1E1150();
  v11 = *(*(v10 - 8) + 32);

  return v11(a5 + v9, a4, v10);
}

unint64_t sub_F7084()
{
  v1 = 0x6144686372616573;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (*v0)
  {
    v1 = 0x6E45686372616573;
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

uint64_t sub_F7118@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_F84A8(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_F7140(uint64_t a1)
{
  v2 = sub_F7420();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F717C(uint64_t a1)
{
  v2 = sub_F7420();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchEndEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_2863F8, &qword_1F9830);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_48B8(a1, a1[3]);
  sub_F7420();
  sub_1E1E00();
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v27 = *v3;
  v28 = v9;
  v29 = v10;
  v30 = v11;
  v26 = 0;
  sub_2EB50(v27, v9, v10, v11);
  sub_81E44();
  sub_1E1C80();
  sub_2F7F0(v27, v28, v29, v30, v12, v13, v14, v15);
  if (!v2)
  {
    LOBYTE(v27) = *(v3 + 32);
    v26 = 1;
    sub_25B44();
    sub_1E1CF0();
    v16 = *(v3 + 48);
    v27 = *(v3 + 40);
    v28 = v16;
    v26 = 2;
    sub_F7474();

    sub_1E1C80();
    v28, v17, v18, v19, v20, v21, v22, v23;
    type metadata accessor for SearchEndEvent.Model(0);
    LOBYTE(v27) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_F7420()
{
  result = qword_286400;
  if (!qword_286400)
  {
    result = swift_getWitnessTable(aY_11, &type metadata for SearchEndEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_286400);
  }

  return result;
}

unint64_t sub_F7474()
{
  result = qword_286408;
  if (!qword_286408)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchSuggestionData, &type metadata for SearchSuggestionData, v0, v1);
    atomic_store(result, &qword_286408);
  }

  return result;
}

void SearchEndEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_1E1150();
  v33 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_286410, &qword_1F9838);
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for SearchEndEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v37 = a1;
  sub_48B8(a1, v13);
  sub_F7420();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v37, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = v35;
    v32 = v6;
    v40 = 0;
    sub_826DC();
    v22 = v36;
    sub_1E1BB0();
    v23 = v39;
    *v12 = v38;
    *(v12 + 1) = v23;
    v40 = 1;
    sub_25AEC();
    sub_1E1C20();
    v12[32] = v38;
    v40 = 2;
    sub_F7894();
    sub_1E1BB0();
    *(v12 + 40) = v38;
    LOBYTE(v38) = 3;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v24 = v32;
    sub_1E1C20();
    (*(v21 + 8))(v9, v22);
    (*(v33 + 32))(&v12[*(v10 + 28)], v24, v4);
    sub_F78E8(v12, v34);
    sub_4E48(v37, v25, v26, v27, v28, v29, v30, v31);
    sub_F794C(v12);
  }
}

unint64_t sub_F7894()
{
  result = qword_286418;
  if (!qword_286418)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchSuggestionData, &type metadata for SearchSuggestionData, v0, v1);
    atomic_store(result, &qword_286418);
  }

  return result;
}

uint64_t sub_F78E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchEndEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F794C(uint64_t a1)
{
  v2 = type metadata accessor for SearchEndEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F7A48@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_2863E8, &qword_1F9828);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_2863F0, &qword_1FA280);
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v7, v12);
}

uint64_t sub_F7BE0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_281D58, &qword_1EE340);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_2863E8, &qword_1F9828);
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

  v14 = sub_3D68(&qword_2863F0, &qword_1FA280);
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

uint64_t sub_F7DAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_281D58, &qword_1EE340);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_2863E8, &qword_1F9828);
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

  v16 = sub_3D68(&qword_2863F0, &qword_1FA280);
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

void sub_F7F70(uint64_t a1)
{
  sub_F80CC(319, &qword_281E38, sub_826DC, sub_81E44, &type metadata for SearchData);
  if (v1 <= 0x3F)
  {
    sub_F80CC(319, &qword_286488, sub_25AEC, sub_25B44, &type metadata for SearchEndData);
    if (v2 <= 0x3F)
    {
      sub_F80CC(319, &unk_286490, sub_F7894, sub_F7474, &type metadata for SearchSuggestionData);
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

void sub_F80CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_F815C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_F8228(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_F82CC(uint64_t a1)
{
  sub_19FE0(319, &qword_282190, &type metadata for SearchData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &unk_286530, &type metadata for SearchSuggestionData);
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

unint64_t sub_F83A4()
{
  result = qword_286568;
  if (!qword_286568)
  {
    result = swift_getWitnessTable(byte_1F99D8, &type metadata for SearchEndEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_286568);
  }

  return result;
}

unint64_t sub_F83FC()
{
  result = qword_286570;
  if (!qword_286570)
  {
    result = swift_getWitnessTable(byte_1F9948, &type metadata for SearchEndEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_286570);
  }

  return result;
}

unint64_t sub_F8454()
{
  result = qword_286578;
  if (!qword_286578)
  {
    result = swift_getWitnessTable(byte_1F9970, &type metadata for SearchEndEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_286578);
  }

  return result;
}

uint64_t sub_F84A8(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6144686372616573 && a2 == 0xEA00000000006174;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xED00006174614464;
    if (a1 == 0x6E45686372616573 && a2 == 0xED00006174614464 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x80000000002160E0;
      if (a1 == 0xD000000000000014 && 0x80000000002160E0 == a2 || (sub_1E1D30() & 1) != 0)
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

void sub_F8644(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
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

uint64_t sub_F86CC(uint64_t a1)
{
  v2 = sub_F8B00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F8708(uint64_t a1)
{
  v2 = sub_F8B00();

  return CodingKey.debugDescription.getter(a1, v2);
}

void Rating.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_286580, &qword_1F9A50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v74 - v7;
  sub_48B8(a1, a1[3]);
  sub_F8B00();
  sub_1E1DF0();
  if (!v2)
  {
    v17 = sub_1E1BE0();
    v18 = v16;
    v19 = v17 == 0x6E776F6E6B6E75 && v16 == 0xE700000000000000;
    if (v19 || (sub_1E1D30() & 1) != 0)
    {
      (*(v6 + 8))(v8, v5);
      v18, v20, v21, v22, v23, v24, v25, v26;
      *a2 = 0;
    }

    else
    {
      v27 = v17 == 49 && v18 == 0xE100000000000000;
      if (v27 || (sub_1E1D30() & 1) != 0)
      {
        (*(v6 + 8))(v8, v5);
        v18, v28, v29, v30, v31, v32, v33, v34;
        *a2 = 1;
      }

      else
      {
        v35 = v17 == 50 && v18 == 0xE100000000000000;
        if (v35 || (sub_1E1D30() & 1) != 0)
        {
          (*(v6 + 8))(v8, v5);
          v18, v36, v37, v38, v39, v40, v41, v42;
          *a2 = 2;
        }

        else
        {
          v43 = v17 == 51 && v18 == 0xE100000000000000;
          if (v43 || (sub_1E1D30() & 1) != 0)
          {
            (*(v6 + 8))(v8, v5);
            v18, v44, v45, v46, v47, v48, v49, v50;
            *a2 = 3;
          }

          else
          {
            v51 = v17 == 52 && v18 == 0xE100000000000000;
            if (v51 || (sub_1E1D30() & 1) != 0)
            {
              (*(v6 + 8))(v8, v5);
              v18, v59, v60, v61, v62, v63, v64, v65;
              *a2 = 4;
            }

            else
            {
              if (v17 == 53 && v18 == 0xE100000000000000)
              {
                0xE100000000000000, v52, v53, v54, v55, v56, v57, v58;
              }

              else
              {
                v66 = sub_1E1D30();
                v18, v67, v68, v69, v70, v71, v72, v73;
                if ((v66 & 1) == 0)
                {
                  sub_F8B54();
                  swift_allocError();
                  swift_willThrow();
                  (*(v6 + 8))(v8, v5);
                  goto LABEL_8;
                }
              }

              (*(v6 + 8))(v8, v5);
              *a2 = 5;
            }
          }
        }
      }
    }
  }

LABEL_8:
  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_F8B00()
{
  result = qword_286588;
  if (!qword_286588)
  {
    result = swift_getWitnessTable(byte_1F9CEC, &type metadata for Rating.Key, v0, v1);
    atomic_store(result, &qword_286588);
  }

  return result;
}

unint64_t sub_F8B54()
{
  result = qword_286590;
  if (!qword_286590)
  {
    result = swift_getWitnessTable(aEd, &type metadata for Rating.CodingError, v0, v1);
    atomic_store(result, &qword_286590);
  }

  return result;
}

uint64_t Rating.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_286598, &qword_1F9A58);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_48B8(a1, a1[3]);
  sub_F8B00();
  sub_1E1E00();
  sub_1E1CB0();
  return (*(v3 + 8))(v5, v2);
}

BookAnalytics::Rating_optional __swiftcall Rating.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260C88;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 6;
  if (v5 < 6)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t Rating.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6565726874;
  v4 = 1920298854;
  if (v1 != 4)
  {
    v4 = 1702259046;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6647407;
  if (v1 != 1)
  {
    v5 = 7305076;
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

unint64_t sub_F8E48()
{
  result = qword_2865A0;
  if (!qword_2865A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Rating, &type metadata for Rating, v0, v1);
    atomic_store(result, &qword_2865A0);
  }

  return result;
}

void sub_F8EA4(uint64_t a1)
{
  v2 = 0xE700000000000000;
  v3 = 0xE500000000000000;
  if (*v1 != 3)
  {
    v3 = 0xE400000000000000;
  }

  if (*v1)
  {
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 2u)
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

void sub_F8F84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE500000000000000;
  v6 = 0x6565726874;
  v7 = 1920298854;
  if (v2 != 4)
  {
    v7 = 1702259046;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 6647407;
  if (v2 != 1)
  {
    v8 = 7305076;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_F908C()
{
  result = qword_2865A8;
  if (!qword_2865A8)
  {
    result = swift_getWitnessTable(aM_6, &type metadata for Rating.Key, v0, v1);
    atomic_store(result, &qword_2865A8);
  }

  return result;
}

unint64_t sub_F90E4()
{
  result = qword_2865B0;
  if (!qword_2865B0)
  {
    result = swift_getWitnessTable(byte_1F9C84, &type metadata for Rating.CodingError, v0, v1);
    atomic_store(result, &qword_2865B0);
  }

  return result;
}

unint64_t sub_F913C()
{
  result = qword_2865B8;
  if (!qword_2865B8)
  {
    result = swift_getWitnessTable(byte_1F9B8C, &type metadata for Rating.Key, v0, v1);
    atomic_store(result, &qword_2865B8);
  }

  return result;
}

unint64_t sub_F9194()
{
  result = qword_2865C0;
  if (!qword_2865C0)
  {
    result = swift_getWitnessTable(asc_1F9BB4, &type metadata for Rating.Key, v0, v1);
    atomic_store(result, &qword_2865C0);
  }

  return result;
}

BookAnalytics::OrientationData __swiftcall OrientationData.init(deviceOrientation:screenHeight:screenWidth:windowHeight:windowWidth:)(BookAnalytics::DeviceOrientation deviceOrientation, Swift::Int32 screenHeight, Swift::Int32 screenWidth, Swift::Int32 windowHeight, Swift::Int32 windowWidth)
{
  *v5 = *deviceOrientation;
  *(v5 + 4) = screenHeight;
  *(v5 + 8) = screenWidth;
  *(v5 + 12) = windowHeight;
  *(v5 + 16) = windowWidth;
  result.windowWidth = screenWidth;
  result.screenWidth = screenHeight;
  result.deviceOrientation = deviceOrientation;
  return result;
}

unint64_t sub_F9244()
{
  v1 = *v0;
  v2 = 0x65486E6565726373;
  v3 = 0x69576E6565726373;
  v4 = 0x6548776F646E6977;
  if (v1 != 3)
  {
    v4 = 0x6957776F646E6977;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
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

uint64_t sub_F92F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_F9BD4(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_F9320(uint64_t a1)
{
  v2 = sub_F99B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F935C(uint64_t a1)
{
  v2 = sub_F99B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t OrientationData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_2865C8, &qword_1F9D40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v12[2] = *(v1 + 2);
  v12[3] = v9;
  v10 = *(v1 + 3);
  v12[0] = *(v1 + 4);
  v12[1] = v10;
  sub_48B8(a1, a1[3]);
  sub_F99B4();
  sub_1E1E00();
  v18 = v8;
  v17 = 0;
  sub_C36A0();
  sub_1E1CF0();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v16 = 1;
  sub_1E1D00();
  v15 = 2;
  sub_1E1D00();
  v14 = 3;
  sub_1E1D00();
  v13 = 4;
  sub_1E1D00();
  return (*(v5 + 8))(v7, v4);
}

void OrientationData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_2865D8, &qword_1F9D48);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_48B8(a1, a1[3]);
  sub_F99B4();
  sub_1E1DF0();
  if (!v2)
  {
    v28 = 0;
    sub_C36F4();
    sub_1E1C20();
    v16 = v29;
    v27 = 1;
    v17 = sub_1E1C30();
    v26 = 2;
    v23 = sub_1E1C30();
    v25 = 3;
    v22 = sub_1E1C30();
    v24 = 4;
    v18 = sub_1E1C30();
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    v19 = v22;
    v20 = v23;
    *(a2 + 4) = v17;
    *(a2 + 8) = v20;
    *(a2 + 12) = v19;
    *(a2 + 16) = v18;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

BOOL _s13BookAnalytics15OrientationDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v10 = *(a1 + 1);
  v9 = *(a1 + 2);
  v12 = *(a1 + 3);
  v11 = *(a1 + 4);
  v13 = *(a2 + 4);
  v14 = *(a2 + 8);
  v16 = *(a2 + 12);
  v15 = *(a2 + 16);
  v17 = 0xE800000000000000;
  v18 = 0x7469617274726F70;
  if (v8 != 1)
  {
    v18 = 0x70616373646E616CLL;
    v17 = 0xE900000000000065;
  }

  if (*a1)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0xE700000000000000;
  }

  v21 = 0xE800000000000000;
  v22 = 0x7469617274726F70;
  if (*a2 != 1)
  {
    v22 = 0x70616373646E616CLL;
    v21 = 0xE900000000000065;
  }

  if (*a2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0xE700000000000000;
  }

  if (v19 == v23 && v20 == v24)
  {
    v20, a2, v23, a4, a5, a6, a7, a8;
    v24, v25, v26, v27, v28, v29, v30, v31;
    result = 0;
    if (v10 != v13 || v9 != v14 || v12 != v16)
    {
      return result;
    }

    return v11 == v15;
  }

  v49 = *(a2 + 16);
  v33 = v11;
  v34 = sub_1E1D30();
  v20, v35, v36, v37, v38, v39, v40, v41;
  v24, v42, v43, v44, v45, v46, v47, v48;
  result = 0;
  if ((v34 & 1) != 0 && v10 == v13 && v9 == v14)
  {
    v11 = v33;
    v15 = v49;
    if (v12 == v16)
    {
      return v11 == v15;
    }
  }

  return result;
}

unint64_t sub_F99B4()
{
  result = qword_2865D0;
  if (!qword_2865D0)
  {
    result = swift_getWitnessTable(aM7, &type metadata for OrientationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2865D0);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for OrientationData(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for OrientationData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[20])
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

uint64_t storeEnumTagSinglePayload for OrientationData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_F9AD0()
{
  result = qword_2865E0;
  if (!qword_2865E0)
  {
    result = swift_getWitnessTable(aE7, &type metadata for OrientationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2865E0);
  }

  return result;
}

unint64_t sub_F9B28()
{
  result = qword_2865E8;
  if (!qword_2865E8)
  {
    result = swift_getWitnessTable(byte_1F9E74, &type metadata for OrientationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2865E8);
  }

  return result;
}

unint64_t sub_F9B80()
{
  result = qword_2865F0;
  if (!qword_2865F0)
  {
    result = swift_getWitnessTable(byte_1F9E9C, &type metadata for OrientationData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2865F0);
  }

  return result;
}

uint64_t sub_F9BD4(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000215610;
  if (a1 == 0xD000000000000011 && 0x8000000000215610 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x65486E6565726373 && a2 == 0xEC00000074686769 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x69576E6565726373 && a2 == 0xEB00000000687464 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x6548776F646E6977 && a2 == 0xEC00000074686769 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else if (a1 == 0x6957776F646E6977 && a2 == 0xEB00000000687464)
  {
    0xEB00000000687464, v10, a3, a4, a5, a6, a7, a8;
    return 4;
  }

  else
  {
    v12 = sub_1E1D30();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t MarkAsFinishedEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MarkAsFinishedEvent(0) + 20);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MarkAsFinishedEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MarkAsFinishedEvent(0) + 20);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MarkAsFinishedEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MarkAsFinishedEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MarkAsFinishedEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MarkAsFinishedEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MarkAsFinishedEvent.markedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MarkAsFinishedEvent(0) + 28);
  v4 = sub_3D68(&qword_286628, &unk_1F9F88);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MarkAsFinishedEvent.markedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MarkAsFinishedEvent(0) + 28);
  v4 = sub_3D68(&qword_286628, &unk_1F9F88);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MarkAsFinishedEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MarkAsFinishedEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MarkAsFinishedEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MarkAsFinishedEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MarkAsFinishedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for MarkAsFinishedEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_286628, &unk_1F9F88);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t UPPContentBrickExposureEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[12];
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  v6 = v1[16];
  v7 = v1[17];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t MarkAsFinishedEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MarkAsFinishedEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MarkAsFinishedEvent.Model.init(contentData:seriesData:suggestionData:markedData:eventData:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a3;
  v9 = *a4;
  v10 = a1[3];
  *(a6 + 32) = a1[2];
  *(a6 + 48) = v10;
  v11 = a1[5];
  *(a6 + 64) = a1[4];
  *(a6 + 80) = v11;
  v12 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v12;
  v13 = a2[1];
  *(a6 + 96) = *a2;
  *(a6 + 112) = v13;
  *(a6 + 128) = a2[2];
  *(a6 + 144) = v8;
  *(a6 + 145) = v9;
  v14 = *(type metadata accessor for MarkAsFinishedEvent.Model(0) + 32);
  v15 = sub_1E1150();
  v16 = *(*(v15 - 8) + 32);

  return v16(a6 + v14, a5, v15);
}

uint64_t sub_FA740()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0x6974736567677573;
  v4 = 0x614464656B72616DLL;
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
    v2 = 0x6144736569726573;
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

uint64_t sub_FA7FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_FBEEC(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_FA824(uint64_t a1)
{
  v2 = sub_FABE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_FA860(uint64_t a1)
{
  v2 = sub_FABE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MarkAsFinishedEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_286630, &qword_1F9F98);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  sub_48B8(a1, a1[3]);
  sub_FABE8();
  sub_1E1E00();
  v8 = *(v2 + 48);
  v9 = *(v2 + 16);
  v40 = *(v2 + 32);
  v41 = v8;
  v10 = *(v2 + 48);
  v11 = *(v2 + 80);
  v42 = *(v2 + 64);
  v43 = v11;
  v12 = *(v2 + 16);
  v39[0] = *v2;
  v39[1] = v12;
  v35 = v40;
  v36 = v10;
  v13 = *(v2 + 80);
  v37 = v42;
  v38 = v13;
  v33 = v39[0];
  v34 = v9;
  v32 = 0;
  sub_13A5C(v39, v31);
  sub_143D0();
  v14 = v44;
  sub_1E1CF0();
  v31[2] = v35;
  v31[3] = v36;
  v31[4] = v37;
  v31[5] = v38;
  v31[0] = v33;
  v31[1] = v34;
  sub_14424(v31);
  if (!v14)
  {
    v15 = *(v2 + 104);
    v16 = *(v2 + 112);
    v17 = *(v2 + 120);
    v18 = *(v2 + 128);
    v19 = *(v2 + 136);
    v25 = *(v2 + 96);
    v26 = v15;
    v27 = v16;
    v28 = v17;
    v29 = v18;
    v30 = v19;
    v24 = 1;
    sub_13BDC(v25, v15, v16, v17, v18, v19);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v25, v26, v27, v28, v29, v30, v20, v21);
    LOBYTE(v25) = *(v2 + 144);
    v24 = 2;
    sub_284F8();
    sub_1E1C80();
    LOBYTE(v25) = *(v2 + 145);
    v24 = 3;
    sub_FAC3C();
    sub_1E1C80();
    type metadata accessor for MarkAsFinishedEvent.Model(0);
    LOBYTE(v25) = 4;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_FABE8()
{
  result = qword_286638;
  if (!qword_286638)
  {
    result = swift_getWitnessTable(byte_1FA180, &type metadata for MarkAsFinishedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_286638);
  }

  return result;
}

unint64_t sub_FAC3C()
{
  result = qword_286640;
  if (!qword_286640)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MarkedData, &type metadata for MarkedData, v0, v1);
    atomic_store(result, &qword_286640);
  }

  return result;
}

void MarkAsFinishedEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1E1150();
  v31 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_3D68(&qword_286648, &qword_1F9FA0);
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = type metadata accessor for MarkAsFinishedEvent.Model(0);
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v36 = a1;
  sub_48B8(a1, v9);
  sub_FABE8();
  v10 = v35;
  sub_1E1DF0();
  if (v10)
  {
    sub_4E48(v36, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v35 = v5;
    v18 = v33;
    v47 = 0;
    sub_14CB8();
    sub_1E1C20();
    v19 = v43;
    *(v8 + 2) = v42;
    *(v8 + 3) = v19;
    v20 = v45;
    *(v8 + 4) = v44;
    *(v8 + 5) = v20;
    v21 = v41;
    *v8 = v40;
    *(v8 + 1) = v21;
    v46 = 1;
    sub_DAD8();
    sub_1E1BB0();
    v22 = v38;
    *(v8 + 6) = v37;
    *(v8 + 7) = v22;
    *(v8 + 8) = v39;
    v46 = 2;
    sub_28F9C();
    sub_1E1BB0();
    v8[144] = v37;
    v46 = 3;
    sub_FB170();
    sub_1E1BB0();
    v8[145] = v37;
    LOBYTE(v37) = 4;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v23 = v35;
    sub_1E1C20();
    (*(v18 + 8))(0, v34);
    (*(v31 + 32))(&v8[*(v6 + 32)], v23, v3);
    sub_FB1C4(v8, v32);
    sub_4E48(v36, v24, v25, v26, v27, v28, v29, v30);
    sub_FB228(v8);
  }
}

unint64_t sub_FB170()
{
  result = qword_286650;
  if (!qword_286650)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MarkedData, &type metadata for MarkedData, v0, v1);
    atomic_store(result, &qword_286650);
  }

  return result;
}

uint64_t sub_FB1C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarkAsFinishedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_FB228(uint64_t a1)
{
  v2 = type metadata accessor for MarkAsFinishedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_FB324@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_286628, &unk_1F9F88);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_FB508(uint64_t a1, uint64_t a2, int *a3)
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

  v11 = sub_3D68(&qword_27DD80, &qword_1E4D30);
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

  v14 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_286628, &unk_1F9F88);
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

uint64_t sub_FB728(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  v13 = sub_3D68(&qword_27DD80, &qword_1E4D30);
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

  v16 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_286628, &unk_1F9F88);
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

void sub_FB940(uint64_t a1)
{
  sub_FBAEC(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_FBAEC(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
    if (v2 <= 0x3F)
    {
      sub_FBAEC(319, &unk_27EAF8, sub_28F9C, sub_284F8, &type metadata for SuggestionData);
      if (v3 <= 0x3F)
      {
        sub_FBAEC(319, &unk_2866C0, sub_FB170, sub_FAC3C, &type metadata for MarkedData);
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

void sub_FBAEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_FBB7C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_FBC3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_FBCE0(uint64_t a1)
{
  sub_19FE0(319, &qword_27E398, &type metadata for SeriesData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_27EBD8, &type metadata for SuggestionData);
    if (v2 <= 0x3F)
    {
      sub_19FE0(319, &unk_286768, &type metadata for MarkedData);
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

unint64_t sub_FBDE8()
{
  result = qword_2867A8;
  if (!qword_2867A8)
  {
    result = swift_getWitnessTable(byte_1FA158, &type metadata for MarkAsFinishedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2867A8);
  }

  return result;
}

unint64_t sub_FBE40()
{
  result = qword_2867B0;
  if (!qword_2867B0)
  {
    result = swift_getWitnessTable(aY5, &type metadata for MarkAsFinishedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2867B0);
  }

  return result;
}

unint64_t sub_FBE98()
{
  result = qword_2867B8;
  if (!qword_2867B8)
  {
    result = swift_getWitnessTable(aA5, &type metadata for MarkAsFinishedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2867B8);
  }

  return result;
}

uint64_t sub_FBEEC(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000617461;
  v11 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
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
    v13 = 0xEE00617461446E6FLL;
    if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x614464656B72616DLL && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v13, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else
    {
      v14 = sub_1E1D30();
      a2, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
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

void sub_FC0C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v4, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t ExposureCollector.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t ExposureCollector.init()()
{
  result = v0;
  *(v0 + 16) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t ExposureCollector.__deallocating_deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocClassInstance(v8, 24, 7);
}

uint64_t EnvironmentValues.exposureCollector.getter()
{
  sub_FC238();
  sub_1E1490();
  return v1;
}

unint64_t sub_FC238()
{
  result = qword_2867C0;
  if (!qword_2867C0)
  {
    result = swift_getWitnessTable(byte_1FA248, &type metadata for ExposureCollectorKey, v0, v1);
    atomic_store(result, &qword_2867C0);
  }

  return result;
}

void *sub_FC28C@<X0>(void *a1@<X8>)
{
  sub_FC238();
  result = sub_1E1490();
  *a1 = v3;
  return result;
}

uint64_t sub_FC2DC(uint64_t *a1)
{
  sub_FC238();

  return sub_1E14A0();
}

void View.exposureCollecting(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for ExposureCollector();
  sub_1E16F0();
  sub_1E1500();
  v18, v4, v5, v6, v7, v8, v9, v10;
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
}

void *sub_FC3E0@<X0>(void *a1@<X8>)
{
  sub_FC238();
  result = sub_1E1490();
  *a1 = v3;
  return result;
}

uint64_t sub_FC458@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_FC4F8(uint64_t *a1)
{
  v1 = a1[1];
  sub_5DE50(&qword_286888, &qword_1FA228);
  v2 = sub_1E1440();
  v4[0] = v1;
  v4[1] = sub_FC570();
  return swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
}

unint64_t sub_FC570()
{
  result = qword_286890;
  if (!qword_286890)
  {
    v3 = sub_5DE50(&qword_286888, &qword_1FA228);
    result = swift_getWitnessTable(&protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>, v3, v0, v1);
    atomic_store(result, &qword_286890);
  }

  return result;
}

uint64_t SearchCompleteEvent.searchMethodData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchCompleteEvent(0) + 20);
  v4 = sub_3D68(&qword_2868C8, &unk_202330);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchCompleteEvent.searchMethodData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchCompleteEvent(0) + 20);
  v4 = sub_3D68(&qword_2868C8, &unk_202330);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchCompleteEvent.searchSuggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchCompleteEvent(0) + 24);
  v4 = sub_3D68(&qword_2863F0, &qword_1FA280);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchCompleteEvent.searchSuggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchCompleteEvent(0) + 24);
  v4 = sub_3D68(&qword_2863F0, &qword_1FA280);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchCompleteEvent.searchSuggestionSelectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchCompleteEvent(0) + 28);
  v4 = sub_3D68(&qword_2868D0, &unk_1FA288);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchCompleteEvent.searchSuggestionSelectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchCompleteEvent(0) + 28);
  v4 = sub_3D68(&qword_2868D0, &unk_1FA288);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchCompleteEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchCompleteEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchCompleteEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchCompleteEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchCompleteEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchCompleteEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.required<A>(_:);
  v7 = sub_3D68(&qword_2868C8, &unk_202330);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_2863F0, &qword_1FA280);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_2868D0, &unk_1FA288);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v6, v13);
}

uint64_t SearchCompleteEvent.Model.searchSuggestionSelectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 76);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 20) = v4;
  *(a1 + 16) = v3;
}

uint64_t SearchCompleteEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchCompleteEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchCompleteEvent.Model.init(searchData:searchMethodData:searchSuggestionData:searchSuggestionSelectionData:eventData:)@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a2;
  v9 = *(a4 + 16);
  v10 = *(a4 + 20);
  v11 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v11;
  *(a6 + 32) = v8;
  *(a6 + 40) = *a3;
  *(a6 + 56) = *a4;
  *(a6 + 76) = v10;
  *(a6 + 72) = v9;
  v12 = *(type metadata accessor for SearchCompleteEvent.Model(0) + 32);
  v13 = sub_1E1150();
  v14 = *(*(v13 - 8) + 32);

  return v14(a6 + v12, a5, v13);
}

unint64_t sub_FCF64()
{
  v1 = *v0;
  v2 = 0x6144686372616573;
  v3 = 0xD00000000000001DLL;
  if (v1 != 3)
  {
    v3 = 0x746144746E657665;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000014;
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

uint64_t sub_FD018@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_FE638(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_FD040(uint64_t a1)
{
  v2 = sub_FD394();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_FD07C(uint64_t a1)
{
  v2 = sub_FD394();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchCompleteEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_2868D8, &qword_1FA298);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  sub_48B8(a1, a1[3]);
  sub_FD394();
  sub_1E1E00();
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v37 = *v3;
  v38 = v9;
  v39 = v10;
  v40 = v11;
  v36 = 0;
  sub_2EB50(v37, v9, v10, v11);
  sub_81E44();
  sub_1E1C80();
  if (v2)
  {
    sub_2F7F0(v37, v38, v39, v40, v12, v13, v14, v15);
  }

  else
  {
    sub_2F7F0(v37, v38, v39, v40, v12, v13, v14, v15);
    LOBYTE(v37) = *(v3 + 32);
    v36 = 1;
    sub_ABFFC();
    sub_1E1CF0();
    v16 = *(v3 + 48);
    v37 = *(v3 + 40);
    v38 = v16;
    v36 = 2;
    sub_F7474();

    sub_1E1C80();
    v38, v17, v18, v19, v20, v21, v22, v23;
    v24 = *(v3 + 64);
    v25 = *(v3 + 72);
    v26 = *(v3 + 76);
    v37 = *(v3 + 56);
    v38 = v24;
    BYTE4(v39) = v26;
    LODWORD(v39) = v25;
    v36 = 3;
    sub_FD3E8();

    sub_1E1C80();
    v38, v27, v28, v29, v30, v31, v32, v33;
    type metadata accessor for SearchCompleteEvent.Model(0);
    LOBYTE(v37) = 4;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_FD394()
{
  result = qword_2868E0;
  if (!qword_2868E0)
  {
    result = swift_getWitnessTable(byte_1FA480, &type metadata for SearchCompleteEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2868E0);
  }

  return result;
}

unint64_t sub_FD3E8()
{
  result = qword_2868E8;
  if (!qword_2868E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchSuggestionSelectionData, &type metadata for SearchSuggestionSelectionData, v0, v1);
    atomic_store(result, &qword_2868E8);
  }

  return result;
}

void SearchCompleteEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_1E1150();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3D68(&qword_2868F0, &qword_1FA2A0);
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = type metadata accessor for SearchCompleteEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_FD394();
  v41 = v8;
  v12 = v42;
  sub_1E1DF0();
  if (v12)
  {
    sub_4E48(a1, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v36 = v9;
    v42 = v5;
    v20 = v39;
    v21 = v11;
    v45 = 0;
    sub_826DC();
    v22 = v40;
    sub_1E1BB0();
    v23 = v44;
    *v21 = v43;
    *(v21 + 16) = v23;
    v45 = 1;
    sub_ABFA4();
    sub_1E1C20();
    v24 = v20;
    *(v21 + 32) = v43;
    v45 = 2;
    sub_F7894();
    sub_1E1BB0();
    *(v21 + 40) = v43;
    v45 = 3;
    sub_FD8B8();
    sub_1E1BB0();
    v25 = v44;
    v26 = BYTE4(v44);
    *(v21 + 56) = v43;
    *(v21 + 76) = v26;
    *(v21 + 72) = v25;
    LOBYTE(v43) = 4;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v27 = v42;
    sub_1E1C20();
    (*(v24 + 8))(v41, v22);
    (*(v37 + 32))(v21 + *(v36 + 32), v27, v3);
    sub_FD90C(v21, v38);
    sub_4E48(a1, v28, v29, v30, v31, v32, v33, v34);
    sub_FD970(v21);
  }
}

unint64_t sub_FD8B8()
{
  result = qword_2868F8;
  if (!qword_2868F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchSuggestionSelectionData, &type metadata for SearchSuggestionSelectionData, v0, v1);
    atomic_store(result, &qword_2868F8);
  }

  return result;
}

uint64_t sub_FD90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCompleteEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_FD970(uint64_t a1)
{
  v2 = type metadata accessor for SearchCompleteEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_FDA6C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_2868C8, &unk_202330);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_2863F0, &qword_1FA280);
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_2868D0, &unk_1FA288);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v7, v14);
}

uint64_t sub_FDC50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_281D58, &qword_1EE340);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_2868C8, &unk_202330);
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

  v14 = sub_3D68(&qword_2863F0, &qword_1FA280);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_2868D0, &unk_1FA288);
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

uint64_t sub_FDE70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_281D58, &qword_1EE340);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_2868C8, &unk_202330);
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

  v16 = sub_3D68(&qword_2863F0, &qword_1FA280);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_2868D0, &unk_1FA288);
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

void sub_FE088(uint64_t a1)
{
  sub_FE234(319, &qword_281E38, sub_826DC, sub_81E44, &type metadata for SearchData);
  if (v1 <= 0x3F)
  {
    sub_FE234(319, &qword_286968, sub_ABFA4, sub_ABFFC, &type metadata for SearchMethodData);
    if (v2 <= 0x3F)
    {
      sub_FE234(319, &unk_286490, sub_F7894, sub_F7474, &type metadata for SearchSuggestionData);
      if (v3 <= 0x3F)
      {
        sub_FE234(319, &unk_286970, sub_FD8B8, sub_FD3E8, &type metadata for SearchSuggestionSelectionData);
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

void sub_FE234(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_FE2C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_FE390(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_FE434(uint64_t a1)
{
  sub_19FE0(319, &qword_282190, &type metadata for SearchData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &unk_286530, &type metadata for SearchSuggestionData);
    if (v2 <= 0x3F)
    {
      sub_19FE0(319, &unk_286A18, &type metadata for SearchSuggestionSelectionData);
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

unint64_t sub_FE534()
{
  result = qword_286A58;
  if (!qword_286A58)
  {
    result = swift_getWitnessTable(byte_1FA458, &type metadata for SearchCompleteEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_286A58);
  }

  return result;
}

unint64_t sub_FE58C()
{
  result = qword_286A60;
  if (!qword_286A60)
  {
    result = swift_getWitnessTable(aY2, &type metadata for SearchCompleteEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_286A60);
  }

  return result;
}

unint64_t sub_FE5E4()
{
  result = qword_286A68;
  if (!qword_286A68)
  {
    result = swift_getWitnessTable(aA2, &type metadata for SearchCompleteEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_286A68);
  }

  return result;
}

uint64_t sub_FE638(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6144686372616573 && a2 == 0xEA00000000006174;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000216130;
    if (a1 == 0xD000000000000010 && 0x8000000000216130 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x80000000002160E0;
      if (a1 == 0xD000000000000014 && 0x80000000002160E0 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v14 = 0x8000000000216150;
        if (a1 == 0xD00000000000001DLL && 0x8000000000216150 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
        {
          0xE900000000000061, v14, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else
        {
          v15 = sub_1E1D30();
          a2, v16, v17, v18, v19, v20, v21, v22;
          if (v15)
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

void __swiftcall SearchResultsItemTypeData.init(resultsReturnedStrings:position:contentPrivateID:contentUserID:contentID:positionInSection:section:)(BookAnalytics::SearchResultsItemTypeData *__return_ptr retstr, Swift::String resultsReturnedStrings, Swift::Int32 position, Swift::String contentPrivateID, Swift::String contentUserID, Swift::String contentID, Swift::Int32 positionInSection, Swift::String section)
{
  retstr->resultsReturnedStrings = resultsReturnedStrings;
  retstr->position = position;
  retstr->contentPrivateID = contentPrivateID;
  retstr->contentUserID = contentUserID;
  retstr->contentID = contentID;
  retstr->positionInSection = positionInSection;
  retstr->section = section;
}

unint64_t sub_FE840()
{
  v1 = *v0;
  v2 = 0x6E6F697469736F70;
  v3 = 0xD000000000000011;
  if (v1 != 5)
  {
    v3 = 0x6E6F6974636573;
  }

  v4 = 0x55746E65746E6F63;
  if (v1 != 3)
  {
    v4 = 0x49746E65746E6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
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

uint64_t sub_FE938@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_FF4A0(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_FE960(uint64_t a1)
{
  v2 = sub_FF2B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_FE99C(uint64_t a1)
{
  v2 = sub_FF2B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchResultsItemTypeData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_286A70, &qword_1FA4D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - v5;
  v21 = *(v1 + 16);
  v7 = *(v1 + 24);
  v19 = *(v1 + 32);
  v20 = v7;
  v8 = *(v1 + 40);
  v17 = *(v1 + 48);
  v18 = v8;
  v9 = *(v1 + 56);
  v15 = *(v1 + 64);
  v16 = v9;
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v13[1] = *(v1 + 80);
  v13[2] = v10;
  sub_48B8(a1, a1[3]);
  sub_FF2B4();
  sub_1E1E00();
  v29 = 0;
  v11 = v22;
  sub_1E1CB0();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v28 = 1;
  sub_1E1D00();
  v27 = 2;
  sub_1E1CB0();
  v26 = 3;
  sub_1E1CB0();
  v25 = 4;
  sub_1E1CB0();
  v24 = 5;
  sub_1E1D00();
  v23 = 6;
  sub_1E1CB0();
  return (*(v4 + 8))(v6, v3);
}

void SearchResultsItemTypeData.init(from:)(BAEventReporter **a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_286A80, &qword_1FA4D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - v7;
  sub_48B8(a1, a1[3]);
  sub_FF2B4();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    LOBYTE(v54[0]) = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    LOBYTE(v54[0]) = 1;
    v65 = sub_1E1C30();
    LOBYTE(v54[0]) = 2;
    v45 = sub_1E1BE0();
    v47 = v19;
    LOBYTE(v54[0]) = 3;
    v20 = sub_1E1BE0();
    v46 = v21;
    v42 = v20;
    LOBYTE(v54[0]) = 4;
    v44 = 0;
    v41 = sub_1E1BE0();
    v43 = v22;
    LOBYTE(v54[0]) = 5;
    v40 = sub_1E1C30();
    v66 = 6;
    v23 = sub_1E1BE0();
    v24 = v8;
    v26 = v25;
    (*(v6 + 8))(v24, v5);
    *&v48 = v16;
    *(&v48 + 1) = v18;
    LODWORD(v49) = v65;
    v27 = v47;
    *(&v49 + 1) = v45;
    *&v50 = v47;
    *(&v50 + 1) = v42;
    *&v51 = v46;
    v28 = v43;
    *(&v51 + 1) = v41;
    *&v52 = v43;
    DWORD2(v52) = v40;
    *&v53 = v23;
    *(&v53 + 1) = v26;
    v29 = v51;
    a2[2] = v50;
    a2[3] = v29;
    v30 = v53;
    a2[4] = v52;
    a2[5] = v30;
    v31 = v49;
    *a2 = v48;
    a2[1] = v31;
    sub_FF308(&v48, v54);
    sub_4E48(a1, v32, v33, v34, v35, v36, v37, v38);
    v54[0] = v16;
    v54[1] = v18;
    v55 = v65;
    v56 = v45;
    v57 = v27;
    v58 = v42;
    v59 = v46;
    v60 = v41;
    v61 = v28;
    v62 = v40;
    v63 = v23;
    v64 = v26;
    sub_FF340(v54);
  }
}

uint64_t _s13BookAnalytics25SearchResultsItemTypeDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v23 = a1[8];
  v24 = a1[7];
  v17 = a1[11];
  v18 = a1[10];
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v21 = *(a2 + 64);
  v22 = *(a2 + 56);
  v19 = *(a2 + 72);
  v20 = *(a1 + 18);
  v15 = *(a2 + 88);
  v16 = *(a2 + 80);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v7)
    {
      return 0;
    }
  }

  else
  {
    v12 = sub_1E1D30();
    result = 0;
    if ((v12 & 1) == 0 || v2 != v7)
    {
      return result;
    }
  }

  if ((v4 != v9 || v3 != v8) && (sub_1E1D30() & 1) == 0 || (v5 != v11 || v6 != v10) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v24 == v22 && v23 == v21)
  {
    if (v20 != v19)
    {
      return 0;
    }
  }

  else
  {
    v14 = sub_1E1D30();
    result = 0;
    if ((v14 & 1) == 0 || v20 != v19)
    {
      return result;
    }
  }

  if (v18 == v16 && v17 == v15)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_FF2B4()
{
  result = qword_286A78;
  if (!qword_286A78)
  {
    result = swift_getWitnessTable(byte_1FA6F0, &type metadata for SearchResultsItemTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_286A78);
  }

  return result;
}

unint64_t sub_FF39C()
{
  result = qword_286A88;
  if (!qword_286A88)
  {
    result = swift_getWitnessTable(byte_1FA6C8, &type metadata for SearchResultsItemTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_286A88);
  }

  return result;
}

unint64_t sub_FF3F4()
{
  result = qword_286A90;
  if (!qword_286A90)
  {
    result = swift_getWitnessTable(byte_1FA638, &type metadata for SearchResultsItemTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_286A90);
  }

  return result;
}

unint64_t sub_FF44C()
{
  result = qword_286A98;
  if (!qword_286A98)
  {
    result = swift_getWitnessTable(byte_1FA660, &type metadata for SearchResultsItemTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_286A98);
  }

  return result;
}

uint64_t sub_FF4A0(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v9 = 0x8000000000216170;
  v10 = a1 == 0xD000000000000016 && 0x8000000000216170 == a2;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, v9, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, v9, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v13 = 0x80000000002138D0;
    if (a1 == 0xD000000000000010 && 0x80000000002138D0 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v14 = 0xED00004449726573;
      if (a1 == 0x55746E65746E6F63 && a2 == 0xED00004449726573 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else if (a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000044 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 4;
      }

      else
      {
        v15 = 0x80000000002139D0;
        if (a1 == 0xD000000000000011 && 0x80000000002139D0 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 5;
        }

        else if (a1 == 0x6E6F6974636573 && a2 == 0xE700000000000000)
        {
          0xE700000000000000, v15, a3, a4, a5, a6, a7, a8;
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

void sub_FF720(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000000216190 == a2)
  {
    a2, 0x8000000000216190, 0xD000000000000011, a3, a4, a5, a6, a7;
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

uint64_t sub_FF7B4(uint64_t a1)
{
  v2 = sub_FF968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_FF7F0(uint64_t a1)
{
  v2 = sub_FF968();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShareContextData.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_286AA0, &qword_1FA740);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_48B8(a1, a1[3]);
  sub_FF968();
  sub_1E1E00();
  sub_1E1CB0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_FF968()
{
  result = qword_286AA8;
  if (!qword_286AA8)
  {
    result = swift_getWitnessTable(aU_9, &type metadata for ShareContextData.CodingKeys, v0, v1);
    atomic_store(result, &qword_286AA8);
  }

  return result;
}

void ShareContextData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_286AB0, &qword_1FA748);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_48B8(a1, a1[3]);
  sub_FF968();
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

unint64_t sub_FFB34()
{
  result = qword_286AB8;
  if (!qword_286AB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShareContextData, &type metadata for ShareContextData, v0, v1);
    atomic_store(result, &qword_286AB8);
  }

  return result;
}

unint64_t sub_FFB8C()
{
  result = qword_286AC0;
  if (!qword_286AC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShareContextData, &type metadata for ShareContextData, v0, v1);
    atomic_store(result, &qword_286AC0);
  }

  return result;
}

unint64_t sub_FFC1C()
{
  result = qword_286AC8;
  if (!qword_286AC8)
  {
    result = swift_getWitnessTable(aM_7, &type metadata for ShareContextData.CodingKeys, v0, v1);
    atomic_store(result, &qword_286AC8);
  }

  return result;
}

unint64_t sub_FFC74()
{
  result = qword_286AD0;
  if (!qword_286AD0)
  {
    result = swift_getWitnessTable(byte_1FA86C, &type metadata for ShareContextData.CodingKeys, v0, v1);
    atomic_store(result, &qword_286AD0);
  }

  return result;
}

unint64_t sub_FFCCC()
{
  result = qword_286AD8;
  if (!qword_286AD8)
  {
    result = swift_getWitnessTable(byte_1FA894, &type metadata for ShareContextData.CodingKeys, v0, v1);
    atomic_store(result, &qword_286AD8);
  }

  return result;
}

uint64_t (*static Defaults.analyticsJitterSettingsEnabled.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_3D68(&unk_287EF0, &qword_1FA978);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_27D360 != -1)
  {
    swift_once();
  }

  v9 = sub_3B2C(v4, qword_286AE0);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_1E1230();
  return sub_1012D0;
}

uint64_t sub_FFEC8()
{
  v0 = sub_3D68(&unk_287EF0, &qword_1FA978);
  sub_5F94(v0, qword_286AE0);
  sub_3B2C(v0, qword_286AE0);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_1E1260();
}

uint64_t (*static Defaults.analyticsJitterLowBoundValue.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_3D68(&qword_286B40, &unk_1FD180);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_27D368 != -1)
  {
    swift_once();
  }

  v9 = sub_3B2C(v4, qword_286AF8);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_1E1230();
  return sub_100120;
}

uint64_t sub_100124()
{
  v0 = sub_3D68(&qword_286B40, &unk_1FD180);
  sub_5F94(v0, qword_286AF8);
  sub_3B2C(v0, qword_286AF8);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_1E1260();
}

uint64_t sub_1001FC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_3D68(&qword_286B40, &unk_1FD180);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = sub_3B2C(v5, a2);
  (*(v6 + 16))(v8, v9, v5);
  sub_1E1240();
  (*(v6 + 8))(v8, v5);
  return v11[1];
}

uint64_t sub_100330@<X0>(void *a1@<X3>, uint64_t a2@<X4>, void *a4@<X8>)
{
  v7 = sub_3D68(&qword_286B40, &unk_1FD180);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v13 - v9;
  if (*a1 != -1)
  {
    swift_once();
  }

  v11 = sub_3B2C(v7, a2);
  (*(v8 + 16))(v10, v11, v7);
  sub_1E1240();
  result = (*(v8 + 8))(v10, v7);
  *a4 = v13[1];
  return result;
}

uint64_t sub_100474(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_3D68(&qword_286B40, &unk_1FD180);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - v12;
  v14 = *a1;
  if (*a5 != -1)
  {
    swift_once();
  }

  v15 = sub_3B2C(v10, a6);
  (*(v11 + 16))(v13, v15, v10);
  v17[1] = v14;
  sub_1E1250();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1005DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_3D68(&qword_286B40, &unk_1FD180);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v13 - v9;
  if (*a2 != -1)
  {
    swift_once();
  }

  v11 = sub_3B2C(v7, a3);
  (*(v8 + 16))(v10, v11, v7);
  v13[1] = a1;
  sub_1E1250();
  return (*(v8 + 8))(v10, v7);
}

uint64_t (*static Defaults.analyticsJitterUpperBoundValue.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_3D68(&qword_286B40, &unk_1FD180);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_27D370 != -1)
  {
    swift_once();
  }

  v9 = sub_3B2C(v4, qword_286B10);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_1E1230();
  return sub_1012D0;
}

uint64_t sub_10087C()
{
  v0 = sub_3D68(&qword_286B40, &unk_1FD180);
  sub_5F94(v0, qword_286B10);
  sub_3B2C(v0, qword_286B10);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_1E1260();
}

uint64_t sub_100954(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_3D68(&unk_287EF0, &qword_1FA978);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = sub_3B2C(v5, a2);
  (*(v6 + 16))(v8, v9, v5);
  sub_1E1240();
  (*(v6 + 8))(v8, v5);
  return v11[15];
}

uint64_t sub_100A88@<X0>(void *a1@<X3>, uint64_t a2@<X4>, _BYTE *a4@<X8>)
{
  v7 = sub_3D68(&unk_287EF0, &qword_1FA978);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-v9];
  if (*a1 != -1)
  {
    swift_once();
  }

  v11 = sub_3B2C(v7, a2);
  (*(v8 + 16))(v10, v11, v7);
  sub_1E1240();
  result = (*(v8 + 8))(v10, v7);
  *a4 = v13[15];
  return result;
}

uint64_t sub_100BCC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_3D68(&unk_287EF0, &qword_1FA978);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17[-v12];
  v14 = *a1;
  if (*a5 != -1)
  {
    swift_once();
  }

  v15 = sub_3B2C(v10, a6);
  (*(v11 + 16))(v13, v15, v10);
  v17[15] = v14;
  sub_1E1250();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100D34(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_3D68(&unk_287EF0, &qword_1FA978);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-v9];
  if (*a2 != -1)
  {
    swift_once();
  }

  v11 = sub_3B2C(v7, a3);
  (*(v8 + 16))(v10, v11, v7);
  v13[15] = a1 & 1;
  sub_1E1250();
  return (*(v8 + 8))(v10, v7);
}

uint64_t (*static Defaults.analyticsExposureDebugLogEnabled.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_3D68(&unk_287EF0, &qword_1FA978);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_27D378 != -1)
  {
    swift_once();
  }

  v9 = sub_3B2C(v4, qword_286B28);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_1E1230();
  return sub_1012D0;
}

void sub_100FD8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_101050()
{
  v0 = sub_3D68(&unk_287EF0, &qword_1FA978);
  sub_5F94(v0, qword_286B28);
  sub_3B2C(v0, qword_286B28);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_1E1260();
}

BookAnalytics::TabType_optional __swiftcall TabType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260D38;
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

uint64_t TabType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x686372616573;
  if (v1 != 5)
  {
    v3 = 0x61676E616DLL;
  }

  v4 = 0x726F74736B6F6F62;
  if (v1 != 3)
  {
    v4 = 0x6F6F626F69647561;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x4E676E6964616572;
  if (v1 != 1)
  {
    v5 = 0x7972617262696CLL;
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

unint64_t sub_101420()
{
  result = qword_286B48;
  if (!qword_286B48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabType, &type metadata for TabType, v0, v1);
    atomic_store(result, &qword_286B48);
  }

  return result;
}

void sub_101480(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  if (v2 != 5)
  {
    v4 = 0xE500000000000000;
  }

  v5 = 0xE900000000000065;
  if (v2 != 3)
  {
    v5 = 0xEA0000000000736BLL;
  }

  if (*v1 <= 4u)
  {
    v4 = v5;
  }

  v6 = 0xEA0000000000776FLL;
  if (v2 != 1)
  {
    v6 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = v6;
  }

  if (*v1 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1E17D0();

  v7, v8, v9, v10, v11, v12, v13, v14;
}

void sub_1015A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x686372616573;
  if (v2 != 5)
  {
    v6 = 0x61676E616DLL;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE900000000000065;
  v8 = 0x726F74736B6F6F62;
  if (v2 != 3)
  {
    v8 = 0x6F6F626F69647561;
    v7 = 0xEA0000000000736BLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA0000000000776FLL;
  v10 = 0x4E676E6964616572;
  if (v2 != 1)
  {
    v10 = 0x7972617262696CLL;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
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

unint64_t sub_10174C()
{
  result = qword_286B50;
  if (!qword_286B50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabType, &type metadata for TabType, v0, v1);
    atomic_store(result, &qword_286B50);
  }

  return result;
}

unint64_t sub_1017D4()
{
  result = qword_286B58;
  if (!qword_286B58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrientationData, &type metadata for OrientationData, v0, v1);
    atomic_store(result, &qword_286B58);
  }

  return result;
}

unint64_t sub_101828()
{
  result = qword_286B60;
  if (!qword_286B60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrientationData, &type metadata for OrientationData, v0, v1);
    atomic_store(result, &qword_286B60);
  }

  return result;
}

uint64_t sub_101974(uint64_t (*a1)(void), uint64_t (*a2)(void), objc_class *a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);

  os_unfair_lock_lock((v7 + 24));
  v8 = a1();
  v9 = a2();
  v10 = *(v7 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isa = v10[1].super.isa;

    v32 = sub_103008(0, isa + 1, 1, v10, v28, v29, v30, v31);
    v33 = *(v7 + 16);
    *(v7 + 16) = v32;
    v33, v34, v35, v36, v37, v38, v39, v40;
    v10 = *(v7 + 16);
  }

  v17 = v10[1].super.isa;
  v16 = *v10[1].dataProviders;
  if (v17 >= v16 >> 1)
  {
    v10 = sub_103008((v16 > 1), v17 + 1, 1, v10, v12, v13, v14, v15);
  }

  v10[1].super.isa = (v17 + 1);
  v18 = &v10[4 * v17];
  v18[2].super.isa = a3;
  *v18[2].dataProviders = v8;
  v18[3].super.isa = v9;
  *v18[4].dataProviders = v42;
  *v18[3].dataProviders = v41;
  v18[5].dataProviders[0] = 1;
  *(v7 + 16) = v10;
  os_unfair_lock_unlock((v7 + 24));
  v7, v19, v20, v21, v22, v23, v24, v25;
  return sub_1E10F0();
}

uint64_t BATracker.pushLinkData(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_A5108(v14);
  v5 = *(v4 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);

  os_unfair_lock_lock((v5 + 24));
  sub_10362C((v5 + 16));
  os_unfair_lock_unlock((v5 + 24));
  v5, v6, v7, v8, v9, v10, v11, v12;
  sub_98A8C();
  sub_1E1110();
  return sub_283A8(v14);
}

Swift::Void __swiftcall BATracker.pushOrientationData(file:line:)(Swift::String file, Swift::Int line)
{
  countAndFlagsBits = file._countAndFlagsBits;
  v7 = [objc_opt_self() mainScreen];
  v8 = &unk_27A000;
  [v7 bounds];
  v10 = v9;
  v12 = v11;

  v13 = [objc_opt_self() _applicationKeyWindow];
  v14 = v10;
  v15 = v12;
  if (v13)
  {
    v16 = v13;
    [v13 bounds];
    v14 = v17;
    v15 = v18;
  }

  v19 = [objc_opt_self() currentDevice];
  v20 = [v19 orientation];

  if (sub_DE078(v20))
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  if (v12 <= -2147483650.0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v12 >= 2147483650.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 <= -2147483650.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v10 >= 2147483650.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v15 <= -2147483650.0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v15 >= 2147483650.0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_28;
  }

  if (v14 <= -2147483650.0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v14 < 2147483650.0)
  {
    v3 = v12;
    countAndFlagsBits = v10;
    v5 = v15;
    LODWORD(v8) = v14;
    v52 = v21;
    v20 = *(v2 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);

    os_unfair_lock_lock(v20 + 6);
    v19 = sub_1017D4();
    v51 = sub_101828();
    v53 = 0;
    v4 = *(v20 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v20 + 2) = v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  isa = v4[1].super.isa;

  v42 = sub_103008(0, isa + 1, 1, v4, v38, v39, v40, v41);
  v43 = *(v20 + 2);
  *(v20 + 2) = v42;
  v43, v44, v45, v46, v47, v48, v49, v50;
  v4 = *(v20 + 2);
LABEL_19:
  v28 = v4[1].super.isa;
  v27 = *v4[1].dataProviders;
  if (v28 >= v27 >> 1)
  {
    v4 = sub_103008((v27 > 1), v28 + 1, 1, v4, v23, v24, v25, v26);
  }

  v4[1].super.isa = (v28 + 1);
  v29 = &v4[4 * v28];
  LOBYTE(v29[2].super.isa) = v52;
  BYTE3(v29[2].super.isa) = v55;
  *(&v29[2].super.isa + 1) = v54;
  HIDWORD(v29[2].super.isa) = v3;
  *v29[2].dataProviders = countAndFlagsBits;
  *&v29[2].dataProviders[4] = v5;
  LODWORD(v29[3].super.isa) = v8;
  *v29[3].dataProviders = &type metadata for OrientationData;
  v29[4].super.isa = v19;
  *v29[4].dataProviders = v51;
  v29[5].super.isa = 0;
  v29[5].dataProviders[0] = v53;
  *(v20 + 2) = v4;
  os_unfair_lock_unlock(v20 + 6);
  v20, v30, v31, v32, v33, v34, v35, v36;
  sub_1E1110();
}

uint64_t BATracker.pushSessionEndReasonData(with:file:line:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  if (a1 >= 4)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    v6 = *(v4 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);

    os_unfair_lock_lock((v6 + 24));
    v7 = sub_103648();
    v8 = sub_10369C();
    v9 = *(v6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isa = v9[1].super.isa;

      v31 = sub_103008(0, isa + 1, 1, v9, v27, v28, v29, v30);
      v32 = *(v6 + 16);
      *(v6 + 16) = v31;
      v32, v33, v34, v35, v36, v37, v38, v39;
      v9 = *(v6 + 16);
    }

    v16 = v9[1].super.isa;
    v15 = *v9[1].dataProviders;
    if (v16 >= v15 >> 1)
    {
      v9 = sub_103008((v15 > 1), v16 + 1, 1, v9, v11, v12, v13, v14);
    }

    v9[1].super.isa = (v16 + 1);
    v17 = &v9[4 * v16];
    LOBYTE(v17[2].super.isa) = v5;
    v17[3].super.isa = *&v40[15];
    *v17[3].dataProviders = &type metadata for SessionEndReasonData;
    *(v17 + 33) = *v40;
    v17[4].super.isa = v7;
    *v17[4].dataProviders = v8;
    v17[5].super.isa = 0;
    v17[5].dataProviders[0] = 0;
    *(v6 + 16) = v9;
    os_unfair_lock_unlock((v6 + 24));
    v6, v18, v19, v20, v21, v22, v23, v24;
    return sub_1E1110();
  }

  return result;
}

uint64_t BATracker.pushSessionListeningData(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(a1 + OBJC_IVAR___BASessionListeningData_uniqueAudiobooksListened);
  if (v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v10 <= 0x7FFFFFFF)
  {
    v4 = *(a1 + OBJC_IVAR___BASessionListeningData_timeSpentListening);
    v7 = *(v5 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);

    os_unfair_lock_lock((v7 + 24));
    v6 = sub_103114();
    v8 = sub_103168();
    v43 = 0;
    v41 = 0;
    v9 = *(v7 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 16) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  isa = v9[1].super.isa;

  v32 = sub_103008(0, isa + 1, 1, v9, v28, v29, v30, v31);
  v33 = *(v7 + 16);
  *(v7 + 16) = v32;
  v33, v34, v35, v36, v37, v38, v39, v40;
  v9 = *(v7 + 16);
LABEL_4:
  v17 = v9[1].super.isa;
  v16 = *v9[1].dataProviders;
  if (v17 >= v16 >> 1)
  {
    v9 = sub_103008((v16 > 1), v17 + 1, 1, v9, v12, v13, v14, v15);
  }

  v9[1].super.isa = (v17 + 1);
  v18 = &v9[4 * v17];
  v18[2].super.isa = v4;
  *v18[2].dataProviders = v10;
  v18[2].dataProviders[4] = v43;
  *&v18[2].dataProviders[5] = *v42;
  HIDWORD(v18[3].super.isa) = *&v42[7];
  *v18[3].dataProviders = &type metadata for SessionListeningData;
  v18[4].super.isa = v6;
  *v18[4].dataProviders = v8;
  v18[5].super.isa = 0;
  v18[5].dataProviders[0] = v41;
  *(v7 + 16) = v9;
  os_unfair_lock_unlock((v7 + 24));
  v7, v19, v20, v21, v22, v23, v24, v25;
  return sub_1E1110();
}

uint64_t BATracker.pushSessionReadingData(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(a1 + OBJC_IVAR___BASessionReadingData_uniqueBooksRead);
  if (v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v10 <= 0x7FFFFFFF)
  {
    v4 = *(a1 + OBJC_IVAR___BASessionReadingData_timeSpentReading);
    v7 = *(v5 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);

    os_unfair_lock_lock((v7 + 24));
    v6 = sub_1031BC();
    v8 = sub_103210();
    v41 = 0;
    v9 = *(v7 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 16) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  isa = v9[1].super.isa;

  v32 = sub_103008(0, isa + 1, 1, v9, v28, v29, v30, v31);
  v33 = *(v7 + 16);
  *(v7 + 16) = v32;
  v33, v34, v35, v36, v37, v38, v39, v40;
  v9 = *(v7 + 16);
LABEL_4:
  v17 = v9[1].super.isa;
  v16 = *v9[1].dataProviders;
  if (v17 >= v16 >> 1)
  {
    v9 = sub_103008((v16 > 1), v17 + 1, 1, v9, v12, v13, v14, v15);
  }

  v9[1].super.isa = (v17 + 1);
  v18 = &v9[4 * v17];
  v18[2].super.isa = v4;
  *v18[2].dataProviders = v10;
  *&v18[2].dataProviders[4] = v42;
  HIDWORD(v18[3].super.isa) = v43;
  *v18[3].dataProviders = &type metadata for SessionReadingData;
  v18[4].super.isa = v6;
  *v18[4].dataProviders = v8;
  v18[5].super.isa = 0;
  v18[5].dataProviders[0] = v41;
  *(v7 + 16) = v9;
  os_unfair_lock_unlock((v7 + 24));
  v7, v19, v20, v21, v22, v23, v24, v25;
  return sub_1E1110();
}

void sub_1025A0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(id, uint64_t, BAEventReporter *, uint64_t))
{
  v10 = sub_1E1780();
  v12 = v11;
  v13 = a3;
  v14 = a1;
  a6(v13, v10, v12, a5);

  v12, v15, v16, v17, v18, v19, v20, v21;
}

uint64_t BATracker.pushTabData(with:file:line:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  if (a1 >= 7)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    v6 = *(v4 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);

    os_unfair_lock_lock((v6 + 24));
    v7 = sub_1036F0();
    v8 = sub_103744();
    v9 = *(v6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isa = v9[1].super.isa;

      v31 = sub_103008(0, isa + 1, 1, v9, v27, v28, v29, v30);
      v32 = *(v6 + 16);
      *(v6 + 16) = v31;
      v32, v33, v34, v35, v36, v37, v38, v39;
      v9 = *(v6 + 16);
    }

    v16 = v9[1].super.isa;
    v15 = *v9[1].dataProviders;
    if (v16 >= v15 >> 1)
    {
      v9 = sub_103008((v15 > 1), v16 + 1, 1, v9, v11, v12, v13, v14);
    }

    v9[1].super.isa = (v16 + 1);
    v17 = &v9[4 * v16];
    LOBYTE(v17[2].super.isa) = v5;
    v17[3].super.isa = *&v40[15];
    *v17[3].dataProviders = &type metadata for TabData;
    *(v17 + 33) = *v40;
    v17[4].super.isa = v7;
    *v17[4].dataProviders = v8;
    v17[5].super.isa = 0;
    v17[5].dataProviders[0] = 0;
    *(v6 + 16) = v9;
    os_unfair_lock_unlock((v6 + 24));
    v6, v18, v19, v20, v21, v22, v23, v24;
    return sub_1E1110();
  }

  return result;
}

void sub_1027F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, BAEventReporter *, uint64_t))
{
  v10 = sub_1E1780();
  v12 = v11;
  v13 = a1;
  a6(a3, v10, v12, a5);

  v12, v14, v15, v16, v17, v18, v19, v20;
}

Swift::Void __swiftcall BATracker.submitAppSessionStartEvent()()
{
  type metadata accessor for AppSessionStartEvent(0);
  sub_103870(&qword_286BA8, type metadata accessor for AppSessionStartEvent, protocol conformance descriptor for AppSessionStartEvent);
  sub_1E1140();
}

Swift::Void __swiftcall BATracker.timeAppSessionEndEvent()()
{
  v0 = sub_3D68(&qword_287B10, &qword_1FCF80);
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - v1;
  v3 = sub_1E09E0();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_102A78(v2);
  sub_103798(v2);
}

uint64_t sub_102A78(uint64_t a1)
{
  v2 = sub_3D68(&qword_287B10, &qword_1FCF80);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1E09E0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppSessionEndEvent(0);
  sub_103800(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_103798(v4);
    sub_103870(&qword_286BC8, type metadata accessor for AppSessionEndEvent, protocol conformance descriptor for AppSessionEndEvent);
    return sub_1E1120();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_103870(&qword_286BC8, type metadata accessor for AppSessionEndEvent, protocol conformance descriptor for AppSessionEndEvent);
    sub_1E10D0();
    return (*(v6 + 8))(v8, v5);
  }
}

BAEventReporter *sub_102D78(BAEventReporter *result, const char *a2, void *a3, BAEventReporter *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4[1].dataProviders;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
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
    sub_3D68(&qword_286BE0, &qword_1FAAD0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[1].super.isa = isa;
    *v14[1].dataProviders = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || &v14[2] >= (&a4[2] + 40 * isa))
    {
      memmove(&v14[2], &a4[2], 40 * isa);
    }

    a4[1].super.isa = 0;
  }

  else
  {
    sub_3D68(&qword_286BE8, &qword_1FAAD8);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

BAEventReporter *sub_102EC0(BAEventReporter *result, const char *a2, void *a3, BAEventReporter *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4[1].dataProviders;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
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
    sub_3D68(&qword_286BB0, &qword_1FAAB0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[1].super.isa = isa;
    *v14[1].dataProviders = 2 * ((v15 - 32) / 48);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || &v14[2] >= &a4[3 * isa + 2])
    {
      memmove(&v14[2], &a4[2], 48 * isa);
    }

    a4[1].super.isa = 0;
  }

  else
  {
    sub_3D68(&qword_285BB0, &qword_20EAA0);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

BAEventReporter *sub_103008(BAEventReporter *result, int64_t a2, char a3, BAEventReporter *a4, void *a5, int64_t a6, int64_t a7, void *a8)
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
    sub_3D68(&qword_286BD8, &qword_1FAAC8);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 + 31;
    }

    v14[1].super.isa = isa;
    *v14[1].dataProviders = 2 * (v16 >> 6);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v17 = v14 + 2;
  v18 = a4 + 2;
  if (v9)
  {
    v19 = (isa << 6);
    if (v14 != a4 || v17 >= &v18[4 * isa])
    {
      memmove(v17, v18, v19);
    }

    a4[1].super.isa = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, v19, a4, a5, a6, a7, a8;
  return v14;
}

unint64_t sub_103114()
{
  result = qword_286B68;
  if (!qword_286B68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionListeningData, &type metadata for SessionListeningData, v0, v1);
    atomic_store(result, &qword_286B68);
  }

  return result;
}

unint64_t sub_103168()
{
  result = qword_286B70;
  if (!qword_286B70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionListeningData, &type metadata for SessionListeningData, v0, v1);
    atomic_store(result, &qword_286B70);
  }

  return result;
}

unint64_t sub_1031BC()
{
  result = qword_286B78;
  if (!qword_286B78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionReadingData, &type metadata for SessionReadingData, v0, v1);
    atomic_store(result, &qword_286B78);
  }

  return result;
}

unint64_t sub_103210()
{
  result = qword_286B80;
  if (!qword_286B80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionReadingData, &type metadata for SessionReadingData, v0, v1);
    atomic_store(result, &qword_286B80);
  }

  return result;
}

BAEventReporter *sub_103264(BAEventReporter *result, const char *a2, void *a3, BAEventReporter *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4[1].dataProviders;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
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
    sub_3D68(&qword_286BB8, &qword_1FAAB8);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[1].super.isa = isa;
    *v14[1].dataProviders = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || &v14[2] >= &a4[isa + 2])
    {
      memmove(&v14[2], &a4[2], 16 * isa);
    }

    a4[1].super.isa = 0;
  }

  else
  {
    sub_3D68(&qword_286BC0, &qword_1FAAC0);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

BAEventReporter *sub_103398(BAEventReporter *result, int64_t a2, void *a3, BAEventReporter *a4, void *a5, int64_t a6, int64_t a7, void *a8)
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
    sub_3D68(&qword_287BF0, &unk_1FCFD0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[1].super.isa = isa;
    *v14[1].dataProviders = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v17 = v14 + 2;
  v18 = a4 + 2;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[isa])
    {
      memmove(v17, v18, 16 * isa);
    }

    a4[1].super.isa = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

double sub_1034A4(BAEventReporter **a1, uint64_t a2, objc_class *a3)
{
  v6 = *(a2 + 112);
  v27[6] = *(a2 + 96);
  v27[7] = v6;
  v27[8] = *(a2 + 128);
  v28 = *(a2 + 144);
  v7 = *(a2 + 48);
  v27[2] = *(a2 + 32);
  v27[3] = v7;
  v8 = *(a2 + 80);
  v27[4] = *(a2 + 64);
  v27[5] = v8;
  v9 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v9;
  v10 = sub_98A8C();
  v11 = sub_1038B8();
  v12 = swift_allocObject();
  v13 = *(a2 + 112);
  *(v12 + 112) = *(a2 + 96);
  *(v12 + 128) = v13;
  *(v12 + 144) = *(a2 + 128);
  *(v12 + 160) = *(a2 + 144);
  v14 = *(a2 + 48);
  *(v12 + 48) = *(a2 + 32);
  *(v12 + 64) = v14;
  v15 = *(a2 + 80);
  *(v12 + 80) = *(a2 + 64);
  *(v12 + 96) = v15;
  v16 = *(a2 + 16);
  *(v12 + 16) = *a2;
  *(v12 + 32) = v16;
  v29 = 0;
  v17 = *a1;
  sub_275C4(v27, v26);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_103008(0, v17[1].super.isa + 1, 1, v17, v18, v19, v20, v21);
  }

  isa = v17[1].super.isa;
  v22 = *v17[1].dataProviders;
  if (isa >= v22 >> 1)
  {
    v17 = sub_103008((v22 > 1), isa + 1, 1, v17, v18, v19, v20, v21);
  }

  v17[1].super.isa = (isa + 1);
  v24 = &v17[4 * isa];
  v24[2].super.isa = v12;
  result = *v26;
  *(v24 + 40) = v26[0];
  *v24[3].dataProviders = &type metadata for LinkData;
  v24[4].super.isa = v10;
  *v24[4].dataProviders = v11;
  v24[5].super.isa = a3;
  v24[5].dataProviders[0] = v29;
  *a1 = v17;
  return result;
}

unint64_t sub_103648()
{
  result = qword_286B88;
  if (!qword_286B88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionEndReasonData, &type metadata for SessionEndReasonData, v0, v1);
    atomic_store(result, &qword_286B88);
  }

  return result;
}

unint64_t sub_10369C()
{
  result = qword_286B90;
  if (!qword_286B90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionEndReasonData, &type metadata for SessionEndReasonData, v0, v1);
    atomic_store(result, &qword_286B90);
  }

  return result;
}

unint64_t sub_1036F0()
{
  result = qword_286B98;
  if (!qword_286B98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabData, &type metadata for TabData, v0, v1);
    atomic_store(result, &qword_286B98);
  }

  return result;
}

unint64_t sub_103744()
{
  result = qword_286BA0;
  if (!qword_286BA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabData, &type metadata for TabData, v0, v1);
    atomic_store(result, &qword_286BA0);
  }

  return result;
}

uint64_t sub_103798(uint64_t a1)
{
  v2 = sub_3D68(&qword_287B10, &qword_1FCF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_103800(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_287B10, &qword_1FCF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_103870(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_1038B8()
{
  result = qword_286BD0;
  if (!qword_286BD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LinkData, &type metadata for LinkData, v0, v1);
    atomic_store(result, &qword_286BD0);
  }

  return result;
}

uint64_t sub_10390C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[7], v16, v17, v18, v19, v20, v21, v22;
  v8[10], v23, v24, v25, v26, v27, v28, v29;
  v8[12], v30, v31, v32, v33, v34, v35, v36;
  v8[14], v37, v38, v39, v40, v41, v42, v43;
  v8[16], v44, v45, v46, v47, v48, v49, v50;
  v8[18], v51, v52, v53, v54, v55, v56, v57;
  v8[20], v58, v59, v60, v61, v62, v63, v64;

  return _swift_deallocObject(v8, 168, 7);
}

BookAnalytics::SeriesType_optional __swiftcall SeriesType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260E00;
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

uint64_t SeriesType.rawValue.getter()
{
  v1 = 0x65697265536E6F6ELL;
  v2 = 0x65726564724F6E75;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x6465726564726FLL;
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

unint64_t sub_103A6C()
{
  result = qword_286BF0;
  if (!qword_286BF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SeriesType, &type metadata for SeriesType, v0, v1);
    atomic_store(result, &qword_286BF0);
  }

  return result;
}

Swift::Int sub_103AC0()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE900000000000073;
  v3 = 0xE700000000000000;
  if (v1 == 2)
  {
    v3 = 0xE900000000000064;
  }

  if (v1)
  {
    v2 = 0xE700000000000000;
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

void sub_103B88(uint64_t a1)
{
  v2 = 0xE900000000000064;
  v3 = 0xE900000000000073;
  if (*v1 != 2)
  {
    v2 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  sub_1E17D0();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

Swift::Int sub_103C38(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE900000000000073;
  v4 = 0xE700000000000000;
  if (v2 == 2)
  {
    v4 = 0xE900000000000064;
  }

  if (v2)
  {
    v3 = 0xE700000000000000;
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

void sub_103D08(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000073;
  v3 = 0x65697265536E6F6ELL;
  v4 = 0x65726564724F6E75;
  v5 = 0xE700000000000000;
  if (*v1 == 2)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (*v1)
  {
    v3 = 0x6465726564726FLL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v5;
  }

  *a1 = v6;
  a1[1] = v7;
}

unint64_t sub_103E4C()
{
  result = qword_286BF8;
  if (!qword_286BF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SeriesType, &type metadata for SeriesType, v0, v1);
    atomic_store(result, &qword_286BF8);
  }

  return result;
}

BookAnalytics::ProductionType_optional __swiftcall ProductionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260E80;
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

uint64_t ProductionType.rawValue.getter()
{
  v1 = 0x6375646F72506773;
  if (*v0 != 1)
  {
    v1 = 0x6F725047536E6F6ELL;
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

uint64_t sub_103F6C(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0x6375646F72506773;
  v10 = 0xEC0000006E6F6974;
  if (v8 != 1)
  {
    v9 = 0x6F725047536E6F6ELL;
    v10 = 0xEF6E6F6974637564;
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

  v13 = 0x6375646F72506773;
  v14 = 0xEC0000006E6F6974;
  if (*a2 != 1)
  {
    v13 = 0x6F725047536E6F6ELL;
    v14 = 0xEF6E6F6974637564;
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

unint64_t sub_10409C()
{
  result = qword_286C00;
  if (!qword_286C00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProductionType, &type metadata for ProductionType, v0, v1);
    atomic_store(result, &qword_286C00);
  }

  return result;
}

Swift::Int sub_1040F0()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xEC0000006E6F6974;
  if (v1 != 1)
  {
    v2 = 0xEF6E6F6974637564;
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