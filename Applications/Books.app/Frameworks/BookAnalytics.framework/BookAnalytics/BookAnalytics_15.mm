uint64_t _s13BookAnalytics10ThemesDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    v12 = v4 == v8 && v5 == v9;
    if (!v12 && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }

    if (v6 == 2)
    {
      if (v10 != 2)
      {
        return 0;
      }
    }

    else if (v10 == 2 || ((v10 ^ v6) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  return 0;
}

unint64_t sub_169424()
{
  result = qword_28AD90;
  if (!qword_28AD90)
  {
    result = swift_getWitnessTable(byte_2046E4, &type metadata for ThemesData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AD90);
  }

  return result;
}

uint64_t sub_169480(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1694C8(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_169530()
{
  result = qword_28ADA0;
  if (!qword_28ADA0)
  {
    result = swift_getWitnessTable(byte_2046BC, &type metadata for ThemesData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28ADA0);
  }

  return result;
}

unint64_t sub_169588()
{
  result = qword_28ADA8;
  if (!qword_28ADA8)
  {
    result = swift_getWitnessTable(byte_20462C, &type metadata for ThemesData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28ADA8);
  }

  return result;
}

unint64_t sub_1695E0()
{
  result = qword_28ADB0;
  if (!qword_28ADB0)
  {
    result = swift_getWitnessTable(asc_204654, &type metadata for ThemesData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28ADB0);
  }

  return result;
}

uint64_t sub_169634(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x80000000002170E0;
  if (a1 == 0xD000000000000011 && 0x80000000002170E0 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6D614E656D656874 && a2 == 0xE900000000000065 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x6D6F747375437369 && a2 == 0xEC00000064657A69)
  {
    0xEC00000064657A69, 0xEC00000064657A69, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = sub_1E1D30();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t ReadingFontSizeChangeEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingFontSizeChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingFontSizeChangeEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingFontSizeChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingFontSizeChangeEvent.fontSizeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingFontSizeChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_28ADE8, &unk_204740);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingFontSizeChangeEvent.fontSizeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingFontSizeChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_28ADE8, &unk_204740);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingFontSizeChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingFontSizeChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingFontSizeChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingFontSizeChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingFontSizeChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReadingFontSizeChangeEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_28ADE8, &unk_204740);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

float ReadingFontSizeChangeEvent.Model.fontSizeData.getter@<S0>(float *a1@<X8>)
{
  result = *(v1 + 112);
  *a1 = result;
  return result;
}

uint64_t ReadingFontSizeChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingFontSizeChangeEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingFontSizeChangeEvent.Model.init(readingSessionData:contentData:fontSizeData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 4);
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  v10 = *(a1 + 13);
  v11 = *(a1 + 14);
  v12 = *a3;
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
  *(a5 + 112) = v12;
  v17 = *(type metadata accessor for ReadingFontSizeChangeEvent.Model(0) + 28);
  v18 = sub_1E1150();
  v19 = *(*(v18 - 8) + 32);

  return v19(a5 + v17, a4, v18);
}

unint64_t sub_169F3C()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x657A6953746E6F66;
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

uint64_t sub_169FD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_16B3DC(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_169FF8(uint64_t a1)
{
  v2 = sub_16A370();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16A034(uint64_t a1)
{
  v2 = sub_16A370();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingFontSizeChangeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28ADF0, &qword_204750);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-v6];
  sub_48B8(a1, a1[3]);
  sub_16A370();
  sub_1E1E00();
  v8 = *(v2 + 4);
  v9 = v2[2];
  v10 = *(v2 + 12);
  v11 = *(v2 + 13);
  v12 = *(v2 + 14);
  v38 = *v2;
  v39 = v8;
  v40 = v9;
  v41 = v10;
  v42 = v11;
  v43 = v12;
  v37 = 0;
  sub_67BE8();
  v13 = v44;
  sub_1E1CF0();
  if (!v13)
  {
    v14 = *(v2 + 3);
    v15 = *(v2 + 5);
    v34 = *(v2 + 4);
    v35 = v15;
    v16 = *(v2 + 5);
    v36 = *(v2 + 6);
    v17 = *(v2 + 1);
    v18 = *(v2 + 3);
    v32 = *(v2 + 2);
    v33 = v18;
    v19 = *(v2 + 1);
    v28 = v34;
    v29 = v16;
    v30 = *(v2 + 6);
    v31 = v19;
    v25 = v17;
    v26 = v32;
    v27 = v14;
    v24 = 1;
    sub_13A5C(&v31, v23);
    sub_143D0();
    sub_1E1CF0();
    v23[2] = v27;
    v23[3] = v28;
    v23[4] = v29;
    v23[5] = v30;
    v23[0] = v25;
    v23[1] = v26;
    sub_14424(v23);
    v22 = v2[28];
    v21[11] = 2;
    sub_16A3C4();
    sub_1E1CF0();
    type metadata accessor for ReadingFontSizeChangeEvent.Model(0);
    LOBYTE(v22) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_16A370()
{
  result = qword_28ADF8;
  if (!qword_28ADF8)
  {
    result = swift_getWitnessTable(aU_20, &type metadata for ReadingFontSizeChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28ADF8);
  }

  return result;
}

unint64_t sub_16A3C4()
{
  result = qword_28AE00;
  if (!qword_28AE00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FontSizeData, &type metadata for FontSizeData, v0, v1);
    atomic_store(result, &qword_28AE00);
  }

  return result;
}

void ReadingFontSizeChangeEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_1E1150();
  v39 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_28AE08, &qword_204758);
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for ReadingFontSizeChangeEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v43 = a1;
  sub_48B8(a1, v13);
  sub_16A370();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v43, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v38 = v10;
    v21 = v41;
    LOBYTE(v50) = 0;
    sub_686E8();
    sub_1E1C20();
    v22 = BYTE4(v44);
    v23 = DWORD2(v44);
    v24 = BYTE12(v44);
    v25 = BYTE13(v44);
    v26 = BYTE14(v44);
    *v12 = v44;
    v12[4] = v22;
    *(v12 + 2) = v23;
    v12[12] = v24;
    v12[13] = v25;
    v12[14] = v26;
    v52 = 1;
    sub_14CB8();
    sub_1E1C20();
    v27 = v47;
    *(v12 + 3) = v46;
    *(v12 + 4) = v27;
    v28 = v49;
    *(v12 + 5) = v48;
    *(v12 + 6) = v28;
    v29 = v45;
    *(v12 + 1) = v44;
    *(v12 + 2) = v29;
    v51 = 2;
    sub_16A818();
    sub_1E1C20();
    *(v12 + 28) = v50;
    LOBYTE(v50) = 3;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v30 = v42;
    sub_1E1C20();
    (*(v21 + 8))(v9, v30);
    (*(v39 + 32))(&v12[*(v38 + 28)], v6, v4);
    sub_16A86C(v12, v40);
    sub_4E48(v43, v31, v32, v33, v34, v35, v36, v37);
    sub_16A8D0(v12);
  }
}

unint64_t sub_16A818()
{
  result = qword_28AE10;
  if (!qword_28AE10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FontSizeData, &type metadata for FontSizeData, v0, v1);
    atomic_store(result, &qword_28AE10);
  }

  return result;
}

uint64_t sub_16A86C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingFontSizeChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16A8D0(uint64_t a1)
{
  v2 = type metadata accessor for ReadingFontSizeChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_16A9CC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_28ADE8, &unk_204740);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_16AB50(uint64_t a1, uint64_t a2, int *a3)
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

  v14 = sub_3D68(&qword_28ADE8, &unk_204740);
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

uint64_t sub_16AD1C(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  v16 = sub_3D68(&qword_28ADE8, &unk_204740);
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

void sub_16AEE0(uint64_t a1)
{
  sub_16B03C(319, &qword_280E40, sub_686E8, sub_67BE8, &type metadata for ReadingSessionData);
  if (v1 <= 0x3F)
  {
    sub_16B03C(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
    if (v2 <= 0x3F)
    {
      sub_16B03C(319, &unk_28AE80, sub_16A818, sub_16A3C4, &type metadata for FontSizeData);
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

void sub_16B03C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_16B0CC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_16B18C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_16B230(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_16B2D8()
{
  result = qword_28AF50;
  if (!qword_28AF50)
  {
    result = swift_getWitnessTable(aM_16, &type metadata for ReadingFontSizeChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AF50);
  }

  return result;
}

unint64_t sub_16B330()
{
  result = qword_28AF58;
  if (!qword_28AF58)
  {
    result = swift_getWitnessTable(byte_20486C, &type metadata for ReadingFontSizeChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AF58);
  }

  return result;
}

unint64_t sub_16B388()
{
  result = qword_28AF60;
  if (!qword_28AF60)
  {
    result = swift_getWitnessTable(byte_204894, &type metadata for ReadingFontSizeChangeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AF60);
  }

  return result;
}

uint64_t sub_16B3DC(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
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
      v13 = 0xEC00000061746144;
      if (a1 == 0x657A6953746E6F66 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
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

uint64_t ShareEvent.shareContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 20);
  v4 = sub_3D68(&qword_28AF98, &qword_204978);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareEvent.shareContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 20);
  v4 = sub_3D68(&qword_28AF98, &qword_204978);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ShareEvent(0);
  v5 = *(v4 + 20);
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_28AF98, &qword_204978);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = *(v4 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v8, v2, v9);
}

uint64_t ShareEvent.Model.shareContextData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  a1[1] = v2;
}

uint64_t ShareEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareEvent.Model.init(contentData:shareContextData:eventData:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v6 = a1[3];
  *(a4 + 2) = a1[2];
  *(a4 + 3) = v6;
  v7 = a1[5];
  *(a4 + 4) = a1[4];
  *(a4 + 5) = v7;
  v8 = a1[1];
  *a4 = *a1;
  *(a4 + 1) = v8;
  *(a4 + 6) = *a2;
  v9 = *(type metadata accessor for ShareEvent.Model(0) + 24);
  v10 = sub_1E1150();
  v11 = *(*(v10 - 8) + 32);

  return v11(&a4[v9], a3, v10);
}

unint64_t sub_16BB74()
{
  v1 = 0xD000000000000010;
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

uint64_t sub_16BBE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_16CE20(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_16BC08(uint64_t a1)
{
  v2 = sub_16BF20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16BC44(uint64_t a1)
{
  v2 = sub_16BF20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShareEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28AFA0, &qword_204980);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24[-v6];
  sub_48B8(a1, a1[3]);
  sub_16BF20();
  sub_1E1E00();
  v8 = *(v2 + 48);
  v9 = *(v2 + 16);
  v41 = *(v2 + 32);
  v42 = v8;
  v10 = *(v2 + 48);
  v11 = *(v2 + 80);
  v43 = *(v2 + 64);
  v44 = v11;
  v12 = *(v2 + 16);
  v40[0] = *v2;
  v40[1] = v12;
  v36 = v41;
  v37 = v10;
  v13 = *(v2 + 80);
  v38 = v43;
  v39 = v13;
  v34 = v40[0];
  v35 = v9;
  v33 = 0;
  sub_13A5C(v40, &v27);
  sub_143D0();
  v14 = v45;
  sub_1E1CF0();
  if (v14)
  {
    v29 = v36;
    v30 = v37;
    v31 = v38;
    v32 = v39;
    v27 = v34;
    v28 = v35;
    sub_14424(&v27);
  }

  else
  {
    v29 = v36;
    v30 = v37;
    v31 = v38;
    v32 = v39;
    v27 = v34;
    v28 = v35;
    sub_14424(&v27);
    v15 = *(v2 + 104);
    v25 = *(v2 + 96);
    v26 = v15;
    v24[15] = 1;
    sub_FFB8C();

    sub_1E1C80();
    v26, v16, v17, v18, v19, v20, v21, v22;
    type metadata accessor for ShareEvent.Model(0);
    LOBYTE(v25) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_16BF20()
{
  result = qword_28AFA8;
  if (!qword_28AFA8)
  {
    result = swift_getWitnessTable(a9_5, &type metadata for ShareEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AFA8);
  }

  return result;
}

void ShareEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_1E1150();
  v33 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_3D68(&qword_28AFB0, &qword_204988);
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v8 = &v32 - v7;
  v9 = type metadata accessor for ShareEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v37 = a1;
  sub_48B8(a1, v12);
  sub_16BF20();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v37, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = v35;
    v32 = v6;
    v46 = 0;
    sub_14CB8();
    v21 = v36;
    sub_1E1C20();
    v22 = v42;
    *(v11 + 2) = v41;
    *(v11 + 3) = v22;
    v23 = v44;
    *(v11 + 4) = v43;
    *(v11 + 5) = v23;
    v24 = v40;
    *v11 = v39;
    *(v11 + 1) = v24;
    v45 = 1;
    sub_FFB34();
    sub_1E1BB0();
    *(v11 + 6) = v38;
    LOBYTE(v38) = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v8, v21);
    (*(v33 + 32))(&v11[*(v9 + 24)], v32, v4);
    sub_16C390(v11, v34);
    sub_4E48(v37, v25, v26, v27, v28, v29, v30, v31);
    sub_16C3F4(v11);
  }
}

uint64_t sub_16C390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16C3F4(uint64_t a1)
{
  v2 = type metadata accessor for ShareEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_16C4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_28AF98, &qword_204978);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = *(a1 + 24);
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v9, v4, v10);
}

uint64_t sub_16C63C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = sub_3D68(&qword_28AF98, &qword_204978);
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

uint64_t sub_16C7B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

  v13 = sub_3D68(&qword_28AF98, &qword_204978);
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

void sub_16C924(uint64_t a1)
{
  sub_16CA30(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_16CA30(319, &unk_28B020, sub_FFB34, sub_FFB8C, &type metadata for ShareContextData);
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

void sub_16CA30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_16CAC0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_16CB80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_16CC24(uint64_t a1)
{
  sub_16CCB8();
  if (v1 <= 0x3F)
  {
    sub_1E1150();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_16CCB8()
{
  if (!qword_28B0C0)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_28B0C0);
    }
  }
}

unint64_t sub_16CD1C()
{
  result = qword_28B0F8;
  if (!qword_28B0F8)
  {
    result = swift_getWitnessTable(aQ_12, &type metadata for ShareEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B0F8);
  }

  return result;
}

unint64_t sub_16CD74()
{
  result = qword_28B100;
  if (!qword_28B100)
  {
    result = swift_getWitnessTable(byte_204A88, &type metadata for ShareEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B100);
  }

  return result;
}

unint64_t sub_16CDCC()
{
  result = qword_28B108;
  if (!qword_28B108)
  {
    result = swift_getWitnessTable(byte_204AB0, &type metadata for ShareEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B108);
  }

  return result;
}

uint64_t sub_16CE20(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
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
    v13 = 0x8000000000217100;
    if (a1 == 0xD000000000000010 && 0x8000000000217100 == a2 || (sub_1E1D30() & 1) != 0)
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

uint64_t PurchaseAttemptEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 28);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.contentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 28);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.prevAltContentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 32);
  v4 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.prevAltContentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 32);
  v4 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 36);
  v4 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 36);
  v4 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 48);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 48);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.uppParentContentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 52);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.uppParentContentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 52);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 56);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 56);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PurchaseAttemptEvent(0);
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
  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  v25 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v6, v25);
}

