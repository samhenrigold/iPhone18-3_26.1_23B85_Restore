uint64_t sub_86BD4(uint64_t a1)
{
  v2 = sub_86DE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_282080, &qword_1EEF88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-v7];
  sub_48B8(a1, a1[3]);
  sub_86DE4();
  sub_1E1E00();
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v18 = *v3;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v17[15] = 0;
  sub_2EB50(v18, v9, v10, v11);
  sub_81E44();
  sub_1E1C80();
  sub_2F7F0(v18, v19, v20, v21, v12, v13, v14, v15);
  if (!v2)
  {
    type metadata accessor for SearchEvent.Model(0);
    LOBYTE(v18) = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_86DE4()
{
  result = qword_282088;
  if (!qword_282088)
  {
    result = swift_getWitnessTable(asc_1EF13C, &type metadata for SearchEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282088);
  }

  return result;
}

void SearchEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v34 = sub_1E1150();
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_3D68(&qword_282090, &qword_1EEF90);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = &v30 - v6;
  v8 = type metadata accessor for SearchEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_86DE4();
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
    sub_826DC();
    v21 = v35;
    sub_1E1BB0();
    v22 = v37;
    *v18 = v36;
    *(v18 + 1) = v22;
    LOBYTE(v36) = 1;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v7, v21);
    (*(v31 + 32))(&v18[*(v30 + 20)], v5, v19);
    sub_8714C(v18, v32);
    sub_4E48(a1, v23, v24, v25, v26, v27, v28, v29);
    sub_871B0(v18);
  }
}

uint64_t sub_8714C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_871B0(uint64_t a1)
{
  v2 = type metadata accessor for SearchEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_872AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a2 + v6, v7, v8);
}

uint64_t sub_873A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_281D58, &qword_1EE340);
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

uint64_t sub_874C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_281D58, &qword_1EE340);
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

void sub_87600(uint64_t a1)
{
  if (!qword_281E38)
  {
    sub_826DC();
    sub_81E44();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_281E38);
    }
  }
}

uint64_t sub_8767C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_87748(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_87818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
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

void sub_878A8()
{
  if (!qword_282190)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_282190);
    }
  }
}

unint64_t sub_8790C()
{
  result = qword_2821C0;
  if (!qword_2821C0)
  {
    result = swift_getWitnessTable(aU_4, &type metadata for SearchEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2821C0);
  }

  return result;
}

unint64_t sub_87964()
{
  result = qword_2821C8;
  if (!qword_2821C8)
  {
    result = swift_getWitnessTable(byte_1EF084, &type metadata for SearchEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2821C8);
  }

  return result;
}

unint64_t sub_879BC()
{
  result = qword_2821D0;
  if (!qword_2821D0)
  {
    result = swift_getWitnessTable(byte_1EF0AC, &type metadata for SearchEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2821D0);
  }

  return result;
}

BookAnalytics::PrevAltContentExposureData __swiftcall PrevAltContentExposureData.init(prevExposureType:prevExposureTypeView:)(BookAnalytics::ExposureType prevExposureType, BookAnalytics::ExposureTypeView prevExposureTypeView)
{
  v3 = *prevExposureTypeView;
  *v2 = *prevExposureType;
  v2[1] = v3;
  result.prevExposureType = prevExposureType;
  return result;
}

uint64_t static ListeningActionSourceData.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = a1[1];
  v9 = a2[1];
  if ((sub_2222C(*a1, *a2, a3, a4, a5, a6, a7, a8) & 1) == 0)
  {
    return 0;
  }

  return sub_2249C(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_87A80()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000019;
  }
}

void sub_87ABC(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v11 = 0x80000000002146E0;
  v12 = a1 == 0xD000000000000019 && 0x80000000002146E0 == a2;
  if (v12 || (sub_1E1D30() & 1) != 0)
  {
    a2, v11, a3, a4, a5, a6, a7, a8;
    v14 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000214700 == a2)
  {
    a2, 0x8000000000214700, a3, a4, a5, a6, a7, a8;
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

uint64_t sub_87BA0(uint64_t a1)
{
  v2 = sub_87DB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_87BDC(uint64_t a1)
{
  v2 = sub_87DB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ListeningActionSourceData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_2821D8, &qword_1EF190);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  sub_48B8(a1, a1[3]);
  sub_87DB4();
  sub_1E1E00();
  v15 = v8;
  v14 = 0;
  sub_87E08();
  sub_1E1CF0();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_87E5C();
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_87DB4()
{
  result = qword_2821E0;
  if (!qword_2821E0)
  {
    result = swift_getWitnessTable(asc_1EF370, &type metadata for ListeningActionSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2821E0);
  }

  return result;
}

unint64_t sub_87E08()
{
  result = qword_2821E8;
  if (!qword_2821E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListeningActionSourceType, &type metadata for ListeningActionSourceType, v0, v1);
    atomic_store(result, &qword_2821E8);
  }

  return result;
}

unint64_t sub_87E5C()
{
  result = qword_2821F0;
  if (!qword_2821F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListeningRoutedTo, &type metadata for ListeningRoutedTo, v0, v1);
    atomic_store(result, &qword_2821F0);
  }

  return result;
}

void ListeningActionSourceData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_2821F8, &qword_1EF198);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_48B8(a1, a1[3]);
  sub_87DB4();
  sub_1E1DF0();
  if (!v2)
  {
    v21 = 0;
    sub_88084();
    sub_1E1C20();
    v16 = v22;
    v19 = 1;
    sub_880D8();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    v17 = v20;
    *a2 = v16;
    a2[1] = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_88084()
{
  result = qword_282200;
  if (!qword_282200)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListeningActionSourceType, &type metadata for ListeningActionSourceType, v0, v1);
    atomic_store(result, &qword_282200);
  }

  return result;
}

unint64_t sub_880D8()
{
  result = qword_282208;
  if (!qword_282208)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListeningRoutedTo, &type metadata for ListeningRoutedTo, v0, v1);
    atomic_store(result, &qword_282208);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ListeningActionSourceData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 65287 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65287 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65287;
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

      return (*a1 | (v4 << 16)) - 65287;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65287;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ListeningActionSourceData(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65287 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65287 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 16) + 1;
    *result = a2 - 249;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_882D8()
{
  result = qword_282210;
  if (!qword_282210)
  {
    result = swift_getWitnessTable(asc_1EF348, &type metadata for ListeningActionSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_282210);
  }

  return result;
}

unint64_t sub_88330()
{
  result = qword_282218;
  if (!qword_282218)
  {
    result = swift_getWitnessTable(aI_2, &type metadata for ListeningActionSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_282218);
  }

  return result;
}

unint64_t sub_88388()
{
  result = qword_282220;
  if (!qword_282220)
  {
    result = swift_getWitnessTable(aQ_1, &type metadata for ListeningActionSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_282220);
  }

  return result;
}

uint64_t ResetThemeEvent.textData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ResetThemeEvent.textData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ResetThemeEvent.layoutOptionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResetThemeEvent(0) + 20);
  v4 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResetThemeEvent.layoutOptionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResetThemeEvent(0) + 20);
  v4 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ResetThemeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResetThemeEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResetThemeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResetThemeEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ResetThemeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ResetThemeEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = enum case for EventProperty.required<A>(_:);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v7, v8, v9);
}

uint64_t ResetThemeEvent.Model.textData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

__n128 ResetThemeEvent.Model.layoutOptionData.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 36);
  v3 = *(v1 + 44);
  result = *(v1 + 20);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u16[4] = v3;
  return result;
}

uint64_t ResetThemeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResetThemeEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResetThemeEvent.Model.init(textData:layoutOptionData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 20) = *a2;
  *(a4 + 36) = v7;
  *(a4 + 44) = v8;
  v9 = *(type metadata accessor for ResetThemeEvent.Model(0) + 24);
  v10 = sub_1E1150();
  v11 = *(*(v10 - 8) + 32);

  return v11(a4 + v9, a3, v10);
}

unint64_t sub_88B00()
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
    return 0x6174614474786574;
  }
}

uint64_t sub_88B64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_89C78(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_88B8C(uint64_t a1)
{
  v2 = sub_88E2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_88BC8(uint64_t a1)
{
  v2 = sub_88E2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ResetThemeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_282258, &qword_1EF3C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_48B8(a1, a1[3]);
  sub_88E2C();
  sub_1E1E00();
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  *&v21 = *v3;
  *(&v21 + 1) = v9;
  LOBYTE(v22) = v10;
  v24 = 0;
  sub_7BCC();

  sub_1E1C80();
  *(&v21 + 1), v11, v12, v13, v14, v15, v16, v17;
  if (!v2)
  {
    v18 = *(v3 + 36);
    v19 = *(v3 + 44);
    v21 = *(v3 + 20);
    v22 = v18;
    v23 = v19;
    v24 = 1;
    sub_7C20();
    sub_1E1C80();
    type metadata accessor for ResetThemeEvent.Model(0);
    LOBYTE(v21) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_88E2C()
{
  result = qword_282260;
  if (!qword_282260)
  {
    result = swift_getWitnessTable(byte_1EF584, &type metadata for ResetThemeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282260);
  }

  return result;
}

void ResetThemeEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v38 = sub_1E1150();
  v35 = *(v38 - 8);
  __chkstk_darwin(v38);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_3D68(&qword_282268, &qword_1EF3C8);
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v32 - v6;
  v8 = type metadata accessor for ResetThemeEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_88E2C();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v33 = v8;
    v34 = v5;
    v19 = v37;
    v18 = v38;
    v20 = v10;
    v43 = 0;
    sub_829C();
    v21 = v39;
    sub_1E1BB0();
    v22 = v41;
    *v20 = v40;
    *(v20 + 16) = v22;
    v43 = 1;
    sub_82F0();
    sub_1E1BB0();
    v23 = v41;
    v24 = v42;
    *(v20 + 20) = v40;
    *(v20 + 36) = v23;
    *(v20 + 44) = v24;
    LOBYTE(v40) = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v19 + 8))(v7, v21);
    (*(v35 + 32))(v20 + *(v33 + 24), v34, v18);
    sub_8920C(v20, v36);
    sub_4E48(a1, v25, v26, v27, v28, v29, v30, v31);
    sub_89270(v20);
  }
}

uint64_t sub_8920C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResetThemeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_89270(uint64_t a1)
{
  v2 = type metadata accessor for ResetThemeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = enum case for EventProperty.required<A>(_:);
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v8, v9, v10);
}

uint64_t sub_894B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27DA90, &qword_1E41F0);
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

uint64_t sub_89628(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27DA90, &qword_1E41F0);
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

