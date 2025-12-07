unint64_t sub_1D5F8EBC4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x656C797473;
    v7 = 0xD00000000000001ELL;
    if (a1 != 10)
    {
      v7 = 0xD000000000000013;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    if (a1 == 7)
    {
      v8 = 0xD000000000000018;
    }

    if (a1 == 6)
    {
      v8 = 0x696C696269736976;
    }

    if (a1 <= 8u)
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
    v1 = 0x696669746E656469;
    v2 = 0x656D617266;
    v3 = 0x676E697A69736572;
    if (a1 != 4)
    {
      v3 = 0x7865646E497ALL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (a1 != 1)
    {
      v4 = 0x6E65644965646F6ELL;
    }

    if (a1)
    {
      v1 = v4;
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

uint64_t sub_1D5F8ED58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D5F901B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D5F8ED80(uint64_t a1)
{
  v2 = sub_1D5F8F38C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F8EDBC(uint64_t a1)
{
  v2 = sub_1D5F8F38C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *FormatIssueCoverNodeLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 112));

  return v0;
}

uint64_t FormatIssueCoverNodeLayoutAttributes.__deallocating_deinit()
{
  FormatIssueCoverNodeLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatIssueCoverNodeLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5F8FBE8(0, &qword_1EC881AD0, sub_1D5F8F38C, &type metadata for FormatIssueCoverNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F8F38C();
  sub_1D7264B5C();
  LOBYTE(v18) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    sub_1D72643FC();
    LOBYTE(v18) = 2;
    sub_1D72643FC();
    swift_beginAccess();
    v12 = *(v3 + 80);
    v18 = *(v3 + 64);
    v19 = v12;
    LOBYTE(v23) = 3;
    type metadata accessor for CGRect(0);
    sub_1D5F90574(&qword_1EC8801E8, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_1D726443C();
    *&v18 = *(v3 + 96);
    LOBYTE(v23) = 4;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v18) = 5;
    sub_1D726442C();
    *&v18 = *(v3 + 112);
    LOBYTE(v23) = 6;
    sub_1D5EB1500(v18);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(v18);
    LOBYTE(v18) = 7;
    sub_1D726440C();
    v13 = *(v3 + 136);
    *&v18 = *(v3 + 128);
    BYTE8(v18) = v13;
    LOBYTE(v23) = 8;
    sub_1D5F8F434();
    sub_1D72643BC();
    v23 = *(v3 + 144);
    v22 = 9;
    type metadata accessor for FormatIssueCoverNodeStyle();
    sub_1D5F90574(&qword_1EDF0C2D0, 255, type metadata accessor for FormatIssueCoverNodeStyle, &protocol conformance descriptor for FormatIssueCoverNodeStyle);
    sub_1D72643BC();
    v14 = *(v3 + 168);
    v18 = *(v3 + 152);
    v19 = v14;
    v15 = *(v3 + 200);
    v20 = *(v3 + 184);
    v21 = v15;
    v17 = 10;
    sub_1D5EA5368();
    sub_1D726443C();
    *&v18 = *(v3 + 216);
    v17 = 11;
    sub_1D5F8FBE8(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    sub_1D5F8FCA4(&qword_1EC881AF0, sub_1D5F8F488, MEMORY[0x1E69E64F0]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D5F8F38C()
{
  result = qword_1EC881AD8;
  if (!qword_1EC881AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881AD8);
  }

  return result;
}

unint64_t sub_1D5F8F3E0()
{
  result = qword_1EC881AE0;
  if (!qword_1EC881AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881AE0);
  }

  return result;
}

unint64_t sub_1D5F8F434()
{
  result = qword_1EDF0AFC0;
  if (!qword_1EDF0AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AFC0);
  }

  return result;
}

unint64_t sub_1D5F8F488()
{
  result = qword_1EC881AF8;
  if (!qword_1EC881AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881AF8);
  }

  return result;
}

uint64_t FormatIssueCoverNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatIssueCoverNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

void *FormatIssueCoverNodeLayoutAttributes.init(from:)(void *a1)
{
  sub_1D5F8FBE8(0, &qword_1EC881B00, sub_1D5F8F38C, &type metadata for FormatIssueCoverNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v17 = *(v4 - 8);
  v18 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F8F38C();
  v19 = v7;
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v17;
    LOBYTE(v21) = 0;
    *(v1 + 16) = sub_1D72642BC();
    *(v1 + 24) = v9;
    LOBYTE(v21) = 1;
    *(v1 + 32) = sub_1D72642BC();
    *(v1 + 40) = v11;
    LOBYTE(v21) = 2;
    *(v1 + 48) = sub_1D72642BC();
    *(v1 + 56) = v12;
    type metadata accessor for CGRect(0);
    LOBYTE(v20) = 3;
    sub_1D5F90574(&qword_1EDF1A740, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    sub_1D726431C();
    v13 = v22;
    *(v1 + 64) = v21;
    *(v1 + 80) = v13;
    LOBYTE(v20) = 4;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v1 + 96) = v21;
    LOBYTE(v21) = 5;
    *(v1 + 104) = sub_1D72642FC();
    LOBYTE(v20) = 6;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v1 + 112) = v21;
    LOBYTE(v21) = 7;
    *(v1 + 120) = sub_1D72642CC() & 1;
    LOBYTE(v20) = 8;
    sub_1D5C6F27C();
    sub_1D726427C();
    v14 = BYTE8(v21);
    *(v1 + 128) = v21;
    *(v1 + 136) = v14;
    type metadata accessor for FormatIssueCoverNodeStyle();
    LOBYTE(v20) = 9;
    sub_1D5F90574(&qword_1EDF0C2C8, 255, type metadata accessor for FormatIssueCoverNodeStyle, &protocol conformance descriptor for FormatIssueCoverNodeStyle);
    sub_1D726427C();
    *(v1 + 144) = v21;
    v26 = 10;
    sub_1D5EA5310();
    sub_1D726431C();
    v15 = v22;
    *(v1 + 152) = v21;
    *(v1 + 168) = v15;
    v16 = v24;
    *(v1 + 184) = v23;
    *(v1 + 200) = v16;
    sub_1D5F8FBE8(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    v25 = 11;
    sub_1D5F8FCA4(&qword_1EC881B10, sub_1D5F8FD48, MEMORY[0x1E69E6510]);
    sub_1D726431C();
    (*(v8 + 8))(v19, v18);
    *(v1 + 216) = v20;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

void sub_1D5F8FBE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D5F8FC50()
{
  result = qword_1EC881B08;
  if (!qword_1EC881B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B08);
  }

  return result;
}

uint64_t sub_1D5F8FCA4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5F8FBE8(255, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5F8FD48()
{
  result = qword_1EC881B18;
  if (!qword_1EC881B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B18);
  }

  return result;
}

double sub_1D5F8FE08()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 64);
}

void *sub_1D5F8FF30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatIssueCoverNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D5F8FFAC(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  sub_1D5F90574(&qword_1EC881B58, a2, type metadata accessor for FormatIssueCoverNodeLayoutAttributes, &protocol conformance descriptor for FormatIssueCoverNodeLayoutAttributes);

  return sub_1D725A24C();
}

unint64_t sub_1D5F900AC()
{
  result = qword_1EC881B40;
  if (!qword_1EC881B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B40);
  }

  return result;
}

unint64_t sub_1D5F90104()
{
  result = qword_1EC881B48;
  if (!qword_1EC881B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B48);
  }

  return result;
}

unint64_t sub_1D5F9015C()
{
  result = qword_1EC881B50;
  if (!qword_1EC881B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B50);
  }

  return result;
}

uint64_t sub_1D5F901B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C05F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644965646F6ELL && a2 == 0xEE00726569666974 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E697A69736572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7865646E497ALL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C48A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C0340 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D73C48C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C48E0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1D5F90574(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t URLHandlerPattern.Base.init(builder:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

int *FormatArrangementCuration.init(content:subtype:allowHeroCuration:scoringContext:headlines:recipes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, __int16 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = *a5;
  sub_1D5F906A0(a1, a9);
  result = type metadata accessor for FormatArrangementCuration(0, a8, a10, v18);
  v20 = (a9 + result[9]);
  *v20 = a2;
  v20[1] = a3;
  *(a9 + result[10]) = a4;
  *(a9 + result[11]) = v17;
  *(a9 + result[12]) = a6;
  *(a9 + result[13]) = a7;
  return result;
}

uint64_t sub_1D5F906A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D5F9071C(uint64_t a1)
{
  type metadata accessor for FormatContent(319);
  if (v1 <= 0x3F)
  {
    sub_1D5B9F0A4(319, &qword_1EDF3C810, sub_1D5B5D6A0);
    if (v2 <= 0x3F)
    {
      sub_1D5B9F0A4(319, &qword_1EDF1AE20, sub_1D5B7AF6C);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t _s8NewsFeed26FormatTextAdjustmentMetricV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[16];
  v4 = a2[16];
  if (_s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(*(a1 + 1), *(a2 + 1)))
  {
    return v3 ^ v4 ^ 1u;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D5F909A8(uint64_t a1)
{
  result = sub_1D5F909D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F909D0()
{
  result = qword_1EC881B60;
  if (!qword_1EC881B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B60);
  }

  return result;
}

unint64_t sub_1D5F90A64()
{
  result = qword_1EDF23178;
  if (!qword_1EDF23178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF23178);
  }

  return result;
}

unint64_t sub_1D5F90AB8()
{
  result = qword_1EDF0B470;
  if (!qword_1EDF0B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B470);
  }

  return result;
}

unint64_t sub_1D5F90B0C()
{
  result = qword_1EC881B68;
  if (!qword_1EC881B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B68);
  }

  return result;
}

unint64_t sub_1D5F90B64()
{
  result = qword_1EC881B70;
  if (!qword_1EC881B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B70);
  }

  return result;
}

unint64_t sub_1D5F90BB8(uint64_t a1)
{
  result = sub_1D5F90BE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F90BE0()
{
  result = qword_1EC881B78;
  if (!qword_1EC881B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B78);
  }

  return result;
}

unint64_t sub_1D5F90C74()
{
  result = qword_1EDF304B0;
  if (!qword_1EDF304B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF304B0);
  }

  return result;
}

unint64_t sub_1D5F90CC8()
{
  result = qword_1EDF113B0;
  if (!qword_1EDF113B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF113B0);
  }

  return result;
}

unint64_t sub_1D5F90D20()
{
  result = qword_1EC881B80;
  if (!qword_1EC881B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B80);
  }

  return result;
}

unint64_t sub_1D5F90D74(uint64_t a1)
{
  result = sub_1D5F90D9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F90D9C()
{
  result = qword_1EC881B88;
  if (!qword_1EC881B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B88);
  }

  return result;
}

uint64_t sub_1D5F90E30(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F90E84()
{
  result = qword_1EDF233B0;
  if (!qword_1EDF233B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF233B0);
  }

  return result;
}

unint64_t sub_1D5F90ED8()
{
  result = qword_1EDF0B570;
  if (!qword_1EDF0B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B570);
  }

  return result;
}

uint64_t FormatQueryParameter.name.getter()
{
  v1 = *v0;

  return v1;
}

double FormatQueryParameter.value.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

BOOL static FormatQueryParameter.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {
    v5 = *(v2 + 16) == *(v3 + 16) && *(v2 + 24) == *(v3 + 24);
    if (v5 || (sub_1D72646CC() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_1D5F91020(uint64_t a1)
{
  result = sub_1D5F91048();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F91048()
{
  result = qword_1EC881B90;
  if (!qword_1EC881B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B90);
  }

  return result;
}

uint64_t sub_1D5F9109C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_1D72646CC(), result = 0, (v5 & 1) != 0))
  {
    if (*(v2 + 16) == *(v3 + 16) && *(v2 + 24) == *(v3 + 24))
    {
      return 1;
    }

    else
    {

      return sub_1D72646CC();
    }
  }

  return result;
}

unint64_t sub_1D5F91128(void *a1)
{
  a1[1] = sub_1D5C6838C();
  a1[2] = sub_1D5C683E0();
  result = sub_1D5F91160();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F91160()
{
  result = qword_1EC881B98;
  if (!qword_1EC881B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881B98);
  }

  return result;
}

unint64_t sub_1D5F91238()
{
  result = qword_1EC881BA0;
  if (!qword_1EC881BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881BA0);
  }

  return result;
}

uint64_t sub_1D5F9128C()
{
  sub_1D7264A0C();
  sub_1D7264A2C();
  return sub_1D7264A5C();
}

uint64_t sub_1D5F91324(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D7264A2C();
  return sub_1D7264A5C();
}

unint64_t sub_1D5F9149C()
{
  result = qword_1EC881BA8[0];
  if (!qword_1EC881BA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC881BA8);
  }

  return result;
}

uint64_t static FormatCodingEmptyFileReferenceCollectionStrategy.defaultValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, void *x8_0@<X8>)
{
  type metadata accessor for FormatFileReference(0, a1, a2, a4);
  v6 = sub_1D726275C();

  return FormatFileReferenceCollection.init(references:)(v6, x8_0);
}

BOOL static FormatCodingEmptyFileReferenceCollectionStrategy.shouldEncode(wrappedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FormatFileReference(255, a2, a3, a4);
  sub_1D72627FC();
  swift_getWitnessTable();
  return (sub_1D7262CCC() & 1) == 0;
}

uint64_t sub_1D5F915E8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

double static Commands.UserActions.report.getter()
{
  if (qword_1EDF3B040 != -1)
  {
    swift_once();
  }

  return result;
}

char *FormatCommandActionValue.deinit()
{
  v1 = *v0;

  v2 = *(*v0 + 104);
  v5 = type metadata accessor for FormatCommandActionValue.DefaultValue(0, *(v1 + 80), v3, v4);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  return v0;
}

uint64_t FormatCommandActionValue.__deallocating_deinit()
{
  FormatCommandActionValue.deinit();

  return swift_deallocClassInstance();
}

uint64_t static FormatCommandActionValue<A>.== infix(_:_:)(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[2];
  v5 = a2[2];
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v8 = *(v4 + 16) == v6 && *(v4 + 24) == v7;
  if (v8 || (sub_1D72646CC()) && (type metadata accessor for FormatCommandActionValue.CaseValue(0, *(v3 + 80), v6, v7), swift_getWitnessTable(), (sub_1D726280C()))
  {
    v9 = sub_1D7261FBC();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D5F918F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v17 = *a1;
  v18 = v6;
  v19 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v14 = *a2;
  v15 = v8;
  v16 = v9;
  sub_1D5D03180(v17, v6, v7);
  sub_1D5D03180(v14, v8, v9);
  v10 = _s8NewsFeed18FormatCommandStateO2eeoiySbAC_ACtFZ_0(&v17, &v14);
  sub_1D5D07BA8(v14, v15, v16);
  sub_1D5D07BA8(v17, v18, v19);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FormatCommandActionValue.CaseValue(0, a3, v11, v12);
  return sub_1D7261FBC() & 1;
}

uint64_t sub_1D5F919E8(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1D5F91AC8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5F91B48(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5F91BD0(char *a1)
{
  v2 = a1[1];
  v10 = *a1;
  v3 = sub_1D70B50DC(&v10);
  v4 = [objc_opt_self() effectWithStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  v6 = [objc_opt_self() effectForBlurEffect:v4 style:v2];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  v8 = [v5 contentView];
  [v8 addSubview_];

  *(v1 + 16) = v5;
  *(v1 + 24) = v7;
  return v1;
}

id sub_1D5F91CE8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(v5 + 16);
  sub_1D726344C();
  if (*(v5 + 24))
  {
    sub_1D726344C();
  }

  if (v12 <= 0xFD)
  {
    if ((v12 & 0x80) != 0)
    {
      v24.origin.x = a2;
      v24.origin.y = a3;
      v24.size.width = a4;
      v24.size.height = a5;
      Height = CGRectGetHeight(v24);
      v25.origin.x = a2;
      v25.origin.y = a3;
      v25.size.width = a4;
      v25.size.height = a5;
      Width = CGRectGetWidth(v25);
      if (Width >= Height)
      {
        Width = Height;
      }

      v15 = Width * 0.5;
      v10 = &unk_1F50F6F88;
      LOBYTE(v12) = v11;
      v16 = qword_1F50F6F98;
      if (qword_1F50F6F98)
      {
LABEL_9:
        v17 = 0;
        v18 = 32;
        do
        {
          v19 = qword_1D7288BB8[*(v10 + v18)];
          if ((v19 & ~v17) == 0)
          {
            v19 = 0;
          }

          v17 |= v19;
          ++v18;
          --v16;
        }

        while (v16);

        if (v17)
        {
          if ((v17 & 2) != 0)
          {
            v20 = 3;
            if ((v17 & 4) == 0)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v20 = 1;
            if ((v17 & 4) == 0)
            {
              goto LABEL_24;
            }
          }
        }

        else if ((v17 & 2) != 0)
        {
          v20 = 2;
          if ((v17 & 4) == 0)
          {
LABEL_24:
            if ((v17 & 8) != 0)
            {
              v20 |= 8uLL;
            }

            goto LABEL_26;
          }
        }

        else
        {
          v20 = 0;
          if ((v17 & 4) == 0)
          {
            goto LABEL_24;
          }
        }

        v20 |= 4uLL;
        goto LABEL_24;
      }
    }

    else
    {
      v15 = *&v11;
      sub_1D5ED34C4(v11, v10, v12);
      v16 = v10[2];
      if (v16)
      {
        goto LABEL_9;
      }
    }

    v20 = 0;
LABEL_26:
    [v13 _setCornerRadius_continuous_maskedCorners_];
    return sub_1D726348C();
  }

  return [v13 _setCornerRadius_continuous_maskedCorners_];
}

uint64_t FormatVisualEffectContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed18PuzzleLaunchActionO(uint64_t a1)
{
  if ((*(a1 + 19) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 19) & 3;
  }
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D5F91FEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 20))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 19);
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

uint64_t sub_1D5F92034(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 19) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D5F92078(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 18) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
  }

  *(result + 19) = a2;
  return result;
}

