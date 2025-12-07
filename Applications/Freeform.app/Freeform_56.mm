void *sub_1008B35B4(void *a1)
{
  v3 = sub_1005B981C(&qword_101A065C8, &qword_101484C50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100020E58(a1, a1[3]);
  sub_1008B4B10();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005070(a1);
  }

  else
  {
    v11 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    v10 = 1;
    sub_100600EA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100005070(a1);
  }

  return v7;
}

uint64_t sub_1008B3790(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6168706C61 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746144626772 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461446B796D63 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F7268636F6E6F6DLL && a2 == 0xEE0061746144656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1008B394C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A06430, &unk_101484138);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1008B2A34();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  LOBYTE(v42) = 0;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v55 = BYTE4(v35) & 1;
  LOBYTE(v36) = 1;
  sub_1008B3DF4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v33 = v42;
  v32 = v43;
  v9 = v44;
  v34 = v45;
  LOBYTE(v36) = 2;
  sub_1008B3E48();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v29 = v9;
  v10 = v43;
  v30 = v42;
  v31 = v44;
  LOBYTE(v36) = 3;
  sub_1008B3E9C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v28 = v10;
  v12 = v42;
  v11 = v43;
  sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
  v56 = 4;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v27 = v53;
  LODWORD(v36) = v35;
  v54 = v55;
  BYTE4(v36) = v55;
  v13 = v12;
  v26 = v12;
  v14 = v33;
  *(&v36 + 1) = v33;
  v15 = v32;
  v16 = v11;
  v25 = v11;
  v17 = v29;
  *&v37 = v32;
  *(&v37 + 1) = v29;
  v18 = v34;
  *&v38 = v34;
  *(&v38 + 1) = v30;
  v19 = v28;
  v20 = v31;
  *&v39 = v28;
  *(&v39 + 1) = v31;
  *&v40 = v13;
  *(&v40 + 1) = v16;
  v41 = v53;
  sub_10074A990(&v36, &v42);
  sub_100005070(a1);
  LODWORD(v42) = v35;
  BYTE4(v42) = v54;
  v43 = v14;
  v44 = v15;
  v45 = v17;
  v46 = v18;
  v47 = v30;
  v48 = v19;
  v49 = v20;
  v50 = v26;
  v51 = v25;
  v52 = v27;
  result = sub_1008B2660(&v42);
  v22 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v22;
  *(a2 + 64) = v40;
  *(a2 + 80) = v41;
  v23 = v37;
  *a2 = v36;
  *(a2 + 16) = v23;
  return result;
}

unint64_t sub_1008B3DF4()
{
  result = qword_101A06438;
  if (!qword_101A06438)
  {
    result = swift_getWitnessTable(byte_101484C10, &type metadata for CRLColorModelRGBData, v0, v1);
    atomic_store(result, &qword_101A06438);
  }

  return result;
}

unint64_t sub_1008B3E48()
{
  result = qword_101A06440;
  if (!qword_101A06440)
  {
    result = swift_getWitnessTable(asc_101484BE8, &type metadata for CRLColorModelCMYKData, v0, v1);
    atomic_store(result, &qword_101A06440);
  }

  return result;
}

unint64_t sub_1008B3E9C()
{
  result = qword_101A06448;
  if (!qword_101A06448)
  {
    result = swift_getWitnessTable(aQ_61, &type metadata for CRLColorModelMonochromeData, v0, v1);
    atomic_store(result, &qword_101A06448);
  }

  return result;
}

unint64_t sub_1008B3EF0()
{
  result = qword_101A06458;
  if (!qword_101A06458)
  {
    result = swift_getWitnessTable(aI_68, &type metadata for CRLColorModelRGBData, v0, v1);
    atomic_store(result, &qword_101A06458);
  }

  return result;
}

unint64_t sub_1008B3F44()
{
  result = qword_101A06460;
  if (!qword_101A06460)
  {
    result = swift_getWitnessTable(byte_101484B70, &type metadata for CRLColorModelCMYKData, v0, v1);
    atomic_store(result, &qword_101A06460);
  }

  return result;
}

unint64_t sub_1008B3F98()
{
  result = qword_101A06468;
  if (!qword_101A06468)
  {
    result = swift_getWitnessTable(byte_101484B48, &type metadata for CRLColorModelMonochromeData, v0, v1);
    atomic_store(result, &qword_101A06468);
  }

  return result;
}

uint64_t sub_1008B3FEC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_1008B4034()
{
  result = qword_101A06470;
  if (!qword_101A06470)
  {
    result = swift_getWitnessTable(byte_101484010, &type metadata for CRLColorModelRGBData.ColorSpace, v0, v1);
    atomic_store(result, &qword_101A06470);
  }

  return result;
}

unint64_t sub_1008B4088()
{
  result = qword_101A06478;
  if (!qword_101A06478)
  {
    result = swift_getWitnessTable(a9_23, &type metadata for CRLColorData, v0, v1);
    atomic_store(result, &qword_101A06478);
  }

  return result;
}

uint64_t sub_1008B410C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1008B4154(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1008B41A8()
{
  result = qword_101A06480;
  if (!qword_101A06480)
  {
    result = swift_getWitnessTable(asc_1014841D8, &type metadata for CRLColorModelRGBData, v0, v1);
    atomic_store(result, &qword_101A06480);
  }

  return result;
}

unint64_t sub_1008B4200()
{
  result = qword_101A06488;
  if (!qword_101A06488)
  {
    result = swift_getWitnessTable(aA_54, &type metadata for CRLColorModelRGBData, v0, v1);
    atomic_store(result, &qword_101A06488);
  }

  return result;
}

unint64_t sub_1008B4258()
{
  result = qword_101A06490;
  if (!qword_101A06490)
  {
    result = swift_getWitnessTable(byte_1014842A0, &type metadata for CRLColorModelRGBData, v0, v1);
    atomic_store(result, &qword_101A06490);
  }

  return result;
}

unint64_t sub_1008B42B8()
{
  result = qword_101A06498;
  if (!qword_101A06498)
  {
    result = swift_getWitnessTable(byte_101484320, &type metadata for CRLColorModelRGBData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A06498);
  }

  return result;
}

unint64_t sub_1008B4310()
{
  result = qword_101A064A0;
  if (!qword_101A064A0)
  {
    result = swift_getWitnessTable(byte_101484438, &type metadata for CRLColorModelRGBData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A064A0);
  }

  return result;
}

unint64_t sub_1008B4368()
{
  result = qword_101A064A8;
  if (!qword_101A064A8)
  {
    result = swift_getWitnessTable(aY_60, &type metadata for CRLColorModelRGBData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A064A8);
  }

  return result;
}

unint64_t sub_1008B43C0()
{
  result = qword_101A064B0;
  if (!qword_101A064B0)
  {
    result = swift_getWitnessTable(byte_101484358, &type metadata for CRLColorModelRGBData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A064B0);
  }

  return result;
}

unint64_t sub_1008B4418()
{
  result = qword_101A064B8;
  if (!qword_101A064B8)
  {
    result = swift_getWitnessTable(aI_69, &type metadata for CRLColorModelRGBData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A064B8);
  }

  return result;
}

unint64_t sub_1008B4470()
{
  result = qword_101A064C0;
  if (!qword_101A064C0)
  {
    result = swift_getWitnessTable(byte_1014843A8, &type metadata for CRLColorModelRGBData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A064C0);
  }

  return result;
}

unint64_t sub_1008B44F8()
{
  result = qword_101A064D8;
  if (!qword_101A064D8)
  {
    result = swift_getWitnessTable(byte_1014842D8, &type metadata for CRLColorModelRGBData, v0, v1);
    atomic_store(result, &qword_101A064D8);
  }

  return result;
}

unint64_t sub_1008B4550()
{
  result = qword_101A064E0;
  if (!qword_101A064E0)
  {
    result = swift_getWitnessTable(a9_25, &type metadata for CRLColorModelCMYKData, v0, v1);
    atomic_store(result, &qword_101A064E0);
  }

  return result;
}

unint64_t sub_1008B45A8()
{
  result = qword_101A064E8;
  if (!qword_101A064E8)
  {
    result = swift_getWitnessTable(aQ_65, &type metadata for CRLColorModelCMYKData, v0, v1);
    atomic_store(result, &qword_101A064E8);
  }

  return result;
}

unint64_t sub_1008B4600()
{
  result = qword_101A064F0;
  if (!qword_101A064F0)
  {
    result = swift_getWitnessTable(byte_101484590, &type metadata for CRLColorModelCMYKData, v0, v1);
    atomic_store(result, &qword_101A064F0);
  }

  return result;
}

unint64_t sub_1008B4660()
{
  result = qword_101A064F8;
  if (!qword_101A064F8)
  {
    result = swift_getWitnessTable(byte_101484610, &type metadata for CRLColorModelCMYKData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A064F8);
  }

  return result;
}

unint64_t sub_1008B46B8()
{
  result = qword_101A06500;
  if (!qword_101A06500)
  {
    result = swift_getWitnessTable(byte_101484728, &type metadata for CRLColorModelCMYKData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A06500);
  }

  return result;
}

unint64_t sub_1008B4710()
{
  result = qword_101A06508;
  if (!qword_101A06508)
  {
    result = swift_getWitnessTable(byte_1014846F0, &type metadata for CRLColorModelCMYKData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A06508);
  }

  return result;
}

unint64_t sub_1008B4768()
{
  result = qword_101A06510;
  if (!qword_101A06510)
  {
    result = swift_getWitnessTable(byte_101484648, &type metadata for CRLColorModelCMYKData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A06510);
  }

  return result;
}

unint64_t sub_1008B47C0()
{
  result = qword_101A06518;
  if (!qword_101A06518)
  {
    result = swift_getWitnessTable(aY_63, &type metadata for CRLColorModelCMYKData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A06518);
  }

  return result;
}

unint64_t sub_1008B4818()
{
  result = qword_101A06520;
  if (!qword_101A06520)
  {
    result = swift_getWitnessTable(byte_101484698, &type metadata for CRLColorModelCMYKData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A06520);
  }

  return result;
}

unint64_t sub_1008B48A0()
{
  result = qword_101A06538;
  if (!qword_101A06538)
  {
    result = swift_getWitnessTable(byte_1014845C8, &type metadata for CRLColorModelCMYKData, v0, v1);
    atomic_store(result, &qword_101A06538);
  }

  return result;
}

unint64_t sub_1008B48F8()
{
  result = qword_101A06540;
  if (!qword_101A06540)
  {
    result = swift_getWitnessTable(aI_70, &type metadata for CRLColorModelMonochromeData, v0, v1);
    atomic_store(result, &qword_101A06540);
  }

  return result;
}

unint64_t sub_1008B4950()
{
  result = qword_101A06548;
  if (!qword_101A06548)
  {
    result = swift_getWitnessTable(aA_55, &type metadata for CRLColorModelMonochromeData, v0, v1);
    atomic_store(result, &qword_101A06548);
  }

  return result;
}

unint64_t sub_1008B49A8()
{
  result = qword_101A06550;
  if (!qword_101A06550)
  {
    result = swift_getWitnessTable(byte_101484880, &type metadata for CRLColorModelMonochromeData, v0, v1);
    atomic_store(result, &qword_101A06550);
  }

  return result;
}

unint64_t sub_1008B4A08()
{
  result = qword_101A06558;
  if (!qword_101A06558)
  {
    result = swift_getWitnessTable(byte_101484900, &type metadata for CRLColorModelMonochromeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A06558);
  }

  return result;
}

unint64_t sub_1008B4A60()
{
  result = qword_101A06560;
  if (!qword_101A06560)
  {
    result = swift_getWitnessTable(byte_101484A18, &type metadata for CRLColorModelMonochromeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A06560);
  }

  return result;
}

unint64_t sub_1008B4AB8()
{
  result = qword_101A06568;
  if (!qword_101A06568)
  {
    result = swift_getWitnessTable(byte_1014849E0, &type metadata for CRLColorModelMonochromeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A06568);
  }

  return result;
}

unint64_t sub_1008B4B10()
{
  result = qword_101A06570;
  if (!qword_101A06570)
  {
    result = swift_getWitnessTable(asc_101484938, &type metadata for CRLColorModelMonochromeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A06570);
  }

  return result;
}

unint64_t sub_1008B4B68()
{
  result = qword_101A06578;
  if (!qword_101A06578)
  {
    result = swift_getWitnessTable(byte_1014849B0, &type metadata for CRLColorModelMonochromeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A06578);
  }

  return result;
}

unint64_t sub_1008B4BC0()
{
  result = qword_101A06580;
  if (!qword_101A06580)
  {
    result = swift_getWitnessTable(byte_101484988, &type metadata for CRLColorModelMonochromeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A06580);
  }

  return result;
}

unint64_t sub_1008B4C48()
{
  result = qword_101A06598;
  if (!qword_101A06598)
  {
    result = swift_getWitnessTable(byte_1014848B8, &type metadata for CRLColorModelMonochromeData, v0, v1);
    atomic_store(result, &qword_101A06598);
  }

  return result;
}

unint64_t sub_1008B4CA0()
{
  result = qword_101A065A0;
  if (!qword_101A065A0)
  {
    result = swift_getWitnessTable(byte_101484B20, &type metadata for CRLColorData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A065A0);
  }

  return result;
}

uint64_t sub_1008B4CF4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_1005C4E5C(&qword_101A065B0, &qword_101484C40);
    v6[0] = &protocol witness table for Int;
    v6[1] = &protocol witness table for Int;
    result = swift_getWitnessTable(a2, v5, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1008B4D64()
{
  result = qword_101A065F0;
  if (!qword_101A065F0)
  {
    result = swift_getWitnessTable(byte_101484A68, &type metadata for CRLColorModelMonochromeData, v0, v1);
    atomic_store(result, &qword_101A065F0);
  }

  return result;
}

unint64_t sub_1008B4DB8()
{
  result = qword_101A065F8;
  if (!qword_101A065F8)
  {
    result = swift_getWitnessTable(byte_101484A40, &type metadata for CRLColorModelMonochromeData, v0, v1);
    atomic_store(result, &qword_101A065F8);
  }

  return result;
}

unint64_t sub_1008B4E0C()
{
  result = qword_101A06600;
  if (!qword_101A06600)
  {
    result = swift_getWitnessTable(aY_62, &type metadata for CRLColorModelCMYKData, v0, v1);
    atomic_store(result, &qword_101A06600);
  }

  return result;
}

unint64_t sub_1008B4E60()
{
  result = qword_101A06608;
  if (!qword_101A06608)
  {
    result = swift_getWitnessTable(byte_101484750, &type metadata for CRLColorModelCMYKData, v0, v1);
    atomic_store(result, &qword_101A06608);
  }

  return result;
}

unint64_t sub_1008B4EB4()
{
  result = qword_101A06610;
  if (!qword_101A06610)
  {
    result = swift_getWitnessTable(aI_67, &type metadata for CRLColorModelRGBData, v0, v1);
    atomic_store(result, &qword_101A06610);
  }

  return result;
}

unint64_t sub_1008B4F08()
{
  result = qword_101A06618;
  if (!qword_101A06618)
  {
    result = swift_getWitnessTable(aY_61, &type metadata for CRLColorModelRGBData, v0, v1);
    atomic_store(result, &qword_101A06618);
  }

  return result;
}

unint64_t sub_1008B4F90()
{
  result = qword_101A06620;
  if (!qword_101A06620)
  {
    result = swift_getWitnessTable(byte_101484CE8, &type metadata for CRLColorModelRGBData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A06620);
  }

  return result;
}

unint64_t sub_1008B4FE8()
{
  result = qword_101A06628;
  if (!qword_101A06628)
  {
    result = swift_getWitnessTable(aQ_66, &type metadata for CRLColorModelCMYKData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A06628);
  }

  return result;
}

unint64_t sub_1008B5040()
{
  result = qword_101A06630;
  if (!qword_101A06630)
  {
    result = swift_getWitnessTable(byte_101484E28, &type metadata for CRLColorModelMonochromeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A06630);
  }

  return result;
}

uint64_t sub_1008B50E4()
{
  v0 = sub_1005B981C(&qword_1019FEA78, &qword_101485080);
  sub_10061655C(v0, qword_101A06678);
  sub_1005EB3DC(v0, qword_101A06678);
  return Button.init(action:label:)();
}

uint64_t sub_1008B5180@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100017CD8();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  LOBYTE(v5) = v9;
  v10 = [objc_opt_self() linkColor];
  Color.init(_:)();
  v11 = Text.foregroundColor(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_10007441C(v6, v8, v5 & 1);

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  return result;
}

void sub_1008B5324(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_1008B53A4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_1008B5418(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_1008B5498(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_1008B551C(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_1008B559C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1008B5610@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1008B568C(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.truncationMode.setter();
}

uint64_t sub_1008B5754@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1008B57B8()
{
  result = qword_101A067E8;
  if (!qword_101A067E8)
  {
    result = swift_getWitnessTable("ɢ8", &type metadata for CRLAppleAccountFeatureFlags, v0, v1);
    atomic_store(result, &qword_101A067E8);
  }

  return result;
}

void *CRLChangeNotifier.publisher<A>(for:phase:)(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectRetain();
  return v1;
}

void *CRLChangeNotifier.publisherForChanges<A>(of:)(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectRetain();
  return v1;
}

Swift::Int CRLChangeNotifier.Phase.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

double sub_1008B59E8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t CRLChangeNotifier.ChangeRecordPublisher.receive<A>(subscriber:)(uint64_t a1, void *a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = _s24ChangeRecordSubscriptionCMa(0, a5, a6, a7);
  v12 = a2;
  sub_1008B59E8(a3, a4 & 1);
  v13 = sub_1008B71B8(v12, a3, a4 & 1, HIBYTE(a4) & 1, a1);

  v15[3] = v11;
  v15[4] = swift_getWitnessTable(byte_101485608, v11);
  v15[0] = v13;
  dispatch thunk of Subscriber.receive(subscription:)();
  return sub_100005070(v15);
}

uint64_t sub_1008B5AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 17))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return CRLChangeNotifier.ChangeRecordPublisher.receive<A>(subscriber:)(a1, *v4, *(v4 + 8), v5 | *(v4 + 16), *(a4 + 16), a2, a3);
}

uint64_t CRLChangeNotifier.ObjectDidChangePublisher.receive<A>(subscriber:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = _s27ObjectDidChangeSubscriptionCMa(0, a4, a5, a6);
  swift_unknownObjectRetain();
  v10 = a2;
  v11 = objc_allocWithZone(v9);
  v12 = sub_1008B6DE0(v10, a3, 0, a1);

  v14[3] = v9;
  v14[4] = swift_getWitnessTable(byte_101485608, v9);
  v14[0] = v12;
  dispatch thunk of Subscriber.receive(subscription:)();
  return sub_100005070(v14);
}

uint64_t sub_1008B5C2C()
{
  v1 = *((swift_isaMask & *v0) + 0x80);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1008B5C8C(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x88);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

double sub_1008B5CBC(uint64_t a1, char a2)
{
  v3 = v2 + *((swift_isaMask & *v2) + 0x90);
  v4 = *v3;
  *v3 = a1;
  v5 = v3[8];
  v3[8] = a2;
  return sub_100095E0C(v4, v5);
}

uint64_t sub_1008B5D00@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x98);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1008B5DC0(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x98);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

void sub_1008B5E88(uint64_t a1)
{
  v2 = v1;
  v25[1] = a1;
  v3 = *v1;
  v4 = swift_isaMask;
  v25[0] = swift_isaMask & v3;
  v5 = *((swift_isaMask & v3) + 0x60);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - v8;
  v10 = *(v5 - 8);
  __chkstk_darwin(v11);
  v13 = v25 - v12;
  v14 = *(v2 + *((v4 & v3) + 0x70));
  os_unfair_lock_lock(*(v14 + 16));
  if (!*(v2 + *((swift_isaMask & *v2) + 0x88)))
  {
    goto LABEL_4;
  }

  sub_1008B5D00(v9);
  if ((*(v10 + 48))(v9, 1, v5) == 1)
  {
    (*(v7 + 8))(v9, v6);
LABEL_4:
    os_unfair_lock_unlock(*(v14 + 16));
    return;
  }

  (*(v10 + 32))(v13, v9, v5);
  v15 = *((swift_isaMask & *v2) + 0x80);
  swift_beginAccess();
  v16 = *(v2 + v15);
  static Subscribers.Demand.unlimited.getter();
  if (static Subscribers.Demand.== infix(_:_:)())
  {
    goto LABEL_8;
  }

  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v16)
  {
LABEL_8:
    v17 = *((swift_isaMask & *v2) + 0x80);
    swift_beginAccess();
    v18 = *(v2 + v17);
    static Subscribers.Demand.unlimited.getter();
    if ((static Subscribers.Demand.== infix(_:_:)() & 1) == 0)
    {
      static Subscribers.Demand.unlimited.getter();
      if (static Subscribers.Demand.== infix(_:_:)())
      {
        v19 = static Subscribers.Demand.unlimited.getter();
      }

      else
      {
        if (v18 < 0)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        if (!v18)
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v19 = v18 - 1;
      }

      *(v2 + v17) = v19;
    }

    swift_endAccess();
  }

  os_unfair_lock_unlock(*(v14 + 16));
  static Subscribers.Demand.unlimited.getter();
  if (static Subscribers.Demand.== infix(_:_:)())
  {
    goto LABEL_19;
  }

  if (v16 < 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v16)
  {
    goto LABEL_32;
  }

LABEL_19:
  os_unfair_recursive_lock_lock_with_options();
  v20 = dispatch thunk of Subscriber.receive(_:)();
  os_unfair_recursive_lock_unlock();
  static Subscribers.Demand.unlimited.getter();
  if (static Subscribers.Demand.== infix(_:_:)())
  {
LABEL_22:
    os_unfair_lock_lock(*(v14 + 16));
    v21 = *((swift_isaMask & *v2) + 0x80);
    swift_beginAccess();
    v22 = *(v2 + v21);
    static Subscribers.Demand.unlimited.getter();
    if (static Subscribers.Demand.== infix(_:_:)())
    {
LABEL_31:
      swift_endAccess();
      os_unfair_lock_unlock(*(v14 + 16));
      goto LABEL_32;
    }

    static Subscribers.Demand.unlimited.getter();
    v23 = static Subscribers.Demand.== infix(_:_:)();
    v24 = static Subscribers.Demand.unlimited.getter();
    if (v23)
    {
LABEL_30:
      *(v2 + v21) = v24;
      goto LABEL_31;
    }

    if (static Subscribers.Demand.== infix(_:_:)())
    {
LABEL_28:
      v24 = static Subscribers.Demand.unlimited.getter();
      goto LABEL_30;
    }

    if (((v22 | v20) & 0x8000000000000000) == 0)
    {
      v24 = v22 + v20;
      if (!__OFADD__(v22, v20))
      {
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

LABEL_40:
        __break(1u);
        return;
      }

      goto LABEL_28;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v20 < 0)
  {
    goto LABEL_36;
  }

  if (v20)
  {
    goto LABEL_22;
  }

LABEL_32:
  (*(v10 + 8))(v13, v5);
}

void sub_1008B62F8(uint64_t a1)
{
  v3 = *(v1 + *((swift_isaMask & *v1) + 0x70));
  os_unfair_lock_lock(*(v3 + 16));
  v4 = *((swift_isaMask & *v1) + 0x80);
  swift_beginAccess();
  v5 = *(v1 + v4);
  static Subscribers.Demand.unlimited.getter();
  if (static Subscribers.Demand.== infix(_:_:)())
  {
    goto LABEL_10;
  }

  static Subscribers.Demand.unlimited.getter();
  v6 = static Subscribers.Demand.== infix(_:_:)();
  v7 = static Subscribers.Demand.unlimited.getter();
  if (v6)
  {
LABEL_9:
    *(v1 + v4) = v7;
LABEL_10:
    swift_endAccess();
    os_unfair_lock_unlock(*(v3 + 16));
    return;
  }

  if (static Subscribers.Demand.== infix(_:_:)())
  {
    goto LABEL_7;
  }

  if ((v5 | a1) < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = v5 + a1;
  if (__OFADD__(v5, a1))
  {
LABEL_7:
    v7 = static Subscribers.Demand.unlimited.getter();
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

void sub_1008B6410()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *((swift_isaMask & *v0) + 0x60);
  v4 = type metadata accessor for Optional();
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = *(v0 + *((v2 & v1) + 0x70));
  os_unfair_lock_lock(*(v7 + 16));
  v8 = *(v0 + *((swift_isaMask & *v0) + 0x88));
  if (!v8 || (v9 = v0 + *((swift_isaMask & *v0) + 0x90), v10 = v9[8], v10 == 255))
  {
    v19 = *(v7 + 16);

    os_unfair_lock_unlock(v19);
  }

  else
  {
    v11 = *v9;
    v12 = v8;
    sub_100095DF4(v11, v10);
    v13 = *((swift_isaMask & *v0) + 0x88);
    v14 = *(v0 + v13);
    *(v0 + v13) = 0;

    v15 = v0 + *((swift_isaMask & *v0) + 0x90);
    v16 = *v15;
    *v15 = 0;
    v17 = v15[8];
    v15[8] = -1;
    v18 = sub_100095E0C(v16, v17);
    (*(*(v3 - 8) + 56))(v6, 1, 1, v3, v18);
    sub_1008B5DC0(v6);
    os_unfair_lock_unlock(*(v7 + 16));
    if (v10)
    {
      [v12 removeObserver:v0 forChangeSourceOfClass:swift_getObjCClassFromMetadata()];
    }

    else
    {
      [v12 removeObserver:v0 forChangeSource:{v11, sub_1008B59E8(v11, 0)}];

      sub_100095E0C(v11, v10);
      sub_100095E0C(v11, v10);
    }
  }
}

id sub_1008B66F4()
{
  v1 = *((swift_isaMask & *v0) + 0x60);
  v4[0] = *((swift_isaMask & *v0) + 0x50);
  v4[1] = v1;
  v2 = _s30BaseChangeNotifierSubscriptionCMa(0, v4);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_1008B676C(char *a1)
{

  v2 = &a1[*((swift_isaMask & *a1) + 0x90)];
  sub_100095E0C(*v2, v2[8]);
  v3 = *((swift_isaMask & *a1) + 0x98);
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);

  return v5(&a1[v3], v4);
}

void sub_1008B68F0(unint64_t a1, uint64_t a2)
{
  if ((*(v2 + *((swift_isaMask & *v2) + 0x138)) & 1) == 0)
  {
    if (a1 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        return;
      }
    }

    if (v5 < 1)
    {
      __break(1u);
    }

    else
    {
      v6 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v7 = *(a1 + 8 * v6 + 32);
        }

        v8 = v7;
        ++v6;
        sub_100064288(a2, v11);
        swift_dynamicCast();
        v10[0] = v10[2];
        v10[1] = v8;
        v9 = v8;
        sub_1008B5E88(v10);
        swift_unknownObjectRelease();
      }

      while (v5 != v6);
    }
  }
}

void sub_1008B6A70(unint64_t a1, uint64_t a2)
{
  if (*(v2 + *((swift_isaMask & *v2) + 0x138)) == 1)
  {
    if (a1 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        return;
      }
    }

    if (v5 < 1)
    {
      __break(1u);
    }

    else
    {
      v6 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v7 = *(a1 + 8 * v6 + 32);
        }

        v8 = v7;
        ++v6;
        sub_100064288(a2, v11);
        swift_dynamicCast();
        v10[0] = v10[2];
        v10[1] = v8;
        v9 = v8;
        sub_1008B5E88(v10);
        swift_unknownObjectRelease();
      }

      while (v5 != v6);
    }
  }
}

