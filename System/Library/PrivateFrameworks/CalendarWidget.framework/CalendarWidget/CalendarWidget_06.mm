uint64_t sub_1E480D21C()
{
  v0 = sub_1E487736C();
  v38 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E487732C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = sub_1E487706C();
  v39 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
  v7 = (type metadata accessor for Event(0) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v31 = 2 * v8;
  v10 = swift_allocObject();
  v32 = v10;
  *(v10 + 16) = xmmword_1E487AC40;
  v11 = (v10 + v9);
  sub_1E487731C();
  sub_1E487703C();
  v28 = sub_1E487868C();
  sub_1E487735C();
  sub_1E487733C();
  v30 = *(v1 + 8);
  v37 = v1 + 8;
  v30(v3, v0);
  sub_1E487724C();

  v12 = v7[17];
  v35 = type metadata accessor for Location(0);
  v13 = *(v35 - 8);
  v34 = *(v13 + 56);
  v36 = v13 + 56;
  v34(&v11[v12], 1, 1, v35);
  *v11 = 0x3120746E657645;
  *(v11 + 1) = 0xE700000000000000;
  sub_1E487704C();
  sub_1E487701C();
  v29 = *(v39 + 8);
  v39 += 8;
  v14 = v33;
  v29(v6, v33);
  *&v11[v7[9]] = 0;
  *&v11[v7[10]] = 0;
  *&v11[v7[11]] = v28;
  v15 = &v11[v7[12]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v11[v7[14]] = 1;
  v11[v7[15]] = 0;
  v16 = &v11[v7[18]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v11[v7[16]] = 0;
  v11[v7[19]] = 0;
  v11[v7[20]] = 0;
  v11[v7[21]] = 1;
  v17 = &v11[v8];
  sub_1E487731C();
  sub_1E487703C();
  v28 = sub_1E487868C();
  sub_1E487735C();
  sub_1E487733C();
  v18 = v30;
  v30(v3, v38);
  sub_1E487724C();

  v34(&v11[v8 + v7[17]], 1, 1, v35);
  *v17 = 0x3220746E657645;
  *(v17 + 1) = 0xE700000000000000;
  sub_1E487704C();
  sub_1E487701C();
  v19 = v14;
  v20 = v29;
  v29(v6, v19);
  *&v17[v7[9]] = 0;
  *&v17[v7[10]] = 0;
  *&v17[v7[11]] = v28;
  v21 = &v11[v8 + v7[12]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v17[v7[14]] = 1;
  v17[v7[15]] = 0;
  v22 = &v11[v8 + v7[18]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v17[v7[16]] = 0;
  v17[v7[19]] = 0;
  v17[v7[20]] = 0;
  v17[v7[21]] = 1;
  v23 = &v11[v31];
  sub_1E487731C();
  sub_1E487703C();
  v24 = sub_1E487863C();
  sub_1E487735C();
  sub_1E487733C();
  v18(v3, v38);
  sub_1E487724C();

  v34(&v23[v7[17]], 1, 1, v35);
  *v23 = 0x3320746E657645;
  *(v23 + 1) = 0xE700000000000000;
  sub_1E487704C();
  sub_1E487701C();
  v20(v6, v33);
  *&v23[v7[9]] = 0;
  *&v23[v7[10]] = 0;
  *&v23[v7[11]] = v24;
  v25 = &v23[v7[12]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v23[v7[14]] = 1;
  v23[v7[15]] = 0;
  v26 = &v23[v7[18]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v23[v7[16]] = 0;
  v23[v7[19]] = 0;
  v23[v7[20]] = 0;
  v23[v7[21]] = 1;
  return v32;
}

uint64_t type metadata accessor for LargeListContentView(uint64_t a1)
{
  result = qword_1EE2B2AA8;
  if (!qword_1EE2B2AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E480D8E8(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    sub_1E47830AC(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1E47830AC(319, &qword_1EE2B1678, MEMORY[0x1E697F6A8], MEMORY[0x1E697DCC8]);
      if (v3 <= 0x3F)
      {
        sub_1E47830AC(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E480DA48()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for LargeListContentView(0) + 28));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1E480DB98@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D288, &qword_1E4880738);
  v4 = a1 + *(v3 + 36);
  v5 = sub_1E487732C();
  (*(*(v5 - 8) + 16))(v4, v1, v5);
  v6 = *(v1 + *(type metadata accessor for LargeListContentView(0) + 20));
  KeyPath = swift_getKeyPath();
  v8 = type metadata accessor for WideMultidayEventsView(0);
  *(v4 + v8[5]) = v6;
  *(v4 + v8[6]) = 0x4030000000000000;
  v9 = v4 + v8[7];
  *v9 = KeyPath;
  *(v9 + 8) = 0;

  sub_1E48783CC();
  LOBYTE(v6) = sub_1E487813C();
  sub_1E480DA48();

  sub_1E4877B0C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D290, &qword_1E4880768) + 36);
  *v18 = v6;
  *(v18 + 8) = v11;
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;
  *(v18 + 32) = v17;
  *(v18 + 40) = 0;
  v19 = *MEMORY[0x1E697F638];
  v20 = sub_1E4877F9C();
  v21 = *(v20 - 8);
  (*(v21 + 104))(a1, v19, v20);
  (*(v21 + 56))(a1, 0, 1, v20);
  *(a1 + *(v3 + 40)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1E480DDB4()
{
  result = qword_1ECF7D298;
  if (!qword_1ECF7D298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D288, &qword_1E4880738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D298);
  }

  return result;
}

double sub_1E480DE18@<D0>(uint64_t a1@<X8>)
{
  v6 = sub_1E4877F7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E487806C();
  (*(v7 + 104))(v9, *MEMORY[0x1E697F470], v6);
  sub_1E487832C();
  result = *&v13;
  v11 = v14;
  *a1 = v13;
  *(a1 + 16) = v11;
  *(a1 + 32) = v15;
  return result;
}

void (*sub_1E480DF94(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1E4877AEC();
  return sub_1E4782620;
}

uint64_t sub_1E480E01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E480E68C(a1, a2, a3);

  return MEMORY[0x1EEDE4448](a1, a2, a3, v6);
}

uint64_t sub_1E480E080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E480E68C(a1, a2, a3);

  return MEMORY[0x1EEDE43E8](a1, a2, a3, v6);
}

uint64_t sub_1E480E0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E480E68C(a1, a2, a3);

  return MEMORY[0x1EEDE4408](a1, v4);
}

uint64_t sub_1E480E13C()
{
  v1 = *v0;
  sub_1E487914C();
  MEMORY[0x1E6919800](v1);
  return sub_1E487917C();
}

uint64_t sub_1E480E1B0(uint64_t a1)
{
  v2 = *v1;
  sub_1E487914C();
  MEMORY[0x1E6919800](v2);
  return sub_1E487917C();
}

BOOL sub_1E480E238(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1E480E268@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1E480E294@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1E480E390@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1E480E52C(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_1E480E3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7D2A0;
  if (!qword_1ECF7D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D2A0);
  }

  return result;
}

unint64_t sub_1E480E428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7D2A8;
  if (!qword_1ECF7D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D2A8);
  }

  return result;
}

unint64_t sub_1E480E480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7D2B0;
  if (!qword_1ECF7D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D2B0);
  }

  return result;
}

unint64_t sub_1E480E4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7D2B8;
  if (!qword_1ECF7D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D2B8);
  }

  return result;
}

uint64_t sub_1E480E52C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1E480E578()
{
  result = qword_1ECF7D2C0;
  if (!qword_1ECF7D2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D2C8, &qword_1E48809C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D2C0);
  }

  return result;
}

unint64_t sub_1E480E5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2B3D20;
  if (!qword_1EE2B3D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B3D20);
  }

  return result;
}

unint64_t sub_1E480E638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2B3D18;
  if (!qword_1EE2B3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B3D18);
  }

  return result;
}

unint64_t sub_1E480E68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7D2D0;
  if (!qword_1ECF7D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D2D0);
  }

  return result;
}