void sub_89798(uint64_t a1)
{
  sub_898A4(319, &qword_27DB50, sub_829C, sub_7BCC, &type metadata for TextData);
  if (v1 <= 0x3F)
  {
    sub_898A4(319, &unk_27DB58, sub_82F0, sub_7C20, &type metadata for LayoutOptionData);
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

void sub_898A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_89934(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_89A00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_89AA4(uint64_t a1)
{
  sub_19FE0(319, &unk_282370, &type metadata for TextData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_27DC00, &type metadata for LayoutOptionData);
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

unint64_t sub_89B74()
{
  result = qword_2823A8;
  if (!qword_2823A8)
  {
    result = swift_getWitnessTable(asc_1EF55C, &type metadata for ResetThemeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2823A8);
  }

  return result;
}

unint64_t sub_89BCC()
{
  result = qword_2823B0;
  if (!qword_2823B0)
  {
    result = swift_getWitnessTable(aU_5, &type metadata for ResetThemeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2823B0);
  }

  return result;
}

unint64_t sub_89C24()
{
  result = qword_2823B8;
  if (!qword_2823B8)
  {
    result = swift_getWitnessTable(asc_1EF4F4, &type metadata for ResetThemeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2823B8);
  }

  return result;
}

uint64_t sub_89C78(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6174614474786574 && a2 == 0xE800000000000000;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000213820;
    if (a1 == 0xD000000000000010 && 0x8000000000213820 == a2 || (sub_1E1D30() & 1) != 0)
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

uint64_t InBookSearchEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InBookSearchEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InBookSearchEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InBookSearchEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InBookSearchEvent.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InBookSearchEvent(0) + 24);
  v4 = sub_3D68(&qword_281D58, &qword_1EE340);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InBookSearchEvent.searchData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InBookSearchEvent(0) + 24);
  v4 = sub_3D68(&qword_281D58, &qword_1EE340);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InBookSearchEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InBookSearchEvent(0) + 28);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InBookSearchEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InBookSearchEvent(0) + 28);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InBookSearchEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InBookSearchEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InBookSearchEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InBookSearchEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InBookSearchEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for InBookSearchEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

void InBookSearchEvent.Model.searchData.getter(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_2EB50(v2, v3, v4, v5);
}

uint64_t InBookSearchEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[18];
  v3 = v1[19];
  v4 = v1[20];
  v5 = v1[21];
  v6 = v1[22];
  v7 = v1[23];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t InBookSearchEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InBookSearchEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InBookSearchEvent.Model.init(readingSessionData:contentData:searchData:seriesData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *(a1 + 4);
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = *(a1 + 13);
  v12 = *(a1 + 14);
  *a6 = *a1;
  *(a6 + 4) = v8;
  *(a6 + 8) = v9;
  *(a6 + 12) = v10;
  *(a6 + 13) = v11;
  *(a6 + 14) = v12;
  v13 = a2[3];
  *(a6 + 48) = a2[2];
  *(a6 + 64) = v13;
  v14 = a2[5];
  *(a6 + 80) = a2[4];
  *(a6 + 96) = v14;
  v15 = a2[1];
  *(a6 + 16) = *a2;
  *(a6 + 32) = v15;
  v16 = a3[1];
  *(a6 + 112) = *a3;
  *(a6 + 128) = v16;
  v17 = a4[1];
  *(a6 + 144) = *a4;
  *(a6 + 160) = v17;
  *(a6 + 176) = a4[2];
  v18 = *(type metadata accessor for InBookSearchEvent.Model(0) + 32);
  v19 = sub_1E1150();
  v20 = *(*(v19 - 8) + 32);

  return v20(a6 + v18, a5, v19);
}

unint64_t sub_8A764()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0x6144686372616573;
  v4 = 0x6144736569726573;
  if (v1 != 3)
  {
    v4 = 0x746144746E657665;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_8A818@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_8BEE8(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_8A840(uint64_t a1)
{
  v2 = sub_8AC50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8A87C(uint64_t a1)
{
  v2 = sub_8AC50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t InBookSearchEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_2823F0, &qword_1EF5E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  sub_48B8(a1, a1[3]);
  sub_8AC50();
  sub_1E1E00();
  v9 = *(v3 + 4);
  v10 = v3[2];
  v11 = *(v3 + 12);
  v12 = *(v3 + 13);
  v13 = *(v3 + 14);
  v57 = *v3;
  v58 = v9;
  v59 = v10;
  v60 = v11;
  v61 = v12;
  v62 = v13;
  v56 = 0;
  sub_67BE8();
  sub_1E1CF0();
  if (!v2)
  {
    v14 = *(v3 + 4);
    v15 = *(v3 + 2);
    v52 = *(v3 + 3);
    v53 = v14;
    v16 = *(v3 + 4);
    v17 = *(v3 + 6);
    v54 = *(v3 + 5);
    v55 = v17;
    v18 = *(v3 + 2);
    v51[0] = *(v3 + 1);
    v51[1] = v18;
    v47 = v52;
    v48 = v16;
    v19 = *(v3 + 6);
    v49 = v54;
    v50 = v19;
    v45 = v51[0];
    v46 = v15;
    v44 = 1;
    sub_13A5C(v51, v43);
    sub_143D0();
    sub_1E1CF0();
    v43[2] = v47;
    v43[3] = v48;
    v43[4] = v49;
    v43[5] = v50;
    v43[0] = v45;
    v43[1] = v46;
    sub_14424(v43);
    v20 = *(v3 + 15);
    v21 = *(v3 + 16);
    v22 = *(v3 + 17);
    v36 = *(v3 + 14);
    v37 = v20;
    v38 = v21;
    v39 = v22;
    v42 = 2;
    sub_2EB50(v36, v20, v21, v22);
    sub_81E44();
    sub_1E1C80();
    sub_2F7F0(v36, v37, v38, v39, v23, v24, v25, v26);
    v27 = *(v3 + 19);
    v28 = *(v3 + 20);
    v29 = *(v3 + 21);
    v30 = *(v3 + 22);
    v31 = *(v3 + 23);
    v36 = *(v3 + 18);
    v37 = v27;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v41 = v31;
    v42 = 3;
    sub_13BDC(v36, v27, v28, v29, v30, v31);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v36, v37, v38, v39, v40, v41, v32, v33);
    type metadata accessor for InBookSearchEvent.Model(0);
    LOBYTE(v36) = 4;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_8AC50()
{
  result = qword_2823F8;
  if (!qword_2823F8)
  {
    result = swift_getWitnessTable(byte_1EF7CC, &type metadata for InBookSearchEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2823F8);
  }

  return result;
}

void InBookSearchEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_1E1150();
  v46 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_3D68(&qword_282400, &qword_1EF5F0);
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v7 = v43 - v6;
  v8 = type metadata accessor for InBookSearchEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v49 = a1;
  sub_48B8(a1, v11);
  sub_8AC50();
  v12 = v48;
  sub_1E1DF0();
  if (v12)
  {
    sub_4E48(v49, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v48 = v5;
    v20 = v45;
    v21 = v10;
    v22 = v46;
    LOBYTE(v50) = 0;
    sub_686E8();
    sub_1E1C20();
    v23 = BYTE4(v53);
    v24 = DWORD2(v53);
    v25 = BYTE12(v53);
    v26 = BYTE13(v53);
    v27 = BYTE14(v53);
    *v21 = v53;
    *(v21 + 4) = v23;
    *(v21 + 8) = v24;
    *(v21 + 12) = v25;
    *(v21 + 13) = v26;
    *(v21 + 14) = v27;
    v60 = 1;
    sub_14CB8();
    sub_1E1C20();
    v28 = v56;
    *(v21 + 48) = v55;
    *(v21 + 64) = v28;
    v29 = v58;
    *(v21 + 80) = v57;
    *(v21 + 96) = v29;
    v30 = v54;
    *(v21 + 16) = v53;
    *(v21 + 32) = v30;
    v59 = 2;
    sub_826DC();
    sub_1E1BB0();
    v31 = *(&v50 + 1);
    v32 = v51;
    v43[1] = v50;
    *(v21 + 112) = v50;
    *(v21 + 120) = v31;
    v43[2] = v31;
    v43[3] = v32;
    *(v21 + 128) = v32;
    v59 = 3;
    sub_DAD8();
    sub_1E1BB0();
    v33 = v51;
    *(v21 + 144) = v50;
    *(v21 + 160) = v33;
    *(v21 + 176) = v52;
    LOBYTE(v50) = 4;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v34 = v48;
    v35 = v47;
    sub_1E1C20();
    (*(v20 + 8))(v7, v35);
    (*(v22 + 32))(v21 + *(v8 + 32), v34, v3);
    sub_8B1E0(v21, v44);
    sub_4E48(v49, v36, v37, v38, v39, v40, v41, v42);
    sub_8B244(v21);
  }
}

uint64_t sub_8B1E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InBookSearchEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8B244(uint64_t a1)
{
  v2 = type metadata accessor for InBookSearchEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8B340@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_8B524(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_280D60, &qword_1EF5E0);
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

  v14 = sub_3D68(&qword_281D58, &qword_1EE340);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_27DD80, &qword_1E4D30);
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

uint64_t sub_8B744(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_280D60, &qword_1EF5E0);
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

  v16 = sub_3D68(&qword_281D58, &qword_1EE340);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27DD80, &qword_1E4D30);
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

void sub_8B95C(uint64_t a1)
{
  sub_8BB08(319, &qword_280E40, sub_686E8, sub_67BE8, &type metadata for ReadingSessionData);
  if (v1 <= 0x3F)
  {
    sub_8BB08(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
    if (v2 <= 0x3F)
    {
      sub_8BB08(319, &qword_281E38, sub_826DC, sub_81E44, &type metadata for SearchData);
      if (v3 <= 0x3F)
      {
        sub_8BB08(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
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

void sub_8BB08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_8BB98(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_8BC58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_8BCFC(uint64_t a1)
{
  sub_19FE0(319, &qword_282190, &type metadata for SearchData);
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

unint64_t sub_8BDE4()
{
  result = qword_282548;
  if (!qword_282548)
  {
    result = swift_getWitnessTable(byte_1EF7A4, &type metadata for InBookSearchEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282548);
  }

  return result;
}

unint64_t sub_8BE3C()
{
  result = qword_282550;
  if (!qword_282550)
  {
    result = swift_getWitnessTable(asc_1EF714, &type metadata for InBookSearchEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282550);
  }

  return result;
}

unint64_t sub_8BE94()
{
  result = qword_282558;
  if (!qword_282558)
  {
    result = swift_getWitnessTable(byte_1EF73C, &type metadata for InBookSearchEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282558);
  }

  return result;
}

uint64_t sub_8BEE8(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
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

    else if (a1 == 0x6144686372616573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
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

uint64_t ContentStoreData.ratingsCount.setter(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 68) = BYTE4(result) & 1;
  return result;
}

void __swiftcall ContentStoreData.init(currency:version:pricePoint:rating:ratingsCount:)(BookAnalytics::ContentStoreData *__return_ptr retstr, Swift::String_optional currency, Swift::String_optional version, Swift::String pricePoint, Swift::String_optional rating, Swift::Int32_optional ratingsCount)
{
  retstr->currency = currency;
  retstr->version = version;
  retstr->pricePoint = pricePoint;
  retstr->rating = rating;
  retstr->ratingsCount.value = ratingsCount.value;
  retstr->ratingsCount.is_nil = ratingsCount.is_nil;
}

uint64_t sub_8C118()
{
  v1 = *v0;
  v2 = 0x79636E6572727563;
  v3 = 0x696F506563697270;
  v4 = 0x676E69746172;
  if (v1 != 3)
  {
    v4 = 0x4373676E69746172;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F6973726576;
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

uint64_t sub_8C1BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_8CD18(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_8C1E4(uint64_t a1)
{
  v2 = sub_8CA68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8C220(uint64_t a1)
{
  v2 = sub_8CA68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ContentStoreData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_282560, &qword_1EF820);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - v5;
  v7 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = v7;
  v8 = *(v1 + 32);
  v17 = *(v1 + 40);
  v18 = v8;
  v9 = *(v1 + 48);
  v15 = *(v1 + 56);
  v16 = v9;
  v13[1] = *(v1 + 64);
  v14 = *(v1 + 68);
  sub_48B8(a1, a1[3]);
  sub_8CA68();
  sub_1E1E00();
  v27 = 0;
  v10 = v21;
  sub_1E1C50();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11 = v14;
  v26 = 1;
  sub_1E1C50();
  v25 = 2;
  sub_1E1CB0();
  v24 = 3;
  sub_1E1C50();
  v23 = 4;
  v22 = v11;
  sub_1E1C90();
  return (*(v4 + 8))(v6, v3);
}

void ContentStoreData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_282570, &qword_1EF828);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v65 - v7;
  sub_48B8(a1, a1[3]);
  sub_8CA68();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
    0, v17, v18, v19, v20, v21, v22, v23;
    0, v24, v25, v26, v27, v28, v29, v30;
    0, v31, v32, v33, v34, v35, v36, v37;
  }

  else
  {
    LOBYTE(v76[0]) = 0;
    v16 = sub_1E1B80();
    v39 = v38;
    v40 = v16;
    LOBYTE(v76[0]) = 1;
    v41 = sub_1E1B80();
    v43 = v42;
    v70 = v41;
    v71 = v40;
    LOBYTE(v76[0]) = 2;
    v44 = sub_1E1BE0();
    v46 = v45;
    v68 = v44;
    v69 = a2;
    LOBYTE(v76[0]) = 3;
    v47 = sub_1E1B80();
    v49 = v48;
    v67 = v47;
    v81 = 4;
    v50 = sub_1E1BC0();
    v51 = *(v6 + 8);
    v66 = v50;
    v51(v8, v5);
    v80 = BYTE4(v66) & 1;
    v53 = v70;
    v52 = v71;
    *&v72 = v71;
    *(&v72 + 1) = v39;
    *&v73 = v70;
    *(&v73 + 1) = v43;
    v54 = v68;
    *&v74 = v68;
    *(&v74 + 1) = v46;
    *v75 = v67;
    *&v75[8] = v49;
    *&v75[16] = v66;
    v79 = BYTE4(v66) & 1;
    v75[20] = BYTE4(v66) & 1;
    v55 = *v75;
    v56 = v69;
    *(v69 + 32) = v74;
    *(v56 + 48) = v55;
    v57 = v73;
    *v56 = v72;
    *(v56 + 16) = v57;
    *(v56 + 61) = *&v75[13];
    sub_8CABC(&v72, v76);
    sub_4E48(a1, v58, v59, v60, v61, v62, v63, v64);
    v76[0] = v52;
    v76[1] = v39;
    v76[2] = v53;
    v76[3] = v43;
    v76[4] = v54;
    v76[5] = v46;
    v76[6] = v67;
    v76[7] = v49;
    v77 = v66;
    v78 = v79;
    sub_8CAF4(v76);
  }
}

uint64_t _s13BookAnalytics16ContentStoreDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = *(a1 + 16);
  v11 = *(a1 + 68);
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v15 = *(a2 + 24);
  v14 = *(a2 + 32);
  v17 = *(a2 + 40);
  v16 = *(a2 + 48);
  v18 = *(a2 + 56);
  v19 = *(a2 + 64);
  v20 = *(a2 + 68);
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v12)
    {
      v45 = a1[7];
      v47 = *(a2 + 56);
      v44 = a1[6];
      v42 = *(a2 + 68);
      v43 = *(a2 + 64);
      v41 = *(a1 + 68);
      v21 = *(a1 + 16);
      v22 = *(a2 + 48);
      v23 = a1[4];
      v24 = a1[5];
      v25 = *(a2 + 32);
      v26 = *(a2 + 40);
      v27 = *(a2 + 16);
      v28 = sub_1E1D30();
      v13 = v27;
      v17 = v26;
      v14 = v25;
      v7 = v24;
      v5 = v23;
      v16 = v22;
      v10 = v21;
      v11 = v41;
      v20 = v42;
      v19 = v43;
      v8 = v44;
      v9 = v45;
      v18 = v47;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v13 || v6 != v15)
    {
      v46 = v10;
      v29 = v16;
      v30 = v5;
      v31 = v7;
      v48 = v14;
      v32 = v17;
      v33 = sub_1E1D30();
      v17 = v32;
      v14 = v48;
      v7 = v31;
      v5 = v30;
      v16 = v29;
      v10 = v46;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v5 != v14 || v7 != v17)
  {
    v34 = v10;
    v35 = v16;
    v36 = sub_1E1D30();
    v16 = v35;
    v10 = v34;
    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!v18)
    {
      return 0;
    }

    if (v8 != v16 || v9 != v18)
    {
      v37 = v10;
      v38 = sub_1E1D30();
      v10 = v37;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v11)
  {
    if (v20)
    {
      return 1;
    }
  }

  else
  {
    if (v10 == v19)
    {
      v40 = v20;
    }

    else
    {
      v40 = 1;
    }

    if ((v40 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_8CA68()
{
  result = qword_282568;
  if (!qword_282568)
  {
    result = swift_getWitnessTable(aU_6, &type metadata for ContentStoreData.CodingKeys, v0, v1);
    atomic_store(result, &qword_282568);
  }

  return result;
}

__n128 sub_8CB2C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_8CB50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 69))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_8CB98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 69) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 69) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_8CC14()
{
  result = qword_282578;
  if (!qword_282578)
  {
    result = swift_getWitnessTable(aM_3, &type metadata for ContentStoreData.CodingKeys, v0, v1);
    atomic_store(result, &qword_282578);
  }

  return result;
}

unint64_t sub_8CC6C()
{
  result = qword_282580;
  if (!qword_282580)
  {
    result = swift_getWitnessTable(byte_1EF96C, &type metadata for ContentStoreData.CodingKeys, v0, v1);
    atomic_store(result, &qword_282580);
  }

  return result;
}

unint64_t sub_8CCC4()
{
  result = qword_282588;
  if (!qword_282588)
  {
    result = swift_getWitnessTable(byte_1EF994, &type metadata for ContentStoreData.CodingKeys, v0, v1);
    atomic_store(result, &qword_282588);
  }

  return result;
}

uint64_t sub_8CD18(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x79636E6572727563 && a2 == 0xE800000000000000;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x696F506563697270 && a2 == 0xEA0000000000746ELL || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else if (a1 == 0x4373676E69746172 && a2 == 0xEC000000746E756FLL)
  {
    0xEC000000746E756FLL, 0xEC000000746E756FLL, a3, a4, a5, a6, a7, a8;
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

BookAnalytics::RoomType_optional __swiftcall RoomType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2600B0;
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

unint64_t RoomType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000010;
  v4 = 0x4C6465726564726FLL;
  if (v1 != 4)
  {
    v4 = 0x676E6970756F7267;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F6F527265707573;
  if (v1 != 1)
  {
    v5 = 0x6F52656C706D6973;
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

unint64_t sub_8D018()
{
  result = qword_282590;
  if (!qword_282590)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RoomType, &type metadata for RoomType, v0, v1);
    atomic_store(result, &qword_282590);
  }

  return result;
}

void sub_8D074(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x8000000000212A80;
  v5 = 0xEF6D6F6F52747369;
  if (v2 != 4)
  {
    v5 = 0xEC00000065676150;
  }

  if (v2 != 3)
  {
    v4 = v5;
  }

  v6 = 0xE90000000000006DLL;
  if (v2 != 1)
  {
    v6 = 0xEA00000000006D6FLL;
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

void sub_8D198(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0x8000000000212A80;
  v6 = 0xD000000000000010;
  v7 = 0xEF6D6F6F52747369;
  v8 = 0x4C6465726564726FLL;
  if (v2 != 4)
  {
    v8 = 0x676E6970756F7267;
    v7 = 0xEC00000065676150;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE90000000000006DLL;
  v10 = 0x6F6F527265707573;
  if (v2 != 1)
  {
    v10 = 0x6F52656C706D6973;
    v9 = 0xEA00000000006D6FLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_8D338()
{
  result = qword_282598;
  if (!qword_282598)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RoomType, &type metadata for RoomType, v0, v1);
    atomic_store(result, &qword_282598);
  }

  return result;
}

BookAnalytics::SeriesUserStatus_optional __swiftcall SeriesUserStatus.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260160;
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

uint64_t SeriesUserStatus.rawValue.getter()
{
  v1 = 7824750;
  v2 = 0x6572676F72506E69;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x6574656C706D6F63;
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

unint64_t sub_8D474()
{
  result = qword_2825A0;
  if (!qword_2825A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SeriesUserStatus, &type metadata for SeriesUserStatus, v0, v1);
    atomic_store(result, &qword_2825A0);
  }

  return result;
}

Swift::Int sub_8D4C8()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE300000000000000;
  v3 = 0xEA00000000007373;
  if (v1 != 2)
  {
    v3 = 0xE700000000000000;
  }

  if (v1)
  {
    v2 = 0xE900000000000064;
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

void sub_8D58C(uint64_t a1)
{
  v2 = 0xE300000000000000;
  v3 = 0xEA00000000007373;
  if (*v1 != 2)
  {
    v3 = 0xE700000000000000;
  }

  if (*v1)
  {
    v2 = 0xE900000000000064;
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

Swift::Int sub_8D63C(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE300000000000000;
  v4 = 0xEA00000000007373;
  if (v2 != 2)
  {
    v4 = 0xE700000000000000;
  }

  if (v2)
  {
    v3 = 0xE900000000000064;
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

void sub_8D708(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7824750;
  v4 = 0xEA00000000007373;
  v5 = 0x6572676F72506E69;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6574656C706D6F63;
    v2 = 0xE900000000000064;
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

unint64_t sub_8D848()
{
  result = qword_2825A8;
  if (!qword_2825A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SeriesUserStatus, &type metadata for SeriesUserStatus, v0, v1);
    atomic_store(result, &qword_2825A8);
  }

  return result;
}

unint64_t sub_8D89C()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000014;
  }
}

void sub_8D8D4(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0x8000000000214720;
  v13 = a1 == 0xD000000000000014 && 0x8000000000214720 == a2;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v14 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000214740 == a2)
  {
    a2, 0x8000000000214740, a3, a4, a5, a6, a7, a8;
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

uint64_t sub_8D9B4(uint64_t a1)
{
  v2 = sub_8DDEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8D9F0(uint64_t a1)
{
  v2 = sub_8DDEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReferralData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2825B0, &qword_1EFCB8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  sub_48B8(a1, a1[3]);
  sub_8DDEC();
  sub_1E1E00();
  v12 = 0;
  v8 = v10[3];
  sub_1E1C50();
  if (!v8)
  {
    v11 = 1;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v6, v3);
}

void ReferralData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_2825C0, &qword_1EFCC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  sub_48B8(a1, a1[3]);
  sub_8DDEC();
  sub_1E1DF0();
  if (v2)
  {
    v16 = 0;
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v46 = 0;
    v17 = sub_1E1B80();
    v16 = v18;
    v44 = v17;
    v45 = 1;
    v26 = sub_1E1BE0();
    v28 = v27;
    (*(v6 + 8))(v8, v5);
    *a2 = v44;
    a2[1] = v16;
    a2[2] = v26;
    a2[3] = v28;

    sub_4E48(a1, v29, v30, v31, v32, v33, v34, v35);
    v28, v36, v37, v38, v39, v40, v41, v42;
  }

  v16, v19, v20, v21, v22, v23, v24, v25;
}

unint64_t sub_8DDEC()
{
  result = qword_2825B8;
  if (!qword_2825B8)
  {
    result = swift_getWitnessTable(byte_1EFEA0, &type metadata for ReferralData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2825B8);
  }

  return result;
}

unint64_t sub_8DE44()
{
  result = qword_2825C8;
  if (!qword_2825C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReferralData, &type metadata for ReferralData, v0, v1);
    atomic_store(result, &qword_2825C8);
  }

  return result;
}

unint64_t sub_8DE9C()
{
  result = qword_2825D0;
  if (!qword_2825D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReferralData, &type metadata for ReferralData, v0, v1);
    atomic_store(result, &qword_2825D0);
  }

  return result;
}

unint64_t sub_8DF14()
{
  result = qword_2825D8;
  if (!qword_2825D8)
  {
    result = swift_getWitnessTable(byte_1EFE78, &type metadata for ReferralData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2825D8);
  }

  return result;
}

unint64_t sub_8DF6C()
{
  result = qword_2825E0;
  if (!qword_2825E0)
  {
    result = swift_getWitnessTable(a9_1, &type metadata for ReferralData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2825E0);
  }

  return result;
}

unint64_t sub_8DFC4()
{
  result = qword_2825E8;
  if (!qword_2825E8)
  {
    result = swift_getWitnessTable(asc_1EFE10, &type metadata for ReferralData.CodingKeys, v0, v1);
    atomic_store(result, &qword_2825E8);
  }

  return result;
}

uint64_t EventReporter.emitReadEvent(using:readingSessionData:contentData:readingSettingsData:upSellData:contentSettingsData:doNotDisturbData:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return _swift_task_switch(sub_8E044, 0, 0);
}

uint64_t sub_8E044()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v9 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = v9;
  *(v5 + 64) = v3;
  *(v5 + 72) = v2;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_8E168;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_8E168()
{

  return _swift_task_switch(sub_8E280, 0, 0);
}

void sub_8E294(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v64 = a7;
  v65 = a8;
  v62 = a5;
  v63 = a6;
  v66 = a2;
  v60 = a4;
  v61 = a9;
  v10 = sub_3D68(&qword_282650, &qword_1EFF18);
  v58 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v53 - v12;
  v59 = &v53 - v12;
  v56 = sub_1E09E0();
  v14 = *(v56 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v56);
  v57 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))();
  v54 = v11;
  (*(v11 + 16))(v13, a1, v10);
  v16 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v55 = (v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v11 + 80) + v21 + 8) & ~*(v11 + 80);
  v23 = swift_allocObject();
  (*(v14 + 32))(v23 + v16, v57, v56);
  v24 = v59;
  v25 = v60;
  v26 = v54;
  *(&v23->super.isa + v55) = v60;
  v27 = v62;
  *(&v23->super.isa + v17) = v62;
  v28 = v63;
  *(&v23->super.isa + v18) = v63;
  v29 = v64;
  *(&v23->super.isa + v19) = v64;
  v30 = v65;
  *(&v23->super.isa + v20) = v65;
  v31 = v61;
  *(&v23->super.isa + v21) = v61;
  (*(v26 + 32))(v23 + v22, v24, v58);
  v32 = swift_allocObject();
  v32[1].super.isa = sub_92964;
  *v32[1].dataProviders = v23;
  v33 = v30;
  v34 = v31;

  v35 = v25;
  v36 = v27;
  v37 = v28;
  v38 = v29;
  sub_1E10C0();
  v23, v39, v40, v41, v42, v43, v44, v45;
  v32, v46, v47, v48, v49, v50, v51, v52;
}

uint64_t sub_8E59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  type metadata accessor for ReadEvent(0);
  sub_92AA8(&qword_282658, type metadata accessor for ReadEvent, protocol conformance descriptor for ReadEvent);
  sub_1E0BF0();
  sub_A6684(v88);
  LODWORD(v82) = v88[0];
  BYTE4(v82) = BYTE4(v88[0]);
  DWORD2(v82) = DWORD2(v88[0]);
  WORD6(v82) = WORD6(v88[0]);
  BYTE14(v82) = BYTE14(v88[0]);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v7 = sub_1E0CB0();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E9970;
  v11 = enum case for DataEventTrait.onlyOnce(_:);
  v79 = *(v8 + 104);
  v79(v10 + v9, enum case for DataEventTrait.onlyOnce(_:), v7);
  sub_7EC38();
  sub_1E0C00();
  v10, v12, v13, v14, v15, v16, v17, v18;
  sub_A3F08(&v82);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E9970;
  v79(v19 + v9, v11, v7);
  sub_4C164();
  sub_1E0C00();
  v19, v20, v21, v22, v23, v24, v25, v26;
  v88[2] = v84;
  v88[3] = v85;
  v88[4] = v86;
  v88[5] = v87;
  v88[0] = v82;
  v88[1] = v83;
  sub_14424(v88);
  sub_A6A60(&v82);
  v80 = v83;
  v27 = v7;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1E9970;
  v79(v28 + v9, v11, v7);
  sub_92AF0();
  sub_1E0C00();
  v28, v29, v30, v31, v32, v33, v34, v35;
  v80, v36, v37, v38, v39, v40, v41, v42;
  if (a6)
  {
    v43 = a6;
    sub_A7638(&v82);
    v81 = v83;
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1E9970;
    v79(v44 + v9, v11, v27);
    sub_92BEC();
    sub_1E0C00();

    v44, v45, v46, v47, v48, v49, v50, v51;
    v81, v52, v53, v54, v55, v56, v57, v58;
  }

  if (a7)
  {
    v59 = a7;
    sub_A43E4(&v82);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1E9970;
    v79(v60 + v9, v11, v27);
    sub_92B98();
    sub_1E0C00();
    v60, v61, v62, v63, v64, v65, v66, v67;
  }

  sub_A47E0(&v82);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1E9970;
  v79(v68 + v9, v11, v27);
  sub_92B44();
  sub_1E0C00();
  v68, v69, v70, v71, v72, v73, v74, v75;
  v82 = 0u;
  v83 = 0u;
  sub_1E0C10();
  sub_4C1B8(&v82);
  sub_3D68(&qword_282650, &qword_1EFF18);
  return sub_1E18E0();
}

uint64_t sub_8ED14(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v16 = sub_1E09E0();
  v8[9] = v16;
  v8[10] = *(v16 - 8);
  v8[11] = swift_task_alloc();
  v8[12] = _Block_copy(v26);
  sub_1E09B0();
  v17 = a6;
  v18 = a7;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;

  return _swift_task_switch(sub_8EE64, 0, 0);
}

uint64_t sub_8EE64()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v9 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = v9;
  *(v5 + 64) = v3;
  *(v5 + 72) = v2;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_8EF88;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_8EF88()
{

  return _swift_task_switch(sub_8F0A0, 0, 0);
}

uint64_t sub_8F0A0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v12 = *(v0 + 72);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = *(v0 + 16);

  (*(v3 + 8))(v1, v12);
  v2[2](v2);
  _Block_release(v2);

  v10 = *(v0 + 8);

  return v10();
}

void EventReporter.emitReadingAutoNightSettingChangeEvent(using:readingSessionData:contentData:isOn:)(void *a1, int *a2, _OWORD *a3, char a4)
{
  v7 = *a2;
  v8 = *(a2 + 4);
  v9 = a2[2];
  v10 = *(a2 + 12);
  v11 = *(a2 + 13);
  v12 = *(a2 + 14);
  v13 = a3[3];
  v40[2] = a3[2];
  v40[3] = v13;
  v14 = a3[5];
  v40[4] = a3[4];
  v40[5] = v14;
  v15 = a3[1];
  v16 = a1;
  v40[0] = *a3;
  v40[1] = v15;
  if (a1 || (v16 = sub_BFB78()) != 0)
  {
    v17 = swift_allocObject();
    v18 = a4;
    v19 = v17;
    *(v17 + 16) = v7;
    *(v17 + 20) = v8;
    *(v17 + 24) = v9;
    *(v17 + 28) = v10;
    *(v17 + 29) = v11;
    *(v17 + 30) = v12;
    v20 = a3[3];
    *(v17 + 64) = a3[2];
    *(v17 + 80) = v20;
    v21 = a3[5];
    *(v17 + 96) = a3[4];
    *(v17 + 112) = v21;
    v22 = a3[1];
    *(v17 + 32) = *a3;
    *(v17 + 48) = v22;
    *(v17 + 128) = v18 & 1;
    v23 = swift_allocObject();
    v23[1].super.isa = sub_91644;
    *v23[1].dataProviders = v19;
    v24 = a1;
    sub_13A5C(v40, &v39);

    sub_1E10C0();

    v19, v25, v26, v27, v28, v29, v30, v31;
    v23, v32, v33, v34, v35, v36, v37, v38;
  }
}

uint64_t sub_8F390(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, char a5)
{
  *&v38[0] = a2;
  DWORD2(v38[0]) = a3;
  BYTE14(v38[0]) = BYTE6(a3);
  WORD6(v38[0]) = WORD2(a3);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v6 = sub_1E0CB0();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E9970;
  v10 = enum case for DataEventTrait.onlyOnce(_:);
  v37 = *(v7 + 104);
  v37(v9 + v8, enum case for DataEventTrait.onlyOnce(_:), v6);
  sub_7EC38();
  sub_1E0C00();
  v9, v11, v12, v13, v14, v15, v16, v17;
  v18 = a4[3];
  v38[2] = a4[2];
  v38[3] = v18;
  v19 = a4[5];
  v38[4] = a4[4];
  v38[5] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1E9970;
  v37(v20 + v8, v10, v6);
  sub_4C164();
  sub_1E0C00();
  v20, v21, v22, v23, v24, v25, v26, v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1E9970;
  v37(v28 + v8, v10, v6);
  sub_9264C();
  sub_1E0C00();
  v28, v29, v30, v31, v32, v33, v34, v35;
  type metadata accessor for ReadingAutoNightSettingChangeEvent(0);
  sub_92AA8(&qword_282648, type metadata accessor for ReadingAutoNightSettingChangeEvent, protocol conformance descriptor for ReadingAutoNightSettingChangeEvent);
  memset(v38, 0, 32);
  sub_1E0C10();
  return sub_4C1B8(v38);
}

void EventReporter.emitReadingBackgroundColorChangeEvent(using:readingSessionData:contentData:backgroundColorData:)(void *a1, int *a2, _OWORD *a3, char *a4)
{
  v6 = *a2;
  v7 = *(a2 + 4);
  v8 = a2[2];
  v9 = *(a2 + 12);
  v10 = *(a2 + 13);
  v11 = *(a2 + 14);
  v12 = a3[3];
  v40[2] = a3[2];
  v40[3] = v12;
  v13 = a3[5];
  v40[4] = a3[4];
  v40[5] = v13;
  v14 = a3[1];
  v40[0] = *a3;
  v40[1] = v14;
  v15 = a1;
  v16 = *a4;
  if (a1 || (v15 = sub_BFB78()) != 0)
  {
    v17 = swift_allocObject();
    v18 = v6;
    v19 = v17;
    *(v17 + 16) = v18;
    *(v17 + 20) = v7;
    *(v17 + 24) = v8;
    *(v17 + 28) = v9;
    *(v17 + 29) = v10;
    *(v17 + 30) = v11;
    v20 = a3[3];
    *(v17 + 64) = a3[2];
    *(v17 + 80) = v20;
    v21 = a3[5];
    *(v17 + 96) = a3[4];
    *(v17 + 112) = v21;
    v22 = a3[1];
    *(v17 + 32) = *a3;
    *(v17 + 48) = v22;
    *(v17 + 128) = v16;
    v23 = swift_allocObject();
    v23[1].super.isa = sub_91814;
    *v23[1].dataProviders = v19;
    v24 = a1;
    sub_13A5C(v40, &v39);

    sub_1E10C0();

    v19, v25, v26, v27, v28, v29, v30, v31;
    v23, v32, v33, v34, v35, v36, v37, v38;
  }
}

uint64_t sub_8F88C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, char a5)
{
  *&v39[0] = a2;
  DWORD2(v39[0]) = a3;
  BYTE14(v39[0]) = BYTE6(a3);
  WORD6(v39[0]) = WORD2(a3);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v6 = sub_1E0CB0();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E9970;
  v10 = enum case for DataEventTrait.onlyOnce(_:);
  v11 = *(v7 + 104);
  v38 = enum case for DataEventTrait.onlyOnce(_:);
  v11(v9 + v8, enum case for DataEventTrait.onlyOnce(_:), v6);
  sub_7EC38();
  sub_1E0C00();
  v9, v12, v13, v14, v15, v16, v17, v18;
  v19 = a4[3];
  v39[2] = a4[2];
  v39[3] = v19;
  v20 = a4[5];
  v39[4] = a4[4];
  v39[5] = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1E9970;
  v11(v21 + v8, v10, v6);
  sub_4C164();
  sub_1E0C00();
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1E9970;
  v11(v29 + v8, v38, v6);
  sub_925A0();
  sub_1E0C00();
  v29, v30, v31, v32, v33, v34, v35, v36;
  type metadata accessor for ReadingBackgroundColorChangeEvent(0);
  sub_92AA8(&qword_282638, type metadata accessor for ReadingBackgroundColorChangeEvent, protocol conformance descriptor for ReadingBackgroundColorChangeEvent);
  memset(v39, 0, 32);
  sub_1E0C10();
  return sub_4C1B8(v39);
}

void EventReporter.emitReadingBrightnessChangeEvent(using:readingSessionData:contentData:brightness:)(void *a1, void *a2, void *a3, int a4)
{
  v8 = a1;
  if (a1 || (v8 = sub_BFB78()) != 0)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    *(v9 + 32) = a4;
    v10 = swift_allocObject();
    v10[1].super.isa = sub_91858;
    *v10[1].dataProviders = v9;
    v11 = a1;
    v12 = a2;
    v13 = a3;

    sub_1E10C0();

    v9, v14, v15, v16, v17, v18, v19, v20;

    v10, v21, v22, v23, v24, v25, v26, v27;
  }
}

uint64_t sub_8FC84(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_A6684(v42);
  LODWORD(v36) = v42[0];
  BYTE4(v36) = BYTE4(v42[0]);
  DWORD2(v36) = DWORD2(v42[0]);
  WORD6(v36) = WORD6(v42[0]);
  BYTE14(v36) = BYTE14(v42[0]);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v33 = sub_1E0CB0();
  v4 = *(v33 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E9970;
  v7 = enum case for DataEventTrait.onlyOnce(_:);
  v8 = *(v4 + 104);
  v34 = enum case for DataEventTrait.onlyOnce(_:);
  v8(v6 + v5, enum case for DataEventTrait.onlyOnce(_:), v33);
  sub_7EC38();
  sub_1E0C00();
  v6, v9, v10, v11, v12, v13, v14, v15;
  sub_A3F08(&v36);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E9970;
  v8(v16 + v5, v7, v33);
  sub_4C164();
  sub_1E0C00();
  v16, v17, v18, v19, v20, v21, v22, v23;
  v42[2] = v38;
  v42[3] = v39;
  v42[4] = v40;
  v42[5] = v41;
  v42[0] = v36;
  v42[1] = v37;
  sub_14424(v42);
  LODWORD(v36) = a4;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E9970;
  v8(v24 + v5, v34, v33);
  sub_9254C();
  sub_1E0C00();
  v24, v25, v26, v27, v28, v29, v30, v31;
  type metadata accessor for ReadingBrightnessChangeEvent(0);
  sub_92AA8(&qword_282628, type metadata accessor for ReadingBrightnessChangeEvent, protocol conformance descriptor for ReadingBrightnessChangeEvent);
  v36 = 0u;
  v37 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v36);
}

void EventReporter.emitReadingFontChangeEvent(using:readingSessionData:contentData:fontName:)(void *a1, int *a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v10 = *(a2 + 4);
  v11 = a2[2];
  v12 = *(a2 + 12);
  v13 = *(a2 + 13);
  v41 = *(a2 + 14);
  v14 = a3[3];
  v43[2] = a3[2];
  v43[3] = v14;
  v15 = a3[5];
  v43[4] = a3[4];
  v43[5] = v15;
  v16 = a3[1];
  v17 = a1;
  v43[0] = *a3;
  v43[1] = v16;
  if (a1 || (v17 = sub_BFB78()) != 0)
  {
    v18 = swift_allocObject();
    v19 = a4;
    v20 = a5;
    v21 = v18;
    *(v18 + 16) = v9;
    *(v18 + 20) = v10;
    *(v18 + 24) = v11;
    *(v18 + 28) = v12;
    *(v18 + 29) = v13;
    *(v18 + 30) = v41;
    v22 = a3[3];
    *(v18 + 64) = a3[2];
    *(v18 + 80) = v22;
    v23 = a3[5];
    *(v18 + 96) = a3[4];
    *(v18 + 112) = v23;
    v24 = a3[1];
    *(v18 + 32) = *a3;
    *(v18 + 48) = v24;
    *(v18 + 128) = v19;
    *(v18 + 136) = v20;
    v25 = swift_allocObject();
    v25[1].super.isa = sub_91A00;
    *v25[1].dataProviders = v21;
    v26 = a1;
    sub_13A5C(v43, v42);

    sub_1E10C0();

    v21, v27, v28, v29, v30, v31, v32, v33;
    v25, v34, v35, v36, v37, v38, v39, v40;
  }
}

uint64_t sub_90318(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  *&v48[0] = a2;
  DWORD2(v48[0]) = a3;
  BYTE14(v48[0]) = BYTE6(a3);
  WORD6(v48[0]) = WORD2(a3);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v7 = sub_1E0CB0();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E9970;
  v11 = enum case for DataEventTrait.onlyOnce(_:);
  v12 = *(v8 + 104);
  v46 = enum case for DataEventTrait.onlyOnce(_:);
  v12(v10 + v9, enum case for DataEventTrait.onlyOnce(_:), v7);
  sub_7EC38();
  sub_1E0C00();
  v10, v13, v14, v15, v16, v17, v18, v19;
  v20 = a4[3];
  v48[2] = a4[2];
  v48[3] = v20;
  v21 = a4[5];
  v48[4] = a4[4];
  v48[5] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E9970;
  v12(v22 + v9, v11, v7);
  sub_4C164();
  sub_1E0C00();
  v22, v23, v24, v25, v26, v27, v28, v29;
  *(&v48[0] + 1) = a6;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1E9970;
  v12(v30 + v9, v46, v7);
  sub_92448();

  sub_1E0C00();
  v30, v31, v32, v33, v34, v35, v36, v37;
  *(&v48[0] + 1), v38, v39, v40, v41, v42, v43, v44;
  type metadata accessor for ReadingFontChangeEvent(0);
  sub_92AA8(&qword_282618, type metadata accessor for ReadingFontChangeEvent, protocol conformance descriptor for ReadingFontChangeEvent);
  memset(v48, 0, 32);
  sub_1E0C10();
  return sub_4C1B8(v48);
}

uint64_t EventReporter.emitReadingOrientationChangeEvent(using:readingSessionData:contentData:)(void *a1)
{
  sub_A6684(&v10);
  v4 = v10;
  v5 = v11;
  v6 = v12;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  sub_A3F08(v3);
  _s13BookAnalytics13EventReporterC028emitReadingOrientationChangeC05using18readingSessionData07contentL0yAA9BATrackerCSg_AA0fkL0VAA07ContentL0VtF_0(a1, &v4, v3);
  v16[2] = v3[2];
  v16[3] = v3[3];
  v16[4] = v3[4];
  v16[5] = v3[5];
  v16[0] = v3[0];
  v16[1] = v3[1];
  return sub_14424(v16);
}

uint64_t sub_907B0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  *&v29[0] = a2;
  DWORD2(v29[0]) = a3;
  BYTE14(v29[0]) = BYTE6(a3);
  WORD6(v29[0]) = WORD2(a3);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  v9 = enum case for DataEventTrait.onlyOnce(_:);
  v10 = *(v6 + 104);
  v10(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_7EC38();
  sub_1E0C00();
  v8, v11, v12, v13, v14, v15, v16, v17;
  v18 = a4[3];
  v29[2] = a4[2];
  v29[3] = v18;
  v19 = a4[5];
  v29[4] = a4[4];
  v29[5] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1E9970;
  v10(v20 + v7, v9, v5);
  sub_4C164();
  sub_1E0C00();
  v20, v21, v22, v23, v24, v25, v26, v27;
  type metadata accessor for ReadingOrientationChangeEvent(0);
  sub_92AA8(&qword_282608, type metadata accessor for ReadingOrientationChangeEvent, protocol conformance descriptor for ReadingOrientationChangeEvent);
  memset(v29, 0, 32);
  sub_1E0C10();
  return sub_4C1B8(v29);
}

void EventReporter.emitReadingFontSizeChangeEvent(using:readingSessionData:contentData:fontSize:)(void *a1, int *a2, _OWORD *a3, float a4)
{
  v7 = *a2;
  v8 = *(a2 + 4);
  v9 = a2[2];
  v10 = *(a2 + 12);
  v11 = *(a2 + 13);
  v12 = *(a2 + 14);
  v13 = a3[3];
  v38[2] = a3[2];
  v38[3] = v13;
  v14 = a3[5];
  v38[4] = a3[4];
  v38[5] = v14;
  v15 = a3[1];
  v16 = a1;
  v38[0] = *a3;
  v38[1] = v15;
  if (a1 || (v16 = sub_BFB78()) != 0)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v7;
    *(v17 + 20) = v8;
    *(v17 + 24) = v9;
    *(v17 + 28) = v10;
    *(v17 + 29) = v11;
    *(v17 + 30) = v12;
    v18 = a3[3];
    *(v17 + 64) = a3[2];
    *(v17 + 80) = v18;
    v19 = a3[5];
    *(v17 + 96) = a3[4];
    *(v17 + 112) = v19;
    v20 = a3[1];
    *(v17 + 32) = *a3;
    *(v17 + 48) = v20;
    *(v17 + 128) = a4;
    v21 = swift_allocObject();
    v21[1].super.isa = sub_91D70;
    *v21[1].dataProviders = v17;
    v22 = a1;
    sub_13A5C(v38, &v37);

    sub_1E10C0();

    v17, v23, v24, v25, v26, v27, v28, v29;
    v21, v30, v31, v32, v33, v34, v35, v36;
  }
}

uint64_t sub_90C1C(float a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *&v39[0] = a3;
  DWORD2(v39[0]) = a4;
  BYTE14(v39[0]) = BYTE6(a4);
  WORD6(v39[0]) = WORD2(a4);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v6 = sub_1E0CB0();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E9970;
  v10 = enum case for DataEventTrait.onlyOnce(_:);
  v11 = *(v7 + 104);
  v38 = enum case for DataEventTrait.onlyOnce(_:);
  v11(v9 + v8, enum case for DataEventTrait.onlyOnce(_:), v6);
  sub_7EC38();
  sub_1E0C00();
  v9, v12, v13, v14, v15, v16, v17, v18;
  v19 = a5[3];
  v39[2] = a5[2];
  v39[3] = v19;
  v20 = a5[5];
  v39[4] = a5[4];
  v39[5] = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1E9970;
  v11(v21 + v8, v10, v6);
  sub_4C164();
  sub_1E0C00();
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1E9970;
  v11(v29 + v8, v38, v6);
  sub_92290();
  sub_1E0C00();
  v29, v30, v31, v32, v33, v34, v35, v36;
  type metadata accessor for ReadingFontSizeChangeEvent(0);
  sub_92AA8(&qword_282600, type metadata accessor for ReadingFontSizeChangeEvent, protocol conformance descriptor for ReadingFontSizeChangeEvent);
  memset(v39, 0, 32);
  sub_1E0C10();
  return sub_4C1B8(v39);
}

void EventReporter.emitReadingScrollViewSettingChangeEvent(using:readingSessionData:contentData:fontSize:isOn:)(void *a1, int *a2, _OWORD *a3, char a4, float a5)
{
  v9 = *a2;
  v10 = *(a2 + 4);
  v11 = a2[2];
  v12 = *(a2 + 12);
  v13 = *(a2 + 13);
  v14 = *(a2 + 14);
  v15 = a3[3];
  v42[2] = a3[2];
  v42[3] = v15;
  v16 = a3[5];
  v42[4] = a3[4];
  v42[5] = v16;
  v17 = a3[1];
  v18 = a1;
  v42[0] = *a3;
  v42[1] = v17;
  if (a1 || (v18 = sub_BFB78()) != 0)
  {
    v19 = swift_allocObject();
    v20 = a4;
    v21 = v19;
    *(v19 + 16) = v9;
    *(v19 + 20) = v10;
    *(v19 + 24) = v11;
    *(v19 + 28) = v12;
    *(v19 + 29) = v13;
    *(v19 + 30) = v14;
    v22 = a3[3];
    *(v19 + 64) = a3[2];
    *(v19 + 80) = v22;
    v23 = a3[5];
    *(v19 + 96) = a3[4];
    *(v19 + 112) = v23;
    v24 = a3[1];
    *(v19 + 32) = *a3;
    *(v19 + 48) = v24;
    *(v19 + 128) = a5;
    *(v19 + 132) = v20 & 1;
    v25 = swift_allocObject();
    v25[1].super.isa = sub_91F14;
    *v25[1].dataProviders = v21;
    v26 = a1;
    sub_13A5C(v42, &v41);

    sub_1E10C0();

    v21, v27, v28, v29, v30, v31, v32, v33;
    v25, v34, v35, v36, v37, v38, v39, v40;
  }
}

uint64_t sub_91128(float a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, char a6)
{
  *&v48[0] = a3;
  DWORD2(v48[0]) = a4;
  BYTE14(v48[0]) = BYTE6(a4);
  WORD6(v48[0]) = WORD2(a4);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v7 = sub_1E0CB0();
  v47 = *(*(v7 - 8) + 80);
  v8 = *(v7 - 8);
  v9 = (v47 + 32) & ~v47;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E9970;
  v11 = enum case for DataEventTrait.onlyOnce(_:);
  v12 = *(v8 + 104);
  v12(v10 + v9, enum case for DataEventTrait.onlyOnce(_:), v7);
  sub_7EC38();
  sub_1E0C00();
  v10, v13, v14, v15, v16, v17, v18, v19;
  v20 = a5[3];
  v48[2] = a5[2];
  v48[3] = v20;
  v21 = a5[5];
  v48[4] = a5[4];
  v48[5] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E9970;
  v12(v22 + v9, v11, v7);
  sub_4C164();
  sub_1E0C00();
  v22, v23, v24, v25, v26, v27, v28, v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1E9970;
  v12(v30 + v9, v11, v7);
  sub_92290();
  sub_1E0C00();
  v30, v31, v32, v33, v34, v35, v36, v37;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1E9970;
  v12(v38 + v9, v11, v7);
  sub_922E4();
  sub_1E0C00();
  v38, v39, v40, v41, v42, v43, v44, v45;
  type metadata accessor for ReadingFontSizeChangeEvent(0);
  sub_92AA8(&qword_282600, type metadata accessor for ReadingFontSizeChangeEvent, protocol conformance descriptor for ReadingFontSizeChangeEvent);
  memset(v48, 0, 32);
  sub_1E0C10();
  return sub_4C1B8(v48);
}

void _s13BookAnalytics13EventReporterC033emitReadingAutoNightSettingChangeC05using18readingSessionData07contentN04isOnyAA9BATrackerCSg_AA07BridgedfmN0CAA0s7ContentN0CSbtF_0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_A6684(&v36);
  v6 = v36;
  v7 = v37;
  v8 = v38;
  v9 = v39;
  v10 = v40;
  v11 = v41;
  sub_A3F08(v42);
  v12 = a1;
  if (a1 || (v12 = sub_BFB78()) != 0)
  {
    v13 = swift_allocObject();
    v14 = a4;
    v15 = v13;
    *(v13 + 16) = v6;
    *(v13 + 20) = v7;
    *(v13 + 24) = v8;
    *(v13 + 28) = v9;
    *(v13 + 29) = v10;
    *(v13 + 30) = v11;
    v16 = v42[3];
    *(v13 + 64) = v42[2];
    *(v13 + 80) = v16;
    v17 = v42[5];
    *(v13 + 96) = v42[4];
    *(v13 + 112) = v17;
    v18 = v42[1];
    *(v13 + 32) = v42[0];
    *(v13 + 48) = v18;
    *(v13 + 128) = v14 & 1;
    v19 = swift_allocObject();
    v19[1].super.isa = sub_92CB0;
    *v19[1].dataProviders = v15;
    v20 = a1;
    sub_13A5C(v42, v35);

    sub_1E10C0();
    sub_14424(v42);

    v15, v21, v22, v23, v24, v25, v26, v27;
    v19, v28, v29, v30, v31, v32, v33, v34;
  }

  else
  {
    sub_14424(v42);
  }
}

void _s13BookAnalytics13EventReporterC032emitReadingBackgroundColorChangeC05using18readingSessionData07contentM0010backgroundhM0yAA9BATrackerCSg_AA07BridgedflM0CAA0q7ContentM0CAA0qghM0CtF_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_A6684(&v35);
  v6 = v35;
  v7 = v36;
  v8 = v37;
  v9 = v38;
  v10 = v39;
  v11 = v40;
  sub_A3F08(v41);
  v12 = *(a4 + OBJC_IVAR___BABackgroundColorData_backgroundColor);
  if (v12 >= 5)
  {
    sub_1E1D50();
    __break(1u);
  }

  else
  {
    v13 = a1;
    if (a1 || (v13 = sub_BFB78()) != 0)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v6;
      *(v14 + 20) = v7;
      *(v14 + 24) = v8;
      *(v14 + 28) = v9;
      *(v14 + 29) = v10;
      *(v14 + 30) = v11;
      v15 = v41[3];
      *(v14 + 64) = v41[2];
      *(v14 + 80) = v15;
      v16 = v41[5];
      *(v14 + 96) = v41[4];
      *(v14 + 112) = v16;
      v17 = v41[1];
      *(v14 + 32) = v41[0];
      *(v14 + 48) = v17;
      *(v14 + 128) = 0x4030201uLL >> (8 * v12);
      v18 = swift_allocObject();
      v18[1].super.isa = sub_92CAC;
      *v18[1].dataProviders = v14;
      v19 = a1;
      sub_13A5C(v41, v34);

      sub_1E10C0();
      sub_14424(v41);

      v14, v20, v21, v22, v23, v24, v25, v26;
      v18, v27, v28, v29, v30, v31, v32, v33;
    }

    else
    {
      sub_14424(v41);
    }
  }
}

uint64_t sub_91818()
{

  return _swift_deallocObject(v0, 36, 7);
}

void _s13BookAnalytics13EventReporterC021emitReadingFontChangeC05using18readingSessionData07contentL08fontNameyAA9BATrackerCSg_AA07BridgedfkL0CAA0q7ContentL0CSStF_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_A6684(&v37);
  v7 = v37;
  v8 = v38;
  v9 = v39;
  v10 = v40;
  v11 = v41;
  v12 = v42;
  sub_A3F08(v43);
  v13 = a1;
  if (a1 || (v13 = sub_BFB78()) != 0)
  {
    v14 = a5;
    v15 = swift_allocObject();
    *(v15 + 16) = v7;
    *(v15 + 20) = v8;
    *(v15 + 24) = v9;
    *(v15 + 28) = v10;
    *(v15 + 29) = v11;
    *(v15 + 30) = v12;
    v16 = v43[3];
    *(v15 + 64) = v43[2];
    *(v15 + 80) = v16;
    v17 = v43[5];
    *(v15 + 96) = v43[4];
    *(v15 + 112) = v17;
    v18 = v43[1];
    *(v15 + 32) = v43[0];
    *(v15 + 48) = v18;
    *(v15 + 128) = a4;
    *(v15 + 136) = v14;
    v19 = swift_allocObject();
    v19[1].super.isa = sub_92CA8;
    *v19[1].dataProviders = v15;
    v20 = a1;
    sub_13A5C(v43, v36);

    sub_1E10C0();
    sub_14424(v43);

    v15, v21, v22, v23, v24, v25, v26, v27;
    v19, v28, v29, v30, v31, v32, v33, v34;
  }

  else
  {
    sub_14424(v43);
  }
}

void _s13BookAnalytics13EventReporterC028emitReadingOrientationChangeC05using18readingSessionData07contentL0yAA9BATrackerCSg_AA0fkL0VAA07ContentL0VtF_0(id a1, int *a2, _OWORD *a3)
{
  v4 = a1;
  v5 = *a2;
  v6 = *(a2 + 4);
  v7 = a2[2];
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  v10 = *(a2 + 14);
  v11 = a3[3];
  v40[2] = a3[2];
  v40[3] = v11;
  v12 = a3[5];
  v40[4] = a3[4];
  v40[5] = v12;
  v13 = a3[1];
  v40[0] = *a3;
  v40[1] = v13;
  if (a1 || (a1 = sub_BFB78()) != 0)
  {
    v38 = a1;
    v14 = objc_opt_self();
    v15 = v4;
    v16 = [v14 sharedConnection];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 isDiagnosticSubmissionAllowed];

      if (v18)
      {
        v19 = swift_allocObject();
        *(v19 + 16) = v5;
        *(v19 + 20) = v6;
        *(v19 + 24) = v7;
        *(v19 + 28) = v8;
        *(v19 + 29) = v9;
        *(v19 + 30) = v10;
        v20 = a3[5];
        *(v19 + 96) = a3[4];
        *(v19 + 112) = v20;
        v21 = a3[3];
        *(v19 + 64) = a3[2];
        *(v19 + 80) = v21;
        v22 = a3[1];
        *(v19 + 32) = *a3;
        *(v19 + 48) = v22;
        v23 = swift_allocObject();
        v23[1].super.isa = sub_923F4;
        *v23[1].dataProviders = v19;
        sub_13A5C(v40, v39);

        sub_1E10C0();

        v19, v24, v25, v26, v27, v28, v29, v30;
        v23, v31, v32, v33, v34, v35, v36, v37;
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void _s13BookAnalytics13EventReporterC025emitReadingFontSizeChangeC05using18readingSessionData07contentM004fontH0yAA9BATrackerCSg_AA07BridgedflM0CAA0q7ContentM0CSftF_0(void *a1, float a2)
{
  sub_A6684(&v32);
  v4 = v32;
  v5 = v33;
  v6 = v34;
  v7 = v35;
  v8 = v36;
  v9 = v37;
  sub_A3F08(v38);
  v10 = a1;
  if (a1 || (v10 = sub_BFB78()) != 0)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v4;
    *(v11 + 20) = v5;
    *(v11 + 24) = v6;
    *(v11 + 28) = v7;
    *(v11 + 29) = v8;
    *(v11 + 30) = v9;
    v12 = v38[3];
    *(v11 + 64) = v38[2];
    *(v11 + 80) = v12;
    v13 = v38[5];
    *(v11 + 96) = v38[4];
    *(v11 + 112) = v13;
    v14 = v38[1];
    *(v11 + 32) = v38[0];
    *(v11 + 48) = v14;
    *(v11 + 128) = a2;
    v15 = swift_allocObject();
    v15[1].super.isa = sub_92CA4;
    *v15[1].dataProviders = v11;
    v16 = a1;
    sub_13A5C(v38, v31);

    sub_1E10C0();
    sub_14424(v38);

    v11, v17, v18, v19, v20, v21, v22, v23;
    v15, v24, v25, v26, v27, v28, v29, v30;
  }

  else
  {
    sub_14424(v38);
  }
}

void _s13BookAnalytics13EventReporterC034emitReadingScrollViewSettingChangeC05using18readingSessionData07contentN08fontSize4isOnyAA9BATrackerCSg_AA07BridgedfmN0CAA0u7ContentN0CSfSbtF_0(void *a1, float a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_A6684(&v38);
  v8 = v38;
  v9 = v39;
  v10 = v40;
  v11 = v41;
  v12 = v42;
  v13 = v43;
  sub_A3F08(v44);
  v14 = a1;
  if (a1 || (v14 = sub_BFB78()) != 0)
  {
    v15 = swift_allocObject();
    v16 = a5;
    v17 = v15;
    *(v15 + 16) = v8;
    *(v15 + 20) = v9;
    *(v15 + 24) = v10;
    *(v15 + 28) = v11;
    *(v15 + 29) = v12;
    *(v15 + 30) = v13;
    v18 = v44[3];
    *(v15 + 64) = v44[2];
    *(v15 + 80) = v18;
    v19 = v44[5];
    *(v15 + 96) = v44[4];
    *(v15 + 112) = v19;
    v20 = v44[1];
    *(v15 + 32) = v44[0];
    *(v15 + 48) = v20;
    *(v15 + 128) = a2;
    *(v15 + 132) = v16 & 1;
    v21 = swift_allocObject();
    v21[1].super.isa = sub_92CA0;
    *v21[1].dataProviders = v17;
    v22 = a1;
    sub_13A5C(v44, v37);

    sub_1E10C0();
    sub_14424(v44);

    v17, v23, v24, v25, v26, v27, v28, v29;
    v21, v30, v31, v32, v33, v34, v35, v36;
  }

  else
  {
    sub_14424(v44);
  }
}

uint64_t sub_91F18()
{
  _Block_release(*(v0 + 80));

  return _swift_deallocObject(v0, 96, 7);
}

void sub_91F98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7E674;

  JUMPOUT(0x8ED14);
}

uint64_t sub_92090()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_92C90;

  return sub_D0674(v2, v3, v4);
}

uint64_t sub_92150()
{
  swift_unknownObjectRelease();
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_92190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_92C90;

  return sub_D0760(a1, v4, v5, v6);
}

unint64_t sub_92290()
{
  result = qword_2825F0;
  if (!qword_2825F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FontSizeData, &type metadata for FontSizeData, v0, v1);
    atomic_store(result, &qword_2825F0);
  }

  return result;
}

unint64_t sub_922E4()
{
  result = qword_2825F8;
  if (!qword_2825F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewSettingData, &type metadata for ScrollViewSettingData, v0, v1);
    atomic_store(result, &qword_2825F8);
  }

  return result;
}

uint64_t sub_92338(uint64_t a1)
{
  v2 = 0x10000000000;
  if (!*(v1 + 29))
  {
    v2 = 0;
  }

  return sub_91128(*(v1 + 128), a1, *(v1 + 16) | (*(v1 + 20) << 32), v2 | (*(v1 + 30) << 48) | (*(v1 + 28) << 32) | *(v1 + 24), (v1 + 32), *(v1 + 132));
}

uint64_t sub_92394(uint64_t a1)
{
  v2 = 0x10000000000;
  if (!*(v1 + 29))
  {
    v2 = 0;
  }

  return sub_90C1C(*(v1 + 128), a1, *(v1 + 16) | (*(v1 + 20) << 32), v2 | (*(v1 + 30) << 48) | (*(v1 + 28) << 32) | *(v1 + 24), (v1 + 32));
}

uint64_t sub_923F4(uint64_t a1)
{
  v2 = 0x10000000000;
  if (!*(v1 + 29))
  {
    v2 = 0;
  }

  return sub_907B0(a1, *(v1 + 16) | (*(v1 + 20) << 32), v2 | (*(v1 + 30) << 48) | (*(v1 + 28) << 32) | *(v1 + 24), (v1 + 32));
}

unint64_t sub_92448()
{
  result = qword_282610;
  if (!qword_282610)
  {
    result = swift_getWitnessTable("yP\a", &type metadata for FontData, v0, v1);
    atomic_store(result, &qword_282610);
  }

  return result;
}

uint64_t sub_9249C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8[5], a2, a3, a4, a5, a6, a7, a8;
  v8[8], v9, v10, v11, v12, v13, v14, v15;
  v8[10], v16, v17, v18, v19, v20, v21, v22;
  v8[15], v23, v24, v25, v26, v27, v28, v29;
  v8[17], v30, v31, v32, v33, v34, v35, v36;

  return _swift_deallocObject(v8, 144, 7);
}

uint64_t sub_924F4(uint64_t a1)
{
  v2 = 0x10000000000;
  if (!*(v1 + 29))
  {
    v2 = 0;
  }

  return sub_90318(a1, *(v1 + 16) | (*(v1 + 20) << 32), v2 | (*(v1 + 30) << 48) | (*(v1 + 28) << 32) | *(v1 + 24), (v1 + 32), *(v1 + 128), *(v1 + 136));
}

unint64_t sub_9254C()
{
  result = qword_282620;
  if (!qword_282620)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BrightnessData, &type metadata for BrightnessData, v0, v1);
    atomic_store(result, &qword_282620);
  }

  return result;
}

