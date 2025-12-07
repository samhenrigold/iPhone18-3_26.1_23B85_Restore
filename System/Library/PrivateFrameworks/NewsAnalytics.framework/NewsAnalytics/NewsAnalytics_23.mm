void sub_217CDC948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CDC5D4();
    v7 = a3(a1, &type metadata for IssueData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CDC9AC()
{
  result = qword_2811BD0F8;
  if (!qword_2811BD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD0F8);
  }

  return result;
}

unint64_t sub_217CDCA5C()
{
  result = qword_27CBA40D0;
  if (!qword_27CBA40D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA40D0);
  }

  return result;
}

unint64_t sub_217CDCAB4()
{
  result = qword_2811BD128;
  if (!qword_2811BD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD128);
  }

  return result;
}

unint64_t sub_217CDCB0C()
{
  result = qword_2811BD130;
  if (!qword_2811BD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD130);
  }

  return result;
}

uint64_t sub_217CDCB60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496575737369 && a2 == 0xE700000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E75427369 && a2 == 0xEC00000064696150 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7079546575737369 && a2 == 0xE900000000000065 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7344496369706F74 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

NewsAnalytics::ResultType_optional __swiftcall ResultType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ResultType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 1818845542;
  if (*v0 != 2)
  {
    v2 = 0x7373696D736964;
  }

  if (*v0)
  {
    v1 = 0x73736563637573;
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

unint64_t sub_217CDCDAC()
{
  result = qword_27CBA40D8;
  if (!qword_27CBA40D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA40D8);
  }

  return result;
}

uint64_t sub_217CDCE00()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CDCEB8(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217CDCF5C(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CDD01C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE400000000000000;
  v5 = 1818845542;
  if (*v1 != 2)
  {
    v5 = 0x7373696D736964;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x73736563637573;
    v2 = 0xE700000000000000;
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

unint64_t sub_217CDD150()
{
  result = qword_27CBA40E0;
  if (!qword_27CBA40E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA40E0);
  }

  return result;
}

NewsAnalytics::FractionalCohortMembershipDetails __swiftcall FractionalCohortMembershipDetails.init(tagID:score:)(Swift::String tagID, Swift::Double score)
{
  *v2 = tagID;
  *(v2 + 16) = score;
  result.tagID = tagID;
  result.score = score;
  return result;
}

uint64_t FractionalCohortMembershipDetails.tagID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FractionalCohortMembershipDetails.tagID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217CDD270()
{
  if (*v0)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x4449676174;
  }
}

uint64_t sub_217CDD29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449676174 && a2 == 0xE500000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217CDD370(uint64_t a1)
{
  v2 = sub_217CDD56C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CDD3AC(uint64_t a1)
{
  v2 = sub_217CDD56C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FractionalCohortMembershipDetails.encode(to:)(void *a1)
{
  sub_217CDD7B8(0, &qword_2811BC548, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDD56C();
  sub_217D89E7C();
  v11 = 0;
  v7 = v9;
  sub_217D89C6C();
  if (!v7)
  {
    v10 = 1;
    sub_217D89C8C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217CDD56C()
{
  result = qword_2811BDD50;
  if (!qword_2811BDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDD50);
  }

  return result;
}

uint64_t FractionalCohortMembershipDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217CDD7B8(0, &qword_2811BC938, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDD56C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17[15] = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v13 = v10;
  v17[14] = 1;
  sub_217D89BAC();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CDD7B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CDD56C();
    v7 = a3(a1, &type metadata for FractionalCohortMembershipDetails.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CDD820()
{
  result = qword_2811BDD30;
  if (!qword_2811BDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDD30);
  }

  return result;
}

unint64_t sub_217CDD878()
{
  result = qword_2811BDD38;
  if (!qword_2811BDD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDD38);
  }

  return result;
}

unint64_t sub_217CDD920()
{
  result = qword_27CBA40E8;
  if (!qword_27CBA40E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA40E8);
  }

  return result;
}

unint64_t sub_217CDD978()
{
  result = qword_2811BDD40;
  if (!qword_2811BDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDD40);
  }

  return result;
}

unint64_t sub_217CDD9D0()
{
  result = qword_2811BDD48;
  if (!qword_2811BDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDD48);
  }

  return result;
}

uint64_t sub_217CDDA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000217DD20F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217CDDB20(uint64_t a1)
{
  v2 = sub_217CDDCF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CDDB5C(uint64_t a1)
{
  v2 = sub_217CDDCF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EngagementData.encode(to:)(void *a1)
{
  sub_217CDDF34(0, &qword_27CBA40F0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDDCF4();
  sub_217D89E7C();
  v11 = v8;
  sub_217CDDD48();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217CDDCF4()
{
  result = qword_27CBA40F8;
  if (!qword_27CBA40F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA40F8);
  }

  return result;
}

unint64_t sub_217CDDD48()
{
  result = qword_27CBA4100;
  if (!qword_27CBA4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4100);
  }

  return result;
}

uint64_t EngagementData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217CDDF34(0, &qword_27CBA4108, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDDCF4();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217CDDF98();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CDDF34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CDDCF4();
    v7 = a3(a1, &type metadata for EngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CDDF98()
{
  result = qword_27CBA4110;
  if (!qword_27CBA4110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4110);
  }

  return result;
}

unint64_t sub_217CDE048()
{
  result = qword_27CBA4118;
  if (!qword_27CBA4118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4118);
  }

  return result;
}

unint64_t sub_217CDE0A0()
{
  result = qword_27CBA4120;
  if (!qword_27CBA4120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4120);
  }

  return result;
}

unint64_t sub_217CDE0F8()
{
  result = qword_27CBA4128;
  if (!qword_27CBA4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4128);
  }

  return result;
}

uint64_t PersonalizationFeatureCTRDataList.personalizationFeatureIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_217CDE1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x8000000217DD2110 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217CDE260(uint64_t a1)
{
  v2 = sub_217CDE480();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CDE29C(uint64_t a1)
{
  v2 = sub_217CDE480();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalizationFeatureCTRDataList.encode(to:)(void *a1)
{
  sub_217CDE6F4(0, &qword_27CBA4130, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDE480();

  sub_217D89E7C();
  v10[1] = v8;
  sub_217CDE4D4();
  sub_217CDE758(&qword_27CBA4148, sub_217BCF150, MEMORY[0x277D83948]);
  sub_217D89CAC();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217CDE480()
{
  result = qword_27CBA4138;
  if (!qword_27CBA4138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4138);
  }

  return result;
}

void sub_217CDE4D4()
{
  if (!qword_27CBA4140)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA4140);
    }
  }
}

uint64_t PersonalizationFeatureCTRDataList.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217CDE6F4(0, &qword_27CBA4150, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDE480();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217CDE4D4();
    sub_217CDE758(&qword_27CBA4158, sub_217BCF0F8, MEMORY[0x277D83978]);
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CDE6F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CDE480();
    v7 = a3(a1, &type metadata for PersonalizationFeatureCTRDataList.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CDE758(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_217CDE4D4();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217CDE820()
{
  result = qword_27CBA4160;
  if (!qword_27CBA4160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4160);
  }

  return result;
}

unint64_t sub_217CDE878()
{
  result = qword_27CBA4168;
  if (!qword_27CBA4168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4168);
  }

  return result;
}

unint64_t sub_217CDE8D0()
{
  result = qword_27CBA4170;
  if (!qword_27CBA4170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4170);
  }

  return result;
}

NewsAnalytics::AdCreativeType_optional __swiftcall AdCreativeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AdCreativeType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x566C6C6F52657270;
  v4 = 0x644165766974616ELL;
  if (v1 != 3)
  {
    v4 = 0x6974737265746E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72656E6E6162;
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

unint64_t sub_217CDEA38()
{
  result = qword_27CBA4178;
  if (!qword_27CBA4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4178);
  }

  return result;
}

uint64_t sub_217CDEA8C()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CDEB7C(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217CDEC58(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CDED50(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEC0000006F656469;
  v6 = 0x566C6C6F52657270;
  v7 = 0xE800000000000000;
  v8 = 0x644165766974616ELL;
  if (v2 != 3)
  {
    v8 = 0x6974737265746E69;
    v7 = 0xEC0000006C616974;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x72656E6E6162;
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

unint64_t sub_217CDEEBC()
{
  result = qword_2811C7138;
  if (!qword_2811C7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7138);
  }

  return result;
}

NewsAnalytics::PaywallData __swiftcall PaywallData.init(type:visualContentType:)(NewsAnalytics::PaywallType type, NewsAnalytics::PaywallVisualContentType_optional visualContentType)
{
  v3 = *visualContentType.value;
  *v2 = *type;
  v2[1] = v3;
  result.type = type;
  return result;
}

uint64_t sub_217CDEF9C()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_217CDEFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD2130 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217CDF0B8(uint64_t a1)
{
  v2 = sub_217CDF2DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CDF0F4(uint64_t a1)
{
  v2 = sub_217CDF2DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PaywallData.encode(to:)(void *a1)
{
  sub_217CDF5BC(0, &qword_2811BC848, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDF2DC();
  sub_217D89E7C();
  v16 = v9;
  v15 = 0;
  sub_217CDF330();
  sub_217D89CAC();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_217CDF384();
    sub_217D89C3C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217CDF2DC()
{
  result = qword_2811C7D20;
  if (!qword_2811C7D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D20);
  }

  return result;
}

unint64_t sub_217CDF330()
{
  result = qword_2811C7CF0;
  if (!qword_2811C7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CF0);
  }

  return result;
}

unint64_t sub_217CDF384()
{
  result = qword_2811BF798;
  if (!qword_2811BF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF798);
  }

  return result;
}

uint64_t PaywallData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217CDF5BC(0, &qword_2811BCB40, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDF2DC();
  sub_217D89E5C();
  if (!v2)
  {
    v16 = 0;
    sub_217CDF620();
    sub_217D89BCC();
    v10 = v17;
    v14 = 1;
    sub_217CDF674();
    sub_217D89B5C();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CDF5BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CDF2DC();
    v7 = a3(a1, &type metadata for PaywallData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CDF620()
{
  result = qword_2811C7CE0;
  if (!qword_2811C7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CE0);
  }

  return result;
}

unint64_t sub_217CDF674()
{
  result = qword_2811BF788;
  if (!qword_2811BF788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF788);
  }

  return result;
}

unint64_t sub_217CDF724()
{
  result = qword_27CBA4180;
  if (!qword_27CBA4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4180);
  }

  return result;
}

unint64_t sub_217CDF77C()
{
  result = qword_2811C7D10;
  if (!qword_2811C7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D10);
  }

  return result;
}

unint64_t sub_217CDF7D4()
{
  result = qword_2811C7D18;
  if (!qword_2811C7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D18);
  }

  return result;
}

NewsAnalytics::PersonalizedAdsUserSelectionType_optional __swiftcall PersonalizedAdsUserSelectionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalizedAdsUserSelectionType.rawValue.getter()
{
  v1 = 0x6E49646574706FLL;
  if (*v0 != 1)
  {
    v1 = 0x74754F646574706FLL;
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

uint64_t sub_217CDF8E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6E49646574706FLL;
  if (v2 != 1)
  {
    v5 = 0x74754F646574706FLL;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x6E49646574706FLL;
  if (*a2 != 1)
  {
    v8 = 0x74754F646574706FLL;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217CDF9E4()
{
  result = qword_27CBA4188;
  if (!qword_27CBA4188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4188);
  }

  return result;
}

uint64_t sub_217CDFA38()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CDFADC(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217CDFB6C(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CDFC18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6E49646574706FLL;
  if (v2 != 1)
  {
    v5 = 0x74754F646574706FLL;
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

unint64_t sub_217CDFD38()
{
  result = qword_27CBA4190;
  if (!qword_27CBA4190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4190);
  }

  return result;
}

NewsAnalytics::NotificationSource_optional __swiftcall NotificationSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NotificationSource.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      return 0xD000000000000012;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v2 = 0xD000000000000018;
    if (v1 != 5)
    {
      v2 = 0x6169726F74696465;
    }

    v3 = 0xD00000000000001ALL;
    if (v1 == 3)
    {
      v3 = 0x656873696C627570;
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

unint64_t sub_217CDFEF0()
{
  result = qword_27CBA4198;
  if (!qword_27CBA4198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4198);
  }

  return result;
}

uint64_t sub_217CDFF50(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217CE0090(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE700000000000000;
    v9 = 0x8000000217DCC1E0;
    if (v2 != 1)
    {
      v9 = 0x8000000217DCC200;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = 0xD000000000000012;
    }

    else
    {
      v11 = 0x6E776F6E6B6E75;
    }

    if (!v10)
    {
      v8 = v9;
    }

    *a1 = v11;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x8000000217DCC250;
    v4 = 0xD000000000000018;
    if (v2 != 5)
    {
      v4 = 0x6169726F74696465;
      v3 = 0xEF756F59726F466CLL;
    }

    v5 = 0xEF756F59726F4672;
    v6 = 0xD00000000000001ALL;
    if (v2 == 3)
    {
      v6 = 0x656873696C627570;
    }

    else
    {
      v5 = 0x8000000217DCC230;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_217CE0250()
{
  result = qword_27CBA41A0;
  if (!qword_27CBA41A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA41A0);
  }

  return result;
}

uint64_t sub_217CE036C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA41D8);
  __swift_project_value_buffer(v0, qword_27CBA41D8);
  return sub_217D8866C();
}

uint64_t AudioEngageEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AudioEngageEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 24);
  sub_217C06810(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 24);
  sub_217C06810(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 28);
  sub_217C06810(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 28);
  sub_217C06810(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 32);
  sub_217C06810(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 32);
  sub_217C06810(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 36);
  sub_217C06810(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 36);
  sub_217C06810(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 40);
  sub_217C06810(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C, &type metadata for TrackData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.trackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 40);
  sub_217C06810(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C, &type metadata for TrackData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.audioEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 44);
  sub_217C06810(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8, &type metadata for AudioEngagementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.audioEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 44);
  sub_217C06810(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8, &type metadata for AudioEngagementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 48);
  sub_217C06810(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 48);
  sub_217C06810(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 52);
  sub_217C06810(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 52);
  sub_217C06810(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 56);
  sub_217C06810(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 56);
  sub_217C06810(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 60);
  sub_217C06810(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 60);
  sub_217C06810(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 64);
  sub_217C06810(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 64);
  sub_217C06810(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.playbackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 68);
  sub_217C06810(0, &qword_2811C8798, sub_217C06360, sub_217C063B4, &type metadata for PlaybackData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.playbackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 68);
  sub_217C06810(0, &qword_2811C8798, sub_217C06360, sub_217C063B4, &type metadata for PlaybackData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.audioEngagementOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 72);
  sub_217C06810(0, &qword_2811C8520, sub_217C065B8, sub_217C0660C, &type metadata for AudioEngagementOriginationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.audioEngagementOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 72);
  sub_217C06810(0, &qword_2811C8520, sub_217C065B8, sub_217C0660C, &type metadata for AudioEngagementOriginationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 76);
  sub_217C06810(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 76);
  sub_217C06810(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioEngageEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C06810(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C06810(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217C06810(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217C06810(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  sub_217C06810(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C, &type metadata for TrackData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217C06810(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8, &type metadata for AudioEngagementData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217C06810(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v21 - 8) + 104))(a1 + v20, v12, v21);
  v22 = v4[13];
  sub_217C06810(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217C06810(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217C06810(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v27 - 8) + 104))(a1 + v26, v12, v27);
  v28 = v4[16];
  sub_217C06810(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v29 - 8) + 104))(a1 + v28, v12, v29);
  v30 = v4[17];
  sub_217C06810(0, &qword_2811C8798, sub_217C06360, sub_217C063B4, &type metadata for PlaybackData);
  (*(*(v31 - 8) + 104))(a1 + v30, v2, v31);
  v32 = v4[18];
  sub_217C06810(0, &qword_2811C8520, sub_217C065B8, sub_217C0660C, &type metadata for AudioEngagementOriginationData);
  (*(*(v33 - 8) + 104))(a1 + v32, v2, v33);
  v34 = v4[19];
  sub_217C06810(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v36 = *(*(v35 - 8) + 104);

  return v36(a1 + v34, v2, v35);
}

uint64_t sub_217CE24FC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t AudioEngageEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 24);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t AudioEngageEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t AudioEngageEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 32));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t AudioEngageEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t AudioEngageEvent.Model.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AudioEngageEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t AudioEngageEvent.Model.audioEngagementData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 44));
  v4 = v3[1];
  v8 = *v3;
  v9[0] = v4;
  *(v9 + 10) = *(v3 + 26);
  v5 = *(v9 + 10);
  *a1 = v8;
  a1[1] = v4;
  *(a1 + 26) = v5;
  return sub_217AEC604(&v8, &v7);
}

uint64_t AudioEngageEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t AudioEngageEvent.Model.articleScienceData.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent.Model(0) + 52);
  memcpy(__dst, (v1 + v3), 0x111uLL);
  memcpy(a1, (v1 + v3), 0x111uLL);
  return sub_217AD1744(__dst, &v5);
}

uint64_t AudioEngageEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 56);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOBYTE(v3) = *(v3 + 48);
  v10 = v3;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v3;
  return sub_217ACC004(v8, v7);
}

void AudioEngageEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 60));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217AE39D0(v4, v5, v6, v7);
}