uint64_t sub_1008B6BF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *, __n128))
{
  type metadata accessor for CRLChangeRecord();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v8 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  (a5)(v7, v10);

  return sub_100005070(v10);
}

void sub_1008B6C94()
{
  v1 = v0 + *((swift_isaMask & *v0) + 0x90);
  v2 = v1[8];
  if (v2 != 255 && (v2 & 1) == 0)
  {
    v3 = *v1;
    v5 = v3;
    sub_100095DF4(v3, v2);
    sub_1008B59E8(v3, 0);
    if (swift_dynamicCast())
    {
      v5 = v4;
      sub_1008B5E88(&v5);
      sub_100095E0C(v3, v2);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100095E0C(v3, v2);
    }
  }
}

void sub_1008B6D98(void *a1)
{
  v1 = a1;
  sub_1008B6C94();
}

id sub_1008B6DE0(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v34 = a1;
  v35 = a4;
  v41 = a3;
  v6 = *v4;
  v40 = swift_isaMask & *v4;
  v36 = swift_isaMask;
  v37 = v6;
  v7 = v6;
  v8 = *((swift_isaMask & v6) + 0x60);
  v9 = type metadata accessor for Optional();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v33 = &v32 - v10;
  v11 = *((v36 & v7) + 0x70);
  type metadata accessor for CRLUnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = v13;
  atomic_thread_fence(memory_order_acq_rel);
  *&v4[v11] = v12;
  v14 = *((swift_isaMask & *v4) + 0x78);
  type metadata accessor for CRLUnfairRecursiveLock();
  v15 = swift_allocObject();
  v16 = swift_slowAlloc();
  *v16 = 0;
  *(v15 + 16) = v16;
  atomic_thread_fence(memory_order_acq_rel);
  *&v4[v14] = v15;
  v17 = *((swift_isaMask & *v4) + 0x88);
  *&v4[v17] = 0;
  v18 = &v4[*((swift_isaMask & *v4) + 0x90)];
  *v18 = 0;
  v18[8] = -1;
  v19 = *((swift_isaMask & *v4) + 0x98);
  v20 = *(v8 - 8);
  v21 = *(v20 + 56);
  v21(&v4[v19], 1, 1, v8);
  *&v4[*((swift_isaMask & *v4) + 0x80)] = 0;
  v23 = v34;
  v22 = v35;
  *&v4[v17] = v34;
  *v18 = a2;
  LOBYTE(v17) = v41 & 1;
  v18[8] = v41 & 1;
  v24 = a2;
  v25 = v33;
  (*(v20 + 16))(v33, v22, v8);
  v21(v25, 0, 1, v8);
  swift_beginAccess();
  v26 = v23;
  v27 = sub_1008B59E8(v24, v17);
  (*(v38 + 40))(&v4[v19], v25, v39, v27);
  swift_endAccess();
  v28 = *((v36 & v37) + 0x68);
  v42 = *(v40 + 80);
  v43 = v8;
  v44 = v28;
  v29 = _s30BaseChangeNotifierSubscriptionCMa(0, &v42);
  v45.receiver = v4;
  v45.super_class = v29;
  v30 = objc_msgSendSuper2(&v45, "init");
  if (v41)
  {
    [v26 addObserver:v30 forChangeSourceOfClass:swift_getObjCClassFromMetadata()];
  }

  else
  {
    [v26 addObserver:v30 forChangeSource:v24];
    sub_1008B7608(v24, 0);
  }

  return v30;
}

id sub_1008B71B8(void *a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v11[*((swift_isaMask & *v11) + 0x138)] = a4 & 1;
  return sub_1008B6DE0(a1, a2, a3 & 1, a5);
}

unint64_t sub_1008B7260()
{
  result = qword_101A06888[0];
  if (!qword_101A06888[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CRLChangeNotifier.Phase, &type metadata for CRLChangeNotifier.Phase, v0, v1);
    atomic_store(result, qword_101A06888);
  }

  return result;
}