unint64_t sub_925A0()
{
  result = qword_282630;
  if (!qword_282630)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BackgroundColorData, &type metadata for BackgroundColorData, v0, v1);
    atomic_store(result, &qword_282630);
  }

  return result;
}

uint64_t sub_925F4(uint64_t a1)
{
  v2 = 0x10000000000;
  if (!*(v1 + 29))
  {
    v2 = 0;
  }

  return sub_8F88C(a1, *(v1 + 16) | (*(v1 + 20) << 32), v2 | (*(v1 + 30) << 48) | (*(v1 + 28) << 32) | *(v1 + 24), (v1 + 32), *(v1 + 128));
}

unint64_t sub_9264C()
{
  result = qword_282640;
  if (!qword_282640)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutoNightThemeSettingData, &type metadata for AutoNightThemeSettingData, v0, v1);
    atomic_store(result, &qword_282640);
  }

  return result;
}

uint64_t sub_926A0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8[5], a2, a3, a4, a5, a6, a7, a8;
  v8[8], v10, v11, v12, v13, v14, v15, v16;
  v8[10], v17, v18, v19, v20, v21, v22, v23;
  v8[15], v24, v25, v26, v27, v28, v29, v30;

  return _swift_deallocObject(v8, a1, 7);
}

uint64_t sub_926FC(uint64_t a1)
{
  v2 = 0x10000000000;
  if (!*(v1 + 29))
  {
    v2 = 0;
  }

  return sub_8F390(a1, *(v1 + 16) | (*(v1 + 20) << 32), v2 | (*(v1 + 30) << 48) | (*(v1 + 28) << 32) | *(v1 + 24), (v1 + 32), *(v1 + 128));
}