uint64_t PurchaseAttemptEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent.Model(0) + 56);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.Model.init(altContentTypeExposureData:contentData:contentStoreData:contentExposureData:prevAltContentExposureData:purchaseData:upSellData:seriesData:suggestionData:uppParentContentData:eventData:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int16 *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12)
{
  v13 = *a5;
  v14 = *a6;
  v15 = a6[1];
  v16 = *(a6 + 16);
  v17 = *(a6 + 17);
  v18 = a6[3];
  v19 = a6[4];
  v20 = *(a7 + 16);
  v21 = *a10;
  v22 = *(a11 + 48);
  v23 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v23;
  *(a9 + 32) = a1[2];
  *(a9 + 41) = *(a1 + 41);
  v24 = a2[3];
  *(a9 + 96) = a2[2];
  *(a9 + 112) = v24;
  v25 = a2[5];
  *(a9 + 128) = a2[4];
  *(a9 + 144) = v25;
  v26 = a2[1];
  *(a9 + 64) = *a2;
  *(a9 + 80) = v26;
  *(a9 + 221) = *(a3 + 61);
  v27 = *(a3 + 48);
  *(a9 + 192) = *(a3 + 32);
  *(a9 + 208) = v27;
  v28 = *(a3 + 16);
  *(a9 + 160) = *a3;
  *(a9 + 176) = v28;
  v29 = a4[3];
  *(a9 + 264) = a4[2];
  *(a9 + 280) = v29;
  v30 = *a4;
  *(a9 + 248) = a4[1];
  *(a9 + 232) = v30;
  *(a9 + 342) = *(a4 + 110);
  v31 = a4[6];
  *(a9 + 312) = a4[5];
  *(a9 + 328) = v31;
  *(a9 + 296) = a4[4];
  *(a9 + 350) = v13;
  *(a9 + 352) = v14;
  *(a9 + 360) = v15;
  *(a9 + 368) = v16;
  *(a9 + 369) = v17;
  *(a9 + 376) = v18;
  *(a9 + 384) = v19;
  *(a9 + 392) = *a7;
  *(a9 + 408) = v20;
  v32 = a8[1];
  *(a9 + 416) = *a8;
  *(a9 + 432) = v32;
  *(a9 + 448) = a8[2];
  *(a9 + 464) = v21;
  v33 = *(a11 + 16);
  *(a9 + 472) = *a11;
  *(a9 + 488) = v33;
  *(a9 + 504) = *(a11 + 32);
  *(a9 + 520) = v22;
  v34 = *(type metadata accessor for PurchaseAttemptEvent.Model(0) + 56);
  v35 = sub_1E1150();
  v36 = *(*(v35 - 8) + 32);

  return v36(a9 + v34, a12, v35);
}

uint64_t sub_16E340(uint64_t a1)
{
  v2 = sub_16EBF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16E37C(uint64_t a1)
{
  v2 = sub_16EBF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PurchaseAttemptEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28B140, &qword_204B90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v71 - v7;
  sub_48B8(a1, a1[3]);
  sub_16EBF4();
  sub_1E1E00();
  v9 = v3[1];
  v125[0] = *v3;
  v125[1] = v9;
  v11 = *v3;
  v10 = v3[1];
  v126[0] = v3[2];
  *(v126 + 9) = *(v3 + 41);
  v122 = v11;
  v123 = v10;
  v124[0] = v3[2];
  *(v124 + 9) = *(v3 + 41);
  v121 = 0;
  sub_17AA4(v125, &v92, &qword_27FFE8, &qword_1FC3D0);
  sub_4EFC8();
  sub_1E1C80();
  if (v2)
  {
    v92 = v122;
    v93 = v123;
    v94[0] = v124[0];
    *(v94 + 9) = *(v124 + 9);
    sub_18E48(&v92, &qword_27FFE8, &qword_1FC3D0);
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v114[0] = v122;
    v114[1] = v123;
    v115[0] = v124[0];
    *(v115 + 9) = *(v124 + 9);
    sub_18E48(v114, &qword_27FFE8, &qword_1FC3D0);
    v13 = v3[7];
    v14 = v3[5];
    v117 = v3[6];
    v118 = v13;
    v15 = v3[7];
    v16 = v3[9];
    v119 = v3[8];
    v120 = v16;
    v17 = v3[5];
    v116[0] = v3[4];
    v116[1] = v17;
    v110 = v117;
    v111 = v15;
    v18 = v3[9];
    v112 = v119;
    v113 = v18;
    v108 = v116[0];
    v109 = v14;
    v107 = 1;
    sub_13A5C(v116, &v92);
    sub_143D0();
    sub_1E1CF0();
    v103[2] = v110;
    v103[3] = v111;
    v103[4] = v112;
    v103[5] = v113;
    v103[0] = v108;
    v103[1] = v109;
    sub_14424(v103);
    v19 = v3[11];
    v20 = v3[13];
    v105 = v3[12];
    *v106 = v20;
    v21 = v3[11];
    v104[0] = v3[10];
    v104[1] = v21;
    v22 = v3[13];
    v101 = v105;
    v102[0] = v22;
    *&v106[13] = *(v3 + 221);
    *(v102 + 13) = *(v3 + 221);
    v99 = v104[0];
    v100 = v19;
    v98 = 2;
    sub_17AA4(v104, &v92, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    v127 = v5;
    sub_1E1C80();
    v90[2] = v101;
    v91[0] = v102[0];
    *(v91 + 13) = *(v102 + 13);
    v90[0] = v99;
    v90[1] = v100;
    sub_18E48(v90, &qword_27FFF0, &unk_1E9C00);
    v23 = *(v3 + 312);
    v24 = *(v3 + 280);
    v95 = *(v3 + 296);
    v96 = v23;
    v25 = *(v3 + 312);
    *v97 = *(v3 + 328);
    v26 = *(v3 + 248);
    v92 = *(v3 + 232);
    v93 = v26;
    v27 = *(v3 + 280);
    v94[0] = *(v3 + 264);
    v94[1] = v27;
    v87 = v95;
    v88 = v25;
    v89[0] = *(v3 + 328);
    v28 = *(v3 + 248);
    v83 = *(v3 + 232);
    v84 = v28;
    *&v97[14] = *(v3 + 342);
    *(v89 + 14) = *(v3 + 342);
    v85 = v94[0];
    v86 = v24;
    v82 = 3;
    sub_17AA4(&v92, v80, &qword_27FFF8, &qword_1F06D0);
    sub_4F070();
    sub_1E1C80();
    v80[4] = v87;
    v80[5] = v88;
    *v81 = v89[0];
    *&v81[14] = *(v89 + 14);
    v80[0] = v83;
    v80[1] = v84;
    v80[2] = v85;
    v80[3] = v86;
    sub_18E48(v80, &qword_27FFF8, &qword_1F06D0);
    LOWORD(v73) = *(v3 + 175);
    v79 = 4;
    sub_4F0C4();
    sub_1E1C80();
    v29 = *(v3 + 45);
    v30 = *(v3 + 368);
    v31 = *(v3 + 369);
    v32 = *(v3 + 47);
    v33 = *(v3 + 48);
    *&v73 = *(v3 + 44);
    *(&v73 + 1) = v29;
    LOBYTE(v74) = v30;
    BYTE1(v74) = v31;
    v75 = v32;
    v76 = v33;
    v79 = 5;
    sub_2C904();

    v72 = v8;
    sub_1E1CF0();
    v34 = *(&v73 + 1);
    v76, v35, v36, v37, v38, v39, v40, v41;
    v34, v42, v43, v44, v45, v46, v47, v48;
    v49 = *(v3 + 51);
    v73 = *(v3 + 392);
    v74 = v49;
    v79 = 6;
    sub_28450();

    sub_1E1C80();
    v74, v50, v51, v52, v53, v54, v55, v56;
    v57 = *(v3 + 53);
    v58 = *(v3 + 54);
    v59 = *(v3 + 55);
    v60 = *(v3 + 56);
    v61 = *(v3 + 57);
    *&v73 = *(v3 + 52);
    *(&v73 + 1) = v57;
    v74 = v58;
    v75 = v59;
    v76 = v60;
    v77 = v61;
    v79 = 7;
    sub_13BDC(v73, v57, v58, v59, v60, v61);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v73, *(&v73 + 1), v74, v75, v76, v77, v62, v63);
    LOBYTE(v73) = *(v3 + 464);
    v79 = 8;
    sub_284F8();
    sub_1E1C80();
    v64 = *(v3 + 60);
    v65 = *(v3 + 61);
    v66 = *(v3 + 62);
    v67 = *(v3 + 63);
    v68 = *(v3 + 64);
    v69 = *(v3 + 520);
    *&v73 = *(v3 + 59);
    *(&v73 + 1) = v64;
    v74 = v65;
    v75 = v66;
    v76 = v67;
    v77 = v68;
    v78 = v69;
    v79 = 9;
    sub_4E2A0(v73, v64, v65, v66, v67, v68);
    sub_4F118();
    sub_1E1C80();
    sub_4F16C(v73, *(&v73 + 1), v74, v75, v76, v77, v78, v70);
    type metadata accessor for PurchaseAttemptEvent.Model(0);
    LOBYTE(v73) = 10;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    return (*(v6 + 8))(v72, v127);
  }
}

unint64_t sub_16EBF4()
{
  result = qword_28B148;
  if (!qword_28B148)
  {
    result = swift_getWitnessTable(byte_204DC0, &type metadata for PurchaseAttemptEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B148);
  }

  return result;
}

void PurchaseAttemptEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_1E1150();
  v51 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_3D68(&qword_28B150, &qword_204B98);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v7 = v48 - v6;
  v8 = type metadata accessor for PurchaseAttemptEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v80 = a1;
  sub_48B8(a1, v11);
  sub_16EBF4();
  v54 = v7;
  v12 = v56;
  sub_1E1DF0();
  if (v12)
  {
    sub_4E48(v80, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v49 = v5;
    v50 = v3;
    v56 = v10;
    v20 = v53;
    v75 = 0;
    sub_4FB10();
    sub_1E1BB0();
    v21 = v77;
    v22 = v56;
    *v56 = v76;
    *(v22 + 1) = v21;
    *(v22 + 2) = v78[0];
    *(v22 + 41) = *(v78 + 9);
    v68 = 1;
    sub_14CB8();
    sub_1E1C20();
    v23 = v72;
    *(v22 + 6) = v71;
    *(v22 + 7) = v23;
    v24 = v74;
    *(v22 + 8) = v73;
    *(v22 + 9) = v24;
    v25 = v70;
    *(v22 + 4) = v69;
    *(v22 + 5) = v25;
    v63 = 2;
    sub_4FB64();
    v48[1] = 0;
    sub_1E1BB0();
    v26 = *v67;
    *(v22 + 12) = v66;
    *(v22 + 13) = v26;
    *(v22 + 221) = *&v67[13];
    v27 = v65;
    *(v22 + 10) = v64;
    *(v22 + 11) = v27;
    v62 = 3;
    sub_4FBB8();
    sub_1E1BB0();
    v28 = v78[3];
    *(v22 + 232) = v78[2];
    *(v22 + 248) = v28;
    v29 = v78[7];
    *(v22 + 296) = v78[6];
    *(v22 + 312) = v29;
    *(v22 + 328) = v79[0];
    *(v22 + 342) = *(v79 + 14);
    v30 = v78[5];
    *(v22 + 264) = v78[4];
    *(v22 + 280) = v30;
    v61 = 4;
    sub_4FC0C();
    sub_1E1BB0();
    *(v22 + 175) = v57;
    v61 = 5;
    sub_2C8AC();
    sub_1E1C20();
    v31 = *(&v57 + 1);
    v32 = v58;
    v33 = BYTE1(v58);
    v34 = *(&v58 + 1);
    v35 = v59;
    *(v22 + 44) = v57;
    *(v22 + 45) = v31;
    v22[368] = v32;
    v22[369] = v33;
    *(v22 + 47) = v34;
    *(v22 + 48) = v35;
    v61 = 6;
    sub_28EF4();
    sub_1E1BB0();
    v36 = v58;
    *(v22 + 392) = v57;
    *(v22 + 51) = v36;
    v61 = 7;
    sub_DAD8();
    sub_1E1BB0();
    v37 = v58;
    *(v22 + 26) = v57;
    *(v22 + 27) = v37;
    *(v22 + 28) = v59;
    v61 = 8;
    sub_28F9C();
    sub_1E1BB0();
    v22[464] = v57;
    v61 = 9;
    sub_4FC60();
    sub_1E1BB0();
    v38 = v60;
    v39 = v58;
    *(v22 + 472) = v57;
    *(v22 + 488) = v39;
    *(v22 + 504) = v59;
    v56[520] = v38;
    LOBYTE(v57) = 10;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v54, v55);
    v40 = v56;
    (*(v51 + 32))(&v56[*(v8 + 56)], v49, v50);
    sub_16F59C(v40, v52);
    sub_4E48(v80, v41, v42, v43, v44, v45, v46, v47);
    sub_16F600(v40);
  }
}

uint64_t sub_16F59C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseAttemptEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16F600(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseAttemptEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_16F710(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_22:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_21:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_22;
  }

  v14 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_21;
  }

  v15 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_21;
  }

  v16 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_21;
  }

  v17 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_21;
  }

  v18 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_21;
  }

  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_21;
  }

  v20 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_21;
  }

  v21 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_21;
  }

  v23 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v24 = *(*(v23 - 8) + 48);
  v25 = a1 + a3[14];

  return v24(v25, a2, v23);
}

uint64_t sub_16FB28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_22:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_21:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_22;
  }

  v16 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_21;
  }

  v17 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_21;
  }

  v18 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_21;
  }

  v19 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_21;
  }

  v20 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_21;
  }

  v21 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_21;
  }

  v22 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_21;
  }

  v23 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_21;
  }

  v25 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v26 = *(*(v25 - 8) + 56);
  v27 = a1 + a4[14];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_16FF4C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_17000C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1700C4()
{
  result = qword_28B2C8;
  if (!qword_28B2C8)
  {
    result = swift_getWitnessTable(asc_204D98, &type metadata for PurchaseAttemptEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B2C8);
  }

  return result;
}

unint64_t sub_17011C()
{
  result = qword_28B2D0;
  if (!qword_28B2D0)
  {
    result = swift_getWitnessTable(byte_204D08, &type metadata for PurchaseAttemptEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B2D0);
  }

  return result;
}

unint64_t sub_170174()
{
  result = qword_28B2D8;
  if (!qword_28B2D8)
  {
    result = swift_getWitnessTable(byte_204D30, &type metadata for PurchaseAttemptEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B2D8);
  }

  return result;
}