uint64_t sub_1008B72D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 initializeBufferWithCopyOfBuffer for CRLBoardItemType(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1008B732C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1008B7374(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1008B73CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1008B7420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1008B7474(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_1008B7608(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1008B7648()
{
  v1 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  *&v2 = __chkstk_darwin(v1).n128_u64[0];
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_orientationSource + 16))
  {
    if ([v0 info])
    {
      type metadata accessor for CRLUSDZItem(0);
      if (**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
      {
        swift_beginAccess();

        sub_1005B981C(&unk_101A2EF00, qword_101485680);
        CRRegister.wrappedValue.getter();
        swift_endAccess();

        swift_unknownObjectRelease();
        v5 = *&v4[*(v1 + 24)];
        sub_1008BAB18(v4, type metadata accessor for CRLUSDZAssetDataStruct);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

id sub_1008B7804()
{
  result = [v0 layoutController];
  if (result)
  {
    v2 = result;
    v3 = [result canvas];

    if (v3)
    {
      v4 = [v3 canvasController];

      if (v4)
      {
        v5 = [v4 repForLayout:v0];

        if (v5)
        {
          type metadata accessor for CRLUSDZRep(0);
          result = swift_dynamicCastClass();
          if (result)
          {
            return result;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

id sub_1008B78D4(uint64_t a1)
{
  v3 = [v1 layoutController];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 canvas];

  if (!v5)
  {
    return 0;
  }

  [v5 viewScale];
  v7 = v6;

  result = [v1 geometry];
  if (result)
  {
    v9 = result;
    [result size];

    v10 = sub_10011ECB4();
    v14 = [objc_allocWithZone(CRLUSDZImageHitTestManager) initWith:a1 naturalBounds:v10 canvasViewScale:{v11, v12, v13, v7}];
    v15 = OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedHitTestManager;
    v16 = *&v1[OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedHitTestManager];
    *&v1[OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedHitTestManager] = v14;

    v17 = sub_1008B7804();
    if (v17)
    {
      v18 = v17;
      [v17 invalidateKnobs];
    }

    v19 = *&v1[v15];
    v20 = v19;
    return v19;
  }

  __break(1u);
  return result;
}

void sub_1008B7A38()
{
  v1 = v0;
  if ([v0 info])
  {
    type metadata accessor for CRLUSDZItem(0);
    swift_dynamicCastClassUnconditional();
    sub_1007FE430(&v30);
    swift_unknownObjectRelease();
    if (v33)
    {
LABEL_6:
      v29.receiver = v1;
      v29.super_class = type metadata accessor for CRLUSDZLayout();
      objc_msgSendSuper2(&v29, "boundsInRoot");
      return;
    }

    v2 = v30;
    v3 = v31;
    v4 = v32;
    v5 = [v0 geometry];
    if (v5)
    {
      v6 = v5;
      [v5 frame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      sub_100121740(v8, v10, v12, v14, *v2.i64, *&v2.i64[1], v3, v4);
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23 = [v1 parent];
      if (v23)
      {
        v24 = v23;
        [v23 transformInRoot];
        v26 = *&v28.c;
        v27 = *&v28.a;
        v25 = *&v28.tx;

        *&v28.a = v27;
        *&v28.c = v26;
        *&v28.tx = v25;
        v34.origin.x = v16;
        v34.origin.y = v18;
        v34.size.width = v20;
        v34.size.height = v22;
        CGRectApplyAffineTransform(v34, &v28);
        return;
      }

      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1008B7C20()
{
  if ([v0 info])
  {
    type metadata accessor for CRLUSDZItem(0);
    swift_dynamicCastClassUnconditional();
    sub_1007FE430(&v15);
    swift_unknownObjectRelease();
    if (v18)
    {
      v14.receiver = v0;
      v14.super_class = type metadata accessor for CRLUSDZLayout();
      objc_msgSendSuper2(&v14, "alignmentFrame");
      return;
    }

    v1 = v15;
    v2 = v16;
    v3 = v17;
    v4 = [v0 geometry];
    if (v4)
    {
      v5 = v4;
      [v4 frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      sub_100121740(v7, v9, v11, v13, *v1.i64, *&v1.i64[1], v2, v3);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_1008B7E04(void *a1, uint64_t a2, double (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  return v5;
}

void sub_1008B7E68()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v6 - 8);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLAssetData(0);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 info];
  if (!v13)
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  v15 = type metadata accessor for CRLUSDZItem(0);
  v52 = swift_dynamicCastClassUnconditional();
  if (![v1 info])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A2E658)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_8;
  }

  v49 = v15;
  v50 = v5;
  v51 = v3;
  swift_beginAccess();

  sub_1005B981C(&unk_101A2EF00, qword_101485680);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  swift_unknownObjectRelease();
  sub_1008786E0(v8, v12);
  sub_1008BAB18(v8, type metadata accessor for CRLUSDZAssetDataStruct);
  v16 = [v52 store];
  v17 = *&v16[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v17 + 16));
  v18 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v19 = *&v16[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  if (v19)
  {
    v20 = *&v16[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  }

  else
  {
    v47 = type metadata accessor for CRLAssetManager();
    v21 = objc_allocWithZone(v47);
    v46[1] = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
    swift_unknownObjectWeakInit();
    v48 = v1;
    v22 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v23 = swift_allocObject();
    v24 = v16;
    v25 = swift_slowAlloc();
    *v25 = 0;
    *(v23 + 16) = v25;
    atomic_thread_fence(memory_order_acq_rel);
    *&v21[v22] = v23;
    *&v21[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v26 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v21[v26] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v21[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    swift_unknownObjectWeakAssign();
    v55.receiver = v21;
    v55.super_class = v47;
    v27 = objc_msgSendSuper2(&v55, "init");

    v28 = *&v16[v18];
    *&v16[v18] = v27;
    v20 = v27;

    v1 = v48;
    v19 = 0;
  }

  v29 = *(v17 + 16);
  v30 = v19;
  os_unfair_lock_unlock(v29);

  v31 = sub_1011255E0();
  swift_unknownObjectRelease();

  sub_1008BAB18(v12, type metadata accessor for CRLAssetData);
  v32 = *&v31[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
  v33 = *&v31[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
  sub_100020E58(&v31[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v32);
  v14 = v50;
  (*(v33 + 24))(v32, v33);

  if (qword_1019F2878 != -1)
  {
    goto LABEL_18;
  }

LABEL_8:
  sub_1005EB3DC(v2, qword_101AD8F08);
  sub_1008BAB78();
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v51 + 8))(v14, v2);
  if (![v1 info])
  {
LABEL_21:
    __break(1u);
    return;
  }

  swift_dynamicCastClassUnconditional();
  sub_1007FE430(&v56);
  swift_unknownObjectRelease();
  if (v59)
  {
    v35 = sub_1008BA188();
    if (v35 && (v34 & 1) == 0)
    {
      v36 = v35;
      if ([v36 visibleBoundsComputedFromAsset])
      {
        [v36 visibleBounds];

        return;
      }
    }

    v45 = type metadata accessor for CRLUSDZLayout();
    v54.receiver = v1;
    v54.super_class = v45;
    objc_msgSendSuper2(&v54, "boundsForStandardKnobs");
  }

  else
  {
    v38 = v57;
    v37 = v58;
    v39 = v56;
    v40 = type metadata accessor for CRLUSDZLayout();
    v53.receiver = v1;
    v53.super_class = v40;
    objc_msgSendSuper2(&v53, "boundsForStandardKnobs");
    sub_100121740(v41, v42, v43, v44, *v39.i64, *&v39.i64[1], v38, v37);
  }
}

char *sub_1008B855C(void *a1)
{
  v2 = v1;
  result = [v1 info];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  type metadata accessor for CRLUSDZItem(0);
  result = swift_dynamicCastClassUnconditional();
  if (!a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v5 = result;
  [a1 frame];
  v60 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1007FE430(&v62);
  if ((v65 & 1) != 0 || (v14 = v63, v13 = v64, v15 = v62, v67.origin.x = 0.0, v67.origin.y = 0.0, v67.size.width = 0.0, v67.size.height = 0.0, v66.origin = v62, v66.size.width = v63, v66.size.height = v64, CGRectEqualToRect(v66, v67)))
  {
    swift_unknownObjectRelease();
LABEL_6:
    v61.receiver = v2;
    v61.super_class = type metadata accessor for CRLUSDZLayout();
    return objc_msgSendSuper2(&v61, "computeInfoGeometryFromPureLayoutGeometry:", a1);
  }

  v16 = *(**&v5[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

  v18 = v16(v17);

  [v18 boundsBeforeRotation];
  v53 = v14;
  v54 = v13;
  v20 = v19;
  v58 = v21;
  v59 = v19;
  v56 = v8;
  v22 = v21;
  v24 = v23;
  v57 = v23;
  v55 = v12;
  v26 = v25;

  sub_100121740(v20, v22, v24, v26, v15.x, v15.y, v53, v54);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_100121F30(0, v31, v33, v60, v8, v10, v55);
  v36 = v35 / v32;
  v37 = sub_100120414(v28, v30, v32, v34);
  sub_100121FD0(v59, v58, v57, v26, v37, v38, v36);
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = sub_100120414(v60, v56, v10, v55);
  v49 = sub_10011F31C(v47, v48, v37);
  v50 = sub_10011F334(v40, v42, v49);
  v52 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:v50 size:{v51, v44, v46}];
  swift_unknownObjectRelease();
  result = v52;
  if (!v52)
  {
    goto LABEL_6;
  }

  return result;
}

id sub_1008B88B4()
{
  v1 = v0;
  result = [v0 info];
  if (!result)
  {
    __break(1u);
    goto LABEL_44;
  }

  type metadata accessor for CRLUSDZItem(0);
  swift_dynamicCastClassUnconditional();
  sub_1007FDD4C();
  if (!v3)
  {
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  v4 = v3;
  v5 = [objc_opt_self() sharedPool];
  v6 = [v5 providerForAsset:v4 shouldValidate:1];

  swift_unknownObjectRelease();
  if ([v6 isValid] & 1) == 0 || (objc_msgSend(v6, "isError"))
  {
    goto LABEL_19;
  }

  v7 = OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedWrapPath;
  v8 = *&v1[OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedWrapPath];
  if (v8)
  {
    v9 = v8;
    if (([v9 isEmpty] & 1) == 0)
    {
      v10 = *&v1[OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedPosterImageDataHashForWrapPath];
      v11 = [v6 imageData];
      v12 = [v11 hash];

      if (v10 == v12)
      {
        [v9 copy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100006370(0, &qword_101A02480, off_10182F728);
        if (swift_dynamicCast())
        {
          v13 = v104.i64[0];

          goto LABEL_39;
        }

        v100 = objc_opt_self();
        v40 = [v100 _atomicIncrementAssertCount];
        v104.i64[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v104, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("computeWrapPath()", 17, 2);
        v97 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZLayout.swift", 84, 2);
        v41 = String._bridgeToObjectiveC()();

        v42 = [v41 lastPathComponent];

        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v44;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v95 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v40;
        v46 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(inited + 96) = v46;
        v47 = sub_1005CF04C();
        *(inited + 104) = v47;
        *(inited + 72) = v97;
        *(inited + 136) = &type metadata for String;
        v48 = sub_1000053B0();
        *(inited + 112) = v43;
        *(inited + 120) = v93;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v48;
        *(inited + 152) = 292;
        v49 = v104.i64[0];
        *(inited + 216) = v46;
        *(inited + 224) = v47;
        *(inited + 192) = v49;
        v50 = v97;
        v51 = v49;
        v52 = static os_log_type_t.error.getter();
        sub_100005404(v95, &_mh_execute_header, v52, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v53 = static os_log_type_t.error.getter();
        sub_100005404(v95, &_mh_execute_header, v53, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v54 = swift_allocObject();
        v54[2] = 8;
        v54[3] = 0;
        v54[4] = 0;
        v54[5] = 0;
        v98 = __VaListBuilder.va_list()();
        StaticString.description.getter("computeWrapPath()", 17, 2);
        v55 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZLayout.swift", 84, 2);
        v56 = String._bridgeToObjectiveC()();

        StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
        v57 = String._bridgeToObjectiveC()();

        [v100 handleFailureInFunction:v55 file:v56 lineNumber:292 isFatal:0 format:v57 args:v98];

LABEL_20:
        result = [v1 info];
        if (result)
        {
          swift_dynamicCastClassUnconditional();
          sub_1007FE430(&v104);
          swift_unknownObjectRelease();
          if (v107)
          {
            v103.receiver = v1;
            v103.super_class = type metadata accessor for CRLUSDZLayout();
            v13 = objc_msgSendSuper2(&v103, "computeWrapPath");
            if (v13)
            {
              return v13;
            }

            __break(1u);
          }

          v18 = v104;
          v19 = v105;
          v20 = v106;
          result = [v1 geometry];
          if (result)
          {
            v21 = result;
            [result frame];
            v23 = v22;
            v25 = v24;
            v27 = v26;
            v29 = v28;

            sub_100121740(v23, v25, v27, v29, *v18.i64, *&v18.i64[1], v19, v20);
            result = [objc_opt_self() bezierPathWithRect:{v30, v31, v32, v33}];
            if (result)
            {
              v6 = result;
              result = [v1 geometry];
              if (result)
              {
                v34 = result;
                [result frame];
                v36 = v35;

                result = [v1 geometry];
                if (result)
                {
                  v37 = result;
                  [result frame];
                  v39 = v38;

                  CGAffineTransformMakeTranslation(&v102, -v36, -v39);
                  [v6 transformUsingAffineTransform:&v102];
                  v13 = v6;
LABEL_29:

                  return v13;
                }

                goto LABEL_48;
              }

LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }
  }

  result = [v1 info];
  if (!result)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  swift_dynamicCastClassUnconditional();
  sub_1007FD9AC();
  v13 = v14;
  swift_unknownObjectRelease();
  if (!v13)
  {
LABEL_19:

    goto LABEL_20;
  }

  if (([v13 isEmpty] & 1) != 0 || (objc_msgSend(v6, "naturalSize"), v15 <= 0.0) || (objc_msgSend(v6, "naturalSize"), v16 <= 0.0))
  {

    goto LABEL_20;
  }

  [v13 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &qword_101A02480, off_10182F728);
  if (swift_dynamicCast())
  {
    v17 = v104.i64[0];
  }

  else
  {
    v101 = objc_opt_self();
    v58 = [v101 _atomicIncrementAssertCount];
    v104.i64[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v104, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("computeWrapPath()", 17, 2);
    v99 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZLayout.swift", 84, 2);
    v59 = String._bridgeToObjectiveC()();

    v60 = [v59 lastPathComponent];

    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v96 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v63 = swift_initStackObject();
    *(v63 + 16) = xmmword_10146CA70;
    *(v63 + 56) = &type metadata for Int32;
    *(v63 + 64) = &protocol witness table for Int32;
    *(v63 + 32) = v58;
    v64 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v63 + 96) = v64;
    v65 = sub_1005CF04C();
    *(v63 + 104) = v65;
    *(v63 + 72) = v99;
    *(v63 + 136) = &type metadata for String;
    v66 = sub_1000053B0();
    *(v63 + 112) = v94;
    *(v63 + 120) = v62;
    *(v63 + 176) = &type metadata for UInt;
    *(v63 + 184) = &protocol witness table for UInt;
    *(v63 + 144) = v66;
    *(v63 + 152) = 295;
    v67 = v104.i64[0];
    *(v63 + 216) = v64;
    *(v63 + 224) = v65;
    *(v63 + 192) = v67;
    v68 = v99;
    v69 = v67;
    v70 = static os_log_type_t.error.getter();
    sub_100005404(v96, &_mh_execute_header, v70, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v63);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v71 = static os_log_type_t.error.getter();
    sub_100005404(v96, &_mh_execute_header, v71, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v72 = swift_allocObject();
    v72[2] = 8;
    v72[3] = 0;
    v72[4] = 0;
    v72[5] = 0;
    v73 = __VaListBuilder.va_list()();
    StaticString.description.getter("computeWrapPath()", 17, 2);
    v74 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZLayout.swift", 84, 2);
    v75 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v76 = String._bridgeToObjectiveC()();

    [v101 handleFailureInFunction:v74 file:v75 lineNumber:295 isFatal:0 format:v76 args:v73];

    v17 = 0;
  }

  v77 = *&v1[v7];
  *&v1[v7] = v17;

  v78 = [v6 imageData];
  v79 = [v78 hash];

  *&v1[OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedPosterImageDataHashForWrapPath] = v79;
  [v6 naturalSize];
  v80 = &v1[OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedImageNaturalSize];
  *v80 = v81;
  *(v80 + 1) = v82;
  v80[16] = 0;
LABEL_39:
  v83 = &v1[OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedImageNaturalSize];
  if (v1[OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedImageNaturalSize + 16])
  {
    goto LABEL_29;
  }

  v84 = *v83;
  v85 = v83[1];
  v13 = v13;
  result = [v1 geometry];
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v86 = result;
  [result size];
  v88 = v87;

  result = [v1 geometry];
  if (result)
  {
    v89 = result;
    v90 = v88 / v84;
    [result size];
    v92 = v91;

    CGAffineTransformMakeScale(&v102, v90, v92 / v85);
    [v13 transformUsingAffineTransform:&v102];

    goto LABEL_29;
  }

LABEL_51:
  __break(1u);
  return result;
}

char *sub_1008B9664()
{
  v1 = v0;
  v2 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  *&v3 = __chkstk_darwin(v2).n128_u64[0];
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 info];
  if (result)
  {
    type metadata accessor for CRLUSDZItem(0);
    result = swift_dynamicCastClassUnconditional();
    if (**&result[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_101A2E658)
    {
      swift_beginAccess();

      sub_1005B981C(&unk_101A2EF00, qword_101485680);
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      swift_unknownObjectRelease();
      v7 = &v5[*(v2 + 24)];
      v9 = *v7;
      v8 = *(v7 + 1);
      result = sub_1008BAB18(v5, type metadata accessor for CRLUSDZAssetDataStruct);
      v10 = &v1[OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_orientationSource];
      *v10 = v9;
      *(v10 + 1) = v8;
      v10[16] = 0;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1008B9810(__n128 a1)
{
  v2 = (v1 + OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_orientationSource);
  if (*(v1 + OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_orientationSource + 16))
  {
    v3 = objc_opt_self();
    v4 = [v3 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28, "Unexpected dynamic pose change.", 31, 2u);
    StaticString.description.getter("dynamicPoseChangeDidUpdateToValue(_:)", 37, 2);
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZLayout.swift", 84, 2);
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v4;
    v13 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v13;
    v14 = sub_1005CF04C();
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 339;
    v16 = v28;
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "Unexpected dynamic pose change.", 31, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter("dynamicPoseChangeDidUpdateToValue(_:)", 37, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZLayout.swift", 84, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unexpected dynamic pose change.", 31, 2);
    v25 = String._bridgeToObjectiveC()();

    [v3 handleFailureInFunction:v23 file:v24 lineNumber:339 isFatal:0 format:v25 args:v22];
  }

  else
  {
    *v2 = a1;
    v2[1].n128_u8[0] = 0;
    v26 = sub_1008B7804();
    if (v26)
    {
      v27 = v26;
      [v26 processChangedProperty:54];
    }
  }
}

void sub_1008B9C14()
{
  v1 = v0 + OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_orientationSource;
  if (*(v0 + OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_orientationSource + 16))
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v25 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v25, "Unexpected dynamic pose end.", 28, 2u);
    StaticString.description.getter("dynamicPoseChangeDidEnd()", 25, 2);
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZLayout.swift", 84, 2);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v12;
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 350;
    v15 = v25;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Unexpected dynamic pose end.", 28, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter("dynamicPoseChangeDidEnd()", 25, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZLayout.swift", 84, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unexpected dynamic pose end.", 28, 2);
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:350 isFatal:0 format:v24 args:v21];
  }

  else
  {
    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 16) = 1;
  }
}

id sub_1008B9FCC(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_orientationSource];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedWrapPath] = 0;
  v4 = &v1[OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedImageNaturalSize];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedPosterImageDataHashForWrapPath;
  *&v1[v5] = NSNotFound.getter();
  *&v1[OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedHitTestManager] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CRLUSDZLayout();
  v6 = objc_msgSendSuper2(&v8, "initWithInfo:", a1);
  swift_unknownObjectRelease();
  if (v6)
  {
  }

  return v6;
}

id sub_1008BA0C0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLUSDZLayout();
  return objc_msgSendSuper2(&v3, "dealloc");
}

__n128 initializeWithCopy for CRLUSDZLayout.OrientationSource(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

char *sub_1008BA188()
{
  v70 = sub_1005B981C(&unk_101A0AFE0, &unk_10146F3C0);
  __chkstk_darwin(v70);
  v71 = &v64 - v1;
  v2 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v2 - 8);
  v69 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v64 - v5;
  __chkstk_darwin(v7);
  v73 = &v64 - v8;
  v9 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v9);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v12 - 8);
  v14 = &v64 - v13;
  v15 = type metadata accessor for UUID();
  v75 = *(v15 - 8);
  __chkstk_darwin(v15);
  v68 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v64 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v64 - v22;
  v74 = v0;
  result = [v0 info];
  if (!result)
  {
    goto LABEL_27;
  }

  v25 = type metadata accessor for CRLUSDZItem(0);
  result = swift_dynamicCastClassUnconditional();
  if (**&result[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] != &off_101A2E658)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v72 = v25;
  swift_beginAccess();

  sub_1005B981C(&unk_101A2EF00, qword_101485680);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  swift_unknownObjectRelease();
  sub_10000BE14(&v11[*(v9 + 20)], v14, &unk_101A1B880, &unk_10147AB00);
  sub_1008BAB18(v11, type metadata accessor for CRLUSDZAssetDataStruct);
  v26 = type metadata accessor for CRLAssetData(0);
  if ((*(*(v26 - 8) + 48))(v14, 1, v26) == 1)
  {
    sub_10000CAAC(v14, &unk_101A1B880, &unk_10147AB00);
    v27 = &v74[OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedHitTestManager];
    return *v27;
  }

  v28 = v75;
  v29 = *(v75 + 16);
  v29(v19, v14, v15);
  sub_1008BAB18(v14, type metadata accessor for CRLAssetData);
  v30 = *(v28 + 32);
  v30(v23, v19, v15);
  v31 = v74;
  v67 = &v74[OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedHitTestManager];
  v32 = *&v74[OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedHitTestManager];
  if (v32)
  {
    v33 = v23;
    v34 = v73;
    v65 = v30;
    v66 = v33;
    (v29)(v73);
    v35 = *(v75 + 56);
    v35(v34, 0, 1, v15);
    v36 = [v32 imageAsset];
    v37 = *&v36[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v38 = *&v36[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v36[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v37);
    (*(v38 + 24))(v37, v38);

    v35(v6, 0, 1, v15);
    v39 = v71;
    v40 = *(v70 + 48);
    sub_10000BE14(v34, v71, &qword_1019F6990, &qword_10146D2F0);
    sub_10000BE14(v6, v39 + v40, &qword_1019F6990, &qword_10146D2F0);
    v41 = *(v75 + 48);
    if (v41(v39, 1, v15) == 1)
    {
      sub_10000CAAC(v6, &qword_1019F6990, &qword_10146D2F0);
      sub_10000CAAC(v34, &qword_1019F6990, &qword_10146D2F0);
      v42 = v41(v39 + v40, 1, v15);
      v23 = v66;
      if (v42 == 1)
      {
        sub_10000CAAC(v39, &qword_1019F6990, &qword_10146D2F0);
        (*(v75 + 8))(v23, v15);
LABEL_23:
        v27 = v67;
        return *v27;
      }

      goto LABEL_11;
    }

    v43 = v69;
    sub_10000BE14(v39, v69, &qword_1019F6990, &qword_10146D2F0);
    if (v41(v39 + v40, 1, v15) == 1)
    {
      sub_10000CAAC(v6, &qword_1019F6990, &qword_10146D2F0);
      sub_10000CAAC(v73, &qword_1019F6990, &qword_10146D2F0);
      (*(v75 + 8))(v43, v15);
      v23 = v66;
LABEL_11:
      sub_10000CAAC(v39, &unk_101A0AFE0, &unk_10146F3C0);
      v31 = v74;
      goto LABEL_12;
    }

    v60 = v39 + v40;
    v61 = v68;
    v65(v68, v60, v15);
    sub_1008BAB78();
    v62 = dispatch thunk of static Equatable.== infix(_:_:)();
    v63 = *(v75 + 8);
    v63(v61, v15);
    sub_10000CAAC(v6, &qword_1019F6990, &qword_10146D2F0);
    sub_10000CAAC(v73, &qword_1019F6990, &qword_10146D2F0);
    v63(v43, v15);
    sub_10000CAAC(v39, &qword_1019F6990, &qword_10146D2F0);
    v31 = v74;
    v23 = v66;
    if (v62)
    {
      v63(v66, v15);
      goto LABEL_23;
    }
  }

LABEL_12:
  result = [v31 info];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  swift_dynamicCastClassUnconditional();
  sub_1007FDD4C();
  v45 = v44;
  swift_unknownObjectRelease();
  if (!v45)
  {
LABEL_20:
    (*(v75 + 8))(v23, v15);
    v27 = v67;
    return *v27;
  }

  v46 = [v31 layoutController];
  if (!v46 || (v47 = v46, v48 = [v46 canvas], v47, !v48))
  {

    goto LABEL_20;
  }

  [v48 viewScale];
  v50 = v49;

  result = [v31 geometry];
  if (result)
  {
    v51 = result;
    [result size];

    v52 = sub_10011ECB4();
    v56 = [objc_allocWithZone(CRLUSDZImageHitTestManager) initWith:v45 naturalBounds:v52 canvasViewScale:{v53, v54, v55, v50}];
    v27 = v67;
    v57 = *v67;
    *v67 = v56;

    v58 = sub_1008B7804();
    if (v58)
    {
      v59 = v58;
      [v58 invalidateKnobs];

      (*(v75 + 8))(v23, v15);
    }

    else
    {
      (*(v75 + 8))(v23, v15);
    }

    return *v27;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1008BAB18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1008BAB78()
{
  result = qword_1019F37C0;
  if (!qword_1019F37C0)
  {
    v3 = type metadata accessor for UUID();
    result = swift_getWitnessTable(&protocol conformance descriptor for UUID, v3, v0, v1);
    atomic_store(result, &qword_1019F37C0);
  }

  return result;
}

id sub_1008BABD0()
{
  result = [objc_allocWithZone(type metadata accessor for CRLiOSPrintCoordinator(0)) init];
  qword_101AD6B18 = result;
  return result;
}

void sub_1008BAC04(char a1)
{
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 dictionaryForKey:v5];

  if (v6)
  {
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_10007941C(v7);
  }

  else
  {
    v9 = [v1 dictionaryRepresentation];
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v17 = v8;
  v14[0] = a1 & 1;
  v15 = &type metadata for Bool;
  *&v16[0] = 0x656353746E697270;
  *(&v16[0] + 1) = 0xEB0000000073656ELL;
  AnyHashable.init<A>(_:)();
  sub_1008BC8C4(v14, v13, v16);
  sub_100064234(v13);
  sub_10000CAAC(v16, &unk_1019F4D00, &unk_10146E7F0);
  v10 = [v3 standardUserDefaults];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = String._bridgeToObjectiveC()();
  [v10 setObject:isa forKey:v12];
}

void sub_1008BAE3C()
{
  v1 = [v0 dictionaryRepresentation];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v10 = 0x656353746E697270;
  *(&v10 + 1) = 0xEB0000000073656ELL;
  AnyHashable.init<A>(_:)();
  v11 = &type metadata for Bool;
  LOBYTE(v10) = sub_1008BCCEC() & 1;
  sub_10000BF3C(&v10, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100A9B628(v9, v12, isUniquelyReferenced_nonNull_native);
  sub_100064234(v12);
  *&v10 = 0xD00000000000001ALL;
  *(&v10 + 1) = 0x8000000101574130;
  AnyHashable.init<A>(_:)();
  v4 = sub_1008BCE2C();
  v11 = &type metadata for Bool;
  LOBYTE(v10) = v4 & 1;
  sub_10000BF3C(&v10, v9);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_100A9B628(v9, v12, v5);
  sub_100064234(v12);
  v6 = [objc_opt_self() standardUserDefaults];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = String._bridgeToObjectiveC()();
  [v6 setObject:isa forKey:v8];
}

uint64_t sub_1008BB05C()
{
  v1[6] = v0;
  sub_1005B981C(&qword_101A06CE8, &qword_101485738);
  v1[7] = swift_task_alloc();
  v1[8] = type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v3;
  v1[11] = v2;

  return _swift_task_switch(sub_1008BB130, v3, v2);
}

uint64_t sub_1008BB130(uint64_t a1)
{
  v2 = v1[6];
  if (*(v2 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_printInteractionController))
  {
    v3 = static MainActor.shared.getter();
    v1[12] = v3;
    v4 = swift_task_alloc();
    v1[13] = v4;
    *(v4 + 16) = v2;
    v5 = swift_task_alloc();
    v1[14] = v5;
    v6 = sub_1005B981C(&unk_101A06CF0, &unk_101485740);
    *v5 = v1;
    v5[1] = sub_1008BB2A8;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 5, v3, &protocol witness table for MainActor, 0xD00000000000001ELL, 0x8000000101574150, sub_1008BE44C, v4, v6);
  }

  else
  {

    v7 = v1[1];

    return v7(0);
  }
}

uint64_t sub_1008BB2A8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1008BB4C8;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1008BB3CC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1008BB3CC()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[5];
  v4 = sub_1005B981C(&qword_101A06C70, &qword_101485708);
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_printInteractionContinuation;
  swift_beginAccess();
  sub_1008BE454(v1, v2 + v5);
  swift_endAccess();

  v6 = v0[1];

  return v6(v3);
}

uint64_t sub_1008BB4C8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1008BB554(uint64_t a1, char *a2)
{
  v4 = sub_1005B981C(&qword_101A06CE8, &qword_101485738);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  v7 = sub_1005B981C(&qword_101A06C70, &qword_101485708);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_printInteractionContinuation;
  swift_beginAccess();
  sub_1008BE454(v6, &a2[v9]);
  swift_endAccess();
  v10 = *&a2[OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_printInteractionController];
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    aBlock[4] = sub_1008BE4C4;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_1008BBD7C;
    aBlock[3] = &unk_10188BAB8;
    v12 = _Block_copy(aBlock);
    v13 = v10;
    v14 = a2;

    [v13 presentAnimated:1 completionHandler:v12];
    _Block_release(v12);
  }
}

void sub_1008BB754(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1005B981C(&qword_101A06C70, &qword_101485708);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v42 - v9;
  v11 = sub_1005B981C(&qword_101A06CE8, &qword_101485738);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  if (*(a4 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_didResume))
  {
    v17 = objc_opt_self();
    v18 = [v17 _atomicIncrementAssertCount];
    v45 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v45, "Completion handler called twice. See 100236782.", 47, 2u);
    StaticString.description.getter("presentInteractionController()", 30, 2);
    v19 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSPrintCoordinator.swift", 90, 2);
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v25 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v18;
    v27 = sub_1005CF000();
    *(inited + 96) = v27;
    v28 = sub_1005CF04C();
    *(inited + 104) = v28;
    *(inited + 72) = v19;
    *(inited + 136) = &type metadata for String;
    v29 = sub_1000053B0();
    *(inited + 112) = v22;
    *(inited + 120) = v24;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v29;
    *(inited + 152) = 125;
    v30 = v45;
    *(inited + 216) = v27;
    *(inited + 224) = v28;
    *(inited + 192) = v30;
    v31 = v19;
    v32 = v30;
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v34, "Completion handler called twice. See 100236782.", 47, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v35 = swift_allocObject();
    v35[2] = 8;
    v35[3] = 0;
    v35[4] = 0;
    v35[5] = 0;
    v36 = __VaListBuilder.va_list()();
    StaticString.description.getter("presentInteractionController()", 30, 2);
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSPrintCoordinator.swift", 90, 2);
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Completion handler called twice. See 100236782.", 47, 2);
    v39 = String._bridgeToObjectiveC()();

    [v17 handleFailureInFunction:v37 file:v38 lineNumber:125 isFatal:0 format:v39 args:v36];
  }

  else
  {
    v43 = a1;
    *(a4 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_didResume) = 1;
    v40 = OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_printInteractionContinuation;
    v41 = (v8 + 48);
    if (a3)
    {
      swift_beginAccess();
      sub_1008BE4CC(a4 + v40, v13);
      if ((*v41)(v13, 1, v7))
      {
        sub_10000CAAC(v13, &qword_101A06CE8, &qword_101485738);
        return;
      }

      (*(v8 + 16))(v10, v13, v7);
      sub_10000CAAC(v13, &qword_101A06CE8, &qword_101485738);
      v44 = a3;
      swift_errorRetain();
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      swift_beginAccess();
      sub_1008BE4CC(a4 + v40, v16);
      if ((*v41)(v16, 1, v7))
      {
        sub_10000CAAC(v16, &qword_101A06CE8, &qword_101485738);
        return;
      }

      (*(v8 + 16))(v10, v16, v7);
      sub_10000CAAC(v16, &qword_101A06CE8, &qword_101485738);
      v44 = [v43 printInfo];
      CheckedContinuation.resume(returning:)();
    }

    (*(v8 + 8))(v10, v7);
  }
}

void sub_1008BBD7C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(v9, a3, a4);
}

id sub_1008BBE10()
{
  *&v0[OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_boardActor] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_parentViewController] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_scenes] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_printOptionsViewController] = 0;
  v1 = &v0[OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_deviceWindowSize];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  v1[32] = 1;
  v0[OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_defaultToPrintScenes] = 0;
  v0[OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_isPresenting] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_printInteractionController] = 0;
  v0[OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_didResume] = 0;
  v2 = OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_printInteractionContinuation;
  v3 = sub_1005B981C(&qword_101A06C70, &qword_101485708);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CRLiOSPrintCoordinator(0);
  return objc_msgSendSuper2(&v5, "init");
}

id sub_1008BBF44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSPrintCoordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLiOSPrintCoordinator(uint64_t a1)
{
  result = qword_101A06C58;
  if (!qword_101A06C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008BC060(uint64_t a1)
{
  sub_1008BC11C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1008BC11C(uint64_t a1)
{
  if (!qword_101A06C68)
  {
    sub_1005C4E5C(&qword_101A06C70, &qword_101485708);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_101A06C68);
    }
  }
}

uint64_t sub_1008BC200()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_scenes);
  if (!v1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      return 0;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_printOptionsViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_printOptionsViewController);
    v4 = v2;
    return v3;
  }

  return 0;
}

void sub_1008BC2B0(char a1)
{
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 dictionaryForKey:v5];

  if (v6)
  {
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_10007941C(v7);
  }

  else
  {
    v9 = [v1 dictionaryRepresentation];
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  *&v15 = 0xD00000000000001ALL;
  *(&v15 + 1) = 0x8000000101574130;
  AnyHashable.init<A>(_:)();
  v16 = &type metadata for Bool;
  LOBYTE(v15) = a1 & 1;
  sub_10000BF3C(&v15, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100A9B628(v14, v17, isUniquelyReferenced_nonNull_native);
  sub_100064234(v17);
  v11 = [v3 standardUserDefaults];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = String._bridgeToObjectiveC()();
  [v11 setObject:isa forKey:v13];
}

uint64_t sub_1008BC4EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  v29 = v14;
  v15 = sub_10003E994(a2);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v16;
  if (v14[3] < v20)
  {
    sub_100A8A7C4(v20, isUniquelyReferenced_nonNull_native);
    v15 = sub_10003E994(a2);
    if ((v4 & 1) == (v21 & 1))
    {
      goto LABEL_6;
    }

    v15 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v26 = v15;
    sub_100AA4CB8();
    v15 = v26;
    v22 = v29;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v27 = v15;
    (*(v10 + 16))(v12, a2, v9);
    sub_100AA2480(v27, v12, a1, v22);
    result = (*(v10 + 56))(a3, 1, 1, v9);
    goto LABEL_11;
  }

LABEL_6:
  v22 = v29;
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v23 = *(v10 + 72) * v15;
  v24 = *(v10 + 32);
  v24(a3, v22[7] + v23, v9);
  v24(v22[7] + v23, a1, v9);
  result = (*(v10 + 56))(a3, 0, 1, v9);
LABEL_11:
  *v5 = v22;
  return result;
}

uint64_t sub_1008BC70C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v27 = v12;
  v13 = sub_10003E994(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v14;
  if (*(v12 + 24) < v18)
  {
    sub_100A8DDD0(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_10003E994(a2);
    if ((v3 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v23 = v13;
    sub_100AA7394();
    v13 = v23;
    v20 = v27;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    v24 = v13;
    (*(v8 + 16))(v10, a2, v7);
    sub_100AB035C(v24, v10, a1, v20);
    v22 = 0;
    goto LABEL_11;
  }

LABEL_6:
  v20 = v27;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = *(v20 + 56);
  v22 = *(v21 + 8 * v13);
  *(v21 + 8 * v13) = a1;
LABEL_11:
  *v4 = v20;
  return v22;
}

_OWORD *sub_1008BC8C4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v24 = v10;
  v11 = sub_1000640CC(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_100A89B10(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_1000640CC(a2);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = v11;
    sub_100AA4728();
    v11 = v21;
    v18 = v24;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v22 = v11;
    sub_100064110(a2, v23);
    result = sub_100AA23C0(v22, v23, a1, v18);
    *a3 = 0u;
    a3[1] = 0u;
    goto LABEL_11;
  }

LABEL_6:
  v18 = v24;
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = 32 * v11;
  sub_10000BF3C((v18[7] + 32 * v11), a3);
  result = sub_10000BF3C(a1, (v18[7] + v19));
LABEL_11:
  *v5 = v18;
  return result;
}

id sub_1008BCA0C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dictionaryForKey:v1];

  if (v2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10007941C(v3);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = [objc_opt_self() printInfoWithDictionary:isa];

    return v5;
  }

  else
  {
    v7 = [objc_opt_self() printInfo];

    return v7;
  }
}

uint64_t sub_1008BCB74(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008BCC10, v6, v5);
}

uint64_t sub_1008BCC10()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = sub_1008BCA0C();
  [v3 setOrientation:{v2 / v1 > 1.0, v2 / v1}];
  v4 = String._bridgeToObjectiveC()();
  [v3 setJobName:v4];

  [v3 setPrinterID:0];
  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t sub_1008BCCEC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dictionaryForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v3 + 16) || (v4 = sub_10000BE7C(0x656353746E697270, 0xEB0000000073656ELL), (v5 & 1) == 0))
  {

    return 0;
  }

  sub_100064288(*(v3 + 56) + 32 * v4, v8);

  result = swift_dynamicCast();
  if (result)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1008BCE2C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dictionaryForKey:v1];

  if (v2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v3 + 16) && (v4 = sub_10000BE7C(0xD00000000000001ALL, 0x8000000101574130), (v5 & 1) != 0))
    {
      sub_100064288(*(v3 + 56) + 32 * v4, v8);

      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {
    }
  }

  return 1;
}

uint64_t sub_1008BCF6C()
{
  v1[114] = v0;
  v1[115] = type metadata accessor for CRLBoardCRDTData(0);
  v1[116] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[117] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[118] = v3;
  v1[119] = v2;

  return _swift_task_switch(sub_1008BD038, v3, v2);
}

uint64_t sub_1008BD038()
{
  v29 = v0;
  v1 = v0[114];
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_boardActor);
  v0[120] = v2;
  if (v2 && *(v1 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_parentViewController))
  {
    *(v1 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_isPresenting) = 1;

    return _swift_task_switch(sub_1008BD4A4, v2, 0);
  }

  else
  {

    v3 = objc_opt_self();
    v4 = [v3 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    StaticString.description.getter("present(animated:)", 18, 2);
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSPrintCoordinator.swift", 90, 2);
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10146CA70;
    *(v12 + 56) = &type metadata for Int32;
    *(v12 + 64) = &protocol witness table for Int32;
    *(v12 + 32) = v4;
    v13 = sub_1005CF000();
    *(v12 + 96) = v13;
    v14 = sub_1005CF04C();
    *(v12 + 104) = v14;
    *(v12 + 72) = v5;
    *(v12 + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(v12 + 112) = v8;
    *(v12 + 120) = v10;
    *(v12 + 176) = &type metadata for UInt;
    *(v12 + 184) = &protocol witness table for UInt;
    *(v12 + 144) = v15;
    *(v12 + 152) = 36;
    v16 = v28;
    *(v12 + 216) = v13;
    *(v12 + 224) = v14;
    *(v12 + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v12);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v20 = static os_log_type_t.error.getter();

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter("present(animated:)", 18, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSPrintCoordinator.swift", 90, 2);
    v24 = String._bridgeToObjectiveC()();

    v25 = String._bridgeToObjectiveC()();

    [v3 handleFailureInFunction:v23 file:v24 lineNumber:36 isFatal:0 format:v25 args:v22];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_1008BD4A4()
{
  v1 = *(v0 + 960);
  type metadata accessor for CRLImmutableBoard(0);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store);
  v3 = OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier;
  v4 = swift_task_alloc();
  *(v0 + 968) = v4;
  *v4 = v0;
  v4[1] = sub_1008BD56C;

  return sub_100797820(v2, v1 + v3, 1);
}

uint64_t sub_1008BD56C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 976) = a1;
  *(v4 + 984) = v1;

  v5 = *(v3 + 952);
  v6 = *(v3 + 944);
  if (v1)
  {
    v7 = sub_1008BDD78;
  }

  else
  {
    v7 = sub_1008BD6B4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1008BD6B4()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 912);
  v3 = *(v0 + 976);
  sub_100CA8B78(v3, v0 + 272);
  v4 = *(v0 + 376);
  *(v0 + 904) = *(v0 + 280);
  *(v0 + 992) = *(v0 + 272);
  v5 = *(v0 + 304);
  *(v0 + 784) = *(v0 + 288);
  *(v0 + 800) = v5;
  *(v0 + 816) = *(v0 + 320);
  v6 = *(v0 + 377);
  *(v0 + 824) = *(v0 + 361);
  *(v0 + 840) = v6;
  *(v0 + 855) = *(v0 + 392);
  v7 = OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_scenes;
  *(v0 + 1000) = OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_scenes;
  *(v0 + 1008) = *(v2 + v7);

  v8 = v4;
  sub_10000CAAC(v0 + 904, &qword_101A06CE0, &unk_101485718);
  v9 = v2 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_deviceWindowSize;
  *(v0 + 1016) = *(v2 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_deviceWindowSize);
  *(v0 + 1024) = *(v9 + 8);
  *(v0 + 1032) = *(v9 + 16);
  *(v0 + 1040) = *(v9 + 24);
  *(v0 + 1120) = *(v9 + 32);
  v10 = [v8 canvas];
  v11 = [v8 infos];
  [v10 setInfosToDisplay:v11];

  v12 = [v8 canvas];
  [v12 nonInteractiveLayoutIfNeeded];

  v13 = [v8 canvas];
  [v13 unscaledRectOfLayouts];
  v15 = v14;
  v17 = v16;

  v18 = *&v3[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v19 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v18 + v19, v1);
  sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
  CRRegister.wrappedValue.getter();
  sub_1005E2BDC(v1);
  v20 = *(v0 + 888);
  v21 = *(v0 + 896);
  *(v0 + 1048) = v21;
  v22 = swift_task_alloc();
  *(v0 + 1056) = v22;
  *v22 = v0;
  v22[1] = sub_1008BD95C;

  return sub_1008BCB74(v20, v21, v15, v17);
}

uint64_t sub_1008BD95C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 1064) = a1;

  v3 = *(v2 + 952);
  v4 = *(v2 + 944);

  return _swift_task_switch(sub_1008BDAA8, v4, v3);
}

uint64_t sub_1008BDAA8()
{
  v1 = (v0 + 1016);
  v2 = (v0 + 784);
  v3 = (v0 + 824);
  v4 = *(*(v0 + 912) + *(v0 + 1000));
  if (!v4)
  {
    goto LABEL_4;
  }

  if (v4 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    sub_1008BAC04(0);
  }

LABEL_5:
  v5 = *(v0 + 1064);
  v6 = *(v0 + 1008);
  v7 = *(v0 + 992);
  v8 = *(v0 + 912);
  v26 = *(v0 + 1032);
  v28 = *v1;
  sub_1008BAC04(*(v8 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_defaultToPrintScenes));
  *(v0 + 16) = v7;
  *(v0 + 24) = v6;
  v9 = *(v0 + 800);
  *(v0 + 32) = *v2;
  *(v0 + 48) = v9;
  *(v0 + 64) = *(v0 + 816);
  *(v0 + 88) = v26;
  *(v0 + 72) = v28;
  *(v0 + 104) = *(v0 + 1120);
  v10 = *(v0 + 840);
  *(v0 + 105) = *v3;
  *(v0 + 121) = v10;
  *(v0 + 136) = *(v0 + 855);
  v11 = [objc_opt_self() sharedPrintController];
  *(v0 + 1072) = v11;
  v12 = type metadata accessor for CRLiOSPrintPageRenderer();
  *(v0 + 1080) = v12;
  objc_allocWithZone(v12);
  sub_1008BE39C(v0 + 16, v0 + 400);
  v13 = v5;
  v14 = sub_100B7FA8C((v0 + 16), v13);

  sub_1008BE3F8(v0 + 16);
  [v11 setPrintInfo:v13];
  [v11 setPrintPageRenderer:v14];
  [v11 setDelegate:v8];
  if (sub_1008BCCEC())
  {
    v15 = [v11 printInfo];
    if (v15)
    {
      v16 = v15;
      [v15 setOrientation:sub_100B7F840()];
    }
  }

  v17 = *(v0 + 1008);
  v18 = *(v0 + 992);
  v19 = *(v0 + 912);
  v27 = *(v0 + 1032);
  v29 = *v1;

  v20 = *(v19 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_printInteractionController);
  *(v19 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_printInteractionController) = v11;
  v21 = v11;

  *(v0 + 144) = v18;
  *(v0 + 152) = v17;
  v22 = *(v0 + 800);
  *(v0 + 160) = *v2;
  *(v0 + 176) = v22;
  *(v0 + 192) = *(v0 + 816);
  *(v0 + 200) = v29;
  *(v0 + 216) = v27;
  *(v0 + 232) = *(v0 + 1120);
  v23 = *(v0 + 840);
  *(v0 + 233) = *v3;
  *(v0 + 249) = v23;
  *(v0 + 264) = *(v0 + 855);
  v24 = swift_task_alloc();
  *(v0 + 1088) = v24;
  *v24 = v0;
  v24[1] = sub_1008BDDF0;

  return sub_100CA6A1C();
}

uint64_t sub_1008BDD78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008BDDF0()
{
  v1 = *v0;

  v2 = *(v1 + 952);
  v3 = *(v1 + 944);

  return _swift_task_switch(sub_1008BDF10, v3, v2);
}

uint64_t sub_1008BDF10()
{
  v1 = [*(v0 + 1072) printPageRenderer];
  if (v1)
  {
    v2 = v1;
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = *(v0 + 1064);
      v6 = *(v0 + 912);
      v7 = objc_allocWithZone(type metadata accessor for CRLiOSPrintOptionsViewController());
      v8 = sub_100D43534(v5, v4);
      v2 = *(v6 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_printOptionsViewController);
      *(v6 + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_printOptionsViewController) = v8;
    }
  }

  v9 = swift_task_alloc();
  *(v0 + 1096) = v9;
  *v9 = v0;
  v9[1] = sub_1008BE014;

  return sub_1008BB05C();
}

uint64_t sub_1008BE014(uint64_t a1)
{
  v3 = *v2;
  v3[138] = a1;
  v3[139] = v1;

  v4 = v3[119];
  v5 = v3[118];
  if (v1)
  {
    v6 = sub_1008BE288;
  }

  else
  {
    v6 = sub_1008BE134;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1008BE134()
{
  v1 = *(v0 + 1104);

  v2 = *(v0 + 1064);
  if (v1)
  {
    v3 = *(v0 + 1104);
    v4 = sub_1008BCCEC();
    sub_1008BAC04(v4 & 1);

    v5 = v3;
    sub_1008BAE3C();
  }

  v6 = *(v0 + 1072);
  v7 = *(v0 + 1040);
  v8 = *(v0 + 1016);
  v9 = *(v0 + 1008);
  v10 = *(v0 + 992);
  v15 = *(v0 + 1024);

  *(v0 + 656) = v10;
  *(v0 + 664) = v9;
  v11 = *(v0 + 800);
  *(v0 + 672) = *(v0 + 784);
  *(v0 + 688) = v11;
  *(v0 + 704) = *(v0 + 816);
  *(v0 + 712) = v8;
  *(v0 + 720) = v15;
  *(v0 + 736) = v7;
  *(v0 + 744) = *(v0 + 1120);
  v12 = *(v0 + 840);
  *(v0 + 745) = *(v0 + 824);
  *(v0 + 761) = v12;
  *(v0 + 776) = *(v0 + 855);
  sub_1008BE3F8(v0 + 656);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1008BE288()
{
  v1 = *(v0 + 1072);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 992);
  v9 = *(v0 + 1032);
  v10 = *(v0 + 1016);

  *(v0 + 528) = v4;
  *(v0 + 536) = v3;
  v5 = *(v0 + 800);
  *(v0 + 544) = *(v0 + 784);
  *(v0 + 560) = v5;
  *(v0 + 576) = *(v0 + 816);
  *(v0 + 584) = v10;
  *(v0 + 600) = v9;
  *(v0 + 616) = *(v0 + 1120);
  v6 = *(v0 + 840);
  *(v0 + 617) = *(v0 + 824);
  *(v0 + 633) = v6;
  *(v0 + 648) = *(v0 + 855);
  sub_1008BE3F8(v0 + 528);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1008BE454(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A06CE8, &qword_101485738);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008BE4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A06CE8, &qword_101485738);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1008BE53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  sub_10000BE14(a1, v18 - v8, &qword_1019FB750, &qword_10146F1B0);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000CAAC(v9, &qword_1019FB750, &qword_10146F1B0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  type metadata accessor for _AppExtensionIdentity();
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();

  return result;
}

void sub_1008BE72C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1008BE7B8(__n128 a1)
{
  v2 = type metadata accessor for _AppExtensionIdentity();
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1008BE890;
  v4 = *(v1 + 16);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v4, v2, v2, 0, 0, &unk_101485A18, 0, v2);
}

uint64_t sub_1008BE890()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1008BE9C4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1008BE9DC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1005B981C(&qword_101A06FF0, &unk_101485A20);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1008BEABC, 0, 0);
}

uint64_t sub_1008BEABC()
{
  v1 = v0[6];
  v2 = type metadata accessor for TaskPriority();
  v3 = *(*(v2 - 8) + 56);
  v3(v1, 1, 1, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0xD000000000000016;
  *(v4 + 40) = 0x8000000101574440;
  *(v4 + 48) = 5;
  sub_1008BE53C(v1, &unk_101485A38, v4);
  sub_10000CAAC(v1, &qword_1019FB750, &qword_10146F1B0);
  v3(v1, 1, 1, v2);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_1008BE53C(v1, &unk_101485A48, v5);
  sub_10000CAAC(v1, &qword_1019FB750, &qword_10146F1B0);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = sub_1005B981C(&qword_101A06FF8, &qword_101485A50);
  *v6 = v0;
  v6[1] = sub_1008BECBC;
  v8 = v0[5];

  return ThrowingTaskGroup.next(isolation:)(v8, 0, 0, v7);
}

uint64_t sub_1008BECBC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1008BEFF4;
  }

  else
  {
    v2 = sub_1008BEDD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1008BEDD0(__n128 a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = type metadata accessor for _AppExtensionIdentity();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  ThrowingTaskGroup.cancelAll()();
  sub_10000BE14(v2, v3, &qword_101A06FF0, &unk_101485A20);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v6 = v1[5];
    sub_10000CAAC(v1[4], &qword_101A06FF0, &unk_101485A20);
    sub_10086E6A0();
    swift_allocError();
    *v7 = 0xD000000000000016;
    *(v7 + 8) = 0x8000000101574440;
    *(v7 + 16) = 5;
    swift_willThrow();
    sub_10000CAAC(v6, &qword_101A06FF0, &unk_101485A20);
  }

  else
  {
    v9 = v1[4];
    v10 = v1[2];
    sub_10000CAAC(v1[5], &qword_101A06FF0, &unk_101485A20);
    (*(v5 + 32))(v10, v9, v4);
  }

  v8 = v1[1];

  return v8();
}

uint64_t sub_1008BEFF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008BF074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 256) = a6;
  *(v6 + 112) = a4;
  *(v6 + 120) = a5;
  *(v6 + 104) = a1;
  sub_1005B981C(&qword_101A06FF0, &unk_101485A20);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  v7 = type metadata accessor for _AppExtensionQuery.Results.AsyncIterator();
  *(v6 + 144) = v7;
  *(v6 + 152) = *(v7 - 8);
  *(v6 + 160) = swift_task_alloc();
  v8 = type metadata accessor for _AppExtensionQuery.Results();
  *(v6 + 168) = v8;
  *(v6 + 176) = *(v8 - 8);
  *(v6 + 184) = swift_task_alloc();
  v9 = type metadata accessor for _AppExtensionQuery();
  *(v6 + 192) = v9;
  *(v6 + 200) = *(v9 - 8);
  *(v6 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_1008BF238, 0, 0);
}

uint64_t sub_1008BF238()
{
  _AppExtensionQuery.init(extensionPointIdentifier:)();
  _AppExtensionQuery.results.getter();
  _AppExtensionQuery.Results.makeAsyncIterator()();
  v1 = sub_1008CFAA8(&qword_101A07000, &type metadata accessor for _AppExtensionQuery.Results.AsyncIterator, &protocol conformance descriptor for _AppExtensionQuery.Results.AsyncIterator);
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *v2 = v0;
  v2[1] = sub_1008BF35C;
  v3 = *(v0 + 144);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 88, v3, v1);
}

uint64_t sub_1008BF35C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1008BF768;
  }

  else
  {
    v2 = sub_1008BF470;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1008BF494()
{
  if (*(v0 + 232))
  {
    type metadata accessor for MainActor();
    *(v0 + 240) = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1008BF6C4, v2, v1);
  }

  else
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    v5 = static OS_os_log.crlThreeDimensionalObjects;
    v6 = *(v0 + 256);
    v7 = static os_log_type_t.error.getter();
    sub_100005404(v5, &_mh_execute_header, v7, "(QueryExtension) unable to find extension", 41, 2, _swiftEmptyArrayStorage);
    sub_10086E6A0();
    swift_allocError();
    *v8 = v4;
    *(v8 + 8) = v3;
    *(v8 + 16) = v6;
    swift_willThrow();
    sub_10086756C(v4, v3, v6);
    v10 = *(v0 + 200);
    v9 = *(v0 + 208);
    v11 = *(v0 + 192);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    (*(v10 + 8))(v9, v11);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1008BF6C4()
{
  v1 = v0[29];
  v2 = v0[28];
  v3 = v0[17];

  sub_1008BFD70(v1, v3);
  v0[31] = v2;

  if (v2)
  {
    v4 = sub_1008BFC7C;
  }

  else
  {
    v4 = sub_1008BF8F0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1008BF768()
{
  *(v0 + 96) = *(v0 + 224);
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1008BF7FC, 0, 0);
}

uint64_t sub_1008BF7FC()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[22] + 8))(v0[23], v0[21]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1008BF8F0()
{
  v1 = v0[16];
  sub_10000BE14(v0[17], v1, &qword_101A06FF0, &unk_101485A20);
  v2 = type metadata accessor for _AppExtensionIdentity();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[16];
    sub_10000CAAC(v0[17], &qword_101A06FF0, &unk_101485A20);
    sub_10000CAAC(v4, &qword_101A06FF0, &unk_101485A20);
    v5 = sub_1008CFAA8(&qword_101A07000, &type metadata accessor for _AppExtensionQuery.Results.AsyncIterator, &protocol conformance descriptor for _AppExtensionQuery.Results.AsyncIterator);
    v6 = swift_task_alloc();
    v0[27] = v6;
    *v6 = v0;
    v6[1] = sub_1008BF35C;
    v7 = v0[18];

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 11, v7, v5);
  }

  else
  {
    (*(v3 + 32))(v0[13], v0[16], v2);
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v8 = v0[25];
    v9 = v0[26];
    v24 = v0[23];
    v25 = v0[24];
    v10 = v0[22];
    v11 = v0[19];
    v22 = v0[20];
    v23 = v0[21];
    v20 = v0[17];
    v21 = v0[18];
    v12 = static OS_os_log.crlThreeDimensionalObjects;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v14 = _AppExtensionIdentity.bundleIdentifier.getter();
    v16 = v15;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v14;
    *(inited + 40) = v16;
    v17 = static os_log_type_t.debug.getter();
    sub_100005404(v12, &_mh_execute_header, v17, "(QueryExtension) using extension: %{public}@", 44, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    sub_10000CAAC(v20, &qword_101A06FF0, &unk_101485A20);
    (*(v11 + 8))(v22, v21);
    (*(v10 + 8))(v24, v23);
    (*(v8 + 8))(v9, v25);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1008BFC7C()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[22] + 8))(v0[23], v0[21]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1008BFD70@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v6 = type metadata accessor for _AppExtensionIdentity();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v87 - v11;
  result = static Task<>.checkCancellation()();
  if (v3)
  {
    return result;
  }

  v95 = v9;
  v102 = v6;
  v90 = 0;
  if (qword_1019F21E0 != -1)
  {
    goto LABEL_54;
  }

LABEL_3:
  v89 = a2;
  v92 = static OS_os_log.crlThreeDimensionalObjects;
  v14 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  v93 = xmmword_10146C6B0;
  v91 = inited;
  *(inited + 16) = xmmword_10146C6B0;
  v16 = *(a1 + 16);
  v17 = _swiftEmptyArrayStorage;
  v94 = v7;
  v96 = v16;
  v88 = a1;
  if (v16)
  {
    v101 = v12;
    v87 = v14;
    v103 = _swiftEmptyArrayStorage;
    sub_100034080(0, v16, 0);
    v17 = v103;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v20 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v98 = *(v18 + 56);
    v99 = v19;
    v100 = v18;
    v97 = (v18 - 8);
    v21 = v16;
    v22 = v102;
    do
    {
      v23 = v101;
      v99(v101, v20, v22);
      v24 = _AppExtensionIdentity.bundleIdentifier.getter();
      v22 = v102;
      v25 = v24;
      v27 = v26;
      (*v97)(v23, v102);
      v103 = v17;
      v29 = v17[2];
      v28 = v17[3];
      if (v29 >= v28 >> 1)
      {
        sub_100034080((v28 > 1), v29 + 1, 1);
        v22 = v102;
        v17 = v103;
      }

      v17[2] = v29 + 1;
      v30 = &v17[2 * v29];
      v30[4] = v25;
      v30[5] = v27;
      v20 += v98;
      --v21;
    }

    while (v21);
    v16 = v96;
  }

  v103 = v17;
  sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
  sub_100613214();
  v31 = BidirectionalCollection<>.joined(separator:)();
  v33 = v32;

  v34 = v91;
  v91[7] = &type metadata for String;
  v35 = sub_1000053B0();
  v34[8] = v35;
  v34[4] = v31;
  v34[5] = v33;
  v36 = static os_log_type_t.debug.getter();
  sub_100005404(v92, &_mh_execute_header, v36, "(QueryExtension) found extensions: [%{public}@]", 47, 2, v34);
  swift_setDeallocating();
  sub_100005070(v34 + 4);
  v37 = swift_initStackObject();
  *(v37 + 32) = v16;
  v101 = (v37 + 32);
  *(v37 + 16) = v93;
  *(v37 + 56) = &type metadata for Int;
  *(v37 + 64) = &protocol witness table for Int;
  if (v16 == 1)
  {

    v39 = v94;
    v38 = v95;
    goto LABEL_39;
  }

  v100 = v35;
  v97 = objc_opt_self();
  LODWORD(v99) = [v97 _atomicIncrementAssertCount];
  v103 = [objc_allocWithZone(NSString) init];
  sub_100604538(v37, &v103, "Unexpectedly found %d extension identities. Using first found.", 62, 2u);
  StaticString.description.getter("findExtensionIdentity()", 23, 2);
  v98 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/USD Rendering/App Extension/CRLUSDRendererExtensionShared.swift", 133, 2);
  v40 = String._bridgeToObjectiveC()();

  v41 = [v40 lastPathComponent];

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v45 = static OS_os_log.crlAssert;
  v46 = swift_initStackObject();
  *(v46 + 16) = xmmword_10146CA70;
  *(v46 + 56) = &type metadata for Int32;
  *(v46 + 64) = &protocol witness table for Int32;
  *(v46 + 32) = v99;
  v47 = sub_1005CF000();
  *(v46 + 96) = v47;
  v48 = sub_1008CFAA8(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
  v49 = v98;
  *(v46 + 72) = v98;
  v50 = v100;
  *(v46 + 136) = &type metadata for String;
  *(v46 + 144) = v50;
  *(v46 + 104) = v48;
  *(v46 + 112) = v42;
  *(v46 + 120) = v44;
  *(v46 + 176) = &type metadata for UInt;
  *(v46 + 184) = &protocol witness table for UInt;
  *(v46 + 152) = 55;
  v51 = v103;
  *(v46 + 216) = v47;
  *(v46 + 224) = v48;
  *(v46 + 192) = v51;
  v52 = v49;
  v53 = v51;
  v54 = static os_log_type_t.error.getter();
  sub_100005404(v45, &_mh_execute_header, v54, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v46);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v55 = static os_log_type_t.error.getter();
  sub_100005404(v45, &_mh_execute_header, v55, "Unexpectedly found %d extension identities. Using first found.", 62, 2, v37);

  type metadata accessor for __VaListBuilder();
  v56 = swift_allocObject();
  v56[2] = 8;
  v56[3] = 0;
  v57 = v56 + 3;
  v56[4] = 0;
  v56[5] = 0;
  v100 = v37;
  v12 = *(v37 + 16);
  if (v12)
  {
    a1 = 0;
    while (1)
    {
      v58 = &v101[40 * a1];
      a2 = *(v58 + 3);
      v7 = *(v58 + 4);
      sub_100020E58(v58, a2);
      v59 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v60 = *v57;
      v61 = *(v59 + 16);
      v62 = __OFADD__(*v57, v61);
      v63 = *v57 + v61;
      if (v62)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        swift_once();
        goto LABEL_3;
      }

      v64 = v56[4];
      if (v64 >= v63)
      {
        goto LABEL_30;
      }

      if (v64 + 0x4000000000000000 < 0)
      {
        goto LABEL_52;
      }

      a2 = v56[5];
      if (2 * v64 > v63)
      {
        v63 = 2 * v64;
      }

      v56[4] = v63;
      if ((v63 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_53;
      }

      v7 = v59;
      v65 = swift_slowAlloc();
      v66 = v65;
      v56[5] = v65;
      if (a2)
      {
        break;
      }

      v59 = v7;
      if (!v66)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

LABEL_31:
      v68 = *(v59 + 16);
      if (v68)
      {
        v69 = (v59 + 32);
        v70 = *v57;
        while (1)
        {
          v71 = *v69++;
          *&v66[8 * v70] = v71;
          v70 = *v57 + 1;
          if (__OFADD__(*v57, 1))
          {
            break;
          }

          *v57 = v70;
          if (!--v68)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_51;
      }

LABEL_15:

      if (++a1 == v12)
      {
        goto LABEL_38;
      }
    }

    if (v65 != a2 || v65 >= &a2[8 * v60])
    {
      memmove(v65, a2, 8 * v60);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v59 = v7;
LABEL_30:
    v66 = v56[5];
    if (!v66)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

LABEL_38:
  v72 = __VaListBuilder.va_list()();
  StaticString.description.getter("findExtensionIdentity()", 23, 2);
  v73 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/USD Rendering/App Extension/CRLUSDRendererExtensionShared.swift", 133, 2);
  v74 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unexpectedly found %d extension identities. Using first found.", v87);
  v75 = String._bridgeToObjectiveC()();

  [v97 handleFailureInFunction:v73 file:v74 lineNumber:55 isFatal:0 format:v75 args:v72];

  v39 = v94;
  v38 = v95;
  if (!v96)
  {
    v84 = 1;
    v86 = v89;
    v85 = v102;
    return (*(v39 + 56))(v86, v84, 1, v85);
  }

LABEL_39:
  v78 = *(v39 + 16);
  v76 = v39 + 16;
  v77 = v78;
  v79 = v88 + ((*(v76 + 64) + 32) & ~*(v76 + 64));
  v80 = *(v76 + 56);
  v81 = v102;
  while (1)
  {
    v77(v38, v79, v81);
    if (_AppExtensionIdentity.bundleIdentifier.getter() == 0xD000000000000027 && 0x8000000101574650 == v82)
    {
      break;
    }

    v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v83)
    {
      goto LABEL_46;
    }

    v38 = v95;
    v81 = v102;
    (*(v76 - 8))(v95, v102);
    v79 += v80;
    if (!--v96)
    {
      v84 = 1;
      v85 = v81;
      v86 = v89;
      v39 = v94;
      return (*(v39 + 56))(v86, v84, 1, v85);
    }
  }

LABEL_46:
  v39 = v94;
  v86 = v89;
  v85 = v102;
  (*(v94 + 32))(v89, v95, v102);
  v84 = 0;
  return (*(v39 + 56))(v86, v84, 1, v85);
}

uint64_t sub_1008C0708()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1008C07A0;

  return static Task<>.sleep(nanoseconds:)(2000000000);
}

uint64_t sub_1008C07A0()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1008C08D4, 0, 0);
  }
}

uint64_t sub_1008C08D4(uint64_t a1)
{
  v2 = *(v1 + 24);
  static Task<>.checkCancellation()();
  if (!v2)
  {
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.crlThreeDimensionalObjects;
    v4 = static os_log_type_t.debug.getter();
    sub_100005404(v3, &_mh_execute_header, v4, "(QueryExtension) timed out looking for extension", 48, 2, _swiftEmptyArrayStorage);
    sub_10086E6A0();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 6;
    swift_willThrow();
  }

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_1008C0A4C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

void sub_1008C0AC8(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol:v6];

  *a3 = v7;
}

id sub_1008C0B34()
{
  v0 = objc_opt_self();
  v1 = &OBJC_PROTOCOL___CRLUSDRenderingExtensionAPIEndpointProtocol;
  v2 = [v0 interfaceWithProtocol:v1];

  if (qword_1019F1928 != -1)
  {
    swift_once();
  }

  [v2 setInterface:qword_101AD6B30 forSelector:"makeCoreRERendererProxyForUUID:delegateProxy:flags:response:" argumentIndex:1 ofReply:0];
  if (qword_1019F1930 != -1)
  {
    swift_once();
  }

  result = [v2 setInterface:qword_101AD6B38 forSelector:"makeCoreRERendererProxyForUUID:delegateProxy:flags:response:" argumentIndex:0 ofReply:1];
  qword_101AD6B40 = v2;
  return result;
}

uint64_t sub_1008C0C50(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v25 = a2;
  v26 = sub_1005B981C(&qword_101A070E0, &qword_101485CC0);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v23 = &v19 - v4;
  v5 = sub_1005B981C(&qword_101A070E8, &qword_101485CC8);
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_1005B981C(&qword_101A070F0, &qword_101485CD0);
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v11 = sub_1005B981C(&qword_101A070F8, &qword_101485CD8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  sub_100020E58(a1, a1[3]);
  sub_1008CFD74();
  v15 = v27;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v28 = 0;
    sub_1008CFE70();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v10, v8);
    return (*(v12 + 8))(v14, v11);
  }

  if (v15 == 1)
  {
    v29 = 1;
    sub_1008CFE1C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v21 + 8))(v7, v22);
    return (*(v12 + 8))(v14, v11);
  }

  v30 = 2;
  sub_1008CFDC8();
  v17 = v23;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v18 = v26;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v24 + 8))(v17, v18);
  return (*(v12 + 8))(v14, v11);
}

unint64_t sub_1008C1018()
{
  v1 = 0x656E6E6F63736964;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_1008C1080@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1008CCE5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1008C10A8(uint64_t a1)
{
  v2 = sub_1008CFD74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008C10E4(uint64_t a1)
{
  v2 = sub_1008CFD74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008C1120(uint64_t a1)
{
  v2 = sub_1008CFE1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008C115C(uint64_t a1)
{
  v2 = sub_1008CFE1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008C1198(uint64_t a1)
{
  v2 = sub_1008CFDC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008C11D4(uint64_t a1)
{
  v2 = sub_1008CFDC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008C1210(uint64_t a1)
{
  v2 = sub_1008CFE70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008C124C(uint64_t a1)
{
  v2 = sub_1008CFE70();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1008C1288@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1008CCF88(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

Swift::Int sub_1008C12D0()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 != 1)
    {
      Hasher._combine(_:)(2uLL);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1008C1350(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = 1;
LABEL_5:
    Hasher._combine(_:)(v3);
    return;
  }

  Hasher._combine(_:)(2uLL);

  String.hash(into:)();
}

Swift::Int sub_1008C13D8(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 != 1)
    {
      Hasher._combine(_:)(2uLL);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_1008C1454(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 1;
}

void sub_1008C14B4(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    v1 = _convertErrorToNSError(_:)();
    v2 = sub_100C7328C(v1);
    if (v4 == -1)
    {
      sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      v5 = v2;
      v6 = v3;
      v7 = v4;
      sub_10086E6A0();
      swift_allocError();
      *v8 = v5;
      *(v8 + 8) = v6;
      *(v8 + 16) = v7;
      sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
      CheckedContinuation.resume(throwing:)();
    }
  }

  else
  {
    sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1008C15BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  v7[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008C1690, v9, v8);
}

uint64_t sub_1008C1690()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[2];

  ObjectType = swift_getObjectType();
  (*(v2 + 8))(ObjectType, v2);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  v3(v1, 0);
  sub_10000CAAC(v1, &qword_1019F6990, &qword_10146D2F0);

  v6 = v0[1];

  return v6();
}

void sub_1008C180C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  sub_10000BE14(a1, &v13 - v7, &qword_1019F6990, &qword_10146D2F0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v8, v9);
  }

  if (a2)
  {
    v12 = _convertErrorToNSError(_:)();
  }

  else
  {
    v12 = 0;
  }

  (*(a3 + 16))(a3, isa, v12);
}

uint64_t sub_1008C1968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = v13;
  v8[7] = v14;
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a4;
  v8[3] = a5;
  v8[8] = type metadata accessor for CRLUSDRendering.SceneRequest(0);
  v8[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[10] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[11] = v10;
  v8[12] = v9;

  return _swift_task_switch(sub_1008C1A40, v10, v9);
}

uint64_t sub_1008C1A40()
{
  if (qword_1019F1920 != -1)
  {
    swift_once();
  }

  sub_1008CFAA8(&qword_101A07090, type metadata accessor for CRLUSDRendering.SceneRequest, byte_1014A5F34);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v7 = v0[3];
  ObjectType = swift_getObjectType();
  v6 = (*(v7 + 16) + **(v7 + 16));
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1008C1C78;
  v3 = v0[9];
  v4 = v0[3];

  return v6(v3, ObjectType, v4);
}

uint64_t sub_1008C1C78()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  *(*v1 + 112) = v0;

  sub_1008CFAF0(v3, type metadata accessor for CRLUSDRendering.SceneRequest);
  v4 = *(v2 + 96);
  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_1008C1E5C;
  }

  else
  {
    v6 = sub_1008C1DE4;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1008C1DE4()
{
  v1 = *(v0 + 48);

  v1(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1008C1E5C()
{

  v1 = v0[14];
  v2 = v0[6];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1008C1FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = v13;
  v8[25] = v14;
  v8[22] = a7;
  v8[23] = a8;
  v8[21] = a5;
  v8[11] = a4;
  type metadata accessor for MainActor();
  v8[26] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[27] = v10;
  v8[28] = v9;

  return _swift_task_switch(sub_1008C208C, v10, v9);
}

uint64_t sub_1008C208C()
{
  if (qword_1019F1920 != -1)
  {
    swift_once();
  }

  sub_1008CF960();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v8 = *(v0 + 168);
  ObjectType = swift_getObjectType();
  *(v0 + 80) = *(v0 + 160);
  v2 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v2;
  v3 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v3;
  v7 = (*(v8 + 24) + **(v8 + 24));
  v4 = swift_task_alloc();
  *(v0 + 232) = v4;
  *v4 = v0;
  v4[1] = sub_1008C22A0;
  v5 = *(v0 + 168);

  return v7(v0 + 16, ObjectType, v5);
}

uint64_t sub_1008C22A0()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_1008C2424;
  }

  else
  {
    v5 = sub_1008C23B4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1008C23B4()
{
  v1 = *(v0 + 192);

  v1(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1008C2424()
{

  v1 = v0[30];
  v2 = v0[24];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1008C25A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v13;
  v8[8] = v14;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a4;
  v8[4] = a5;
  type metadata accessor for MainActor();
  v8[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[10] = v10;
  v8[11] = v9;

  return _swift_task_switch(sub_1008C2648, v10, v9);
}

uint64_t sub_1008C2648()
{
  if (qword_1019F1920 != -1)
  {
    swift_once();
  }

  sub_1005B981C(&qword_101A06FC8, &qword_1014859F8);
  sub_1008CF794();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v7 = v0[4];
  ObjectType = swift_getObjectType();
  v2 = v0[2];
  v0[12] = v2;
  v6 = (*(v7 + 40) + **(v7 + 40));
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1008C2860;
  v4 = v0[4];

  return v6(v2, ObjectType, v4);
}

uint64_t sub_1008C2860()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1008C29EC;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1008C297C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1008C297C()
{
  v1 = *(v0 + 56);

  v1(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1008C29EC()
{

  v1 = v0[14];
  v2 = v0[7];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1008C2B74(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v11 = type metadata accessor for UTType();
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  v8[8] = type metadata accessor for MainActor();
  v8[9] = static MainActor.shared.getter();
  ObjectType = swift_getObjectType();
  v16 = (*(a6 + 48) + **(a6 + 48));
  v13 = swift_task_alloc();
  v8[10] = v13;
  *v13 = v8;
  v13[1] = sub_1008C2D2C;
  v14.n128_f32[0] = a1;

  return v16(ObjectType, a6, v14);
}

uint64_t sub_1008C2D2C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  *(v5 + 112) = a3;
  *(v5 + 104) = v3;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v3)
  {
    v8 = sub_1008C31A0;
  }

  else
  {
    v8 = sub_1008C2E94;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1008C2E94()
{
  v1 = *(v0 + 88);

  if (!v1)
  {
    (*(v0 + 24))(0, 0xF000000000000000, 0, 0xF000000000000000, 0);
    goto LABEL_13;
  }

  v2 = *(v0 + 88);
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    goto LABEL_11;
  }

  v4 = Mutable;
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);
  static UTType.png.getter();
  UTType.identifier.getter();
  (*(v6 + 8))(v5, v7);
  v8 = String._bridgeToObjectiveC()();

  v9 = CGImageDestinationCreateWithData(v4, v8, 1uLL, 0);

  if (!v9)
  {
    v9 = v4;
LABEL_10:

LABEL_11:
    sub_10086E6A0();
    v17 = swift_allocError();
    *v18 = 0xD000000000000019;
    *(v18 + 8) = 0x8000000101574800;
    *(v18 + 16) = 0;
    swift_willThrow();

    goto LABEL_12;
  }

  CGImageDestinationAddImage(v9, v2, 0);
  if (!CGImageDestinationFinalize(v9))
  {

    goto LABEL_10;
  }

  v10 = *(v0 + 112);
  v11 = v4;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if ((v10 & 1) == 0)
  {
    v26 = v11;
    *(v0 + 16) = *(v0 + 96);
    if (qword_1019F1918 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 104);
    sub_1008CF64C();
    v23 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (!v22)
    {
      v15 = v23;
      v16 = v24;
      goto LABEL_21;
    }

    v17 = v22;

    sub_10002640C(v12, v14);
LABEL_12:
    v19 = *(v0 + 24);
    swift_errorRetain();
    v19(0, 0xF000000000000000, 0, 0xF000000000000000, v17);

    goto LABEL_13;
  }

  v15 = 0;
  v16 = 0xF000000000000000;
LABEL_21:
  v25 = *(v0 + 24);
  sub_100024E98(v12, v14);
  v25(v12, v14, v15, v16, 0);

  sub_10002640C(v12, v14);
  sub_10002640C(v12, v14);

  sub_100025870(v15, v16);
LABEL_13:

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1008C31A0()
{

  v1 = v0[13];
  v2 = v0[3];
  swift_errorRetain();
  v2(0, 0xF000000000000000, 0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

void sub_1008C32C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  if (a4 >> 60 == 15)
  {
    v10 = 0;
    if (a5)
    {
LABEL_6:
      v11 = _convertErrorToNSError(_:)();
      goto LABEL_9;
    }
  }

  else
  {
    v10 = Data._bridgeToObjectiveC()().super.isa;
    if (a5)
    {
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_9:
  v12 = v11;
  (*(a6 + 16))(a6, isa, v10);
}

uint64_t sub_1008C339C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[46] = v14;
  v8[47] = v15;
  v8[44] = a7;
  v8[45] = a8;
  v8[42] = a4;
  v8[43] = a5;
  v9 = type metadata accessor for UTType();
  v8[48] = v9;
  v8[49] = *(v9 - 8);
  v8[50] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[51] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[52] = v11;
  v8[53] = v10;

  return _swift_task_switch(sub_1008C34A0, v11, v10);
}

uint64_t sub_1008C34A0()
{
  if (qword_1019F1920 != -1)
  {
    swift_once();
  }

  sub_1008CF3BC();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v11 = *(v0 + 344);
  ObjectType = swift_getObjectType();
  v2 = *(v0 + 256);
  *(v0 + 80) = *(v0 + 240);
  *(v0 + 96) = v2;
  v3 = *(v0 + 224);
  *(v0 + 48) = *(v0 + 208);
  *(v0 + 64) = v3;
  v4 = *(v0 + 320);
  *(v0 + 144) = *(v0 + 304);
  *(v0 + 160) = v4;
  v5 = *(v0 + 288);
  *(v0 + 112) = *(v0 + 272);
  *(v0 + 128) = v5;
  v6 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v6;
  v10 = (*(v11 + 8) + **(v11 + 8));
  v7 = swift_task_alloc();
  *(v0 + 432) = v7;
  *v7 = v0;
  v7[1] = sub_1008C36CC;
  v8 = *(v0 + 344);

  return v10(v0 + 16, ObjectType, v8);
}

uint64_t sub_1008C36CC(uint64_t a1)
{
  v3 = *v2;
  v3[55] = a1;
  v3[56] = v1;

  if (v1)
  {
    v4 = v3[52];
    v5 = v3[53];
    v6 = sub_1008C3A20;
  }

  else
  {
    sub_1008CF410((v3 + 2));
    v4 = v3[52];
    v5 = v3[53];
    v6 = sub_1008C37E8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1008C37E8()
{
  v1 = v0[55];

  if (v1)
  {
    v2 = v0[55];
    Mutable = CFDataCreateMutable(0, 0);
    if (Mutable)
    {
      v4 = Mutable;
      v6 = v0[49];
      v5 = v0[50];
      v7 = v0[48];
      static UTType.png.getter();
      UTType.identifier.getter();
      (*(v6 + 8))(v5, v7);
      v8 = String._bridgeToObjectiveC()();

      v9 = CGImageDestinationCreateWithData(v4, v8, 1uLL, 0);

      if (v9)
      {
        CGImageDestinationAddImage(v9, v2, 0);
        if (CGImageDestinationFinalize(v9))
        {
          v10 = v0[46];
          v11 = v4;
          v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v13;

          sub_100024E98(v12, v14);
          v10(v12, v14, 0);
          sub_10002640C(v12, v14);
          sub_10002640C(v12, v14);

          goto LABEL_11;
        }
      }

      else
      {
        v9 = v4;
      }
    }

    sub_10086E6A0();
    v15 = swift_allocError();
    *v16 = 0xD000000000000019;
    *(v16 + 8) = 0x8000000101574800;
    *(v16 + 16) = 0;
    swift_willThrow();

    v17 = v0[46];
    swift_errorRetain();
    v17(0, 0xF000000000000000, v15);
  }

  else
  {
    (v0[46])(0, 0xF000000000000000, 0);
  }

LABEL_11:

  v18 = v0[1];

  return v18();
}

uint64_t sub_1008C3A20()
{

  sub_1008CF410((v0 + 2));
  v1 = v0[56];
  v2 = v0[46];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1008C3BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[46] = v14;
  v8[47] = v15;
  v8[44] = a7;
  v8[45] = a8;
  v8[42] = a4;
  v8[43] = a5;
  v8[48] = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v8[53] = v9;
  v8[54] = *(v9 - 8);
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[57] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[58] = v11;
  v8[59] = v10;

  return _swift_task_switch(sub_1008C3D44, v11, v10);
}

uint64_t sub_1008C3D44()
{
  if (qword_1019F1920 != -1)
  {
    swift_once();
  }

  sub_1008CF3BC();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v12 = *(v0 + 344);
  ObjectType = swift_getObjectType();
  v2 = *(v0 + 256);
  *(v0 + 80) = *(v0 + 240);
  *(v0 + 96) = v2;
  v3 = *(v0 + 224);
  *(v0 + 48) = *(v0 + 208);
  *(v0 + 64) = v3;
  v4 = *(v0 + 320);
  *(v0 + 144) = *(v0 + 304);
  *(v0 + 160) = v4;
  v5 = *(v0 + 288);
  *(v0 + 112) = *(v0 + 272);
  *(v0 + 128) = v5;
  v6 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v6;
  v11 = (*(v12 + 16) + **(v12 + 16));
  v7 = swift_task_alloc();
  *(v0 + 480) = v7;
  *v7 = v0;
  v7[1] = sub_1008C3FB0;
  v8 = *(v0 + 416);
  v9 = *(v0 + 344);

  return v11(v8, v0 + 16, ObjectType, v9);
}

uint64_t sub_1008C3FB0()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = *(v2 + 464);
    v4 = *(v2 + 472);
    v5 = sub_1008C44D4;
  }

  else
  {
    sub_1008CF410(v2 + 16);
    v3 = *(v2 + 464);
    v4 = *(v2 + 472);
    v5 = sub_1008C40CC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1008C40CC()
{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[52];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[46];
    sub_10000CAAC(v0[52], &unk_1019F33C0, &unk_101468A60);
    v4(0, 0xF000000000000000, 0);
  }

  else
  {
    v5 = v0[61];
    v6 = v0[55];
    v7 = v0[56];
    v8 = v0[53];
    v9 = v0[54];
    v10 = v0[51];
    v11 = v0[49];
    (*(v9 + 32))(v7, v0[52], v8);
    v12 = *(v9 + 16);
    v12(v6, v7, v8);
    v12(v11, v6, v8);
    v12(v10, v6, v8);
    (*(v9 + 56))(v10, 0, 1, v8);
    v13 = URL.bookmarkData(options:includingResourceValuesForKeys:relativeTo:)();
    if (v5)
    {
      v15 = v0[55];
      v16 = v0[56];
      v17 = v0[53];
      v18 = v0[54];
      v19 = v0[49];
      sub_10000CAAC(v0[51], &unk_1019F33C0, &unk_101468A60);
      v20 = *(v18 + 8);
      v20(v15, v17);
      v20(v16, v17);
      v20(v19, v17);
      v35 = v0[46];
      swift_errorRetain();
      v35(0, 0xF000000000000000, v5);
    }

    else
    {
      v21 = v13;
      v22 = v14;
      v24 = v0[54];
      v23 = v0[55];
      v25 = v0[53];
      v26 = v0[50];
      v28 = v0[48];
      v27 = v0[49];
      sub_10000CAAC(v0[51], &unk_1019F33C0, &unk_101468A60);
      v29 = v25;
      v30 = *(v24 + 8);
      v30(v23, v29);
      v31 = (v27 + *(v28 + 20));
      *v31 = v21;
      v31[1] = v22;
      sub_1008CF264(v27, v26);
      if (qword_1019F1918 != -1)
      {
        swift_once();
      }

      sub_1008CFAA8(&qword_101A07060, type metadata accessor for CRLUSDRendering.BookmarkableURL, asc_1014A5F84);
      v32 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v33 = v0[56];
      v34 = v0[53];
      v38 = v0[46];
      v39 = v32;
      v40 = v30;
      v42 = v41;
      sub_1008CFAF0(v0[50], type metadata accessor for CRLUSDRendering.BookmarkableURL);
      sub_100024E98(v39, v42);
      v38(v39, v42, 0);
      sub_10002640C(v39, v42);
      sub_10002640C(v39, v42);
      v40(v33, v34);
    }
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_1008C44D4()
{

  sub_1008CF410((v0 + 2));
  v1 = v0[61];
  v2 = v0[46];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1008C46A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = v14;
  v8[6] = v15;
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a4;
  v8[7] = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  v8[8] = swift_task_alloc();
  v8[9] = swift_task_alloc();
  v8[10] = type metadata accessor for CRLUSDRendering.CompressionRequest(0);
  v8[11] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[18] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[19] = v11;
  v8[20] = v10;

  return _swift_task_switch(sub_1008C4860, v11, v10);
}

uint64_t sub_1008C4860()
{
  if (qword_1019F1920 != -1)
  {
    swift_once();
  }

  sub_1008CFAA8(&qword_101A07058, type metadata accessor for CRLUSDRendering.CompressionRequest, byte_1014A5D54);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_1008C4A64;
  v2 = v0[13];
  v3 = v0[11];

  return sub_100BF94A4(v2, v3);
}

uint64_t sub_1008C4A64()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  *(*v1 + 176) = v0;

  sub_1008CFAF0(v3, type metadata accessor for CRLUSDRendering.CompressionRequest);
  v4 = *(v2 + 160);
  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_1008C4FE8;
  }

  else
  {
    v6 = sub_1008C4BD0;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1008C4BD0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[5];
    sub_10000CAAC(v0[13], &unk_1019F33C0, &unk_101468A60);
    v4(0, 0xF000000000000000, 0);
  }

  else
  {
    v5 = v0[22];
    v6 = v0[16];
    v7 = v0[17];
    v8 = v0[14];
    v9 = v0[15];
    v10 = v0[12];
    v11 = v0[8];
    (*(v9 + 32))(v7, v0[13], v8);
    v12 = *(v9 + 16);
    v12(v6, v7, v8);
    v12(v11, v6, v8);
    v12(v10, v6, v8);
    (*(v9 + 56))(v10, 0, 1, v8);
    v13 = URL.bookmarkData(options:includingResourceValuesForKeys:relativeTo:)();
    if (v5)
    {
      v15 = v0[16];
      v16 = v0[17];
      v17 = v0[14];
      v18 = v0[15];
      v19 = v0[8];
      sub_10000CAAC(v0[12], &unk_1019F33C0, &unk_101468A60);
      v20 = *(v18 + 8);
      v20(v15, v17);
      v20(v16, v17);
      v20(v19, v17);
      v35 = v0[5];
      swift_errorRetain();
      v35(0, 0xF000000000000000, v5);
    }

    else
    {
      v21 = v13;
      v22 = v14;
      v24 = v0[15];
      v23 = v0[16];
      v25 = v0[14];
      v27 = v0[8];
      v26 = v0[9];
      v28 = v0[7];
      sub_10000CAAC(v0[12], &unk_1019F33C0, &unk_101468A60);
      v29 = v25;
      v30 = *(v24 + 8);
      v30(v23, v29);
      v31 = (v27 + *(v28 + 20));
      *v31 = v21;
      v31[1] = v22;
      sub_1008CF264(v27, v26);
      if (qword_1019F1918 != -1)
      {
        swift_once();
      }

      sub_1008CFAA8(&qword_101A07060, type metadata accessor for CRLUSDRendering.BookmarkableURL, asc_1014A5F84);
      v32 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v33 = v0[17];
      v34 = v0[14];
      v38 = v0[5];
      v39 = v32;
      v40 = v30;
      v42 = v41;
      sub_1008CFAF0(v0[9], type metadata accessor for CRLUSDRendering.BookmarkableURL);
      sub_100024E98(v39, v42);
      v38(v39, v42, 0);
      sub_10002640C(v39, v42);
      sub_10002640C(v39, v42);
      v40(v33, v34);
    }
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_1008C4FE8()
{

  v1 = v0[22];
  v2 = v0[5];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1008C5230(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for UUID();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for MainActor();
  v2[13] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v5;
  v2[15] = v4;

  return _swift_task_switch(sub_1008C5334, v5, v4);
}

uint64_t sub_1008C5334()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  *(v4 + 16) = v0[6];
  swift_unknownObjectRetain();
  UUID.init()();
  v5 = OBJC_IVAR____TtCO8Freeform29CRLUSDRendererExtensionShared24AsyncRendererSenderProxy_uuid;
  v0[16] = OBJC_IVAR____TtCO8Freeform29CRLUSDRendererExtensionShared24AsyncRendererSenderProxy_uuid;
  (*(v3 + 32))(v4 + v5, v1, v2);
  v0[5] = v4;
  v0[17] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[18] = v7;
  v0[19] = v6;

  return _swift_task_switch(sub_1008C5414, v7, v6);
}

uint64_t sub_1008C5414(uint64_t a1)
{
  v2 = static MainActor.shared.getter();
  v1[20] = v2;
  v3 = swift_task_alloc();
  v1[21] = v3;
  v3[2] = v1 + 5;
  v3[3] = sub_1008C58E8;
  v3[4] = 0;
  v4 = swift_task_alloc();
  v1[22] = v4;
  *v4 = v1;
  v4[1] = sub_1008C5530;
  v5 = v1[10];
  v6 = v1[8];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, v2, &protocol witness table for MainActor, 0xD000000000000011, 0x8000000101574400, sub_1008CD5E4, v3, v6);
}

uint64_t sub_1008C5530()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1008C57F0;
  }

  else
  {
    v5 = sub_1008C56AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1008C56AC()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_1008C5710, v1, v2);
}

uint64_t sub_1008C5710()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];

  swift_unknownObjectRelease();
  swift_beginAccess();
  (*(v4 + 40))(v5 + v1, v2, v3);
  swift_endAccess();

  v6 = v0[1];
  v7 = v0[7];

  return v6(v7);
}

uint64_t sub_1008C57F0()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_1008C5854, v1, v2);
}

uint64_t sub_1008C5854()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1008C58E8(void **a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A04C08, &qword_101482070);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = *a1;
  (*(v5 + 16))(aBlock - v7, a2, v4, v6);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_1008CD5F4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_1008C5D10;
  aBlock[3] = &unk_10188BCE0;
  v12 = _Block_copy(aBlock);

  [v9 getUUID:v12];
  _Block_release(v12);
}

uint64_t sub_1008C5AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_10000BE14(a1, v6, &qword_1019F6990, &qword_10146D2F0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CAAC(v6, &qword_1019F6990, &qword_10146D2F0);
    if (a2)
    {
      v18 = a2;
      swift_errorRetain();
    }

    else
    {
      sub_10086E6A0();
      v15 = swift_allocError();
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 16) = 5;
      v18 = v15;
    }

    sub_1005B981C(&qword_101A04C08, &qword_101482070);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    sub_1005B981C(&qword_101A04C08, &qword_101482070);
    CheckedContinuation.resume(returning:)();
    return (*(v8 + 8))(v13, v7);
  }
}

uint64_t sub_1008C5D10(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_10000CAAC(v8, &qword_1019F6990, &qword_10146D2F0);
}

void sub_1008C5E64(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v6 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  v10 = *a1;
  if (qword_1019F1918 != -1)
  {
    swift_once();
  }

  type metadata accessor for CRLUSDRendering.SceneRequest(0);
  sub_1008CFAA8(&qword_101A06FE8, type metadata accessor for CRLUSDRendering.SceneRequest, byte_1014A5F0C);
  v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v4)
  {
    v13 = v11;
    v14 = v12;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10002640C(v13, v14);
    v16 = v6;
    (*(v7 + 16))(v9, v21, v6);
    v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v18 = swift_allocObject();
    (*(v7 + 32))(v18 + v17, v9, v16);
    aBlock[4] = sub_1008D02BC;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_1008BE72C;
    aBlock[3] = &unk_10188BC90;
    v19 = _Block_copy(aBlock);

    [v10 loadScene:isa response:v19];
    _Block_release(v19);
  }
}

void sub_1008C60E8(void **a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = *a1;
  v13 = a4[3];
  v27 = a4[2];
  v28 = v13;
  v29 = *(a4 + 8);
  v14 = a4[1];
  aBlock = *a4;
  v26 = v14;
  if (qword_1019F1918 != -1)
  {
    swift_once();
  }

  sub_1008CD590();
  v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v4)
  {
    v17 = v15;
    v24 = v12;
    v18 = v16;
    v30 = 0;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10002640C(v17, v18);
    (*(v9 + 16))(v11, a2, v8);
    v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v21 = swift_allocObject();
    (*(v9 + 32))(v21 + v20, v11, v8);
    *&v27 = sub_1008D02BC;
    *(&v27 + 1) = v21;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = *"";
    *&v26 = sub_1008BE72C;
    *(&v26 + 1) = &unk_10188BC40;
    v22 = _Block_copy(&aBlock);

    [v24 updateScene:isa response:v22];
    _Block_release(v22);
  }
}

uint64_t sub_1008C634C(uint64_t a1, char a2)
{
  *(v3 + 120) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for MainActor();
  *(v3 + 40) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_1008C63EC, v5, v4);
}

uint64_t sub_1008C63EC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 16);
  sub_1005B981C(&qword_101A04BE0, &qword_101485A60);
  v3 = swift_allocObject();
  *(v0 + 64) = v3;
  *(v3 + 16) = xmmword_10146C6B0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v0 + 72) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;

  return _swift_task_switch(sub_1008C64C0, v5, v4);
}

uint64_t sub_1008C64C0()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1008C65BC;

  return sub_1008636BC(0xD000000000000012, 0x800000010156F680, sub_1008D02C8, v3);
}

uint64_t sub_1008C65BC()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1008C6738;
  }

  else
  {
    v5 = sub_1008594F4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1008C6738()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_1008C679C, v1, v2);
}

uint64_t sub_1008C679C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1008C6800(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - v10;
  v22 = *a1;
  aBlock[0] = a4;
  if (qword_1019F1918 != -1)
  {
    swift_once();
  }

  sub_1005B981C(&qword_101A06FC8, &qword_1014859F8);
  sub_1008CCD80();
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v4)
  {
    v14 = v12;
    v15 = v13;
    v20[1] = 0;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10002640C(v14, v15);
    (*(v9 + 16))(v11, a2, v8);
    v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v18 = swift_allocObject();
    (*(v9 + 32))(v18 + v17, v11, v8);
    aBlock[4] = sub_1008CCE58;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_1008BE72C;
    aBlock[3] = &unk_10188BBF0;
    v19 = _Block_copy(aBlock);

    [v22 performActions:isa response:v19];
    _Block_release(v19);
  }
}

void sub_1008C6A64(void **a1, uint64_t a2, uint64_t a3, float a4)
{
  v8 = sub_1005B981C(&qword_101A1B3C0, &qword_1014859E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = aBlock - v12;
  v14 = *a1;
  (*(v9 + 16))(aBlock - v12, a2, v8, v11);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_1008CCBD0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_1008C6F90;
  aBlock[3] = &unk_10188BBA0;
  v17 = _Block_copy(aBlock);

  *&v18 = a4;
  [v14 takeSnapshotAt:v17 response:v18];
  _Block_release(v17);
}

void sub_1008C6C58(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, CGImage *a5)
{
  if (a2 >> 60 != 15)
  {
    sub_100024E98(a1, a2);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v10 = CGImageSourceCreateWithData(isa, 0);

    if (v10)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v10, 0, 0);
      if (ImageAtIndex)
      {
        if (a4 >> 60 != 15)
        {
          v14 = ImageAtIndex;
          sub_100024E98(a3, a4);
          if (qword_1019F1920 != -1)
          {
            swift_once();
          }

          sub_1005B981C(&qword_101A06FB0, &unk_1014859E8);
          sub_1008CCCA8();
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          if ((v16 & 1) == 0)
          {
            v15 = v14;
            sub_1005B981C(&qword_101A1B3C0, &qword_1014859E0);
            CheckedContinuation.resume(returning:)();
            sub_100025870(a1, a2);

            sub_100025870(a3, a4);
            return;
          }

          sub_100025870(a3, a4);
          ImageAtIndex = v14;
        }

        v12 = ImageAtIndex;
        sub_1005B981C(&qword_101A1B3C0, &qword_1014859E0);
        CheckedContinuation.resume(returning:)();
        sub_100025870(a1, a2);

        return;
      }
    }

    sub_10086E6A0();
    swift_allocError();
    *v13 = 0xD000000000000019;
    *(v13 + 8) = 0x80000001015743E0;
    *(v13 + 16) = 0;
    sub_1005B981C(&qword_101A1B3C0, &qword_1014859E0);
    CheckedContinuation.resume(throwing:)();
    sub_100025870(a1, a2);
    return;
  }

  if (a5)
  {
    swift_errorRetain();
    sub_1005B981C(&qword_101A1B3C0, &qword_1014859E0);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1005B981C(&qword_101A1B3C0, &qword_1014859E0);
    CheckedContinuation.resume(returning:)();
  }
}