uint64_t sub_92754(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_9278C()
{
  v15 = sub_1E09E0();
  v1 = *(v15 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = sub_3D68(&qword_282650, &qword_1EFF18);
  v8 = *(v16 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9;
  v13 = *(v8 + 64);
  v11 = v2 | v9;
  (*(v1 + 8))(v0 + v3, v15);

  (*(v8 + 8))(v0 + v10, v16);

  return _swift_deallocObject(v0, v10 + v13, v11 | 7);
}

uint64_t sub_92964(uint64_t a1)
{
  v3 = *(sub_1E09E0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_3D68(&qword_282650, &qword_1EFF18);
  return sub_8E59C(a1, v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_92AA8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_92AF0()
{
  result = qword_282660;
  if (!qword_282660)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReadingSettingsData, &type metadata for ReadingSettingsData, v0, v1);
    atomic_store(result, &qword_282660);
  }

  return result;
}

unint64_t sub_92B44()
{
  result = qword_282668;
  if (!qword_282668)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DoNotDisturbData, &type metadata for DoNotDisturbData, v0, v1);
    atomic_store(result, &qword_282668);
  }

  return result;
}

unint64_t sub_92B98()
{
  result = qword_282670;
  if (!qword_282670)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentSettingsData, &type metadata for ContentSettingsData, v0, v1);
    atomic_store(result, &qword_282670);
  }

  return result;
}

unint64_t sub_92BEC()
{
  result = qword_282678;
  if (!qword_282678)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpSellData, &type metadata for UpSellData, v0, v1);
    atomic_store(result, &qword_282678);
  }

  return result;
}

uint64_t PreorderFailEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderFailEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderFailEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreorderFailEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreorderFailEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderFailEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderFailEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreorderFailEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreorderFailEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderFailEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderFailEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreorderFailEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreorderFailEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PreorderFailEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t PreorderFailEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderFailEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderFailEvent.Model.init(contentData:contentStoreData:sectionData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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
  v10 = *(a2 + 48);
  *(a5 + 128) = *(a2 + 32);
  *(a5 + 144) = v10;
  v11 = *(a2 + 16);
  *(a5 + 96) = *a2;
  *(a5 + 112) = v11;
  v12 = a3[3];
  *(a5 + 200) = a3[2];
  v13 = *a3;
  *(a5 + 184) = a3[1];
  *(a5 + 168) = v13;
  v14 = a3[5];
  *(a5 + 264) = a3[6];
  v15 = a3[4];
  *(a5 + 248) = v14;
  *(a5 + 232) = v15;
  *(a5 + 157) = *(a2 + 61);
  *(a5 + 216) = v12;
  v16 = *(type metadata accessor for PreorderFailEvent.Model(0) + 28);
  v17 = sub_1E1150();
  v18 = *(*(v17 - 8) + 32);

  return v18(a5 + v16, a4, v17);
}