uint64_t static FormatRange.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1D7261FBC())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for FormatRange(0, v12);
    v10 = sub_1D7261FBC();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1D5F921B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(*(a3 - 8) + 32);
  v13(a7, a1);
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v14 = type metadata accessor for FormatRange(0, v16);
  return (v13)(a7 + *(v14 + 52), a2, a3);
}

uint64_t FormatRange.closedRange.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v27 - v14;
  v16 = *(a1 + 52);
  v17 = *(a1 + 32);
  result = sub_1D7261F7C();
  if (result)
  {
    v19 = *(v6 - 8);
    v20 = v19;
    v27[0] = v16;
    v21 = a2;
    v22 = *(v19 + 16);
    v27[1] = v17;
    v22(v15, v3, v6);
    v22(&v15[*(TupleTypeMetadata2 + 48)], v3 + v27[0], v6);
    (*(v8 + 16))(v11, v15, TupleTypeMetadata2);
    v23 = *(TupleTypeMetadata2 + 48);
    v27[0] = *(v20 + 32);
    (v27[0])(v21, v11, v6);
    v24 = *(v20 + 8);
    v24(&v11[v23], v6);
    (*(v8 + 32))(v11, v15, TupleTypeMetadata2);
    v25 = *(TupleTypeMetadata2 + 48);
    v26 = sub_1D7261FAC();
    (v27[0])(v21 + *(v26 + 36), &v11[v25], v6);
    return (v24)(v11, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5F9252C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5F92568(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D5F925E8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

NewsFeed::SavingCommandState_optional __swiftcall SavingCommandState.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1D72641CC();

  if (v1 == 1)
  {
    v2.value = NewsFeed_SavingCommandState_notSaved;
  }

  else
  {
    v2.value = NewsFeed_SavingCommandState_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t SavingCommandState.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6465766153746F6ELL;
  }

  else
  {
    return 0x6465766173;
  }
}

uint64_t sub_1D5F926E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6465766153746F6ELL;
  }

  else
  {
    v3 = 0x6465766173;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6465766153746F6ELL;
  }

  else
  {
    v5 = 0x6465766173;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D5F92784()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D5F92804(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D5F92870(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D5F928EC(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D5F9294C(uint64_t *a1@<X8>)
{
  v2 = 0x6465766173;
  if (*v1)
  {
    v2 = 0x6465766153746F6ELL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D5F92988(uint64_t a1)
{
  v2 = sub_1D5F94510();

  return MEMORY[0x1EEE48380](a1, v2);
}

uint64_t SavingCommandState.title(context:)(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = 0x657069636552;
  if ((*(a1 + 8) & 1) == 0)
  {
    v3 = 0x79726F7453;
  }

  v4 = 0xE600000000000000;
  if ((*(a1 + 8) & 1) == 0)
  {
    v4 = 0xE500000000000000;
  }

  if (v2 == 255)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  if (v2 == 255)
  {
    v6 = 0xE000000000000000;
  }

  else
  {
    v6 = v4;
  }

  MEMORY[0x1DA6F9910](v5, v6);
  v7 = sub_1D726210C();
  v9 = v8;

  MEMORY[0x1DA6F9910](v7, v9);

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_1D725811C();

  return v12;
}

uint64_t SaveCommandContext.init(data:origin:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(type metadata accessor for SaveCommandContext(0, a3, a3, a4) + 28);
  result = (*(*(a3 - 8) + 32))(a5, a1, a3);
  *(a5 + v9) = a2;
  return result;
}

uint64_t sub_1D5F92D50(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a2 + 4);
  v5 = *a2;
  v6 = v3;
  return SavingCommandState.title(context:)(&v5, v2);
}

id sub_1D5F92D8C(_BYTE *a1)
{
  if (*a1)
  {
    if (qword_1EDF1BBD8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDF1BBE0;
  }

  else
  {
    if (qword_1EC87DAD0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EC895158;
  }

  v2 = *v1;

  return v2;
}

uint64_t static SwipeAction.save(headline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_1D725CC8C();
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D725CC9C();
  v7 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F93C28(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  sub_1D5F945D0(0, &unk_1EDF3B620, MEMORY[0x1E69D7AE0]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  sub_1D5F945D0(0, &qword_1EDF171C8, MEMORY[0x1E69D7AD8]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  if (qword_1EDF3AE18 != -1)
  {
    swift_once();
  }

  v26 = a1;
  v27 = 1024;
  v25 = 1;
  sub_1D5B66B90();

  swift_unknownObjectRetain();
  sub_1D725DA9C();
  v24 = 1;
  sub_1D725DABC();
  v23 = 1;
  sub_1D725DAFC();
  (*(v7 + 104))(v10, *MEMORY[0x1E69D7628], v19);
  (*(v20 + 104))(v6, *MEMORY[0x1E69D7620], v21);
  return sub_1D725CCBC();
}

id sub_1D5F931D0()
{
  v0 = [objc_opt_self() systemOrangeColor];

  return v0;
}

void *sub_1D5F93210(_BYTE *a1)
{
  if (*a1)
  {
    if (qword_1EDF1BBD8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDF1BBE0;
  }

  else
  {
    if (qword_1EC87DAD0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EC895158;
  }

  v2 = *v1;
  v3 = [objc_opt_self() whiteColor];
  v4 = _s8NewsFeed6ImagesC8template5image4withSo7UIImageCAH_So7UIColorCtFZ_0(v2, v3);

  return v4;
}

void sub_1D5F932EC(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    v3 = objc_opt_self();
    v4 = [v3 mainBundle];
    v5 = [v4 bundleIdentifier];

    if (v5)
    {
      v6 = sub_1D726207C();
      v8 = v7;

      if (v6 == 0x6C7070612E6D6F63 && v8 == 0xEE007377656E2E65)
      {
      }

      else
      {
        sub_1D72646CC();
      }
    }

    type metadata accessor for Localized();
    v11 = [v3 bundleForClass_];
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
  }

  v12 = sub_1D725811C();
  v14 = v13;

  *a2 = v12;
  a2[1] = v14;
}

void sub_1D5F9356C(uint64_t *a2@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_1D725811C();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_1D5F93694(_BYTE *a1)
{
  if (*a1)
  {
    if (qword_1EDF1BBD8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDF1BBE0;
  }

  else
  {
    if (qword_1EC87DAD0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EC895158;
  }

  v2 = *v1;

  return sub_1D725DFDC();
}

uint64_t static KeyCommandItem.save(headline:)(uint64_t a1)
{
  if (qword_1EDF3AE18 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  return sub_1D725D15C();
}

uint64_t static KeyCommandItem.save(recipe:)(void *a1)
{
  if (qword_1EDF3AE18 != -1)
  {
    swift_once();
  }

  v2 = a1;
  return sub_1D725D15C();
}

uint64_t SaveCommandOrigin.hashValue.getter(unsigned __int8 a1)
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a1);
  return sub_1D7264A5C();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE4save7content13commandOriginAcD11SaveContentO_AD0l7CommandK0OtFZ_0(uint64_t *a1, int a2, __n128 a3)
{
  sub_1D5F945D0(0, &qword_1EDF3B548, MEMORY[0x1E69D7C80]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  sub_1D5F945D0(0, &unk_1EDF3B620, MEMORY[0x1E69D7AE0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  sub_1D5F94634(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  if (qword_1EDF3AE18 != -1)
  {
    swift_once();
  }

  sub_1D5F946C4(v10, v11);
  sub_1D5B68A1C(0, qword_1EDF2D128, &type metadata for SaveContent, type metadata accessor for SaveCommandContext);
  sub_1D5B66B90();
  sub_1D725E95C();
  sub_1D725DABC();
  sub_1D725DF0C();
  sub_1D725D3DC();
  swift_allocObject();
  return sub_1D725D3CC();
}

void sub_1D5F93C28(uint64_t a1)
{
  if (!qword_1EDF17130)
  {
    sub_1D5B66B90();
    v1 = sub_1D725DB1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17130);
    }
  }
}

uint64_t _s5TeaUI15SharingActivityC8NewsFeedE4save8headlineACSo19FCHeadlineProviding_p_tFZ_0(uint64_t a1)
{
  sub_1D5F94564(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  sub_1D5F93C28(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  if (qword_1EDF3AE18 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  sub_1D726203C();
  sub_1D5B66B90();
  sub_1D725DAFC();
  sub_1D725DFEC();
  sub_1D725DAFC();
  sub_1D725D5DC();
  swift_allocObject();
  return sub_1D725D5BC();
}

uint64_t _s5TeaUI15SharingActivityC8NewsFeedE4save6recipeACSo8FCRecipeC_tFZ_0(void *a1)
{
  sub_1D5F94564(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D5F93C28(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  if (qword_1EDF3AE18 != -1)
  {
    swift_once();
  }

  v6 = a1;
  sub_1D726203C();
  sub_1D5B66B90();
  sub_1D725DAFC();
  sub_1D725DFEC();
  sub_1D725DAFC();
  sub_1D725D5DC();
  swift_allocObject();
  return sub_1D725D5BC();
}

unint64_t sub_1D5F9407C()
{
  result = qword_1EDF2D100;
  if (!qword_1EDF2D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D100);
  }

  return result;
}

unint64_t sub_1D5F940D8()
{
  result = qword_1EC881C38;
  if (!qword_1EC881C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881C38);
  }

  return result;
}

uint64_t sub_1D5F94168(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFB)
  {
    v7 = 251;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFB)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      v16 = v15 >= 4;
      v17 = v15 - 4;
      if (!v16)
      {
        v17 = -1;
      }

      if (v17 + 1 >= 2)
      {
        return v17;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_1D5F942D8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFB)
  {
    v7 = 251;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFB)
      {
        *(result + v8) = a2 + 4;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

unint64_t sub_1D5F94510()
{
  result = qword_1EDF2D0F8;
  if (!qword_1EDF2D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D0F8);
  }

  return result;
}

void sub_1D5F94564(uint64_t a1)
{
  if (!qword_1EC881C40)
  {
    sub_1D725DFEC();
    sub_1D5B66B90();
    v1 = sub_1D725DB1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC881C40);
    }
  }
}

void sub_1D5F945D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5B66B90();
    v7 = a3(a1, &type metadata for SavingCommandState, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D5F94634(uint64_t a1)
{
  if (!qword_1EC881C50)
  {
    sub_1D5B68A1C(255, qword_1EDF2D128, &type metadata for SaveContent, type metadata accessor for SaveCommandContext);
    sub_1D5B66B90();
    v1 = sub_1D725E96C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC881C50);
    }
  }
}

id sub_1D5F946C4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void sub_1D5F946D0(uint64_t a1)
{
  if (!qword_1EDF3B420)
  {
    sub_1D5B68A1C(255, qword_1EDF2D128, &type metadata for SaveContent, type metadata accessor for SaveCommandContext);
    v1 = sub_1D725F79C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B420);
    }
  }
}

void sub_1D5F9474C(uint64_t a1)
{
  if (!qword_1EDF3B7C8)
  {
    sub_1D5B68A1C(255, qword_1EDF2D128, &type metadata for SaveContent, type metadata accessor for SaveCommandContext);
    sub_1D5B66B90();
    v1 = sub_1D725CDBC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B7C8);
    }
  }
}

uint64_t sub_1D5F947E4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FeedSponsorshipBannerAd(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v23 - v15;
  v17 = *v2;
  sub_1D67524A0(*(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), v8);
  if (v3)
  {

    v18 = sub_1D72608BC();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  }

  else
  {
    v19 = *(v5 + 20);
    v20 = sub_1D72608BC();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v12, &v8[v19], v20);
    sub_1D5CF27AC(v8, type metadata accessor for FeedSponsorshipBannerAd);
    (*(v21 + 56))(v12, 0, 1, v20);
  }

  sub_1D5CEB57C(v12, v16);
  v24 = v17;
  sub_1D6311700(v16);
  sub_1D725BC1C();
  return sub_1D5CF27AC(v16, sub_1D5B49800);
}

uint64_t sub_1D5F94A50(uint64_t a1, char a2)
{
  v4 = type metadata accessor for FeedSponsorshipBannerAd(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v21[-v14];
  sub_1D67524A0(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v7);
  v16 = *(v4 + 20);
  v17 = sub_1D72608BC();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v11, &v7[v16], v17);
  sub_1D5CF27AC(v7, type metadata accessor for FeedSponsorshipBannerAd);
  (*(v18 + 56))(v11, 0, 1, v17);
  sub_1D5CEB57C(v11, v15);
  v21[7] = a2;
  v19 = sub_1D6311700(v15);
  sub_1D5CF27AC(v15, sub_1D5B49800);
  return v19 & 1;
}

unint64_t sub_1D5F94CE4(uint64_t a1)
{
  result = sub_1D5F94D0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F94D0C()
{
  result = qword_1EC881C58;
  if (!qword_1EC881C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881C58);
  }

  return result;
}

unint64_t sub_1D5F94D60(void *a1)
{
  a1[1] = sub_1D5F94D98();
  a1[2] = sub_1D5F94DEC();
  result = sub_1D5F94E40();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F94D98()
{
  result = qword_1EDF1DF18;
  if (!qword_1EDF1DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1DF18);
  }

  return result;
}

unint64_t sub_1D5F94DEC()
{
  result = qword_1EDF076C8[0];
  if (!qword_1EDF076C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF076C8);
  }

  return result;
}

unint64_t sub_1D5F94E40()
{
  result = qword_1EC881C60;
  if (!qword_1EC881C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881C60);
  }

  return result;
}

unint64_t sub_1D5F94EB4(uint64_t a1)
{
  result = sub_1D5F94EDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F94EDC()
{
  result = qword_1EC881C68[0];
  if (!qword_1EC881C68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC881C68);
  }

  return result;
}

unint64_t sub_1D5F94F30()
{
  result = qword_1EDF24860;
  if (!qword_1EDF24860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24860);
  }

  return result;
}

unint64_t sub_1D5F94F84()
{
  result = qword_1EDF0BFF8;
  if (!qword_1EDF0BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BFF8);
  }

  return result;
}

uint64_t sub_1D5F94FF0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1D6BA20FC(v0[4], v2, v1);
  if ((v1 & 0x1000000000000000) != 0)
  {
    return sub_1D7263D3C();
  }

  v4 = v3 >> 16;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v9[0] = v2;
    v9[1] = v1 & 0xFFFFFFFFFFFFFFLL;
    v6 = v9 + v4;
  }

  else
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      v5 = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v5 = sub_1D7263E5C();
    }

    v6 = (v5 + v4);
  }

  result = *v6;
  if (*v6 < 0)
  {
    v8 = (__clz(result ^ 0xFF) - 24);
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        return ((result & 0xF) << 12) | ((v6[1] & 0x3F) << 6) | v6[2] & 0x3F;
      }

      else
      {
        return ((result & 0xF) << 18) | ((v6[1] & 0x3F) << 12) | ((v6[2] & 0x3F) << 6) | v6[3] & 0x3F;
      }
    }

    else if (v8 != 1)
    {
      return v6[1] & 0x3F | ((result & 0x1F) << 6);
    }
  }

  return result;
}

uint64_t sub_1D5F9510C(uint64_t result)
{
  if (result < 0)
  {
LABEL_37:
    __break(1u);
  }

  else if (result)
  {
    v2 = v1[2];
    v3 = v1[3];
    if ((v3 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFLL;
    }

    v5 = (v2 >> 59) & 1;
    if ((v3 & 0x1000000000000000) == 0)
    {
      LOBYTE(v5) = 1;
    }

    v6 = 4 << v5;
    do
    {
      v7 = v1[4];
      if (4 * v4 <= v7 >> 14)
      {
        break;
      }

      if ((v1[4] & 0xCLL) == v6 || (v1[4] & 1) == 0)
      {
        if ((v1[4] & 0xCLL) == v6)
        {
          v18 = result;
          v7 = sub_1D6BA2080(v7, v2, v3);
          result = v18;
          if (v4 <= v7 >> 16)
          {
            goto LABEL_36;
          }
        }

        else if (v4 <= v7 >> 16)
        {
          goto LABEL_36;
        }

        if ((v7 & 1) == 0)
        {
          v16 = result;
          v9 = sub_1D6BA2208(v7, v2, v3);
          result = v16;
          v7 = v7 & 0xC | v9 & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else if (v4 <= v7 >> 16)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if ((v3 & 0x1000000000000000) != 0)
      {
        v17 = result;
        v15 = sub_1D726218C();
        result = v17;
      }

      else
      {
        v10 = v7 >> 16;
        if ((v3 & 0x2000000000000000) != 0)
        {
          v20[0] = v2;
          v20[1] = v3 & 0xFFFFFFFFFFFFFFLL;
          v12 = *(v20 + v10);
        }

        else
        {
          v11 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v2 & 0x1000000000000000) == 0)
          {
            v19 = result;
            v11 = sub_1D7263E5C();
            result = v19;
          }

          v12 = *(v11 + v10);
        }

        v13 = v12;
        v14 = __clz(v12 ^ 0xFF) - 24;
        if (v13 >= 0)
        {
          LOBYTE(v14) = 1;
        }

        v15 = ((v10 + v14) << 16) | 5;
      }

      v1[4] = v15;
      --result;
    }

    while (result);
  }

  return result;
}

unint64_t sub_1D5F952D8(unint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v56 = v3;
  if (!v3)
  {
    return 1;
  }

  v4 = a2;
  v5 = 0;
  v6 = v2[4];
  v54 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v55 = a2 & 0xFFFFFFFFFFFFFFLL;
  while (1)
  {
    if ((v4 & 0x1000000000000000) != 0)
    {
      v9 = sub_1D7263D3C();
      v11 = v10;
    }

    else
    {
      if ((v4 & 0x2000000000000000) != 0)
      {
        v58 = a1;
        v59 = v55;
        v8 = &v58 + v5;
      }

      else
      {
        v7 = v54;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v7 = sub_1D7263E5C();
        }

        v8 = (v7 + v5);
      }

      v9 = *v8;
      if ((*v8 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      v37 = (__clz(v9 ^ 0xFF) - 24);
      if (v37 > 2)
      {
        if (v37 == 3)
        {
          v9 = ((v9 & 0xF) << 12) | ((v8[1] & 0x3F) << 6) | v8[2] & 0x3F;
          v11 = 3;
        }

        else
        {
          v9 = ((v9 & 0xF) << 18) | ((v8[1] & 0x3F) << 12) | ((v8[2] & 0x3F) << 6) | v8[3] & 0x3F;
          v11 = 4;
        }

        goto LABEL_16;
      }

      if (v37 == 1)
      {
LABEL_15:
        v11 = 1;
      }

      else
      {
        v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        v11 = 2;
      }
    }

LABEL_16:
    v12 = v2[2];
    v13 = v2[3];
    if ((v13 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(v13) & 0xF;
    }

    else
    {
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v6 >> 14 >= 4 * v14)
    {
      return 0;
    }

    v15 = v4;
    v16 = (v12 >> 59) & 1;
    if ((v13 & 0x1000000000000000) == 0)
    {
      LOBYTE(v16) = 1;
    }

    v17 = v6 & 0xC;
    v18 = 4 << v16;
    v19 = (v6 & 1) == 0 || v17 == v18;
    v20 = v19;
    if (v19)
    {
      break;
    }

    v22 = v6 >> 16;
    result = v6;
    if (v6 >> 16 >= v14)
    {
      goto LABEL_79;
    }

LABEL_36:
    if ((v13 & 0x1000000000000000) != 0)
    {
      v46 = v13;
      v51 = v12;
      v38 = v11;
      result = sub_1D7263D3C();
      v11 = v38;
      v13 = v46;
      v12 = v51;
    }

    else
    {
      if ((v13 & 0x2000000000000000) != 0)
      {
        v58 = v12;
        v59 = v13 & 0xFFFFFFFFFFFFFFLL;
        v26 = &v58 + v22;
      }

      else
      {
        if ((v12 & 0x1000000000000000) != 0)
        {
          v25 = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v48 = v13;
          v53 = v12;
          v44 = v11;
          v25 = sub_1D7263E5C();
          v11 = v44;
          v13 = v48;
          v12 = v53;
        }

        v26 = (v25 + v22);
      }

      result = *v26;
      if (*v26 < 0)
      {
        v34 = (__clz(result ^ 0xFF) - 24);
        if (v34 > 2)
        {
          if (v34 == 3)
          {
            result = ((result & 0xF) << 12) | ((v26[1] & 0x3F) << 6) | v26[2] & 0x3F;
          }

          else
          {
            result = ((result & 0xF) << 18) | ((v26[1] & 0x3F) << 12) | ((v26[2] & 0x3F) << 6) | v26[3] & 0x3F;
          }
        }

        else if (v34 != 1)
        {
          result = v26[1] & 0x3F | ((result & 0x1F) << 6);
        }
      }
    }

    if (v9 != result)
    {
      return 0;
    }

    if (v20)
    {
      if (v17 == v18)
      {
        v40 = v6;
        v41 = v12;
        v42 = v13;
        v43 = v11;
        result = sub_1D6BA2080(v40, v12, v13);
        v11 = v43;
        v12 = v41;
        v13 = v42;
        v6 = result;
        if (v14 <= result >> 16)
        {
          goto LABEL_81;
        }
      }

      else if (v14 <= v6 >> 16)
      {
        goto LABEL_81;
      }

      v4 = v15;
      if ((v6 & 1) == 0)
      {
        v50 = v12;
        v27 = v13;
        v28 = v11;
        v29 = sub_1D6BA2208(v6, v12, v13);
        v11 = v28;
        v12 = v50;
        v13 = v27;
        v6 = v6 & 0xC | v29 & 0xFFFFFFFFFFFFFFF3 | 1;
      }
    }

    else
    {
      v4 = v15;
      if (v14 <= v6 >> 16)
      {
        goto LABEL_80;
      }
    }

    v30 = v11;
    if ((v13 & 0x1000000000000000) != 0)
    {
      v6 = sub_1D726218C();
    }

    else
    {
      v31 = v6 >> 16;
      if ((v13 & 0x2000000000000000) != 0)
      {
        v58 = v12;
        v59 = v13 & 0xFFFFFFFFFFFFFFLL;
        v33 = *(&v58 + v31);
      }

      else
      {
        if ((v12 & 0x1000000000000000) != 0)
        {
          v32 = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v32 = sub_1D7263E5C();
        }

        v33 = *(v32 + v31);
      }

      v35 = v33;
      v36 = __clz(v33 ^ 0xFF) - 24;
      if (v35 >= 0)
      {
        LOBYTE(v36) = 1;
      }

      v6 = ((v31 + v36) << 16) | 5;
    }

    v5 += v30;
    if (v5 >= v56)
    {
      return 1;
    }
  }

  result = v6;
  if (v17 == v18)
  {
    v47 = v2[3];
    v52 = v2[2];
    v39 = v11;
    result = sub_1D6BA2080(v6, v12, v13);
    v11 = v39;
    v13 = v47;
    v12 = v52;
  }

  v22 = result >> 16;
  if (result >> 16 < v14)
  {
    if ((result & 1) == 0)
    {
      v45 = v13;
      v49 = v12;
      v23 = v11;
      v24 = sub_1D6BA2208(result, v12, v13);
      v11 = v23;
      v13 = v45;
      v12 = v49;
      v22 = v24 >> 16;
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

unint64_t sub_1D5F95720(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v7 = v2[2];
  v6 = v2[3];
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFLL;
  }

  v80 = v8;
  v9 = v2[4];
  v76 = 4 * v8;
  if (4 * v8 <= v9 >> 14)
  {
LABEL_82:

    sub_1D5DF5BE4();
    swift_allocError();
    *v63 = v5;
    *(v63 + 8) = v4;
    *(v63 + 16) = 0;
    *(v63 + 24) = 10;

    return swift_willThrow();
  }

  else
  {
    v10 = 0;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v11 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v12 = (v7 >> 59) & 1;
    v70 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v71 = a2 & 0xFFFFFFFFFFFFFFLL;
    if ((v6 & 0x1000000000000000) == 0)
    {
      LOBYTE(v12) = 1;
    }

    v13 = 4 << v12;
    v72 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v73 = v6 & 0xFFFFFFFFFFFFFFLL;
    v14 = 0xE000000000000000;
    v77 = v6;
    v74 = v11;
    v75 = 4 << v12;
    v67 = v3;
LABEL_10:
    v69 = v14;
    if (v11)
    {
      v68 = v10;
      v15 = 0;
      while (1)
      {
        if ((v4 & 0x1000000000000000) != 0)
        {
          v21 = sub_1D7263D3C();
          v13 = v75;
          v6 = v77;
          v22 = v21;
          goto LABEL_23;
        }

        if ((v4 & 0x2000000000000000) != 0)
        {
          v78 = v5;
          v79 = v71;
          v20 = &v78 + v15;
        }

        else
        {
          v19 = v70;
          if ((v5 & 0x1000000000000000) == 0)
          {
            v19 = sub_1D7263E5C();
            v13 = v75;
            v6 = v77;
          }

          v20 = (v19 + v15);
        }

        v22 = *v20;
        if ((*v20 & 0x80000000) == 0)
        {
          break;
        }

        v41 = (__clz(v22 ^ 0xFF) - 24);
        if (v41 > 2)
        {
          if (v41 == 3)
          {
            v22 = ((v22 & 0xF) << 12) | ((v20[1] & 0x3F) << 6) | v20[2] & 0x3F;
            v18 = 3;
          }

          else
          {
            v22 = ((v22 & 0xF) << 18) | ((v20[1] & 0x3F) << 12) | ((v20[2] & 0x3F) << 6) | v20[3] & 0x3F;
            v18 = 4;
          }
        }

        else
        {
          if (v41 == 1)
          {
            break;
          }

          v22 = v20[1] & 0x3F | ((v22 & 0x1F) << 6);
          v18 = 2;
        }

LABEL_23:
        if (v76 <= v9 >> 14)
        {

          sub_1D5DF5BE4();
          swift_allocError();
          *v64 = v5;
          *(v64 + 8) = v4;
          *(v64 + 16) = 0;
          *(v64 + 24) = 10;
          return swift_willThrow();
        }

        v23 = v7;
        v24 = v4;
        v25 = v5;
        v26 = v9 & 0xC;
        v27 = (v9 & 1) == 0 || v26 == v13;
        v28 = v27;
        if (v27)
        {
          v29 = v9;
          if (v26 == v13)
          {
            v59 = v18;
            v29 = sub_1D6BA2080(v9, v23, v77);
            v18 = v59;
            v13 = v75;
            v6 = v77;
          }

          v30 = v29 >> 16;
          if (v29 >> 16 >= v80)
          {
            goto LABEL_87;
          }

          if ((v29 & 1) == 0)
          {
            v31 = v18;
            v32 = sub_1D6BA2208(v29, v23, v77);
            v18 = v31;
            v13 = v75;
            v6 = v77;
            v30 = v32 >> 16;
          }
        }

        else
        {
          v30 = v9 >> 16;
          if (v9 >> 16 >= v80)
          {
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
            return 0;
          }
        }

        if ((v6 & 0x1000000000000000) != 0)
        {
          v7 = v23;
          v57 = v18;
          v58 = sub_1D7263D3C();
          v18 = v57;
          v13 = v75;
          v6 = v77;
          if (v58 != v22)
          {
            goto LABEL_81;
          }
        }

        else
        {
          if ((v6 & 0x2000000000000000) != 0)
          {
            v78 = v23;
            v79 = v73;
            v34 = &v78 + v30;
            v36 = *(&v78 + v30);
            if (*(&v78 + v30) < 0)
            {
              v37 = (__clz(v36 ^ 0xFF) - 24);
              if (v37 > 2)
              {
                if (v37 == 3)
                {
                  v42 = v34[1];
                  v43 = v34[2];
                  v44 = ((v36 & 0xF) << 12) | ((v42 & 0x3F) << 6);
                }

                else
                {
                  v47 = v34[1];
                  v48 = v34[2];
                  v43 = v34[3];
                  v44 = ((v36 & 0xF) << 18) | ((v47 & 0x3F) << 12) | ((v48 & 0x3F) << 6);
                }

                v36 = v44 & 0xFFFFFFC0 | v43 & 0x3F;
              }

              else
              {
LABEL_48:
                if (v37 != 1)
                {
                  v36 = v34[1] & 0x3F | ((v36 & 0x1F) << 6);
                }
              }
            }

LABEL_63:
            v7 = v23;
            if (v36 != v22)
            {
              goto LABEL_81;
            }

            goto LABEL_64;
          }

          v33 = v72;
          if ((v23 & 0x1000000000000000) == 0)
          {
            v66 = v18;
            v33 = sub_1D7263E5C();
            v18 = v66;
            v13 = v75;
            v6 = v77;
          }

          v34 = (v33 + v30);
          v35 = *(v33 + v30);
          v36 = *(v33 + v30);
          if ((v35 & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          v37 = (__clz(v36 ^ 0xFF) - 24);
          if (v37 <= 2)
          {
            goto LABEL_48;
          }

          v7 = v23;
          if (v37 == 3)
          {
            v38 = v34[1];
            v39 = v34[2];
            v40 = ((v36 & 0xF) << 12) | ((v38 & 0x3F) << 6);
          }

          else
          {
            v45 = v34[1];
            v46 = v34[2];
            v39 = v34[3];
            v40 = ((v36 & 0xF) << 18) | ((v45 & 0x3F) << 12) | ((v46 & 0x3F) << 6);
          }

          if ((v40 & 0xFFFFFFC0 | v39 & 0x3F) != v22)
          {
LABEL_81:
            sub_1D5F94FF0();
            v78 = v68;
            v79 = v69;
            sub_1D72621BC();
            v10 = v78;
            v14 = v79;
            sub_1D5F9510C(1);
            v13 = v75;
            v6 = v77;
            v9 = v67[4];
            v5 = v25;
            v4 = v24;
            v11 = v74;
            if (v76 > v9 >> 14)
            {
              goto LABEL_10;
            }

            goto LABEL_82;
          }
        }

LABEL_64:
        if (v28)
        {
          if (v26 == v13)
          {
            v60 = v18;
            v61 = sub_1D6BA2080(v9, v7, v77);
            v18 = v60;
            v13 = v75;
            v6 = v77;
            v9 = v61;
          }

          v5 = v25;
          v4 = v24;
          v49 = v74;
          if (v80 <= v9 >> 16)
          {
            goto LABEL_89;
          }

          if ((v9 & 1) == 0)
          {
            v50 = v18;
            v51 = sub_1D6BA2208(v9, v7, v77);
            v18 = v50;
            v13 = v75;
            v6 = v77;
            v9 = v9 & 0xC | v51 & 0xFFFFFFFFFFFFFFF3 | 1;
          }
        }

        else
        {
          v5 = v25;
          v4 = v24;
          v49 = v74;
          if (v80 <= v9 >> 16)
          {
            goto LABEL_88;
          }
        }

        if ((v6 & 0x1000000000000000) != 0)
        {
          v16 = v18;
          v17 = sub_1D726218C();
          v18 = v16;
          v13 = v75;
          v6 = v77;
          v9 = v17;
        }

        else
        {
          v52 = v9 >> 16;
          if ((v6 & 0x2000000000000000) != 0)
          {
            v78 = v7;
            v79 = v73;
            v54 = *(&v78 + v52);
          }

          else
          {
            v53 = v72;
            if ((v7 & 0x1000000000000000) == 0)
            {
              v62 = v18;
              v53 = sub_1D7263E5C();
              v18 = v62;
              v13 = v75;
              v6 = v77;
            }

            v54 = *(v53 + v52);
          }

          v55 = v54;
          v56 = __clz(v54 ^ 0xFF) - 24;
          if (v55 >= 0)
          {
            LOBYTE(v56) = 1;
          }

          v9 = ((v52 + v56) << 16) | 5;
        }

        v15 += v18;
        if (v15 >= v49)
        {
          return v68;
        }
      }

      v18 = 1;
      goto LABEL_23;
    }

    return 0;
  }
}

uint64_t sub_1D5F95D70(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[2] & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v4) & 0xF;
  }

  v6 = 4 * v5;
  if ((4 * v5) <= v1[4] >> 14)
  {
LABEL_12:

    v14 = sub_1D72622EC();
    sub_1D5DF5BE4();
    swift_allocError();
    *v15 = v14;
    *(v15 + 8) = a1;
    *(v15 + 16) = 0;
    *(v15 + 24) = 3;
    swift_willThrow();
  }

  else
  {
    v2 = 0;
    v7 = a1 + 56;
    while (1)
    {
      v8 = sub_1D5F94FF0();
      if (*(a1 + 16))
      {
        v9 = v8;
        sub_1D7264A0C();
        sub_1D7264A3C();
        v10 = sub_1D7264A5C();
        v11 = -1 << *(a1 + 32);
        v12 = v10 & ~v11;
        if ((*(v7 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          break;
        }
      }

LABEL_5:
      sub_1D5F94FF0();
      sub_1D72621BC();
      sub_1D5F9510C(1);
      if (v6 <= v1[4] >> 14)
      {
        goto LABEL_12;
      }
    }

    v13 = ~v11;
    while (*(*(a1 + 48) + 4 * v12) != v9)
    {
      v12 = (v12 + 1) & v13;
      if (((*(v7 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  return v2;
}

unint64_t sub_1D5F95F1C()
{
  v1 = v0[2];
  v2 = v0[3];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  result = v0[4];
  if (4 * v3 <= result >> 14)
  {
    return result;
  }

  v5 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  while ((result & 0xC) == v6 || (result & 1) == 0)
  {
    if ((result & 0xC) == v6)
    {
      result = sub_1D6BA2080(result, v1, v2);
    }

    v8 = result >> 16;
    if (result >> 16 >= v3)
    {
      goto LABEL_58;
    }

    if ((result & 1) == 0)
    {
      v8 = sub_1D6BA2208(result, v1, v2) >> 16;
    }

LABEL_21:
    if ((v2 & 0x1000000000000000) != 0)
    {
      result = sub_1D7263D3C();
    }

    else
    {
      if ((v2 & 0x2000000000000000) != 0)
      {
        v17 = v1;
        v18 = v2 & 0xFFFFFFFFFFFFFFLL;
        v10 = &v17 + v8;
      }

      else
      {
        v9 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v1 & 0x1000000000000000) == 0)
        {
          v9 = sub_1D7263E5C();
        }

        v10 = (v9 + v8);
      }

      result = *v10;
      if (*v10 < 0)
      {
        v14 = (__clz(result ^ 0xFF) - 24);
        if (v14 > 2)
        {
          if (v14 == 3)
          {
            result = ((result & 0xF) << 12) | ((v10[1] & 0x3F) << 6) | v10[2] & 0x3F;
          }

          else
          {
            result = ((result & 0xF) << 18) | ((v10[1] & 0x3F) << 12) | ((v10[2] & 0x3F) << 6) | v10[3] & 0x3F;
          }
        }

        else if (v14 != 1)
        {
          result = v10[1] & 0x3F | ((result & 0x1F) << 6);
        }
      }
    }

    if (result != 32)
    {
      return result;
    }

    result = v0[4];
    if (result & 0xC) != v6 && (result)
    {
      if (v3 <= result >> 16)
      {
        goto LABEL_60;
      }

LABEL_36:
      if ((v2 & 0x1000000000000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_8;
    }

    if ((result & 0xC) == v6)
    {
      result = sub_1D6BA2080(result, v1, v2);
      if (v3 <= result >> 16)
      {
        goto LABEL_59;
      }
    }

    else if (v3 <= result >> 16)
    {
      goto LABEL_59;
    }

    if (result)
    {
      goto LABEL_36;
    }

    result = result & 0xC | sub_1D6BA2208(result, v1, v2) & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((v2 & 0x1000000000000000) == 0)
    {
LABEL_37:
      v11 = result >> 16;
      if ((v2 & 0x2000000000000000) != 0)
      {
        v17 = v1;
        v18 = v2 & 0xFFFFFFFFFFFFFFLL;
        v13 = *(&v17 + v11);
      }

      else
      {
        v12 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v1 & 0x1000000000000000) == 0)
        {
          v12 = sub_1D7263E5C();
        }

        v13 = *(v12 + v11);
      }

      v15 = v13;
      v16 = __clz(v13 ^ 0xFF) - 24;
      if (v15 >= 0)
      {
        LOBYTE(v16) = 1;
      }

      result = ((v11 + v16) << 16) | 5;
      goto LABEL_9;
    }

LABEL_8:
    result = sub_1D726218C();
LABEL_9:
    v0[4] = result;
    if (4 * v3 <= result >> 14)
    {
      return result;
    }
  }

  v8 = result >> 16;
  if (result >> 16 < v3)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_1D5F961D4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F96238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5F9628C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26 = a6;
  v27 = a8;
  v23 = a7;
  v24 = a4;
  v25 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8, v15);
  v18 = &v22 - v17;
  if (a2)
  {
    v19 = a2;
  }

  else
  {
    type metadata accessor for FeedCursorTracker(0, a10, a11, v16);
    (*(a11 + 48))(a10, a11);
    v19 = FeedCursorTracker.__allocating_init(context:)(v18);
  }

  v20 = (v27)(a1, v23, v19, a3, v24, v25, v26);

  return v20;
}

uint64_t sub_1D5F96464@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v6 = sub_1D726393C();
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, a1, v6);
}

id VideoLiveIcon.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *VideoLiveIcon.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8NewsFeed13VideoLiveIcon_label;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v37.receiver = v4;
  v37.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v37, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 layer];
  [v12 setCornerRadius_];

  v13 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.31372549 blue:0.4 alpha:1.0];
  [v11 setBackgroundColor_];

  v14 = OBJC_IVAR____TtC8NewsFeed13VideoLiveIcon_label;
  [v11 addSubview_];
  v15 = *&v11[v14];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();
  v18 = v15;
  v19 = [v17 bundleForClass_];
  sub_1D725811C();

  sub_1D726213C();

  v20 = sub_1D726203C();

  [v18 setText_];

  v21 = *&v11[v14];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 whiteColor];
  [v23 setTextColor_];

  [*&v11[v14] setTextAlignment_];
  v25 = *&v11[v14];
  v26 = objc_opt_self();
  v27 = *MEMORY[0x1E69DB980];
  v28 = v25;
  v29 = [v26 systemFontOfSize:12.0 weight:v27];
  v30 = [v29 fontDescriptor];
  v31 = [v30 fontDescriptorWithDesign_];

  if (v31)
  {
    v32 = [v26 fontWithDescriptor:v31 size:12.0];

    v29 = v32;
  }

  [v28 setFont_];

  v33 = *&v11[v14];
  v34 = [v17 bundleForClass_];
  sub_1D725811C();

  v35 = sub_1D726203C();

  [v33 setAccessibilityLabel_];

  return v11;
}

Swift::Void __swiftcall VideoLiveIcon.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed13VideoLiveIcon_label];
  [v0 bounds];
  [v1 setFrame_];
}

id VideoLiveIcon.intrinsicContentSize.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed13VideoLiveIcon_label);
  result = [v1 font];
  if (result)
  {
    v3 = result;
    [result capHeight];

    return [v1 intrinsicContentSize];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id VideoLiveIcon.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D5F96D00(void *a1)
{
  v3 = v1;
  sub_1D5F97A90(0, &unk_1EDF028C0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F97280();
  sub_1D7264B5C();
  LOBYTE(v13) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1D72643FC();
    LOBYTE(v13) = 2;
    sub_1D72643FC();
    v13 = *(v3 + 48);
    HIBYTE(v12) = 3;
    sub_1D5BBE0A8();
    sub_1D5F97AF4(&qword_1EDF04A90, sub_1D5BBE0A8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D726443C();
    LOBYTE(v13) = 4;
    sub_1D72643FC();
    v13 = *(v3 + 72);
    HIBYTE(v12) = 5;
    sub_1D5B81B04();
    sub_1D5F97AF4(&qword_1EDF047E0, sub_1D5B81B04, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D5F96FB0()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D72621EC();
  sub_1D72621EC();
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  MEMORY[0x1DA6FC0B0](v2);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_1D72621EC();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  sub_1D72621EC();
  sub_1D5BE251C(v5, *(v0 + 72));
  return sub_1D7264A5C();
}

uint64_t sub_1D5F97084@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D5F973BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D5F970AC(uint64_t a1)
{
  v2 = sub_1D5F97280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F970E8(uint64_t a1)
{
  v2 = sub_1D5F97280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5F9712C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D5BCA370(v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D5F97168(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1D5F972D4(v8, v9) & 1;
}

unint64_t sub_1D5F971C8()
{
  result = qword_1EC881CF8;
  if (!qword_1EC881CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881CF8);
  }

  return result;
}

__n128 sub_1D5F9721C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D5F97574(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_1D5F97280()
{
  result = qword_1EDF14068;
  if (!qword_1EDF14068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14068);
  }

  return result;
}

uint64_t sub_1D5F972D4(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D72646CC() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D5BF1C0C(a1[6], a2[6]) & 1) == 0 || (a1[7] != a2[7] || a1[8] != a2[8]) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[9];
  v7 = a2[9];

  return sub_1D5BFC390(v6, v7);
}

uint64_t sub_1D5F973BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 97 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 98 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 99 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 100 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 101 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 102 && a2 == 0xE100000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_1D5F97574(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D5F97A90(0, &qword_1EDF03BB8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F97280();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    v11 = sub_1D72642BC();
    v13 = v12;
    LOBYTE(v37[0]) = 1;
    v29 = sub_1D72642BC();
    v31 = v14;
    LOBYTE(v37[0]) = 2;
    v15 = sub_1D72642BC();
    v30 = v16;
    v26 = v15;
    sub_1D5BBE0A8();
    LOBYTE(v32) = 3;
    sub_1D5F97AF4(&qword_1EDF3C830, sub_1D5BBE0A8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    v28 = 0;
    sub_1D726431C();
    v25 = v37[0];
    LOBYTE(v37[0]) = 4;
    v24 = sub_1D72642BC();
    v27 = v17;
    sub_1D5B81B04();
    v38[0] = 5;
    sub_1D5F97AF4(&qword_1EDF3C7D0, sub_1D5B81B04, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v28 = v39;
    *&v32 = v11;
    *(&v32 + 1) = v13;
    v18 = v29;
    v19 = v31;
    *&v33 = v29;
    *(&v33 + 1) = v31;
    v20 = v30;
    *&v34 = v26;
    *(&v34 + 1) = v30;
    v21 = v25;
    *&v35 = v25;
    *(&v35 + 1) = v24;
    *&v36 = v27;
    *(&v36 + 1) = v39;
    sub_1D5F97B58(&v32, v37);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v37[0] = v11;
    v37[1] = v13;
    v37[2] = v18;
    v37[3] = v19;
    v37[4] = v26;
    v37[5] = v20;
    v37[6] = v21;
    v37[7] = v24;
    v37[8] = v27;
    v37[9] = v28;
    sub_1D5F97B90(v37);
    v22 = v35;
    a2[2] = v34;
    a2[3] = v22;
    a2[4] = v36;
    v23 = v33;
    *a2 = v32;
    a2[1] = v23;
  }
}

void sub_1D5F97A90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5F97280();
    v7 = a3(a1, &type metadata for FeedLayoutCacheDataKey.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5F97AF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
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

unint64_t sub_1D5F97BD4()
{
  result = qword_1EC881D00;
  if (!qword_1EC881D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D00);
  }

  return result;
}

unint64_t sub_1D5F97C2C()
{
  result = qword_1EDF14058;
  if (!qword_1EDF14058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14058);
  }

  return result;
}

unint64_t sub_1D5F97C84()
{
  result = qword_1EDF14060;
  if (!qword_1EDF14060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14060);
  }

  return result;
}

uint64_t sub_1D5F97CE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72635F73656C6966;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x80000001D73B7A50;
  }

  else
  {
    v4 = 0xED00006465746165;
  }

  if (*a2)
  {
    v5 = 0x72635F73656C6966;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*a2)
  {
    v6 = 0xED00006465746165;
  }

  else
  {
    v6 = 0x80000001D73B7A50;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D5F97DA0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D5F97E34(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D5F97EB4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D5F97F44(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D5F97FA4(unint64_t *a1@<X8>)
{
  v2 = 0x80000001D73B7A50;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x72635F73656C6966;
    v2 = 0xED00006465746165;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1D5F97FF4()
{
  if (*v0)
  {
    return 0x72635F73656C6966;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_1D5F98040(char *a3@<X8>)
{
  v4 = sub_1D72641CC();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1D5F980A4(uint64_t a1)
{
  v2 = sub_1D5F98398();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F980E0(uint64_t a1)
{
  v2 = sub_1D5F98398();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5F9811C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D5F9814C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1D5F9814C(void *a1)
{
  sub_1D5F9833C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F98398();
  sub_1D7264B0C();
  if (!v1)
  {
    v12 = 0;
    v9 = sub_1D72642BC();
    sub_1D5BBE0A8();
    v11[15] = 1;
    sub_1D5F983EC();
    sub_1D726431C();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void sub_1D5F9833C(uint64_t a1)
{
  if (!qword_1EC881D08)
  {
    sub_1D5F98398();
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC881D08);
    }
  }
}

unint64_t sub_1D5F98398()
{
  result = qword_1EC881D10;
  if (!qword_1EC881D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D10);
  }

  return result;
}

unint64_t sub_1D5F983EC()
{
  result = qword_1EDF3C830;
  if (!qword_1EDF3C830)
  {
    sub_1D5BBE0A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C830);
  }

  return result;
}

unint64_t sub_1D5F98470()
{
  result = qword_1EC881D18;
  if (!qword_1EC881D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D18);
  }

  return result;
}

unint64_t sub_1D5F984C8()
{
  result = qword_1EC881D20;
  if (!qword_1EC881D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D20);
  }

  return result;
}

unint64_t sub_1D5F98520()
{
  result = qword_1EC881D28;
  if (!qword_1EC881D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D28);
  }

  return result;
}

uint64_t WebEmbedDatastoreFailures.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ThumbnailProcessorRequest.cacheIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1D5F98684(uint64_t a1, uint64_t a2)
{
  sub_1D5BF51F8(0, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ThumbnailProcessorRequest.__allocating_init(thumbnailAssetHandle:thumbnailFrame:focalFrame:scale:byRoundingCorners:cornerRadius:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v48 = a10;
  v47 = a7;
  v50 = a12;
  sub_1D5BF51F8(0, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v46 - v27;
  v49 = a1;
  sub_1D5B68374(a1, v57);
  v29 = sub_1D725CB5C();
  v30 = *(v29 - 8);
  (*(v30 + 56))(v28, 1, 1, v29);
  v31 = swift_allocObject();
  sub_1D5B68374(v57, v31 + 24);
  sub_1D5BF51F8(0, &qword_1EDF19590, sub_1D5C16B18, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = 0x69616E626D756874;
  *(inited + 40) = 0xE90000000000006CLL;
  sub_1D5B68374(v57, inited + 48);
  v33 = sub_1D5BFFC64(inited);
  swift_setDeallocating();
  sub_1D5F99394(inited + 32);
  *(v31 + 16) = v33;
  *(v31 + 80) = a3;
  *(v31 + 88) = a4;
  *(v31 + 96) = a5;
  *(v31 + 104) = a6;
  *(v31 + 112) = a7;
  *(v31 + 120) = a8;
  v34 = a8;
  v35 = v48;
  *(v31 + 128) = a9;
  *(v31 + 136) = v35;
  *(v31 + 144) = a11;
  *(v31 + 152) = a2;
  *(v31 + 160) = v50;
  sub_1D5F98684(v28, v31 + OBJC_IVAR____TtC8NewsFeed25ThumbnailProcessorRequest_border);
  v51 = 0;
  v52 = -2.68156159e154;
  sub_1D7263D4C();
  v55 = v51;
  v56 = v52;
  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  v36 = sub_1D725D2DC();
  MEMORY[0x1DA6F9910](v36);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v51 = *&a3;
  v52 = a4;
  v53 = a5;
  v54 = a6;
  type metadata accessor for CGRect(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v51 = *&v47;
  v52 = v34;
  v53 = a9;
  v54 = v35;
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v37 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v37);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v51 = a2;
  type metadata accessor for UIRectCorner(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v38 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v38);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  sub_1D5F98684(v28, v24);
  if ((*(v30 + 48))(v24, 1, v29) == 1)
  {
    sub_1D5C18264(v24);
    v39 = 0xE300000000000000;
    v40 = 7104878;
  }

  else
  {
    v41 = sub_1D725CB4C();
    v39 = v42;
    (*(v30 + 8))(v24, v29);
    v40 = v41;
  }

  MEMORY[0x1DA6F9910](v40, v39);

  v43 = v55;
  v44 = v56;
  __swift_destroy_boxed_opaque_existential_1(v49);
  sub_1D5C18264(v28);
  *(v31 + 64) = v43;
  *(v31 + 72) = v44;
  __swift_destroy_boxed_opaque_existential_1(v57);
  return v31;
}

uint64_t ThumbnailProcessorRequest.__allocating_init(thumbnailAssetHandle:thumbnailFrame:focalFrame:scale:byRoundingCorners:cornerRadius:border:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v23 = a1[3];
  v24 = a1[4];
  v25 = __swift_mutable_project_boxed_opaque_existential_1(a1, v23);
  v26 = sub_1D5F993F0(v25, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, v13, v23, v24, a12, a13);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v26;
}

uint64_t ThumbnailProcessorRequest.init(thumbnailAssetHandle:thumbnailFrame:focalFrame:scale:byRoundingCorners:cornerRadius:border:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v32 = a10;
  v33 = a11;
  v23 = a1[3];
  v24 = a1[4];
  v25 = __swift_mutable_project_boxed_opaque_existential_1(a1, v23);
  v26 = MEMORY[0x1EEE9AC00](v25, v25);
  v28 = &v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28, v26);
  v30 = sub_1D5F98EBC(v28, a2, a3, v13, v23, v24, a4, a5, a6, a7, a8, a9, v32, v33, a12, a13);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v30;
}

void *ThumbnailProcessorRequest.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  sub_1D5C18264(v0 + OBJC_IVAR____TtC8NewsFeed25ThumbnailProcessorRequest_border);
  return v0;
}

uint64_t sub_1D5F98EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16)
{
  v49 = a14;
  v48 = a13;
  v47 = a10;
  sub_1D5BF51F8(0, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v47 - v29;
  v56[3] = a5;
  v56[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  sub_1D5B68374(v56, a4 + 24);
  sub_1D5BF51F8(0, &qword_1EDF19590, sub_1D5C16B18, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = 0x69616E626D756874;
  *(inited + 40) = 0xE90000000000006CLL;
  sub_1D5B68374(v56, inited + 48);
  v33 = sub_1D5BFFC64(inited);
  swift_setDeallocating();
  sub_1D5F99394(inited + 32);
  *(a4 + 16) = v33;
  *(a4 + 80) = a7;
  *(a4 + 88) = a8;
  v34 = v47;
  *(a4 + 96) = a9;
  *(a4 + 104) = v34;
  *(a4 + 112) = a11;
  *(a4 + 120) = a12;
  *(a4 + 128) = v48;
  *(a4 + 136) = v49;
  *(a4 + 144) = a15;
  *(a4 + 152) = *&a2;
  *(a4 + 160) = a16;
  sub_1D5F98684(a3, a4 + OBJC_IVAR____TtC8NewsFeed25ThumbnailProcessorRequest_border);
  v50 = 0.0;
  v51 = -2.68156159e154;
  sub_1D7263D4C();
  v54 = v50;
  v55 = v51;
  v35 = sub_1D725D2DC();
  MEMORY[0x1DA6F9910](v35);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v50 = a7;
  v51 = a8;
  v52 = a9;
  v53 = v34;
  type metadata accessor for CGRect(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v50 = a11;
  v51 = a12;
  v52 = v48;
  v53 = v49;
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v36 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v36);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v50 = *&a2;
  type metadata accessor for UIRectCorner(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v37 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v37);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  sub_1D5F98684(a3, v30);
  v38 = sub_1D725CB5C();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v30, 1, v38) == 1)
  {
    sub_1D5C18264(v30);
    v40 = 0xE300000000000000;
    v41 = 7104878;
  }

  else
  {
    v42 = sub_1D725CB4C();
    v40 = v43;
    (*(v39 + 8))(v30, v38);
    v41 = v42;
  }

  MEMORY[0x1DA6F9910](v41, v40);

  v44 = v54;
  v45 = v55;
  sub_1D5C18264(a3);
  *(a4 + 64) = v44;
  *(a4 + 72) = v45;
  __swift_destroy_boxed_opaque_existential_1(v56);
  return a4;
}

uint64_t sub_1D5F99394(uint64_t a1)
{
  sub_1D5C16B18(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5F993F0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14, double a15, double a16)
{
  v32 = a10;
  v33 = a11;
  v27 = *(a13 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v29 = &v32 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = swift_allocObject();
  (*(v27 + 16))(v29, a1, a13);
  return sub_1D5F98EBC(v29, a2, a3, v30, a13, a14, a4, a5, a6, a7, a8, a9, v32, v33, a15, a16);
}

id HeadlineView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id HeadlineView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HeadlineView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D5F996B4(uint64_t a1)
{
  v2 = *(a1 + qword_1EDF33638);
}

Swift::Void __swiftcall HeadlineView.prepareForReuse()()
{
  v1 = *(*(v0 + qword_1EDF33618) + OBJC_IVAR____TtC8NewsFeed11DebugButton_onTap);
}

void sub_1D5F997F0(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x1DA6F6FC0);
}

void _s8NewsFeed12HeadlineViewC5coderACyxGSgSo7NSCoderC_tcfc_0()
{
  v1 = qword_1EDF33628;
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v2 = qword_1EDF33620;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v3 = qword_1EDF33610;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v4 = qword_1EDF33600;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v5 = qword_1EDF33630;
  v6 = sub_1D725FBCC();
  *(v0 + v5) = [objc_allocWithZone(v6) initWithFrame_];
  v7 = qword_1EDF33608;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v8 = qword_1EDF33618;
  *(v0 + v8) = [objc_allocWithZone(type metadata accessor for DebugButton()) initWithFrame_];
  v9 = qword_1EDF33638;
  *(v0 + v9) = [objc_allocWithZone(v6) initWithFrame_];
  sub_1D726402C();
  __break(1u);
}

uint64_t FeedModifierStore.__allocating_init()()
{
  v0 = swift_allocObject();
  FeedModifierStore.init()();
  return v0;
}

void *FeedModifierStore.init()()
{
  sub_1D725D88C();
  sub_1D725B84C();
  *(v0 + 16) = sub_1D725B82C();
  return v0;
}

double FeedModifierStore.addPendingModifier(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1D725B87C();

  return result;
}

void FeedModifierStore.applyPendingModifiers<A, B>(to:)()
{

  v0 = sub_1D725B7FC();

  v1 = 0;
  v2 = 1 << *(v0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v0 + 64);
  v5 = (v2 + 63) >> 6;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= v5)
    {

      return;
    }

    v4 = *(v0 + 64 + 8 * v6);
    ++v1;
    if (v4)
    {
      v1 = v6;
      do
      {
LABEL_9:
        v4 &= v4 - 1;

        sub_1D725D88C();
        swift_getWitnessTable();
        sub_1D725D8DC();

        sub_1D725B87C();
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
}

uint64_t FeedModifierStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D5F99E30(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001D73C4D40 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1D5F99EC4(uint64_t a1)
{
  v2 = sub_1D5F9C56C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F99F00(uint64_t a1)
{
  v2 = sub_1D5F9C56C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5F99F3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_1D5F9C5C0(0, &qword_1EC881D48, sub_1D5F9C56C, &type metadata for FeedGroupSortOptionPersonalization.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F9C56C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v16;
  v11 = sub_1D726424C();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v11;
  *(v10 + 8) = v13 & 1;
  return result;
}

uint64_t sub_1D5F9A0F4(void *a1)
{
  sub_1D5F9C5C0(0, &qword_1EC881D58, sub_1D5F9C56C, &type metadata for FeedGroupSortOptionPersonalization.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F9C56C();
  sub_1D7264B5C();
  sub_1D726439C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t FeedGroupSortOption.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D5F9C5C0(0, &qword_1EDF03BC8, sub_1D5F9A51C, &type metadata for FeedGroupSortOption.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F9A51C();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v6;
    v11 = v17;
    v22 = 0;
    sub_1D5F9A570();
    sub_1D726431C();
    if (v23 > 1u)
    {
      if (v23 == 2)
      {
        (*(v10 + 8))(v9, v5);
        v13 = 0;
        v14 = 1;
        v12 = 2;
      }

      else
      {
        v21 = 1;
        sub_1D5F9A5C4();
        sub_1D726427C();
        (*(v10 + 8))(v9, v5);
        if (v20)
        {
          v12 = 0;
        }

        else
        {
          v12 = v18;
        }

        if (v20)
        {
          v13 = 1;
        }

        else
        {
          v13 = v19 & 1;
        }

        v14 = 0;
      }
    }

    else
    {
      if (v23)
      {
        (*(v10 + 8))(v9, v5);
        v13 = 0;
        v12 = 1;
      }

      else
      {
        (*(v10 + 8))(v9, v5);
        v12 = 0;
        v13 = 0;
      }

      v14 = 1;
    }

    *v11 = v12;
    *(v11 + 8) = v13;
    *(v11 + 9) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5F9A51C()
{
  result = qword_1EDF14818[0];
  if (!qword_1EDF14818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF14818);
  }

  return result;
}

unint64_t sub_1D5F9A570()
{
  result = qword_1EDF147F0;
  if (!qword_1EDF147F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF147F0);
  }

  return result;
}

unint64_t sub_1D5F9A5C4()
{
  result = qword_1EDF13190;
  if (!qword_1EDF13190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13190);
  }

  return result;
}

uint64_t FeedGroupSortOption.encode(to:)(void *a1)
{
  sub_1D5F9C5C0(0, &qword_1EDF028D8, sub_1D5F9A51C, &type metadata for FeedGroupSortOption.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v16[0] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 9);
  v9 = a1[3];
  v10 = a1;
  v12 = v16 - v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1D5F9A51C();
  sub_1D7264B5C();
  if (v8 != 1)
  {
    LOBYTE(v17) = 3;
    v19 = 0;
    sub_1D5F9A88C();
    v14 = v16[1];
    sub_1D726443C();
    if (v14 || (v7 & 1) != 0)
    {
      return (*(v16[0] + 8))(v12, v4);
    }

    v17 = v6;
    v18 = 0;
    v19 = 1;
    sub_1D5F9A8E0();
LABEL_9:
    sub_1D726443C();
    return (*(v16[0] + 8))(v12, v4);
  }

  if (!(v6 | v7))
  {
    LOBYTE(v17) = 0;
    v19 = 0;
    sub_1D5F9A88C();
    goto LABEL_9;
  }

  if (v6 ^ 1 | v7)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  LOBYTE(v17) = v13;
  v19 = 0;
  sub_1D5F9A88C();
  sub_1D726443C();
  return (*(v16[0] + 8))(v12, v4);
}

unint64_t sub_1D5F9A88C()
{
  result = qword_1EDF14800;
  if (!qword_1EDF14800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14800);
  }

  return result;
}

unint64_t sub_1D5F9A8E0()
{
  result = qword_1EC881D30;
  if (!qword_1EC881D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D30);
  }

  return result;
}

uint64_t sub_1D5F9A934(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1635017060;
  }

  else
  {
    v2 = 1701869940;
  }

  if (*a2)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D5F9A9AC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D5F9AA14(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D5F9AA60(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D5F9AAC4(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D5F9AB24(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 1635017060;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

void sub_1D5F9AB4C(char *a3@<X8>)
{
  v4 = sub_1D72641CC();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1D5F9ABB0(uint64_t a1)
{
  v2 = sub_1D5F9A51C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F9ABEC(uint64_t a1)
{
  v2 = sub_1D5F9A51C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5F9AC34()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D5F9AD0C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D5F9ADD0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D5F9AEA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D5F9C628(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D5F9AED4(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0x80000001D73B7A90;
  v5 = 0xD000000000000014;
  if (*v1 != 2)
  {
    v5 = 0x6C616E6F73726570;
    v4 = 0xEF6E6F6974617A69;
  }

  if (*v1)
  {
    v3 = 0x6F6C6F6E6F726863;
    v2 = 0xED00006C61636967;
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

uint64_t (*sub_1D5F9B050(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  if (*(v2 + 9) == 1)
  {
    if (*&v5 | v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = a1;
      *(v7 + 24) = a2;
      *(v7 + 32) = v5;
      *(v7 + 40) = v6;
      *(v7 + 41) = 1;
      if (*&v5 ^ 1 | v6)
      {
        return sub_1D5F9C694;
      }

      else
      {
        return sub_1D5F9C6B4;
      }
    }

    else
    {
      v13 = swift_allocObject();
      *(v13 + 16) = a1;
      *(v13 + 24) = a2;
      return sub_1D5F9C710;
    }
  }

  else if (v6)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;
    *(v9 + 41) = 0;
    return sub_1D5F9C674;
  }

  else
  {
    if (v5 >= 1.0 || v5 < 0.0)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = *v2;
    }

    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    *(v12 + 32) = v11;
    return sub_1D5F9C744;
  }
}

uint64_t sub_1D5F9B1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  sub_1D72627FC();
  swift_getWitnessTable();
  sub_1D72624AC();

  return sub_1D72624EC();
}

uint64_t sub_1D5F9B2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  sub_1D72627FC();
  swift_getWitnessTable();
  v10 = sub_1D72624AC();

  return v10;
}

uint64_t sub_1D5F9B378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v6 = sub_1D725891C();
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v39 = &v39 - v11;
  sub_1D5BA8044(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v39 - v24;
  v26 = *(a4 + 32);
  v26(a3, a4, v23);
  v27 = a3;
  v28 = v41;
  (v26)(v27, a4);
  v29 = *(v13 + 56);
  sub_1D5DF42F8(v25, v16);
  sub_1D5DF42F8(v20, &v16[v29]);
  v30 = *(v28 + 48);
  v31 = v30(v16, 1, v6);
  v32 = v30(&v16[v29], 1, v6);
  if (v31 == 1)
  {
    if (v32 == 1)
    {
      v33 = 0;
    }

    else
    {
      _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(&v16[v29]);
      v33 = 1;
    }
  }

  else if (v32 == 1)
  {
    (*(v28 + 8))(v16, v6);
    v33 = 0;
  }

  else
  {
    v34 = *(v28 + 32);
    v35 = v39;
    v34(v39, v16, v6);
    v36 = v40;
    v34(v40, &v16[v29], v6);
    v33 = sub_1D725883C();
    v37 = *(v28 + 8);
    v37(v36, v6);
    v37(v35, v6);
  }

  return v33 & 1;
}

BOOL sub_1D5F9B67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = v6(a3, a4);
  if (v7 == v6(a3, a4))
  {
    v8 = sub_1D725AA4C();
    v10 = v9;
    if (v8 == sub_1D725AA4C() && v10 == v11)
    {

      return 0;
    }

    else
    {
      v13 = sub_1D72646CC();

      return v13 & 1;
    }
  }

  else
  {
    v15 = v6(a3, a4);
    return v6(a3, a4) < v15;
  }
}

uint64_t sub_1D5F9B7D0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_1D72627FC();
  sub_1D7261CEC();
  sub_1D7261E1C();
  swift_getWitnessTable();
  sub_1D726248C();
  nullsub_1();

  sub_1D7261DEC();
  swift_getTupleTypeMetadata2();
  sub_1D72627FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D72624BC();

  sub_1D5F9C7A8();
  sub_1D726248C();

  v4 = sub_1D72624AC();

  return v4;
}

uint64_t sub_1D5F9BA5C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 16))(a3, a4);
  if (v7)
  {
    sub_1D72627FC();

    sub_1D7261E3C();

    if (!v11)
    {
      sub_1D726275C();
    }

    sub_1D5D0DDD4(a3, a3);
    v8 = *(a3 - 8);
    swift_allocObject();
    v9 = sub_1D726270C();
    (*(v8 + 16))(v10, a2, a3);
    sub_1D5BFCB60(v9, a3);
    sub_1D726274C();

    sub_1D7261E1C();
    return sub_1D7261E4C();
  }

  return result;
}

void sub_1D5F9BC50(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v25 = *a1;
  v21 = a2;
  v22 = a3;
  v9 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  sub_1D72624AC();
  MEMORY[0x1DA6F9AD0](&v25, v9, WitnessTable);

  v24 = v25;
  v18 = a2;
  v19 = a3;
  v20 = a5;
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = sub_1D5F9C8BC;
  v16[5] = &v17;
  v11 = sub_1D72640AC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v15 = sub_1D5B874E4(sub_1D5F9C970, v16, v11, TupleTypeMetadata2, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);

  *a4 = v15;
}

void sub_1D5F9BE2C(char *a1@<X0>, double (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  *(a4 + v9) = a2(a4, v7, &a1[v8]);
}

uint64_t sub_1D5F9BEEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v9);
  v11 = &v18 - v10;
  v12 = sub_1D725AA4C();
  v14 = v13;
  (*(v8 + 16))(v11, a2, TupleTypeMetadata2);
  v15 = *&v11[*(TupleTypeMetadata2 + 48)];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *a1;
  sub_1D6D78B1C(v12, v14, isUniquelyReferenced_nonNull_native, v15);

  *a1 = v19;
  return (*(*(a3 - 8) + 8))(v11, a3);
}

BOOL sub_1D5F9C080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1D725AA4C();
  if (*(a3 + 16))
  {
    v8 = sub_1D5B69D90(v6, v7);
    v10 = v9;

    v11 = 0.0;
    if (v10)
    {
      v11 = *(*(a3 + 56) + 8 * v8);
    }
  }

  else
  {

    v11 = 0.0;
  }

  v12 = sub_1D725AA4C();
  if (*(a3 + 16))
  {
    v14 = sub_1D5B69D90(v12, v13);
    v16 = v15;

    v17 = 0.0;
    if (v16)
    {
      v17 = *(*(a3 + 56) + 8 * v14);
    }
  }

  else
  {

    v17 = 0.0;
  }

  return v17 < v11;
}

uint64_t Array<A>.sorted(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5F9B050(a3, a4);
  v4 = sub_1D72626CC();

  return v4;
}

uint64_t _s8NewsFeed0B15GroupSortOptionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v2 | v3)
    {
      if (*&v2 ^ 1 | *(a1 + 8))
      {
        if (*(a2 + 9) && __PAIR128__(v5, *&v4) >= 2)
        {
          return 1;
        }
      }

      else if (*(a2 + 9) && !(*&v4 ^ 1 | v5))
      {
        return 1;
      }
    }

    else
    {
      v7 = *&v4 | v5;
      if (*(a2 + 9))
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for FeedGroupSortOption(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FeedGroupSortOption(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_1D5F9C308(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5F9C324(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatContentSubgroupFilterRequirements(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_1D5F9C3BC()
{
  result = qword_1EC881D38;
  if (!qword_1EC881D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D38);
  }

  return result;
}

unint64_t sub_1D5F9C414()
{
  result = qword_1EC881D40;
  if (!qword_1EC881D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D40);
  }

  return result;
}

unint64_t sub_1D5F9C46C()
{
  result = qword_1EDF14808;
  if (!qword_1EDF14808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14808);
  }

  return result;
}

unint64_t sub_1D5F9C4C4()
{
  result = qword_1EDF14810;
  if (!qword_1EDF14810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14810);
  }

  return result;
}

unint64_t sub_1D5F9C518()
{
  result = qword_1EDF147F8;
  if (!qword_1EDF147F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF147F8);
  }

  return result;
}

unint64_t sub_1D5F9C56C()
{
  result = qword_1EC881D50;
  if (!qword_1EC881D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D50);
  }

  return result;
}

void sub_1D5F9C5C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D5F9C628(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D5F9C710()
{
  nullsub_1();
}

void sub_1D5F9C7A8()
{
  if (!qword_1EDF056C0)
  {
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF056C0);
    }
  }
}

BOOL sub_1D5F9C82C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 24);
  v4 = v3(v1, v2);
  return v3(v1, v2) < v4;
}

double sub_1D5F9C8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 32);
  v9 = (*(*(v3 + 24) + 24))(v7);
  v10 = pow(1.0 - v8, a2);
  (*(*(v7 - 8) + 16))(a1, a3, v7);
  return v9 * v10;
}

unint64_t sub_1D5F9C9B0()
{
  result = qword_1EC881D60;
  if (!qword_1EC881D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D60);
  }

  return result;
}

unint64_t sub_1D5F9CA08()
{
  result = qword_1EC881D68;
  if (!qword_1EC881D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D68);
  }

  return result;
}

unint64_t sub_1D5F9CA60()
{
  result = qword_1EC881D70;
  if (!qword_1EC881D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D70);
  }

  return result;
}

uint64_t SetPuzzleStreakEligibleHandler.__allocating_init(historyService:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1D5B7DDE8(a1, v2 + 16);
  return v2;
}

uint64_t SetPuzzleStreakEligibleHandler.handle(commandCenter:command:with:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[5];
  v7 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v6);
  return (*(v7 + 48))(a4, v6, v7);
}

uint64_t SetPuzzleStreakEligibleHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F9CBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v6 = *(*v4 + 40);
  v7 = *(*v4 + 48);
  __swift_project_boxed_opaque_existential_1((*v4 + 16), v6);
  return (*(v7 + 48))(v5, v6, v7);
}

uint64_t _s8NewsFeed30SetPuzzleStreakEligibleHandlerC9canHandle13commandCenter0J04with6sourceSb5TeaUI07CommandK4Type_p_AI0P0CySo17FCPuzzleProviding_pGSoAM_pAI0P15ExecutionSourceCSgtF_0()
{
  v0 = sub_1D725E87C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D72596FC();
  sub_1D72596DC();
  sub_1D725950C();
  sub_1D72596CC();

  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == *MEMORY[0x1E69D8000])
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = *MEMORY[0x1E69D8008];
    v9 = *MEMORY[0x1E69D8010];
    sub_1D725A9FC();
    v6 = sub_1D725A9CC();
    if (v7 != v8 && v7 != v9)
    {
      (*(v1 + 8))(v4, v0);
    }
  }

  return v6 & 1;
}

void *sub_1D5F9CDD4(void *a1)
{
  v35 = *(v1 + 40);
  v36 = *(v1 + 32);
  v4 = *(v1 + 48);
  v33 = *(v1 + 56);
  v34 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);
  v38 = *v1;
  v40 = *(v1 + 8);
  v41 = *(v1 + 16);
  v42 = *(v1 + 24);
  sub_1D5FB995C(*v1, v40, v41, v42);
  v9 = sub_1D61DF5BC(a1);
  v11 = v10;
  sub_1D5FBA070(v38, v40, v41, v42);
  if (!v2)
  {
    v31 = a1;
    v32 = v11;
    if (v4 >> 8 <= 0xFE)
    {
      v39 = v36;
      sub_1D5F586A4(v36, v35, v4, SBYTE1(v4));
      sub_1D693A514(a1);
      v37 = v12;
      sub_1D5F5816C(v39, v35, v4, SBYTE1(v4));
    }

    else
    {
      v37 = 0;
    }

    sub_1D5E04CC4(v5, v6, v7);
    sub_1D725A7EC();
    v13 = FormatBoolean.value(contextLayoutOptions:)(v43);

    sub_1D5D2F2C4(v5, v6, v7);
    v14 = v9;
    if (v13)
    {
      v15 = objc_opt_self();
      if (v37)
      {
        v16 = v37;
        v17 = sub_1D726203C();
        a1 = [v15 ts:v17 internalSystemImageNamed:v16 withConfiguration:?];
      }

      else
      {
        v16 = sub_1D726203C();
        a1 = [v15 ts:v16 internalSystemImageNamed:?];
      }

      v20 = v34;
LABEL_18:
      v24 = v8;
      v25 = v8;
      if ((~v8 & 0xF000000000000007) == 0)
      {
        if ((~v33 & 0xF000000000000007) == 0)
        {
          goto LABEL_24;
        }

        v25 = swift_allocObject();
        sub_1D5FBA108();
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1D7270C10;
        *(v26 + 32) = v33;
        *(v26 + 40) = v20;
        *(v25 + 16) = v26;

        v24 = v8;
      }

      if (!a1)
      {
        sub_1D5FB99FC(v24);
        sub_1D5FBA158(v25);
        goto LABEL_26;
      }

      sub_1D5FB99FC(v24);
      v27 = FormatSymbolImageColor.symbolConfiguration(context:)(v31);
      v28 = [a1 imageByApplyingSymbolConfiguration_];
      sub_1D5FBA158(v25);

      a1 = v28;
LABEL_24:
      if (a1)
      {

        return a1;
      }

LABEL_26:
      type metadata accessor for FormatLayoutError(0);
      sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v29 = v14;
      v29[1] = v32;
      v29[2] = v37;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return a1;
    }

    if (v37)
    {
      v18 = v37;

      v19 = sub_1D61E05F4(v9, v32);
      v20 = v34;
      if (v19 == 13)
      {
        v21 = sub_1D726203C();
        v22 = [objc_opt_self() systemImageNamed:v21 withConfiguration:v18];
      }

      else
      {
        v21 = sub_1D61E0640(v19);
        v22 = [v21 imageWithConfiguration_];
      }

      a1 = v22;
    }

    else
    {

      v23 = sub_1D61E05F4(v9, v32);
      v20 = v34;
      if (v23 != 13)
      {
        a1 = sub_1D61E0640(v23);
        goto LABEL_18;
      }

      v18 = sub_1D726203C();
      a1 = [objc_opt_self() systemImageNamed_];
    }

    goto LABEL_18;
  }

  return a1;
}

uint64_t sub_1D5F9D31C(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v12 = *(v6 + 56);

      sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v12;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1ACC(v10, a2 & 1, a3);
  }

  return a2 & 1;
}

double sub_1D5F9D460(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a2 + 16))
  {
    v5 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v13 = *(v6 + 56);

      sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v13;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    sub_1D5FA1CE4(v10, a2);
    a3 = v11;
  }

  return a3;
}