double sub_1008C6F90(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (a3)
    {
LABEL_3:
      v11 = a3;
      a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      goto LABEL_6;
    }
  }

  else
  {

    v10 = 0xF000000000000000;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v13 = 0xF000000000000000;
LABEL_6:
  v14 = a4;
  v7(v6, v10, a3, v13, a4);

  sub_100025870(a3, v13);
  sub_100025870(v6, v10);

  return result;
}

void sub_1008C7084(void **a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = sub_1005B981C(&qword_101A04C28, &qword_101485A80);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = *a1;
  v13 = a4[7];
  v34 = a4[6];
  v35 = v13;
  v14 = a4[9];
  v36 = a4[8];
  v37 = v14;
  v15 = a4[3];
  v30 = a4[2];
  v31 = v15;
  v16 = a4[5];
  v32 = a4[4];
  v33 = v16;
  v17 = a4[1];
  aBlock = *a4;
  v29 = v17;
  if (qword_1019F1918 != -1)
  {
    swift_once();
  }

  sub_1008CD8C0();
  v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v4)
  {
    v20 = v18;
    v27 = v12;
    v21 = v19;
    v38 = 0;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10002640C(v20, v21);
    (*(v9 + 16))(v11, a2, v8);
    v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v24 = swift_allocObject();
    (*(v9 + 32))(v24 + v23, v11, v8);
    *&v30 = sub_1008CDAD8;
    *(&v30 + 1) = v24;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = *"";
    *&v29 = sub_1008C7498;
    *(&v29 + 1) = &unk_10188BDD0;
    v25 = _Block_copy(&aBlock);

    [v27 createSurfaceSnapshot:isa response:v25];
    _Block_release(v25);
  }
}