uint64_t sub_934A4(uint64_t a1)
{
  v2 = sub_9399C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_934E0(uint64_t a1)
{
  v2 = sub_9399C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PreorderFailEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_2826B0, &qword_1EFF20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25[-v6];
  sub_48B8(a1, a1[3]);
  sub_9399C();
  sub_1E1E00();
  v8 = *(v2 + 48);
  v9 = *(v2 + 16);
  v61 = *(v2 + 32);
  v62 = v8;
  v10 = *(v2 + 48);
  v11 = *(v2 + 80);
  v63 = *(v2 + 64);
  v64 = v11;
  v12 = *(v2 + 16);
  v60[0] = *v2;
  v60[1] = v12;
  v56 = v61;
  v57 = v10;
  v13 = *(v2 + 80);
  v58 = v63;
  v59 = v13;
  v54 = v60[0];
  v55 = v9;
  v53 = 0;
  sub_13A5C(v60, &v37);
  sub_143D0();
  v14 = v65;
  sub_1E1CF0();
  if (v14)
  {
    v39 = v56;
    v40 = v57;
    v41 = v58;
    v42 = v59;
    v37 = v54;
    v38 = v55;
    sub_14424(&v37);
  }

  else
  {
    v49[2] = v56;
    v49[3] = v57;
    v49[4] = v58;
    v49[5] = v59;
    v49[0] = v54;
    v49[1] = v55;
    sub_14424(v49);
    v16 = *(v2 + 112);
    v17 = *(v2 + 144);
    v51 = *(v2 + 128);
    *v52 = v17;
    v18 = *(v2 + 112);
    v50[0] = *(v2 + 96);
    v50[1] = v18;
    v46 = v16;
    v47 = v51;
    v48[0] = *(v2 + 144);
    *&v52[13] = *(v2 + 157);
    *(v48 + 13) = *(v2 + 157);
    v45 = v50[0];
    v44 = 1;
    sub_17AA4(v50, &v37, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    sub_1E1C80();
    v35[2] = v47;
    v36[0] = v48[0];
    *(v36 + 13) = *(v48 + 13);
    v35[0] = v45;
    v35[1] = v46;
    sub_18E48(v35, &qword_27FFF0, &unk_1E9C00);
    v19 = *(v2 + 216);
    v20 = *(v2 + 248);
    v41 = *(v2 + 232);
    v42 = v20;
    v43 = *(v2 + 264);
    v21 = *(v2 + 184);
    v37 = *(v2 + 168);
    v38 = v21;
    v39 = *(v2 + 200);
    v40 = v19;
    v22 = *(v2 + 216);
    v23 = *(v2 + 248);
    v32 = *(v2 + 232);
    v33 = v23;
    v34 = *(v2 + 264);
    v24 = *(v2 + 184);
    v28 = *(v2 + 168);
    v29 = v24;
    v30 = *(v2 + 200);
    v31 = v22;
    v27 = 2;
    sub_17AA4(&v37, v26, &qword_27E490, &qword_205F90);
    sub_18544();
    sub_1E1C80();
    v26[4] = v32;
    v26[5] = v33;
    v26[6] = v34;
    v26[0] = v28;
    v26[1] = v29;
    v26[2] = v30;
    v26[3] = v31;
    sub_18E48(v26, &qword_27E490, &qword_205F90);
    type metadata accessor for PreorderFailEvent.Model(0);
    v25[15] = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_9399C()
{
  result = qword_2826B8;
  if (!qword_2826B8)
  {
    result = swift_getWitnessTable(byte_1F00EC, &type metadata for PreorderFailEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2826B8);
  }

  return result;
}

void PreorderFailEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v41 = sub_1E1150();
  v38 = *(v41 - 8);
  __chkstk_darwin(v41);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_3D68(&qword_2826C0, &qword_1EFF28);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v5 = type metadata accessor for PreorderFailEvent.Model(0);
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v60 = a1;
  sub_48B8(a1, v8);
  sub_9399C();
  v9 = v43;
  sub_1E1DF0();
  if (v9)
  {
    sub_4E48(v60, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    v37 = v5;
    v17 = v7;
    v43 = v4;
    v18 = v40;
    v19 = v41;
    v58 = 0;
    sub_14CB8();
    sub_1E1C20();
    v20 = v59[3];
    v21 = v17;
    *(v17 + 2) = v59[2];
    *(v17 + 3) = v20;
    v22 = v59[5];
    *(v17 + 4) = v59[4];
    *(v17 + 5) = v22;
    v23 = v59[1];
    *v17 = v59[0];
    *(v17 + 1) = v23;
    v57 = 1;
    sub_4FB64();
    sub_1E1BB0();
    v24 = v54;
    v25 = v56[0];
    *(v17 + 8) = v55;
    *(v17 + 9) = v25;
    *(v17 + 157) = *(v56 + 13);
    *(v17 + 6) = v53;
    *(v17 + 7) = v24;
    v45 = 2;
    sub_18EFC();
    sub_1E1BB0();
    v26 = v48;
    *(v17 + 216) = v49;
    v27 = v51;
    *(v17 + 232) = v50;
    *(v17 + 248) = v27;
    v28 = v47;
    *(v17 + 168) = v46;
    *(v17 + 184) = v28;
    *(v17 + 200) = v26;
    *(v17 + 264) = v52;
    v44 = 3;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v29 = v43;
    sub_1E1C20();
    (*(v18 + 8))(0, v42);
    (*(v38 + 32))(v21 + *(v37 + 28), v29, v19);
    sub_93EDC(v21, v39);
    sub_4E48(v60, v30, v31, v32, v33, v34, v35, v36);
    sub_93F40(v21);
  }
}

uint64_t sub_93EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreorderFailEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_93F40(uint64_t a1)
{
  v2 = type metadata accessor for PreorderFailEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_94050(uint64_t a1, uint64_t a2, int *a3)
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

  v11 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
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

  v14 = sub_3D68(&qword_27E478, &unk_1E5F80);
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

uint64_t sub_9421C(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  v13 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
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

  v16 = sub_3D68(&qword_27E478, &unk_1E5F80);
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

uint64_t sub_943F4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_944B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

unint64_t sub_9456C()
{
  result = qword_2827F8;
  if (!qword_2827F8)
  {
    result = swift_getWitnessTable(byte_1F00C4, &type metadata for PreorderFailEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2827F8);
  }

  return result;
}

unint64_t sub_945C4()
{
  result = qword_282800;
  if (!qword_282800)
  {
    result = swift_getWitnessTable(byte_1F0034, &type metadata for PreorderFailEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282800);
  }

  return result;
}

unint64_t sub_9461C()
{
  result = qword_282808;
  if (!qword_282808)
  {
    result = swift_getWitnessTable(byte_1F005C, &type metadata for PreorderFailEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282808);
  }

  return result;
}

BookAnalytics::ActionType_optional __swiftcall ActionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2601E0;
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

uint64_t ActionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6165527472617473;
  if (v1 != 5)
  {
    v3 = 0x73694C7472617473;
  }

  v4 = 0x7473694C746E6177;
  if (v1 != 3)
  {
    v4 = 0x74536E4977656976;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x546567617373656DLL;
  if (v1 != 1)
  {
    v5 = 0x6F74747542797562;
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

unint64_t sub_947E8()
{
  result = qword_282810;
  if (!qword_282810)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionType, &type metadata for ActionType, v0, v1);
    atomic_store(result, &qword_282810);
  }

  return result;
}

void sub_94848(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEC000000676E6964;
  if (v2 != 5)
  {
    v4 = 0xEE00676E696E6574;
  }

  v5 = 0xEB00000000646441;
  if (v2 != 3)
  {
    v5 = 0xEB0000000065726FLL;
  }

  if (*v1 <= 4u)
  {
    v4 = v5;
  }

  v6 = 0xEA00000000007061;
  if (v2 != 1)
  {
    v6 = 0xEC0000007061546ELL;
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

void sub_9499C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEC000000676E6964;
  v6 = 0x6165527472617473;
  if (v2 != 5)
  {
    v6 = 0x73694C7472617473;
    v5 = 0xEE00676E696E6574;
  }

  v7 = 0xEB00000000646441;
  v8 = 0x7473694C746E6177;
  if (v2 != 3)
  {
    v8 = 0x74536E4977656976;
    v7 = 0xEB0000000065726FLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000007061;
  v10 = 0x546567617373656DLL;
  if (v2 != 1)
  {
    v10 = 0x6F74747542797562;
    v9 = 0xEC0000007061546ELL;
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

unint64_t sub_94B6C()
{
  result = qword_282818;
  if (!qword_282818)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionType, &type metadata for ActionType, v0, v1);
    atomic_store(result, &qword_282818);
  }

  return result;
}

void EventReporter.emitAllInSeriesViewEvent(using:for:with:)(uint64_t a1, uint64_t a2, objc_class *a3, objc_class *a4)
{
  v7 = swift_allocObject();
  v7[1].super.isa = a4;
  *v7[1].dataProviders = a2;
  v7[2].super.isa = a3;
  v8 = swift_allocObject();
  v8[1].super.isa = sub_94EC4;
  *v8[1].dataProviders = v7;

  sub_1E10C0();
  v7, v9, v10, v11, v12, v13, v14, v15;

  v8, v16, v17, v18, v19, v20, v21, v22;
}

uint64_t sub_94C9C(uint64_t a1, uint64_t a2, uint64_t a3, BAEventReporter *a4)
{
  result = BARoundIntegerToSignificantFigures(a2, 2);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *&v25 = a3;
    *(&v25 + 1) = a4;
    LODWORD(v26) = result;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v7 = sub_1E0CB0();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1E9970;
    (*(v8 + 104))(v10 + v9, enum case for DataEventTrait.onlyOnce(_:), v7);
    sub_4C574();

    sub_1E0C00();
    a4, v11, v12, v13, v14, v15, v16, v17;
    v10, v18, v19, v20, v21, v22, v23, v24;
    type metadata accessor for AllInSeriesViewEvent(0);
    sub_98AE0(&unk_282930, type metadata accessor for AllInSeriesViewEvent, protocol conformance descriptor for AllInSeriesViewEvent);
    v25 = 0u;
    v26 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v25);
  }

  __break(1u);
  return result;
}

uint64_t sub_94E8C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 40, 7);
}

void EventReporter.emitBrowseCollectionScreenViewEvent(using:for:with:)(uint64_t a1, uint64_t a2, objc_class *a3)
{
  v5 = sub_1E09E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  (*(v6 + 16))(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  (*(v6 + 32))(v9 + v8, &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(&v9->super.isa + ((v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v10 = swift_allocObject();
  v10[1].super.isa = sub_980C0;
  *v10[1].dataProviders = v9;
  v11 = a3;

  sub_1E10C0();
  v9, v12, v13, v14, v15, v16, v17, v18;
  v10, v19, v20, v21, v22, v23, v24, v25;
}

uint64_t sub_95154(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BrowseCollectionScreenViewEvent(0);
  sub_98AE0(&unk_282920, type metadata accessor for BrowseCollectionScreenViewEvent, protocol conformance descriptor for BrowseCollectionScreenViewEvent);
  sub_1E0BF0();
  sub_A38CC(v26, v2, v3, v4, v5, v6);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v7 = sub_1E0CB0();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E9970;
  (*(v8 + 104))(v10 + v9, enum case for DataEventTrait.onlyOnce(_:), v7);
  sub_7EB90();
  sub_1E0C00();
  v10, v11, v12, v13, v14, v15, v16, v17;
  *&v26[0], v18, v19, v20, v21, v22, v23, v24;
  memset(v26, 0, sizeof(v26));
  sub_1E0C10();
  return sub_4C1B8(v26);
}

void EventReporter.emitCollectionScreenViewEvent(using:from:for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4, objc_class *a5)
{
  v9 = sub_1E09E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  (*(v10 + 16))(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  v12 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v13 = swift_allocObject();
  v13[1].super.isa = a5;
  *v13[1].dataProviders = a3;
  v13[2].super.isa = a4;
  (*(v10 + 32))(v13 + v12, &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v14 = swift_allocObject();
  v14[1].super.isa = sub_980C4;
  *v14[1].dataProviders = v13;

  sub_1E10C0();
  v13, v15, v16, v17, v18, v19, v20, v21;
  v14, v22, v23, v24, v25, v26, v27, v28;
}

uint64_t sub_956E4(uint64_t a1, uint64_t a2, uint64_t a3, BAEventReporter *a4, uint64_t a5)
{
  result = BARoundIntegerToSignificantFigures(a2, 2);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (result <= 0x7FFFFFFF)
    {
      type metadata accessor for CollectionScreenViewEvent(0);
      sub_98AE0(&unk_282910, type metadata accessor for CollectionScreenViewEvent, protocol conformance descriptor for CollectionScreenViewEvent);

      sub_1E0BF0();
      *&v27 = a3;
      *(&v27 + 1) = a4;
      LODWORD(v28) = v8;
      sub_3D68(&qword_2828D0, &unk_1FD120);
      v9 = sub_1E0CB0();
      v10 = *(v9 - 8);
      v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1E9970;
      (*(v10 + 104))(v12 + v11, enum case for DataEventTrait.onlyOnce(_:), v9);
      sub_4C574();
      sub_1E0C00();
      a4, v13, v14, v15, v16, v17, v18, v19;
      v12, v20, v21, v22, v23, v24, v25, v26;
      v27 = 0u;
      v28 = 0u;
      sub_1E0C10();
      return sub_4C1B8(&v27);
    }
  }

  __break(1u);
  return result;
}

void EventReporter.emitContextualActionSheetExposureEvent(using:from:with:)(objc_class *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1E09E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = a1;
  if (a1 || (v10 = sub_BFB78()) != 0)
  {
    (*(v8 + 16))(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
    v11 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v12 = swift_allocObject();
    v12[1].super.isa = v3;
    *v12[1].dataProviders = a3;
    v12[2].super.isa = v10;
    (*(v8 + 32))(v12 + v11, &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v13 = swift_allocObject();
    v13[1].super.isa = sub_980E0;
    *v13[1].dataProviders = v12;
    v14 = a1;
    v15 = v3;
    swift_unknownObjectRetain();

    v16 = v10;
    sub_1E10C0();
    v12, v17, v18, v19, v20, v21, v22, v23;

    v13, v24, v25, v26, v27, v28, v29, v30;
  }
}

uint64_t sub_95CCC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_BF2E4(a3, a4, v46);
  type metadata accessor for ContextualActionSheetExposureEvent(0);
  sub_98AE0(&qword_282900, type metadata accessor for ContextualActionSheetExposureEvent, protocol conformance descriptor for ContextualActionSheetExposureEvent);
  sub_1E0BF0();
  v6 = [a3 assetID];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1E1780();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  v43[2] = 0;
  v43[3] = 0;
  *&v44 = v8;
  *(&v44 + 1) = v10;
  v45[0] = 2;
  memset(&v45[8], 0, 96);
  v35 = v46[2];
  v36 = v46[3];
  v37 = v46[4];
  v38 = v46[5];
  v33 = v46[0];
  v34 = v46[1];
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v11 = sub_1E0CB0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E9970;
  v15 = enum case for DataEventTrait.onlyOnce(_:);
  v16 = *(v12 + 104);
  v16(v14 + v13, enum case for DataEventTrait.onlyOnce(_:), v11);
  sub_4C164();
  sub_1E0C00();
  v14, v17, v18, v19, v20, v21, v22, v23;
  sub_14424(v46);
  v39 = *&v45[48];
  v40 = *&v45[64];
  v41 = *&v45[80];
  v42 = *&v45[96];
  v35 = v44;
  v36 = *v45;
  v37 = *&v45[16];
  v38 = *&v45[32];
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E9970;
  v16(v24 + v13, v15, v11);
  sub_98A8C();
  sub_1E0C00();
  v24, v25, v26, v27, v28, v29, v30, v31;
  sub_283A8(v43);
  v33 = 0u;
  v34 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v33);
}

void EventReporter.emitLibraryViewEvent(using:from:with:displayedIn:sortedBy:)(uint64_t a1, uint64_t a2, objc_class *a3, uint64_t a4, objc_class *a5)
{
  v9 = sub_1E09E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  (*(v10 + 16))(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  v12 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v13 = swift_allocObject();
  v13[1].super.isa = a3;
  *v13[1].dataProviders = a4;
  v13[2].super.isa = a5;
  (*(v10 + 32))(v13 + v12, &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v14 = swift_allocObject();
  v14[1].super.isa = sub_98144;
  *v14[1].dataProviders = v13;

  sub_1E10C0();
  v13, v15, v16, v17, v18, v19, v20, v21;
  v14, v22, v23, v24, v25, v26, v27, v28;
}

uint64_t sub_9633C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  v8 = a4;
  if (a2 >> 62)
  {
    goto LABEL_22;
  }

  v10 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v11 = _swiftEmptyArrayStorage;
  v66 = v8;
  if (v10)
  {
    *&v74[0] = _swiftEmptyArrayStorage;
    sub_A7F40(0, v10 & ~(v10 >> 63), 0, a4, a5, a6, a7, a8);
    if (v10 < 0)
    {
      __break(1u);
LABEL_24:
      v75 = v8;

      while (1)
      {
LABEL_25:
        sub_1E1D50();
        __break(1u);
LABEL_26:
        *&v74[0] = a3;
      }
    }

    v12 = 0;
    v11 = *&v74[0];
    v69 = v10 - 1;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v13 = sub_1E1AE0();
      }

      else
      {
        if (v12 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_21;
        }

        v13 = *(a2 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = *&v13[OBJC_IVAR___BALibraryItemTypeData_contentPrivateID + 8];
      v16 = *&v13[OBJC_IVAR___BALibraryItemTypeData_contentUserID + 8];
      v8 = *&v13[OBJC_IVAR___BALibraryItemTypeData_contentType];
      if (v8 >= 7)
      {
        goto LABEL_24;
      }

      v71 = *&v13[OBJC_IVAR___BALibraryItemTypeData_contentPrivateID];
      v72 = *&v13[OBJC_IVAR___BALibraryItemTypeData_contentUserID];
      v17 = *&v13[OBJC_IVAR___BALibraryItemTypeData_contentID + 8];
      v73 = *&v13[OBJC_IVAR___BALibraryItemTypeData_contentID];
      v18 = *&v13[OBJC_IVAR___BALibraryItemTypeData_isSample];

      v19 = [v18 BOOLValue];

      *&v74[0] = v11;
      isa = v11[1].super.isa;
      v25 = *v11[1].dataProviders;
      v27 = v11;
      if (isa >= v25 >> 1)
      {
        sub_A7F40((v25 > 1), isa + 1, 1, v20, v21, v22, v23, v24);
        v27 = *&v74[0];
      }

      v27[1].super.isa = (isa + 1);
      v28 = &v27[4 * isa];
      v28[2].super.isa = v71;
      *v28[2].dataProviders = v15;
      v28[3].super.isa = v72;
      *v28[3].dataProviders = v16;
      LOBYTE(v28[4].super.isa) = v8;
      v29 = *(&v75 + 3);
      *(&v28[4].super.isa + 1) = v75;
      HIDWORD(v28[4].super.isa) = v29;
      *v28[4].dataProviders = v73;
      v28[5].super.isa = v17;
      v28[5].dataProviders[0] = v19;
      v11 = v27;
      if (v69 == v12)
      {
        break;
      }

      if (__OFADD__(++v12, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        v10 = sub_1E1B20();
        goto LABEL_3;
      }
    }

    v8 = v66;
  }

  if (a3 >= 3)
  {
    goto LABEL_26;
  }

  if (v8 >= 5)
  {
    *&v74[0] = v66;
    goto LABEL_25;
  }

  type metadata accessor for LibraryViewEvent(0);
  sub_98AE0(&unk_2828D8, type metadata accessor for LibraryViewEvent, protocol conformance descriptor for LibraryViewEvent);
  sub_1E0BF0();
  *&v74[0] = v11;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v70 = sub_1E0CB0();
  v30 = *(v70 - 8);
  v68 = v11;
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1E9970;
  v33 = enum case for DataEventTrait.onlyOnce(_:);
  v34 = *(v30 + 104);
  v34(v32 + v31, enum case for DataEventTrait.onlyOnce(_:), v70);
  sub_7EB3C();
  sub_1E0C00();
  v68, v35, v36, v37, v38, v39, v40, v41;
  v32, v42, v43, v44, v45, v46, v47, v48;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1E9970;
  v34(v49 + v31, v33, v70);
  sub_989E4();
  sub_1E0C00();
  v49, v50, v51, v52, v53, v54, v55, v56;
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1E9970;
  v34(v57 + v31, v33, v70);
  sub_98A38();
  sub_1E0C00();
  v57, v58, v59, v60, v61, v62, v63, v64;
  memset(v74, 0, sizeof(v74));
  sub_1E0C10();
  return sub_4C1B8(v74);
}

void EventReporter.emitShareSheetExposureEvent(using:from:with:)(objc_class *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1E09E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  v10 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v11 = swift_allocObject();
  v11[1].super.isa = v3;
  *v11[1].dataProviders = a3;
  v11[2].super.isa = a1;
  (*(v8 + 32))(v11 + v10, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v12 = swift_allocObject();
  v12[1].super.isa = sub_9815C;
  *v12[1].dataProviders = v11;
  v13 = v3;
  swift_unknownObjectRetain();
  v14 = a1;

  sub_1E10C0();
  v11, v15, v16, v17, v18, v19, v20, v21;
  v12, v22, v23, v24, v25, v26, v27, v28;
}

uint64_t sub_96C4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_BF2E4(a3, a4, v23);
  type metadata accessor for ShareSheetExposureEvent(0);
  sub_98AE0(&qword_2828C8, type metadata accessor for ShareSheetExposureEvent, protocol conformance descriptor for ShareSheetExposureEvent);
  sub_1E0BF0();
  v19 = v23[2];
  v20 = v23[3];
  v21 = v23[4];
  v22 = v23[5];
  v17 = v23[0];
  v18 = v23[1];
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  (*(v6 + 104))(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_4C164();
  sub_1E0C00();
  v8, v9, v10, v11, v12, v13, v14, v15;
  sub_14424(v23);
  v17 = 0u;
  v18 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v17);
}

void sub_970AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, objc_class *a5, uint64_t a6)
{
  v8 = sub_1E09E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  (*(v9 + 16))(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v11, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v13 = swift_allocObject();
  v13[1].super.isa = a5;
  *v13[1].dataProviders = v12;

  sub_1E10C0();
  v12, v14, v15, v16, v17, v18, v19, v20;
  v13, v21, v22, v23, v24, v25, v26, v27;
}

uint64_t sub_97220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), const char *a6)
{
  a3(0);
  sub_98AE0(a4, a5, a6);
  sub_1E0BF0();
  memset(v10, 0, sizeof(v10));
  sub_1E0C10();
  return sub_4C1B8(v10);
}

void sub_9730C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34[0] = a7;
  v34[1] = a8;
  v9 = sub_1E09E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v34 - v14;
  sub_1E09B0();
  (*(v10 + 16))(v13, v15, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v13, v9);
  v18 = swift_allocObject();
  v18[1].super.isa = v34[0];
  *v18[1].dataProviders = v17;
  v19 = a3;

  sub_1E10C0();
  v17, v20, v21, v22, v23, v24, v25, v26;
  v18, v27, v28, v29, v30, v31, v32, v33;
  (*(v10 + 8))(v15, v9);
}

void EventReporter.emitUnifiedMessageExposureEvent(using:from:messageType:messageIdentifier:hasActionable:actionIdentifier:placementName:)(uint64_t a1, uint64_t a2, objc_class *a3, uint64_t a4, objc_class *a5, int a6, objc_class *a7, uint64_t a8, objc_class *a9)
{
  v37 = a8;
  v38 = a1;
  v36 = a6;
  v35 = a4;
  v13 = sub_1E09E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  (*(v14 + 16))(&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v13);
  v16 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v17 = swift_allocObject();
  v18 = v35;
  v17[1].super.isa = a3;
  *v17[1].dataProviders = v18;
  v17[2].super.isa = a5;
  v17[2].dataProviders[0] = v36;
  v19 = v37;
  v17[3].super.isa = a7;
  *v17[3].dataProviders = v19;
  v17[4].super.isa = a9;
  (*(v14 + 32))(v17 + v16, &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v20 = swift_allocObject();
  v20[1].super.isa = sub_981C0;
  *v20[1].dataProviders = v17;

  sub_1E10C0();
  v17, v21, v22, v23, v24, v25, v26, v27;
  v20, v28, v29, v30, v31, v32, v33, v34;
}

uint64_t sub_976BC(uint64_t a1, unint64_t a2, uint64_t a3, BAEventReporter *a4, char a5, BAEventReporter *a6, uint64_t a7, BAEventReporter *a8, uint64_t a9)
{
  if (a2 >= 7)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    type metadata accessor for UnifiedMessageExposureEvent(0);
    sub_98AE0(&qword_2828B0, type metadata accessor for UnifiedMessageExposureEvent, protocol conformance descriptor for UnifiedMessageExposureEvent);

    sub_1E0BF0();
    v36 = a6;
    v37 = a7;
    v38 = a8;
    sub_98990();
    sub_1E0C00();
    a8, v12, v13, v14, v15, v16, v17, v18;
    a6, v19, v20, v21, v22, v23, v24, v25;
    a4, v26, v27, v28, v29, v30, v31, v32;
    memset(v35, 0, sizeof(v35));
    sub_1E0C10();
    return sub_4C1B8(v35);
  }

  return result;
}

void EventReporter.emitRemoveSuggestionCardEvent(using:suggestionType:contentID:contentAcquisitionType:contentType:supplementalContentCount:seriesType:productionType:)(void *a1, char *a2, uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t a7, char *a8, char *a9)
{
  v36 = *a2;
  v14 = *a5;
  v15 = *a6;
  v16 = *a8;
  v17 = *a9;
  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = v15;
  *(v18 + 41) = v14;
  *(v18 + 48) = a1;
  *(v18 + 56) = a7;
  *(v18 + 60) = BYTE4(a7) & 1;
  *(v18 + 61) = v16;
  *(v18 + 62) = v17;
  *(v18 + 63) = v36;
  v19 = swift_allocObject();
  v19[1].super.isa = sub_9820C;
  *v19[1].dataProviders = v18;
  v20 = v9;

  v21 = a1;

  sub_1E10C0();
  v18, v22, v23, v24, v25, v26, v27, v28;

  v19, v29, v30, v31, v32, v33, v34, v35;
}

uint64_t sub_97C04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v64 = a7;
  v65 = a4;
  v17 = sub_1E1640();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4C270();
  *v20 = sub_1E19E0();
  (*(v18 + 104))(v20, enum case for DispatchPredicate.notOnQueue(_:), v17);
  v21 = sub_1E1660();
  result = (*(v18 + 8))(v20, v17);
  if (v21)
  {
    v59 = a5;
    v60 = a6;
    v62 = a8;
    v63 = a1;
    v61 = a11;
    v58 = a10;
    v57 = a9;
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v30 = v72;
    result = v72 + 32;
    v31 = -*(v72 + 16);
    v32 = -1;
    while (1)
    {
      v33 = v31 + v32;
      if (v31 + v32 == -1)
      {
        break;
      }

      if (++v32 >= v30[1].super.isa)
      {
        __break(1u);
        goto LABEL_22;
      }

      v34 = result + 40;
      sub_4C2BC(result, &v72);
      v35 = *(&v73 + 1);
      v36 = v74;
      sub_48B8(&v72, *(&v73 + 1));
      v37 = (*(v36 + 8))(a2, a3, v65, v35, v36);
      sub_4E48(&v72, v38, v39, v40, v41, v42, v43, v44);
      result = v34;
      if (v37)
      {
        v30, v23, v24, v25, v26, v27, v28, v29;
        v45 = [v37 intValue];

        goto LABEL_8;
      }
    }

    v30, v23, v24, v25, v26, v27, v28, v29;
    v45 = 0;
LABEL_8:
    v46 = a3;
    v47._countAndFlagsBits = a3;
    v48 = v65;
    v47._object = v65;
    v49 = BATracker.contentPrivateID(for:)(v47);
    if (v49.value._object)
    {
      countAndFlagsBits = v49.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v49.value._object)
    {
      object = v49.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v52._countAndFlagsBits = v46;
    v52._object = v48;
    v53 = BATracker.contentUserID(for:)(v52);
    v78 = BYTE4(v62) & 1;
    v81 = v33 == -1;
    if (v53.value._object)
    {
      v54 = v53.value._countAndFlagsBits;
    }

    else
    {
      v54 = 0;
    }

    if (v53.value._object)
    {
      v55 = v53.value._object;
    }

    else
    {
      v55 = 0xE000000000000000;
    }

    *&v72 = v46;
    *(&v72 + 1) = v48;
    LOBYTE(v73) = v59;
    *(&v73 + 1) = *v82;
    DWORD1(v73) = *&v82[3];
    *(&v73 + 1) = countAndFlagsBits;
    *&v74 = object;
    *(&v74 + 1) = v54;
    *&v75 = v55;
    BYTE8(v75) = v60;
    BYTE9(v75) = 4;
    HIDWORD(v75) = v45;
    LOBYTE(v76) = v33 == -1;
    BYTE3(v76) = v80;
    *(&v76 + 1) = v79;
    DWORD1(v76) = v62;
    BYTE8(v76) = v78;
    BYTE9(v76) = v57;
    BYTE10(v76) = v58;
    *(&v76 + 11) = 515;
    BYTE13(v76) = 2;
    v77 = 0uLL;
    v68 = v74;
    v69 = v75;
    v70 = v76;
    v71 = 0uLL;
    v66 = v72;
    v67 = v73;
    sub_4C164();

    sub_1E0C00();
    sub_14424(&v72);
    LOBYTE(v66) = v61;
    sub_9893C();
    sub_1E0C00();
    type metadata accessor for RemoveSuggestionCardEvent(0);
    sub_98AE0(&unk_2828A0, type metadata accessor for RemoveSuggestionCardEvent, protocol conformance descriptor for RemoveSuggestionCardEvent);
    v66 = 0u;
    v67 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v66);
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_981C4()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_98264()
{
  v1 = sub_1E09E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v0[4], v6, v7, v8, v9, v10, v11, v12;
  v0[6], v13, v14, v15, v16, v17, v18, v19;
  v0[8], v20, v21, v22, v23, v24, v25, v26;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_983BC()
{
  v1 = sub_1E09E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_98490()
{
  v1 = sub_1E09E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  *(v0 + 16), v6, v7, v8, v9, v10, v11, v12;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_98558()
{
  v1 = sub_1E09E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_98674(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_986B0()
{
  v1 = sub_1E09E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  *(v0 + 32), v6, v7, v8, v9, v10, v11, v12;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_98774(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(sub_1E09E0() - 8);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8);
}

uint64_t sub_98804()
{
  v1 = sub_1E09E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_988A0(uint64_t a1)
{
  v3 = *(sub_1E09E0() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_95154(a1, v4);
}

unint64_t sub_9893C()
{
  result = qword_282898;
  if (!qword_282898)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestionData, &type metadata for SuggestionData, v0, v1);
    atomic_store(result, &qword_282898);
  }

  return result;
}

unint64_t sub_98990()
{
  result = qword_2828B8;
  if (!qword_2828B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageData, &type metadata for MessageData, v0, v1);
    atomic_store(result, &qword_2828B8);
  }

  return result;
}

unint64_t sub_989E4()
{
  result = qword_2828E8;
  if (!qword_2828E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryDisplayData, &type metadata for LibraryDisplayData, v0, v1);
    atomic_store(result, &qword_2828E8);
  }

  return result;
}

unint64_t sub_98A38()
{
  result = qword_2828F0;
  if (!qword_2828F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibrarySortData, &type metadata for LibrarySortData, v0, v1);
    atomic_store(result, &qword_2828F0);
  }

  return result;
}

unint64_t sub_98A8C()
{
  result = qword_282908;
  if (!qword_282908)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LinkData, &type metadata for LinkData, v0, v1);
    atomic_store(result, &qword_282908);
  }

  return result;
}

uint64_t sub_98AE0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t GoalAdjustViewEvent.goalAdjustTypeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_282970, &unk_1F0260);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GoalAdjustViewEvent.goalAdjustTypeData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_282970, &unk_1F0260);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GoalAdjustViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GoalAdjustViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GoalAdjustViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GoalAdjustViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GoalAdjustViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_282970, &unk_1F0260);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for GoalAdjustViewEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t GoalAdjustViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GoalAdjustViewEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GoalAdjustViewEvent.Model.init(goalAdjustTypeData:eventData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for GoalAdjustViewEvent.Model(0) + 20);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_990D4()
{
  if (*v0)
  {
    return 0x746144746E657665;
  }

  else
  {
    return 0xD000000000000012;
  }
}

void sub_99118(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0x8000000000214AB0;
  if (a1 == 0xD000000000000012 && 0x8000000000214AB0 == a2 || (sub_1E1D30() & 1) != 0)
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

uint64_t sub_99208(uint64_t a1)
{
  v2 = sub_9943C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_99244(uint64_t a1)
{
  v2 = sub_9943C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GoalAdjustViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_282978, &qword_1F0270);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_48B8(a1, a1[3]);
  sub_9943C();
  sub_1E1E00();
  v10[15] = *v3;
  v10[14] = 0;
  sub_99490();
  sub_1E1CF0();
  if (!v2)
  {
    type metadata accessor for GoalAdjustViewEvent.Model(0);
    v10[13] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_9943C()
{
  result = qword_282980;
  if (!qword_282980)
  {
    result = swift_getWitnessTable(aI_3, &type metadata for GoalAdjustViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282980);
  }

  return result;
}

unint64_t sub_99490()
{
  result = qword_282988;
  if (!qword_282988)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GoalAdjustTypeData, &type metadata for GoalAdjustTypeData, v0, v1);
    atomic_store(result, &qword_282988);
  }

  return result;
}

void GoalAdjustViewEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1E1150();
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_3D68(&qword_282990, &qword_1F0278);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v23 - v6;
  v8 = type metadata accessor for GoalAdjustViewEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_9943C();
  sub_1E1DF0();
  if (!v2)
  {
    v18 = v10;
    v25 = v8;
    v19 = v28;
    v20 = v29;
    v32 = 0;
    sub_997E0();
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
    sub_99834(v22, v27);
  }

  sub_4E48(a1, v11, v12, v13, v14, v15, v16, v17);
}

unint64_t sub_997E0()
{
  result = qword_282998;
  if (!qword_282998)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GoalAdjustTypeData, &type metadata for GoalAdjustTypeData, v0, v1);
    atomic_store(result, &qword_282998);
  }

  return result;
}

uint64_t sub_99834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GoalAdjustViewEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_99938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_282970, &unk_1F0260);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_99A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_282970, &unk_1F0260);
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

uint64_t sub_99B40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_282970, &unk_1F0260);
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

void sub_99C54(uint64_t a1)
{
  sub_99CD8(319);
  if (v1 <= 0x3F)
  {
    sub_5684(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_99CD8(uint64_t a1)
{
  if (!qword_282A08)
  {
    sub_997E0();
    sub_99490();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_282A08);
    }
  }
}

uint64_t sub_99D54(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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

_BYTE *sub_99E0C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_99EAC(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_99F3C()
{
  result = qword_282AC8;
  if (!qword_282AC8)
  {
    result = swift_getWitnessTable(aA_5, &type metadata for GoalAdjustViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282AC8);
  }

  return result;
}

unint64_t sub_99F94()
{
  result = qword_282AD0;
  if (!qword_282AD0)
  {
    result = swift_getWitnessTable(byte_1F0378, &type metadata for GoalAdjustViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282AD0);
  }

  return result;
}

unint64_t sub_99FEC()
{
  result = qword_282AD8;
  if (!qword_282AD8)
  {
    result = swift_getWitnessTable(byte_1F03A0, &type metadata for GoalAdjustViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282AD8);
  }

  return result;
}

uint64_t AudioSnoozeEvent.audioSnoozeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioSnoozeEvent(0) + 20);
  v4 = sub_3D68(&qword_282B10, &unk_1F0488);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioSnoozeEvent.audioSnoozeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioSnoozeEvent(0) + 20);
  v4 = sub_3D68(&qword_282B10, &unk_1F0488);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioSnoozeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioSnoozeEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioSnoozeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioSnoozeEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioSnoozeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioSnoozeEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_282B10, &unk_1F0488);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t AudioSnoozeEvent.Model.audioSnoozeData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[15];
  *a1 = v1[12];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t AudioSnoozeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioSnoozeEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioSnoozeEvent.Model.init(contentData:audioSnoozeData:eventData:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v9;
  v10 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v10;
  v11 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v11;
  *(a4 + 96) = v6;
  *(a4 + 112) = v7;
  *(a4 + 120) = v8;
  v12 = *(type metadata accessor for AudioSnoozeEvent.Model(0) + 24);
  v13 = sub_1E1150();
  v14 = *(*(v13 - 8) + 32);

  return v14(a4 + v12, a3, v13);
}

uint64_t sub_9A684()
{
  v1 = 0x6F6E536F69647561;
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

uint64_t sub_9A6F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_9B9A8(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_9A720(uint64_t a1)
{
  v2 = sub_9AA54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9A75C(uint64_t a1)
{
  v2 = sub_9AA54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AudioSnoozeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_282B18, &qword_1F0498);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34[-v6];
  sub_48B8(a1, a1[3]);
  sub_9AA54();
  sub_1E1E00();
  v8 = *(v2 + 48);
  v9 = *(v2 + 16);
  v53 = *(v2 + 32);
  v54 = v8;
  v10 = *(v2 + 48);
  v11 = *(v2 + 80);
  v55 = *(v2 + 64);
  v56 = v11;
  v12 = *(v2 + 16);
  v52[0] = *v2;
  v52[1] = v12;
  v48 = v53;
  v49 = v10;
  v13 = *(v2 + 80);
  v50 = v55;
  v51 = v13;
  v46 = v52[0];
  v47 = v9;
  v45 = 0;
  sub_13A5C(v52, &v39);
  sub_143D0();
  v14 = v57;
  sub_1E1CF0();
  if (v14)
  {
    v41 = v48;
    v42 = v49;
    v43 = v50;
    v44 = v51;
    v39 = v46;
    v40 = v47;
    sub_14424(&v39);
  }

  else
  {
    v41 = v48;
    v42 = v49;
    v43 = v50;
    v44 = v51;
    v39 = v46;
    v40 = v47;
    sub_14424(&v39);
    v15 = *(v2 + 104);
    v16 = *(v2 + 112);
    v17 = *(v2 + 120);
    v35 = *(v2 + 96);
    v36 = v15;
    v37 = v16;
    v38 = v17;
    v34[15] = 1;
    sub_9AAA8();

    sub_1E1CF0();
    v18 = v36;
    v38, v19, v20, v21, v22, v23, v24, v25;
    v18, v26, v27, v28, v29, v30, v31, v32;
    type metadata accessor for AudioSnoozeEvent.Model(0);
    LOBYTE(v35) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_9AA54()
{
  result = qword_282B20;
  if (!qword_282B20)
  {
    result = swift_getWitnessTable(byte_1F065C, &type metadata for AudioSnoozeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282B20);
  }

  return result;
}

unint64_t sub_9AAA8()
{
  result = qword_282B28;
  if (!qword_282B28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioSnoozeData, &type metadata for AudioSnoozeData, v0, v1);
    atomic_store(result, &qword_282B28);
  }

  return result;
}

void AudioSnoozeEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_1E1150();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_3D68(&qword_282B30, &qword_1F04A0);
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v34 - v7;
  v9 = type metadata accessor for AudioSnoozeEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v39 = a1;
  sub_48B8(a1, v12);
  sub_9AA54();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v39, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = v37;
    v34 = v6;
    v50 = 0;
    sub_14CB8();
    v21 = v38;
    sub_1E1C20();
    v22 = v46;
    *(v11 + 2) = v45;
    *(v11 + 3) = v22;
    v23 = v48;
    *(v11 + 4) = v47;
    *(v11 + 5) = v23;
    v24 = v44;
    *v11 = v43;
    *(v11 + 1) = v24;
    v49 = 1;
    sub_9AF38();
    sub_1E1C20();
    v25 = v41;
    v26 = v42;
    *(v11 + 6) = v40;
    *(v11 + 14) = v25;
    *(v11 + 15) = v26;
    LOBYTE(v40) = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v8, v21);
    (*(v35 + 32))(&v11[*(v9 + 24)], v34, v4);
    sub_9AF8C(v11, v36);
    sub_4E48(v39, v27, v28, v29, v30, v31, v32, v33);
    sub_9AFF0(v11);
  }
}

unint64_t sub_9AF38()
{
  result = qword_282B38;
  if (!qword_282B38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioSnoozeData, &type metadata for AudioSnoozeData, v0, v1);
    atomic_store(result, &qword_282B38);
  }

  return result;
}

uint64_t sub_9AF8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioSnoozeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9AFF0(uint64_t a1)
{
  v2 = type metadata accessor for AudioSnoozeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9B0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_282B10, &unk_1F0488);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_9B224(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = sub_3D68(&qword_282B10, &unk_1F0488);
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

uint64_t sub_9B39C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

  v13 = sub_3D68(&qword_282B10, &unk_1F0488);
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

void sub_9B50C(uint64_t a1)
{
  sub_9B618(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_9B618(319, &unk_282BA8, sub_9AF38, sub_9AAA8, &type metadata for AudioSnoozeData);
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

void sub_9B618(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_9B6A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_9B768(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_9B80C(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_9B8A4()
{
  result = qword_282C78;
  if (!qword_282C78)
  {
    result = swift_getWitnessTable(a5_0, &type metadata for AudioSnoozeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282C78);
  }

  return result;
}

unint64_t sub_9B8FC()
{
  result = qword_282C80;
  if (!qword_282C80)
  {
    result = swift_getWitnessTable(asc_1F05A4, &type metadata for AudioSnoozeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282C80);
  }

  return result;
}

unint64_t sub_9B954()
{
  result = qword_282C88;
  if (!qword_282C88)
  {
    result = swift_getWitnessTable(aE_1, &type metadata for AudioSnoozeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282C88);
  }

  return result;
}

uint64_t sub_9B9A8(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
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
    v13 = 0xEF61746144657A6FLL;
    if (a1 == 0x6F6E536F69647561 && a2 == 0xEF61746144657A6FLL || (sub_1E1D30() & 1) != 0)
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

uint64_t ContentExposureEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.contentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.flowcaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.flowcaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.pageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27E468, &qword_1E5F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27E468, &qword_1E5F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 44);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 44);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.onDevicePersonalizationPropertyData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 48);
  v4 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.onDevicePersonalizationPropertyData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 48);
  v4 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 52);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 52);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 56);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 56);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 60);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 60);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.genreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 64);
  v4 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.genreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 64);
  v4 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.dealsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 68);
  v4 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.dealsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 68);
  v4 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 72);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 72);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 76);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 76);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ContentExposureEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27E468, &qword_1E5F70);
  (*(*(v17 - 8) + 104))(a1 + v16, v8, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v19 - 8) + 104))(a1 + v18, v8, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  (*(*(v21 - 8) + 104))(a1 + v20, v8, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v23 - 8) + 104))(a1 + v22, v8, v23);
  v24 = v4[14];
  v25 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v25 - 8) + 104))(a1 + v24, v8, v25);
  v26 = v4[15];
  v27 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v27 - 8) + 104))(a1 + v26, v8, v27);
  v28 = v4[16];
  v29 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v29 - 8) + 104))(a1 + v28, v8, v29);
  v30 = v4[17];
  v31 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  (*(*(v31 - 8) + 104))(a1 + v30, v8, v31);
  v32 = v4[18];
  v33 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v33 - 8) + 104))(a1 + v32, v2, v33);
  v34 = v4[19];
  v35 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v36 = *(*(v35 - 8) + 104);

  return v36(a1 + v34, v2, v35);
}