uint64_t sub_1D5F9D564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v12 = *(v6 + 56);

      sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v12;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1B60(v10, a2, a3);
  }

  return a2;
}

uint64_t sub_1D5F9D660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v8 = v7();
    v9 = *(*(v8 + 40) + 16);
    swift_beginAccess();
    if (*(*(v9 + 16) + 16))
    {
      v14 = *(v8 + 56);

      sub_1D6F622E0(v10);
      sub_1D5B886D0(v11);

      v12 = v14;
    }

    else
    {
      v12 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1BF4(v12, a2, a3, a4);
  }

  else
  {
  }

  return a2;
}

double sub_1D5F9D7C8@<D0>(uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  if (*(*(v6 + *(a3(0, a2, type metadata accessor for FormatSelectorValue) + 36)) + 16))
  {
    v10 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v11 = v10();
    v12 = *(*(v11 + 40) + 16);
    swift_beginAccess();
    if (*(*(v12 + 16) + 16))
    {
      v19 = *(v11 + 56);

      sub_1D6F622E0(v13);
      sub_1D5B886D0(v14);

      v15 = v19;
    }

    else
    {
      v15 = sub_1D6E46E28();
    }

    a5(v15);
  }

  else
  {
    v16 = a4(0);
    v17 = *(*(v16 - 8) + 16);

    v17(a6, v6, v16);
  }

  return result;
}