void sub_1008C7300(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      swift_errorRetain();
      sub_1005B981C(&qword_101A04C28, &qword_101485A80);
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      sub_1005B981C(&qword_101A04C28, &qword_101485A80);
      CheckedContinuation.resume(returning:)();
    }
  }

  else
  {
    sub_100024E98(a1, a2);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v6 = CGImageSourceCreateWithData(isa, 0);

    if (v6)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v6, 0, 0);
      if (ImageAtIndex)
      {
        v8 = ImageAtIndex;
        sub_1005B981C(&qword_101A04C28, &qword_101485A80);
        CheckedContinuation.resume(returning:)();
        sub_100025870(a1, a2);

        return;
      }
    }

    sub_10086E6A0();
    swift_allocError();
    *v9 = 0xD000000000000019;
    *(v9 + 8) = 0x80000001015743E0;
    *(v9 + 16) = 0;
    sub_1005B981C(&qword_101A04C28, &qword_101485A80);
    CheckedContinuation.resume(throwing:)();
    sub_100025870(a1, a2);
  }
}

double sub_1008C7498(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_100025870(v4, v8);

  return result;
}

uint64_t sub_1008C7544(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for MainActor();
  v3[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_1008C75E4, v5, v4);
}

uint64_t sub_1008C75E4()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v0[2] = v1;
  v0[11] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[12] = v5;
  v0[13] = v4;

  return _swift_task_switch(sub_1008C7690, v5, v4);
}

