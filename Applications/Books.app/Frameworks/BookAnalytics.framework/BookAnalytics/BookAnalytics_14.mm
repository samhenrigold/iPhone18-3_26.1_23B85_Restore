unint64_t sub_14E8C0()
{
  result = qword_289A00;
  if (!qword_289A00)
  {
    result = swift_getWitnessTable(asc_201B50, &type metadata for AltContentTypeExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_289A00);
  }

  return result;
}

__n128 sub_14E984(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_14E9A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_14E9E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_14EA5C()
{
  result = qword_289A10;
  if (!qword_289A10)
  {
    result = swift_getWitnessTable(aA_22, &type metadata for AltContentTypeExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_289A10);
  }

  return result;
}

unint64_t sub_14EAB4()
{
  result = qword_289A18;
  if (!qword_289A18)
  {
    result = swift_getWitnessTable(byte_201A98, &type metadata for AltContentTypeExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_289A18);
  }

  return result;
}

unint64_t sub_14EB0C()
{
  result = qword_289A20;
  if (!qword_289A20)
  {
    result = swift_getWitnessTable(aQ_8, &type metadata for AltContentTypeExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_289A20);
  }

  return result;
}

uint64_t sub_14EB60(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEE0065707954746ELL;
  if (a1 == 0x65746E6F43746C61 && a2 == 0xEE0065707954746ELL || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEC0000004449746ELL;
    if (a1 == 0x65746E6F43746C61 && a2 == 0xEC0000004449746ELL || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0xEC00000065707954;
      if (a1 == 0x657275736F707865 && a2 == 0xEC00000065707954 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v14 = 0x8000000000216FB0;
        if (a1 == 0xD000000000000010 && 0x8000000000216FB0 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else
        {
          v15 = 0xED0000746E696F50;
          if (a1 == 0x6563697250746C61 && a2 == 0xED0000746E696F50 || (sub_1E1D30() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 4;
          }

          else
          {
            v16 = 0x8000000000215B00;
            if (a1 == 0xD000000000000010 && 0x8000000000215B00 == a2 || (sub_1E1D30() & 1) != 0)
            {
              a2, v16, a3, a4, a5, a6, a7, a8;
              return 5;
            }

            else if (a1 == 0x69746375646F7270 && a2 == 0xEE00657079546E6FLL)
            {
              0xEE00657079546E6FLL, v16, a3, a4, a5, a6, a7, a8;
              return 6;
            }

            else
            {
              v17 = sub_1E1D30();
              a2, v18, v19, v20, v21, v22, v23, v24;
              if (v17)
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
}

uint64_t WelcomeScreenViewEvent.welcomeScreenData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27DF30, &qword_1E4F60);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WelcomeScreenViewEvent.welcomeScreenData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27DF30, &qword_1E4F60);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WelcomeScreenViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeScreenViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WelcomeScreenViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WelcomeScreenViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WelcomeScreenViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeScreenViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WelcomeScreenViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WelcomeScreenViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WelcomeScreenViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27DF30, &qword_1E4F60);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WelcomeScreenViewEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t WelcomeScreenViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeScreenViewEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WelcomeScreenViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeScreenViewEvent.Model(0) + 24);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WelcomeScreenViewEvent.Model.init(welcomeScreenData:eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 4);
  *a4 = *a1;
  *(a4 + 4) = v7;
  v8 = type metadata accessor for WelcomeScreenViewEvent.Model(0);
  v9 = *(v8 + 20);
  v10 = sub_1E1150();
  (*(*(v10 - 8) + 32))(a4 + v9, a2, v10);
  v11 = *(v8 + 24);
  v12 = sub_1E11A0();
  v13 = *(*(v12 - 8) + 32);

  return v13(a4 + v11, a3, v12);
}

uint64_t sub_14F568()
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
    return 0xD000000000000011;
  }
}

uint64_t sub_14F5C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1507FC(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_14F5F0(uint64_t a1)
{
  v2 = sub_14F8B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14F62C(uint64_t a1)
{
  v2 = sub_14F8B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WelcomeScreenViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_289A58, &qword_201BA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_48B8(a1, a1[3]);
  sub_14F8B8();
  sub_1E1E00();
  v9 = *(v3 + 4);
  v11[8] = *v3;
  v12 = v9;
  v11[7] = 0;
  sub_F478();
  sub_1E1CF0();
  if (!v2)
  {
    type metadata accessor for WelcomeScreenViewEvent.Model(0);
    v11[6] = 1;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v11[5] = 2;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_14F8B8()
{
  result = qword_289A60;
  if (!qword_289A60)
  {
    result = swift_getWitnessTable(asc_201D70, &type metadata for WelcomeScreenViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289A60);
  }

  return result;
}

void WelcomeScreenViewEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = sub_1E11A0();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1150();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_3D68(&qword_289A68, &qword_201BB0);
  v35 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v31 - v7;
  v9 = type metadata accessor for WelcomeScreenViewEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_14F8B8();
  v37 = v8;
  v12 = v39;
  sub_1E1DF0();
  if (v12)
  {
    sub_4E48(a1, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v39 = a1;
    v21 = v35;
    v20 = v36;
    v42 = 0;
    sub_F9D0();
    sub_1E1C20();
    v22 = v44;
    *v11 = v43;
    *(v11 + 1) = v22;
    v41 = 1;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 32))(&v11[*(v9 + 20)], v6, v4);
    v40 = 2;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v23 = v33;
    sub_1E1C20();
    (*(v21 + 8))(v37, v38);
    (*(v31 + 32))(&v11[*(v9 + 24)], v34, v23);
    sub_14FD68(v11, v32);
    sub_4E48(v39, v24, v25, v26, v27, v28, v29, v30);
    sub_14FDCC(v11);
  }
}

uint64_t sub_14FD68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeScreenViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14FDCC(uint64_t a1)
{
  v2 = type metadata accessor for WelcomeScreenViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_14FEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27DF30, &qword_1E4F60);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_150000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27DF30, &qword_1E4F60);
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

uint64_t sub_150178(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27DF30, &qword_1E4F60);
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

void sub_1502E8(uint64_t a1)
{
  sub_150384(319);
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

void sub_150384(uint64_t a1)
{
  if (!qword_27DFE0)
  {
    sub_F9D0();
    sub_F478();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_27DFE0);
    }
  }
}

uint64_t sub_150400(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 20)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 24)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_150530(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_150650(uint64_t a1)
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

unint64_t sub_1506F8()
{
  result = qword_289BA0;
  if (!qword_289BA0)
  {
    result = swift_getWitnessTable(asc_201D48, &type metadata for WelcomeScreenViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289BA0);
  }

  return result;
}

unint64_t sub_150750()
{
  result = qword_289BA8;
  if (!qword_289BA8)
  {
    result = swift_getWitnessTable(aI_12, &type metadata for WelcomeScreenViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289BA8);
  }

  return result;
}

unint64_t sub_1507A8()
{
  result = qword_289BB0;
  if (!qword_289BB0)
  {
    result = swift_getWitnessTable(aQ_9, &type metadata for WelcomeScreenViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289BB0);
  }

  return result;
}

uint64_t sub_1507FC(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x80000000002138F0;
  if (a1 == 0xD000000000000011 && 0x80000000002138F0 == a2 || (sub_1E1D30() & 1) != 0)
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

uint64_t sub_1509F0(uint64_t a1)
{
  v2 = sub_150BCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_150A2C(uint64_t a1)
{
  v2 = sub_150BCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppResumeEvent.Model.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_289BE8, &qword_201DC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_48B8(a1, a1[3]);
  sub_150BCC();
  sub_1E1E00();
  sub_1E1150();
  sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
  sub_1E1CF0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_150BCC()
{
  result = qword_289BF0;
  if (!qword_289BF0)
  {
    result = swift_getWitnessTable(asc_201F6C, &type metadata for AppResumeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289BF0);
  }

  return result;
}

void AppResumeEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_1E1150();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3D68(&qword_289BF8, &qword_201DC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = type metadata accessor for AppResumeEvent.Model(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_150BCC();
  v12 = v25;
  sub_1E1DF0();
  if (!v12)
  {
    v20 = v23;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    (*(v20 + 32))(v11, v24, v3);
    sub_150EAC(v11, v22);
  }

  sub_4E48(a1, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_150EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppResumeEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_150FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_151038(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1510E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_151168(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_1511EC()
{
  result = qword_289D20;
  if (!qword_289D20)
  {
    result = swift_getWitnessTable(asc_201F44, &type metadata for AppResumeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289D20);
  }

  return result;
}

unint64_t sub_151244()
{
  result = qword_289D28;
  if (!qword_289D28)
  {
    result = swift_getWitnessTable(aM_12, &type metadata for AppResumeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289D28);
  }

  return result;
}

unint64_t sub_15129C()
{
  result = qword_289D30;
  if (!qword_289D30)
  {
    result = swift_getWitnessTable(aU_17, &type metadata for AppResumeEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289D30);
  }

  return result;
}

uint64_t SeriesExposureEvent.exposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27F4F8, &unk_210310);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesExposureEvent.exposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27F4F8, &unk_210310);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SeriesExposureEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t SeriesExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesExposureEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesExposureEvent.Model(0) + 32);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesExposureEvent.Model.init(seriesData:exposureData:linkData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v9;
  v10 = *a2;
  v11 = a2[1];
  *(a6 + 32) = a1[2];
  *(a6 + 48) = v10;
  v12 = a2[2];
  v13 = a2[3];
  *(a6 + 64) = v11;
  *(a6 + 80) = v12;
  v15 = *a3;
  v14 = a3[1];
  *(a6 + 96) = v13;
  *(a6 + 112) = v15;
  v16 = a3[2];
  v17 = a3[4];
  v18 = a3[5];
  *(a6 + 160) = a3[3];
  *(a6 + 176) = v17;
  *(a6 + 128) = v14;
  *(a6 + 144) = v16;
  v19 = a3[6];
  v20 = a3[7];
  v21 = a3[8];
  *(a6 + 256) = *(a3 + 18);
  *(a6 + 224) = v20;
  *(a6 + 240) = v21;
  *(a6 + 192) = v18;
  *(a6 + 208) = v19;
  v22 = type metadata accessor for SeriesExposureEvent.Model(0);
  v23 = *(v22 + 28);
  v24 = sub_1E1150();
  (*(*(v24 - 8) + 32))(a6 + v23, a4, v24);
  v25 = *(v22 + 32);
  v26 = sub_1E11A0();
  v27 = *(*(v26 - 8) + 32);

  return v27(a6 + v25, a5, v26);
}

uint64_t sub_151D3C()
{
  v1 = *v0;
  v2 = 0x6144736569726573;
  v3 = 0x617461446B6E696CLL;
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
    v2 = 0x657275736F707865;
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

uint64_t sub_151DEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_15383C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_151E14(uint64_t a1)
{
  v2 = sub_15238C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_151E50(uint64_t a1)
{
  v2 = sub_15238C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SeriesExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_289D68, &qword_201FC8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - v6;
  sub_48B8(a1, a1[3]);
  sub_15238C();
  sub_1E1E00();
  v8 = *v2;
  v9 = *v2;
  v10 = v2[2];
  v64 = v2[1];
  v65 = v10;
  v60 = v9;
  v61 = v64;
  v62 = v2[2];
  v63 = v8;
  v59 = 0;
  sub_CF18(&v63, &v42);
  sub_D57C();
  v11 = v66;
  sub_1E1CF0();
  if (v11)
  {
    v42 = v60;
    v43 = v61;
    v44 = v62;
    sub_D5D0(&v42);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v57[0] = v60;
    v57[1] = v61;
    v57[2] = v62;
    sub_D5D0(v57);
    v13 = v2[4];
    v58[0] = v2[3];
    v58[1] = v13;
    v14 = v2[6];
    v16 = v2[3];
    v15 = v2[4];
    v58[2] = v2[5];
    v58[3] = v14;
    v53 = v16;
    v54 = v15;
    v17 = v2[6];
    v55 = v2[5];
    v56 = v17;
    v52 = 1;
    sub_17AA4(v58, &v42, &qword_27F500, &unk_210330);
    sub_38C28();
    sub_1E1C80();
    v41[0] = v53;
    v41[1] = v54;
    v41[2] = v55;
    v41[3] = v56;
    sub_18E48(v41, &qword_27F500, &unk_210330);
    v18 = v2[14];
    v19 = v2[12];
    v48 = v2[13];
    v49 = v18;
    v20 = v2[14];
    v50 = v2[15];
    v21 = v2[10];
    v22 = v2[8];
    v44 = v2[9];
    v45 = v21;
    v23 = v2[10];
    v24 = v2[12];
    v46 = v2[11];
    v47 = v24;
    v25 = v2[8];
    v42 = v2[7];
    v43 = v25;
    v37 = v48;
    v38 = v20;
    v39 = v2[15];
    v33 = v44;
    v34 = v23;
    v35 = v46;
    v36 = v19;
    v51 = *(v2 + 32);
    v40 = *(v2 + 32);
    v31 = v42;
    v32 = v22;
    v30 = 2;
    sub_17AA4(&v42, v28, &qword_27E4A0, &qword_1E8860);
    sub_18630();
    sub_1E1C80();
    v28[6] = v37;
    v28[7] = v38;
    v28[8] = v39;
    v29 = v40;
    v28[2] = v33;
    v28[3] = v34;
    v28[4] = v35;
    v28[5] = v36;
    v28[0] = v31;
    v28[1] = v32;
    sub_18E48(v28, &qword_27E4A0, &qword_1E8860);
    type metadata accessor for SeriesExposureEvent.Model(0);
    v27 = 3;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v27 = 4;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
    return (*(v5 + 8))(v7, 0);
  }
}

unint64_t sub_15238C()
{
  result = qword_289D70;
  if (!qword_289D70)
  {
    result = swift_getWitnessTable(aN_1, &type metadata for SeriesExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289D70);
  }

  return result;
}

void SeriesExposureEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = sub_1E11A0();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1150();
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_289D78, &qword_201FD0);
  v47 = *(v7 - 8);
  v48 = v7;
  __chkstk_darwin(v7);
  v9 = v41 - v8;
  v10 = type metadata accessor for SeriesExposureEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v67 = a1;
  sub_48B8(a1, v13);
  sub_15238C();
  v49 = v9;
  v14 = v50;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v67, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v50 = v10;
    v65 = 0;
    sub_DAD8();
    sub_1E1C20();
    v22 = v66[1];
    v23 = v12;
    *v12 = v66[0];
    *(v12 + 1) = v22;
    *(v12 + 2) = v66[2];
    v63 = 1;
    sub_393C4();
    sub_1E1BB0();
    v24 = v64[1];
    *(v12 + 3) = v64[0];
    *(v12 + 4) = v24;
    v25 = v64[3];
    *(v12 + 5) = v64[2];
    *(v12 + 6) = v25;
    v52 = 2;
    sub_18FA4();
    v41[1] = 0;
    sub_1E1BB0();
    v26 = v60;
    *(v12 + 13) = v59;
    *(v12 + 14) = v26;
    *(v12 + 15) = v61;
    *(v12 + 32) = v62;
    v27 = v56;
    *(v12 + 9) = v55;
    *(v12 + 10) = v27;
    v28 = v58;
    *(v12 + 11) = v57;
    *(v12 + 12) = v28;
    v29 = v54;
    *(v12 + 7) = v53;
    *(v12 + 8) = v29;
    v51 = 3;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v30 = v4;
    sub_1E1C20();
    v31 = v50;
    (*(v46 + 32))(&v12[*(v50 + 28)], v6, v30);
    v51 = 4;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v32 = v44;
    v33 = v45;
    sub_1E1C20();
    (*(v47 + 8))(v49, v48);
    (*(v42 + 32))(v23 + *(v31 + 32), v33, v32);
    sub_152A58(v23, v43);
    sub_4E48(v67, v34, v35, v36, v37, v38, v39, v40);
    sub_152ABC(v23);
  }
}

uint64_t sub_152A58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeriesExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_152ABC(uint64_t a1)
{
  v2 = type metadata accessor for SeriesExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_152BB8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_152D9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F4F8, &unk_210310);
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

  v14 = sub_3D68(&qword_27E488, &unk_1E5F90);
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

uint64_t sub_152FBC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F4F8, &unk_210310);
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

  v16 = sub_3D68(&qword_27E488, &unk_1E5F90);
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

void sub_1531D4(uint64_t a1)
{
  sub_153348(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
  if (v1 <= 0x3F)
  {
    sub_153348(319, &unk_27F598, sub_393C4, sub_38C28, &type metadata for ExposureData);
    if (v2 <= 0x3F)
    {
      sub_153348(319, &unk_27E588, sub_18FA4, sub_18630, &type metadata for LinkData);
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

void sub_153348(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_1533D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v13 = a1 + *(a3 + 28);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1E11A0();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_15351C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_153640(uint64_t a1)
{
  sub_19FE0(319, &unk_27F640, &type metadata for ExposureData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &unk_27E650, &type metadata for LinkData);
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

unint64_t sub_153738()
{
  result = qword_289EC0;
  if (!qword_289EC0)
  {
    result = swift_getWitnessTable(byte_202188, &type metadata for SeriesExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289EC0);
  }

  return result;
}

unint64_t sub_153790()
{
  result = qword_289EC8;
  if (!qword_289EC8)
  {
    result = swift_getWitnessTable(asc_2020F8, &type metadata for SeriesExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289EC8);
  }

  return result;
}

unint64_t sub_1537E8()
{
  result = qword_289ED0;
  if (!qword_289ED0)
  {
    result = swift_getWitnessTable(byte_202120, &type metadata for SeriesExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289ED0);
  }

  return result;
}

uint64_t sub_15383C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6144736569726573 && a2 == 0xEA00000000006174;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEC00000061746144;
    if (a1 == 0x657275736F707865 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
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

Swift::Int sub_153A08(unsigned __int8 a1)
{
  sub_1E1DC0();
  v2 = 0x8000000000212530;
  v3 = 0x8000000000212550;
  if (a1 != 4)
  {
    v3 = 0xED00007265646165;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x8000000000212510;
  if (a1 == 1)
  {
    v4 = 0xEC00000072656461;
  }

  if (a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xEC00000072656461;
  }

  if (a1 <= 2u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v2;
  }

  sub_1E17D0();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return sub_1E1DE0();
}

Swift::Int sub_153B28(unsigned __int8 a1)
{
  sub_1E1DC0();
  v2 = 0xE700000000000000;
  v3 = 0x8000000000212A80;
  v4 = 0xEF6D6F6F52747369;
  if (a1 != 4)
  {
    v4 = 0xEC00000065676150;
  }

  if (a1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xE90000000000006DLL;
  if (a1 != 1)
  {
    v5 = 0xEA00000000006D6FLL;
  }

  if (a1)
  {
    v2 = v5;
  }

  if (a1 <= 2u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  sub_1E17D0();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return sub_1E1DE0();
}

Swift::Int sub_153C50(unsigned __int8 a1)
{
  sub_1E1DC0();
  v2 = 0xE700000000000000;
  v3 = 0xE500000000000000;
  v4 = 0x8000000000212890;
  if (a1 != 4)
  {
    v4 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xEA00000000006B63;
  if (a1 != 1)
  {
    v5 = 0xE500000000000000;
  }

  if (a1)
  {
    v2 = v5;
  }

  if (a1 <= 2u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  sub_1E17D0();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return sub_1E1DE0();
}

Swift::Int sub_153D54(unsigned __int8 a1)
{
  sub_1E1DC0();
  v2 = 0xE700000000000000;
  v3 = 0xE500000000000000;
  if (a1 != 3)
  {
    v3 = 0xE400000000000000;
  }

  if (a1)
  {
    v2 = 0xE300000000000000;
  }

  if (a1 <= 2u)
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

Swift::Int sub_153E38(unsigned __int8 a1)
{
  sub_1E1DC0();
  v2 = 0xE700000000000000;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  if (a1 != 4)
  {
    v4 = 0x8000000000212F60;
  }

  if (a1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xE200000000000000;
  if (a1 != 1)
  {
    v5 = 0xE300000000000000;
  }

  if (a1)
  {
    v2 = v5;
  }

  if (a1 <= 2u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  sub_1E17D0();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return sub_1E1DE0();
}

BookAnalytics::AutoNightThemeStatus_optional __swiftcall AutoNightThemeStatus.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261258;
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

uint64_t AutoNightThemeStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x746867696CLL;
  v4 = 1802658148;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 28271;
  if (v1 != 1)
  {
    v5 = 6710895;
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

unint64_t sub_154024()
{
  result = qword_289ED8;
  if (!qword_289ED8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutoNightThemeStatus, &type metadata for AutoNightThemeStatus, v0, v1);
    atomic_store(result, &qword_289ED8);
  }

  return result;
}

void sub_154080(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0xE400000000000000;
  if (v2 != 4)
  {
    v5 = 0x8000000000212F60;
  }

  if (v2 != 3)
  {
    v4 = v5;
  }

  v6 = 0xE200000000000000;
  if (v2 != 1)
  {
    v6 = 0xE300000000000000;
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

void sub_154168(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE500000000000000;
  v6 = 0x746867696CLL;
  v7 = 0xE400000000000000;
  v8 = 1802658148;
  if (v2 != 4)
  {
    v8 = 0xD000000000000012;
    v7 = 0x8000000000212F60;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE200000000000000;
  v10 = 28271;
  if (v2 != 1)
  {
    v10 = 6710895;
    v9 = 0xE300000000000000;
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

unint64_t sub_1542CC()
{
  result = qword_289EE0;
  if (!qword_289EE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutoNightThemeStatus, &type metadata for AutoNightThemeStatus, v0, v1);
    atomic_store(result, &qword_289EE0);
  }

  return result;
}

uint64_t SearchFallbackEvent.searchMethodData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_2868C8, &unk_202330);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SearchFallbackEvent.searchMethodData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_2868C8, &unk_202330);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchFallbackEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchFallbackEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchFallbackEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchFallbackEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchFallbackEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_2868C8, &unk_202330);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for SearchFallbackEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t SearchFallbackEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchFallbackEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchFallbackEvent.Model.init(searchMethodData:eventData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for SearchFallbackEvent.Model(0) + 20);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_154840()
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

void sub_154884(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0x8000000000216130;
  if (a1 == 0xD000000000000010 && 0x8000000000216130 == a2 || (sub_1E1D30() & 1) != 0)
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

uint64_t sub_154974(uint64_t a1)
{
  v2 = sub_154BA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1549B0(uint64_t a1)
{
  v2 = sub_154BA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchFallbackEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_289F18, &qword_202340);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_48B8(a1, a1[3]);
  sub_154BA8();
  sub_1E1E00();
  v10[15] = *v3;
  v10[14] = 0;
  sub_ABFFC();
  sub_1E1CF0();
  if (!v2)
  {
    type metadata accessor for SearchFallbackEvent.Model(0);
    v10[13] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_154BA8()
{
  result = qword_289F20;
  if (!qword_289F20)
  {
    result = swift_getWitnessTable(aY_21, &type metadata for SearchFallbackEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_289F20);
  }

  return result;
}

void SearchFallbackEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1E1150();
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_3D68(&qword_289F28, &qword_202348);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v23 - v6;
  v8 = type metadata accessor for SearchFallbackEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_154BA8();
  sub_1E1DF0();
  if (!v2)
  {
    v18 = v10;
    v25 = v8;
    v19 = v28;
    v20 = v29;
    v32 = 0;
    sub_ABFA4();
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
    sub_154EF8(v22, v27);
  }

  sub_4E48(a1, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_154EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFallbackEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_154FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_2868C8, &unk_202330);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_1550E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_2868C8, &unk_202330);
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

uint64_t sub_155204(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_2868C8, &unk_202330);
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

void sub_155318(uint64_t a1)
{
  sub_15539C(319);
  if (v1 <= 0x3F)
  {
    sub_5684(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_15539C(uint64_t a1)
{
  if (!qword_286968)
  {
    sub_ABFA4();
    sub_ABFFC();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_286968);
    }
  }
}

uint64_t sub_155418(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 >= 8)
    {
      return v4 - 7;
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

_BYTE *sub_1554D0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
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

uint64_t sub_155570(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_155600()
{
  result = qword_28A050;
  if (!qword_28A050)
  {
    result = swift_getWitnessTable(byte_2024D8, &type metadata for SearchFallbackEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A050);
  }

  return result;
}

unint64_t sub_155658()
{
  result = qword_28A058;
  if (!qword_28A058)
  {
    result = swift_getWitnessTable(asc_202448, &type metadata for SearchFallbackEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A058);
  }

  return result;
}

unint64_t sub_1556B0()
{
  result = qword_28A060;
  if (!qword_28A060)
  {
    result = swift_getWitnessTable(byte_202470, &type metadata for SearchFallbackEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A060);
  }

  return result;
}

BookAnalytics::AccountUserAction_optional __swiftcall AccountUserAction.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261308;
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

uint64_t AccountUserAction.rawValue.getter()
{
  v1 = 0x6E49676F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x74754F676F6CLL;
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

uint64_t sub_1557B4(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE500000000000000;
  v10 = 0x6E49676F6CLL;
  if (v8 != 1)
  {
    v10 = 0x74754F676F6CLL;
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
  v14 = 0x6E49676F6CLL;
  if (*a2 != 1)
  {
    v14 = 0x74754F676F6CLL;
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

unint64_t sub_1558AC()
{
  result = qword_28A068;
  if (!qword_28A068)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountUserAction, &type metadata for AccountUserAction, v0, v1);
    atomic_store(result, &qword_28A068);
  }

  return result;
}

Swift::Int sub_155900()
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

void sub_15599C(uint64_t a1)
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

Swift::Int sub_155A24(uint64_t a1)
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

void sub_155AC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6E49676F6CLL;
  if (v2 != 1)
  {
    v5 = 0x74754F676F6CLL;
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

unint64_t sub_155BE0()
{
  result = qword_28A070;
  if (!qword_28A070)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountUserAction, &type metadata for AccountUserAction, v0, v1);
    atomic_store(result, &qword_28A070);
  }

  return result;
}

uint64_t RedownloadFailEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadFailEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadFailEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadFailEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadFailEvent.redownloadFailData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 28);
  v4 = sub_3D68(&qword_28A0A8, &qword_202678);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadFailEvent.redownloadFailData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 28);
  v4 = sub_3D68(&qword_28A0A8, &qword_202678);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadFailEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadFailEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadFailEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadFailEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadFailEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadFailEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RedownloadFailEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_28A0A8, &qword_202678);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t RedownloadFailEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadFailEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadFailEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadFailEvent.Model(0) + 36);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadFailEvent.Model.init(contentData:contentStoreData:sectionData:redownloadFailData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = a1[3];
  *(a7 + 32) = a1[2];
  *(a7 + 48) = v10;
  v11 = a1[5];
  *(a7 + 64) = a1[4];
  *(a7 + 80) = v11;
  v12 = a1[1];
  *a7 = *a1;
  *(a7 + 16) = v12;
  v13 = *(a2 + 48);
  *(a7 + 128) = *(a2 + 32);
  *(a7 + 144) = v13;
  v14 = *(a2 + 16);
  *(a7 + 96) = *a2;
  *(a7 + 112) = v14;
  v15 = a3[2];
  *(a7 + 216) = a3[3];
  v16 = a3[5];
  *(a7 + 232) = a3[4];
  *(a7 + 248) = v16;
  *(a7 + 264) = a3[6];
  v17 = a3[1];
  *(a7 + 168) = *a3;
  *(a7 + 184) = v17;
  v18 = *a4;
  *(a7 + 157) = *(a2 + 61);
  *(a7 + 200) = v15;
  *(a7 + 280) = v18;
  v19 = type metadata accessor for RedownloadFailEvent.Model(0);
  v20 = *(v19 + 32);
  v21 = sub_1E1150();
  (*(*(v21 - 8) + 32))(a7 + v20, a5, v21);
  v22 = *(v19 + 36);
  v23 = sub_1E11A0();
  v24 = *(*(v23 - 8) + 32);

  return v24(a7 + v22, a6, v23);
}

unint64_t sub_15684C()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0xD000000000000012;
  v4 = 0x746144746E657665;
  if (v1 != 4)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x446E6F6974636573;
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

uint64_t sub_156920@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_15863C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_156948(uint64_t a1)
{
  v2 = sub_156F18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_156984(uint64_t a1)
{
  v2 = sub_156F18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RedownloadFailEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28A0B0, &qword_202680);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25[-v6];
  sub_48B8(a1, a1[3]);
  sub_156F18();
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
    v26 = *(v2 + 280);
    v25[14] = 3;
    sub_156F6C();
    sub_1E1CF0();
    type metadata accessor for RedownloadFailEvent.Model(0);
    v26 = 4;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v26 = 5;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_156F18()
{
  result = qword_28A0B8;
  if (!qword_28A0B8)
  {
    result = swift_getWitnessTable(asc_202870, &type metadata for RedownloadFailEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A0B8);
  }

  return result;
}

unint64_t sub_156F6C()
{
  result = qword_28A0C0;
  if (!qword_28A0C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RedownloadFailData, &type metadata for RedownloadFailData, v0, v1);
    atomic_store(result, &qword_28A0C0);
  }

  return result;
}

void RedownloadFailEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = sub_1E11A0();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1150();
  v44 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_28A0C8, &qword_202688);
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  v10 = type metadata accessor for RedownloadFailEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v65 = a1;
  sub_48B8(a1, v13);
  sub_156F18();
  v47 = v9;
  v14 = v48;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v65, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v48 = v6;
    v57 = 0;
    sub_14CB8();
    sub_1E1C20();
    v22 = v61;
    *(v12 + 2) = v60;
    *(v12 + 3) = v22;
    v23 = v63;
    *(v12 + 4) = v62;
    *(v12 + 5) = v23;
    v24 = v59;
    *v12 = v58;
    *(v12 + 1) = v24;
    v52 = 1;
    sub_4FB64();
    sub_1E1BB0();
    v25 = *v56;
    *(v12 + 8) = v55;
    *(v12 + 9) = v25;
    *(v12 + 157) = *&v56[13];
    v26 = v54;
    *(v12 + 6) = v53;
    *(v12 + 7) = v26;
    v51 = 2;
    sub_18EFC();
    sub_1E1BB0();
    v27 = v64[2];
    *(v12 + 216) = v64[3];
    v28 = v64[5];
    *(v12 + 232) = v64[4];
    *(v12 + 248) = v28;
    v29 = v64[1];
    *(v12 + 168) = v64[0];
    *(v12 + 184) = v29;
    *(v12 + 200) = v27;
    *(v12 + 264) = v64[6];
    v49 = 3;
    sub_1576C4();
    sub_1E1C20();
    v39 = v10;
    v12[280] = v50;
    v50 = 4;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v30 = v48;
    sub_1E1C20();
    (*(v44 + 32))(&v12[*(v39 + 32)], v30, v4);
    v50 = 5;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v31 = v42;
    sub_1E1C20();
    (*(v45 + 8))(v47, v46);
    (*(v40 + 32))(&v12[*(v39 + 36)], v43, v31);
    sub_157718(v12, v41);
    sub_4E48(v65, v32, v33, v34, v35, v36, v37, v38);
    sub_15777C(v12);
  }
}

unint64_t sub_1576C4()
{
  result = qword_28A0D0;
  if (!qword_28A0D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RedownloadFailData, &type metadata for RedownloadFailData, v0, v1);
    atomic_store(result, &qword_28A0D0);
  }

  return result;
}

uint64_t sub_157718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedownloadFailEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15777C(uint64_t a1)
{
  v2 = type metadata accessor for RedownloadFailEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_157878@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v12 = sub_3D68(&qword_28A0A8, &qword_202678);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

uint64_t sub_157AA8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
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

  v14 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_3D68(&qword_28A0A8, &qword_202678);
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

uint64_t sub_157D1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
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

  v16 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_3D68(&qword_28A0A8, &qword_202678);
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

void sub_157F88(uint64_t a1)
{
  sub_15814C(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_15814C(319, &qword_2800D8, sub_4FB64, sub_4F01C, &type metadata for ContentStoreData);
    if (v2 <= 0x3F)
    {
      sub_15814C(319, &qword_27E578, sub_18EFC, sub_18544, &type metadata for SectionData);
      if (v3 <= 0x3F)
      {
        sub_15814C(319, &unk_28A140, sub_1576C4, sub_156F6C, &type metadata for RedownloadFailData);
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

void sub_15814C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_1581DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_158314(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_158438(uint64_t a1)
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

unint64_t sub_158538()
{
  result = qword_28A220;
  if (!qword_28A220)
  {
    result = swift_getWitnessTable(asc_202848, &type metadata for RedownloadFailEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A220);
  }

  return result;
}

unint64_t sub_158590()
{
  result = qword_28A228;
  if (!qword_28A228)
  {
    result = swift_getWitnessTable(aI_13, &type metadata for RedownloadFailEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A228);
  }

  return result;
}

unint64_t sub_1585E8()
{
  result = qword_28A230;
  if (!qword_28A230)
  {
    result = swift_getWitnessTable(aQ_10, &type metadata for RedownloadFailEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A230);
  }

  return result;
}

uint64_t sub_15863C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
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

    else
    {
      v13 = 0x8000000000216FD0;
      if (a1 == 0xD000000000000012 && 0x8000000000216FD0 == a2 || (sub_1E1D30() & 1) != 0)
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
}

unint64_t DataEventType.metricsFields.getter(uint64_t a1, uint64_t a2)
{
  sub_1E0840();
  swift_allocObject();
  v2 = sub_1E0830();
  v27 = sub_1E0820();
  v29 = v28;
  v2, v28, v30, v31, v32, v33, v34, v35;
  v36 = objc_opt_self();
  isa = sub_1E0940().super.isa;
  v62[0] = 0;
  v38 = [v36 JSONObjectWithData:isa options:0 error:v62];

  if (v38)
  {
    v39 = v62[0];
    sub_1E1A60();
    swift_unknownObjectRelease();
    sub_3D68(&qword_28A238, &qword_2028C0);
    if (swift_dynamicCast())
    {
      v26 = sub_158B90(v61);
      v61, v40, v41, v42, v43, v44, v45, v46;
    }

    else
    {
      v26 = sub_322DC(_swiftEmptyArrayStorage);
    }

    sub_158E5C(v27, v29, v47, v48, v49, v50, v51, v52);
  }

  else
  {
    v53 = v62[0];
    sub_1E08C0();

    swift_willThrow();
    sub_158E5C(v27, v29, v54, v55, v56, v57, v58, v59);
    if (qword_27D068 != -1)
    {
      swift_once();
    }

    v3 = sub_1E1360();
    sub_3B2C(v3, qword_280320);
    swift_errorRetain();
    v4 = sub_1E1340();
    v5 = sub_1E1980();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v62[0] = v7;
      *v6 = 136315138;
      swift_errorRetain();
      sub_3D68(&qword_287758, &qword_210300);
      v8 = sub_1E1790();
      v10 = v9;
      v11 = sub_DD91C(v8, v9, v62);
      v10, v12, v13, v14, v15, v16, v17, v18;
      *(v6 + 4) = v11;
      _os_log_impl(&dword_0, v4, v5, "Unable to serialize DataEventType to JSON: %s", v6, 0xCu);
      sub_4E48(v7, v19, v20, v21, v22, v23, v24, v25);
    }

    v26 = sub_322DC(_swiftEmptyArrayStorage);
  }

  return v26;
}

uint64_t sub_158B90(uint64_t a1)
{
  v2 = &_swiftEmptyDictionarySingleton;
  v46 = &_swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v16 = 0;
  while (v6)
  {
LABEL_12:
    v19 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v20 = v19 | (v16 << 6);
    v21 = (*(a1 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    sub_158EB0(*(a1 + 56) + 32 * v20, v45);
    *&v44 = v23;
    *(&v44 + 1) = v22;
    v41 = v44;
    v42 = v45[0];
    v43 = v45[1];
    sub_158EB0(&v42, &v35);
    if (v36)
    {
      sub_326AC(&v35, v40);
      v38 = v41;
      v39[0] = v42;
      v39[1] = v43;
      sub_326AC(v40, v37);
      v24 = v2[2];
      if (v2[3] <= v24)
      {

        sub_173250(v24 + 1, 1);
        v2 = v46;
      }

      else
      {
      }

      v25 = v38;
      sub_1E1DC0();
      sub_1E17D0();
      result = sub_1E1DE0();
      v26 = (v2 + 8);
      v27 = -1 << *(v2 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~v2[(v28 >> 6) + 8]) == 0)
      {
        v31 = 0;
        v32 = (63 - v27) >> 6;
        while (++v29 != v32 || (v31 & 1) == 0)
        {
          v33 = v29 == v32;
          if (v29 == v32)
          {
            v29 = 0;
          }

          v31 |= v33;
          v34 = *&v26[8 * v29];
          if (v34 != -1)
          {
            v30 = __clz(__rbit64(~v34)) + (v29 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v30 = __clz(__rbit64((-1 << v28) & ~v2[(v28 >> 6) + 8])) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *&v26[(v30 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v30;
      *(v2[6] + 16 * v30) = v25;
      sub_326AC(v37, (v2[7] + 32 * v30));
      ++v2[2];
      v17 = v39;
    }

    else
    {

      sub_18E48(&v41, &qword_28A240, &unk_2028D0);
      v17 = &v35;
    }

    result = sub_18E48(v17, &unk_281B50, &unk_1EDD70);
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v7)
    {
      a1, v9, v10, v11, v12, v13, v14, v15;
      return v2;
    }

    v6 = *(v3 + 8 * v18);
    ++v16;
    if (v6)
    {
      v16 = v18;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_158E5C(BAEventReporter *a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }

    v9 = a2;
    a1, a2, a3, a4, a5, a6, a7, a8;
    a2 = v9;
  }

  (a2 & 0x3FFFFFFFFFFFFFFFLL), a2, a3, a4, a5, a6, a7, a8;
}

uint64_t sub_158EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&unk_281B50, &unk_1EDD70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void __swiftcall LibraryItemTypeData.init(contentPrivateID:contentUserID:contentType:contentID:isSample:)(BookAnalytics::LibraryItemTypeData *__return_ptr retstr, Swift::String contentPrivateID, Swift::String contentUserID, BookAnalytics::ContentType contentType, Swift::String contentID, Swift::Bool isSample)
{
  v6 = *contentType;
  retstr->contentPrivateID = contentPrivateID;
  retstr->contentUserID = contentUserID;
  retstr->contentType = v6;
  retstr->contentID = contentID;
  retstr->isSample = isSample;
}

unint64_t sub_158F50()
{
  v1 = *v0;
  v2 = 0x55746E65746E6F63;
  v3 = 0x54746E65746E6F63;
  v4 = 0x49746E65746E6F63;
  if (v1 != 3)
  {
    v4 = 0x656C706D61537369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
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

uint64_t sub_159008@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1599E8(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_159030(uint64_t a1)
{
  v2 = sub_1597BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15906C(uint64_t a1)
{
  v2 = sub_1597BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LibraryItemTypeData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28A248, &qword_2028E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  v7 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = v7;
  v15 = *(v1 + 32);
  v8 = *(v1 + 40);
  v13 = *(v1 + 48);
  v14 = v8;
  v12[3] = *(v1 + 56);
  sub_48B8(a1, a1[3]);
  sub_1597BC();
  sub_1E1E00();
  v24 = 0;
  v9 = v18;
  sub_1E1CB0();
  if (!v9)
  {
    v11 = v15;
    v23 = 1;
    sub_1E1CB0();
    v22 = v11;
    v21 = 2;
    sub_C480();
    sub_1E1CF0();
    v20 = 3;
    sub_1E1CB0();
    v19 = 4;
    sub_1E1CC0();
  }

  return (*(v4 + 8))(v6, v3);
}

void LibraryItemTypeData.init(from:)(BAEventReporter **a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_28A258, &qword_2028E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  sub_48B8(a1, a1[3]);
  sub_1597BC();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    LOBYTE(v45[0]) = 0;
    v16 = sub_1E1BE0();
    v41 = v17;
    LOBYTE(v45[0]) = 1;
    v18 = sub_1E1BE0();
    v40 = v19;
    v38 = v18;
    LOBYTE(v42) = 2;
    sub_C4D4();
    sub_1E1C20();
    v50 = LOBYTE(v45[0]);
    LOBYTE(v45[0]) = 3;
    v37 = sub_1E1BE0();
    v39 = v20;
    v51 = 4;
    v21 = sub_1E1BF0();
    (*(v6 + 8))(v8, v5);
    v36 = v21 & 1;
    v23 = v40;
    v22 = v41;
    *&v42 = v16;
    *(&v42 + 1) = v41;
    v24 = v38;
    *&v43 = v38;
    *(&v43 + 1) = v40;
    v25 = v50;
    v44[0] = v50;
    v26 = v39;
    *&v44[8] = v37;
    *&v44[16] = v39;
    v44[24] = v36;
    v27 = v43;
    *a2 = v42;
    a2[1] = v27;
    a2[2] = *v44;
    *(a2 + 41) = *&v44[9];
    sub_5E360(&v42, v45);
    sub_4E48(a1, v28, v29, v30, v31, v32, v33, v34);
    v45[0] = v16;
    v45[1] = v22;
    v45[2] = v24;
    v45[3] = v23;
    v46 = v25;
    v47 = v37;
    v48 = v26;
    v49 = v36;
    sub_5E3BC(v45);
  }
}

uint64_t _s13BookAnalytics19LibraryItemTypeDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = a1[2];
  v9 = a1[3];
  v10 = *(a1 + 32);
  v11 = a1[5];
  v12 = a1[6];
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *(a2 + 48);
  v21 = *(a2 + 56);
  v22 = *(a1 + 56);
  if (*a1 == *a2 && a1[1] == v14 || (sub_1E1D30()) && (v8 == v15 && v9 == v16 || (sub_1E1D30()) && (sub_218F4(v10, v17, v13, v14, a5, a6, a7, a8) & 1) != 0 && (v11 == v18 && v12 == v19 || (sub_1E1D30()))
  {
    return v22 ^ v21 ^ 1u;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1597BC()
{
  result = qword_28A250;
  if (!qword_28A250)
  {
    result = swift_getWitnessTable(byte_202AE8, &type metadata for LibraryItemTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A250);
  }

  return result;
}

unint64_t sub_159814()
{
  result = qword_28A260;
  if (!qword_28A260)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryItemTypeData, &type metadata for LibraryItemTypeData, v0, v1);
    atomic_store(result, &qword_28A260);
  }

  return result;
}

unint64_t sub_15986C()
{
  result = qword_28A268;
  if (!qword_28A268)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryItemTypeData, &type metadata for LibraryItemTypeData, v0, v1);
    atomic_store(result, &qword_28A268);
  }

  return result;
}

unint64_t sub_1598E4()
{
  result = qword_28A270;
  if (!qword_28A270)
  {
    result = swift_getWitnessTable(byte_202AC0, &type metadata for LibraryItemTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A270);
  }

  return result;
}

unint64_t sub_15993C()
{
  result = qword_28A278;
  if (!qword_28A278)
  {
    result = swift_getWitnessTable(byte_202A30, &type metadata for LibraryItemTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A278);
  }

  return result;
}

unint64_t sub_159994()
{
  result = qword_28A280;
  if (!qword_28A280)
  {
    result = swift_getWitnessTable(asc_202A58, &type metadata for LibraryItemTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A280);
  }

  return result;
}

uint64_t sub_1599E8(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
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

    else
    {
      v13 = 0xEB00000000657079;
      if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000044 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else if (a1 == 0x656C706D61537369 && a2 == 0xE800000000000000)
      {
        0xE800000000000000, v13, a3, a4, a5, a6, a7, a8;
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
}

uint64_t SeriesFilterEvent.formatFilterData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesFilterEvent(0) + 20);
  v4 = sub_3D68(&qword_28A2B8, &unk_202B38);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesFilterEvent.formatFilterData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesFilterEvent(0) + 20);
  v4 = sub_3D68(&qword_28A2B8, &unk_202B38);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesFilterEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesFilterEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesFilterEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesFilterEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesFilterEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SeriesFilterEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_28A2B8, &unk_202B38);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SeriesFilterEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesFilterEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesFilterEvent.Model.init(seriesData:formatFilterData:eventData:)@<X0>(_OWORD *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v6;
  v8 = *(type metadata accessor for SeriesFilterEvent.Model(0) + 24);
  v9 = sub_1E1150();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

unint64_t sub_15A1B4()
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
    return 0x6144736569726573;
  }
}

uint64_t sub_15A21C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_15B334(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_15A244(uint64_t a1)
{
  v2 = sub_15A528();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15A280(uint64_t a1)
{
  v2 = sub_15A528();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SeriesFilterEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28A2C0, &qword_202B48);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  sub_48B8(a1, a1[3]);
  sub_15A528();
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
    v15 = *(v3 + 24);
    v14[13] = 1;
    sub_E22EC();
    sub_1E1CF0();
    type metadata accessor for SeriesFilterEvent.Model(0);
    LOBYTE(v15) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_15A528()
{
  result = qword_28A2C8;
  if (!qword_28A2C8)
  {
    result = swift_getWitnessTable(aM_13, &type metadata for SeriesFilterEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A2C8);
  }

  return result;
}

void SeriesFilterEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_1E1150();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_28A2D0, &qword_202B50);
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for SeriesFilterEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v39 = a1;
  sub_48B8(a1, v13);
  sub_15A528();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v39, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = v37;
    v22 = v12;
    v34 = v6;
    v45 = 0;
    sub_DAD8();
    v23 = v38;
    sub_1E1C20();
    v24 = v42;
    v25 = v22;
    *v22 = v41;
    *(v22 + 1) = v24;
    *(v22 + 2) = v43;
    v44 = 1;
    sub_E2294();
    sub_1E1C20();
    *(v22 + 24) = v40;
    LOBYTE(v40) = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v26 = v34;
    sub_1E1C20();
    (*(v21 + 8))(v9, v23);
    (*(v35 + 32))(v25 + *(v10 + 24), v26, v4);
    sub_15A90C(v25, v36);
    sub_4E48(v39, v27, v28, v29, v30, v31, v32, v33);
    sub_15A970(v25);
  }
}

uint64_t sub_15A90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeriesFilterEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15A970(uint64_t a1)
{
  v2 = type metadata accessor for SeriesFilterEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_15AA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_28A2B8, &unk_202B38);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_15ABA4(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = sub_3D68(&qword_28A2B8, &unk_202B38);
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

uint64_t sub_15AD1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

  v13 = sub_3D68(&qword_28A2B8, &unk_202B38);
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

void sub_15AE8C(uint64_t a1)
{
  sub_15AF98(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
  if (v1 <= 0x3F)
  {
    sub_15AF98(319, &unk_28A340, sub_E2294, sub_E22EC, &type metadata for FormatFilterData);
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

void sub_15AF98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_15B028(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_15B0F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
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

uint64_t sub_15B198(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_15B230()
{
  result = qword_28A410;
  if (!qword_28A410)
  {
    result = swift_getWitnessTable(byte_202CE4, &type metadata for SeriesFilterEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A410);
  }

  return result;
}

unint64_t sub_15B288()
{
  result = qword_28A418;
  if (!qword_28A418)
  {
    result = swift_getWitnessTable(aD_0, &type metadata for SeriesFilterEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A418);
  }

  return result;
}

unint64_t sub_15B2E0()
{
  result = qword_28A420;
  if (!qword_28A420)
  {
    result = swift_getWitnessTable(byte_202C7C, &type metadata for SeriesFilterEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A420);
  }

  return result;
}

uint64_t sub_15B334(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6144736569726573 && a2 == 0xEA00000000006174;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000216FF0;
    if (a1 == 0xD000000000000010 && 0x8000000000216FF0 == a2 || (sub_1E1D30() & 1) != 0)
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

uint64_t sub_15B538(uint64_t a1)
{
  v2 = sub_15B714();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15B574(uint64_t a1)
{
  v2 = sub_15B714();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FilterBarEvent.Model.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_28A458, &qword_202D80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_48B8(a1, a1[3]);
  sub_15B714();
  sub_1E1E00();
  sub_1E1150();
  sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
  sub_1E1CF0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_15B714()
{
  result = qword_28A460;
  if (!qword_28A460)
  {
    result = swift_getWitnessTable(aM_14, &type metadata for FilterBarEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A460);
  }

  return result;
}

void FilterBarEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_1E1150();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3D68(&qword_28A468, &qword_202D88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = type metadata accessor for FilterBarEvent.Model(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_15B714();
  v12 = v25;
  sub_1E1DF0();
  if (!v12)
  {
    v20 = v23;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    (*(v20 + 32))(v11, v24, v3);
    sub_15B9F4(v11, v22);
  }

  sub_4E48(a1, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_15B9F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilterBarEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_15BAF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_15BB80(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_15BC30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_15BCB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_15BD34()
{
  result = qword_28A590;
  if (!qword_28A590)
  {
    result = swift_getWitnessTable(aE_13, &type metadata for FilterBarEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A590);
  }

  return result;
}

unint64_t sub_15BD8C()
{
  result = qword_28A598;
  if (!qword_28A598)
  {
    result = swift_getWitnessTable(byte_202E74, &type metadata for FilterBarEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A598);
  }

  return result;
}

unint64_t sub_15BDE4()
{
  result = qword_28A5A0;
  if (!qword_28A5A0)
  {
    result = swift_getWitnessTable(byte_202E9C, &type metadata for FilterBarEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A5A0);
  }

  return result;
}

uint64_t UPPContentBrickExposureEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UPPContentBrickExposureEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UPPContentBrickExposureEvent.genreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UPPContentBrickExposureEvent.genreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UPPContentBrickExposureEvent.uppParentContentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UPPContentBrickExposureEvent.uppParentContentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UPPContentBrickExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UPPContentBrickExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UPPContentBrickExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UPPContentBrickExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UPPContentBrickExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for UPPContentBrickExposureEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

void UPPContentBrickExposureEvent.Model.genreData.getter(uint64_t *a1@<X8>)
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
  sub_815A0(v2, v3, v4, v5, v6, v7);
}

uint64_t UPPContentBrickExposureEvent.Model.uppParentContentData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 208);
  v4 = *(v1 + 216);
  v5 = *(v1 + 224);
  v6 = *(v1 + 232);
  v7 = *(v1 + 240);
  *a1 = *(v1 + 192);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
}

uint64_t UPPContentBrickExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UPPContentBrickExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent.Model(0) + 36);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UPPContentBrickExposureEvent.Model.init(contentData:seriesData:genreData:uppParentContentData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a4;
  v11 = a4[1];
  v12 = *(a4 + 4);
  v13 = *(a4 + 5);
  v14 = *(a4 + 48);
  v15 = a1[3];
  *(a7 + 32) = a1[2];
  *(a7 + 48) = v15;
  v16 = a1[5];
  *(a7 + 64) = a1[4];
  *(a7 + 80) = v16;
  v17 = a1[1];
  *a7 = *a1;
  *(a7 + 16) = v17;
  v18 = a2[1];
  *(a7 + 96) = *a2;
  *(a7 + 112) = v18;
  v19 = *a3;
  v20 = a3[1];
  *(a7 + 128) = a2[2];
  *(a7 + 144) = v19;
  v21 = a3[2];
  *(a7 + 160) = v20;
  *(a7 + 176) = v21;
  *(a7 + 192) = v10;
  *(a7 + 208) = v11;
  *(a7 + 224) = v12;
  *(a7 + 232) = v13;
  *(a7 + 240) = v14;
  v22 = type metadata accessor for UPPContentBrickExposureEvent.Model(0);
  v23 = *(v22 + 32);
  v24 = sub_1E1150();
  (*(*(v24 - 8) + 32))(a7 + v23, a5, v24);
  v25 = *(v22 + 36);
  v26 = sub_1E11A0();
  v27 = *(*(v26 - 8) + 32);

  return v27(a7 + v25, a6, v26);
}

unint64_t sub_15CAA8()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0xD000000000000014;
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
    v5 = 0x74614465726E6567;
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

uint64_t sub_15CB78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_15E804(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_15CBA0(uint64_t a1)
{
  v2 = sub_15D0D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15CBDC(uint64_t a1)
{
  v2 = sub_15D0D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UPPContentBrickExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28A5D8, &qword_202F80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v62 - v6;
  sub_48B8(a1, a1[3]);
  sub_15D0D8();
  sub_1E1E00();
  v8 = *(v2 + 48);
  v9 = *(v2 + 16);
  v80 = *(v2 + 32);
  v81 = v8;
  v10 = *(v2 + 48);
  v11 = *(v2 + 80);
  v82 = *(v2 + 64);
  v83 = v11;
  v12 = *(v2 + 16);
  v79[0] = *v2;
  v79[1] = v12;
  v75 = v80;
  v76 = v10;
  v13 = *(v2 + 80);
  v77 = v82;
  v78 = v13;
  v73 = v79[0];
  v74 = v9;
  v72 = 0;
  sub_13A5C(v79, v71);
  sub_143D0();
  v14 = v84;
  sub_1E1CF0();
  v71[2] = v75;
  v71[3] = v76;
  v71[4] = v77;
  v71[5] = v78;
  v71[0] = v73;
  v71[1] = v74;
  sub_14424(v71);
  if (v14)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v15 = *(v2 + 104);
  v16 = *(v2 + 112);
  v17 = *(v2 + 120);
  v18 = *(v2 + 128);
  v19 = *(v2 + 136);
  v63 = *(v2 + 96);
  v64 = v15;
  v65 = v16;
  v66 = v17;
  v67 = v18;
  v68 = v19;
  v70 = 1;
  sub_13BDC(v63, v15, v16, v17, v18, v19);
  sub_D57C();
  sub_1E1C80();
  sub_1461C(v63, v64, v65, v66, v67, v68, v21, v22);
  v23 = *(v2 + 152);
  v24 = *(v2 + 160);
  v25 = *(v2 + 168);
  v26 = *(v2 + 176);
  v27 = *(v2 + 184);
  v63 = *(v2 + 144);
  v64 = v23;
  v65 = v24;
  v66 = v25;
  v67 = v26;
  v68 = v27;
  v70 = 2;
  sub_815A0(v63, v23, v24, v25, v26, v27);
  sub_81F40();
  sub_1E1C80();
  v28 = v5;
  sub_4F16C(v63, v64, v65, v66, v67, v68, v29, v30);
  v31 = *(v2 + 192);
  v32 = *(v2 + 200);
  v33 = *(v2 + 208);
  v34 = *(v2 + 216);
  v84 = v4;
  v35 = *(v2 + 224);
  v36 = *(v2 + 232);
  v37 = *(v2 + 240);
  v63 = v31;
  v64 = v32;
  v65 = v33;
  v66 = v34;
  v67 = v35;
  v68 = v36;
  v69 = v37;
  v70 = 3;
  sub_4F118();

  sub_1E1CF0();
  v38 = v64;
  v39 = v66;
  v68, v40, v41, v42, v43, v44, v45, v46;
  v39, v47, v48, v49, v50, v51, v52, v53;
  v38, v54, v55, v56, v57, v58, v59, v60;
  type metadata accessor for UPPContentBrickExposureEvent.Model(0);
  LOBYTE(v63) = 4;
  sub_1E1150();
  sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
  v61 = v84;
  sub_1E1CF0();
  LOBYTE(v63) = 5;
  sub_1E11A0();
  sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
  sub_1E1CF0();
  return (*(v28 + 8))(v7, v61);
}

unint64_t sub_15D0D8()
{
  result = qword_28A5E0;
  if (!qword_28A5E0)
  {
    result = swift_getWitnessTable(byte_203178, &type metadata for UPPContentBrickExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A5E0);
  }

  return result;
}

void UPPContentBrickExposureEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v49 = sub_1E11A0();
  v45 = *(v49 - 8);
  __chkstk_darwin(v49);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v48 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_3D68(&qword_28A5E8, &qword_202F88);
  v47 = *(v50 - 8);
  __chkstk_darwin(v50);
  v9 = v43 - v8;
  v10 = type metadata accessor for UPPContentBrickExposureEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v53 = a1;
  sub_48B8(a1, v13);
  sub_15D0D8();
  v51 = v9;
  v14 = v52;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v53, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v52 = v7;
    v22 = v47;
    v44 = v4;
    v23 = v49;
    v24 = v12;
    v25 = v48;
    v65 = 0;
    sub_14CB8();
    sub_1E1C20();
    v26 = v61;
    *(v24 + 32) = v60;
    *(v24 + 48) = v26;
    v27 = v63;
    *(v24 + 64) = v62;
    *(v24 + 80) = v27;
    v28 = v59;
    *v24 = v58;
    *(v24 + 16) = v28;
    v64 = 1;
    sub_DAD8();
    sub_1E1BB0();
    v29 = v55;
    *(v24 + 96) = v54;
    *(v24 + 112) = v29;
    *(v24 + 128) = v56;
    v64 = 2;
    sub_827D8();
    sub_1E1BB0();
    v30 = v55;
    *(v24 + 144) = v54;
    *(v24 + 160) = v30;
    *(v24 + 176) = v56;
    v64 = 3;
    sub_4FC60();
    v43[1] = 0;
    sub_1E1C20();
    v31 = v55;
    v32 = v56;
    v33 = v57;
    *(v24 + 192) = v54;
    *(v24 + 208) = v31;
    *(v24 + 224) = v32;
    *(v24 + 240) = v33;
    LOBYTE(v54) = 4;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v34 = v52;
    v43[0] = v5;
    sub_1E1C20();
    (*(v25 + 32))(v24 + *(v10 + 32), v34, v43[0]);
    LOBYTE(v54) = 5;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v35 = v44;
    sub_1E1C20();
    (*(v22 + 8))(v51, v50);
    (*(v45 + 32))(v24 + *(v10 + 36), v35, v23);
    sub_15D8E0(v24, v46);
    sub_4E48(v53, v36, v37, v38, v39, v40, v41, v42);
    sub_15D944(v24);
  }
}

uint64_t sub_15D8E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UPPContentBrickExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15D944(uint64_t a1)
{
  v2 = type metadata accessor for UPPContentBrickExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_15DA40@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

uint64_t sub_15DC70(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
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

  v14 = sub_3D68(&qword_281D70, &unk_1F06C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
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

uint64_t sub_15DEE4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
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

  v16 = sub_3D68(&qword_281D70, &unk_1F06C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
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

void sub_15E150(uint64_t a1)
{
  sub_15E314(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_15E314(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
    if (v2 <= 0x3F)
    {
      sub_15E314(319, &unk_281E50, sub_827D8, sub_81F40, &type metadata for GenreData);
      if (v3 <= 0x3F)
      {
        sub_15E314(319, &unk_2800F8, sub_4FC60, sub_4F118, &type metadata for UppParentContentData);
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

void sub_15E314(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_15E3A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_15E4DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_15E600(uint64_t a1)
{
  sub_19FE0(319, &qword_27E398, &type metadata for SeriesData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &unk_281F00, &type metadata for GenreData);
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

unint64_t sub_15E700()
{
  result = qword_28A730;
  if (!qword_28A730)
  {
    result = swift_getWitnessTable(byte_203150, &type metadata for UPPContentBrickExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A730);
  }

  return result;
}

unint64_t sub_15E758()
{
  result = qword_28A738;
  if (!qword_28A738)
  {
    result = swift_getWitnessTable(aA_23, &type metadata for UPPContentBrickExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A738);
  }

  return result;
}

unint64_t sub_15E7B0()
{
  result = qword_28A740;
  if (!qword_28A740)
  {
    result = swift_getWitnessTable(aI_14, &type metadata for UPPContentBrickExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A740);
  }

  return result;
}

uint64_t sub_15E804(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
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

  else if (a1 == 0x74614465726E6567 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v13 = 0x8000000000213F90;
    if (a1 == 0xD000000000000014 && 0x8000000000213F90 == a2 || (sub_1E1D30() & 1) != 0)
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

uint64_t ReadingSettingsContextualViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingSettingsContextualViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingSettingsContextualViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingSettingsContextualViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingSettingsContextualViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for ReadingSettingsContextualViewEvent(0) + 20);
  v5 = enum case for EventProperty.required<A>(_:);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v7 = *(*(v6 - 8) + 104);

  return v7(a1 + v4, v5, v6);
}

uint64_t ReadingSettingsContextualViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingSettingsContextualViewEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingSettingsContextualViewEvent.Model.init(contentData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
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
  v8 = *(type metadata accessor for ReadingSettingsContextualViewEvent.Model(0) + 20);
  v9 = sub_1E1150();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a3[v8], a2, v9);
}

uint64_t sub_15EE78()
{
  if (*v0)
  {
    return 0x746144746E657665;
  }

  else
  {
    return 0x44746E65746E6F63;
  }
}

void sub_15EEC0(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0xEB00000000617461;
  v13 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
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

uint64_t sub_15EFA8(uint64_t a1)
{
  v2 = sub_15F278();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15EFE4(uint64_t a1)
{
  v2 = sub_15F278();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingSettingsContextualViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28A778, &qword_2031C8);
  v30 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v15[-v6];
  sub_48B8(a1, a1[3]);
  sub_15F278();
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
  sub_437B4(&v24, v16);
  sub_143D0();
  sub_1E1C80();
  v16[2] = v20;
  v16[3] = v21;
  v16[4] = v22;
  v16[5] = v23;
  v16[0] = v18;
  v16[1] = v19;
  sub_440C0(v16);
  if (!v2)
  {
    type metadata accessor for ReadingSettingsContextualViewEvent.Model(0);
    v15[15] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v30 + 8))(v7, v5);
}

unint64_t sub_15F278()
{
  result = qword_28A780;
  if (!qword_28A780)
  {
    result = swift_getWitnessTable(byte_20338C, &type metadata for ReadingSettingsContextualViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A780);
  }

  return result;
}

void ReadingSettingsContextualViewEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_1E1150();
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_3D68(&qword_28A788, &qword_2031D0);
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v31 - v7;
  v9 = type metadata accessor for ReadingSettingsContextualViewEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v36 = a1;
  sub_48B8(a1, v12);
  sub_15F278();
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
    sub_1E1BB0();
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
    sub_15F66C(v11, v33);
    sub_4E48(v36, v24, v25, v26, v27, v28, v29, v30);
    sub_15F6D0(v11);
  }
}

uint64_t sub_15F66C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingSettingsContextualViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15F6D0(uint64_t a1)
{
  v2 = type metadata accessor for ReadingSettingsContextualViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_15F7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a2 + v6, v7, v8);
}

uint64_t sub_15F8C4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_15F9E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_15FB34(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_15FC00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_15FCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
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

unint64_t sub_15FD74()
{
  result = qword_28A8B0;
  if (!qword_28A8B0)
  {
    result = swift_getWitnessTable(byte_203364, &type metadata for ReadingSettingsContextualViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A8B0);
  }

  return result;
}

unint64_t sub_15FDCC()
{
  result = qword_28A8B8;
  if (!qword_28A8B8)
  {
    result = swift_getWitnessTable(aM_15, &type metadata for ReadingSettingsContextualViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A8B8);
  }

  return result;
}

unint64_t sub_15FE24()
{
  result = qword_28A8C0;
  if (!qword_28A8C0)
  {
    result = swift_getWitnessTable(a5_6, &type metadata for ReadingSettingsContextualViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A8C0);
  }

  return result;
}

uint64_t RemoveSuggestionCardEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoveSuggestionCardEvent.suggestionData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RemoveSuggestionCardEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveSuggestionCardEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveSuggestionCardEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveSuggestionCardEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveSuggestionCardEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveSuggestionCardEvent(0) + 24);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveSuggestionCardEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveSuggestionCardEvent(0) + 24);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveSuggestionCardEvent.genreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveSuggestionCardEvent(0) + 28);
  v4 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveSuggestionCardEvent.genreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveSuggestionCardEvent(0) + 28);
  v4 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveSuggestionCardEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveSuggestionCardEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveSuggestionCardEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveSuggestionCardEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveSuggestionCardEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RemoveSuggestionCardEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t RemoveSuggestionCardEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v10 = *(v1 + 40);
  v11 = v2;
  v4 = *(v1 + 88);
  v12 = *(v1 + 72);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 24);
  v9[0] = *(v1 + 8);
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

uint64_t RemoveSuggestionCardEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  v6 = v1[17];
  v7 = v1[18];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

void RemoveSuggestionCardEvent.Model.genreData.getter(uint64_t *a1@<X8>)
{
  v2 = v1[19];
  v3 = v1[20];
  v4 = v1[21];
  v5 = v1[22];
  v6 = v1[23];
  v7 = v1[24];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_815A0(v2, v3, v4, v5, v6, v7);
}

uint64_t RemoveSuggestionCardEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveSuggestionCardEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveSuggestionCardEvent.Model.init(suggestionData:contentData:seriesData:genreData:eventData:)@<X0>(_BYTE *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a2[3];
  *(a6 + 40) = a2[2];
  *(a6 + 56) = v8;
  v9 = a2[5];
  *(a6 + 72) = a2[4];
  *(a6 + 88) = v9;
  v10 = a2[1];
  *(a6 + 8) = *a2;
  *(a6 + 24) = v10;
  v11 = a3[1];
  *(a6 + 104) = *a3;
  *(a6 + 120) = v11;
  *(a6 + 136) = a3[2];
  v12 = a4[1];
  *(a6 + 152) = *a4;
  *a6 = *a1;
  *(a6 + 168) = v12;
  *(a6 + 184) = a4[2];
  v13 = *(type metadata accessor for RemoveSuggestionCardEvent.Model(0) + 32);
  v14 = sub_1E1150();
  v15 = *(*(v14 - 8) + 32);

  return v15(a6 + v13, a5, v14);
}

uint64_t sub_160978()
{
  v1 = *v0;
  v2 = 0x6974736567677573;
  v3 = 0x6144736569726573;
  v4 = 0x74614465726E6567;
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
    v2 = 0x44746E65746E6F63;
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

uint64_t sub_160A34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_162198(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_160A5C(uint64_t a1)
{
  v2 = sub_160E68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_160A98(uint64_t a1)
{
  v2 = sub_160E68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RemoveSuggestionCardEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28A8F8, &qword_2033E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  sub_48B8(a1, a1[3]);
  sub_160E68();
  sub_1E1E00();
  v48[0] = *v3;
  v47 = 0;
  sub_284F8();
  sub_1E1CF0();
  if (!v2)
  {
    v9 = *(v3 + 56);
    v46[2] = *(v3 + 40);
    v46[3] = v9;
    v10 = *(v3 + 88);
    v46[4] = *(v3 + 72);
    v46[5] = v10;
    v11 = *(v3 + 24);
    v46[0] = *(v3 + 8);
    v46[1] = v11;
    v12 = *(v3 + 56);
    v42 = *(v3 + 40);
    v43 = v12;
    v13 = *(v3 + 88);
    v44 = *(v3 + 72);
    v45 = v13;
    v14 = *(v3 + 24);
    v40 = *(v3 + 8);
    v41 = v14;
    v39 = 1;
    sub_437B4(v46, v38);
    sub_143D0();
    sub_1E1C80();
    v38[2] = v42;
    v38[3] = v43;
    v38[4] = v44;
    v38[5] = v45;
    v38[0] = v40;
    v38[1] = v41;
    sub_440C0(v38);
    v15 = *(v3 + 112);
    v16 = *(v3 + 120);
    v17 = *(v3 + 128);
    v18 = *(v3 + 136);
    v19 = *(v3 + 144);
    v32 = *(v3 + 104);
    v33 = v15;
    v34 = v16;
    v35 = v17;
    v36 = v18;
    v37 = v19;
    v31 = 2;
    sub_13BDC(v32, v15, v16, v17, v18, v19);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v32, v33, v34, v35, v36, v37, v20, v21);
    v22 = *(v3 + 160);
    v23 = *(v3 + 168);
    v24 = *(v3 + 176);
    v25 = *(v3 + 184);
    v26 = *(v3 + 192);
    v32 = *(v3 + 152);
    v33 = v22;
    v34 = v23;
    v35 = v24;
    v36 = v25;
    v37 = v26;
    v31 = 3;
    sub_815A0(v32, v22, v23, v24, v25, v26);
    sub_81F40();
    sub_1E1C80();
    sub_4F16C(v32, v33, v34, v35, v36, v37, v27, v28);
    type metadata accessor for RemoveSuggestionCardEvent.Model(0);
    LOBYTE(v32) = 4;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_160E68()
{
  result = qword_28A900;
  if (!qword_28A900)
  {
    result = swift_getWitnessTable(byte_2035C4, &type metadata for RemoveSuggestionCardEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28A900);
  }

  return result;
}

void RemoveSuggestionCardEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_1E1150();
  v42 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_3D68(&qword_28A908, &qword_2033E8);
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v7 = v40 - v6;
  v8 = type metadata accessor for RemoveSuggestionCardEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v58 = a1;
  sub_48B8(a1, v11);
  sub_160E68();
  v12 = v46;
  sub_1E1DF0();
  if (v12)
  {
    sub_4E48(v58, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v46 = v5;
    v20 = v43;
    v21 = v10;
    v22 = v44;
    LOBYTE(v48) = 0;
    sub_28F9C();
    sub_1E1C20();
    *v21 = v52;
    v51 = 1;
    sub_14CB8();
    sub_1E1BB0();
    v23 = v55;
    *(v21 + 40) = v54;
    *(v21 + 56) = v23;
    v24 = v57;
    *(v21 + 72) = v56;
    *(v21 + 88) = v24;
    v25 = v53;
    *(v21 + 8) = v52;
    *(v21 + 24) = v25;
    v47 = 2;
    sub_DAD8();
    sub_1E1BB0();
    v26 = *(&v48 + 1);
    v27 = v49;
    v28 = v50;
    v41 = v48;
    *(v21 + 104) = v48;
    *(v21 + 112) = v26;
    v40[0] = v26;
    v40[1] = v27;
    *(v21 + 120) = v27;
    v40[2] = *(&v27 + 1);
    v40[3] = v28;
    *(v21 + 136) = v28;
    v40[4] = *(&v28 + 1);
    v47 = 3;
    sub_827D8();
    sub_1E1BB0();
    v29 = v49;
    *(v21 + 152) = v48;
    *(v21 + 168) = v29;
    *(v21 + 184) = v50;
    LOBYTE(v48) = 4;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v30 = v46;
    v31 = v3;
    v32 = v45;
    v41 = v31;
    sub_1E1C20();
    (*(v20 + 8))(v7, v32);
    (*(v42 + 32))(v21 + *(v8 + 32), v30, v41);
    sub_161464(v21, v22);
    sub_4E48(v58, v33, v34, v35, v36, v37, v38, v39);
    sub_1614C8(v21);
  }
}

uint64_t sub_161464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveSuggestionCardEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1614C8(uint64_t a1)
{
  v2 = type metadata accessor for RemoveSuggestionCardEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1615C4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_1617A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27EA10, &qword_1E71E0);
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

  v14 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_281D70, &unk_1F06C0);
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

uint64_t sub_1619C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27EA10, &qword_1E71E0);
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

  v16 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_281D70, &unk_1F06C0);
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

void sub_161BE0(uint64_t a1)
{
  sub_161D8C(319, &unk_27EAF8, sub_28F9C, sub_284F8, &type metadata for SuggestionData);
  if (v1 <= 0x3F)
  {
    sub_161D8C(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
    if (v2 <= 0x3F)
    {
      sub_161D8C(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
      if (v3 <= 0x3F)
      {
        sub_161D8C(319, &unk_281E50, sub_827D8, sub_81F40, &type metadata for GenreData);
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

void sub_161D8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_161E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
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

uint64_t sub_161EE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
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

void sub_161F8C(uint64_t a1)
{
  sub_19FE0(319, &qword_27FE30, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_27E398, &type metadata for SeriesData);
    if (v2 <= 0x3F)
    {
      sub_19FE0(319, &unk_281F00, &type metadata for GenreData);
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

unint64_t sub_162094()
{
  result = qword_28AA50;
  if (!qword_28AA50)
  {
    result = swift_getWitnessTable(asc_20359C, &type metadata for RemoveSuggestionCardEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AA50);
  }

  return result;
}

unint64_t sub_1620EC()
{
  result = qword_28AA58;
  if (!qword_28AA58)
  {
    result = swift_getWitnessTable(byte_20350C, &type metadata for RemoveSuggestionCardEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AA58);
  }

  return result;
}

unint64_t sub_162144()
{
  result = qword_28AA60;
  if (!qword_28AA60)
  {
    result = swift_getWitnessTable(byte_203534, &type metadata for RemoveSuggestionCardEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AA60);
  }

  return result;
}

uint64_t sub_162198(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEE00617461446E6FLL;
  v11 = a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0xEB00000000617461;
    if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x74614465726E6567 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
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

uint64_t ContentData.init(from:with:)@<X0>(BAEventReporter **a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v121 = a2;
  v122 = a3;
  v120 = sub_1E1300();
  v115 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1E1280();
  countAndFlagsBits = *(v123 - 8);
  __chkstk_darwin(v123);
  v6 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_28AA68, &qword_203618);
  __chkstk_darwin(v7 - 8);
  v9 = &v113 - v8;
  v10 = sub_1E11F0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E12A0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v17, enum case for BooksFeatureFlag.unifiedProductPage(_:), v14);
  sub_162F38();
  sub_162F90();
  LODWORD(v119) = sub_1E1880();
  (*(v15 + 8))(v17, v14);
  sub_4C2BC(a1, v130);
  sub_3D68(&qword_28AA88, &qword_203628);
  v18 = swift_dynamicCast();
  v19 = *(v11 + 56);
  if (v18)
  {
    v19(v9, 0, 1, v10);
    (*(v11 + 32))(v13, v9, v10);
    v20 = sub_1E11E0();
    (*(v11 + 8))(v13, v10);
    if (v20)
    {
      v21 = 5;
    }

    else
    {
      v21 = 1;
    }

    goto LABEL_9;
  }

  v19(v9, 1, 1, v10);
  sub_162FF4(v9);
  sub_4C2BC(a1, v130);
  v22 = v123;
  if (swift_dynamicCast())
  {
    (*(countAndFlagsBits + 8))(v6, v22);
    v21 = 2;
LABEL_9:
    LODWORD(v120) = v21;
    goto LABEL_10;
  }

  sub_4C2BC(a1, v130);
  v23 = v118;
  v24 = v120;
  if (swift_dynamicCast())
  {
    (*(v115 + 8))(v23, v24);
    v21 = 3;
    goto LABEL_9;
  }

  LODWORD(v120) = 0;
LABEL_10:
  sub_48B8(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = sub_1E1A20();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v113 - v28;
  sub_1E1200();
  v30 = *(AssociatedTypeWitness - 8);
  if ((*(v30 + 48))(v29, 1, AssociatedTypeWitness) == 1)
  {
    (*(v27 + 8))(v29, v26);
    LODWORD(v123) = 3;
    v31 = v121;
  }

  else
  {
    *(&v125 + 1) = AssociatedTypeWitness;
    *&v126 = swift_getAssociatedConformanceWitness();
    v32 = sub_16305C(&v124);
    (*(v30 + 32))(v32, v29, AssociatedTypeWitness);
    sub_7EE7C(&v124, v130);
    sub_48B8(v130, v133);
    sub_1E12B0();
    if (v33)
    {
      v33, v33, v34, v35, v36, v37, v38, v39;
      v40 = 1;
    }

    else
    {
      v40 = 2;
    }

    LODWORD(v123) = v40;
    v31 = v121;
    sub_4E48(v130, v33, v34, v35, v36, v37, v38, v39);
  }

  sub_48B8(a1, a1[3]);
  v41 = sub_1E1220();
  if (v41)
  {
    v42 = v41;
    if ([v41 isSG])
    {

      v43 = 1;
    }

    else
    {
      v44 = sub_1E12D0();

      if (v44)
      {
        v43 = 2;
      }

      else
      {
        v43 = 3;
      }
    }
  }

  else
  {
    v43 = 3;
  }

  LODWORD(v121) = v43;
  sub_48B8(a1, a1[3]);
  v45 = sub_1E1220();
  if (v45 && (v46 = v45, v47 = sub_1E12E0(), v46, v47))
  {
    v48 = sub_1E12F0();

    if (v48)
    {
      v49 = 1;
    }

    else
    {
      v49 = 2;
    }
  }

  else
  {
    sub_48B8(a1, a1[3]);
    v50 = sub_1E1310();
    if (v50 == 2 || (v50 & 1) == 0)
    {
      LODWORD(v118) = 0;
      goto LABEL_33;
    }

    v49 = 3;
  }

  LODWORD(v118) = v49;
LABEL_33:
  sub_48B8(a1, a1[3]);
  v51 = sub_1E1210();
  v53 = v52;
  sub_48B8(a1, a1[3]);
  v54._countAndFlagsBits = sub_1E1210();
  object = v54._object;
  v56 = BATracker.contentPrivateID(for:)(v54);
  countAndFlagsBits = v56.value._countAndFlagsBits;
  v57 = v56.value._object;
  object, v56.value._object, v58, v59, v60, v61, v62, v63;
  sub_48B8(a1, a1[3]);
  v64._countAndFlagsBits = sub_1E1210();
  v65 = v64._object;
  v66 = BATracker.contentUserID(for:)(v64);
  v67 = v66.value._countAndFlagsBits;
  v65, v66.value._object, v68, v69, v70, v71, v72, v73;
  sub_48B8(a1, a1[3]);
  v74 = sub_1E1220();
  v77 = 0;
  if (v74)
  {
    v75 = v74;
    v76 = [v74 hasSupplementalContent];

    if (v76)
    {
      v77 = 1;
    }
  }

  v116 = a1;
  if (v119)
  {
    v119 = v66.value._countAndFlagsBits;
    sub_48B8(a1, a1[3]);
    v78 = sub_1E1220();
    if (v78)
    {
      v79 = v78;
      v80 = [v78 supportsUnifiedProductPage];
    }

    else
    {
      v80 = 0;
    }

    sub_48B8(a1, a1[3]);
    v84 = sub_1E1220();
    if (v84)
    {
      v85 = v53;
      v86 = v84;
      v87 = [v84 editionKind];

      if (v87)
      {
        v88 = sub_1E1780();
        v90 = v89;

        v82 = v90;
        v81 = v88;
      }

      else
      {

        v81 = 0;
        v82 = 0;
      }

      v53 = v85;
    }

    else
    {

      v81 = 0;
      v82 = 0;
    }

    v83 = v80;
    v67 = v119;
  }

  else
  {

    v81 = 0;
    v82 = 0;
    v83 = 2;
  }

  v115 = v53;
  v155 = 1;
  v152 = 0;
  if (v66.value._object)
  {
    v91 = v66.value._object;
  }

  else
  {
    v91 = 0xE000000000000000;
  }

  v119 = v91;
  if (v66.value._object)
  {
    v92 = v67;
  }

  else
  {
    v92 = 0;
  }

  v113 = v92;
  if (!v56.value._object)
  {
    v57 = 0xE000000000000000;
  }

  *&v124 = v51;
  *(&v124 + 1) = v53;
  v114 = v51;
  if (v56.value._object)
  {
    v93 = countAndFlagsBits;
  }

  else
  {
    v93 = 0;
  }

  v94 = v120;
  LOBYTE(v125) = v120;
  *(&v125 + 1) = *v156;
  DWORD1(v125) = *&v156[3];
  *(&v125 + 1) = v93;
  *&v126 = v57;
  *(&v126 + 1) = v92;
  *&v127 = v91;
  WORD4(v127) = v123;
  HIDWORD(v127) = 0;
  LOBYTE(v128) = 1;
  BYTE3(v128) = v154;
  *(&v128 + 1) = v153;
  DWORD1(v128) = v77;
  BYTE8(v128) = 0;
  v95 = v118;
  BYTE9(v128) = v118;
  v96 = v121;
  BYTE10(v128) = v121;
  BYTE11(v128) = 3;
  BYTE12(v128) = v83;
  BYTE13(v128) = 2;
  *&v129 = v81;
  *(&v129 + 1) = v82;
  v97 = v125;
  v98 = v122;
  *v122 = v124;
  v98[1] = v97;
  v99 = v126;
  v100 = v127;
  v101 = v129;
  v98[4] = v128;
  v98[5] = v101;
  v98[2] = v99;
  v98[3] = v100;
  v102 = v83;
  v103 = v81;
  v104 = v82;
  sub_13A5C(&v124, v130);
  sub_4E48(v116, v105, v106, v107, v108, v109, v110, v111);
  v130[0] = v114;
  v130[1] = v115;
  v131 = v94;
  *v132 = *v156;
  *&v132[3] = *&v156[3];
  v133 = v93;
  v134 = v57;
  v135 = v113;
  v136 = v119;
  v137 = v123;
  v138 = 0;
  v139 = 0;
  v140 = 1;
  v141 = v153;
  v142 = v154;
  v143 = v77;
  v144 = 0;
  v145 = v95;
  v146 = v96;
  v147 = 3;
  v148 = v102;
  v149 = 2;
  v150 = v103;
  v151 = v104;
  return sub_14424(v130);
}

unint64_t sub_162F38()
{
  result = qword_28AA70;
  if (!qword_28AA70)
  {
    v3 = sub_1E12A0();
    result = swift_getWitnessTable(&protocol conformance descriptor for BooksFeatureFlag, v3, v0, v1);
    atomic_store(result, &qword_28AA70);
  }

  return result;
}

unint64_t sub_162F90()
{
  result = qword_28AA78;
  if (!qword_28AA78)
  {
    v3 = sub_5DE50(&qword_28AA80, &qword_203620);
    result = swift_getWitnessTable(&protocol conformance descriptor for StaticFeatureFlagsKey<A>, v3, v0, v1);
    atomic_store(result, &qword_28AA78);
  }

  return result;
}

uint64_t sub_162FF4(uint64_t a1)
{
  v2 = sub_3D68(&qword_28AA68, &qword_203618);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_16305C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

__n128 ContentData.obscureID(using:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(v3 + 48);
  v57 = *(v3 + 32);
  v58 = v6;
  v7 = *(v3 + 16);
  v55 = *v3;
  v56 = v7;
  v8 = *(v3 + 80);
  v59 = *(v3 + 64);
  v60 = v8;
  countAndFlagsBits = *(&v7 + 1);
  v12 = *(&v57 + 1);
  v10 = v57;
  v11 = v58;
  v13 = BYTE7(v57) & 0xF;
  if ((v57 & 0x2000000000000000) == 0)
  {
    v13 = *(&v56 + 1) & 0xFFFFFFFFFFFFLL;
  }

  v14 = v55;
  if (v13)
  {

    sub_13A5C(&v55, v54);
    goto LABEL_10;
  }

  if (a1)
  {

    sub_13A5C(&v55, v54);
    v29 = BATracker.contentPrivateID(for:)(v14);
    object = v29.value._object;
    if (v29.value._object)
    {
      countAndFlagsBits = v29.value._countAndFlagsBits;
      v10, v29.value._object, v23, v24, v25, v26, v27, v28;
      v10 = v29.value._object;
      goto LABEL_10;
    }
  }

  else
  {

    sub_13A5C(&v55, v54);
  }

  v10, object, v23, v24, v25, v26, v27, v28;
  0, v30, v31, v32, v33, v34, v35, v36;
  countAndFlagsBits = 0;
  v10 = 0xE000000000000000;
LABEL_10:
  v11, v15, v16, v17, v18, v19, v20, v21;
  v44 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v44 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v44)
  {
    if (a1 && (v45 = BATracker.contentUserID(for:)(v14), (v37 = v45.value._object) != 0))
    {
      v12 = v45.value._countAndFlagsBits;
      v11, v45.value._object, v38, v39, v40, v41, v42, v43;
      v11 = v45.value._object;
    }

    else
    {
      v11, v37, v38, v39, v40, v41, v42, v43;
      0, v46, v47, v48, v49, v50, v51, v52;
      v12 = 0;
      v11 = 0xE000000000000000;
    }
  }

  *a2 = *v3;
  *(a2 + 16) = *(v3 + 16);
  *(a2 + 24) = countAndFlagsBits;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  *(a2 + 48) = v11;
  *(a2 + 56) = *(v3 + 56);
  result = *(v3 + 72);
  *(a2 + 72) = result;
  *(a2 + 88) = *(v3 + 88);
  return result;
}

BookAnalytics::EditActionResult_optional __swiftcall EditActionResult.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261370;
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

uint64_t EditActionResult.rawValue.getter()
{
  v1 = 0x73736563637573;
  if (*v0 != 1)
  {
    v1 = 0x6C65636E6163;
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

uint64_t sub_163308(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE700000000000000;
  v10 = 0xE700000000000000;
  v11 = 0x73736563637573;
  if (v8 != 1)
  {
    v11 = 0x6C65636E6163;
    v10 = 0xE600000000000000;
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

  v14 = 0x73736563637573;
  if (*a2 != 1)
  {
    v14 = 0x6C65636E6163;
    v9 = 0xE600000000000000;
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

unint64_t sub_163404()
{
  result = qword_28AA90;
  if (!qword_28AA90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EditActionResult, &type metadata for EditActionResult, v0, v1);
    atomic_store(result, &qword_28AA90);
  }

  return result;
}

Swift::Int sub_163458()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE700000000000000;
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

void sub_1634F8(uint64_t a1)
{
  v2 = 0xE700000000000000;
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

Swift::Int sub_163584(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE700000000000000;
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

void sub_16362C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x73736563637573;
  if (v2 != 1)
  {
    v5 = 0x6C65636E6163;
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

unint64_t sub_163748()
{
  result = qword_28AA98;
  if (!qword_28AA98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EditActionResult, &type metadata for EditActionResult, v0, v1);
    atomic_store(result, &qword_28AA98);
  }

  return result;
}

uint64_t AddToCollectionEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddToCollectionEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AddToCollectionEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AddToCollectionEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AddToCollectionEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddToCollectionEvent(0) + 24);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AddToCollectionEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AddToCollectionEvent(0) + 24);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AddToCollectionEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddToCollectionEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AddToCollectionEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AddToCollectionEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AddToCollectionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddToCollectionEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AddToCollectionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AddToCollectionEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AddToCollectionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27EC78, &unk_1E7460);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AddToCollectionEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t RemoveFromCollectionEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v10 = v1[4];
  v11 = v2;
  v4 = v1[7];
  v12 = v1[6];
  v3 = v12;
  v13 = v4;
  v6 = v1[3];
  v9[0] = v1[2];
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

uint64_t AddToCollectionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddToCollectionEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AddToCollectionEvent.Model.init(collectionData:contentData:seriesData:suggestionData:eventData:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *(a1 + 16);
  v9 = a2[2];
  v10 = a2[4];
  v11 = a2[5];
  *(a6 + 80) = a2[3];
  *(a6 + 96) = v10;
  v12 = *a2;
  v13 = a2[1];
  *(a6 + 16) = v8;
  *(a6 + 32) = v12;
  v14 = *(a1 + 8);
  v15 = *a4;
  *a6 = *a1;
  *(a6 + 8) = v14;
  *(a6 + 48) = v13;
  *(a6 + 64) = v9;
  v16 = *a3;
  v17 = a3[1];
  *(a6 + 112) = v11;
  *(a6 + 128) = v16;
  v18 = a3[2];
  *(a6 + 144) = v17;
  *(a6 + 160) = v18;
  *(a6 + 176) = v15;
  v19 = *(type metadata accessor for AddToCollectionEvent.Model(0) + 32);
  v20 = sub_1E1150();
  v21 = *(*(v20 - 8) + 32);

  return v21(a6 + v19, a5, v20);
}

uint64_t sub_164164()
{
  v1 = *v0;
  v2 = 0x697463656C6C6F63;
  v3 = 0x6144736569726573;
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
    v2 = 0x44746E65746E6F63;
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

uint64_t sub_164218@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_165918(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_164240(uint64_t a1)
{
  v2 = sub_164688();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16427C(uint64_t a1)
{
  v2 = sub_164688();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AddToCollectionEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28AAD0, &qword_203758);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41 - v6;
  sub_48B8(a1, a1[3]);
  sub_164688();
  sub_1E1E00();
  v8 = v2[1];
  v9 = v2[2];
  v10 = v2[3];
  v63 = *v2;
  v64 = v8;
  v65 = v9;
  v66 = v10;
  v62 = 0;
  sub_2B314();

  v11 = v67;
  sub_1E1CF0();
  v12 = v66;
  v64, v13, v14, v15, v16, v17, v18, v19;
  v12, v20, v21, v22, v23, v24, v25, v26;
  if (v11)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v28 = *(v2 + 5);
  v29 = *(v2 + 3);
  v58 = *(v2 + 4);
  v59 = v28;
  v30 = *(v2 + 5);
  v31 = *(v2 + 7);
  v60 = *(v2 + 6);
  v61 = v31;
  v32 = *(v2 + 3);
  v57[0] = *(v2 + 2);
  v57[1] = v32;
  v53 = v58;
  v54 = v30;
  v33 = *(v2 + 7);
  v55 = v60;
  v56 = v33;
  v51 = v57[0];
  v52 = v29;
  v50 = 1;
  sub_13A5C(v57, v49);
  sub_143D0();
  sub_1E1CF0();
  v49[2] = v53;
  v49[3] = v54;
  v49[4] = v55;
  v49[5] = v56;
  v49[0] = v51;
  v49[1] = v52;
  sub_14424(v49);
  v34 = v2[17];
  v35 = v2[18];
  v36 = v2[19];
  v37 = v2[20];
  v38 = v2[21];
  v43 = v2[16];
  v44 = v34;
  v45 = v35;
  v46 = v36;
  v47 = v37;
  v48 = v38;
  v42 = 2;
  sub_13BDC(v43, v34, v35, v36, v37, v38);
  sub_D57C();
  sub_1E1C80();
  sub_1461C(v43, v44, v45, v46, v47, v48, v39, v40);
  LOBYTE(v43) = *(v2 + 176);
  v42 = 3;
  sub_284F8();
  sub_1E1C80();
  type metadata accessor for AddToCollectionEvent.Model(0);
  LOBYTE(v43) = 4;
  sub_1E1150();
  sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
  sub_1E1CF0();
  return (*(v5 + 8))(v7, 0);
}

unint64_t sub_164688()
{
  result = qword_28AAD8;
  if (!qword_28AAD8)
  {
    result = swift_getWitnessTable(a9_4, &type metadata for AddToCollectionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AAD8);
  }

  return result;
}

void AddToCollectionEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = sub_1E1150();
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_3D68(&qword_28AAE0, &qword_203760);
  v40 = *(v43 - 8);
  __chkstk_darwin(v43);
  v8 = &v37 - v7;
  v9 = type metadata accessor for AddToCollectionEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v55 = a1;
  sub_48B8(a1, v12);
  sub_164688();
  v42 = v8;
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v55, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v38 = v6;
    v20 = v40;
    v21 = v11;
    v22 = v41;
    LOBYTE(v45) = 0;
    sub_2B68C();
    sub_1E1C20();
    v23 = *(&v49 + 1);
    *v21 = v49;
    *(v21 + 8) = v23;
    *(v21 + 16) = v50;
    v48 = 1;
    sub_14CB8();
    sub_1E1C20();
    v24 = v52;
    *(v21 + 64) = v51;
    *(v21 + 80) = v24;
    v25 = v54;
    *(v21 + 96) = v53;
    *(v21 + 112) = v25;
    v26 = v50;
    *(v21 + 32) = v49;
    *(v21 + 48) = v26;
    v44 = 2;
    sub_DAD8();
    v27 = v42;
    sub_1E1BB0();
    v28 = v46;
    *(v21 + 128) = v45;
    *(v21 + 144) = v28;
    *(v21 + 160) = v47;
    v44 = 3;
    sub_28F9C();
    sub_1E1BB0();
    *(v21 + 176) = v45;
    LOBYTE(v45) = 4;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v29 = v38;
    sub_1E1C20();
    (*(v20 + 8))(v27, v43);
    (*(v22 + 32))(v21 + *(v9 + 32), v29, v4);
    sub_164C10(v21, v39);
    sub_4E48(v55, v30, v31, v32, v33, v34, v35, v36);
    sub_164C74(v21);
  }
}

uint64_t sub_164C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddToCollectionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_164C74(uint64_t a1)
{
  v2 = type metadata accessor for AddToCollectionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_164D70@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27EC78, &unk_1E7460);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_164F54(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27EC78, &unk_1E7460);
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

  v14 = sub_3D68(&qword_27DD80, &qword_1E4D30);
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

uint64_t sub_165174(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27EC78, &unk_1E7460);
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

  v16 = sub_3D68(&qword_27DD80, &qword_1E4D30);
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

void sub_16538C(uint64_t a1)
{
  sub_165538(319, &qword_27ED10, sub_2B68C, sub_2B314, &type metadata for CollectionData);
  if (v1 <= 0x3F)
  {
    sub_165538(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
    if (v2 <= 0x3F)
    {
      sub_165538(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
      if (v3 <= 0x3F)
      {
        sub_165538(319, &unk_27EAF8, sub_28F9C, sub_284F8, &type metadata for SuggestionData);
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

void sub_165538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_1655C8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_165688(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_16572C(uint64_t a1)
{
  sub_19FE0(319, &qword_27E398, &type metadata for SeriesData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_27EBD8, &type metadata for SuggestionData);
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

unint64_t sub_165814()
{
  result = qword_28AC28;
  if (!qword_28AC28)
  {
    result = swift_getWitnessTable(aQ_11, &type metadata for AddToCollectionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AC28);
  }

  return result;
}

unint64_t sub_16586C()
{
  result = qword_28AC30;
  if (!qword_28AC30)
  {
    result = swift_getWitnessTable(byte_203888, &type metadata for AddToCollectionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AC30);
  }

  return result;
}

unint64_t sub_1658C4()
{
  result = qword_28AC38;
  if (!qword_28AC38)
  {
    result = swift_getWitnessTable(byte_2038B0, &type metadata for AddToCollectionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AC38);
  }

  return result;
}

uint64_t sub_165918(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x697463656C6C6F63 && a2 == 0xEE00617461446E6FLL;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
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

    else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
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

uint64_t static SearchSuggestionSelectionData.== infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *(a1 + 4);
  v9 = *(a1 + 20);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 20);
  v14 = *a1 == *a2 && a1[1] == v11;
  if (!v14 && (sub_1E1D30() & 1) == 0 || v8 != v12)
  {
    return 0;
  }

  return sub_21B00(v9, v13, v10, v11, a5, a6, a7, a8);
}

unint64_t sub_165B80()
{
  v1 = 0xD000000000000016;
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
    return 0xD000000000000018;
  }
}

uint64_t sub_165BD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1662F4(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_165C00(uint64_t a1)
{
  v2 = sub_165E74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_165C3C(uint64_t a1)
{
  v2 = sub_165E74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchSuggestionSelectionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28AC40, &qword_203990);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  v12 = *(v1 + 16);
  HIDWORD(v10) = *(v1 + 20);
  sub_48B8(a1, a1[3]);
  sub_165E74();
  sub_1E1E00();
  v16 = 0;
  v7 = v11;
  sub_1E1CB0();
  if (!v7)
  {
    v9 = BYTE4(v10);
    v15 = 1;
    sub_1E1D00();
    v14 = v9;
    v13 = 2;
    sub_165EC8();
    sub_1E1CF0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_165E74()
{
  result = qword_28AC48;
  if (!qword_28AC48)
  {
    result = swift_getWitnessTable(byte_203B84, &type metadata for SearchSuggestionSelectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AC48);
  }

  return result;
}

unint64_t sub_165EC8()
{
  result = qword_28AC50;
  if (!qword_28AC50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SelectedSuggestionType, &type metadata for SelectedSuggestionType, v0, v1);
    atomic_store(result, &qword_28AC50);
  }

  return result;
}

void SearchSuggestionSelectionData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28AC58, &qword_203998);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  sub_48B8(a1, a1[3]);
  sub_165E74();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v40 = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    v19 = v16;
    v39 = 1;
    v36 = sub_1E1C30();
    v37 = 2;
    sub_166140();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    v34 = v38;
    *a2 = v19;
    *(a2 + 8) = v18;
    *(a2 + 16) = v36;
    *(a2 + 20) = v34;

    sub_4E48(a1, v20, v21, v22, v23, v24, v25, v26);
    v18, v27, v28, v29, v30, v31, v32, v33;
  }
}

unint64_t sub_166140()
{
  result = qword_28AC60;
  if (!qword_28AC60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SelectedSuggestionType, &type metadata for SelectedSuggestionType, v0, v1);
    atomic_store(result, &qword_28AC60);
  }

  return result;
}

unint64_t sub_1661F0()
{
  result = qword_28AC68;
  if (!qword_28AC68)
  {
    result = swift_getWitnessTable(asc_203B5C, &type metadata for SearchSuggestionSelectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AC68);
  }

  return result;
}

unint64_t sub_166248()
{
  result = qword_28AC70;
  if (!qword_28AC70)
  {
    result = swift_getWitnessTable(aU_18, &type metadata for SearchSuggestionSelectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AC70);
  }

  return result;
}

unint64_t sub_1662A0()
{
  result = qword_28AC78;
  if (!qword_28AC78)
  {
    result = swift_getWitnessTable(asc_203AF4, &type metadata for SearchSuggestionSelectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AC78);
  }

  return result;
}

uint64_t sub_1662F4(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000217010;
  v11 = a1 == 0xD000000000000018 && 0x8000000000217010 == a2;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0x8000000000217030;
    if (a1 == 0xD00000000000001ALL && 0x8000000000217030 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x8000000000217050 == a2)
    {
      a2, 0x8000000000217050, a3, a4, a5, a6, a7, a8;
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

void __swiftcall DeviceData.init(deviceModel:devicePlatform:osInstallVariant:osVersion:osBundleVersion:)(BookAnalytics::DeviceData *__return_ptr retstr, Swift::String deviceModel, Swift::String devicePlatform, BookAnalytics::OsInstallVariant osInstallVariant, Swift::String osVersion, Swift::String osBundleVersion)
{
  v6 = *osInstallVariant;
  retstr->deviceModel = deviceModel;
  retstr->devicePlatform = devicePlatform;
  retstr->osInstallVariant = v6;
  retstr->osVersion = osVersion;
  retstr->osBundleVersion = osBundleVersion;
}

unint64_t sub_166438()
{
  v1 = *v0;
  v2 = 0x6F4D656369766564;
  v3 = 0xD000000000000010;
  v4 = 0x6F6973726556736FLL;
  if (v1 != 3)
  {
    v4 = 0x656C646E7542736FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C50656369766564;
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

uint64_t sub_1664FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_167094(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_166524(uint64_t a1)
{
  v2 = sub_166D88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_166560(uint64_t a1)
{
  v2 = sub_166D88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DeviceData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28AC80, &qword_203BD8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - v5;
  v7 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = v7;
  v14 = *(v1 + 32);
  v8 = *(v1 + 40);
  v13[2] = *(v1 + 48);
  v13[3] = v8;
  v9 = *(v1 + 56);
  v13[0] = *(v1 + 64);
  v13[1] = v9;
  sub_48B8(a1, a1[3]);
  sub_166D88();
  sub_1E1E00();
  v23 = 0;
  v10 = v17;
  sub_1E1CB0();
  if (!v10)
  {
    v12 = v14;
    v22 = 1;
    sub_1E1CB0();
    v21 = v12;
    v20 = 2;
    sub_166DDC();
    sub_1E1CF0();
    v19 = 3;
    sub_1E1CB0();
    v18 = 4;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v6, v3);
}

void DeviceData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28AC98, &qword_203BE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - v7;
  sub_48B8(a1, a1[3]);
  sub_166D88();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    LOBYTE(v47[0]) = 0;
    v16 = sub_1E1BE0();
    v41 = v17;
    LOBYTE(v47[0]) = 1;
    v18 = sub_1E1BE0();
    v40 = v19;
    v38 = v18;
    LOBYTE(v42) = 2;
    sub_166E30();
    sub_1E1C20();
    v53 = LOBYTE(v47[0]);
    LOBYTE(v47[0]) = 3;
    v37 = sub_1E1BE0();
    v39 = v20;
    v54 = 4;
    v21 = sub_1E1BE0();
    v23 = v22;
    v24 = v21;
    (*(v6 + 8))(v8, v5);
    v25 = v40;
    *&v42 = v16;
    *(&v42 + 1) = v41;
    v26 = v38;
    *&v43 = v38;
    *(&v43 + 1) = v40;
    LOBYTE(v44) = v53;
    v27 = v39;
    *(&v44 + 1) = v37;
    *&v45 = v39;
    *(&v45 + 1) = v24;
    v46 = v23;
    *(a2 + 64) = v23;
    v28 = v45;
    *(a2 + 32) = v44;
    *(a2 + 48) = v28;
    v29 = v43;
    *a2 = v42;
    *(a2 + 16) = v29;
    sub_166E84(&v42, v47);
    sub_4E48(a1, v30, v31, v32, v33, v34, v35, v36);
    v47[0] = v16;
    v47[1] = v41;
    v47[2] = v26;
    v47[3] = v25;
    v48 = v53;
    v49 = v37;
    v50 = v27;
    v51 = v24;
    v52 = v23;
    sub_127634(v47);
  }
}

uint64_t _s13BookAnalytics10DeviceDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = *(a1 + 32);
  v13 = a1[5];
  v14 = a1[6];
  v52 = a1[8];
  v53 = a1[7];
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = *(a2 + 32);
  v19 = *(a2 + 40);
  v20 = *(a2 + 48);
  v50 = *(a2 + 64);
  v51 = *(a2 + 56);
  if ((*a1 != *a2 || v9 != v15) && (sub_1E1D30() & 1) == 0 || (v10 != v16 || v11 != v17) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  v21 = 0x6C616E7265746E69;
  if (v12 == 1)
  {
    v22 = 0x6C616E7265746E69;
  }

  else
  {
    v22 = 0x6C616E7265747865;
  }

  if (v12)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0x6E776F6E6B6E75;
  }

  if (v12)
  {
    v24 = 0xE800000000000000;
  }

  else
  {
    v24 = 0xE700000000000000;
  }

  if (v18 != 1)
  {
    v21 = 0x6C616E7265747865;
  }

  if (v18)
  {
    v25 = v21;
  }

  else
  {
    v25 = 0x6E776F6E6B6E75;
  }

  if (v18)
  {
    v26 = 0xE800000000000000;
  }

  else
  {
    v26 = 0xE700000000000000;
  }

  if (v23 == v25 && v24 == v26)
  {
    v24, v9, v25, v15, a5, a6, a7, a8;
    v26, v27, v28, v29, v30, v31, v32, v33;
  }

  else
  {
    v34 = sub_1E1D30();
    v24, v35, v36, v37, v38, v39, v40, v41;
    v26, v42, v43, v44, v45, v46, v47, v48;
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  if ((v13 != v19 || v14 != v20) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v53 == v51 && v52 == v50)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_166D88()
{
  result = qword_28AC88;
  if (!qword_28AC88)
  {
    result = swift_getWitnessTable(byte_203DDC, &type metadata for DeviceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AC88);
  }

  return result;
}

unint64_t sub_166DDC()
{
  result = qword_28AC90;
  if (!qword_28AC90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OsInstallVariant, &type metadata for OsInstallVariant, v0, v1);
    atomic_store(result, &qword_28AC90);
  }

  return result;
}

unint64_t sub_166E30()
{
  result = qword_28ACA0;
  if (!qword_28ACA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OsInstallVariant, &type metadata for OsInstallVariant, v0, v1);
    atomic_store(result, &qword_28ACA0);
  }

  return result;
}

unint64_t sub_166EC0()
{
  result = qword_28ACA8;
  if (!qword_28ACA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceData, &type metadata for DeviceData, v0, v1);
    atomic_store(result, &qword_28ACA8);
  }

  return result;
}

unint64_t sub_166F18()
{
  result = qword_28ACB0;
  if (!qword_28ACB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceData, &type metadata for DeviceData, v0, v1);
    atomic_store(result, &qword_28ACB0);
  }

  return result;
}

unint64_t sub_166F90()
{
  result = qword_28ACB8;
  if (!qword_28ACB8)
  {
    result = swift_getWitnessTable(byte_203DB4, &type metadata for DeviceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28ACB8);
  }

  return result;
}

unint64_t sub_166FE8()
{
  result = qword_28ACC0;
  if (!qword_28ACC0)
  {
    result = swift_getWitnessTable(byte_203D24, &type metadata for DeviceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28ACC0);
  }

  return result;
}

unint64_t sub_167040()
{
  result = qword_28ACC8;
  if (!qword_28ACC8)
  {
    result = swift_getWitnessTable(byte_203D4C, &type metadata for DeviceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28ACC8);
  }

  return result;
}

uint64_t sub_167094(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB000000006C6564;
  v11 = a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0xEE006D726F667461;
    if (a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0x8000000000217070;
      if (a1 == 0xD000000000000010 && 0x8000000000217070 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else if (a1 == 0x656C646E7542736FLL && a2 == 0xEF6E6F6973726556)
      {
        0xEF6E6F6973726556, 0xEF6E6F6973726556, a3, a4, a5, a6, a7, a8;
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

void sub_16728C(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
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

uint64_t sub_167314(uint64_t a1)
{
  v2 = sub_167530();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_167350(uint64_t a1)
{
  v2 = sub_167530();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UserEmbeddingData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28ACD0, &qword_203E30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_167530();

  sub_1E1E00();
  v16[1] = v7;
  sub_3D68(&qword_28ACE0, &qword_203E38);
  sub_167734(&qword_28ACE8, sub_E75D8, &protocol conformance descriptor for <A> [A]);
  sub_1E1CF0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_167530()
{
  result = qword_28ACD8;
  if (!qword_28ACD8)
  {
    result = swift_getWitnessTable(aA_24, &type metadata for UserEmbeddingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28ACD8);
  }

  return result;
}

void UserEmbeddingData.init(from:)(BAEventReporter **a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3D68(&qword_28ACF0, &qword_203E40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_167530();
  sub_1E1DF0();
  if (!v2)
  {
    sub_3D68(&qword_28ACE0, &qword_203E38);
    sub_167734(&qword_28ACF8, sub_E7580, &protocol conformance descriptor for <A> [A]);
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v16[1];
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_167734(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_5DE50(&qword_28ACE0, &qword_203E38);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_167808()
{
  result = qword_28AD00;
  if (!qword_28AD00)
  {
    result = swift_getWitnessTable(aY_22, &type metadata for UserEmbeddingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AD00);
  }

  return result;
}

unint64_t sub_167860()
{
  result = qword_28AD08;
  if (!qword_28AD08)
  {
    result = swift_getWitnessTable(byte_203F60, &type metadata for UserEmbeddingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AD08);
  }

  return result;
}

unint64_t sub_1678B8()
{
  result = qword_28AD10;
  if (!qword_28AD10)
  {
    result = swift_getWitnessTable(byte_203F88, &type metadata for UserEmbeddingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AD10);
  }

  return result;
}

uint64_t sub_16790C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x646F43726F727265;
  }
}

void sub_167950(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
  if (v12 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000215550 == a2)
  {
    a2, 0x8000000000215550, a3, a4, a5, a6, a7, a8;
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

uint64_t sub_167A3C(uint64_t a1)
{
  v2 = sub_167C48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_167A78(uint64_t a1)
{
  v2 = sub_167C48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ErrorData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28AD18, &qword_204068);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  sub_48B8(a1, a1[3]);
  sub_167C48();
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

unint64_t sub_167C48()
{
  result = qword_28AD20;
  if (!qword_28AD20)
  {
    result = swift_getWitnessTable(asc_20424C, &type metadata for ErrorData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AD20);
  }

  return result;
}

void ErrorData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_28AD28, &qword_204070);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  sub_48B8(a1, a1[3]);
  sub_167C48();
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

unint64_t sub_167EF8()
{
  result = qword_28AD30;
  if (!qword_28AD30)
  {
    result = swift_getWitnessTable(aE_14, &type metadata for ErrorData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AD30);
  }

  return result;
}

unint64_t sub_167F50()
{
  result = qword_28AD38;
  if (!qword_28AD38)
  {
    result = swift_getWitnessTable(byte_204194, &type metadata for ErrorData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AD38);
  }

  return result;
}

unint64_t sub_167FA8()
{
  result = qword_28AD40;
  if (!qword_28AD40)
  {
    result = swift_getWitnessTable(aU_19, &type metadata for ErrorData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AD40);
  }

  return result;
}

BookAnalytics::OnDevicePersonalizationPropertyData __swiftcall OnDevicePersonalizationPropertyData.init(isEligible:lockedIn:isLocked:onDevicePersonalizationUserStatus:genrePreferenceAvailable:isReordered:lockedInCount:)(Swift::Bool isEligible, Swift::Double lockedIn, Swift::Bool isLocked, BookAnalytics::OnDevicePersonalizationUserStatus onDevicePersonalizationUserStatus, Swift::Bool_optional genrePreferenceAvailable, Swift::Bool_optional isReordered, Swift::Int32_optional lockedInCount)
{
  v8 = *onDevicePersonalizationUserStatus;
  *v7 = isEligible;
  *(v7 + 8) = lockedIn;
  *(v7 + 16) = isLocked;
  *(v7 + 17) = v8;
  *(v7 + 18) = genrePreferenceAvailable;
  *(v7 + 19) = isReordered;
  *(v7 + 20) = lockedInCount.value;
  *(v7 + 24) = lockedInCount.is_nil;
  result.lockedIn = lockedIn;
  result.lockedInCount.is_nil = onDevicePersonalizationUserStatus;
  result.isLocked = isLocked;
  result.isEligible = isEligible;
  return result;
}

uint64_t sub_16809C()
{
  v1 = *v0;
  v2 = 0x626967696C457369;
  v3 = 0x6564726F65527369;
  if (v1 != 5)
  {
    v3 = 0x6E4964656B636F6CLL;
  }

  v4 = 0xD000000000000021;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E4964656B636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x64656B636F4C7369;
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

uint64_t sub_16819C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_168B88(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1681C4(uint64_t a1)
{
  v2 = sub_1688C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_168200(uint64_t a1)
{
  v2 = sub_1688C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t OnDevicePersonalizationPropertyData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28AD48, &qword_2042A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - v5;
  v7 = v1[16];
  v18 = v1[17];
  v19 = v7;
  v8 = v1[18];
  v17[2] = v1[19];
  v17[3] = v8;
  v9 = v1[24];
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  sub_48B8(v11, v10);
  sub_1688C0();
  sub_1E1E00();
  v29 = 0;
  v14 = v20;
  sub_1E1CC0();
  if (!v14)
  {
    v15 = v18;
    v28 = 1;
    sub_1E1CD0();
    v27 = 2;
    sub_1E1CC0();
    v26 = v15;
    v25 = 3;
    sub_168914();
    sub_1E1CF0();
    v24 = 4;
    sub_1E1C60();
    v23 = 5;
    sub_1E1C60();
    v22 = 6;
    v21 = v9;
    sub_1E1C90();
  }

  return (*(v4 + 8))(v6, v13);
}

void OnDevicePersonalizationPropertyData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28AD60, &qword_2042A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_48B8(a1, a1[3]);
  sub_1688C0();
  sub_1E1DF0();
  if (!v2)
  {
    v34 = 0;
    v16 = sub_1E1BF0();
    v33 = 1;
    sub_1E1C00();
    v18 = v17;
    v32 = 2;
    v19 = sub_1E1BF0();
    v30 = 3;
    sub_168968();
    sub_1E1C20();
    v20 = v31;
    v29 = 4;
    v26 = sub_1E1B90();
    v28 = 5;
    v21 = sub_1E1B90();
    HIDWORD(v24) = v20;
    v25 = v21;
    v27 = 6;
    v22 = sub_1E1BC0();
    (*(v6 + 8))(v8, v5);
    v35 = BYTE4(v22) & 1;
    *a2 = v16 & 1;
    *(a2 + 8) = v18;
    *(a2 + 16) = v19 & 1;
    *(a2 + 17) = BYTE4(v24);
    v23 = v25;
    *(a2 + 18) = v26;
    *(a2 + 19) = v23;
    *(a2 + 20) = v22;
    *(a2 + 24) = BYTE4(v22) & 1;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

BOOL _s13BookAnalytics35OnDevicePersonalizationPropertyDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1) && ((a1[16] ^ a2[16]) & 1) == 0)
  {
    v10 = a1[18];
    v11 = a1[19];
    v12 = *(a1 + 5);
    v13 = a1[24];
    v14 = a2[18];
    v15 = a2[19];
    v16 = *(a2 + 5);
    v17 = a2[24];
    if ((sub_217AC(a1[17], a2[17], a3, a4, a5, a6, a7, a8) & 1) == 0)
    {
      return 0;
    }

    if (v10 == 2)
    {
      if (v14 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v14 == 2 || ((v14 ^ v10) & 1) != 0)
      {
        return result;
      }
    }

    if (v11 == 2)
    {
      if (v15 != 2)
      {
        return 0;
      }

      goto LABEL_15;
    }

    result = 0;
    if (v15 != 2 && ((v15 ^ v11) & 1) == 0)
    {
LABEL_15:
      if ((v13 & 1) == 0)
      {
        if (v12 == v16)
        {
          v18 = v17;
        }

        else
        {
          v18 = 1;
        }

        return (v18 & 1) == 0;
      }

      return (v17 & 1) != 0;
    }
  }

  return result;
}

unint64_t sub_1688C0()
{
  result = qword_28AD50;
  if (!qword_28AD50)
  {
    result = swift_getWitnessTable(asc_2044A8, &type metadata for OnDevicePersonalizationPropertyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AD50);
  }

  return result;
}

unint64_t sub_168914()
{
  result = qword_28AD58;
  if (!qword_28AD58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnDevicePersonalizationUserStatus, &type metadata for OnDevicePersonalizationUserStatus, v0, v1);
    atomic_store(result, &qword_28AD58);
  }

  return result;
}

unint64_t sub_168968()
{
  result = qword_28AD68;
  if (!qword_28AD68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnDevicePersonalizationUserStatus, &type metadata for OnDevicePersonalizationUserStatus, v0, v1);
    atomic_store(result, &qword_28AD68);
  }

  return result;
}

uint64_t sub_1689C4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_168A18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_168A84()
{
  result = qword_28AD70;
  if (!qword_28AD70)
  {
    result = swift_getWitnessTable(byte_204480, &type metadata for OnDevicePersonalizationPropertyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AD70);
  }

  return result;
}

unint64_t sub_168ADC()
{
  result = qword_28AD78;
  if (!qword_28AD78)
  {
    result = swift_getWitnessTable(a1_9, &type metadata for OnDevicePersonalizationPropertyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AD78);
  }

  return result;
}

unint64_t sub_168B34()
{
  result = qword_28AD80;
  if (!qword_28AD80)
  {
    result = swift_getWitnessTable(byte_204418, &type metadata for OnDevicePersonalizationPropertyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28AD80);
  }

  return result;
}

uint64_t sub_168B88(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x626967696C457369 && a2 == 0xEA0000000000656CLL;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6E4964656B636F6CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x64656B636F4C7369 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = 0x8000000000217090;
    if (a1 == 0xD000000000000021 && 0x8000000000217090 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else
    {
      v13 = 0x80000000002170C0;
      if (a1 == 0xD000000000000018 && 0x80000000002170C0 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 4;
      }

      else
      {
        v14 = 0xEB00000000646572;
        if (a1 == 0x6564726F65527369 && a2 == 0xEB00000000646572 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 5;
        }

        else if (a1 == 0x6E4964656B636F6CLL && a2 == 0xED0000746E756F43)
        {
          0xED0000746E756F43, 0xED0000746E756F43, a3, a4, a5, a6, a7, a8;
          return 6;
        }

        else
        {
          v15 = sub_1E1D30();
          a2, v16, v17, v18, v19, v20, v21, v22;
          if (v15)
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

void __swiftcall ThemesData.init(previousThemeName:themeName:isCustomized:)(BookAnalytics::ThemesData *__return_ptr retstr, Swift::String_optional previousThemeName, Swift::String themeName, Swift::Bool_optional isCustomized)
{
  retstr->previousThemeName = previousThemeName;
  retstr->themeName = themeName;
  retstr->isCustomized = isCustomized;
}

uint64_t sub_168DFC()
{
  v1 = 0x6D614E656D656874;
  if (*v0 != 1)
  {
    v1 = 0x6D6F747375437369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_168E68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_169634(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_168E90(uint64_t a1)
{
  v2 = sub_169424();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_168ECC(uint64_t a1)
{
  v2 = sub_169424();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ThemesData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28AD88, &qword_2044F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  v11 = *(v1 + 32);
  sub_48B8(a1, a1[3]);
  sub_169424();
  sub_1E1E00();
  v14 = 0;
  v8 = v10[3];
  sub_1E1C50();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1E1CB0();
  v12 = 2;
  sub_1E1C60();
  return (*(v4 + 8))(v6, v3);
}

void ThemesData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28AD98, &qword_204500);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53 - v7;
  sub_48B8(a1, a1[3]);
  sub_169424();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
    0, v17, v18, v19, v20, v21, v22, v23;
  }

  else
  {
    v58 = 0;
    v16 = sub_1E1B80();
    v32 = v31;
    v33 = v16;
    v57 = 1;
    v34 = sub_1E1BE0();
    v36 = v35;
    v54 = v34;
    v56 = 2;
    v37 = sub_1E1B90();
    v38 = *(v6 + 8);
    v55 = v37;
    v38(v8, v5);
    *a2 = v33;
    *(a2 + 8) = v32;
    *(a2 + 16) = v54;
    *(a2 + 24) = v36;
    *(a2 + 32) = v55;

    sub_4E48(a1, v39, v40, v41, v42, v43, v44, v45);
    v36, v46, v47, v48, v49, v50, v51, v52;
    v32, v24, v25, v26, v27, v28, v29, v30;
  }
}