double sub_1D5F9D964@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a3 + 16))
  {
    v7 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v8 = v7();
    v9 = *(*(v8 + 40) + 16);
    swift_beginAccess();
    if (*(*(v9 + 16) + 16))
    {
      v14 = *(v8 + 56);

      sub_1D6F622E0(v10);
      sub_1D5B886D0(v11);

      v12 = v14;
    }

    else
    {
      v12 = sub_1D6E46E28();
    }

    sub_1D5FA2770(v12, a2, a3, a4);
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

uint64_t sub_1D5F9DA9C(__int128 *a1, char a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F51B1B90(&type metadata for FormatPrefetchContext);
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v11 = *(v5 + 56);

      sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);

      v9 = v11;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1ACC(v9, a2 & 1, a3);
  }

  return a2 & 1;
}

double sub_1D5F9DBF8(__int128 *a1, uint64_t a2, double a3)
{
  if (*(a2 + 16))
  {
    v5 = off_1F51B1B90(&type metadata for FormatPrefetchContext);
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v12 = *(v5 + 56);

      sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);

      v9 = v12;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    sub_1D5FA1CE4(v9, a2);
    a3 = v10;
  }

  return a3;
}

uint64_t sub_1D5F9DD0C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F51B1B90(&type metadata for FormatPrefetchContext);
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v11 = *(v5 + 56);

      sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);

      v9 = v11;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1B60(v9, a2, a3);
  }

  return a2;
}