uint64_t sub_1008C7690(uint64_t a1)
{
  v2 = v1[10];
  v3 = static MainActor.shared.getter();
  v1[14] = v3;
  v4 = swift_task_alloc();
  v1[15] = v4;
  v4[2] = v1 + 2;
  v4[3] = sub_1008CD894;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v1[16] = v5;
  v6 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  *v5 = v1;
  v5[1] = sub_1008C77C4;
  v7 = v1[3];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, v3, &protocol witness table for MainActor, 0xD000000000000016, 0x8000000101574680, sub_1008CD8B0, v4, v6);
}

uint64_t sub_1008C77C4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_1008C79AC;
  }

  else
  {
    v5 = sub_1008C7940;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1008C7940()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_1008D02E4, v1, v2);
}

uint64_t sub_1008C79AC()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_1008D02C0, v1, v2);
}

void sub_1008C7A18(void **a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v9 = sub_1005B981C(&qword_101A04C20, &qword_1014820A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  v13 = *a1;
  v14 = a4[7];
  v36 = a4[6];
  v37 = v14;
  v15 = a4[9];
  v38 = a4[8];
  v39 = v15;
  v16 = a4[3];
  v32 = a4[2];
  v33 = v16;
  v17 = a4[5];
  v34 = a4[4];
  v35 = v17;
  v18 = a4[1];
  aBlock = *a4;
  v31 = v18;
  if (qword_1019F1918 != -1)
  {
    swift_once();
  }

  sub_1008CD8C0();
  v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v4)
  {
    v21 = v19;
    v29 = v13;
    v22 = a3;
    v23 = v20;
    v40 = 0;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10002640C(v21, v23);
    (*(v10 + 16))(v12, a2, v9);
    v25 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v22;
    (*(v10 + 32))(v26 + v25, v12, v9);
    *&v32 = sub_1008D028C;
    *(&v32 + 1) = v26;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = *"";
    *&v31 = sub_1008C7498;
    *(&v31 + 1) = &unk_10188BD80;
    v27 = _Block_copy(&aBlock);

    [v29 createSurfaceModel:isa response:v27];
    _Block_release(v27);
  }
}