uint64_t ContentExposureEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[10];
  v10 = v1[9];
  v11 = v2;
  v4 = v1[12];
  v12 = v1[11];
  v3 = v12;
  v13 = v4;
  v6 = v1[8];
  v9[0] = v1[7];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_13A5C(v9, &v8);
}

uint64_t ContentExposureEvent.Model.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 272);
  v4 = *(v1 + 304);
  v12 = *(v1 + 288);
  v3 = v12;
  v13[0] = v4;
  v5 = *(v1 + 224);
  v11[0] = *(v1 + 208);
  v6 = *(v1 + 240);
  v7 = *(v1 + 256);
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v2;
  *(v13 + 14) = *(v1 + 318);
  v8 = *(v13 + 14);
  *a1 = v11[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 110) = v8;
  return sub_17AA4(v11, v10, &qword_27FFF8, &qword_1F06D0);
}

uint64_t ContentExposureEvent.Model.flowcaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v11 = *(v1 + 392);
  v3 = *(v1 + 376);
  v9 = *(v1 + 360);
  v2 = v9;
  v10 = v3;
  v4 = *(v1 + 344);
  v8[0] = *(v1 + 328);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 64) = v11;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_17AA4(v8, v7, &qword_282CC0, &qword_1F62B0);
}

uint64_t ContentExposureEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 512);
  v3 = *(v1 + 480);
  v20 = *(v1 + 496);
  v21 = v2;
  v4 = *(v1 + 512);
  v22 = *(v1 + 528);
  v5 = *(v1 + 448);
  v7 = *(v1 + 416);
  v16 = *(v1 + 432);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 448);
  v9 = *(v1 + 480);
  v18 = *(v1 + 464);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 416);
  v15[0] = *(v1 + 400);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 528);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 544);
  *(a1 + 144) = *(v1 + 544);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_275C4(v15, v14);
}