uint64_t sub_1D5F9DE20(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = off_1F51B1B90(&type metadata for FormatPrefetchContext);
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1BF4(v11, a2, a3, a4);
  }

  else
  {
  }

  return a2;
}

double sub_1D5F9DF98@<D0>(uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  if (*(*(v6 + *(a3(0, a2, type metadata accessor for FormatSelectorValue) + 36)) + 16))
  {
    v10 = off_1F51B1B90(&type metadata for FormatPrefetchContext);
    v11 = *(*(v10 + 40) + 16);
    swift_beginAccess();
    if (*(*(v11 + 16) + 16))
    {
      v18 = *(v10 + 56);

      sub_1D6F622E0(v12);
      sub_1D5B886D0(v13);

      v14 = v18;
    }

    else
    {
      v14 = sub_1D6E46E28();
    }

    a5(v14);
  }

  else
  {
    v15 = a4(0);
    v16 = *(*(v15 - 8) + 16);

    v16(a6, v6, v15);
  }

  return result;
}

double sub_1D5F9E140@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a3 + 16))
  {
    v7 = off_1F51B1B90(&type metadata for FormatPrefetchContext);
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    sub_1D5FA3464(v11, a2, a3, sub_1D5FAE784, a4);
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

uint64_t sub_1D5F9E298(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F51B94D0[0];
    type metadata accessor for FormatNodeBinderContext(0);
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v12 = *(v6 + 56);

      sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v12;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1ACC(v10, a2 & 1, a3);
  }

  return a2 & 1;
}