uint64_t sub_1008C7CAC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for MainActor();
  v3[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_1008C7D4C, v5, v4);
}

uint64_t sub_1008C7D4C()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v0[2] = v1;
  v0[11] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[12] = v5;
  v0[13] = v4;

  return _swift_task_switch(sub_1008C7DF8, v5, v4);
}

uint64_t sub_1008C7DF8(uint64_t a1)
{
  v2 = v1[10];
  v3 = static MainActor.shared.getter();
  v1[14] = v3;
  v4 = swift_task_alloc();
  v1[15] = v4;
  v4[2] = v1 + 2;
  v4[3] = sub_1008CDDCC;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v1[16] = v5;
  v6 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  *v5 = v1;
  v5[1] = sub_1008C7F2C;
  v7 = v1[3];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, v3, &protocol witness table for MainActor, 0xD000000000000011, 0x8000000101574700, sub_1008D0294, v4, v6);
}

uint64_t sub_1008C7F2C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_1008C8178;
  }

  else
  {
    v5 = sub_1008C80A8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1008C80A8()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_1008C8114, v1, v2);
}

uint64_t sub_1008C8114()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008C8178()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_1008C81E4, v1, v2);
}

uint64_t sub_1008C81E4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1008C8248(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v7 = sub_1005B981C(&qword_101A04C20, &qword_1014820A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v20 = *a1;
  if (qword_1019F1918 != -1)
  {
    swift_once();
  }

  type metadata accessor for CRLUSDRendering.CompressionRequest(0);
  sub_1008CFAA8(&qword_101A07040, type metadata accessor for CRLUSDRendering.CompressionRequest, byte_1014A5D2C);
  v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v4)
  {
    v13 = v11;
    v14 = v12;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10002640C(v13, v14);
    (*(v8 + 16))(v10, a2, v7);
    v16 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v22;
    (*(v8 + 32))(v17 + v16, v10, v7);
    aBlock[4] = sub_1008CDEB8;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_1008C7498;
    aBlock[3] = &unk_10188BEE8;
    v18 = _Block_copy(aBlock);

    [v20 compressModel:isa response:v18];
    _Block_release(v18);
  }
}

uint64_t sub_1008C84E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v8 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v8 - 8);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v55 = v13;
  v56 = v14;
  __chkstk_darwin(v13);
  v53 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v51 = &v46 - v17;
  __chkstk_darwin(v18);
  v52 = &v46 - v19;
  v20 = sub_1005B981C(&qword_101A07010, &qword_101485A70);
  __chkstk_darwin(v20);
  v22 = &v46 - v21;
  v23 = sub_1005B981C(&qword_101A07018, &qword_101485A78);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v27);
  v30 = &v46 - v29;
  if (a2 >> 60 != 15)
  {
    sub_100024E98(a1, a2);
    if (qword_1019F1920 != -1)
    {
      swift_once();
    }

    sub_1008CD914();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v49 = a1;
    v50 = a2;
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      v32 = &qword_101A07010;
      v33 = &qword_101485A70;
      v34 = v22;
    }

    else
    {
      sub_1008CDA4C(v22, v30);
      sub_10000BE14(v30, v26, &qword_101A07018, &qword_101485A78);
      v35 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
      if ((*(*(v35 - 8) + 48))(v26, 1, v35) != 1)
      {
        LOBYTE(v58) = 0;
        v39 = v55;
        v40 = v56;
        v48 = *(v56 + 16);
        v48(v12, v26, v55);
        v47 = *(v40 + 56);
        v47(v12, 0, 1, v39);
        v41 = v53;
        URL.init(resolvingBookmarkData:options:relativeTo:bookmarkDataIsStale:)();
        sub_10000CAAC(v12, &unk_1019F33C0, &unk_101468A60);
        v42 = *(v56 + 32);
        v43 = v51;
        v42(v51, v41, v39);
        sub_1008CFAF0(v26, type metadata accessor for CRLUSDRendering.BookmarkableURL);
        v44 = v52;
        v42(v52, v43, v39);
        v45 = v54;
        v48(v54, v44, v39);
        v47(v45, 0, 1, v39);
        sub_1005B981C(&qword_101A04C20, &qword_1014820A0);
        CheckedContinuation.resume(returning:)();
        sub_100025870(v49, v50);
        (*(v56 + 8))(v44, v39);
        return sub_10000CAAC(v30, &qword_101A07018, &qword_101485A78);
      }

      sub_10000CAAC(v30, &qword_101A07018, &qword_101485A78);
      v34 = v26;
      v32 = &qword_101A07018;
      v33 = &qword_101485A78;
    }

    sub_10000CAAC(v34, v32, v33);
    v36 = v49;
    sub_10086E6A0();
    v37 = swift_allocError();
    *v38 = 0xD000000000000015;
    *(v38 + 8) = 0x80000001015746C0;
    *(v38 + 16) = 0;
    v58 = v37;
    sub_1005B981C(&qword_101A04C20, &qword_1014820A0);
    CheckedContinuation.resume(throwing:)();
    return sub_100025870(v36, v50);
  }

  if (a3)
  {
    v58 = a3;
    swift_errorRetain();
    sub_1005B981C(&qword_101A04C20, &qword_1014820A0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v56 + 56))(v54, 1, 1, v55, v28);
    sub_1005B981C(&qword_101A04C20, &qword_1014820A0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1008C8BD0()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtCO8Freeform29CRLUSDRendererExtensionShared24AsyncRendererSenderProxy_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLUSDRendererExtensionShared.AsyncRendererSenderProxy(uint64_t a1)
{
  result = qword_101A06D68;
  if (!qword_101A06D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008C8CC8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1008C8D64@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO8Freeform29CRLUSDRendererExtensionShared24AsyncRendererSenderProxy_uuid;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1008C8DEC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1008C8E84, v4, v3);
}

uint64_t sub_1008C8E84()
{
  v1 = swift_task_alloc();
  v0[3].i64[1] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[4].i64[0] = v2;
  *v2 = v0;
  v2[1] = sub_1008C8F84;

  return sub_1008636BC(0x6E65635364616F6CLL, 0xED0000293A5F2865, sub_1008670D0, v1);
}

uint64_t sub_1008C8F84()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1008D02C4;
  }

  else
  {
    v5 = sub_100867728;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1008C90DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1008C9174, v4, v3);
}

uint64_t sub_1008C9174()
{
  v1 = swift_task_alloc();
  v0[3].i64[1] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[4].i64[0] = v2;
  *v2 = v0;
  v2[1] = sub_1008C9274;

  return sub_1008636BC(0x6353657461647075, 0xEF293A5F28656E65, sub_100866EE0, v1);
}

uint64_t sub_1008C9274()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1008C93CC;
  }

  else
  {
    v5 = sub_100860534;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1008C93CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008C9430(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D4C8;

  return sub_1008C634C(a1, a2);
}

uint64_t sub_1008C94D4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1008C956C, v4, v3);
}

uint64_t sub_1008C956C()
{
  v1 = swift_task_alloc();
  v0[3].i64[1] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[4].i64[0] = v2;
  *v2 = v0;
  v2[1] = sub_1008C8F84;

  return sub_1008636BC(0xD000000000000012, 0x800000010156F680, sub_100866E34, v1);
}

uint64_t sub_1008C9664(float a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  type metadata accessor for MainActor();
  *(v2 + 24) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;

  return _swift_task_switch(sub_1008C9700, v4, v3);
}

uint64_t sub_1008C9700()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1008C9804;

  return sub_100860FE0(0xD000000000000011, 0x800000010156F580, sub_100866CC0, v3);
}

uint64_t sub_1008C9804(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 64) = v3;

  if (v3)
  {

    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = sub_1008C99D0;
  }

  else
  {
    *(v8 + 92) = a3;
    *(v8 + 72) = a2;
    *(v8 + 80) = a1;

    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = sub_1008C9960;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_1008C9960()
{
  v1 = *(v0 + 92);

  v2 = *(v0 + 8);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  return v2(v3, v4, v1 & 1);
}

uint64_t sub_1008C99D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008C9A34(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1008C9ACC, v4, v3);
}

uint64_t sub_1008C9ACC()
{
  v1 = swift_task_alloc();
  v0[3].i64[1] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[4].i64[0] = v2;
  *v2 = v0;
  v2[1] = sub_1008C9BC4;

  return sub_1008613A4(0xD000000000000019, 0x80000001015746E0, sub_1008CDABC, v1);
}

uint64_t sub_1008C9BC4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_1008C93CC;
  }

  else
  {
    v4[10] = a1;

    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_1008C9D0C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1008C9D0C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_1008C9D74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D3D4;

  return sub_1008C7544(a1, a2);
}

double sub_1008C9E1C(char *a1, uint64_t a2, unint64_t a3)
{
  v29 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = &v3[OBJC_IVAR____TtCO8Freeform29CRLUSDRendererExtensionShared29RendererDelegateReceiverProxy_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v28 = *(v12 + 1);
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    v17 = *(v7 + 16);
    v27 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17(v27, v29, v6);
    type metadata accessor for MainActor();
    swift_unknownObjectRetain();
    v29 = v3;
    sub_100024E98(a2, a3);
    v18 = static MainActor.shared.getter();
    v19 = (*(v7 + 80) + 48) & ~*(v7 + 80);
    v26 = a3;
    v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v21 + 2) = v18;
    *(v21 + 3) = &protocol witness table for MainActor;
    v22 = v27;
    v23 = v28;
    *(v21 + 4) = v15;
    *(v21 + 5) = v23;
    (*(v7 + 32))(&v21[v19], v22, v6);
    *&v21[v20] = v29;
    v24 = &v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8];
    v25 = v26;
    *v24 = a2;
    *(v24 + 1) = v25;
    sub_10064191C(0, 0, v11, &unk_101485AC8, v21);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1008CA0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a8;
  v8[24] = v13;
  v8[21] = a5;
  v8[22] = a6;
  v8[20] = a4;
  type metadata accessor for MainActor();
  v8[25] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008CA148, v10, v9);
}

uint64_t sub_1008CA148()
{
  if (qword_1019F1920 != -1)
  {
    swift_once();
  }

  sub_1008CE228();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  ObjectType = swift_getObjectType();

  v4 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v4;
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = *(v0 + 144);
  (*(v2 + 8))(v1, v0 + 16, ObjectType, v2);
  sub_100863E38(v0 + 16);
  v5 = *(v0 + 8);

  return v5();
}

double sub_1008CA414(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a3;
  v41 = a4;
  v39 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  v14 = &v5[OBJC_IVAR____TtCO8Freeform29CRLUSDRendererExtensionShared29RendererDelegateReceiverProxy_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v37 = *(v14 + 1);
    v18 = type metadata accessor for TaskPriority();
    v19 = *(*(v18 - 8) + 56);
    v38 = v13;
    v19(v13, 1, 1, v18);
    v20 = *(v9 + 16);
    v35 = v8;
    v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20(v36, v39, v8);
    type metadata accessor for MainActor();
    swift_unknownObjectRetain();
    v39 = v5;
    v21 = v40;
    sub_100024E98(a2, v40);

    v22 = static MainActor.shared.getter();
    v23 = *(v9 + 80);
    v34 = a5;
    v24 = (v23 + 48) & ~v23;
    v25 = (v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 2) = v22;
    *(v27 + 3) = &protocol witness table for MainActor;
    v28 = v36;
    v29 = v37;
    *(v27 + 4) = v17;
    *(v27 + 5) = v29;
    (*(v9 + 32))(&v27[v24], v28, v35);
    v30 = v38;
    *&v27[v25] = v39;
    v31 = &v27[v26];
    *v31 = a2;
    *(v31 + 1) = v21;
    v32 = &v27[(v26 + 23) & 0xFFFFFFFFFFFFFFF8];
    v33 = v34;
    *v32 = v41;
    v32[1] = v33;
    sub_10064191C(0, 0, v30, &unk_101485AB8, v27);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1008CA6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = v14;
  *(v8 + 160) = v13;
  *(v8 + 144) = a6;
  *(v8 + 152) = a8;
  *(v8 + 136) = a5;
  *(v8 + 72) = a4;
  type metadata accessor for MainActor();
  *(v8 + 184) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 192) = v10;
  *(v8 + 200) = v9;

  return _swift_task_switch(sub_1008CA774, v10, v9);
}

uint64_t sub_1008CA774()
{
  if (qword_1019F1920 != -1)
  {
    swift_once();
  }

  sub_1008CE228();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v8 = *(v0 + 136);
  ObjectType = swift_getObjectType();
  *(v0 + 64) = *(v0 + 128);
  v2 = *(v0 + 112);
  *(v0 + 32) = *(v0 + 96);
  *(v0 + 48) = v2;
  *(v0 + 16) = *(v0 + 80);
  v7 = (*(v8 + 16) + **(v8 + 16));
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = sub_1008CA988;
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);

  return v7(v5, v0 + 16, ObjectType, v4);
}