uint64_t ContentExposureEvent.Model.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 576);
  *a1 = *(v1 + 552);
  *(a1 + 8) = *(v1 + 560);
  *(a1 + 24) = v2;
}

void ContentExposureEvent.Model.mediaData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 584);
  v3 = *(v1 + 592);
  v4 = *(v1 + 600);
  v5 = *(v1 + 608);
  v6 = *(v1 + 616);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  sub_2EB50(v2, v3, v4, v5);
}

uint64_t ContentExposureEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 640);
  *a1 = *(v1 + 624);
  *(a1 + 16) = v2;
}

__n128 ContentExposureEvent.Model.onDevicePersonalizationPropertyData.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 664);
  v3 = *(v1 + 672);
  result = *(v1 + 648);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

uint64_t ContentExposureEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[85];
  v3 = v1[86];
  v4 = v1[87];
  v5 = v1[88];
  v6 = v1[89];
  v7 = v1[90];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t ContentExposureEvent.Model.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 784);
  v9 = *(v1 + 768);
  v10[0] = v2;
  v3 = *(v1 + 752);
  v8[0] = *(v1 + 736);
  v4 = v8[0];
  v8[1] = v3;
  *(v10 + 13) = *(v1 + 797);
  v5 = *(v10 + 13);
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  *(a1 + 61) = v5;
  return sub_17AA4(v8, v7, &qword_27FFF0, &unk_1E9C00);
}

void ContentExposureEvent.Model.genreData.getter(uint64_t *a1@<X8>)
{
  v2 = v1[101];
  v3 = v1[102];
  v4 = v1[103];
  v5 = v1[104];
  v6 = v1[105];
  v7 = v1[106];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_815A0(v2, v3, v4, v5, v6, v7);
}

uint64_t ContentExposureEvent.Model.dealsData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[107];
  v3 = v1[108];
  v4 = v1[109];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_2EBCC(v2, v3, v4);
}

uint64_t ContentExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent.Model(0) + 72);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent.Model(0) + 76);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.Model.init(sectionData:contentData:contentExposureData:flowcaseData:linkData:pageData:mediaData:upSellData:onDevicePersonalizationPropertyData:seriesData:suggestionData:contentStoreData:genreData:dealsData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, _OWORD *a11, char *a12, uint64_t a13, _OWORD *a14, __int128 *a15, uint64_t a16, uint64_t a17)
{
  v18 = *(a6 + 16);
  v19 = *(a6 + 24);
  v20 = *(a7 + 32);
  v21 = *(a8 + 16);
  v22 = *(a10 + 16);
  v23 = *(a10 + 24);
  v24 = *a12;
  v25 = *(a15 + 2);
  v26 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v26;
  v27 = a1[6];
  v28 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v28;
  v29 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v29;
  v30 = a2[2];
  v31 = a2[4];
  v32 = a2[5];
  *(a9 + 160) = a2[3];
  *(a9 + 176) = v31;
  v33 = *a2;
  v34 = a2[1];
  *(a9 + 96) = v27;
  *(a9 + 112) = v33;
  *(a9 + 128) = v34;
  *(a9 + 144) = v30;
  v36 = a3[2];
  v35 = a3[3];
  v37 = *a3;
  *(a9 + 224) = a3[1];
  *(a9 + 240) = v36;
  *(a9 + 192) = v32;
  *(a9 + 208) = v37;
  *(a9 + 318) = *(a3 + 110);
  v38 = a3[6];
  v39 = a3[4];
  *(a9 + 288) = a3[5];
  *(a9 + 304) = v38;
  *(a9 + 256) = v35;
  *(a9 + 272) = v39;
  v40 = *a4;
  v41 = a4[1];
  v42 = a4[2];
  v43 = a4[3];
  *(a9 + 392) = *(a4 + 8);
  *(a9 + 360) = v42;
  *(a9 + 376) = v43;
  *(a9 + 328) = v40;
  *(a9 + 344) = v41;
  v44 = *(a5 + 16);
  *(a9 + 400) = *a5;
  *(a9 + 416) = v44;
  v45 = *(a5 + 32);
  v46 = *(a5 + 48);
  v47 = *(a5 + 80);
  *(a9 + 464) = *(a5 + 64);
  *(a9 + 480) = v47;
  *(a9 + 432) = v45;
  *(a9 + 448) = v46;
  v48 = *(a5 + 96);
  v49 = *(a5 + 112);
  v50 = *(a5 + 128);
  *(a9 + 544) = *(a5 + 144);
  *(a9 + 512) = v49;
  *(a9 + 528) = v50;
  *(a9 + 496) = v48;
  *(a9 + 552) = *a6;
  *(a9 + 568) = v18;
  *(a9 + 576) = v19;
  v51 = *(a7 + 16);
  *(a9 + 584) = *a7;
  *(a9 + 600) = v51;
  *(a9 + 616) = v20;
  *(a9 + 624) = *a8;
  *(a9 + 640) = v21;
  *(a9 + 648) = *a10;
  *(a9 + 664) = v22;
  *(a9 + 672) = v23;
  v52 = a11[1];
  *(a9 + 680) = *a11;
  *(a9 + 696) = v52;
  *(a9 + 712) = a11[2];
  *(a9 + 728) = v24;
  v53 = *(a13 + 48);
  *(a9 + 768) = *(a13 + 32);
  *(a9 + 784) = v53;
  *(a9 + 797) = *(a13 + 61);
  v54 = *(a13 + 16);
  *(a9 + 736) = *a13;
  *(a9 + 752) = v54;
  v55 = a14[1];
  *(a9 + 808) = *a14;
  *(a9 + 824) = v55;
  v56 = *a15;
  *(a9 + 840) = a14[2];
  *(a9 + 856) = v56;
  *(a9 + 872) = v25;
  v57 = type metadata accessor for ContentExposureEvent.Model(0);
  v58 = *(v57 + 72);
  v59 = sub_1E1150();
  (*(*(v59 - 8) + 32))(a9 + v58, a16, v59);
  v60 = *(v57 + 76);
  v61 = sub_1E11A0();
  v62 = *(*(v61 - 8) + 32);

  return v62(a9 + v60, a17, v61);
}

uint64_t sub_9DB7C(char a1)
{
  result = 0x446E6F6974636573;
  switch(a1)
  {
    case 1:
      return 0x44746E65746E6F63;
    case 2:
      return 0xD000000000000013;
    case 3:
      return 0x65736163776F6C66;
    case 4:
      v4 = 1802398060;
      return v4 | 0x6174614400000000;
    case 5:
      v4 = 1701273968;
      return v4 | 0x6174614400000000;
    case 6:
      v3 = 0x44616964656DLL;
      goto LABEL_17;
    case 7:
      v5 = 0x6C6C65537075;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
    case 8:
      return 0xD000000000000023;
    case 9:
      v5 = 0x736569726573;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
    case 10:
      return 0x6974736567677573;
    case 11:
      return 0xD000000000000010;
    case 12:
      v3 = 0x4465726E6567;
      goto LABEL_17;
    case 13:
      v3 = 0x44736C616564;
      goto LABEL_17;
    case 14:
      v3 = 0x44746E657665;
      goto LABEL_17;
    case 15:
      v3 = 0x4464656D6974;
LABEL_17:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_9DD6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_A169C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_9DDA0(uint64_t a1)
{
  v2 = sub_9EA14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9DDDC(uint64_t a1)
{
  v2 = sub_9EA14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ContentExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_282CC8, &qword_1F06D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v100 - v6;
  sub_48B8(a1, a1[3]);
  sub_9EA14();
  sub_1E1E00();
  v8 = v2[4];
  v9 = v2[2];
  v196 = v2[3];
  v197 = v8;
  v10 = v2[4];
  v11 = v2[6];
  v198 = v2[5];
  v199 = v11;
  v12 = *v2;
  v13 = v2[2];
  v194 = v2[1];
  v195 = v13;
  v14 = *v2;
  v190 = v10;
  v191 = v198;
  v192 = v2[6];
  v193 = v14;
  v186 = v12;
  v187 = v194;
  v188 = v9;
  v189 = v196;
  v185 = 0;
  sub_274D4(&v193, &v135);
  sub_18544();
  v15 = v200;
  sub_1E1CF0();
  if (v15)
  {
    v139 = v190;
    v140 = v191;
    v141 = v192;
    v135 = v186;
    v136 = v187;
    v137 = v188;
    v138 = v189;
    sub_28354(&v135);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v200 = v5;
    v179[4] = v190;
    v179[5] = v191;
    v179[6] = v192;
    v179[0] = v186;
    v179[1] = v187;
    v179[2] = v188;
    v179[3] = v189;
    sub_28354(v179);
    v17 = v2[10];
    v18 = v2[8];
    v181 = v2[9];
    v182 = v17;
    v19 = v2[10];
    v20 = v2[12];
    v183 = v2[11];
    v184 = v20;
    v21 = v2[8];
    v180[0] = v2[7];
    v180[1] = v21;
    v175 = v181;
    v176 = v19;
    v22 = v2[12];
    v177 = v183;
    v178 = v22;
    v173 = v180[0];
    v174 = v18;
    v172 = 1;
    sub_13A5C(v180, &v135);
    sub_143D0();
    sub_1E1CF0();
    v165[2] = v175;
    v165[3] = v176;
    v165[4] = v177;
    v165[5] = v178;
    v165[0] = v173;
    v165[1] = v174;
    sub_14424(v165);
    v23 = v2[18];
    v24 = v2[16];
    v169 = v2[17];
    v170 = v23;
    v25 = v2[18];
    *v171 = v2[19];
    v26 = v2[14];
    v166[0] = v2[13];
    v166[1] = v26;
    v27 = v2[16];
    v29 = v2[13];
    v28 = v2[14];
    v167 = v2[15];
    v168 = v27;
    v162 = v169;
    v163 = v25;
    v164[0] = v2[19];
    v158 = v29;
    v159 = v28;
    *&v171[14] = *(v2 + 318);
    *(v164 + 14) = *(v2 + 318);
    v160 = v167;
    v161 = v24;
    v157 = 2;
    sub_17AA4(v166, &v135, &qword_27FFF8, &qword_1F06D0);
    sub_4F070();
    sub_1E1C80();
    v151[4] = v162;
    v151[5] = v163;
    v152[0] = v164[0];
    *(v152 + 14) = *(v164 + 14);
    v151[0] = v158;
    v151[1] = v159;
    v151[2] = v160;
    v151[3] = v161;
    sub_18E48(v151, &qword_27FFF8, &qword_1F06D0);
    v30 = *(v2 + 344);
    v31 = *(v2 + 376);
    v154 = *(v2 + 360);
    v155 = v31;
    v32 = *(v2 + 344);
    v153[0] = *(v2 + 328);
    v153[1] = v32;
    v33 = *(v2 + 376);
    v148 = v154;
    v149 = v33;
    v156 = *(v2 + 49);
    v150 = *(v2 + 49);
    v146 = v153[0];
    v147 = v30;
    v145 = 3;
    sub_17AA4(v153, &v135, &qword_282CC0, &qword_1F62B0);
    sub_1C860();
    sub_1E1C80();
    v133[2] = v148;
    v133[3] = v149;
    v134 = v150;
    v133[0] = v146;
    v133[1] = v147;
    sub_18E48(v133, &qword_282CC0, &qword_1F62B0);
    v34 = v2[32];
    v35 = v2[30];
    v141 = v2[31];
    v142 = v34;
    v36 = v2[32];
    v143 = v2[33];
    v37 = v2[28];
    v38 = v2[26];
    v137 = v2[27];
    v138 = v37;
    v39 = v2[28];
    v40 = v2[30];
    v139 = v2[29];
    v140 = v40;
    v41 = v2[26];
    v135 = v2[25];
    v136 = v41;
    v129 = v141;
    v130 = v36;
    v131 = v2[33];
    v125 = v137;
    v126 = v39;
    v127 = v139;
    v128 = v35;
    v144 = *(v2 + 68);
    v132 = *(v2 + 68);
    v123 = v135;
    v124 = v38;
    v122 = 4;
    sub_275C4(&v135, v120);
    sub_18630();
    sub_1E1CF0();
    v120[6] = v129;
    v120[7] = v130;
    v120[8] = v131;
    v121 = v132;
    v120[2] = v125;
    v120[3] = v126;
    v120[4] = v127;
    v120[5] = v128;
    v120[0] = v123;
    v120[1] = v124;
    sub_283A8(v120);
    v42 = *(v2 + 72);
    *&v115[0] = *(v2 + 69);
    *(v115 + 8) = v2[35];
    *(&v115[1] + 1) = v42;
    LOBYTE(v111) = 5;
    sub_18598();

    sub_1E1CF0();
    v43 = *(&v115[0] + 1);
    *(&v115[1] + 1), v44, v45, v46, v47, v48, v49, v50;
    v43, v51, v52, v53, v54, v55, v56, v57;
    v58 = *(v2 + 74);
    v59 = *(v2 + 75);
    v60 = *(v2 + 76);
    v61 = *(v2 + 154);
    *&v115[0] = *(v2 + 73);
    *(&v115[0] + 1) = v58;
    *&v115[1] = v59;
    *(&v115[1] + 1) = v60;
    LODWORD(v116) = v61;
    LOBYTE(v111) = 6;
    sub_2EB50(*&v115[0], v58, v59, v60);
    sub_16778();
    sub_1E1C80();
    sub_2F7F0(*&v115[0], *(&v115[0] + 1), *&v115[1], *(&v115[1] + 1), v116, v62, v63, v64);
    v65 = *(v2 + 80);
    v115[0] = v2[39];
    *&v115[1] = v65;
    LOBYTE(v111) = 7;
    sub_28450();

    sub_1E1C80();
    *&v115[1], v66, v67, v68, v69, v70, v71, v72;
    v73 = *(v2 + 83);
    v74 = *(v2 + 672);
    v115[0] = *(v2 + 648);
    *&v115[1] = v73;
    BYTE8(v115[1]) = v74;
    LOBYTE(v111) = 8;
    sub_284A4();
    sub_1E1C80();
    v75 = *(v2 + 86);
    v76 = *(v2 + 87);
    v77 = *(v2 + 88);
    v78 = *(v2 + 89);
    v79 = *(v2 + 90);
    *&v115[0] = *(v2 + 85);
    *(&v115[0] + 1) = v75;
    *&v115[1] = v76;
    *(&v115[1] + 1) = v77;
    *&v116 = v78;
    *(&v116 + 1) = v79;
    LOBYTE(v111) = 9;
    sub_13BDC(*&v115[0], v75, v76, v77, v78, v79);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(*&v115[0], *(&v115[0] + 1), *&v115[1], *(&v115[1] + 1), v116, *(&v116 + 1), v80, v81);
    v119 = *(v2 + 728);
    v118 = 10;
    sub_284F8();
    sub_1E1C80();
    v82 = v2[47];
    v83 = v2[49];
    v116 = v2[48];
    *v117 = v83;
    v84 = v2[47];
    v115[0] = v2[46];
    v115[1] = v84;
    v85 = v2[49];
    v113 = v116;
    v114[0] = v85;
    *&v117[13] = *(v2 + 797);
    *(v114 + 13) = *(v2 + 797);
    v111 = v115[0];
    v112 = v82;
    v110 = 11;
    sub_17AA4(v115, v108, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    sub_1E1C80();
    v108[2] = v113;
    *v109 = v114[0];
    *&v109[13] = *(v114 + 13);
    v108[0] = v111;
    v108[1] = v112;
    sub_18E48(v108, &qword_27FFF0, &unk_1E9C00);
    v86 = *(v2 + 102);
    v87 = *(v2 + 103);
    v88 = *(v2 + 104);
    v89 = *(v2 + 105);
    v90 = *(v2 + 106);
    v102 = *(v2 + 101);
    v103 = v86;
    v104 = v87;
    v105 = v88;
    v106 = v89;
    v107 = v90;
    v101 = 12;
    sub_815A0(v102, v86, v87, v88, v89, v90);
    sub_81F40();
    sub_1E1C80();
    sub_4F16C(v102, v103, v104, v105, v106, v107, v91, v92);
    v93 = *(v2 + 108);
    v94 = *(v2 + 109);
    v102 = *(v2 + 107);
    v103 = v93;
    v104 = v94;
    v101 = 13;
    sub_2EBCC(v102, v93, v94);
    sub_2F834();
    sub_1E1C80();
    sub_2F888(v102, v103, v104, v95, v96, v97, v98, v99);
    type metadata accessor for ContentExposureEvent.Model(0);
    LOBYTE(v102) = 14;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    LOBYTE(v102) = 15;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
    return (*(v200 + 8))(v7, 0);
  }
}

unint64_t sub_9EA14()
{
  result = qword_282CD0;
  if (!qword_282CD0)
  {
    result = swift_getWitnessTable(a9_2, &type metadata for ContentExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282CD0);
  }

  return result;
}

void ContentExposureEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v66 = sub_1E11A0();
  v63 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1150();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_282CD8, &qword_1F06E0);
  v69 = *(v7 - 8);
  v70 = v7;
  __chkstk_darwin(v7);
  v9 = v58 - v8;
  v10 = type metadata accessor for ContentExposureEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_9EA14();
  v71 = v9;
  v13 = v113;
  sub_1E1DF0();
  if (v13)
  {
    sub_4E48(a1, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v60 = v6;
    v113 = a1;
    v61 = v10;
    v62 = v12;
    v103 = 0;
    sub_18EFC();
    sub_1E1C20();
    v21 = v107;
    v22 = v109;
    v23 = v62;
    *(v62 + 4) = v108;
    *(v23 + 5) = v22;
    *(v23 + 6) = v110;
    v24 = v105;
    *v23 = v104;
    *(v23 + 1) = v24;
    *(v23 + 2) = v106;
    *(v23 + 3) = v21;
    v96 = 1;
    sub_14CB8();
    sub_1E1C20();
    v25 = v100;
    *(v23 + 9) = v99;
    *(v23 + 10) = v25;
    v26 = v102;
    *(v23 + 11) = v101;
    *(v23 + 12) = v26;
    v27 = v98;
    *(v23 + 7) = v97;
    *(v23 + 8) = v27;
    v88 = 2;
    sub_4FBB8();
    v59 = 0;
    sub_1E1BB0();
    v28 = v94;
    *(v23 + 17) = v93;
    *(v23 + 18) = v28;
    *(v23 + 19) = *v95;
    v29 = v90;
    *(v23 + 13) = v89;
    *(v23 + 14) = v29;
    v30 = v92;
    *(v23 + 15) = v91;
    *(v23 + 16) = v30;
    *(v23 + 318) = *&v95[14];
    v82 = 3;
    sub_1C808();
    sub_1E1BB0();
    *(v23 + 49) = v87;
    v31 = v86;
    *(v23 + 360) = v85;
    *(v23 + 376) = v31;
    v32 = v84;
    *(v23 + 328) = v83;
    *(v23 + 344) = v32;
    v81 = 4;
    sub_18FA4();
    sub_1E1C20();
    v33 = v111[7];
    *(v23 + 31) = v111[6];
    *(v23 + 32) = v33;
    *(v23 + 33) = v111[8];
    *(v23 + 68) = v112;
    v34 = v111[3];
    *(v23 + 27) = v111[2];
    *(v23 + 28) = v34;
    v35 = v111[5];
    *(v23 + 29) = v111[4];
    *(v23 + 30) = v35;
    v36 = v111[1];
    *(v23 + 25) = v111[0];
    *(v23 + 26) = v36;
    LOBYTE(v73) = 5;
    sub_18F50();
    sub_1E1C20();
    v58[1] = v23 + 328;
    v37 = v78;
    *(v23 + 552) = v77;
    *(v23 + 568) = v37;
    LOBYTE(v73) = 6;
    sub_16720();
    sub_1E1BB0();
    v38 = v79;
    v39 = v78;
    *(v23 + 584) = v77;
    *(v23 + 600) = v39;
    *(v23 + 154) = v38;
    LOBYTE(v73) = 7;
    sub_28EF4();
    sub_1E1BB0();
    v40 = v78;
    *(v23 + 39) = v77;
    *(v23 + 80) = v40;
    LOBYTE(v73) = 8;
    sub_28F48();
    sub_1E1BB0();
    v41 = v78;
    v42 = BYTE8(v78);
    *(v23 + 648) = v77;
    *(v23 + 83) = v41;
    v23[672] = v42;
    LOBYTE(v73) = 9;
    sub_DAD8();
    sub_1E1BB0();
    v43 = v78;
    *(v23 + 680) = v77;
    *(v23 + 696) = v43;
    *(v23 + 712) = v79;
    LOBYTE(v73) = 10;
    sub_28F9C();
    sub_1E1BB0();
    v62[728] = v77;
    v76 = 11;
    sub_4FB64();
    sub_1E1BB0();
    v44 = v62;
    v45 = v62 + 736;
    v46 = *v80;
    *(v62 + 48) = v79;
    v44[49] = v46;
    v47 = v78;
    v44[46] = v77;
    v44[47] = v47;
    *(v45 + 61) = *&v80[13];
    v72 = 12;
    sub_827D8();
    sub_1E1BB0();
    LODWORD(v59) = 1;
    v48 = v74;
    *(v23 + 808) = v73;
    *(v23 + 824) = v48;
    *(v23 + 840) = v75;
    v72 = 13;
    sub_30258();
    sub_1E1BB0();
    v49 = v74;
    *(v23 + 856) = v73;
    *(v62 + 109) = v49;
    LOBYTE(v73) = 14;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v67 + 32))(&v62[*(v61 + 72)], v60, v68);
    LOBYTE(v73) = 15;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1C20();
    (*(v69 + 8))(v71, v70);
    v50 = v62;
    (*(v63 + 32))(&v62[*(v61 + 76)], v65, v66);
    sub_9F978(v50, v64);
    sub_4E48(v113, v51, v52, v53, v54, v55, v56, v57);
    sub_9F9DC(v50);
  }
}

uint64_t sub_9F978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9F9DC(uint64_t a1)
{
  v2 = type metadata accessor for ContentExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9FAD8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27E468, &qword_1E5F70);
  (*(*(v18 - 8) + 104))(a2 + v17, v9, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v20 - 8) + 104))(a2 + v19, v9, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  (*(*(v22 - 8) + 104))(a2 + v21, v9, v22);
  v23 = a1[13];
  v24 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v24 - 8) + 104))(a2 + v23, v9, v24);
  v25 = a1[14];
  v26 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v26 - 8) + 104))(a2 + v25, v9, v26);
  v27 = a1[15];
  v28 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v28 - 8) + 104))(a2 + v27, v9, v28);
  v29 = a1[16];
  v30 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v30 - 8) + 104))(a2 + v29, v9, v30);
  v31 = a1[17];
  v32 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  (*(*(v32 - 8) + 104))(a2 + v31, v9, v32);
  v33 = a1[18];
  v34 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v34 - 8) + 104))(a2 + v33, v4, v34);
  v35 = a1[19];
  v36 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v37 = *(*(v36 - 8) + 104);

  return v37(a2 + v35, v4, v36);
}