double sub_1D5F9E3DC(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a2 + 16))
  {
    v5 = off_1F51B94D0[0];
    type metadata accessor for FormatNodeBinderContext(0);
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v13 = *(v6 + 56);

      sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v13;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    sub_1D5FA1CE4(v10, a2);
    a3 = v11;
  }

  return a3;
}

uint64_t sub_1D5F9E4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F51B94D0[0];
    type metadata accessor for FormatNodeBinderContext(0);
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v12 = *(v6 + 56);

      sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v12;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1B60(v10, a2, a3);
  }

  return a2;
}

uint64_t sub_1D5F9E5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = off_1F51B94D0[0];
    type metadata accessor for FormatNodeBinderContext(0);
    v8 = v7();
    v9 = *(*(v8 + 40) + 16);
    swift_beginAccess();
    if (*(*(v9 + 16) + 16))
    {
      v14 = *(v8 + 56);

      sub_1D6F622E0(v10);
      sub_1D5B886D0(v11);

      v12 = v14;
    }

    else
    {
      v12 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1BF4(v12, a2, a3, a4);
  }

  else
  {
  }

  return a2;
}

double sub_1D5F9E744@<D0>(uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  if (*(*(v6 + *(a3(0, a2, type metadata accessor for FormatSelectorValue) + 36)) + 16))
  {
    v10 = off_1F51B94D0[0];
    type metadata accessor for FormatNodeBinderContext(0);
    v11 = v10();
    v12 = *(*(v11 + 40) + 16);
    swift_beginAccess();
    if (*(*(v12 + 16) + 16))
    {
      v19 = *(v11 + 56);

      sub_1D6F622E0(v13);
      sub_1D5B886D0(v14);

      v15 = v19;
    }

    else
    {
      v15 = sub_1D6E46E28();
    }

    a5(v15);
  }

  else
  {
    v16 = a4(0);
    v17 = *(*(v16 - 8) + 16);

    v17(a6, v6, v16);
  }

  return result;
}

double sub_1D5F9E8E0@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a3 + 16))
  {
    v7 = off_1F51B94D0[0];
    type metadata accessor for FormatNodeBinderContext(0);
    v8 = v7();
    v9 = *(*(v8 + 40) + 16);
    swift_beginAccess();
    if (*(*(v9 + 16) + 16))
    {
      v14 = *(v8 + 56);

      sub_1D6F622E0(v10);
      sub_1D5B886D0(v11);

      v12 = v14;
    }

    else
    {
      v12 = sub_1D6E46E28();
    }

    sub_1D5FA3464(v12, a2, a3, sub_1D5FAE784, a4);
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

uint64_t sub_1D5F9EA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v12 = *(v6 + 56);

      sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v12;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA29C0(v10, a2, a3);
  }

  else
  {
  }

  return a2;
}

double sub_1D5F9EB60@<D0>(unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if (*(a3 + 16))
  {
    v7 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v8 = v7();
    v9 = *(*(v8 + 40) + 16);
    swift_beginAccess();
    if (*(*(v9 + 16) + 16))
    {
      v14 = *(v8 + 56);

      sub_1D6F622E0(v10);
      sub_1D5B886D0(v11);

      v12 = v14;
    }

    else
    {
      v12 = sub_1D6E46E28();
    }

    sub_1D5FA2A94(v12, a2, a3, sub_1D5EB1500, sub_1D5EB1500, sub_1D5EB15C4, a4);
  }

  else
  {
    *a4 = a2;

    return sub_1D5EB1500(a2);
  }

  return result;
}

double sub_1D5F9ED00@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, void (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, void *a6@<X8>)
{
  if (*(a3 + 16))
  {
    v9 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v10 = v9();
    v11 = *(*(v10 + 40) + 16);
    swift_beginAccess();
    if (*(*(v11 + 16) + 16))
    {
      v16 = *(v10 + 56);

      sub_1D6F622E0(v12);
      sub_1D5B886D0(v13);

      v14 = v16;
    }

    else
    {
      v14 = sub_1D6E46E28();
    }

    a5(v14, a2, a3);
  }

  else
  {
    *a6 = a2;

    a4(a2);
  }

  return result;
}

double sub_1D5F9EE44@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a3 + 16))
  {
    v7 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v8 = v7();
    v9 = *(*(v8 + 40) + 16);
    swift_beginAccess();
    if (*(*(v9 + 16) + 16))
    {
      v14 = *(v8 + 56);

      sub_1D6F622E0(v10);
      sub_1D5B886D0(v11);

      v12 = v14;
    }

    else
    {
      v12 = sub_1D6E46E28();
    }

    sub_1D5FA2C00(v12, a2, a3, a4);
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

double sub_1D5F9EF7C@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a3 + 16))
  {
    v7 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v8 = v7();
    v9 = *(*(v8 + 40) + 16);
    swift_beginAccess();
    if (*(*(v9 + 16) + 16))
    {
      v14 = *(v8 + 56);

      sub_1D6F622E0(v10);
      sub_1D5B886D0(v11);

      v12 = v14;
    }

    else
    {
      v12 = sub_1D6E46E28();
    }

    sub_1D5FA2E6C(v12, a2, a3, a4);
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

double sub_1D5F9F0B4@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a5 + 16))
  {
    v11 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v12 = v11();
    v13 = *(*(v12 + 40) + 16);
    swift_beginAccess();
    if (*(*(v13 + 16) + 16))
    {
      v18 = *(v12 + 56);

      sub_1D6F622E0(v14);
      sub_1D5B886D0(v15);

      v16 = v18;
    }

    else
    {
      v16 = sub_1D6E46E28();
    }

    sub_1D5FA2F94(v16, a2, a3, a4 & 1, a5, a6);
  }

  else
  {
    *a6 = a2;
    *(a6 + 8) = a3;
    *(a6 + 16) = a4 & 1;

    sub_1D5E04CC4(a2, a3, a4 & 1);
  }

  return result;
}

double sub_1D5F9F214@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a3 + 16))
  {
    v7 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v8 = v7();
    v9 = *(*(v8 + 40) + 16);
    swift_beginAccess();
    if (*(*(v9 + 16) + 16))
    {
      v14 = *(v8 + 56);

      sub_1D6F622E0(v10);
      sub_1D5B886D0(v11);

      v12 = v14;
    }

    else
    {
      v12 = sub_1D6E46E28();
    }

    sub_1D5FA30E4(v12, a2, a3, a4);
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

double sub_1D5F9F394@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, _BYTE *a5@<X8>)
{
  if (*(a3 + 16))
  {
    v9 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v10 = v9();
    v11 = *(*(v10 + 40) + 16);
    swift_beginAccess();
    if (*(*(v11 + 16) + 16))
    {
      v16 = *(v10 + 56);

      sub_1D6F622E0(v12);
      sub_1D5B886D0(v13);

      v14 = v16;
    }

    else
    {
      v14 = sub_1D6E46E28();
    }

    a4(v14, a2, a3);
  }

  else
  {
    *a5 = a2;
  }

  return v15;
}

double sub_1D5F9F4A8@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = a2;
  if (*(a3 + 16))
  {
    v8 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v9 = v8();
    v10 = *(*(v9 + 40) + 16);
    swift_beginAccess();
    if (*(*(v10 + 16) + 16))
    {
      v15 = *(v9 + 56);

      sub_1D6F622E0(v11);
      sub_1D5B886D0(v12);

      v13 = v15;
    }

    else
    {
      v13 = sub_1D6E46E28();
    }

    sub_1D5FA33C8(v13, v5, a3, a4);
  }

  else
  {
    *a4 = a2;
  }

  return v14;
}

double sub_1D5F9F5B4@<D0>(char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 16))
  {
    v8 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v9 = v8();
    v10 = *(*(v9 + 40) + 16);
    swift_beginAccess();
    if (*(*(v10 + 16) + 16))
    {
      v15 = *(v9 + 56);

      sub_1D6F622E0(v11);
      sub_1D5B886D0(v12);

      v13 = v15;
    }

    else
    {
      v13 = sub_1D6E46E28();
    }

    sub_1D5FA3704(v13, a2 & 1, a3, a4);
  }

  else
  {
    *a4 = a2 & 1;
  }

  return v14;
}

double sub_1D5F9F6DC@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  if (*(a3 + 16))
  {
    v9 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v10 = v9();
    v11 = *(*(v10 + 40) + 16);
    swift_beginAccess();
    if (*(*(v11 + 16) + 16))
    {
      v16 = *(v10 + 56);

      sub_1D6F622E0(v12);
      sub_1D5B886D0(v13);

      v14 = v16;
    }

    else
    {
      v14 = sub_1D6E46E28();
    }

    sub_1D5FA3464(v14, a2, a3, a4, a5);
  }

  else
  {
    *a5 = a2;
  }

  return result;
}

uint64_t sub_1D5F9F81C(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = sub_1D6C4356C();
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v11 = *(v5 + 56);

      sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);

      v9 = v11;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1ACC(v9, a2 & 1, a3);
  }

  return a2 & 1;
}

double sub_1D5F9F938(double a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = sub_1D6C4356C();
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v12 = *(v5 + 56);

      sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);

      v9 = v12;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    sub_1D5FA1CE4(v9, a3);
    a1 = v10;
  }

  return a1;
}

uint64_t sub_1D5F9FA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = sub_1D6C4356C();
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v11 = *(v5 + 56);

      sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);

      v9 = v11;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1B60(v9, a2, a3);
  }

  return a2;
}

uint64_t sub_1D5F9FAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = sub_1D6C4356C();
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1BF4(v11, a2, a3, a4);
  }

  else
  {
  }

  return a2;
}