uint64_t type metadata accessor for SmallListContentView(uint64_t a1)
{
  result = qword_1EE2B2830;
  if (!qword_1EE2B2830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E480E75C(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    sub_1E480E914(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1E480E914(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
      if (v3 <= 0x3F)
      {
        sub_1E480E914(319, &qword_1EE2B1678, MEMORY[0x1E697F6A8], MEMORY[0x1E697DCC8]);
        if (v4 <= 0x3F)
        {
          sub_1E478305C();
          if (v5 <= 0x3F)
          {
            sub_1E480E914(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
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

void sub_1E480E914(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1E480E994@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for SmallListContentView(0);
  sub_1E4773850(v1 + *(v10 + 36), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E480EB9C@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for SmallListContentView(0);
  sub_1E4773850(v1 + *(v10 + 40), v9, &qword_1ECF7BC10, &unk_1E487B660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877F9C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E480EDA4()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SmallListContentView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1E480EEFC()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SmallListContentView(0) + 48);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1E480F054()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SmallListContentView(0) + 52));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1E480F1A4@<X0>(uint64_t a1@<X8>)
{
  v117 = a1;
  v114 = sub_1E487739C();
  v109 = *(v114 - 1);
  MEMORY[0x1EEE9AC00](v114);
  v104 = &v101[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFB0, &qword_1E487FBA8);
  v3 = MEMORY[0x1EEE9AC00](v110);
  v105 = &v101[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v108 = &v101[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDD8, &qword_1E487F920);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v103 = &v101[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v7);
  v107 = &v101[-v10];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v106 = &v101[-v12];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v118 = &v101[-v14];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v111 = &v101[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v119 = &v101[-v17];
  v112 = sub_1E487740C();
  v18 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v20 = &v101[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1E487744C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v101[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_1E4877F9C();
  v115 = *(v25 - 8);
  v116 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v101[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = *(v1 + *(type metadata accessor for SmallListContentView(0) + 24));
  sub_1E480EDA4();
  v113 = v27;
  sub_1E480EB9C(v27);
  sub_1E48773EC();
  sub_1E487741C();
  v29 = v24;
  v30 = v119;
  (*(v22 + 8))(v29, v21);
  sub_1E48773FC();
  (*(v18 + 8))(v20, v112);
  v112 = v1;
  sub_1E480F054();
  if (v28 != 1)
  {
    v31 = v114;
    v32 = v118;
    if (_AXSPrefersHorizontalTextLayout())
    {
      goto LABEL_3;
    }

LABEL_6:
    v36 = v30;
    v37 = v111;
    sub_1E4773850(v36, v111, &qword_1ECF7CDD8, &qword_1E487F920);
    sub_1E487738C();
    v38 = v109;
    v114 = *(v109 + 56);
    (v114)(v32, 0, 1, v31);
    v39 = *(v110 + 48);
    v40 = v108;
    sub_1E4773850(v32, v108, &qword_1ECF7CDD8, &qword_1E487F920);
    sub_1E4773850(v37, &v40[v39], &qword_1ECF7CDD8, &qword_1E487F920);
    v41 = *(v38 + 48);
    if (v41(v40, 1, v31) == 1)
    {
      sub_1E47738B8(v32, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v41(&v40[v39], 1, v31) == 1)
      {

        sub_1E47738B8(v111, &qword_1ECF7CDD8, &qword_1E487F920);
        sub_1E47738B8(v119, &qword_1ECF7CDD8, &qword_1E487F920);
        v34 = v115;
        v33 = v116;
        (*(v115 + 8))(v113, v116);
        sub_1E47738B8(v40, &qword_1ECF7CDD8, &qword_1E487F920);
        goto LABEL_21;
      }
    }

    else
    {
      v42 = v106;
      sub_1E4773850(v40, v106, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v41(&v40[v39], 1, v31) != 1)
      {
        v52 = v104;
        (*(v38 + 32))(v104, &v40[v39], v31);
        sub_1E4810DAC(&qword_1EE2B4650, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
        v102 = sub_1E4878AFC();
        v53 = *(v38 + 8);
        v53(v52, v31);
        sub_1E47738B8(v118, &qword_1ECF7CDD8, &qword_1E487F920);
        v53(v106, v31);
        sub_1E47738B8(v40, &qword_1ECF7CDD8, &qword_1E487F920);
        if (v102)
        {

          sub_1E47738B8(v111, &qword_1ECF7CDD8, &qword_1E487F920);
          sub_1E47738B8(v119, &qword_1ECF7CDD8, &qword_1E487F920);
          v34 = v115;
          v33 = v116;
          (*(v115 + 8))(v113, v116);
          goto LABEL_21;
        }

LABEL_12:
        v43 = v107;
        sub_1E487738C();
        (v114)(v43, 0, 1, v31);
        v44 = *(v110 + 48);
        v45 = v105;
        sub_1E4773850(v43, v105, &qword_1ECF7CDD8, &qword_1E487F920);
        sub_1E4810D3C(v111, &v45[v44]);
        if (v41(v45, 1, v31) == 1)
        {

          sub_1E47738B8(v43, &qword_1ECF7CDD8, &qword_1E487F920);
          sub_1E47738B8(v119, &qword_1ECF7CDD8, &qword_1E487F920);
          v34 = v115;
          v33 = v116;
          (*(v115 + 8))(v113, v116);
          if (v41(&v45[v44], 1, v31) == 1)
          {
            sub_1E47738B8(v45, &qword_1ECF7CDD8, &qword_1E487F920);
            goto LABEL_21;
          }
        }

        else
        {
          v46 = v103;
          sub_1E4773850(v45, v103, &qword_1ECF7CDD8, &qword_1E487F920);
          v47 = v41(&v45[v44], 1, v31);
          v48 = v31;
          v49 = v109;
          v50 = (v109 + 8);
          if (v47 != 1)
          {
            v54 = &v45[v44];
            v55 = v104;
            (*(v109 + 32))(v104, v54, v48);
            sub_1E4810DAC(&qword_1EE2B4650, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
            v56 = sub_1E4878AFC();

            v57 = *(v49 + 8);
            v57(v55, v48);
            sub_1E47738B8(v107, &qword_1ECF7CDD8, &qword_1E487F920);
            sub_1E47738B8(v119, &qword_1ECF7CDD8, &qword_1E487F920);
            v34 = v115;
            v58 = v46;
            v33 = v116;
            (*(v115 + 8))(v113, v116);
            v57(v58, v48);
            sub_1E47738B8(v45, &qword_1ECF7CDD8, &qword_1E487F920);
            if ((v56 & 1) == 0)
            {
              goto LABEL_4;
            }

LABEL_21:
            v35 = 0x4008000000000000;
            goto LABEL_22;
          }

          sub_1E47738B8(v107, &qword_1ECF7CDD8, &qword_1E487F920);
          sub_1E47738B8(v119, &qword_1ECF7CDD8, &qword_1E487F920);
          v34 = v115;
          v51 = v46;
          v33 = v116;
          (*(v115 + 8))(v113, v116);
          (*v50)(v51, v48);
        }

        sub_1E47738B8(v45, &qword_1ECF7CFB0, &qword_1E487FBA8);
        goto LABEL_4;
      }

      sub_1E47738B8(v118, &qword_1ECF7CDD8, &qword_1E487F920);
      (*(v38 + 8))(v42, v31);
    }

    sub_1E47738B8(v40, &qword_1ECF7CFB0, &qword_1E487FBA8);
    goto LABEL_12;
  }

  v31 = v114;
  v32 = v118;
  if (!_AXSPrefersHorizontalTextLayout())
  {
    goto LABEL_6;
  }

LABEL_3:

  sub_1E47738B8(v30, &qword_1ECF7CDD8, &qword_1E487F920);
  v34 = v115;
  v33 = v116;
  (*(v115 + 8))(v113, v116);
LABEL_4:
  v35 = 0;
LABEL_22:
  v59 = sub_1E4877FBC();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D2E8, &qword_1E4880B40);
  v61 = v117;
  v62 = v117 + *(v60 + 36);
  *v62 = v59;
  *(v62 + 8) = v35;
  *(v62 + 16) = 0;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D2F0, &qword_1E4880B48);
  sub_1E480FEF4(v112, v62 + *(v63 + 44));
  LOBYTE(v59) = sub_1E487815C();
  sub_1E4877B0C();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D2F8, &qword_1E4880B50) + 36);
  *v72 = v59;
  *(v72 + 8) = v65;
  *(v72 + 16) = v67;
  *(v72 + 24) = v69;
  *(v72 + 32) = v71;
  *(v72 + 40) = 0;
  LOBYTE(v59) = sub_1E487816C();
  sub_1E4877B0C();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D300, &qword_1E4880B58) + 36);
  *v81 = v59;
  *(v81 + 8) = v74;
  *(v81 + 16) = v76;
  *(v81 + 24) = v78;
  *(v81 + 32) = v80;
  *(v81 + 40) = 0;
  LOBYTE(v59) = sub_1E487817C();
  sub_1E4877B0C();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v90 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D308, &qword_1E4880B60) + 36);
  *v90 = v59;
  *(v90 + 8) = v83;
  *(v90 + 16) = v85;
  *(v90 + 24) = v87;
  *(v90 + 32) = v89;
  *(v90 + 40) = 0;
  LOBYTE(v59) = sub_1E487818C();
  sub_1E4877B0C();
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v99 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D310, &qword_1E4880B68) + 36);
  *v99 = v59;
  *(v99 + 8) = v92;
  *(v99 + 16) = v94;
  *(v99 + 24) = v96;
  *(v99 + 32) = v98;
  *(v99 + 40) = 0;
  (*(v34 + 104))(v61, *MEMORY[0x1E697F638], v33);
  (*(v34 + 56))(v61, 0, 1, v33);
  *(v61 + *(v60 + 40)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E480FEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v3 = type metadata accessor for NarrowMultidayEventsView(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D318, &qword_1E4880BA8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v12 = type metadata accessor for IconicDateHeader(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D320, &qword_1E4880BB0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v51 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v47 - v18;
  sub_1E4878D2C();
  v50 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = v52;
  if (sub_1E480EDA4())
  {
    v20 = sub_1E487732C();
    (*(*(v20 - 8) + 16))(v14, v19, v20);
    *&v14[v12[5]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v14[v12[6]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v22 = &v14[v12[7]];
    *v22 = KeyPath;
    v22[8] = 0;
    v48 = v6;
    v53 = 0x4038000000000000;
    sub_1E4773794(KeyPath, v23, v24);
    sub_1E4877B6C();
    v53 = 0x403F000000000000;
    sub_1E4877B6C();
    v53 = 0x4046000000000000;
    sub_1E4877B6C();
    v53 = 0x4024000000000000;
    sub_1E4877B6C();
    v25 = &v14[v12[12]];
    strcpy(v25, "EEEE, MMMM dd");
    *(v25 + 7) = -4864;
    sub_1E4810DF4(v14, v11, type metadata accessor for IconicDateHeader);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D338, &qword_1E4880C88);
    sub_1E4810DAC(qword_1EE2B3848, type metadata accessor for IconicDateHeader, &unk_1E487F8B4);
    sub_1E4773680(&qword_1EE2B0F98, &qword_1ECF7D338, &qword_1E4880C88, MEMORY[0x1E6981800]);
    v26 = v49;
    v6 = v48;
    v19 = v52;
    sub_1E487803C();
    sub_1E4810E5C(v14, type metadata accessor for IconicDateHeader);
  }

  else
  {
    if ((sub_1E480EEFC() & 1) == 0)
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D328, &qword_1E4880BB8);
      v26 = v49;
      (*(*(v33 - 8) + 56))(v49, 1, 1, v33);
      goto LABEL_9;
    }

    v27 = sub_1E4877F6C();
    sub_1E4810754(&v53);
    v28 = v53;
    v29 = v54;
    v30 = v56;
    v31 = v55;
    LOBYTE(v53) = 1;
    v57 = v54;
    *v11 = v27;
    *(v11 + 1) = 0;
    v11[16] = 1;
    *(v11 + 3) = v28;
    v11[32] = v29;
    *(v11 + 40) = v31;
    *(v11 + 7) = v30;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D338, &qword_1E4880C88);
    sub_1E4810DAC(qword_1EE2B3848, type metadata accessor for IconicDateHeader, &unk_1E487F8B4);
    sub_1E4773680(&qword_1EE2B0F98, &qword_1ECF7D338, &qword_1E4880C88, MEMORY[0x1E6981800]);
    v26 = v49;
    v19 = v52;
    sub_1E487803C();
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D328, &qword_1E4880BB8);
  (*(*(v32 - 8) + 56))(v26, 0, 1, v32);
LABEL_9:
  v34 = sub_1E487732C();
  (*(*(v34 - 8) + 16))(v8, v19, v34);
  v35 = type metadata accessor for SmallListContentView(0);
  v36 = *(v19 + v35[5]);
  v37 = v19;
  v38 = *(v19 + v35[7]);
  v39 = *(v37 + v35[8]);
  v40 = swift_getKeyPath();
  *&v8[v3[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  *&v8[v3[11]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  v41 = swift_getKeyPath();
  *&v8[v3[5]] = v36;
  *&v8[v3[6]] = 0x4010000000000000;
  v8[v3[7]] = v38;
  v8[v3[8]] = v39;
  v42 = &v8[v3[9]];
  *v42 = v40;
  v42[8] = 0;
  v43 = &v8[v3[12]];
  *v43 = v41;
  v43[8] = 0;
  *&v8[v3[13]] = 0x4020000000000000;

  sub_1E48783CC();
  v44 = v51;
  sub_1E4773850(v26, v51, &qword_1ECF7D320, &qword_1E4880BB0);
  sub_1E4810DF4(v8, v6, type metadata accessor for NarrowMultidayEventsView);
  sub_1E4773850(v44, a2, &qword_1ECF7D320, &qword_1E4880BB0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D330, &qword_1E4880C80);
  sub_1E4810DF4(v6, a2 + *(v45 + 48), type metadata accessor for NarrowMultidayEventsView);
  sub_1E4810E5C(v8, type metadata accessor for NarrowMultidayEventsView);
  sub_1E47738B8(v26, &qword_1ECF7D320, &qword_1E4880BB0);
  sub_1E4810E5C(v6, type metadata accessor for NarrowMultidayEventsView);
  sub_1E47738B8(v44, &qword_1ECF7D320, &qword_1E4880BB0);
}

uint64_t sub_1E4810754@<X0>(uint64_t a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1E487874C();
  v3 = sub_1E48786BC();
  KeyPath = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = v3;
}

uint64_t sub_1E4810830@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v26 - v2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D2D8, &qword_1E4880B30);
  v27 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v26 = &v26 - v4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D2E0, &qword_1E4880B38);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v26 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D2E8, &qword_1E4880B40);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v26 - v7;
  v9 = sub_1E4877CCC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  sub_1E480E994((&v26 - v14));
  sub_1E4877CAC();
  sub_1E4810DAC(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v16 = sub_1E4878EAC();
  v17 = *(v10 + 8);
  v17(v13, v9);
  v17(v15, v9);
  sub_1E480F1A4(v8);
  if (v16)
  {
    sub_1E4773850(v8, v6, &qword_1ECF7D2E8, &qword_1E4880B40);
    swift_storeEnumTagMultiPayload();
    v18 = sub_1E4773680(qword_1EE2B2200, &qword_1ECF7D2E8, &qword_1E4880B40, &unk_1E4881510);
    v32 = v29;
    v33 = v18;
    swift_getOpaqueTypeConformance2();
    sub_1E487803C();
    return sub_1E47738B8(v8, &qword_1ECF7D2E8, &qword_1E4880B40);
  }

  else
  {
    sub_1E4877A6C();
    v20 = sub_1E487725C();
    (*(*(v20 - 8) + 56))(v3, 0, 1, v20);
    v21 = sub_1E4773680(qword_1EE2B2200, &qword_1ECF7D2E8, &qword_1E4880B40, &unk_1E4881510);
    v22 = v26;
    v23 = v29;
    sub_1E48784BC();
    sub_1E47738B8(v3, &unk_1ECF7B688, &qword_1E487C160);
    sub_1E47738B8(v8, &qword_1ECF7D2E8, &qword_1E4880B40);
    v24 = v27;
    v25 = v30;
    (*(v27 + 16))(v6, v22, v30);
    swift_storeEnumTagMultiPayload();
    v32 = v23;
    v33 = v21;
    swift_getOpaqueTypeConformance2();
    sub_1E487803C();
    return (*(v24 + 8))(v22, v25);
  }
}

uint64_t sub_1E4810D3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDD8, &qword_1E487F920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4810DAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4810DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4810E5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4810EBC()
{
  result = qword_1EE2B1238;
  if (!qword_1EE2B1238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D340, &qword_1E4880D58);
    sub_1E4773680(qword_1EE2B2200, &qword_1ECF7D2E8, &qword_1E4880B40, &unk_1E4881510);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D2E8, &qword_1E4880B40);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1238);
  }

  return result;
}

void sub_1E4810FF8(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    sub_1E481115C(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1E481115C(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC8]);
      if (v3 <= 0x3F)
      {
        sub_1E481115C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E481115C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1E48111DC(uint64_t a1)
{
  sub_1E487914C();
  sub_1E487736C();
  sub_1E4816A68(&qword_1EE2B4658, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E4878AAC();
  sub_1E487719C();
  sub_1E4816A68(&qword_1EE2B4678, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E4878AAC();
  sub_1E487916C();
  return sub_1E487917C();
}

uint64_t sub_1E48112DC(uint64_t a1, uint64_t a2)
{
  sub_1E487736C();
  sub_1E4816A68(&qword_1EE2B4658, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E4878AAC();
  sub_1E487719C();
  sub_1E4816A68(&qword_1EE2B4678, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E4878AAC();
  return sub_1E487916C();
}

uint64_t sub_1E48113CC(uint64_t a1, uint64_t a2)
{
  sub_1E487914C();
  sub_1E487736C();
  sub_1E4816A68(&qword_1EE2B4658, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E4878AAC();
  sub_1E487719C();
  sub_1E4816A68(&qword_1EE2B4678, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E4878AAC();
  sub_1E487916C();
  return sub_1E487917C();
}

uint64_t sub_1E48114C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E487736C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1E4811530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1E487734C() & 1) != 0 && (sub_1E487715C())
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1E481159C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v364 = a6;
  LODWORD(v348) = a5;
  v372 = a4;
  v367 = a7;
  v352 = sub_1E487713C();
  MEMORY[0x1EEE9AC00](v352);
  v353 = &v326 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E4878B8C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v362 = &v326 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v361 = sub_1E487714C();
  v350 = *(v361 - 8);
  MEMORY[0x1EEE9AC00](v361);
  v360 = &v326 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E4878B6C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v351 = &v326 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v338 = &v326 - v17;
  v337 = type metadata accessor for Location(0);
  v336 = *(v337 - 8);
  MEMORY[0x1EEE9AC00](v337);
  v339 = &v326 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v373 = type metadata accessor for Event(0);
  v379 = *(v373 - 8);
  v19 = MEMORY[0x1EEE9AC00](v373);
  v347 = &v326 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v383 = (&v326 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v326 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v358 = &v326 - v26;
  EventContentView = type metadata accessor for InlineNextEventContentViewModel.TextOption(0);
  v381 = *(EventContentView - 8);
  v382 = EventContentView;
  v28 = MEMORY[0x1EEE9AC00](EventContentView);
  v331 = &v326 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v333 = &v326 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v327 = &v326 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v329 = &v326 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v330 = &v326 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v332 = &v326 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v326 = &v326 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v328 = &v326 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v326 - v44;
  v46 = sub_1E487720C();
  MEMORY[0x1EEE9AC00](v46 - 8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v48 = MEMORY[0x1EEE9AC00](v47 - 8);
  v368 = &v326 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v359 = (&v326 - v50);
  v357 = sub_1E487757C();
  v356 = *(v357 - 8);
  MEMORY[0x1EEE9AC00](v357);
  v355 = &v326 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1E487732C();
  v374 = *(v52 - 8);
  v375 = v52;
  v53 = MEMORY[0x1EEE9AC00](v52);
  v354 = &v326 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v369 = &v326 - v55;
  v371 = sub_1E487719C();
  v370 = *(v371 - 8);
  v56 = MEMORY[0x1EEE9AC00](v371);
  v343 = &v326 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v345 = &v326 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v335 = &v326 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v341 = &v326 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v342 = &v326 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v344 = &v326 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v346 = &v326 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v334 = &v326 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v340 = &v326 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v349 = &v326 - v75;
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v326 - v76;
  v78 = type metadata accessor for DayEvents(0);
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v326 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Utils();
  v366 = a1;
  v81 = a1;
  v82 = a3;
  v83 = sub_1E485E54C(v80, v81, a2, a3);
  v85 = v84;

  v86 = *(v83 + 16);
  v380 = v83;
  v378 = v86;
  v365 = v82;
  v376 = v77;
  v363 = v80;
  if (v86)
  {
    v377 = ((*(v379 + 80) + 32) & ~*(v379 + 80));
    v87 = v377 + v83;
    v88 = v374;
    v89 = v354;
    v90 = v375;
    (*(v374 + 16))(v354, v377 + v83 + *(v373 + 20), v375);
    v91 = v369;
    (*(v88 + 32))(v369, v89, v90);
    v92 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v93 = v82;
    v94 = sub_1E487748C();
    [v92 setCalendar_];

    v95 = v355;
    sub_1E487750C();
    v96 = sub_1E487756C();
    (*(v356 + 8))(v95, v357);
    v97 = v92;
    [v92 setTimeZone_];

    v98 = v359;
    sub_1E48774EC();
    v99 = sub_1E487744C();
    v100 = *(v99 - 8);
    v101 = 0;
    if ((v100[6])(v98, 1, v99) != 1)
    {
      v101 = sub_1E48773DC();
      v100[1](v98, v99);
    }

    v357 = v99;
    v359 = v100;
    [v97 setLocale_];

    v355 = sub_1E4816EC4(v97, v93, v91);
    v102 = objc_opt_self();
    v103 = sub_1E48772BC();
    v104 = sub_1E487748C();
    v105 = [v102 timeAttributedTextWithDate:v103 calendar:v104 font:0 options:0];

    v106 = [v105 string];
    sub_1E4878BDC();

    sub_1E48771FC();
    v107 = v376;
    v108 = sub_1E48771AC();
    v109 = v372;
    aBlock[0] = v372;
    sub_1E47C4180(v108, v110, v111);

    sub_1E48771BC();
    v356 = *MEMORY[0x1E6993360];
    v112 = [v105 length];
    v113 = swift_allocObject();
    *(v113 + 16) = v107;
    *(v113 + 24) = v109;
    v114 = swift_allocObject();
    *(v114 + 16) = sub_1E47C41D4;
    *(v114 + 24) = v113;
    aBlock[4] = sub_1E47C41DC;
    v385 = v114;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E48373C0;
    aBlock[3] = &block_descriptor_1;
    v115 = _Block_copy(aBlock);
    v116 = v385;

    [v105 enumerateAttribute:v356 inRange:0 options:v112 usingBlock:{0, v115}];

    _Block_release(v115);
    (*(v374 + 8))(v369, v375);
    LOBYTE(v105) = swift_isEscapingClosureAtFileLocation();

    if ((v105 & 1) == 0)
    {
      v117 = v378;
      if (v378 == 1)
      {
        v118 = v373;
        if (*(v380 + 16))
        {
          sub_1E4816B30(v87, v358, type metadata accessor for Event);
          sub_1E47CC708();
          v97 = v349;
          if (v348)
          {
            v119 = v338;
            sub_1E4773850(v358 + *(v118 + 60), v338, &qword_1ECF7C048, &qword_1E487C5F0);
            if ((*(v336 + 48))(v119, 1, v337) != 1)
            {
              sub_1E4817260(v119, v339, type metadata accessor for Location);
              sub_1E4878B5C();
              sub_1E4878B4C();
              aBlock[0] = MEMORY[0x1E69E7CC0];
              v383 = sub_1E4816A68(&qword_1EE2B4680, MEMORY[0x1E69686F0], MEMORY[0x1E69686F8]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D388, &qword_1E4880E78);
              sub_1E4773680(&qword_1EE2B0E10, &qword_1ECF7D388, &qword_1E4880E78, MEMORY[0x1E69E6328]);
              v225 = v360;
              v226 = v361;
              sub_1E4878ECC();
              sub_1E4878B1C();
              v227 = *(v350 + 8);
              v227(v225, v226);
              sub_1E4878B4C();
              v228 = v339;
              sub_1E4878B3C();

              sub_1E4878B4C();
              aBlock[0] = MEMORY[0x1E69E7CC0];
              sub_1E4878ECC();
              sub_1E4878B1C();
              v227(v225, v226);
              sub_1E4878B4C();
              v229 = v362;
              sub_1E4878B7C();
              if (qword_1EE2B4848 != -1)
              {
                swift_once();
              }

              v230 = qword_1EE2BAF40;
              v231 = v368;
              v359[7](v368, 1, 1, v357);
              aBlock[0] = MEMORY[0x1E69E7CC0];
              sub_1E4816A68(&qword_1EE2B4688, MEMORY[0x1E69686B0], MEMORY[0x1E69686B8]);
              v232 = v230;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D390, &unk_1E4880E80);
              sub_1E4773680(&qword_1EE2B0E18, &qword_1ECF7D390, &unk_1E4880E80, MEMORY[0x1E69E6328]);
              v233 = v353;
              sub_1E4878ECC();
              v234 = v349;
              sub_1E487717C("%1$@ %2$@ ∙ %3$@", 18, 0, v229, v233, 0, 0, v230, v231, "Shown when there is 1 upcoming event and the circular complication displays a widget label. First specifier is time string, second is the event title, and third is for the location. Ex: 12:30PM LUNCH WITH CHRIS ∙ MACS", 219, 0);
              v235 = v228;
              v97 = v234;
              sub_1E4816AD0(v235, type metadata accessor for Location);
              goto LABEL_50;
            }

            sub_1E47738B8(v119, &qword_1ECF7C048, &qword_1E487C5F0);
          }

          sub_1E4878B5C();
          sub_1E4878B4C();
          v87 = MEMORY[0x1E69E7CC0];
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_1E4816A68(&qword_1EE2B4680, MEMORY[0x1E69686F0], MEMORY[0x1E69686F8]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D388, &qword_1E4880E78);
          sub_1E4773680(&qword_1EE2B0E10, &qword_1ECF7D388, &qword_1E4880E78, MEMORY[0x1E69E6328]);
          v120 = v360;
          v121 = v361;
          sub_1E4878ECC();
          sub_1E4878B1C();
          (*(v350 + 8))(v120, v121);
          sub_1E4878B4C();
          sub_1E4878B3C();

          sub_1E4878B4C();
          v116 = v362;
          sub_1E4878B7C();
          if (qword_1EE2B4848 == -1)
          {
LABEL_11:
            v122 = qword_1EE2BAF40;
            v123 = v368;
            v359[7](v368, 1, 1, v357);
            aBlock[0] = v87;
            sub_1E4816A68(&qword_1EE2B4688, MEMORY[0x1E69686B0], MEMORY[0x1E69686B8]);
            v124 = v122;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D390, &unk_1E4880E80);
            sub_1E4773680(&qword_1EE2B0E18, &qword_1ECF7D390, &unk_1E4880E80, MEMORY[0x1E69E6328]);
            v125 = v353;
            sub_1E4878ECC();
            LOWORD(v321) = 2;
            sub_1E487717C("%@ %@", 5, 2, v116, v125, 0, 0, v122, v123, "Shown when there is 1 upcoming event in inline text complication. First specifier is time string, second is the event title", 123, v321);
LABEL_50:
            v219 = v367;
            v220 = v366;
            v221 = v364;
            v223 = v370;
            v224 = v375;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3A0, &unk_1E4880E90);
            v236 = (*(v381 + 80) + 32) & ~*(v381 + 80);
            v129 = swift_allocObject();
            *(v129 + 16) = xmmword_1E487A7E0;
            v237 = v129 + v236;
            v238 = v382;
            v239 = v371;
            (*(v223 + 16))(v237 + *(v382 + 20), v97, v371);
            sub_1E487735C();
            *(v237 + *(v238 + 24)) = 1;
            v240 = v97;
            v222 = v239;
            (*(v223 + 8))(v240, v239);
            LODWORD(v237) = *(v358 + *(v373 + 56));
            sub_1E4816AD0(v358, type metadata accessor for Event);
            v182 = (v237 - 3) < 2;
            goto LABEL_73;
          }

LABEL_78:
          swift_once();
          goto LABEL_11;
        }

LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v369 = (v378 - 1);
      v134 = 0;
      v135 = MEMORY[0x1E69E7CC0];
      v136 = v373;
      v116 = v379;
      v137 = v380;
      do
      {
        if (v134 >= *(v137 + 16))
        {
          __break(1u);
          goto LABEL_75;
        }

        v138 = *(v116 + 72);
        sub_1E4816B30(v87 + v138 * v134, v25, type metadata accessor for Event);
        if ((v25[*(v136 + 56)] & 0xFE) == 6)
        {
          sub_1E4816AD0(v25, type metadata accessor for Event);
        }

        else
        {
          sub_1E4817260(v25, v383, type metadata accessor for Event);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v135;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E4858038(0, *(v135 + 16) + 1, 1);
            v135 = aBlock[0];
          }

          v141 = *(v135 + 16);
          v140 = *(v135 + 24);
          if (v141 >= v140 >> 1)
          {
            sub_1E4858038((v140 > 1), v141 + 1, 1);
            v135 = aBlock[0];
          }

          *(v135 + 16) = v141 + 1;
          sub_1E4817260(v383, v377 + v135 + v141 * v138, type metadata accessor for Event);
          v116 = v379;
          v137 = v380;
          v117 = v378;
        }

        ++v134;
      }

      while (v117 != v134);
      v142 = *(v135 + 16);

      v383 = (v350 + 8);
      if (v355 == 1)
      {
        v143 = v361;
        v144 = v360;
        v145 = MEMORY[0x1E69E7CC0];
        if (v142)
        {
          sub_1E4878B5C();
          sub_1E4878B4C();
          aBlock[0] = v117;
          sub_1E4878B2C();
          sub_1E4878B4C();
          aBlock[0] = v145;
          v146 = sub_1E4816A68(&qword_1EE2B4680, MEMORY[0x1E69686F0], MEMORY[0x1E69686F8]);
          v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D388, &qword_1E4880E78);
          v148 = sub_1E4773680(&qword_1EE2B0E10, &qword_1ECF7D388, &qword_1E4880E78, MEMORY[0x1E69E6328]);
          v377 = v147;
          v358 = v148;
          v379 = v146;
          sub_1E4878ECC();
          sub_1E4878B1C();
          v356 = *v383;
          (v356)(v144, v143);
          sub_1E4878B4C();
          sub_1E4878B7C();
          if (qword_1EE2B4848 != -1)
          {
            swift_once();
          }

          v149 = qword_1EE2BAF40;
          v150 = v359[7];
          v359 += 7;
          v355 = v150;
          (v150)(v368, 1, 1, v357);
          aBlock[0] = MEMORY[0x1E69E7CC0];
          v354 = sub_1E4816A68(&qword_1EE2B4688, MEMORY[0x1E69686B0], MEMORY[0x1E69686B8]);
          v151 = v149;
          v349 = v149;
          v152 = v151;
          v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D390, &unk_1E4880E80);
          sub_1E4773680(&qword_1EE2B0E18, &qword_1ECF7D390, &unk_1E4880E80, MEMORY[0x1E69E6328]);
          v153 = v353;
          sub_1E4878ECC();
          v154 = v152;
          v155 = v362;
          sub_1E487717C("x_events_at_singular_hour_long", 30, 2, v362, v153, 0, 0, v149, v368, "Shown in inline text complication when there are conflicting upcoming events. First specifier is the number of events, second is the time string. Hour is 1. Longer version. (Ex: '5 events at 1 PM' or '2 events at 1 AM')", 219, 2);
          sub_1E4878B5C();
          sub_1E4878B4C();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          v156 = v360;
          v157 = v361;
          sub_1E4878ECC();
          sub_1E4878B1C();
          (v356)(v156, v157);
          sub_1E4878B4C();
          aBlock[0] = v378;
          sub_1E4878B2C();
          sub_1E4878B4C();
          sub_1E4878B7C();
          v158 = v368;
          (v355)(v368, 1, 1, v357);
          v159 = MEMORY[0x1E69E7CC0];
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_1E4878ECC();
          LOWORD(v322) = 2;
          v160 = v342;
          sub_1E487717C("x_events_at_singular_hour_short", 31, 2, v155, v153, 0, 0, v349, v158, "Shown in inline text complication when there are conflicting upcoming events and there is not space to show the longer version. First specifier is the time string, second is the number of events. Hour is 1. Shorter version. (Ex: '1 PM, 5 events' or '1 AM, 2 events')", 266, v322);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D398, &qword_1E48836E0);
          v161 = v370;
          v162 = *(v370 + 72);
          v163 = (*(v370 + 80) + 32) & ~*(v370 + 80);
          v164 = swift_allocObject();
          *(v164 + 16) = xmmword_1E487A7F0;
          v379 = v164;
          v165 = v164 + v163;
          v166 = *(v161 + 16);
          v167 = v371;
          v166(v165, v344, v371);
          v383 = v162;
          v166(v162 + v165, v160, v167);
          aBlock[0] = v159;
          sub_1E4858230(0, 2, 0);
          v129 = aBlock[0];
          v168 = v346;
          v378 = v165;
          v166(v346, v165, v167);
          v169 = v382;
          v170 = v332;
          v166(&v332[*(v382 + 20)], v168, v167);
          sub_1E487735C();
          v377 = *(v161 + 8);
          v377(v168, v167);
          v171 = v170;
          v170[*(v169 + 24)] = 1;
          aBlock[0] = v129;
          v173 = *(v129 + 16);
          v172 = *(v129 + 24);
          v174 = (v173 + 1);
          if (v173 >= v172 >> 1)
          {
            v368 = (v173 + 1);
            sub_1E4858230((v172 > 1), v173 + 1, 1);
            v174 = v368;
            v171 = v332;
            v129 = aBlock[0];
          }

          *(v129 + 16) = v174;
          v368 = ((*(v381 + 80) + 32) & ~*(v381 + 80));
          v381 = *(v381 + 72);
          sub_1E4817260(v171, &v368[v129 + v381 * v173], type metadata accessor for InlineNextEventContentViewModel.TextOption);
          v166(v168, v383 + v378, v167);

          v175 = v330;
          v166(&v330[*(v169 + 20)], v168, v167);
          sub_1E487735C();
          v176 = v168;
          v177 = v175;
          v178 = v377;
          v377(v176, v167);
          *(v177 + *(v169 + 24)) = 1;
          aBlock[0] = v129;
          v180 = *(v129 + 16);
          v179 = *(v129 + 24);
          if (v180 >= v179 >> 1)
          {
            sub_1E4858230((v179 > 1), v180 + 1, 1);
            v129 = aBlock[0];
          }

          *(v129 + 16) = v180 + 1;
          sub_1E4817260(v177, &v368[v129 + v180 * v381], type metadata accessor for InlineNextEventContentViewModel.TextOption);
          v178(v342, v167);
          v181 = &v376;
        }

        else
        {
          sub_1E4878B5C();
          sub_1E4878B4C();
          aBlock[0] = v117;
          sub_1E4878B2C();
          v241 = MEMORY[0x1E69E7CC0];
          sub_1E4878B4C();
          aBlock[0] = v241;
          v242 = sub_1E4816A68(&qword_1EE2B4680, MEMORY[0x1E69686F0], MEMORY[0x1E69686F8]);
          v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D388, &qword_1E4880E78);
          v244 = sub_1E4773680(&qword_1EE2B0E10, &qword_1ECF7D388, &qword_1E4880E78, MEMORY[0x1E69E6328]);
          v377 = v243;
          v358 = v244;
          v379 = v242;
          sub_1E4878ECC();
          sub_1E4878B1C();
          v356 = *v383;
          (v356)(v144, v143);
          sub_1E4878B4C();
          sub_1E4878B7C();
          if (qword_1EE2B4848 != -1)
          {
            swift_once();
          }

          v245 = qword_1EE2BAF40;
          v246 = v359[7];
          v359 += 7;
          v355 = v246;
          (v246)(v368, 1, 1, v357);
          aBlock[0] = MEMORY[0x1E69E7CC0];
          v350 = sub_1E4816A68(&qword_1EE2B4688, MEMORY[0x1E69686B0], MEMORY[0x1E69686B8]);
          v247 = v245;
          v348 = v245;
          v248 = v247;
          v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D390, &unk_1E4880E80);
          v354 = sub_1E4773680(&qword_1EE2B0E18, &qword_1ECF7D390, &unk_1E4880E80, MEMORY[0x1E69E6328]);
          v249 = v353;
          sub_1E4878ECC();
          v250 = v248;
          v251 = v368;
          v252 = v362;
          sub_1E487717C("x_reminders_at_singular_hour_long", 33, 2, v362, v249, 0, 0, v245, v368, "Shown in inline text complication when there are conflicting upcoming reminders. First specifier is the number of reminders, second is the time string. Hour is 1. Longer version. (Ex: '5 reminders at 1 PM' or '2 reminders at 1 AM')", 231, 2);
          sub_1E4878B5C();
          sub_1E4878B4C();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          v253 = v360;
          v254 = v361;
          sub_1E4878ECC();
          sub_1E4878B1C();
          (v356)(v253, v254);
          sub_1E4878B4C();
          aBlock[0] = v378;
          sub_1E4878B2C();
          sub_1E4878B4C();
          sub_1E4878B7C();
          (v355)(v251, 1, 1, v357);
          v255 = MEMORY[0x1E69E7CC0];
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_1E4878ECC();
          LOWORD(v324) = 2;
          v256 = v334;
          sub_1E487717C("x_reminders_at_singular_hour_short", 34, 2, v252, v249, 0, 0, v348, v251, "Shown in inline text complication when there are conflicting upcoming reminders and there is not space to show the longer version. First specifier is the time string, second is the number of reminders. Hour is 1. Shorter version. (Ex: '1 PM, 5 reminders' or '1 AM, 2 reminders')", 278, v324);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D398, &qword_1E48836E0);
          v257 = v370;
          v258 = *(v370 + 72);
          v259 = (*(v370 + 80) + 32) & ~*(v370 + 80);
          v260 = swift_allocObject();
          *(v260 + 16) = xmmword_1E487A7F0;
          v379 = v260;
          v261 = v260 + v259;
          v262 = *(v257 + 16);
          v167 = v371;
          v262(v261, v340, v371);
          v383 = v258;
          v262(v258 + v261, v256, v167);
          aBlock[0] = v255;
          sub_1E4858230(0, 2, 0);
          v129 = aBlock[0];
          v263 = v346;
          v378 = v261;
          v262(v346, v261, v167);
          v264 = v382;
          v265 = v328;
          v262(&v328[*(v382 + 20)], v263, v167);
          sub_1E487735C();
          v377 = *(v257 + 8);
          v377(v263, v167);
          v266 = v265;
          v265[*(v264 + 24)] = 1;
          aBlock[0] = v129;
          v268 = *(v129 + 16);
          v267 = *(v129 + 24);
          v269 = (v268 + 1);
          if (v268 >= v267 >> 1)
          {
            v368 = (v268 + 1);
            sub_1E4858230((v267 > 1), v268 + 1, 1);
            v269 = v368;
            v266 = v328;
            v129 = aBlock[0];
          }

          *(v129 + 16) = v269;
          v368 = ((*(v381 + 80) + 32) & ~*(v381 + 80));
          v381 = *(v381 + 72);
          sub_1E4817260(v266, &v368[v129 + v381 * v268], type metadata accessor for InlineNextEventContentViewModel.TextOption);
          v262(v263, v383 + v378, v167);

          v270 = v326;
          v262(&v326[*(v264 + 20)], v263, v167);
          sub_1E487735C();
          v271 = v263;
          v272 = v270;
          v178 = v377;
          v377(v271, v167);
          *(v272 + *(v264 + 24)) = 1;
          aBlock[0] = v129;
          v274 = *(v129 + 16);
          v273 = *(v129 + 24);
          if (v274 >= v273 >> 1)
          {
            sub_1E4858230((v273 > 1), v274 + 1, 1);
            v129 = aBlock[0];
          }

          *(v129 + 16) = v274 + 1;
          sub_1E4817260(v272, &v368[v129 + v274 * v381], type metadata accessor for InlineNextEventContentViewModel.TextOption);
          v178(v334, v167);
          v181 = &v372;
        }
      }

      else
      {
        v183 = v361;
        v184 = v360;
        v185 = MEMORY[0x1E69E7CC0];
        if (v142)
        {
          sub_1E4878B5C();
          sub_1E4878B4C();
          aBlock[0] = v117;
          sub_1E4878B2C();
          sub_1E4878B4C();
          aBlock[0] = v185;
          v186 = sub_1E4816A68(&qword_1EE2B4680, MEMORY[0x1E69686F0], MEMORY[0x1E69686F8]);
          v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D388, &qword_1E4880E78);
          v188 = sub_1E4773680(&qword_1EE2B0E10, &qword_1ECF7D388, &qword_1E4880E78, MEMORY[0x1E69E6328]);
          v377 = v187;
          v358 = v188;
          v379 = v186;
          sub_1E4878ECC();
          sub_1E4878B1C();
          v356 = *v383;
          (v356)(v184, v183);
          sub_1E4878B4C();
          sub_1E4878B7C();
          if (qword_1EE2B4848 != -1)
          {
            swift_once();
          }

          v189 = qword_1EE2BAF40;
          v190 = v359[7];
          v359 += 7;
          v355 = v190;
          (v190)(v368, 1, 1, v357);
          aBlock[0] = MEMORY[0x1E69E7CC0];
          v354 = sub_1E4816A68(&qword_1EE2B4688, MEMORY[0x1E69686B0], MEMORY[0x1E69686B8]);
          v191 = v189;
          v349 = v189;
          v192 = v191;
          v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D390, &unk_1E4880E80);
          sub_1E4773680(&qword_1EE2B0E18, &qword_1ECF7D390, &unk_1E4880E80, MEMORY[0x1E69E6328]);
          v193 = v353;
          sub_1E4878ECC();
          v194 = v192;
          v195 = v362;
          sub_1E487717C("x_events_at_plural_hour_long", 28, 2, v362, v193, 0, 0, v189, v368, "Shown in inline text complication when there are conflicting upcoming events. First specifier is the number of events, second is the time string. Hour is not 1. Longer version. (Ex: '5 events at 2 PM' or '2 events at 3 AM')", 223, 2);
          sub_1E4878B5C();
          sub_1E4878B4C();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          v196 = v360;
          v197 = v361;
          sub_1E4878ECC();
          sub_1E4878B1C();
          (v356)(v196, v197);
          sub_1E4878B4C();
          aBlock[0] = v378;
          sub_1E4878B2C();
          sub_1E4878B4C();
          sub_1E4878B7C();
          v198 = v368;
          (v355)(v368, 1, 1, v357);
          v199 = MEMORY[0x1E69E7CC0];
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_1E4878ECC();
          LOWORD(v323) = 2;
          v200 = v343;
          sub_1E487717C("x_events_at_plural_hour_short", 29, 2, v195, v193, 0, 0, v349, v198, "Shown in inline text complication when there are conflicting upcoming events and there is not space to show the longer version. First specifier is the time string, second is the number of events. Hour is not 1. Shorter version. (Ex: '2 PM, 5 events' or '3 AM, 2 events')", 270, v323);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D398, &qword_1E48836E0);
          v201 = v370;
          v202 = *(v370 + 72);
          v203 = (*(v370 + 80) + 32) & ~*(v370 + 80);
          v204 = swift_allocObject();
          *(v204 + 16) = xmmword_1E487A7F0;
          v379 = v204;
          v205 = v204 + v203;
          v206 = *(v201 + 16);
          v167 = v371;
          v206(v205, v345, v371);
          v383 = v202;
          v206(v202 + v205, v200, v167);
          aBlock[0] = v199;
          sub_1E4858230(0, 2, 0);
          v129 = aBlock[0];
          v207 = v346;
          v378 = v205;
          v206(v346, v205, v167);
          v208 = v382;
          v209 = v333;
          v206(&v333[*(v382 + 20)], v207, v167);
          sub_1E487735C();
          v377 = *(v201 + 8);
          v377(v207, v167);
          v210 = v209;
          v209[*(v208 + 24)] = 1;
          aBlock[0] = v129;
          v212 = *(v129 + 16);
          v211 = *(v129 + 24);
          v213 = (v212 + 1);
          if (v212 >= v211 >> 1)
          {
            v368 = (v212 + 1);
            sub_1E4858230((v211 > 1), v212 + 1, 1);
            v213 = v368;
            v210 = v333;
            v129 = aBlock[0];
          }

          *(v129 + 16) = v213;
          v368 = ((*(v381 + 80) + 32) & ~*(v381 + 80));
          v381 = *(v381 + 72);
          sub_1E4817260(v210, &v368[v129 + v381 * v212], type metadata accessor for InlineNextEventContentViewModel.TextOption);
          v206(v207, v383 + v378, v167);

          v214 = v331;
          v206(&v331[*(v208 + 20)], v207, v167);
          sub_1E487735C();
          v215 = v207;
          v216 = v214;
          v178 = v377;
          v377(v215, v167);
          *(v216 + *(v208 + 24)) = 1;
          aBlock[0] = v129;
          v218 = *(v129 + 16);
          v217 = *(v129 + 24);
          if (v218 >= v217 >> 1)
          {
            sub_1E4858230((v217 > 1), v218 + 1, 1);
            v129 = aBlock[0];
          }

          *(v129 + 16) = v218 + 1;
          sub_1E4817260(v216, &v368[v129 + v218 * v381], type metadata accessor for InlineNextEventContentViewModel.TextOption);
          v178(v343, v167);
          v181 = &v377;
        }

        else
        {
          sub_1E4878B5C();
          sub_1E4878B4C();
          aBlock[0] = v117;
          sub_1E4878B2C();
          v275 = MEMORY[0x1E69E7CC0];
          sub_1E4878B4C();
          aBlock[0] = v275;
          v276 = sub_1E4816A68(&qword_1EE2B4680, MEMORY[0x1E69686F0], MEMORY[0x1E69686F8]);
          v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D388, &qword_1E4880E78);
          v278 = sub_1E4773680(&qword_1EE2B0E10, &qword_1ECF7D388, &qword_1E4880E78, MEMORY[0x1E69E6328]);
          v377 = v277;
          v358 = v278;
          v379 = v276;
          sub_1E4878ECC();
          sub_1E4878B1C();
          v356 = *v383;
          (v356)(v184, v183);
          sub_1E4878B4C();
          sub_1E4878B7C();
          if (qword_1EE2B4848 != -1)
          {
            swift_once();
          }

          v279 = qword_1EE2BAF40;
          v280 = v359[7];
          v359 += 7;
          v355 = v280;
          (v280)(v368, 1, 1, v357);
          aBlock[0] = MEMORY[0x1E69E7CC0];
          v350 = sub_1E4816A68(&qword_1EE2B4688, MEMORY[0x1E69686B0], MEMORY[0x1E69686B8]);
          v281 = v279;
          v348 = v279;
          v282 = v281;
          v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D390, &unk_1E4880E80);
          v354 = sub_1E4773680(&qword_1EE2B0E18, &qword_1ECF7D390, &unk_1E4880E80, MEMORY[0x1E69E6328]);
          v283 = v353;
          sub_1E4878ECC();
          v284 = v282;
          v285 = v368;
          v286 = v362;
          sub_1E487717C("x_reminders_at_plural_hour_long", 31, 2, v362, v283, 0, 0, v279, v368, "Shown in inline text complication when there are conflicting upcoming reminders. First specifier is the number of reminders, second is the time string. Hour is not 1. Longer version. (Ex: '5 reminders at 2 PM' or '2 reminders at 3 AM')", 235, 2);
          sub_1E4878B5C();
          sub_1E4878B4C();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          v287 = v360;
          v288 = v361;
          sub_1E4878ECC();
          sub_1E4878B1C();
          (v356)(v287, v288);
          sub_1E4878B4C();
          aBlock[0] = v378;
          sub_1E4878B2C();
          sub_1E4878B4C();
          sub_1E4878B7C();
          (v355)(v285, 1, 1, v357);
          v289 = MEMORY[0x1E69E7CC0];
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_1E4878ECC();
          LOWORD(v325) = 2;
          v290 = v335;
          sub_1E487717C("x_reminders_at_plural_hour_short", 32, 2, v286, v283, 0, 0, v348, v285, "Shown in inline text complication when there are conflicting upcoming reminders and there is not space to show the longer version. First specifier is the time string, second is the number of reminders. Hour is not 1. Shorter version. (Ex: '2 PM, 5 reminders' or '3 AM, 2 reminders')", 282, v325);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D398, &qword_1E48836E0);
          v291 = v370;
          v292 = *(v370 + 72);
          v293 = (*(v370 + 80) + 32) & ~*(v370 + 80);
          v294 = swift_allocObject();
          *(v294 + 16) = xmmword_1E487A7F0;
          v379 = v294;
          v295 = v294 + v293;
          v296 = *(v291 + 16);
          v167 = v371;
          v296(v295, v341, v371);
          v383 = v292;
          v296(v292 + v295, v290, v167);
          aBlock[0] = v289;
          sub_1E4858230(0, 2, 0);
          v129 = aBlock[0];
          v297 = v346;
          v378 = v295;
          v296(v346, v295, v167);
          v298 = v382;
          v299 = v329;
          v296(&v329[*(v382 + 20)], v297, v167);
          sub_1E487735C();
          v377 = *(v291 + 8);
          v377(v297, v167);
          v300 = v299;
          v299[*(v298 + 24)] = 1;
          aBlock[0] = v129;
          v302 = *(v129 + 16);
          v301 = *(v129 + 24);
          v303 = (v302 + 1);
          if (v302 >= v301 >> 1)
          {
            v368 = (v302 + 1);
            sub_1E4858230((v301 > 1), v302 + 1, 1);
            v303 = v368;
            v300 = v329;
            v129 = aBlock[0];
          }

          *(v129 + 16) = v303;
          v368 = ((*(v381 + 80) + 32) & ~*(v381 + 80));
          v381 = *(v381 + 72);
          sub_1E4817260(v300, &v368[v129 + v381 * v302], type metadata accessor for InlineNextEventContentViewModel.TextOption);
          v296(v297, v383 + v378, v167);

          v304 = v327;
          v296(&v327[*(v298 + 20)], v297, v167);
          sub_1E487735C();
          v305 = v297;
          v306 = v304;
          v178 = v377;
          v377(v305, v167);
          *(v306 + *(v298 + 24)) = 1;
          aBlock[0] = v129;
          v308 = *(v129 + 16);
          v307 = *(v129 + 24);
          if (v308 >= v307 >> 1)
          {
            sub_1E4858230((v307 > 1), v308 + 1, 1);
            v129 = aBlock[0];
          }

          *(v129 + 16) = v308 + 1;
          sub_1E4817260(v306, &v368[v129 + v308 * v381], type metadata accessor for InlineNextEventContentViewModel.TextOption);
          v178(v335, v167);
          v181 = &v373;
        }
      }

      v178(*(v181 - 32), v167);
      v97 = v375;
      v309 = v380;
      v116 = v347;
      v310 = v369;
      v311 = 0;
      v312 = *(v373 + 56);
      while (v311 < *(v309 + 16))
      {
        sub_1E4816B30(v87, v116, type metadata accessor for Event);
        v313 = *(v116 + v312);
        sub_1E4816AD0(v116, type metadata accessor for Event);
        v314 = v313 - 3;
        v182 = (v313 - 3) < 2;
        v315 = v314 > 1 || v310 == v311++;
        v87 += v138;
        if (v315)
        {
          v219 = v367;
          v220 = v366;
          v221 = v364;
          v223 = v370;
          v224 = v97;
          v222 = v371;
          goto LABEL_73;
        }
      }