uint64_t AudioEngageEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 64));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

float AudioEngageEvent.Model.playbackData.getter@<S0>(float *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 68));
  *a1 = result;
  return result;
}

uint64_t AudioEngageEvent.Model.audioEngagementOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AudioEngageEvent.Model(0);
  *a1 = *(v1 + *(result + 72));
  return result;
}

uint64_t AudioEngageEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AudioEngageEvent.Model(0);
  v4 = (v1 + *(result + 76));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

__n128 AudioEngageEvent.Model.init(eventData:timedData:articleData:channelData:groupData:feedData:trackData:audioEngagementData:viewData:articleScienceData:userBundleSubscriptionContextData:issueData:issueViewData:playbackData:audioEngagementOriginationData:userChannelContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X4>, __int128 *a6@<X5>, int *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, const void *a11, uint64_t a12, __n128 *a13, uint64_t *a14, int *a15, char *a16, char *a17)
{
  v23 = a4[1];
  v24 = *(a4 + 16);
  v54 = *(a4 + 17);
  v52 = a4[4];
  v53 = a4[3];
  v57 = *a6;
  v55 = *a4;
  v56 = *(a6 + 2);
  v58 = *(a7 + 4);
  v59 = *a7;
  v61 = a10[1];
  v62 = *a10;
  v60 = *(a10 + 8);
  v66 = *a14;
  v65 = a14[1];
  v25 = *a15;
  v69 = a17[1];
  v70 = *a17;
  v67 = *a16;
  v68 = *(a17 + 1);
  v26 = sub_217D8899C();
  v63 = a13[1];
  v64 = *a13;
  (*(*(v26 - 8) + 32))(a9, a1, v26);
  v27 = type metadata accessor for AudioEngageEvent.Model(0);
  v28 = v27[5];
  v29 = sub_217D889CC();
  (*(*(v29 - 8) + 32))(a9 + v28, a2, v29);
  v30 = a9 + v27[6];
  v31 = *(a3 + 48);
  *(v30 + 32) = *(a3 + 32);
  *(v30 + 48) = v31;
  v32 = *(a3 + 16);
  *v30 = *a3;
  *(v30 + 16) = v32;
  *(v30 + 127) = *(a3 + 127);
  v33 = *(a3 + 112);
  *(v30 + 96) = *(a3 + 96);
  *(v30 + 112) = v33;
  v34 = *(a3 + 80);
  *(v30 + 64) = *(a3 + 64);
  *(v30 + 80) = v34;
  v35 = a9 + v27[7];
  *v35 = v55;
  *(v35 + 8) = v23;
  *(v35 + 16) = v24;
  *(v35 + 17) = v54;
  *(v35 + 24) = v53;
  *(v35 + 32) = v52;
  v36 = (a9 + v27[8]);
  v37 = a5[3];
  v36[2] = a5[2];
  v36[3] = v37;
  v38 = a5[1];
  *v36 = *a5;
  v36[1] = v38;
  v39 = a5[8];
  v36[7] = a5[7];
  v36[8] = v39;
  v40 = a5[6];
  v36[5] = a5[5];
  v36[6] = v40;
  v36[4] = a5[4];
  v41 = a9 + v27[9];
  *v41 = v57;
  *(v41 + 16) = v56;
  v42 = a9 + v27[10];
  *v42 = v59;
  *(v42 + 4) = v58;
  v43 = (a9 + v27[11]);
  v44 = a8[1];
  *v43 = *a8;
  v43[1] = v44;
  *(v43 + 26) = *(a8 + 26);
  v45 = a9 + v27[12];
  *v45 = v62;
  *(v45 + 8) = v61;
  *(v45 + 16) = v60;
  memcpy((a9 + v27[13]), a11, 0x111uLL);
  v46 = a9 + v27[14];
  v47 = *(a12 + 16);
  *v46 = *a12;
  *(v46 + 16) = v47;
  *(v46 + 32) = *(a12 + 32);
  *(v46 + 48) = *(a12 + 48);
  v48 = (a9 + v27[15]);
  result = v64;
  *v48 = v64;
  v48[1] = v63;
  v50 = (a9 + v27[16]);
  *v50 = v66;
  v50[1] = v65;
  *(a9 + v27[17]) = v25;
  *(a9 + v27[18]) = v67;
  v51 = a9 + v27[19];
  *v51 = v70;
  *(v51 + 1) = v69;
  *(v51 + 2) = v68;
  return result;
}