double sub_1D5F9FC18@<D0>(uint64_t a1@<X1>, uint64_t (*a2)(void, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X2>, uint64_t (*a3)(void)@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  if (*(*(v5 + *(a2(0, a1, type metadata accessor for FormatSelectorValue) + 36)) + 16))
  {
    v9 = sub_1D6C4356C();
    v10 = *(*(v9 + 40) + 16);
    swift_beginAccess();
    if (*(*(v10 + 16) + 16))
    {
      v17 = *(v9 + 56);

      sub_1D6F622E0(v11);
      sub_1D5B886D0(v12);

      v13 = v17;
    }

    else
    {
      v13 = sub_1D6E46E28();
    }

    a4(v13);
  }

  else
  {
    v14 = a3(0);
    v15 = *(*(v14 - 8) + 16);

    v15(a5, v5, v14);
  }

  return result;
}

double sub_1D5F9FD80@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = sub_1D6C4356C();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v12 = *(v6 + 56);

      sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v12;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    sub_1D5FA3464(v10, a1, a2, sub_1D5FAE784, a3);
  }

  else
  {
    *a3 = a1;
  }

  return result;
}

double sub_1D5F9FE98@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a3 + 16))
  {
    v7 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v8 = v7();
    v9 = *(*(v8 + 40) + 16);
    swift_beginAccess();
    if (*(*(v9 + 16) + 16))
    {
      v14 = *(v8 + 56);

      sub_1D6F622E0(v10);
      sub_1D5B886D0(v11);

      v12 = v14;
    }

    else
    {
      v12 = sub_1D6E46E28();
    }

    sub_1D5FA35D8(v12, a2, a3, a4);
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

double sub_1D5F9FFD0@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a3 + 16))
  {
    v7 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v8 = v7();
    v9 = *(*(v8 + 40) + 16);
    swift_beginAccess();
    if (*(*(v9 + 16) + 16))
    {
      v14 = *(v8 + 56);

      sub_1D6F622E0(v10);
      sub_1D5B886D0(v11);

      v12 = v14;
    }

    else
    {
      v12 = sub_1D6E46E28();
    }

    sub_1D5FA37A8(v12, a2, a3, a4);
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

uint64_t sub_1D5FA0108(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext(0);
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v12 = *(v6 + 56);

      sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v12;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1ACC(v10, a2 & 1, a3);
  }

  return a2 & 1;
}

double sub_1D5FA0248(double a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext(0);
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v13 = *(v6 + 56);

      sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v13;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    sub_1D5FA1CE4(v10, a3);
    a1 = v11;
  }

  return a1;
}

uint64_t sub_1D5FA0348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext(0);
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v12 = *(v6 + 56);

      sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v12;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1B60(v10, a2, a3);
  }

  return a2;
}

uint64_t sub_1D5FA0440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext(0);
    v8 = v7();
    v9 = *(*(v8 + 40) + 16);
    swift_beginAccess();
    if (*(*(v9 + 16) + 16))
    {
      v14 = *(v8 + 56);

      sub_1D6F622E0(v10);
      sub_1D5B886D0(v11);

      v12 = v14;
    }

    else
    {
      v12 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1BF4(v12, a2, a3, a4);
  }

  else
  {
  }

  return a2;
}

double sub_1D5FA05A4@<D0>(uint64_t a1@<X1>, uint64_t (*a2)(void, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X2>, uint64_t (*a3)(void)@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  if (*(*(v5 + *(a2(0, a1, type metadata accessor for FormatSelectorValue) + 36)) + 16))
  {
    v9 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext(0);
    v10 = v9();
    v11 = *(*(v10 + 40) + 16);
    swift_beginAccess();
    if (*(*(v11 + 16) + 16))
    {
      v18 = *(v10 + 56);

      sub_1D6F622E0(v12);
      sub_1D5B886D0(v13);

      v14 = v18;
    }

    else
    {
      v14 = sub_1D6E46E28();
    }

    a4(v14);
  }

  else
  {
    v15 = a3(0);
    v16 = *(*(v15 - 8) + 16);

    v16(a5, v5, v15);
  }

  return result;
}

double sub_1D5FA073C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext(0);
    v7 = v6();
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    sub_1D5FA3464(v11, a1, a2, sub_1D5FAE784, a3);
  }

  else
  {
    *a3 = a1;
  }

  return result;
}

double sub_1D5FA0884@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext(0);
    v7 = v6();
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    sub_1D5FA37A8(v11, a1, a2, a3);
  }

  else
  {
    *a3 = a1;
  }

  return result;
}

double sub_1D5FA09B8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext(0);
    v7 = v6();
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    sub_1D5FA2C00(v11, a1, a2, a3);
  }

  else
  {
    *a3 = a1;
  }

  return result;
}

uint64_t sub_1D5FA0AEC(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = *(a1 + 88);
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v11 = *(v5 + 56);

      sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);
      v9 = v11;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1ACC(v9, a2 & 1, a3);
  }

  return a2 & 1;
}

double sub_1D5FA0BF0(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a2 + 16))
  {
    v5 = *(a1 + 88);
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v12 = *(v5 + 56);

      sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);
      v9 = v12;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    sub_1D5FA1CE4(v9, a2);
    a3 = v10;
  }

  return a3;
}

uint64_t sub_1D5FA0CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = *(a1 + 88);
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v11 = *(v5 + 56);

      sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);
      v9 = v11;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1B60(v9, a2, a3);
  }

  return a2;
}

uint64_t sub_1D5FA0D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = *(a1 + 88);
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);
      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1BF4(v11, a2, a3, a4);
  }

  else
  {
  }

  return a2;
}

double sub_1D5FA0E88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v9 = v6;
  if (*(*(v9 + *(a3(0, a2, type metadata accessor for FormatSelectorValue) + 36)) + 16))
  {
    v12 = *(*(*(a1 + 88) + 40) + 16);
    swift_beginAccess();
    if (*(*(v12 + 16) + 16))
    {

      sub_1D6F622E0(v13);
      sub_1D5B886D0(v14);
    }

    else
    {
      sub_1D6E46E28();
    }

    a5();
  }

  else
  {
    v15 = a4(0);
    v16 = *(*(v15 - 8) + 16);

    v16(a6, v9, v15);
  }

  return result;
}

double sub_1D5FA0FD8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a3 + 16))
  {
    v7 = *(a1 + 88);
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);
      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    sub_1D5FA3464(v11, a2, a3, sub_1D5FAE784, a4);
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

uint64_t sub_1D5FA10D8(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = *(a1 + 48);
    type metadata accessor for FormatVariableCollection();
    v6 = swift_allocObject();
    *(v6 + 16) = MEMORY[0x1E69E7CC8];
    type metadata accessor for FormatOptionCollection();
    swift_allocObject();
    v7 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v6);
    type metadata accessor for FormatContextLayoutOptions();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = v5;
    *(inited + 32) = 0x3FF0000000000000;
    *(inited + 40) = v7;
    v9 = MEMORY[0x1E69E7CD0];
    *(inited + 48) = 0;
    *(inited + 56) = v9;
    v10 = *(v7 + 16);
    swift_beginAccess();
    if (*(*(v10 + 16) + 16))
    {
      sub_1D6F622E0(v9);
      sub_1D5B886D0(v11);
    }

    else
    {
      v9 = sub_1D6E46E28();

      swift_setDeallocating();
    }

    a2 = sub_1D5FA1ACC(v9, a2 & 1, a3);
  }

  return a2 & 1;
}

double sub_1D5FA1280(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a2 + 16))
  {
    v5 = *(a1 + 48);
    type metadata accessor for FormatVariableCollection();
    v6 = swift_allocObject();
    *(v6 + 16) = MEMORY[0x1E69E7CC8];
    type metadata accessor for FormatOptionCollection();
    swift_allocObject();
    v7 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v6);
    type metadata accessor for FormatContextLayoutOptions();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = v5;
    *(inited + 32) = 0x3FF0000000000000;
    *(inited + 40) = v7;
    v9 = MEMORY[0x1E69E7CD0];
    *(inited + 48) = 0;
    *(inited + 56) = v9;
    v10 = *(v7 + 16);
    swift_beginAccess();
    if (*(*(v10 + 16) + 16))
    {
      sub_1D6F622E0(v9);
      sub_1D5B886D0(v11);
    }

    else
    {
      v9 = sub_1D6E46E28();

      swift_setDeallocating();
    }

    sub_1D5FA1CE4(v9, a2);
    a3 = v12;
  }

  return a3;
}

uint64_t sub_1D5FA13E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = *(a1 + 48);
    type metadata accessor for FormatVariableCollection();
    v6 = swift_allocObject();
    *(v6 + 16) = MEMORY[0x1E69E7CC8];
    type metadata accessor for FormatOptionCollection();
    swift_allocObject();
    v7 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v6);
    type metadata accessor for FormatContextLayoutOptions();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = v5;
    *(inited + 32) = 0x3FF0000000000000;
    *(inited + 40) = v7;
    v9 = MEMORY[0x1E69E7CD0];
    *(inited + 48) = 0;
    *(inited + 56) = v9;
    v10 = *(v7 + 16);
    swift_beginAccess();
    if (*(*(v10 + 16) + 16))
    {
      sub_1D6F622E0(v9);
      sub_1D5B886D0(v11);
    }

    else
    {
      v9 = sub_1D6E46E28();

      swift_setDeallocating();
    }

    a2 = sub_1D5FA1B60(v9, a2, a3);
  }

  return a2;
}

uint64_t sub_1D5FA1540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = *(a1 + 48);
    type metadata accessor for FormatVariableCollection();
    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC8];
    type metadata accessor for FormatOptionCollection();
    swift_allocObject();
    v9 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v8);
    type metadata accessor for FormatContextLayoutOptions();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = v7;
    *(inited + 32) = 0x3FF0000000000000;
    *(inited + 40) = v9;
    v11 = MEMORY[0x1E69E7CD0];
    *(inited + 48) = 0;
    *(inited + 56) = v11;
    v12 = *(v9 + 16);
    swift_beginAccess();
    if (*(*(v12 + 16) + 16))
    {
      sub_1D6F622E0(v11);
      sub_1D5B886D0(v13);
    }

    else
    {
      v11 = sub_1D6E46E28();

      swift_setDeallocating();
    }

    a2 = sub_1D5FA1BF4(v11, a2, a3, a4);
  }

  else
  {
  }

  return a2;
}

void sub_1D5FA170C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v9 = v6;
  if (*(*(v9 + *(a3(0, a2, type metadata accessor for FormatSelectorValue) + 36)) + 16))
  {
    v12 = *(a1 + 48);
    type metadata accessor for FormatVariableCollection();
    v13 = swift_allocObject();
    *(v13 + 16) = MEMORY[0x1E69E7CC8];
    type metadata accessor for FormatOptionCollection();
    swift_allocObject();
    v14 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v13);
    type metadata accessor for FormatContextLayoutOptions();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = v12;
    *(inited + 32) = 0x3FF0000000000000;
    *(inited + 40) = v14;
    v16 = MEMORY[0x1E69E7CD0];
    *(inited + 48) = 0;
    *(inited + 56) = v16;
    v17 = *(v14 + 16);
    swift_beginAccess();
    if (*(*(v17 + 16) + 16))
    {
      sub_1D6F622E0(v16);
      sub_1D5B886D0(v18);
    }

    else
    {
      v16 = sub_1D6E46E28();

      swift_setDeallocating();
    }

    a5(v16);
  }

  else
  {
    v19 = a4(0);
    v20 = *(*(v19 - 8) + 16);

    v20(a6, v9, v19);
  }
}

void sub_1D5FA1914(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a3 + 16))
  {
    v7 = *(a1 + 48);
    type metadata accessor for FormatVariableCollection();
    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC8];
    type metadata accessor for FormatOptionCollection();
    swift_allocObject();
    v9 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v8);
    type metadata accessor for FormatContextLayoutOptions();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = v7;
    *(inited + 32) = 0x3FF0000000000000;
    *(inited + 40) = v9;
    v11 = MEMORY[0x1E69E7CD0];
    *(inited + 48) = 0;
    *(inited + 56) = v11;
    v12 = *(v9 + 16);
    swift_beginAccess();
    if (*(*(v12 + 16) + 16))
    {
      sub_1D6F622E0(v11);
      sub_1D5B886D0(v13);
    }

    else
    {
      v11 = sub_1D6E46E28();

      swift_setDeallocating();
    }

    sub_1D5FA3464(v11, a2, a3, sub_1D5FAE784, a4);
  }

  else
  {
    *a4 = a2;
  }
}

uint64_t sub_1D5FA1ACC(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 48);
    do
    {
      v7 = *v6;
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);

      v10 = sub_1D5FAC504(a1, v9, v8, v7);

      if (v10 != 2)
      {
        a2 = v10;
      }

      v6 += 24;
      --v4;
    }

    while (v4);
  }

  return a2 & 1;
}

uint64_t sub_1D5FA1B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 48);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = *(v6 - 2);

      v10 = sub_1D5FAB9E0(a1, v9, v8, v7);
      LOBYTE(v9) = v11;

      if ((v9 & 1) == 0)
      {
        a2 = v10;
      }

      v6 += 3;
      --v4;
    }

    while (v4);
  }

  return a2;
}

uint64_t sub_1D5FA1BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  if (v5)
  {

    v8 = (a4 + 56);
    do
    {
      v11 = *(v8 - 1);
      v10 = *v8;
      v13 = *(v8 - 3);
      v12 = *(v8 - 2);

      v14 = sub_1D5FAAEB0(a1, v13, v12, v11, v10);
      if (v15)
      {
        v9 = v14;

        a2 = v9;
      }

      else
      {
      }

      v8 += 4;
      --v5;
    }

    while (v5);
  }

  else
  {
  }

  return a2;
}

void sub_1D5FA1CE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a2 + 48;
LABEL_3:
    v6 = (v5 + 24 * v4);
    while (v2 != v4)
    {
      if (v4 >= v2)
      {
        __break(1u);
LABEL_11:
        __break(1u);
        return;
      }

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

      v8 = *v6;
      v9 = *(v6 - 2);
      v10 = *(v6 - 1);

      sub_1D5FAD028(a1, v9, v10, v8);
      v12 = v11;

      ++v4;
      v6 += 3;
      if ((v12 & 1) == 0)
      {
        v4 = v7;
        goto LABEL_3;
      }
    }
  }
}

uint64_t sub_1D5FA1DB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v40 = a1;
  sub_1D5B7B320(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v33 - v7);
  sub_1D5CF49AC(0, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v33 - v11;
  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v33 - v20;
  sub_1D5CF49AC(0, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
  v23 = *(v3 + *(v22 + 36));
  v24 = *(v14 + 16);
  v38 = *(v23 + 16);
  if (v38)
  {
    v36 = v17;
    v37 = v23;
    v33 = a2;
    v34 = v24;
    v35 = v14 + 16;
    result = (v24)(v21, v3, v13);
    v26 = 0;
    v27 = (v14 + 48);
    v28 = (v14 + 32);
    v29 = (v14 + 8);
    while (v26 < *(v37 + 16))
    {
      sub_1D5FB9F78(v37 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v26, v12, &qword_1EDF3A6E0, sub_1D5CF49AC);
      sub_1D5FADB50(v40, &qword_1EDF3A6E0, sub_1D5CF49AC, MEMORY[0x1E6968FB0], v8);
      v32 = *v27;
      if ((*v27)(v8, 1, v13) == 1)
      {
        v30 = v36;
        v34(v36, v21, v13);
        if (v32(v8, 1, v13) != 1)
        {
          sub_1D5B87964(v8, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        }
      }

      else
      {
        v30 = v36;
        (*v28)(v36, v8, v13);
      }

      ++v26;
      sub_1D5FB9FF8(v12, &qword_1EDF3A6E0, sub_1D5CF49AC);
      (*v29)(v21, v13);
      v31 = *v28;
      result = (*v28)(v21, v30, v13);
      if (v38 == v26)
      {
        return (v31)(v33, v21, v13);
      }
    }

    __break(1u);
  }

  else
  {

    return (v24)(a2, v3, v13);
  }

  return result;
}

uint64_t sub_1D5FA21FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v40 = a1;
  sub_1D5B7B320(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v33 - v7);
  sub_1D5FB9EDC(0, &qword_1EDF3A6D0, type metadata accessor for FormatSelectorValueSelector);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v33 - v11;
  v13 = sub_1D725891C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v33 - v20;
  sub_1D5FB9EDC(0, &qword_1EDF40030, type metadata accessor for FormatSelectorValue);
  v23 = *(v3 + *(v22 + 36));
  v24 = *(v14 + 16);
  v38 = *(v23 + 16);
  if (v38)
  {
    v36 = v17;
    v37 = v23;
    v33 = a2;
    v34 = v24;
    v35 = v14 + 16;
    result = (v24)(v21, v3, v13);
    v26 = 0;
    v27 = (v14 + 48);
    v28 = (v14 + 32);
    v29 = (v14 + 8);
    while (v26 < *(v37 + 16))
    {
      sub_1D5FB9F78(v37 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v26, v12, &qword_1EDF3A6D0, sub_1D5FB9EDC);
      sub_1D5FADB50(v40, &qword_1EDF3A6D0, sub_1D5FB9EDC, MEMORY[0x1E6969530], v8);
      v32 = *v27;
      if ((*v27)(v8, 1, v13) == 1)
      {
        v30 = v36;
        v34(v36, v21, v13);
        if (v32(v8, 1, v13) != 1)
        {
          sub_1D5B87964(v8, &qword_1EDF45B00, MEMORY[0x1E6969530]);
        }
      }

      else
      {
        v30 = v36;
        (*v28)(v36, v8, v13);
      }

      ++v26;
      sub_1D5FB9FF8(v12, &qword_1EDF3A6D0, sub_1D5FB9EDC);
      (*v29)(v21, v13);
      v31 = *v28;
      result = (*v28)(v21, v30, v13);
      if (v38 == v26)
      {
        return (v31)(v33, v21, v13);
      }
    }

    __break(1u);
  }

  else
  {

    return (v24)(a2, v3, v13);
  }

  return result;
}

double sub_1D5FA2640@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v4 = a2;
  v6 = *(a3 + 16);
  if (v6)
  {

    sub_1D5F33D5C(v4);
    v9 = (a3 + 48);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = *(v9 - 2);

      sub_1D5F33D5C(v10);
      sub_1D5FAF2C8(a1, v12, v11, v10, &v15);
      v13 = v15;
      if ((~v15 & 0xF000000000000007) == 0)
      {
        sub_1D5F33D5C(v4);
        v13 = v4;
      }

      v9 += 3;

      sub_1D5F33D8C(v10);
      sub_1D5F33D8C(v4);
      v4 = v13;
      --v6;
    }

    while (v6);

    *a4 = v13;
  }

  else
  {
    *a4 = a2;

    return sub_1D5F33D5C(a2);
  }

  return result;
}