LABEL_75:
      __break(1u);
    }

    __break(1u);
    goto LABEL_77;
  }

  sub_1E487718C();
  sub_1E486E640(v80[*(v78 + 28)], v85 & 1);
  v127 = v126;
  v128 = *(v126 + 16);
  if (v128)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E4858230(0, v128, 0);
    v129 = aBlock[0];
    v130 = v127 + 40;
    v131 = v382;
    do
    {
      swift_bridgeObjectRetain_n();
      sub_1E48771FC();
      sub_1E48771AC();
      sub_1E487735C();

      v45[*(v131 + 24)] = 1;
      aBlock[0] = v129;
      v133 = *(v129 + 16);
      v132 = *(v129 + 24);
      if (v133 >= v132 >> 1)
      {
        sub_1E4858230((v132 > 1), v133 + 1, 1);
        v129 = aBlock[0];
      }

      *(v129 + 16) = v133 + 1;
      sub_1E4817260(v45, v129 + ((*(v381 + 80) + 32) & ~*(v381 + 80)) + *(v381 + 72) * v133, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      v130 += 16;
      --v128;
    }

    while (v128);

    v182 = 0;
  }

  else
  {

    v182 = 0;
    v129 = MEMORY[0x1E69E7CC0];
  }

  v219 = v367;
  v220 = v366;
  v221 = v364;
  v222 = v371;
  v223 = v370;
  v224 = v375;
LABEL_73:
  aBlock[0] = MEMORY[0x1E69E7CD0];
  v316 = sub_1E4816C18(v129, aBlock);

  *v219 = v316;
  EventContentViewModel = type metadata accessor for InlineNextEventContentViewModel(0);
  sub_1E476DFDC(v380, v219 + *(EventContentViewModel + 24));

  v318 = sub_1E4877CCC();
  (*(*(v318 - 8) + 8))(v221, v318);
  v319 = sub_1E487753C();
  (*(*(v319 - 8) + 8))(v365, v319);
  (*(v374 + 8))(v220, v224);
  sub_1E4816AD0(v363, type metadata accessor for DayEvents);
  result = (*(v223 + 8))(v376, v222);
  *(v219 + 8) = v182;
  return result;
}

uint64_t sub_1E4815034@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  EventContentView = type metadata accessor for InlineNextEventContentView(0);
  sub_1E4773850(v1 + *(EventContentView + 36), v9, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E481523C@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  EventContentView = type metadata accessor for InlineNextEventContentView(0);
  sub_1E4773850(v1 + *(EventContentView + 40), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E4815444@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v40 = sub_1E487719C();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContentView = type metadata accessor for InlineNextEventContentViewModel.TextOption(0);
  v35 = *(EventContentView - 8);
  MEMORY[0x1EEE9AC00](EventContentView);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E4877CCC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1E487753C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_1E487732C();
  v9 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContentViewModel = type metadata accessor for InlineNextEventContentViewModel(0);
  MEMORY[0x1EEE9AC00](EventContentViewModel - 8);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D350, &qword_1E4880DE0);
  MEMORY[0x1EEE9AC00](v34);
  v16 = &v34 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D358, &qword_1E4880DE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E487A7F0;
  v18 = sub_1E487810C();
  *(inited + 32) = v18;
  v19 = sub_1E487812C();
  *(inited + 33) = v19;
  v20 = sub_1E487811C();
  sub_1E487811C();
  if (sub_1E487811C() != v18)
  {
    v20 = sub_1E487811C();
  }

  sub_1E487811C();
  if (sub_1E487811C() != v19)
  {
    v20 = sub_1E487811C();
  }

  *v16 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D360, &qword_1E4880DF0);
  sub_1E48159BC(v1, &v16[*(v21 + 44)]);
  v22 = type metadata accessor for InlineNextEventContentView(0);
  (*(v9 + 16))(v11, &v1[v22[5]], v42);
  v23 = *&v1[v22[6]];

  sub_1E4815034(v8);
  v24 = *v1;
  LODWORD(v22) = v1[v22[7]];

  v25 = v43;
  sub_1E481523C(v43);
  sub_1E481159C(v11, v23, v8, v24, v22, v25, v14);
  v26 = *v14;

  result = sub_1E4816AD0(v14, type metadata accessor for InlineNextEventContentViewModel);
  if (*(v26 + 16))
  {
    v28 = v36;
    sub_1E4816B30(v26 + ((*(v35 + 80) + 32) & ~*(v35 + 80)), v36, type metadata accessor for InlineNextEventContentViewModel.TextOption);

    (*(v38 + 16))(v39, v28 + *(EventContentView + 20), v40);
    sub_1E4816AD0(v28, type metadata accessor for InlineNextEventContentViewModel.TextOption);
    v29 = sub_1E487847C();
    v31 = v30;
    v33 = v32;
    sub_1E4773680(&qword_1EE2B1638, &qword_1ECF7D350, &qword_1E4880DE0, MEMORY[0x1E697BF78]);
    sub_1E487856C();
    sub_1E477A3C8(v29, v31, v33 & 1);

    return sub_1E47738B8(v16, &qword_1ECF7D350, &qword_1E4880DE0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E48159BC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  EventContentView = type metadata accessor for InlineNextEventContentView(0);
  v28 = *(EventContentView - 1);
  MEMORY[0x1EEE9AC00](EventContentView);
  v29 = v4;
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E4877CCC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1E487753C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1E487732C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContentViewModel = type metadata accessor for InlineNextEventContentViewModel(0);
  MEMORY[0x1EEE9AC00](EventContentViewModel - 8);
  v17 = (&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E4878D2C();
  v27 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v12 + 16))(v14, &a1[EventContentView[5]], v11);
  v18 = *&a1[EventContentView[6]];

  sub_1E4815034(v10);
  v19 = *a1;
  v20 = a1[EventContentView[7]];

  sub_1E481523C(v7);
  sub_1E481159C(v14, v18, v10, v19, v20, v7, v17);
  v21 = *v17;

  sub_1E4816AD0(v17, type metadata accessor for InlineNextEventContentViewModel);
  v32 = v21;
  v22 = a1;
  v23 = v30;
  sub_1E4816B30(v22, v30, type metadata accessor for InlineNextEventContentView);
  v24 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v25 = swift_allocObject();
  sub_1E4817260(v23, v25 + v24, type metadata accessor for InlineNextEventContentView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D368, &qword_1E4880DF8);
  sub_1E487736C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D370, &qword_1E4880E00);
  sub_1E4773680(&unk_1EE2B0DE8, &qword_1ECF7D368, &qword_1E4880DF8, MEMORY[0x1E69E6338]);
  sub_1E4773680(&qword_1EE2B1000, &qword_1ECF7D370, &qword_1E4880E00, MEMORY[0x1E6981800]);
  sub_1E4816A68(&qword_1EE2B1E88, type metadata accessor for InlineNextEventContentViewModel.TextOption, &unk_1E4880F34);
  sub_1E487886C();
}

double sub_1E4815E5C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_1E4877F6C();
  v18 = 1;
  sub_1E4815FD4(a1, a2, &v12);
  v21 = v14;
  v22 = v15;
  v19 = v12;
  v20 = v13;
  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  v24[1] = v13;
  v23 = v16;
  v24[0] = v12;
  sub_1E4773850(&v19, &v11, &qword_1ECF7D378, &qword_1E4880E08);
  sub_1E47738B8(v24, &qword_1ECF7D378, &qword_1E4880E08);

  *&v17[7] = v19;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  v7 = *&v17[48];
  *(a3 + 49) = *&v17[32];
  *(a3 + 65) = v7;
  *(a3 + 81) = *&v17[64];
  result = *v17;
  v9 = *&v17[16];
  *(a3 + 17) = *v17;
  v10 = v18;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 96) = *&v17[79];
  *(a3 + 33) = v9;
  return result;
}

uint64_t sub_1E4815FD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, BOOL *a3@<X8>)
{
  v55 = a2;
  v57 = a3;
  v4 = sub_1E4877CCC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v54 = (v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1E487753C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = (v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContentViewModel = type metadata accessor for InlineNextEventContentViewModel(0);
  MEMORY[0x1EEE9AC00](EventContentViewModel - 8);
  v53 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E487719C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  v56 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  EventContentView = type metadata accessor for InlineNextEventContentViewModel.TextOption(0);
  v19 = *(EventContentView + 20);
  v51 = *(a1 + *(EventContentView + 24));
  (*(v15 + 16))(v17, a1 + v19, v14);
  v20 = sub_1E487847C();
  v49 = v21;
  v50 = v20;
  v23 = v22;
  v48[1] = v24;
  v25 = type metadata accessor for InlineNextEventContentView(0);
  v26 = v55;
  v27 = v11;
  (*(v9 + 16))(v11, v55 + v25[5], v8);
  v28 = *(v26 + v25[6]);

  v29 = v52;
  sub_1E4815034(v52);
  v30 = *v26;
  LODWORD(v25) = *(v26 + v25[7]);

  v31 = v54;
  sub_1E481523C(v54);
  v32 = v53;
  sub_1E481159C(v27, v28, v29, v30, v25, v31, v53);
  sub_1E4816AD0(v32, type metadata accessor for InlineNextEventContentViewModel);
  v34 = v49;
  v33 = v50;
  v35 = sub_1E48783EC();
  v37 = v36;
  LOBYTE(v28) = v38;
  v40 = v39;
  sub_1E477A3C8(v33, v34, v23 & 1);

  KeyPath = swift_getKeyPath();
  v42 = swift_getKeyPath();
  v60 = (v51 & 1) == 0;
  *&v63 = v35;
  *(&v63 + 1) = v37;
  LOBYTE(v64) = v28 & 1;
  *(&v64 + 1) = *v62;
  DWORD1(v64) = *&v62[3];
  *(&v64 + 1) = v40;
  *&v65 = KeyPath;
  *(&v65 + 1) = 1;
  LOBYTE(v66) = 0;
  DWORD1(v66) = *&v61[3];
  *(&v66 + 1) = *v61;
  *(&v66 + 1) = v42;
  v67 = v30;
  *(v59 + 7) = v63;
  *(&v59[4] + 7) = v30;
  *(&v59[3] + 7) = v66;
  *(&v59[2] + 7) = v65;
  *(&v59[1] + 7) = v64;
  v43 = v57;
  *v57 = v60;
  v44 = v59[1];
  *(v43 + 1) = v59[0];
  v45 = v59[2];
  v46 = v59[3];
  *(v43 + 4) = *(&v59[3] + 15);
  *(v43 + 49) = v46;
  *(v43 + 33) = v45;
  *(v43 + 17) = v44;
  v68[0] = v35;
  v68[1] = v37;
  v69 = v28 & 1;
  *&v70[3] = *&v62[3];
  *v70 = *v62;
  v71 = v40;
  v72 = KeyPath;
  v73 = 1;
  v74 = 0;
  *&v75[3] = *&v61[3];
  *v75 = *v61;
  v76 = v42;
  v77 = v30;

  sub_1E4773850(&v63, &v58, &qword_1ECF7D380, &qword_1E4880E70);
  sub_1E47738B8(v68, &qword_1ECF7D380, &qword_1E4880E70);
}

uint64_t sub_1E48164D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D348, &unk_1E4880DD0);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - v3;
  v4 = sub_1E487753C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1E487732C();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContentViewModel = type metadata accessor for InlineNextEventContentViewModel(0);
  MEMORY[0x1EEE9AC00](EventContentViewModel);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E4877CCC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v30 - v19;
  sub_1E481523C(v17);
  sub_1E4877CAC();
  sub_1E4816A68(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v21 = sub_1E4878EAC();
  v22 = *(v12 + 8);
  v22(v15, v11);
  v22(v17, v11);
  if (v21)
  {
    v23 = sub_1E487725C();
    (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  }

  else
  {
    EventContentView = type metadata accessor for InlineNextEventContentView(0);
    (*(v31 + 16))(v8, v2 + EventContentView[5], v32);
    v25 = *(v2 + EventContentView[6]);

    v26 = v34;
    sub_1E4815034(v34);
    v27 = *v2;
    LODWORD(EventContentView) = *(v2 + EventContentView[7]);

    sub_1E481523C(v17);
    sub_1E481159C(v8, v25, v26, v27, EventContentView, v17, v10);
    sub_1E4773850(&v10[*(EventContentViewModel + 24)], v20, &unk_1ECF7B688, &qword_1E487C160);
    sub_1E4816AD0(v10, type metadata accessor for InlineNextEventContentViewModel);
  }

  v28 = v35;
  sub_1E4815444(v35);
  sub_1E4816980();
  sub_1E48784BC();
  sub_1E47738B8(v28, &qword_1ECF7D348, &unk_1E4880DD0);
  return sub_1E47738B8(v20, &unk_1ECF7B688, &qword_1E487C160);
}

unint64_t sub_1E4816980()
{
  result = qword_1EE2B1588;
  if (!qword_1EE2B1588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D348, &unk_1E4880DD0);
    sub_1E4773680(&qword_1EE2B1638, &qword_1ECF7D350, &qword_1E4880DE0, MEMORY[0x1E697BF78]);
    sub_1E4816A68(&qword_1EE2B10A8, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1588);
  }

  return result;
}

uint64_t sub_1E4816A68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4816AD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4816B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1E4816B98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InlineNextEventContentView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1E4815E5C(a1, v6, a2);
}

uint64_t sub_1E4816C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineNextEventContentViewModel.TextOption(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v28 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v28 - v15;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = *(v14 + 80);
  v32 = *(v14 + 72);
  v29 = (v18 + 32) & ~v18;
  v19 = a1 + v29;
  v20 = MEMORY[0x1E69E7CC0];
  v30 = v7;
  v31 = a2;
  do
  {
    sub_1E4816B30(v19, v16, type metadata accessor for InlineNextEventContentViewModel.TextOption);
    sub_1E4816B30(v16, v10, type metadata accessor for InlineNextEventContentViewModel.TextOption);
    v22 = sub_1E48629F0(v13, v10);
    sub_1E4816AD0(v13, type metadata accessor for InlineNextEventContentViewModel.TextOption);
    if (v22)
    {
      sub_1E4817260(v16, v7, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E4858230(0, *(v20 + 16) + 1, 1);
        v20 = v33;
      }

      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1E4858230((v24 > 1), v25 + 1, 1);
        v20 = v33;
      }

      *(v20 + 16) = v25 + 1;
      v21 = v32;
      v26 = v20 + v29 + v25 * v32;
      v7 = v30;
      sub_1E4817260(v30, v26, type metadata accessor for InlineNextEventContentViewModel.TextOption);
    }

    else
    {
      sub_1E4816AD0(v16, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      v21 = v32;
    }

    v19 += v21;
    --v17;
  }

  while (v17);
  return v20;
}