BookAnalytics::PurchaseFailureReason_optional __swiftcall PurchaseFailureReason.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2613D8;
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

uint64_t PurchaseFailureReason.rawValue.getter()
{
  v1 = 0x726F727265;
  if (*v0 != 1)
  {
    v1 = 0x64656C65636E6163;
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

uint64_t sub_17027C(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE500000000000000;
  v10 = 0x726F727265;
  if (v8 != 1)
  {
    v10 = 0x64656C65636E6163;
    v9 = 0xE800000000000000;
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
  v14 = 0x726F727265;
  if (*a2 != 1)
  {
    v14 = 0x64656C65636E6163;
    v13 = 0xE800000000000000;
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

unint64_t sub_17037C()
{
  result = qword_28B2E0;
  if (!qword_28B2E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PurchaseFailureReason, &type metadata for PurchaseFailureReason, v0, v1);
    atomic_store(result, &qword_28B2E0);
  }

  return result;
}

Swift::Int sub_1703D0()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE500000000000000;
  if (v1 != 1)
  {
    v2 = 0xE800000000000000;
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

void sub_170470(uint64_t a1)
{
  v2 = 0xE500000000000000;
  if (*v1 != 1)
  {
    v2 = 0xE800000000000000;
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

Swift::Int sub_1704FC(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE500000000000000;
  if (v2 != 1)
  {
    v3 = 0xE800000000000000;
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

void sub_1705A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x726F727265;
  if (v2 != 1)
  {
    v5 = 0x64656C65636E6163;
    v4 = 0xE800000000000000;
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

unint64_t sub_1706C0()
{
  result = qword_28B2E8;
  if (!qword_28B2E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PurchaseFailureReason, &type metadata for PurchaseFailureReason, v0, v1);
    atomic_store(result, &qword_28B2E8);
  }

  return result;
}

BookAnalytics::ContentAcquisitionType_optional __swiftcall ContentAcquisitionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261440;
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

uint64_t ContentAcquisitionType.rawValue.getter()
{
  v1 = 0x756F4265726F7473;
  if (*v0 != 1)
  {
    v1 = 0x65726F74536E6F6ELL;
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

uint64_t sub_1707F4(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0x756F4265726F7473;
  v10 = 0xEB00000000746867;
  if (v8 != 1)
  {
    v9 = 0x65726F74536E6F6ELL;
    v10 = 0xEE00746867756F42;
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

  v13 = 0x756F4265726F7473;
  v14 = 0xEB00000000746867;
  if (*a2 != 1)
  {
    v13 = 0x65726F74536E6F6ELL;
    v14 = 0xEE00746867756F42;
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

unint64_t sub_170924()
{
  result = qword_28B2F0;
  if (!qword_28B2F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentAcquisitionType, &type metadata for ContentAcquisitionType, v0, v1);
    atomic_store(result, &qword_28B2F0);
  }

  return result;
}

Swift::Int sub_170978()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xEB00000000746867;
  if (v1 != 1)
  {
    v2 = 0xEE00746867756F42;
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

void sub_170A30(uint64_t a1)
{
  v2 = 0xEB00000000746867;
  if (*v1 != 1)
  {
    v2 = 0xEE00746867756F42;
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

Swift::Int sub_170AD4(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xEB00000000746867;
  if (v2 != 1)
  {
    v3 = 0xEE00746867756F42;
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

void sub_170B94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEB00000000746867;
  v5 = 0x756F4265726F7473;
  if (v2 != 1)
  {
    v5 = 0x65726F74536E6F6ELL;
    v4 = 0xEE00746867756F42;
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

unint64_t sub_170CC8()
{
  result = qword_28B2F8;
  if (!qword_28B2F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentAcquisitionType, &type metadata for ContentAcquisitionType, v0, v1);
    atomic_store(result, &qword_28B2F8);
  }

  return result;
}

uint64_t sub_170D1C(uint64_t a1, BAEventReporter *a2, uint64_t a3, uint64_t a4, BAEventReporter *a5)
{
  v9 = sub_3D68(&qword_287EC0, &qword_205170);
  __chkstk_darwin(v9 - 8);
  v11 = v53 - v10;
  sub_D0B34(a3, v53 - v10);
  v12 = sub_1E1900();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_172E38(v11);
  }

  else
  {
    sub_1E18F0();
    (*(v13 + 8))(v11, v12);
  }

  isa = a5[1].super.isa;
  swift_unknownObjectRetain();
  a5, v16, v17, v18, v19, v20, v21, v22;
  if (isa)
  {
    swift_getObjectType();
    v23 = sub_1E18D0();
    v25 = v24;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26 = sub_1E17A0();
      v27 = swift_allocObject();
      *(v27 + 16) = a4;
      *(v27 + 24) = a5;

      if (v25 | v23)
      {
        v54[0] = 0;
        v54[1] = 0;
        v28 = v54;
        v54[2] = v23;
        v54[3] = v25;
      }

      else
      {
        v28 = 0;
      }

      v53[1] = 7;
      v53[2] = v28;
      v53[3] = v26 + 2;
      v30 = swift_task_create();
      v26, v31, v32, v33, v34, v35, v36, v37;
      sub_172E38(a3);
      a2, v38, v39, v40, v41, v42, v43, v44;
      a5, v45, v46, v47, v48, v49, v50, v51;
      return v30;
    }
  }

  else
  {
    v23 = 0;
    v25 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_172E38(a3);
  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  *(v29 + 24) = a5;
  if (v25 | v23)
  {
    v54[4] = 0;
    v54[5] = 0;
    v54[6] = v23;
    v54[7] = v25;
  }

  return swift_task_create();
}

uint64_t sub_170FDC(uint64_t a1, BAEventReporter *a2, uint64_t a3, uint64_t a4, BAEventReporter *a5)
{
  v9 = sub_3D68(&qword_287EC0, &qword_205170);
  __chkstk_darwin(v9 - 8);
  v11 = v53 - v10;
  sub_D0B34(a3, v53 - v10);
  v12 = sub_1E1900();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_172E38(v11);
  }

  else
  {
    sub_1E18F0();
    (*(v13 + 8))(v11, v12);
  }

  isa = a5[1].super.isa;
  swift_unknownObjectRetain();
  a5, v16, v17, v18, v19, v20, v21, v22;
  if (isa)
  {
    swift_getObjectType();
    v23 = sub_1E18D0();
    v25 = v24;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26 = sub_1E17A0();
      v27 = swift_allocObject();
      *(v27 + 16) = a4;
      *(v27 + 24) = a5;

      sub_3D68(&qword_28B480, &qword_205200);
      v28 = (v25 | v23);
      if (v25 | v23)
      {
        v54[0] = 0;
        v54[1] = 0;
        v28 = v54;
        v54[2] = v23;
        v54[3] = v25;
      }

      v53[1] = 7;
      v53[2] = v28;
      v53[3] = v26 + 2;
      v29 = swift_task_create();
      a5, v30, v31, v32, v33, v34, v35, v36;
      v26, v37, v38, v39, v40, v41, v42, v43;
      sub_172E38(a3);
      a2, v44, v45, v46, v47, v48, v49, v50;
      return v29;
    }
  }

  else
  {
    v23 = 0;
    v25 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_172E38(a3);
  v52 = swift_allocObject();
  *(v52 + 16) = a4;
  *(v52 + 24) = a5;
  sub_3D68(&qword_28B480, &qword_205200);
  if (v25 | v23)
  {
    v54[4] = 0;
    v54[5] = 0;
    v54[6] = v23;
    v54[7] = v25;
  }

  return swift_task_create();
}

uint64_t sub_1712B0()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_171310()
{
  type metadata accessor for SessionActor.ActorType();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_28B300 = v0;
  return result;
}

BAEventReporter *sub_171350()
{
  v1 = v0;
  sub_171660();
  v0[1].super.isa = v2;
  *v0[1].dataProviders = v3;
  v0[2].super.isa = &_swiftEmptyDictionarySingleton;
  if (qword_27D048 != -1)
  {
    swift_once();
  }

  v4 = sub_1E1360();
  sub_3B2C(v4, qword_2802C0);

  v5 = sub_1E1340();
  v6 = sub_1E1960();
  v1, v7, v8, v9, v10, v11, v12, v13;
  if (os_log_type_enabled(v5, v6))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136315138;
    isa = v1[1].super.isa;
    v17 = *v1[1].dataProviders;

    v18 = sub_DD91C(isa, v17, &v34);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v5, v6, "file path: %s", v14, 0xCu);
    sub_4E48(v15, v26, v27, v28, v29, v30, v31, v32);
  }

  sub_1714D4();
  return v1;
}

void sub_1714D4()
{
  v1 = *(v0 + 24);
  v2 = objc_opt_self();

  v23 = [v2 defaultManager];
  v3 = sub_1E1770();
  v4 = [v23 fileExistsAtPath:v3];

  if (v4)
  {
    v12 = sub_1E1770();
    v1, v13, v14, v15, v16, v17, v18, v19;
    v24 = 0;
    v20 = [v23 removeItemAtPath:v12 error:&v24];

    if (v20)
    {
      v21 = v24;
    }

    else
    {
      v22 = v24;
      sub_1E08C0();

      swift_willThrow();
    }
  }

  else
  {
    v1, v5, v6, v7, v8, v9, v10, v11;
  }
}

void sub_171660()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = sub_1E18C0();

  isa = v1[1].super.isa;
  if (isa)
  {
    v3 = *v1[isa + 1].dataProviders;

    v1, v4, v5, v6, v7, v8, v9, v10;
    v22._object = 0x80000000002171E0;
    v22._countAndFlagsBits = 0xD000000000000016;
    sub_1E17B0(v22);
    v3, v11, v12, v13, v14, v15, v16, v17;
    v18 = [objc_opt_self() defaultManager];
    v19 = sub_1E1770();
    v20 = [v18 fileExistsAtPath:v19];

    if ((v20 & 1) == 0)
    {
      v21 = sub_1E1770();
      [v18 createFileAtPath:v21 contents:0 attributes:0];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1717A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  if (qword_27D5A8 != -1)
  {
    swift_once();
  }

  v6 = qword_28B300;

  return _swift_task_switch(sub_171840, v6, 0);
}

uint64_t sub_171840()
{
  v1 = *(v0 + 40);
  v2 = sub_1E1060();
  v4 = v3;
  v5 = sub_1E1070();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v1 + 32);
  *(v1 + 32) = 0x8000000000000000;
  sub_173CFC(v5, v2, v4, isUniquelyReferenced_nonNull_native);
  v4, v7, v8, v9, v10, v11, v12, v13;
  *(v1 + 32) = v16;
  swift_endAccess();
  v14 = *(v0 + 8);

  return v14();
}

void sub_17191C(uint64_t a1)
{
  v2 = objc_opt_self();
  isa = sub_1E1720().super.isa;
  v97 = 0;
  v4 = [v2 dataWithJSONObject:isa options:8 error:&v97];

  v5 = v97;
  if (v4)
  {
    v6 = sub_1E0950();
    v8 = v7;

    v9 = *(v1 + 24);

    v10 = sub_1E1770();
    v11 = objc_opt_self();
    v12 = [v11 fileHandleForWritingAtPath:v10];

    if (v12)
    {
      v9, v13, v14, v15, v16, v17, v18, v19;
    }

    else
    {
      v44 = [objc_opt_self() defaultManager];
      v45 = sub_1E1770();
      [v44 createFileAtPath:v45 contents:0 attributes:0];

      v46 = sub_1E1770();
      v9, v47, v48, v49, v50, v51, v52, v53;
      v12 = [v11 fileHandleForWritingAtPath:v46];

      if (!v12)
      {
LABEL_11:
        sub_158E5C(v6, v8, v54, v55, v56, v57, v58, v59);
        return;
      }
    }

    sub_1E1950();
    v60 = sub_1E0940().super.isa;
    [v12 writeData:v60];

    v97 = 0;
    if ([v12 closeAndReturnError:&v97])
    {
      v61 = v97;

      goto LABEL_11;
    }

    v62 = v97;
    sub_1E08C0();

    swift_willThrow();
    if (qword_27D048 != -1)
    {
      swift_once();
    }

    v63 = sub_1E1360();
    sub_3B2C(v63, qword_2802C0);
    swift_errorRetain();
    v22 = sub_1E1340();
    v64 = sub_1E1980();

    if (os_log_type_enabled(v22, v64))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v97 = v72;
      *v71 = 136315138;
      swift_getErrorValue();
      v73 = sub_1E1D70();
      v75 = v74;
      v76 = sub_DD91C(v73, v74, &v97);
      v75, v77, v78, v79, v80, v81, v82, v83;
      *(v71 + 4) = v76;
      _os_log_impl(&dword_0, v22, v64, "error while writing to disk: %s", v71, 0xCu);
      sub_4E48(v72, v84, v85, v86, v87, v88, v89, v90);

      sub_158E5C(v6, v8, v91, v92, v93, v94, v95, v96);

      goto LABEL_17;
    }

    sub_158E5C(v6, v8, v65, v66, v67, v68, v69, v70);
  }

  else
  {
    v20 = v5;
    sub_1E08C0();

    swift_willThrow();
    if (qword_27D048 != -1)
    {
      swift_once();
    }

    v21 = sub_1E1360();
    sub_3B2C(v21, qword_2802C0);
    swift_errorRetain();
    v22 = sub_1E1340();
    v23 = sub_1E1980();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v97 = v25;
      *v24 = 136315138;
      swift_getErrorValue();
      v26 = sub_1E1D70();
      v28 = v27;
      v29 = sub_DD91C(v26, v27, &v97);
      v28, v30, v31, v32, v33, v34, v35, v36;
      *(v24 + 4) = v29;
      _os_log_impl(&dword_0, v22, v23, "error serializing json data: %s", v24, 0xCu);
      sub_4E48(v25, v37, v38, v39, v40, v41, v42, v43);

LABEL_17:

      return;
    }
  }
}

void sub_171E5C(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v5 = sub_1E0BE0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = sub_3D68(&qword_287EC0, &qword_205170);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_1E1900();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v6 + 16))(v9, a1, v5);
  v14 = qword_27D5A8;
  v15 = v3;

  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_28B300;
  v17 = sub_172CE4();
  v18 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v20[1].super.isa = v16;
  *v20[1].dataProviders = v17;
  v21 = v31;
  v20[2].super.isa = v30;
  *v20[2].dataProviders = v21;
  (*(v6 + 32))(v20 + v18, v9, v5);
  *(&v20->super.isa + v19) = v15;

  v22 = sub_170D1C(0, 0, v12, &unk_2051C0, v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
}

uint64_t sub_1720A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[89] = a7;
  v7[88] = a6;
  v7[87] = a5;
  v7[86] = a4;
  if (qword_27D5A8 != -1)
  {
    swift_once();
  }

  v8 = qword_28B300;

  return _swift_task_switch(sub_172178, v8, 0);
}

uint64_t sub_172178()
{
  sub_1E0BE0();
  v1 = sub_1E0BC0();
  v2 = sub_1E1030();
  v4 = v3;

  v5 = objc_opt_self();
  isa = sub_1E0940().super.isa;
  v0[84] = 0;
  v7 = [v5 JSONObjectWithData:isa options:0 error:v0 + 84];

  v8 = v0[84];
  if (v7)
  {
    v9 = v8;
    sub_1E1A60();
    swift_unknownObjectRelease();
    sub_3D68(&qword_28B470, &unk_2051D8);
    if (swift_dynamicCast())
    {
      v16 = v0[85];
    }

    else
    {
      v16 = sub_3246C(_swiftEmptyArrayStorage);
    }

    sub_158E5C(v2, v4, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v17 = v8;
    sub_1E08C0();

    swift_willThrow();
    sub_158E5C(v2, v4, v18, v19, v20, v21, v22, v23);
    v16 = sub_3246C(_swiftEmptyArrayStorage);
  }

  v0[67] = 0x746144746E657665;
  v0[68] = 0xE900000000000061;

  sub_1E1AC0();
  if (!v16[1].super.isa || (v31 = sub_A5D4((v0 + 42)), (v24 & 1) == 0))
  {
    v16, v24, v25, v26, v27, v28, v29, v30;
    v69 = (v0 + 42);
LABEL_17:
    sub_A7F4(v69);
    goto LABEL_18;
  }

  sub_326BC(*v16[3].dataProviders + 32 * v31, (v0 + 52));
  sub_A7F4((v0 + 42));
  v16, v32, v33, v34, v35, v36, v37, v38;
  sub_3D68(&qword_28B470, &unk_2051D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v61 = &_swiftEmptyDictionarySingleton;
    goto LABEL_19;
  }

  v39 = v0[83];
  v0[79] = 0x496E6F6973736573;
  v0[80] = 0xE900000000000044;
  sub_1E1AC0();
  if (!v39[1].super.isa || (v47 = sub_A5D4((v0 + 47)), (v40 & 1) == 0))
  {
    v39, v40, v41, v42, v43, v44, v45, v46;
    v69 = (v0 + 47);
    goto LABEL_17;
  }

  sub_326BC(*v39[3].dataProviders + 32 * v47, (v0 + 56));
  sub_A7F4((v0 + 47));
  v39, v48, v49, v50, v51, v52, v53, v54;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v55 = v0[87];
  v56 = v0[81];
  v57 = v0[82];
  swift_beginAccess();
  v58 = *(v55 + 32);
  if (*(v58 + 16) && (v59 = sub_A2F4(v56, v57), (v60 & 1) != 0))
  {
    v61 = *(*(v58 + 56) + 8 * v59);
    swift_endAccess();

    v57, v62, v63, v64, v65, v66, v67, v68;
  }

  else
  {
    swift_endAccess();
    v57, v97, v98, v99, v100, v101, v102, v103;
    v61 = sub_322DC(_swiftEmptyArrayStorage);
  }

LABEL_19:
  v70 = sub_1E0BD0();
  v72 = v71;
  v0[69] = v70;
  v0[70] = v71;
  sub_12758C();
  if (sub_1E1930())
  {
    sub_3D68(&qword_28B460, &qword_2051C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_205090;
    v0[71] = 1701667182;
    v0[72] = 0xE400000000000000;
    sub_1E1AC0();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v70;
    *(inited + 80) = v72;
    v0[73] = 1701869940;
    v0[74] = 0xE400000000000000;
    sub_1E1AC0();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = 0x746E657665;
    *(inited + 152) = 0xE500000000000000;
    v0[75] = 0x446E6F6973736573;
    v0[76] = 0xEB00000000617461;
    sub_1E1AC0();
    *(inited + 240) = sub_3D68(&qword_28B468, &qword_2051D0);
    *(inited + 216) = v61;
    v0[77] = 1635017060;
    v0[78] = 0xE400000000000000;
    sub_1E1AC0();
    *(inited + 312) = sub_3D68(&qword_28B470, &unk_2051D8);
    *(inited + 288) = v16;
    v61 = sub_3246C(inited);
    swift_setDeallocating();
    sub_3D68(&qword_27F0F8, &qword_1E7F10);
    swift_arrayDestroy();
    sub_17191C(v61);
  }

  else
  {
    v16, v73, v74, v75, v76, v77, v78, v79;
    v72, v88, v89, v90, v91, v92, v93, v94;
  }

  v61, v81, v82, v83, v84, v85, v86, v87;
  v95 = v0[1];

  return v95();
}

uint64_t sub_17273C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return _swift_deallocClassInstance(v8, 40, 7);
}

void sub_17283C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v7 = sub_1E1090();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_3D68(&qword_287EC0, &qword_205170);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_1E1900();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v8 + 16))(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v14 = qword_27D5A8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_28B300;
  v16 = sub_172CE4();
  v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v18[1].super.isa = v15;
  *v18[1].dataProviders = v16;
  v18[2].super.isa = v5;
  (*(v8 + 32))(v18 + v17, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  v19 = sub_170D1C(0, 0, v12, v28, v18);
  v19, v20, v21, v22, v23, v24, v25, v26;
}

void sub_172A60(uint64_t a1)
{
  v3 = sub_1E1090();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_287EC0, &qword_205170);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_1E1900();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v4 + 16))(v6, a1, v3);
  v11 = qword_27D5A8;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_28B300;
  v13 = sub_172CE4();
  v14 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v15[1].super.isa = v12;
  *v15[1].dataProviders = v13;
  v15[2].super.isa = v1;
  (*(v4 + 32))(v15 + v14, v6, v3);

  v16 = sub_170D1C(0, 0, v9, &unk_205180, v15);
  v16, v17, v18, v19, v20, v21, v22, v23;
}

unint64_t sub_172CE4()
{
  result = qword_28B450;
  if (!qword_28B450)
  {
    v3 = type metadata accessor for SessionActor.ActorType();
    result = swift_getWitnessTable(aE_15, v3, v0, v1);
    atomic_store(result, &qword_28B450);
  }

  return result;
}

uint64_t sub_172D40(uint64_t a1)
{
  v4 = *(sub_1E1090() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_92C90;

  return sub_1717A8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_172E38(uint64_t a1)
{
  v2 = sub_3D68(&qword_287EC0, &qword_205170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_172EA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_92C90;

  return sub_D0BA4(a1, v4);
}

uint64_t sub_172F58(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

void sub_172F90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_3D68(&qword_28B488, &qword_205210);
  v45 = v4;
  v6 = sub_1E1B40();
  v14 = v6;
  if (*(v5 + 16))
  {
    v44 = v5;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v29 = 16 * (v26 | (v15 << 6));
      v30 = (*(v5 + 48) + v29);
      v31 = *v30;
      v32 = v30[1];
      v33 = (*(v5 + 56) + v29);
      v34 = v33[1];
      v46 = *v33;
      if ((v45 & 1) == 0)
      {
      }

      sub_1E1DC0();
      sub_1E17D0();
      v35 = sub_1E1DE0();
      v36 = -1 << *(v14 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = 16 * v22;
      v24 = (*(v14 + 48) + v23);
      *v24 = v31;
      v24[1] = v32;
      v25 = (*(v14 + 56) + v23);
      *v25 = v46;
      v25[1] = v34;
      ++*(v14 + 16);
      v5 = v44;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v19 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v2;
      goto LABEL_33;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v2;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_33:
  *v3 = v14;
}

void sub_173250(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_3D68(&qword_27F100, &qword_1E7F18);
  v41 = v4;
  v6 = sub_1E1B40();
  v14 = v6;
  if (*(v5 + 16))
  {
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = (*(v5 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = (*(v5 + 56) + 32 * v27);
      if (v41)
      {
        sub_326AC(v31, v42);
      }

      else
      {
        sub_326BC(v31, v42);
      }

      sub_1E1DC0();
      sub_1E17D0();
      v32 = sub_1E1DE0();
      v33 = -1 << *(v14 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v29;
      v23[1] = v30;
      sub_326AC(v42, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v2;
      goto LABEL_34;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_34:
  *v3 = v14;
}

void sub_173508(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_3D68(&qword_28B458, &qword_2051A0);
  v42 = v4;
  v6 = sub_1E1B40();
  v14 = v6;
  if (*(v5 + 16))
  {
    v41 = v5;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = (*(v5 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(*(v5 + 56) + 8 * v27);
      if ((v42 & 1) == 0)
      {
      }

      sub_1E1DC0();
      sub_1E17D0();
      v32 = sub_1E1DE0();
      v33 = -1 << *(v14 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v29;
      v23[1] = v30;
      *(*(v14 + 56) + 8 * v22) = v31;
      ++*(v14 + 16);
      v5 = v41;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v2;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_33:
  *v3 = v14;
}

void sub_1737B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_3D68(&qword_27F0E8, &qword_1E7F00);
  v42 = v4;
  v6 = sub_1E1B40();
  v14 = v6;
  if (*(v5 + 16))
  {
    v41 = v5;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = (*(v5 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(*(v5 + 56) + 8 * v27);
      if ((v42 & 1) == 0)
      {
      }

      sub_1E1DC0();
      sub_1E17D0();
      v32 = sub_1E1DE0();
      v33 = -1 << *(v14 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v29;
      v23[1] = v30;
      *(*(v14 + 56) + 8 * v22) = v31;
      ++*(v14 + 16);
      v5 = v41;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v2;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_33:
  *v3 = v14;
}

void sub_173A58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_3D68(&qword_28B478, &qword_2051E8);
  v43 = v4;
  v6 = sub_1E1B40();
  v14 = v6;
  if (*(v5 + 16))
  {
    v42 = v5;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = (*(v5 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(*(v5 + 56) + 8 * v27);
      if ((v43 & 1) == 0)
      {

        v32 = v31;
      }

      sub_1E1DC0();
      sub_1E17D0();
      v33 = sub_1E1DE0();
      v34 = -1 << *(v14 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v29;
      v23[1] = v30;
      *(*(v14 + 56) + 8 * v22) = v31;
      ++*(v14 + 16);
      v5 = v42;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v2;
      goto LABEL_33;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v2;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_33:
  *v3 = v14;
}

void sub_173CFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_A2F4(a2, a3);
  v19 = *(v10 + 16);
  v20 = (v12 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v12;
  v24 = *(v10 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_173508(v22, a4 & 1);
      v11 = sub_A2F4(a2, a3);
      if ((v23 & 1) != (v12 & 1))
      {
LABEL_18:
        sub_1E1D60();
        __break(1u);
        return;
      }
    }

    else
    {
      v25 = v11;
      sub_17416C();
      v11 = v25;
    }
  }

  v26 = *v5;
  if (v23)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v11);
    *(v27 + 8 * v11) = a1;

    v28, v12, v13, v14, v15, v16, v17, v18;
    return;
  }

  v26[(v11 >> 6) + 8] |= 1 << v11;
  v29 = (v26[6] + 16 * v11);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v11) = a1;
  v30 = v26[2];
  v21 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

void sub_173E78(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_A2F4(a2, a3);
  v19 = *(v10 + 16);
  v20 = (v12 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v12;
  v24 = *(v10 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_1737B0(v22, a4 & 1);
      v11 = sub_A2F4(a2, a3);
      if ((v23 & 1) != (v12 & 1))
      {
LABEL_18:
        sub_1E1D60();
        __break(1u);
        return;
      }
    }

    else
    {
      v25 = v11;
      sub_1746BC();
      v11 = v25;
    }
  }

  v26 = *v5;
  if (v23)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v11);
    *(v27 + 8 * v11) = a1;

    v28, v12, v13, v14, v15, v16, v17, v18;
    return;
  }

  v26[(v11 >> 6) + 8] |= 1 << v11;
  v29 = (v26[6] + 16 * v11);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v11) = a1;
  v30 = v26[2];
  v21 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

void sub_173FF4()
{
  v1 = v0;
  sub_3D68(&qword_28B488, &qword_205210);
  v2 = *v0;
  v3 = sub_1E1B30();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = 16 * (v21 | (v15 << 6));
        v25 = (*(v2 + 48) + v24);
        v27 = *v25;
        v26 = v25[1];
        v28 = (*(v2 + 56) + v24);
        v29 = *v28;
        v30 = v28[1];
        v31 = (*(v11 + 48) + v24);
        *v31 = v27;
        v31[1] = v26;
        v32 = (*(v11 + 56) + v24);
        *v32 = v29;
        v32[1] = v30;
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v2, v4, v5, v6, v7, v8, v9, v10;
    *v1 = v11;
  }
}

void sub_17416C()
{
  v1 = v0;
  sub_3D68(&qword_28B458, &qword_2051A0);
  v2 = *v0;
  v3 = sub_1E1B30();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = (*(v2 + 48) + 16 * v24);
        v26 = v25[1];
        v27 = *(*(v2 + 56) + 8 * v24);
        v28 = (*(v11 + 48) + 16 * v24);
        *v28 = *v25;
        v28[1] = v26;
        *(*(v11 + 56) + 8 * v24) = v27;
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v2, v4, v5, v6, v7, v8, v9, v10;
    *v1 = v11;
  }
}

uint64_t sub_1742DC(uint64_t a1)
{
  v4 = *(sub_1E1090() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7E674;

  return sub_1717A8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1743D4()
{
  v1 = sub_1E1090();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  *(v0 + 32), v6, v7, v8, v9, v10, v11, v12;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1744A0()
{
  v1 = sub_1E0BE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  *(v0 + v5), v6, v7, v8, v9, v10, v11, v12;

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_17457C(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(sub_1E0BE0() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_92C90;

  return sub_1720A8(a1, v9, v10, v1 + v8, v11, v6, v5);
}

void sub_1746BC()
{
  v1 = v0;
  sub_3D68(&qword_27F0E8, &qword_1E7F00);
  v2 = *v0;
  v3 = sub_1E1B30();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = (*(v2 + 48) + 16 * v24);
        v26 = v25[1];
        v27 = *(*(v2 + 56) + 8 * v24);
        v28 = (*(v11 + 48) + 16 * v24);
        *v28 = *v25;
        v28[1] = v26;
        *(*(v11 + 56) + 8 * v24) = v27;
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v2, v4, v5, v6, v7, v8, v9, v10;
    *v1 = v11;
  }
}

void sub_17482C()
{
  v1 = v0;
  sub_3D68(&qword_28B478, &qword_2051E8);
  v2 = *v0;
  v3 = sub_1E1B30();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = (*(v2 + 48) + 16 * v24);
        v26 = v25[1];
        v27 = *(*(v2 + 56) + 8 * v24);
        v28 = (*(v11 + 48) + 16 * v24);
        *v28 = *v25;
        v28[1] = v26;
        *(*(v11 + 56) + 8 * v24) = v27;

        v29 = v27;
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v2, v4, v5, v6, v7, v8, v9, v10;
    *v1 = v11;
  }
}

uint64_t sub_174998(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_174A8C;

  return v5(v2 + 32);
}

uint64_t sub_174A8C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_174BA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_92C90;

  return sub_174998(a1, v4);
}

uint64_t sub_174C58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7E674;

  return sub_174998(a1, v4);
}

void __swiftcall SeriesData.init(seriesID:seriesContentType:seriesCount:seriesUserStatus:seriesType:seriesUserSubStatus:seriesCountStr:)(BookAnalytics::SeriesData *__return_ptr retstr, Swift::Int64 seriesID, BookAnalytics::ContentType seriesContentType, Swift::Int64 seriesCount, BookAnalytics::SeriesUserStatus_optional seriesUserStatus, BookAnalytics::SeriesType_optional seriesType, BookAnalytics::SeriesUserSubStatus_optional seriesUserSubStatus, Swift::String_optional seriesCountStr)
{
  v8 = *seriesContentType;
  v9 = *seriesUserStatus.value;
  v10 = *seriesType.value;
  v11 = *seriesUserSubStatus.value;
  retstr->seriesID = seriesID;
  retstr->seriesContentType = v8;
  retstr->seriesCount = seriesCount;
  retstr->seriesUserStatus.value = v9;
  retstr->seriesType.value = v10;
  retstr->seriesUserSubStatus.value = v11;
  retstr->seriesCountStr = seriesCountStr;
}

unint64_t sub_174D58()
{
  v1 = *v0;
  v2 = 0x4449736569726573;
  v3 = 0xD000000000000013;
  if (v1 != 5)
  {
    v3 = 0x6F43736569726573;
  }

  v4 = 0x7954736569726573;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x6F43736569726573;
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

uint64_t sub_174E58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_175A40(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_174E80(uint64_t a1)
{
  v2 = sub_1756B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_174EBC(uint64_t a1)
{
  v2 = sub_1756B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SeriesData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28B490, &qword_205218);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - v5;
  v20 = *(v1 + 8);
  v19 = *(v1 + 16);
  v7 = *(v1 + 24);
  v17 = *(v1 + 25);
  v18 = v7;
  v15 = *(v1 + 26);
  v8 = *(v1 + 40);
  v16 = *(v1 + 32);
  sub_48B8(a1, a1[3]);
  sub_1756B0();
  v9 = v3;
  sub_1E1E00();
  v32 = 0;
  v10 = v21;
  sub_1E1D10();
  if (!v10)
  {
    v11 = v17;
    v12 = v18;
    v21 = v8;
    v31 = v20;
    v30 = 1;
    sub_C480();
    sub_1E1CF0();
    v29 = 2;
    sub_1E1D10();
    v28 = v12;
    v27 = 3;
    sub_175704();
    sub_1E1C80();
    v26 = v11;
    v25 = 4;
    sub_F0F14();
    sub_1E1C80();
    v24 = v15;
    v23 = 5;
    sub_175758();
    sub_1E1C80();
    v22 = 6;
    sub_1E1C50();
  }

  return (*(v4 + 8))(v6, v9);
}

void SeriesData.init(from:)(BAEventReporter **a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_28B4B0, &qword_205220);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  sub_48B8(a1, a1[3]);
  sub_1756B0();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    LOBYTE(v38) = 0;
    v16 = sub_1E1C40();
    LOBYTE(v35) = 1;
    sub_C4D4();
    sub_1E1C20();
    v17 = v38;
    LOBYTE(v38) = 2;
    v34 = sub_1E1C40();
    LOBYTE(v35) = 3;
    sub_1757AC();
    sub_1E1BB0();
    v46 = v38;
    LOBYTE(v35) = 4;
    sub_F10B8();
    sub_1E1BB0();
    v33 = v38;
    LOBYTE(v35) = 5;
    sub_175800();
    sub_1E1BB0();
    v32 = v38;
    v47 = 6;
    v18 = sub_1E1B80();
    v19 = v8;
    v21 = v20;
    (*(v6 + 8))(v19, v5);
    *&v35 = v16;
    BYTE8(v35) = v17;
    v22 = v34;
    *&v36 = v34;
    BYTE8(v36) = v46;
    v23 = v33;
    BYTE9(v36) = v33;
    BYTE10(v36) = v32;
    *&v37 = v18;
    *(&v37 + 1) = v21;
    v24 = v36;
    *a2 = v35;
    a2[1] = v24;
    a2[2] = v37;
    sub_CF18(&v35, &v38);
    sub_4E48(a1, v25, v26, v27, v28, v29, v30, v31);
    v38 = v16;
    v39 = v17;
    v40 = v22;
    v41 = v46;
    v42 = v23;
    v43 = v32;
    v44 = v18;
    v45 = v21;
    sub_D5D0(&v38);
  }
}

uint64_t _s13BookAnalytics10SeriesDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v8 = *(a1 + 24);
  v9 = *(a1 + 25);
  v10 = *(a1 + 26);
  v11 = *(a1 + 40);
  v12 = *(a2 + 24);
  v13 = *(a2 + 25);
  v14 = *(a2 + 26);
  v15 = *(a2 + 40);
  v26 = *(a2 + 32);
  v27 = *(a1 + 32);
  v16 = *(a2 + 16);
  v17 = *(a1 + 16);
  v24 = sub_218F4(*(a1 + 8), *(a2 + 8), a3, a4, a5, a6, a7, a8);
  result = 0;
  if ((v24 & 1) != 0 && v17 == v16)
  {
    if (v8 == 4)
    {
      if (v12 != 4)
      {
        return 0;
      }
    }

    else if (v12 == 4 || (sub_24F90(v8, v12, v18, v19, v20, v21, v22, v23) & 1) == 0)
    {
      return 0;
    }

    if (v9 == 4)
    {
      if (v13 != 4)
      {
        return 0;
      }
    }

    else if (v13 == 4 || (sub_24C00(v9, v13, v18, v19, v20, v21, v22, v23) & 1) == 0)
    {
      return 0;
    }

    if (v10 == 7)
    {
      if (v14 != 7)
      {
        return 0;
      }
    }

    else if (v14 == 7 || (sub_24D40(v10, v14, v18, v19, v20, v21, v22, v23) & 1) == 0)
    {
      return 0;
    }

    if (v11)
    {
      if (!v15 || (v27 != v26 || v11 != v15) && (sub_1E1D30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v15)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

unint64_t sub_1756B0()
{
  result = qword_28B498;
  if (!qword_28B498)
  {
    result = swift_getWitnessTable(aM_17, &type metadata for SeriesData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B498);
  }

  return result;
}

unint64_t sub_175704()
{
  result = qword_28B4A0;
  if (!qword_28B4A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SeriesUserStatus, &type metadata for SeriesUserStatus, v0, v1);
    atomic_store(result, &qword_28B4A0);
  }

  return result;
}

unint64_t sub_175758()
{
  result = qword_28B4A8;
  if (!qword_28B4A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SeriesUserSubStatus, &type metadata for SeriesUserSubStatus, v0, v1);
    atomic_store(result, &qword_28B4A8);
  }

  return result;
}

unint64_t sub_1757AC()
{
  result = qword_28B4B8;
  if (!qword_28B4B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SeriesUserStatus, &type metadata for SeriesUserStatus, v0, v1);
    atomic_store(result, &qword_28B4B8);
  }

  return result;
}

unint64_t sub_175800()
{
  result = qword_28B4C0;
  if (!qword_28B4C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SeriesUserSubStatus, &type metadata for SeriesUserSubStatus, v0, v1);
    atomic_store(result, &qword_28B4C0);
  }

  return result;
}

uint64_t sub_17585C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1758B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_17593C()
{
  result = qword_28B4C8;
  if (!qword_28B4C8)
  {
    result = swift_getWitnessTable(byte_2053E4, &type metadata for SeriesData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B4C8);
  }

  return result;
}

unint64_t sub_175994()
{
  result = qword_28B4D0;
  if (!qword_28B4D0)
  {
    result = swift_getWitnessTable(asc_205354, &type metadata for SeriesData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B4D0);
  }

  return result;
}

unint64_t sub_1759EC()
{
  result = qword_28B4D8;
  if (!qword_28B4D8)
  {
    result = swift_getWitnessTable(byte_20537C, &type metadata for SeriesData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B4D8);
  }

  return result;
}

uint64_t sub_175A40(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x4449736569726573 && a2 == 0xE800000000000000;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000217200;
    if (a1 == 0xD000000000000011 && 0x8000000000217200 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0xEB00000000746E75;
      if (a1 == 0x6F43736569726573 && a2 == 0xEB00000000746E75 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v14 = 0x8000000000217220;
        if (a1 == 0xD000000000000010 && 0x8000000000217220 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else if (a1 == 0x7954736569726573 && a2 == 0xEA00000000006570 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else
        {
          v15 = 0x8000000000217240;
          if (a1 == 0xD000000000000013 && 0x8000000000217240 == a2 || (sub_1E1D30() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 5;
          }

          else if (a1 == 0x6F43736569726573 && a2 == 0xEE00727453746E75)
          {
            0xEE00727453746E75, 0xEE00727453746E75, a3, a4, a5, a6, a7, a8;
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

BookAnalytics::DeviceOrientation_optional __swiftcall DeviceOrientation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2614A8;
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

uint64_t DeviceOrientation.rawValue.getter()
{
  v1 = 0x7469617274726F70;
  if (*v0 != 1)
  {
    v1 = 0x70616373646E616CLL;
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

uint64_t sub_175D5C(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE800000000000000;
  v10 = 0x7469617274726F70;
  if (v8 != 1)
  {
    v10 = 0x70616373646E616CLL;
    v9 = 0xE900000000000065;
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

  v13 = 0xE800000000000000;
  v14 = 0x7469617274726F70;
  if (*a2 != 1)
  {
    v14 = 0x70616373646E616CLL;
    v13 = 0xE900000000000065;
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

unint64_t sub_175E6C()
{
  result = qword_28B4E0;
  if (!qword_28B4E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceOrientation, &type metadata for DeviceOrientation, v0, v1);
    atomic_store(result, &qword_28B4E0);
  }

  return result;
}

Swift::Int sub_175EC0()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE800000000000000;
  if (v1 != 1)
  {
    v2 = 0xE900000000000065;
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

void sub_175F68(uint64_t a1)
{
  v2 = 0xE800000000000000;
  if (*v1 != 1)
  {
    v2 = 0xE900000000000065;
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

Swift::Int sub_175FFC(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE800000000000000;
  if (v2 != 1)
  {
    v3 = 0xE900000000000065;
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

void sub_1760AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x7469617274726F70;
  if (v2 != 1)
  {
    v5 = 0x70616373646E616CLL;
    v4 = 0xE900000000000065;
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

unint64_t sub_1761D0()
{
  result = qword_28B4E8;
  if (!qword_28B4E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceOrientation, &type metadata for DeviceOrientation, v0, v1);
    atomic_store(result, &qword_28B4E8);
  }

  return result;
}

uint64_t PageTurnSettingEvent.pageTurnFeatureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_28B520, &unk_205580);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PageTurnSettingEvent.pageTurnFeatureData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_28B520, &unk_205580);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PageTurnSettingEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageTurnSettingEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageTurnSettingEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PageTurnSettingEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PageTurnSettingEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_28B520, &unk_205580);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for PageTurnSettingEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t PageTurnSettingEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageTurnSettingEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageTurnSettingEvent.Model.init(pageTurnFeatureData:eventData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for PageTurnSettingEvent.Model(0) + 20);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_176744()
{
  if (*v0)
  {
    return 0x746144746E657665;
  }

  else
  {
    return 0xD000000000000013;
  }
}

void sub_176788(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0x8000000000217260;
  if (a1 == 0xD000000000000013 && 0x8000000000217260 == a2 || (sub_1E1D30() & 1) != 0)
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

uint64_t sub_176878(uint64_t a1)
{
  v2 = sub_176AAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1768B4(uint64_t a1)
{
  v2 = sub_176AAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PageTurnSettingEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28B528, &qword_205590);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_48B8(a1, a1[3]);
  sub_176AAC();
  sub_1E1E00();
  v10[15] = *v3;
  v10[14] = 0;
  sub_176B00();
  sub_1E1CF0();
  if (!v2)
  {
    type metadata accessor for PageTurnSettingEvent.Model(0);
    v10[13] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_176AAC()
{
  result = qword_28B530;
  if (!qword_28B530)
  {
    result = swift_getWitnessTable(asc_205750, &type metadata for PageTurnSettingEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B530);
  }

  return result;
}

unint64_t sub_176B00()
{
  result = qword_28B538;
  if (!qword_28B538)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PageTurnFeatureData, &type metadata for PageTurnFeatureData, v0, v1);
    atomic_store(result, &qword_28B538);
  }

  return result;
}

void PageTurnSettingEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1E1150();
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_3D68(&qword_28B540, &qword_205598);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v23 - v6;
  v8 = type metadata accessor for PageTurnSettingEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_176AAC();
  sub_1E1DF0();
  if (!v2)
  {
    v18 = v10;
    v25 = v8;
    v19 = v28;
    v20 = v29;
    v32 = 0;
    sub_176E50();
    v21 = v30;
    sub_1E1C20();
    v24 = v18;
    *v18 = v33;
    v31 = 1;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v23 = v5;
    sub_1E1C20();
    (*(v19 + 8))(v7, v21);
    v22 = v24;
    (*(v26 + 32))(&v24[*(v25 + 20)], v23, v20);
    sub_176EA4(v22, v27);
  }

  sub_4E48(a1, v11, v12, v13, v14, v15, v16, v17);
}

unint64_t sub_176E50()
{
  result = qword_28B548;
  if (!qword_28B548)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PageTurnFeatureData, &type metadata for PageTurnFeatureData, v0, v1);
    atomic_store(result, &qword_28B548);
  }

  return result;
}

uint64_t sub_176EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageTurnSettingEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_176FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_28B520, &unk_205580);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_177094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_28B520, &unk_205580);
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

uint64_t sub_1771B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_28B520, &unk_205580);
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

void sub_1772C4(uint64_t a1)
{
  sub_177348(319);
  if (v1 <= 0x3F)
  {
    sub_5684(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_177348(uint64_t a1)
{
  if (!qword_28B5B8)
  {
    sub_176E50();
    sub_176B00();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_28B5B8);
    }
  }
}

uint64_t sub_1773C4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_17747C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_17751C(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1775AC()
{
  result = qword_28B678;
  if (!qword_28B678)
  {
    result = swift_getWitnessTable(aA_25, &type metadata for PageTurnSettingEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B678);
  }

  return result;
}

unint64_t sub_177604()
{
  result = qword_28B680;
  if (!qword_28B680)
  {
    result = swift_getWitnessTable(byte_205698, &type metadata for PageTurnSettingEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B680);
  }

  return result;
}

unint64_t sub_17765C()
{
  result = qword_28B688;
  if (!qword_28B688)
  {
    result = swift_getWitnessTable(aQ_13, &type metadata for PageTurnSettingEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B688);
  }

  return result;
}

uint64_t sub_1776B0()
{
  if (*v0)
  {
    return 0x6E69646465626D65;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

void sub_1776F0(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v12 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067)
  {
    0xE900000000000067, a2, a3, a4, a5, a6, a7, a8;
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

uint64_t sub_1777D4(uint64_t a1)
{
  v2 = sub_177A18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_177810(uint64_t a1)
{
  v2 = sub_177A18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UserEmbedding.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28B690, &qword_2057A0);
  v10 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  sub_48B8(a1, a1[3]);
  sub_177A18();
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

unint64_t sub_177A18()
{
  result = qword_28B698;
  if (!qword_28B698)
  {
    result = swift_getWitnessTable(byte_205988, &type metadata for UserEmbedding.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B698);
  }

  return result;
}

void UserEmbedding.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_28B6A0, &qword_2057A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v42 - v7;
  sub_48B8(a1, a1[3]);
  sub_177A18();
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

unint64_t sub_177CB8()
{
  result = qword_28B6A8;
  if (!qword_28B6A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserEmbedding, &type metadata for UserEmbedding, v0, v1);
    atomic_store(result, &qword_28B6A8);
  }

  return result;
}

unint64_t sub_177D10()
{
  result = qword_28B6B0;
  if (!qword_28B6B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserEmbedding, &type metadata for UserEmbedding, v0, v1);
    atomic_store(result, &qword_28B6B0);
  }

  return result;
}

unint64_t sub_177DB8()
{
  result = qword_28B6B8;
  if (!qword_28B6B8)
  {
    result = swift_getWitnessTable(asc_205960, &type metadata for UserEmbedding.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B6B8);
  }

  return result;
}

unint64_t sub_177E10()
{
  result = qword_28B6C0;
  if (!qword_28B6C0)
  {
    result = swift_getWitnessTable(aQ_14, &type metadata for UserEmbedding.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B6C0);
  }

  return result;
}

unint64_t sub_177E68()
{
  result = qword_28B6C8;
  if (!qword_28B6C8)
  {
    result = swift_getWitnessTable(a9_6, &type metadata for UserEmbedding.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B6C8);
  }

  return result;
}

void sub_177EEC(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x706F724467617264 && a2 == 0xEF7972616D6D7553)
  {
    a2, 0xEF7972616D6D7553, a1, a3, a4, a5, a6, a7;
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

uint64_t sub_177F7C(uint64_t a1)
{
  v2 = sub_178198();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_177FB8(uint64_t a1)
{
  v2 = sub_178198();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DragDropData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28B6D0, &qword_2059D8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_178198();

  sub_1E1E00();
  v16[1] = v7;
  sub_3D68(&qword_28B6E0, &qword_2059E0);
  sub_1783F0(&qword_28B6E8, sub_1781EC, &protocol conformance descriptor for <A> [A]);
  sub_1E1CF0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_178198()
{
  result = qword_28B6D8;
  if (!qword_28B6D8)
  {
    result = swift_getWitnessTable(byte_205BC0, &type metadata for DragDropData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B6D8);
  }

  return result;
}

unint64_t sub_1781EC()
{
  result = qword_28B6F0;
  if (!qword_28B6F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragDropItemData, &type metadata for DragDropItemData, v0, v1);
    atomic_store(result, &qword_28B6F0);
  }

  return result;
}

void DragDropData.init(from:)(BAEventReporter **a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3D68(&qword_28B6F8, &qword_2059E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_178198();
  sub_1E1DF0();
  if (!v2)
  {
    sub_3D68(&qword_28B6E0, &qword_2059E0);
    sub_1783F0(&qword_28B700, sub_178468, &protocol conformance descriptor for <A> [A]);
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v16[1];
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1783F0(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_5DE50(&qword_28B6E0, &qword_2059E0);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_178468()
{
  result = qword_28B708;
  if (!qword_28B708)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragDropItemData, &type metadata for DragDropItemData, v0, v1);
    atomic_store(result, &qword_28B708);
  }

  return result;
}

unint64_t sub_178518()
{
  result = qword_28B710;
  if (!qword_28B710)
  {
    result = swift_getWitnessTable(byte_205B98, &type metadata for DragDropData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B710);
  }

  return result;
}

unint64_t sub_178570()
{
  result = qword_28B718;
  if (!qword_28B718)
  {
    result = swift_getWitnessTable(byte_205B08, &type metadata for DragDropData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B718);
  }

  return result;
}

unint64_t sub_1785C8()
{
  result = qword_28B720;
  if (!qword_28B720)
  {
    result = swift_getWitnessTable(byte_205B30, &type metadata for DragDropData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B720);
  }

  return result;
}

void __swiftcall BrickData.init(name:positionInSection:brickID:)(BookAnalytics::BrickData *__return_ptr retstr, Swift::String name, Swift::Int32 positionInSection, Swift::String brickID)
{
  retstr->name = name;
  retstr->positionInSection = positionInSection;
  retstr->brickID = brickID;
}

uint64_t static BrickData.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_1E1D30();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v5)
    {
      return result;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_178700()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x44496B63697262;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_178758@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_178DA0(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_178780(uint64_t a1)
{
  v2 = sub_1789BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1787BC(uint64_t a1)
{
  v2 = sub_1789BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BrickData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28B728, &qword_205C10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v11 = *(v1 + 16);
  v7 = *(v1 + 24);
  v10[1] = *(v1 + 32);
  v10[2] = v7;
  sub_48B8(a1, a1[3]);
  sub_1789BC();
  sub_1E1E00();
  v14 = 0;
  v8 = v10[3];
  sub_1E1CB0();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1E1D00();
  v12 = 2;
  sub_1E1CB0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1789BC()
{
  result = qword_28B730;
  if (!qword_28B730)
  {
    result = swift_getWitnessTable(aX_1, &type metadata for BrickData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B730);
  }

  return result;
}

void BrickData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28B738, &qword_205C18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v45 - v7;
  sub_48B8(a1, a1[3]);
  sub_1789BC();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v50 = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    v19 = v16;
    v49 = 1;
    v47 = sub_1E1C30();
    v48 = 2;
    v20 = sub_1E1BE0();
    v29 = v28;
    v30 = *(v6 + 8);
    v46 = v20;
    v30(v8, v5);
    *a2 = v19;
    *(a2 + 8) = v18;
    *(a2 + 16) = v47;
    *(a2 + 24) = v46;
    *(a2 + 32) = v29;

    sub_4E48(a1, v31, v32, v33, v34, v35, v36, v37);
    v29, v38, v39, v40, v41, v42, v43, v44;
    v18, v21, v22, v23, v24, v25, v26, v27;
  }
}

unint64_t sub_178C9C()
{
  result = qword_28B740;
  if (!qword_28B740)
  {
    result = swift_getWitnessTable(byte_205DD4, &type metadata for BrickData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B740);
  }

  return result;
}

unint64_t sub_178CF4()
{
  result = qword_28B748;
  if (!qword_28B748)
  {
    result = swift_getWitnessTable(byte_205D44, &type metadata for BrickData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B748);
  }

  return result;
}

unint64_t sub_178D4C()
{
  result = qword_28B750;
  if (!qword_28B750)
  {
    result = swift_getWitnessTable(byte_205D6C, &type metadata for BrickData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B750);
  }

  return result;
}

uint64_t sub_178DA0(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v9 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v9 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x80000000002139D0;
    if (a1 == 0xD000000000000011 && 0x80000000002139D0 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x44496B63697262 && a2 == 0xE700000000000000)
    {
      0xE700000000000000, v12, a3, a4, a5, a6, a7, a8;
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

BookAnalytics::OnDevicePersonalizationUserStatus_optional __swiftcall OnDevicePersonalizationUserStatus.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261510;
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

uint64_t OnDevicePersonalizationUserStatus.rawValue.getter()
{
  v1 = 0x6967696C45746F6ELL;
  v2 = 0x736B6F6F62;
  if (*v0 != 2)
  {
    v2 = 0x6F6F626F69647561;
  }

  if (*v0)
  {
    v1 = 0x656C626967696C65;
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

unint64_t sub_178FB0()
{
  result = qword_28B758;
  if (!qword_28B758)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnDevicePersonalizationUserStatus, &type metadata for OnDevicePersonalizationUserStatus, v0, v1);
    atomic_store(result, &qword_28B758);
  }

  return result;
}

Swift::Int sub_179004()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xEB00000000656C62;
  v3 = 0xE500000000000000;
  if (v1 != 2)
  {
    v3 = 0xEA0000000000736BLL;
  }

  if (v1)
  {
    v2 = 0xE800000000000000;
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

void sub_1790D0(uint64_t a1)
{
  v2 = 0xEB00000000656C62;
  v3 = 0xE500000000000000;
  if (*v1 != 2)
  {
    v3 = 0xEA0000000000736BLL;
  }

  if (*v1)
  {
    v2 = 0xE800000000000000;
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

Swift::Int sub_179188(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xEB00000000656C62;
  v4 = 0xE500000000000000;
  if (v2 != 2)
  {
    v4 = 0xEA0000000000736BLL;
  }

  if (v2)
  {
    v3 = 0xE800000000000000;
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

void sub_17925C(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000656C62;
  v3 = 0x6967696C45746F6ELL;
  v4 = 0xE500000000000000;
  v5 = 0x736B6F6F62;
  if (*v1 != 2)
  {
    v5 = 0x6F6F626F69647561;
    v4 = 0xEA0000000000736BLL;
  }

  if (*v1)
  {
    v3 = 0x656C626967696C65;
    v2 = 0xE800000000000000;
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

unint64_t sub_1793A4()
{
  result = qword_28B760;
  if (!qword_28B760)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnDevicePersonalizationUserStatus, &type metadata for OnDevicePersonalizationUserStatus, v0, v1);
    atomic_store(result, &qword_28B760);
  }

  return result;
}

uint64_t RedownloadCompleteEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadCompleteEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadCompleteEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadCompleteEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadCompleteEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadCompleteEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadCompleteEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadCompleteEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadCompleteEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RedownloadCompleteEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t RedownloadCompleteEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadCompleteEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent.Model(0) + 32);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadCompleteEvent.Model.init(contentData:contentStoreData:sectionData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a1[3];
  *(a6 + 32) = a1[2];
  *(a6 + 48) = v9;
  v10 = a1[5];
  *(a6 + 64) = a1[4];
  *(a6 + 80) = v10;
  v11 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v11;
  v12 = *(a2 + 48);
  *(a6 + 128) = *(a2 + 32);
  *(a6 + 144) = v12;
  v13 = *(a2 + 16);
  *(a6 + 96) = *a2;
  *(a6 + 112) = v13;
  v14 = a3[3];
  *(a6 + 200) = a3[2];
  v15 = *a3;
  *(a6 + 184) = a3[1];
  *(a6 + 168) = v15;
  v16 = a3[5];
  *(a6 + 264) = a3[6];
  v17 = a3[4];
  *(a6 + 248) = v16;
  *(a6 + 232) = v17;
  *(a6 + 157) = *(a2 + 61);
  *(a6 + 216) = v14;
  v18 = type metadata accessor for RedownloadCompleteEvent.Model(0);
  v19 = *(v18 + 28);
  v20 = sub_1E1150();
  (*(*(v20 - 8) + 32))(a6 + v19, a4, v20);
  v21 = *(v18 + 32);
  v22 = sub_1E11A0();
  v23 = *(*(v22 - 8) + 32);

  return v23(a6 + v21, a5, v22);
}

unint64_t sub_179E58()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0x446E6F6974636573;
  v4 = 0x746144746E657665;
  if (v1 != 3)
  {
    v4 = 0x74614464656D6974;
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

uint64_t sub_179F04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_17B900(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_179F2C(uint64_t a1)
{
  v2 = sub_17A4BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_179F68(uint64_t a1)
{
  v2 = sub_17A4BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RedownloadCompleteEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28B798, &qword_205F98);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  sub_48B8(a1, a1[3]);
  sub_17A4BC();
  sub_1E1E00();
  v8 = *(v2 + 48);
  v9 = *(v2 + 16);
  v62 = *(v2 + 32);
  v63 = v8;
  v10 = *(v2 + 48);
  v11 = *(v2 + 80);
  v64 = *(v2 + 64);
  v65 = v11;
  v12 = *(v2 + 16);
  v61[0] = *v2;
  v61[1] = v12;
  v57 = v62;
  v58 = v10;
  v13 = *(v2 + 80);
  v59 = v64;
  v60 = v13;
  v55 = v61[0];
  v56 = v9;
  v54 = 0;
  sub_13A5C(v61, &v38);
  sub_143D0();
  v14 = v66;
  sub_1E1CF0();
  if (v14)
  {
    v40 = v57;
    v41 = v58;
    v42 = v59;
    v43 = v60;
    v38 = v55;
    v39 = v56;
    sub_14424(&v38);
  }

  else
  {
    v50[2] = v57;
    v50[3] = v58;
    v50[4] = v59;
    v50[5] = v60;
    v50[0] = v55;
    v50[1] = v56;
    sub_14424(v50);
    v16 = *(v2 + 112);
    v17 = *(v2 + 144);
    v52 = *(v2 + 128);
    *v53 = v17;
    v18 = *(v2 + 112);
    v51[0] = *(v2 + 96);
    v51[1] = v18;
    v47 = v16;
    v48 = v52;
    v49[0] = *(v2 + 144);
    *&v53[13] = *(v2 + 157);
    *(v49 + 13) = *(v2 + 157);
    v46 = v51[0];
    v45 = 1;
    sub_17AA4(v51, &v38, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    sub_1E1C80();
    v36[2] = v48;
    v37[0] = v49[0];
    *(v37 + 13) = *(v49 + 13);
    v36[0] = v46;
    v36[1] = v47;
    sub_18E48(v36, &qword_27FFF0, &unk_1E9C00);
    v19 = *(v2 + 216);
    v20 = *(v2 + 248);
    v42 = *(v2 + 232);
    v43 = v20;
    v44 = *(v2 + 264);
    v21 = *(v2 + 184);
    v38 = *(v2 + 168);
    v39 = v21;
    v40 = *(v2 + 200);
    v41 = v19;
    v22 = *(v2 + 216);
    v23 = *(v2 + 248);
    v33 = *(v2 + 232);
    v34 = v23;
    v35 = *(v2 + 264);
    v24 = *(v2 + 184);
    v29 = *(v2 + 168);
    v30 = v24;
    v31 = *(v2 + 200);
    v32 = v22;
    v28 = 2;
    sub_17AA4(&v38, v27, &qword_27E490, &qword_205F90);
    sub_18544();
    sub_1E1C80();
    v27[4] = v33;
    v27[5] = v34;
    v27[6] = v35;
    v27[0] = v29;
    v27[1] = v30;
    v27[2] = v31;
    v27[3] = v32;
    sub_18E48(v27, &qword_27E490, &qword_205F90);
    type metadata accessor for RedownloadCompleteEvent.Model(0);
    v26 = 3;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v26 = 4;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_17A4BC()
{
  result = qword_28B7A0;
  if (!qword_28B7A0)
  {
    result = swift_getWitnessTable(byte_206184, &type metadata for RedownloadCompleteEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B7A0);
  }

  return result;
}

void RedownloadCompleteEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v48 = sub_1E11A0();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1150();
  v49 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_28B7A8, &qword_205FA0);
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for RedownloadCompleteEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v70 = a1;
  sub_48B8(a1, v13);
  sub_17A4BC();
  v52 = v9;
  v14 = v53;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v70, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v53 = v6;
    v22 = v12;
    v68 = 0;
    sub_14CB8();
    sub_1E1C20();
    v23 = v69[3];
    *(v12 + 2) = v69[2];
    *(v12 + 3) = v23;
    v24 = v69[5];
    *(v12 + 4) = v69[4];
    *(v12 + 5) = v24;
    v25 = v69[1];
    *v12 = v69[0];
    *(v12 + 1) = v25;
    v67 = 1;
    sub_4FB64();
    sub_1E1BB0();
    v26 = v64;
    v27 = v66[0];
    *(v12 + 8) = v65;
    *(v12 + 9) = v27;
    *(v12 + 157) = *(v66 + 13);
    *(v12 + 6) = v63;
    *(v12 + 7) = v26;
    v55 = 2;
    sub_18EFC();
    v44 = 0;
    sub_1E1BB0();
    v28 = v58;
    *(v12 + 216) = v59;
    v29 = v61;
    *(v12 + 232) = v60;
    *(v12 + 248) = v29;
    v30 = v57;
    *(v12 + 168) = v56;
    *(v12 + 184) = v30;
    *(v12 + 200) = v28;
    *(v12 + 264) = v62;
    v54 = 3;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v31 = v53;
    v43 = v4;
    sub_1E1C20();
    v42 = v10;
    (*(v49 + 32))(&v12[*(v10 + 28)], v31, v43);
    v54 = 4;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v32 = v47;
    v33 = v48;
    sub_1E1C20();
    (*(v50 + 8))(v52, v51);
    (*(v45 + 32))(v22 + *(v42 + 32), v32, v33);
    sub_17ABA4(v22, v46);
    sub_4E48(v70, v34, v35, v36, v37, v38, v39, v40);
    sub_17AC08(v22);
  }
}

uint64_t sub_17ABA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedownloadCompleteEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_17AC08(uint64_t a1)
{
  v2 = type metadata accessor for RedownloadCompleteEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_17AD04@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_17AEE8(uint64_t a1, uint64_t a2, int *a3)
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

  v14 = sub_3D68(&qword_27E478, &unk_1E5F80);
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

uint64_t sub_17B108(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  v16 = sub_3D68(&qword_27E478, &unk_1E5F80);
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

void sub_17B320(uint64_t a1)
{
  sub_55D00(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_55D00(319, &qword_2800D8, sub_4FB64, sub_4F01C, &type metadata for ContentStoreData);
    if (v2 <= 0x3F)
    {
      sub_55D00(319, &qword_27E578, sub_18EFC, sub_18544, &type metadata for SectionData);
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

uint64_t sub_17B4A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_17B5E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
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

void sub_17B704(uint64_t a1)
{
  sub_19FE0(319, &qword_2801C0, &type metadata for ContentStoreData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_27E638, &type metadata for SectionData);
    if (v2 <= 0x3F)
    {
      sub_1E1150();
      if (v3 <= 0x3F)
      {
        sub_1E11A0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_17B7FC()
{
  result = qword_28B8F0;
  if (!qword_28B8F0)
  {
    result = swift_getWitnessTable(aU_21, &type metadata for RedownloadCompleteEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B8F0);
  }

  return result;
}

unint64_t sub_17B854()
{
  result = qword_28B8F8;
  if (!qword_28B8F8)
  {
    result = swift_getWitnessTable(aUu, &type metadata for RedownloadCompleteEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B8F8);
  }

  return result;
}

unint64_t sub_17B8AC()
{
  result = qword_28B900;
  if (!qword_28B900)
  {
    result = swift_getWitnessTable(aU_22, &type metadata for RedownloadCompleteEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B900);
  }

  return result;
}

uint64_t sub_17B900(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000213F30;
    if (a1 == 0xD000000000000010 && 0x8000000000213F30 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
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

uint64_t NotificationEngagementEvent.notificationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_284A60, &qword_2061E0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NotificationEngagementEvent.notificationData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_284A60, &qword_2061E0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NotificationEngagementEvent.notificationEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationEngagementEvent(0) + 20);
  v4 = sub_3D68(&qword_28B938, &unk_2061E8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationEngagementEvent.notificationEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationEngagementEvent(0) + 20);
  v4 = sub_3D68(&qword_28B938, &unk_2061E8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationEngagementEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationEngagementEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationEngagementEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationEngagementEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_284A60, &qword_2061E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NotificationEngagementEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_28B938, &unk_2061E8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t NotificationEngagementEvent.Model.notificationData.getter@<X0>(_OWORD *a1@<X8>)
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
  return sub_6E958(v9, &v8);
}

uint64_t NotificationEngagementEvent.Model.notificationEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t NotificationEngagementEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationEngagementEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationEngagementEvent.Model.init(notificationData:notificationEngagementData:eventData:)@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 3);
  v9 = a2[32];
  v10 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v10;
  v11 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v11;
  v12 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v12;
  *(a4 + 96) = v6;
  *(a4 + 104) = v7;
  *(a4 + 120) = v8;
  *(a4 + 128) = v9;
  v13 = *(type metadata accessor for NotificationEngagementEvent.Model(0) + 24);
  v14 = sub_1E1150();
  v15 = *(*(v14 - 8) + 32);

  return v15(a4 + v13, a3, v14);
}

unint64_t sub_17C264()
{
  v1 = 0x746144746E657665;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001ALL;
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

uint64_t sub_17C2CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_17D4E8(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_17C2F4(uint64_t a1)
{
  v2 = sub_17C634();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_17C330(uint64_t a1)
{
  v2 = sub_17C634();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NotificationEngagementEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28B940, &qword_2061F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35[-v6];
  sub_48B8(a1, a1[3]);
  sub_17C634();
  sub_1E1E00();
  v8 = *(v2 + 48);
  v9 = *(v2 + 16);
  v55 = *(v2 + 32);
  v56 = v8;
  v10 = *(v2 + 48);
  v11 = *(v2 + 80);
  v57 = *(v2 + 64);
  v58 = v11;
  v12 = *(v2 + 16);
  v54[0] = *v2;
  v54[1] = v12;
  v50 = v55;
  v51 = v10;
  v13 = *(v2 + 80);
  v52 = v57;
  v53 = v13;
  v48 = v54[0];
  v49 = v9;
  v47 = 0;
  sub_6E958(v54, &v41);
  sub_6EA1C();
  v14 = v59;
  sub_1E1CF0();
  if (v14)
  {
    v43 = v50;
    v44 = v51;
    v45 = v52;
    v46 = v53;
    v41 = v48;
    v42 = v49;
    sub_6E990(&v41);
  }

  else
  {
    v43 = v50;
    v44 = v51;
    v45 = v52;
    v46 = v53;
    v41 = v48;
    v42 = v49;
    sub_6E990(&v41);
    v15 = *(v2 + 104);
    v16 = *(v2 + 112);
    v17 = *(v2 + 120);
    v18 = *(v2 + 128);
    v36[0] = *(v2 + 96);
    v37 = v15;
    v38 = v16;
    v39 = v17;
    v40 = v18;
    v35[7] = 1;
    sub_72A58();

    sub_1E1CF0();
    v19 = v39;
    v38, v20, v21, v22, v23, v24, v25, v26;
    v19, v27, v28, v29, v30, v31, v32, v33;
    type metadata accessor for NotificationEngagementEvent.Model(0);
    v36[0] = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_17C634()
{
  result = qword_28B948;
  if (!qword_28B948)
  {
    result = swift_getWitnessTable(byte_2063C8, &type metadata for NotificationEngagementEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28B948);
  }

  return result;
}

void NotificationEngagementEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_1E1150();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_3D68(&qword_28B950, &qword_206200);
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v8 = &v35 - v7;
  v9 = type metadata accessor for NotificationEngagementEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v40 = a1;
  sub_48B8(a1, v12);
  sub_17C634();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v40, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = v38;
    v35 = v6;
    v52 = 0;
    sub_6E9C4();
    v21 = v39;
    sub_1E1C20();
    v22 = v48;
    *(v11 + 2) = v47;
    *(v11 + 3) = v22;
    v23 = v50;
    *(v11 + 4) = v49;
    *(v11 + 5) = v23;
    v24 = v46;
    *v11 = v45;
    *(v11 + 1) = v24;
    v51 = 1;
    sub_72A00();
    sub_1E1C20();
    v25 = v42;
    v26 = v43;
    v27 = v44;
    v11[96] = v41;
    *(v11 + 104) = v25;
    *(v11 + 15) = v26;
    v11[128] = v27;
    LOBYTE(v41) = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v8, v21);
    (*(v36 + 32))(&v11[*(v9 + 24)], v35, v4);
    sub_17CACC(v11, v37);
    sub_4E48(v40, v28, v29, v30, v31, v32, v33, v34);
    sub_17CB30(v11);
  }
}

uint64_t sub_17CACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_17CB30(uint64_t a1)
{
  v2 = type metadata accessor for NotificationEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_17CC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_284A60, &qword_2061E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_28B938, &unk_2061E8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_17CD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_284A60, &qword_2061E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_28B938, &unk_2061E8);
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

uint64_t sub_17CEDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_284A60, &qword_2061E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_28B938, &unk_2061E8);
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

void sub_17D04C(uint64_t a1)
{
  sub_17D158(319, &unk_284AF0, sub_6E9C4, sub_6EA1C, &type metadata for NotificationData);
  if (v1 <= 0x3F)
  {
    sub_17D158(319, &unk_28B9C0, sub_72A00, sub_72A58, &type metadata for NotificationEngagementData);
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

void sub_17D158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_17D1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
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

uint64_t sub_17D2A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
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

uint64_t sub_17D34C(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_17D3E4()
{
  result = qword_28BA90;
  if (!qword_28BA90)
  {
    result = swift_getWitnessTable(byte_2063A0, &type metadata for NotificationEngagementEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BA90);
  }

  return result;
}

unint64_t sub_17D43C()
{
  result = qword_28BA98;
  if (!qword_28BA98)
  {
    result = swift_getWitnessTable(byte_206310, &type metadata for NotificationEngagementEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BA98);
  }

  return result;
}

unint64_t sub_17D494()
{
  result = qword_28BAA0;
  if (!qword_28BAA0)
  {
    result = swift_getWitnessTable(byte_206338, &type metadata for NotificationEngagementEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BAA0);
  }

  return result;
}

uint64_t sub_17D4E8(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000215B60;
  if (a1 == 0xD000000000000010 && 0x8000000000215B60 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000217280;
    if (a1 == 0xD00000000000001ALL && 0x8000000000217280 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
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

uint64_t RemoveReviewAndRatingEvent.reviewTypeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveReviewAndRatingEvent(0) + 20);
  v4 = sub_3D68(&qword_28BAD8, &qword_206418);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveReviewAndRatingEvent.reviewTypeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveReviewAndRatingEvent(0) + 20);
  v4 = sub_3D68(&qword_28BAD8, &qword_206418);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveReviewAndRatingEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveReviewAndRatingEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveReviewAndRatingEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveReviewAndRatingEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveReviewAndRatingEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveReviewAndRatingEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveReviewAndRatingEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveReviewAndRatingEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveReviewAndRatingEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RemoveReviewAndRatingEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_28BAD8, &qword_206418);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t RemoveReviewAndRatingEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveReviewAndRatingEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveReviewAndRatingEvent.Model.init(contentData:reviewTypeData:upSellData:eventData:)@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *(a3 + 16);
  v9 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v9;
  v10 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v10;
  v11 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v11;
  *(a5 + 96) = v7;
  *(a5 + 104) = *a3;
  *(a5 + 120) = v8;
  v12 = *(type metadata accessor for RemoveReviewAndRatingEvent.Model(0) + 28);
  v13 = sub_1E1150();
  v14 = *(*(v13 - 8) + 32);

  return v14(a5 + v12, a4, v13);
}

uint64_t sub_17DDD8()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x61446C6C65537075;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (*v0)
  {
    v1 = 0x7954776569766572;
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

uint64_t sub_17DE70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_17F2FC(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_17DE98(uint64_t a1)
{
  v2 = sub_17E1F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_17DED4(uint64_t a1)
{
  v2 = sub_17E1F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RemoveReviewAndRatingEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28BAE0, &qword_206420);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_48B8(a1, a1[3]);
  sub_17E1F0();
  sub_1E1E00();
  v9 = *(v3 + 48);
  v10 = *(v3 + 16);
  v39 = *(v3 + 32);
  v40 = v9;
  v11 = *(v3 + 48);
  v12 = *(v3 + 80);
  v41 = *(v3 + 64);
  v42 = v12;
  v13 = *(v3 + 16);
  v38[0] = *v3;
  v38[1] = v13;
  v34 = v39;
  v35 = v11;
  v14 = *(v3 + 80);
  v36 = v41;
  v37 = v14;
  v32 = v38[0];
  v33 = v10;
  v44 = 0;
  sub_13A5C(v38, &v26);
  sub_143D0();
  sub_1E1CF0();
  if (v2)
  {
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v26 = v32;
    v27 = v33;
    sub_14424(&v26);
  }

  else
  {
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v26 = v32;
    v27 = v33;
    sub_14424(&v26);
    LOBYTE(v24) = *(v3 + 96);
    v43 = 1;
    sub_17E244();
    sub_1E1CF0();
    v15 = *(v3 + 120);
    v24 = *(v3 + 104);
    v25 = v15;
    v43 = 2;
    sub_28450();

    sub_1E1C80();
    v25, v16, v17, v18, v19, v20, v21, v22;
    type metadata accessor for RemoveReviewAndRatingEvent.Model(0);
    LOBYTE(v24) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_17E1F0()
{
  result = qword_28BAE8;
  if (!qword_28BAE8)
  {
    result = swift_getWitnessTable(byte_2065F4, &type metadata for RemoveReviewAndRatingEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BAE8);
  }

  return result;
}

unint64_t sub_17E244()
{
  result = qword_28BAF0;
  if (!qword_28BAF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReviewTypeData, &type metadata for ReviewTypeData, v0, v1);
    atomic_store(result, &qword_28BAF0);
  }

  return result;
}

void RemoveReviewAndRatingEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = sub_1E1150();
  v38 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_3D68(&qword_28BAF8, &qword_206428);
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v35 - v7;
  v9 = type metadata accessor for RemoveReviewAndRatingEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v42 = a1;
  sub_48B8(a1, v12);
  sub_17E1F0();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v42, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v36 = v9;
    v37 = v6;
    v20 = v40;
    v52 = 0;
    sub_14CB8();
    v21 = v41;
    sub_1E1C20();
    v22 = v48;
    v23 = v11;
    *(v11 + 2) = v47;
    *(v11 + 3) = v22;
    v24 = v50;
    *(v11 + 4) = v49;
    *(v11 + 5) = v24;
    v25 = v46;
    *v11 = v45;
    *(v11 + 1) = v25;
    v51 = 1;
    sub_17E71C();
    sub_1E1C20();
    v11[96] = v43;
    v51 = 2;
    sub_28EF4();
    sub_1E1BB0();
    v26 = v44;
    *(v11 + 104) = v43;
    *(v11 + 15) = v26;
    LOBYTE(v43) = 3;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v27 = v37;
    sub_1E1C20();
    (*(v20 + 8))(v8, v21);
    (*(v38 + 32))(v23 + *(v36 + 28), v27, v4);
    sub_17E770(v23, v39);
    sub_4E48(v42, v28, v29, v30, v31, v32, v33, v34);
    sub_17E7D4(v23);
  }
}

unint64_t sub_17E71C()
{
  result = qword_28BB00;
  if (!qword_28BB00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReviewTypeData, &type metadata for ReviewTypeData, v0, v1);
    atomic_store(result, &qword_28BB00);
  }

  return result;
}

uint64_t sub_17E770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveReviewAndRatingEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_17E7D4(uint64_t a1)
{
  v2 = type metadata accessor for RemoveReviewAndRatingEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_17E8D0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_28BAD8, &qword_206418);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v4, v12);
}

uint64_t sub_17EA68(uint64_t a1, uint64_t a2, int *a3)
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

  v11 = sub_3D68(&qword_28BAD8, &qword_206418);
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

  v14 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
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

uint64_t sub_17EC34(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  v13 = sub_3D68(&qword_28BAD8, &qword_206418);
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

  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
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

void sub_17EDF8(uint64_t a1)
{
  sub_17EF54(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_17EF54(319, &unk_28BB70, sub_17E71C, sub_17E244, &type metadata for ReviewTypeData);
    if (v2 <= 0x3F)
    {
      sub_17EF54(319, &qword_27EAE8, sub_28EF4, sub_28450, &type metadata for UpSellData);
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

void sub_17EF54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_17EFE4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_17F0A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_17F148(uint64_t a1)
{
  sub_F43DC();
  if (v1 <= 0x3F)
  {
    sub_1E1150();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_17F1F8()
{
  result = qword_28BC40;
  if (!qword_28BC40)
  {
    result = swift_getWitnessTable(byte_2065CC, &type metadata for RemoveReviewAndRatingEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BC40);
  }

  return result;
}

unint64_t sub_17F250()
{
  result = qword_28BC48;
  if (!qword_28BC48)
  {
    result = swift_getWitnessTable(byte_20653C, &type metadata for RemoveReviewAndRatingEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BC48);
  }

  return result;
}

unint64_t sub_17F2A8()
{
  result = qword_28BC50;
  if (!qword_28BC50)
  {
    result = swift_getWitnessTable(byte_206564, &type metadata for RemoveReviewAndRatingEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BC50);
  }

  return result;
}

uint64_t sub_17F2FC(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
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
    v13 = 0xEE00617461446570;
    if (a1 == 0x7954776569766572 && a2 == 0xEE00617461446570 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
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

BookAnalytics::ReviewType_optional __swiftcall ReviewType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261590;
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

uint64_t ReviewType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x776569766572;
  if (*v0 != 2)
  {
    v2 = 0x6E41776569766572;
  }

  if (*v0)
  {
    v1 = 0x676E69746172;
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

unint64_t sub_17F568()
{
  result = qword_28BC58;
  if (!qword_28BC58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReviewType, &type metadata for ReviewType, v0, v1);
    atomic_store(result, &qword_28BC58);
  }

  return result;
}

Swift::Int sub_17F5BC()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE700000000000000;
  v3 = 0xE600000000000000;
  if (v1 != 2)
  {
    v3 = 0xEF676E6974615264;
  }

  if (v1)
  {
    v2 = 0xE600000000000000;
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

void sub_17F684(uint64_t a1)
{
  v2 = 0xE700000000000000;
  v3 = 0xE600000000000000;
  if (*v1 != 2)
  {
    v3 = 0xEF676E6974615264;
  }

  if (*v1)
  {
    v2 = 0xE600000000000000;
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

Swift::Int sub_17F738(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  if (v2 != 2)
  {
    v4 = 0xEF676E6974615264;
  }

  if (v2)
  {
    v3 = 0xE600000000000000;
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

void sub_17F808(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE600000000000000;
  v5 = 0x776569766572;
  if (*v1 != 2)
  {
    v5 = 0x6E41776569766572;
    v4 = 0xEF676E6974615264;
  }

  if (*v1)
  {
    v3 = 0x676E69746172;
    v2 = 0xE600000000000000;
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

unint64_t sub_17F94C()
{
  result = qword_28BC60;
  if (!qword_28BC60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReviewType, &type metadata for ReviewType, v0, v1);
    atomic_store(result, &qword_28BC60);
  }

  return result;
}

uint64_t YearInReviewExposureEvent.yIRSourceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_28BC98, &qword_206760);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t YearInReviewExposureEvent.yIRSourceData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_28BC98, &qword_206760);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t YearInReviewExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YearInReviewExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t YearInReviewExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for YearInReviewExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t YearInReviewExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YearInReviewExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t YearInReviewExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for YearInReviewExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t YearInReviewExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_28BC98, &qword_206760);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for YearInReviewExposureEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t YearInReviewExposureEvent.Model.yIRSourceData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[7];
  v25 = v1[8];
  v26 = v2;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[5];
  v7 = v1[3];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  *(a1 + 128) = v25;
  *(a1 + 144) = v4;
  *(a1 + 160) = v1[10];
  *(a1 + 64) = v6;
  *(a1 + 80) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v3;
  *a1 = v14;
  *(a1 + 16) = v13;
  v28 = *(v1 + 176);
  *(a1 + 176) = *(v1 + 176);
  *(a1 + 32) = v15;
  *(a1 + 48) = v7;
  return sub_142D24(v18, v17);
}

uint64_t YearInReviewExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YearInReviewExposureEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t YearInReviewExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YearInReviewExposureEvent.Model(0) + 24);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t YearInReviewExposureEvent.Model.init(yIRSourceData:eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 144);
  *(a4 + 128) = *(a1 + 128);
  *(a4 + 144) = v7;
  *(a4 + 160) = *(a1 + 160);
  *(a4 + 176) = *(a1 + 176);
  v8 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v8;
  v9 = *(a1 + 112);
  *(a4 + 96) = *(a1 + 96);
  *(a4 + 112) = v9;
  v10 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v10;
  v11 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v11;
  v12 = type metadata accessor for YearInReviewExposureEvent.Model(0);
  v13 = *(v12 + 20);
  v14 = sub_1E1150();
  (*(*(v14 - 8) + 32))(a4 + v13, a2, v14);
  v15 = *(v12 + 24);
  v16 = sub_1E11A0();
  v17 = *(*(v16 - 8) + 32);

  return v17(a4 + v15, a3, v16);
}

uint64_t sub_180208()
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
    return 0x6372756F53524979;
  }
}

uint64_t sub_180278@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_181680(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1802A0(uint64_t a1)
{
  v2 = sub_180674();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1802DC(uint64_t a1)
{
  v2 = sub_180674();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t YearInReviewExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28BCA0, &qword_206768);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  sub_48B8(a1, a1[3]);
  sub_180674();
  sub_1E1E00();
  v8 = v2[9];
  v9 = v2[7];
  v55 = v2[8];
  v56 = v8;
  v10 = v2[9];
  v57 = v2[10];
  v11 = v2[5];
  v12 = v2[3];
  v51 = v2[4];
  v52 = v11;
  v13 = v2[5];
  v14 = v2[7];
  v53 = v2[6];
  v54 = v14;
  v15 = v2[1];
  v48[0] = *v2;
  v48[1] = v15;
  v16 = v2[3];
  v18 = *v2;
  v17 = v2[1];
  v49 = v2[2];
  v50 = v16;
  v44 = v55;
  v45 = v10;
  v46 = v2[10];
  v40 = v51;
  v41 = v13;
  v42 = v53;
  v43 = v9;
  v36 = v18;
  v37 = v17;
  v58 = *(v2 + 176);
  v47 = *(v2 + 176);
  v38 = v49;
  v39 = v12;
  v35 = 0;
  sub_142D24(v48, &v23);
  sub_142DB8();
  v19 = v59;
  sub_1E1CF0();
  if (v19)
  {
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v34 = v47;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v30 = v43;
    v23 = v36;
    v24 = v37;
    v25 = v38;
    v26 = v39;
    sub_142C4C(&v23);
  }

  else
  {
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v34 = v47;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v30 = v43;
    v23 = v36;
    v24 = v37;
    v25 = v38;
    v26 = v39;
    sub_142C4C(&v23);
    type metadata accessor for YearInReviewExposureEvent.Model(0);
    v22 = 1;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v22 = 2;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_180674()
{
  result = qword_28BCA8;
  if (!qword_28BCA8)
  {
    result = swift_getWitnessTable(aEm, &type metadata for YearInReviewExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BCA8);
  }

  return result;
}

void YearInReviewExposureEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = sub_1E11A0();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1150();
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_3D68(&qword_28BCB0, &qword_206770);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v36 - v7;
  v9 = type metadata accessor for YearInReviewExposureEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v60 = a1;
  sub_48B8(a1, v12);
  sub_180674();
  v43 = v8;
  v13 = v45;
  sub_1E1DF0();
  if (v13)
  {
    sub_4E48(v60, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = v11;
    v47 = 0;
    sub_142D60();
    sub_1E1C20();
    v22 = v57;
    *(v11 + 8) = v56;
    *(v11 + 9) = v22;
    *(v11 + 10) = v58;
    v11[176] = v59;
    v23 = v53;
    *(v11 + 4) = v52;
    *(v11 + 5) = v23;
    v24 = v55;
    *(v11 + 6) = v54;
    *(v11 + 7) = v24;
    v25 = v49;
    *v11 = v48;
    *(v11 + 1) = v25;
    v26 = v51;
    *(v11 + 2) = v50;
    *(v11 + 3) = v26;
    v46 = 1;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    v45 = v9;
    (*(v41 + 32))(&v11[*(v9 + 20)], v6, v4);
    v46 = 2;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v27 = v39;
    v28 = v40;
    v36 = 0;
    sub_1E1C20();
    (*(v42 + 8))(v43, v44);
    (*(v37 + 32))(v21 + *(v45 + 24), v28, v27);
    sub_180BD4(v21, v38);
    sub_4E48(v60, v29, v30, v31, v32, v33, v34, v35);
    sub_180C38(v21);
  }
}

uint64_t sub_180BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YearInReviewExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_180C38(uint64_t a1)
{
  v2 = type metadata accessor for YearInReviewExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_180D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_28BC98, &qword_206760);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_180E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_28BC98, &qword_206760);
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

uint64_t sub_180FE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_28BC98, &qword_206760);
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

void sub_181154(uint64_t a1)
{
  sub_1811F0(319);
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

void sub_1811F0(uint64_t a1)
{
  if (!qword_28BD20)
  {
    sub_142D60();
    sub_142DB8();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_28BD20);
    }
  }
}

uint64_t sub_18126C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 80);
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

uint64_t sub_1813B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 80) = a2;
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

uint64_t sub_1814D4(uint64_t a1)
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

unint64_t sub_18157C()
{
  result = qword_28BDF0;
  if (!qword_28BDF0)
  {
    result = swift_getWitnessTable(aM_18, &type metadata for YearInReviewExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BDF0);
  }

  return result;
}

unint64_t sub_1815D4()
{
  result = qword_28BDF8;
  if (!qword_28BDF8)
  {
    result = swift_getWitnessTable(byte_20687C, &type metadata for YearInReviewExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BDF8);
  }

  return result;
}

unint64_t sub_18162C()
{
  result = qword_28BE00;
  if (!qword_28BE00)
  {
    result = swift_getWitnessTable(byte_2068A4, &type metadata for YearInReviewExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28BE00);
  }

  return result;
}

uint64_t sub_181680(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xED00006174614465;
  v11 = a1 == 0x6372756F53524979 && a2 == 0xED00006174614465;
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

uint64_t sub_1817B4()
{
  if (*v0)
  {
    return 0x54746E756F636361;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_1817FC(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0x80000000002172A0;
  if (a1 == 0xD000000000000011 && 0x80000000002172A0 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0x54746E756F636361 && a2 == 0xEB00000000657079)
  {
    0xEB00000000657079, 0xEB00000000657079, a3, a4, a5, a6, a7, a8;
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

uint64_t sub_1818E8(uint64_t a1)
{
  v2 = sub_181EE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_181924(uint64_t a1)
{
  v2 = sub_181EE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AccountData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28BE08, &qword_206988);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  sub_48B8(a1, a1[3]);
  sub_181EE0();
  sub_1E1E00();
  v15 = v8;
  v14 = 0;
  sub_181F34();
  sub_1E1CF0();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_181F88();
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

void AccountData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28BE28, &qword_206990);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_48B8(a1, a1[3]);
  sub_181EE0();
  sub_1E1DF0();
  if (!v2)
  {
    v21 = 0;
    sub_181FDC();
    sub_1E1C20();
    v16 = v22;
    v19 = 1;
    sub_182030();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    v17 = v20;
    *a2 = v16;
    a2[1] = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t _s13BookAnalytics11AccountDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a2 + 1);
  v11 = 0xE500000000000000;
  v12 = 0x6E49676F6CLL;
  if (v8 != 1)
  {
    v12 = 0x74754F676F6CLL;
    v11 = 0xE600000000000000;
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

  v15 = 0xE500000000000000;
  v16 = 0x6E49676F6CLL;
  if (*a2 != 1)
  {
    v16 = 0x74754F676F6CLL;
    v15 = 0xE600000000000000;
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
    v49 = 0x64756F6C4369;
    if (v9 != 1)
    {
      v49 = 0x73656E755469;
    }

    if (v9)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0x6E776F6E6B6E75;
    }

    if (v9)
    {
      v51 = 0xE600000000000000;
    }

    else
    {
      v51 = 0xE700000000000000;
    }

    if (v10)
    {
      v52 = 0xE600000000000000;
      if (v10 == 1)
      {
        if (v50 != 0x64756F6C4369)
        {
          goto LABEL_38;
        }
      }

      else if (v50 != 0x73656E755469)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v52 = 0xE700000000000000;
      if (v50 != 0x6E776F6E6B6E75)
      {
        goto LABEL_38;
      }
    }

    if (v51 == v52)
    {
      v48 = 1;
LABEL_39:
      v51, v26, v27, v28, v29, v30, v31, v32;
      v52, v53, v54, v55, v56, v57, v58, v59;
      return v48 & 1;
    }

LABEL_38:
    v48 = sub_1E1D30();
    goto LABEL_39;
  }

  return v48 & 1;
}