double sub_1D5FA2770@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a2;
  v5 = *(a3 + 16);
  if (v5)
  {

    v8 = (a3 + 48);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v11 = *(v8 - 2);

      sub_1D5FAFE08(a1, v11, v10, v9, &v16);
      v12 = v16;
      v13 = ~v16 & 0xF000000000000007;

      if (v13)
      {

        v4 = v12;
      }

      v8 += 3;
      --v5;
    }

    while (v5);

    *a4 = v4;
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

unint64_t sub_1D5FA2898@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v4 = a2;
  v6 = *(a3 + 16);
  if (v6)
  {
    sub_1D5DEA234(a2);
    v9 = (a3 + 48);
    do
    {
      v12 = *(v9 - 1);
      v11 = *v9;
      v13 = *(v9 - 2);

      sub_1D5DEA234(v11);
      sub_1D5FB14CC(a1, v13, v12, v11, 3, sub_1D5DEA234, &v15);
      v14 = v15;
      if (v15 == 3)
      {
        sub_1D5DEA234(v4);
        v14 = v4;
      }

      v9 += 3;

      sub_1D5CBF568(v11);
      result = sub_1D5CBF568(v4);
      v4 = v14;
      --v6;
    }

    while (v6);
    *a4 = v14;
  }

  else
  {
    *a4 = a2;

    return sub_1D5DEA234(a2);
  }

  return result;
}

uint64_t sub_1D5FA29C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {

    v7 = (a3 + 48);
    do
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      v11 = *(v7 - 2);

      v12 = sub_1D5FB094C(a1, v11, v9, v10);
      if (v12)
      {
        v8 = v12;

        a2 = v8;
      }

      else
      {
      }

      v7 += 3;
      --v4;
    }

    while (v4);
  }

  else
  {
  }

  return a2;
}

void sub_1D5FA2A94(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, void (*a5)(uint64_t)@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  v7 = a2;
  v8 = *(a3 + 16);
  if (v8)
  {

    a4(v7);
    v13 = (a3 + 48);
    do
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      v16 = *(v13 - 2);

      a4(v14);
      sub_1D5FB14CC(a1, v16, v15, v14, 0xF000000000000007, a5, &v20);
      v17 = v20;
      if ((~v20 & 0xF000000000000007) == 0)
      {
        a4(v7);
        v17 = v7;
      }

      v13 += 3;

      a6(v14);
      a6(v7);
      v7 = v17;
      --v8;
    }

    while (v8);

    *a7 = v17;
  }

  else
  {
    *a7 = a2;

    a4(a2);
  }
}

double sub_1D5FA2C00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a2;
  v5 = *(a3 + 16);
  if (v5)
  {

    v8 = (a3 + 48);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v11 = *(v8 - 2);

      sub_1D5FB0A94(a1, v11, v10, v9, &v16);
      v12 = v16;
      v13 = ~v16 & 0xF000000000000007;

      if (v13)
      {

        v4 = v12;
      }

      v8 += 3;
      --v5;
    }

    while (v5);

    *a4 = v4;
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

void sub_1D5FA2D28(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v4 = a2;
  v6 = *(a3 + 16);
  if (v6)
  {

    sub_1D5D0A57C(v4);
    v9 = (a3 + 48);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = *(v9 - 2);

      sub_1D5D0A57C(v10);
      sub_1D5FB14CC(a1, v12, v11, v10, 2, sub_1D5D0A57C, &v14);
      v13 = v14;
      if (v14 == 2)
      {
        sub_1D5D0A57C(v4);
        v13 = v4;
      }

      v9 += 3;

      sub_1D5D0A58C(v10);
      sub_1D5D0A58C(v4);
      v4 = v13;
      --v6;
    }

    while (v6);

    *a4 = v13;
  }

  else
  {
    *a4 = a2;

    sub_1D5D0A57C(a2);
  }
}

double sub_1D5FA2E6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a2;
  v5 = *(a3 + 16);
  if (v5)
  {

    v8 = (a3 + 48);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v11 = *(v8 - 2);

      sub_1D5FB0BE4(a1, v11, v10, v9, &v16);
      v12 = v16;
      v13 = ~v16 & 0xF000000000000007;

      if (v13)
      {

        v4 = v12;
      }

      v8 += 3;
      --v5;
    }

    while (v5);

    *a4 = v4;
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

uint64_t sub_1D5FA2F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v10 = *(a5 + 16);
  if (v10)
  {
    sub_1D5E04CC4(a2, a3, a4 & 1);
    v13 = a5 + 32;
    do
    {
      v15 = *(v13 + 16);
      v19[0] = *v13;
      v19[1] = v15;
      v20 = *(v13 + 32);
      sub_1D5FBA16C(v19, v17);
      sub_1D5FB0D34(a1, v17);
      v16 = v18;
      if (v18 == 255)
      {
        sub_1D5E04CC4(v8, v7, v6 & 1);
        sub_1D5FBA25C(v19);
        result = sub_1D5D2F2C4(v8, v7, v6 & 1);
      }

      else
      {
        sub_1D5FBA25C(v19);
        result = sub_1D5D2F2C4(v8, v7, v6 & 1);
        v8 = v17[0];
        v7 = v17[1];
        v6 = v16;
      }

      v13 += 40;
      --v10;
    }

    while (v10);
    *a6 = v8;
    *(a6 + 8) = v7;
    *(a6 + 16) = v6 & 1;
  }

  else
  {
    *a6 = a2;
    *(a6 + 8) = a3;
    *(a6 + 16) = a4 & 1;

    return sub_1D5E04CC4(a2, a3, a4 & 1);
  }

  return result;
}

void sub_1D5FA30E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a2;
  v6 = *(a3 + 16);
  if (v6)
  {

    v9 = (a3 + 48);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = *(v9 - 2);

      sub_1D5FB0E90(a1, v12, v10, v11, &v14);
      v13 = v14;
      if (v14)
      {

        v4 = v13;
      }

      else
      {
      }

      v9 += 3;
      --v6;
    }

    while (v6);
    *a4 = v4;
  }

  else
  {
    *a4 = a2;
  }
}

void sub_1D5FA31F4(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = (a3 + 48);
    do
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = *v8;
      v8 += 24;

      sub_1D5FB0FDC(a1, v10, v9, v11, &v13);
      v12 = v13;

      if (v12 != 6)
      {
        a2 = v12;
      }

      --v6;
    }

    while (v6);
  }

  *a4 = a2;
}

void sub_1D5FA3290(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = (a3 + 48);
    do
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = *v8;
      v8 += 24;

      sub_1D5FB1118(a1, v10, v9, v11, &v13);
      v12 = v13;

      if (v12 != 7)
      {
        a2 = v12;
      }

      --v6;
    }

    while (v6);
  }

  *a4 = a2;
}

void sub_1D5FA332C(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = (a3 + 48);
    do
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = *v8;
      v8 += 24;

      sub_1D5FB1254(a1, v10, v9, v11, &v13);
      v12 = v13;

      if (v12 != 3)
      {
        a2 = v12;
      }

      --v6;
    }

    while (v6);
  }

  *a4 = a2;
}

void sub_1D5FA33C8(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = (a3 + 48);
    do
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = *v8;
      v8 += 24;

      sub_1D5FB1390(a1, v10, v9, v11, &v13);
      v12 = v13;

      if (v12 != 4)
      {
        a2 = v12;
      }

      --v6;
    }

    while (v6);
  }

  *a4 = a2;
}

double sub_1D5FA3464@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v5 = a2;
  v6 = *(a3 + 16);
  if (v6)
  {

    v10 = (a3 + 48);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v13 = *(v10 - 2);

      a4(&v18, a1, v13, v12, v11);
      v14 = v18;
      v15 = ~v18 & 0xF000000000000007;

      if (v15)
      {

        v5 = v14;
      }

      v10 += 3;
      --v6;
    }

    while (v6);

    *a5 = v5;
  }

  else
  {
    *a5 = a2;
  }

  return result;
}

double sub_1D5FA35D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a2;
  v5 = *(a3 + 16);
  if (v5)
  {

    v8 = (a3 + 48);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v11 = *(v8 - 2);

      sub_1D5FB162C(a1, v11, v10, v9, &v16);
      v12 = v16;
      v13 = ~v16 & 0xF000000000000007;

      if (v13)
      {

        v4 = v12;
      }

      v8 += 3;
      --v5;
    }

    while (v5);

    *a4 = v4;
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

void sub_1D5FA3704(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = (a3 + 48);
    do
    {
      v9 = *v8;
      v11 = *(v8 - 2);
      v10 = *(v8 - 1);

      sub_1D5FB177C(a1, v11, v10, v9, &v13);
      v12 = v13;

      if (v12 != 2)
      {
        a2 = v12;
      }

      v8 += 24;
      --v6;
    }

    while (v6);
  }

  *a4 = a2 & 1;
}

double sub_1D5FA37A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a2;
  v5 = *(a3 + 16);
  if (v5)
  {

    v8 = (a3 + 48);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v11 = *(v8 - 2);

      sub_1D5FB18C4(a1, v11, v10, v9, &v16);
      v12 = v16;
      v13 = ~v16 & 0xF000000000000007;

      if (v13)
      {

        v4 = v12;
      }

      v8 += 3;
      --v5;
    }

    while (v5);

    *a4 = v4;
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

id sub_1D5FA38D0(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    if (!v4)
    {
      v18 = *(a3 + 16);
      v19 = *(a3 + 24);
      v20 = swift_allocObject();
      *(v20 + 16) = a1;
      *(v20 + 24) = v18;
      *(v20 + 32) = v19;
      v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v42 = sub_1D5FBB18C;
      v43 = v20;
      v38 = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      v9 = &block_descriptor_208;
      goto LABEL_16;
    }

    if (v4 == 1)
    {
      v5 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v6;
      *(v7 + 32) = a1;
      v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v42 = sub_1D5FBB188;
      v43 = v7;
      v38 = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      v9 = &block_descriptor_201;
LABEL_16:
      v40 = sub_1D6E0CD34;
      v41 = v9;
      v15 = _Block_copy(&v38);
      v36 = a1;
      v33 = [v8 initWithDynamicProvider_];
      goto LABEL_17;
    }

    v28 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v27 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v30 = swift_allocObject();
    v30[2] = a1;
    v30[3] = v28;
    v30[4] = v27;
    v30[5] = a2;
    v31 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBA6C8;
    v43 = v30;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1D6E0CD34;
    v41 = &block_descriptor_194;
    v15 = _Block_copy(&v38);

    v32 = a1;
    v17 = v31;
LABEL_11:
    v33 = [v17 initWithDynamicProvider_];
LABEL_17:
    v25 = v33;
    v26 = v15;
    goto LABEL_18;
  }

  if (v4 == 3)
  {
    v21 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    v23 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBB254;
    v43 = v22;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1D6E0CD34;
    v41 = &block_descriptor_188;
    v24 = _Block_copy(&v38);

    v25 = [v23 initWithDynamicProvider_];
    v26 = v24;
LABEL_18:
    _Block_release(v26);

    return v25;
  }

  if (v4 == 4)
  {
    v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = v11;
    *(v13 + 32) = v10;
    *(v13 + 40) = v12;
    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBB250;
    v43 = v13;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1D6E0CD34;
    v41 = &block_descriptor_181;
    v15 = _Block_copy(&v38);

    v16 = a1;
    v17 = v14;
    goto LABEL_11;
  }

  if (a3 == 0xA000000000000000)
  {
    v35 = swift_allocObject();
    *(v35 + 16) = a1;
    v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBB25C;
    v43 = v35;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v9 = &block_descriptor_222;
    goto LABEL_16;
  }

  if (a3 == 0xA000000000000008)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = a1;
    v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBB258;
    v43 = v34;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v9 = &block_descriptor_215;
    goto LABEL_16;
  }

  return sub_1D726355C();
}

id sub_1D5FA3E1C(void *a1, _OWORD *a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        v28 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v27 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v30 = swift_allocObject();
        v31 = a2[2];
        *(v30 + 88) = a2[3];
        v32 = a2[5];
        *(v30 + 104) = a2[4];
        *(v30 + 120) = v32;
        *(v30 + 136) = a2[6];
        v33 = a2[1];
        *(v30 + 40) = *a2;
        *(v30 + 56) = v33;
        *(v30 + 16) = a1;
        *(v30 + 24) = v28;
        *(v30 + 32) = v27;
        *(v30 + 72) = v31;
        v34 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        aBlock[4] = sub_1D5FBAB04;
        aBlock[5] = v30;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D6E0CD34;
        aBlock[3] = &block_descriptor_391;
        v35 = _Block_copy(aBlock);

        v36 = a1;
        sub_1D5D056DC(a2, &v41);
        v25 = [v34 initWithDynamicProvider_];
        _Block_release(v35);
LABEL_18:

        return v25;
      }

      v5 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v6;
      *(v7 + 32) = a1;
      v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v45 = sub_1D5FBB188;
      v46 = v7;
      v41 = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v9 = &block_descriptor_398;
    }

    else
    {
      v18 = *(a3 + 16);
      v19 = *(a3 + 24);
      v20 = swift_allocObject();
      *(v20 + 16) = a1;
      *(v20 + 24) = v18;
      *(v20 + 32) = v19;
      v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v45 = sub_1D5FBB18C;
      v46 = v20;
      v41 = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v9 = &block_descriptor_405;
    }

    goto LABEL_15;
  }

  if (v4 == 3)
  {
    v21 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    v23 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB254;
    v46 = v22;
    v41 = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D6E0CD34;
    v44 = &block_descriptor_385;
    v24 = _Block_copy(&v41);

    v25 = [v23 initWithDynamicProvider_];
    v26 = v24;
LABEL_17:
    _Block_release(v26);
    goto LABEL_18;
  }

  if (v4 == 4)
  {
    v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = v11;
    *(v13 + 32) = v10;
    *(v13 + 40) = v12;
    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB250;
    v46 = v13;
    v41 = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D6E0CD34;
    v44 = &block_descriptor_378;
    v15 = _Block_copy(&v41);

    v16 = a1;
    v17 = [v14 initWithDynamicProvider_];
LABEL_16:
    v25 = v17;
    v26 = v15;
    goto LABEL_17;
  }

  if (a3 == 0xA000000000000000)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = a1;
    v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB25C;
    v46 = v38;
    v41 = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v9 = &block_descriptor_419;
    goto LABEL_15;
  }

  if (a3 == 0xA000000000000008)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = a1;
    v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB258;
    v46 = v37;
    v41 = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v9 = &block_descriptor_412;
LABEL_15:
    v43 = sub_1D6E0CD34;
    v44 = v9;
    v15 = _Block_copy(&v41);
    v39 = a1;
    v17 = [v8 initWithDynamicProvider_];
    goto LABEL_16;
  }

  return sub_1D726355C();
}

id sub_1D5FA43B0(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    if (!v4)
    {
      v18 = *(a3 + 16);
      v19 = *(a3 + 24);
      v20 = swift_allocObject();
      *(v20 + 16) = a1;
      *(v20 + 24) = v18;
      *(v20 + 32) = v19;
      v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v42 = sub_1D5FBB18C;
      v43 = v20;
      v38 = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      v9 = &block_descriptor_142;
      goto LABEL_16;
    }

    if (v4 == 1)
    {
      v5 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v6;
      *(v7 + 32) = a1;
      v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v42 = sub_1D5FBB188;
      v43 = v7;
      v38 = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      v9 = &block_descriptor_135;
LABEL_16:
      v40 = sub_1D6E0CD34;
      v41 = v9;
      v15 = _Block_copy(&v38);
      v36 = a1;
      v33 = [v8 initWithDynamicProvider_];
      goto LABEL_17;
    }

    v28 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v27 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v30 = swift_allocObject();
    v30[2] = a1;
    v30[3] = v28;
    v30[4] = v27;
    v30[5] = a2;
    v31 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBA5A8;
    v43 = v30;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1D6E0CD34;
    v41 = &block_descriptor_128;
    v15 = _Block_copy(&v38);

    v32 = a1;
    v17 = v31;
LABEL_11:
    v33 = [v17 initWithDynamicProvider_];
LABEL_17:
    v25 = v33;
    v26 = v15;
    goto LABEL_18;
  }

  if (v4 == 3)
  {
    v21 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    v23 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBB254;
    v43 = v22;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1D6E0CD34;
    v41 = &block_descriptor_122;
    v24 = _Block_copy(&v38);

    v25 = [v23 initWithDynamicProvider_];
    v26 = v24;
LABEL_18:
    _Block_release(v26);

    return v25;
  }

  if (v4 == 4)
  {
    v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = v11;
    *(v13 + 32) = v10;
    *(v13 + 40) = v12;
    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBB250;
    v43 = v13;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1D6E0CD34;
    v41 = &block_descriptor_115;
    v15 = _Block_copy(&v38);

    v16 = a1;
    v17 = v14;
    goto LABEL_11;
  }

  if (a3 == 0xA000000000000000)
  {
    v35 = swift_allocObject();
    *(v35 + 16) = a1;
    v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBB25C;
    v43 = v35;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v9 = &block_descriptor_156;
    goto LABEL_16;
  }

  if (a3 == 0xA000000000000008)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = a1;
    v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBB258;
    v43 = v34;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v9 = &block_descriptor_149;
    goto LABEL_16;
  }

  return sub_1D726355C();
}