uint64_t sub_A0000(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_32:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_31:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_32;
  }

  v14 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_31;
  }

  v15 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_31;
  }

  v16 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_31;
  }

  v17 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_31;
  }

  v18 = sub_3D68(&qword_27E468, &qword_1E5F70);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_31;
  }

  v19 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_31;
  }

  v20 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_31;
  }

  v21 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_31;
  }

  v22 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_31;
  }

  v23 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_31;
  }

  v24 = sub_3D68(&qword_281D70, &unk_1F06C0);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_31;
  }

  v25 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[17];
    goto LABEL_31;
  }

  v26 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v26 - 8) + 84) == a2)
  {
    v8 = v26;
    v12 = *(v26 - 8);
    v13 = a3[18];
    goto LABEL_31;
  }

  v28 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v29 = *(*(v28 - 8) + 48);
  v30 = a1 + a3[19];

  return v29(v30, a2, v28);
}

uint64_t sub_A05BC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_32:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_31:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_32;
  }

  v16 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_31;
  }

  v17 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_31;
  }

  v18 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_31;
  }

  v19 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_31;
  }

  v20 = sub_3D68(&qword_27E468, &qword_1E5F70);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_31;
  }

  v21 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_31;
  }

  v22 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_31;
  }

  v23 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_31;
  }

  v24 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_31;
  }

  v25 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_31;
  }

  v26 = sub_3D68(&qword_281D70, &unk_1F06C0);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_31;
  }

  v27 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[17];
    goto LABEL_31;
  }

  v28 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v28 - 8) + 84) == a3)
  {
    v10 = v28;
    v14 = *(v28 - 8);
    v15 = a4[18];
    goto LABEL_31;
  }

  v30 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v31 = *(*(v30 - 8) + 56);
  v32 = a1 + a4[19];

  return v31(v32, a2, a2, v30);
}

void sub_A0B70(uint64_t a1)
{
  sub_A1054(319, &qword_27E578, sub_18EFC, sub_18544, &type metadata for SectionData);
  if (v1 <= 0x3F)
  {
    sub_A1054(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
    if (v2 <= 0x3F)
    {
      sub_A1054(319, &qword_2800E0, sub_4FBB8, sub_4F070, &type metadata for ContentExposureData);
      if (v3 <= 0x3F)
      {
        sub_A1054(319, &qword_27EF68, sub_1C808, sub_1C860, &type metadata for FlowcaseData);
        if (v4 <= 0x3F)
        {
          sub_A1054(319, &unk_27E588, sub_18FA4, sub_18630, &type metadata for LinkData);
          if (v5 <= 0x3F)
          {
            sub_A1054(319, &qword_27E580, sub_18F50, sub_18598, &type metadata for PageData);
            if (v6 <= 0x3F)
            {
              sub_A1054(319, &qword_27E568, sub_16720, sub_16778, &type metadata for MediaData);
              if (v7 <= 0x3F)
              {
                sub_A1054(319, &qword_27EAE8, sub_28EF4, sub_28450, &type metadata for UpSellData);
                if (v8 <= 0x3F)
                {
                  sub_A1054(319, &qword_27EAF0, sub_28F48, sub_284A4, &type metadata for OnDevicePersonalizationPropertyData);
                  if (v9 <= 0x3F)
                  {
                    sub_A1054(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
                    if (v10 <= 0x3F)
                    {
                      sub_A1054(319, &unk_27EAF8, sub_28F9C, sub_284F8, &type metadata for SuggestionData);
                      if (v11 <= 0x3F)
                      {
                        sub_A1054(319, &qword_2800D8, sub_4FB64, sub_4F01C, &type metadata for ContentStoreData);
                        if (v12 <= 0x3F)
                        {
                          sub_A1054(319, &unk_281E50, sub_827D8, sub_81F40, &type metadata for GenreData);
                          if (v13 <= 0x3F)
                          {
                            sub_A1054(319, &unk_27EF70, sub_30258, sub_2F834, &type metadata for DealsData);
                            if (v14 <= 0x3F)
                            {
                              sub_5684(319);
                              if (v15 <= 0x3F)
                              {
                                sub_5750(319);
                                if (v16 <= 0x3F)
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
      }
    }
  }
}

void sub_A1054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_A10E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 72);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 76);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_A121C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 72);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 76);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_A1340(uint64_t a1)
{
  sub_19FE0(319, &qword_2801C8, &type metadata for ContentExposureData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &unk_282E10, &type metadata for FlowcaseData);
    if (v2 <= 0x3F)
    {
      sub_19FE0(319, &qword_27F028, &type metadata for MediaData);
      if (v3 <= 0x3F)
      {
        sub_19FE0(319, &qword_27EBC8, &type metadata for UpSellData);
        if (v4 <= 0x3F)
        {
          sub_19FE0(319, &qword_27EBD0, &type metadata for OnDevicePersonalizationPropertyData);
          if (v5 <= 0x3F)
          {
            sub_19FE0(319, &qword_27E398, &type metadata for SeriesData);
            if (v6 <= 0x3F)
            {
              sub_19FE0(319, &qword_27EBD8, &type metadata for SuggestionData);
              if (v7 <= 0x3F)
              {
                sub_19FE0(319, &qword_2801C0, &type metadata for ContentStoreData);
                if (v8 <= 0x3F)
                {
                  sub_19FE0(319, &unk_281F00, &type metadata for GenreData);
                  if (v9 <= 0x3F)
                  {
                    sub_19FE0(319, &unk_27F030, &type metadata for DealsData);
                    if (v10 <= 0x3F)
                    {
                      sub_1E1150();
                      if (v11 <= 0x3F)
                      {
                        sub_1E11A0();
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

unint64_t sub_A1598()
{
  result = qword_282E78;
  if (!qword_282E78)
  {
    result = swift_getWitnessTable(aQ_2, &type metadata for ContentExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282E78);
  }

  return result;
}

unint64_t sub_A15F0()
{
  result = qword_282E80;
  if (!qword_282E80)
  {
    result = swift_getWitnessTable(byte_1F0888, &type metadata for ContentExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282E80);
  }

  return result;
}

unint64_t sub_A1648()
{
  result = qword_282E88;
  if (!qword_282E88)
  {
    result = swift_getWitnessTable(byte_1F08B0, &type metadata for ContentExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282E88);
  }

  return result;
}

uint64_t sub_A169C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461;
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

  else
  {
    v12 = 0x8000000000213F50;
    if (a1 == 0xD000000000000013 && 0x8000000000213F50 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = 0xEC00000061746144;
      if (a1 == 0x65736163776F6C66 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 4;
      }

      else if (a1 == 0x6174614465676170 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 5;
      }

      else if (a1 == 0x746144616964656DLL && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 6;
      }

      else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 7;
      }

      else
      {
        v14 = 0x8000000000213BA0;
        if (a1 == 0xD000000000000023 && 0x8000000000213BA0 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 8;
        }

        else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 9;
        }

        else
        {
          v15 = 0xEE00617461446E6FLL;
          if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 10;
          }

          else
          {
            v16 = 0x8000000000213F30;
            if (a1 == 0xD000000000000010 && 0x8000000000213F30 == a2 || (sub_1E1D30() & 1) != 0)
            {
              a2, v16, a3, a4, a5, a6, a7, a8;
              return 11;
            }

            else if (a1 == 0x74614465726E6567 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
            {
              a2, v16, a3, a4, a5, a6, a7, a8;
              return 12;
            }

            else if (a1 == 0x746144736C616564 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
            {
              a2, v16, a3, a4, a5, a6, a7, a8;
              return 13;
            }

            else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
            {
              a2, v16, a3, a4, a5, a6, a7, a8;
              return 14;
            }

            else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
            {
              0xE900000000000061, v16, a3, a4, a5, a6, a7, a8;
              return 15;
            }

            else
            {
              v17 = sub_1E1D30();
              a2, v18, v19, v20, v21, v22, v23, v24;
              if (v17)
              {
                return 15;
              }

              else
              {
                return 16;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t CellularToggleEvent.cellularData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_282EC0, &unk_1F0990);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CellularToggleEvent.cellularData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_282EC0, &unk_1F0990);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CellularToggleEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CellularToggleEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CellularToggleEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CellularToggleEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CellularToggleEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_282EC0, &unk_1F0990);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for CellularToggleEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t CellularToggleEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CellularToggleEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CellularToggleEvent.Model.init(cellularData:eventData:)@<X0>(_WORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for CellularToggleEvent.Model(0) + 20);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_A2104()
{
  if (*v0)
  {
    return 0x746144746E657665;
  }

  else
  {
    return 0x72616C756C6C6563;
  }
}

void sub_A214C(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0xEC00000061746144;
  v13 = a1 == 0x72616C756C6C6563 && a2 == 0xEC00000061746144;
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

uint64_t sub_A2234(uint64_t a1)
{
  v2 = sub_A2468();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_A2270(uint64_t a1)
{
  v2 = sub_A2468();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CellularToggleEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_282EC8, &qword_1F09A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_48B8(a1, a1[3]);
  sub_A2468();
  sub_1E1E00();
  v11 = *v3;
  v10[13] = 0;
  sub_A24BC();
  sub_1E1CF0();
  if (!v2)
  {
    type metadata accessor for CellularToggleEvent.Model(0);
    v10[12] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_A2468()
{
  result = qword_282ED0;
  if (!qword_282ED0)
  {
    result = swift_getWitnessTable(byte_1F0B60, &type metadata for CellularToggleEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_282ED0);
  }

  return result;
}

unint64_t sub_A24BC()
{
  result = qword_282ED8;
  if (!qword_282ED8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CellularData, &type metadata for CellularData, v0, v1);
    atomic_store(result, &qword_282ED8);
  }

  return result;
}

void CellularToggleEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1E1150();
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_3D68(&qword_282EE0, &qword_1F09A8);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v23 - v6;
  v8 = type metadata accessor for CellularToggleEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_A2468();
  sub_1E1DF0();
  if (!v2)
  {
    v18 = v10;
    v25 = v8;
    v19 = v28;
    v20 = v29;
    v32 = 0;
    sub_A280C();
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
    sub_A2860(v22, v27);
  }

  sub_4E48(a1, v11, v12, v13, v14, v15, v16, v17);
}

unint64_t sub_A280C()
{
  result = qword_282EE8;
  if (!qword_282EE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CellularData, &type metadata for CellularData, v0, v1);
    atomic_store(result, &qword_282EE8);
  }

  return result;
}

uint64_t sub_A2860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CellularToggleEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A2964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_282EC0, &unk_1F0990);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_A2A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_282EC0, &unk_1F0990);
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

uint64_t sub_A2B6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_282EC0, &unk_1F0990);
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

void sub_A2C80(uint64_t a1)
{
  sub_A2D04(319);
  if (v1 <= 0x3F)
  {
    sub_5684(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_A2D04(uint64_t a1)
{
  if (!qword_282F58)
  {
    sub_A280C();
    sub_A24BC();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_282F58);
    }
  }
}

uint64_t sub_A2D80(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 240)
  {
    v4 = *a1;
    if (v4 >= 0x10)
    {
      return v4 - 15;
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

_BYTE *sub_A2E38(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 240)
  {
    *result = a2 + 15;
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

uint64_t sub_A2ED8(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_A2F68()
{
  result = qword_283018;
  if (!qword_283018)
  {
    result = swift_getWitnessTable(a1_2, &type metadata for CellularToggleEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_283018);
  }

  return result;
}

unint64_t sub_A2FC0()
{
  result = qword_283020;
  if (!qword_283020)
  {
    result = swift_getWitnessTable(aY_5, &type metadata for CellularToggleEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_283020);
  }

  return result;
}

unint64_t sub_A3018()
{
  result = qword_283028;
  if (!qword_283028)
  {
    result = swift_getWitnessTable(aA_6, &type metadata for CellularToggleEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_283028);
  }

  return result;
}

unint64_t BridgedDisplayType.swiftType.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 3)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_A30F8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_A83D4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t *sub_A3138@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void sub_A3270(void *a1@<X8>, uint64_t a2@<X3>, int64_t a3@<X4>, void *a4@<X5>, uint64_t a5@<X6>, void *a6@<X7>)
{
  v8 = *(v6 + OBJC_IVAR___BABooksTreatmentData_remoteConfigNamespaceData);
  if (v8 >> 62)
  {
    v44 = *(v6 + OBJC_IVAR___BABooksTreatmentData_remoteConfigNamespaceData);
    v45 = sub_1E1B20();
    v8 = v44;
    v9 = v45;
  }

  else
  {
    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v9)
  {
LABEL_16:
    *a1 = _swiftEmptyArrayStorage;
    return;
  }

  v10 = v8;
  sub_A7F60(0, v9 & ~(v9 >> 63), 0, a2, a3, a4, a5, a6);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v46 = a1;
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      v52 = v9;
      do
      {
        v12 = sub_1E1AE0();
        v13 = *(v12 + OBJC_IVAR___BARemoteConfigNamespaceData_name + 8);
        v49 = *(v12 + OBJC_IVAR___BARemoteConfigNamespaceData_name);
        v14 = *(v12 + OBJC_IVAR___BARemoteConfigNamespaceData_treatmentIDs);
        v15 = *(v12 + OBJC_IVAR___BARemoteConfigNamespaceData_segmentIDs);
        v16 = *(v12 + OBJC_IVAR___BARemoteConfigNamespaceData_segmentSetIDs);
        v17 = *(v12 + OBJC_IVAR___BARemoteConfigNamespaceData_previousTreatmentIDs);
        v18 = *(v12 + OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentIDs);
        v19 = *(v12 + OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentSetIDs);

        v47 = v14;

        swift_unknownObjectRelease();
        v26 = _swiftEmptyArrayStorage[2];
        v25 = _swiftEmptyArrayStorage[3];
        if (v26 >= v25 >> 1)
        {
          sub_A7F60((v25 > 1), v26 + 1, &dword_0 + 1, v20, v21, v22, v23, v24);
        }

        ++v11;
        _swiftEmptyArrayStorage[2] = v26 + 1;
        v27 = &_swiftEmptyArrayStorage[8 * v26];
        v27[4] = v49;
        v27[5] = v13;
        v27[6] = v47;
        v27[7] = v15;
        v27[8] = v16;
        v27[9] = v17;
        v27[10] = v18;
        v27[11] = v19;
      }

      while (v52 != v11);
    }

    else
    {
      v28 = (v10 + 32);
      do
      {
        v53 = v9;
        v29 = (*v28 + OBJC_IVAR___BARemoteConfigNamespaceData_name);
        v48 = *v29;
        v30 = *(*v28 + OBJC_IVAR___BARemoteConfigNamespaceData_treatmentIDs);
        v31 = *(*v28 + OBJC_IVAR___BARemoteConfigNamespaceData_segmentIDs);
        v32 = *(*v28 + OBJC_IVAR___BARemoteConfigNamespaceData_segmentSetIDs);
        v33 = *(*v28 + OBJC_IVAR___BARemoteConfigNamespaceData_previousTreatmentIDs);
        v34 = *(*v28 + OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentIDs);
        v35 = *(*v28 + OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentSetIDs);
        v36 = _swiftEmptyArrayStorage[2];
        v37 = _swiftEmptyArrayStorage[3];
        v50 = v29[1];
        v51 = v36 + 1;

        if (v36 >= v37 >> 1)
        {
          sub_A7F60((v37 > 1), v51, &dword_0 + 1, v38, v39, v40, v41, v42);
        }

        _swiftEmptyArrayStorage[2] = v51;
        v43 = &_swiftEmptyArrayStorage[8 * v36];
        v43[4] = v48;
        v43[5] = v50;
        v43[6] = v30;
        v43[7] = v31;
        v43[8] = v32;
        v43[9] = v33;
        ++v28;
        v43[10] = v34;
        v43[11] = v35;
        v9 = v53 - 1;
      }

      while (v53 != 1);
    }

    a1 = v46;
    goto LABEL_16;
  }

  __break(1u);
}