uint64_t sub_217CE2D5C(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x74614464656D6974;
      break;
    case 2:
      result = 0x44656C6369747261;
      break;
    case 3:
      result = 0x446C656E6E616863;
      break;
    case 4:
      result = 0x74614470756F7267;
      break;
    case 5:
      v3 = 1684366694;
      goto LABEL_18;
    case 6:
      result = 0x7461446B63617274;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      v3 = 2003134838;
LABEL_18:
      result = v3 | 0x6174614400000000;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000021;
      break;
    case 11:
      result = 0x7461446575737369;
      break;
    case 12:
      result = 0x6569566575737369;
      break;
    case 13:
      result = 0x6B63616279616C70;
      break;
    case 14:
      result = 0xD00000000000001ELL;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217CE2F30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217CE5818(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217CE2F58(uint64_t a1)
{
  v2 = sub_217CE3A14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CE2F94(uint64_t a1)
{
  v2 = sub_217CE3A14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioEngageEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CE486C(0, &qword_27CBA41F0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v65 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CE3A14();
  sub_217D89E7C();
  v82[0] = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for AudioEngageEvent.Model(0);
    v142[0] = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v143 = v10;
    v11 = *(v10 + 24);
    v65 = v3;
    v12 = v3 + v11;
    v13 = *(v12 + 96);
    v14 = *(v12 + 64);
    v139 = *(v12 + 80);
    v140 = v13;
    v15 = *(v12 + 96);
    *v141 = *(v12 + 112);
    v16 = *(v12 + 16);
    v17 = *(v12 + 48);
    v136 = *(v12 + 32);
    v137 = v17;
    v18 = *(v12 + 48);
    v138 = *(v12 + 64);
    v19 = *(v12 + 16);
    v135[0] = *v12;
    v135[1] = v19;
    v132 = v139;
    v133 = v15;
    v134[0] = *(v12 + 112);
    v129 = v136;
    v130 = v18;
    v131 = v14;
    *&v141[15] = *(v12 + 127);
    *(v134 + 15) = *(v12 + 127);
    v127 = v135[0];
    v128 = v16;
    v126 = 2;
    sub_217AD1630(v135, v82);
    sub_217ACF52C();
    sub_217D89CAC();
    v124[5] = v132;
    v124[6] = v133;
    *v125 = v134[0];
    *&v125[15] = *(v134 + 15);
    v124[2] = v129;
    v124[3] = v130;
    v124[4] = v131;
    v124[0] = v127;
    v124[1] = v128;
    sub_217AD2864(v124);
    v20 = v65;
    v21 = (v65 + v143[7]);
    v22 = v21[1];
    v23 = *(v21 + 16);
    v24 = *(v21 + 17);
    v25 = v21[3];
    v26 = v21[4];
    v118 = *v21;
    v119 = v22;
    v120 = v23;
    v121 = v24;
    v122 = v25;
    v123 = v26;
    v117 = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v27 = v143;
    v28 = (v20 + v143[8]);
    v29 = v28[6];
    v30 = v28[4];
    v113 = v28[5];
    v114 = v29;
    v31 = v28[6];
    v32 = v28[8];
    v115 = v28[7];
    v116 = v32;
    v33 = v28[2];
    v34 = *v28;
    v109 = v28[1];
    v110 = v33;
    v35 = v28[2];
    v36 = v28[4];
    v111 = v28[3];
    v112 = v36;
    v37 = *v28;
    v105 = v31;
    v106 = v115;
    v107 = v28[8];
    v108 = v37;
    v101 = v35;
    v102 = v111;
    v103 = v30;
    v104 = v113;
    v99 = v34;
    v100 = v109;
    v98 = 4;
    sub_217AD87FC(&v108, v82);
    sub_217A5D3B4();
    sub_217D89C3C();
    v97[6] = v105;
    v97[7] = v106;
    v97[8] = v107;
    v97[2] = v101;
    v97[3] = v102;
    v97[4] = v103;
    v97[5] = v104;
    v97[0] = v99;
    v97[1] = v100;
    sub_217AD96E8(v97);
    v38 = (v20 + v27[9]);
    v39 = v38[1];
    v40 = v38[2];
    *v82 = *v38;
    *&v82[8] = v39;
    *&v82[16] = v40;
    v81[0] = 5;
    sub_217AD1A68(*v82, v39, v40);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(*v82, *&v82[8], *&v82[16]);
    v41 = (v20 + v27[10]);
    v42 = *v41;
    LOBYTE(v41) = *(v41 + 4);
    v95 = v42;
    v96 = v41;
    v94 = 6;
    sub_217C0573C();
    sub_217D89CAC();
    v43 = (v20 + v27[11]);
    v44 = v43[1];
    v92 = *v43;
    v93[0] = v44;
    *(v93 + 10) = *(v43 + 26);
    v45 = v43[1];
    v90 = *v43;
    v91[0] = v45;
    *(v91 + 10) = *(v43 + 26);
    v89 = 7;
    sub_217AEC604(&v92, v82);
    sub_217AEC6C8();
    sub_217D89CAC();
    v87 = v90;
    *v88 = v91[0];
    *&v88[10] = *(v91 + 10);
    sub_217AEC63C(&v87);
    v46 = (v20 + v27[12]);
    v47 = *v46;
    v48 = v46[1];
    LOWORD(v46) = *(v46 + 8);
    v84 = v47;
    v85 = v48;
    v86 = v46;
    v83 = 8;
    sub_217A5E790();

    sub_217D89C3C();

    v49 = v27[13];
    v50 = v65;
    memcpy(v82, (v65 + v49), sizeof(v82));
    memcpy(v81, (v65 + v49), sizeof(v81));
    v80[279] = 9;
    sub_217AD1744(v82, v80);
    sub_217ACF934();
    sub_217D89CAC();
    memcpy(v80, v81, 0x111uLL);
    sub_217AD28B8(v80);
    v51 = (v50 + v27[14]);
    v52 = v51[1];
    v78[0] = *v51;
    v78[1] = v52;
    v54 = *v51;
    v53 = v51[1];
    v78[2] = v51[2];
    v79 = *(v51 + 48);
    v74 = v54;
    v75 = v53;
    v76 = v51[2];
    v77 = *(v51 + 48);
    v73 = 10;
    sub_217ACC004(v78, v71);
    sub_217A55B98();
    sub_217D89CAC();
    v71[0] = v74;
    v71[1] = v75;
    v71[2] = v76;
    v72 = v77;
    sub_217ACC69C(v71);
    v55 = (v65 + v143[15]);
    v56 = v55[1];
    v57 = v55[2];
    v58 = v55[3];
    v67 = *v55;
    v68 = v56;
    v69 = v57;
    v70 = v58;
    v66 = 11;
    sub_217AE39D0(v67, v56, v57, v58);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v67, v68, v69, v70);
    v59 = (v65 + v143[16]);
    v60 = v59[1];
    v67 = *v59;
    v68 = v60;
    v66 = 12;
    sub_217AD01EC();

    sub_217D89C3C();

    LODWORD(v67) = *(v65 + v143[17]);
    v66 = 13;
    sub_217C063B4();
    sub_217D89CAC();
    LOBYTE(v67) = *(v65 + v143[18]);
    v66 = 14;
    sub_217C0660C();
    sub_217D89CAC();
    v61 = (v65 + v143[19]);
    v62 = *v61;
    v63 = v61[1];
    LOWORD(v61) = *(v61 + 1);
    LOBYTE(v67) = v62;
    BYTE1(v67) = v63;
    WORD1(v67) = v61;
    v66 = 15;
    sub_217ACFB8C();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217CE3A14()
{
  result = qword_27CBA41F8;
  if (!qword_27CBA41F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA41F8);
  }

  return result;
}

void AudioEngageEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_217D889CC();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v57 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v59 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CE486C(0, &qword_27CBA4200, MEMORY[0x277D844C8]);
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v51 - v8;
  v10 = type metadata accessor for AudioEngageEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CE3A14();
  v62 = v9;
  v13 = v95;
  sub_217D89E5C();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v58;
    v52 = v10;
    v53 = a1;
    v95 = v12;
    LOBYTE(v94[0]) = 0;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v15 = v59;
    sub_217D89BCC();
    v16 = v95;
    (*(v57 + 32))(v95, v15, v5);
    LOBYTE(v94[0]) = 1;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v17 = v56;
    sub_217D89BCC();
    v51[1] = v5;
    v59 = 0;
    v18 = v52;
    (*(v55 + 32))(&v16[v52[5]], v14, v17);
    v85 = 2;
    sub_217ACF4D8();
    sub_217D89BCC();
    v19 = &v16[v18[6]];
    v20 = v91;
    v21 = *v93;
    *(v19 + 6) = v92;
    *(v19 + 7) = v21;
    *(v19 + 127) = *&v93[15];
    v22 = v89;
    *(v19 + 2) = v88;
    *(v19 + 3) = v22;
    *(v19 + 4) = v90;
    *(v19 + 5) = v20;
    v23 = v87;
    *v19 = v86;
    *(v19 + 1) = v23;
    LOBYTE(v76) = 3;
    sub_217AD07F8();
    sub_217D89BCC();
    v24 = *(&v94[0] + 1);
    v25 = v94[1];
    v26 = BYTE1(v94[1]);
    v27 = *(&v94[1] + 1);
    v28 = *&v94[2];
    v29 = &v16[v18[7]];
    *v29 = *&v94[0];
    *(v29 + 1) = v24;
    v29[16] = v25;
    v29[17] = v26;
    *(v29 + 3) = v27;
    *(v29 + 4) = v28;
    v75 = 4;
    sub_217A5D308();
    sub_217D89B5C();
    v30 = &v16[v18[8]];
    v31 = v83;
    *(v30 + 6) = v82;
    *(v30 + 7) = v31;
    *(v30 + 8) = v84;
    v32 = v79;
    *(v30 + 2) = v78;
    *(v30 + 3) = v32;
    v33 = v81;
    *(v30 + 4) = v80;
    *(v30 + 5) = v33;
    v34 = v77;
    *v30 = v76;
    *(v30 + 1) = v34;
    LOBYTE(v67) = 5;
    sub_217A5B978();
    sub_217D89B5C();
    v35 = *&v94[1];
    v36 = &v16[v18[9]];
    *v36 = v94[0];
    *(v36 + 2) = v35;
    LOBYTE(v67) = 6;
    sub_217C056E8();
    sub_217D89BCC();
    v37 = BYTE4(v94[0]);
    v38 = &v16[v18[10]];
    *v38 = v94[0];
    v38[4] = v37;
    v72 = 7;
    sub_217AEC670();
    sub_217D89BCC();
    v39 = &v16[v52[11]];
    v40 = *v74;
    *v39 = v73;
    *(v39 + 1) = v40;
    *(v39 + 26) = *&v74[10];
    LOBYTE(v67) = 8;
    sub_217A5E738();
    sub_217D89B5C();
    v41 = v94[1];
    v42 = &v95[v52[12]];
    *v42 = v94[0];
    *(v42 + 8) = v41;
    v71 = 9;
    sub_217ACF8E0();
    sub_217D89BCC();
    memcpy(&v95[v52[13]], v94, 0x111uLL);
    v66 = 10;
    sub_217A54D08();
    sub_217D89BCC();
    v43 = &v95[v52[14]];
    v44 = v68;
    *v43 = v67;
    *(v43 + 1) = v44;
    *(v43 + 2) = v69;
    v43[48] = v70;
    v63 = 11;
    sub_217ACFF40();
    sub_217D89B5C();
    v45 = &v95[v52[15]];
    v46 = v65;
    *v45 = v64;
    *(v45 + 1) = v46;
    v63 = 12;
    sub_217AD0198();
    sub_217D89B5C();
    *&v95[v52[16]] = v64;
    v63 = 13;
    sub_217C06360();
    sub_217D89BCC();
    *&v95[v52[17]] = v64;
    v63 = 14;
    sub_217C065B8();
    sub_217D89BCC();
    v95[v52[18]] = v64;
    v63 = 15;
    sub_217ACFB38();
    sub_217D89BCC();
    (*(v60 + 8))(v62, v61);
    v47 = BYTE1(v64);
    v48 = WORD1(v64);
    v49 = v95;
    v50 = &v95[v52[19]];
    *v50 = v64;
    v50[1] = v47;
    *(v50 + 1) = v48;
    sub_217CE48D0(v49, v54);
    __swift_destroy_boxed_opaque_existential_1(v53);
    sub_217CE4934(v49);
  }
}

void sub_217CE486C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CE3A14();
    v7 = a3(a1, &type metadata for AudioEngageEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CE48D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEngageEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CE4934(uint64_t a1)
{
  v2 = type metadata accessor for AudioEngageEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CE4A68@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C06810(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217C06810(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217C06810(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217C06810(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v16 - 8) + 104))(a2 + v15, v13, v16);
  v17 = a1[10];
  sub_217C06810(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C, &type metadata for TrackData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217C06810(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8, &type metadata for AudioEngagementData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217C06810(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v22 - 8) + 104))(a2 + v21, v13, v22);
  v23 = a1[13];
  sub_217C06810(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217C06810(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217C06810(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v28 - 8) + 104))(a2 + v27, v13, v28);
  v29 = a1[16];
  sub_217C06810(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v30 - 8) + 104))(a2 + v29, v13, v30);
  v31 = a1[17];
  sub_217C06810(0, &qword_2811C8798, sub_217C06360, sub_217C063B4, &type metadata for PlaybackData);
  (*(*(v32 - 8) + 104))(a2 + v31, v4, v32);
  v33 = a1[18];
  sub_217C06810(0, &qword_2811C8520, sub_217C065B8, sub_217C0660C, &type metadata for AudioEngagementOriginationData);
  (*(*(v34 - 8) + 104))(a2 + v33, v4, v34);
  v35 = a1[19];
  sub_217C06810(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v37 = *(*(v36 - 8) + 104);

  return v37(a2 + v35, v4, v36);
}

void sub_217CE51F4(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217C06810(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
      if (v3 <= 0x3F)
      {
        sub_217C06810(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217C06810(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            sub_217C06810(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
            if (v6 <= 0x3F)
            {
              sub_217C06810(319, &qword_2811C84A8, sub_217C056E8, sub_217C0573C, &type metadata for TrackData);
              if (v7 <= 0x3F)
              {
                sub_217C06810(319, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8, &type metadata for AudioEngagementData);
                if (v8 <= 0x3F)
                {
                  sub_217C06810(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
                  if (v9 <= 0x3F)
                  {
                    sub_217C06810(319, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
                    if (v10 <= 0x3F)
                    {
                      sub_217C06810(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                      if (v11 <= 0x3F)
                      {
                        sub_217C06810(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                        if (v12 <= 0x3F)
                        {
                          sub_217C06810(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
                          if (v13 <= 0x3F)
                          {
                            sub_217C06810(319, &qword_2811C8798, sub_217C06360, sub_217C063B4, &type metadata for PlaybackData);
                            if (v14 <= 0x3F)
                            {
                              sub_217C06810(319, &qword_2811C8520, sub_217C065B8, sub_217C0660C, &type metadata for AudioEngagementOriginationData);
                              if (v15 <= 0x3F)
                              {
                                sub_217C06810(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
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

unint64_t sub_217CE5714()
{
  result = qword_27CBA4208;
  if (!qword_27CBA4208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4208);
  }

  return result;
}

unint64_t sub_217CE576C()
{
  result = qword_27CBA4210;
  if (!qword_27CBA4210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4210);
  }

  return result;
}

unint64_t sub_217CE57C4()
{
  result = qword_27CBA4218;
  if (!qword_27CBA4218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4218);
  }

  return result;
}

uint64_t sub_217CE5818(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461446B63617274 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD0540 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCCCA0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217DD0560 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t PrivateUserType.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_217D89B0C();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_217CE5D98()
{
  result = qword_27CBA4220;
  if (!qword_27CBA4220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4220);
  }

  return result;
}

uint64_t sub_217CE5DEC()
{
  sub_217D89E1C();
  sub_217D895CC();
  return sub_217D89E3C();
}

uint64_t sub_217CE5E50(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();
  return sub_217D89E3C();
}

uint64_t sub_217CE5E9C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_217D89B0C();

  *a2 = v3 != 0;
  return result;
}

uint64_t ReferralCampaignData.referralCampaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v4;
}

__n128 ReferralCampaignData.referralCampaignData.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u64[1];

  v1->n128_u64[0] = v3;
  v1->n128_u64[1] = v4;
  result = a1[1];
  v6 = a1[2];
  v1[1] = result;
  v1[2] = v6;
  return result;
}

void __swiftcall ReferralCampaignData.init(referralCampaignData:)(NewsAnalytics::ReferralCampaignData *__return_ptr retstr, NewsAnalytics::CampaignData *referralCampaignData)
{
  object = referralCampaignData->campaignId._object;
  retstr->referralCampaignData.campaignId._countAndFlagsBits = referralCampaignData->campaignId._countAndFlagsBits;
  retstr->referralCampaignData.campaignId._object = object;
  creativeId = referralCampaignData->creativeId;
  retstr->referralCampaignData.campaignType = referralCampaignData->campaignType;
  retstr->referralCampaignData.creativeId = creativeId;
}

uint64_t sub_217CE6078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000217DCE860 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217CE610C(uint64_t a1)
{
  v2 = sub_217CE6344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CE6148(uint64_t a1)
{
  v2 = sub_217CE6344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReferralCampaignData.encode(to:)(void *a1)
{
  sub_217CE653C(0, &qword_27CBA4228, MEMORY[0x277D84538]);
  v4 = v3;
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[3];
  v13 = v1[2];
  v14 = v7;
  v10 = v1[5];
  v12 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CE6344();

  sub_217D89E7C();
  v15 = v14;
  v16 = v8;
  v17 = v13;
  v18 = v9;
  v19 = v12;
  v20 = v10;
  sub_217A66ADC();
  sub_217D89CAC();

  return (*(v21 + 8))(v6, v4);
}

unint64_t sub_217CE6344()
{
  result = qword_27CBA4230;
  if (!qword_27CBA4230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4230);
  }

  return result;
}

uint64_t ReferralCampaignData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217CE653C(0, &qword_27CBA4238, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CE6344();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A66A84();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    v10 = v14[1];
    v11 = v15;
    v12 = v16;
    *a2 = v14[0];
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 32) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CE653C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CE6344();
    v7 = a3(a1, &type metadata for ReferralCampaignData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CE65A4()
{
  result = qword_27CBA4240;
  if (!qword_27CBA4240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4240);
  }

  return result;
}

unint64_t sub_217CE65FC()
{
  result = qword_27CBA4248;
  if (!qword_27CBA4248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4248);
  }

  return result;
}

unint64_t sub_217CE66A4()
{
  result = qword_27CBA4250;
  if (!qword_27CBA4250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4250);
  }

  return result;
}

unint64_t sub_217CE66FC()
{
  result = qword_27CBA4258;
  if (!qword_27CBA4258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4258);
  }

  return result;
}

unint64_t sub_217CE6754()
{
  result = qword_27CBA4260;
  if (!qword_27CBA4260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4260);
  }

  return result;
}

uint64_t WebAccessTagListData.tagIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_217CE680C(uint64_t a1)
{
  v2 = sub_217A690A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CE6848(uint64_t a1)
{
  v2 = sub_217A690A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebAccessTagListData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217A68E90(0, &qword_2811BC9C8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A690A8();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217CE6A4C()
{
  result = qword_2811C1B30;
  if (!qword_2811C1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1B30);
  }

  return result;
}

unint64_t sub_217CE6AE0()
{
  result = qword_27CBA4268;
  if (!qword_27CBA4268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4268);
  }

  return result;
}

uint64_t sub_217CE6B80(uint64_t a1)
{
  v2 = sub_217CE6D54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CE6BBC(uint64_t a1)
{
  v2 = sub_217CE6D54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetTypeData.encode(to:)(void *a1)
{
  sub_217CE6F94(0, &qword_2811BC780, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CE6D54();
  sub_217D89E7C();
  v11 = v8;
  sub_217CE6DA8();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217CE6D54()
{
  result = qword_2811C69B0;
  if (!qword_2811C69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C69B0);
  }

  return result;
}

unint64_t sub_217CE6DA8()
{
  result = qword_2811C7E78;
  if (!qword_2811C7E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E78);
  }

  return result;
}

uint64_t WidgetTypeData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217CE6F94(0, &qword_2811BCAC0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CE6D54();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217CE6FF8();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CE6F94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CE6D54();
    v7 = a3(a1, &type metadata for WidgetTypeData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CE6FF8()
{
  result = qword_2811C7E68;
  if (!qword_2811C7E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E68);
  }

  return result;
}

unint64_t sub_217CE70A8()
{
  result = qword_27CBA4270;
  if (!qword_27CBA4270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4270);
  }

  return result;
}

unint64_t sub_217CE7100()
{
  result = qword_2811C69A0;
  if (!qword_2811C69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C69A0);
  }

  return result;
}

unint64_t sub_217CE7158()
{
  result = qword_2811C69A8;
  if (!qword_2811C69A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C69A8);
  }

  return result;
}

NewsAnalytics::PaywallConfigOfferType_optional __swiftcall PaywallConfigOfferType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PaywallConfigOfferType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x726566664F62;
  v4 = 0x656C646E754273;
  if (v1 != 3)
  {
    v4 = 0x61746C654470;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73756C507377656ELL;
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

unint64_t sub_217CE72AC()
{
  result = qword_27CBA4278;
  if (!qword_27CBA4278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4278);
  }

  return result;
}

uint64_t sub_217CE7300()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CE73DC(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217CE74A4(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CE7588(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x726566664F62;
  v7 = 0xE700000000000000;
  v8 = 0x656C646E754273;
  if (v2 != 3)
  {
    v8 = 0x61746C654470;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x73756C507377656ELL;
    v3 = 0xE800000000000000;
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

unint64_t sub_217CE76E0()
{
  result = qword_27CBA4280;
  if (!qword_27CBA4280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4280);
  }

  return result;
}

void *ExternalAnalyticsEventProcessor.__allocating_init(appConfigurationManager:uploader:urlProvider:featureAvailability:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v8[19] = 0;
  v8[20] = 0;
  v8[18] = 0;
  v8[2] = a1;
  sub_217A4998C(a2, (v8 + 3));
  sub_217A4998C(a3, (v8 + 8));
  sub_217A4998C(a4, (v8 + 13));
  swift_unknownObjectRetain();
  sub_217CE7880();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v8;
}

void *ExternalAnalyticsEventProcessor.init(appConfigurationManager:uploader:urlProvider:featureAvailability:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4[18] = 0;
  v4[19] = 0;
  v4[20] = 0;
  v4[2] = a1;
  sub_217A4998C(a2, (v4 + 3));
  sub_217A4998C(a3, (v4 + 8));
  sub_217A4998C(a4, (v4 + 13));
  swift_unknownObjectRetain();
  sub_217CE7880();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v4;
}

void sub_217CE7880()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedManagerForAllUsers];
  if (v2)
  {
    v3 = v2;
    sub_217A4E5C4(0, &qword_2811BCC50, 0x277D85C78);
    v4 = sub_217D8982C();
    v6[4] = sub_217CE964C;
    v6[5] = v1;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_217CE7F08;
    v6[3] = &block_descriptor_3;
    v5 = _Block_copy(v6);

    [v3 loadConfigurationsWithCompletionQueue:v4 handler:v5];
    _Block_release(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_217CE79A8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    sub_217A4E5C4(0, &qword_2811BCB80, 0x277D86200);
    v5 = a2;
    v6 = sub_217D898DC();
    v7 = sub_217D897DC();
    sub_217A67100(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_217D8D8F0;
    sub_217AE030C(0, &qword_2811BC3F0, MEMORY[0x277D84948]);
    sub_217D89A8C();
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_217A62448();
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    sub_217D88E5C("Failed to obtain VPN configurations with error= %{public}@", 58, 2, &dword_217A45000, v6, v7, v8);

    *(a3 + 144) = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    v10 = sub_217CE7DFC(a1);
    if (v10)
    {
      v11 = v10;
      v12 = v10 & 0xFFFFFFFFFFFFFF8;
      if (v10 >> 62)
      {
LABEL_29:
        v13 = sub_217D89AAC();
        if (v13)
        {
LABEL_8:
          v14 = 0;
          v15 = MEMORY[0x277D84F90];
          do
          {
            v16 = v14;
            while (1)
            {
              if ((v11 & 0xC000000000000001) != 0)
              {
                v17 = MEMORY[0x21CEAD080](v16, v11);
              }

              else
              {
                if (v16 >= *(v12 + 16))
                {
                  goto LABEL_28;
                }

                v17 = *(v11 + 8 * v16 + 32);
              }

              v18 = v17;
              v14 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                __break(1u);
LABEL_28:
                __break(1u);
                goto LABEL_29;
              }

              v19 = [v17 name];
              if (v19)
              {
                break;
              }

              ++v16;
              if (v14 == v13)
              {
                goto LABEL_31;
              }
            }

            v20 = v15;
            v21 = v19;
            v22 = sub_217D8954C();
            v37 = v23;
            v38 = v22;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_217B5AD14(0, *(v20 + 2) + 1, 1, v20);
            }

            v25 = *(v20 + 2);
            v24 = *(v20 + 3);
            v26 = v20;
            if (v25 >= v24 >> 1)
            {
              v26 = sub_217B5AD14((v24 > 1), v25 + 1, 1, v20);
            }

            *(v26 + 2) = v25 + 1;
            v27 = &v26[16 * v25];
            v15 = v26;
            *(v27 + 4) = v38;
            *(v27 + 5) = v37;
          }

          while (v14 != v13);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          goto LABEL_8;
        }
      }

      v15 = MEMORY[0x277D84F90];
LABEL_31:

      sub_217A4E5C4(0, &qword_2811BCB80, 0x277D86200);
      v31 = sub_217D898DC();
      sub_217A67100(0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_217D8D8F0;
      sub_217A55F8C();
      sub_217CE9654(&qword_2811BCD40, sub_217A55F8C, MEMORY[0x277D83958]);
      v33 = sub_217D894DC();
      v35 = v34;
      *(v32 + 56) = MEMORY[0x277D837D0];
      *(v32 + 64) = sub_217A62448();
      *(v32 + 32) = v33;
      *(v32 + 40) = v35;
      v36 = sub_217D897FC();
      sub_217D88E5C("ExternalAnalyticsProcessor loaded with VPN Profile names=%@", 59, 2, &dword_217A45000, v31, v36, v32);

      *(a3 + 144) = v15;
    }
  }

  sub_217A4E5C4(0, &qword_2811BCB80, 0x277D86200);
  v28 = sub_217D898DC();
  v29 = sub_217D897FC();
  v30 = MEMORY[0x277D84F90];
  sub_217D88E5C("ExternalAnalyticsProcessor loadConfigurations resulted in empty configurations", 78, 2, &dword_217A45000, v28, v29, MEMORY[0x277D84F90]);

  *(a3 + 144) = v30;
}

uint64_t sub_217CE7DFC(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_217D89A5C();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_217AE02B0(i, v5);
    sub_217A4E5C4(0, &unk_2811BCC90, 0x277CD92B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_217D89A3C();
    sub_217D89A6C();
    sub_217D89A7C();
    sub_217D89A4C();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_217CE7F08(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_217D896EC();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t ExternalAnalyticsEventProcessor.didStartSession(_:)()
{
  *(v0 + 152) = sub_217D888AC();
  *(v0 + 160) = v1;
}

uint64_t ExternalAnalyticsEventProcessor.process<A>(processEvent:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[16];
  v8 = v3[17];
  __swift_project_boxed_opaque_existential_1(v3 + 13, v7);
  result = (*(v8 + 8))(v7, v8);
  if (result)
  {
    result = sub_217CE8D58(a1, a2, a3);
    if (result)
    {
      v10 = v3[20];
      if (v10)
      {
        if (v3[18])
        {
          v22 = v3[19];
          v11 = v3[2];

          v12 = [objc_msgSend(v11 appConfiguration)];
          swift_unknownObjectRelease();
          sub_217A4E5C4(0, &qword_2811BCBE0, 0x277D35478);
          v13 = sub_217D896EC();

          v21 = v13;
          if (v13 >> 62)
          {
            goto LABEL_22;
          }

          for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_217D89AAC())
          {
            v15 = 0;
            while (1)
            {
              if ((v21 & 0xC000000000000001) != 0)
              {
                v16 = MEMORY[0x21CEAD080](v15, v21);
              }

              else
              {
                if (v15 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_21;
                }

                v16 = *(v21 + 32 + 8 * v15);
              }

              v17 = v16;
              if (__OFADD__(v15++, 1))
              {
                break;
              }

              v19 = [v16 vpnProfileNames];
              if (v19)
              {
                v20 = v19;
                sub_217D896DC();
              }

              sub_217CE846C(a1, v17, v22, v10, a2, a3);

              if (v15 == i)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            ;
          }

LABEL_17:
        }
      }
    }
  }

  return result;
}

BOOL sub_217CE83D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 + 40;
  v4 = *(a3 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 16;
    sub_217A4EBC4();
    v6 = sub_217D8993C();
    v3 = v5;
  }

  while (v6);
  return v4 != 0;
}

uint64_t sub_217CE846C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v62 = a4;
  v63 = a2;
  v64 = a3;
  v61 = sub_217D881AC();
  v57 = *(v61 - 8);
  v55 = *(v57 + 64);
  MEMORY[0x28223BE20](v61);
  v56 = &v49 - v11;
  v12 = sub_217D87BAC();
  v58 = *(v12 - 8);
  v59 = v12;
  v13 = *(v58 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v54 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  sub_217CE93AC(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v49 - v21;
  v23 = v7[11];
  v24 = v7[12];
  __swift_project_boxed_opaque_existential_1(v7 + 8, v23);
  v25 = *(v24 + 8);
  v60 = v22;
  v65 = a1;
  v26 = a1;
  v27 = a5;
  v28 = a5;
  v29 = a6;
  v25(v26, v63, v64, v62, v28, a6, v23, v24);
  v62 = v13;
  v63 = v27;
  v31 = v56;
  v30 = v57;
  v64 = v29;
  v32 = v65;
  sub_217A61C54(v60, v20);
  if ((*(v58 + 48))(v20, 1, v59) == 1)
  {
    sub_217CE9404(v60);
    v33 = v20;
  }

  else
  {
    v35 = v58;
    v34 = v59;
    v36 = *(v58 + 32);
    v49 = v16;
    v50 = v36;
    v37 = v16;
    v36(v16, v20, v59);
    v38 = v7[7];
    v52 = v7[6];
    v53 = v38;
    v51 = __swift_project_boxed_opaque_existential_1(v7 + 3, v52);
    v39 = v61;
    (*(v30 + 16))(v31, v32, v61);
    v40 = v54;
    v41 = v37;
    v42 = v34;
    (*(v35 + 16))(v54, v41, v34);
    v43 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v44 = (v55 + *(v35 + 80) + v43) & ~*(v35 + 80);
    v45 = swift_allocObject();
    v46 = v64;
    *(v45 + 16) = v63;
    *(v45 + 24) = v46;
    (*(v30 + 32))(v45 + v43, v31, v39);
    v50(v45 + v44, v40, v42);
    v47 = v49;
    sub_217D87F4C();

    (*(v35 + 8))(v47, v42);
    v33 = v60;
  }

  return sub_217CE9404(v33);
}

void sub_217CE8918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_217CE9550(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == *MEMORY[0x277CEAD30])
  {
    (*(v8 + 8))(v10, v7);
    sub_217A4E5C4(0, &qword_2811BCB80, 0x277D86200);
    v12 = sub_217D898DC();
    sub_217A67100(0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_217D9CB60;
    sub_217D881AC();
    v14 = sub_217D8818C();
    v16 = v15;
    v17 = MEMORY[0x277D837D0];
    *(v13 + 56) = MEMORY[0x277D837D0];
    v18 = sub_217A62448();
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v19 = sub_217D87B5C();
    *(v13 + 96) = v17;
    *(v13 + 104) = v18;
    *(v13 + 72) = v19;
    *(v13 + 80) = v20;
    v21 = sub_217D897FC();
    sub_217D88E5C("Successful submission of external analytics event=%@ externalURL=%@", 67, 2, &dword_217A45000, v12, v21, v13);
  }

  else if (v11 == *MEMORY[0x277CEAD28])
  {
    (*(v8 + 96))(v10, v7);
    v22 = *v10;
    sub_217A4E5C4(0, &qword_2811BCB80, 0x277D86200);
    v23 = sub_217D898DC();
    v24 = sub_217D897DC();
    sub_217A67100(0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_217D8EE60;
    sub_217D881AC();
    v26 = sub_217D8818C();
    v28 = v27;
    v29 = MEMORY[0x277D837D0];
    *(v25 + 56) = MEMORY[0x277D837D0];
    v30 = sub_217A62448();
    *(v25 + 64) = v30;
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    v31 = sub_217D87B5C();
    *(v25 + 96) = v29;
    *(v25 + 104) = v30;
    *(v25 + 72) = v31;
    *(v25 + 80) = v32;
    swift_getErrorValue();
    v33 = sub_217D89DBC();
    *(v25 + 136) = v29;
    *(v25 + 144) = v30;
    *(v25 + 112) = v33;
    *(v25 + 120) = v34;
    sub_217D88E5C("Failed to submit external analytics for event=%@ externalURL=%@, error= %{public}@", 82, 2, &dword_217A45000, v23, v24, v25);
  }

  else
  {
    (*(v8 + 8))(v10, v7);
  }
}

void *ExternalAnalyticsEventProcessor.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);

  return v0;
}

uint64_t ExternalAnalyticsEventProcessor.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t sub_217CE8D14()
{
  *(v0 + 152) = sub_217D888AC();
  *(v0 + 160) = v1;
}

uint64_t sub_217CE8D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217C32810(0);
  v43 = v4;
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C63318(0);
  v47 = v6;
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v46 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CE95B8(0);
  v51 = v8;
  v45 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v50 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CA5134(0);
  v54 = v10;
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v53 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B0EFB4(0);
  v56 = v12;
  v52 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v55 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217BCC640(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_217D881AC();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v40 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v44 = &v39 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v48 = &v39 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v39 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v39 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = *(v20 + 16);
  v33(&v39 - v34, a1, v19);
  if (swift_dynamicCast())
  {
    (*(v16 + 8))(v18, v15);
  }

  else
  {
    v33(v32, a1, v19);
    v35 = v55;
    v36 = v56;
    if (swift_dynamicCast())
    {
      v37 = v52;
    }

    else
    {
      v33(v29, a1, v19);
      v35 = v53;
      v36 = v54;
      if (swift_dynamicCast())
      {
        v37 = v49;
      }

      else
      {
        v33(v48, a1, v19);
        v35 = v50;
        v36 = v51;
        if (swift_dynamicCast())
        {
          v37 = v45;
        }

        else
        {
          v33(v44, a1, v19);
          v35 = v46;
          v36 = v47;
          if (swift_dynamicCast())
          {
            v37 = v41;
          }

          else
          {
            v33(v40, a1, v19);
            v35 = v42;
            v36 = v43;
            result = swift_dynamicCast();
            if (!result)
            {
              return result;
            }

            v37 = v39;
          }
        }
      }
    }

    (*(v37 + 8))(v35, v36);
  }

  return 1;
}

void sub_217CE93AC(uint64_t a1)
{
  if (!qword_2811C8CA0)
  {
    sub_217D87BAC();
    v1 = sub_217D898EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C8CA0);
    }
  }
}

uint64_t sub_217CE9404(uint64_t a1)
{
  sub_217CE93AC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_217CE9460(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_217D881AC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_217D87BAC() - 8);
  v9 = v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_217CE8918(a1, v1 + v6, v9, v3, v4);
}

void sub_217CE9550(uint64_t a1)
{
  if (!qword_2811C8490)
  {
    sub_217A4E5C4(255, &qword_2811BCC68, 0x277CCAA40);
    v1 = sub_217D882EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C8490);
    }
  }
}

void sub_217CE95B8(uint64_t a1)
{
  if (!qword_2811C88B0)
  {
    type metadata accessor for MediaEngageCompleteEvent(255);
    sub_217CE9654(qword_2811BF898, type metadata accessor for MediaEngageCompleteEvent, &protocol conformance descriptor for MediaEngageCompleteEvent);
    v1 = sub_217D881AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C88B0);
    }
  }
}

uint64_t sub_217CE9654(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

NewsAnalytics::LiveActivityUserAction_optional __swiftcall LiveActivityUserAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LiveActivityUserAction.rawValue.getter()
{
  v1 = 0x6269726373627573;
  if (*v0 != 1)
  {
    v1 = 0x7263736275736E75;
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

uint64_t sub_217CE9760(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6269726373627573;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x7263736275736E75;
    v4 = 0xEB00000000656269;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6269726373627573;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x7263736275736E75;
    v8 = 0xEB00000000656269;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217CE9880()
{
  result = qword_27CBA4288;
  if (!qword_27CBA4288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4288);
  }

  return result;
}

uint64_t sub_217CE98D4()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CE9984(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217CE9A20(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CE9AD8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x6269726373627573;
  if (v2 != 1)
  {
    v5 = 0x7263736275736E75;
    v4 = 0xEB00000000656269;
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

unint64_t sub_217CE9C04()
{
  result = qword_27CBA4290;
  if (!qword_27CBA4290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4290);
  }

  return result;
}

uint64_t PaidSubscribedTagListData.tagIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_217CE9CBC(uint64_t a1)
{
  v2 = sub_217A68D38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CE9CF8(uint64_t a1)
{
  v2 = sub_217A68D38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PaidSubscribedTagListData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217A68CBC(0, &qword_2811BC958, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A68D38();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217CE9EFC()
{
  result = qword_2811BF228;
  if (!qword_2811BF228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF228);
  }

  return result;
}

unint64_t sub_217CE9F90()
{
  result = qword_27CBA4298;
  if (!qword_27CBA4298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4298);
  }

  return result;
}

uint64_t sub_217CEA0AC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA42A0);
  __swift_project_value_buffer(v0, qword_27CBA42A0);
  return sub_217D8866C();
}

uint64_t WebEmbedLinkTapEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WebEmbedLinkTapEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLinkTapEvent(0) + 20);
  sub_217CEA7C0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLinkTapEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLinkTapEvent(0) + 20);
  sub_217CEA7C0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLinkTapEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLinkTapEvent(0) + 24);
  sub_217CEA7C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLinkTapEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLinkTapEvent(0) + 24);
  sub_217CEA7C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLinkTapEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLinkTapEvent(0) + 28);
  sub_217CEA7C0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedLinkTapEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLinkTapEvent(0) + 28);
  sub_217CEA7C0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLinkTapEvent.urlData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedLinkTapEvent(0) + 32);
  sub_217CEA7C0(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CEA7C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t WebEmbedLinkTapEvent.urlData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedLinkTapEvent(0) + 32);
  sub_217CEA7C0(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedLinkTapEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WebEmbedLinkTapEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217CEA7C0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217CEA7C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217CEA7C0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217CEA7C0(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t WebEmbedLinkTapEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebEmbedLinkTapEvent.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AFFBC0(v17, v16);
}

uint64_t WebEmbedLinkTapEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedLinkTapEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t WebEmbedLinkTapEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedLinkTapEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t WebEmbedLinkTapEvent.Model.urlData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedLinkTapEvent.Model(0) + 32));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

__n128 WebEmbedLinkTapEvent.Model.init(eventData:articleData:viewData:userBundleSubscriptionContextData:urlData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, __n128 *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v11 = a3[1];
  v12 = *(a3 + 8);
  v27 = *a5;
  v13 = a5[1].n128_u64[0];
  v14 = a5[1].n128_u64[1];
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for WebEmbedLinkTapEvent.Model(0);
  v17 = a6 + v16[5];
  v18 = *(a2 + 48);
  *(v17 + 32) = *(a2 + 32);
  *(v17 + 48) = v18;
  v19 = *(a2 + 16);
  *v17 = *a2;
  *(v17 + 16) = v19;
  *(v17 + 127) = *(a2 + 127);
  v20 = *(a2 + 112);
  *(v17 + 96) = *(a2 + 96);
  *(v17 + 112) = v20;
  v21 = *(a2 + 80);
  *(v17 + 64) = *(a2 + 64);
  *(v17 + 80) = v21;
  v22 = a6 + v16[6];
  *v22 = v10;
  *(v22 + 8) = v11;
  *(v22 + 16) = v12;
  v23 = a6 + v16[7];
  v24 = *(a4 + 16);
  *v23 = *a4;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a4 + 32);
  *(v23 + 48) = *(a4 + 48);
  v25 = (a6 + v16[8]);
  result = v27;
  *v25 = v27;
  v25[1].n128_u64[0] = v13;
  v25[1].n128_u64[1] = v14;
  return result;
}

uint64_t sub_217CEAEC0()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6174614477656976;
  v4 = 0xD000000000000021;
  if (v1 != 3)
  {
    v4 = 0x617461446C7275;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x44656C6369747261;
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

uint64_t sub_217CEAF6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217CEC354(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217CEAF94(uint64_t a1)
{
  v2 = sub_217CEB470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CEAFD0(uint64_t a1)
{
  v2 = sub_217CEB470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebEmbedLinkTapEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CEBAFC(0, &qword_27CBA42B8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v31[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CEB470();
  sub_217D89E7C();
  v67[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v68 = type metadata accessor for WebEmbedLinkTapEvent.Model(0);
    v10 = v3 + *(v68 + 20);
    v11 = *(v10 + 96);
    v12 = *(v10 + 64);
    v64 = *(v10 + 80);
    v65 = v11;
    v13 = *(v10 + 96);
    *v66 = *(v10 + 112);
    v14 = *(v10 + 16);
    v15 = *(v10 + 48);
    v61 = *(v10 + 32);
    v62 = v15;
    v16 = *(v10 + 48);
    v63 = *(v10 + 64);
    v17 = *(v10 + 16);
    v60[0] = *v10;
    v60[1] = v17;
    v57 = v64;
    v58 = v13;
    v59[0] = *(v10 + 112);
    v54 = v61;
    v55 = v16;
    v56 = v12;
    *&v66[15] = *(v10 + 127);
    *(v59 + 15) = *(v10 + 127);
    v52 = v60[0];
    v53 = v14;
    v51 = 1;
    sub_217AFFBC0(v60, v49);
    sub_217ACF52C();
    sub_217D89C3C();
    v49[5] = v57;
    v49[6] = v58;
    *v50 = v59[0];
    *&v50[15] = *(v59 + 15);
    v49[2] = v54;
    v49[3] = v55;
    v49[4] = v56;
    v49[0] = v52;
    v49[1] = v53;
    sub_217B009E0(v49);
    v18 = v68;
    v19 = (v3 + *(v68 + 24));
    v20 = *v19;
    v21 = v19[1];
    LOWORD(v19) = *(v19 + 8);
    v46 = v20;
    v47 = v21;
    v48 = v19;
    v45 = 2;
    sub_217A5E790();

    sub_217D89C3C();

    v22 = (v3 + *(v18 + 28));
    v23 = v22[1];
    v43[0] = *v22;
    v43[1] = v23;
    v25 = *v22;
    v24 = v22[1];
    v43[2] = v22[2];
    v44 = *(v22 + 48);
    v39 = v25;
    v40 = v24;
    v41 = v22[2];
    v42 = *(v22 + 48);
    v38 = 3;
    sub_217ACC004(v43, v36);
    sub_217A55B98();
    sub_217D89CAC();
    v36[0] = v39;
    v36[1] = v40;
    v36[2] = v41;
    v37 = v42;
    sub_217ACC69C(v36);
    v27 = (v3 + *(v18 + 32));
    v28 = v27[1];
    v29 = v27[2];
    v30 = v27[3];
    v32 = *v27;
    v33 = v28;
    v34 = v29;
    v35 = v30;
    v31[15] = 4;
    sub_217B6AB1C();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217CEB470()
{
  result = qword_27CBA42C0;
  if (!qword_27CBA42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA42C0);
  }

  return result;
}

uint64_t WebEmbedLinkTapEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_217D8899C();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217CEBAFC(0, &qword_27CBA42C8, MEMORY[0x277D844C8]);
  v31 = v6;
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for WebEmbedLinkTapEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CEB470();
  v50 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v29;
  LOBYTE(v42) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v30;
  sub_217D89BCC();
  (*(v28 + 32))(v11, v13, v4);
  v41 = 1;
  sub_217ACF4D8();
  sub_217D89B5C();
  v30 = v9;
  v14 = &v11[*(v9 + 20)];
  v15 = *v49;
  *(v14 + 6) = v48;
  *(v14 + 7) = v15;
  *(v14 + 127) = *&v49[15];
  v16 = v45;
  *(v14 + 2) = v44;
  *(v14 + 3) = v16;
  v17 = v47;
  *(v14 + 4) = v46;
  *(v14 + 5) = v17;
  v18 = v43;
  *v14 = v42;
  *(v14 + 1) = v18;
  LOBYTE(v33) = 2;
  sub_217A5E738();
  sub_217D89B5C();
  v19 = v38;
  v20 = &v11[v30[6]];
  *v20 = v37;
  *(v20 + 8) = v19;
  v36 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v21 = &v11[v30[7]];
  v22 = v38;
  *v21 = v37;
  *(v21 + 1) = v22;
  *(v21 + 2) = v39;
  v21[48] = v40;
  v32 = 4;
  sub_217B6AAC8();
  sub_217D89BCC();
  (*(v12 + 8))(v50, v31);
  v23 = v34;
  v24 = &v11[v30[8]];
  *v24 = v33;
  *(v24 + 1) = v23;
  *(v24 + 1) = v35;
  sub_217CEBB60(v11, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217CEBBC4(v11);
}

void sub_217CEBAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CEB470();
    v7 = a3(a1, &type metadata for WebEmbedLinkTapEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CEBB60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedLinkTapEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CEBBC4(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedLinkTapEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CEBCF8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217CEA7C0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217CEA7C0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  sub_217CEA7C0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217CEA7C0(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

void sub_217CEBF94(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217CEA7C0(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217CEA7C0(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
      if (v3 <= 0x3F)
      {
        sub_217CEA7C0(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
        if (v4 <= 0x3F)
        {
          sub_217CEA7C0(319, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_217CEC168(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C7DB8, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD200, &type metadata for ViewData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217CEC250()
{
  result = qword_27CBA42E0;
  if (!qword_27CBA42E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA42E0);
  }

  return result;
}

unint64_t sub_217CEC2A8()
{
  result = qword_27CBA42E8;
  if (!qword_27CBA42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA42E8);
  }

  return result;
}

unint64_t sub_217CEC300()
{
  result = qword_27CBA42F0;
  if (!qword_27CBA42F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA42F0);
  }

  return result;
}

uint64_t sub_217CEC354(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617461446C7275 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

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

NewsAnalytics::EmailSignupUserActionType_optional __swiftcall EmailSignupUserActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EmailSignupUserActionType.rawValue.getter()
{
  v1 = 0x70756E676973;
  if (*v0 != 1)
  {
    v1 = 0x776F6E746F6ELL;
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

uint64_t sub_217CEC5C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x70756E676973;
  if (v2 != 1)
  {
    v3 = 0x776F6E746F6ELL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x70756E676973;
  if (*a2 != 1)
  {
    v6 = 0x776F6E746F6ELL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();
  }

  return v9 & 1;
}

unint64_t sub_217CEC6C0()
{
  result = qword_27CBA42F8;
  if (!qword_27CBA42F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA42F8);
  }

  return result;
}

uint64_t sub_217CEC714()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CEC7B0(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217CEC838(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CEC8DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x70756E676973;
  if (v2 != 1)
  {
    v4 = 0x776F6E746F6ELL;
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
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_217CEC9F4()
{
  result = qword_2811BF288;
  if (!qword_2811BF288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF288);
  }

  return result;
}

uint64_t sub_217CECB10()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA4300);
  __swift_project_value_buffer(v0, qword_27CBA4300);
  return sub_217D8866C();
}

uint64_t OpenURLEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t OpenURLEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpenURLEvent(0) + 20);
  sub_217CED224(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OpenURLEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OpenURLEvent(0) + 20);
  sub_217CED224(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OpenURLEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpenURLEvent(0) + 24);
  sub_217CED224(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OpenURLEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OpenURLEvent(0) + 24);
  sub_217CED224(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OpenURLEvent.urlData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpenURLEvent(0) + 28);
  sub_217CED224(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OpenURLEvent.urlData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OpenURLEvent(0) + 28);
  sub_217CED224(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OpenURLEvent.experimentationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpenURLEvent(0) + 32);
  sub_217CED224(0, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CED224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t OpenURLEvent.experimentationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OpenURLEvent(0) + 32);
  sub_217CED224(0, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OpenURLEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for OpenURLEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217CED224(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217CED224(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  sub_217CED224(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217CED224(0, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v6, v13);
}

uint64_t OpenURLEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for OpenURLEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t OpenURLEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for OpenURLEvent.Model(0) + 24));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t OpenURLEvent.Model.urlData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for OpenURLEvent.Model(0) + 28));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

void OpenURLEvent.Model.experimentationData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for OpenURLEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217AE39D0(v4, v5, v6, v7);
}

__n128 OpenURLEvent.Model.init(eventData:viewData:userBundleSubscriptionContextData:urlData:experimentationData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __n128 *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 8);
  v25 = *a4;
  v13 = *(a4 + 2);
  v14 = *(a4 + 3);
  v15 = sub_217D8899C();
  v23 = a5[1];
  v24 = *a5;
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for OpenURLEvent.Model(0);
  v17 = a6 + v16[5];
  *v17 = v10;
  *(v17 + 8) = v11;
  *(v17 + 16) = v12;
  v18 = a6 + v16[6];
  v19 = *(a3 + 16);
  *v18 = *a3;
  *(v18 + 16) = v19;
  *(v18 + 32) = *(a3 + 32);
  *(v18 + 48) = *(a3 + 48);
  v20 = a6 + v16[7];
  *v20 = v25;
  *(v20 + 16) = v13;
  *(v20 + 24) = v14;
  v21 = (a6 + v16[8]);
  result = v24;
  *v21 = v24;
  v21[1] = v23;
  return result;
}

unint64_t sub_217CED8B8()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000021;
  v4 = 0x617461446C7275;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6174614477656976;
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

uint64_t sub_217CED964@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217CEEC00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217CED98C(uint64_t a1)
{
  v2 = sub_217CEDE30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CED9C8(uint64_t a1)
{
  v2 = sub_217CEDE30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OpenURLEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CEE3A8(0, &qword_27CBA4318, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CEDE30();
  sub_217D89E7C();
  LOBYTE(v40[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for OpenURLEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = *v11;
    v13 = v11[1];
    LOWORD(v11) = *(v11 + 8);
    v43 = v12;
    v44 = v13;
    v45 = v11;
    v42 = 1;
    sub_217A5E790();

    sub_217D89C3C();

    v14 = (v3 + v10[6]);
    v15 = v14[1];
    v40[0] = *v14;
    v40[1] = v15;
    v17 = *v14;
    v16 = v14[1];
    v40[2] = v14[2];
    v41 = *(v14 + 48);
    v36 = v17;
    v37 = v16;
    v38 = v14[2];
    v39 = *(v14 + 48);
    v35 = 2;
    sub_217ACC004(v40, v33);
    sub_217A55B98();
    sub_217D89CAC();
    v33[0] = v36;
    v33[1] = v37;
    v33[2] = v38;
    v34 = v39;
    sub_217ACC69C(v33);
    v18 = (v3 + v10[7]);
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[3];
    v29 = *v18;
    v30 = v19;
    v31 = v20;
    v32 = v21;
    v28 = 3;
    sub_217B6AB1C();

    sub_217D89CAC();

    v22 = (v3 + v10[8]);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    v29 = *v22;
    v30 = v23;
    v31 = v24;
    v32 = v25;
    v28 = 4;
    sub_217AE39D0(v29, v23, v24, v25);
    sub_217B368B0();
    sub_217D89C3C();
    sub_217AE4AA0(v29, v30, v31, v32);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217CEDE30()
{
  result = qword_27CBA4320;
  if (!qword_27CBA4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4320);
  }

  return result;
}

uint64_t OpenURLEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_217D8899C();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CEE3A8(0, &qword_27CBA4328, MEMORY[0x277D844C8]);
  v29 = v6;
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for OpenURLEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CEDE30();
  v28 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v25;
  LOBYTE(v32) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v26;
  sub_217D89BCC();
  (*(v12 + 32))(v11, v13, v4);
  LOBYTE(v30) = 1;
  sub_217A5E738();
  sub_217D89B5C();
  v14 = v33;
  v15 = &v11[v9[5]];
  *v15 = v32;
  *(v15 + 8) = v14;
  v37 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v16 = v27;
  v17 = &v11[v9[6]];
  v18 = v33;
  *v17 = v32;
  *(v17 + 1) = v18;
  *(v17 + 2) = v34;
  v17[48] = v35;
  v36 = 3;
  sub_217B6AAC8();
  sub_217D89BCC();
  v19 = *(&v30 + 1);
  v20 = &v11[v9[7]];
  *v20 = v30;
  *(v20 + 1) = v19;
  *(v20 + 1) = v31;
  v36 = 4;
  sub_217B36858();
  sub_217D89B5C();
  (*(v16 + 8))(v28, v29);
  v21 = &v11[v9[8]];
  v22 = v31;
  *v21 = v30;
  *(v21 + 1) = v22;
  sub_217CEE40C(v11, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217CEE470(v11);
}

void sub_217CEE3A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CEDE30();
    v7 = a3(a1, &type metadata for OpenURLEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CEE40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenURLEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CEE470(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CEE5A4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217CED224(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217CED224(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  sub_217CED224(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217CED224(0, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v7, v14);
}

void sub_217CEE840(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217CED224(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
    if (v2 <= 0x3F)
    {
      sub_217CED224(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
      if (v3 <= 0x3F)
      {
        sub_217CED224(319, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
        if (v4 <= 0x3F)
        {
          sub_217CED224(319, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_217CEEA14(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD200, &type metadata for ViewData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C2A68, &type metadata for ExperimentationData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217CEEAFC()
{
  result = qword_27CBA4340;
  if (!qword_27CBA4340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4340);
  }

  return result;
}

unint64_t sub_217CEEB54()
{
  result = qword_27CBA4348;
  if (!qword_27CBA4348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4348);
  }

  return result;
}

unint64_t sub_217CEEBAC()
{
  result = qword_27CBA4350;
  if (!qword_27CBA4350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4350);
  }

  return result;
}

uint64_t sub_217CEEC00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461446C7275 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCE340 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

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

NewsAnalytics::VideoAdEngagementData __swiftcall VideoAdEngagementData.init(type:milestone:)(NewsAnalytics::VideoAdEngagementType type, NewsAnalytics::Milestone milestone)
{
  v3 = *milestone;
  *v2 = *type;
  v2[1] = v3;
  result.type = type;
  return result;
}

uint64_t sub_217CEEE50()
{
  if (*v0)
  {
    return 0x6E6F7473656C696DLL;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_217CEEE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F7473656C696DLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217CEEF6C(uint64_t a1)
{
  v2 = sub_217CEF190();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CEEFA8(uint64_t a1)
{
  v2 = sub_217CEF190();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdEngagementData.encode(to:)(void *a1)
{
  sub_217CEF470(0, &qword_27CBA4358, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CEF190();
  sub_217D89E7C();
  v16 = v9;
  v15 = 0;
  sub_217CEF1E4();
  sub_217D89CAC();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_217CEF238();
    sub_217D89CAC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217CEF190()
{
  result = qword_27CBA4360;
  if (!qword_27CBA4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4360);
  }

  return result;
}

unint64_t sub_217CEF1E4()
{
  result = qword_27CBA4368;
  if (!qword_27CBA4368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4368);
  }

  return result;
}

unint64_t sub_217CEF238()
{
  result = qword_27CBA4370;
  if (!qword_27CBA4370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4370);
  }

  return result;
}

uint64_t VideoAdEngagementData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217CEF470(0, &qword_27CBA4378, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CEF190();
  sub_217D89E5C();
  if (!v2)
  {
    v16 = 0;
    sub_217CEF4D4();
    sub_217D89BCC();
    v10 = v17;
    v14 = 1;
    sub_217CEF528();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CEF470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CEF190();
    v7 = a3(a1, &type metadata for VideoAdEngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CEF4D4()
{
  result = qword_27CBA4380;
  if (!qword_27CBA4380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4380);
  }

  return result;
}

unint64_t sub_217CEF528()
{
  result = qword_27CBA4388;
  if (!qword_27CBA4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4388);
  }

  return result;
}

unint64_t sub_217CEF580()
{
  result = qword_27CBA4390;
  if (!qword_27CBA4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4390);
  }

  return result;
}

unint64_t sub_217CEF5D8()
{
  result = qword_27CBA4398;
  if (!qword_27CBA4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4398);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoAdEngagementData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 65285 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65285 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65285;
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

      return (*a1 | (v4 << 16)) - 65285;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for VideoAdEngagementData(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65285 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 16) + 1;
    *result = a2 - 251;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217CEF7C4()
{
  result = qword_27CBA43A0;
  if (!qword_27CBA43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA43A0);
  }

  return result;
}

unint64_t sub_217CEF81C()
{
  result = qword_27CBA43A8;
  if (!qword_27CBA43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA43A8);
  }

  return result;
}

unint64_t sub_217CEF874()
{
  result = qword_27CBA43B0;
  if (!qword_27CBA43B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA43B0);
  }

  return result;
}

uint64_t URLReferralData.referralData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
}

void URLReferralData.campaignData.getter(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_217B1563C(v2, v3, v4, v5, v6, v7);
}

uint64_t URLReferralData.adReferralData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  a1[1] = v2;
}

uint64_t URLReferralData.notificationData.getter@<X0>(_OWORD *a1@<X8>)
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
  return sub_217AE38AC(v9, &v8, &qword_2811C4F30, &type metadata for NotificationData);
}

uint64_t URLReferralData.widgetEngagementData.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 208), 0x1C8uLL);
  memcpy(a1, (v1 + 208), 0x1C8uLL);
  return sub_217AE38AC(__dst, v4, &qword_2811C1A08, &type metadata for WidgetEngagementData);
}

uint64_t get_enum_tag_for_layout_string_13NewsAnalytics16NotificationDataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217CEFA38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 664))
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

uint64_t sub_217CEFA80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 664) = 1;
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

    *(result + 664) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Tracker.feedbackSubmit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217D888CC();
  sub_217D8893C();

  return MEMORY[0x28213D6D0](0x6B63616264656566, 0xEF73746E6576655FLL);
}

uint64_t AccessTracker.feedbackSubmit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217D881CC();
  memset(v4, 0, sizeof(v4));
  sub_217D8822C();
  sub_217A576FC(v4);
  return sub_217D881DC();
}

uint64_t sub_217CEFCD4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  sub_217CEFD98(&v0[OBJC_IVAR____TtC13NewsAnalytics37RollingTimestampConfigurationProvider_lastConfig]);
  v1 = OBJC_IVAR____TtC13NewsAnalytics37RollingTimestampConfigurationProvider_lastConfigRollDate;
  v2 = sub_217D87C9C();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_217CEFD98(uint64_t a1)
{
  sub_217A4A0E0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PurchaseSessionData.purchaseSessionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PurchaseSessionData.purchaseSessionID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217CEFEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000217DD2540 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217CEFF3C(uint64_t a1)
{
  v2 = sub_217CF0100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CEFF78(uint64_t a1)
{
  v2 = sub_217CF0100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PurchaseSessionData.encode(to:)(void *a1)
{
  sub_217CF02D8(0, &qword_2811BC670, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF0100();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217CF0100()
{
  result = qword_2811C27F8[0];
  if (!qword_2811C27F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C27F8);
  }

  return result;
}

uint64_t PurchaseSessionData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217CF02D8(0, &qword_27CBA43B8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF0100();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89B8C();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CF02D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CF0100();
    v7 = a3(a1, &type metadata for PurchaseSessionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CF035C(void *a1)
{
  sub_217CF02D8(0, &qword_2811BC670, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF0100();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217CF04CC()
{
  result = qword_27CBA43C0;
  if (!qword_27CBA43C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA43C0);
  }

  return result;
}

unint64_t sub_217CF0524()
{
  result = qword_2811C27E8;
  if (!qword_2811C27E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C27E8);
  }

  return result;
}

unint64_t sub_217CF057C()
{
  result = qword_2811C27F0;
  if (!qword_2811C27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C27F0);
  }

  return result;
}

NewsAnalytics::ArticleAccessType_optional __swiftcall ArticleAccessType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ArticleAccessType.rawValue.getter()
{
  v1 = 1701147238;
  if (*v0 != 1)
  {
    v1 = 1684627824;
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

uint64_t sub_217CF0678(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1701147238;
  if (v2 != 1)
  {
    v3 = 1684627824;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1701147238;
  if (*a2 != 1)
  {
    v6 = 1684627824;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();
  }

  return v9 & 1;
}

unint64_t sub_217CF0760()
{
  result = qword_27CBA43C8;
  if (!qword_27CBA43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA43C8);
  }

  return result;
}

uint64_t sub_217CF07B4()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CF0848(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217CF08C8(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CF0964(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 1701147238;
  if (v2 != 1)
  {
    v4 = 1684627824;
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
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_217CF0A74()
{
  result = qword_2811C4978;
  if (!qword_2811C4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4978);
  }

  return result;
}

uint64_t RecipeViewData.viewSessionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RecipeViewData.viewSessionID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217CF0B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7373655377656976 && a2 == 0xED000044496E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217CF0C14(uint64_t a1)
{
  v2 = sub_217CF0DD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CF0C50(uint64_t a1)
{
  v2 = sub_217CF0DD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeViewData.encode(to:)(void *a1)
{
  sub_217CF0FB0(0, &qword_27CBA43D0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF0DD8();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217CF0DD8()
{
  result = qword_27CBA43D8;
  if (!qword_27CBA43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA43D8);
  }

  return result;
}

uint64_t RecipeViewData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217CF0FB0(0, &qword_27CBA43E0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF0DD8();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89B8C();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CF0FB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CF0DD8();
    v7 = a3(a1, &type metadata for RecipeViewData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CF1034(void *a1)
{
  sub_217CF0FB0(0, &qword_27CBA43D0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF0DD8();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217CF11A4()
{
  result = qword_27CBA43E8;
  if (!qword_27CBA43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA43E8);
  }

  return result;
}

unint64_t sub_217CF11FC()
{
  result = qword_27CBA43F0;
  if (!qword_27CBA43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA43F0);
  }

  return result;
}

unint64_t sub_217CF1254()
{
  result = qword_27CBA43F8;
  if (!qword_27CBA43F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA43F8);
  }

  return result;
}

uint64_t sub_217CF1370()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA4430);
  __swift_project_value_buffer(v0, qword_27CBA4430);
  return sub_217D8866C();
}

uint64_t IngredientsShareViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IngredientsShareViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IngredientsShareViewEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IngredientsShareViewEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IngredientsShareViewEvent(0) + 24);
  sub_217CF19C4(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IngredientsShareViewEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IngredientsShareViewEvent(0) + 24);
  sub_217CF19C4(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IngredientsShareViewEvent.ingredientsShareActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IngredientsShareViewEvent(0) + 28);
  sub_217CF19C4(0, &qword_27CBA4448, sub_217BE5018, sub_217BE5070, &type metadata for IngredientsShareActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IngredientsShareViewEvent.ingredientsShareActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IngredientsShareViewEvent(0) + 28);
  sub_217CF19C4(0, &qword_27CBA4448, sub_217BE5018, sub_217BE5070, &type metadata for IngredientsShareActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IngredientsShareViewEvent.resultTypeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IngredientsShareViewEvent(0) + 32);
  sub_217CF19C4(0, &qword_2811C8818, sub_217B24784, sub_217B247D8, &type metadata for ResultData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CF19C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t IngredientsShareViewEvent.resultTypeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IngredientsShareViewEvent(0) + 32);
  sub_217CF19C4(0, &qword_2811C8818, sub_217B24784, sub_217B247D8, &type metadata for ResultData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IngredientsShareViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for IngredientsShareViewEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217CF19C4(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217CF19C4(0, &qword_27CBA4448, sub_217BE5018, sub_217BE5070, &type metadata for IngredientsShareActionData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217CF19C4(0, &qword_2811C8818, sub_217B24784, sub_217B247D8, &type metadata for ResultData);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t sub_217CF1DB0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t IngredientsShareViewEvent.Model.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IngredientsShareViewEvent.Model(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t IngredientsShareViewEvent.Model.ingredientsShareActionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IngredientsShareViewEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t IngredientsShareViewEvent.Model.resultTypeData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IngredientsShareViewEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t IngredientsShareViewEvent.Model.init(eventData:timedData:recipeData:ingredientsShareActionData:resultTypeData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = *(a3 + 16);
  v12 = a3[3];
  v13 = a3[4];
  v14 = *a4;
  v21 = *a5;
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for IngredientsShareViewEvent.Model(0);
  v17 = v16[5];
  v18 = sub_217D889CC();
  result = (*(*(v18 - 8) + 32))(a6 + v17, a2, v18);
  v20 = a6 + v16[6];
  *v20 = v9;
  *(v20 + 8) = v10;
  *(v20 + 16) = v11;
  *(v20 + 24) = v12;
  *(v20 + 32) = v13;
  *(a6 + v16[7]) = v14;
  *(a6 + v16[8]) = v21;
  return result;
}

uint64_t sub_217CF203C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6144657069636572;
  v4 = 0xD00000000000001ALL;
  if (v1 != 3)
  {
    v4 = 0x7954746C75736572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74614464656D6974;
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

uint64_t sub_217CF20EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217CF3248(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217CF2114(uint64_t a1)
{
  v2 = sub_217CF24C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CF2150(uint64_t a1)
{
  v2 = sub_217CF24C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IngredientsShareViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CF2AA8(0, &qword_27CBA4450, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF24C0();
  sub_217D89E7C();
  LOBYTE(v18) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for IngredientsShareViewEvent.Model(0);
    LOBYTE(v18) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + v10[6]);
    v12 = v11[1];
    v13 = *(v11 + 16);
    v14 = v11[3];
    v15 = v11[4];
    v18 = *v11;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    v22 = v15;
    HIBYTE(v17) = 2;
    sub_217B1F08C();

    sub_217D89CAC();

    LOBYTE(v18) = *(v3 + v10[7]);
    HIBYTE(v17) = 3;
    sub_217BE5070();
    sub_217D89CAC();
    LOBYTE(v18) = *(v3 + v10[8]);
    HIBYTE(v17) = 4;
    sub_217B247D8();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217CF24C0()
{
  result = qword_27CBA4458;
  if (!qword_27CBA4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4458);
  }

  return result;
}

uint64_t IngredientsShareViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = sub_217D889CC();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CF2AA8(0, &qword_27CBA4460, MEMORY[0x277D844C8]);
  v33 = v7;
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for IngredientsShareViewEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF24C0();
  v32 = v9;
  v13 = v34;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v4;
  v15 = v28;
  v16 = v29;
  LOBYTE(v35) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  v17 = *(v15 + 32);
  v18 = v12;
  v34 = v5;
  v17(v12, v31);
  LOBYTE(v35) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_217D89BCC();
  (*(v27 + 32))(&v12[v10[5]], v14, v16);
  v40 = 2;
  sub_217B1F038();
  v31 = 0;
  sub_217D89BCC();
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v22 = v39;
  v23 = &v12[v10[6]];
  *v23 = v35;
  *(v23 + 1) = v19;
  v23[16] = v20;
  *(v23 + 3) = v21;
  *(v23 + 4) = v22;
  v40 = 3;
  sub_217BE5018();
  sub_217D89BCC();
  v24 = v30;
  *(v18 + v10[7]) = v35;
  v40 = 4;
  sub_217B24784();
  sub_217D89BCC();
  (*(v24 + 8))(v32, v33);
  *(v18 + v10[8]) = v35;
  sub_217CF2B0C(v18, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217CF2B70(v18);
}

void sub_217CF2AA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CF24C0();
    v7 = a3(a1, &type metadata for IngredientsShareViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CF2B0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IngredientsShareViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CF2B70(uint64_t a1)
{
  v2 = type metadata accessor for IngredientsShareViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CF2CA4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217CF19C4(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217CF19C4(0, &qword_27CBA4448, sub_217BE5018, sub_217BE5070, &type metadata for IngredientsShareActionData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217CF19C4(0, &qword_2811C8818, sub_217B24784, sub_217B247D8, &type metadata for ResultData);
  v14 = *(*(v13 - 8) + 104);

  return v14(a2 + v12, v4, v13);
}

void sub_217CF2EF4(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217CF19C4(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
      if (v3 <= 0x3F)
      {
        sub_217CF19C4(319, &qword_27CBA4448, sub_217BE5018, sub_217BE5070, &type metadata for IngredientsShareActionData);
        if (v4 <= 0x3F)
        {
          sub_217CF19C4(319, &qword_2811C8818, sub_217B24784, sub_217B247D8, &type metadata for ResultData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_217CF3090(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    result = sub_217D889CC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_217CF3144()
{
  result = qword_27CBA4488;
  if (!qword_27CBA4488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4488);
  }

  return result;
}

unint64_t sub_217CF319C()
{
  result = qword_27CBA4490;
  if (!qword_27CBA4490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4490);
  }

  return result;
}

unint64_t sub_217CF31F4()
{
  result = qword_27CBA4498;
  if (!qword_27CBA4498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4498);
  }

  return result;
}

uint64_t sub_217CF3248(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DD2560 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7954746C75736572 && a2 == 0xEE00617461446570)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t PurchaseData.purchaseID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PurchaseData.purchaseID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

NewsAnalytics::PurchaseData __swiftcall PurchaseData.init(purchaseID:purchaseType:)(NewsAnalytics::PurchaseData purchaseID, NewsAnalytics::PurchaseType purchaseType)
{
  v3 = *purchaseType;
  *v2 = purchaseID.purchaseID;
  *(v2 + 16) = v3;
  purchaseID.purchaseType = purchaseType;
  return purchaseID;
}

uint64_t sub_217CF352C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x6573616863727570 && a2 == 0xEA00000000004449;
  if (v5 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000065707954)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217CF360C(uint64_t a1)
{
  v2 = sub_217CF3824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CF3648(uint64_t a1)
{
  v2 = sub_217CF3824();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PurchaseData.encode(to:)(void *a1)
{
  sub_217CF3AD0(0, &qword_2811BC800, MEMORY[0x277D84538]);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v14 = *(v1 + 16);
  v8 = a1[3];
  v9 = a1;
  v11 = v10;
  __swift_project_boxed_opaque_existential_1(v9, v8);
  sub_217CF3824();
  sub_217D89E7C();
  v17 = 0;
  sub_217D89C6C();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_217CF3878();
    sub_217D89CAC();
  }

  return (*(v5 + 8))(v7, v11);
}

unint64_t sub_217CF3824()
{
  result = qword_2811C7960;
  if (!qword_2811C7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7960);
  }

  return result;
}

unint64_t sub_217CF3878()
{
  result = qword_2811C7938;
  if (!qword_2811C7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7938);
  }

  return result;
}

uint64_t PurchaseData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217CF3AD0(0, &qword_2811BCB10, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF3824();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v13 = v10;
  v17 = 1;
  sub_217CF3B34();
  sub_217D89BCC();
  (*(v7 + 8))(v9, v6);
  v14 = v18;
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CF3AD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CF3824();
    v7 = a3(a1, &type metadata for PurchaseData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CF3B34()
{
  result = qword_2811C7928;
  if (!qword_2811C7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7928);
  }

  return result;
}

unint64_t sub_217CF3BE4()
{
  result = qword_27CBA44A0;
  if (!qword_27CBA44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44A0);
  }

  return result;
}

unint64_t sub_217CF3C3C()
{
  result = qword_2811C7950;
  if (!qword_2811C7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7950);
  }

  return result;
}

unint64_t sub_217CF3C94()
{
  result = qword_2811C7958;
  if (!qword_2811C7958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7958);
  }

  return result;
}

NewsAnalytics::CrashSignal_optional __swiftcall CrashSignal.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CrashSignal.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x6C6C696B676973;
    v7 = 0x6D726574676973;
    if (v1 != 8)
    {
      v7 = 0x74697571676973;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x737562676973;
    if (v1 != 5)
    {
      v8 = 0x70617274676973;
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
    v3 = 0x6C6C69676973;
    v4 = 0x74726261676973;
    if (v1 != 3)
    {
      v4 = 0x657066676973;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x76676573676973;
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

unint64_t sub_217CF3E7C()
{
  result = qword_27CBA44A8;
  if (!qword_27CBA44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44A8);
  }

  return result;
}

uint64_t sub_217CF3ED0()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D83934(v3, v1);
  return sub_217D89E3C();
}

uint64_t sub_217CF3F20(uint64_t a1)
{
  v2 = *v1;
  sub_217D89E1C();
  sub_217D83934(v4, v2);
  return sub_217D89E3C();
}

uint64_t sub_217CF3F70@<X0>(uint64_t *a1@<X8>)
{
  result = CrashSignal.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217CF4058()
{
  result = qword_27CBA44B0;
  if (!qword_27CBA44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44B0);
  }

  return result;
}

NewsAnalytics::CrashExceptionData __swiftcall CrashExceptionData.init(type:signal:)(NewsAnalytics::CrashExceptionType_optional type, NewsAnalytics::CrashSignal_optional signal)
{
  v3 = *signal.value;
  *v2 = *type.value;
  v2[1] = v3;
  result.type = type;
  return result;
}

uint64_t sub_217CF4138()
{
  if (*v0)
  {
    return 0x6C616E676973;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_217CF4168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616E676973 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217CF4240(uint64_t a1)
{
  v2 = sub_217CF4464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CF427C(uint64_t a1)
{
  v2 = sub_217CF4464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CrashExceptionData.encode(to:)(void *a1)
{
  sub_217CF4744(0, &qword_27CBA44B8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF4464();
  sub_217D89E7C();
  v16 = v9;
  v15 = 0;
  sub_217CF44B8();
  sub_217D89C3C();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_217CF450C();
    sub_217D89C3C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217CF4464()
{
  result = qword_27CBA44C0;
  if (!qword_27CBA44C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44C0);
  }

  return result;
}

unint64_t sub_217CF44B8()
{
  result = qword_27CBA44C8;
  if (!qword_27CBA44C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44C8);
  }

  return result;
}

unint64_t sub_217CF450C()
{
  result = qword_27CBA44D0;
  if (!qword_27CBA44D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44D0);
  }

  return result;
}

uint64_t CrashExceptionData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217CF4744(0, &qword_27CBA44D8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF4464();
  sub_217D89E5C();
  if (!v2)
  {
    v16 = 0;
    sub_217CF47A8();
    sub_217D89B5C();
    v10 = v17;
    v14 = 1;
    sub_217CF47FC();
    sub_217D89B5C();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CF4744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CF4464();
    v7 = a3(a1, &type metadata for CrashExceptionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CF47A8()
{
  result = qword_27CBA44E0;
  if (!qword_27CBA44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44E0);
  }

  return result;
}

unint64_t sub_217CF47FC()
{
  result = qword_27CBA44E8;
  if (!qword_27CBA44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44E8);
  }

  return result;
}

unint64_t sub_217CF4854()
{
  result = qword_27CBA44F0;
  if (!qword_27CBA44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44F0);
  }

  return result;
}

unint64_t sub_217CF48AC()
{
  result = qword_27CBA44F8;
  if (!qword_27CBA44F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA44F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CrashExceptionData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 65290 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65290 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65290;
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

      return (*a1 | (v4 << 16)) - 65290;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65290;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 0xA)
  {
    v7 = 10;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 11;
  if (v6 < 0xA)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for CrashExceptionData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65290 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65290 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 16) + 1;
    *result = a2 - 246;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
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
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217CF4AA8()
{
  result = qword_27CBA4500;
  if (!qword_27CBA4500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4500);
  }

  return result;
}

unint64_t sub_217CF4B00()
{
  result = qword_27CBA4508;
  if (!qword_27CBA4508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4508);
  }

  return result;
}

unint64_t sub_217CF4B58()
{
  result = qword_27CBA4510;
  if (!qword_27CBA4510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4510);
  }

  return result;
}

NewsAnalytics::CrashExceptionType_optional __swiftcall CrashExceptionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CrashExceptionType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6341646142637865;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6874697241637865;
      break;
    case 4:
      result = 0x616C756D45637865;
      break;
    case 5:
      result = 0x7774666F53637865;
      break;
    case 6:
      result = 0x6B61657242637865;
      break;
    case 7:
      result = 0x6163737953637865;
      break;
    case 8:
      result = 0x536863614D637865;
      break;
    case 9:
      result = 0x6C41637052637865;
      break;
    case 0xA:
      result = 0x6873617243637865;
      break;
    case 0xB:
      result = 0x756F736552637865;
      break;
    case 0xC:
      result = 0x6472617547637865;
      break;
    case 0xD:
      result = 0x7370726F43637865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217CF4DDC()
{
  v0 = CrashExceptionType.rawValue.getter();
  v2 = v1;
  if (v0 == CrashExceptionType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_217D89D4C();
  }

  return v5 & 1;
}

unint64_t sub_217CF4E7C()
{
  result = qword_27CBA4518;
  if (!qword_27CBA4518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4518);
  }

  return result;
}

uint64_t sub_217CF4ED0()
{
  sub_217D89E1C();
  CrashExceptionType.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CF4F38(uint64_t a1)
{
  CrashExceptionType.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217CF4F9C(uint64_t a1)
{
  sub_217D89E1C();
  CrashExceptionType.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217CF500C@<X0>(unint64_t *a1@<X8>)
{
  result = CrashExceptionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217CF50F4()
{
  result = qword_27CBA4520;
  if (!qword_27CBA4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4520);
  }

  return result;
}

uint64_t sub_217CF51B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217CF5240(uint64_t a1)
{
  v2 = sub_217CF5414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CF527C(uint64_t a1)
{
  v2 = sub_217CF5414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CrashTerminationReasonData.encode(to:)(void *a1)
{
  sub_217CF5654(0, &qword_27CBA4528, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF5414();
  sub_217D89E7C();
  v11 = v8;
  sub_217CF5468();
  sub_217D89C3C();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217CF5414()
{
  result = qword_27CBA4530;
  if (!qword_27CBA4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4530);
  }

  return result;
}

unint64_t sub_217CF5468()
{
  result = qword_27CBA4538;
  if (!qword_27CBA4538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4538);
  }

  return result;
}

uint64_t CrashTerminationReasonData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217CF5654(0, &qword_27CBA4540, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF5414();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217CF56B8();
    sub_217D89B5C();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CF5654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CF5414();
    v7 = a3(a1, &type metadata for CrashTerminationReasonData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CF56B8()
{
  result = qword_27CBA4548;
  if (!qword_27CBA4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4548);
  }

  return result;
}

unint64_t sub_217CF5710()
{
  result = qword_27CBA4550;
  if (!qword_27CBA4550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4550);
  }

  return result;
}

unint64_t sub_217CF5768()
{
  result = qword_27CBA4558;
  if (!qword_27CBA4558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4558);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CrashTerminationReasonData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 0x27)
  {
    v7 = 39;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 40;
  if (v6 < 0x27)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for CrashTerminationReasonData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217CF5960()
{
  result = qword_27CBA4560;
  if (!qword_27CBA4560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4560);
  }

  return result;
}

unint64_t sub_217CF59B8()
{
  result = qword_27CBA4568;
  if (!qword_27CBA4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4568);
  }

  return result;
}

unint64_t sub_217CF5A10()
{
  result = qword_27CBA4570;
  if (!qword_27CBA4570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4570);
  }

  return result;
}

NewsAnalytics::CrashData __swiftcall CrashData.init(exception:terminationReason:)(NewsAnalytics::CrashExceptionData_optional exception, NewsAnalytics::CrashTerminationReasonData_optional terminationReason)
{
  v3 = *terminationReason.value.namespace.value;
  *v2 = **&exception.value.type.value;
  *(v2 + 2) = v3;
  result.exception = exception;
  return result;
}

uint64_t sub_217CF5AF0()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6F69747065637865;
  }
}

uint64_t sub_217CF5B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69747065637865 && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD2580 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217CF5C20(uint64_t a1)
{
  v2 = sub_217CF5E48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CF5C5C(uint64_t a1)
{
  v2 = sub_217CF5E48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CrashData.encode(to:)(void *a1)
{
  sub_217CF6080(0, &qword_27CBA4578, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v12 = *(v1 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF5E48();
  sub_217D89E7C();
  v16 = v9;
  v15 = 0;
  sub_217CF48AC();
  sub_217D89C3C();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_217CF5768();
    sub_217D89C3C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217CF5E48()
{
  result = qword_27CBA4580;
  if (!qword_27CBA4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4580);
  }

  return result;
}

uint64_t CrashData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217CF6080(0, &qword_27CBA4588, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CF5E48();
  sub_217D89E5C();
  if (!v2)
  {
    v16 = 0;
    sub_217CF4854();
    sub_217D89B5C();
    v10 = v17;
    v14 = 1;
    sub_217CF5710();
    sub_217D89B5C();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    *(a2 + 2) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CF6080(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CF5E48();
    v7 = a3(a1, &type metadata for CrashData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CrashData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5)
  {
    if ((a2 + 33554187) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776971;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776971;
      }
    }
  }

  v4 = a1[1];
  if (v4 <= 0xB)
  {
    v5 = 11;
  }

  else
  {
    v5 = a1[1];
  }

  v6 = v5 - 12;
  if (v4 < 0xA)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for CrashData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554187) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xF4)
  {
    v3 = 0;
  }

  if (a2 > 0xF4)
  {
    *result = a2 - 245;
    *(result + 2) = (a2 - 245) >> 16;
    if (v3)
    {
      v4 = ((a2 - 245) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 11;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_217CF624C()
{
  result = qword_27CBA4590;
  if (!qword_27CBA4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4590);
  }

  return result;
}

unint64_t sub_217CF62A4()
{
  result = qword_27CBA4598;
  if (!qword_27CBA4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4598);
  }

  return result;
}

unint64_t sub_217CF62FC()
{
  result = qword_27CBA45A0;
  if (!qword_27CBA45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA45A0);
  }

  return result;
}

NewsAnalytics::CrashTerminationReasonNamespace_optional __swiftcall CrashTerminationReasonNamespace.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89D7C();

  v5 = 0;
  v6 = 21;
  switch(v3)
  {
    case 0:
      goto LABEL_35;
    case 1:
      v5 = 1;
      goto LABEL_35;
    case 2:
      v5 = 2;
      goto LABEL_35;
    case 3:
      v5 = 3;
      goto LABEL_35;
    case 4:
      v5 = 4;
      goto LABEL_35;
    case 5:
      v5 = 5;
      goto LABEL_35;
    case 6:
      v5 = 6;
      goto LABEL_35;
    case 7:
      v5 = 7;
      goto LABEL_35;
    case 8:
      v5 = 8;
      goto LABEL_35;
    case 9:
      v5 = 9;
      goto LABEL_35;
    case 10:
      v5 = 10;
      goto LABEL_35;
    case 11:
      v5 = 11;
      goto LABEL_35;
    case 12:
      v5 = 12;
      goto LABEL_35;
    case 13:
      v5 = 13;
      goto LABEL_35;
    case 14:
      v5 = 14;
      goto LABEL_35;
    case 15:
      v5 = 15;
      goto LABEL_35;
    case 16:
      v5 = 16;
      goto LABEL_35;
    case 17:
      v5 = 17;
      goto LABEL_35;
    case 18:
      v5 = 18;
      goto LABEL_35;
    case 19:
      v5 = 19;
      goto LABEL_35;
    case 20:
      v5 = 20;
LABEL_35:
      v6 = v5;
      break;
    case 21:
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    default:
      v6 = 39;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t CrashTerminationReasonNamespace.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x7073656D614E6F6ELL;
      break;
    case 2:
      result = 0x6D617374656ALL;
      break;
    case 3:
      result = 0x6C616E676973;
      break;
    case 4:
      result = 0x6E67697365646F63;
      break;
    case 5:
      result = 0x63617274676E6168;
      break;
    case 6:
      result = 1953719668;
      break;
    case 7:
      result = 1684830564;
      break;
    case 8:
      result = 0x63707862696CLL;
      break;
    case 9:
      result = 1667916399;
      break;
    case 0xA:
      result = 1667594341;
      break;
    case 0xB:
      result = 0x616F62746E6F7266;
      break;
    case 0xC:
      result = 0x6C6573756F726163;
      break;
    case 0xD:
      result = 6513524;
      break;
    case 0xE:
      result = 0x726374726F706572;
      break;
    case 0xF:
      result = 0x6D696E6165726F63;
      break;
    case 0x10:
      result = 0x7461676572676761;
      break;
    case 0x11:
      result = 0x62676E696E6E7572;
      break;
    case 0x12:
      result = 0x6B6C6177796B73;
      break;
    case 0x13:
      result = 0x73676E6974746573;
      break;
    case 0x14:
      result = 0x657473797362696CLL;
      break;
    case 0x15:
      result = 0x697461646E756F66;
      break;
    case 0x16:
      result = 0x676F646863746177;
      break;
    case 0x17:
      result = 0x6C6174656DLL;
      break;
    case 0x18:
      result = 0x74696B6863746177;
      break;
    case 0x19:
      result = 0x6472617567;
      break;
    case 0x1A:
      result = 0x636974796C616E61;
      break;
    case 0x1B:
      result = 0x786F62646E6173;
      break;
    case 0x1C:
      result = 0x7974697275636573;
      break;
    case 0x1D:
      result = 0xD000000000000010;
      break;
    case 0x1E:
      result = 0x7065637845636170;
      break;
    case 0x1F:
      result = 0x746F6F7465756C62;
      break;
    case 0x20:
      result = 0x6361705374726F70;
      break;
    case 0x21:
      result = 0x74696B626577;
      break;
    case 0x22:
      result = 0xD000000000000011;
      break;
    case 0x23:
      result = 0x61747465736F72;
      break;
    case 0x24:
      result = 0x6F69647561;
      break;
    case 0x25:
      result = 0x6B7974696C616572;
      break;
    case 0x26:
      result = 0x6C69614665746DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217CF6904()
{
  v0 = CrashTerminationReasonNamespace.rawValue.getter();
  v2 = v1;
  if (v0 == CrashTerminationReasonNamespace.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_217D89D4C();
  }

  return v5 & 1;
}

unint64_t sub_217CF69A4()
{
  result = qword_27CBA45A8;
  if (!qword_27CBA45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA45A8);
  }

  return result;
}

uint64_t sub_217CF69F8()
{
  sub_217D89E1C();
  CrashTerminationReasonNamespace.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CF6A60(uint64_t a1)
{
  CrashTerminationReasonNamespace.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217CF6AC4(uint64_t a1)
{
  sub_217D89E1C();
  CrashTerminationReasonNamespace.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217CF6B34@<X0>(unint64_t *a1@<X8>)
{
  result = CrashTerminationReasonNamespace.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CrashTerminationReasonNamespace(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDA)
  {
    goto LABEL_17;
  }

  if (a2 + 38 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 38) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 38;
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

      return (*a1 | (v4 << 8)) - 38;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 38;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v8 = v6 - 39;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CrashTerminationReasonNamespace(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDA)
  {
    v4 = 0;
  }

  if (a2 > 0xD9)
  {
    v5 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
    *result = a2 + 38;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217CF6D5C()
{
  result = qword_27CBA45B0;
  if (!qword_27CBA45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA45B0);
  }

  return result;
}

NewsAnalytics::InterfaceOrientation_optional __swiftcall InterfaceOrientation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t InterfaceOrientation.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x70616373646E616CLL;
  }

  if (*v0)
  {
    v1 = 0x7469617274726F70;
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