id sub_1E4816EC4(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v5 = sub_1E487751C();
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4876FFC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v15 = sub_1E4878B9C();
  [a1 setLocalizedDateFormatFromTemplate_];

  v34 = a3;
  v16 = sub_1E48772BC();
  v17 = [a1 stringFromDate_];

  v18 = sub_1E4878BDC();
  v20 = v19;

  v36 = v18;
  v37 = v20;
  sub_1E4876FDC();
  sub_1E4876FEC();
  v21 = *(v9 + 8);
  v22 = v21(v14, v8);
  sub_1E477A374(v22, v23, v24);
  v25 = sub_1E4878E7C();
  v21(v12, v8);

  v36 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B978, &qword_1E487ABA8);
  sub_1E4773680(&qword_1EE2B0DC8, &qword_1ECF7B978, &qword_1E487ABA8, MEMORY[0x1E69E6310]);
  sub_1E4878ABC();

  v26 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  v27 = sub_1E4878B9C();

  v28 = [v26 numberFromString_];

  if (v28)
  {
    v29 = [v28 integerValue];
  }

  else
  {
    v30 = v33;
    (*(v33 + 104))(v7, *MEMORY[0x1E6969A58], v5);
    v29 = sub_1E487752C();
    (*(v30 + 8))(v7, v5);
  }

  return v29;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E4817260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1E48172F0(uint64_t a1)
{
  sub_1E481115C(319, &qword_1ECF7D3A8, type metadata accessor for InlineNextEventContentViewModel.TextOption, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1E481115C(319, &qword_1EE2B4660, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E4817404(uint64_t a1)
{
  result = sub_1E487736C();
  if (v2 <= 0x3F)
  {
    result = sub_1E487719C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t CalendarDateWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3B0, &qword_1E4880FC0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3B8, &qword_1E4880FC8);
  v31[0] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v31 - v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3C0, &qword_1E4880FD0);
  v32 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v9 = v31 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3C8, &unk_1E4880FD8);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v33 = v31 - v10;
  v40 = 0x6469772065746164;
  v41 = 0xEB00000000746567;
  LOBYTE(v42) = 1;
  type metadata accessor for CalendarDateWidget.WidgetView(0);
  v11 = sub_1E481E5E4(&unk_1EE2B4480, type metadata accessor for CalendarDateWidget.WidgetView, &unk_1E4881064);
  sub_1E479BF44(v11, v12, v13);
  sub_1E487899C();
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  v31[1] = qword_1EE2BAF40;
  v40 = sub_1E48771EC();
  v41 = v14;
  v15 = sub_1E4773680(&qword_1EE2B0E48, &qword_1ECF7D3B0, &qword_1E4880FC0, MEMORY[0x1E6985A00]);
  v18 = sub_1E477A374(v15, v16, v17);
  v19 = MEMORY[0x1E69E6158];
  sub_1E487800C();

  (*(v2 + 8))(v4, v1);
  v40 = v1;
  v41 = v19;
  v42 = v15;
  v43 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E487801C();
  (*(v31[0] + 8))(v7, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA20, &qword_1E487BCF0);
  v21 = sub_1E487894C();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E487A7E0;
  (*(v22 + 104))(v24 + v23, *MEMORY[0x1E69857F0], v21);
  v40 = v5;
  v41 = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = v33;
  v27 = v35;
  sub_1E4877FFC();

  (*(v32 + 8))(v9, v27);
  v40 = sub_1E48771EC();
  v41 = v28;
  v38 = v27;
  v39 = v25;
  swift_getOpaqueTypeConformance2();
  v29 = v36;
  sub_1E4877FEC();

  return (*(v34 + 8))(v26, v29);
}

uint64_t sub_1E4817B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E479D35C(a1, a2);
  KeyPath = swift_getKeyPath();
  v5 = type metadata accessor for CalendarDateWidget.WidgetView(0);
  *(a2 + v5[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  *(a2 + v5[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D408, &qword_1E4881130);
  swift_storeEnumTagMultiPayload();
  *(a2 + v5[7]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
  swift_storeEnumTagMultiPayload();
  v6 = swift_getKeyPath();
  *(a2 + v5[9]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v7 = swift_getKeyPath();

  v9 = a2 + v5[8];
  *v9 = v6;
  *(v9 + 8) = 0;
  v10 = a2 + v5[10];
  *v10 = v7;
  *(v10 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for CalendarDateWidget.WidgetView(uint64_t a1)
{
  result = qword_1EE2B4470;
  if (!qword_1EE2B4470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4817DA8@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for CalendarDateWidget.WidgetView(0);
  sub_1E4773850(v1 + *(v10 + 20), v9, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E4817FB0@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D408, &qword_1E4881130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for CalendarDateWidget.WidgetView(0);
  sub_1E4773850(v1 + *(v10 + 24), v9, &qword_1ECF7D408, &qword_1E4881130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487744C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E48181B8()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CalendarDateWidget.WidgetView(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1E4818310@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for CalendarDateWidget.WidgetView(0);
  sub_1E4773850(v1 + *(v10 + 36), v9, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487893C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E4818518()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for CalendarDateWidget.WidgetView(0) + 40));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1E4818668@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v2 = sub_1E48780DC();
  v81 = *(v2 - 8);
  v82 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v80 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v70 = &v63 - v5;
  v6 = sub_1E487798C();
  v7 = *(v6 - 8);
  v71 = v6;
  v72 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3D8, &qword_1E48810C0);
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v63 - v10;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3E0, &qword_1E48810C8);
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3E8, &unk_1E48810D0);
  v78 = *(v12 - 8);
  v79 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v63 - v13;
  v14 = sub_1E487732C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E487744C();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E487753C();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = (&v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = v23;
  v24 = sub_1E487893C();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E487797C();
  v84 = *(v27 - 8);
  v85 = v27;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v63 - v31;
  v69 = sub_1E4877A5C();
  v66 = v33;
  v65 = sub_1E48181B8();
  sub_1E4818310(v26);
  sub_1E4817DA8(v23);
  v34 = v20;
  v35 = v20;
  v36 = v1;
  sub_1E4817FB0(v34);
  v37 = *(type metadata accessor for CalendarDateTimelineEntry(0) + 20);
  v38 = *(v15 + 16);
  v38(v17, v36 + v37, v14);
  sub_1E4818EDC(v65 & 1, v26, v64, v35, v17, v69, v66, v32);
  v38(v17, v36 + v37, v14);
  v39 = *(v84 + 16);
  v69 = v32;
  v39(v30, v32, v85);
  v40 = v68;
  sub_1E487774C();
  v41 = v70;
  sub_1E4877A6C();
  v42 = sub_1E487725C();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  sub_1E481E5E4(&qword_1EE2B4628, MEMORY[0x1E6993258], MEMORY[0x1E6993250]);
  v43 = v67;
  v44 = v71;
  sub_1E48784BC();
  sub_1E47738B8(v41, &unk_1ECF7B688, &qword_1E487C160);
  (*(v72 + 8))(v40, v44);
  if (sub_1E48181B8())
  {
    sub_1E4818518();
  }

  v45 = sub_1E487814C();
  sub_1E4877B0C();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v76;
  (*(v73 + 32))(v76, v43, v74);
  v55 = v54 + *(v75 + 36);
  *v55 = v45;
  *(v55 + 8) = v47;
  *(v55 + 16) = v49;
  *(v55 + 24) = v51;
  *(v55 + 32) = v53;
  *(v55 + 40) = 0;
  v56 = v80;
  sub_1E48780CC();
  sub_1E487889C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE98, &qword_1E487C870);
  sub_1E481DB10();
  sub_1E4773680(&qword_1EE2B16D0, &qword_1ECF7BE98, &qword_1E487C870, MEMORY[0x1E697DB70]);
  v57 = v77;
  sub_1E487859C();
  (*(v81 + 8))(v56, v82);
  sub_1E4769054(v54);
  KeyPath = swift_getKeyPath();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3F0, &qword_1E4881110);
  v60 = v83;
  v61 = (v83 + *(v59 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA30, &qword_1E487AD80);
  sub_1E4877A7C();
  (*(v84 + 8))(v69, v85);
  *v61 = KeyPath;
  return (*(v78 + 32))(v60, v57, v79);
}

uint64_t sub_1E4818EDC@<X0>(int a1@<W0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v462 = a5;
  v463 = a4;
  v437 = a2;
  v457 = a1;
  v468 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v421 = &v375 - v12;
  v451 = sub_1E487893C();
  v450 = *(v451 - 8);
  MEMORY[0x1EEE9AC00](v451);
  v436 = &v375 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v435 = sub_1E48773BC();
  v434 = *(v435 - 8);
  MEMORY[0x1EEE9AC00](v435);
  v433 = &v375 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v449 = sub_1E487751C();
  v454 = *(v449 - 8);
  MEMORY[0x1EEE9AC00](v449);
  v448 = &v375 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v440 = sub_1E487753C();
  v439 = *(v440 - 8);
  v16 = MEMORY[0x1EEE9AC00](v440);
  v398 = &v375 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v399 = &v375 - v18;
  v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3F8, &unk_1E4881118);
  MEMORY[0x1EEE9AC00](v432);
  v20 = &v375 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v395 = &v375 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v394 = &v375 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v396 = &v375 - v26;
  v414 = sub_1E487757C();
  v413 = *(v414 - 8);
  v27 = MEMORY[0x1EEE9AC00](v414);
  v403 = &v375 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v409 = &v375 - v29;
  v466 = sub_1E487739C();
  v461 = *(v466 - 8);
  MEMORY[0x1EEE9AC00](v466);
  v430 = &v375 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFB0, &qword_1E487FBA8);
  v31 = MEMORY[0x1EEE9AC00](v465);
  v407 = &v375 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v406 = &v375 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v382 = &v375 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v384 = &v375 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v388 = &v375 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v381 = &v375 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v383 = &v375 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v387 = &v375 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v397 = &v375 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v402 = &v375 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v452 = &v375 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v419 = &v375 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v424 = &v375 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v375 - v57;
  v471 = sub_1E487740C();
  v469 = *(v471 - 1);
  MEMORY[0x1EEE9AC00](v471);
  v458 = &v375 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDD8, &qword_1E487F920);
  v61 = MEMORY[0x1EEE9AC00](v60 - 8);
  v401 = &v375 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v410 = &v375 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v400 = &v375 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v417 = &v375 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v376 = &v375 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v386 = &v375 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v378 = &v375 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v391 = &v375 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v380 = &v375 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v425 = &v375 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v375 = &v375 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v385 = &v375 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v377 = &v375 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v390 = &v375 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v379 = &v375 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v392 = &v375 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v389 = &v375 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v404 = &v375 - v96;
  v97 = MEMORY[0x1EEE9AC00](v95);
  v393 = &v375 - v98;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v405 = &v375 - v100;
  v101 = MEMORY[0x1EEE9AC00](v99);
  v415 = &v375 - v102;
  v103 = MEMORY[0x1EEE9AC00](v101);
  v422 = &v375 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v408 = &v375 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v418 = &v375 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v416 = &v375 - v110;
  v111 = MEMORY[0x1EEE9AC00](v109);
  v423 = &v375 - v112;
  v113 = MEMORY[0x1EEE9AC00](v111);
  v438 = &v375 - v114;
  v115 = MEMORY[0x1EEE9AC00](v113);
  v117 = &v375 - v116;
  MEMORY[0x1EEE9AC00](v115);
  v464 = &v375 - v118;
  v442 = sub_1E487785C();
  v119 = *(v442 - 8);
  MEMORY[0x1EEE9AC00](v442);
  v441 = &v375 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1E48777EC();
  v459 = *(v121 - 8);
  v122 = MEMORY[0x1EEE9AC00](v121);
  v443 = &v375 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v122);
  v460 = &v375 - v124;
  v125 = sub_1E487784C();
  v126 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v447 = &v375 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  v467 = a3;
  v470 = v20;
  if (!a7)
  {
    goto LABEL_6;
  }

  if (!a6 && v127 == 0xE000000000000000 || (v129 = v125, v130 = a6, v131 = v127, v132 = sub_1E48790EC(), v133 = v131, a6 = v130, v125 = v129, (v132 & 1) != 0))
  {

    a6 = 0;
LABEL_6:
    v134 = 0;
    goto LABEL_7;
  }

  v134 = v133;
LABEL_7:
  v135 = *(v126 + 104);
  v420 = *MEMORY[0x1E6993228];
  v428 = v125;
  v427 = v126 + 104;
  v426 = v135;
  v135(v447);
  v136 = *(v459 + 104);
  v429 = *MEMORY[0x1E6993208];
  v446 = v121;
  v445 = v459 + 104;
  v444 = v136;
  v136(v460);
  v137 = *MEMORY[0x1E6993248];
  v138 = *(v119 + 104);
  v412 = v119 + 104;
  v411 = v138;
  v138(v441, v137, v442);
  sub_1E487827C();
  sub_1E487827C();
  sub_1E48786EC();
  sub_1E487822C();
  v139 = [objc_opt_self() tertiaryLabelColor];
  sub_1E48785FC();

  v431 = a6;
  sub_1E48778AC();
  v140 = v458;
  sub_1E487741C();
  v141 = v464;
  sub_1E48773FC();
  (*(v469 + 8))(v140, v471);

  v469 = sub_1E481E288(MEMORY[0x1E69E7CC0]);
  v458 = v134;
  swift_bridgeObjectRetain_n();
  v453 = _AXSPrefersHorizontalTextLayout();
  sub_1E487738C();
  v142 = v461;
  v143 = *(v461 + 56);
  v144 = v466;
  v456 = v461 + 56;
  v455 = v143;
  v143(v117, 0, 1, v466);
  v145 = *(v465 + 48);
  sub_1E4773850(v141, v58, &qword_1ECF7CDD8, &qword_1E487F920);
  sub_1E4773850(v117, &v58[v145], &qword_1ECF7CDD8, &qword_1E487F920);
  v471 = *(v142 + 48);
  if (v471(v58, 1, v144) == 1)
  {
    sub_1E47738B8(v117, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v471(&v58[v145], 1, v144) == 1)
    {
      sub_1E47738B8(v58, &qword_1ECF7CDD8, &qword_1E487F920);
      v146 = v458;
      if (!v458)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

LABEL_13:
    sub_1E47738B8(v58, &qword_1ECF7CFB0, &qword_1E487FBA8);
    v148 = 0;
    v438 = 0;
    v146 = v458;
    goto LABEL_24;
  }

  v147 = v438;
  sub_1E4773850(v58, v438, &qword_1ECF7CDD8, &qword_1E487F920);
  if (v471(&v58[v145], 1, v144) == 1)
  {
    sub_1E47738B8(v117, &qword_1ECF7CDD8, &qword_1E487F920);
    (*(v461 + 8))(v147, v144);
    goto LABEL_13;
  }

  v149 = v461;
  v150 = v430;
  (*(v461 + 32))(v430, &v58[v145], v144);
  sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
  v151 = sub_1E4878AFC();
  v152 = *(v149 + 8);
  v152(v150, v144);
  sub_1E47738B8(v117, &qword_1ECF7CDD8, &qword_1E487F920);
  v152(v147, v144);
  sub_1E47738B8(v58, &qword_1ECF7CDD8, &qword_1E487F920);
  v148 = 0;
  if ((v151 & 1) == 0)
  {
    v438 = 0;
    v146 = v458;
    goto LABEL_24;
  }

  v438 = 0;
  v146 = v458;
  if (!v458)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((v431 != 0x6573656E696863 || v146 != 0xE700000000000000) && (sub_1E48790EC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v153 = v409;
  sub_1E487750C();
  if (!v431 && v146 == 0xE000000000000000 || (sub_1E48790EC() & 1) != 0)
  {
    (*(v413 + 8))(v153, v414);
LABEL_23:
    v148 = 0;
    v438 = 0;
    goto LABEL_24;
  }

  v224 = objc_opt_self();
  v225 = sub_1E4878B9C();
  v226 = sub_1E487756C();
  v227 = [v224 overlayCalendarForCalendarIdentifier:v225 timezone:v226];

  if (v227)
  {
    v228 = v394;
    sub_1E487749C();

    v229 = 0;
    v230 = v396;
    v231 = v395;
  }

  else
  {
    v229 = 1;
    v230 = v396;
    v231 = v395;
    v228 = v394;
  }

  v267 = v439;
  v268 = v440;
  (*(v439 + 56))(v228, v229, 1, v440);
  sub_1E47F2A10(v228, v230);
  v269 = sub_1E48772BC();
  sub_1E4773850(v230, v231, &qword_1ECF7CFA8, &qword_1E487FBA0);
  if ((*(v267 + 48))(v231, 1, v268) == 1)
  {
    v270 = 0;
  }

  else
  {
    v270 = sub_1E487748C();
    (*(v267 + 8))(v231, v268);
  }

  v271 = [objc_opt_self() monthDayStringForDate:v269 inCalendar:v270];

  v146 = v458;
  if (v271)
  {
    v148 = sub_1E4878BDC();
    v438 = v272;
  }

  else
  {
    v148 = 0;
    v438 = 0;
  }

  sub_1E47738B8(v230, &qword_1ECF7CFA8, &qword_1E487FBA0);
  (*(v413 + 8))(v153, v414);
LABEL_24:
  v409 = v148;
  if ((v457 & 1) == 0)
  {
    sub_1E48778CC();
    sub_1E487789C();
    sub_1E48778EC();
    sub_1E487827C();
    sub_1E487796C();
    sub_1E48778DC();
    sub_1E487782C();
    sub_1E487795C();
    sub_1E487793C();
  }

  v154 = v453;
  v155 = v453 != 0;
  v156 = v432[12];
  v157 = v432[16];
  v158 = v432[20];
  v159 = v470;
  sub_1E4773850(v464, v470, &qword_1ECF7CDD8, &qword_1E487F920);
  *(v159 + v156) = v457 & 1;
  *(v159 + v157) = v155;
  *(v159 + v158) = v146 != 0;
  v160 = v466;
  if (!v154)
  {
    goto LABEL_39;
  }

  v161 = v423;
  sub_1E487738C();
  v455(v161, 0, 1, v160);
  v162 = *(v465 + 48);
  v163 = v424;
  sub_1E4773850(v161, v424, &qword_1ECF7CDD8, &qword_1E487F920);
  sub_1E4773850(v470, v163 + v162, &qword_1ECF7CDD8, &qword_1E487F920);
  if (v471(v163, 1, v160) == 1)
  {
    sub_1E47738B8(v161, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v471((v163 + v162), 1, v160) == 1)
    {

      v164 = v163;
LABEL_42:
      sub_1E47738B8(v164, &qword_1ECF7CDD8, &qword_1E487F920);
      goto LABEL_64;
    }
  }

  else
  {
    v165 = v416;
    sub_1E4773850(v163, v416, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v471((v163 + v162), 1, v160) != 1)
    {
      v185 = v461;
      v186 = v430;
      (*(v461 + 32))(v430, v163 + v162, v160);
      sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
      v187 = sub_1E4878AFC();
      v188 = *(v185 + 8);
      v188(v186, v160);
      sub_1E47738B8(v161, &qword_1ECF7CDD8, &qword_1E487F920);
      v188(v165, v466);
      v160 = v466;
      sub_1E47738B8(v163, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v187)
      {
        goto LABEL_63;
      }

      goto LABEL_33;
    }

    sub_1E47738B8(v161, &qword_1ECF7CDD8, &qword_1E487F920);
    (*(v461 + 8))(v165, v160);
  }

  sub_1E47738B8(v163, &qword_1ECF7CFB0, &qword_1E487FBA8);
LABEL_33:
  v166 = v418;
  sub_1E487738C();
  v455(v166, 0, 1, v160);
  v167 = *(v465 + 48);
  v168 = v419;
  sub_1E4773850(v166, v419, &qword_1ECF7CDD8, &qword_1E487F920);
  sub_1E4773850(v470, v168 + v167, &qword_1ECF7CDD8, &qword_1E487F920);
  if (v471(v168, 1, v160) == 1)
  {
    sub_1E47738B8(v166, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v471((v168 + v167), 1, v160) == 1)
    {
      v146 = v458;

      v164 = v168;
      goto LABEL_42;
    }
  }

  else
  {
    v169 = v408;
    sub_1E4773850(v168, v408, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v471((v168 + v167), 1, v160) != 1)
    {
      v201 = v461;
      v202 = v168 + v167;
      v203 = v430;
      (*(v461 + 32))(v430, v202, v160);
      sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
      v204 = sub_1E4878AFC();
      v205 = *(v201 + 8);
      v205(v203, v466);
      sub_1E47738B8(v166, &qword_1ECF7CDD8, &qword_1E487F920);
      v205(v169, v466);
      v160 = v466;
      sub_1E47738B8(v168, &qword_1ECF7CDD8, &qword_1E487F920);
      v146 = v458;
      if (v204)
      {
        goto LABEL_63;
      }

      goto LABEL_39;
    }

    sub_1E47738B8(v166, &qword_1ECF7CDD8, &qword_1E487F920);
    (*(v461 + 8))(v169, v160);
  }

  sub_1E47738B8(v168, &qword_1ECF7CFB0, &qword_1E487FBA8);
LABEL_39:
  v170 = v422;
  sub_1E487738C();
  v455(v170, 0, 1, v160);
  v171 = *(v465 + 48);
  v172 = v452;
  sub_1E4773850(v170, v452, &qword_1ECF7CDD8, &qword_1E487F920);
  sub_1E4773850(v470, v172 + v171, &qword_1ECF7CDD8, &qword_1E487F920);
  if (v471(v172, 1, v160) == 1)
  {
    sub_1E47738B8(v170, &qword_1ECF7CDD8, &qword_1E487F920);
    v173 = v471((v452 + v171), 1, v160);
    v174 = v425;
    if (v173 == 1)
    {
      v146 = v458;

      v164 = v452;
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  v175 = v452;
  v176 = v415;
  sub_1E4773850(v452, v415, &qword_1ECF7CDD8, &qword_1E487F920);
  if (v471((v175 + v171), 1, v160) == 1)
  {
    sub_1E47738B8(v170, &qword_1ECF7CDD8, &qword_1E487F920);
    (*(v461 + 8))(v176, v160);
    v174 = v425;
LABEL_45:
    sub_1E47738B8(v452, &qword_1ECF7CFB0, &qword_1E487FBA8);
    v146 = v458;
    goto LABEL_46;
  }

  v189 = v461;
  v190 = v452;
  v191 = v452 + v171;
  v192 = v430;
  (*(v461 + 32))(v430, v191, v160);
  sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
  v193 = sub_1E4878AFC();
  v194 = *(v189 + 8);
  v194(v192, v466);
  sub_1E47738B8(v170, &qword_1ECF7CDD8, &qword_1E487F920);
  v194(v176, v466);
  v160 = v466;
  sub_1E47738B8(v190, &qword_1ECF7CDD8, &qword_1E487F920);
  v146 = v458;
  v174 = v425;
  if ((v193 & 1) == 0)
  {
LABEL_46:
    if (v453)
    {
      v177 = v160;
LABEL_48:
      swift_bridgeObjectRelease_n();

      goto LABEL_49;
    }

    if (v146)
    {

      v195 = v405;
      sub_1E487738C();
      v455(v195, 0, 1, v160);
      v196 = *(v465 + 48);
      v197 = v402;
      sub_1E4773850(v195, v402, &qword_1ECF7CDD8, &qword_1E487F920);
      v198 = v197;
      sub_1E4773850(v470, v197 + v196, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v471(v197, 1, v160) == 1)
      {
        sub_1E47738B8(v195, &qword_1ECF7CDD8, &qword_1E487F920);
        v199 = v471((v197 + v196), 1, v160);
        v200 = v404;
        if (v199 == 1)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v246 = v393;
        sub_1E4773850(v197, v393, &qword_1ECF7CDD8, &qword_1E487F920);
        if (v471((v197 + v196), 1, v160) != 1)
        {
          v261 = v461;
          v262 = v198 + v196;
          v263 = v430;
          (*(v461 + 32))(v430, v262, v160);
          sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
          v264 = v198;
          v265 = sub_1E4878AFC();
          v266 = *(v261 + 8);
          v266(v263, v466);
          sub_1E47738B8(v405, &qword_1ECF7CDD8, &qword_1E487F920);
          v266(v246, v466);
          v160 = v466;
          sub_1E47738B8(v264, &qword_1ECF7CDD8, &qword_1E487F920);
          v146 = v458;
          v200 = v404;
          if (v265)
          {
            goto LABEL_122;
          }

LABEL_97:
          sub_1E487738C();
          v455(v200, 0, 1, v160);
          v247 = *(v465 + 48);
          v248 = v397;
          sub_1E4773850(v200, v397, &qword_1ECF7CDD8, &qword_1E487F920);
          v198 = v248;
          sub_1E4773850(v470, v248 + v247, &qword_1ECF7CDD8, &qword_1E487F920);
          if (v471(v248, 1, v160) == 1)
          {
            sub_1E47738B8(v200, &qword_1ECF7CDD8, &qword_1E487F920);
            if (v471((v248 + v247), 1, v160) == 1)
            {
LABEL_99:
              v146 = v458;
              sub_1E47738B8(v198, &qword_1ECF7CDD8, &qword_1E487F920);
              goto LABEL_122;
            }

            swift_bridgeObjectRelease_n();
          }

          else
          {
            v255 = v389;
            sub_1E4773850(v248, v389, &qword_1ECF7CDD8, &qword_1E487F920);
            if (v471((v248 + v247), 1, v160) != 1)
            {
              v273 = v461;
              v274 = v198 + v247;
              v275 = v430;
              (*(v461 + 32))(v430, v274, v160);
              sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
              v276 = v198;
              v277 = sub_1E4878AFC();
              v278 = *(v273 + 8);
              v278(v275, v466);
              sub_1E47738B8(v404, &qword_1ECF7CDD8, &qword_1E487F920);
              v278(v255, v466);
              v177 = v466;
              sub_1E47738B8(v276, &qword_1ECF7CDD8, &qword_1E487F920);
              v146 = v458;
              if ((v277 & 1) == 0)
              {
                goto LABEL_48;
              }

LABEL_122:
              sub_1E47738B8(v470, &qword_1ECF7CDD8, &qword_1E487F920);
              v182 = v451;
              v183 = v450;
              v207 = v428;
              v206 = v453;
              v208 = v438;
              goto LABEL_65;
            }

            swift_bridgeObjectRelease_n();

            sub_1E47738B8(v404, &qword_1ECF7CDD8, &qword_1E487F920);
            (*(v461 + 8))(v255, v160);
          }

          v177 = v160;
          sub_1E47738B8(v248, &qword_1ECF7CFB0, &qword_1E487FBA8);
LABEL_49:
          v178 = v417;
          if (v457)
          {
LABEL_50:
            sub_1E487738C();
            v455(v178, 0, 1, v177);
            v179 = *(v465 + 48);
            v180 = v406;
            sub_1E4773850(v178, v406, &qword_1ECF7CDD8, &qword_1E487F920);
            v181 = v180;
            sub_1E4773850(v470, v180 + v179, &qword_1ECF7CDD8, &qword_1E487F920);
            if (v471(v180, 1, v177) == 1)
            {
              sub_1E47738B8(v178, &qword_1ECF7CDD8, &qword_1E487F920);
              if (v471((v180 + v179), 1, v177) == 1)
              {
                sub_1E47738B8(v180, &qword_1ECF7CDD8, &qword_1E487F920);
                v182 = v451;
                v183 = v450;
                v184 = v458;
LABEL_101:
                sub_1E48778BC();
                sub_1E48778CC();
LABEL_155:
                sub_1E48778EC();
                sub_1E487822C();
                sub_1E487796C();
                sub_1E487777C();
                sub_1E48778DC();
                sub_1E487782C();
                sub_1E487795C();
                sub_1E487793C();
                v292 = &qword_1ECF7CDD8;
                v293 = &qword_1E487F920;
LABEL_156:
                sub_1E47738B8(v470, v292, v293);
                if (!v184)
                {
                  goto LABEL_157;
                }

LABEL_71:

                v209 = *MEMORY[0x1E6993200];
                goto LABEL_72;
              }

              goto LABEL_151;
            }

            v216 = v400;
            sub_1E4773850(v180, v400, &qword_1ECF7CDD8, &qword_1E487F920);
            if (v471((v180 + v179), 1, v177) != 1)
            {
              v249 = v461;
              v250 = v180 + v179;
              v251 = v430;
              (*(v461 + 32))(v430, v250, v177);
              sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
              v252 = v180;
              v253 = sub_1E4878AFC();
              v254 = *(v249 + 8);
              v254(v251, v177);
              sub_1E47738B8(v417, &qword_1ECF7CDD8, &qword_1E487F920);
              v254(v216, v177);
              sub_1E47738B8(v252, &qword_1ECF7CDD8, &qword_1E487F920);
              v182 = v451;
              v183 = v450;
              v184 = v458;
              if (v253)
              {
                goto LABEL_101;
              }

LABEL_152:
              v292 = &qword_1ECF7D3F8;
              v293 = &unk_1E4881118;
              goto LABEL_156;
            }

            v217 = &v449;
            goto LABEL_150;
          }

LABEL_145:
          v289 = v410;
          sub_1E487738C();
          v455(v289, 0, 1, v177);
          v290 = *(v465 + 48);
          v291 = v407;
          sub_1E4773850(v289, v407, &qword_1ECF7CDD8, &qword_1E487F920);
          v181 = v291;
          sub_1E4773850(v470, v291 + v290, &qword_1ECF7CDD8, &qword_1E487F920);
          if (v471(v291, 1, v177) == 1)
          {
            sub_1E47738B8(v289, &qword_1ECF7CDD8, &qword_1E487F920);
            if (v471((v291 + v290), 1, v177) != 1)
            {
LABEL_151:
              v182 = v451;
              v183 = v450;
              v184 = v458;
              sub_1E47738B8(v181, &qword_1ECF7CFB0, &qword_1E487FBA8);
              goto LABEL_152;
            }

            sub_1E47738B8(v291, &qword_1ECF7CDD8, &qword_1E487F920);
            v182 = v451;
            v183 = v450;
            v184 = v458;
          }

          else
          {
            v216 = v401;
            sub_1E4773850(v291, v401, &qword_1ECF7CDD8, &qword_1E487F920);
            if (v471((v291 + v290), 1, v177) == 1)
            {
              v217 = &v442;
LABEL_150:
              sub_1E47738B8(*(v217 - 32), &qword_1ECF7CDD8, &qword_1E487F920);
              (*(v461 + 8))(v216, v177);
              goto LABEL_151;
            }

            v294 = v461;
            v295 = v291 + v290;
            v296 = v430;
            (*(v461 + 32))(v430, v295, v177);
            sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
            v297 = sub_1E4878AFC();
            v298 = *(v294 + 8);
            v298(v296, v177);
            sub_1E47738B8(v410, &qword_1ECF7CDD8, &qword_1E487F920);
            v298(v216, v177);
            sub_1E47738B8(v181, &qword_1ECF7CDD8, &qword_1E487F920);
            v182 = v451;
            v183 = v450;
            v184 = v458;
            if ((v297 & 1) == 0)
            {
              goto LABEL_152;
            }
          }

          sub_1E48778BC();
          sub_1E487794C();
          sub_1E48778CC();
          sub_1E487789C();
          goto LABEL_155;
        }

        sub_1E47738B8(v405, &qword_1ECF7CDD8, &qword_1E487F920);
        (*(v461 + 8))(v246, v160);
        v200 = v404;
      }

      sub_1E47738B8(v197, &qword_1ECF7CFB0, &qword_1E487FBA8);
      goto LABEL_97;
    }

    if (v457)
    {
      v218 = v392;
      sub_1E487738C();
      v455(v218, 0, 1, v160);
      v219 = *(v465 + 48);
      v220 = v387;
      sub_1E4773850(v218, v387, &qword_1ECF7CDD8, &qword_1E487F920);
      v221 = v220;
      sub_1E4773850(v470, v220 + v219, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v471(v220, 1, v160) == 1)
      {
        sub_1E47738B8(v218, &qword_1ECF7CDD8, &qword_1E487F920);
        v222 = v471((v220 + v219), 1, v160);
        v223 = v390;
        if (v222 == 1)
        {
          v177 = v160;
LABEL_128:
          sub_1E47738B8(v221, &qword_1ECF7CDD8, &qword_1E487F920);
          goto LABEL_186;
        }
      }

      else
      {
        v279 = v379;
        sub_1E4773850(v220, v379, &qword_1ECF7CDD8, &qword_1E487F920);
        if (v471((v220 + v219), 1, v160) != 1)
        {
          v334 = v461;
          v335 = v221 + v219;
          v336 = v430;
          (*(v461 + 32))(v430, v335, v160);
          sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
          v337 = v221;
          v338 = sub_1E4878AFC();
          v339 = *(v334 + 8);
          v339(v336, v466);
          sub_1E47738B8(v392, &qword_1ECF7CDD8, &qword_1E487F920);
          v339(v279, v466);
          v177 = v466;
          sub_1E47738B8(v337, &qword_1ECF7CDD8, &qword_1E487F920);
          v223 = v390;
          if (v338)
          {
            goto LABEL_186;
          }

          goto LABEL_126;
        }

        sub_1E47738B8(v392, &qword_1ECF7CDD8, &qword_1E487F920);
        (*(v461 + 8))(v279, v160);
        v223 = v390;
      }

      v177 = v160;
      sub_1E47738B8(v220, &qword_1ECF7CFB0, &qword_1E487FBA8);
LABEL_126:
      sub_1E487738C();
      v455(v223, 0, 1, v177);
      v280 = *(v465 + 48);
      v281 = v383;
      sub_1E4773850(v223, v383, &qword_1ECF7CDD8, &qword_1E487F920);
      v221 = v281;
      sub_1E4773850(v470, v281 + v280, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v471(v281, 1, v177) == 1)
      {
        sub_1E47738B8(v223, &qword_1ECF7CDD8, &qword_1E487F920);
        if (v471((v281 + v280), 1, v177) == 1)
        {
          goto LABEL_128;
        }

LABEL_141:
        sub_1E47738B8(v281, &qword_1ECF7CFB0, &qword_1E487FBA8);
        v178 = v417;
        goto LABEL_50;
      }

      v287 = v377;
      sub_1E4773850(v281, v377, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v471((v281 + v280), 1, v177) == 1)
      {
        sub_1E47738B8(v390, &qword_1ECF7CDD8, &qword_1E487F920);
        (*(v461 + 8))(v287, v177);
        goto LABEL_141;
      }

      v346 = v461;
      v347 = v221 + v280;
      v348 = v430;
      (*(v461 + 32))(v430, v347, v177);
      sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
      v349 = v221;
      v350 = sub_1E4878AFC();
      v351 = *(v346 + 8);
      v351(v348, v466);
      sub_1E47738B8(v390, &qword_1ECF7CDD8, &qword_1E487F920);
      v351(v287, v466);
      v177 = v466;
      sub_1E47738B8(v349, &qword_1ECF7CDD8, &qword_1E487F920);
      v178 = v417;
      if ((v350 & 1) == 0)
      {
        goto LABEL_50;
      }

LABEL_186:
      sub_1E47738B8(v470, &qword_1ECF7CDD8, &qword_1E487F920);
      v426(v447, *MEMORY[0x1E6993238], v428);
      sub_1E487787C();
      v444(v460, *MEMORY[0x1E6993210], v446);
      sub_1E487781C();
      sub_1E487791C();
      sub_1E48778CC();
      sub_1E487789C();
      sub_1E48777FC();
      sub_1E48778EC();
      sub_1E487827C();
      sub_1E487796C();
      sub_1E487777C();
      sub_1E487782C();
      sub_1E487827C();
      sub_1E487793C();
      sub_1E487783C();
      v352 = v385;
      sub_1E487738C();
      v353 = v177;
      v455(v352, 0, 1, v177);
      v354 = *(v465 + 48);
      v355 = v381;
      sub_1E4773850(v352, v381, &qword_1ECF7CDD8, &qword_1E487F920);
      sub_1E4773850(v464, v355 + v354, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v471(v355, 1, v177) == 1)
      {
        sub_1E47738B8(v352, &qword_1ECF7CDD8, &qword_1E487F920);
        if (v471((v355 + v354), 1, v177) == 1)
        {

          sub_1E47738B8(v355, &qword_1ECF7CDD8, &qword_1E487F920);
LABEL_202:
          v182 = v451;
          v183 = v450;
          v469 = sub_1E481E288(&unk_1F5E7B288);
          goto LABEL_157;
        }
      }

      else
      {
        v356 = v375;
        sub_1E4773850(v355, v375, &qword_1ECF7CDD8, &qword_1E487F920);
        if (v471((v355 + v354), 1, v353) != 1)
        {
          v367 = v461;
          v368 = v430;
          (*(v461 + 32))(v430, v355 + v354, v353);
          sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
          v369 = sub_1E4878AFC();
          v370 = *(v367 + 8);
          v370(v368, v353);
          sub_1E47738B8(v385, &qword_1ECF7CDD8, &qword_1E487F920);
          v370(v356, v353);
          sub_1E47738B8(v355, &qword_1ECF7CDD8, &qword_1E487F920);
          if (v369)
          {

            goto LABEL_202;
          }

LABEL_199:
          v182 = v451;
          v183 = v450;
          goto LABEL_157;
        }

        sub_1E47738B8(v385, &qword_1ECF7CDD8, &qword_1E487F920);
        (*(v461 + 8))(v356, v353);
      }

LABEL_198:
      sub_1E47738B8(v355, &qword_1ECF7CFB0, &qword_1E487FBA8);
      goto LABEL_199;
    }

    sub_1E487738C();
    v455(v174, 0, 1, v160);
    v256 = *(v465 + 48);
    v257 = v388;
    sub_1E4773850(v174, v388, &qword_1ECF7CDD8, &qword_1E487F920);
    v258 = v257;
    sub_1E4773850(v470, v257 + v256, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v471(v257, 1, v160) == 1)
    {
      sub_1E47738B8(v174, &qword_1ECF7CDD8, &qword_1E487F920);
      v259 = v471((v257 + v256), 1, v160);
      v260 = v391;
      if (v259 == 1)
      {
        v177 = v160;
LABEL_134:
        sub_1E47738B8(v258, &qword_1ECF7CDD8, &qword_1E487F920);
        goto LABEL_193;
      }
    }

    else
    {
      v282 = v380;
      sub_1E4773850(v257, v380, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v471((v257 + v256), 1, v160) != 1)
      {
        v340 = v461;
        v341 = v258 + v256;
        v342 = v430;
        (*(v461 + 32))(v430, v341, v160);
        sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
        v343 = v258;
        v344 = sub_1E4878AFC();
        v345 = *(v340 + 8);
        v345(v342, v466);
        sub_1E47738B8(v425, &qword_1ECF7CDD8, &qword_1E487F920);
        v345(v282, v466);
        v177 = v466;
        sub_1E47738B8(v343, &qword_1ECF7CDD8, &qword_1E487F920);
        v260 = v391;
        if (v344)
        {
          goto LABEL_193;
        }

        goto LABEL_132;
      }

      sub_1E47738B8(v425, &qword_1ECF7CDD8, &qword_1E487F920);
      (*(v461 + 8))(v282, v160);
      v260 = v391;
    }

    v177 = v160;
    sub_1E47738B8(v257, &qword_1ECF7CFB0, &qword_1E487FBA8);
LABEL_132:
    sub_1E487738C();
    v455(v260, 0, 1, v177);
    v283 = *(v465 + 48);
    v284 = v384;
    sub_1E4773850(v260, v384, &qword_1ECF7CDD8, &qword_1E487F920);
    v258 = v284;
    sub_1E4773850(v470, v284 + v283, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v471(v284, 1, v177) == 1)
    {
      sub_1E47738B8(v260, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v471((v284 + v283), 1, v177) == 1)
      {
        goto LABEL_134;
      }

LABEL_144:
      sub_1E47738B8(v284, &qword_1ECF7CFB0, &qword_1E487FBA8);
      goto LABEL_145;
    }

    v288 = v378;
    sub_1E4773850(v284, v378, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v471((v284 + v283), 1, v177) == 1)
    {
      sub_1E47738B8(v391, &qword_1ECF7CDD8, &qword_1E487F920);
      (*(v461 + 8))(v288, v177);
      goto LABEL_144;
    }

    v357 = v461;
    v358 = v258 + v283;
    v359 = v430;
    (*(v461 + 32))(v430, v358, v177);
    sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
    v360 = v258;
    v361 = sub_1E4878AFC();
    v362 = *(v357 + 8);
    v362(v359, v466);
    sub_1E47738B8(v391, &qword_1ECF7CDD8, &qword_1E487F920);
    v362(v288, v466);
    v177 = v466;
    sub_1E47738B8(v360, &qword_1ECF7CDD8, &qword_1E487F920);
    if ((v361 & 1) == 0)
    {
      goto LABEL_145;
    }

LABEL_193:
    sub_1E47738B8(v470, &qword_1ECF7CDD8, &qword_1E487F920);
    v426(v447, *MEMORY[0x1E6993238], v428);
    sub_1E487787C();
    v444(v460, *MEMORY[0x1E6993210], v446);
    sub_1E487781C();
    sub_1E487791C();
    sub_1E48778CC();
    sub_1E487789C();
    sub_1E48777FC();
    sub_1E48778EC();
    sub_1E487827C();
    sub_1E487796C();
    sub_1E487777C();
    sub_1E487782C();
    sub_1E487827C();
    sub_1E487793C();
    sub_1E487783C();
    v363 = v386;
    sub_1E487738C();
    v364 = v177;
    v455(v363, 0, 1, v177);
    v365 = *(v465 + 48);
    v355 = v382;
    sub_1E4773850(v363, v382, &qword_1ECF7CDD8, &qword_1E487F920);
    sub_1E4773850(v464, v355 + v365, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v471(v355, 1, v177) == 1)
    {
      sub_1E47738B8(v363, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v471((v355 + v365), 1, v177) != 1)
      {
        goto LABEL_198;
      }

      sub_1E47738B8(v355, &qword_1ECF7CDD8, &qword_1E487F920);
    }

    else
    {
      v366 = v376;
      sub_1E4773850(v355, v376, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v471((v355 + v365), 1, v364) == 1)
      {
        sub_1E47738B8(v386, &qword_1ECF7CDD8, &qword_1E487F920);
        (*(v461 + 8))(v366, v364);
        goto LABEL_198;
      }

      v371 = v461;
      v372 = v430;
      (*(v461 + 32))(v430, v355 + v365, v364);
      sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
      v373 = sub_1E4878AFC();
      v374 = *(v371 + 8);
      v374(v372, v364);
      sub_1E47738B8(v386, &qword_1ECF7CDD8, &qword_1E487F920);
      v374(v366, v364);
      sub_1E47738B8(v355, &qword_1ECF7CDD8, &qword_1E487F920);
      if ((v373 & 1) == 0)
      {
        goto LABEL_199;
      }
    }

    v182 = v451;
    v183 = v450;
    v469 = sub_1E481E288(&unk_1F5E7B2C8);
    goto LABEL_157;
  }

LABEL_63:

LABEL_64:
  v206 = v453;
  sub_1E47738B8(v470, &qword_1ECF7CDD8, &qword_1E487F920);
  v182 = v451;
  v183 = v450;
  v207 = v428;
  v208 = v438;
  if (!v146)
  {
    v426(v447, *MEMORY[0x1E6993230], v428);
    sub_1E487787C();
    sub_1E487777C();
    if (!v208)
    {
      goto LABEL_70;
    }

    goto LABEL_68;
  }

LABEL_65:

  v426(v447, v420, v207);
  sub_1E487787C();
  sub_1E48778EC();
  sub_1E487782C();
  sub_1E487822C();
  sub_1E487793C();
  sub_1E487822C();
  sub_1E487796C();
  if (!v208)
  {
LABEL_70:

    if (!v146)
    {
      goto LABEL_157;
    }

    goto LABEL_71;
  }

LABEL_68:
  if (v206)
  {

    goto LABEL_70;
  }

  v209 = *MEMORY[0x1E6993200];
  v444(v460, v209, v446);
  sub_1E487781C();
  sub_1E487791C();
  sub_1E48778FC();
  sub_1E48777BC();
  sub_1E48777DC();
  sub_1E48778CC();
  sub_1E487789C();
  sub_1E48778BC();
  sub_1E487794C();
  sub_1E48786EC();
  sub_1E487775C();
  sub_1E487824C();
  sub_1E487786C();
  v215 = sub_1E4878C1C();
  if (v215 == 4 || v215 == 5)
  {
    sub_1E487778C();
    sub_1E48777AC();
  }

  if (!v146)
  {

    goto LABEL_157;
  }

  v232 = objc_opt_self();
  v233 = sub_1E4878B9C();

  v234 = v403;
  sub_1E487750C();
  v235 = sub_1E487756C();
  (*(v413 + 8))(v234, v414);
  v236 = [v232 overlayCalendarForCalendarIdentifier:v233 timezone:v235];

  if (v236)
  {
    v237 = v398;
    sub_1E487749C();

    v238 = v399;
    (*(v439 + 32))(v399, v237, v440);
    v239 = v454;
    v240 = v448;
    v241 = v449;
    (*(v454 + 104))(v448, *MEMORY[0x1E6969A48], v449);
    v242 = sub_1E487752C();
    (*(v239 + 8))(v240, v241);
    if (v242 % 10 == 1)
    {
      v243 = sub_1E4878C1C();

      v182 = v451;
      if (v243 == 5)
      {
        v285 = sub_1E487779C();
        *v286 = *v286 + 0.3;
        v285(v472, 0);
        goto LABEL_136;
      }

      if (v243 == 4)
      {
        v244 = sub_1E487779C();
        *v245 = *v245 + 0.4;
        v244(v472, 0);
LABEL_136:
        sub_1E48777DC();
      }
    }

    else
    {

      v182 = v451;
    }

    (*(v439 + 8))(v238, v440);

    goto LABEL_138;
  }

  v182 = v451;
LABEL_138:
  v183 = v450;
LABEL_72:
  v210 = v460;
  sub_1E487780C();
  v211 = v443;
  v212 = v446;
  v444(v443, v209, v446);
  sub_1E481E5E4(&qword_1EE2B4630, MEMORY[0x1E6993218], MEMORY[0x1E6993220]);
  v213 = sub_1E4878AFC();
  v214 = *(v459 + 8);
  v214(v211, v212);
  v214(v210, v212);
  if ((v213 & 1) == 0)
  {
    v411(v441, *MEMORY[0x1E6993240], v442);
    sub_1E487788C();
    sub_1E48778BC();
    sub_1E487794C();
    sub_1E487792C();
    sub_1E487822C();
    sub_1E487793C();
    sub_1E487822C();
    sub_1E487796C();
    sub_1E48778EC();
    sub_1E487782C();
    sub_1E487789C();
  }

LABEL_157:
  v299 = v433;
  sub_1E48773CC();
  v300 = sub_1E48773AC();
  v302 = v301;
  (*(v434 + 8))(v299, v435);
  if (v300 == 1853120876 && v302 == 0xE400000000000000)
  {
  }

  else
  {
    v303 = sub_1E48790EC();

    if ((v303 & 1) == 0)
    {
      v305 = *(v454 + 104);
      goto LABEL_171;
    }
  }

  v304 = v454;
  v305 = *(v454 + 104);
  v306 = v448;
  v307 = v449;
  v305(v448, *MEMORY[0x1E6969A48], v449);
  v308 = sub_1E487752C();
  (*(v304 + 8))(v306, v307);
  v309 = sub_1E481E288(&unk_1F5E7B308);
  v310 = 0.0;
  if (*(v309 + 16))
  {
    v311 = v469;
    v312 = sub_1E481DD30(v308);
    v313 = v446;
    if (v314)
    {
      v310 = *(*(v309 + 56) + 8 * v312);
    }
  }

  else
  {
    v311 = v469;
    v313 = v446;
  }

  v315 = sub_1E487790C();
  *v316 = v310 + *v316;
  v315(v472, 0);
  v317 = v460;
  sub_1E487780C();
  v318 = v443;
  v444(v443, v429, v313);
  sub_1E481E5E4(&qword_1EE2B4630, MEMORY[0x1E6993218], MEMORY[0x1E6993220]);
  v319 = sub_1E4878AFC();
  v320 = *(v459 + 8);
  v320(v318, v313);
  v320(v317, v313);
  v469 = v311;
  if (v319)
  {
    v182 = v451;
    v183 = v450;
  }

  else
  {
    v182 = v451;
    v183 = v450;
    if (v308 == 1)
    {
      sub_1E48777BC();
    }
  }

LABEL_171:
  v321 = v448;
  v322 = v449;
  v305(v448, *MEMORY[0x1E6969AB0], v449);
  v323 = sub_1E487752C();
  (*(v454 + 8))(v321, v322);
  if (*(v469 + 16) && (sub_1E481DD30(v323), (v324 & 1) != 0))
  {

    v325 = v437;
  }

  else
  {

    sub_1E48777CC();
    v325 = v437;
    if (v326 != 0.0)
    {
      sub_1E48777CC();
    }
  }

  sub_1E48777DC();
  v327 = v436;
  sub_1E487892C();
  v328 = sub_1E48788FC();
  v329 = *(v183 + 8);
  v329(v327, v182);
  if (v328)
  {
    v330 = v421;
    sub_1E48774EC();
    MEMORY[0x1E6918080](v330);
    sub_1E47738B8(v330, &qword_1ECF7BE58, &unk_1E487DDB0);
  }

  else
  {
    sub_1E48786EC();
  }

  sub_1E487776C();
  v331 = sub_1E487732C();
  (*(*(v331 - 8) + 8))(v462, v331);
  v332 = sub_1E487744C();
  (*(*(v332 - 8) + 8))(v463, v332);
  (*(v439 + 8))(v467, v440);
  v329(v325, v182);
  return sub_1E47738B8(v464, &qword_1ECF7CDD8, &qword_1E487F920);
}

uint64_t sub_1E481D818@<X0>(_WORD *a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = 256;
  return result;
}

void sub_1E481D918(uint64_t a1)
{
  type metadata accessor for CalendarDateTimelineEntry(319);
  if (v1 <= 0x3F)
  {
    sub_1E481DAA0(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
    if (v2 <= 0x3F)
    {
      sub_1E481DAA0(319, &qword_1EE2B16C0, MEMORY[0x1E6969770]);
      if (v3 <= 0x3F)
      {
        sub_1E481DAA0(319, &qword_1EE2B1678, MEMORY[0x1E697F6A8]);
        if (v4 <= 0x3F)
        {
          sub_1E478305C();
          if (v5 <= 0x3F)
          {
            sub_1E481DAA0(319, &qword_1EE2B1698, MEMORY[0x1E6985780]);
            if (v6 <= 0x3F)
            {
              sub_1E481DAA0(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
              if (v7 <= 0x3F)
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

void sub_1E481DAA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E481DB10()
{
  result = qword_1EE2B1550;
  if (!qword_1EE2B1550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D3E0, &qword_1E48810C8);
    sub_1E487798C();
    sub_1E481E5E4(&qword_1EE2B4628, MEMORY[0x1E6993258], MEMORY[0x1E6993250]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1550);
  }

  return result;
}

uint64_t sub_1E481DBFC(uint64_t a1)
{
  v2 = sub_1E487744C();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E4877E7C();
}

unint64_t sub_1E481DCC4(uint64_t a1)
{
  sub_1E487914C();
  sub_1E487820C();
  v2 = sub_1E487917C();

  return sub_1E481DEA0(a1, v2);
}

unint64_t sub_1E481DD30(uint64_t a1)
{
  v2 = sub_1E487913C();

  return sub_1E481DF58(a1, v2);
}

unint64_t sub_1E481DD74(uint64_t a1)
{
  sub_1E487732C();
  sub_1E481E5E4(&qword_1EE2B5A08, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  v2 = sub_1E4878A9C();

  return sub_1E481DFC4(a1, v2);
}

unint64_t sub_1E481DE0C(uint64_t a1)
{
  sub_1E4878BDC();
  sub_1E487914C();
  sub_1E4878C0C();
  v2 = sub_1E487917C();

  return sub_1E481E184(a1, v2);
}

unint64_t sub_1E481DEA0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {

      v6 = sub_1E48781DC();

      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1E481DF58(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E481DFC4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1E487732C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1E481E5E4(&qword_1EE2B59F8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v15 = sub_1E4878AFC();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1E481E184(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1E4878BDC();
      v8 = v7;
      if (v6 == sub_1E4878BDC() && v8 == v9)
      {
        break;
      }

      v11 = sub_1E48790EC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1E481E288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D400, &qword_1E4881128);
    v3 = sub_1E487908C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1E481DD30(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E481E368()
{
  result = qword_1EE2B1528;
  if (!qword_1EE2B1528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D3F0, &qword_1E4881110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D3E0, &qword_1E48810C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE98, &qword_1E487C870);
    sub_1E481DB10();
    sub_1E4773680(&qword_1EE2B16D0, &qword_1ECF7BE98, &qword_1E487C870, MEMORY[0x1E697DB70]);
    swift_getOpaqueTypeConformance2();
    sub_1E4773680(&qword_1EE2B5A58, &qword_1ECF7BA30, &qword_1E487AD80, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1528);
  }

  return result;
}

unint64_t sub_1E481E4BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D410, &qword_1E4881220);
    v3 = sub_1E487908C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E4773850(v4, &v11, &qword_1ECF7D418, &qword_1E4881228);
      v5 = v11;
      result = sub_1E481DE0C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1E479B278(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E481E5E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E481E62C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1E481E674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1E481E70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v77) = a5;
  v78 = a2;
  v79 = a4;
  v69 = a3;
  v6 = sub_1E487894C();
  v71 = *(v6 - 8);
  v72 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1E4878A4C();
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E48789CC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E487753C();
  v82 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E487732C();
  v84 = *(v16 - 8);
  v85 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v73 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v67 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v67 - v22;
  v24 = [objc_opt_self() shared];
  v25 = [v24 stopTimeDemoModeActive];

  result = [objc_opt_self() CalSimulatedDateForNow];
  if (result)
  {
    v27 = result;
    sub_1E48772FC();

    v77 = v15;
    sub_1E4877A7C();
    sub_1E48789AC();
    v75 = v25;
    if (v25)
    {
      v28 = a1;
      v29 = v21;
      sub_1E48789BC();
      (*(v10 + 8))(v28, v9);
      (*(v10 + 32))(v28, v12, v9);
      v30 = 1;
    }

    else
    {
      v29 = v21;
      v30 = 3;
    }

    v32 = v84;
    v31 = v85;
    v33 = v83;
    v34 = v80;
    v35 = v81;
    v74 = v30;
    if (qword_1EE2B22D0 != -1)
    {
      swift_once();
    }

    v36 = sub_1E4877ADC();
    __swift_project_value_buffer(v36, qword_1ECF7EA98);
    v37 = *(v32 + 16);
    v38 = v29;
    v81 = v23;
    v37(v29, v23, v31);
    (*(v35 + 16))(v34, v78, v33);
    v39 = v79;

    v40 = v39;
    v41 = sub_1E4877ABC();
    v42 = sub_1E4878DEC();

    LODWORD(v78) = v42;
    v43 = os_log_type_enabled(v41, v42);
    v76 = v13;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v86[0] = v68;
      *v44 = 136446978;
      *(v44 + 4) = sub_1E47A0DEC(v69, v40, v86);
      *(v44 + 12) = 2082;
      sub_1E48203DC(&qword_1EE2B59F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v45 = sub_1E48790CC();
      v47 = v46;
      v48 = *(v32 + 8);
      v48(v38, v85);
      v49 = sub_1E47A0DEC(v45, v47, v86);

      *(v44 + 14) = v49;
      *(v44 + 22) = 2048;
      v50 = v74;
      *(v44 + 24) = v74;
      *(v44 + 32) = 2082;
      v51 = v34;
      v52 = v70;
      sub_1E4878A3C();
      sub_1E48203DC(&qword_1EE2B4700, MEMORY[0x1E6985840], MEMORY[0x1E6985858]);
      v53 = v72;
      v54 = sub_1E48790CC();
      v56 = v55;
      (*(v71 + 8))(v52, v53);
      (*(v35 + 8))(v51, v83);
      v57 = sub_1E47A0DEC(v54, v56, v86);

      *(v44 + 34) = v57;
      _os_log_impl(&dword_1E475C000, v41, v78, "Timeline entries requested for %{public}s with start date: %{public}s, limit: %ld, family: %{public}s", v44, 0x2Au);
      v58 = v68;
      swift_arrayDestroy();
      v31 = v85;
      MEMORY[0x1E6919FE0](v58, -1, -1);
      MEMORY[0x1E6919FE0](v44, -1, -1);

      v59 = v82;
    }

    else
    {

      (*(v35 + 8))(v34, v33);
      v48 = *(v32 + 8);
      v48(v38, v31);
      v59 = v82;
      v50 = v74;
    }

    v60 = v81;
    v61 = v50;
    v62 = v77;
    v63 = sub_1E47E5784(v81, v61, v77);
    if (v75)
    {
      v64 = v73;
      v65 = sub_1E487731C();
      MEMORY[0x1EEE9AC00](v65);
      *(&v67 - 2) = v64;
      v66 = sub_1E4856878(sub_1E48203BC, (&v67 - 4), v63);

      (*(v59 + 8))(v62, v76);
      v48(v60, v31);
      v48(v64, v31);
      return v66;
    }

    else
    {
      (*(v59 + 8))(v62, v76);
      v48(v60, v31);
    }

    return v63;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E481EF24()
{
  v0 = sub_1E4877ADC();
  __swift_allocate_value_buffer(v0, qword_1ECF7EA98);
  v1 = __swift_project_value_buffer(v0, qword_1ECF7EA98);
  if (qword_1ECF7B640 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ECF7EA30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1E481EFEC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E487732C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = [objc_opt_self() shared];
  v10 = [v9 stopTimeDemoModeActive];

  result = [objc_opt_self() CalSimulatedDateForNow];
  if (result)
  {
    v12 = result;
    sub_1E48772FC();

    sub_1E487731C();
    if (v10)
    {
      v13 = v8;
    }

    else
    {
      v13 = v6;
    }

    if (!v10)
    {
      v6 = v8;
    }

    (*(v3 + 8))(v13, v2);
    return (*(v3 + 32))(a1, v6, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E481F178(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v83 = a5;
  v78 = a2;
  v79 = a4;
  v77 = a3;
  v80 = a1;
  v74 = type metadata accessor for CalendarDateTimelineEntry(0);
  v5 = MEMORY[0x1EEE9AC00](v74);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v66 - v8;
  v10 = sub_1E487894C();
  v69 = *(v10 - 8);
  v70 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4878A4C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E487732C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v73 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v66 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v66 - v23;
  v81 = objc_opt_self();
  result = [v81 CalSimulatedDateForNow];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v26 = result;
  v75 = v7;
  v76 = v9;
  sub_1E48772FC();

  if (qword_1EE2B22D0 != -1)
  {
    swift_once();
  }

  v27 = sub_1E4877ADC();
  v28 = __swift_project_value_buffer(v27, qword_1ECF7EA98);
  v29 = *(v17 + 16);
  v72 = v24;
  v29(v22, v24, v16);
  v30 = v12;
  (*(v13 + 16))(v15, v80, v12);
  v31 = v83;

  v80 = v28;
  v32 = sub_1E4877ABC();
  v33 = sub_1E4878DEC();

  v34 = os_log_type_enabled(v32, v33);
  v82 = v17;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v66 = v30;
    v36 = v35;
    v67 = swift_slowAlloc();
    v84[0] = v67;
    *v36 = 136446722;
    *(v36 + 4) = sub_1E47A0DEC(v79, v31, v84);
    *(v36 + 12) = 2082;
    sub_1E48203DC(&qword_1EE2B59F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v37 = sub_1E48790CC();
    v39 = v38;
    v71 = *(v17 + 8);
    v71(v22, v16);
    v40 = sub_1E47A0DEC(v37, v39, v84);

    *(v36 + 14) = v40;
    *(v36 + 22) = 2082;
    v41 = v68;
    sub_1E4878A3C();
    sub_1E48203DC(&qword_1EE2B4700, MEMORY[0x1E6985840], MEMORY[0x1E6985858]);
    v42 = v70;
    v43 = sub_1E48790CC();
    v45 = v44;
    (*(v69 + 8))(v41, v42);
    (*(v13 + 8))(v15, v66);
    v46 = sub_1E47A0DEC(v43, v45, v84);

    *(v36 + 24) = v46;
    _os_log_impl(&dword_1E475C000, v32, v33, "Snapshot entry requested for %{public}s with start date: %{public}s, family: %{public}s", v36, 0x20u);
    v47 = v67;
    swift_arrayDestroy();
    MEMORY[0x1E6919FE0](v47, -1, -1);
    MEMORY[0x1E6919FE0](v36, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v15, v30);
    v71 = *(v17 + 8);
    v71(v22, v16);
  }

  v48 = v16;
  v50 = v75;
  v49 = v76;
  result = [v81 CalSimulatedDateForNow];
  if (!result)
  {
    goto LABEL_13;
  }

  v51 = result;
  v52 = v73;
  sub_1E48772FC();

  sub_1E481EFEC(v49);
  v53 = v74;
  v54 = *(v74 + 24);
  v55 = sub_1E487753C();
  (*(*(v55 - 8) + 56))(v49 + v54, 1, 1, v55);
  (*(v82 + 32))(v49 + *(v53 + 20), v52, v16);
  sub_1E479D35C(v49, v50);
  v56 = v83;

  v57 = sub_1E4877ABC();
  v58 = sub_1E4878DEC();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v84[0] = v60;
    *v59 = 136446466;
    *(v59 + 4) = sub_1E47A0DEC(v79, v56, v84);
    *(v59 + 12) = 2082;
    v61 = sub_1E47F86AC();
    v62 = v48;
    v64 = v63;
    sub_1E4820424(v50);
    v65 = sub_1E47A0DEC(v61, v64, v84);
    v48 = v62;

    *(v59 + 14) = v65;
    _os_log_impl(&dword_1E475C000, v57, v58, "Calling current entry completion for %{public}s with entry: %{public}s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E6919FE0](v60, -1, -1);
    MEMORY[0x1E6919FE0](v59, -1, -1);
  }

  else
  {

    sub_1E4820424(v50);
  }

  v78(v49);
  sub_1E4820424(v49);
  return (v71)(v72, v48);
}

uint64_t sub_1E481F948(uint64_t a1, void (*a2)(char *), uint64_t a3, char *a4, unint64_t a5, int a6)
{
  v66 = a3;
  v64 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D420, &qword_1E48812E8);
  v62 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D428, &unk_1E48812F0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v63 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v58 = &v52 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v52 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v52 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v52 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v52 - v26;
  v28 = &v52 + *(v25 + 48) - v26;
  v60 = a4;
  *(&v52 - v26) = sub_1E481E70C(v28, a1, a4, a5, a6);
  if (qword_1EE2B22D0 != -1)
  {
    swift_once();
  }

  v29 = sub_1E4877ADC();
  __swift_project_value_buffer(v29, qword_1ECF7EA98);
  sub_1E48202E4(v27, v24);
  sub_1E48202E4(v27, v21);

  v30 = sub_1E4877ABC();
  v31 = sub_1E4878DEC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v55 = v21;
    v56 = v31;
    v33 = v32;
    v57 = swift_slowAlloc();
    v67 = v57;
    *v33 = 136446722;
    *(v33 + 4) = sub_1E47A0DEC(v60, a5, &v67);
    *(v33 + 12) = 2048;
    sub_1E48202E4(v24, v18);
    v34 = *v18;
    v59 = v11;
    v60 = v18;
    v35 = *(v11 + 48);
    v36 = *(v34 + 16);

    v37 = sub_1E48789CC();
    v38 = *(v37 - 8);
    v39 = *(v38 + 8);
    v54 = v38 + 8;
    v39(&v60[v35], v37);
    sub_1E4820354(v24);
    *(v33 + 14) = v36;
    *(v33 + 22) = 2082;
    v40 = v21;
    v41 = v58;
    sub_1E48202E4(v40, v58);
    v53 = *(v59 + 48);
    type metadata accessor for CalendarDateTimelineEntry(0);
    v39((v41 + v53), v37);
    v11 = v59;
    v42 = sub_1E4878E9C();
    v44 = v43;

    sub_1E4820354(v55);
    v45 = sub_1E47A0DEC(v42, v44, &v67);

    *(v33 + 24) = v45;
    v18 = v60;
    v46 = v30;
    _os_log_impl(&dword_1E475C000, v30, v56, "Calling timeline entries completion for %{public}s with %ld entries: (first 5) %{public}s", v33, 0x20u);
    v47 = v57;
    swift_arrayDestroy();
    MEMORY[0x1E6919FE0](v47, -1, -1);
    MEMORY[0x1E6919FE0](v33, -1, -1);
  }

  else
  {
    sub_1E4820354(v24);

    sub_1E4820354(v21);
  }

  sub_1E48202E4(v27, v18);
  v48 = *(v11 + 48);
  sub_1E48202E4(v27, v63);

  type metadata accessor for CalendarDateTimelineEntry(0);
  sub_1E48203DC(&qword_1EE2B4608, type metadata accessor for CalendarDateTimelineEntry, &unk_1E4880164);
  v49 = v61;
  sub_1E4878A5C();
  v50 = sub_1E48789CC();
  (*(*(v50 - 8) + 8))(&v18[v48], v50);
  v64(v49);
  (*(v62 + 8))(v49, v65);
  return sub_1E4820354(v27);
}

uint64_t sub_1E481FF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E487732C();
  v7 = *(*(v6 - 8) + 16);
  v7(a3, a2, v6);
  v8 = type metadata accessor for CalendarDateTimelineEntry(0);
  v7(a3 + *(v8 + 20), a1 + *(v8 + 20), v6);
  v9 = *(v8 + 24);
  v10 = sub_1E487753C();
  return (*(*(v10 - 8) + 56))(a3 + v9, 1, 1, v10);
}

id sub_1E4820008@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E487732C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() CalSimulatedDateForNow];
  if (result)
  {
    v7 = result;
    sub_1E48772FC();

    sub_1E481EFEC(a1);
    v8 = type metadata accessor for CalendarDateTimelineEntry(0);
    v9 = *(v8 + 24);
    v10 = sub_1E487753C();
    (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
    return (*(v3 + 32))(a1 + *(v8 + 20), v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E482017C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E478CC5C;

  return MEMORY[0x1EEDE8200](a1, a2, a3);
}

uint64_t sub_1E4820230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E478EC70;

  return MEMORY[0x1EEDE8210](a1, a2, a3);
}

uint64_t sub_1E48202E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D428, &unk_1E48812F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4820354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D428, &unk_1E48812F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E48203DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4820424(uint64_t a1)
{
  v2 = type metadata accessor for CalendarDateTimelineEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ViewMetrics.__allocating_init(widgetMargins:widgetLargeContentSizeMargins:widgetTightMargins:horizontalMonthViewMarginDelta:eventBackgroundPadding:eventBackgroundCornerRadius:colorBarWidth:spacingBetweenColorBarAndText:spacingBetweenIconAndTextDelta:horizontalSpacingBetweenColorBars:allDayCirclesFrameSizeRatio:usePrivacyAnnotations:primaryFont:secondaryFont:showsAttendeesLine:showsDateLine:)(char a1, uint64_t a2, uint64_t a3, char a4, char a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v29 = swift_allocObject();
  sub_1E487758C();
  *(v29 + 16) = a6;
  *(v29 + 24) = a7;
  *(v29 + 32) = a8;
  *(v29 + 40) = a9;
  *(v29 + 48) = a10;
  *(v29 + 56) = a11;
  *(v29 + 64) = a12;
  *(v29 + 72) = a13;
  *(v29 + 88) = a17;
  *(v29 + 104) = a18;
  *(v29 + 112) = a19;
  *(v29 + 120) = a1;
  *(v29 + 128) = a2;
  *(v29 + 136) = a3;
  *(v29 + 144) = a4;
  *(v29 + 145) = a5;
  *(v29 + 146) = 1;
  *(v29 + 80) = 0x4020000000000000;
  *(v29 + 96) = 0x4008000000000000;
  return v29;
}

uint64_t View.viewMetrics(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1E487850C();
}

double ViewMetrics.verticalPadding(respecting:)(uint64_t a1)
{
  v3 = sub_1E4877F9C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, *MEMORY[0x1E697F688], v3);
  v7 = sub_1E4877F8C();
  v8 = sub_1E48217E4(a1, v7);
  v10 = v9;

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v12 = sub_1E4877F8C();
  v13 = sub_1E48217E4(v6, v12);
  v15 = v14;

  (*(v4 + 8))(v6, v3);
  if ((v15 & 1) == 0)
  {
    if (v13 < v11)
    {
      goto LABEL_6;
    }

LABEL_8:
    v16 = 16;
    return *(v1 + v16);
  }

  if (v11 <= 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v16 = 24;
  return *(v1 + v16);
}

uint64_t ViewMetrics.init(widgetMargins:widgetLargeContentSizeMargins:widgetTightMargins:horizontalMonthViewMarginDelta:eventBackgroundPadding:eventBackgroundCornerRadius:colorBarWidth:spacingBetweenColorBarAndText:spacingBetweenIconAndTextDelta:horizontalSpacingBetweenColorBars:allDayCirclesFrameSizeRatio:usePrivacyAnnotations:primaryFont:secondaryFont:showsAttendeesLine:showsDateLine:)(char a1, uint64_t a2, uint64_t a3, char a4, char a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_1E487758C();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  *(v19 + 32) = a8;
  *(v19 + 40) = a9;
  *(v19 + 48) = a10;
  *(v19 + 56) = a11;
  *(v19 + 64) = a12;
  *(v19 + 72) = a13;
  *(v19 + 88) = a17;
  *(v19 + 104) = a18;
  *(v19 + 112) = a19;
  *(v19 + 120) = a1;
  *(v19 + 128) = a2;
  *(v19 + 136) = a3;
  *(v19 + 144) = a4;
  *(v19 + 145) = a5;
  *(v19 + 146) = 1;
  *(v19 + 80) = 0x4020000000000000;
  *(v19 + 96) = 0x4008000000000000;
  return v19;
}

uint64_t ViewMetrics.__allocating_init(widgetMargins:widgetLargeContentSizeMargins:widgetTightMargins:horizontalMonthViewMarginDelta:eventBackgroundPadding:eventBackgroundCornerRadius:colorBarWidth:spacingBetweenColorBarAndText:spacingBetweenIconAndText:spacingBetweenIconAndTextDelta:secondarySpacingBetweenIconAndText:horizontalSpacingBetweenColorBars:allDayCirclesFrameSizeRatio:usePrivacyAnnotations:primaryFont:secondaryFont:showsAttendeesLine:showsDateLine:showsLeadingIcons:)(char a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  v32 = swift_allocObject();
  sub_1E487758C();
  *(v32 + 16) = a7;
  *(v32 + 24) = a8;
  *(v32 + 32) = a9;
  *(v32 + 40) = a10;
  *(v32 + 48) = a11;
  *(v32 + 56) = a12;
  *(v32 + 64) = a13;
  *(v32 + 72) = a14;
  *(v32 + 80) = a17;
  *(v32 + 96) = a18;
  *(v32 + 112) = a19;
  *(v32 + 120) = a1;
  *(v32 + 128) = a2;
  *(v32 + 136) = a3;
  *(v32 + 144) = a4;
  *(v32 + 145) = a5;
  *(v32 + 146) = a6;
  return v32;
}

uint64_t ViewMetrics.init(widgetMargins:widgetLargeContentSizeMargins:widgetTightMargins:horizontalMonthViewMarginDelta:eventBackgroundPadding:eventBackgroundCornerRadius:colorBarWidth:spacingBetweenColorBarAndText:spacingBetweenIconAndText:spacingBetweenIconAndTextDelta:secondarySpacingBetweenIconAndText:horizontalSpacingBetweenColorBars:allDayCirclesFrameSizeRatio:usePrivacyAnnotations:primaryFont:secondaryFont:showsAttendeesLine:showsDateLine:showsLeadingIcons:)(char a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  sub_1E487758C();
  *(v19 + 16) = a7;
  *(v19 + 24) = a8;
  *(v19 + 32) = a9;
  *(v19 + 40) = a10;
  *(v19 + 48) = a11;
  *(v19 + 56) = a12;
  *(v19 + 64) = a13;
  *(v19 + 72) = a14;
  *(v19 + 80) = a17;
  *(v19 + 96) = a18;
  *(v19 + 112) = a19;
  *(v19 + 120) = a1;
  *(v19 + 128) = a2;
  *(v19 + 136) = a3;
  *(v19 + 144) = a4;
  *(v19 + 145) = a5;
  *(v19 + 146) = a6;
  return v19;
}

uint64_t ViewMetrics.deinit()
{

  v1 = OBJC_IVAR____TtC14CalendarWidget11ViewMetrics___observationRegistrar;
  v2 = sub_1E487759C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ViewMetrics.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC14CalendarWidget11ViewMetrics___observationRegistrar;
  v2 = sub_1E487759C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1E4820C50()
{
  v0 = sub_1E48782AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E48782EC();
  v4 = *MEMORY[0x1E6980EA0];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_1E48782CC();

  v6 = *(v1 + 8);
  v6(v3, v0);
  v7 = sub_1E48781FC();

  sub_1E48782EC();
  v5(v3, v4, v0);
  v8 = sub_1E48782CC();

  v6(v3, v0);
  type metadata accessor for ViewMetrics(0);
  v9 = swift_allocObject();
  sub_1E487758C();
  *(v9 + 16) = xmmword_1E487BC80;
  *(v9 + 32) = xmmword_1E487BC90;
  *(v9 + 48) = xmmword_1E487BCB0;
  *(v9 + 64) = xmmword_1E4881300;
  *(v9 + 112) = 0x3FF0000000000000;
  *(v9 + 120) = 1;
  *(v9 + 128) = v7;
  *(v9 + 136) = v8;
  *(v9 + 144) = 1;
  *(v9 + 146) = 1;
  result = 8.0;
  __asm { FMOV            V1.2D, #3.0 }

  *(v9 + 80) = xmmword_1E487BCC0;
  *(v9 + 96) = _Q1;
  qword_1EE2B3B80 = v9;
  return result;
}

uint64_t sub_1E4820E50@<X0>(void *a1@<X8>)
{
  if (qword_1EE2B3B78 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EE2B3B80;
}

uint64_t EnvironmentValues.viewMetrics.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E48218D4(a1, a2, a3);
  sub_1E4877F2C();
  return v4;
}

void *sub_1E4820F00@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1E48218D4(a2, a3, a4);
  result = sub_1E4877F2C();
  *a1 = v6;
  return result;
}

uint64_t sub_1E4820F50(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1E48218D4(a1, a2, a3);

  return sub_1E4877F3C();
}

uint64_t (*EnvironmentValues.viewMetrics.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = v3;
  a1[3] = sub_1E48218D4(a1, a2, a3);
  sub_1E4877F2C();
  return sub_1E482104C;
}

uint64_t sub_1E482104C(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1E4877F3C();
  }

  sub_1E4877F3C();
}

uint64_t sub_1E48210E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1E4877F1C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  sub_1E4773850(v2 + *(a1 + 40), &v16 - v10, &qword_1ECF7BC10, &unk_1E487B660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1E4877F9C();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    v14 = sub_1E4878DDC();
    v15 = sub_1E48780FC();
    sub_1E4877AAC(v14, &dword_1E475C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1E48212E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D438, &qword_1E4881598);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_1E4877F9C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  sub_1E4773850(v2, v7, &qword_1ECF7D438, &qword_1E4881598);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v29 = a2;
    v28 = *(v9 + 32);
    v28(v14, v7, v8);
    v27 = a1;
    sub_1E48210E0(a1, v12);
    v15 = sub_1E4877F8C();
    v16 = sub_1E48217E4(v12, v15);
    v18 = v17;

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16;
    }

    v20 = sub_1E4877F8C();
    v21 = sub_1E48217E4(v14, v20);
    v23 = v22;

    v24 = *(v9 + 8);
    v24(v12, v8);
    if (v23)
    {
      if (v19 > 0)
      {
        return (v28)(v29, v14, v8);
      }
    }

    else if (v21 < v19)
    {
      return (v28)(v29, v14, v8);
    }

    v24(v14, v8);
    a2 = v29;
    a1 = v27;
    return sub_1E48210E0(a1, a2);
  }

  sub_1E4822368(v7);
  return sub_1E48210E0(a1, a2);
}

uint64_t sub_1E482155C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v20 = a2;
  v19 = sub_1E4877F9C();
  v3 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = (v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18[1] = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D430, &qword_1E4881560);
  v6 = sub_1E4877C9C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  sub_1E48212E4(a1, v5);
  v13 = *(a1 + 24);
  sub_1E487850C();

  (*(v3 + 8))(v5, v19);
  v14 = sub_1E4822314(&qword_1EE2B4718, &qword_1ECF7D430, &qword_1E4881560);
  v21 = v13;
  v22 = v14;
  swift_getWitnessTable();
  v15 = *(v7 + 16);
  v15(v12, v10, v6);
  v16 = *(v7 + 8);
  v16(v10, v6);
  v15(v20, v12, v6);
  return (v16)(v12, v6);
}

uint64_t sub_1E48217E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_1E4877F9C() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1E4821AC8();
  v7 = 0;
  while ((sub_1E4878AFC() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_1E48218D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2B3B68;
  if (!qword_1EE2B3B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B3B68);
  }

  return result;
}

uint64_t type metadata accessor for ViewMetrics(uint64_t a1)
{
  result = qword_1EE2B41C8;
  if (!qword_1EE2B41C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E482197C(uint64_t a1)
{
  result = sub_1E487759C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_1E4821AC8()
{
  result = qword_1EE2B4728;
  if (!qword_1EE2B4728)
  {
    sub_1E4877F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B4728);
  }

  return result;
}

void sub_1E4821B20(uint64_t a1)
{
  sub_1E4822270(319, &qword_1EE2B4720, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1E4822270(319, &qword_1EE2B1678, MEMORY[0x1E697DCC8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E4821BF8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1E4877F9C() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v13 <= 8)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(v6 + 64);
  }

  if (v12 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v12;
  }

  if (v8)
  {
    v18 = v13;
  }

  else
  {
    v18 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v18 + v14;
  v20 = *(v7 + 80) & 0xF8 | 7;
  if (a2 > v17)
  {
    v21 = v16 + ((v15 + v20 + (v19 & ~v14)) & ~v20) + 1;
    v22 = 8 * v21;
    if (v21 > 3)
    {
      goto LABEL_19;
    }

    v24 = ((a2 - v17 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v24 >= 2)
    {
LABEL_19:
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_39;
      }

LABEL_26:
      v25 = (v23 - 1) << v22;
      if (v21 > 3)
      {
        v25 = 0;
      }

      if (v16 + ((v15 + v20 + (v19 & ~v14)) & ~v20) == -1)
      {
        v27 = 0;
      }

      else
      {
        if (v21 <= 3)
        {
          v26 = v16 + ((v15 + v20 + (v19 & ~v14)) & ~v20) + 1;
        }

        else
        {
          v26 = 4;
        }

        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v27 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v27 = *a1;
          }
        }

        else if (v26 == 1)
        {
          v27 = *a1;
        }

        else
        {
          v27 = *a1;
        }
      }

      return v17 + (v27 | v25) + 1;
    }
  }

LABEL_39:
  if (v9 == v17)
  {
    if (v8 < 2)
    {
      return 0;
    }

    v31 = (*(v7 + 48))(a1);
    if (v31 >= 2)
    {
      return v31 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v29 = (a1 + v19) & ~v14;
    if (v11 == v17)
    {
      v30 = *(*(*(a3 + 16) - 8) + 48);

      return v30(v29, v11);
    }

    else
    {
      v32 = *(((v29 + v15 + v20) & ~v20) + v16);
      if (v32 >= 2)
      {
        return (v32 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_1E4821EA0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_1E4877F9C() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 64);
  v16 = *(v13 + 80);
  v17 = *(v13 + 64);
  if (v14 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  v19 = 8;
  if (v15 > 8)
  {
    v19 = v15;
  }

  if (v18 <= 0xFE)
  {
    v18 = 254;
  }

  if (!v11)
  {
    ++v15;
  }

  v20 = v15 + v16;
  v21 = (v15 + v16) & ~v16;
  v22 = *(v10 + 80) & 0xF8 | 7;
  v23 = v19 + 1;
  v24 = ((v17 + v22 + v21) & ~v22) + v19 + 1;
  if (a3 <= v18)
  {
    goto LABEL_24;
  }

  if (v24 <= 3)
  {
    v25 = ((a3 - v18 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
    if (HIWORD(v25))
    {
      v8 = 4;
      if (v18 >= a2)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (v25 >= 2)
    {
      v8 = v26;
    }

    else
    {
      v8 = 0;
    }

LABEL_24:
    if (v18 >= a2)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v8 = 1;
  if (v18 >= a2)
  {
LABEL_34:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v24] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *&a1[v24] = 0;
    }

    else if (v8)
    {
      a1[v24] = 0;
      if (!a2)
      {
        return;
      }

LABEL_41:
      if (v12 == v18)
      {
        v30 = *(v10 + 56);

        v30(a1, (a2 + 1));
      }

      else
      {
        v31 = &a1[v20] & ~v16;
        if (v14 == v18)
        {
          v32 = *(v13 + 56);

          v32(v31, a2, v14);
        }

        else
        {
          v33 = (v31 + v17 + v22) & ~v22;
          if (a2 > 0xFE)
          {
            if (v23 <= 3)
            {
              v34 = ~(-1 << (8 * v23));
            }

            else
            {
              v34 = -1;
            }

            if (v19 != -1)
            {
              v35 = v34 & (a2 - 255);
              if (v23 <= 3)
              {
                v36 = v19 + 1;
              }

              else
              {
                v36 = 4;
              }

              bzero(((v31 + v17 + v22) & ~v22), v23);
              if (v36 > 2)
              {
                if (v36 == 3)
                {
                  *v33 = v35;
                  *(v33 + 2) = BYTE2(v35);
                }

                else
                {
                  *v33 = v35;
                }
              }

              else if (v36 == 1)
              {
                *v33 = v35;
              }

              else
              {
                *v33 = v35;
              }
            }
          }

          else
          {
            *(v33 + v19) = -a2;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

LABEL_25:
  v27 = ~v18 + a2;
  if (v24 >= 4)
  {
    bzero(a1, v24);
    *a1 = v27;
    v28 = 1;
    if (v8 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v28 = (v27 >> (8 * v24)) + 1;
  if (!v24)
  {
LABEL_54:
    if (v8 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v29 = v27 & ~(-1 << (8 * v24));
  bzero(a1, v24);
  if (v24 == 3)
  {
    *a1 = v29;
    a1[2] = BYTE2(v29);
    goto LABEL_54;
  }

  if (v24 == 2)
  {
    *a1 = v29;
    if (v8 > 1)
    {
LABEL_58:
      if (v8 == 2)
      {
        *&a1[v24] = v28;
      }

      else
      {
        *&a1[v24] = v28;
      }

      return;
    }
  }

  else
  {
    *a1 = v27;
    if (v8 > 1)
    {
      goto LABEL_58;
    }
  }

LABEL_55:
  if (v8)
  {
    a1[v24] = v28;
  }
}

void sub_1E4822270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1E4877F9C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1E4822314(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4822368(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D438, &qword_1E4881598);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy14CalendarWidget0C7MetricsCGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1E4877C9C();
  sub_1E4822314(a4, a2, a3);
  return swift_getWitnessTable();
}

uint64_t type metadata accessor for MediumListContentView(uint64_t a1)
{
  result = qword_1EE2B26D0;
  if (!qword_1EE2B26D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E48224E0(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    sub_1E4822700(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1E482269C(319);
      if (v3 <= 0x3F)
      {
        sub_1E4822700(319, &qword_1EE2B1678, MEMORY[0x1E697F6A8], MEMORY[0x1E697DCC8]);
        if (v4 <= 0x3F)
        {
          sub_1E478305C();
          if (v5 <= 0x3F)
          {
            sub_1E4822700(319, &qword_1EE2B1698, MEMORY[0x1E6985780], MEMORY[0x1E697DCC8]);
            if (v6 <= 0x3F)
            {
              sub_1E4822700(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
              if (v7 <= 0x3F)
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

void sub_1E482269C(uint64_t a1)
{
  if (!qword_1EE2B1030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D440, &qword_1E48815B8);
    v1 = sub_1E487882C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2B1030);
    }
  }
}

void sub_1E4822700(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1E4822780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_1E4878D1C();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1E4824EF8();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1E4878F9C();
    MEMORY[0x1E69192D0](0xD00000000000003FLL, 0x80000001E48A9910);
    v12 = sub_1E487918C();
    MEMORY[0x1E69192D0](v12);

    MEMORY[0x1E69192D0](46, 0xE100000000000000);
    result = sub_1E487903C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4822908()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for MediumListContentView(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1E4822A60@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for MediumListContentView(0);
  sub_1E4773850(v1 + *(v10 + 36), v9, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487893C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E4822C68()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for MediumListContentView(0) + 40));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1E4822DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v183 = a1;
  v171 = a2;
  v135 = type metadata accessor for NarrowMultidayEventsView(0);
  MEMORY[0x1EEE9AC00](v135);
  v137 = &v134 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D458, &qword_1E4881658);
  MEMORY[0x1EEE9AC00](v136);
  v138 = &v134 - v3;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D460, &qword_1E4881660);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v134 - v4;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D468, &qword_1E4881668);
  MEMORY[0x1EEE9AC00](v170);
  v141 = &v134 - v5;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D470, &qword_1E4881670);
  MEMORY[0x1EEE9AC00](v168);
  v169 = &v134 - v6;
  v158 = sub_1E4877A1C();
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v155 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_1E48782AC();
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1E487893C();
  v154 = *(v156 - 8);
  v9 = MEMORY[0x1EEE9AC00](v156);
  v142 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v150 = &v134 - v11;
  v12 = sub_1E48779BC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v148 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_1E487732C();
  v14 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v179 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1E48779CC();
  v149 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v147 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D478, &qword_1E4881678);
  MEMORY[0x1EEE9AC00](v146);
  v152 = &v134 - v17;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D480, &qword_1E4881680);
  v18 = MEMORY[0x1EEE9AC00](v165);
  v153 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v159 = &v134 - v20;
  v185 = type metadata accessor for DayEvents(0);
  v21 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v23 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D488, &qword_1E4881688);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v167 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v166 = &v134 - v27;
  v28 = type metadata accessor for MediumListContentView(0);
  v176 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v177 = v29;
  v178 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SmallListContentView(0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D490, &qword_1E4881690);
  MEMORY[0x1EEE9AC00](v173);
  v174 = &v134 - v33;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D498, &qword_1E4881698);
  MEMORY[0x1EEE9AC00](v175);
  v35 = &v134 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4A0, &unk_1E48816A0);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v164 = &v134 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v181 = &v134 - v39;
  sub_1E4878D2C();
  v163 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v40 = *(v14 + 16);
  v41 = v14 + 16;
  v42 = v183;
  v162 = v41;
  v40(v32, v183, v182);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
  v43 = *(v21 + 72);
  v44 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v184 = v43;
  result = swift_allocObject();
  *(result + 16) = xmmword_1E487A7E0;
  v46 = *(v42 + *(v28 + 20));
  if (*(v46 + 16))
  {
    v47 = result;
    v161 = v40;
    v172 = v28;
    v180 = v46;
    v160 = v44;
    sub_1E48248A0(v46 + v44, result + v44, type metadata accessor for DayEvents);
    *&v32[v30[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v32[v30[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v49 = swift_getKeyPath();
    v50 = swift_getKeyPath();
    *&v32[v30[5]] = v47;
    v32[v30[6]] = 0;
    v32[v30[7]] = 1;
    v32[v30[8]] = 1;
    v51 = &v32[v30[11]];
    *v51 = KeyPath;
    v51[8] = 0;
    v52 = &v32[v30[12]];
    *v52 = v49;
    v52[8] = 0;
    v53 = &v32[v30[13]];
    *v53 = v50;
    v53[8] = 0;
    sub_1E487889C();
    sub_1E4877CEC();
    v54 = v174;
    sub_1E4824B48(v32, v174, type metadata accessor for SmallListContentView);
    v55 = (v54 + *(v173 + 36));
    v56 = v192;
    v55[4] = v191;
    v55[5] = v56;
    v55[6] = v193;
    v57 = v188;
    *v55 = v187;
    v55[1] = v57;
    v58 = v190;
    v55[2] = v189;
    v55[3] = v58;
    v59 = v178;
    sub_1E48248A0(v42, v178, type metadata accessor for MediumListContentView);
    v60 = (*(v176 + 80) + 16) & ~*(v176 + 80);
    v61 = swift_allocObject();
    sub_1E4824B48(v59, v61 + v60, type metadata accessor for MediumListContentView);
    sub_1E477372C(v54, v35, &qword_1ECF7D490, &qword_1E4881690);
    v62 = &v35[*(v175 + 36)];
    *v62 = sub_1E4824908;
    v62[1] = v61;
    sub_1E4824978();
    sub_1E48785BC();
    sub_1E47738B8(v35, &qword_1ECF7D498, &qword_1E4881698);
    v63 = (v42 + *(v172 + 24));
    v65 = *v63;
    v64 = v63[1];
    v178 = v65;
    *&v194 = v65;
    *(&v194 + 1) = v64;
    v177 = v64;
    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4B0, &qword_1E4881770);
    sub_1E487880C();
    v66 = sub_1E486E95C(v180, v186);

    v67 = v66[2];
    if (v67)
    {
      v68 = 0;
      v69 = *(v185 + 20);
      v70 = v66 + v160;
      while (1)
      {
        if (v68 >= v66[2])
        {
          __break(1u);
          goto LABEL_22;
        }

        sub_1E48248A0(v70, v23, type metadata accessor for DayEvents);
        sub_1E4878D1C();
        sub_1E4878D0C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if (*(*&v23[v69] + 16))
        {

          sub_1E4824AEC(v23);
          goto LABEL_17;
        }

        v71 = *(*&v23[*(v185 + 24)] + 16);

        result = sub_1E4824AEC(v23);
        if (v71)
        {
          break;
        }

        ++v68;
        v70 += v184;
        if (v67 == v68)
        {
          goto LABEL_12;
        }
      }

LABEL_17:
      v101 = v167;
      v102 = v164;
      v103 = v137;
      v161(v137, v183, v182);
      *&v194 = v178;
      *(&v194 + 1) = v177;
      sub_1E487880C();
      v104 = sub_1E486E95C(v180, v186);

      v105 = swift_getKeyPath();
      v106 = swift_getKeyPath();
      v107 = v135;
      *(v103 + *(v135 + 40)) = v106;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
      swift_storeEnumTagMultiPayload();
      *(v103 + v107[11]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
      swift_storeEnumTagMultiPayload();
      v108 = swift_getKeyPath();
      *(v103 + v107[5]) = v104;
      *(v103 + v107[6]) = 0;
      *(v103 + v107[7]) = 0;
      *(v103 + v107[8]) = 0;
      v109 = v103 + v107[9];
      *v109 = v105;
      *(v109 + 8) = 0;
      v110 = v103 + v107[12];
      *v110 = v108;
      *(v110 + 8) = 0;
      *(v103 + v107[13]) = 0x4020000000000000;
      sub_1E48783CC();
      v111 = sub_1E487818C();
      v112 = sub_1E4822908();
      v100 = v166;
      if (v112)
      {
        sub_1E4822C68();
      }

      sub_1E4877B0C();
      v114 = v113;
      v116 = v115;
      v118 = v117;
      v120 = v119;
      v121 = v138;
      sub_1E4824B48(v103, v138, type metadata accessor for NarrowMultidayEventsView);
      v122 = v121 + *(v136 + 36);
      *v122 = v111;
      *(v122 + 8) = v114;
      *(v122 + 16) = v116;
      *(v122 + 24) = v118;
      *(v122 + 32) = v120;
      *(v122 + 40) = 0;
      sub_1E487889C();
      sub_1E4877CEC();
      v123 = v139;
      sub_1E477372C(v121, v139, &qword_1ECF7D458, &qword_1E4881658);
      v124 = (v123 + *(v140 + 36));
      v125 = v197;
      v126 = v199;
      v127 = v200;
      v124[4] = v198;
      v124[5] = v126;
      v124[6] = v127;
      v128 = v195;
      v129 = v196;
      *v124 = v194;
      v124[1] = v128;
      v124[2] = v129;
      v124[3] = v125;
      sub_1E4824BB0(&qword_1EE2B1430, &qword_1ECF7D460, &qword_1E4881660, sub_1E4824C34);
      v130 = v141;
      sub_1E48785BC();
      sub_1E47738B8(v123, &qword_1ECF7D460, &qword_1E4881660);
      sub_1E4773850(v130, v169, &qword_1ECF7D468, &qword_1E4881668);
      swift_storeEnumTagMultiPayload();
      sub_1E4824BB0(&qword_1EE2B1450, &qword_1ECF7D480, &qword_1E4881680, sub_1E4824CF0);
      sub_1E4824DAC();
      sub_1E487803C();
      sub_1E47738B8(v130, &qword_1ECF7D468, &qword_1E4881668);
    }

    else
    {
LABEL_12:

      v161(v179, v183, v182);
      v72 = v150;
      sub_1E4822A60(v150);
      v185 = sub_1E4877A5C();
      v184 = v73;
      v74 = v142;
      sub_1E487892C();
      LODWORD(v182) = sub_1E48788FC();
      v75 = *(v154 + 8);
      v76 = v156;
      v75(v74, v156);
      sub_1E48782DC();
      v77 = v144;
      v78 = v143;
      v79 = v145;
      (*(v144 + 104))(v143, *MEMORY[0x1E6980EA0], v145);
      sub_1E48782CC();

      (*(v77 + 8))(v78, v79);
      sub_1E48781FC();

      sub_1E48782DC();
      sub_1E487827C();
      sub_1E487829C();

      (*(v157 + 104))(v155, *MEMORY[0x1E6993280], v158);
      sub_1E48779AC();
      v75(v72, v76);
      v80 = v147;
      sub_1E487799C();
      v81 = sub_1E487818C();
      if (sub_1E4822908())
      {
        sub_1E4822C68();
      }

      sub_1E4877B0C();
      v83 = v82;
      v85 = v84;
      v87 = v86;
      v89 = v88;
      v90 = v152;
      (*(v149 + 32))(v152, v80, v151);
      v91 = v90 + *(v146 + 36);
      *v91 = v81;
      *(v91 + 8) = v83;
      *(v91 + 16) = v85;
      *(v91 + 24) = v87;
      *(v91 + 32) = v89;
      *(v91 + 40) = 0;
      sub_1E487889C();
      sub_1E4877CEC();
      v92 = v153;
      sub_1E477372C(v90, v153, &qword_1ECF7D478, &qword_1E4881678);
      v93 = (v92 + *(v165 + 36));
      v94 = v197;
      v95 = v199;
      v96 = v200;
      v93[4] = v198;
      v93[5] = v95;
      v93[6] = v96;
      v97 = v195;
      v98 = v196;
      *v93 = v194;
      v93[1] = v97;
      v93[2] = v98;
      v93[3] = v94;
      v99 = v159;
      sub_1E477372C(v92, v159, &qword_1ECF7D480, &qword_1E4881680);
      sub_1E4773850(v99, v169, &qword_1ECF7D480, &qword_1E4881680);
      swift_storeEnumTagMultiPayload();
      sub_1E4824BB0(&qword_1EE2B1450, &qword_1ECF7D480, &qword_1E4881680, sub_1E4824CF0);
      sub_1E4824DAC();
      v100 = v166;
      sub_1E487803C();
      sub_1E47738B8(v99, &qword_1ECF7D480, &qword_1E4881680);
      v101 = v167;
      v102 = v164;
    }

    v131 = v181;
    sub_1E4773850(v181, v102, &qword_1ECF7D4A0, &unk_1E48816A0);
    sub_1E4773850(v100, v101, &qword_1ECF7D488, &qword_1E4881688);
    v132 = v171;
    sub_1E4773850(v102, v171, &qword_1ECF7D4A0, &unk_1E48816A0);
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4B8, qword_1E48817E0);
    sub_1E4773850(v101, v132 + *(v133 + 48), &qword_1ECF7D488, &qword_1E4881688);
    sub_1E47738B8(v100, &qword_1ECF7D488, &qword_1E4881688);
    sub_1E47738B8(v131, &qword_1ECF7D4A0, &unk_1E48816A0);
    sub_1E47738B8(v101, &qword_1ECF7D488, &qword_1E4881688);
    sub_1E47738B8(v102, &qword_1ECF7D4A0, &unk_1E48816A0);
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4824568(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v6[2] = a2;
  v6[3] = v3;
  sub_1E4822780(sub_1E4824EDC, v6, "CalendarWidget/MediumListContentView.swift", 42, 2u, 33);
}

uint64_t sub_1E4824660(uint64_t a1, uint64_t a2)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for MediumListContentView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4B0, &qword_1E4881770);
  sub_1E487881C();
}

uint64_t sub_1E4824750@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1E4877F6C();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D448, &qword_1E4881610);
  v7 = a2 + *(v6 + 36);
  *v7 = v5;
  *(v7 + 8) = 0x4030000000000000;
  *(v7 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D450, &qword_1E4881618);
  sub_1E4822DB8(v3, v7 + *(v8 + 44));
  v9 = *MEMORY[0x1E697F638];
  v10 = sub_1E4877F9C();
  v11 = *(v10 - 8);
  (*(v11 + 104))(a2, v9, v10);
  (*(v11 + 56))(a2, 0, 1, v10);
  *(a2 + *(v6 + 40)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E48248A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4824908(uint64_t *a1)
{
  v3 = *(type metadata accessor for MediumListContentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E4824568(a1, v4);
}

unint64_t sub_1E4824978()
{
  result = qword_1EE2B1448;
  if (!qword_1EE2B1448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D498, &qword_1E4881698);
    sub_1E4824A30();
    sub_1E4773680(&qword_1EE2B10D8, &qword_1ECF7D4A8, &qword_1E4881768, MEMORY[0x1E6980618]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1448);
  }

  return result;
}

unint64_t sub_1E4824A30()
{
  result = qword_1EE2B15E0;
  if (!qword_1EE2B15E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D490, &qword_1E4881690);
    sub_1E4824E94(qword_1EE2B2840, type metadata accessor for SmallListContentView, &unk_1E4880AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15E0);
  }

  return result;
}

uint64_t sub_1E4824AEC(uint64_t a1)
{
  v2 = type metadata accessor for DayEvents(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4824B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4824BB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4824C34()
{
  result = qword_1EE2B15B8;
  if (!qword_1EE2B15B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D458, &qword_1E4881658);
    sub_1E4824E94(&qword_1EE2B2328, type metadata accessor for NarrowMultidayEventsView, &unk_1E487E23C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15B8);
  }

  return result;
}

unint64_t sub_1E4824CF0()
{
  result = qword_1EE2B15F8;
  if (!qword_1EE2B15F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D478, &qword_1E4881678);
    sub_1E4824E94(&qword_1EE2B4620, MEMORY[0x1E6993268], MEMORY[0x1E6993260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15F8);
  }

  return result;
}

unint64_t sub_1E4824DAC()
{
  result = qword_1EE2B1330;
  if (!qword_1EE2B1330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D468, &qword_1E4881668);
    sub_1E4824BB0(&qword_1EE2B1430, &qword_1ECF7D460, &qword_1E4881660, sub_1E4824C34);
    sub_1E4824E94(&qword_1EE2B10A8, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1330);
  }

  return result;
}

uint64_t sub_1E4824E94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E4824F68(uint64_t a1)
{
  sub_1E482B8E4(319, &qword_1EE2B48A8, type metadata accessor for Event, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1E482B8E4(319, &qword_1EE2B1698, MEMORY[0x1E6985780], MEMORY[0x1E697DCC8]);
    if (v2 <= 0x3F)
    {
      sub_1E478305C();
      if (v3 <= 0x3F)
      {
        sub_1E482B8E4(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
        if (v4 <= 0x3F)
        {
          sub_1E482B8E4(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1E4825108(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1E4825150(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_1E48251F0(uint64_t a1)
{
  sub_1E482B8E4(319, &qword_1EE2B0DE0, type metadata accessor for Event, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1E487732C();
    if (v2 <= 0x3F)
    {
      sub_1E482B8E4(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC8]);
      if (v3 <= 0x3F)
      {
        sub_1E478305C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E4825320(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_1E48782AC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1E4877F1C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7A8, &unk_1E487E180);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E487A7E0;
  if ((a4 & 1) == 0)
  {

    v16 = sub_1E4878DDC();
    v17 = sub_1E48780FC();
    sub_1E4877AAC(v16, &dword_1E475C000, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(a3, 0);
    (*(v11 + 8))(v13, v10);
    if (v19[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E48782EC();
    (*(v7 + 104))(v9, *MEMORY[0x1E6980EA0], v6);
    sub_1E48782CC();

    (*(v7 + 8))(v9, v6);
    v15 = sub_1E48781FC();

    goto LABEL_6;
  }

  if (a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E48782FC();
  (*(v7 + 104))(v9, *MEMORY[0x1E6980EA0], v6);
  v15 = sub_1E48782CC();

  (*(v7 + 8))(v9, v6);
LABEL_6:
  *(v14 + 32) = v15;
  return v14;
}

uint64_t sub_1E482565C(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = sub_1E48782AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7A8, &unk_1E487E180);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E487A7E0;
  if (a1())
  {
    sub_1E48782BC();
  }

  else
  {
    a2();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E6980EA0], v4);
  v9 = sub_1E48782CC();

  (*(v5 + 8))(v7, v4);
  *(v8 + 32) = v9;
  return v8;
}

double sub_1E48257C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_1E48782AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1E4877F1C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a5 & 1) == 0)
  {

    v17 = sub_1E4878DDC();
    v18 = sub_1E48780FC();
    sub_1E4877AAC(v17, &dword_1E475C000, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(a4, 0);
    (*(v13 + 8))(v15, v12);
    if (v22[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E48782EC();
    (*(v9 + 104))(v11, *MEMORY[0x1E6980EA0], v8);
    sub_1E48782CC();

    (*(v9 + 8))(v11, v8);
    v16 = sub_1E48781FC();

    goto LABEL_6;
  }

  if (a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E48782FC();
  (*(v9 + 104))(v11, *MEMORY[0x1E6980EA0], v8);
  v16 = sub_1E48782CC();

  (*(v9 + 8))(v11, v8);
LABEL_6:
  sub_1E487201C(v16, a1);
  v20 = v19;

  return v20;
}

uint64_t sub_1E4825A98@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NarrowConflictsView(0);
  sub_1E4773850(v1 + *(v10 + 32), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E4825CA0()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for NarrowConflictsView(0) + 36);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1E4825DF8@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NarrowConflictsView(0);
  sub_1E4773850(v1 + *(v10 + 40), v9, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487893C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E4826000()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for NarrowConflictsView(0) + 44));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1E4826150@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NarrowConflictsView(0);
  sub_1E4773850(v1 + *(v10 + 48), v9, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E4826358@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D530, &qword_1E4881B98);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9A8, &unk_1E4881BA0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v22 - v14;
  sub_1E4878D2C();
  v22[1] = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *(sub_1E4826000() + 104);

  *v15 = sub_1E4877F6C();
  *(v15 + 1) = v16;
  v15[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B0, &qword_1E487ABE0);
  sub_1E4826638(a1, &v15[*(v17 + 44)]);
  *v9 = sub_1E4877FBC();
  *(v9 + 1) = 0x3FF0000000000000;
  v9[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D538, &qword_1E4881BB0);
  sub_1E4826D18(a1, &v9[*(v18 + 44)]);
  sub_1E4773850(v15, v13, &qword_1ECF7B9A8, &unk_1E4881BA0);
  sub_1E4773850(v9, v7, &qword_1ECF7D530, &qword_1E4881B98);
  sub_1E4773850(v13, a2, &qword_1ECF7B9A8, &unk_1E4881BA0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D540, &unk_1E4881BB8);
  sub_1E4773850(v7, a2 + *(v19 + 48), &qword_1ECF7D530, &qword_1E4881B98);
  v20 = a2 + *(v19 + 64);
  *v20 = 0;
  *(v20 + 8) = 0;
  sub_1E47738B8(v9, &qword_1ECF7D530, &qword_1E4881B98);
  sub_1E47738B8(v15, &qword_1ECF7B9A8, &unk_1E4881BA0);
  sub_1E47738B8(v7, &qword_1ECF7D530, &qword_1E4881B98);
  sub_1E47738B8(v13, &qword_1ECF7B9A8, &unk_1E4881BA0);
}

uint64_t sub_1E4826638@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15[0] = a2;
  v3 = type metadata accessor for NarrowConflictsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *a1;
  sub_1E4826150(v9);
  v11 = sub_1E486B590(v10, 3, v9);
  (*(v7 + 8))(v9, v6);
  v15[1] = v11;
  sub_1E482B2EC(a1, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NarrowConflictsView);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_1E482B284(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for NarrowConflictsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B8, &qword_1E487ABE8);
  sub_1E487736C();
  type metadata accessor for ColorBarView(0);
  sub_1E4773680(&qword_1EE2B46F0, &qword_1ECF7B9B8, &qword_1E487ABE8, MEMORY[0x1E69E6338]);
  sub_1E482B964(qword_1EE2B58D8, type metadata accessor for ColorBarView, &unk_1E487B2D8);
  sub_1E482B964(&qword_1EE2B4080, type metadata accessor for ColorBarView.Styling, &unk_1E487B328);
  sub_1E487886C();
}

uint64_t sub_1E4826984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v33 = a1;
  v35 = a3;
  v3 = sub_1E487893C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v31 = type metadata accessor for ColorBarView.Styling(0);
  v10 = MEMORY[0x1EEE9AC00](v31);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  v15 = type metadata accessor for ColorBarView(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  v34 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E4825DF8(v9);
  sub_1E487892C();
  v18 = sub_1E48788FC();
  v19 = *(v4 + 8);
  v19(v7, v3);
  v19(v9, v3);
  if (v18)
  {
    sub_1E482B2EC(v33, v14, type metadata accessor for ColorBarView.Styling);
  }

  else
  {
    sub_1E482B2EC(v33, v12, type metadata accessor for ColorBarView.Styling);
    v20 = sub_1E48786EC();
    v21 = v12[48];
    v22 = *(v12 + 1);
    v23 = v12[16];
    v24 = *(v12 + 3);
    v25 = *(v12 + 4);
    v26 = *(v12 + 5);
    sub_1E487735C();
    sub_1E482BB78(v12, type metadata accessor for ColorBarView.Styling);
    v14[48] = v21;
    *v14 = v20;
    *(v14 + 1) = v22;
    v14[16] = v23;
    *(v14 + 3) = v24;
    *(v14 + 4) = v25;
    *(v14 + 5) = v26;
  }

  *&v17[*(v15 + 20)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  sub_1E482B284(v14, v17, type metadata accessor for ColorBarView.Styling);
  v28 = &v17[*(v15 + 24)];
  *v28 = KeyPath;
  v28[8] = 0;
  sub_1E482B284(v17, v35, type metadata accessor for ColorBarView);
}

void sub_1E4826D18(char *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = type metadata accessor for ConflictEventTitleText(0);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v88 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7E8, &unk_1E487E2D0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v88 - v9;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D548, &qword_1E4881BC8);
  v94 = *(v95 - 8);
  v11 = MEMORY[0x1EEE9AC00](v95);
  v102 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v88 - v13;
  v14 = type metadata accessor for Event(0);
  v111 = *(v14 - 8);
  v112 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v110 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v88 - v17;
  v19 = type metadata accessor for ConflictTimeText(0);
  v105 = *(v19 - 8);
  v106 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v98 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7E0, &qword_1E4881BD0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v93 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v101 = &v88 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v104 = &v88 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v108 = &v88 - v28;
  sub_1E4878D2C();
  v92 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = sub_1E4825CA0();
  v96 = a2;
  v103 = v8;
  if (v29)
  {
    v97 = *(v105 + 56);
    v97(v108, 1, 1, v106);
  }

  else
  {
    v30 = *a1;
    v31 = *(type metadata accessor for NarrowConflictsView(0) + 20);
    v32 = v106;
    v33 = *(v106 + 20);
    v34 = sub_1E487732C();
    v35 = v98;
    (*(*(v34 - 8) + 16))(&v98[v33], &a1[v31], v34);
    *(v35 + *(v32 + 24)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *v35 = v30;
    v37 = v35 + *(v32 + 28);
    *v37 = KeyPath;
    v37[8] = 0;
    v38 = v108;
    sub_1E482B284(v35, v108, type metadata accessor for ConflictTimeText);
    v97 = *(v105 + 56);
    v97(v38, 0, 1, v32);
  }

  v99 = v10;
  v100 = a1;
  v39 = *a1;
  v109 = *(*a1 + 16);
  if (v109)
  {
    v40 = 0;
    v41 = MEMORY[0x1E69E7CC0];
    while (v40 < *(v39 + 16))
    {
      v42 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v43 = *(v111 + 72);
      v44 = v39;
      sub_1E482B2EC(v39 + v42 + v43 * v40, v18, type metadata accessor for Event);
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v45 = v18[*(v112 + 56)];

      if ((v45 & 0xFE) == 6)
      {
        sub_1E482B284(v18, v110, type metadata accessor for Event);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v113 = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v41 + 16) + 1, 1);
          v41 = v113;
        }

        v48 = *(v41 + 16);
        v47 = *(v41 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1E4858038((v47 > 1), v48 + 1, 1);
          v41 = v113;
        }

        *(v41 + 16) = v48 + 1;
        sub_1E482B284(v110, v41 + v42 + v48 * v43, type metadata accessor for Event);
      }

      else
      {
        sub_1E482BB78(v18, type metadata accessor for Event);
      }

      v39 = v44;
      if (v109 == ++v40)
      {
        v109 = *(v44 + 16);
        v10 = v99;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v109 = 0;
    v41 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v49 = *(v41 + 16);

    v110 = swift_getKeyPath();
    v50 = type metadata accessor for NarrowConflictsView(0);
    v51 = *(v100 + *(v50 + 24));
    v113 = sub_1E47F8CE4(v51, v39);
    v114 = v52;
    v115 = v53;
    v116 = v54;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C540, &qword_1E4881C50);
    sub_1E4773680(&qword_1EE2B46B0, &qword_1ECF7C540, &qword_1E4881C50, MEMORY[0x1E69E6970]);
    sub_1E482B964(qword_1EE2B48C8, type metadata accessor for Event, &unk_1E487E510);
    sub_1E482B964(qword_1EE2B4A10, type metadata accessor for ConflictEventTitleText, &unk_1E4881974);
    v55 = v91;
    sub_1E487885C();
    v56 = 1;
    if (v51 < 1)
    {
      v57 = v39;
    }

    else
    {
      v57 = v39;
      if (v51 < *(v39 + 16))
      {
        v58 = v88;
        (*(v111 + 56))(v88, 1, 1, v112);
        v59 = v55[5];
        *(v58 + v59) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
        swift_storeEnumTagMultiPayload();
        v60 = v58 + v55[6];
        *v60 = swift_getKeyPath();
        *(v60 + 8) = 0;
        v61 = v55[7];
        *(v58 + v61) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
        swift_storeEnumTagMultiPayload();
        v62 = v58 + v55[8];
        *v62 = swift_getKeyPath();
        *(v62 + 8) = 0;
        sub_1E482B284(v58, v10, type metadata accessor for ConflictEventTitleText);
        v56 = 0;
      }
    }

    (*(v90 + 56))(v10, v56, 1, v55);
    v63 = v100;
    if (sub_1E4825CA0())
    {
      v64 = *(v50 + 20);
      v65 = v49;
      v66 = v106;
      v67 = *(v106 + 20);
      v68 = sub_1E487732C();
      v69 = v98;
      (*(*(v68 - 8) + 16))(&v98[v67], v63 + v64, v68);
      *(v69 + *(v66 + 24)) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
      swift_storeEnumTagMultiPayload();
      v70 = swift_getKeyPath();
      *v69 = v57;
      v71 = v69 + *(v66 + 28);
      *v71 = v70;
      v71[8] = 0;
      v72 = v104;
      sub_1E482B284(v69, v104, type metadata accessor for ConflictTimeText);
      v73 = v66;
      v49 = v65;
      v97(v72, 0, 1, v73);
    }

    else
    {
      v72 = v104;
      v97(v104, 1, 1, v106);
    }

    v89 = v49;
    v112 = v109 - v49;
    v74 = v101;
    sub_1E4773850(v108, v101, &qword_1ECF7C7E0, &qword_1E4881BD0);
    v75 = v94;
    v76 = *(v94 + 16);
    v77 = v102;
    v78 = v95;
    v76(v102, v107, v95);
    sub_1E4773850(v10, v103, &qword_1ECF7C7E8, &unk_1E487E2D0);
    v79 = v72;
    v80 = v93;
    sub_1E4773850(v79, v93, &qword_1ECF7C7E0, &qword_1E4881BD0);
    v81 = v96;
    sub_1E4773850(v74, v96, &qword_1ECF7C7E0, &qword_1E4881BD0);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D550, &qword_1E4881C58);
    v83 = v81 + v82[12];
    v84 = v89;
    *v83 = v112;
    *(v83 + 8) = v84;
    v85 = v110;
    *(v83 + 16) = v110;
    *(v83 + 24) = 0;
    v76((v81 + v82[16]), v77, v78);
    v86 = v103;
    sub_1E4773850(v103, v81 + v82[20], &qword_1ECF7C7E8, &unk_1E487E2D0);
    sub_1E4773850(v80, v81 + v82[24], &qword_1ECF7C7E0, &qword_1E4881BD0);
    sub_1E47CC10C(v85, 0);
    sub_1E47738B8(v104, &qword_1ECF7C7E0, &qword_1E4881BD0);
    sub_1E47738B8(v99, &qword_1ECF7C7E8, &unk_1E487E2D0);
    v87 = *(v75 + 8);
    v87(v107, v78);
    sub_1E47738B8(v108, &qword_1ECF7C7E0, &qword_1E4881BD0);
    sub_1E47738B8(v80, &qword_1ECF7C7E0, &qword_1E4881BD0);
    sub_1E47738B8(v86, &qword_1ECF7C7E8, &unk_1E487E2D0);
    v87(v102, v78);
    sub_1E477A484(v85, 0);
    sub_1E47738B8(v101, &qword_1ECF7C7E0, &qword_1E4881BD0);
  }
}

uint64_t sub_1E4827A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E482B2EC(a1, a2, type metadata accessor for Event);
  v4 = type metadata accessor for Event(0);
  (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
  KeyPath = swift_getKeyPath();
  v6 = type metadata accessor for ConflictEventTitleText(0);
  *(a2 + v6[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v7 = swift_getKeyPath();
  *(a2 + v6[7]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  v8 = swift_getKeyPath();

  v10 = a2 + v6[6];
  *v10 = v7;
  *(v10 + 8) = 0;
  v11 = a2 + v6[8];
  *v11 = v8;
  *(v11 + 8) = 0;
  return result;
}

uint64_t sub_1E4827BFC@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = sub_1E487732C();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v47[0] = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E487725C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47[1] = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D500, &qword_1E4881B68);
  v51 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v50 = v47 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D508, &qword_1E4881B70);
  MEMORY[0x1EEE9AC00](v52);
  v8 = v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D510, &qword_1E4881B78);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v47 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D518, &qword_1E4881B80);
  MEMORY[0x1EEE9AC00](v53);
  v13 = v47 - v12;
  v14 = sub_1E4877CCC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v47 - v19;
  v21 = v1;
  sub_1E4825A98((v47 - v19));
  sub_1E4877CAC();
  sub_1E482B964(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v22 = sub_1E4878EAC();
  v23 = *(v15 + 8);
  v23(v18, v14);
  result = (v23)(v20, v14);
  if (v22)
  {
    *v11 = sub_1E4877F6C();
    *(v11 + 1) = 0x4014000000000000;
    v11[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D528, &qword_1E4881B90);
    sub_1E4826358(v21, &v11[*(v25 + 44)]);
    v26 = sub_1E487813C();
    if (sub_1E4825CA0())
    {
      sub_1E4826000();
    }

    sub_1E4877B0C();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    sub_1E477372C(v11, v13, &qword_1ECF7D510, &qword_1E4881B78);
    v35 = &v13[*(v53 + 36)];
    *v35 = v26;
    *(v35 + 1) = v28;
    *(v35 + 2) = v30;
    *(v35 + 3) = v32;
    *(v35 + 4) = v34;
    v35[40] = 0;
    sub_1E4773850(v13, v8, &qword_1ECF7D518, &qword_1E4881B80);
    swift_storeEnumTagMultiPayload();
    sub_1E482B9B4();
    sub_1E4773680(&qword_1EE2B1090, &qword_1ECF7D500, &qword_1E4881B68, MEMORY[0x1E697CD08]);
    sub_1E487803C();
    return sub_1E47738B8(v13, &qword_1ECF7D518, &qword_1E4881B80);
  }

  else
  {
    v36 = *v21;
    if (*(*v21 + 16))
    {
      v37 = v21;
      v38 = type metadata accessor for Event(0);
      v39 = v36 + *(v38 + 20);
      v41 = v48;
      v40 = v49;
      v42 = v47[0];
      (*(v48 + 16))(v47[0], v39 + ((*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80)), v49);
      sub_1E4877A6C();
      v43 = (*(v41 + 8))(v42, v40);
      MEMORY[0x1EEE9AC00](v43);
      v47[-2] = v37;
      sub_1E482B9B4();
      v44 = v50;
      sub_1E487831C();
      v45 = v51;
      v46 = v54;
      (*(v51 + 16))(v8, v44, v54);
      swift_storeEnumTagMultiPayload();
      sub_1E4773680(&qword_1EE2B1090, &qword_1ECF7D500, &qword_1E4881B68, MEMORY[0x1E697CD08]);
      sub_1E487803C();
      return (*(v45 + 8))(v44, v46);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E482829C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D510, &qword_1E4881B78);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v6 = sub_1E4877F6C();
  *(v6 + 1) = 0x4014000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D528, &qword_1E4881B90);
  sub_1E4826358(a1, &v6[*(v7 + 44)]);
  v8 = sub_1E487813C();
  if (sub_1E4825CA0())
  {
    sub_1E4826000();
  }

  sub_1E4877B0C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1E477372C(v6, a2, &qword_1ECF7D510, &qword_1E4881B78);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D518, &qword_1E4881B80);
  v18 = a2 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_1E4828454@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for ConflictEventTitleText(0);
  sub_1E4773850(v1 + *(v10 + 20), v9, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487893C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E482865C()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ConflictEventTitleText(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1E48287B4@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for ConflictEventTitleText(0);
  sub_1E4773850(v1 + *(v10 + 28), v9, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E48289BC()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ConflictEventTitleText(0) + 32));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1E4828B0C()
{
  v0 = sub_1E48782AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1E482865C())
  {
    sub_1E48782BC();
  }

  else
  {
    sub_1E48781EC();
  }

  (*(v1 + 104))(v3, *MEMORY[0x1E6980EA0], v0);
  sub_1E48782CC();

  (*(v1 + 8))(v3, v0);
  v4 = sub_1E48781FC();

  return v4;
}

uint64_t sub_1E4828C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v68 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4D0, &qword_1E48819D0);
  MEMORY[0x1EEE9AC00](v65);
  v3 = &v57 - v2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4D8, &qword_1E48819D8);
  MEMORY[0x1EEE9AC00](v66);
  v5 = &v57 - v4;
  v6 = sub_1E487893C();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v60 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v57 - v9;
  v10 = sub_1E48782AC();
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4E0, &qword_1E48819E0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v64 = &v57 - v21;
  sub_1E4878D2C();
  v63 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = v68;
  sub_1E4773850(v68, v15, &qword_1ECF7B950, &unk_1E487AE90);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1E47738B8(v15, &qword_1ECF7B950, &unk_1E487AE90);
    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    v69 = sub_1E48771EC();
    v70 = v23;
    sub_1E477A374(v69, v23, v24);
    v25 = sub_1E487848C();
    v27 = v26;
    v29 = v28;
    v30 = sub_1E482865C();
    v31 = (v58 + 104);
    v32 = (v58 + 8);
    if (v30)
    {
      sub_1E48782BC();
    }

    else
    {
      sub_1E48781EC();
    }

    (*v31)(v12, *MEMORY[0x1E6980EA0], v10);
    sub_1E48782CC();

    (*v32)(v12, v10);
    v36 = sub_1E487842C();
    v38 = v37;
    v40 = v39;
    v58 = v41;

    sub_1E477A3C8(v25, v27, v29 & 1);

    v42 = v59;
    sub_1E4828454(v59);
    v43 = v60;
    sub_1E487892C();
    v44 = sub_1E48788FC();
    v45 = *(v61 + 8);
    v46 = v43;
    v47 = v62;
    v45(v46, v62);
    v45(v42, v47);
    if (v44)
    {
      sub_1E48786EC();
    }

    else
    {
      sub_1E48786FC();
    }

    v48 = sub_1E48783FC();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    sub_1E477A3C8(v36, v38, v40 & 1);

    KeyPath = swift_getKeyPath();
    *v3 = v48;
    *(v3 + 1) = v50;
    v3[16] = v52 & 1;
    *(v3 + 3) = v54;
    *(v3 + 4) = KeyPath;
    *(v3 + 5) = 1;
    v3[48] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
    sub_1E4773680(&qword_1EE2B0FD8, &qword_1ECF7D4D8, &qword_1E48819D8, MEMORY[0x1E6981800]);
    sub_1E477A490();
    v35 = v64;
    sub_1E487803C();
  }

  else
  {
    sub_1E482B284(v15, v19, type metadata accessor for Event);
    v33 = *(sub_1E48289BC() + 72);

    *v5 = sub_1E4877F6C();
    *(v5 + 1) = v33;
    v5[16] = 0;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4E8, &qword_1E4881A18);
    sub_1E4829424(v19, v22, &v5[*(v34 + 44)]);
    sub_1E4773850(v5, v3, &qword_1ECF7D4D8, &qword_1E48819D8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
    sub_1E4773680(&qword_1EE2B0FD8, &qword_1ECF7D4D8, &qword_1E48819D8, MEMORY[0x1E6981800]);
    sub_1E477A490();
    v35 = v64;
    sub_1E487803C();
    sub_1E47738B8(v5, &qword_1ECF7D4D8, &qword_1E48819D8);
    sub_1E482BB78(v19, type metadata accessor for Event);
  }

  sub_1E477372C(v35, v67, &qword_1ECF7D4E0, &qword_1E48819E0);
}

uint64_t sub_1E4829424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a2;
  v98 = a1;
  v93 = a3;
  v88 = sub_1E48782AC();
  v86 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Event(0);
  MEMORY[0x1EEE9AC00](v81);
  v89 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for NarrowEventTitleText(0);
  v5 = MEMORY[0x1EEE9AC00](v90);
  v92 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v76 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v76 - v10;
  v78 = sub_1E4877B3C();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = (&v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1E487893C();
  v94 = *(v13 - 8);
  v95 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v76 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v76 - v20);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60);
  MEMORY[0x1EEE9AC00](v79);
  v23 = &v76 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v82 = *(v24 - 8);
  v83 = v24;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v80 = &v76 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9D0, &qword_1E487AC00);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v85 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v97 = &v76 - v32;
  sub_1E4878D2C();
  v84 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = *(v98 + *(v81 + 56));
  v91 = v11;
  if (v33 == 6 || v33 == 7)
  {
    sub_1E4878BDC();
    v34 = sub_1E487874C();
    v35 = (v21 + *(v19 + 36));
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v37 = *MEMORY[0x1E69816D0];
    v38 = sub_1E487877C();
    (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
    *v35 = swift_getKeyPath();
    *v21 = v34;
    v39 = sub_1E4828B0C();
    KeyPath = swift_getKeyPath();
    sub_1E477372C(v21, v23, &qword_1ECF7B910, &unk_1E487E050);
    v41 = &v23[*(v79 + 36)];
    *v41 = KeyPath;
    v41[1] = v39;
    sub_1E4828454(v18);
    sub_1E487892C();
    LOBYTE(KeyPath) = sub_1E48788FC();
    v42 = v95;
    v43 = *(v94 + 8);
    v43(v16, v95);
    v43(v18, v42);
    if (KeyPath)
    {
      v44 = v76;
      sub_1E48287B4(v76);
      v45 = sub_1E476EA20(v98, v44);
      (*(v77 + 8))(v44, v78);
    }

    else
    {
      v45 = sub_1E48786FC();
    }

    v46 = v86;
    v48 = v82;
    v47 = v83;
    v49 = swift_getKeyPath();
    sub_1E477372C(v23, v27, &qword_1ECF7B918, &unk_1E487AA60);
    v50 = &v27[*(v47 + 36)];
    *v50 = v49;
    v50[1] = v45;
    v51 = v27;
    v52 = v80;
    sub_1E477372C(v51, v80, &qword_1ECF7B920, &unk_1E487DCF0);
    v53 = v52;
    v54 = v97;
    sub_1E477372C(v53, v97, &qword_1ECF7B920, &unk_1E487DCF0);
    (*(v48 + 56))(v54, 0, 1, v47);
  }

  else
  {
    (*(v82 + 56))(v97, 1, 1, v83);
    v46 = v86;
  }

  v55 = v89;
  sub_1E482B2EC(v98, v89, type metadata accessor for Event);
  v56 = (v46 + 104);
  v57 = (v46 + 8);
  if (sub_1E482865C())
  {
    sub_1E48782BC();
  }

  else
  {
    sub_1E48781EC();
  }

  v59 = v87;
  v58 = v88;
  (*v56)(v87, *MEMORY[0x1E6980EA0], v88);
  v60 = sub_1E48782CC();

  (*v57)(v59, v58);
  sub_1E4828454(v18);
  sub_1E487892C();
  v61 = sub_1E48788FC();
  v62 = *(v94 + 8);
  v63 = v16;
  v64 = v95;
  v62(v63, v95);
  v62(v18, v64);
  if (v61)
  {
    v65 = 0;
  }

  else
  {
    v65 = sub_1E48786FC();
  }

  v66 = v91;
  v67 = swift_getKeyPath();
  v68 = v90;
  *&v9[*(v90 + 32)] = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  sub_1E482B284(v55, v9, type metadata accessor for Event);
  *&v9[v68[5]] = v60;
  v69 = &v9[v68[6]];
  *v69 = 1;
  v69[8] = 0;
  *&v9[v68[7]] = v65;
  sub_1E482B284(v9, v66, type metadata accessor for NarrowEventTitleText);
  v70 = v97;
  v71 = v85;
  sub_1E4773850(v97, v85, &qword_1ECF7B9D0, &qword_1E487AC00);
  v72 = v92;
  sub_1E482B2EC(v66, v92, type metadata accessor for NarrowEventTitleText);
  v73 = v93;
  sub_1E4773850(v71, v93, &qword_1ECF7B9D0, &qword_1E487AC00);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4F0, &unk_1E4881A58);
  sub_1E482B2EC(v72, v73 + *(v74 + 48), type metadata accessor for NarrowEventTitleText);
  sub_1E482BB78(v66, type metadata accessor for NarrowEventTitleText);
  sub_1E47738B8(v70, &qword_1ECF7B9D0, &qword_1E487AC00);
  sub_1E482BB78(v72, type metadata accessor for NarrowEventTitleText);
  sub_1E47738B8(v71, &qword_1ECF7B9D0, &qword_1E487AC00);
}

uint64_t sub_1E4829E10@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1E4877FBC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4C8, &qword_1E48819C8);
  return sub_1E4828C3C(v2, a2 + *(v4 + 44));
}

uint64_t sub_1E4829E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v45 = sub_1E48782AC();
  v10 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E4877F1C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E482B354(a1, a2);
  v47 = v17;
  sub_1E477A374(v46, v17, v18);
  v19 = sub_1E487848C();
  v42 = v20;
  v43 = v19;
  v22 = v21;
  v44 = v23;
  if ((a4 & 1) == 0)
  {

    v25 = sub_1E4878DDC();
    v26 = sub_1E48780FC();
    sub_1E4877AAC(v25, &dword_1E475C000, v26, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(a3, 0);
    (*(v14 + 8))(v16, v13);
    if (v46 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E48782EC();
    v27 = v45;
    (*(v10 + 104))(v12, *MEMORY[0x1E6980EA0], v45);
    sub_1E48782CC();

    (*(v10 + 8))(v12, v27);
    sub_1E48781FC();

    goto LABEL_6;
  }

  if (a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E48782FC();
  v24 = v45;
  (*(v10 + 104))(v12, *MEMORY[0x1E6980EA0], v45);
  sub_1E48782CC();

  (*(v10 + 8))(v12, v24);
LABEL_6:
  v29 = v42;
  v28 = v43;
  v30 = sub_1E487842C();
  v32 = v31;
  v34 = v33;

  sub_1E477A3C8(v28, v29, v22 & 1);

  sub_1E48786EC();
  v35 = sub_1E48783FC();
  v37 = v36;
  LOBYTE(v28) = v38;
  v40 = v39;

  sub_1E477A3C8(v30, v32, v34 & 1);

  result = swift_getKeyPath();
  *a5 = v35;
  *(a5 + 8) = v37;
  *(a5 + 16) = v28 & 1;
  *(a5 + 24) = v40;
  *(a5 + 32) = result;
  *(a5 + 40) = 1;
  *(a5 + 48) = 0;
  return result;
}

uint64_t sub_1E482A218@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for ConflictTimeText(0);
  sub_1E4773850(v1 + *(v10 + 24), v9, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E482A420()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ConflictTimeText(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1E482A588@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v53 = sub_1E48782AC();
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E487753C();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = (v49 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v49 - v13;
  v57 = sub_1E487732C();
  v15 = *(v57 - 8);
  v16 = MEMORY[0x1EEE9AC00](v57);
  v18 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v49 - v19;
  v21 = type metadata accessor for Utils();
  v22 = *v1;
  result = sub_1E4870504(*v1);
  v24 = *(v22 + 16);
  v51 = v15;
  if (result)
  {
    if (v24)
    {
      v49[1] = v21;
      v25 = type metadata accessor for Event(0);
      v26 = v25 - 8;
      v27 = v22 + ((*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80));
      v28 = *(v15 + 16);
      v29 = v15;
      v30 = v57;
      v28(v20, v27 + *(v25 + 20), v57);
      v28(v14, v27 + *(v26 + 32), v30);
      (*(v29 + 56))(v14, 0, 1, v30);
      sub_1E482A218(v8);
      v31 = sub_1E482A420();
      v32 = (v50 + 104);
      v33 = (v50 + 8);
      if (v31)
      {
        sub_1E48782BC();
      }

      else
      {
        sub_1E48782FC();
      }

      v42 = v52;
      v41 = v53;
      (*v32)(v52, *MEMORY[0x1E6980EA0], v53);
      v43 = sub_1E48782CC();

      (*v33)(v42, v41);
      v44 = type metadata accessor for ConflictTimeText(0);
      sub_1E485CFF8(v20, v14, v1 + *(v44 + 20), v43, v54);
LABEL_12:

      (*(v55 + 8))(v8, v56);
      sub_1E47738B8(v14, &unk_1ECF7C880, &qword_1E4882710);
      return (*(v51 + 8))(v20, v57);
    }

    __break(1u);
  }

  else if (v24)
  {
    v34 = type metadata accessor for Event(0);
    v35 = *(v15 + 16);
    v36 = v15;
    v37 = v57;
    v35(v18, v22 + *(v34 + 20) + ((*(*(v34 - 8) + 80) + 32) & ~*(*(v34 - 8) + 80)), v57);
    (*(v36 + 56))(v12, 1, 1, v37);
    sub_1E482A218(v6);
    v38 = sub_1E482A420();
    v39 = (v50 + 104);
    v40 = (v50 + 8);
    if (v38)
    {
      sub_1E48782BC();
    }

    else
    {
      sub_1E48782FC();
    }

    v46 = v52;
    v45 = v53;
    (*v39)(v52, *MEMORY[0x1E6980EA0], v53);
    v47 = sub_1E48782CC();

    (*v40)(v46, v45);
    v48 = type metadata accessor for ConflictTimeText(0);
    sub_1E485CFF8(v18, v12, v1 + *(v48 + 20), v47, v54);
    v8 = v6;
    v14 = v12;
    v20 = v18;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

BOOL sub_1E482AB1C()
{
  v1 = sub_1E487753C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v34 - v9);
  v11 = sub_1E487732C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v0;
  result = sub_1E4870504(*v0);
  v17 = *(v15 + 16);
  v36 = v2;
  v37 = v1;
  v35 = v14;
  if (result)
  {
    if (v17)
    {
      v18 = type metadata accessor for Event(0);
      v19 = v18 - 8;
      v20 = v15 + ((*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80));
      v21 = *(v18 + 20);
      v22 = v14;
      v23 = v10;
      v24 = *(v12 + 16);
      v24(v22, v20 + v21, v11);
      v24(v10, v20 + *(v19 + 32), v11);
      v25 = *(v12 + 56);
      v25(v10, 0, 1, v11);
      v26 = type metadata accessor for ConflictTimeText(0);
      v24(v8, v0 + *(v26 + 20), v11);
      v25(v8, 0, 1, v11);
LABEL_6:
      sub_1E482A218(v4);
      v32 = v35;
      v33 = sub_1E486D148(v35, v23, v8, v4);
      (*(v36 + 8))(v4, v37);
      sub_1E47738B8(v8, &unk_1ECF7C880, &qword_1E4882710);
      sub_1E47738B8(v23, &unk_1ECF7C880, &qword_1E4882710);
      (*(v12 + 8))(v32, v11);
      return v33;
    }

    __break(1u);
  }

  else if (v17)
  {
    v27 = type metadata accessor for Event(0);
    v28 = v15 + *(v27 + 20);
    v29 = *(v12 + 16);
    v29(v14, v28 + ((*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80)), v11);
    v23 = v10;
    v30 = *(v12 + 56);
    v30(v23, 1, 1, v11);
    v31 = type metadata accessor for ConflictTimeText(0);
    v29(v8, v0 + *(v31 + 20), v11);
    v30(v8, 0, 1, v11);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E482AF30@<X0>(uint64_t a1@<X8>)
{
  v33[1] = a1;
  v1 = sub_1E48782AC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E487719C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1E482A588(v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1E487847C();
  v9 = v8;
  v11 = v10;
  if (sub_1E482A420())
  {
    sub_1E48782BC();
  }

  else
  {
    sub_1E48782FC();
  }

  (*(v2 + 104))(v4, *MEMORY[0x1E6980EA0], v1);
  sub_1E48782CC();

  (*(v2 + 8))(v4, v1);
  v12 = sub_1E487842C();
  v14 = v13;
  v16 = v15;

  sub_1E477A3C8(v7, v9, v11 & 1);

  if (sub_1E482A420())
  {
    sub_1E48786FC();
  }

  else
  {
    sub_1E48786EC();
  }

  v17 = sub_1E48783FC();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v33[0] = v22;

  sub_1E477A3C8(v12, v14, v16 & 1);

  KeyPath = swift_getKeyPath();
  v36 = v17;
  v37 = v19;
  v21 &= 1u;
  v38 = v21;
  v39 = v23;
  v40 = KeyPath;
  v41 = 1;
  v42 = 0;
  v34 = sub_1E482AB1C();
  v35 = v25;
  sub_1E477A374(v34, v25, v26);
  v27 = sub_1E487848C();
  v29 = v28;
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  sub_1E487856C();
  sub_1E477A3C8(v27, v29, v31 & 1);

  sub_1E477A3C8(v17, v19, v21);
}

uint64_t sub_1E482B284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E482B2EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E482B354(uint64_t a1, uint64_t a2)
{
  if (!a1 && a2 >= 1)
  {
    if (qword_1EE2B4848 == -1)
    {
LABEL_4:
      sub_1E48771EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
      v4 = swift_allocObject();
      v5 = MEMORY[0x1E69E6530];
      *(v4 + 16) = xmmword_1E487A7E0;
      v6 = MEMORY[0x1E69E65A8];
      *(v4 + 56) = v5;
      *(v4 + 64) = v6;
      *(v4 + 32) = a2;
      v7 = sub_1E4878BAC();

      return v7;
    }

LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  sub_1E48771EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E487A7E0;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = MEMORY[0x1E69E65A8];
  *(v9 + 56) = MEMORY[0x1E69E6530];
  *(v9 + 64) = v10;
  *(v9 + 32) = a1 + a2;
  v11 = sub_1E4878BAC();

  return v11;
}

unint64_t sub_1E482B5A4()
{
  result = qword_1EE2B4738;
  if (!qword_1EE2B4738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C670, &qword_1E487F240);
    sub_1E477A490();
    sub_1E482B964(&qword_1EE2B10A8, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B4738);
  }

  return result;
}

void sub_1E482B6A8(uint64_t a1)
{
  sub_1E482B8E4(319, &qword_1EE2B0DE0, type metadata accessor for Event, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1E487732C();
    if (v2 <= 0x3F)
    {
      sub_1E482B8E4(319, &qword_1EE2B1690, MEMORY[0x1E6985840], MEMORY[0x1E697DCC8]);
      if (v3 <= 0x3F)
      {
        sub_1E482B8E4(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
        if (v4 <= 0x3F)
        {
          sub_1E478305C();
          if (v5 <= 0x3F)
          {
            sub_1E482B8E4(319, &qword_1EE2B1698, MEMORY[0x1E6985780], MEMORY[0x1E697DCC8]);
            if (v6 <= 0x3F)
            {
              sub_1E482B8E4(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
              if (v7 <= 0x3F)
              {
                sub_1E482B8E4(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
                if (v8 <= 0x3F)
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

void sub_1E482B8E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1E482B964(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E482B9B4()
{
  result = qword_1EE2B1368;
  if (!qword_1EE2B1368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D518, &qword_1E4881B80);
    sub_1E482BA40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1368);
  }

  return result;
}

unint64_t sub_1E482BA40()
{
  result = qword_1EE2B1480;
  if (!qword_1EE2B1480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D510, &qword_1E4881B78);
    v3 = sub_1E4773680(&qword_1EE2B0F70, &qword_1ECF7D520, &qword_1E4881B88, MEMORY[0x1E6981800]);
    sub_1E477A28C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1480);
  }

  return result;
}

uint64_t sub_1E482BAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NarrowConflictsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E4826984(a1, v6, a2);
}

uint64_t sub_1E482BB78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E482BBD8()
{
  result = qword_1EE2B11E8;
  if (!qword_1EE2B11E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D558, &unk_1E4881CF0);
    sub_1E482B9B4();
    sub_1E4773680(&qword_1EE2B1090, &qword_1ECF7D500, &qword_1E4881B68, MEMORY[0x1E697CD08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11E8);
  }

  return result;
}

uint64_t type metadata accessor for PlatterEventTimeText(uint64_t a1)
{
  result = qword_1ECF7D560;
  if (!qword_1ECF7D560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E482BD04(uint64_t a1)
{
  type metadata accessor for Event(319);
  if (v1 <= 0x3F)
  {
    sub_1E47F5B1C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E482BDBC@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for PlatterEventTimeText(0);
  sub_1E482CB38(v1 + *(v10 + 28), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E482BFAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = v57 - v4;
  v5 = sub_1E487757C();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487719C();
  v66 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v65 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = v57 - v10;
  v11 = sub_1E487720C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E487753C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for Event(0);
  v19 = *(v2 + *(v18 + 48));
  v20 = *(v18 + 24);
  v21 = v17;
  sub_1E482BDBC(v17);
  v22 = type metadata accessor for PlatterEventTimeText(0);
  if (v19 == 1)
  {
    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    sub_1E48771EC();
    sub_1E48771FC();
    sub_1E48771AC();
    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    v58 = v15;
    v59 = v14;
    v60 = v7;
    v24 = *(v2 + *(v22 + 20));
    v57[1] = v20;
    v25 = sub_1E48774CC();
    v26 = objc_opt_self();
    v27 = sub_1E48772BC();
    v57[3] = v2;
    v28 = sub_1E48772BC();
    v29 = sub_1E487748C();
    v30 = v25;
    v31 = [v26 timeIntervalAttributedTextWithStartDate:v27 endDate:v28 calendar:v29 keepRedundantDesignator:(v25 & 1) == 0];

    v32 = [v31 string];
    sub_1E4878BDC();

    sub_1E48771FC();
    v33 = v68;
    v57[2] = v13;
    v34 = sub_1E48771AC();
    aBlock[0] = v24;
    sub_1E47C4180(v34, v35, v36);

    sub_1E48771BC();
    v37 = *MEMORY[0x1E6993360];
    v38 = [v31 length];
    v39 = swift_allocObject();
    *(v39 + 16) = v33;
    *(v39 + 24) = v24;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1E47C41D4;
    *(v40 + 24) = v39;
    aBlock[4] = sub_1E47C41DC;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E48373C0;
    aBlock[3] = &block_descriptor_2;
    v41 = _Block_copy(aBlock);

    [v31 enumerateAttribute:v37 inRange:0 options:v38 usingBlock:{0, v41}];

    _Block_release(v41);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if (v31)
    {
      __break(1u);
    }

    else
    {
      v42 = v60;
      v43 = v66;
      if ((v30 & 1) == 0)
      {
        v44 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
        v45 = sub_1E487748C();
        [v44 setCalendar_];

        v46 = v61;
        sub_1E487750C();
        v47 = sub_1E487756C();
        (*(v62 + 8))(v46, v63);
        [v44 setTimeZone_];

        v48 = v64;
        v63 = v21;
        sub_1E48774EC();
        v49 = sub_1E487744C();
        v50 = *(v49 - 8);
        v51 = 0;
        if ((*(v50 + 48))(v48, 1, v49) != 1)
        {
          v51 = sub_1E48773DC();
          (*(v50 + 8))(v48, v49);
        }

        [v44 setLocale_];

        v52 = sub_1E4878B9C();
        [v44 setLocalizedDateFormatFromTemplate_];

        v53 = v65;
        sub_1E487712C();
        sub_1E482CBC0(&qword_1EE2B4670, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
        sub_1E487716C();
        v54 = *(v43 + 8);
        v54(v53, v42);
        v55 = sub_1E48772BC();
        v56 = [v44 stringFromDate_];

        sub_1E4878BDC();
        sub_1E48771FC();
        sub_1E48771AC();
        sub_1E487716C();

        v54(v53, v42);
        v21 = v63;
      }

      (*(v58 + 8))(v21, v59);
      return (*(v43 + 32))(v67, v68, v42);
    }
  }

  return result;
}