uint64_t sub_1008CA988()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_1008CAB14;
  }

  else
  {
    sub_100863E38(v2 + 16);
    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_1008CAAA4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1008CAAA4()
{
  v1 = *(v0 + 168);

  v1(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1008CAB14()
{

  sub_100863E38((v0 + 2));
  v1 = v0[27];
  v2 = v0[21];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

double sub_1008CAD24(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v36 = a2;
  v37 = a6;
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v32 - v15;
  v17 = v7 + OBJC_IVAR____TtCO8Freeform29CRLUSDRendererExtensionShared29RendererDelegateReceiverProxy_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v32 = *(v17 + 8);
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
    (*(v11 + 16))(&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
    type metadata accessor for MainActor();
    v33 = v33;
    v34 = v34;
    v35 = v35;
    swift_unknownObjectRetain();

    v22 = static MainActor.shared.getter();
    v23 = (*(v11 + 80) + 80) & ~*(v11 + 80);
    v24 = a7;
    v25 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 2) = v22;
    *(v26 + 3) = &protocol witness table for MainActor;
    v27 = v33;
    v28 = v34;
    *(v26 + 4) = v36;
    *(v26 + 5) = v27;
    v29 = v35;
    *(v26 + 6) = v28;
    *(v26 + 7) = v29;
    v30 = v32;
    *(v26 + 8) = v20;
    *(v26 + 9) = v30;
    (*(v11 + 32))(&v26[v23], v13, v10);
    v31 = &v26[v25];
    *v31 = v37;
    v31[1] = v24;
    sub_10064191C(0, 0, v16, &unk_101485AA8, v26);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1008CAFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v14;
  *(v8 + 80) = v15;
  *(v8 + 56) = v13;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  type metadata accessor for MainActor();
  *(v8 + 88) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 96) = v10;
  *(v8 + 104) = v9;

  return _swift_task_switch(sub_1008CB078, v10, v9);
}

uint64_t sub_1008CB078()
{
  v1 = MTLCreateSystemDefaultDevice();
  v0[14] = v1;
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = v0[2];
  if ([v1 registryID] != v3)
  {
    swift_unknownObjectRelease();
LABEL_10:

    sub_10086E6A0();
    v19 = swift_allocError();
    *v20 = 0xD00000000000002FLL;
    *(v20 + 8) = 0x8000000101574750;
    *(v20 + 16) = 5;
    swift_willThrow();
    goto LABEL_15;
  }

  v4 = [swift_unknownObjectRetain() newSharedTextureWithHandle:*(v0[3] + OBJC_IVAR___CRLUSDRenderingCoreRESharedTextureHandle_handle)];
  v0[15] = v4;
  if (v4)
  {
    v5 = v4;
    v6 = [v2 newSharedEventWithHandle:v0[4]];
    v0[16] = v6;
    if (v6)
    {
      v7 = v6;
      v8 = [v2 newSharedEventWithHandle:v0[5]];
      v0[17] = v8;
      if (v8)
      {
        v9 = v8;
        v25 = v0[7];
        v10 = v0[3];
        swift_unknownObjectRelease();
        ObjectType = swift_getObjectType();
        v12 = *(v25 + 24);
        v13 = v10;
        v24 = (v12 + *v12);
        v14 = swift_task_alloc();
        v0[18] = v14;
        *v14 = v0;
        v14[1] = sub_1008CB3B4;
        v15 = v0[7];
        v16 = v0[3];
        v17 = v0[8];

        return v24(v17, v5, v7, v9, v16, ObjectType, v15);
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_10086E6A0();
  v19 = swift_allocError();
  *v21 = 0xD00000000000001ELL;
  *(v21 + 8) = 0x8000000101574780;
  *(v21 + 16) = 5;
  swift_willThrow();
  swift_unknownObjectRelease_n();
LABEL_15:
  v22 = v0[9];
  swift_errorRetain();
  v22(v19);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1008CB3B4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_1008CB5A8;
  }

  else
  {
    v5 = sub_1008CB4F0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1008CB4F0()
{
  v1 = v0[9];
  v2 = v0[3];

  v1(0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1008CB5A8()
{
  v1 = v0[3];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v2 = v0[19];
  v3 = v0[9];
  swift_errorRetain();
  v3(v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1008CB864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_1008CB900, v8, v7);
}

uint64_t sub_1008CB900()
{
  v1 = v0[2].i64[0];
  v2 = swift_task_alloc();
  v0[4].i64[0] = v2;
  v2[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  v0[4].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_1008CBA00;

  return sub_1008631EC(0xD00000000000001ELL, 0x800000010156F4E0, sub_1008CDDAC, v2);
}

uint64_t sub_1008CBA00()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_1008CBBB8;
  }

  else
  {
    v5 = sub_1008CBB58;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1008CBB58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008CBBB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008CBC24(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v7 = *a1;
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v15 = *a5;
  v16 = a5[1];
  v17 = a5[2];
  v18 = *(a5 + 6);
  if (qword_1019F1918 != -1)
  {
    swift_once();
  }

  sub_1008CDBB0();
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v5)
  {

    sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v12 = v9;
    v13 = v10;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10002640C(v12, v13);
    [v7 rendererStateChanged:v8.super.isa state:{isa, v15, v16, v17, v18}];

    sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1008CBD84(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v29 = a2;
  v8 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = *a1;
  v13.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v14 = a5[1];
  aBlock = *a5;
  v26 = v14;
  v27 = a5[2];
  v28 = *(a5 + 6);
  if (qword_1019F1918 != -1)
  {
    swift_once();
  }

  sub_1008CDBB0();
  v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v5)
  {
  }

  else
  {
    v17 = v15;
    v24 = v12;
    v18 = v16;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10002640C(v17, v18);
    (*(v9 + 16))(v11, v29, v8);
    v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v21 = swift_allocObject();
    (*(v9 + 32))(v21 + v20, v11, v8);
    *&v27 = sub_1008D02BC;
    *(&v27 + 1) = v21;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = *"";
    *&v26 = sub_1008BE72C;
    *(&v26 + 1) = &unk_10188BE70;
    v22 = _Block_copy(&aBlock);

    [v24 rendererStateChangedWithAcknowledge:v13.super.isa state:isa response:v22];
    _Block_release(v22);
  }
}

void sub_1008CC004(id *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v25 = a6;
  v20 = a5;
  v21 = a2;
  v9 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v20 - v12;
  v24 = *a1;
  v23 = [a3 device];
  v22 = [v23 registryID];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v15 = [a4 newSharedEventHandle];
  v16 = [v20 newSharedEventHandle];
  (*(v10 + 16))(v13, v21, v9);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v17, v13, v9);
  aBlock[4] = sub_1008D02BC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_1008BE72C;
  aBlock[3] = &unk_10188BE20;
  v19 = _Block_copy(aBlock);

  [v24 rendererSharedTextureChangedXPC:isa deviceID:v22 textureHandle:v25 rendererFrameCountHandle:v15 displayerFrameCountHandle:v16 response:v19];
  _Block_release(v19);
  swift_unknownObjectRelease();
}

uint64_t sub_1008CC258()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_1008CC2B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v8 + 15;
  v10 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22[-v12];
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v7 + 16))(v10, a1, v6);
  type metadata accessor for MainActor();

  sub_100863F4C(a2, v22);
  v15 = static MainActor.shared.getter();
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v17 = (v9 + v16) & 0xFFFFFFFFFFFFFFF0;
  v18 = swift_allocObject();
  *(v18 + 2) = v15;
  *(v18 + 3) = &protocol witness table for MainActor;
  *(v18 + 4) = v3;
  (*(v7 + 32))(&v18[v16], v10, v6);
  v19 = &v18[v17];
  v20 = *(a2 + 16);
  *v19 = *a2;
  *(v19 + 1) = v20;
  *(v19 + 2) = *(a2 + 32);
  *(v19 + 6) = *(a2 + 48);
  sub_10064191C(0, 0, v13, &unk_101485A90, v18);

  return result;
}

uint64_t sub_1008CC4F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_1008CC58C, v5, v4);
}

uint64_t sub_1008CC58C()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = vextq_s8(v3, v3, 8uLL);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1008CC68C;

  return sub_1008631EC(0xD00000000000002DLL, 0x800000010156F410, sub_1008CDB90, v2);
}

uint64_t sub_1008CC68C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_1008CC7E4;
  }

  else
  {
    v5 = sub_100867720;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1008CC7E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008CC848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v8;
  v6[10] = v7;

  return _swift_task_switch(sub_1008CC8E8, v8, v7);
}

uint64_t sub_1008CC8E8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v4;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_1008CC9F0;

  return sub_1008631EC(0xD00000000000002CLL, 0x800000010156F1F0, sub_1008CDB6C, v3);
}

uint64_t sub_1008CC9F0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1008CCB48;
  }

  else
  {
    v5 = sub_100863554;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1008CCB48()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1008CCBD0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, CGImage *a5)
{
  sub_1005B981C(&qword_101A1B3C0, &qword_1014859E0);

  sub_1008C6C58(a1, a2, a3, a4, a5);
}

unint64_t sub_1008CCCA8()
{
  result = qword_101A06FB8;
  if (!qword_101A06FB8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_1005C4E5C(&qword_101A06FB0, &unk_1014859E8);
    v4[0] = sub_1008CCD2C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_101A06FB8);
  }

  return result;
}

unint64_t sub_1008CCD2C()
{
  result = qword_101A06FC0;
  if (!qword_101A06FC0)
  {
    result = swift_getWitnessTable("YE;", &type metadata for CRLUSDZCompressionKind, v0, v1);
    atomic_store(result, &qword_101A06FC0);
  }

  return result;
}

unint64_t sub_1008CCD80()
{
  result = qword_101A06FD0;
  if (!qword_101A06FD0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_1005C4E5C(&qword_101A06FC8, &qword_1014859F8);
    v4[0] = sub_1008CCE04();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_101A06FD0);
  }

  return result;
}

unint64_t sub_1008CCE04()
{
  result = qword_101A06FD8;
  if (!qword_101A06FD8)
  {
    result = swift_getWitnessTable(aE_21, &type metadata for CRLUSDRendering.SceneAction, v0, v1);
    atomic_store(result, &qword_101A06FD8);
  }

  return result;
}

uint64_t sub_1008CCE5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000101574820 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E6E6F63736964 && a2 == 0xEC00000064657463 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101574840 == a2)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_1008CCF88(void *a1)
{
  v34 = sub_1005B981C(&qword_101A070A0, &qword_101485C98);
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v27 - v2;
  v29 = sub_1005B981C(&qword_101A070A8, &qword_101485CA0);
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = &v27 - v3;
  v5 = sub_1005B981C(&qword_101A070B0, &qword_101485CA8);
  v30 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v8 = sub_1005B981C(&qword_101A070B8, &unk_101485CB0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v12 = a1[3];
  v36 = a1;
  v13 = sub_100020E58(a1, v12);
  sub_1008CFD74();
  v14 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    goto LABEL_11;
  }

  v28 = v5;
  v35 = 0;
  v16 = v33;
  v15 = v34;
  v17 = KeyedDecodingContainer.allKeys.getter();
  v18 = (2 * *(v17 + 16)) | 1;
  v37 = v17;
  v38 = v17 + 32;
  v39 = 0;
  v40 = v18;
  v19 = sub_10074DC2C();
  v13 = v11;
  if (v19 == 3 || v39 != v40 >> 1)
  {
    v21 = type metadata accessor for DecodingError();
    swift_allocError();
    v23 = v22;
    sub_1005B981C(&qword_101A0AEE0, &qword_10146C160);
    *v23 = &type metadata for CRLUSDRendererExtensionShared.ExtensionError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v21 - 8) + 104))(v23, enum case for DecodingError.typeMismatch(_:), v21);
    swift_willThrow();
LABEL_9:
    (*(v9 + 8))(v13, v8);
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (!v19)
  {
    v41 = 0;
    sub_1008CFE70();
    v25 = v35;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v25)
    {
      (*(v30 + 8))(v7, v28);
      (*(v9 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v19 == 1)
  {
    v41 = 1;
    sub_1008CFE1C();
    v20 = v35;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v20)
    {
      (*(v31 + 8))(v4, v29);
      (*(v9 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 0;
      goto LABEL_11;
    }

    (*(v9 + 8))(v11, v8);
    goto LABEL_10;
  }

  v41 = 2;
  sub_1008CFDC8();
  v26 = v35;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (!v26)
  {
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v32 + 8))(v16, v15);
  }

  (*(v9 + 8))(v11, v8);
  swift_unknownObjectRelease();
LABEL_11:
  sub_100005070(v36);
  return v13;
}

unint64_t sub_1008CD590()
{
  result = qword_101A06FE0;
  if (!qword_101A06FE0)
  {
    result = swift_getWitnessTable(byte_1014A5954, &type metadata for CRLUSDRendering.SceneConfiguration, v0, v1);
    atomic_store(result, &qword_101A06FE0);
  }

  return result;
}

uint64_t sub_1008CD5F4(uint64_t a1, uint64_t a2)
{
  sub_1005B981C(&qword_101A04C08, &qword_101482070);

  return sub_1008C5AA4(a1, a2);
}

uint64_t sub_1008CD680(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D4C8;

  return sub_1008BE9DC(a1, a2);
}

uint64_t sub_1008CD720(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1008BF074(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1008CD7E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D3D4;

  return sub_1008C0708();
}

unint64_t sub_1008CD8C0()
{
  result = qword_101A07008;
  if (!qword_101A07008)
  {
    result = swift_getWitnessTable(aM_35, &type metadata for CRLUSDRendering.SurfaceRequest, v0, v1);
    atomic_store(result, &qword_101A07008);
  }

  return result;
}

unint64_t sub_1008CD914()
{
  result = qword_101A07020;
  if (!qword_101A07020)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_1005C4E5C(&qword_101A07010, &qword_101485A70);
    v4[0] = sub_1008CD998();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_101A07020);
  }

  return result;
}

unint64_t sub_1008CD998()
{
  result = qword_101A07028;
  if (!qword_101A07028)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_1005C4E5C(&qword_101A07018, &qword_101485A78);
    v4[0] = sub_1008CFAA8(&qword_101A07030, type metadata accessor for CRLUSDRendering.BookmarkableURL, aE_22);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_101A07028);
  }

  return result;
}

uint64_t sub_1008CDA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A07018, &qword_101485A78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1008CDAD8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1005B981C(&qword_101A04C28, &qword_101485A80);

  sub_1008C7300(a1, a2, a3);
}

unint64_t sub_1008CDBB0()
{
  result = qword_101A07038;
  if (!qword_101A07038)
  {
    result = swift_getWitnessTable(byte_1014A5A74, &type metadata for CRLUSDRendering.RendererState, v0, v1);
    atomic_store(result, &qword_101A07038);
  }

  return result;
}

void sub_1008CDC04(uint64_t a1)
{
  sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);

  sub_1008C14B4(a1);
}

uint64_t sub_1008CDC80(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1008CB864(a1, v7, v8, v9, v1 + v5, v1 + v6);
}

uint64_t sub_1008CDDE8()
{
  v1 = sub_1005B981C(&qword_101A04C20, &qword_1014820A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1008CDF50(uint64_t a1)
{
  type metadata accessor for UUID();
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_1008CAFC4(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_1008CE0B0(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[2];
  v6 = v1[4];
  v12 = v1[3];
  v7 = v1[5];
  v8 = *(v1 + v5);
  v9 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1008CA6C0(a1, v13, v12, v6, v7, v1 + v4, v8, v9);
}

unint64_t sub_1008CE228()
{
  result = qword_101A07048;
  if (!qword_101A07048)
  {
    result = swift_getWitnessTable(aU_25, &type metadata for CRLUSDRendering.RendererState, v0, v1);
    atomic_store(result, &qword_101A07048);
  }

  return result;
}

uint64_t sub_1008CE27C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[2];
  v7 = v1[3];
  v8 = *(v1 + v5);
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10002D4C8;

  return sub_1008CA0A0(a1, v6, v7, v9, v10, v1 + v4, v8, v11);
}

double sub_1008CE3D8(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v14 = a1 + OBJC_IVAR____TtCO8Freeform29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy_renderer;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = *(v14 + 8);
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    type metadata accessor for MainActor();
    _Block_copy(a2);

    swift_unknownObjectRetain();
    v19 = static MainActor.shared.getter();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = sub_1008CFB50;
    v20[5] = v13;
    v20[6] = v16;
    v20[7] = v17;
    sub_10064191C(0, 0, v12, &unk_101485B48, v20);

    swift_unknownObjectRelease();
  }

  else
  {
    v22 = type metadata accessor for UUID();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v9, 1, 1, v22);
    sub_1008CF11C();
    swift_allocError();
    *v24 = xmmword_101463530;
    sub_10000BE14(v9, v6, &qword_1019F6990, &qword_10146D2F0);
    v25 = (*(v23 + 48))(v6, 1, v22);
    _Block_copy(a2);
    isa = 0;
    if (v25 != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v23 + 8))(v6, v22);
    }

    v27 = _convertErrorToNSError(_:)();
    (a2)[2](a2, isa, v27);

    sub_10000CAAC(v9, &qword_1019F6990, &qword_10146D2F0);
  }

  return result;
}

double sub_1008CE764(uint64_t a1, unint64_t a2, char *a3, void (**a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30[1] = a6;
  v14 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v14 - 8);
  v16 = v30 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  v18 = &a3[OBJC_IVAR____TtCO8Freeform29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy_renderer];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v30[0] = a8;
    v21 = a7;
    v22 = *(v18 + 1);
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
    type metadata accessor for MainActor();
    _Block_copy(a4);
    swift_unknownObjectRetain();
    v24 = a3;
    sub_100024E98(a1, a2);

    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = &protocol witness table for MainActor;
    v26[4] = v20;
    v26[5] = v22;
    v26[6] = v24;
    v26[7] = a1;
    v26[8] = a2;
    v26[9] = v21;
    v26[10] = v17;
    sub_10064191C(0, 0, v16, v30[0], v26);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1008CF11C();
    swift_allocError();
    *v28 = xmmword_101463530;
    _Block_copy(a4);
    v29 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v29);
  }

  return result;
}

double sub_1008CE9CC(char *a1, void (**a2)(void, void, void, void), float a3)
{
  v6 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = &a1[OBJC_IVAR____TtCO8Freeform29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy_renderer];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(v10 + 1);
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    type metadata accessor for MainActor();
    _Block_copy(a2);
    swift_unknownObjectRetain();

    v15 = a1;
    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = &protocol witness table for MainActor;
    *(v17 + 32) = v12;
    *(v17 + 40) = v13;
    *(v17 + 48) = a3;
    *(v17 + 56) = sub_1008CF558;
    *(v17 + 64) = v9;
    *(v17 + 72) = v15;
    sub_10064191C(0, 0, v8, &unk_101485B08, v17);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1008CF11C();
    swift_allocError();
    *v19 = xmmword_101463530;
    _Block_copy(a2);
    v20 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, 0, v20);
  }

  return result;
}

double sub_1008CEC38(uint64_t a1, unint64_t a2, char *a3, void (**a4)(void, void, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30[1] = a6;
  v14 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v14 - 8);
  v16 = v30 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  v18 = &a3[OBJC_IVAR____TtCO8Freeform29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy_surfaceRenderer];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v30[0] = a8;
    v21 = a7;
    v22 = *(v18 + 1);
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
    type metadata accessor for MainActor();
    _Block_copy(a4);
    swift_unknownObjectRetain();
    v24 = a3;
    sub_100024E98(a1, a2);

    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = &protocol witness table for MainActor;
    v26[4] = v20;
    v26[5] = v22;
    v26[6] = v24;
    v26[7] = a1;
    v26[8] = a2;
    v26[9] = v21;
    v26[10] = v17;
    sub_10064191C(0, 0, v16, v30[0], v26);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1008CF11C();
    swift_allocError();
    *v28 = xmmword_101463530;
    _Block_copy(a4);
    v29 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v29);
  }

  return result;
}

double sub_1008CEEA4(uint64_t a1, unint64_t a2, char *a3, void (**a4)(void, void, void))
{
  v8 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = &a3[OBJC_IVAR____TtCO8Freeform29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy_compressor];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *(v12 + 1);
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    type metadata accessor for MainActor();
    _Block_copy(a4);
    swift_unknownObjectRetain();
    v17 = a3;
    sub_100024E98(a1, a2);

    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v14;
    v19[5] = v15;
    v19[6] = v17;
    v19[7] = a1;
    v19[8] = a2;
    v19[9] = sub_10067C6B8;
    v19[10] = v11;
    sub_10064191C(0, 0, v10, &unk_101485AD8, v19);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1008CF11C();
    swift_allocError();
    *v21 = xmmword_101463530;
    _Block_copy(a4);
    v22 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v22);
  }

  return result;
}

unint64_t sub_1008CF11C()
{
  result = qword_101A07050;
  if (!qword_101A07050)
  {
    result = swift_getWitnessTable(byte_101485C58, &type metadata for CRLUSDRendererExtensionShared.ExtensionError, v0, v1);
    atomic_store(result, &qword_101A07050);
  }

  return result;
}

uint64_t sub_1008CF170(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1008C46A0(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1008CF264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008CF2C8(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1008C3BB4(a1, v12, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1008CF3BC()
{
  result = qword_101A07068;
  if (!qword_101A07068)
  {
    result = swift_getWitnessTable(aU_26, &type metadata for CRLUSDRendering.SurfaceRequest, v0, v1);
    atomic_store(result, &qword_101A07068);
  }

  return result;
}

uint64_t sub_1008CF464(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1008C339C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1008CF560(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002D4C8;

  return sub_1008C2B74(v8, a1, v4, v5, v6, v7, v9, v10);
}

unint64_t sub_1008CF64C()
{
  result = qword_101A07070;
  if (!qword_101A07070)
  {
    result = swift_getWitnessTable("qE;", &type metadata for CRLUSDZCompressionKind, v0, v1);
    atomic_store(result, &qword_101A07070);
  }

  return result;
}

uint64_t sub_1008CF6A0(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1008C25A0(a1, v12, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1008CF794()
{
  result = qword_101A07078;
  if (!qword_101A07078)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_1005C4E5C(&qword_101A06FC8, &qword_1014859F8);
    v4[0] = sub_1008CF818();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_101A07078);
  }

  return result;
}

unint64_t sub_1008CF818()
{
  result = qword_101A07080;
  if (!qword_101A07080)
  {
    result = swift_getWitnessTable(aM_36, &type metadata for CRLUSDRendering.SceneAction, v0, v1);
    atomic_store(result, &qword_101A07080);
  }

  return result;
}

uint64_t sub_1008CF86C(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D3D4;

  return sub_1008C1FE0(a1, v12, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1008CF960()
{
  result = qword_101A07088;
  if (!qword_101A07088)
  {
    result = swift_getWitnessTable(byte_1014A597C, &type metadata for CRLUSDRendering.SceneConfiguration, v0, v1);
    atomic_store(result, &qword_101A07088);
  }

  return result;
}

uint64_t sub_1008CF9B4(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1008C1968(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1008CFAA8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1008CFAF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1008CFB58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1008C15BC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1008CFC2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008CFC80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1008CFCDC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1008CFD20()
{
  result = qword_101A07098;
  if (!qword_101A07098)
  {
    result = swift_getWitnessTable(a9_26, &type metadata for CRLUSDRendererExtensionShared.ExtensionError, v0, v1);
    atomic_store(result, &qword_101A07098);
  }

  return result;
}

unint64_t sub_1008CFD74()
{
  result = qword_101A070C0;
  if (!qword_101A070C0)
  {
    result = swift_getWitnessTable(asc_101486050, &type metadata for CRLUSDRendererExtensionShared.ExtensionError.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A070C0);
  }

  return result;
}

unint64_t sub_1008CFDC8()
{
  result = qword_101A070C8;
  if (!qword_101A070C8)
  {
    result = swift_getWitnessTable(aY_64, &type metadata for CRLUSDRendererExtensionShared.ExtensionError.ForegroundAssertionCodingKeys, v0, v1);
    atomic_store(result, &qword_101A070C8);
  }

  return result;
}

unint64_t sub_1008CFE1C()
{
  result = qword_101A070D0;
  if (!qword_101A070D0)
  {
    result = swift_getWitnessTable(byte_101485FB0, &type metadata for CRLUSDRendererExtensionShared.ExtensionError.DisconnectedCodingKeys, v0, v1);
    atomic_store(result, &qword_101A070D0);
  }

  return result;
}

unint64_t sub_1008CFE70()
{
  result = qword_101A070D8;
  if (!qword_101A070D8)
  {
    result = swift_getWitnessTable(byte_101485F60, &type metadata for CRLUSDRendererExtensionShared.ExtensionError.InterfaceMismatchCodingKeys, v0, v1);
    atomic_store(result, &qword_101A070D8);
  }

  return result;
}