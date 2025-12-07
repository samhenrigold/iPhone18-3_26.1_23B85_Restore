uint64_t AttributionPreMatchIntent.adamID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AttributionPreMatchIntent(0) + 24));

  return v1;
}

uint64_t AttributionPreMatchIntent.bundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AttributionPreMatchIntent(0) + 28));

  return v1;
}

uint64_t AttributionPreMatchIntent.callEventType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AttributionPreMatchIntent(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t AttributionPreMatchIntent.accountToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for AttributionPreMatchIntent(0) + 36));

  return v1;
}

uint64_t AttributionPreMatchIntent.init(currentTime:config:adamID:bundleID:callEventType:accountToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = *a7;
  v19 = sub_230030E00();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  matched = type metadata accessor for AttributionPreMatchIntent(0);
  result = sub_230007440(a2, a9 + matched[5]);
  v22 = (a9 + matched[6]);
  *v22 = a3;
  v22[1] = a4;
  v23 = (a9 + matched[7]);
  *v23 = a5;
  v23[1] = a6;
  *(a9 + matched[8]) = v18;
  v24 = (a9 + matched[9]);
  *v24 = a8;
  v24[1] = a10;
  return result;
}

uint64_t AttributionPreMatchIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB06688, ".R");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230015B4C();
  sub_230031780();
  v11[15] = 0;
  sub_230030E00();
  sub_230016FCC(&qword_281494290, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_230031640();
  if (!v2)
  {
    matched = type metadata accessor for AttributionPreMatchIntent(0);
    v11[14] = 1;
    type metadata accessor for AttributionConfig(0);
    sub_230016FCC(&qword_27DB06308, type metadata accessor for AttributionConfig, protocol conformance descriptor for AttributionConfig);
    sub_230031640();
    v11[13] = 2;
    sub_230031600();
    v11[12] = 3;
    sub_230031600();
    v11[11] = *(v3 + *(matched + 32));
    v11[10] = 4;
    sub_2300078CC();
    sub_230031640();
    v11[9] = 5;
    sub_230031600();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_230015B4C()
{
  result = qword_27DB06690;
  if (!qword_27DB06690)
  {
    result = swift_getWitnessTable("]N R@d", &type metadata for AttributionPreMatchIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06690);
  }

  return result;
}

uint64_t AttributionPreMatchIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = type metadata accessor for AttributionConfig(0);
  MEMORY[0x28223BE20](v28);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_230030E00();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22FFED9B8(&qword_27DB06698, &unk_230036698);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v27 - v7;
  matched = type metadata accessor for AttributionPreMatchIntent(0);
  MEMORY[0x28223BE20](matched);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFEDA4C(a1, a1[3]);
  sub_230015B4C();
  v32 = v8;
  v12 = v34;
  sub_230031770();
  if (v12)
  {
    return sub_22FFEE60C(a1);
  }

  v13 = v29;
  v41 = 0;
  sub_230016FCC(&qword_27DB05CA0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_230031520();
  (*(v13 + 32))(v11, v31, v5);
  v40 = 1;
  sub_230016FCC(&qword_27DB06328, type metadata accessor for AttributionConfig, "9U R\\z");
  sub_230031520();
  sub_230007440(v4, &v11[matched[5]]);
  v39 = 2;
  v14 = sub_2300314E0();
  v15 = &v11[matched[6]];
  *v15 = v14;
  v15[1] = v16;
  v38 = 3;
  v17 = sub_2300314E0();
  v18 = v30;
  v19 = &v11[matched[7]];
  *v19 = v17;
  v19[1] = v20;
  v36 = 4;
  sub_23000805C();
  sub_230031520();
  v11[matched[8]] = v37;
  v35 = 5;
  v21 = sub_2300314E0();
  v34 = v22;
  v23 = v21;
  (*(v18 + 8))(v32, v33);
  v24 = &v11[matched[9]];
  v25 = v34;
  *v24 = v23;
  *(v24 + 1) = v25;
  sub_230016124(v11, v27, type metadata accessor for AttributionPreMatchIntent);
  sub_22FFEE60C(a1);
  return sub_23001618C(v11, type metadata accessor for AttributionPreMatchIntent);
}

uint64_t sub_230016124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23001618C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

PromotedContentJetClient::AttributionPreMatchIntent::CodingKeys_optional __swiftcall AttributionPreMatchIntent.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PromotedContentJetClient::AttributionPreMatchIntent::CodingKeys_optional __swiftcall AttributionPreMatchIntent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = AttributionPreMatchIntent.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t AttributionPreMatchIntent.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x54746E6572727563;
  v3 = 0x4449656C646E7562;
  v4 = 0x6E6576456C6C6163;
  if (v1 != 4)
  {
    v4 = 0x54746E756F636361;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6769666E6F63;
  if (v1 != 1)
  {
    v5 = 0x44496D616461;
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

uint64_t sub_2300163C8(uint64_t a1)
{
  sub_2300311A0();
}

void sub_2300164E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656D69;
  v4 = 0x54746E6572727563;
  v5 = 0xE800000000000000;
  v6 = 0x4449656C646E7562;
  v7 = 0xED00006570795474;
  v8 = 0x6E6576456C6C6163;
  if (v2 != 4)
  {
    v8 = 0x54746E756F636361;
    v7 = 0xEC0000006E656B6FLL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6769666E6F63;
  if (v2 != 1)
  {
    v9 = 0x44496D616461;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE600000000000000;
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

uint64_t sub_2300165B4()
{
  v1 = *v0;
  v2 = 0x54746E6572727563;
  v3 = 0x4449656C646E7562;
  v4 = 0x6E6576456C6C6163;
  if (v1 != 4)
  {
    v4 = 0x54746E756F636361;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6769666E6F63;
  if (v1 != 1)
  {
    v5 = 0x44496D616461;
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

PromotedContentJetClient::AttributionPreMatchIntent::CodingKeys_optional sub_230016684@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = AttributionPreMatchIntent.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_2300166BC(uint64_t a1)
{
  v2 = sub_230015B4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300166F8(uint64_t a1)
{
  v2 = sub_230015B4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttributionPreMatchIntent.ReturnType.description.getter()
{
  v1 = *v0;

  sub_2300313E0();
  MEMORY[0x23190F560](0xD00000000000002DLL, 0x800000023003A710);
  v2 = MEMORY[0x23190F640](v1, MEMORY[0x277D837D0]);
  MEMORY[0x23190F560](v2);

  MEMORY[0x23190F560](0xD000000000000010, 0x800000023003A740);
  sub_22FFED9B8(&qword_27DB063C0, &qword_230035360);
  v3 = sub_230031170();
  MEMORY[0x23190F560](v3);

  return 0;
}

uint64_t AttributionPreMatchIntent.ReturnType.intentContext.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t AttributionPreMatchIntent.ReturnType.intentContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t AttributionPreMatchIntent.ReturnType.encode(to:)(void *a1)
{
  v4 = sub_22FFED9B8(&qword_27DB066A0, &qword_2300366A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = v1[2];
  v11 = v1[1];
  v12 = v9;
  sub_22FFEDA4C(a1, a1[3]);
  sub_230016A98();

  sub_230031780();
  v13 = v8;
  v15 = 0;
  sub_22FFED9B8(&qword_27DB06380, &qword_2300366B0);
  sub_230009828(&qword_281493EA0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_230031640();

  if (!v2)
  {
    v13 = v11;
    v14 = v12;
    v15 = 1;
    sub_230007920();

    sub_2300315D0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_230016A98()
{
  result = qword_27DB066A8;
  if (!qword_27DB066A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionPreMatchIntent.ReturnType.CodingKeys, &type metadata for AttributionPreMatchIntent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB066A8);
  }

  return result;
}

uint64_t AttributionPreMatchIntent.ReturnType.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_22FFED9B8(&qword_27DB066B0, &qword_2300366B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  sub_22FFEDA4C(a1, a1[3]);
  sub_230016A98();
  sub_230031770();
  if (v2)
  {
    sub_22FFEE60C(a1);
  }

  else
  {
    sub_22FFED9B8(&qword_27DB06380, &qword_2300366B0);
    v14 = 0;
    sub_230009828(&qword_281493E98, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_230031520();
    v10 = v13[0];
    v14 = 1;
    sub_2300080B0();
    sub_2300314B0();
    (*(v6 + 8))(v8, v5);
    v12 = v13[0];
    v11 = v13[1];

    *a2 = v10;
    a2[1] = v12;
    a2[2] = v11;

    sub_22FFEE60C(a1);
  }
}

PromotedContentJetClient::AttributionPreMatchIntent::ReturnType::CodingKeys_optional __swiftcall AttributionPreMatchIntent.ReturnType.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x73656972657571 && stringValue._object == 0xE700000000000000;
  if (v5 || (sub_2300316D0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6F43746E65746E69 && object == 0xED0000747865746ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2300316D0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t AttributionPreMatchIntent.ReturnType.CodingKeys.hashValue.getter()
{
  v1 = *v0;
  sub_230031740();
  MEMORY[0x23190FB00](v1);
  return sub_230031760();
}

uint64_t AttributionPreMatchIntent.ReturnType.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x6F43746E65746E69;
  }

  else
  {
    return 0x73656972657571;
  }
}

uint64_t sub_230016F48(uint64_t a1)
{
  *(a1 + 8) = sub_230016FCC(&qword_27DB066B8, type metadata accessor for AttributionPreMatchIntent, "-; R\be");
  result = sub_230016FCC(&qword_27DB066C0, type metadata accessor for AttributionPreMatchIntent, protocol conformance descriptor for AttributionPreMatchIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_230016FCC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_230017018()
{
  result = qword_27DB066C8;
  if (!qword_27DB066C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionPreMatchIntent.CodingKeys, &type metadata for AttributionPreMatchIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB066C8);
  }

  return result;
}

unint64_t sub_230017070()
{
  result = qword_27DB066D0;
  if (!qword_27DB066D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionPreMatchIntent.CodingKeys, &type metadata for AttributionPreMatchIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB066D0);
  }

  return result;
}

unint64_t sub_2300170C8()
{
  result = qword_27DB066D8;
  if (!qword_27DB066D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionPreMatchIntent.CodingKeys, &type metadata for AttributionPreMatchIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB066D8);
  }

  return result;
}

unint64_t sub_230017120()
{
  result = qword_27DB066E0;
  if (!qword_27DB066E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionPreMatchIntent.ReturnType.CodingKeys, &type metadata for AttributionPreMatchIntent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB066E0);
  }

  return result;
}

unint64_t sub_230017178()
{
  result = qword_27DB066E8;
  if (!qword_27DB066E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionPreMatchIntent.ReturnType.CodingKeys, &type metadata for AttributionPreMatchIntent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB066E8);
  }

  return result;
}

unint64_t sub_2300171D0()
{
  result = qword_27DB066F0;
  if (!qword_27DB066F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionPreMatchIntent.ReturnType.CodingKeys, &type metadata for AttributionPreMatchIntent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB066F0);
  }

  return result;
}

uint64_t sub_230017224()
{
  if (*v0)
  {
    return 0x6F43746E65746E69;
  }

  else
  {
    return 0x73656972657571;
  }
}

uint64_t sub_230017270(uint64_t a1)
{
  v2 = sub_230016A98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300172AC(uint64_t a1)
{
  v2 = sub_230016A98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230017310(uint64_t a1)
{
  result = sub_230030E00();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AttributionConfig(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_2300173C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2300173D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23001741C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t StandaloneAppOpenSignal.shortDescription.getter()
{
  v1 = v0;
  sub_2300313E0();

  MEMORY[0x23190F560](*(v1 + 16), *(v1 + 24));
  MEMORY[0x23190F560](0x7473656D6974202CLL, 0xEC0000003A706D61);
  v2 = type metadata accessor for StandaloneAppOpenSignal(0);
  sub_230030E00();
  sub_230018998(&qword_27DB05F50, MEMORY[0x277CC95B8]);
  v3 = sub_2300316B0();
  MEMORY[0x23190F560](v3);

  MEMORY[0x23190F560](0x736572706D69202CLL, 0xEF3A64496E6F6973);
  MEMORY[0x23190F560](*(v1 + *(v2 + 36)), *(v1 + *(v2 + 36) + 8));
  MEMORY[0x23190F560](125, 0xE100000000000000);
  return 0x3A64496D6164617BLL;
}

uint64_t StandaloneAppOpenSignal.bundleId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t StandaloneAppOpenSignal.adamId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t StandaloneAppOpenSignal.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StandaloneAppOpenSignal(0) + 24);
  v4 = sub_230030E00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StandaloneAppOpenSignal.originatorBundleId.getter()
{
  v1 = *(v0 + *(type metadata accessor for StandaloneAppOpenSignal(0) + 32));

  return v1;
}

uint64_t StandaloneAppOpenSignal.impressionId.getter()
{
  v1 = *(v0 + *(type metadata accessor for StandaloneAppOpenSignal(0) + 36));

  return v1;
}

uint64_t StandaloneAppOpenSignal.accountToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for StandaloneAppOpenSignal(0) + 40));

  return v1;
}

PromotedContentJetClient::StandaloneAppOpenSignal::CodingKeys_optional __swiftcall StandaloneAppOpenSignal.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PromotedContentJetClient::StandaloneAppOpenSignal::CodingKeys_optional __swiftcall StandaloneAppOpenSignal.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = StandaloneAppOpenSignal.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_230017844()
{
  v1 = *v0;
  v2 = 0x6449656C646E7562;
  v3 = 0x54746E756F636361;
  if (v1 != 5)
  {
    v3 = 0x656D69546863616DLL;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6973736572706D69;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x64496D616461;
  if (v1 != 1)
  {
    v5 = 0x6D617473656D6974;
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

uint64_t sub_230017958(uint64_t a1)
{
  sub_2300311A0();
}

void sub_230017A9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6449656C646E7562;
  v5 = 0xEC0000006E656B6FLL;
  v6 = 0x54746E756F636361;
  if (v2 != 5)
  {
    v6 = 0x656D69546863616DLL;
    v5 = 0xED0000706D617473;
  }

  v7 = 0x800000023003A1B0;
  v8 = 0xD000000000000012;
  if (v2 != 3)
  {
    v8 = 0x6973736572706D69;
    v7 = 0xEC00000064496E6FLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x64496D616461;
  if (v2 != 1)
  {
    v10 = 0x6D617473656D6974;
    v9 = 0xE900000000000070;
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

PromotedContentJetClient::StandaloneAppOpenSignal::CodingKeys_optional sub_230017B9C@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = StandaloneAppOpenSignal.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_230017BD4(uint64_t a1)
{
  v2 = sub_230018944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230017C10(uint64_t a1)
{
  v2 = sub_230018944();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StandaloneAppOpenSignal.init(bundleId:adamId:timestamp:originatorBundleId:impressionId:accountToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v16 = type metadata accessor for StandaloneAppOpenSignal(0);
  v17 = v16[6];
  v18 = sub_230030E00();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&a9[v17], a5, v18);
  v20 = &a9[v16[8]];
  *v20 = a6;
  *(v20 + 1) = a7;
  v21 = &a9[v16[9]];
  *v21 = a8;
  *(v21 + 1) = a10;
  v22 = &a9[v16[10]];
  *v22 = a11;
  *(v22 + 1) = a12;
  v23 = mach_continuous_time();
  result = (*(v19 + 8))(a5, v18);
  v25 = &a9[v16[7]];
  *v25 = v23;
  v25[8] = 0;
  return result;
}

uint64_t StandaloneAppOpenSignal.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB066F8, &qword_230036AA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230018944();
  sub_230031780();
  v8[15] = 0;
  sub_2300315B0();
  if (!v1)
  {
    v8[14] = 1;
    sub_230031600();
    type metadata accessor for StandaloneAppOpenSignal(0);
    v8[13] = 2;
    sub_230030E00();
    sub_230018998(&qword_281494290, MEMORY[0x277CC9580]);
    sub_230031640();
    v8[12] = 3;
    sub_230031600();
    v8[11] = 4;
    sub_230031600();
    v8[10] = 5;
    sub_230031600();
    v8[9] = 6;
    sub_2300315F0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t StandaloneAppOpenSignal.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_230030E00();
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22FFED9B8(&qword_27DB06708, &qword_230036AA8);
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v8 = &v38 - v7;
  v9 = type metadata accessor for StandaloneAppOpenSignal(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v45 = a1;
  sub_22FFEDA4C(a1, v12);
  sub_230018944();
  v43 = v8;
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(v45);
  }

  v13 = v41;
  v14 = v42;
  v39 = v9;
  v15 = v4;
  v52 = 0;
  v17 = v11;
  *v11 = sub_230031490();
  v11[1] = v18;
  v51 = 1;
  v11[2] = sub_2300314E0();
  v11[3] = v19;
  v50 = 2;
  sub_230018998(&qword_27DB05CA0, MEMORY[0x277CC95A0]);
  v20 = v6;
  sub_230031520();
  v38 = 0;
  v21 = v39;
  (*(v14 + 32))(v11 + v39[6], v20, v15);
  v49 = 3;
  v22 = v43;
  v23 = v38;
  v24 = sub_2300314E0();
  if (v23)
  {
    (*(v13 + 8))(v22, v44);
    v38 = v23;
    sub_22FFEE60C(v45);

    return (*(v14 + 8))(v11 + v39[6], v15);
  }

  else
  {
    v26 = (v11 + v21[8]);
    *v26 = v24;
    v26[1] = v25;
    v48 = 4;
    v27 = sub_2300314E0();
    v28 = (v11 + v21[9]);
    *v28 = v27;
    v28[1] = v29;
    v47 = 5;
    v30 = sub_2300314E0();
    v31 = (v11 + v21[10]);
    *v31 = v30;
    v31[1] = v32;
    v46 = 6;
    v33 = sub_2300314D0();
    v38 = 0;
    v34 = v33;
    v36 = v35;
    (*(v13 + 8))(v22, v44);
    v37 = v17 + v21[7];
    *v37 = v34;
    *(v37 + 8) = v36 & 1;
    sub_2300189DC(v17, v40);
    sub_22FFEE60C(v45);
    return sub_230018A40(v17);
  }
}

uint64_t StandaloneAppOpenSignal.debugDescription.getter()
{
  v1 = v0;
  sub_2300313E0();
  MEMORY[0x23190F560](0x3A64496D6164617BLL, 0xE900000000000020);
  MEMORY[0x23190F560](*(v1 + 16), *(v1 + 24));
  MEMORY[0x23190F560](0x656C646E7562202CLL, 0xEC000000203A6449);

  sub_22FFED9B8(&qword_27DB05CB8, &qword_230036AB0);
  v2 = sub_230031170();
  MEMORY[0x23190F560](v2);

  MEMORY[0x23190F560](0x7473656D6974202CLL, 0xEC0000003A706D61);
  v3 = type metadata accessor for StandaloneAppOpenSignal(0);
  sub_230030E00();
  sub_230018998(&qword_27DB05F50, MEMORY[0x277CC95B8]);
  v4 = sub_2300316B0();
  MEMORY[0x23190F560](v4);

  MEMORY[0x23190F560](0xD000000000000015, 0x800000023003A760);
  MEMORY[0x23190F560](*(v1 + v3[8]), *(v1 + v3[8] + 8));
  MEMORY[0x23190F560](0x736572706D69202CLL, 0xEF3A64496E6F6973);
  MEMORY[0x23190F560](*(v1 + v3[9]), *(v1 + v3[9] + 8));
  MEMORY[0x23190F560](0x6E756F636361202CLL, 0xEF3A6E656B6F5474);
  MEMORY[0x23190F560](*(v1 + v3[10]), *(v1 + v3[10] + 8));
  MEMORY[0x23190F560](125, 0xE100000000000000);
  return 0;
}

uint64_t _s24PromotedContentJetClient23StandaloneAppOpenSignalV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_2300316D0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_2300316D0() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for StandaloneAppOpenSignal(0);
  if ((sub_230030DF0() & 1) == 0)
  {
    return 0;
  }

  v9 = v8[7];
  v10 = (a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = *(a2 + v9 + 8);
  if (v11)
  {
    if (v13)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (*v10 != *v12)
  {
    LOBYTE(v13) = 1;
  }

  if (v13)
  {
    return 0;
  }

LABEL_22:
  v14 = v8[8];
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v15 == *v17 && v16 == v17[1];
  if (!v18 && (sub_2300316D0() & 1) == 0)
  {
    return 0;
  }

  v19 = v8[9];
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  if ((v20 != *v22 || v21 != v22[1]) && (sub_2300316D0() & 1) == 0)
  {
    return 0;
  }

  v23 = v8[10];
  v24 = *(a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  if (v24 == *v26 && v25 == v26[1])
  {
    return 1;
  }

  return sub_2300316D0();
}

unint64_t sub_230018944()
{
  result = qword_27DB06700;
  if (!qword_27DB06700)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StandaloneAppOpenSignal.CodingKeys, &type metadata for StandaloneAppOpenSignal.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06700);
  }

  return result;
}

uint64_t sub_230018998(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_230030E00();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2300189DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandaloneAppOpenSignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230018A40(uint64_t a1)
{
  v2 = type metadata accessor for StandaloneAppOpenSignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230018AA0()
{
  result = qword_27DB06710;
  if (!qword_27DB06710)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StandaloneAppOpenSignal.CodingKeys, &type metadata for StandaloneAppOpenSignal.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06710);
  }

  return result;
}

unint64_t sub_230018AF8()
{
  result = qword_27DB06718;
  if (!qword_27DB06718)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StandaloneAppOpenSignal.CodingKeys, &type metadata for StandaloneAppOpenSignal.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06718);
  }

  return result;
}

unint64_t sub_230018B50()
{
  result = qword_27DB06720;
  if (!qword_27DB06720)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StandaloneAppOpenSignal.CodingKeys, &type metadata for StandaloneAppOpenSignal.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06720);
  }

  return result;
}

void sub_230018BA4(uint64_t a1)
{
  sub_22FFF2FC4(319, &qword_2814942D0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_230030E00();
    if (v2 <= 0x3F)
    {
      sub_22FFF2FC4(319, &qword_2814942A8, MEMORY[0x277D84D38]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t XPCIntentMessage.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_message;
  v2 = type metadata accessor for IntentMessage(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_dependencyProvider) = 0;
  sub_230030F70();
  return v0;
}

uint64_t XPCIntentMessage.dependencyProvider.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for XPCIntentMessage(0) + 24));
}

uint64_t XPCIntentMessage.signpostID.getter()
{
  v1 = *(v0 + *(type metadata accessor for XPCIntentMessage(0) + 20));

  return MEMORY[0x282200CE0](v1);
}

unint64_t sub_230018DD0()
{
  v1 = 0x6C61767265746E69;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567617373656DLL;
  }
}

uint64_t sub_230018E34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23001A29C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230018E5C(uint64_t a1)
{
  v2 = sub_2300194E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230018E98(uint64_t a1)
{
  v2 = sub_2300194E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCIntentMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB06728, &qword_230036D10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300194E8();
  sub_230031780();
  v14 = 0;
  type metadata accessor for IntentMessage(0);
  sub_230019590(&qword_281494158, protocol conformance descriptor for IntentMessage);
  sub_230031640();
  if (!v2)
  {
    v9 = type metadata accessor for XPCIntentMessage(0);
    v13 = 1;
    sub_230031690();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    sub_23001953C();

    sub_230031640();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t XPCIntentMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for IntentMessage(0);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22FFED9B8(&qword_27DB06730, &unk_230036D18);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for XPCIntentMessage(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300194E8();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(a1);
  }

  v12 = v18;
  v13 = v11;
  v24 = 0;
  sub_230019590(&qword_281494150, protocol conformance descriptor for IntentMessage);
  v14 = v19;
  sub_230031520();
  sub_2300195D4(v20, v13);
  v23 = 1;
  *(v13 + *(v9 + 20)) = sub_230031570();
  v22 = 2;
  sub_230019638();
  sub_230031520();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 24)) = v21;
  sub_23000E540(v13, v17, type metadata accessor for XPCIntentMessage);
  sub_22FFEE60C(a1);
  return sub_23001968C(v13, type metadata accessor for XPCIntentMessage);
}

uint64_t XPCIntentMessage.Builder.init()()
{
  v1 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_message;
  v2 = type metadata accessor for IntentMessage(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_dependencyProvider) = 0;
  sub_230030F70();
  return v0;
}

unint64_t sub_2300194E8()
{
  result = qword_281494C48[0];
  if (!qword_281494C48[0])
  {
    result = swift_getWitnessTable(byte_230036F5C, &type metadata for XPCIntentMessage.CodingKeys, v0, v1);
    atomic_store(result, qword_281494C48);
  }

  return result;
}

unint64_t sub_23001953C()
{
  result = qword_281493FB8;
  if (!qword_281493FB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IntentDependencyProvider, &type metadata for IntentDependencyProvider, v0, v1);
    atomic_store(result, &qword_281493FB8);
  }

  return result;
}

uint64_t sub_230019590(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for IntentMessage(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2300195D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_230019638()
{
  result = qword_281493FB0;
  if (!qword_281493FB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IntentDependencyProvider, &type metadata for IntentDependencyProvider, v0, v1);
    atomic_store(result, &qword_281493FB0);
  }

  return result;
}

uint64_t sub_23001968C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2300196EC@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_230030F80();
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22FFED9B8(&qword_27DB06470, &qword_230035B50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for IntentMessage(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_message;
  swift_beginAccess();
  sub_23001A3C4(v1 + v12, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_230019AA0(v7);
    sub_23001A434();
    swift_allocError();
    *v13 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_2300195D4(v7, v11);
    v15 = *(v1 + OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_dependencyProvider);
    if (v15)
    {
      v21 = type metadata accessor for IntentMessage;
      v16 = v23;
      sub_23000E540(v11, v23, type metadata accessor for IntentMessage);
      v17 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_signpostID;
      swift_beginAccess();
      v18 = v22;
      (*(v22 + 16))(v4, v1 + v17, v2);

      v19 = sub_230030F60();
      (*(v18 + 8))(v4, v2);
      sub_23001968C(v11, v21);
      result = type metadata accessor for XPCIntentMessage(0);
      *(v16 + *(result + 20)) = v19;
      *(v16 + *(result + 24)) = v15;
    }

    else
    {
      sub_23001A434();
      swift_allocError();
      *v20 = 1;
      swift_willThrow();
      return sub_23001968C(v11, type metadata accessor for IntentMessage);
    }
  }

  return result;
}

uint64_t XPCIntentMessage.Builder.deinit()
{
  sub_230019AA0(v0 + OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_message);

  v1 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_signpostID;
  v2 = sub_230030F80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_230019AA0(uint64_t a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06470, &qword_230035B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t XPCIntentMessage.Builder.__deallocating_deinit()
{
  sub_230019AA0(v0 + OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_message);

  v1 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_signpostID;
  v2 = sub_230030F80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t XPCIntentMessage.Builder.Error.hashValue.getter()
{
  v1 = *v0;
  sub_230031740();
  MEMORY[0x23190FB00](v1);
  return sub_230031760();
}

uint64_t XPCIntentMessage.Builder.measure(id:)(uint64_t a1)
{
  v3 = sub_230030F80();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_signpostID;
  swift_beginAccess();
  (*(v4 + 40))(v1 + v7, v6, v3);
  swift_endAccess();
}

uint64_t static XPCIntentMessage.Builder.measure(id:)(uint64_t a1)
{
  v2 = sub_230030F80();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCIntentMessage.Builder(0);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_message;
  v8 = type metadata accessor for IntentMessage(0);
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  *(v6 + OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_dependencyProvider) = 0;
  v9 = OBJC_IVAR____TtCV24PromotedContentJetClient16XPCIntentMessage7Builder_signpostID;
  sub_230030F70();
  (*(v3 + 16))(v5, a1, v2);
  swift_beginAccess();
  (*(v3 + 40))(v6 + v9, v5, v2);
  swift_endAccess();
  return v6;
}

unint64_t sub_230019F14()
{
  result = qword_27DB06738;
  if (!qword_27DB06738)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCIntentMessage.Builder.Error, &type metadata for XPCIntentMessage.Builder.Error, v0, v1);
    atomic_store(result, &qword_27DB06738);
  }

  return result;
}

uint64_t sub_230019F90(uint64_t a1)
{
  result = type metadata accessor for IntentMessage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23001A01C(uint64_t a1)
{
  sub_23001A11C(319);
  if (v1 <= 0x3F)
  {
    sub_230030F80();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23001A11C(uint64_t a1)
{
  if (!qword_281494148)
  {
    type metadata accessor for IntentMessage(255);
    v1 = sub_230031380();
    if (!v2)
    {
      atomic_store(v1, &qword_281494148);
    }
  }
}

unint64_t sub_23001A198()
{
  result = qword_27DB06740;
  if (!qword_27DB06740)
  {
    result = swift_getWitnessTable(byte_230036F34, &type metadata for XPCIntentMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06740);
  }

  return result;
}

unint64_t sub_23001A1F0()
{
  result = qword_281494C38;
  if (!qword_281494C38)
  {
    result = swift_getWitnessTable(byte_230036EA4, &type metadata for XPCIntentMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_281494C38);
  }

  return result;
}

unint64_t sub_23001A248()
{
  result = qword_281494C40;
  if (!qword_281494C40)
  {
    result = swift_getWitnessTable(aR_1, &type metadata for XPCIntentMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_281494C40);
  }

  return result;
}

uint64_t sub_23001A29C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xEA00000000004449 || (sub_2300316D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023003A7D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2300316D0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23001A3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB06470, &qword_230035B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23001A434()
{
  result = qword_27DB06748;
  if (!qword_27DB06748)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCIntentMessage.Builder.Error, &type metadata for XPCIntentMessage.Builder.Error, v0, v1);
    atomic_store(result, &qword_27DB06748);
  }

  return result;
}

uint64_t ActionStoreAdInstance.impressionId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActionStoreAdInstance.adMetadata.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ActionStoreAdInstance.additionalFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActionStoreAdInstance(0) + 24);

  return sub_22FFF32CC(v3, a1);
}

uint64_t type metadata accessor for ActionStoreAdInstance(uint64_t a1)
{
  result = qword_281494A48;
  if (!qword_281494A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

PromotedContentJetClient::ActionStoreAdInstance::CodingKeys_optional __swiftcall ActionStoreAdInstance.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ActionStoreAdInstance.CodingKeys.stringValue.getter()
{
  v1 = 0x61646174654D6461;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6973736572706D69;
  }
}

uint64_t sub_23001A658(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x61646174654D6461;
  v4 = 0xEA00000000006174;
  v5 = 0x8000000230039F80;
  if (v2 != 1)
  {
    v3 = 0xD000000000000010;
    v4 = 0x8000000230039F80;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6973736572706D69;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEC00000064496E6FLL;
  }

  v8 = 0x61646174654D6461;
  if (*a2 == 1)
  {
    v5 = 0xEA00000000006174;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6973736572706D69;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEC00000064496E6FLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2300316D0();
  }

  return v11 & 1;
}

uint64_t sub_23001A760()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_23001A814(uint64_t a1)
{
  sub_2300311A0();
}

uint64_t sub_23001A8B4(uint64_t a1)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

void sub_23001A970(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064496E6FLL;
  v4 = 0xEA00000000006174;
  v5 = 0x61646174654D6461;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000230039F80;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6973736572706D69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_23001A9E0()
{
  v1 = 0x61646174654D6461;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6973736572706D69;
  }
}

PromotedContentJetClient::ActionStoreAdInstance::CodingKeys_optional sub_23001AA4C@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = ActionStoreAdInstance.CodingKeys.init(stringValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_23001AA84(uint64_t a1)
{
  v2 = sub_23001B6C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23001AAC0(uint64_t a1)
{
  v2 = sub_23001B6C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActionStoreAdInstance.init(impressionId:adMetadata:additionalFields:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v7 = a6 + *(type metadata accessor for ActionStoreAdInstance(0) + 24);

  return sub_22FFF3A24(a5, v7);
}

uint64_t ActionStoreAdInstance.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB06750, &qword_230036FB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_22FFEDA4C(a1, a1[3]);
  sub_23001B6C0();
  sub_230031780();
  v8[15] = 0;
  sub_2300315B0();
  if (!v1)
  {
    v8[14] = 1;
    sub_2300315B0();
    type metadata accessor for ActionStoreAdInstance(0);
    v8[13] = 2;
    type metadata accessor for APJSValue(0);
    sub_230001544(&qword_27DB05C90, protocol conformance descriptor for APJSValue);
    sub_2300315D0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ActionStoreAdInstance.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_22FFED9B8(&qword_27DB06760, &unk_230036FC0);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for ActionStoreAdInstance(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22FFEDA4C(a1, a1[3]);
  sub_23001B6C0();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(a1);
  }

  v19 = v10;
  v13 = v21;
  v25 = 0;
  *v12 = sub_230031490();
  v12[1] = v14;
  v18[1] = v14;
  v24 = 1;
  v12[2] = sub_230031490();
  v12[3] = v15;
  type metadata accessor for APJSValue(0);
  v23 = 2;
  sub_230001544(&qword_27DB05CA8, protocol conformance descriptor for APJSValue);
  v16 = v22;
  sub_2300314B0();
  (*(v13 + 8))(v9, v16);
  sub_22FFF3A24(v6, v12 + *(v19 + 24));
  sub_23001B714(v12, v20);
  sub_22FFEE60C(a1);
  return sub_23001B98C(v12, type metadata accessor for ActionStoreAdInstance);
}

uint64_t ActionStoreAdInstance.debugDescription.getter()
{
  v1 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = (&v17 - v5);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_2300313E0();

  v19 = 0x2069202020200A7BLL;
  v20 = 0xEA0000000000203ALL;
  v7 = v0[1];
  v17 = *v0;
  v18 = v7;

  sub_22FFED9B8(&qword_27DB05CB8, &qword_230036AB0);
  v8 = sub_230031170();
  MEMORY[0x23190F560](v8);

  MEMORY[0x23190F560](0x3A6D61202020200ALL, 0xE900000000000020);
  v9 = v0[3];
  v17 = v0[2];
  v18 = v9;

  v10 = sub_230031170();
  MEMORY[0x23190F560](v10);

  MEMORY[0x23190F560](0x3A6664202020200ALL, 0xE900000000000020);
  v11 = type metadata accessor for ActionStoreAdInstance(0);
  sub_22FFF32CC(v0 + *(v11 + 24), v4);
  v12 = type metadata accessor for APJSValue(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v4, 1, v12) == 1)
  {
    *v6 = 7104878;
    v6[1] = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    (*(v13 + 56))(v6, 0, 1, v12);
    if (v14(v4, 1, v12) != 1)
    {
      sub_22FFF31B4(v4, &qword_27DB05C78, &qword_230032800);
    }
  }

  else
  {
    sub_22FFF2D20(v4, v6);
    (*(v13 + 56))(v6, 0, 1, v12);
  }

  v15 = sub_230031170();
  MEMORY[0x23190F560](v15);

  MEMORY[0x23190F560](32010, 0xE200000000000000);
  return v19;
}

BOOL _s24PromotedContentJetClient21ActionStoreAdInstanceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for APJSValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_22FFED9B8(&qword_27DB05CD8, qword_2300327E0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_2300316D0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (sub_2300316D0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = *(type metadata accessor for ActionStoreAdInstance(0) + 24);
  v19 = *(v11 + 48);
  sub_22FFF32CC(a1 + v18, v13);
  sub_22FFF32CC(a2 + v18, &v13[v19]);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v19], 1, v4) == 1)
    {
      sub_22FFF31B4(v13, &qword_27DB05C78, &qword_230032800);
      return 1;
    }

    goto LABEL_20;
  }

  sub_22FFF32CC(v13, v10);
  if (v20(&v13[v19], 1, v4) == 1)
  {
    sub_23001B98C(v10, type metadata accessor for APJSValue);
LABEL_20:
    sub_22FFF31B4(v13, &qword_27DB05CD8, qword_2300327E0);
    return 0;
  }

  sub_22FFF2D20(&v13[v19], v7);
  v22 = _s24PromotedContentJetClient9APJSValueO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23001B98C(v7, type metadata accessor for APJSValue);
  sub_23001B98C(v10, type metadata accessor for APJSValue);
  sub_22FFF31B4(v13, &qword_27DB05C78, &qword_230032800);
  return (v22 & 1) != 0;
}

unint64_t sub_23001B6C0()
{
  result = qword_27DB06758;
  if (!qword_27DB06758)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionStoreAdInstance.CodingKeys, &type metadata for ActionStoreAdInstance.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06758);
  }

  return result;
}

uint64_t sub_23001B714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionStoreAdInstance(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23001B77C()
{
  result = qword_27DB06768;
  if (!qword_27DB06768)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionStoreAdInstance.CodingKeys, &type metadata for ActionStoreAdInstance.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06768);
  }

  return result;
}

unint64_t sub_23001B7D4()
{
  result = qword_27DB06770;
  if (!qword_27DB06770)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionStoreAdInstance.CodingKeys, &type metadata for ActionStoreAdInstance.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06770);
  }

  return result;
}

unint64_t sub_23001B82C()
{
  result = qword_27DB06778;
  if (!qword_27DB06778)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionStoreAdInstance.CodingKeys, &type metadata for ActionStoreAdInstance.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06778);
  }

  return result;
}

void sub_23001B8A8(uint64_t a1)
{
  sub_23001B92C();
  if (v1 <= 0x3F)
  {
    sub_22FFF4640(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23001B92C()
{
  if (!qword_2814942D0)
  {
    v0 = sub_230031380();
    if (!v1)
    {
      atomic_store(v0, &qword_2814942D0);
    }
  }
}

uint64_t sub_23001B98C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23001B9F4()
{
  v1 = 0x726F727245736ALL;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4D6E6F6973726576;
  }
}

uint64_t sub_23001BA58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23001D7C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23001BA80(uint64_t a1)
{
  v2 = sub_23001C0A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23001BABC(uint64_t a1)
{
  v2 = sub_23001C0A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23001BAF8(uint64_t a1)
{
  v2 = sub_23001C1A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23001BB34(uint64_t a1)
{
  v2 = sub_23001C1A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23001BB70(uint64_t a1)
{
  v2 = sub_23001C0FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23001BBAC(uint64_t a1)
{
  v2 = sub_23001C0FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23001BBE8(uint64_t a1)
{
  v2 = sub_23001C1F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23001BC24(uint64_t a1)
{
  v2 = sub_23001C1F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JetServiceError.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB06780, &qword_230037200);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v27 = &v23 - v4;
  v5 = sub_22FFED9B8(&qword_27DB06788, &qword_230037208);
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = sub_22FFED9B8(&qword_27DB06790, &qword_230037210);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v35 = sub_22FFED9B8(&qword_27DB06798, &qword_230037218);
  v11 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v13 = &v23 - v12;
  v14 = v1[1];
  v30 = *v1;
  v31 = v14;
  v15 = v1[3];
  v32 = v1[2];
  v33 = v15;
  v34 = v1[4];
  v16 = *(v1 + 40);
  sub_22FFEDA4C(a1, a1[3]);
  sub_23001C0A8();
  sub_230031780();
  if (!v16)
  {
    LOBYTE(v36) = 1;
    sub_23001C1A4();
    v18 = v35;
    sub_2300315A0();
    v36 = v30;
    v37 = v31;
    v38 = v32;
    v39 = v33;
    v40 = v34;
    sub_23001C150();
    v20 = v26;
    sub_230031640();
    (*(v25 + 8))(v7, v20);
    return (*(v11 + 8))(v13, v18);
  }

  if (v16 == 1)
  {
    LOBYTE(v36) = 2;
    sub_23001C0FC();
    v17 = v27;
    v18 = v35;
    sub_2300315A0();
    v36 = v30;
    v37 = v31;
    v38 = v32;
    v39 = v33;
    v40 = v34;
    sub_23001C150();
    v19 = v29;
    sub_230031640();
    (*(v28 + 8))(v17, v19);
    return (*(v11 + 8))(v13, v18);
  }

  LOBYTE(v36) = 0;
  sub_23001C1F8();
  v22 = v35;
  sub_2300315A0();
  (*(v23 + 8))(v10, v24);
  return (*(v11 + 8))(v13, v22);
}

unint64_t sub_23001C0A8()
{
  result = qword_27DB067A0;
  if (!qword_27DB067A0)
  {
    result = swift_getWitnessTable(aUR, &type metadata for JetServiceError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB067A0);
  }

  return result;
}

unint64_t sub_23001C0FC()
{
  result = qword_27DB067A8;
  if (!qword_27DB067A8)
  {
    result = swift_getWitnessTable(byte_230037884, &type metadata for JetServiceError.OtherCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB067A8);
  }

  return result;
}

unint64_t sub_23001C150()
{
  result = qword_27DB067B0;
  if (!qword_27DB067B0)
  {
    result = swift_getWitnessTable("\t+ RD[", &type metadata for JetServiceError.ErrorContainer, v0, v1);
    atomic_store(result, &qword_27DB067B0);
  }

  return result;
}

unint64_t sub_23001C1A4()
{
  result = qword_27DB067B8;
  if (!qword_27DB067B8)
  {
    result = swift_getWitnessTable(byte_230037834, &type metadata for JetServiceError.JsErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB067B8);
  }

  return result;
}

unint64_t sub_23001C1F8()
{
  result = qword_27DB067C0;
  if (!qword_27DB067C0)
  {
    result = swift_getWitnessTable(aER, &type metadata for JetServiceError.VersionMismatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB067C0);
  }

  return result;
}

uint64_t JetServiceError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v38 = sub_22FFED9B8(&qword_27DB067C8, &qword_230037220);
  v41 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v44 = &v38 - v3;
  v4 = sub_22FFED9B8(&qword_27DB067D0, &qword_230037228);
  v5 = *(v4 - 8);
  v39 = v4;
  v40 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - v6;
  v8 = sub_22FFED9B8(&qword_27DB067D8, &qword_230037230);
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = sub_22FFED9B8(&qword_27DB067E0, &unk_230037238);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  v15 = a1[3];
  v54 = a1;
  sub_22FFEDA4C(a1, v15);
  sub_23001C0A8();
  v16 = v45;
  sub_230031770();
  if (!v16)
  {
    v45 = 0;
    v18 = v43;
    v17 = v44;
    v19 = sub_230031580();
    v20 = (2 * *(v19 + 16)) | 1;
    v50 = v19;
    v51 = v19 + 32;
    v52 = 0;
    v53 = v20;
    v21 = sub_22FFEE82C();
    if (v21 == 3 || v52 != v53 >> 1)
    {
      v30 = sub_230031400();
      swift_allocError();
      v31 = v14;
      v33 = v32;
      sub_22FFED9B8(&qword_27DB05B98, &qword_230032EB0);
      *v33 = &type metadata for JetServiceError;
      sub_230031480();
      sub_2300313F0();
      (*(*(v30 - 8) + 104))(v33, *MEMORY[0x277D84160], v30);
      swift_willThrow();
      (*(v12 + 8))(v31, v11);
    }

    else
    {
      if (v21)
      {
        if (v21 == 1)
        {
          LOBYTE(v46) = 1;
          sub_23001C1A4();
          v22 = v45;
          sub_230031470();
          if (!v22)
          {
            sub_23001C8A4();
            v23 = v39;
            sub_230031520();
            (*(v40 + 8))(v7, v23);
            (*(v12 + 8))(v14, v11);
            swift_unknownObjectRelease();
            v24 = 0;
            v25 = v46;
            v26 = v47;
            v27 = v48;
            v28 = v49;
            v29 = v42;
LABEL_16:
            *v29 = v25;
            *(v29 + 16) = v26;
            *(v29 + 24) = v27;
            *(v29 + 32) = v28;
            *(v29 + 40) = v24;
            return sub_22FFEE60C(v54);
          }
        }

        else
        {
          LOBYTE(v46) = 2;
          sub_23001C0FC();
          v36 = v45;
          sub_230031470();
          v29 = v42;
          if (!v36)
          {
            sub_23001C8A4();
            v37 = v38;
            sub_230031520();
            (*(v41 + 8))(v17, v37);
            (*(v12 + 8))(v14, v11);
            swift_unknownObjectRelease();
            v25 = v46;
            v26 = v47;
            v27 = v48;
            v24 = 1;
            v28 = v49;
            goto LABEL_16;
          }
        }
      }

      else
      {
        LOBYTE(v46) = 0;
        sub_23001C1F8();
        v35 = v45;
        sub_230031470();
        if (!v35)
        {
          (*(v18 + 8))(v10, v8);
          (*(v12 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v25 = 0uLL;
          v24 = 2;
          v29 = v42;
          goto LABEL_16;
        }
      }

      (*(v12 + 8))(v14, v11);
    }

    swift_unknownObjectRelease();
  }

  return sub_22FFEE60C(v54);
}

unint64_t sub_23001C8A4()
{
  result = qword_27DB067E8;
  if (!qword_27DB067E8)
  {
    result = swift_getWitnessTable("a/ Rl[", &type metadata for JetServiceError.ErrorContainer, v0, v1);
    atomic_store(result, &qword_27DB067E8);
  }

  return result;
}

unint64_t JetServiceError.debugDescription.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (!*(v0 + 40))
  {
    sub_2300313E0();

    v10 = 0xD00000000000001ELL;
    v8 = sub_2300316B0();
    MEMORY[0x23190F560](v8);

    MEMORY[0x23190F560](0x67617373656D202CLL, 0xEB00000000203A65);
    MEMORY[0x23190F560](v1, v2);
    v6 = 41;
    v7 = 0xE100000000000000;
    goto LABEL_5;
  }

  if (*(v0 + 40) == 1)
  {
    v4 = *(v0 + 8);
    v3 = *(v0 + 16);
    v10 = 0;
    sub_2300313E0();
    MEMORY[0x23190F560](0xD00000000000001CLL, 0x800000023003A7F0);
    v5 = sub_2300316B0();
    MEMORY[0x23190F560](v5);

    MEMORY[0x23190F560](0x67617373656D202CLL, 0xEB00000000203A65);
    MEMORY[0x23190F560](v1, v2);
    MEMORY[0x23190F560](0x6E69616D6F64202CLL, 0xEA0000000000203ALL);
    v6 = v4;
    v7 = v3;
LABEL_5:
    MEMORY[0x23190F560](v6, v7);
    return v10;
  }

  return 0xD00000000000001FLL;
}

uint64_t JetServiceError.ErrorContainer.domain.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t JetServiceError.ErrorContainer.message.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall JetServiceError.ErrorContainer.init(code:domain:message:)(PromotedContentJetClient::JetServiceError::ErrorContainer *__return_ptr retstr, Swift::Int code, Swift::String domain, Swift::String message)
{
  retstr->code = code;
  retstr->domain = domain;
  retstr->message = message;
}

uint64_t sub_23001CB94()
{
  v1 = 0x6E69616D6F64;
  if (*v0 != 1)
  {
    v1 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_23001CBE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23001D8E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23001CC0C(uint64_t a1)
{
  v2 = sub_23001CE44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23001CC48(uint64_t a1)
{
  v2 = sub_23001CE44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JetServiceError.ErrorContainer.encode(to:)(void *a1)
{
  v4 = sub_22FFED9B8(&qword_27DB067F0, &qword_230037248);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v11[2] = v1[2];
  v11[3] = v8;
  v11[0] = v1[4];
  v11[1] = v9;
  sub_22FFEDA4C(a1, a1[3]);
  sub_23001CE44();
  sub_230031780();
  v14 = 0;
  sub_230031630();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = 1;
  sub_230031600();
  v12 = 2;
  sub_230031600();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_23001CE44()
{
  result = qword_27DB067F8;
  if (!qword_27DB067F8)
  {
    result = swift_getWitnessTable(byte_230037794, &type metadata for JetServiceError.ErrorContainer.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB067F8);
  }

  return result;
}

uint64_t JetServiceError.ErrorContainer.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22FFED9B8(&qword_27DB06800, &qword_230037250);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  sub_22FFEDA4C(a1, a1[3]);
  sub_23001CE44();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(a1);
  }

  v24 = 0;
  v9 = sub_230031510();
  v23 = 1;
  v10 = sub_2300314E0();
  v12 = v11;
  v21 = v10;
  v22 = 2;
  v13 = sub_2300314E0();
  v15 = v14;
  v16 = *(v6 + 8);
  v20 = v13;
  v16(v8, v5);
  v17 = v20;
  v18 = v21;
  *a2 = v9;
  a2[1] = v18;
  a2[2] = v12;
  a2[3] = v17;
  a2[4] = v15;

  sub_22FFEE60C(a1);
}

uint64_t sub_23001D0F8(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 sub_23001D114(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23001D128(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23001D170(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_23001D1C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

__n128 sub_23001D1F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23001D208(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23001D250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23001D2FC()
{
  result = qword_27DB06808;
  if (!qword_27DB06808)
  {
    result = swift_getWitnessTable(byte_2300374F4, &type metadata for JetServiceError.OtherCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06808);
  }

  return result;
}

unint64_t sub_23001D354()
{
  result = qword_27DB06810;
  if (!qword_27DB06810)
  {
    result = swift_getWitnessTable(byte_2300375AC, &type metadata for JetServiceError.JsErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06810);
  }

  return result;
}

unint64_t sub_23001D3AC()
{
  result = qword_27DB06818;
  if (!qword_27DB06818)
  {
    result = swift_getWitnessTable(byte_2300376B4, &type metadata for JetServiceError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06818);
  }

  return result;
}

unint64_t sub_23001D404()
{
  result = qword_27DB06820;
  if (!qword_27DB06820)
  {
    result = swift_getWitnessTable(aR_2, &type metadata for JetServiceError.ErrorContainer.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06820);
  }

  return result;
}

unint64_t sub_23001D45C()
{
  result = qword_27DB06828;
  if (!qword_27DB06828)
  {
    result = swift_getWitnessTable(byte_2300376DC, &type metadata for JetServiceError.ErrorContainer.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06828);
  }

  return result;
}

unint64_t sub_23001D4B4()
{
  result = qword_27DB06830;
  if (!qword_27DB06830)
  {
    result = swift_getWitnessTable(byte_230037704, &type metadata for JetServiceError.ErrorContainer.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06830);
  }

  return result;
}

unint64_t sub_23001D50C()
{
  result = qword_27DB06838;
  if (!qword_27DB06838)
  {
    result = swift_getWitnessTable(byte_2300375D4, &type metadata for JetServiceError.VersionMismatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06838);
  }

  return result;
}

unint64_t sub_23001D564()
{
  result = qword_27DB06840;
  if (!qword_27DB06840)
  {
    result = swift_getWitnessTable(byte_2300375FC, &type metadata for JetServiceError.VersionMismatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06840);
  }

  return result;
}

unint64_t sub_23001D5BC()
{
  result = qword_27DB06848;
  if (!qword_27DB06848)
  {
    result = swift_getWitnessTable(byte_23003751C, &type metadata for JetServiceError.JsErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06848);
  }

  return result;
}

unint64_t sub_23001D614()
{
  result = qword_27DB06850;
  if (!qword_27DB06850)
  {
    result = swift_getWitnessTable(byte_230037544, &type metadata for JetServiceError.JsErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06850);
  }

  return result;
}

unint64_t sub_23001D66C()
{
  result = qword_27DB06858;
  if (!qword_27DB06858)
  {
    result = swift_getWitnessTable("=; RdZ", &type metadata for JetServiceError.OtherCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06858);
  }

  return result;
}

unint64_t sub_23001D6C4()
{
  result = qword_27DB06860;
  if (!qword_27DB06860)
  {
    result = swift_getWitnessTable("M7 R<Z", &type metadata for JetServiceError.OtherCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06860);
  }

  return result;
}

unint64_t sub_23001D71C()
{
  result = qword_27DB06868;
  if (!qword_27DB06868)
  {
    result = swift_getWitnessTable("}9 R8X", &type metadata for JetServiceError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06868);
  }

  return result;
}

unint64_t sub_23001D774()
{
  result = qword_27DB06870;
  if (!qword_27DB06870)
  {
    result = swift_getWitnessTable(byte_23003764C, &type metadata for JetServiceError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06870);
  }

  return result;
}

uint64_t sub_23001D7C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D6E6F6973726576 && a2 == 0xEF686374616D7369;
  if (v4 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727245736ALL && a2 == 0xE700000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2300316D0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23001D8E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2300316D0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t AppStoreInstallationSignal.shortDescription.getter()
{
  sub_2300313E0();
  MEMORY[0x23190F560](0x3A64496D6164617BLL, 0xE900000000000020);
  v1 = type metadata accessor for AppStoreInstallationSignal(0);
  MEMORY[0x23190F560](*(v0 + *(v1 + 36)), *(v0 + *(v1 + 36) + 8));
  MEMORY[0x23190F560](0x3A6573616870202CLL, 0xE900000000000020);
  v2 = sub_2300316B0();
  MEMORY[0x23190F560](v2);

  MEMORY[0x23190F560](0xD000000000000011, 0x800000023003A850);
  v3 = sub_2300316B0();
  MEMORY[0x23190F560](v3);

  MEMORY[0x23190F560](0x6C6174736E69202CLL, 0xEF203A657079546CLL);
  v6 = *(v0 + *(v1 + 48));
  v4 = sub_2300316B0();
  MEMORY[0x23190F560](v4);

  MEMORY[0x23190F560](125, 0xE100000000000000);
  return HIDWORD(v6);
}

uint64_t type metadata accessor for AppStoreInstallationSignal(uint64_t a1)
{
  result = qword_2814947A8;
  if (!qword_2814947A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppStoreInstallationSignal.bundleId.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppStoreInstallationSignal(0) + 32));

  return v1;
}

uint64_t AppStoreInstallationSignal.itemId.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppStoreInstallationSignal(0) + 36));

  return v1;
}

uint64_t AppStoreInstallationSignal.commerceTimestamp.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppStoreInstallationSignal(0) + 52));

  return v1;
}

uint64_t AppStoreInstallationSignal.accountToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppStoreInstallationSignal(0) + 56));

  return v1;
}

uint64_t AppStoreInstallationSignal.proofOfPurchase.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppStoreInstallationSignal(0) + 60);
  v4 = *(v3 + 64);
  v7 = *(v3 + 16);
  v6 = *(v3 + 32);
  v13 = *(v3 + 48);
  v5 = v13;
  v14 = v4;
  v15 = *(v3 + 80);
  v8 = v15;
  v12[1] = v7;
  v12[2] = v6;
  v12[0] = *v3;
  v9 = v12[0];
  *(a1 + 32) = v6;
  *(a1 + 48) = v5;
  *(a1 + 64) = v4;
  *(a1 + 80) = v8;
  *a1 = v9;
  *(a1 + 16) = v7;
  return sub_22FFF0DD0(v12, v11, &qword_27DB06878, &qword_230037928);
}

unint64_t AppStoreInstallationSignal.reportingConversionTypeValue.getter()
{
  v1 = (v0 + *(type metadata accessor for AppStoreInstallationSignal(0) + 64));
  if ((v1[1] & 1) != 0 || (v2 = *v1, v2 == -1))
  {
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 32);
}

PromotedContentJetClient::AppStoreInstallationSignal::CodingKeys_optional __swiftcall AppStoreInstallationSignal.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PromotedContentJetClient::AppStoreInstallationSignal::CodingKeys_optional __swiftcall AppStoreInstallationSignal.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = AppStoreInstallationSignal.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_23001DFE8()
{
  result = 0x6D617473656D6974;
  switch(*v0)
  {
    case 1:
      result = 0x6573616870;
      break;
    case 2:
      result = 0x6C616E696D726574;
      break;
    case 3:
      result = 0x6449656C646E7562;
      break;
    case 4:
      result = 0x64496D657469;
      break;
    case 5:
      result = 0x65707954707061;
      break;
    case 6:
      result = 0x656372756F73;
      break;
    case 7:
      result = 0x546C6C6174736E69;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x54746E756F636361;
      break;
    case 0xA:
      result = 0x50664F666F6F7270;
      break;
    case 0xB:
      result = 0xD000000000000017;
      break;
    case 0xC:
      result = 0x656D69546863616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23001E178()
{
  v0 = AppStoreInstallationSignal.CodingKeys.stringValue.getter();
  v2 = v1;
  if (v0 == AppStoreInstallationSignal.CodingKeys.stringValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2300316D0();
  }

  return v5 & 1;
}

uint64_t sub_23001E214()
{
  sub_230031740();
  AppStoreInstallationSignal.CodingKeys.stringValue.getter();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_23001E27C(uint64_t a1)
{
  AppStoreInstallationSignal.CodingKeys.stringValue.getter();
  sub_2300311A0();
}

uint64_t sub_23001E2E0(uint64_t a1)
{
  sub_230031740();
  AppStoreInstallationSignal.CodingKeys.stringValue.getter();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_23001E350@<X0>(uint64_t *a1@<X8>)
{
  result = AppStoreInstallationSignal.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

PromotedContentJetClient::AppStoreInstallationSignal::CodingKeys_optional sub_23001E37C@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = AppStoreInstallationSignal.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_23001E3B4(uint64_t a1)
{
  v2 = sub_23001FFF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23001E3F0(uint64_t a1)
{
  v2 = sub_23001FFF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppStoreInstallationSignal.init(timestamp:phase:terminalPhase:bundleId:itemId:appType:source:installType:commerceTimestamp:accountToken:proofOfPurchase:reportingConversionType:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char a18)
{
  v23 = sub_230030E00();
  v24 = *(v23 - 8);
  (*(v24 + 16))(a9, a1, v23);
  (*(v24 + 56))(a9, 0, 1, v23);
  v25 = type metadata accessor for AppStoreInstallationSignal(0);
  *(a9 + v25[6]) = a2;
  *(a9 + v25[7]) = a3;
  v26 = (a9 + v25[8]);
  *v26 = a4;
  v26[1] = a5;
  v27 = (a9 + v25[9]);
  *v27 = a6;
  v27[1] = a7;
  *(a9 + v25[10]) = a8;
  *(a9 + v25[11]) = a10;
  *(a9 + v25[12]) = a11;
  v28 = (a9 + v25[13]);
  *v28 = a12;
  v28[1] = a13;
  v29 = (a9 + v25[14]);
  *v29 = a14;
  v29[1] = a15;
  v30 = a9 + v25[15];
  v31 = *(a16 + 48);
  *(v30 + 32) = *(a16 + 32);
  *(v30 + 48) = v31;
  *(v30 + 64) = *(a16 + 64);
  *(v30 + 80) = *(a16 + 80);
  v32 = *(a16 + 16);
  *v30 = *a16;
  *(v30 + 16) = v32;
  v33 = a9 + v25[16];
  *v33 = a17;
  *(v33 + 4) = a18 & 1;
  v34 = mach_continuous_time();
  result = (*(v24 + 8))(a1, v23);
  v36 = a9 + v25[5];
  *v36 = v34;
  *(v36 + 8) = 0;
  return result;
}

uint64_t AppStoreInstallationSignal.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB06880, &qword_230037930);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-v7];
  sub_22FFEDA4C(a1, a1[3]);
  sub_23001FFF0();
  sub_230031780();
  LOBYTE(v28[0]) = 0;
  sub_230030E00();
  sub_230018998(&qword_281494290, MEMORY[0x277CC9580]);
  sub_2300315D0();
  if (!v2)
  {
    v9 = type metadata accessor for AppStoreInstallationSignal(0);
    LOBYTE(v28[0]) = 1;
    sub_230031660();
    LOBYTE(v28[0]) = 2;
    sub_230031660();
    LOBYTE(v28[0]) = 3;
    sub_230031600();
    LOBYTE(v28[0]) = 4;
    sub_230031600();
    LOBYTE(v28[0]) = 5;
    sub_230031660();
    LOBYTE(v28[0]) = 6;
    sub_230031660();
    LOBYTE(v28[0]) = 7;
    sub_230031660();
    LOBYTE(v28[0]) = 8;
    sub_2300315B0();
    v33[0] = 9;
    sub_230031600();
    v10 = v3 + *(v9 + 60);
    v11 = *(v10 + 48);
    v12 = *(v10 + 16);
    v29 = *(v10 + 32);
    v30 = v11;
    v13 = *(v10 + 48);
    v31 = *(v10 + 64);
    v14 = *(v10 + 16);
    v28[0] = *v10;
    v28[1] = v14;
    v24 = v29;
    v25 = v13;
    v26 = *(v10 + 64);
    v32 = *(v10 + 80);
    v27 = *(v10 + 80);
    v22 = v28[0];
    v23 = v12;
    v21 = 10;
    sub_22FFF0DD0(v28, v19, &qword_27DB06878, &qword_230037928);
    sub_230020044();
    sub_2300315D0();
    v19[2] = v24;
    v19[3] = v25;
    v19[4] = v26;
    v20 = v27;
    v19[0] = v22;
    v19[1] = v23;
    sub_22FFF31B4(v19, &qword_27DB06878, &qword_230037928);
    v15 = *(v3 + *(v9 + 64) + 4);
    v18 = 11;
    v17[12] = v15;
    sub_2300315E0();
    v18 = 12;
    sub_2300315F0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AppStoreInstallationSignal.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v44 = sub_22FFED9B8(&qword_27DB06888, &qword_230037938);
  v7 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v9 = &v40 - v8;
  v10 = type metadata accessor for AppStoreInstallationSignal(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v45 = a1;
  sub_22FFEDA4C(a1, v13);
  sub_23001FFF0();
  v43 = v9;
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(v45);
  }

  v14 = v7;
  v41 = v10;
  sub_230030E00();
  LOBYTE(v46) = 0;
  sub_230018998(&qword_27DB05CA0, MEMORY[0x277CC95A0]);
  sub_2300314B0();
  sub_230020098(v6, v12);
  LOBYTE(v46) = 1;
  v15 = sub_230031540();
  v16 = v41;
  *&v12[v41[6]] = v15;
  LOBYTE(v46) = 2;
  *&v12[v16[7]] = sub_230031540();
  LOBYTE(v46) = 3;
  v17 = sub_2300314E0();
  v18 = &v12[v16[8]];
  *v18 = v17;
  v18[1] = v19;
  LOBYTE(v46) = 4;
  v20 = sub_2300314E0();
  v21 = &v12[v16[9]];
  *v21 = v20;
  v21[1] = v22;
  LOBYTE(v46) = 5;
  *&v12[v16[10]] = sub_230031540();
  LOBYTE(v46) = 6;
  *&v12[v16[11]] = sub_230031540();
  LOBYTE(v46) = 7;
  *&v12[v16[12]] = sub_230031540();
  LOBYTE(v46) = 8;
  v23 = sub_230031490();
  v24 = &v12[v16[13]];
  *v24 = v23;
  v24[1] = v25;
  LOBYTE(v46) = 9;
  v26 = sub_2300314E0();
  v27 = &v12[v41[14]];
  *v27 = v26;
  v27[1] = v28;
  v53 = 10;
  sub_230020108();
  sub_2300314B0();
  v29 = &v12[v41[15]];
  v30 = v49;
  *(v29 + 2) = v48;
  *(v29 + 3) = v30;
  *(v29 + 4) = v50;
  *(v29 + 10) = v51;
  v31 = v47;
  *v29 = v46;
  *(v29 + 1) = v31;
  v52 = 11;
  v32 = sub_2300314C0();
  v33 = &v12[v41[16]];
  *v33 = v32;
  v33[4] = BYTE4(v32) & 1;
  v52 = 12;
  v34 = sub_2300314D0();
  v36 = v35;
  (*(v14 + 8))(v43, v44);
  v37 = v42;
  v38 = &v12[v41[5]];
  *v38 = v34;
  v38[8] = v36 & 1;
  sub_23002015C(v12, v37);
  sub_22FFEE60C(v45);
  return sub_2300201C0(v12);
}

uint64_t AppStoreInstallationSignal.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
  MEMORY[0x28223BE20](v2);
  v4 = &v27[-v3 - 8];
  *&v34[0] = 0;
  *(&v34[0] + 1) = 0xE000000000000000;
  sub_2300313E0();
  v33 = v34[0];
  MEMORY[0x23190F560](0x3A64496D6164617BLL, 0xE900000000000020);
  v5 = type metadata accessor for AppStoreInstallationSignal(0);
  MEMORY[0x23190F560](*(v1 + v5[9]), *(v1 + v5[9] + 8));
  MEMORY[0x23190F560](0x656C646E7562202CLL, 0xEC000000203A6449);
  MEMORY[0x23190F560](*(v1 + v5[8]), *(v1 + v5[8] + 8));
  MEMORY[0x23190F560](0x3A6573616870202CLL, 0xE900000000000020);
  LODWORD(v34[0]) = *(v0 + v5[6]);
  v6 = sub_2300316B0();
  MEMORY[0x23190F560](v6);

  MEMORY[0x23190F560](0xD000000000000011, 0x800000023003A850);
  LODWORD(v34[0]) = *(v0 + v5[7]);
  v7 = sub_2300316B0();
  MEMORY[0x23190F560](v7);

  MEMORY[0x23190F560](0x6C6174736E69202CLL, 0xEF203A657079546CLL);
  LODWORD(v34[0]) = *(v0 + v5[12]);
  v8 = sub_2300316B0();
  MEMORY[0x23190F560](v8);

  MEMORY[0x23190F560](0x707954707061202CLL, 0xEB00000000203A65);
  LODWORD(v34[0]) = *(v0 + v5[10]);
  v9 = sub_2300316B0();
  MEMORY[0x23190F560](v9);

  MEMORY[0x23190F560](0x656372756F73202CLL, 0xEA0000000000203ALL);
  LODWORD(v34[0]) = *(v0 + v5[11]);
  v10 = sub_2300316B0();
  MEMORY[0x23190F560](v10);

  MEMORY[0x23190F560](0x7473656D6974202CLL, 0xED0000203A706D61);
  sub_22FFF0DD0(v0, v4, &qword_27DB05C70, &unk_230032560);
  v11 = sub_230031170();
  MEMORY[0x23190F560](v11);

  MEMORY[0x23190F560](0xD000000000000015, 0x800000023003A870);
  v12 = (v0 + v5[13]);
  v13 = v12[1];
  *&v34[0] = *v12;
  *(&v34[0] + 1) = v13;

  sub_22FFED9B8(&qword_27DB05CB8, &qword_230036AB0);
  v14 = sub_230031170();
  MEMORY[0x23190F560](v14);

  MEMORY[0x23190F560](0xD000000000000010, 0x800000023003A890);
  MEMORY[0x23190F560](*(v1 + v5[14]), *(v1 + v5[14] + 8));
  MEMORY[0x23190F560](0xD00000000000001BLL, 0x800000023003A8B0);
  v15 = v0 + v5[16];
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 4);
  LODWORD(v34[0]) = v16;
  BYTE4(v34[0]) = v15;
  sub_22FFED9B8(&qword_27DB05CB0, &unk_230032580);
  v17 = sub_230031170();
  MEMORY[0x23190F560](v17);

  MEMORY[0x23190F560](0xD000000000000013, 0x800000023003A8D0);
  v18 = v0 + v5[15];
  v19 = *(v18 + 48);
  v20 = *(v18 + 16);
  v35 = *(v18 + 32);
  v36 = v19;
  v21 = *(v18 + 48);
  v37 = *(v18 + 64);
  v22 = *(v18 + 16);
  v34[0] = *v18;
  v34[1] = v22;
  v28 = v20;
  v29 = v35;
  v23 = *(v18 + 64);
  v30 = v21;
  v31 = v23;
  v38 = *(v18 + 80);
  v32 = *(v18 + 80);
  *&v27[88] = v34[0];
  sub_22FFF0DD0(v34, v27, &qword_27DB06878, &qword_230037928);
  sub_22FFED9B8(&qword_27DB06878, &qword_230037928);
  v24 = sub_230031170();
  MEMORY[0x23190F560](v24);

  MEMORY[0x23190F560](125, 0xE100000000000000);
  return v33;
}

uint64_t _s24PromotedContentJetClient26AppStoreInstallationSignalV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_230030E00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v82 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v81 - v8;
  v10 = sub_22FFED9B8(&qword_27DB05CE0, &qword_230037BF0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v81 - v12;
  v14 = *(v11 + 56);
  v83 = a1;
  sub_22FFF0DD0(a1, &v81 - v12, &qword_27DB05C70, &unk_230032560);
  v84 = a2;
  sub_22FFF0DD0(a2, &v13[v14], &qword_27DB05C70, &unk_230032560);
  v15 = *(v5 + 48);
  if (v15(v13, 1, v4) == 1)
  {
    if (v15(&v13[v14], 1, v4) == 1)
    {
      sub_22FFF31B4(v13, &qword_27DB05C70, &unk_230032560);
      goto LABEL_10;
    }

LABEL_6:
    v16 = &qword_27DB05CE0;
    v17 = &qword_230037BF0;
    v18 = v13;
LABEL_7:
    sub_22FFF31B4(v18, v16, v17);
    return 0;
  }

  sub_22FFF0DD0(v13, v9, &qword_27DB05C70, &unk_230032560);
  if (v15(&v13[v14], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
    goto LABEL_6;
  }

  v20 = v82;
  (*(v5 + 32))(v82, &v13[v14], v4);
  sub_230018998(&qword_27DB05CE8, MEMORY[0x277CC9598]);
  v21 = sub_230031140();
  v22 = *(v5 + 8);
  v22(v20, v4);
  v22(v9, v4);
  sub_22FFF31B4(v13, &qword_27DB05C70, &unk_230032560);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v23 = type metadata accessor for AppStoreInstallationSignal(0);
  v24 = v23[5];
  v26 = v83;
  v25 = v84;
  v27 = (v83 + v24);
  v28 = *(v83 + v24 + 8);
  v29 = (v84 + v24);
  v30 = *(v84 + v24 + 8);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  if (*(v83 + v23[6]) != *(v84 + v23[6]) || *(v83 + v23[7]) != *(v84 + v23[7]))
  {
    return 0;
  }

  v31 = v23[8];
  v33 = *(v83 + v31);
  v32 = *(v83 + v31 + 8);
  v34 = (v84 + v31);
  if (v33 != *v34 || v32 != v34[1])
  {
    v35 = v23;
    v36 = sub_2300316D0();
    v23 = v35;
    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  v37 = v23[9];
  v39 = *(v26 + v37);
  v38 = *(v26 + v37 + 8);
  v40 = (v25 + v37);
  if (v39 != *v40 || v38 != v40[1])
  {
    v41 = v23;
    v42 = sub_2300316D0();
    v23 = v41;
    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(v26 + v23[10]) != *(v25 + v23[10]) || *(v26 + v23[11]) != *(v25 + v23[11]) || *(v26 + v23[12]) != *(v25 + v23[12]))
  {
    return 0;
  }

  v43 = v23[13];
  v44 = (v26 + v43);
  v45 = *(v26 + v43 + 8);
  v46 = (v25 + v43);
  v47 = v46[1];
  if (v45)
  {
    if (!v47)
    {
      return 0;
    }

    if (*v44 != *v46 || v45 != v47)
    {
      v48 = v23;
      v49 = sub_2300316D0();
      v23 = v48;
      if ((v49 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v47)
  {
    return 0;
  }

  v50 = v23[14];
  v52 = *(v26 + v50);
  v51 = *(v26 + v50 + 8);
  v53 = (v25 + v50);
  if (v52 != *v53 || v51 != v53[1])
  {
    v54 = v23;
    v55 = sub_2300316D0();
    v23 = v54;
    if ((v55 & 1) == 0)
    {
      return 0;
    }
  }

  v56 = v26 + v23[15];
  v57 = *(v56 + 48);
  v58 = *(v56 + 64);
  v131 = *(v56 + 80);
  v59 = *(v56 + 32);
  v129 = *(v56 + 48);
  v130 = v58;
  v60 = *(v56 + 16);
  v61 = *(v56 + 32);
  v126 = *v56;
  v127 = v60;
  v128 = v59;
  v62 = v25 + v23[15];
  v63 = *(v62 + 48);
  v136 = *(v62 + 64);
  v64 = *(v62 + 16);
  v132 = *v62;
  v133 = v64;
  v65 = *(v62 + 48);
  v134 = *(v62 + 32);
  v135 = v65;
  v124 = v126;
  v120 = v61;
  v121 = v57;
  v122 = *(v56 + 64);
  v137 = *(v62 + 80);
  v125 = *(v56 + 16);
  v66 = *(&v127 + 1);
  v123 = *(v56 + 80);
  v119 = *(v62 + 16);
  v118 = v132;
  v67 = *(&v133 + 1);
  v68 = *(v62 + 64);
  v117 = *(v62 + 80);
  v115 = v63;
  v116 = v68;
  v114 = v134;
  if (*(&v127 + 1) == 1)
  {
    if (*(&v133 + 1) == 1)
    {
      v69 = v23;
      v101 = *v56;
      *&v102 = *(v56 + 16);
      *(&v102 + 1) = 1;
      v70 = *(v56 + 48);
      v103 = *(v56 + 32);
      v104 = v70;
      v105 = *(v56 + 64);
      v106 = *(v56 + 80);
      sub_22FFF0DD0(&v126, &v95, &qword_27DB06878, &qword_230037928);
      sub_22FFF0DD0(&v132, &v95, &qword_27DB06878, &qword_230037928);
      sub_22FFF31B4(&v101, &qword_27DB06878, &qword_230037928);
      goto LABEL_45;
    }

    sub_22FFF0DD0(&v126, &v101, &qword_27DB06878, &qword_230037928);
    sub_22FFF0DD0(&v132, &v101, &qword_27DB06878, &qword_230037928);
    goto LABEL_43;
  }

  v71 = *(v56 + 16);
  v101 = *v56;
  *&v102 = v71;
  *(&v102 + 1) = *(&v127 + 1);
  v72 = *(v56 + 48);
  v103 = *(v56 + 32);
  v104 = v72;
  v105 = *(v56 + 64);
  v106 = *(v56 + 80);
  v100 = v106;
  v98 = v72;
  v99 = v105;
  v95 = v101;
  v96 = v102;
  v97 = v103;
  if (*(&v133 + 1) == 1)
  {
    v91 = v103;
    v92 = v104;
    v93 = v105;
    v94 = v106;
    v89 = v101;
    v90 = v102;
    sub_22FFF0DD0(&v126, v87, &qword_27DB06878, &qword_230037928);
    sub_22FFF0DD0(&v132, v87, &qword_27DB06878, &qword_230037928);
    sub_22FFF0DD0(&v101, v87, &qword_27DB06878, &qword_230037928);
    sub_22FFFD9D4(&v89);
LABEL_43:
    v101 = v124;
    v103 = v120;
    v104 = v121;
    v105 = v122;
    v107 = v118;
    v112 = v116;
    v111 = v115;
    *&v102 = v125;
    *(&v102 + 1) = v66;
    v106 = v123;
    v108 = v119;
    v109 = v67;
    v113 = v117;
    v110 = v114;
    v16 = &unk_27DB068A0;
    v17 = &unk_230037BF8;
    v18 = &v101;
    goto LABEL_7;
  }

  v69 = v23;
  v89 = *v62;
  v73 = *(v62 + 16);
  v74 = *(v62 + 48);
  v91 = *(v62 + 32);
  v92 = v74;
  v93 = *(v62 + 64);
  v94 = *(v62 + 80);
  *&v90 = v73;
  *(&v90 + 1) = *(&v133 + 1);
  v75 = _s24PromotedContentJetClient15ProofOfPurchaseV2eeoiySbAC_ACtFZ_0(&v95, &v89);
  v85[2] = v91;
  v85[3] = v92;
  v85[4] = v93;
  v86 = v94;
  v85[0] = v89;
  v85[1] = v90;
  sub_22FFF0DD0(&v126, v87, &qword_27DB06878, &qword_230037928);
  sub_22FFF0DD0(&v132, v87, &qword_27DB06878, &qword_230037928);
  sub_22FFF0DD0(&v101, v87, &qword_27DB06878, &qword_230037928);
  sub_22FFFD9D4(v85);
  v87[2] = v97;
  v87[3] = v98;
  v87[4] = v99;
  v88 = v100;
  v87[0] = v95;
  v87[1] = v96;
  sub_22FFFD9D4(v87);
  v89 = v124;
  *&v90 = v125;
  *(&v90 + 1) = v66;
  v91 = v120;
  v92 = v121;
  v93 = v122;
  v94 = v123;
  sub_22FFF31B4(&v89, &qword_27DB06878, &qword_230037928);
  if (!v75)
  {
    return 0;
  }

LABEL_45:
  v76 = v69[16];
  v77 = (v26 + v76);
  v78 = *(v26 + v76 + 4);
  v79 = (v25 + v76);
  v80 = *(v25 + v76 + 4);
  if (v78)
  {
    if (!v80)
    {
      return 0;
    }
  }

  else
  {
    if (*v77 != *v79)
    {
      LOBYTE(v80) = 1;
    }

    if (v80)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_23001FFF0()
{
  result = qword_281493FA8;
  if (!qword_281493FA8)
  {
    result = swift_getWitnessTable("I< R,U", &type metadata for AppStoreInstallationSignal.CodingKeys, v0, v1);
    atomic_store(result, &qword_281493FA8);
  }

  return result;
}

unint64_t sub_230020044()
{
  result = qword_281494128;
  if (!qword_281494128)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProofOfPurchase, &type metadata for ProofOfPurchase, v0, v1);
    atomic_store(result, &qword_281494128);
  }

  return result;
}

uint64_t sub_230020098(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_230020108()
{
  result = qword_27DB06890;
  if (!qword_27DB06890)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProofOfPurchase, &type metadata for ProofOfPurchase, v0, v1);
    atomic_store(result, &qword_27DB06890);
  }

  return result;
}

uint64_t sub_23002015C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreInstallationSignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2300201C0(uint64_t a1)
{
  v2 = type metadata accessor for AppStoreInstallationSignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230020220()
{
  result = qword_27DB06898;
  if (!qword_27DB06898)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppStoreInstallationSignal.CodingKeys, &type metadata for AppStoreInstallationSignal.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06898);
  }

  return result;
}

unint64_t sub_230020278()
{
  result = qword_281493F98;
  if (!qword_281493F98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppStoreInstallationSignal.CodingKeys, &type metadata for AppStoreInstallationSignal.CodingKeys, v0, v1);
    atomic_store(result, &qword_281493F98);
  }

  return result;
}

unint64_t sub_2300202D0()
{
  result = qword_281493FA0;
  if (!qword_281493FA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppStoreInstallationSignal.CodingKeys, &type metadata for AppStoreInstallationSignal.CodingKeys, v0, v1);
    atomic_store(result, &qword_281493FA0);
  }

  return result;
}

void sub_23002034C(uint64_t a1)
{
  sub_230020474(319);
  if (v1 <= 0x3F)
  {
    sub_22FFF2FC4(319, &qword_2814942A8, MEMORY[0x277D84D38]);
    if (v2 <= 0x3F)
    {
      sub_22FFF2FC4(319, &qword_2814942D0, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_22FFF2FC4(319, qword_281494D90, &type metadata for ProofOfPurchase);
        if (v4 <= 0x3F)
        {
          sub_22FFF2FC4(319, &qword_2814942B0, MEMORY[0x277D849A8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_230020474(uint64_t a1)
{
  if (!qword_281495498)
  {
    sub_230030E00();
    v1 = sub_230031380();
    if (!v2)
    {
      atomic_store(v1, &qword_281495498);
    }
  }
}

uint64_t JetPackVersion.base.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_230030EC0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for JetPackVersion(uint64_t a1)
{
  result = qword_281495458;
  if (!qword_281495458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t JetPackVersion.build.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JetPackVersion(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t JetPackVersion.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22FFED9B8(&qword_27DB068A8, &qword_230037C00);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v56 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v56 - v12;
  v14 = *(v5 + 56);
  v59 = a1;
  *&v13[v14] = sub_230030E70();
  sub_230020C44(v13, v11);

  v15 = sub_230030EC0();
  v16 = *(v15 - 8);
  (*(v16 + 32))(a2, v11, v15);
  sub_230020C44(v13, v8);
  v17 = *&v8[*(v5 + 56)];
  if (!v17)
  {
    goto LABEL_11;
  }

  if (!v17[2])
  {

LABEL_11:
    v40 = *(v16 + 8);
    v40(v59, v15);
    sub_230020CB4(v13);
    v40(v8, v15);
    result = type metadata accessor for JetPackVersion(0);
    v41 = result;
    *(a2 + *(result + 20)) = 1;
    v42 = 3;
LABEL_33:
    *(a2 + *(v41 + 24)) = v42;
    return result;
  }

  v18 = v16;
  v19 = v17[4];
  v20 = v17[5];

  v60 = v19;
  v61 = v20;
  v21 = sub_230020D1C();
  v22 = MEMORY[0x23190F750](45, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v21);

  v23 = *(v18 + 8);
  v56[1] = v18 + 8;
  v57 = v15;
  v56[0] = v23;
  v23(v8, v15);
  v24 = *(v22 + 16);
  v58 = a2;
  if (!v24)
  {

    v27 = MEMORY[0x277D84F90];
LABEL_13:
    v60 = 0x6C616E7265746E69;
    v61 = 0xE800000000000000;
    MEMORY[0x28223BE20](v39);
    v56[-2] = &v60;
    v43 = sub_230021D44(sub_230021DF0, &v56[-4], v27);
    v44 = type metadata accessor for JetPackVersion(0);
    v41 = v44;
    *(a2 + *(v44 + 20)) = v43 & 1;
    v42 = byte_2844E0D50;
    if (byte_2844E0D50)
    {
      if (byte_2844E0D50 == 1)
      {
        v45 = 0xE400000000000000;
        v46 = 1685025392;
      }

      else
      {
        v45 = 0xE500000000000000;
        v46 = 0x6775626564;
      }
    }

    else
    {
      v45 = 0xE500000000000000;
      v46 = 0x7972726163;
    }

    v60 = v46;
    v61 = v45;
    MEMORY[0x28223BE20](v44);
    v56[-2] = &v60;
    v47 = sub_230021D44(sub_230022650, &v56[-4], v27);

    if ((v47 & 1) == 0)
    {
      v42 = byte_2844E0D51;
      if (byte_2844E0D51)
      {
        if (byte_2844E0D51 == 1)
        {
          v49 = 0xE400000000000000;
          v50 = 1685025392;
        }

        else
        {
          v49 = 0xE500000000000000;
          v50 = 0x6775626564;
        }
      }

      else
      {
        v49 = 0xE500000000000000;
        v50 = 0x7972726163;
      }

      v60 = v50;
      v61 = v49;
      MEMORY[0x28223BE20](v48);
      v56[-2] = &v60;
      v51 = sub_230021D44(sub_230022650, &v56[-4], v27);

      if ((v51 & 1) == 0)
      {
        v42 = byte_2844E0D52;
        if (byte_2844E0D52)
        {
          if (byte_2844E0D52 == 1)
          {
            v53 = 0xE400000000000000;
            v54 = 1685025392;
          }

          else
          {
            v53 = 0xE500000000000000;
            v54 = 0x6775626564;
          }
        }

        else
        {
          v53 = 0xE500000000000000;
          v54 = 0x7972726163;
        }

        v60 = v54;
        v61 = v53;
        MEMORY[0x28223BE20](v52);
        v56[-2] = &v60;
        v55 = sub_230021D44(sub_230022650, &v56[-4], v27);

        if ((v55 & 1) == 0)
        {
          v42 = 3;
        }
      }
    }

    a2 = v58;

    (v56[0])(v59, v57);
    result = sub_230020CB4(v13);
    goto LABEL_33;
  }

  v60 = MEMORY[0x277D84F90];
  result = sub_23000E3F4(0, v24, 0);
  v26 = 0;
  v27 = v60;
  v28 = (v22 + 56);
  while (v26 < *(v22 + 16))
  {
    v29 = *(v28 - 3);
    v30 = *(v28 - 2);
    v32 = *(v28 - 1);
    v31 = *v28;

    v33 = MEMORY[0x23190F530](v29, v30, v32, v31);
    v35 = v34;

    v60 = v27;
    v37 = *(v27 + 16);
    v36 = *(v27 + 24);
    if (v37 >= v36 >> 1)
    {
      result = sub_23000E3F4((v36 > 1), v37 + 1, 1);
      v27 = v60;
    }

    ++v26;
    *(v27 + 16) = v37 + 1;
    v38 = v27 + 16 * v37;
    *(v38 + 32) = v33;
    *(v38 + 40) = v35;
    v28 += 4;
    if (v24 == v26)
    {

      a2 = v58;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t JetPackVersion.Build.rawValue.getter()
{
  v1 = 1685025392;
  if (*v0 != 1)
  {
    v1 = 0x6775626564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972726163;
  }
}

uint64_t sub_230020C44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB068A8, &qword_230037C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230020CB4(uint64_t a1)
{
  v2 = sub_22FFED9B8(&qword_27DB068A8, &qword_230037C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230020D1C()
{
  result = qword_2814942D8;
  if (!qword_2814942D8)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83820], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_2814942D8);
  }

  return result;
}

uint64_t sub_230020D70()
{
  v1 = 0x6C616E7265746E69;
  if (*v0 != 1)
  {
    v1 = 0x646C697562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_230020DC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2300224E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230020DE8(uint64_t a1)
{
  v2 = sub_230021E64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230020E24(uint64_t a1)
{
  v2 = sub_230021E64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JetPackVersion.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB068B0, &qword_230037C08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230021E64();
  sub_230031780();
  v11[15] = 0;
  sub_230030EC0();
  sub_230022274(&qword_281494288, MEMORY[0x277CE4A80], MEMORY[0x277CE4A88]);
  sub_230031640();
  if (!v2)
  {
    v9 = type metadata accessor for JetPackVersion(0);
    v11[14] = 1;
    sub_230031610();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_230021EB8();
    sub_2300315D0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t JetPackVersion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_230030EC0();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22FFED9B8(&qword_27DB068B8, &qword_230037C10);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for JetPackVersion(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFEDA4C(a1, a1[3]);
  sub_230021E64();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(a1);
  }

  v12 = v11;
  v13 = v20;
  v27 = 0;
  sub_230022274(&qword_281494280, MEMORY[0x277CE4A80], MEMORY[0x277CE4AA0]);
  v14 = v22;
  sub_230031520();
  v15 = *(v13 + 32);
  v16 = v23;
  v23 = v4;
  v15(v12, v16, v4);
  v26 = 1;
  *(v12 + *(v9 + 20)) = sub_2300314F0() & 1;
  v24 = 2;
  sub_230021F0C();
  sub_2300314B0();
  (*(v21 + 8))(v8, v14);
  *(v12 + *(v9 + 24)) = v25;
  sub_230021F60(v12, v19);
  sub_22FFEE60C(a1);
  return sub_230021FC4(v12);
}

PromotedContentJetClient::JetPackVersion::Build_optional __swiftcall JetPackVersion.Build.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23002147C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1685025392;
  if (v2 != 1)
  {
    v4 = 0x6775626564;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7972726163;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1685025392;
  if (*a2 != 1)
  {
    v8 = 0x6775626564;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7972726163;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2300316D0();
  }

  return v11 & 1;
}

uint64_t sub_230021564()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_2300215F8(uint64_t a1)
{
  sub_2300311A0();
}

uint64_t sub_230021678(uint64_t a1)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

void sub_230021714(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1685025392;
  if (v2 != 1)
  {
    v5 = 0x6775626564;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972726163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

BOOL static JetPackVersion.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_230030EC0();
  sub_230022274(&qword_27DB068C0, MEMORY[0x277CE4A80], MEMORY[0x277CE4A98]);
  if ((sub_230031140() & 1) == 0)
  {

    JUMPOUT(0x23190F210);
  }

  v4 = *(type metadata accessor for JetPackVersion(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  return v5 == 1 && (v6 & 1) == 0;
}

BOOL sub_230021900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_230030EC0();
  sub_230022274(&qword_27DB068C0, MEMORY[0x277CE4A80], MEMORY[0x277CE4A98]);
  if ((sub_230031140() & 1) == 0)
  {

    JUMPOUT(0x23190F210);
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  return (v7 & 1) != 0 && (v8 & 1) == 0;
}

uint64_t sub_2300219D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_230030EC0();
  sub_230022274(&qword_27DB068C0, MEMORY[0x277CE4A80], MEMORY[0x277CE4A98]);
  if (sub_230031140())
  {
    v6 = *(a3 + 20);
    v7 = *(a2 + v6);
    v8 = *(a1 + v6);
    v9 = (v7 & 1) == 0 || (v8 & 1) != 0;
  }

  else
  {
    v9 = MEMORY[0x23190F210](a2, a1) ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_230021A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_230030EC0();
  sub_230022274(&qword_27DB068C0, MEMORY[0x277CE4A80], MEMORY[0x277CE4A98]);
  if (sub_230031140())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);
    v9 = (v7 & 1) == 0 || (v8 & 1) != 0;
  }

  else
  {
    v9 = MEMORY[0x23190F210](a1, a2) ^ 1;
  }

  return v9 & 1;
}

BOOL sub_230021B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_230030EC0();
  sub_230022274(&qword_27DB068C0, MEMORY[0x277CE4A80], MEMORY[0x277CE4A98]);
  if ((sub_230031140() & 1) == 0)
  {

    JUMPOUT(0x23190F210);
  }

  v6 = *(a3 + 20);
  v7 = *(a2 + v6);
  v8 = *(a1 + v6);
  return (v7 & 1) != 0 && (v8 & 1) == 0;
}

uint64_t JetPackVersion.description.getter()
{
  v7 = sub_230030E50();
  v1 = type metadata accessor for JetPackVersion(0);
  if (*(v0 + *(v1 + 20)))
  {
    v2 = 0x616E7265746E692DLL;
  }

  else
  {
    v2 = 0x616E72657478652DLL;
  }

  MEMORY[0x23190F560](v2, 0xE90000000000006CLL);

  v3 = *(v0 + *(v1 + 24));
  if (v3 != 3)
  {
    if (*(v0 + *(v1 + 24)))
    {
      if (v3 == 1)
      {
        v4 = 0xE400000000000000;
        v5 = 1685025392;
      }

      else
      {
        v4 = 0xE500000000000000;
        v5 = 0x6775626564;
      }
    }

    else
    {
      v4 = 0xE500000000000000;
      v5 = 0x7972726163;
    }

    MEMORY[0x23190F560](v5, v4);

    MEMORY[0x23190F560](45, 0xE100000000000000);
  }

  return v7;
}

uint64_t sub_230021D44(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_230021E0C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2300316D0() & 1;
  }
}

unint64_t sub_230021E64()
{
  result = qword_281495488;
  if (!qword_281495488)
  {
    result = swift_getWitnessTable(byte_230037F40, &type metadata for JetPackVersion.CodingKeys, v0, v1);
    atomic_store(result, &qword_281495488);
  }

  return result;
}

unint64_t sub_230021EB8()
{
  result = qword_281494278;
  if (!qword_281494278)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for JetPackVersion.Build, &type metadata for JetPackVersion.Build, v0, v1);
    atomic_store(result, &qword_281494278);
  }

  return result;
}

unint64_t sub_230021F0C()
{
  result = qword_281494270;
  if (!qword_281494270)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for JetPackVersion.Build, &type metadata for JetPackVersion.Build, v0, v1);
    atomic_store(result, &qword_281494270);
  }

  return result;
}

uint64_t sub_230021F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackVersion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230021FC4(uint64_t a1)
{
  v2 = type metadata accessor for JetPackVersion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL _s24PromotedContentJetClient0C11PackVersionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23190F230]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for JetPackVersion(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 3)
  {
    return v8 == 3;
  }

  if (v8 == 3)
  {
    return 0;
  }

  v9 = 0x7972726163;
  v10 = 0xE400000000000000;
  v11 = 1685025392;
  if (v7 != 1)
  {
    v11 = 0x6775626564;
    v10 = 0xE500000000000000;
  }

  if (v7)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x7972726163;
  }

  if (v7)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v14 = 0xE400000000000000;
      v9 = 1685025392;
    }

    else
    {
      v14 = 0xE500000000000000;
      v9 = 0x6775626564;
    }
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  if (v12 != v9 || v13 != v14)
  {
    v15 = sub_2300316D0();

    return (v15 & 1) != 0;
  }

  return 1;
}

unint64_t sub_230022170()
{
  result = qword_27DB068C8;
  if (!qword_27DB068C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for JetPackVersion.Build, &type metadata for JetPackVersion.Build, v0, v1);
    atomic_store(result, &qword_27DB068C8);
  }

  return result;
}

unint64_t sub_2300221C8()
{
  result = qword_27DB068D0;
  if (!qword_27DB068D0)
  {
    v3 = sub_22FFF0054(&qword_27DB068D8, &qword_230037D58);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27DB068D0);
  }

  return result;
}

uint64_t sub_230022274(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void sub_2300222E4(uint64_t a1)
{
  sub_230030EC0();
  if (v1 <= 0x3F)
  {
    sub_230022370();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_230022370()
{
  if (!qword_281495468)
  {
    v0 = sub_230031380();
    if (!v1)
    {
      atomic_store(v0, &qword_281495468);
    }
  }
}

unint64_t sub_2300223E4()
{
  result = qword_27DB068E8;
  if (!qword_27DB068E8)
  {
    result = swift_getWitnessTable(byte_230037F18, &type metadata for JetPackVersion.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB068E8);
  }

  return result;
}

unint64_t sub_23002243C()
{
  result = qword_281495478;
  if (!qword_281495478)
  {
    result = swift_getWitnessTable(byte_230037E88, &type metadata for JetPackVersion.CodingKeys, v0, v1);
    atomic_store(result, &qword_281495478);
  }

  return result;
}

unint64_t sub_230022494()
{
  result = qword_281495480;
  if (!qword_281495480)
  {
    result = swift_getWitnessTable(aR_3, &type metadata for JetPackVersion.CodingKeys, v0, v1);
    atomic_store(result, &qword_281495480);
  }

  return result;
}

uint64_t sub_2300224E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xE800000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646C697562 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2300316D0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_2300225FC()
{
  result = qword_281495470;
  if (!qword_281495470)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for JetPackVersion.Build, &type metadata for JetPackVersion.Build, v0, v1);
    atomic_store(result, &qword_281495470);
  }

  return result;
}

uint64_t sub_230022694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4665727574616566 && a2 == 0xEC0000007367616CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2300316D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230022720(uint64_t a1)
{
  v2 = sub_230022930();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23002275C(uint64_t a1)
{
  v2 = sub_230022930();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntentDependencyProvider.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB068F0, &unk_230037F90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  sub_22FFEDA4C(a1, a1[3]);
  sub_230022930();

  sub_230031780();
  v9[1] = v7;
  sub_22FFED9B8(&qword_27DB06380, &qword_2300366B0);
  sub_230009828(&qword_281493EA0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_230031640();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_230022930()
{
  result = qword_281494868[0];
  if (!qword_281494868[0])
  {
    result = swift_getWitnessTable(a5R, &type metadata for IntentDependencyProvider.CodingKeys, v0, v1);
    atomic_store(result, qword_281494868);
  }

  return result;
}

uint64_t IntentDependencyProvider.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_22FFED9B8(&qword_27DB068F8, &qword_230037FA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  sub_22FFEDA4C(a1, a1[3]);
  sub_230022930();
  sub_230031770();
  if (!v2)
  {
    sub_22FFED9B8(&qword_27DB06380, &qword_2300366B0);
    sub_230009828(&qword_281493E98, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_230031520();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return sub_22FFEE60C(a1);
}

uint64_t sub_230022B64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_230022BAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_230022C0C()
{
  result = qword_27DB06900;
  if (!qword_27DB06900)
  {
    result = swift_getWitnessTable(byte_2300380D4, &type metadata for IntentDependencyProvider.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06900);
  }

  return result;
}

unint64_t sub_230022C64()
{
  result = qword_281494858;
  if (!qword_281494858)
  {
    result = swift_getWitnessTable("]/ RpO", &type metadata for IntentDependencyProvider.CodingKeys, v0, v1);
    atomic_store(result, &qword_281494858);
  }

  return result;
}

unint64_t sub_230022CBC()
{
  result = qword_281494860;
  if (!qword_281494860)
  {
    result = swift_getWitnessTable("m+ RHO", &type metadata for IntentDependencyProvider.CodingKeys, v0, v1);
    atomic_store(result, &qword_281494860);
  }

  return result;
}

uint64_t IntentMessage.telemetryType.getter()
{
  v1 = type metadata accessor for IntentMessage(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230022E14(v0, v3);
  v4 = qword_230038BB8[swift_getEnumCaseMultiPayload()];
  sub_23002442C(v3, type metadata accessor for IntentMessage);
  return v4;
}

uint64_t type metadata accessor for IntentMessage(uint64_t a1)
{
  result = qword_281494E30;
  if (!qword_281494E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230022E14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230022E78(uint64_t a1)
{
  v2 = sub_2300243D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230022EB4(uint64_t a1)
{
  v2 = sub_2300243D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230022EF0(uint64_t a1)
{
  v2 = sub_230024330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230022F2C(uint64_t a1)
{
  v2 = sub_230024330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230022F68(uint64_t a1)
{
  v2 = sub_230024384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230022FA4(uint64_t a1)
{
  v2 = sub_230024384();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_230022FE0()
{
  v1 = *v0;
  v2 = 0xD000000000000011;
  if (v1 != 3)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 > 4u)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD000000000000014;
  if (v1 == 1)
  {
    v3 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23002309C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230026030(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2300230C4(uint64_t a1)
{
  v2 = sub_23002418C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230023100(uint64_t a1)
{
  v2 = sub_23002418C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23002313C(uint64_t a1)
{
  v2 = sub_230024288();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230023178(uint64_t a1)
{
  v2 = sub_230024288();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2300231B4(uint64_t a1)
{
  v2 = sub_230024234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300231F0(uint64_t a1)
{
  v2 = sub_230024234();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23002322C(uint64_t a1)
{
  v2 = sub_2300241E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230023268(uint64_t a1)
{
  v2 = sub_2300241E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2300232A4(uint64_t a1)
{
  v2 = sub_2300242DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300232E0(uint64_t a1)
{
  v2 = sub_2300242DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntentMessage.encode(to:)(void *a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06908, &qword_230038150);
  v79 = *(v2 - 8);
  v80 = v2;
  MEMORY[0x28223BE20](v2);
  v78 = &v57 - v3;
  v76 = type metadata accessor for ConversionMatchingStep3Intent(0);
  MEMORY[0x28223BE20](v76);
  v77 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22FFED9B8(&qword_27DB06910, &qword_230038158);
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x28223BE20](v5);
  v73 = &v57 - v6;
  v71 = type metadata accessor for ConversionMatchingStep2Intent(0);
  MEMORY[0x28223BE20](v71);
  v72 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_22FFED9B8(&qword_27DB06918, &qword_230038160);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v57 - v8;
  v66 = type metadata accessor for ConversionMatchingStep1Intent(0);
  MEMORY[0x28223BE20](v66);
  v67 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22FFED9B8(&qword_27DB06920, &qword_230038168);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v57 - v10;
  v61 = type metadata accessor for JetPackAssetCacheAction(0);
  MEMORY[0x28223BE20](v61);
  v62 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_22FFED9B8(&qword_27DB06928, &qword_230038170);
  v60 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v57 - v12;
  matched = type metadata accessor for AttributionPostMatchIntent(0);
  MEMORY[0x28223BE20](matched);
  v85 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_22FFED9B8(&qword_27DB06930, &qword_230038178);
  v59 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v57 - v14;
  v58 = type metadata accessor for AttributionPreMatchIntent(0);
  MEMORY[0x28223BE20](v58);
  v82 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_22FFED9B8(&qword_27DB06938, &qword_230038180);
  v57 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v17 = &v57 - v16;
  v18 = type metadata accessor for AttributionMatchIntent(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for IntentMessage(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_22FFED9B8(&qword_27DB06940, &qword_230038188);
  v92 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v25 = &v57 - v24;
  sub_22FFEDA4C(a1, a1[3]);
  sub_23002418C();
  v90 = v25;
  sub_230031780();
  sub_230022E14(v91, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v91 = v18;
    v34 = v81;
    v35 = v83;
    v36 = v84;
    v37 = v87;
    v38 = v88;
    if (EnumCaseMultiPayload)
    {
      v39 = v89;
      if (EnumCaseMultiPayload == 1)
      {
        v40 = v82;
        sub_2300255B8(v23, v82, type metadata accessor for AttributionPreMatchIntent);
        v94 = 1;
        sub_230024384();
        v41 = v35;
        v42 = v90;
        sub_2300315A0();
        sub_230025620(&qword_27DB066C0, type metadata accessor for AttributionPreMatchIntent, protocol conformance descriptor for AttributionPreMatchIntent);
        sub_230031640();
        (*(v59 + 8))(v41, v36);
        v43 = type metadata accessor for AttributionPreMatchIntent;
      }

      else
      {
        v40 = v85;
        sub_2300255B8(v23, v85, type metadata accessor for AttributionPostMatchIntent);
        v95 = 2;
        sub_230024330();
        v42 = v90;
        sub_2300315A0();
        sub_230025620(&qword_27DB06970, type metadata accessor for AttributionPostMatchIntent, "%\n R$>");
        sub_230031640();
        (*(v60 + 8))(v37, v38);
        v43 = type metadata accessor for AttributionPostMatchIntent;
      }

      sub_23002442C(v40, v43);
      return (*(v92 + 8))(v42, v39);
    }

    else
    {
      sub_2300255B8(v23, v20, type metadata accessor for AttributionMatchIntent);
      v93 = 0;
      sub_2300243D8();
      v47 = v17;
      v49 = v89;
      v48 = v90;
      sub_2300315A0();
      sub_230025620(&qword_27DB063E8, type metadata accessor for AttributionMatchIntent, protocol conformance descriptor for AttributionMatchIntent);
      sub_230031640();
      (*(v57 + 8))(v47, v34);
      sub_23002442C(v20, type metadata accessor for AttributionMatchIntent);
      return (*(v92 + 8))(v48, v49);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      v27 = v89;
      v28 = v90;
      if (EnumCaseMultiPayload == 5)
      {
        v44 = v23;
        v30 = v72;
        sub_2300255B8(v44, v72, type metadata accessor for ConversionMatchingStep2Intent);
        v98 = 5;
        sub_230024234();
        v45 = v73;
        sub_2300315A0();
        sub_230025620(&qword_27DB05C50, type metadata accessor for ConversionMatchingStep2Intent, "%z Rܝ");
        v46 = v75;
        sub_230031640();
        (*(v74 + 8))(v45, v46);
        v33 = type metadata accessor for ConversionMatchingStep2Intent;
      }

      else
      {
        v54 = v23;
        v30 = v77;
        sub_2300255B8(v54, v77, type metadata accessor for ConversionMatchingStep3Intent);
        v99 = 6;
        sub_2300241E0();
        v55 = v78;
        sub_2300315A0();
        sub_230025620(&qword_27DB05D90, type metadata accessor for ConversionMatchingStep3Intent, protocol conformance descriptor for ConversionMatchingStep3Intent);
        v56 = v80;
        sub_230031640();
        (*(v79 + 8))(v55, v56);
        v33 = type metadata accessor for ConversionMatchingStep3Intent;
      }
    }

    else
    {
      v27 = v89;
      v28 = v90;
      if (EnumCaseMultiPayload == 3)
      {
        v29 = v23;
        v30 = v62;
        sub_2300255B8(v29, v62, type metadata accessor for JetPackAssetCacheAction);
        v96 = 3;
        sub_2300242DC();
        v31 = v63;
        sub_2300315A0();
        sub_230025620(qword_281494168, type metadata accessor for JetPackAssetCacheAction, protocol conformance descriptor for JetPackAssetCacheAction);
        v32 = v65;
        sub_230031640();
        (*(v64 + 8))(v31, v32);
        v33 = type metadata accessor for JetPackAssetCacheAction;
      }

      else
      {
        v51 = v23;
        v30 = v67;
        sub_2300255B8(v51, v67, type metadata accessor for ConversionMatchingStep1Intent);
        v97 = 4;
        sub_230024288();
        v52 = v68;
        sub_2300315A0();
        sub_230025620(&qword_27DB06960, type metadata accessor for ConversionMatchingStep1Intent, "=");
        v53 = v70;
        sub_230031640();
        (*(v69 + 8))(v52, v53);
        v33 = type metadata accessor for ConversionMatchingStep1Intent;
      }
    }

    sub_23002442C(v30, v33);
    return (*(v92 + 8))(v28, v27);
  }
}

unint64_t sub_23002418C()
{
  result = qword_281494EB0;
  if (!qword_281494EB0)
  {
    result = swift_getWitnessTable(byte_230038B64, &type metadata for IntentMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_281494EB0);
  }

  return result;
}

unint64_t sub_2300241E0()
{
  result = qword_27DB06948;
  if (!qword_27DB06948)
  {
    result = swift_getWitnessTable(byte_230038B14, &type metadata for IntentMessage.ConversionMatchingStep3CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06948);
  }

  return result;
}

unint64_t sub_230024234()
{
  result = qword_27DB06950;
  if (!qword_27DB06950)
  {
    result = swift_getWitnessTable(aER_0, &type metadata for IntentMessage.ConversionMatchingStep2CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06950);
  }

  return result;
}

unint64_t sub_230024288()
{
  result = qword_27DB06958;
  if (!qword_27DB06958)
  {
    result = swift_getWitnessTable(byte_230038A74, &type metadata for IntentMessage.ConversionMatchingStep1CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06958);
  }

  return result;
}

unint64_t sub_2300242DC()
{
  result = qword_281494EC8[0];
  if (!qword_281494EC8[0])
  {
    result = swift_getWitnessTable(byte_230038A24, &type metadata for IntentMessage.JetPackAssetCacheCodingKeys, v0, v1);
    atomic_store(result, qword_281494EC8);
  }

  return result;
}

unint64_t sub_230024330()
{
  result = qword_27DB06968;
  if (!qword_27DB06968)
  {
    result = swift_getWitnessTable(aUR_0, &type metadata for IntentMessage.AttributionPostMatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06968);
  }

  return result;
}

unint64_t sub_230024384()
{
  result = qword_27DB06978;
  if (!qword_27DB06978)
  {
    result = swift_getWitnessTable(byte_230038984, &type metadata for IntentMessage.AttributionPreMatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06978);
  }

  return result;
}

unint64_t sub_2300243D8()
{
  result = qword_27DB06980;
  if (!qword_27DB06980)
  {
    result = swift_getWitnessTable(byte_230038934, &type metadata for IntentMessage.AttributionMatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06980);
  }

  return result;
}

uint64_t sub_23002442C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t IntentMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = sub_22FFED9B8(&qword_27DB06988, &qword_230038190);
  v4 = *(v3 - 8);
  v96 = v3;
  v97 = v4;
  MEMORY[0x28223BE20](v3);
  v107 = &v77 - v5;
  v95 = sub_22FFED9B8(&qword_27DB06990, &qword_230038198);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v101 = &v77 - v6;
  v93 = sub_22FFED9B8(&qword_27DB06998, &qword_2300381A0);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v100 = &v77 - v7;
  v90 = sub_22FFED9B8(&qword_27DB069A0, &qword_2300381A8);
  v91 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v98 = &v77 - v8;
  v88 = sub_22FFED9B8(&qword_27DB069A8, &qword_2300381B0);
  v89 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v106 = &v77 - v9;
  v87 = sub_22FFED9B8(&qword_27DB069B0, &qword_2300381B8);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v99 = &v77 - v10;
  v85 = sub_22FFED9B8(&qword_27DB069B8, &qword_2300381C0);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v104 = &v77 - v11;
  v105 = sub_22FFED9B8(&qword_27DB069C0, &unk_2300381C8);
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v13 = &v77 - v12;
  v102 = type metadata accessor for IntentMessage(0);
  v14 = MEMORY[0x28223BE20](v102);
  v83 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v82 = &v77 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v81 = &v77 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v77 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v77 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v77 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v77 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v77 - v32;
  v34 = a1[3];
  v110 = a1;
  sub_22FFEDA4C(a1, v34);
  sub_23002418C();
  v109 = v13;
  v35 = v111;
  sub_230031770();
  if (v35)
  {
    return sub_22FFEE60C(v110);
  }

  v77 = v28;
  v78 = v25;
  v79 = v22;
  v80 = v31;
  v36 = v104;
  v37 = v105;
  v39 = v106;
  v38 = v107;
  v111 = v33;
  v41 = v108;
  v40 = v109;
  v42 = sub_230031580();
  v43 = (2 * *(v42 + 16)) | 1;
  v112 = v42;
  v113 = v42 + 32;
  v114 = 0;
  v115 = v43;
  v44 = sub_22FFEE860();
  if (v44 == 7 || v114 != v115 >> 1)
  {
    v48 = sub_230031400();
    swift_allocError();
    v49 = v40;
    v51 = v50;
    sub_22FFED9B8(&qword_27DB05B98, &qword_230032EB0);
    *v51 = v102;
    sub_230031480();
    sub_2300313F0();
    (*(*(v48 - 8) + 104))(v51, *MEMORY[0x277D84160], v48);
    swift_willThrow();
    (*(v103 + 8))(v49, v37);
    swift_unknownObjectRelease();
    return sub_22FFEE60C(v110);
  }

  if (v44 <= 2u)
  {
    v53 = v111;
    if (v44)
    {
      if (v44 == 1)
      {
        v116 = 1;
        sub_230024384();
        v54 = v99;
        sub_230031470();
        type metadata accessor for AttributionPreMatchIntent(0);
        sub_230025620(&qword_27DB066B8, type metadata accessor for AttributionPreMatchIntent, "-; R\be");
        v55 = v77;
        v56 = v87;
        sub_230031520();
        v104 = 0;
        (*(v86 + 8))(v54, v56);
        (*(v103 + 8))(v40, v37);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v76 = v55;
      }

      else
      {
        v116 = 2;
        sub_230024330();
        sub_230031470();
        type metadata accessor for AttributionPostMatchIntent(0);
        sub_230025620(&qword_27DB069D0, type metadata accessor for AttributionPostMatchIntent, protocol conformance descriptor for AttributionPostMatchIntent);
        v67 = v78;
        v68 = v88;
        sub_230031520();
        v69 = v103;
        v104 = 0;
        (*(v89 + 8))(v39, v68);
        (*(v69 + 8))(v40, v37);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v76 = v67;
      }

      goto LABEL_20;
    }

    v116 = 0;
    sub_2300243D8();
    v61 = v36;
    sub_230031470();
    type metadata accessor for AttributionMatchIntent(0);
    sub_230025620(&qword_27DB063E0, type metadata accessor for AttributionMatchIntent, "EM Rls");
    v62 = v80;
    v63 = v85;
    sub_230031520();
    (*(v84 + 8))(v61, v63);
    (*(v103 + 8))(v109, v37);
    swift_unknownObjectRelease();
    v104 = 0;
    swift_storeEnumTagMultiPayload();
    v64 = v110;
    v76 = v62;
  }

  else
  {
    if (v44 > 4u)
    {
      v57 = v103;
      if (v44 == 5)
      {
        v116 = 5;
        sub_230024234();
        v58 = v101;
        sub_230031470();
        type metadata accessor for ConversionMatchingStep2Intent(0);
        sub_230025620(&qword_27DB05C48, type metadata accessor for ConversionMatchingStep2Intent, protocol conformance descriptor for ConversionMatchingStep2Intent);
        v59 = v82;
        v60 = v95;
        sub_230031520();
        v104 = 0;
        (*(v94 + 8))(v58, v60);
      }

      else
      {
        v116 = 6;
        sub_2300241E0();
        v66 = v38;
        sub_230031470();
        type metadata accessor for ConversionMatchingStep3Intent(0);
        sub_230025620(&qword_27DB05D88, type metadata accessor for ConversionMatchingStep3Intent, protocol conformance descriptor for ConversionMatchingStep3Intent);
        v59 = v83;
        v75 = v96;
        sub_230031520();
        v104 = 0;
        (*(v97 + 8))(v66, v75);
      }

      (*(v57 + 8))(v109, v37);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v76 = v59;
      goto LABEL_20;
    }

    v45 = v37;
    v46 = v103;
    if (v44 == 3)
    {
      v116 = 3;
      sub_2300242DC();
      v47 = v98;
      sub_230031470();
      type metadata accessor for JetPackAssetCacheAction(0);
      sub_230025620(&qword_281494160, type metadata accessor for JetPackAssetCacheAction, protocol conformance descriptor for JetPackAssetCacheAction);
      v70 = v79;
      v71 = v90;
      sub_230031520();
      v104 = 0;
      (*(v91 + 8))(v47, v71);
      (*(v46 + 8))(v109, v45);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v76 = v70;
LABEL_20:
      v64 = v110;
      v53 = v111;
      goto LABEL_21;
    }

    v116 = 4;
    sub_230024288();
    v65 = v100;
    sub_230031470();
    type metadata accessor for ConversionMatchingStep1Intent(0);
    sub_230025620(&qword_27DB069C8, type metadata accessor for ConversionMatchingStep1Intent, protocol conformance descriptor for ConversionMatchingStep1Intent);
    v72 = v81;
    v73 = v65;
    v74 = v93;
    sub_230031520();
    v104 = 0;
    (*(v92 + 8))(v73, v74);
    (*(v46 + 8))(v40, v45);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v76 = v72;
    v64 = v110;
    v53 = v111;
    v41 = v108;
  }

LABEL_21:
  sub_2300255B8(v76, v53, type metadata accessor for IntentMessage);
  sub_2300255B8(v53, v41, type metadata accessor for IntentMessage);
  return sub_22FFEE60C(v64);
}

uint64_t sub_2300255B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_230025620(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3, ...)
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

uint64_t sub_230025698(uint64_t a1)
{
  result = type metadata accessor for AttributionMatchIntent(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AttributionPreMatchIntent(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for AttributionPostMatchIntent(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for JetPackAssetCacheAction(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ConversionMatchingStep1Intent(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for ConversionMatchingStep2Intent(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for ConversionMatchingStep3Intent(319);
              if (v8 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_2300257F4()
{
  result = qword_27DB069D8;
  if (!qword_27DB069D8)
  {
    result = swift_getWitnessTable(byte_230038404, &type metadata for IntentMessage.ConversionMatchingStep3CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB069D8);
  }

  return result;
}

unint64_t sub_23002584C()
{
  result = qword_27DB069E0;
  if (!qword_27DB069E0)
  {
    result = swift_getWitnessTable(asc_2300384BC, &type metadata for IntentMessage.ConversionMatchingStep2CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB069E0);
  }

  return result;
}

unint64_t sub_2300258A4()
{
  result = qword_27DB069E8;
  if (!qword_27DB069E8)
  {
    result = swift_getWitnessTable("U\x1B R@K", &type metadata for IntentMessage.ConversionMatchingStep1CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB069E8);
  }

  return result;
}

unint64_t sub_2300258FC()
{
  result = qword_27DB069F0;
  if (!qword_27DB069F0)
  {
    result = swift_getWitnessTable(byte_23003862C, &type metadata for IntentMessage.JetPackAssetCacheCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB069F0);
  }

  return result;
}

unint64_t sub_230025954()
{
  result = qword_27DB069F8;
  if (!qword_27DB069F8)
  {
    result = swift_getWitnessTable(byte_2300386E4, &type metadata for IntentMessage.AttributionPostMatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB069F8);
  }

  return result;
}

unint64_t sub_2300259AC()
{
  result = qword_27DB06A00;
  if (!qword_27DB06A00)
  {
    result = swift_getWitnessTable(asc_23003879C, &type metadata for IntentMessage.AttributionPreMatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06A00);
  }

  return result;
}

unint64_t sub_230025A04()
{
  result = qword_27DB06A08;
  if (!qword_27DB06A08)
  {
    result = swift_getWitnessTable(aU, &type metadata for IntentMessage.AttributionMatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06A08);
  }

  return result;
}

unint64_t sub_230025A5C()
{
  result = qword_27DB06A10;
  if (!qword_27DB06A10)
  {
    result = swift_getWitnessTable(byte_23003890C, &type metadata for IntentMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06A10);
  }

  return result;
}

unint64_t sub_230025AB4()
{
  result = qword_281494E90;
  if (!qword_281494E90)
  {
    result = swift_getWitnessTable(byte_2300387C4, &type metadata for IntentMessage.AttributionMatchCodingKeys, v0, v1);
    atomic_store(result, &qword_281494E90);
  }

  return result;
}

unint64_t sub_230025B0C()
{
  result = qword_281494E98;
  if (!qword_281494E98)
  {
    result = swift_getWitnessTable(byte_2300387EC, &type metadata for IntentMessage.AttributionMatchCodingKeys, v0, v1);
    atomic_store(result, &qword_281494E98);
  }

  return result;
}

unint64_t sub_230025B64()
{
  result = qword_281494E80;
  if (!qword_281494E80)
  {
    result = swift_getWitnessTable(byte_23003870C, &type metadata for IntentMessage.AttributionPreMatchCodingKeys, v0, v1);
    atomic_store(result, &qword_281494E80);
  }

  return result;
}

unint64_t sub_230025BBC()
{
  result = qword_281494E88;
  if (!qword_281494E88)
  {
    result = swift_getWitnessTable(byte_230038734, &type metadata for IntentMessage.AttributionPreMatchCodingKeys, v0, v1);
    atomic_store(result, &qword_281494E88);
  }

  return result;
}

unint64_t sub_230025C14()
{
  result = qword_281494E70;
  if (!qword_281494E70)
  {
    result = swift_getWitnessTable(aMR, &type metadata for IntentMessage.AttributionPostMatchCodingKeys, v0, v1);
    atomic_store(result, &qword_281494E70);
  }

  return result;
}

unint64_t sub_230025C6C()
{
  result = qword_281494E78;
  if (!qword_281494E78)
  {
    result = swift_getWitnessTable(aR_4, &type metadata for IntentMessage.AttributionPostMatchCodingKeys, v0, v1);
    atomic_store(result, &qword_281494E78);
  }

  return result;
}

unint64_t sub_230025CC4()
{
  result = qword_281494EB8;
  if (!qword_281494EB8)
  {
    result = swift_getWitnessTable(byte_23003859C, &type metadata for IntentMessage.JetPackAssetCacheCodingKeys, v0, v1);
    atomic_store(result, &qword_281494EB8);
  }

  return result;
}

unint64_t sub_230025D1C()
{
  result = qword_281494EC0;
  if (!qword_281494EC0)
  {
    result = swift_getWitnessTable(byte_2300385C4, &type metadata for IntentMessage.JetPackAssetCacheCodingKeys, v0, v1);
    atomic_store(result, &qword_281494EC0);
  }

  return result;
}

unint64_t sub_230025D74()
{
  result = qword_281494E60;
  if (!qword_281494E60)
  {
    result = swift_getWitnessTable(byte_2300384E4, &type metadata for IntentMessage.ConversionMatchingStep1CodingKeys, v0, v1);
    atomic_store(result, &qword_281494E60);
  }

  return result;
}

unint64_t sub_230025DCC()
{
  result = qword_281494E68;
  if (!qword_281494E68)
  {
    result = swift_getWitnessTable(byte_23003850C, &type metadata for IntentMessage.ConversionMatchingStep1CodingKeys, v0, v1);
    atomic_store(result, &qword_281494E68);
  }

  return result;
}

unint64_t sub_230025E24()
{
  result = qword_281494E50;
  if (!qword_281494E50)
  {
    result = swift_getWitnessTable(aUR_1, &type metadata for IntentMessage.ConversionMatchingStep2CodingKeys, v0, v1);
    atomic_store(result, &qword_281494E50);
  }

  return result;
}

unint64_t sub_230025E7C()
{
  result = qword_281494E58;
  if (!qword_281494E58)
  {
    result = swift_getWitnessTable(byte_230038454, &type metadata for IntentMessage.ConversionMatchingStep2CodingKeys, v0, v1);
    atomic_store(result, &qword_281494E58);
  }

  return result;
}

unint64_t sub_230025ED4()
{
  result = qword_281494E40;
  if (!qword_281494E40)
  {
    result = swift_getWitnessTable(aR_5, &type metadata for IntentMessage.ConversionMatchingStep3CodingKeys, v0, v1);
    atomic_store(result, &qword_281494E40);
  }

  return result;
}

unint64_t sub_230025F2C()
{
  result = qword_281494E48;
  if (!qword_281494E48)
  {
    atomic_store(result, &qword_281494E48);
  }

  return result;
}

unint64_t sub_230025F84()
{
  result = qword_281494EA0;
  if (!qword_281494EA0)
  {
    result = swift_getWitnessTable(aR_6, &type metadata for IntentMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_281494EA0);
  }

  return result;
}

unint64_t sub_230025FDC()
{
  result = qword_281494EA8;
  if (!qword_281494EA8)
  {
    result = swift_getWitnessTable("5# R\\G", &type metadata for IntentMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_281494EA8);
  }

  return result;
}

uint64_t sub_230026030(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x800000023003A8F0 == a2;
  if (v4 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023003A910 == a2 || (sub_2300316D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023003A930 == a2 || (sub_2300316D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023003A950 == a2 || (sub_2300316D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023003A970 == a2 || (sub_2300316D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023003A990 == a2 || (sub_2300316D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023003A9B0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_2300316D0();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t CustomIntentContext.stateStore.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CustomIntentContext.stateStore.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CustomIntentContext.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  strcpy(v4, "stateStore: ");
  MEMORY[0x23190F560](v1, v2);
  return v4[0];
}

uint64_t CustomIntentContext.CodingKeys.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_230031460();

  *a3 = v4 != 0;
  return result;
}

uint64_t CustomIntentContext.CodingKeys.init(stringValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_230031460();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_230026454()
{
  sub_230031740();
  sub_2300311A0();
  return sub_230031760();
}

uint64_t sub_2300264C8(uint64_t a1)
{
  sub_230031740();
  sub_2300311A0();
  return sub_230031760();
}

uint64_t sub_23002651C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_230031460();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_2300265AC@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_230031460();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_230026604(uint64_t a1)
{
  v2 = sub_2300267B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230026640(uint64_t a1)
{
  v2 = sub_2300267B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CustomIntentContext.encode(to:)(void *a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06A18, &qword_230038BF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300267B8();
  sub_230031780();
  sub_230031600();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2300267B8()
{
  result = qword_27DB06A20;
  if (!qword_27DB06A20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomIntentContext.CodingKeys, &type metadata for CustomIntentContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06A20);
  }

  return result;
}

uint64_t CustomIntentContext.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22FFED9B8(&qword_27DB06A28, &qword_230038BF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300267B8();
  sub_230031770();
  if (!v2)
  {
    v9 = sub_2300314E0();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return sub_22FFEE60C(a1);
}

unint64_t sub_230026984()
{
  result = qword_27DB06A30;
  if (!qword_27DB06A30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomIntentContext.CodingKeys, &type metadata for CustomIntentContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06A30);
  }

  return result;
}

unint64_t sub_2300269DC()
{
  result = qword_27DB06A38;
  if (!qword_27DB06A38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomIntentContext.CodingKeys, &type metadata for CustomIntentContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06A38);
  }

  return result;
}

unint64_t sub_230026A34()
{
  result = qword_27DB06A40;
  if (!qword_27DB06A40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomIntentContext.CodingKeys, &type metadata for CustomIntentContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06A40);
  }

  return result;
}

uint64_t sub_230026AA0(void *a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06A18, &qword_230038BF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300267B8();
  sub_230031780();
  sub_230031600();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_230026BDC()
{
  v1 = *v0;
  v2 = v0[1];
  strcpy(v4, "stateStore: ");
  MEMORY[0x23190F560](v1, v2);
  return v4[0];
}

__n128 sub_230026C30(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_230026C3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_230026C84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AttributionMatchedEventProperties.impressionId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AttributionMatchedEventProperties.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttributionMatchedEventProperties(0) + 20);
  v4 = sub_230030E00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AttributionMatchedEventProperties(uint64_t a1)
{
  result = qword_281494418;
  if (!qword_281494418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AttributionMatchedEventProperties.claimType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AttributionMatchedEventProperties(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AttributionMatchedEventProperties.attributionDownloadType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AttributionMatchedEventProperties(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t AttributionMatchedEventProperties.init(impressionId:timestamp:claimType:downloadType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X8>)
{
  v8 = *a4;
  v9 = *a5;
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for AttributionMatchedEventProperties(0);
  v11 = v10[5];
  v12 = sub_230030E00();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  a6[v10[6]] = v8;
  a6[v10[7]] = v9;
  return result;
}

PromotedContentJetClient::AttributionMatchedEventProperties::CodingKeys_optional __swiftcall AttributionMatchedEventProperties.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AttributionMatchedEventProperties.CodingKeys.stringValue.getter()
{
  v1 = 0x6973736572706D69;
  v2 = 0x7079546D69616C63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0x6D617473656D6974;
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

uint64_t sub_230026FE8()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_2300270BC(uint64_t a1)
{
  sub_2300311A0();
}

uint64_t sub_23002717C(uint64_t a1)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

void sub_230027258(unint64_t *a1@<X8>)
{
  v2 = 0xEC00000064496E6FLL;
  v3 = 0x6973736572706D69;
  v4 = 0x7079546D69616C63;
  v5 = 0x800000023003A290;
  if (*v1 == 2)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xD000000000000017;
  }

  if (*v1)
  {
    v3 = 0x6D617473656D6974;
    v2 = 0xE900000000000070;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_2300272E8()
{
  v1 = 0x6973736572706D69;
  v2 = 0x7079546D69616C63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0x6D617473656D6974;
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

PromotedContentJetClient::AttributionMatchedEventProperties::CodingKeys_optional sub_230027374@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = AttributionMatchedEventProperties.CodingKeys.init(stringValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_2300273AC(uint64_t a1)
{
  v2 = sub_230027668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300273E8(uint64_t a1)
{
  v2 = sub_230027668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttributionMatchedEventProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB06A48, &qword_230038E10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  sub_22FFEDA4C(a1, a1[3]);
  sub_230027668();
  sub_230031780();
  v11[15] = 0;
  sub_230031600();
  if (!v2)
  {
    v9 = type metadata accessor for AttributionMatchedEventProperties(0);
    v11[14] = 1;
    sub_230030E00();
    sub_230027DC8(&qword_281494290, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_230031640();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_2300088EC();
    sub_230031640();
    v11[11] = *(v3 + *(v9 + 28));
    v11[10] = 3;
    sub_2300276BC();
    sub_230031640();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_230027668()
{
  result = qword_27DB06A50;
  if (!qword_27DB06A50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionMatchedEventProperties.CodingKeys, &type metadata for AttributionMatchedEventProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06A50);
  }

  return result;
}

unint64_t sub_2300276BC()
{
  result = qword_27DB06A58;
  if (!qword_27DB06A58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionDownloadType, &type metadata for AttributionDownloadType, v0, v1);
    atomic_store(result, &qword_27DB06A58);
  }

  return result;
}

uint64_t AttributionMatchedEventProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_230030E00();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22FFED9B8(&qword_27DB06A60, &qword_230038E18);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v16 - v6;
  v8 = type metadata accessor for AttributionMatchedEventProperties(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22FFEDA4C(a1, a1[3]);
  sub_230027668();
  v19 = v7;
  v11 = v21;
  sub_230031770();
  if (v11)
  {
    return sub_22FFEE60C(a1);
  }

  v12 = v10;
  v13 = v17;
  v27 = 0;
  *v12 = sub_2300314E0();
  v12[1] = v14;
  v21 = v14;
  v26 = 1;
  sub_230027DC8(&qword_27DB05CA0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_230031520();
  (*(v13 + 32))(v12 + v8[5], v5, v3);
  v24 = 2;
  sub_230008D2C();
  sub_230031520();
  *(v12 + v8[6]) = v25;
  v22 = 3;
  sub_230027AF8();
  sub_230031520();
  (*(v18 + 8))(v19, v20);
  *(v12 + v8[7]) = v23;
  sub_230027B4C(v12, v16);
  sub_22FFEE60C(a1);
  return sub_230027BB0(v12);
}

unint64_t sub_230027AF8()
{
  result = qword_27DB06A68;
  if (!qword_27DB06A68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionDownloadType, &type metadata for AttributionDownloadType, v0, v1);
    atomic_store(result, &qword_27DB06A68);
  }

  return result;
}

uint64_t sub_230027B4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionMatchedEventProperties(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230027BB0(uint64_t a1)
{
  v2 = type metadata accessor for AttributionMatchedEventProperties(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230027C10()
{
  result = qword_27DB06A70;
  if (!qword_27DB06A70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionMatchedEventProperties.CodingKeys, &type metadata for AttributionMatchedEventProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06A70);
  }

  return result;
}

unint64_t sub_230027C68()
{
  result = qword_27DB06A78;
  if (!qword_27DB06A78)
  {
    result = swift_getWitnessTable("i  R@B", &type metadata for AttributionMatchedEventProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06A78);
  }

  return result;
}

unint64_t sub_230027CC0()
{
  result = qword_27DB06A80;
  if (!qword_27DB06A80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionMatchedEventProperties.CodingKeys, &type metadata for AttributionMatchedEventProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06A80);
  }

  return result;
}

uint64_t sub_230027D44(uint64_t a1)
{
  *(a1 + 8) = sub_230027DC8(&qword_27DB063B0, type metadata accessor for AttributionMatchedEventProperties, protocol conformance descriptor for AttributionMatchedEventProperties);
  result = sub_230027DC8(&qword_27DB06208, type metadata accessor for AttributionMatchedEventProperties, protocol conformance descriptor for AttributionMatchedEventProperties);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_230027DC8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_230027E38(uint64_t a1)
{
  result = sub_230030E00();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_230027EE4(uint64_t a1, unsigned __int8 a2)
{
  sub_2300311A0();
}

uint64_t sub_230028030(uint64_t a1, unsigned __int8 a2)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_230028160(uint64_t a1, unsigned __int8 a2)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_23002829C(uint64_t a1, unsigned __int8 a2)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_2300283FC(uint64_t a1, unsigned __int8 a2)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_230028540(uint64_t a1, unsigned __int8 a2)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_230028658(uint64_t a1, unsigned __int8 a2)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_230028798(uint64_t a1, unsigned __int8 a2)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t AttributionMatchedProperties.impressionId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2300289B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t AttributionMatchedProperties.init(impressionId:metaData:attributionProperties:actionStoreAd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{

  *a6 = a1;
  a6[1] = a2;
  v11 = type metadata accessor for AttributionMatchedProperties(0);
  sub_230029C0C(a4, a6 + *(v11 + 20), type metadata accessor for AttributionMatchedEventProperties);
  return sub_230029C0C(a5, a6 + *(v11 + 24), type metadata accessor for ActionStoreAdInstance);
}

PromotedContentJetClient::AttributionMatchedProperties::CodingKeys_optional __swiftcall AttributionMatchedProperties.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AttributionMatchedProperties.CodingKeys.stringValue.getter()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x74536E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6973736572706D69;
  }
}

uint64_t sub_230028BA0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000015;
  v4 = 0x800000023003A2B0;
  if (v2 == 1)
  {
    v5 = 0x800000023003A2B0;
  }

  else
  {
    v3 = 0x74536E6F69746361;
    v5 = 0xED0000644165726FLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6973736572706D69;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEC00000064496E6FLL;
  }

  v8 = 0xD000000000000015;
  if (*a2 != 1)
  {
    v8 = 0x74536E6F69746361;
    v4 = 0xED0000644165726FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6973736572706D69;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC00000064496E6FLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2300316D0();
  }

  return v11 & 1;
}

uint64_t sub_230028CB8()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_230028D74(uint64_t a1)
{
  sub_2300311A0();
}

uint64_t sub_230028E1C(uint64_t a1)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

void sub_230028EE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064496E6FLL;
  v4 = 0x800000023003A2B0;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0x74536E6F69746361;
    v4 = 0xED0000644165726FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6973736572706D69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_230028F58()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x74536E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6973736572706D69;
  }
}

PromotedContentJetClient::AttributionMatchedProperties::CodingKeys_optional sub_230028FCC@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = AttributionMatchedProperties.CodingKeys.init(stringValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_230029004(uint64_t a1)
{
  v2 = sub_2300292AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230029040(uint64_t a1)
{
  v2 = sub_2300292AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttributionMatchedProperties.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB06A88, &qword_230039030);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300292AC();
  sub_230031780();
  v8[15] = 0;
  sub_230031600();
  if (!v1)
  {
    type metadata accessor for AttributionMatchedProperties(0);
    v8[14] = 1;
    type metadata accessor for AttributionMatchedEventProperties(0);
    sub_230029300(&qword_27DB06208, type metadata accessor for AttributionMatchedEventProperties, protocol conformance descriptor for AttributionMatchedEventProperties);
    sub_230031640();
    v8[13] = 2;
    type metadata accessor for ActionStoreAdInstance(0);
    sub_230029300(&qword_27DB05D58, type metadata accessor for ActionStoreAdInstance, protocol conformance descriptor for ActionStoreAdInstance);
    sub_230031640();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2300292AC()
{
  result = qword_27DB06A90;
  if (!qword_27DB06A90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionMatchedProperties.CodingKeys, &type metadata for AttributionMatchedProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06A90);
  }

  return result;
}

uint64_t sub_230029300(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t AttributionMatchedProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for ActionStoreAdInstance(0);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributionMatchedEventProperties(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FFED9B8(&qword_27DB06A98, &qword_230039038);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for AttributionMatchedProperties(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22FFEDA4C(a1, a1[3]);
  sub_2300292AC();
  v26 = v9;
  v13 = v27;
  sub_230031770();
  if (v13)
  {
    return sub_22FFEE60C(a1);
  }

  v27 = v10;
  v14 = v24;
  v30 = 0;
  v15 = v12;
  *v12 = sub_2300314E0();
  v12[1] = v16;
  v20 = v16;
  v29 = 1;
  sub_230029300(&qword_27DB063B0, type metadata accessor for AttributionMatchedEventProperties, protocol conformance descriptor for AttributionMatchedEventProperties);
  sub_230031520();
  v17 = v27;
  sub_230029C0C(v6, v15 + *(v27 + 20), type metadata accessor for AttributionMatchedEventProperties);
  v28 = 2;
  sub_230029300(&qword_27DB05D68, type metadata accessor for ActionStoreAdInstance, protocol conformance descriptor for ActionStoreAdInstance);
  v18 = v22;
  sub_230031520();
  (*(v14 + 8))(v26, v25);
  sub_230029C0C(v18, v15 + *(v17 + 24), type metadata accessor for ActionStoreAdInstance);
  sub_2300289B0(v15, v21, type metadata accessor for AttributionMatchedProperties);
  sub_22FFEE60C(a1);
  return sub_230029778(v15, type metadata accessor for AttributionMatchedProperties);
}

uint64_t sub_230029778(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AttributionPostMatchIntent.currentTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_230030E00();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AttributionPostMatchIntent.adamId.getter()
{
  v1 = *(v0 + *(type metadata accessor for AttributionPostMatchIntent(0) + 24));

  return v1;
}

uint64_t AttributionPostMatchIntent.bundleId.getter()
{
  v1 = *(v0 + *(type metadata accessor for AttributionPostMatchIntent(0) + 28));

  return v1;
}

uint64_t AttributionPostMatchIntent.callEventType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AttributionPostMatchIntent(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t AttributionPostMatchIntent.matchedAds.getter()
{
  type metadata accessor for AttributionPostMatchIntent(0);
}

uint64_t AttributionPostMatchIntent.intentContext.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AttributionPostMatchIntent(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t AttributionPostMatchIntent.intentContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for AttributionPostMatchIntent(0) + 40));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t AttributionPostMatchIntent.init(currentTime:config:adamID:bundleId:callEventType:matchedAds:intentContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v17 = *a7;
  v24 = a10[1];
  v25 = *a10;
  matched = type metadata accessor for AttributionPostMatchIntent(0);
  v19 = (a9 + matched[10]);
  v20 = sub_230030E00();
  *v19 = 0;
  v19[1] = 0;
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  sub_230029C0C(a2, a9 + matched[5], type metadata accessor for AttributionConfig);
  v21 = (a9 + matched[6]);
  *v21 = a3;
  v21[1] = a4;
  v22 = (a9 + matched[7]);
  *v22 = a5;
  v22[1] = a6;
  *(a9 + matched[8]) = v17;
  *(a9 + matched[9]) = a8;

  *v19 = v25;
  v19[1] = v24;
  return result;
}

uint64_t sub_230029C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

PromotedContentJetClient::AttributionPostMatchIntent::CodingKeys_optional __swiftcall AttributionPostMatchIntent.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PromotedContentJetClient::AttributionPostMatchIntent::CodingKeys_optional __swiftcall AttributionPostMatchIntent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = AttributionPostMatchIntent.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t AttributionPostMatchIntent.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x54746E6572727563;
  v3 = 0x416465686374616DLL;
  if (v1 != 5)
  {
    v3 = 0x6F43746E65746E69;
  }

  v4 = 0x6449656C646E7562;
  if (v1 != 3)
  {
    v4 = 0x6E6576456C6C6163;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6769666E6F63;
  if (v1 != 1)
  {
    v5 = 0x64496D616461;
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

uint64_t sub_230029E30(uint64_t a1)
{
  sub_2300311A0();
}

void sub_230029F70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656D69;
  v4 = 0x54746E6572727563;
  v5 = 0xEA00000000007364;
  v6 = 0x416465686374616DLL;
  if (v2 != 5)
  {
    v6 = 0x6F43746E65746E69;
    v5 = 0xED0000747865746ELL;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6449656C646E7562;
  if (v2 != 3)
  {
    v8 = 0x6E6576456C6C6163;
    v7 = 0xED00006570795474;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6769666E6F63;
  if (v2 != 1)
  {
    v9 = 0x64496D616461;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE600000000000000;
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

uint64_t sub_23002A06C()
{
  v1 = *v0;
  v2 = 0x54746E6572727563;
  v3 = 0x416465686374616DLL;
  if (v1 != 5)
  {
    v3 = 0x6F43746E65746E69;
  }

  v4 = 0x6449656C646E7562;
  if (v1 != 3)
  {
    v4 = 0x6E6576456C6C6163;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6769666E6F63;
  if (v1 != 1)
  {
    v5 = 0x64496D616461;
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

PromotedContentJetClient::AttributionPostMatchIntent::CodingKeys_optional sub_23002A164@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = AttributionPostMatchIntent.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_23002A19C(uint64_t a1)
{
  v2 = sub_23002A5A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23002A1D8(uint64_t a1)
{
  v2 = sub_23002A5A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttributionPostMatchIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB06AA0, &qword_230039060);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_22FFEDA4C(a1, a1[3]);
  sub_23002A5A8();
  sub_230031780();
  LOBYTE(v14) = 0;
  sub_230030E00();
  sub_230029300(&qword_281494290, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_230031640();
  if (!v2)
  {
    matched = type metadata accessor for AttributionPostMatchIntent(0);
    LOBYTE(v14) = 1;
    type metadata accessor for AttributionConfig(0);
    sub_230029300(&qword_27DB06308, type metadata accessor for AttributionConfig, protocol conformance descriptor for AttributionConfig);
    sub_230031640();
    LOBYTE(v14) = 2;
    sub_230031600();
    LOBYTE(v14) = 3;
    sub_230031600();
    LOBYTE(v14) = *(v3 + matched[8]);
    v16 = 4;
    sub_2300078CC();
    sub_230031640();
    v14 = *(v3 + matched[9]);
    v16 = 5;
    sub_22FFED9B8(&qword_27DB06AB0, &qword_230039068);
    sub_23002ACD8(&qword_27DB06AB8, &qword_27DB06AC0, protocol conformance descriptor for AttributionMatchedProperties, MEMORY[0x277D83948]);
    sub_230031640();
    v10 = (v3 + matched[10]);
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v16 = 6;
    sub_230007920();

    sub_2300315D0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_23002A5A8()
{
  result = qword_27DB06AA8;
  if (!qword_27DB06AA8)
  {
    result = swift_getWitnessTable("Y# R0?", &type metadata for AttributionPostMatchIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06AA8);
  }

  return result;
}

uint64_t AttributionPostMatchIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v33 = type metadata accessor for AttributionConfig(0);
  MEMORY[0x28223BE20](v33);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_230030E00();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v34 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_22FFED9B8(&qword_27DB06AC8, &qword_230039070);
  v32 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v29 - v7;
  matched = type metadata accessor for AttributionPostMatchIntent(0);
  v10 = MEMORY[0x28223BE20](matched);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v12[*(v10 + 40)];
  *v13 = 0;
  *(v13 + 1) = 0;
  v38 = v13;
  sub_22FFEDA4C(a1, a1[3]);
  sub_23002A5A8();
  v35 = v8;
  v14 = v37;
  sub_230031770();
  if (v14)
  {
    sub_22FFEE60C(a1);
  }

  else
  {
    v15 = v32;
    v37 = matched;
    LOBYTE(v39) = 0;
    sub_230029300(&qword_27DB05CA0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_230031520();
    v16 = v12;
    (*(v31 + 32))(v12, v34, v5);
    LOBYTE(v39) = 1;
    sub_230029300(&qword_27DB06328, type metadata accessor for AttributionConfig, "9U R\\z");
    v17 = v4;
    sub_230031520();
    v18 = v37;
    sub_230029C0C(v17, v16 + v37[5], type metadata accessor for AttributionConfig);
    LOBYTE(v39) = 2;
    v19 = sub_2300314E0();
    v34 = a1;
    v20 = (v16 + v18[6]);
    *v20 = v19;
    v20[1] = v21;
    LOBYTE(v39) = 3;
    v22 = sub_2300314E0();
    v23 = (v16 + v18[7]);
    *v23 = v22;
    v23[1] = v24;
    v41 = 4;
    sub_23000805C();
    sub_230031520();
    *(v16 + v18[8]) = v39;
    sub_22FFED9B8(&qword_27DB06AB0, &qword_230039068);
    v41 = 5;
    sub_23002ACD8(&qword_27DB06AD0, &qword_27DB06AD8, protocol conformance descriptor for AttributionMatchedProperties, MEMORY[0x277D83978]);
    sub_230031520();
    *(v16 + v18[9]) = v39;
    v41 = 6;
    sub_2300080B0();
    sub_2300314B0();
    (*(v15 + 8))(v35, v36);
    v25 = v39;
    v26 = v40;
    v27 = v38;

    *v27 = v25;
    *(v27 + 1) = v26;
    sub_2300289B0(v16, v30, type metadata accessor for AttributionPostMatchIntent);
    sub_22FFEE60C(v34);
    return sub_230029778(v16, type metadata accessor for AttributionPostMatchIntent);
  }
}

uint64_t sub_23002ACD8(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = sub_22FFF0054(&qword_27DB06AB0, &qword_230039068);
    v10 = sub_230029300(a2, type metadata accessor for AttributionMatchedProperties, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AttributionCandidateProperties.bundleId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AttributionCandidateProperties.timeWindowStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttributionCandidateProperties(0) + 24);
  v4 = sub_230030E00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AttributionCandidateProperties.timeWindowEnd.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttributionCandidateProperties(0) + 28);
  v4 = sub_230030E00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AttributionCandidateProperties.attributionVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for AttributionCandidateProperties(0) + 36));

  return v1;
}

uint64_t AttributionCandidateProperties.passthroughJSON.getter()
{
  v1 = *(v0 + *(type metadata accessor for AttributionCandidateProperties(0) + 40));

  return v1;
}

PromotedContentJetClient::AttributionCandidateProperties::CodingKeys_optional __swiftcall AttributionCandidateProperties.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PromotedContentJetClient::AttributionCandidateProperties::CodingKeys_optional __swiftcall AttributionCandidateProperties.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = AttributionCandidateProperties.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_23002B050()
{
  v1 = *v0;
  v2 = 0x64496D616461;
  v3 = 0xD000000000000012;
  if (v1 != 5)
  {
    v3 = 0x6F72687473736170;
  }

  v4 = 0x646E6957656D6974;
  if (v1 != 3)
  {
    v4 = 0x7475626972747461;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6449656C646E7562;
  if (v1 != 1)
  {
    v5 = 0x646E6957656D6974;
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

uint64_t sub_23002B170(uint64_t a1)
{
  sub_2300311A0();
}

void sub_23002B2C0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x64496D616461;
  v5 = 0x800000023003A310;
  v6 = 0xD000000000000012;
  if (v2 != 5)
  {
    v6 = 0x6F72687473736170;
    v5 = 0xEF4E4F534A686775;
  }

  v7 = 0xED0000646E45776FLL;
  v8 = 0x646E6957656D6974;
  if (v2 != 3)
  {
    v8 = 0x7475626972747461;
    v7 = 0xEB000000006E6F69;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6449656C646E7562;
  if (v2 != 1)
  {
    v10 = 0x646E6957656D6974;
    v9 = 0xEF7472617453776FLL;
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

PromotedContentJetClient::AttributionCandidateProperties::CodingKeys_optional sub_23002B3CC@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = AttributionCandidateProperties.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_23002B404(uint64_t a1)
{
  v2 = sub_23002B744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23002B440(uint64_t a1)
{
  v2 = sub_23002B744();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttributionCandidateProperties.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB06AE0, &qword_230039078);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  sub_22FFEDA4C(a1, a1[3]);
  sub_23002B744();
  sub_230031780();
  v15 = 0;
  sub_230031600();
  if (!v1)
  {
    v14 = 1;
    sub_230031600();
    type metadata accessor for AttributionCandidateProperties(0);
    v13 = 2;
    sub_230030E00();
    sub_230029300(&qword_281494290, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_230031640();
    v12 = 3;
    sub_230031640();
    v11 = 4;
    sub_230031610();
    v10 = 5;
    sub_230031600();
    v9 = 6;
    sub_230031600();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23002B744()
{
  result = qword_27DB06AE8;
  if (!qword_27DB06AE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionCandidateProperties.CodingKeys, &type metadata for AttributionCandidateProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06AE8);
  }

  return result;
}

uint64_t AttributionCandidateProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_230030E00();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v45 = sub_22FFED9B8(&qword_27DB06AF0, &qword_230039080);
  v42 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v11 = &v38 - v10;
  v12 = type metadata accessor for AttributionCandidateProperties(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v47 = a1;
  sub_22FFEDA4C(a1, v15);
  sub_23002B744();
  v16 = v11;
  v17 = v46;
  sub_230031770();
  if (v17)
  {
    return sub_22FFEE60C(v47);
  }

  v46 = v7;
  v18 = v42;
  v19 = v43;
  v20 = v44;
  v54 = 0;
  *v14 = sub_2300314E0();
  v14[1] = v22;
  v53 = 1;
  v14[2] = sub_2300314E0();
  v14[3] = v23;
  v52 = 2;
  sub_230029300(&qword_27DB05CA0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v39 = v14;
  sub_230031520();
  v40 = 0;
  v24 = *(v20 + 32);
  v24(v39 + v12[6], v9, v19);
  v51 = 3;
  v25 = v46;
  v26 = v40;
  sub_230031520();
  if (v26)
  {
    (*(v18 + 8))(v16, v45);
    v40 = v26;
    v27 = v39;
    sub_22FFEE60C(v47);

    return (*(v44 + 8))(v27 + v12[6], v19);
  }

  else
  {
    v24(v39 + v12[7], v25, v19);
    v50 = 4;
    v28 = sub_2300314F0();
    v29 = v39;
    *(v39 + v12[8]) = v28 & 1;
    v49 = 5;
    v30 = sub_2300314E0();
    v31 = (v29 + v12[9]);
    *v31 = v30;
    v31[1] = v32;
    v48 = 6;
    v33 = sub_2300314E0();
    v40 = 0;
    v34 = v33;
    v36 = v35;
    (*(v18 + 8))(v16, v45);
    v37 = (v29 + v12[10]);
    *v37 = v34;
    v37[1] = v36;
    sub_2300289B0(v29, v41, type metadata accessor for AttributionCandidateProperties);
    sub_22FFEE60C(v47);
    return sub_230029778(v29, type metadata accessor for AttributionCandidateProperties);
  }
}

uint64_t AttributionPostMatchIntent.ReturnType.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB06AF8, &qword_230039088);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  sub_22FFEDA4C(a1, a1[3]);
  sub_23002BF4C();

  sub_230031780();
  v9[1] = v7;
  sub_22FFED9B8(&qword_27DB06B08, &qword_230039090);
  sub_23002BFA0(&qword_27DB06B10, &qword_27DB06398, protocol conformance descriptor for AttributionCandidateProperties, MEMORY[0x277D83948]);
  sub_230031640();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23002BF4C()
{
  result = qword_27DB06B00;
  if (!qword_27DB06B00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionPostMatchIntent.ReturnType.CodingKeys, &type metadata for AttributionPostMatchIntent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06B00);
  }

  return result;
}

uint64_t sub_23002BFA0(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = sub_22FFF0054(&qword_27DB06B08, &qword_230039090);
    v10 = sub_230029300(a2, type metadata accessor for AttributionCandidateProperties, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AttributionPostMatchIntent.ReturnType.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_22FFED9B8(&qword_27DB06B18, &qword_230039098);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  sub_22FFEDA4C(a1, a1[3]);
  sub_23002BF4C();
  sub_230031770();
  if (!v2)
  {
    sub_22FFED9B8(&qword_27DB06B08, &qword_230039090);
    sub_23002BFA0(&qword_27DB06B20, &qword_27DB063B8, protocol conformance descriptor for AttributionCandidateProperties, MEMORY[0x277D83978]);
    sub_230031520();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return sub_22FFEE60C(a1);
}

uint64_t AttributionPostMatchIntent.ReturnType.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000023003A9D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2300316D0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t AttributionPostMatchIntent.ReturnType.CodingKeys.hashValue.getter()
{
  sub_230031740();
  MEMORY[0x23190FB00](0);
  return sub_230031760();
}

unint64_t sub_23002C364()
{
  result = qword_27DB06B28;
  if (!qword_27DB06B28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionMatchedProperties.CodingKeys, &type metadata for AttributionMatchedProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06B28);
  }

  return result;
}

unint64_t sub_23002C3BC()
{
  result = qword_27DB06B30;
  if (!qword_27DB06B30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionMatchedProperties.CodingKeys, &type metadata for AttributionMatchedProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06B30);
  }

  return result;
}

unint64_t sub_23002C414()
{
  result = qword_27DB06B38;
  if (!qword_27DB06B38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionMatchedProperties.CodingKeys, &type metadata for AttributionMatchedProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06B38);
  }

  return result;
}

unint64_t sub_23002C46C()
{
  result = qword_27DB06B40;
  if (!qword_27DB06B40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionPostMatchIntent.CodingKeys, &type metadata for AttributionPostMatchIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06B40);
  }

  return result;
}

unint64_t sub_23002C4C4()
{
  result = qword_27DB06B48;
  if (!qword_27DB06B48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionPostMatchIntent.CodingKeys, &type metadata for AttributionPostMatchIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06B48);
  }

  return result;
}

unint64_t sub_23002C51C()
{
  result = qword_27DB06B50;
  if (!qword_27DB06B50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionPostMatchIntent.CodingKeys, &type metadata for AttributionPostMatchIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06B50);
  }

  return result;
}

uint64_t sub_23002C570(uint64_t a1)
{
  *(a1 + 8) = sub_230029300(&qword_27DB069D0, type metadata accessor for AttributionPostMatchIntent, protocol conformance descriptor for AttributionPostMatchIntent);
  result = sub_230029300(&qword_27DB06970, type metadata accessor for AttributionPostMatchIntent, "%\n R$>");
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23002C5F8()
{
  result = qword_27DB06B58;
  if (!qword_27DB06B58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionCandidateProperties.CodingKeys, &type metadata for AttributionCandidateProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06B58);
  }

  return result;
}

unint64_t sub_23002C650()
{
  result = qword_27DB06B60;
  if (!qword_27DB06B60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionCandidateProperties.CodingKeys, &type metadata for AttributionCandidateProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06B60);
  }

  return result;
}

unint64_t sub_23002C6A8()
{
  result = qword_27DB06B68;
  if (!qword_27DB06B68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionCandidateProperties.CodingKeys, &type metadata for AttributionCandidateProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06B68);
  }

  return result;
}

unint64_t sub_23002C700()
{
  result = qword_27DB06B70;
  if (!qword_27DB06B70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionPostMatchIntent.ReturnType.CodingKeys, &type metadata for AttributionPostMatchIntent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06B70);
  }

  return result;
}

unint64_t sub_23002C758()
{
  result = qword_27DB06B78;
  if (!qword_27DB06B78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionPostMatchIntent.ReturnType.CodingKeys, &type metadata for AttributionPostMatchIntent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06B78);
  }

  return result;
}

unint64_t sub_23002C7B0()
{
  result = qword_27DB06B80;
  if (!qword_27DB06B80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionPostMatchIntent.ReturnType.CodingKeys, &type metadata for AttributionPostMatchIntent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06B80);
  }

  return result;
}

uint64_t sub_23002C820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000023003A9D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2300316D0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_23002C8B4(uint64_t a1)
{
  v2 = sub_23002BF4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23002C8F0(uint64_t a1)
{
  v2 = sub_23002BF4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23002C954(uint64_t a1)
{
  result = type metadata accessor for AttributionMatchedEventProperties(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ActionStoreAdInstance(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23002CA20(uint64_t a1)
{
  sub_230030E00();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AttributionConfig(319);
    if (v2 <= 0x3F)
    {
      sub_23002CAE8(319);
      if (v3 <= 0x3F)
      {
        sub_23002CB40();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23002CAE8(uint64_t a1)
{
  if (!qword_2814942C8)
  {
    type metadata accessor for AttributionMatchedProperties(255);
    v1 = sub_2300312A0();
    if (!v2)
    {
      atomic_store(v1, &qword_2814942C8);
    }
  }
}

void sub_23002CB40()
{
  if (!qword_281494A58[0])
  {
    v0 = sub_230031380();
    if (!v1)
    {
      atomic_store(v0, qword_281494A58);
    }
  }
}

uint64_t sub_23002CBC8(uint64_t a1)
{
  result = sub_230030E00();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23002CCAC()
{
  v0 = type metadata accessor for JetServiceSettings(0);
  sub_230000658(v0, qword_27DB06B98);
  v1 = sub_2300006BC(v0, qword_27DB06B98);
  v2 = sub_230030DD0();
  (*(*(v2 - 8) + 56))(v1, 1, 5, v2);
  v3 = v0[6];
  v4 = sub_230030EC0();
  result = (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + v0[5]) = 0;
  *(v1 + v0[7]) = 0;
  return result;
}

uint64_t JetServiceSettings.init(environment:defaultBundled:minimumRuntimeVersion:enableLogging:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_23002F31C(a1, a5, type metadata accessor for JetServiceSettings.Environment);
  v9 = type metadata accessor for JetServiceSettings(0);
  *(a5 + v9[5]) = a2;
  result = sub_23002CE54(a3, a5 + v9[6]);
  *(a5 + v9[7]) = a4;
  return result;
}

uint64_t sub_23002CE54(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB06BB8, &qword_230039820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static JetServiceSettings.production.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DB05B30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for JetServiceSettings(0);
  v3 = sub_2300006BC(v2, qword_27DB06B98);
  return sub_23002CF78(v3, a1, type metadata accessor for JetServiceSettings);
}

uint64_t sub_23002CF78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t JetServiceSettings.minimumRuntimeVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JetServiceSettings(0) + 24);

  return sub_23002D048(v3, a1);
}

uint64_t sub_23002D048(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB06BB8, &qword_230039820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t JetServiceSettings.init(store:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_22FFED9B8(&qword_27DB06BB8, &qword_230039820);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v48[0] = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = v48 - v6;
  v7 = sub_22FFED9B8(&qword_27DB06BC0, &qword_230039828);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v48 - v8;
  v10 = sub_22FFED9B8(&qword_27DB06BC8, &qword_230039830);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v48 - v11;
  v13 = type metadata accessor for JetServiceSettings.Environment(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v19 = sub_22FFEDA4C(a1, v18);
  v48[1] = v18;
  v48[2] = v19;
  v48[3] = v17;
  v49 = sub_230030E30();
  sub_22FFEDA4C(a1, a1[3]);
  v20 = sub_230030E40();
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    if (v20 == 0x6D6F74737563 && v21 == 0xE600000000000000 || (sub_2300316D0() & 1) != 0)
    {

      sub_22FFEDA4C(a1, a1[3]);
      sub_230030E40();
      if (!v24)
      {
LABEL_8:
        if (qword_281493F60 != -1)
        {
          swift_once();
        }

        v27 = sub_230031040();
        sub_2300006BC(v27, qword_281498858);
        v28 = sub_230031020();
        v29 = sub_230031320();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_22FFE9000, v28, v29, "Invalid configuration. Custom environment selected, but no URL was provided or the URL is invalid.", v30, 2u);
          MEMORY[0x23190FFD0](v30, -1, -1);
        }

LABEL_13:
        sub_22FFEE60C(a1);
        v31 = type metadata accessor for JetServiceSettings(0);
        return (*(*(v31 - 8) + 56))(v51, 1, 1, v31);
      }

      sub_230030DB0();

      v25 = sub_230030DD0();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v12, 1, v25) == 1)
      {
        sub_22FFF31B4(v12, &qword_27DB06BC8, &qword_230039830);
        goto LABEL_8;
      }

      (*(v26 + 32))(v16, v12, v25);
      (*(v26 + 56))(v16, 0, 5, v25);
    }

    else
    {

      JetServiceSettings.Environment.init(rawValue:)(v22, v23, v9);
      if ((*(v14 + 48))(v9, 1, v13) == 1)
      {
        sub_22FFF31B4(v9, &qword_27DB06BC0, &qword_230039828);
        if (qword_281493F60 != -1)
        {
          swift_once();
        }

        v34 = sub_230031040();
        sub_2300006BC(v34, qword_281498858);

        v35 = sub_230031020();
        v36 = sub_230031320();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v52 = v38;
          *v37 = 136315138;
          v39 = sub_23000DE08(v22, v23, &v52);

          *(v37 + 4) = v39;
          _os_log_impl(&dword_22FFE9000, v35, v36, "Unsupported environment value. %s", v37, 0xCu);
          sub_22FFEE60C(v38);
          MEMORY[0x23190FFD0](v38, -1, -1);
          MEMORY[0x23190FFD0](v37, -1, -1);
        }

        else
        {
        }

        goto LABEL_13;
      }

      sub_23002F31C(v9, v16, type metadata accessor for JetServiceSettings.Environment);
    }
  }

  else
  {
    v33 = sub_230030DD0();
    (*(*(v33 - 8) + 56))(v16, 2, 5, v33);
  }

  v40 = sub_230030EC0();
  v41 = v50;
  (*(*(v40 - 8) + 56))(v50, 1, 1, v40);
  sub_22FFEDA4C(a1, a1[3]);
  sub_230030E40();
  if (v42)
  {
    v43 = v48[0];
    sub_230030ED0();
    sub_22FFF31B4(v41, &qword_27DB06BB8, &qword_230039820);
    sub_23002CE54(v43, v41);
  }

  v44 = sub_230030E30();
  v45 = v16;
  v46 = v51;
  sub_23002F31C(v45, v51, type metadata accessor for JetServiceSettings.Environment);
  v47 = type metadata accessor for JetServiceSettings(0);
  *(v46 + v47[5]) = v49 & 1;
  sub_23002CE54(v41, v46 + v47[6]);
  *(v46 + v47[7]) = v44 & 1;
  (*(*(v47 - 1) + 56))(v46, 0, 1, v47);
  return sub_22FFEE60C(a1);
}

uint64_t JetServiceSettings.Environment.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a3;
  v5 = sub_22FFED9B8(&qword_27DB06BC8, &qword_230039830);
  MEMORY[0x28223BE20](v5 - 8);
  v65 = &v62 - v6;
  v7 = sub_230030DD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v63 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for JetServiceSettings.Environment(0);
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v66 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v67 = &v62 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v62 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v62 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v62 - v22;
  MEMORY[0x28223BE20](v21);
  v68 = &v62 - v24;
  v64 = v8;
  v25 = v7;
  v26 = *(v8 + 56);
  v26(v23, 1, 5, v7);
  v27 = JetServiceSettings.Environment.rawValue.getter();
  v29 = v28;
  sub_23002F2C0(v23);
  if (v27 == a1 && v29 == a2)
  {

LABEL_8:
    v32 = v26;

    v33 = 1;
LABEL_9:
    v34 = v71;
    v35 = v25;
LABEL_10:
    v36 = v68;
    goto LABEL_11;
  }

  v31 = sub_2300316D0();

  if (v31)
  {
    goto LABEL_8;
  }

  v32 = v26;
  v26(v20, 2, 5, v25);
  v39 = JetServiceSettings.Environment.rawValue.getter();
  v41 = v40;
  sub_23002F2C0(v20);
  if (v39 == a1 && v41 == a2)
  {

LABEL_17:

    v33 = 2;
    goto LABEL_9;
  }

  v42 = sub_2300316D0();

  if (v42)
  {
    goto LABEL_17;
  }

  v26(v17, 3, 5, v25);
  v43 = JetServiceSettings.Environment.rawValue.getter();
  v45 = v44;
  sub_23002F2C0(v17);
  if (v43 == a1 && v45 == a2)
  {

LABEL_22:

    v33 = 3;
LABEL_23:
    v34 = v71;
    v35 = v25;
    goto LABEL_10;
  }

  v46 = a1;
  v47 = sub_2300316D0();

  if (v47)
  {
    goto LABEL_22;
  }

  v48 = v67;
  v26(v67, 4, 5, v25);
  v49 = JetServiceSettings.Environment.rawValue.getter();
  v51 = v50;
  sub_23002F2C0(v48);
  if (v49 == v46 && v51 == a2)
  {

LABEL_28:

    v33 = 4;
    goto LABEL_23;
  }

  v52 = sub_2300316D0();

  if (v52)
  {
    goto LABEL_28;
  }

  v53 = v66;
  v26(v66, 5, 5, v25);
  v54 = JetServiceSettings.Environment.rawValue.getter();
  v56 = v55;
  sub_23002F2C0(v53);
  if (v54 == v46 && v56 == a2)
  {

LABEL_33:

    v33 = 5;
    goto LABEL_23;
  }

  v57 = sub_2300316D0();

  if (v57)
  {
    goto LABEL_33;
  }

  v58 = v65;
  sub_230030DB0();

  v59 = v64;
  if ((*(v64 + 48))(v58, 1, v25) == 1)
  {
    sub_22FFF31B4(v58, &qword_27DB06BC8, &qword_230039830);
    v37 = 1;
    v34 = v71;
    return (*(v69 + 56))(v34, v37, 1, v70);
  }

  v60 = *(v59 + 32);
  v61 = v63;
  v60(v63, v58, v25);
  v36 = v68;
  v60(v68, v61, v25);
  v35 = v25;
  v33 = 0;
  v34 = v71;
LABEL_11:
  v32(v36, v33, 5, v35);
  sub_23002F31C(v36, v34, type metadata accessor for JetServiceSettings.Environment);
  v37 = 0;
  return (*(v69 + 56))(v34, v37, 1, v70);
}

uint64_t JetServiceSettings.init(suite:)@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_22FFED9B8(&qword_27DB06BD0, &qword_230039838);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22[-1] - v5;
  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_230031150();

  v9 = [v7 initWithSuiteName_];

  if (v9)
  {
    v10 = sub_230030F10();
    swift_allocObject();
    v11 = v9;
    v12 = sub_230030F00();
    v22[3] = v10;
    v22[4] = MEMORY[0x277CE4AA8];
    v22[0] = v12;
    JetServiceSettings.init(store:)(v22, v6);

    v13 = type metadata accessor for JetServiceSettings(0);
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v6, 1, v13) != 1)
    {
      sub_23002F31C(v6, a3, type metadata accessor for JetServiceSettings);
      return (*(v14 + 56))(a3, 0, 1, v13);
    }

    sub_22FFF31B4(v6, &qword_27DB06BD0, &qword_230039838);
  }

  if (qword_281493F60 != -1)
  {
    swift_once();
  }

  v15 = sub_230031040();
  sub_2300006BC(v15, qword_281498858);
  v16 = sub_230031020();
  v17 = sub_230031320();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22FFE9000, v16, v17, "Unable to access UserDefaults.", v18, 2u);
    MEMORY[0x23190FFD0](v18, -1, -1);
  }

  v19 = type metadata accessor for JetServiceSettings(0);
  return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
}

uint64_t sub_23002E270()
{
  v0 = sub_22FFED9B8(&qword_27DB06BC8, &qword_230039830);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  sub_22FFED9B8(&qword_27DB06BE8, &unk_230039920);
  v3 = *(type metadata accessor for JetServiceSettings.Environment(0) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_230039810;
  v7 = v6 + v5;
  v8 = sub_230030DD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 1, 5, v8);
  v10(v7 + v4, 2, 5, v8);
  v10(v7 + 2 * v4, 3, 5, v8);
  v10(v7 + 3 * v4, 4, 5, v8);
  v10(v7 + 4 * v4, 5, 5, v8);
  sub_230030DB0();
  result = (*(v9 + 48))(v2, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = 5 * v4;
    (*(v9 + 32))(v7 + v12, v2, v8);
    result = (v10)(v7 + v12, 0, 5, v8);
    qword_27DB06BB0 = v6;
  }

  return result;
}

uint64_t static JetServiceSettings.Environment.allCases.getter()
{
  if (qword_27DB05B38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static JetServiceSettings.Environment.allCases.setter(uint64_t a1)
{
  if (qword_27DB05B38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27DB06BB0 = a1;
}

uint64_t (*static JetServiceSettings.Environment.allCases.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27DB05B38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_23002E66C@<X0>(void *a1@<X8>)
{
  if (qword_27DB05B38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27DB06BB0;
}

uint64_t sub_23002E6EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27DB05B38;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27DB06BB0 = v1;
}

uint64_t JetServiceSettings.Environment.rawValue.getter()
{
  v1 = v0;
  v2 = sub_230030DD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JetServiceSettings.Environment(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23002CF78(v1, v8, type metadata accessor for JetServiceSettings.Environment);
  v9 = (*(v3 + 48))(v8, 5, v2);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      return 7759204;
    }

    else if (v9 == 4)
    {
      return 0x627573657270;
    }

    else
    {
      return 0x646F7270657270;
    }
  }

  else if (v9)
  {
    if (v9 == 1)
    {
      return 1685025392;
    }

    else
    {
      return 0x7972726163;
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v11 = sub_230030D90();
    (*(v3 + 8))(v5, v2);
    return v11;
  }
}

uint64_t sub_23002E980@<X0>(uint64_t *a1@<X8>)
{
  result = JetServiceSettings.Environment.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static JetServiceSettings.standard.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22FFED9B8(&qword_27DB06BD0, &qword_230039838);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23[-1] - v3;
  if ([objc_opt_self() isAppleInternalInstall])
  {
    sub_23002F384();
    sub_230031330();
    v5 = sub_230030F10();
    swift_allocObject();
    v6 = sub_230030F00();
    v23[3] = v5;
    v23[4] = MEMORY[0x277CE4AA8];
    v23[0] = v6;
    JetServiceSettings.init(store:)(v23, v4);
    v7 = type metadata accessor for JetServiceSettings(0);
    if ((*(*(v7 - 1) + 48))(v4, 1, v7) == 1)
    {
      sub_22FFF31B4(v4, &qword_27DB06BD0, &qword_230039838);
      if (qword_281493F58 != -1)
      {
        swift_once();
      }

      v8 = sub_230031040();
      sub_2300006BC(v8, qword_281498840);
      v9 = sub_230031020();
      v10 = sub_230031310();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_22FFE9000, v9, v10, "Can't read UserDefaults, defaulting to Internal Carry", v11, 2u);
        MEMORY[0x23190FFD0](v11, -1, -1);
      }

      v12 = sub_230030DD0();
      (*(*(v12 - 8) + 56))(a1, 2, 5, v12);
      v13 = v7[6];
      v14 = sub_230030EC0();
      result = (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
      *(a1 + v7[5]) = 0;
      *(a1 + v7[7]) = 0;
    }

    else
    {
      return sub_23002F31C(v4, a1, type metadata accessor for JetServiceSettings);
    }
  }

  else
  {
    if (qword_281493F58 != -1)
    {
      swift_once();
    }

    v16 = sub_230031040();
    sub_2300006BC(v16, qword_281498840);
    v17 = sub_230031020();
    v18 = sub_230031310();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22FFE9000, v17, v18, "Using Production JetService configuration", v19, 2u);
      MEMORY[0x23190FFD0](v19, -1, -1);
    }

    if (qword_27DB05B30 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for JetServiceSettings(0);
    v21 = sub_2300006BC(v20, qword_27DB06B98);
    return sub_23002CF78(v21, a1, type metadata accessor for JetServiceSettings);
  }

  return result;
}

uint64_t static JetServiceSettings.jetPackUrl(with:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_230030D80();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22FFED9B8(&qword_27DB06BC8, &qword_230039830);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v44 - v9;
  v11 = type metadata accessor for JetServiceSettings.Environment(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_230030DD0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v52 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v48 = v44 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v47 = v44 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = v44 - v22;
  sub_23002CF78(a2, v13, type metadata accessor for JetServiceSettings.Environment);
  v24 = *(v15 + 48);
  if (v24(v13, 5, v14))
  {
    sub_23002F2C0(v13);
    v25 = JetServiceSettings.Environment.rawValue.getter();
    v53 = 0x5F35323032;
    v54 = 0xE500000000000000;
    MEMORY[0x23190F560](v25);

    if (*(a1 + 16))
    {
      v26 = sub_23002F3D0(v53, v54);
      v28 = v27;

      if (v28)
      {
        v29 = (*(a1 + 56) + 16 * v26);
        v31 = *v29;
        v30 = v29[1];

        sub_230030DB0();
        if (v24(v10, 1, v14) != 1)
        {
          v53 = v31;
          v54 = v30;
          v46 = *MEMORY[0x277CC91D8];
          v35 = v49;
          v36 = v50;
          v45 = *(v50 + 104);
          v37 = v51;
          v45(v49);
          v44[1] = sub_230020D1C();
          sub_230030DC0();
          v50 = *(v36 + 8);
          (v50)(v35, v37);

          v38 = *(v15 + 8);
          v38(v10, v14);
          v39 = v38;
          v53 = 0xD000000000000017;
          v54 = 0x800000023003AAB0;
          (v45)(v35, v46, v37);
          v40 = v48;
          v41 = v52;
          sub_230030DC0();
          (v50)(v35, v37);
          v39(v41, v14);
          v42 = *(v15 + 32);
          v43 = v47;
          v42(v47, v40, v14);
          v42(a3, v43, v14);
          v33 = 0;
          return (*(v15 + 56))(a3, v33, 1, v14);
        }

        sub_22FFF31B4(v10, &qword_27DB06BC8, &qword_230039830);
      }
    }

    else
    {
    }

    v33 = 1;
  }

  else
  {
    v32 = *(v15 + 32);
    v32(v23, v13, v14);
    v32(a3, v23, v14);
    v33 = 0;
  }

  return (*(v15 + 56))(a3, v33, 1, v14);
}

uint64_t sub_23002F2C0(uint64_t a1)
{
  v2 = type metadata accessor for JetServiceSettings.Environment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23002F31C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23002F384()
{
  result = qword_2814942B8;
  if (!qword_2814942B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814942B8);
  }

  return result;
}

unint64_t sub_23002F3D0(uint64_t a1, uint64_t a2)
{
  sub_230031740();
  sub_2300311A0();
  v4 = sub_230031760();

  return sub_23002F64C(a1, a2, v4);
}

unint64_t sub_23002F44C()
{
  result = qword_27DB06BD8;
  if (!qword_27DB06BD8)
  {
    v3 = sub_22FFF0054(&qword_27DB06BE0, &qword_230039840);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27DB06BD8);
  }

  return result;
}

void sub_23002F4D8(uint64_t a1)
{
  type metadata accessor for JetServiceSettings.Environment(319);
  if (v1 <= 0x3F)
  {
    sub_23002F564(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23002F564(uint64_t a1)
{
  if (!qword_281495490)
  {
    sub_230030EC0();
    v1 = sub_230031380();
    if (!v2)
    {
      atomic_store(v1, &qword_281495490);
    }
  }
}

uint64_t sub_23002F5F4(uint64_t a1)
{
  v1 = sub_230030DD0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_23002F64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2300316D0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

PromotedContentJetClient::AttributionClaimType_optional __swiftcall AttributionClaimType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_23002F72C()
{
  result = qword_27DB06BF0;
  if (!qword_27DB06BF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionClaimType, &type metadata for AttributionClaimType, v0, v1);
    atomic_store(result, &qword_27DB06BF0);
  }

  return result;
}

unint64_t sub_23002F840()
{
  result = qword_27DB06BF8;
  if (!qword_27DB06BF8)
  {
    result = swift_getWitnessTable("\t\b Rl9", &type metadata for AttributionClaimType, v0, v1);
    atomic_store(result, &qword_27DB06BF8);
  }

  return result;
}

PromotedContentJetClient::AttributionDownloadType_optional __swiftcall AttributionDownloadType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_23002F8B4()
{
  result = qword_27DB06C00;
  if (!qword_27DB06C00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionDownloadType, &type metadata for AttributionDownloadType, v0, v1);
    atomic_store(result, &qword_27DB06C00);
  }

  return result;
}

unint64_t sub_23002F9D0()
{
  result = qword_27DB06C08;
  if (!qword_27DB06C08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributionDownloadType, &type metadata for AttributionDownloadType, v0, v1);
    atomic_store(result, &qword_27DB06C08);
  }

  return result;
}

uint64_t sub_23002FA4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversionParams(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConversionMatchingStep1Intent.CodingKeys.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_230031460();

  *a3 = v4 != 0;
  return result;
}

uint64_t ConversionMatchingStep1Intent.CodingKeys.init(stringValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_230031460();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_23002FB94()
{
  sub_230031740();
  sub_2300311A0();
  return sub_230031760();
}

uint64_t sub_23002FC08(uint64_t a1)
{
  sub_230031740();
  sub_2300311A0();
  return sub_230031760();
}

uint64_t sub_23002FC5C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_230031460();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_23002FCEC@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_230031460();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_23002FD44(uint64_t a1)
{
  v2 = sub_230030444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23002FD80(uint64_t a1)
{
  v2 = sub_230030444();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23002FDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656972657571 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2300316D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23002FE64(uint64_t a1)
{
  v2 = sub_230030074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23002FEA0(uint64_t a1)
{
  v2 = sub_230030074();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversionMatchingStep1Intent.ReturnType.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB06C10, &unk_230039BA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  sub_22FFEDA4C(a1, a1[3]);
  sub_230030074();

  sub_230031780();
  v9[1] = v7;
  sub_22FFED9B8(&qword_27DB06380, &qword_2300366B0);
  sub_230009828(&qword_281493EA0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_230031640();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_230030074()
{
  result = qword_27DB06C18;
  if (!qword_27DB06C18)
  {
    result = swift_getWitnessTable(aM, &type metadata for ConversionMatchingStep1Intent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06C18);
  }

  return result;
}

uint64_t ConversionMatchingStep1Intent.ReturnType.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_22FFED9B8(&qword_27DB06C20, &qword_230039BB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  sub_22FFEDA4C(a1, a1[3]);
  sub_230030074();
  sub_230031770();
  if (!v2)
  {
    sub_22FFED9B8(&qword_27DB06380, &qword_2300366B0);
    sub_230009828(&qword_281493E98, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_230031520();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return sub_22FFEE60C(a1);
}

uint64_t ConversionMatchingStep1Intent.encode(to:)(void *a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06C28, &qword_230039BB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_22FFEDA4C(a1, a1[3]);
  sub_230030444();
  sub_230031780();
  type metadata accessor for ConversionParams(0);
  sub_230030968(&qword_27DB05BD8, type metadata accessor for ConversionParams, "Yt Rؘ");
  sub_230031640();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_230030444()
{
  result = qword_27DB06C30;
  if (!qword_27DB06C30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConversionMatchingStep1Intent.CodingKeys, &type metadata for ConversionMatchingStep1Intent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06C30);
  }

  return result;
}

uint64_t ConversionMatchingStep1Intent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for ConversionParams(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22FFED9B8(&qword_27DB06C38, &qword_230039BC0);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ConversionMatchingStep1Intent(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFEDA4C(a1, a1[3]);
  sub_230030444();
  sub_230031770();
  if (!v2)
  {
    v12 = v15;
    sub_230030968(&qword_27DB05C10, type metadata accessor for ConversionParams, protocol conformance descriptor for ConversionParams);
    v13 = v17;
    sub_230031520();
    (*(v16 + 8))(v8, v6);
    sub_230030758(v13, v11, type metadata accessor for ConversionParams);
    sub_230030758(v11, v12, type metadata accessor for ConversionMatchingStep1Intent);
  }

  return sub_22FFEE60C(a1);
}

uint64_t type metadata accessor for ConversionMatchingStep1Intent(uint64_t a1)
{
  result = qword_2814945A8;
  if (!qword_2814945A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230030758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2300307C4()
{
  result = qword_27DB06C40;
  if (!qword_27DB06C40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConversionMatchingStep1Intent.CodingKeys, &type metadata for ConversionMatchingStep1Intent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06C40);
  }

  return result;
}

unint64_t sub_23003081C()
{
  result = qword_27DB06C48;
  if (!qword_27DB06C48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConversionMatchingStep1Intent.CodingKeys, &type metadata for ConversionMatchingStep1Intent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06C48);
  }

  return result;
}

unint64_t sub_230030874()
{
  result = qword_27DB06C50;
  if (!qword_27DB06C50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConversionMatchingStep1Intent.CodingKeys, &type metadata for ConversionMatchingStep1Intent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06C50);
  }

  return result;
}

uint64_t sub_2300308E4(uint64_t a1)
{
  *(a1 + 8) = sub_230030968(&qword_27DB069C8, type metadata accessor for ConversionMatchingStep1Intent, protocol conformance descriptor for ConversionMatchingStep1Intent);
  result = sub_230030968(&qword_27DB06960, type metadata accessor for ConversionMatchingStep1Intent, "=");
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_230030968(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_2300309C8(void *a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06C28, &qword_230039BB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_22FFEDA4C(a1, a1[3]);
  sub_230030444();
  sub_230031780();
  type metadata accessor for ConversionParams(0);
  sub_230030968(&qword_27DB05BD8, type metadata accessor for ConversionParams, "Yt Rؘ");
  sub_230031640();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_230030B68(uint64_t a1)
{
  result = type metadata accessor for ConversionParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_230030C08()
{
  result = qword_27DB06C58;
  if (!qword_27DB06C58)
  {
    result = swift_getWitnessTable(byte_230039EB4, &type metadata for ConversionMatchingStep1Intent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06C58);
  }

  return result;
}

unint64_t sub_230030C60()
{
  result = qword_27DB06C60;
  if (!qword_27DB06C60)
  {
    result = swift_getWitnessTable(asc_230039E24, &type metadata for ConversionMatchingStep1Intent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06C60);
  }

  return result;
}

unint64_t sub_230030CB8()
{
  result = qword_27DB06C68;
  if (!qword_27DB06C68)
  {
    result = swift_getWitnessTable(byte_230039E4C, &type metadata for ConversionMatchingStep1Intent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06C68);
  }

  return result;
}