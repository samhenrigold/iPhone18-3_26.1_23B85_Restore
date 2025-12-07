unint64_t sub_1DB2A1A84()
{
  result = qword_1ECC293A0;
  if (!qword_1ECC293A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC293A0);
  }

  return result;
}

unint64_t sub_1DB2A1AE8()
{
  result = qword_1ECC293A8;
  if (!qword_1ECC293A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC293A8);
  }

  return result;
}

unint64_t sub_1DB2A1B84()
{
  result = qword_1ECC293C0[0];
  if (!qword_1ECC293C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC293C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19OnDeviceStorageCore12QueryClausesV11GroupClauseVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1DB2A1CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB2A1D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1DB2A1DB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 137))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 136);
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

uint64_t sub_1DB2A1DFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 137) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 137) = 0;
    }

    if (a2)
    {
      *(result + 136) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy107_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 91) = *(a2 + 91);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1DB2A1EAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 107))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 106);
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

uint64_t sub_1DB2A1EF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 106) = 0;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 107) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 107) = 0;
    }

    if (a2)
    {
      *(result + 106) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DB2A1FB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_1DB2A2000(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB2A208C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DB2A20D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB2A2130(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1DB2A2178(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QueryClauses.LimitClause(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for QueryClauses.LimitClause(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1DB2A2258(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DB2A22A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB2A2390()
{
  result = qword_1ECC29448;
  if (!qword_1ECC29448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29448);
  }

  return result;
}

unint64_t sub_1DB2A23E8()
{
  result = qword_1ECC29450;
  if (!qword_1ECC29450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29450);
  }

  return result;
}

unint64_t sub_1DB2A2440()
{
  result = qword_1ECC29458;
  if (!qword_1ECC29458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29458);
  }

  return result;
}

unint64_t sub_1DB2A24B4()
{
  result = qword_1ECC29460;
  if (!qword_1ECC29460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29460);
  }

  return result;
}

unint64_t sub_1DB2A250C()
{
  result = qword_1ECC29468;
  if (!qword_1ECC29468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29468);
  }

  return result;
}

unint64_t sub_1DB2A2564()
{
  result = qword_1ECC29470;
  if (!qword_1ECC29470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29470);
  }

  return result;
}

unint64_t sub_1DB2A25BC()
{
  result = qword_1ECC29478;
  if (!qword_1ECC29478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29478);
  }

  return result;
}

unint64_t sub_1DB2A2614()
{
  result = qword_1ECC29480;
  if (!qword_1ECC29480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29480);
  }

  return result;
}

unint64_t sub_1DB2A266C()
{
  result = qword_1ECC29488;
  if (!qword_1ECC29488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29488);
  }

  return result;
}

unint64_t sub_1DB2A26C4()
{
  result = qword_1ECC29490;
  if (!qword_1ECC29490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29490);
  }

  return result;
}

unint64_t sub_1DB2A271C()
{
  result = qword_1ECC29498;
  if (!qword_1ECC29498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29498);
  }

  return result;
}

unint64_t sub_1DB2A2774()
{
  result = qword_1EE140098;
  if (!qword_1EE140098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140098);
  }

  return result;
}

unint64_t sub_1DB2A27CC()
{
  result = qword_1EE1400A0;
  if (!qword_1EE1400A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1400A0);
  }

  return result;
}

unint64_t sub_1DB2A2824()
{
  result = qword_1EE13F320;
  if (!qword_1EE13F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F320);
  }

  return result;
}

unint64_t sub_1DB2A287C()
{
  result = qword_1EE13F328;
  if (!qword_1EE13F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F328);
  }

  return result;
}

unint64_t sub_1DB2A28D4()
{
  result = qword_1ECC294A0;
  if (!qword_1ECC294A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC294A0);
  }

  return result;
}

unint64_t sub_1DB2A292C()
{
  result = qword_1ECC294A8;
  if (!qword_1ECC294A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC294A8);
  }

  return result;
}

unint64_t sub_1DB2A2984()
{
  result = qword_1ECC294B0;
  if (!qword_1ECC294B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC294B0);
  }

  return result;
}

unint64_t sub_1DB2A29DC()
{
  result = qword_1ECC294B8;
  if (!qword_1ECC294B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC294B8);
  }

  return result;
}

unint64_t sub_1DB2A2A34()
{
  result = qword_1EE13F710;
  if (!qword_1EE13F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F710);
  }

  return result;
}

unint64_t sub_1DB2A2A8C()
{
  result = qword_1EE13F718;
  if (!qword_1EE13F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F718);
  }

  return result;
}

unint64_t sub_1DB2A2B1C()
{
  result = qword_1ECC294C0;
  if (!qword_1ECC294C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC294C0);
  }

  return result;
}

unint64_t sub_1DB2A2B74()
{
  result = qword_1ECC294C8;
  if (!qword_1ECC294C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC294C8);
  }

  return result;
}

unint64_t sub_1DB2A2BCC()
{
  result = qword_1ECC294D0;
  if (!qword_1ECC294D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC294D0);
  }

  return result;
}

unint64_t sub_1DB2A2C24()
{
  result = qword_1ECC294D8;
  if (!qword_1ECC294D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC294D8);
  }

  return result;
}

unint64_t sub_1DB2A2C7C()
{
  result = qword_1EE13F308;
  if (!qword_1EE13F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F308);
  }

  return result;
}

unint64_t sub_1DB2A2CD4()
{
  result = qword_1EE13F310;
  if (!qword_1EE13F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F310);
  }

  return result;
}

uint64_t sub_1DB2A2D28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7361696C61 && a2 == 0xE500000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6573616261746164 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB2BB924();

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

unint64_t sub_1DB2A2E3C()
{
  result = qword_1ECC294E0;
  if (!qword_1ECC294E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC294E0);
  }

  return result;
}

unint64_t sub_1DB2A2E90()
{
  result = qword_1ECC294E8;
  if (!qword_1ECC294E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC294E8);
  }

  return result;
}

uint64_t objectdestroyTm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

OnDeviceStorageCore::WithClauses __swiftcall WithClauses.init(recursive:clauses:)(Swift::Bool recursive, Swift::OpaquePointer clauses)
{
  *v2 = recursive;
  *(v2 + 8) = clauses;
  result.clauses = clauses;
  result.recursive = recursive;
  return result;
}

uint64_t WithClauses.Clause.init(alias:columns:hint:query:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  v6 = *(a1 + 144);
  *(a5 + 128) = *(a1 + 128);
  *(a5 + 144) = v6;
  *(a5 + 160) = *(a1 + 160);
  v7 = *(a1 + 176);
  v8 = *(a1 + 80);
  *(a5 + 64) = *(a1 + 64);
  *(a5 + 80) = v8;
  v9 = *(a1 + 112);
  *(a5 + 96) = *(a1 + 96);
  *(a5 + 112) = v9;
  v10 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v10;
  v11 = *(a1 + 48);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v11;
  *(a5 + 176) = v7;
  *(a5 + 184) = a2;
  *(a5 + 192) = v5;
  return sub_1DB1355D0(a4, a5 + 200);
}

void sub_1DB2A3060(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v8 = a2 + 16;
  v7 = *(a2 + 16);
  (v7)(v42);
  v9 = v42[22];

  sub_1DB17181C(v42);
  v10 = *(v9 + 16);

  if (v10)
  {
    v33 = v7;
    v7(v41, a1, v4);
    v11 = v41[22];

    sub_1DB17181C(v41);
    v12 = *(v11 + 16);
    if (v12)
    {
      v28 = a1;
      v29 = v8;
      v30 = v3;
      v31 = v4;
      v32 = a3;
      v37 = MEMORY[0x1E69E7CC0];
      v34 = v12;
      sub_1DB1384B0(0, v12, 0);
      v13 = 0;
      v14 = v37;
      v15 = v11 + 32;
      while (v13 < *(v11 + 16))
      {
        sub_1DB175700(v15, v35);
        sub_1DB2A3700(v35, v38);
        sub_1DB17575C(v35);
        v37 = v14;
        v17 = *(v14 + 16);
        v16 = *(v14 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1DB1384B0((v16 > 1), v17 + 1, 1);
        }

        ++v13;
        v18 = v39;
        v19 = v40;
        v20 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
        MEMORY[0x1EEE9AC00](v20);
        v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v23 + 16))(v22);
        sub_1DB16412C(v17, v22, &v37, v18, v19);
        __swift_destroy_boxed_opaque_existential_1(v38);
        v14 = v37;
        v15 += 240;
        if (v34 == v13)
        {

          v4 = v31;
          a3 = v32;
          a1 = v28;
          goto LABEL_11;
        }
      }

      __break(1u);

      __break(1u);
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
LABEL_11:
      sub_1DB2B9A70(v14, v38);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1DB2BD5A0;
      v33(v35, a1, v4);
      sub_1DB17181C(v35);
      if (v36)
      {
        v25 = 0x4345522048544957;
      }

      else
      {
        v25 = 1213483351;
      }

      if (v36)
      {
        v26 = 0xEE00455649535255;
      }

      else
      {
        v26 = 0xE400000000000000;
      }

      *(v24 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
      *(v24 + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
      *(v24 + 32) = v25;
      *(v24 + 40) = v26;
      *(v24 + 48) = MEMORY[0x1E69E7CC0];
      sub_1DB164980(v38, v24 + 72);
      sub_1DB2B9A70(v24, a3);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      __swift_destroy_boxed_opaque_existential_1(v38);
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t QueryType.with(_:columns:recursive:hint:as:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = a1[9];
  v60 = a1[8];
  v61 = v14;
  v62 = a1[10];
  v63 = *(a1 + 22);
  v15 = a1[5];
  v56 = a1[4];
  v57 = v15;
  v16 = a1[7];
  v58 = a1[6];
  v59 = v16;
  v17 = a1[1];
  v52 = *a1;
  v53 = v17;
  v18 = a1[3];
  v54 = a1[2];
  v55 = v18;
  v19 = *a4;
  (*(*(a6 - 8) + 16))(a8, v8, a6);
  sub_1DB164980(a5, &v51);
  v47[8] = v60;
  v47[9] = v61;
  v47[10] = v62;
  v47[4] = v56;
  v47[5] = v57;
  v47[6] = v58;
  v47[7] = v59;
  v47[0] = v52;
  v47[1] = v53;
  v47[2] = v54;
  v47[3] = v55;
  v48 = v63;
  v49 = a2;
  v50 = v19;
  v20 = *(a7 + 16);
  sub_1DB175954(&v52, v46);

  v20(v64, a6, a7);
  sub_1DB17181C(v64);
  v21 = v65 | a3;
  v22 = *(a7 + 32);
  v23 = v22(v46, a6, a7);
  *(v24 + 168) = v21 & 1;
  v23(v46, 0);
  sub_1DB175700(v47, v46);
  v25 = v22(v45, a6, a7);
  v27 = v26;
  v28 = *(v26 + 176);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 176) = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_1DB158778(0, *(v28 + 2) + 1, 1, v28);
    *(v27 + 176) = v28;
  }

  v31 = *(v28 + 2);
  v30 = *(v28 + 3);
  if (v31 >= v30 >> 1)
  {
    v28 = sub_1DB158778((v30 > 1), v31 + 1, 1, v28);
    *(v27 + 176) = v28;
  }

  *(v28 + 2) = v31 + 1;
  v32 = &v28[240 * v31];
  v33 = v46[0];
  v34 = v46[2];
  *(v32 + 3) = v46[1];
  *(v32 + 4) = v34;
  *(v32 + 2) = v33;
  v35 = v46[3];
  v36 = v46[4];
  v37 = v46[6];
  *(v32 + 7) = v46[5];
  *(v32 + 8) = v37;
  *(v32 + 5) = v35;
  *(v32 + 6) = v36;
  v38 = v46[7];
  v39 = v46[8];
  v40 = v46[10];
  *(v32 + 11) = v46[9];
  *(v32 + 12) = v40;
  *(v32 + 9) = v38;
  *(v32 + 10) = v39;
  v41 = v46[11];
  v42 = v46[12];
  v43 = v46[14];
  *(v32 + 15) = v46[13];
  *(v32 + 16) = v43;
  *(v32 + 13) = v41;
  *(v32 + 14) = v42;
  v25(v45, 0);
  return sub_1DB17575C(v47);
}

double sub_1DB2A3700@<D0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v45 = *(a1 + 192);
  v3 = 0x4C4149524554414DLL;
  if (v45)
  {
    v3 = 0xD000000000000010;
  }

  v44 = v3;
  v4 = *(a1 + 23);
  if (v4)
  {
    sub_1DB2B9A70(v4, &v73);
    v49[0] = 0;
    v49[1] = 0xE000000000000000;
    MEMORY[0x1E1283490](40, 0xE100000000000000);
    v6 = *(&v74 + 1);
    v5 = v75;
    __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
    v43 = *(v5 + 24);
    v43(&v52, v6, v5);
    v7 = *(&v52 + 1);
    v8 = v52;

    MEMORY[0x1E1283490](v8, v7);

    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v9 = 0xE000000000000000;
    v43(&v52, v6, v5);
    v10 = v53;

    __swift_destroy_boxed_opaque_existential_1(&v73);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = a1[9];
  v81 = a1[8];
  v82 = v11;
  v83 = a1[10];
  v84 = *(a1 + 22);
  v12 = a1[5];
  v77 = a1[4];
  v78 = v12;
  v13 = a1[7];
  v79 = a1[6];
  v80 = v13;
  v14 = a1[1];
  v73 = *a1;
  v74 = v14;
  v15 = a1[3];
  v75 = a1[2];
  v76 = v15;
  sub_1DB25CF84();
  if (v9)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v17 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  }

  else
  {
    v10 = 0;
    v16 = 0;
    v17 = 0;
  }

  v56 = 0;
  v57 = v9;
  v58 = v10;
  v59 = v16;
  v60 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v64 = v18;
  v19 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v20 = v19;
  v61 = 21313;
  v62 = 0xE200000000000000;
  v65 = v19;
  v63 = MEMORY[0x1E69E7CC0];
  if (v45 == 2)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v22 = 0x80000001DB2D1470;
    if ((v45 & 1) == 0)
    {
      v22 = 0xEC00000044455A49;
    }

    v23 = MEMORY[0x1E69E7CC0];
    v24 = v18;
    v25 = v19;
    v21 = v44;
  }

  v66 = v21;
  v67 = v22;
  v68 = v23;
  v69 = v24;
  v70 = v25;
  v26 = *(a1 + 28);
  v27 = *(a1 + 29);
  v28 = __swift_project_boxed_opaque_existential_1(a1 + 25, v26);
  *(&v53 + 1) = v26;
  v54 = *(v27 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v52);
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_0, v28, v26);
  v71 = v18;
  v72 = v20;
  sub_1DB203564();
  __swift_destroy_boxed_opaque_existential_1(&v52);
  v30 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 232; i += 40)
  {
    sub_1DB2A4B1C(&v55[i], &v52);
    v47[0] = v52;
    v47[1] = v53;
    v48 = v54;
    if (*(&v53 + 1))
    {
      sub_1DB1355D0(v47, v49);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_1DB1573FC(0, v30[2] + 1, 1, v30);
        v85 = v30;
      }

      v34 = v30[2];
      v33 = v30[3];
      if (v34 >= v33 >> 1)
      {
        v30 = sub_1DB1573FC((v33 > 1), v34 + 1, 1, v30);
        v85 = v30;
      }

      v35 = v50;
      v36 = v51;
      v37 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
      MEMORY[0x1EEE9AC00](v37);
      v39 = &v42 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v40 + 16))(v39);
      sub_1DB200A54(v34, v39, &v85, v35, v36);
      __swift_destroy_boxed_opaque_existential_1(v49);
    }

    else
    {
      sub_1DB1648B4(v47);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  sub_1DB2B9A70(v30, v46);

  return result;
}

uint64_t MaterializationHint.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x4C4149524554414DLL;
  }
}

OnDeviceStorageCore::MaterializationHint_optional __swiftcall MaterializationHint.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB2A3CEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x4C4149524554414DLL;
  }

  if (v2)
  {
    v4 = 0xEC00000044455A49;
  }

  else
  {
    v4 = 0x80000001DB2D1470;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x4C4149524554414DLL;
  }

  if (*a2)
  {
    v6 = 0x80000001DB2D1470;
  }

  else
  {
    v6 = 0xEC00000044455A49;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB2BB924();
  }

  return v8 & 1;
}

uint64_t sub_1DB2A3DA0()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

double sub_1DB2A3E30(uint64_t a1)
{
  sub_1DB2BAE84();

  return result;
}

uint64_t sub_1DB2A3EAC(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB2A3F38(char *a2@<X8>)
{
  v3 = sub_1DB2BB6F4();

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

void sub_1DB2A3F98(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DB2D1470;
  v3 = 0x4C4149524554414DLL;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xEC00000044455A49;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1DB2A40A4()
{
  if (*v0)
  {
    return 0x73657375616C63;
  }

  else
  {
    return 0x7669737275636572;
  }
}

void sub_1DB2A40E4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7669737275636572 && a2 == 0xE900000000000065;
  if (v6 || (sub_1DB2BB924() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73657375616C63 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DB2BB924();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1DB2A41C8(uint64_t a1)
{
  v2 = sub_1DB2A4668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB2A4204(uint64_t a1)
{
  v2 = sub_1DB2A4668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WithClauses.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29508, &qword_1DB2D0A50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[0] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A4668();
  sub_1DB2BBA94();
  v11 = 0;
  sub_1DB2BB874();
  if (!v2)
  {
    v9[1] = v9[0];
    v10 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29510, &qword_1DB2D0A58);
    sub_1DB2A4710(&qword_1EE13E678, sub_1DB2A46BC, MEMORY[0x1E69E6300]);
    sub_1DB2BB8A4();
  }

  return (*(v5 + 8))(v7, v4);
}

void WithClauses.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29518, &qword_1DB2D0A60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A4668();
  sub_1DB2BBA84();
  if (!v2)
  {
    v13 = 0;
    v9 = sub_1DB2BB784();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29510, &qword_1DB2D0A58);
    v12 = 1;
    sub_1DB2A4710(&qword_1EE13E670, sub_1DB2A4788, MEMORY[0x1E69E6330]);
    sub_1DB2BB7B4();
    (*(v6 + 8))(v8, v5);
    v10 = v11[1];
    *a2 = v9 & 1;
    *(a2 + 8) = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DB2A4668()
{
  result = qword_1EE13F518;
  if (!qword_1EE13F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F518);
  }

  return result;
}

unint64_t sub_1DB2A46BC()
{
  result = qword_1EE13EC90;
  if (!qword_1EE13EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EC90);
  }

  return result;
}

uint64_t sub_1DB2A4710(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC29510, &qword_1DB2D0A58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB2A4788()
{
  result = qword_1EE13EC88;
  if (!qword_1EE13EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EC88);
  }

  return result;
}

unint64_t sub_1DB2A47E0()
{
  result = qword_1ECC29520;
  if (!qword_1ECC29520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29520);
  }

  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1DB2A48DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_1DB2A4924(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB2A49C4()
{
  result = qword_1ECC29538;
  if (!qword_1ECC29538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29538);
  }

  return result;
}

unint64_t sub_1DB2A4A1C()
{
  result = qword_1EE13F508;
  if (!qword_1EE13F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F508);
  }

  return result;
}

unint64_t sub_1DB2A4A74()
{
  result = qword_1EE13F510;
  if (!qword_1EE13F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F510);
  }

  return result;
}

unint64_t sub_1DB2A4AC8()
{
  result = qword_1ECC29540;
  if (!qword_1ECC29540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29540);
  }

  return result;
}

uint64_t sub_1DB2A4B1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB2A4B8C(uint64_t a1)
{
  v3 = v1[9];
  v27 = v1[8];
  v28 = v3;
  v29 = v1[10];
  v30 = *(v1 + 22);
  v4 = v1[5];
  v23 = v1[4];
  v24 = v4;
  v5 = v1[7];
  v25 = v1[6];
  v26 = v5;
  v6 = v1[1];
  v19 = *v1;
  v20 = v6;
  v7 = v1[3];
  v21 = v1[2];
  v22 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2C3A50;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 56) = v9;
  v10 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(inited + 32) = 0x4154205245544C41;
  *(inited + 64) = v10;
  v11 = MEMORY[0x1E69E7CC0];
  *(inited + 40) = 0xEB00000000454C42;
  *(inited + 48) = v11;
  sub_1DB25CF84();
  *(inited + 136) = v9;
  *(inited + 144) = v10;
  *(inited + 112) = 0x554C4F4320444441;
  *(inited + 120) = 0xEA00000000004E4DLL;
  *(inited + 128) = v11;
  sub_1DB164980(a1, inited + 152);
  sub_1DB2B9A70(inited, v16);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  v12 = v17;
  v13 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v14 = sub_1DB286324(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v14;
}

uint64_t TableBuilder.Dependency.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4F49544341204F4ELL;
  v3 = 0x4C4C554E20544553;
  v4 = 0x4146454420544553;
  if (v1 != 3)
  {
    v4 = 0x45444143534143;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5443495254534552;
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

uint64_t sub_1DB2A4E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = v3[3];
  v19[1] = v3[2];
  v19[2] = v7;
  v19[0] = v3[1];
  v8 = v7;
  sub_1DB2B53D0(v19, v18);
  v9 = sub_1DB2B995C(34, 0xE100000000000000, a1, a2);
  v11 = v10;
  if (*(&v8 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    *(inited + 56) = v13;
    v14 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
    *(inited + 64) = v14;
    *(inited + 32) = sub_1DB2B995C(34, 0xE100000000000000, v8, *(&v8 + 1));
    v15 = MEMORY[0x1E69E7CC0];
    *(inited + 40) = v16;
    *(inited + 48) = v15;
    *(inited + 96) = v13;
    *(inited + 104) = v14;
    *(inited + 72) = v9;
    *(inited + 80) = v11;
    *(inited + 88) = v15;
    sub_1DB2B9A70(inited, a3);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    return sub_1DB2B542C(v19);
  }

  else
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    a3[4] = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
    result = sub_1DB2B542C(v19);
    *a3 = v9;
    a3[1] = v11;
    a3[2] = MEMORY[0x1E69E7CC0];
  }

  return result;
}

Swift::String __swiftcall SchemaType.drop(ifExists:)(Swift::Bool ifExists)
{
  sub_1DB288D3C(0, v1, *(v2 + 8), v10);
  v4 = sub_1DB2A5094(0x454C424154, 0xE500000000000000, v10, ifExists);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(v10);
  v7 = v4;
  v8 = v6;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_1DB2A5094(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *&v31 = 0x20504F5244;
  *(&v31 + 1) = 0xE500000000000000;
  MEMORY[0x1E1283490](a1, a2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v38 = v6;
  v7 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v35 = 0x20504F5244;
  v36 = 0xE500000000000000;
  v39 = v7;
  v37 = MEMORY[0x1E69E7CC0];
  if (a4)
  {
    v8 = xmmword_1DB2D0E50;
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v9 = 0;
    v8 = 0uLL;
  }

  v42 = v6;
  v43 = v7;
  v40 = v8;
  v41 = v9;
  sub_1DB164980(a3, &v44);
  v10 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 152; i += 40)
  {
    sub_1DB1446A4(&v34[i], &v31, &qword_1ECC27898, &unk_1DB2CCD00);
    v25[0] = v31;
    v25[1] = v32;
    v26 = v33;
    if (*(&v32 + 1))
    {
      sub_1DB1355D0(v25, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_1DB1573FC(0, v10[2] + 1, 1, v10);
        v30 = v10;
      }

      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        v10 = sub_1DB1573FC((v13 > 1), v14 + 1, 1, v10);
        v30 = v10;
      }

      v15 = v28;
      v16 = v29;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      MEMORY[0x1EEE9AC00](v17);
      v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v19);
      sub_1DB200A54(v14, v19, &v30, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    else
    {
      sub_1DB1445E0(v25, &qword_1ECC27898, &unk_1DB2CCD00);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  sub_1DB2B9A70(v10, &v31);

  v21 = *(&v32 + 1);
  v22 = v33;
  __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
  v23 = sub_1DB286324(v21, v22);
  __swift_destroy_boxed_opaque_existential_1(&v31);
  return v23;
}

uint64_t Table.create(temporary:ifNotExists:withoutRowid:block:)(char a1, char a2, int a3, void (*a4)(void), uint64_t a5)
{
  v39 = a3;
  v11 = v5[9];
  v62 = v5[8];
  v63 = v11;
  v64 = v5[10];
  v65 = *(v5 + 22);
  v12 = v5[5];
  v58 = v5[4];
  v59 = v12;
  v13 = v5[7];
  v60 = v5[6];
  v61 = v13;
  v14 = v5[1];
  v54 = *v5;
  v55 = v14;
  v15 = v5[3];
  v56 = v5[2];
  v57 = v15;
  type metadata accessor for TableBuilder();
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x1E69E7CC0];
  v17 = a5;
  a4();
  if (v6)
  {
  }

  else
  {
    sub_1DB25CF84();
    if (a1)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    sub_1DB2A5814(0x454C424154, 0xE500000000000000, &v45, v18, a2 & 1, v49);
    __swift_destroy_boxed_opaque_existential_1(&v45);
    swift_beginAccess();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v49[8] = v19;
    v20 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
    v49[9] = v20;

    sub_1DB2B9A70(v21, &v45);

    sub_1DB203564();
    __swift_destroy_boxed_opaque_existential_1(&v45);
    v38[1] = v16;
    v38[2] = 0;
    if (v39)
    {
      v22 = xmmword_1DB2D0E60;
      v23 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v23 = 0;
      v22 = 0uLL;
    }

    v52 = v19;
    v53 = v20;
    v50 = v22;
    v24 = 32;
    v51 = v23;
    v25 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1DB1446A4(&v48[v24], &v45, &qword_1ECC27898, &unk_1DB2CCD00);
      v40[0] = v45;
      v40[1] = v46;
      v41 = v47;
      if (*(&v46 + 1))
      {
        sub_1DB1355D0(v40, v42);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = sub_1DB1573FC(0, v25[2] + 1, 1, v25);
          v66 = v25;
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          v25 = sub_1DB1573FC((v27 > 1), v28 + 1, 1, v25);
          v66 = v25;
        }

        v29 = v43;
        v30 = v44;
        v31 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
        MEMORY[0x1EEE9AC00](v31);
        v33 = v38 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v34 + 16))(v33);
        sub_1DB200A54(v28, v33, &v66, v29, v30);
        __swift_destroy_boxed_opaque_existential_1(v42);
      }

      else
      {
        sub_1DB1445E0(v40, &qword_1ECC27898, &unk_1DB2CCD00);
      }

      v24 += 40;
    }

    while (v24 != 152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
    swift_arrayDestroy();
    sub_1DB2B9A70(v25, &v45);

    v35 = *(&v46 + 1);
    v36 = v47;
    __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
    v17 = sub_1DB286324(v35, v36);

    __swift_destroy_boxed_opaque_existential_1(&v45);
  }

  return v17;
}

double sub_1DB2A5814@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v34 = a6;
  v11 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v43[8] = v12;
  v13 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v14 = 0xE600000000000000;
  v43[5] = 0x455441455243;
  v43[6] = 0xE600000000000000;
  v43[9] = v13;
  v43[7] = MEMORY[0x1E69E7CC0];
  if (v11 == 2)
  {
    v15 = 0;
    v14 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v15 = 0x455551494E55;
    if (a4)
    {
      v15 = 0x5241524F504D4554;
      v14 = 0xE900000000000059;
    }

    v16 = MEMORY[0x1E69E7CC0];
    v17 = v12;
    v18 = v13;
  }

  v43[10] = v15;
  v43[11] = v14;
  v43[12] = v16;
  v43[13] = v17;
  v43[18] = v12;
  v43[19] = v13;
  v43[14] = v18;
  v43[15] = a1;
  v43[16] = a2;
  v43[17] = MEMORY[0x1E69E7CC0];
  if (a5)
  {
    v19 = xmmword_1DB2D0E70;
    v20 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v20 = 0;
    v19 = 0uLL;
  }

  v46 = v12;
  v47 = v13;
  v44 = v19;
  v45 = v20;
  sub_1DB164980(a3, &v48);

  v21 = MEMORY[0x1E69E7CC0];
  for (i = 4; i != 29; i += 5)
  {
    sub_1DB1446A4(&v43[i + 1], &v40, &qword_1ECC27898, &unk_1DB2CCD00);
    v35[0] = v40;
    v35[1] = v41;
    v36 = v42;
    if (*(&v41 + 1))
    {
      sub_1DB1355D0(v35, v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43[0] = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_1DB1573FC(0, v21[2] + 1, 1, v21);
        v43[0] = v21;
      }

      v25 = v21[2];
      v24 = v21[3];
      if (v25 >= v24 >> 1)
      {
        v21 = sub_1DB1573FC((v24 > 1), v25 + 1, 1, v21);
        v43[0] = v21;
      }

      v26 = v38;
      v27 = v39;
      v28 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
      MEMORY[0x1EEE9AC00](v28);
      v30 = &v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v30);
      sub_1DB200A54(v25, v30, v43, v26, v27);
      __swift_destroy_boxed_opaque_existential_1(v37);
    }

    else
    {
      sub_1DB1445E0(v35, &qword_1ECC27898, &unk_1DB2CCD00);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  sub_1DB2B9A70(v21, v34);

  return result;
}

uint64_t Table.addColumn<A>(_:check:defaultValue:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a3;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a2;
  v48 = a2[1];
  v12 = a2[2];
  v13 = v5[9];
  v72 = v5[8];
  v73 = v13;
  v74 = v5[10];
  v75 = *(v5 + 22);
  v14 = v5[5];
  v68 = v5[4];
  v69 = v14;
  v15 = v5[7];
  v70 = v5[6];
  v71 = v15;
  v16 = v5[1];
  v64 = *v5;
  v65 = v16;
  v17 = v5[3];
  v66 = v5[2];
  v67 = v17;
  v63[3] = type metadata accessor for Expression(0, a4, a3, a4);
  v63[0] = v8;
  v63[1] = v9;
  v63[4] = swift_getWitnessTable();
  v63[2] = v10;
  v18 = *(a5 + 40);

  v44 = v18(a4, a5);
  v20 = v19;
  v46 = v12;
  v47 = v11;
  if (v48)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v22 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v21 = 0;
    v22 = 0;
  }

  v62[0] = v11;
  v62[1] = v48;
  v62[2] = v12;
  v62[3] = v21;
  v62[4] = v22;
  v23 = *(a5 + 8);
  v61[3] = a4;
  v61[4] = v23;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v61);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, v45, a4);
  memset(v60, 0, 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E18, &unk_1DB2D0E90);
  v25 = swift_allocObject();
  sub_1DB164980(v63, v25 + 32);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v25 + 96) = v26;
  v27 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(v25 + 104) = v27;
  *(v25 + 72) = v44;
  *(v25 + 80) = v20;
  v28 = MEMORY[0x1E69E7CC0];
  *(v25 + 88) = MEMORY[0x1E69E7CC0];
  *(v25 + 112) = 0u;
  *(v25 + 128) = 0u;
  *(v25 + 176) = v26;
  *(v25 + 184) = v27;
  *(v25 + 144) = 0;
  *(v25 + 152) = 0x4C4C554E20544F4ELL;
  *(v25 + 160) = 0xE800000000000000;
  *(v25 + 168) = v28;
  *(v25 + 192) = 0u;
  *(v25 + 208) = 0u;
  *(v25 + 224) = 0;
  sub_1DB1446A4(v62, &v55, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v56 + 1))
  {
    sub_1DB1355D0(&v55, &v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1DB2BD5A0;
    *(v29 + 56) = v26;
    *(v29 + 64) = v27;
    *(v29 + 32) = 0x4B43454843;
    *(v29 + 40) = 0xE500000000000000;
    *(v29 + 48) = v28;
    sub_1DB164980(&v49, v29 + 72);
    sub_1DB1757B0(v47, v48, v46);

    sub_1DB2B9A70(v29, (v25 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v49);
  }

  else
  {
    *(v25 + 264) = 0;
    *(v25 + 248) = 0u;
    *(v25 + 232) = 0u;
    sub_1DB1757B0(v47, v48, v46);
  }

  sub_1DB1446A4(v61, &v55, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v56 + 1))
  {
    sub_1DB1355D0(&v55, &v49);
    *(v25 + 296) = v26;
    *(v25 + 304) = v27;
    sub_1DB203564();
    __swift_destroy_boxed_opaque_existential_1(&v49);
  }

  else
  {
    *(v25 + 304) = 0;
    *(v25 + 272) = 0u;
    *(v25 + 288) = 0u;
  }

  sub_1DB1446A4(v60, &v55, &qword_1ECC28380, &qword_1DB2C5DF0);
  if (*(&v56 + 1))
  {
    v51[0] = v57;
    v51[1] = v58;
    v51[2] = v59;
    v49 = v55;
    v50 = v56;
    sub_1DB2B3DEC(&v49, v51 + 8, (v25 + 312));

    sub_1DB1445E0(&v49, &qword_1ECC28388, &qword_1DB2D0EA0);
  }

  else
  {

    *(v25 + 344) = 0;
    *(v25 + 312) = 0u;
    *(v25 + 328) = 0u;
  }

  *(v25 + 384) = 0;
  v30 = MEMORY[0x1E69E7CC0];
  *(v25 + 352) = 0u;
  *(v25 + 368) = 0u;
  for (i = 32; i != 392; i += 40)
  {
    sub_1DB1446A4(v25 + i, &v55, &qword_1ECC27898, &unk_1DB2CCD00);
    v52[0] = v55;
    v52[1] = v56;
    v53 = v57;
    if (*(&v56 + 1))
    {
      sub_1DB1355D0(v52, &v49);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_1DB1573FC(0, v30[2] + 1, 1, v30);
        v54 = v30;
      }

      v34 = v30[2];
      v33 = v30[3];
      if (v34 >= v33 >> 1)
      {
        v30 = sub_1DB1573FC((v33 > 1), v34 + 1, 1, v30);
        v54 = v30;
      }

      v35 = *(&v50 + 1);
      v36 = *&v51[0];
      v37 = __swift_mutable_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
      MEMORY[0x1EEE9AC00](v37);
      v39 = &v43 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v40 + 16))(v39);
      sub_1DB200A54(v34, v39, &v54, v35, v36);
      __swift_destroy_boxed_opaque_existential_1(&v49);
    }

    else
    {
      sub_1DB1445E0(v52, &qword_1ECC27898, &unk_1DB2CCD00);
    }
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1DB2B9A70(v30, &v55);

  sub_1DB1445E0(v60, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v61, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v62, &qword_1ECC27898, &unk_1DB2CCD00);
  __swift_destroy_boxed_opaque_existential_1(v63);
  v41 = sub_1DB2A4B8C(&v55);
  __swift_destroy_boxed_opaque_existential_1(&v55);
  return v41;
}

{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v12 = *a2;
  v11 = a2[1];
  v44 = a3;
  v45 = v12;
  v46 = v11;
  v13 = a2[2];
  v14 = v5[9];
  v70 = v5[8];
  v71 = v14;
  v72 = v5[10];
  v73 = *(v5 + 22);
  v15 = v5[5];
  v66 = v5[4];
  v67 = v15;
  v16 = v5[7];
  v68 = v5[6];
  v69 = v16;
  v17 = v5[1];
  v62 = *v5;
  v63 = v17;
  v18 = v5[3];
  v64 = v5[2];
  v65 = v18;
  v61[3] = type metadata accessor for Expression(0, a4, a3, a4);
  v61[0] = v8;
  v61[1] = v9;
  v61[4] = swift_getWitnessTable();
  v61[2] = v10;
  v19 = *(a5 + 40);

  v20 = v19(a4, a5);
  v22 = v21;
  v60[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v60[0] = v45;
  v60[1] = v46;
  v60[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v45 = v13;
  v60[2] = v13;
  v23 = *(a5 + 8);
  v59[3] = a4;
  v59[4] = v23;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v59);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, v44, a4);
  memset(v58, 0, sizeof(v58));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E18, &unk_1DB2D0E90);
  v25 = swift_allocObject();
  sub_1DB164980(v61, v25 + 32);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v25 + 96) = v26;
  v27 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(v25 + 104) = v27;
  *(v25 + 72) = v20;
  *(v25 + 80) = v22;
  v28 = MEMORY[0x1E69E7CC0];
  *(v25 + 88) = MEMORY[0x1E69E7CC0];
  *(v25 + 112) = 0u;
  *(v25 + 128) = 0u;
  *(v25 + 176) = v26;
  *(v25 + 184) = v27;
  *(v25 + 144) = 0;
  *(v25 + 152) = 0x4C4C554E20544F4ELL;
  *(v25 + 160) = 0xE800000000000000;
  *(v25 + 168) = v28;
  *(v25 + 192) = 0u;
  *(v25 + 208) = 0u;
  *(v25 + 224) = 0;
  sub_1DB1446A4(v60, &v53, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v54 + 1))
  {
    sub_1DB1355D0(&v53, &v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1DB2BD5A0;
    *(v29 + 56) = v26;
    *(v29 + 64) = v27;
    *(v29 + 32) = 0x4B43454843;
    *(v29 + 40) = 0xE500000000000000;
    *(v29 + 48) = v28;
    sub_1DB164980(&v47, v29 + 72);

    sub_1DB2B9A70(v29, (v25 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  else
  {
    *(v25 + 264) = 0;
    *(v25 + 248) = 0u;
    *(v25 + 232) = 0u;
  }

  sub_1DB1446A4(v59, &v53, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v54 + 1))
  {
    sub_1DB1355D0(&v53, &v47);
    *(v25 + 296) = v26;
    *(v25 + 304) = v27;
    sub_1DB203564();
    __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  else
  {
    *(v25 + 304) = 0;
    *(v25 + 272) = 0u;
    *(v25 + 288) = 0u;
  }

  sub_1DB1446A4(v58, &v53, &qword_1ECC28380, &qword_1DB2C5DF0);
  if (*(&v54 + 1))
  {
    v49[0] = v55;
    v49[1] = v56;
    v49[2] = v57;
    v47 = v53;
    v48 = v54;
    sub_1DB2B3DEC(&v47, v49 + 8, (v25 + 312));

    sub_1DB1445E0(&v47, &qword_1ECC28388, &qword_1DB2D0EA0);
  }

  else
  {

    *(v25 + 344) = 0;
    *(v25 + 312) = 0u;
    *(v25 + 328) = 0u;
  }

  *(v25 + 384) = 0;
  v30 = MEMORY[0x1E69E7CC0];
  *(v25 + 352) = 0u;
  *(v25 + 368) = 0u;
  for (i = 32; i != 392; i += 40)
  {
    sub_1DB1446A4(v25 + i, &v53, &qword_1ECC27898, &unk_1DB2CCD00);
    v50[0] = v53;
    v50[1] = v54;
    v51 = v55;
    if (*(&v54 + 1))
    {
      sub_1DB1355D0(v50, &v47);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_1DB1573FC(0, v30[2] + 1, 1, v30);
        v52 = v30;
      }

      v34 = v30[2];
      v33 = v30[3];
      if (v34 >= v33 >> 1)
      {
        v30 = sub_1DB1573FC((v33 > 1), v34 + 1, 1, v30);
        v52 = v30;
      }

      v35 = *(&v48 + 1);
      v36 = *&v49[0];
      v37 = __swift_mutable_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
      MEMORY[0x1EEE9AC00](v37);
      v39 = &v43 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v40 + 16))(v39);
      sub_1DB200A54(v34, v39, &v52, v35, v36);
      __swift_destroy_boxed_opaque_existential_1(&v47);
    }

    else
    {
      sub_1DB1445E0(v50, &qword_1ECC27898, &unk_1DB2CCD00);
    }
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1DB2B9A70(v30, &v53);

  sub_1DB1445E0(v58, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v59, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v60, &qword_1ECC27898, &unk_1DB2CCD00);
  __swift_destroy_boxed_opaque_existential_1(v61);
  v41 = sub_1DB2A4B8C(&v53);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  return v41;
}

{
  v65 = a3;
  v10 = sub_1DB2BB364();
  v68 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v16 = *a2;
  v17 = a2[1];
  v63 = a2[2];
  v64 = v16;
  v18 = v5[9];
  v94 = v5[8];
  v95 = v18;
  v96 = v5[10];
  v97 = *(v5 + 22);
  v19 = v5[5];
  v90 = v5[4];
  v91 = v19;
  v20 = v5[7];
  v92 = v5[6];
  v93 = v20;
  v21 = v5[1];
  v86 = *v5;
  v87 = v21;
  v22 = v5[3];
  v88 = v5[2];
  v89 = v22;
  v67 = v23;
  v85[3] = type metadata accessor for Expression(0, v23, v24, v25);
  WitnessTable = swift_getWitnessTable();
  v85[0] = v13;
  v85[1] = v14;
  v85[4] = WitnessTable;
  v85[2] = v15;
  v27 = *(a5 + 40);
  v28 = v17;

  v62 = a5;
  v66 = v27(a4, a5);
  v30 = v29;
  if (v17)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v28 = v17;
    v32 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v33 = v63;
    v34 = v64;
    v35 = v64;
    v36 = v17;
    v37 = v63;
  }

  else
  {
    v37 = v63;
    v34 = v64;
    v35 = 0;
    v36 = 0;
    v33 = 0;
    v31 = 0;
    v32 = 0;
  }

  v84[0] = v35;
  v84[1] = v36;
  v84[2] = v33;
  v84[3] = v31;
  v84[4] = v32;
  v39 = v67;
  v38 = v68;
  (*(v68 + 16))(v12, v65, v67);
  v40 = *(a4 - 8);
  if ((*(v40 + 48))(v12, 1, a4) == 1)
  {
    sub_1DB1757B0(v34, v28, v37);
    (*(v38 + 8))(v12, v39);
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
  }

  else
  {
    v41 = *(v62 + 8);
    *(&v82 + 1) = a4;
    v83 = v41;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v81);
    (*(v40 + 32))(boxed_opaque_existential_0, v12, a4);
    sub_1DB1757B0(v34, v28, v37);
  }

  memset(v80, 0, sizeof(v80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E18, &unk_1DB2D0E90);
  v43 = swift_allocObject();
  sub_1DB164980(v85, v43 + 32);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v43 + 96) = v44;
  v45 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(v43 + 104) = v45;
  *(v43 + 72) = v66;
  *(v43 + 80) = v30;
  v46 = MEMORY[0x1E69E7CC0];
  *(v43 + 88) = MEMORY[0x1E69E7CC0];
  *(v43 + 112) = 0u;
  *(v43 + 128) = 0u;
  *(v43 + 144) = 0u;
  *(v43 + 160) = 0u;
  *(v43 + 176) = 0u;
  *(v43 + 192) = 0u;
  *(v43 + 208) = 0u;
  *(v43 + 224) = 0;
  sub_1DB1446A4(v84, &v75, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v76 + 1))
  {
    sub_1DB1355D0(&v75, &v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1DB2BD5A0;
    *(v47 + 56) = v44;
    *(v47 + 64) = v45;
    *(v47 + 32) = 0x4B43454843;
    *(v47 + 40) = 0xE500000000000000;
    *(v47 + 48) = v46;
    sub_1DB164980(&v69, v47 + 72);

    sub_1DB2B9A70(v47, (v43 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v69);
  }

  else
  {
    *(v43 + 264) = 0;
    *(v43 + 248) = 0u;
    *(v43 + 232) = 0u;
  }

  sub_1DB1446A4(&v81, &v75, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v76 + 1))
  {
    sub_1DB1355D0(&v75, &v69);
    *(v43 + 296) = v44;
    *(v43 + 304) = v45;
    sub_1DB203564();
    __swift_destroy_boxed_opaque_existential_1(&v69);
  }

  else
  {
    *(v43 + 304) = 0;
    *(v43 + 272) = 0u;
    *(v43 + 288) = 0u;
  }

  sub_1DB1446A4(v80, &v75, &qword_1ECC28380, &qword_1DB2C5DF0);
  if (*(&v76 + 1))
  {
    v71[0] = v77;
    v71[1] = v78;
    v71[2] = v79;
    v69 = v75;
    v70 = v76;
    sub_1DB2B3DEC(&v69, v71 + 8, (v43 + 312));

    sub_1DB1445E0(&v69, &qword_1ECC28388, &qword_1DB2D0EA0);
  }

  else
  {

    *(v43 + 344) = 0;
    *(v43 + 312) = 0u;
    *(v43 + 328) = 0u;
  }

  *(v43 + 384) = 0;
  v48 = MEMORY[0x1E69E7CC0];
  *(v43 + 352) = 0u;
  *(v43 + 368) = 0u;
  for (i = 32; i != 392; i += 40)
  {
    sub_1DB1446A4(v43 + i, &v75, &qword_1ECC27898, &unk_1DB2CCD00);
    v72[0] = v75;
    v72[1] = v76;
    v73 = v77;
    if (*(&v76 + 1))
    {
      sub_1DB1355D0(v72, &v69);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v48 = sub_1DB1573FC(0, v48[2] + 1, 1, v48);
        v74 = v48;
      }

      v52 = v48[2];
      v51 = v48[3];
      if (v52 >= v51 >> 1)
      {
        v48 = sub_1DB1573FC((v51 > 1), v52 + 1, 1, v48);
        v74 = v48;
      }

      v53 = *(&v70 + 1);
      v54 = *&v71[0];
      v55 = __swift_mutable_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
      MEMORY[0x1EEE9AC00](v55);
      v57 = &v61 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v58 + 16))(v57);
      sub_1DB200A54(v52, v57, &v74, v53, v54);
      __swift_destroy_boxed_opaque_existential_1(&v69);
    }

    else
    {
      sub_1DB1445E0(v72, &qword_1ECC27898, &unk_1DB2CCD00);
    }
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1DB2B9A70(v48, &v75);

  sub_1DB1445E0(v80, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(&v81, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v84, &qword_1ECC27898, &unk_1DB2CCD00);
  __swift_destroy_boxed_opaque_existential_1(v85);
  v59 = sub_1DB2A4B8C(&v75);
  __swift_destroy_boxed_opaque_existential_1(&v75);
  return v59;
}

{
  v61 = a3;
  v10 = sub_1DB2BB364();
  v60 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v55 - v11;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = *a2;
  v58 = a2[1];
  v59 = v15;
  v57 = a2[2];
  v16 = v5[9];
  v88 = v5[8];
  v89 = v16;
  v90 = v5[10];
  v91 = *(v5 + 22);
  v17 = v5[5];
  v84 = v5[4];
  v85 = v17;
  v18 = v5[7];
  v86 = v5[6];
  v87 = v18;
  v19 = v5[1];
  v80 = *v5;
  v81 = v19;
  v20 = v5[3];
  v82 = v5[2];
  v83 = v20;
  v79[3] = type metadata accessor for Expression(0, v10, v21, v22);
  WitnessTable = swift_getWitnessTable();
  v79[0] = v12;
  v79[1] = v13;
  v79[4] = WitnessTable;
  v79[2] = v14;
  v24 = *(a5 + 40);

  v25 = a5;
  v26 = a5;
  v27 = v56;
  v62 = v24(a4, v26);
  v29 = v28;
  v78[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v30 = v57;
  v31 = v60;
  v32 = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v78[0] = v59;
  v78[1] = v58;
  v78[4] = v32;
  v78[2] = v30;
  (*(v31 + 16))(v27, v61, v10);
  v33 = *(a4 - 8);
  if ((*(v33 + 48))(v27, 1, a4) == 1)
  {
    v34 = *(v31 + 8);

    v34(v27, v10);
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
  }

  else
  {
    v35 = *(v25 + 8);
    *(&v76 + 1) = a4;
    v77 = v35;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v75);
    (*(v33 + 32))(boxed_opaque_existential_0, v27, a4);
  }

  memset(v74, 0, sizeof(v74));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E18, &unk_1DB2D0E90);
  v37 = swift_allocObject();
  sub_1DB164980(v79, v37 + 32);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v37 + 96) = v38;
  v39 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(v37 + 104) = v39;
  *(v37 + 72) = v62;
  *(v37 + 80) = v29;
  v40 = MEMORY[0x1E69E7CC0];
  *(v37 + 88) = MEMORY[0x1E69E7CC0];
  *(v37 + 112) = 0u;
  *(v37 + 128) = 0u;
  *(v37 + 144) = 0u;
  *(v37 + 160) = 0u;
  *(v37 + 176) = 0u;
  *(v37 + 192) = 0u;
  *(v37 + 208) = 0u;
  *(v37 + 224) = 0;
  sub_1DB1446A4(v78, &v69, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v70 + 1))
  {
    sub_1DB1355D0(&v69, &v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DB2BD5A0;
    *(v41 + 56) = v38;
    *(v41 + 64) = v39;
    *(v41 + 32) = 0x4B43454843;
    *(v41 + 40) = 0xE500000000000000;
    *(v41 + 48) = v40;
    sub_1DB164980(&v63, v41 + 72);

    sub_1DB2B9A70(v41, (v37 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v63);
  }

  else
  {
    *(v37 + 264) = 0;
    *(v37 + 248) = 0u;
    *(v37 + 232) = 0u;
  }

  sub_1DB1446A4(&v75, &v69, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v70 + 1))
  {
    sub_1DB1355D0(&v69, &v63);
    *(v37 + 296) = v38;
    *(v37 + 304) = v39;
    sub_1DB203564();
    __swift_destroy_boxed_opaque_existential_1(&v63);
  }

  else
  {
    *(v37 + 304) = 0;
    *(v37 + 272) = 0u;
    *(v37 + 288) = 0u;
  }

  sub_1DB1446A4(v74, &v69, &qword_1ECC28380, &qword_1DB2C5DF0);
  if (*(&v70 + 1))
  {
    v65[0] = v71;
    v65[1] = v72;
    v65[2] = v73;
    v63 = v69;
    v64 = v70;
    sub_1DB2B3DEC(&v63, v65 + 8, (v37 + 312));

    sub_1DB1445E0(&v63, &qword_1ECC28388, &qword_1DB2D0EA0);
  }

  else
  {

    *(v37 + 344) = 0;
    *(v37 + 312) = 0u;
    *(v37 + 328) = 0u;
  }

  *(v37 + 384) = 0;
  v42 = MEMORY[0x1E69E7CC0];
  *(v37 + 352) = 0u;
  *(v37 + 368) = 0u;
  for (i = 32; i != 392; i += 40)
  {
    sub_1DB1446A4(v37 + i, &v69, &qword_1ECC27898, &unk_1DB2CCD00);
    v66[0] = v69;
    v66[1] = v70;
    v67 = v71;
    if (*(&v70 + 1))
    {
      sub_1DB1355D0(v66, &v63);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = sub_1DB1573FC(0, v42[2] + 1, 1, v42);
        v68 = v42;
      }

      v46 = v42[2];
      v45 = v42[3];
      if (v46 >= v45 >> 1)
      {
        v42 = sub_1DB1573FC((v45 > 1), v46 + 1, 1, v42);
        v68 = v42;
      }

      v47 = *(&v64 + 1);
      v48 = *&v65[0];
      v49 = __swift_mutable_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
      MEMORY[0x1EEE9AC00](v49);
      v51 = &v55 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v51);
      sub_1DB200A54(v46, v51, &v68, v47, v48);
      __swift_destroy_boxed_opaque_existential_1(&v63);
    }

    else
    {
      sub_1DB1445E0(v66, &qword_1ECC27898, &unk_1DB2CCD00);
    }
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1DB2B9A70(v42, &v69);

  sub_1DB1445E0(v74, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(&v75, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v78, &qword_1ECC27898, &unk_1DB2CCD00);
  __swift_destroy_boxed_opaque_existential_1(v79);
  v53 = sub_1DB2A4B8C(&v69);
  __swift_destroy_boxed_opaque_existential_1(&v69);
  return v53;
}

uint64_t Table.addColumn<A>(_:unique:check:references:_:)(uint64_t *a1, int a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v59 = a2;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = a3[1];
  v56 = *a3;
  v61 = a3[2];
  v62 = v13;
  v14 = a5[1];
  v57 = *a5;
  v58 = a4;
  v63 = v14;
  v60 = a5[2];
  v15 = v7[9];
  v89 = v7[8];
  v90 = v15;
  v91 = v7[10];
  v92 = *(v7 + 22);
  v16 = v7[5];
  v85 = v7[4];
  v86 = v16;
  v17 = v7[7];
  v87 = v7[6];
  v88 = v17;
  v18 = v7[1];
  v81 = *v7;
  v82 = v18;
  v19 = v7[3];
  v83 = v7[2];
  v84 = v19;
  v20 = type metadata accessor for Expression(0, a6, a3, a4);
  v80[3] = v20;
  WitnessTable = swift_getWitnessTable();
  v80[0] = v11;
  v80[1] = v10;
  v80[4] = WitnessTable;
  v80[2] = v12;
  v22 = *(a7 + 40);

  v23 = v22(a6, a7);
  v64 = v24;
  if (v62)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v26 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v27 = v56;
    v28 = v56;
    v29 = v62;
    v30 = v61;
  }

  else
  {
    v28 = v56;
    v27 = 0;
    v29 = 0;
    v30 = 0;
    v25 = 0;
    v26 = 0;
  }

  v79[0] = v27;
  v79[1] = v29;
  v79[2] = v30;
  v79[3] = v25;
  v79[4] = v26;
  v78 = 0;
  memset(v77, 0, sizeof(v77));
  sub_1DB164980(v58, v76);
  v76[8] = v20;
  v76[9] = WitnessTable;
  v76[5] = v57;
  v76[6] = v63;
  v76[7] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E18, &unk_1DB2D0E90);
  v31 = swift_allocObject();
  sub_1DB164980(v80, v31 + 32);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v31 + 96) = v32;
  v33 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v34 = 0uLL;
  v35 = v33;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  *(v31 + 104) = v33;
  v39 = MEMORY[0x1E69E7CC0];
  v40 = v64;
  *(v31 + 72) = v23;
  *(v31 + 80) = v40;
  *(v31 + 88) = v39;
  *(v31 + 112) = 0u;
  *(v31 + 128) = 0u;
  *(v31 + 176) = v32;
  *(v31 + 184) = v33;
  *(v31 + 144) = 0;
  *(v31 + 152) = 0x4C4C554E20544F4ELL;
  *(v31 + 160) = 0xE800000000000000;
  *(v31 + 168) = v39;
  if (v59)
  {
    v34 = xmmword_1DB2C5DE0;
    v38 = MEMORY[0x1E69E7CC0];
    v36 = v32;
    v37 = v33;
  }

  *(v31 + 216) = v36;
  *(v31 + 224) = v37;
  *(v31 + 192) = v34;
  *(v31 + 208) = v38;
  sub_1DB1446A4(v79, &v71, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v72 + 1))
  {
    sub_1DB1355D0(&v71, &v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DB2BD5A0;
    *(v41 + 56) = v32;
    *(v41 + 64) = v35;
    *(v41 + 32) = 0x4B43454843;
    *(v41 + 40) = 0xE500000000000000;
    *(v41 + 48) = v39;
    sub_1DB164980(&v65, v41 + 72);
    sub_1DB1757B0(v28, v62, v61);

    sub_1DB2B9A70(v41, (v31 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v65);
  }

  else
  {
    *(v31 + 264) = 0;
    *(v31 + 248) = 0u;
    *(v31 + 232) = 0u;
    sub_1DB1757B0(v28, v62, v61);
  }

  sub_1DB1446A4(v77, &v71, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v72 + 1))
  {
    sub_1DB1355D0(&v71, &v65);
    *(v31 + 296) = v32;
    *(v31 + 304) = v35;
    sub_1DB203564();
    __swift_destroy_boxed_opaque_existential_1(&v65);
  }

  else
  {
    *(v31 + 304) = 0;
    *(v31 + 272) = 0u;
    *(v31 + 288) = 0u;
  }

  sub_1DB1446A4(v76, &v71, &qword_1ECC28380, &qword_1DB2C5DF0);
  if (*(&v72 + 1))
  {
    v67[0] = v73;
    v67[1] = v74;
    v67[2] = v75;
    v65 = v71;
    v66 = v72;
    sub_1DB2B3DEC(&v65, v67 + 8, (v31 + 312));

    sub_1DB1445E0(&v65, &qword_1ECC28388, &qword_1DB2D0EA0);
  }

  else
  {

    *(v31 + 344) = 0;
    *(v31 + 312) = 0u;
    *(v31 + 328) = 0u;
  }

  *(v31 + 384) = 0;
  v42 = MEMORY[0x1E69E7CC0];
  *(v31 + 352) = 0u;
  *(v31 + 368) = 0u;
  v43 = 32;
  v64 = v31;
  do
  {
    sub_1DB1446A4(v31 + v43, &v71, &qword_1ECC27898, &unk_1DB2CCD00);
    v68[0] = v71;
    v68[1] = v72;
    v69 = v73;
    if (*(&v72 + 1))
    {
      sub_1DB1355D0(v68, &v65);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = sub_1DB1573FC(0, v42[2] + 1, 1, v42);
        v70 = v42;
      }

      v46 = v42[2];
      v45 = v42[3];
      if (v46 >= v45 >> 1)
      {
        v42 = sub_1DB1573FC((v45 > 1), v46 + 1, 1, v42);
        v70 = v42;
      }

      v47 = *(&v66 + 1);
      v48 = *&v67[0];
      v49 = __swift_mutable_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
      MEMORY[0x1EEE9AC00](v49);
      v51 = &v55 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v51);
      sub_1DB200A54(v46, v51, &v70, v47, v48);
      __swift_destroy_boxed_opaque_existential_1(&v65);
      v31 = v64;
    }

    else
    {
      sub_1DB1445E0(v68, &qword_1ECC27898, &unk_1DB2CCD00);
    }

    v43 += 40;
  }

  while (v43 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1DB2B9A70(v42, &v71);

  sub_1DB1445E0(v77, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v76, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v79, &qword_1ECC27898, &unk_1DB2CCD00);
  __swift_destroy_boxed_opaque_existential_1(v80);
  v53 = sub_1DB2A4B8C(&v71);
  __swift_destroy_boxed_opaque_existential_1(&v71);
  return v53;
}

{
  v55 = a2;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = *a3;
  v14 = a3[2];
  v56 = a3[1];
  v57 = v14;
  v15 = a5[1];
  v53 = *a5;
  v54 = a4;
  v58 = v15;
  v51 = a5[2];
  v52 = v13;
  v16 = v7[9];
  v83 = v7[8];
  v84 = v16;
  v85 = v7[10];
  v86 = *(v7 + 22);
  v17 = v7[5];
  v79 = v7[4];
  v80 = v17;
  v18 = v7[7];
  v81 = v7[6];
  v82 = v18;
  v19 = v7[1];
  v75 = *v7;
  v76 = v19;
  v20 = v7[3];
  v77 = v7[2];
  v78 = v20;
  v21 = type metadata accessor for Expression(0, a6, a3, a4);
  v74[3] = v21;
  v50[1] = &protocol conformance descriptor for Expression<A>;
  WitnessTable = swift_getWitnessTable();
  v74[0] = v11;
  v74[1] = v10;
  v74[4] = WitnessTable;
  v74[2] = v12;
  v23 = *(a7 + 40);

  v24 = v23(a6, a7);
  v26 = v25;
  v73[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v73[0] = v52;
  v73[1] = v56;
  v73[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v73[2] = v57;
  v72 = 0;
  memset(v71, 0, sizeof(v71));
  sub_1DB164980(v54, v70);
  v70[8] = v21;
  v70[9] = WitnessTable;
  v70[5] = v53;
  v70[6] = v58;
  v70[7] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E18, &unk_1DB2D0E90);
  v27 = swift_allocObject();
  sub_1DB164980(v74, v27 + 32);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v27 + 96) = v28;
  v29 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v30 = 0uLL;
  v31 = v29;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  *(v27 + 104) = v29;
  v35 = MEMORY[0x1E69E7CC0];
  *(v27 + 72) = v24;
  *(v27 + 80) = v26;
  *(v27 + 88) = v35;
  *(v27 + 112) = 0u;
  *(v27 + 128) = 0u;
  *(v27 + 176) = v28;
  *(v27 + 184) = v29;
  *(v27 + 144) = 0;
  *(v27 + 152) = 0x4C4C554E20544F4ELL;
  *(v27 + 160) = 0xE800000000000000;
  *(v27 + 168) = v35;
  if (v55)
  {
    v30 = xmmword_1DB2C5DE0;
    v34 = MEMORY[0x1E69E7CC0];
    v32 = v28;
    v33 = v29;
  }

  *(v27 + 216) = v32;
  *(v27 + 224) = v33;
  *(v27 + 192) = v30;
  *(v27 + 208) = v34;
  sub_1DB1446A4(v73, &v65, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v66 + 1))
  {
    sub_1DB1355D0(&v65, &v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1DB2BD5A0;
    *(v36 + 56) = v28;
    *(v36 + 64) = v31;
    *(v36 + 32) = 0x4B43454843;
    *(v36 + 40) = 0xE500000000000000;
    *(v36 + 48) = v35;
    sub_1DB164980(&v59, v36 + 72);

    sub_1DB2B9A70(v36, (v27 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v59);
  }

  else
  {
    *(v27 + 264) = 0;
    *(v27 + 248) = 0u;
    *(v27 + 232) = 0u;
  }

  sub_1DB1446A4(v71, &v65, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v66 + 1))
  {
    sub_1DB1355D0(&v65, &v59);
    *(v27 + 296) = v28;
    *(v27 + 304) = v31;
    sub_1DB203564();
    __swift_destroy_boxed_opaque_existential_1(&v59);
  }

  else
  {
    *(v27 + 304) = 0;
    *(v27 + 272) = 0u;
    *(v27 + 288) = 0u;
  }

  sub_1DB1446A4(v70, &v65, &qword_1ECC28380, &qword_1DB2C5DF0);
  if (*(&v66 + 1))
  {
    v61[0] = v67;
    v61[1] = v68;
    v61[2] = v69;
    v59 = v65;
    v60 = v66;
    sub_1DB2B3DEC(&v59, v61 + 8, (v27 + 312));

    sub_1DB1445E0(&v59, &qword_1ECC28388, &qword_1DB2D0EA0);
  }

  else
  {

    *(v27 + 344) = 0;
    *(v27 + 312) = 0u;
    *(v27 + 328) = 0u;
  }

  *(v27 + 384) = 0;
  v37 = MEMORY[0x1E69E7CC0];
  *(v27 + 352) = 0u;
  *(v27 + 368) = 0u;
  v38 = 32;
  v58 = v27;
  do
  {
    sub_1DB1446A4(v27 + v38, &v65, &qword_1ECC27898, &unk_1DB2CCD00);
    v62[0] = v65;
    v62[1] = v66;
    v63 = v67;
    if (*(&v66 + 1))
    {
      sub_1DB1355D0(v62, &v59);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = sub_1DB1573FC(0, v37[2] + 1, 1, v37);
        v64 = v37;
      }

      v41 = v37[2];
      v40 = v37[3];
      if (v41 >= v40 >> 1)
      {
        v37 = sub_1DB1573FC((v40 > 1), v41 + 1, 1, v37);
        v64 = v37;
      }

      v42 = *(&v60 + 1);
      v43 = *&v61[0];
      v44 = __swift_mutable_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
      MEMORY[0x1EEE9AC00](v44);
      v46 = v50 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v47 + 16))(v46);
      sub_1DB200A54(v41, v46, &v64, v42, v43);
      __swift_destroy_boxed_opaque_existential_1(&v59);
      v27 = v58;
    }

    else
    {
      sub_1DB1445E0(v62, &qword_1ECC27898, &unk_1DB2CCD00);
    }

    v38 += 40;
  }

  while (v38 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1DB2B9A70(v37, &v65);

  sub_1DB1445E0(v71, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v70, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v73, &qword_1ECC27898, &unk_1DB2CCD00);
  __swift_destroy_boxed_opaque_existential_1(v74);
  v48 = sub_1DB2A4B8C(&v65);
  __swift_destroy_boxed_opaque_existential_1(&v65);
  return v48;
}

{
  v62 = a2;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a3[1];
  v59 = *a3;
  v60 = a4;
  v14 = a3[2];
  v15 = a5[1];
  v61 = *a5;
  v65 = a5[2];
  v66 = v15;
  v16 = v7[9];
  v92 = v7[8];
  v93 = v16;
  v94 = v7[10];
  v95 = *(v7 + 22);
  v17 = v7[5];
  v88 = v7[4];
  v89 = v17;
  v18 = v7[7];
  v90 = v7[6];
  v91 = v18;
  v19 = v7[1];
  v84 = *v7;
  v85 = v19;
  v20 = v7[3];
  v86 = v7[2];
  v87 = v20;
  v21 = sub_1DB2BB364();
  v83[3] = type metadata accessor for Expression(0, v21, v22, v23);
  v83[0] = v10;
  v83[1] = v11;
  v83[4] = swift_getWitnessTable();
  v83[2] = v12;
  v24 = *(a7 + 40);

  v25 = v24(a6, a7);
  v67 = v26;
  v63 = v14;
  v64 = v13;
  if (v13)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v28 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v29 = v59;
    v30 = v59;
  }

  else
  {
    v30 = v59;
    v29 = 0;
    v14 = 0;
    v27 = 0;
    v28 = 0;
  }

  v82[0] = v29;
  v82[1] = v13;
  v82[2] = v14;
  v82[3] = v27;
  v82[4] = v28;
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  sub_1DB164980(v60, v79);
  v79[8] = type metadata accessor for Expression(0, a6, v31, v32);
  WitnessTable = swift_getWitnessTable();
  v79[5] = v61;
  v79[6] = v66;
  v79[9] = WitnessTable;
  v79[7] = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E18, &unk_1DB2D0E90);
  v34 = swift_allocObject();
  sub_1DB164980(v83, v34 + 32);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v34 + 96) = v35;
  v36 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v37 = 0uLL;
  v38 = v36;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  *(v34 + 104) = v36;
  v42 = v67;
  *(v34 + 72) = v25;
  *(v34 + 80) = v42;
  v43 = MEMORY[0x1E69E7CC0];
  *(v34 + 88) = MEMORY[0x1E69E7CC0];
  *(v34 + 112) = 0u;
  *(v34 + 128) = 0u;
  *(v34 + 144) = 0u;
  *(v34 + 160) = 0u;
  *(v34 + 176) = 0u;
  if (v62)
  {
    v37 = xmmword_1DB2C5DE0;
    v41 = MEMORY[0x1E69E7CC0];
    v39 = v35;
    v40 = v36;
  }

  *(v34 + 216) = v39;
  *(v34 + 224) = v40;
  *(v34 + 192) = v37;
  *(v34 + 208) = v41;
  sub_1DB1446A4(v82, &v74, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v75 + 1))
  {
    sub_1DB1355D0(&v74, &v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1DB2BD5A0;
    *(v44 + 56) = v35;
    *(v44 + 64) = v38;
    *(v44 + 32) = 0x4B43454843;
    *(v44 + 40) = 0xE500000000000000;
    *(v44 + 48) = v43;
    sub_1DB164980(&v68, v44 + 72);
    sub_1DB1757B0(v30, v64, v63);

    sub_1DB2B9A70(v44, (v34 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v68);
  }

  else
  {
    *(v34 + 264) = 0;
    *(v34 + 248) = 0u;
    *(v34 + 232) = 0u;
    sub_1DB1757B0(v30, v64, v63);
  }

  sub_1DB1446A4(v80, &v74, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v75 + 1))
  {
    sub_1DB1355D0(&v74, &v68);
    *(v34 + 296) = v35;
    *(v34 + 304) = v38;
    sub_1DB203564();
    __swift_destroy_boxed_opaque_existential_1(&v68);
  }

  else
  {
    *(v34 + 304) = 0;
    *(v34 + 272) = 0u;
    *(v34 + 288) = 0u;
  }

  sub_1DB1446A4(v79, &v74, &qword_1ECC28380, &qword_1DB2C5DF0);
  if (*(&v75 + 1))
  {
    v70[0] = v76;
    v70[1] = v77;
    v70[2] = v78;
    v68 = v74;
    v69 = v75;
    sub_1DB2B3DEC(&v68, v70 + 8, (v34 + 312));

    sub_1DB1445E0(&v68, &qword_1ECC28388, &qword_1DB2D0EA0);
  }

  else
  {

    *(v34 + 344) = 0;
    *(v34 + 312) = 0u;
    *(v34 + 328) = 0u;
  }

  *(v34 + 384) = 0;
  v45 = MEMORY[0x1E69E7CC0];
  *(v34 + 352) = 0u;
  *(v34 + 368) = 0u;
  v46 = 32;
  v67 = v34;
  do
  {
    sub_1DB1446A4(v34 + v46, &v74, &qword_1ECC27898, &unk_1DB2CCD00);
    v71[0] = v74;
    v71[1] = v75;
    v72 = v76;
    if (*(&v75 + 1))
    {
      sub_1DB1355D0(v71, &v68);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = sub_1DB1573FC(0, v45[2] + 1, 1, v45);
        v73 = v45;
      }

      v49 = v45[2];
      v48 = v45[3];
      if (v49 >= v48 >> 1)
      {
        v45 = sub_1DB1573FC((v48 > 1), v49 + 1, 1, v45);
        v73 = v45;
      }

      v50 = *(&v69 + 1);
      v51 = *&v70[0];
      v52 = __swift_mutable_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
      MEMORY[0x1EEE9AC00](v52);
      v54 = &v58 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v55 + 16))(v54);
      sub_1DB200A54(v49, v54, &v73, v50, v51);
      __swift_destroy_boxed_opaque_existential_1(&v68);
      v34 = v67;
    }

    else
    {
      sub_1DB1445E0(v71, &qword_1ECC27898, &unk_1DB2CCD00);
    }

    v46 += 40;
  }

  while (v46 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1DB2B9A70(v45, &v74);

  sub_1DB1445E0(v80, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v79, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v82, &qword_1ECC27898, &unk_1DB2CCD00);
  __swift_destroy_boxed_opaque_existential_1(v83);
  v56 = sub_1DB2A4B8C(&v74);
  __swift_destroy_boxed_opaque_existential_1(&v74);
  return v56;
}

{
  v59 = a2;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = a3[1];
  v14 = a3[2];
  v60 = *a3;
  v61 = v14;
  v16 = *a5;
  v15 = a5[1];
  v57 = a4;
  v58 = v16;
  v62 = v15;
  v56 = a5[2];
  v17 = v7[9];
  v87 = v7[8];
  v88 = v17;
  v89 = v7[10];
  v90 = *(v7 + 22);
  v18 = v7[5];
  v83 = v7[4];
  v84 = v18;
  v19 = v7[7];
  v85 = v7[6];
  v86 = v19;
  v20 = v7[1];
  v79 = *v7;
  v80 = v20;
  v21 = v7[3];
  v81 = v7[2];
  v82 = v21;
  v22 = sub_1DB2BB364();
  v78[3] = type metadata accessor for Expression(0, v22, v23, v24);
  v78[0] = v11;
  v78[1] = v10;
  v78[4] = swift_getWitnessTable();
  v78[2] = v12;
  v25 = *(a7 + 40);

  v26 = v25(a6, a7);
  v28 = v27;
  v77[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v77[0] = v60;
  v77[1] = v13;
  v60 = v13;
  v77[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v77[2] = v61;
  v76 = 0;
  memset(v75, 0, sizeof(v75));
  sub_1DB164980(v57, v74);
  v74[8] = type metadata accessor for Expression(0, a6, v29, v30);
  WitnessTable = swift_getWitnessTable();
  v74[5] = v58;
  v74[6] = v62;
  v74[9] = WitnessTable;
  v74[7] = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E18, &unk_1DB2D0E90);
  v32 = swift_allocObject();
  sub_1DB164980(v78, v32 + 32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v32 + 96) = v33;
  v34 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v35 = 0uLL;
  v36 = v34;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  *(v32 + 104) = v34;
  *(v32 + 72) = v26;
  *(v32 + 80) = v28;
  v40 = MEMORY[0x1E69E7CC0];
  *(v32 + 88) = MEMORY[0x1E69E7CC0];
  *(v32 + 112) = 0u;
  *(v32 + 128) = 0u;
  *(v32 + 144) = 0u;
  *(v32 + 160) = 0u;
  *(v32 + 176) = 0u;
  if (v59)
  {
    v35 = xmmword_1DB2C5DE0;
    v39 = MEMORY[0x1E69E7CC0];
    v37 = v33;
    v38 = v34;
  }

  *(v32 + 216) = v37;
  *(v32 + 224) = v38;
  *(v32 + 192) = v35;
  *(v32 + 208) = v39;
  sub_1DB1446A4(v77, &v69, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v70 + 1))
  {
    sub_1DB1355D0(&v69, &v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DB2BD5A0;
    *(v41 + 56) = v33;
    *(v41 + 64) = v36;
    *(v41 + 32) = 0x4B43454843;
    *(v41 + 40) = 0xE500000000000000;
    *(v41 + 48) = v40;
    sub_1DB164980(&v63, v41 + 72);

    sub_1DB2B9A70(v41, (v32 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v63);
  }

  else
  {
    *(v32 + 264) = 0;
    *(v32 + 248) = 0u;
    *(v32 + 232) = 0u;
  }

  sub_1DB1446A4(v75, &v69, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v70 + 1))
  {
    sub_1DB1355D0(&v69, &v63);
    *(v32 + 296) = v33;
    *(v32 + 304) = v36;
    sub_1DB203564();
    __swift_destroy_boxed_opaque_existential_1(&v63);
  }

  else
  {
    *(v32 + 304) = 0;
    *(v32 + 272) = 0u;
    *(v32 + 288) = 0u;
  }

  sub_1DB1446A4(v74, &v69, &qword_1ECC28380, &qword_1DB2C5DF0);
  if (*(&v70 + 1))
  {
    v65[0] = v71;
    v65[1] = v72;
    v65[2] = v73;
    v63 = v69;
    v64 = v70;
    sub_1DB2B3DEC(&v63, v65 + 8, (v32 + 312));

    sub_1DB1445E0(&v63, &qword_1ECC28388, &qword_1DB2D0EA0);
  }

  else
  {

    *(v32 + 344) = 0;
    *(v32 + 312) = 0u;
    *(v32 + 328) = 0u;
  }

  *(v32 + 384) = 0;
  v42 = MEMORY[0x1E69E7CC0];
  *(v32 + 352) = 0u;
  *(v32 + 368) = 0u;
  v43 = 32;
  v62 = v32;
  do
  {
    sub_1DB1446A4(v32 + v43, &v69, &qword_1ECC27898, &unk_1DB2CCD00);
    v66[0] = v69;
    v66[1] = v70;
    v67 = v71;
    if (*(&v70 + 1))
    {
      sub_1DB1355D0(v66, &v63);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = sub_1DB1573FC(0, v42[2] + 1, 1, v42);
        v68 = v42;
      }

      v46 = v42[2];
      v45 = v42[3];
      if (v46 >= v45 >> 1)
      {
        v42 = sub_1DB1573FC((v45 > 1), v46 + 1, 1, v42);
        v68 = v42;
      }

      v47 = *(&v64 + 1);
      v48 = *&v65[0];
      v49 = __swift_mutable_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
      MEMORY[0x1EEE9AC00](v49);
      v51 = &v55 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v51);
      sub_1DB200A54(v46, v51, &v68, v47, v48);
      __swift_destroy_boxed_opaque_existential_1(&v63);
      v32 = v62;
    }

    else
    {
      sub_1DB1445E0(v66, &qword_1ECC27898, &unk_1DB2CCD00);
    }

    v43 += 40;
  }

  while (v43 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1DB2B9A70(v42, &v69);

  sub_1DB1445E0(v75, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v74, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v77, &qword_1ECC27898, &unk_1DB2CCD00);
  __swift_destroy_boxed_opaque_existential_1(v78);
  v53 = sub_1DB2A4B8C(&v69);
  __swift_destroy_boxed_opaque_existential_1(&v69);
  return v53;
}

uint64_t Table.addColumn<A>(_:check:defaultValue:collate:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v50 = a3;
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v15 = a4[1];
  v53 = *a4;
  v54 = v12;
  v52 = v15;
  v16 = v6[9];
  v78 = v6[8];
  v79 = v16;
  v80 = v6[10];
  v81 = *(v6 + 22);
  v17 = v6[5];
  v74 = v6[4];
  v75 = v17;
  v18 = v6[7];
  v76 = v6[6];
  v77 = v18;
  v19 = v6[1];
  v70 = *v6;
  v71 = v19;
  v20 = v6[3];
  v72 = v6[2];
  v73 = v20;
  v69[3] = type metadata accessor for Expression(0, a5, a3, a4);
  v69[0] = v10;
  v69[1] = v9;
  v69[4] = swift_getWitnessTable();
  v69[2] = v11;
  v21 = *(a6 + 40);

  v49 = v21(a5, a6);
  v23 = v22;
  v51 = v14;
  if (v54)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v25 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v26 = v13;
  }

  else
  {
    v26 = v13;
    v13 = 0;
    v14 = 0;
    v24 = 0;
    v25 = 0;
  }

  v68[0] = v13;
  v68[1] = v54;
  v68[2] = v14;
  v68[3] = v24;
  v68[4] = v25;
  v27 = *(a6 + 8);
  v67[3] = a5;
  v67[4] = v27;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v67);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, v50, a5);
  memset(v66, 0, 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E18, &unk_1DB2D0E90);
  v29 = swift_allocObject();
  sub_1DB164980(v69, v29 + 32);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v29 + 96) = v30;
  v31 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(v29 + 104) = v31;
  *(v29 + 72) = v49;
  *(v29 + 80) = v23;
  v32 = MEMORY[0x1E69E7CC0];
  *(v29 + 88) = MEMORY[0x1E69E7CC0];
  *(v29 + 112) = 0u;
  *(v29 + 128) = 0u;
  *(v29 + 176) = v30;
  *(v29 + 184) = v31;
  *(v29 + 144) = 0;
  *(v29 + 152) = 0x4C4C554E20544F4ELL;
  *(v29 + 160) = 0xE800000000000000;
  *(v29 + 168) = v32;
  *(v29 + 192) = 0u;
  *(v29 + 208) = 0u;
  *(v29 + 224) = 0;
  sub_1DB1446A4(v68, &v61, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v62 + 1))
  {
    sub_1DB1355D0(&v61, &v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1DB2BD5A0;
    *(v33 + 56) = v30;
    *(v33 + 64) = v31;
    *(v33 + 32) = 0x4B43454843;
    *(v33 + 40) = 0xE500000000000000;
    *(v33 + 48) = v32;
    sub_1DB164980(&v55, v33 + 72);
    sub_1DB1757B0(v26, v54, v51);
    sub_1DB280CEC(v53, v52);

    sub_1DB2B9A70(v33, (v29 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v55);
  }

  else
  {
    *(v29 + 264) = 0;
    *(v29 + 248) = 0u;
    *(v29 + 232) = 0u;
    sub_1DB1757B0(v26, v54, v51);
    sub_1DB280CEC(v53, v52);
  }

  sub_1DB1446A4(v67, &v61, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v62 + 1))
  {
    sub_1DB1355D0(&v61, &v55);
    *(v29 + 296) = v30;
    *(v29 + 304) = v31;
    sub_1DB203564();
    __swift_destroy_boxed_opaque_existential_1(&v55);
  }

  else
  {
    *(v29 + 304) = 0;
    *(v29 + 272) = 0u;
    *(v29 + 288) = 0u;
  }

  sub_1DB1446A4(v66, &v61, &qword_1ECC28380, &qword_1DB2C5DF0);
  if (*(&v62 + 1))
  {
    v57[0] = v63;
    v57[1] = v64;
    v57[2] = v65;
    v55 = v61;
    v56 = v62;
    sub_1DB2B3DEC(&v55, v57 + 8, (v29 + 312));

    sub_1DB1445E0(&v55, &qword_1ECC28388, &qword_1DB2D0EA0);
  }

  else
  {

    *(v29 + 344) = 0;
    *(v29 + 312) = 0u;
    *(v29 + 328) = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1DB2BD5A0;
  *(v34 + 56) = v30;
  *(v34 + 64) = v31;
  *(v34 + 32) = 0x4554414C4C4F43;
  *(v34 + 40) = 0xE700000000000000;
  *(v34 + 48) = v32;
  *(v34 + 96) = &type metadata for Collation;
  *(v34 + 104) = sub_1DB280C98();
  v36 = v52;
  v35 = v53;
  *(v34 + 72) = v53;
  *(v34 + 80) = v36;
  sub_1DB280CEC(v35, v36);
  v37 = 32;
  sub_1DB2B9A70(v34, (v29 + 352));
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v54 = v29;
  do
  {
    sub_1DB1446A4(v29 + v37, &v61, &qword_1ECC27898, &unk_1DB2CCD00);
    v58[0] = v61;
    v58[1] = v62;
    v59 = v63;
    if (*(&v62 + 1))
    {
      sub_1DB1355D0(v58, &v55);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_1DB1573FC(0, v32[2] + 1, 1, v32);
        v60 = v32;
      }

      v40 = v32[2];
      v39 = v32[3];
      if (v40 >= v39 >> 1)
      {
        v32 = sub_1DB1573FC((v39 > 1), v40 + 1, 1, v32);
        v60 = v32;
      }

      v41 = *(&v56 + 1);
      v42 = *&v57[0];
      v43 = __swift_mutable_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
      MEMORY[0x1EEE9AC00](v43);
      v45 = &v49 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v46 + 16))(v45);
      sub_1DB200A54(v40, v45, &v60, v41, v42);
      __swift_destroy_boxed_opaque_existential_1(&v55);
      v29 = v54;
    }

    else
    {
      sub_1DB1445E0(v58, &qword_1ECC27898, &unk_1DB2CCD00);
    }

    v37 += 40;
  }

  while (v37 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1DB2B9A70(v32, &v61);

  sub_1DB2B5180(v53, v52);
  sub_1DB1445E0(v66, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v67, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v68, &qword_1ECC27898, &unk_1DB2CCD00);
  __swift_destroy_boxed_opaque_existential_1(v69);
  v47 = sub_1DB2A4B8C(&v61);
  __swift_destroy_boxed_opaque_existential_1(&v61);
  return v47;
}

{
  v69 = a3;
  v12 = sub_1DB2BB364();
  v71 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v66 - v13;
  v15 = *a1;
  v14 = a1[1];
  v16 = a1[2];
  v17 = *a2;
  v18 = a2[1];
  v67 = a2[2];
  v68 = v17;
  v19 = *a4;
  v73 = a4[1];
  v74 = v19;
  v20 = v6[9];
  v101 = v6[8];
  v102 = v20;
  v103 = v6[10];
  v104 = *(v6 + 22);
  v21 = v6[5];
  v97 = v6[4];
  v98 = v21;
  v22 = v6[7];
  v99 = v6[6];
  v100 = v22;
  v23 = v6[1];
  v93 = *v6;
  v94 = v23;
  v24 = v6[3];
  v95 = v6[2];
  v96 = v24;
  v26 = v25;
  v92[3] = type metadata accessor for Expression(0, v25, v27, v28);
  WitnessTable = swift_getWitnessTable();
  v92[0] = v15;
  v92[1] = v14;
  v92[4] = WitnessTable;
  v92[2] = v16;
  v30 = *(a6 + 40);

  v66 = a6;
  v70 = v30(a5, a6);
  v75 = v31;
  if (v18)
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v33 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v34 = v68;
    v35 = v68;
    v36 = v18;
    v37 = v18;
    v38 = v67;
    v39 = v67;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v37 = 0;
    v39 = 0;
    v32 = 0;
    v33 = 0;
    v38 = v67;
    v34 = v68;
  }

  v91[0] = v35;
  v91[1] = v37;
  v91[2] = v39;
  v91[3] = v32;
  v91[4] = v33;
  v41 = v71;
  v40 = v72;
  (*(v71 + 16))(v72, v69, v26);
  v42 = *(a5 - 8);
  if ((*(v42 + 48))(v40, 1, a5) == 1)
  {
    sub_1DB1757B0(v34, v36, v38);
    (*(v41 + 8))(v40, v26);
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
  }

  else
  {
    v43 = *(v66 + 8);
    *(&v89 + 1) = a5;
    v90 = v43;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v88);
    (*(v42 + 32))(boxed_opaque_existential_0, v40, a5);
    sub_1DB1757B0(v34, v36, v38);
  }

  v45 = v73;
  memset(v87, 0, sizeof(v87));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E18, &unk_1DB2D0E90);
  v46 = swift_allocObject();
  sub_1DB164980(v92, v46 + 32);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v46 + 96) = v47;
  v48 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(v46 + 104) = v48;
  v49 = v75;
  *(v46 + 72) = v70;
  *(v46 + 80) = v49;
  v50 = MEMORY[0x1E69E7CC0];
  *(v46 + 88) = MEMORY[0x1E69E7CC0];
  *(v46 + 112) = 0u;
  *(v46 + 128) = 0u;
  *(v46 + 144) = 0u;
  *(v46 + 160) = 0u;
  *(v46 + 176) = 0u;
  *(v46 + 192) = 0u;
  *(v46 + 208) = 0u;
  *(v46 + 224) = 0;
  sub_1DB1446A4(v91, &v82, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v83 + 1))
  {
    sub_1DB1355D0(&v82, &v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1DB2BD5A0;
    *(v51 + 56) = v47;
    *(v51 + 64) = v48;
    *(v51 + 32) = 0x4B43454843;
    *(v51 + 40) = 0xE500000000000000;
    *(v51 + 48) = v50;
    sub_1DB164980(&v76, v51 + 72);
    sub_1DB280CEC(v74, v45);

    sub_1DB2B9A70(v51, (v46 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v76);
  }

  else
  {
    *(v46 + 264) = 0;
    *(v46 + 248) = 0u;
    *(v46 + 232) = 0u;
    sub_1DB280CEC(v74, v45);
  }

  sub_1DB1446A4(&v88, &v82, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v83 + 1))
  {
    sub_1DB1355D0(&v82, &v76);
    *(v46 + 296) = v47;
    *(v46 + 304) = v48;
    sub_1DB203564();
    __swift_destroy_boxed_opaque_existential_1(&v76);
  }

  else
  {
    *(v46 + 304) = 0;
    *(v46 + 272) = 0u;
    *(v46 + 288) = 0u;
  }

  sub_1DB1446A4(v87, &v82, &qword_1ECC28380, &qword_1DB2C5DF0);
  if (*(&v83 + 1))
  {
    v78[0] = v84;
    v78[1] = v85;
    v78[2] = v86;
    v76 = v82;
    v77 = v83;
    sub_1DB2B3DEC(&v76, v78 + 8, (v46 + 312));

    sub_1DB1445E0(&v76, &qword_1ECC28388, &qword_1DB2D0EA0);
  }

  else
  {

    *(v46 + 344) = 0;
    *(v46 + 312) = 0u;
    *(v46 + 328) = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1DB2BD5A0;
  *(v52 + 56) = v47;
  *(v52 + 64) = v48;
  *(v52 + 32) = 0x4554414C4C4F43;
  *(v52 + 40) = 0xE700000000000000;
  *(v52 + 48) = v50;
  *(v52 + 96) = &type metadata for Collation;
  *(v52 + 104) = sub_1DB280C98();
  v53 = v74;
  *(v52 + 72) = v74;
  *(v52 + 80) = v45;
  sub_1DB280CEC(v53, v45);
  v54 = 32;
  sub_1DB2B9A70(v52, (v46 + 352));
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v75 = v46;
  do
  {
    sub_1DB1446A4(v46 + v54, &v82, &qword_1ECC27898, &unk_1DB2CCD00);
    v79[0] = v82;
    v79[1] = v83;
    v80 = v84;
    if (*(&v83 + 1))
    {
      sub_1DB1355D0(v79, &v76);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v50 = sub_1DB1573FC(0, v50[2] + 1, 1, v50);
        v81 = v50;
      }

      v57 = v50[2];
      v56 = v50[3];
      if (v57 >= v56 >> 1)
      {
        v50 = sub_1DB1573FC((v56 > 1), v57 + 1, 1, v50);
        v81 = v50;
      }

      v58 = *(&v77 + 1);
      v59 = *&v78[0];
      v60 = __swift_mutable_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
      MEMORY[0x1EEE9AC00](v60);
      v62 = &v66 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v63 + 16))(v62);
      sub_1DB200A54(v57, v62, &v81, v58, v59);
      __swift_destroy_boxed_opaque_existential_1(&v76);
      v46 = v75;
    }

    else
    {
      sub_1DB1445E0(v79, &qword_1ECC27898, &unk_1DB2CCD00);
    }

    v54 += 40;
  }

  while (v54 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1DB2B9A70(v50, &v82);

  sub_1DB2B5180(v74, v73);
  sub_1DB1445E0(v87, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(&v88, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v91, &qword_1ECC27898, &unk_1DB2CCD00);
  __swift_destroy_boxed_opaque_existential_1(v92);
  v64 = sub_1DB2A4B8C(&v82);
  __swift_destroy_boxed_opaque_existential_1(&v82);
  return v64;
}

{
  v66 = a3;
  v12 = sub_1DB2BB364();
  v65 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v60 - v13;
  v15 = *a1;
  v14 = a1[1];
  v16 = a1[2];
  v17 = *a2;
  v62 = a2[1];
  v63 = v17;
  v61 = a2[2];
  v18 = *a4;
  v67 = a4[1];
  v68 = v18;
  v19 = v6[9];
  v95 = v6[8];
  v96 = v19;
  v97 = v6[10];
  v98 = *(v6 + 22);
  v20 = v6[5];
  v91 = v6[4];
  v92 = v20;
  v21 = v6[7];
  v93 = v6[6];
  v94 = v21;
  v22 = v6[1];
  v87 = *v6;
  v88 = v22;
  v23 = v6[3];
  v89 = v6[2];
  v90 = v23;
  v86[3] = type metadata accessor for Expression(0, v12, v24, v25);
  WitnessTable = swift_getWitnessTable();
  v86[0] = v15;
  v86[1] = v14;
  v86[4] = WitnessTable;
  v86[2] = v16;
  v27 = *(a6 + 40);

  v28 = a6;
  v29 = v27(a5, a6);
  v30 = v61;
  v69 = v29;
  v32 = v31;
  v85[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v33 = v64;
  v34 = v65;
  v35 = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v85[0] = v63;
  v85[1] = v62;
  v85[4] = v35;
  v85[2] = v30;
  (*(v34 + 16))(v33, v66, v12);
  v36 = *(a5 - 8);
  if ((*(v36 + 48))(v33, 1, a5) == 1)
  {
    v37 = *(v34 + 8);

    v37(v33, v12);
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
  }

  else
  {
    v38 = *(v28 + 8);
    *(&v83 + 1) = a5;
    v84 = v38;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v82);
    (*(v36 + 32))(boxed_opaque_existential_0, v33, a5);
  }

  memset(v81, 0, sizeof(v81));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E18, &unk_1DB2D0E90);
  v40 = swift_allocObject();
  sub_1DB164980(v86, v40 + 32);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v40 + 96) = v41;
  v42 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(v40 + 104) = v42;
  *(v40 + 72) = v69;
  *(v40 + 80) = v32;
  v43 = MEMORY[0x1E69E7CC0];
  *(v40 + 88) = MEMORY[0x1E69E7CC0];
  *(v40 + 112) = 0u;
  *(v40 + 128) = 0u;
  *(v40 + 144) = 0u;
  *(v40 + 160) = 0u;
  *(v40 + 176) = 0u;
  *(v40 + 192) = 0u;
  *(v40 + 208) = 0u;
  *(v40 + 224) = 0;
  sub_1DB1446A4(v85, &v76, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v77 + 1))
  {
    sub_1DB1355D0(&v76, &v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1DB2BD5A0;
    *(v44 + 56) = v41;
    *(v44 + 64) = v42;
    *(v44 + 32) = 0x4B43454843;
    *(v44 + 40) = 0xE500000000000000;
    *(v44 + 48) = v43;
    sub_1DB164980(&v70, v44 + 72);
    sub_1DB280CEC(v68, v67);

    sub_1DB2B9A70(v44, (v40 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v70);
  }

  else
  {
    *(v40 + 264) = 0;
    *(v40 + 248) = 0u;
    *(v40 + 232) = 0u;
    sub_1DB280CEC(v68, v67);
  }

  sub_1DB1446A4(&v82, &v76, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v77 + 1))
  {
    sub_1DB1355D0(&v76, &v70);
    *(v40 + 296) = v41;
    *(v40 + 304) = v42;
    sub_1DB203564();
    __swift_destroy_boxed_opaque_existential_1(&v70);
  }

  else
  {
    *(v40 + 304) = 0;
    *(v40 + 272) = 0u;
    *(v40 + 288) = 0u;
  }

  sub_1DB1446A4(v81, &v76, &qword_1ECC28380, &qword_1DB2C5DF0);
  if (*(&v77 + 1))
  {
    v72[0] = v78;
    v72[1] = v79;
    v72[2] = v80;
    v70 = v76;
    v71 = v77;
    sub_1DB2B3DEC(&v70, v72 + 8, (v40 + 312));

    sub_1DB1445E0(&v70, &qword_1ECC28388, &qword_1DB2D0EA0);
  }

  else
  {

    *(v40 + 344) = 0;
    *(v40 + 312) = 0u;
    *(v40 + 328) = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1DB2BD5A0;
  *(v45 + 56) = v41;
  *(v45 + 64) = v42;
  *(v45 + 32) = 0x4554414C4C4F43;
  *(v45 + 40) = 0xE700000000000000;
  *(v45 + 48) = v43;
  *(v45 + 96) = &type metadata for Collation;
  *(v45 + 104) = sub_1DB280C98();
  v47 = v67;
  v46 = v68;
  *(v45 + 72) = v68;
  *(v45 + 80) = v47;
  sub_1DB280CEC(v46, v47);
  v48 = 32;
  sub_1DB2B9A70(v45, (v40 + 352));
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v69 = v40;
  do
  {
    sub_1DB1446A4(v40 + v48, &v76, &qword_1ECC27898, &unk_1DB2CCD00);
    v73[0] = v76;
    v73[1] = v77;
    v74 = v78;
    if (*(&v77 + 1))
    {
      sub_1DB1355D0(v73, &v70);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = sub_1DB1573FC(0, v43[2] + 1, 1, v43);
        v75 = v43;
      }

      v51 = v43[2];
      v50 = v43[3];
      if (v51 >= v50 >> 1)
      {
        v43 = sub_1DB1573FC((v50 > 1), v51 + 1, 1, v43);
        v75 = v43;
      }

      v52 = *(&v71 + 1);
      v53 = *&v72[0];
      v54 = __swift_mutable_project_boxed_opaque_existential_1(&v70, *(&v71 + 1));
      MEMORY[0x1EEE9AC00](v54);
      v56 = &v60 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v57 + 16))(v56);
      sub_1DB200A54(v51, v56, &v75, v52, v53);
      __swift_destroy_boxed_opaque_existential_1(&v70);
      v40 = v69;
    }

    else
    {
      sub_1DB1445E0(v73, &qword_1ECC27898, &unk_1DB2CCD00);
    }

    v48 += 40;
  }

  while (v48 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1DB2B9A70(v43, &v76);

  sub_1DB2B5180(v68, v67);
  sub_1DB1445E0(v81, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(&v82, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v85, &qword_1ECC27898, &unk_1DB2CCD00);
  __swift_destroy_boxed_opaque_existential_1(v86);
  v58 = sub_1DB2A4B8C(&v76);
  __swift_destroy_boxed_opaque_existential_1(&v76);
  return v58;
}

uint64_t Table.addColumn<A>(_:check:defaultValue:collate:)(uint64_t *a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v12 = *a2;
  v51 = a2[1];
  v52 = v12;
  v13 = a2[2];
  v14 = a4[1];
  v54 = *a4;
  v55 = a3;
  v53 = v14;
  v15 = v6[9];
  v79 = v6[8];
  v80 = v15;
  v81 = v6[10];
  v82 = *(v6 + 22);
  v16 = v6[5];
  v75 = v6[4];
  v76 = v16;
  v17 = v6[7];
  v77 = v6[6];
  v78 = v17;
  v18 = v6[1];
  v71 = *v6;
  v72 = v18;
  v19 = v6[3];
  v73 = v6[2];
  v74 = v19;
  v70[3] = type metadata accessor for Expression(0, a5, a3, a4);
  v70[0] = v10;
  v70[1] = v9;
  v70[4] = swift_getWitnessTable();
  v70[2] = v11;
  v20 = *(a6 + 40);

  v21 = v20(a5, a6);
  v23 = v22;
  v69[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v69[0] = v52;
  v69[1] = v51;
  v69[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v69[2] = v13;
  v24 = *(a6 + 8);
  v68[3] = a5;
  v68[4] = v24;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v68);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, v55, a5);
  memset(v67, 0, sizeof(v67));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E18, &unk_1DB2D0E90);
  v26 = swift_allocObject();
  sub_1DB164980(v70, v26 + 32);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v26 + 96) = v27;
  v28 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(v26 + 104) = v28;
  *(v26 + 72) = v21;
  *(v26 + 80) = v23;
  v29 = MEMORY[0x1E69E7CC0];
  *(v26 + 88) = MEMORY[0x1E69E7CC0];
  *(v26 + 112) = 0u;
  *(v26 + 128) = 0u;
  *(v26 + 176) = v27;
  *(v26 + 184) = v28;
  *(v26 + 144) = 0;
  *(v26 + 152) = 0x4C4C554E20544F4ELL;
  *(v26 + 160) = 0xE800000000000000;
  *(v26 + 168) = v29;
  *(v26 + 192) = 0u;
  *(v26 + 208) = 0u;
  *(v26 + 224) = 0;
  sub_1DB1446A4(v69, &v62, &qword_1ECC27898, &unk_1DB2CCD00);
  v55 = v26;
  v52 = v27;
  if (*(&v63 + 1))
  {
    sub_1DB1355D0(&v62, &v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1DB2BD5A0;
    *(v30 + 56) = v27;
    *(v30 + 64) = v28;
    *(v30 + 32) = 0x4B43454843;
    *(v30 + 40) = 0xE500000000000000;
    *(v30 + 48) = v29;
    sub_1DB164980(&v56, v30 + 72);

    v32 = v53;
    v31 = v54;
    sub_1DB280CEC(v54, v53);

    sub_1DB2B9A70(v30, (v26 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v56);
  }

  else
  {
    *(v26 + 264) = 0;
    *(v26 + 248) = 0u;
    *(v26 + 232) = 0u;

    v32 = v53;
    v31 = v54;
    sub_1DB280CEC(v54, v53);
  }

  sub_1DB1446A4(v68, &v62, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v63 + 1))
  {
    sub_1DB1355D0(&v62, &v56);
    v33 = v55;
    v55[37] = v52;
    v33[38] = v28;
    sub_1DB203564();
    __swift_destroy_boxed_opaque_existential_1(&v56);
  }

  else
  {
    v33 = v55;
    v55[38] = 0;
    *(v33 + 17) = 0u;
    *(v33 + 18) = 0u;
  }

  v34 = v33 + 39;
  sub_1DB1446A4(v67, &v62, &qword_1ECC28380, &qword_1DB2C5DF0);
  if (*(&v63 + 1))
  {
    v58[0] = v64;
    v58[1] = v65;
    v58[2] = v66;
    v56 = v62;
    v57 = v63;
    sub_1DB2B3DEC(&v56, v58 + 8, v34);

    sub_1DB1445E0(&v56, &qword_1ECC28388, &qword_1DB2D0EA0);
  }

  else
  {

    v34[4] = 0;
    *v34 = 0u;
    *(v34 + 1) = 0u;
  }

  v35 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1DB2BD5A0;
  *(v36 + 56) = v35;
  *(v36 + 64) = v28;
  *(v36 + 32) = 0x4554414C4C4F43;
  *(v36 + 40) = 0xE700000000000000;
  *(v36 + 48) = v29;
  *(v36 + 96) = &type metadata for Collation;
  *(v36 + 104) = sub_1DB280C98();
  *(v36 + 72) = v31;
  *(v36 + 80) = v32;
  sub_1DB280CEC(v31, v32);
  v37 = 4;
  v38 = v55;
  sub_1DB2B9A70(v36, v55 + 44);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  do
  {
    sub_1DB1446A4(&v38[v37], &v62, &qword_1ECC27898, &unk_1DB2CCD00);
    v59[0] = v62;
    v59[1] = v63;
    v60 = v64;
    if (*(&v63 + 1))
    {
      sub_1DB1355D0(v59, &v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_1DB1573FC(0, v29[2] + 1, 1, v29);
        v61 = v29;
      }

      v41 = v29[2];
      v40 = v29[3];
      if (v41 >= v40 >> 1)
      {
        v29 = sub_1DB1573FC((v40 > 1), v41 + 1, 1, v29);
        v61 = v29;
      }

      v42 = *(&v57 + 1);
      v43 = *&v58[0];
      v44 = __swift_mutable_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
      MEMORY[0x1EEE9AC00](v44);
      v46 = &v50 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v47 + 16))(v46);
      sub_1DB200A54(v41, v46, &v61, v42, v43);
      __swift_destroy_boxed_opaque_existential_1(&v56);
      v38 = v55;
    }

    else
    {
      sub_1DB1445E0(v59, &qword_1ECC27898, &unk_1DB2CCD00);
    }

    v37 += 5;
  }

  while (v37 != 49);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1DB2B9A70(v29, &v62);

  sub_1DB2B5180(v54, v53);
  sub_1DB1445E0(v67, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v68, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v69, &qword_1ECC27898, &unk_1DB2CCD00);
  __swift_destroy_boxed_opaque_existential_1(v70);
  v48 = sub_1DB2A4B8C(&v62);
  __swift_destroy_boxed_opaque_existential_1(&v62);
  return v48;
}

uint64_t Table.rename(_:)(uint64_t a1)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v13[10] = *(a1 + 160);
  v14 = *(a1 + 176);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = v1[9];
  v23 = v1[8];
  v24 = v7;
  v25 = v1[10];
  v26 = *(v1 + 22);
  v8 = v1[5];
  v19 = v1[4];
  v20 = v8;
  v9 = v1[7];
  v21 = v1[6];
  v22 = v9;
  v10 = v1[1];
  v15 = *v1;
  v16 = v10;
  v11 = v1[3];
  v17 = v1[2];
  v18 = v11;
  return sub_1DB2ABA8C(v13, sub_1DB25CF84);
}

uint64_t sub_1DB2ABA8C(uint64_t a1, void (*a2)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2C3A50;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 56) = v5;
  v6 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(inited + 32) = 0x4154205245544C41;
  *(inited + 64) = v6;
  v7 = MEMORY[0x1E69E7CC0];
  *(inited + 40) = 0xEB00000000454C42;
  *(inited + 48) = v7;
  a2(0);
  *(inited + 136) = v5;
  *(inited + 144) = v6;
  *(inited + 112) = 0x5420454D414E4552;
  *(inited + 120) = 0xE90000000000004FLL;
  *(inited + 128) = v7;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(inited + 176) = v5;
  *(inited + 184) = v6;
  *(inited + 152) = sub_1DB2B995C(34, 0xE100000000000000, v8, v9);
  *(inited + 160) = v10;
  *(inited + 168) = v7;
  sub_1DB2B9A70(inited, v15);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  v11 = v16;
  v12 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v13 = sub_1DB286324(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v13;
}

uint64_t Table.createIndex(_:unique:ifNotExists:)(uint64_t a1, char a2, char a3)
{
  v39 = *v3;
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v11 = *(v3 + 160);
  v49 = *(v3 + 144);
  v50 = v11;
  v51 = *(v3 + 176);
  v12 = *(v3 + 96);
  v45 = *(v3 + 80);
  v46 = v12;
  v13 = *(v3 + 128);
  v47 = *(v3 + 112);
  v48 = v13;
  v14 = *(v3 + 64);
  v43 = *(v3 + 48);
  v44 = v14;
  *&v40 = v8;
  *(&v40 + 1) = v7;
  v41 = v9;
  v42 = v10;
  sub_1DB2AC044(a1, v52);
  if (a2)
  {
    v15 = 0;
  }

  else
  {
    v15 = 2;
  }

  sub_1DB2A5814(0x5845444E49, 0xE500000000000000, v52, v15, a3, v56);
  __swift_destroy_boxed_opaque_existential_1(v52);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v56[8] = v16;
  v17 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v56[5] = 20047;
  v56[6] = 0xE200000000000000;
  v18 = MEMORY[0x1E69E7CC0];
  v56[9] = v17;
  v56[7] = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v7 = v10;
  }

  else
  {

    v9 = v8;
  }

  *(&v40 + 1) = v16;
  v41 = v17;

  v19 = sub_1DB2B995C(34, 0xE100000000000000, v9, v7);
  v21 = v20;

  *&v39 = v19;
  *(&v39 + 1) = v21;
  *&v40 = v18;
  sub_1DB1355D0(&v39, v57);
  v57[8] = v16;
  v57[9] = v17;
  sub_1DB2B9A70(a1, &v39);
  sub_1DB203564();
  __swift_destroy_boxed_opaque_existential_1(&v39);
  for (i = 32; i != 192; i += 40)
  {
    sub_1DB1446A4(&v55[i], &v39, &qword_1ECC27898, &unk_1DB2CCD00);
    v36[0] = v39;
    v36[1] = v40;
    v37 = v41;
    if (*(&v40 + 1))
    {
      sub_1DB1355D0(v36, v52);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_1DB1573FC(0, v18[2] + 1, 1, v18);
        v38 = v18;
      }

      v25 = v18[2];
      v24 = v18[3];
      if (v25 >= v24 >> 1)
      {
        v18 = sub_1DB1573FC((v24 > 1), v25 + 1, 1, v18);
        v38 = v18;
      }

      v26 = v53;
      v27 = v54;
      v28 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
      MEMORY[0x1EEE9AC00](v28);
      v30 = v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v30);
      sub_1DB200A54(v25, v30, &v38, v26, v27);
      __swift_destroy_boxed_opaque_existential_1(v52);
    }

    else
    {
      sub_1DB1445E0(v36, &qword_1ECC27898, &unk_1DB2CCD00);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  sub_1DB2B9A70(v18, &v39);

  v32 = *(&v40 + 1);
  v33 = v41;
  __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
  v34 = sub_1DB286324(v32, v33);
  __swift_destroy_boxed_opaque_existential_1(&v39);
  return v34;
}

void sub_1DB2AC044(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[9];
  v48 = v2[8];
  v49 = v5;
  v50 = v2[10];
  v51 = *(v2 + 22);
  v6 = v2[5];
  v44 = v2[4];
  v45 = v6;
  v7 = v2[7];
  v46 = v2[6];
  v47 = v7;
  v8 = v2[1];
  v40 = *v2;
  v41 = v8;
  v9 = v2[3];
  v42 = v2[2];
  v43 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DB2BD590;
  *(v10 + 32) = 0x7865646E69;
  *(v10 + 40) = 0xE500000000000000;
  v52 = v2[1];
  *(v10 + 48) = v52;
  *(v10 + 64) = 28271;
  *(v10 + 72) = 0xE200000000000000;
  v11 = *(a1 + 16);
  if (v11)
  {
    v39 = MEMORY[0x1E69E7CC0];

    sub_1DB138470(0, v11, 0);
    v12 = v39;
    v13 = a1 + 32;
    do
    {
      sub_1DB164980(v13, v36);
      v14 = v37;
      v15 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      (*(v15 + 24))(&v34, v14, v15);
      v16 = v34;
      v17 = v35;

      __swift_destroy_boxed_opaque_existential_1(v36);
      v39 = v12;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1DB138470((v18 > 1), v19 + 1, 1);
        v12 = v39;
      }

      *(v12 + 16) = v19 + 1;
      v20 = v12 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v13 += 40;
      --v11;
    }

    while (v11);
  }

  else
  {
    sub_1DB2B5374(&v52, v36);
    v12 = MEMORY[0x1E69E7CC0];
  }

  v36[0] = v10;
  sub_1DB1413F4(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
  sub_1DB2BAD24();

  v21 = sub_1DB2BAE04();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  v36[0] = v21;
  v36[1] = v23;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  v36[2] = 0;
  v37 = v24;

  v25 = sub_1DB2BAF24();
  if (!v26)
  {
    v29 = 0;
    v30 = 0xE000000000000000;
LABEL_38:

    sub_1DB2A4E1C(v29, v30, a2);

    return;
  }

  v27 = v25;
  v28 = v26;
  v29 = 0;
  v30 = 0xE000000000000000;
  while (v27 == 34 && v28 == 0xE100000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

LABEL_13:
    v27 = sub_1DB2BAF24();
    v28 = v31;
    if (!v31)
    {
      goto LABEL_38;
    }
  }

  if ((sub_1DB2BB924() & 1) == 0)
  {
    if (v27 != 97 || v28 != 0xE100000000000000)
    {
      if (sub_1DB2BB924())
      {
        goto LABEL_23;
      }

      if (v27 == 122 && v28 == 0xE100000000000000)
      {
        goto LABEL_35;
      }
    }

    if ((sub_1DB2BB924() & 1) == 0)
    {
LABEL_35:
      v34 = v29;
      v35 = v30;

      v32 = v27;
      v33 = v28;
      goto LABEL_36;
    }

LABEL_23:
    if (sub_1DB2BB924())
    {
      goto LABEL_40;
    }

    if (v27 != 48 || v28 != 0xE100000000000000)
    {
      if (sub_1DB2BB924())
      {
        goto LABEL_29;
      }

      if (v27 == 57 && v28 == 0xE100000000000000)
      {
        goto LABEL_35;
      }
    }

    if ((sub_1DB2BB924() & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_29:
    v34 = v29;
    v35 = v30;

    v32 = 95;
    v33 = 0xE100000000000000;
LABEL_36:
    MEMORY[0x1E1283490](v32, v33);

    v29 = v34;
    v30 = v35;
    goto LABEL_13;
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t Table.dropIndex(_:ifExists:)(uint64_t a1, char a2)
{
  sub_1DB2AC044(a1, v5);
  v3 = sub_1DB2A5094(0x5845444E49, 0xE500000000000000, v5, a2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1DB2AC594(void *a1, char a2, char a3, void (*a4)(__int128 *__return_ptr, void), uint64_t a5, uint64_t a6)
{
  v12 = v6[9];
  v58 = v6[8];
  v59 = v12;
  v60 = v6[10];
  v61 = *(v6 + 22);
  v13 = v6[5];
  v54 = v6[4];
  v55 = v13;
  v14 = v6[7];
  v56 = v6[6];
  v57 = v14;
  v15 = v6[1];
  v50 = *v6;
  v51 = v15;
  v16 = v6[3];
  v52 = v6[2];
  v53 = v16;
  a4(&v44, 0);
  if (a2)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  sub_1DB2A5814(a5, a6, &v44, v17, a3, v48);
  __swift_destroy_boxed_opaque_existential_1(&v44);
  v48[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v18 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v48[5] = 21313;
  v48[6] = 0xE200000000000000;
  v19 = MEMORY[0x1E69E7CC0];
  v48[9] = v18;
  v48[7] = MEMORY[0x1E69E7CC0];
  v20 = a1[3];
  v21 = a1[4];
  v22 = __swift_project_boxed_opaque_existential_1(a1, v20);
  v49[3] = v20;
  v49[4] = *(v21 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v49);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_0, v22, v20);
  for (i = 32; i != 152; i += 40)
  {
    sub_1DB1446A4(&v47[i], &v44, &qword_1ECC27898, &unk_1DB2CCD00);
    v38[0] = v44;
    v38[1] = v45;
    v39 = v46;
    if (*(&v45 + 1))
    {
      sub_1DB1355D0(v38, v40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_1DB1573FC(0, v19[2] + 1, 1, v19);
        v43 = v19;
      }

      v27 = v19[2];
      v26 = v19[3];
      if (v27 >= v26 >> 1)
      {
        v19 = sub_1DB1573FC((v26 > 1), v27 + 1, 1, v19);
        v43 = v19;
      }

      v28 = v41;
      v29 = v42;
      v30 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
      MEMORY[0x1EEE9AC00](v30);
      v32 = v38 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v33 + 16))(v32);
      sub_1DB200A54(v27, v32, &v43, v28, v29);
      __swift_destroy_boxed_opaque_existential_1(v40);
    }

    else
    {
      sub_1DB1445E0(v38, &qword_1ECC27898, &unk_1DB2CCD00);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  sub_1DB2B9A70(v19, &v44);

  v34 = *(&v45 + 1);
  v35 = v46;
  __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
  v36 = sub_1DB286324(v34, v35);
  __swift_destroy_boxed_opaque_existential_1(&v44);
  return v36;
}

Swift::String __swiftcall View.drop(ifExists:)(Swift::Bool ifExists)
{
  v3 = v1[9];
  v23 = v1[8];
  v24 = v3;
  v25 = v1[10];
  v26 = *(v1 + 22);
  v4 = v1[5];
  v19 = v1[4];
  v20 = v4;
  v5 = v1[7];
  v21 = v1[6];
  v22 = v5;
  v6 = v1[1];
  v15 = *v1;
  v16 = v6;
  v7 = v1[3];
  v17 = v1[2];
  v18 = v7;
  sub_1DB25CF84();
  v8 = sub_1DB2A5094(1464158550, 0xE400000000000000, v14, ifExists);
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_1(v14);
  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::String __swiftcall VirtualTable.create(_:ifNotExists:)(OnDeviceStorageCore::Module _, Swift::Bool ifNotExists)
{
  object = _.name._object;
  v5 = *_.name._countAndFlagsBits;
  v4 = *(_.name._countAndFlagsBits + 8);
  v6 = *(_.name._countAndFlagsBits + 16);
  v7 = v2[9];
  v52 = v2[8];
  v53 = v7;
  v54 = v2[10];
  v55 = *(v2 + 22);
  v8 = v2[5];
  v48 = v2[4];
  v49 = v8;
  v9 = v2[7];
  v50 = v2[6];
  v51 = v9;
  v10 = v2[1];
  v44 = *v2;
  v45 = v10;
  v11 = v2[3];
  v46 = v2[2];
  v47 = v11;
  sub_1DB25CF84();
  sub_1DB2A5814(0x204C415554524956, 0xED0000454C424154, &v39, 2u, object, v43);
  __swift_destroy_boxed_opaque_existential_1(&v39);
  v43[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v12 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v13 = MEMORY[0x1E69E7CC0];
  v43[5] = 0x474E495355;
  v43[6] = 0xE500000000000000;
  v43[9] = v12;
  v43[7] = MEMORY[0x1E69E7CC0];
  v43[13] = &type metadata for Module;
  v14 = sub_1DB2B5194();
  v43[10] = v5;
  v43[11] = v4;
  v43[14] = v14;
  v43[12] = v6;

  for (i = 32; i != 152; i += 40)
  {
    sub_1DB1446A4(&v42[i], &v39, &qword_1ECC27898, &unk_1DB2CCD00);
    v33[0] = v39;
    v33[1] = v40;
    v34 = v41;
    if (*(&v40 + 1))
    {
      sub_1DB1355D0(v33, v35);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_1DB1573FC(0, v13[2] + 1, 1, v13);
        v38 = v13;
      }

      v18 = v13[2];
      v17 = v13[3];
      if (v18 >= v17 >> 1)
      {
        v13 = sub_1DB1573FC((v17 > 1), v18 + 1, 1, v13);
        v38 = v13;
      }

      v19 = v36;
      v20 = v37;
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      MEMORY[0x1EEE9AC00](v21);
      v23 = v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v23);
      sub_1DB200A54(v18, v23, &v38, v19, v20);
      __swift_destroy_boxed_opaque_existential_1(v35);
    }

    else
    {
      sub_1DB1445E0(v33, &qword_1ECC27898, &unk_1DB2CCD00);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  sub_1DB2B9A70(v13, &v39);

  v25 = *(&v40 + 1);
  v26 = v41;
  __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
  v27 = sub_1DB286324(v25, v26);
  v29 = v28;
  __swift_destroy_boxed_opaque_existential_1(&v39);
  v30 = v27;
  v31 = v29;
  result._object = v31;
  result._countAndFlagsBits = v30;
  return result;
}

uint64_t VirtualTable.rename(_:)(uint64_t a1)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v13[10] = *(a1 + 160);
  v14 = *(a1 + 176);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = v1[9];
  v23 = v1[8];
  v24 = v7;
  v25 = v1[10];
  v26 = *(v1 + 22);
  v8 = v1[5];
  v19 = v1[4];
  v20 = v8;
  v9 = v1[7];
  v21 = v1[6];
  v22 = v9;
  v10 = v1[1];
  v15 = *v1;
  v16 = v10;
  v11 = v1[3];
  v17 = v1[2];
  v18 = v11;
  return sub_1DB2ABA8C(v13, sub_1DB25CF84);
}

double TableBuilder.column<A>(_:unique:check:defaultValue:)(uint64_t *a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a4[1];
  v35 = *a4;
  v14 = a4[2];
  v44[0] = *a1;
  v44[1] = v8;
  v44[2] = v9;
  v15 = *(a6 + 40);

  v36 = v15(a5, a6);
  v19 = v18;
  v43 = 2;
  if (v11)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v21 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v22 = v10;
    v23 = v11;
    v24 = v12;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
  }

  v42[0] = v22;
  v42[1] = v23;
  v42[2] = v24;
  v42[3] = v20;
  v42[4] = v21;
  if (v13)
  {
    v25 = type metadata accessor for Expression(0, a5, v16, v17);
    WitnessTable = swift_getWitnessTable();
    v27 = v35;
    v28 = v13;
    v29 = v14;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v25 = 0;
    WitnessTable = 0;
  }

  v41[0] = v27;
  v41[1] = v28;
  v41[2] = v29;
  v41[3] = v25;
  v41[4] = WitnessTable;
  v39 = xmmword_1DB2D0E80;
  memset(v40, 0, sizeof(v40));
  sub_1DB1757B0(v10, v11, v12);
  sub_1DB1757B0(v35, v13, v14);
  v32 = type metadata accessor for Expression(0, a5, v30, v31);
  v33 = swift_getWitnessTable();
  sub_1DB2B41A8(v44, v36, v19, &v43, 0, a2 & 1, v42, v41, v40, &v39, v37, v32, v33);

  sub_1DB1445E0(v40, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v41, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v42, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a4[1];
  v31 = *a4;
  v14 = a4[2];
  v41[0] = *a1;
  v41[1] = v8;
  v41[2] = v9;
  v15 = *(a6 + 40);

  v16 = v15(a5, a6);
  v32 = v17;
  v33 = v16;
  v40 = 2;
  v39[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v39[0] = v10;
  v39[1] = v11;
  v39[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v39[2] = v12;
  if (v13)
  {
    v20 = type metadata accessor for Expression(0, a5, v18, v19);
    WitnessTable = swift_getWitnessTable();
    v22 = v31;
    v23 = v31;
    v24 = v13;
    v25 = v14;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v20 = 0;
    WitnessTable = 0;
    v22 = v31;
  }

  v38[0] = v23;
  v38[1] = v24;
  v38[2] = v25;
  v38[3] = v20;
  v38[4] = WitnessTable;
  v36 = xmmword_1DB2D0E80;
  memset(v37, 0, sizeof(v37));

  sub_1DB1757B0(v22, v13, v14);
  v28 = type metadata accessor for Expression(0, a5, v26, v27);
  v29 = swift_getWitnessTable();
  sub_1DB2B41A8(v41, v33, v32, &v40, 0, a2 & 1, v39, v38, v37, &v36, v34, v28, v29);

  sub_1DB1445E0(v37, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v38, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v39, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a4[1];
  v36 = *a4;
  v14 = a4[2];
  v45[0] = *a1;
  v45[1] = v8;
  v45[2] = v9;
  v15 = *(a6 + 40);

  v37 = v15(a5, a6);
  v19 = v18;
  v44 = 2;
  if (v11)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v21 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v22 = v10;
    v23 = v11;
    v24 = v12;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
  }

  v43[0] = v22;
  v43[1] = v23;
  v43[2] = v24;
  v43[3] = v20;
  v43[4] = v21;
  if (v13)
  {
    v25 = type metadata accessor for Expression(0, a5, v16, v17);
    WitnessTable = swift_getWitnessTable();
    v27 = v36;
    v28 = v13;
    v29 = v14;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v25 = 0;
    WitnessTable = 0;
  }

  v42[0] = v27;
  v42[1] = v28;
  v42[2] = v29;
  v42[3] = v25;
  v42[4] = WitnessTable;
  v40 = xmmword_1DB2D0E80;
  memset(v41, 0, sizeof(v41));
  sub_1DB1757B0(v10, v11, v12);
  sub_1DB1757B0(v36, v13, v14);
  v30 = sub_1DB2BB364();
  v33 = type metadata accessor for Expression(0, v30, v31, v32);
  v34 = swift_getWitnessTable();
  sub_1DB2B41A8(v45, v37, v19, &v44, 1, a2 & 1, v43, v42, v41, &v40, v38, v33, v34);

  sub_1DB1445E0(v41, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v42, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v43, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a4[1];
  v28 = *a4;
  v14 = a4[2];
  v38[0] = *a1;
  v38[1] = v8;
  v38[2] = v9;
  v15 = *(a6 + 40);

  v16 = v15(a5, a6);
  v18 = v17;
  v37 = 2;
  if (v11)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v20 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v21 = v10;
    v22 = v11;
    v23 = v12;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v19 = 0;
    v20 = 0;
  }

  v36[0] = v21;
  v36[1] = v22;
  v36[2] = v23;
  v36[3] = v19;
  v36[4] = v20;
  v24 = sub_1DB2BB364();
  v34 = type metadata accessor for Expression(0, v24, v25, v26);
  v33[0] = v28;
  v33[1] = v13;
  WitnessTable = swift_getWitnessTable();
  v33[2] = v14;
  v31 = xmmword_1DB2D0E80;
  memset(v32, 0, sizeof(v32));
  sub_1DB1757B0(v10, v11, v12);

  sub_1DB2B41A8(v38, v16, v18, &v37, 1, a2 & 1, v36, v33, v32, &v31, v29, v34, WitnessTable);

  sub_1DB1445E0(v32, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v33, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v36, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a4[1];
  v32 = *a4;
  v14 = a4[2];
  v42[0] = *a1;
  v42[1] = v8;
  v42[2] = v9;
  v15 = *(a6 + 40);

  v16 = v15(a5, a6);
  v33 = v17;
  v34 = v16;
  v41 = 2;
  v40[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v40[0] = v10;
  v40[1] = v11;
  v40[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v40[2] = v12;
  if (v13)
  {
    v20 = type metadata accessor for Expression(0, a5, v18, v19);
    WitnessTable = swift_getWitnessTable();
    v22 = v32;
    v23 = v32;
    v24 = v13;
    v25 = v14;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v20 = 0;
    WitnessTable = 0;
    v22 = v32;
  }

  v39[0] = v23;
  v39[1] = v24;
  v39[2] = v25;
  v39[3] = v20;
  v39[4] = WitnessTable;
  v37 = xmmword_1DB2D0E80;
  memset(v38, 0, sizeof(v38));

  sub_1DB1757B0(v22, v13, v14);
  v26 = sub_1DB2BB364();
  v29 = type metadata accessor for Expression(0, v26, v27, v28);
  v30 = swift_getWitnessTable();
  sub_1DB2B41A8(v42, v34, v33, &v41, 1, a2 & 1, v40, v39, v38, &v37, v35, v29, v30);

  sub_1DB1445E0(v38, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v39, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v40, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a4[1];
  v22 = *a4;
  v23 = a4[2];
  v33[0] = *a1;
  v33[1] = v8;
  v33[2] = v9;
  v14 = *(a6 + 40);

  v15 = v14(a5, a6);
  v17 = v16;
  v32 = 2;
  v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v31[0] = v10;
  v31[1] = v11;
  v31[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v31[2] = v12;
  v18 = sub_1DB2BB364();
  v29 = type metadata accessor for Expression(0, v18, v19, v20);
  v28[0] = v22;
  v28[1] = v13;
  WitnessTable = swift_getWitnessTable();
  v28[2] = v23;
  v26 = xmmword_1DB2D0E80;
  memset(v27, 0, sizeof(v27));

  sub_1DB2B41A8(v33, v15, v17, &v32, 1, a2, v31, v28, v27, &v26, v24, v29, WitnessTable);

  sub_1DB1445E0(v27, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v28, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v31, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

double TableBuilder.column<A>(_:unique:check:defaultValue:)(uint64_t *a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v37[0] = *a1;
  v37[1] = v9;
  v37[2] = v10;
  v14 = *(a6 + 40);

  v15 = v14(a5, a6);
  v17 = v16;
  v36 = 2;
  if (v12)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v19 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v20 = v11;
    v21 = v12;
    v22 = v13;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v18 = 0;
    v19 = 0;
  }

  v35[0] = v20;
  v35[1] = v21;
  v35[2] = v22;
  v35[3] = v18;
  v35[4] = v19;
  v23 = *(a6 + 8);
  v34[3] = a5;
  v34[4] = v23;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v34);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a4, a5);
  v32 = xmmword_1DB2D0E80;
  memset(v33, 0, sizeof(v33));
  sub_1DB1757B0(v11, v12, v13);
  v27 = type metadata accessor for Expression(0, a5, v25, v26);
  WitnessTable = swift_getWitnessTable();
  sub_1DB2B41A8(v37, v15, v17, &v36, 0, a2 & 1, v35, v34, v33, &v32, v30, v27, WitnessTable);

  sub_1DB1445E0(v33, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v34, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v35, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v32[0] = *a1;
  v32[1] = v9;
  v32[2] = v10;
  v14 = *(a6 + 40);

  v24 = v14(a5, a6);
  v16 = v15;
  v31 = 2;
  v30[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v30[0] = v11;
  v30[1] = v12;
  v30[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v30[2] = v13;
  v17 = *(a6 + 8);
  v29[3] = a5;
  v29[4] = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a4, a5);
  v27 = xmmword_1DB2D0E80;
  memset(v28, 0, sizeof(v28));
  v21 = type metadata accessor for Expression(0, a5, v19, v20);

  WitnessTable = swift_getWitnessTable();
  sub_1DB2B41A8(v32, v24, v16, &v31, 0, a2, v30, v29, v28, &v27, v25, v21, WitnessTable);

  sub_1DB1445E0(v28, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v29, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v30, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v38[0] = *a1;
  v38[1] = v9;
  v38[2] = v10;
  v14 = *(a6 + 40);

  v15 = v14(a5, a6);
  v17 = v16;
  v37 = 2;
  if (v12)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v19 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v20 = v11;
    v21 = v12;
    v22 = v13;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v18 = 0;
    v19 = 0;
  }

  v36[0] = v20;
  v36[1] = v21;
  v36[2] = v22;
  v36[3] = v18;
  v36[4] = v19;
  v23 = *(a6 + 8);
  v35[3] = a5;
  v35[4] = v23;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v35);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a4, a5);
  v33 = xmmword_1DB2D0E80;
  memset(v34, 0, sizeof(v34));
  sub_1DB1757B0(v11, v12, v13);
  v25 = sub_1DB2BB364();
  v28 = type metadata accessor for Expression(0, v25, v26, v27);
  WitnessTable = swift_getWitnessTable();
  sub_1DB2B41A8(v38, v15, v17, &v37, 1, a2 & 1, v36, v35, v34, &v33, v31, v28, WitnessTable);

  sub_1DB1445E0(v34, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v35, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v36, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v33[0] = *a1;
  v33[1] = v9;
  v33[2] = v10;
  v14 = *(a6 + 40);

  v25 = v14(a5, a6);
  v16 = v15;
  v32 = 2;
  v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v31[0] = v11;
  v31[1] = v12;
  v31[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v31[2] = v13;
  v17 = *(a6 + 8);
  v30[3] = a5;
  v30[4] = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a4, a5);
  v28 = xmmword_1DB2D0E80;
  memset(v29, 0, sizeof(v29));
  v19 = sub_1DB2BB364();
  v22 = type metadata accessor for Expression(0, v19, v20, v21);

  WitnessTable = swift_getWitnessTable();
  sub_1DB2B41A8(v33, v25, v16, &v32, 1, a2, v31, v30, v29, &v28, v26, v22, WitnessTable);

  sub_1DB1445E0(v29, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v30, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v31, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

double TableBuilder.column<A>(_:primaryKey:check:defaultValue:)(uint64_t *a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a4[1];
  v37 = a4[2];
  v38 = *a4;
  v45[0] = *a1;
  v45[1] = v9;
  v45[2] = v10;
  v15 = *(a6 + 40);

  v18 = v15(a5, a6);
  v20 = v19;
  if (a2)
  {
    v21 = 0;
  }

  else
  {
    v21 = 2;
  }

  v44 = v21;
  if (v12)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v23 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v24 = v11;
    v25 = v12;
    v26 = v13;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v22 = 0;
    v23 = 0;
  }

  v43[0] = v24;
  v43[1] = v25;
  v43[2] = v26;
  v43[3] = v22;
  v43[4] = v23;
  if (v14)
  {
    v27 = type metadata accessor for Expression(0, a5, v16, v17);
    WitnessTable = swift_getWitnessTable();
    v29 = v38;
    v30 = v14;
    v31 = v37;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v27 = 0;
    WitnessTable = 0;
  }

  v42[0] = v29;
  v42[1] = v30;
  v42[2] = v31;
  v42[3] = v27;
  v42[4] = WitnessTable;
  v40 = xmmword_1DB2D0E80;
  memset(v41, 0, sizeof(v41));
  sub_1DB1757B0(v11, v12, v13);
  sub_1DB1757B0(v38, v14, v37);
  v34 = type metadata accessor for Expression(0, a5, v32, v33);
  v35 = swift_getWitnessTable();
  sub_1DB2B41A8(v45, v18, v20, &v44, 0, 0, v43, v42, v41, &v40, v39, v34, v35);

  sub_1DB1445E0(v41, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v42, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v43, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a4[1];
  v34 = a4[2];
  v35 = *a4;
  v42[0] = *a1;
  v42[1] = v9;
  v42[2] = v10;
  v15 = *(a6 + 40);

  v16 = v15(a5, a6);
  v18 = v17;
  if (a2)
  {
    v19 = 0;
  }

  else
  {
    v19 = 2;
  }

  v41 = v19;
  v40[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v40[0] = v11;
  v40[1] = v12;
  v40[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v40[2] = v13;
  if (v14)
  {
    v22 = type metadata accessor for Expression(0, a5, v20, v21);
    WitnessTable = swift_getWitnessTable();
    v25 = v34;
    v24 = v35;
    v26 = v35;
    v27 = v14;
    v28 = v34;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v22 = 0;
    WitnessTable = 0;
    v25 = v34;
    v24 = v35;
  }

  v39[0] = v26;
  v39[1] = v27;
  v39[2] = v28;
  v39[3] = v22;
  v39[4] = WitnessTable;
  v37 = xmmword_1DB2D0E80;
  memset(v38, 0, sizeof(v38));

  sub_1DB1757B0(v24, v14, v25);
  v31 = type metadata accessor for Expression(0, a5, v29, v30);
  v32 = swift_getWitnessTable();
  sub_1DB2B41A8(v42, v16, v18, &v41, 0, 0, v40, v39, v38, &v37, v36, v31, v32);

  sub_1DB1445E0(v38, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v39, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v40, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

double TableBuilder.column<A>(_:primaryKey:check:)(uint64_t *a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a2;
  v12 = *a3;
  v13 = a3[1];
  v14 = a3[2];
  v35[0] = *a1;
  v35[1] = v9;
  v35[2] = v10;
  v15 = *(a5 + 40);

  v16 = v15(a4, a5);
  v18 = v17;
  v34 = v11;
  if (v13)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v20 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v21 = v12;
    v22 = v13;
    v23 = v14;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v19 = 0;
    v20 = 0;
  }

  v33[0] = v21;
  v33[1] = v22;
  v33[2] = v23;
  v33[3] = v19;
  v33[4] = v20;
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v29 = xmmword_1DB2D0E80;
  memset(v30, 0, sizeof(v30));
  sub_1DB1757B0(v12, v13, v14);
  v26 = type metadata accessor for Expression(0, a4, v24, v25);
  WitnessTable = swift_getWitnessTable();
  sub_1DB2B41A8(v35, v16, v18, &v34, 0, 0, v33, v31, v30, &v29, v6, v26, WitnessTable);

  sub_1DB1445E0(v30, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v31, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v33, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v6 = v5;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a2;
  v13 = *a3;
  v12 = a3[1];
  v14 = a3[2];
  v30[0] = *a1;
  v30[1] = v9;
  v30[2] = v10;
  v15 = *(a5 + 40);

  v16 = v15(a4, a5);
  v18 = v17;
  v29 = v11;
  v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v28[0] = v13;
  v28[1] = v12;
  v28[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v28[2] = v14;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v24 = xmmword_1DB2D0E80;
  memset(v25, 0, sizeof(v25));
  v21 = type metadata accessor for Expression(0, a4, v19, v20);

  WitnessTable = swift_getWitnessTable();
  sub_1DB2B41A8(v30, v16, v18, &v29, 0, 0, v28, v26, v25, &v24, v6, v21, WitnessTable);

  sub_1DB1445E0(v25, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v26, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v28, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

double TableBuilder.column<A>(_:unique:check:references:_:)(uint64_t *a1, char a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a5[1];
  v30 = *a5;
  v15 = a5[2];
  v45[0] = *a1;
  v45[1] = v9;
  v45[2] = v10;
  v16 = *(a7 + 40);

  v31 = v16(a6, a7);
  v18 = v17;
  v44 = 2;
  if (v12)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v20 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v21 = v11;
    v22 = v12;
    v23 = v13;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v19 = 0;
    v20 = 0;
  }

  v43[0] = v21;
  v43[1] = v22;
  v43[2] = v23;
  v43[3] = v19;
  v43[4] = v20;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  sub_1DB164980(a4, v35);
  v26 = type metadata accessor for Expression(0, a6, v24, v25);
  v39 = v26;
  WitnessTable = swift_getWitnessTable();
  v36 = v30;
  v37 = v14;
  v40 = WitnessTable;
  v38 = v15;
  v34 = xmmword_1DB2D0E80;
  sub_1DB1757B0(v11, v12, v13);

  sub_1DB2B41A8(v45, v31, v18, &v44, 0, a2 & 1, v43, v41, v35, &v34, v32, v26, WitnessTable);

  sub_1DB1445E0(v41, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v35, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v43, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v9 = a1[1];
  v10 = a1[2];
  v12 = *a3;
  v11 = a3[1];
  v13 = a3[2];
  v14 = a5[1];
  v25 = *a5;
  v15 = a5[2];
  v40[0] = *a1;
  v40[1] = v9;
  v40[2] = v10;
  v16 = *(a7 + 40);

  v26 = v16(a6, a7);
  v18 = v17;
  v39 = 2;
  v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v38[0] = v12;
  v38[1] = v11;
  v38[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v38[2] = v13;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_1DB164980(a4, v30);
  v21 = type metadata accessor for Expression(0, a6, v19, v20);
  v34 = v21;
  WitnessTable = swift_getWitnessTable();
  v31 = v25;
  v32 = v14;
  v35 = WitnessTable;
  v33 = v15;
  v29 = xmmword_1DB2D0E80;

  sub_1DB2B41A8(v40, v26, v18, &v39, 0, a2, v38, v36, v30, &v29, v27, v21, WitnessTable);

  sub_1DB1445E0(v36, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v30, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v38, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a5[1];
  v34 = *a5;
  v15 = a5[2];
  v49[0] = *a1;
  v49[1] = v9;
  v49[2] = v10;
  v16 = *(a7 + 40);

  v35 = v16(a6, a7);
  v18 = v17;
  v48 = 2;
  if (v12)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v20 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v21 = v11;
    v22 = v12;
    v23 = v13;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v19 = 0;
    v20 = 0;
  }

  v47[0] = v21;
  v47[1] = v22;
  v47[2] = v23;
  v47[3] = v19;
  v47[4] = v20;
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  sub_1DB164980(a4, v39);
  v43 = type metadata accessor for Expression(0, a6, v24, v25);
  WitnessTable = swift_getWitnessTable();
  v40 = v34;
  v41 = v14;
  v44 = WitnessTable;
  v42 = v15;
  v38 = xmmword_1DB2D0E80;
  sub_1DB1757B0(v11, v12, v13);
  v27 = sub_1DB2BB364();
  v30 = type metadata accessor for Expression(0, v27, v28, v29);

  v31 = swift_getWitnessTable();
  sub_1DB2B41A8(v49, v35, v18, &v48, 1, a2 & 1, v47, v45, v39, &v38, v37, v30, v31);

  sub_1DB1445E0(v45, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v39, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v47, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a5[1];
  v29 = *a5;
  v15 = a5[2];
  v44[0] = *a1;
  v44[1] = v9;
  v44[2] = v10;
  v16 = *(a7 + 40);

  v30 = v16(a6, a7);
  v18 = v17;
  v43 = 2;
  v42[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v42[0] = v11;
  v42[1] = v12;
  v42[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v42[2] = v13;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_1DB164980(a4, v34);
  v38 = type metadata accessor for Expression(0, a6, v19, v20);
  WitnessTable = swift_getWitnessTable();
  v35 = v29;
  v36 = v14;
  v39 = WitnessTable;
  v37 = v15;
  v33 = xmmword_1DB2D0E80;
  v22 = sub_1DB2BB364();
  v25 = type metadata accessor for Expression(0, v22, v23, v24);

  v26 = swift_getWitnessTable();
  sub_1DB2B41A8(v44, v30, v18, &v43, 1, a2, v42, v40, v34, &v33, v31, v25, v26);

  sub_1DB1445E0(v40, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v34, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v42, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

double TableBuilder.column<A>(_:primaryKey:check:references:_:)(uint64_t *a1, char a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v10 = a1[1];
  v11 = a1[2];
  v12 = a3[1];
  v34 = *a3;
  v13 = a3[2];
  v14 = a5[1];
  v32 = *a5;
  v15 = a5[2];
  v46[0] = *a1;
  v46[1] = v10;
  v46[2] = v11;
  v16 = *(a7 + 40);

  v17 = v16(a6, a7);
  v19 = v18;
  if (a2)
  {
    v20 = 0;
  }

  else
  {
    v20 = 2;
  }

  v45 = v20;
  if (v12)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v22 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v23 = v34;
    v24 = v12;
    v25 = v13;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v21 = 0;
    v22 = 0;
  }

  v44[0] = v23;
  v44[1] = v24;
  v44[2] = v25;
  v44[3] = v21;
  v44[4] = v22;
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  sub_1DB164980(a4, v36);
  v28 = type metadata accessor for Expression(0, a6, v26, v27);
  v40 = v28;
  WitnessTable = swift_getWitnessTable();
  v37 = v32;
  v38 = v14;
  v41 = WitnessTable;
  v39 = v15;
  v35 = xmmword_1DB2D0E80;
  sub_1DB1757B0(v34, v12, v13);

  sub_1DB2B41A8(v46, v17, v19, &v45, 0, 0, v44, v42, v36, &v35, v33, v28, WitnessTable);

  sub_1DB1445E0(v42, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v36, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v44, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v10 = a1[1];
  v11 = a1[2];
  v13 = *a3;
  v12 = a3[1];
  v14 = a3[2];
  v15 = a5[1];
  v27 = *a5;
  v28 = a5[2];
  v41[0] = *a1;
  v41[1] = v10;
  v41[2] = v11;
  v16 = *(a7 + 40);

  v17 = v16(a6, a7);
  v19 = v18;
  if (a2)
  {
    v20 = 0;
  }

  else
  {
    v20 = 2;
  }

  v40 = v20;
  v39[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v39[0] = v13;
  v39[1] = v12;
  v39[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v39[2] = v14;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  sub_1DB164980(a4, v31);
  v23 = type metadata accessor for Expression(0, a6, v21, v22);
  v35 = v23;
  WitnessTable = swift_getWitnessTable();
  v32 = v27;
  v33 = v15;
  v36 = WitnessTable;
  v34 = v28;
  v30 = xmmword_1DB2D0E80;

  sub_1DB2B41A8(v41, v17, v19, &v40, 0, 0, v39, v37, v31, &v30, v29, v23, WitnessTable);

  sub_1DB1445E0(v37, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v31, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v39, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v10 = a1[1];
  v11 = a1[2];
  v13 = *a3;
  v12 = a3[1];
  v38 = a3[2];
  v14 = a5[1];
  v36 = *a5;
  v15 = a5[2];
  v50[0] = *a1;
  v50[1] = v10;
  v50[2] = v11;
  v16 = *(a7 + 40);

  v17 = v16(a6, a7);
  v19 = v18;
  if (a2)
  {
    v20 = 0;
  }

  else
  {
    v20 = 2;
  }

  v49 = v20;
  if (v12)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v22 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v23 = v13;
    v24 = v12;
    v25 = v38;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v21 = 0;
    v22 = 0;
  }

  v48[0] = v23;
  v48[1] = v24;
  v48[2] = v25;
  v48[3] = v21;
  v48[4] = v22;
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  sub_1DB164980(a4, v40);
  v44 = type metadata accessor for Expression(0, a6, v26, v27);
  WitnessTable = swift_getWitnessTable();
  v41 = v36;
  v42 = v14;
  v45 = WitnessTable;
  v43 = v15;
  v39 = xmmword_1DB2D0E80;
  sub_1DB1757B0(v13, v12, v38);
  v29 = sub_1DB2BB364();
  v32 = type metadata accessor for Expression(0, v29, v30, v31);

  v33 = swift_getWitnessTable();
  sub_1DB2B41A8(v50, v17, v19, &v49, 1, 0, v48, v46, v40, &v39, v37, v32, v33);

  sub_1DB1445E0(v46, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v40, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v48, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v10 = a1[1];
  v11 = a1[2];
  v13 = *a3;
  v12 = a3[1];
  v14 = a3[2];
  v15 = a5[1];
  v31 = *a5;
  v32 = a5[2];
  v45[0] = *a1;
  v45[1] = v10;
  v45[2] = v11;
  v16 = *(a7 + 40);

  v17 = v16(a6, a7);
  v19 = v18;
  if (a2)
  {
    v20 = 0;
  }

  else
  {
    v20 = 2;
  }

  v44 = v20;
  v43[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v43[0] = v13;
  v43[1] = v12;
  v43[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v43[2] = v14;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  sub_1DB164980(a4, v35);
  v39 = type metadata accessor for Expression(0, a6, v21, v22);
  WitnessTable = swift_getWitnessTable();
  v36 = v31;
  v37 = v15;
  v40 = WitnessTable;
  v38 = v32;
  v34 = xmmword_1DB2D0E80;
  v24 = sub_1DB2BB364();
  v27 = type metadata accessor for Expression(0, v24, v25, v26);

  v28 = swift_getWitnessTable();
  sub_1DB2B41A8(v45, v17, v19, &v44, 1, 0, v43, v41, v35, &v34, v33, v27, v28);

  sub_1DB1445E0(v41, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v35, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v43, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

double TableBuilder.column<A>(_:unique:check:defaultValue:collate:)(uint64_t *a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v9 = a1[1];
  v10 = a1[2];
  v12 = *a3;
  v11 = a3[1];
  v13 = a3[2];
  v14 = *a4;
  v15 = a4[1];
  v40 = a4[2];
  v41 = *a5;
  v39 = a5[1];
  v51[0] = *a1;
  v51[1] = v9;
  v51[2] = v10;
  v16 = *(a7 + 40);

  v42 = v16(a6, a7);
  v20 = v19;
  v50 = 2;
  if (v11)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v22 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v23 = v12;
    v24 = v11;
    v25 = v13;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v21 = 0;
    v22 = 0;
  }

  v26 = v12;
  v49[0] = v23;
  v49[1] = v24;
  v49[2] = v25;
  v49[3] = v21;
  v49[4] = v22;
  v27 = v14;
  if (v15)
  {
    v28 = type metadata accessor for Expression(0, a6, v17, v18);
    WitnessTable = swift_getWitnessTable();
    v30 = v14;
    v31 = v15;
    v32 = v40;
    v33 = v40;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v33 = 0;
    v28 = 0;
    WitnessTable = 0;
    v32 = v40;
  }

  v48[0] = v30;
  v48[1] = v31;
  v48[2] = v33;
  v48[3] = v28;
  v48[4] = WitnessTable;
  memset(v47, 0, sizeof(v47));
  v45 = v41;
  v46 = v39;
  sub_1DB1757B0(v26, v11, v13);
  sub_1DB1757B0(v27, v15, v32);
  sub_1DB280CEC(v41, v39);
  v36 = type metadata accessor for Expression(0, a6, v34, v35);
  v37 = swift_getWitnessTable();
  sub_1DB2B41A8(v51, v42, v20, &v50, 0, a2 & 1, v49, v48, v47, &v45, v43, v36, v37);

  sub_1DB2B51E8(v45, v46);
  sub_1DB1445E0(v47, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v48, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v49, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a4[1];
  v31 = a4[2];
  v32 = *a4;
  v34 = a5[1];
  v35 = *a5;
  v45[0] = *a1;
  v45[1] = v9;
  v45[2] = v10;
  v15 = *(a7 + 40);

  v36 = v15(a6, a7);
  v33 = v16;
  v44 = 2;
  v43[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v43[0] = v11;
  v43[1] = v12;
  v43[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v43[2] = v13;
  if (v14)
  {
    v19 = type metadata accessor for Expression(0, a6, v17, v18);
    WitnessTable = swift_getWitnessTable();
    v22 = v31;
    v21 = v32;
    v23 = v32;
    v24 = v14;
    v25 = v31;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v19 = 0;
    WitnessTable = 0;
    v22 = v31;
    v21 = v32;
  }

  v42[0] = v23;
  v42[1] = v24;
  v42[2] = v25;
  v42[3] = v19;
  v42[4] = WitnessTable;
  memset(v41, 0, sizeof(v41));
  v39 = v35;
  v40 = v34;

  sub_1DB1757B0(v21, v14, v22);
  sub_1DB280CEC(v35, v34);
  v28 = type metadata accessor for Expression(0, a6, v26, v27);
  v29 = swift_getWitnessTable();
  sub_1DB2B41A8(v45, v36, v33, &v44, 0, a2 & 1, v43, v42, v41, &v39, v37, v28, v29);

  sub_1DB2B51E8(v39, v40);
  sub_1DB1445E0(v41, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v42, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v43, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v9 = a1[1];
  v10 = a1[2];
  v12 = *a3;
  v11 = a3[1];
  v13 = a3[2];
  v14 = *a4;
  v15 = a4[1];
  v41 = a4[2];
  v42 = *a5;
  v40 = a5[1];
  v52[0] = *a1;
  v52[1] = v9;
  v52[2] = v10;
  v16 = *(a7 + 40);

  v43 = v16(a6, a7);
  v20 = v19;
  v51 = 2;
  if (v11)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v22 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v23 = v12;
    v24 = v11;
    v25 = v13;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v21 = 0;
    v22 = 0;
  }

  v26 = v12;
  v50[0] = v23;
  v50[1] = v24;
  v50[2] = v25;
  v50[3] = v21;
  v50[4] = v22;
  v27 = v14;
  if (v15)
  {
    v28 = type metadata accessor for Expression(0, a6, v17, v18);
    WitnessTable = swift_getWitnessTable();
    v30 = v14;
    v31 = v15;
    v32 = v41;
    v33 = v41;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v33 = 0;
    v28 = 0;
    WitnessTable = 0;
    v32 = v41;
  }

  v49[0] = v30;
  v49[1] = v31;
  v49[2] = v33;
  v49[3] = v28;
  v49[4] = WitnessTable;
  memset(v48, 0, sizeof(v48));
  v46 = v42;
  v47 = v40;
  sub_1DB1757B0(v26, v11, v13);
  sub_1DB1757B0(v27, v15, v32);
  sub_1DB280CEC(v42, v40);
  v34 = sub_1DB2BB364();
  v37 = type metadata accessor for Expression(0, v34, v35, v36);
  v38 = swift_getWitnessTable();
  sub_1DB2B41A8(v52, v43, v20, &v51, 1, a2 & 1, v50, v49, v48, &v46, v44, v37, v38);

  sub_1DB2B51E8(v46, v47);
  sub_1DB1445E0(v48, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v49, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v50, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v9 = a1[1];
  v10 = a1[2];
  v12 = *a3;
  v11 = a3[1];
  v33 = a3[2];
  v29 = *a4;
  v30 = a4[1];
  v13 = a4[2];
  v14 = *a5;
  v15 = a5[1];
  v42[0] = *a1;
  v42[1] = v9;
  v42[2] = v10;
  v16 = *(a7 + 40);

  v17 = v16(a6, a7);
  v19 = v18;
  v41 = 2;
  if (v11)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v21 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v22 = v12;
    v23 = v11;
    v24 = v33;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
  }

  v40[0] = v22;
  v40[1] = v23;
  v40[2] = v24;
  v40[3] = v20;
  v40[4] = v21;
  v25 = sub_1DB2BB364();
  v38 = type metadata accessor for Expression(0, v25, v26, v27);
  v37[0] = v29;
  v37[1] = v30;
  WitnessTable = swift_getWitnessTable();
  v37[2] = v13;
  memset(v36, 0, sizeof(v36));
  v34 = v14;
  v35 = v15;
  sub_1DB1757B0(v12, v11, v33);

  sub_1DB280CEC(v14, v15);
  sub_1DB2B41A8(v42, v17, v19, &v41, 1, a2 & 1, v40, v37, v36, &v34, v31, v38, WitnessTable);

  sub_1DB2B51E8(v34, v35);
  sub_1DB1445E0(v36, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v37, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v40, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a4[1];
  v32 = a4[2];
  v33 = *a4;
  v35 = a5[1];
  v36 = *a5;
  v46[0] = *a1;
  v46[1] = v9;
  v46[2] = v10;
  v15 = *(a7 + 40);

  v37 = v15(a6, a7);
  v34 = v16;
  v45 = 2;
  v44[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v44[0] = v11;
  v44[1] = v12;
  v44[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v44[2] = v13;
  if (v14)
  {
    v19 = type metadata accessor for Expression(0, a6, v17, v18);
    WitnessTable = swift_getWitnessTable();
    v22 = v32;
    v21 = v33;
    v23 = v33;
    v24 = v14;
    v25 = v32;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v19 = 0;
    WitnessTable = 0;
    v22 = v32;
    v21 = v33;
  }

  v43[0] = v23;
  v43[1] = v24;
  v43[2] = v25;
  v43[3] = v19;
  v43[4] = WitnessTable;
  memset(v42, 0, sizeof(v42));
  v40 = v36;
  v41 = v35;

  sub_1DB1757B0(v21, v14, v22);
  sub_1DB280CEC(v36, v35);
  v26 = sub_1DB2BB364();
  v29 = type metadata accessor for Expression(0, v26, v27, v28);
  v30 = swift_getWitnessTable();
  sub_1DB2B41A8(v46, v37, v34, &v45, 1, a2 & 1, v44, v43, v42, &v40, v38, v29, v30);

  sub_1DB2B51E8(v40, v41);
  sub_1DB1445E0(v42, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v43, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v44, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a4[1];
  v15 = a4[2];
  v25 = *a5;
  v23 = *a4;
  v24 = a5[1];
  v37[0] = *a1;
  v37[1] = v9;
  v37[2] = v10;
  v16 = *(a7 + 40);

  v26 = v16(a6, a7);
  v18 = v17;
  v36 = 2;
  v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v35[0] = v11;
  v35[1] = v12;
  v35[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v35[2] = v13;
  v19 = sub_1DB2BB364();
  v33 = type metadata accessor for Expression(0, v19, v20, v21);
  v32[0] = v23;
  v32[1] = v14;
  WitnessTable = swift_getWitnessTable();
  v32[2] = v15;
  memset(v31, 0, sizeof(v31));
  v29 = v25;
  v30 = v24;

  sub_1DB280CEC(v25, v24);
  sub_1DB2B41A8(v37, v26, v18, &v36, 1, a2, v35, v32, v31, &v29, v27, v33, WitnessTable);

  sub_1DB2B51E8(v29, v30);
  sub_1DB1445E0(v31, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v32, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v35, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

double TableBuilder.column<A>(_:unique:check:defaultValue:collate:)(uint64_t *a1, char a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v9 = a1[1];
  v10 = a1[2];
  v12 = *a3;
  v11 = a3[1];
  v13 = a3[2];
  v14 = *a5;
  v15 = a5[1];
  v41[0] = *a1;
  v41[1] = v9;
  v41[2] = v10;
  v16 = *(a7 + 40);

  v32 = v16(a6, a7);
  v18 = v17;
  v40 = 2;
  if (v11)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v20 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v21 = v12;
    v22 = v11;
    v23 = v13;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v19 = 0;
    v20 = 0;
  }

  v39[0] = v21;
  v39[1] = v22;
  v39[2] = v23;
  v39[3] = v19;
  v39[4] = v20;
  v24 = *(a7 + 8);
  v38[3] = a6;
  v38[4] = v24;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_0, a4, a6);
  memset(v37, 0, sizeof(v37));
  v35 = v14;
  v36 = v15;
  sub_1DB1757B0(v12, v11, v13);
  sub_1DB280CEC(v14, v15);
  v28 = type metadata accessor for Expression(0, a6, v26, v27);
  WitnessTable = swift_getWitnessTable();
  sub_1DB2B41A8(v41, v32, v18, &v40, 0, a2 & 1, v39, v38, v37, &v35, v33, v28, WitnessTable);

  sub_1DB2B51E8(v35, v36);
  sub_1DB1445E0(v37, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v38, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v39, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a5[1];
  v25 = *a5;
  v36[0] = *a1;
  v36[1] = v9;
  v36[2] = v10;
  v15 = *(a7 + 40);

  v27 = v15(a6, a7);
  v17 = v16;
  v35 = 2;
  v34[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v34[0] = v11;
  v34[1] = v12;
  v34[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v34[2] = v13;
  v18 = *(a7 + 8);
  v33[3] = a6;
  v33[4] = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_0, a4, a6);
  memset(v32, 0, sizeof(v32));
  v30 = v25;
  v31 = v14;

  sub_1DB280CEC(v25, v14);
  v22 = type metadata accessor for Expression(0, a6, v20, v21);
  WitnessTable = swift_getWitnessTable();
  sub_1DB2B41A8(v36, v27, v17, &v35, 0, a2, v34, v33, v32, &v30, v28, v22, WitnessTable);

  sub_1DB2B51E8(v30, v31);
  sub_1DB1445E0(v32, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v33, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v34, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v9 = a1[1];
  v10 = a1[2];
  v12 = *a3;
  v11 = a3[1];
  v13 = a3[2];
  v14 = *a5;
  v15 = a5[1];
  v42[0] = *a1;
  v42[1] = v9;
  v42[2] = v10;
  v16 = *(a7 + 40);

  v33 = v16(a6, a7);
  v18 = v17;
  v41 = 2;
  if (v11)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
    v20 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0, &protocol conformance descriptor for Expression<A>);
    v21 = v12;
    v22 = v11;
    v23 = v13;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v19 = 0;
    v20 = 0;
  }

  v40[0] = v21;
  v40[1] = v22;
  v40[2] = v23;
  v40[3] = v19;
  v40[4] = v20;
  v24 = *(a7 + 8);
  v39[3] = a6;
  v39[4] = v24;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_0, a4, a6);
  memset(v38, 0, sizeof(v38));
  v36 = v14;
  v37 = v15;
  sub_1DB1757B0(v12, v11, v13);
  sub_1DB280CEC(v14, v15);
  v26 = sub_1DB2BB364();
  v29 = type metadata accessor for Expression(0, v26, v27, v28);
  WitnessTable = swift_getWitnessTable();
  sub_1DB2B41A8(v42, v33, v18, &v41, 1, a2 & 1, v40, v39, v38, &v36, v34, v29, WitnessTable);

  sub_1DB2B51E8(v36, v37);
  sub_1DB1445E0(v38, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v39, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v40, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a5[1];
  v26 = *a5;
  v37[0] = *a1;
  v37[1] = v9;
  v37[2] = v10;
  v15 = *(a7 + 40);

  v28 = v15(a6, a7);
  v17 = v16;
  v36 = 2;
  v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  v35[0] = v11;
  v35[1] = v12;
  v35[4] = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v35[2] = v13;
  v18 = *(a7 + 8);
  v34[3] = a6;
  v34[4] = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v34);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_0, a4, a6);
  memset(v33, 0, sizeof(v33));
  v31 = v26;
  v32 = v14;

  sub_1DB280CEC(v26, v14);
  v20 = sub_1DB2BB364();
  v23 = type metadata accessor for Expression(0, v20, v21, v22);
  WitnessTable = swift_getWitnessTable();
  sub_1DB2B41A8(v37, v28, v17, &v36, 1, a2, v35, v34, v33, &v31, v29, v23, WitnessTable);

  sub_1DB2B51E8(v31, v32);
  sub_1DB1445E0(v33, &qword_1ECC28380, &qword_1DB2C5DF0);
  sub_1DB1445E0(v34, &qword_1ECC27898, &unk_1DB2CCD00);
  sub_1DB1445E0(v35, &qword_1ECC27898, &unk_1DB2CCD00);

  return result;
}

double TableBuilder.primaryKey<A>(_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BCC40;
  *(inited + 56) = type metadata accessor for Expression(0, a2, v7, v8);
  *(inited + 64) = swift_getWitnessTable();
  *(inited + 32) = v4;
  *(inited + 40) = v3;
  *(inited + 48) = v5;
  *&v27 = 0x205952414D495250;
  *(&v27 + 1) = 0xEB0000000059454BLL;

  MEMORY[0x1E1283490](32, 0xE100000000000000);
  sub_1DB2B9A70(inited, &v27);
  v25 = 0x205952414D495250;
  v26 = 0xEB0000000059454BLL;

  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v9 = v29;
  v10 = v30;
  __swift_project_boxed_opaque_existential_1(&v27, v29);
  v11 = *(v10 + 24);
  v11(v24, v9, v10);
  v12 = v24[0];
  v13 = v24[1];

  MEMORY[0x1E1283490](v12, v13);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v15 = v25;
  v14 = v26;
  v11(v24, v9, v10);
  v16 = v24[2];

  __swift_destroy_boxed_opaque_existential_1(&v27);

  swift_beginAccess();
  v17 = *(v23 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + 16) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1DB1573FC(0, v17[2] + 1, 1, v17);
    *(v23 + 16) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_1DB1573FC((v19 > 1), v20 + 1, 1, v17);
    *(v23 + 16) = v17;
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v21 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *&v27 = v15;
  *(&v27 + 1) = v14;
  v30 = v21;
  v28 = v16;
  v17[2] = v20 + 1;
  sub_1DB1355D0(&v27, &v17[5 * v20 + 4]);
  *(v23 + 16) = v17;

  swift_endAccess();

  return result;
}

double TableBuilder.primaryKey<A, B>(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  *(inited + 56) = type metadata accessor for Expression(0, a3, v13, v14);
  *(inited + 64) = swift_getWitnessTable();
  *(inited + 32) = v7;
  *(inited + 40) = v6;
  *(inited + 48) = v8;
  *(inited + 96) = type metadata accessor for Expression(0, a4, v15, v16);
  *(inited + 104) = swift_getWitnessTable();
  *(inited + 72) = v10;
  *(inited + 80) = v9;
  *(inited + 88) = v11;
  *&v35 = 0x205952414D495250;
  *(&v35 + 1) = 0xEB0000000059454BLL;

  MEMORY[0x1E1283490](32, 0xE100000000000000);
  sub_1DB2B9A70(inited, &v35);
  v33 = 0x205952414D495250;
  v34 = 0xEB0000000059454BLL;

  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v17 = v37;
  v18 = v38;
  __swift_project_boxed_opaque_existential_1(&v35, v37);
  v19 = *(v18 + 24);
  v19(v32, v17, v18);
  v20 = v32[0];
  v21 = v32[1];

  MEMORY[0x1E1283490](v20, v21);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v23 = v33;
  v22 = v34;
  v19(v32, v17, v18);
  v24 = v32[2];

  __swift_destroy_boxed_opaque_existential_1(&v35);

  swift_beginAccess();
  v25 = *(v31 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v31 + 16) = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_1DB1573FC(0, v25[2] + 1, 1, v25);
    *(v31 + 16) = v25;
  }

  v28 = v25[2];
  v27 = v25[3];
  if (v28 >= v27 >> 1)
  {
    v25 = sub_1DB1573FC((v27 > 1), v28 + 1, 1, v25);
    *(v31 + 16) = v25;
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v29 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *&v35 = v23;
  *(&v35 + 1) = v22;
  v38 = v29;
  v36 = v24;
  v25[2] = v28 + 1;
  sub_1DB1355D0(&v35, &v25[5 * v28 + 4]);
  *(v31 + 16) = v25;

  swift_endAccess();

  return result;
}

double TableBuilder.primaryKey<A, B, C>(_:_:_:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v11 = a2[1];
  v12 = a2[2];
  v13 = a3[1];
  v36 = *a2;
  v37 = *a3;
  v14 = a3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD590;
  *(inited + 56) = type metadata accessor for Expression(0, a4, v16, v17);
  *(inited + 64) = swift_getWitnessTable();
  *(inited + 32) = v9;
  *(inited + 40) = v8;
  *(inited + 48) = v10;
  *(inited + 96) = type metadata accessor for Expression(0, a5, v18, v19);
  *(inited + 104) = swift_getWitnessTable();
  *(inited + 72) = v36;
  *(inited + 80) = v11;
  *(inited + 88) = v12;
  *(inited + 136) = type metadata accessor for Expression(0, a6, v20, v21);
  *(inited + 144) = swift_getWitnessTable();
  *(inited + 112) = v37;
  *(inited + 120) = v13;
  *(inited + 128) = v14;
  *&v43 = 0x205952414D495250;
  *(&v43 + 1) = 0xEB0000000059454BLL;

  MEMORY[0x1E1283490](32, 0xE100000000000000);
  sub_1DB2B9A70(inited, &v43);
  v41 = 0x205952414D495250;
  v42 = 0xEB0000000059454BLL;

  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v22 = v45;
  v23 = v46;
  __swift_project_boxed_opaque_existential_1(&v43, v45);
  v24 = *(v23 + 24);
  v24(v40, v22, v23);
  v25 = v40[0];
  v26 = v40[1];

  MEMORY[0x1E1283490](v25, v26);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v28 = v41;
  v27 = v42;
  v24(v40, v22, v23);
  v29 = v40[2];

  __swift_destroy_boxed_opaque_existential_1(&v43);

  swift_beginAccess();
  v30 = *(v39 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v39 + 16) = v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = sub_1DB1573FC(0, v30[2] + 1, 1, v30);
    *(v39 + 16) = v30;
  }

  v33 = v30[2];
  v32 = v30[3];
  if (v33 >= v32 >> 1)
  {
    v30 = sub_1DB1573FC((v32 > 1), v33 + 1, 1, v30);
    *(v39 + 16) = v30;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v34 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *&v43 = v28;
  *(&v43 + 1) = v27;
  v46 = v34;
  v44 = v29;
  v30[2] = v33 + 1;
  sub_1DB1355D0(&v43, &v30[5 * v33 + 4]);
  *(v39 + 16) = v30;

  swift_endAccess();

  return result;
}

double TableBuilder.primaryKey<A, B, C, D>(_:_:_:_:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v41 = *a3;
  v40 = a3[1];
  v16 = a3[2];
  v43 = a4[1];
  v44 = a4[2];
  v45 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2C3A50;
  *(inited + 56) = type metadata accessor for Expression(0, a5, v18, v19);
  *(inited + 64) = swift_getWitnessTable();
  *(inited + 32) = v10;
  *(inited + 40) = v11;
  *(inited + 48) = v12;
  *(inited + 96) = type metadata accessor for Expression(0, a6, v20, v21);
  *(inited + 104) = swift_getWitnessTable();
  *(inited + 72) = v13;
  *(inited + 80) = v14;
  *(inited + 88) = v15;
  *(inited + 136) = type metadata accessor for Expression(0, a7, v22, v23);
  *(inited + 144) = swift_getWitnessTable();
  *(inited + 112) = v41;
  *(inited + 120) = v40;
  *(inited + 128) = v16;
  *(inited + 176) = type metadata accessor for Expression(0, a8, v24, v25);
  *(inited + 184) = swift_getWitnessTable();
  *(inited + 152) = v45;
  *(inited + 160) = v43;
  *(inited + 168) = v44;
  *&v51 = 0x205952414D495250;
  *(&v51 + 1) = 0xEB0000000059454BLL;

  MEMORY[0x1E1283490](32, 0xE100000000000000);
  sub_1DB2B9A70(inited, &v51);
  v49 = 0x205952414D495250;
  v50 = 0xEB0000000059454BLL;

  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v26 = v53;
  v27 = v54;
  __swift_project_boxed_opaque_existential_1(&v51, v53);
  v28 = *(v27 + 24);
  v28(v48, v26, v27);
  v29 = v48[0];
  v30 = v48[1];

  MEMORY[0x1E1283490](v29, v30);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v32 = v49;
  v31 = v50;
  v28(v48, v26, v27);
  v33 = v48[2];

  __swift_destroy_boxed_opaque_existential_1(&v51);

  swift_beginAccess();
  v34 = *(v47 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v47 + 16) = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = sub_1DB1573FC(0, v34[2] + 1, 1, v34);
    *(v47 + 16) = v34;
  }

  v37 = v34[2];
  v36 = v34[3];
  if (v37 >= v36 >> 1)
  {
    v34 = sub_1DB1573FC((v36 > 1), v37 + 1, 1, v34);
    *(v47 + 16) = v34;
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v38 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *&v51 = v32;
  *(&v51 + 1) = v31;
  v54 = v38;
  v52 = v33;
  v34[2] = v37 + 1;
  sub_1DB1355D0(&v51, &v34[5 * v37 + 4]);
  *(v47 + 16) = v34;

  swift_endAccess();

  return result;
}

double sub_1DB2B28DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BCC40;
  sub_1DB164980(a1, inited + 32);

  sub_1DB1414E8(v8);
  *&v27 = a3;
  *(&v27 + 1) = a4;
  MEMORY[0x1E1283490](32, 0xE100000000000000);
  sub_1DB2B9A70(inited, &v27);
  v25 = a3;
  v26 = a4;

  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v9 = v29;
  v10 = v30;
  __swift_project_boxed_opaque_existential_1(&v27, v29);
  v11 = *(v10 + 24);
  v11(v24, v9, v10);
  v12 = v24[0];
  v13 = v24[1];

  MEMORY[0x1E1283490](v12, v13);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v15 = v25;
  v14 = v26;
  v11(v24, v9, v10);
  v16 = v24[2];

  __swift_destroy_boxed_opaque_existential_1(&v27);

  swift_beginAccess();
  v17 = *(v23 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + 16) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1DB1573FC(0, v17[2] + 1, 1, v17);
    *(v23 + 16) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_1DB1573FC((v19 > 1), v20 + 1, 1, v17);
    *(v23 + 16) = v17;
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v21 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *&v27 = v15;
  *(&v27 + 1) = v14;
  v30 = v21;
  v28 = v16;
  v17[2] = v20 + 1;
  sub_1DB1355D0(&v27, &v17[5 * v20 + 4]);
  *(v23 + 16) = v17;

  swift_endAccess();

  return result;
}

double sub_1DB2B2BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v23 = a2;
  *(&v23 + 1) = a3;
  MEMORY[0x1E1283490](32, 0xE100000000000000);
  v7 = *(&v23 + 1);
  v6 = v23;
  sub_1DB2B9A70(a1, &v23);
  v22 = __PAIR128__(v7, v6);

  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v8 = v25;
  v9 = v26;
  __swift_project_boxed_opaque_existential_1(&v23, v25);
  v10 = *(v9 + 24);
  v10(v21, v8, v9);
  v11 = v21[0];
  v12 = v21[1];

  MEMORY[0x1E1283490](v11, v12);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v13 = v22;
  v10(v21, v8, v9);
  v14 = v21[2];

  __swift_destroy_boxed_opaque_existential_1(&v23);
  swift_beginAccess();
  v15 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1DB1573FC(0, v15[2] + 1, 1, v15);
    *(v4 + 16) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1DB1573FC((v17 > 1), v18 + 1, 1, v15);
    *(v4 + 16) = v15;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v19 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v23 = v13;
  v26 = v19;
  v24 = v14;
  v15[2] = v18 + 1;
  sub_1DB1355D0(&v23, &v15[5 * v18 + 4]);
  *(v4 + 16) = v15;

  swift_endAccess();

  return result;
}

double TableBuilder.check(_:)(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;

  TableBuilder.check(_:)(v4);

  return result;
}

{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  *&v16 = v4;
  *(&v16 + 1) = v3;
  v19 = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
  v17 = v5;

  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v6 = __swift_project_boxed_opaque_existential_1(&v16, v18);
  v8 = *(&v16 + 1);
  v7 = v16;

  MEMORY[0x1E1283490](v7, v8);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v9 = v6[2];

  __swift_destroy_boxed_opaque_existential_1(&v16);
  swift_beginAccess();
  v10 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1DB1573FC(0, v10[2] + 1, 1, v10);
    *(v2 + 16) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1DB1573FC((v12 > 1), v13 + 1, 1, v10);
    *(v2 + 16) = v10;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v14 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *&v16 = 0x204B43454843;
  *(&v16 + 1) = 0xE600000000000000;
  v19 = v14;
  v17 = v9;
  v10[2] = v13 + 1;
  sub_1DB1355D0(&v16, &v10[5 * v13 + 4]);
  *(v2 + 16) = v10;

  swift_endAccess();

  return result;
}

OnDeviceStorageCore::TableBuilder::Dependency_optional __swiftcall TableBuilder.Dependency.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB2B3124()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

double sub_1DB2B3214(uint64_t a1)
{
  sub_1DB2BAE84();

  return result;
}

uint64_t sub_1DB2B32F0(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB2B33E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000004ELL;
  v4 = 0x4F49544341204F4ELL;
  v5 = 0xE800000000000000;
  v6 = 0x4C4C554E20544553;
  v7 = 0xEB00000000544C55;
  v8 = 0x4146454420544553;
  if (v2 != 3)
  {
    v8 = 0x45444143534143;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5443495254534552;
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

double TableBuilder.foreignKey<A>(_:references:_:update:delete:)(uint64_t *a1, uint64_t a2, uint64_t *a3, char *a4, char *a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = *a4;
  v14 = *a5;
  v21[0] = *a1;
  v21[1] = v8;
  v21[2] = v9;
  v20[0] = v10;
  v20[1] = v11;
  v20[2] = v12;
  v19 = v13;
  v18 = v14;
  v15 = type metadata accessor for Expression(0, a6, a3, a4);

  WitnessTable = swift_getWitnessTable();
  sub_1DB2B4A28(v21, a2, v20, &v19, &v18, v6, v15, v15, WitnessTable, WitnessTable);

  return result;
}

{
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = *a4;
  v15 = *a5;
  v29[0] = *a1;
  v29[1] = v9;
  v29[2] = v10;
  v28[0] = v11;
  v28[1] = v12;
  v28[2] = v13;
  v27 = v14;
  v26 = v15;
  v16 = sub_1DB2BB364();
  v19 = type metadata accessor for Expression(0, v16, v17, v18);
  v22 = type metadata accessor for Expression(0, a6, v20, v21);

  WitnessTable = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  sub_1DB2B4A28(v29, a2, v28, &v27, &v26, v6, v19, v22, WitnessTable, v24);

  return result;
}

uint64_t TableBuilder.foreignKey<A, B>(_:references:_:update:delete:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, char *a6, char *a7, uint64_t a8, uint64_t a9)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = a2[1];
  v33 = *a2;
  v14 = a2[2];
  v34 = a4[1];
  v36 = *a4;
  v37 = a5[1];
  v38 = *a5;
  v39 = a5[2];
  v40 = *a7;
  v41 = *a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;

  v18 = type metadata accessor for Expression(0, a8, v16, v17);
  *(inited + 56) = v18;
  WitnessTable = swift_getWitnessTable();
  *(inited + 64) = WitnessTable;
  *(inited + 32) = v11;
  *(inited + 40) = v10;
  *(inited + 48) = v12;
  v22 = type metadata accessor for Expression(0, a9, v20, v21);
  *(inited + 96) = v22;

  v23 = swift_getWitnessTable();
  *(inited + 104) = v23;
  *(inited + 72) = v33;
  *(inited + 80) = v13;
  *(inited + 88) = v14;
  sub_1DB2B9A70(inited, v51);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  sub_1DB164980(a3, v49);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1DB2BD5A0;

  *(v24 + 56) = v18;
  *(v24 + 64) = WitnessTable;
  *(v24 + 32) = v36;
  *(v24 + 40) = v34;
  *(v24 + 48) = v25;
  *(v24 + 96) = v22;
  *(v24 + 104) = v23;
  *(v24 + 72) = v38;
  *(v24 + 80) = v37;
  *(v24 + 88) = v39;

  sub_1DB2B9A70(v24, v50);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1DB1446A4(v49, v45, &qword_1ECC28388, &qword_1DB2D0EA0);
  v44 = v41;
  v43 = v40;
  v26 = v52;
  v27 = v53;
  v28 = __swift_project_boxed_opaque_existential_1(v51, v52);
  v29 = v47;
  v30 = v48;
  v31 = __swift_project_boxed_opaque_existential_1(v46, v47);
  sub_1DB2B4A28(v28, v45, v31, &v44, &v43, v42, v26, v29, v27, v30);
  sub_1DB1445E0(v49, &qword_1ECC28388, &qword_1DB2D0EA0);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v46);
  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t TableBuilder.foreignKey<A, B, C>(_:references:_:update:delete:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, char *a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a2[1];
  v16 = a2[2];
  v43 = *a3;
  v38 = *a2;
  v39 = a3[1];
  v40 = a3[2];
  v17 = a5[1];
  v18 = a5[2];
  v46 = *a5;
  v47 = a6[2];
  v48 = *a6;
  v49 = a7[1];
  v50 = a7[2];
  v51 = *a7;
  v52 = *a9;
  v53 = *a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD590;

  v44 = type metadata accessor for Expression(0, a10, v20, v21);
  *(inited + 56) = v44;
  WitnessTable = swift_getWitnessTable();
  *(inited + 64) = WitnessTable;
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  *(inited + 48) = v14;

  v24 = type metadata accessor for Expression(0, a11, v22, v23);
  *(inited + 96) = v24;
  v41 = swift_getWitnessTable();
  *(inited + 104) = v41;
  *(inited + 72) = v38;
  *(inited + 80) = v15;
  *(inited + 88) = v16;

  v27 = type metadata accessor for Expression(0, a12, v25, v26);
  *(inited + 136) = v27;
  v28 = swift_getWitnessTable();
  *(inited + 144) = v28;
  *(inited + 112) = v43;
  *(inited + 120) = v39;
  *(inited + 128) = v40;
  sub_1DB2B9A70(inited, v63);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  sub_1DB164980(a4, v61);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1DB2BD590;

  *(v29 + 56) = v44;
  *(v29 + 64) = WitnessTable;
  *(v29 + 32) = v46;
  *(v29 + 40) = v17;
  *(v29 + 48) = v18;

  *(v29 + 96) = v24;
  *(v29 + 104) = v41;
  *(v29 + 72) = v48;
  *(v29 + 80) = v30;
  *(v29 + 88) = v47;

  *(v29 + 136) = v27;
  *(v29 + 144) = v28;
  *(v29 + 112) = v51;
  *(v29 + 120) = v49;
  *(v29 + 128) = v50;
  sub_1DB2B9A70(v29, v62);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1DB1446A4(v61, v57, &qword_1ECC28388, &qword_1DB2D0EA0);
  v56 = v53;
  v55 = v52;
  v31 = v64;
  v32 = v65;
  v33 = __swift_project_boxed_opaque_existential_1(v63, v64);
  v34 = v59;
  v35 = v60;
  v36 = __swift_project_boxed_opaque_existential_1(v58, v59);
  sub_1DB2B4A28(v33, v57, v36, &v56, &v55, v54, v31, v34, v32, v35);
  sub_1DB1445E0(v61, &qword_1ECC28388, &qword_1DB2D0EA0);
  __swift_destroy_boxed_opaque_existential_1(v63);
  __swift_destroy_boxed_opaque_existential_1(v58);
  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_1DB2B3DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1DB164980(a1, v12);
  sub_1DB164980(a2, &v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD590;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 56) = v6;
  v7 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(inited + 64) = v7;
  *(inited + 32) = 0x434E455245464552;
  v8 = MEMORY[0x1E69E7CC0];
  *(inited + 40) = 0xEA00000000005345;
  *(inited + 48) = v8;
  v9 = v13;
  v10 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_1DB292510(0, v9, v10, inited + 72);
  *(inited + 136) = v6;
  *(inited + 144) = v7;
  sub_1DB203564();
  sub_1DB2B9A70(inited, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  return sub_1DB1445E0(v12, &qword_1ECC28388, &qword_1DB2D0EA0);
}

uint64_t TableBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PrimaryKey.hashValue.getter()
{
  v1 = *v0;
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v1);
  return sub_1DB2BBA54();
}

OnDeviceStorageCore::Module __swiftcall Module.init(_:_:)(Swift::String a1, Swift::OpaquePointer a2)
{
  v4 = v2;
  v5 = sub_1DB2B995C(34, 0xE100000000000000, a1._countAndFlagsBits, a1._object);
  v7 = v6;

  v4->_rawValue = v5;
  v4[1]._rawValue = v7;
  v4[2]._rawValue = a2._rawValue;
  result.arguments._rawValue = v10;
  result.name._object = v9;
  result.name._countAndFlagsBits = v8;
  return result;
}

uint64_t Module.expression.getter()
{
  sub_1DB2B9A70(*(v0 + 16), v2);
  sub_1DB203564();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_1DB2B4144()
{
  sub_1DB2B9A70(*(v0 + 16), v2);
  sub_1DB203564();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_1DB2B41A8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v70 = a8;
  v97[3] = a12;
  v97[4] = a13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v97);
  (*(*(a12 - 8) + 16))(boxed_opaque_existential_0, a1, a12);
  v21 = *a4;
  v22 = a10[1];
  v68 = *a10;
  v69 = v22;
  sub_1DB164980(v97, v83);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v83[8] = v23;
  v24 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v25 = v24;
  v83[5] = a2;
  v83[6] = a3;
  v83[9] = v24;
  v83[7] = MEMORY[0x1E69E7CC0];
  if (v21 == 2)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v27 = 0x80000001DB2D7770;
    v26 = 0x205952414D495250;
    if (v21)
    {
      v26 = 0xD000000000000019;
    }

    else
    {
      v27 = 0xEB0000000059454BLL;
    }

    v28 = MEMORY[0x1E69E7CC0];
    v29 = v23;
    v30 = v24;
  }

  v83[10] = v26;
  v83[11] = v27;
  v83[12] = v28;
  v83[13] = v29;
  v83[14] = v30;
  if (a5)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
    v32 = 0xE800000000000000;
    v31 = 0x4C4C554E20544F4ELL;
    v34 = v23;
    v35 = v24;
  }

  v83[15] = v31;
  v83[16] = v32;
  v83[17] = v33;
  v83[18] = v34;
  v83[19] = v35;
  if (a6)
  {
    v36 = xmmword_1DB2C5DE0;
    v37 = MEMORY[0x1E69E7CC0];
    v38 = v23;
    v39 = v24;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v37 = 0;
    v36 = 0uLL;
  }

  v86 = v38;
  v87 = v39;
  v84 = v36;
  v85 = v37;
  sub_1DB1446A4(a7, &v77, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v78 + 1))
  {
    sub_1DB1355D0(&v77, &v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1DB2BD5A0;
    *(v40 + 56) = v23;
    *(v40 + 64) = v25;
    *(v40 + 32) = 0x4B43454843;
    *(v40 + 40) = 0xE500000000000000;
    *(v40 + 48) = MEMORY[0x1E69E7CC0];
    sub_1DB164980(&v71, v40 + 72);

    sub_1DB2B9A70(v40, v88);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v71);
  }

  else
  {
    v89 = 0;
    memset(v88, 0, sizeof(v88));
  }

  sub_1DB1446A4(v70, &v77, &qword_1ECC27898, &unk_1DB2CCD00);
  if (*(&v78 + 1))
  {
    sub_1DB1355D0(&v77, &v71);
    *(&v91 + 1) = v23;
    v92 = v25;
    sub_1DB203564();
    __swift_destroy_boxed_opaque_existential_1(&v71);
  }

  else
  {
    v92 = 0;
    v90 = 0u;
    v91 = 0u;
  }

  sub_1DB1446A4(a9, &v77, &qword_1ECC28380, &qword_1DB2C5DF0);
  v41 = v69;
  if (*(&v78 + 1))
  {
    v73[0] = v79;
    v73[1] = v80;
    v73[2] = v81;
    v71 = v77;
    v72 = v78;
    sub_1DB2B3DEC(&v71, v73 + 8, v93);
    sub_1DB1445E0(&v71, &qword_1ECC28388, &qword_1DB2D0EA0);
  }

  else
  {
    v94 = 0;
    memset(v93, 0, sizeof(v93));
  }

  v70 = a11;
  if (v69 == 3)
  {
    v96 = 0;
    memset(v95, 0, sizeof(v95));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DB2BD5A0;
    *(v42 + 56) = v23;
    *(v42 + 64) = v25;
    *(v42 + 32) = 0x4554414C4C4F43;
    *(v42 + 40) = 0xE700000000000000;
    *(v42 + 48) = MEMORY[0x1E69E7CC0];
    *(v42 + 96) = &type metadata for Collation;
    *(v42 + 104) = sub_1DB280C98();
    v43 = v68;
    *(v42 + 72) = v68;
    *(v42 + 80) = v41;
    sub_1DB280CEC(v43, v41);
    sub_1DB2B9A70(v42, v95);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  v44 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 392; i += 40)
  {
    sub_1DB1446A4(&v82[i], &v77, &qword_1ECC27898, &unk_1DB2CCD00);
    v74[0] = v77;
    v74[1] = v78;
    v75 = v79;
    if (*(&v78 + 1))
    {
      sub_1DB1355D0(v74, &v71);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v44 = sub_1DB1573FC(0, v44[2] + 1, 1, v44);
        v76 = v44;
      }

      v48 = v44[2];
      v47 = v44[3];
      if (v48 >= v47 >> 1)
      {
        v44 = sub_1DB1573FC((v47 > 1), v48 + 1, 1, v44);
        v76 = v44;
      }

      v49 = *(&v72 + 1);
      v50 = *&v73[0];
      v51 = __swift_mutable_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
      MEMORY[0x1EEE9AC00](v51);
      v53 = &v67 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v54 + 16))(v53);
      sub_1DB200A54(v48, v53, &v76, v49, v50);
      __swift_destroy_boxed_opaque_existential_1(&v71);
    }

    else
    {
      sub_1DB1445E0(v74, &qword_1ECC27898, &unk_1DB2CCD00);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  sub_1DB2B9A70(v44, &v77);

  v55 = v70;
  swift_beginAccess();
  v56 = *(v55 + 16);
  v57 = swift_isUniquelyReferenced_nonNull_native();
  *(v55 + 16) = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_1DB1573FC(0, v56[2] + 1, 1, v56);
    *(v55 + 16) = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_1DB1573FC((v58 > 1), v59 + 1, 1, v56);
    *(v55 + 16) = v56;
  }

  v60 = *(&v78 + 1);
  v61 = v79;
  v62 = __swift_mutable_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v67 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v65 + 16))(v64);
  sub_1DB200A54(v59, v64, (v55 + 16), v60, v61);
  __swift_destroy_boxed_opaque_existential_1(&v77);
  *(v55 + 16) = v56;
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v97);
}

uint64_t sub_1DB2B4A28(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v55 = a6;
  v70[3] = a7;
  v70[4] = a9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v70);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a1, a7);
  v69[3] = a8;
  v69[4] = a10;
  v18 = __swift_allocate_boxed_opaque_existential_0(v69);
  (*(*(a8 - 8) + 16))(v18, a3, a8);
  sub_1DB164980(a2, v67);
  sub_1DB164980(v69, &v68);
  v19 = *a4;
  v20 = *a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E18, &unk_1DB2D0E90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2C3A50;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 56) = v22;
  v23 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(inited + 64) = v23;
  sub_1DB203564();
  sub_1DB1446A4(v67, &v63, &qword_1ECC28388, &qword_1DB2D0EA0);
  sub_1DB2B3DEC(&v63, v66, (inited + 72));
  __swift_destroy_boxed_opaque_existential_1(v66);
  __swift_destroy_boxed_opaque_existential_1(&v63);
  v24 = MEMORY[0x1E69E7CC0];
  if (v19 == 5)
  {
    *(inited + 144) = 0;
    *(inited + 112) = 0u;
    *(inited + 128) = 0u;
    if (v20 != 5)
    {
LABEL_3:
      *&v63 = 0x54454C4544204E4FLL;
      *(&v63 + 1) = 0xEA00000000002045;
      if (v20 <= 1)
      {
        if (v20)
        {
          v26 = 0xE800000000000000;
          v25 = 0x5443495254534552;
        }

        else
        {
          v25 = 0x4F49544341204F4ELL;
          v26 = 0xE90000000000004ELL;
        }
      }

      else if (v20 == 2)
      {
        v26 = 0xE800000000000000;
        v25 = 0x4C4C554E20544553;
      }

      else if (v20 == 3)
      {
        v25 = 0x4146454420544553;
        v26 = 0xEB00000000544C55;
      }

      else
      {
        v26 = 0xE700000000000000;
        v25 = 0x45444143534143;
      }

      MEMORY[0x1E1283490](v25, v26);

      v29 = v63;
      *(inited + 176) = v22;
      *(inited + 184) = v23;
      *(inited + 152) = v29;
      *(inited + 168) = v24;
      goto LABEL_24;
    }
  }

  else
  {
    *&v63 = 0x5441445055204E4FLL;
    *(&v63 + 1) = 0xEA00000000002045;
    if (v19 <= 1)
    {
      if (v19)
      {
        v28 = 0xE800000000000000;
        v27 = 0x5443495254534552;
      }

      else
      {
        v27 = 0x4F49544341204F4ELL;
        v28 = 0xE90000000000004ELL;
      }
    }

    else if (v19 == 2)
    {
      v28 = 0xE800000000000000;
      v27 = 0x4C4C554E20544553;
    }

    else if (v19 == 3)
    {
      v27 = 0x4146454420544553;
      v28 = 0xEB00000000544C55;
    }

    else
    {
      v28 = 0xE700000000000000;
      v27 = 0x45444143534143;
    }

    MEMORY[0x1E1283490](v27, v28);

    v30 = v63;
    *(inited + 136) = v22;
    *(inited + 144) = v23;
    *(inited + 112) = v30;
    *(inited + 128) = v24;
    if (v20 != 5)
    {
      goto LABEL_3;
    }
  }

  *(inited + 184) = 0;
  *(inited + 168) = 0u;
  *(inited + 152) = 0u;
LABEL_24:
  v31 = MEMORY[0x1E69E7CC0];
  v32 = 32;
  v56 = inited;
  do
  {
    sub_1DB1446A4(inited + v32, &v63, &qword_1ECC27898, &unk_1DB2CCD00);
    v57[0] = v63;
    v57[1] = v64;
    v58 = v65;
    if (*(&v64 + 1))
    {
      sub_1DB1355D0(v57, v59);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_1DB1573FC(0, v31[2] + 1, 1, v31);
        v62 = v31;
      }

      v35 = v31[2];
      v34 = v31[3];
      if (v35 >= v34 >> 1)
      {
        v31 = sub_1DB1573FC((v34 > 1), v35 + 1, 1, v31);
        v62 = v31;
      }

      v36 = v60;
      v37 = v61;
      v38 = __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
      MEMORY[0x1EEE9AC00](v38);
      v40 = &v55 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v41 + 16))(v40);
      sub_1DB200A54(v35, v40, &v62, v36, v37);
      __swift_destroy_boxed_opaque_existential_1(v59);
      inited = v56;
    }

    else
    {
      sub_1DB1445E0(v57, &qword_1ECC27898, &unk_1DB2CCD00);
    }

    v32 += 40;
  }

  while (v32 != 192);

  sub_1DB2B9A70(v31, &v63);

  v42 = v55;
  swift_beginAccess();
  v43 = *(v42 + 16);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  *(v42 + 16) = v43;
  if ((v44 & 1) == 0)
  {
    v43 = sub_1DB1573FC(0, v43[2] + 1, 1, v43);
    *(v55 + 16) = v43;
  }

  v46 = v43[2];
  v45 = v43[3];
  if (v46 >= v45 >> 1)
  {
    v43 = sub_1DB1573FC((v45 > 1), v46 + 1, 1, v43);
    *(v55 + 16) = v43;
  }

  v47 = *(&v64 + 1);
  v48 = v65;
  v49 = __swift_mutable_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v55 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v52 + 16))(v51);
  v53 = v55;
  sub_1DB200A54(v46, v51, (v55 + 16), v47, v48);
  __swift_destroy_boxed_opaque_existential_1(&v63);
  *(v53 + 16) = v43;
  swift_endAccess();
  sub_1DB1445E0(v67, &qword_1ECC28388, &qword_1DB2D0EA0);
  __swift_destroy_boxed_opaque_existential_1(v70);
  return __swift_destroy_boxed_opaque_existential_1(v69);
}

double sub_1DB2B5180(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

unint64_t sub_1DB2B5194()
{
  result = qword_1ECC29548;
  if (!qword_1ECC29548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29548);
  }

  return result;
}

double sub_1DB2B51E8(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_1DB2B5180(a1, a2);
  }

  return result;
}

unint64_t sub_1DB2B51FC()
{
  result = qword_1ECC29550;
  if (!qword_1ECC29550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29550);
  }

  return result;
}

unint64_t sub_1DB2B5254()
{
  result = qword_1ECC29558;
  if (!qword_1ECC29558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29558);
  }

  return result;
}

unint64_t sub_1DB2B52A8(uint64_t a1)
{
  *(a1 + 8) = sub_1DB165B48();
  result = sub_1DB2B52D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DB2B52D8()
{
  result = qword_1ECC29560;
  if (!qword_1ECC29560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29560);
  }

  return result;
}

uint64_t Setter.expression.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v1, inited + 32);
  sub_1DB164980(v1 + 40, inited + 72);
  v11[0] = 32;
  v11[1] = 0xE100000000000000;
  MEMORY[0x1E1283490](61, 0xE100000000000000);
  MEMORY[0x1E1283490](32, 0xE100000000000000);
  sub_1DB2B9A70(inited, v11);

  v4 = v12;
  v5 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v5 + 24))(&v9, v4, v5);
  v6 = v9;
  v8 = v10;
  __swift_destroy_boxed_opaque_existential_1(v11);
  *a1 = v6;
  *(a1 + 8) = v8;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  return swift_arrayDestroy();
}

uint64_t <- infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v9 = sub_1DB2BB364();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18[-1] - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v18[0] = v12;
  v18[1] = v13;
  v18[2] = v14;
  (*(v15 + 16))(v11, a2);

  return sub_1DB2B5D20(v18, v11, a4, x8_0);
}

uint64_t <- infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v8[1];
  v12 = v8[2];
  v16[0] = *v8;
  v16[1] = v11;
  v16[2] = v12;
  (*(v13 + 16))(v10);
  sub_1DB2B5AF8(v16, v10, a3, a4, x8_0);
}

uint64_t sub_1DB2B5804@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, unint64_t *a7@<X6>, void (*a8)(uint64_t *, void, unint64_t)@<X7>, uint64_t *a9@<X8>)
{
  v24 = 32;
  v25 = 0xE100000000000000;
  MEMORY[0x1E1283490](a3, a4);
  MEMORY[0x1E1283490](32, 0xE100000000000000);
  sub_1DB2B9A70(a1, &v24);

  v16 = v27;
  v17 = v28;
  __swift_project_boxed_opaque_existential_1(&v24, v27);
  (*(v17 + 24))(v23, v16, v17);
  v19 = v23[0];
  v18 = v23[1];
  v20 = v23[2];
  result = __swift_destroy_boxed_opaque_existential_1(&v24);
  if (a2)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v22 = sub_1DB21132C(a7, a5, a6);
    v24 = v19;
    v25 = v18;
    v28 = v22;
    v26 = v20;
    a8(&v24, 0, 0xE000000000000000);
    return __swift_destroy_boxed_opaque_existential_1(&v24);
  }

  else
  {
    *a9 = v19;
    a9[1] = v18;
    a9[2] = v20;
  }

  return result;
}

uint64_t <- infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return sub_1DB2B5FC4(a1, a2, a3, a4, sub_1DB2B5A6C);
}

{
  return sub_1DB2B5FC4(a1, a2, a3, a4, sub_1DB2B5C88);
}

{
  return sub_1DB2B5FC4(a1, a2, a3, a4, sub_1DB2B5BC4);
}

__n128 sub_1DB2B5A6C@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = type metadata accessor for Expression(0, a3, a3, a4);
  *(a5 + 24) = v10;
  WitnessTable = swift_getWitnessTable();
  *a5 = v8;
  *(a5 + 8) = *(a1 + 1);
  *(a5 + 64) = v10;
  *(a5 + 72) = WitnessTable;
  *(a5 + 32) = WitnessTable;
  *(a5 + 40) = v9;
  result = *(a2 + 1);
  *(a5 + 48) = result;
  return result;
}

uint64_t sub_1DB2B5AF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  *(a5 + 24) = type metadata accessor for Expression(0, a3, a3, a4);
  *(a5 + 32) = swift_getWitnessTable();
  *a5 = v10;
  *(a5 + 8) = *(a1 + 1);
  v11 = *(a4 + 8);
  *(a5 + 64) = a3;
  *(a5 + 72) = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((a5 + 40));
  v13 = *(*(a3 - 8) + 32);

  return v13(boxed_opaque_existential_0, a2, a3);
}

__n128 sub_1DB2B5BC4@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = sub_1DB2BB364();
  *(a4 + 24) = type metadata accessor for Expression(0, v10, v11, v12);
  *(a4 + 32) = swift_getWitnessTable();
  *a4 = v8;
  *(a4 + 8) = *(a1 + 1);
  *(a4 + 64) = type metadata accessor for Expression(0, a3, v13, v14);
  *(a4 + 72) = swift_getWitnessTable();
  *(a4 + 40) = v9;
  result = *(a2 + 1);
  *(a4 + 48) = result;
  return result;
}

__n128 sub_1DB2B5C88@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = sub_1DB2BB364();
  v12 = type metadata accessor for Expression(0, v9, v10, v11);
  *(a4 + 24) = v12;
  WitnessTable = swift_getWitnessTable();
  *a4 = v7;
  *(a4 + 8) = *(a1 + 1);
  *(a4 + 64) = v12;
  *(a4 + 72) = WitnessTable;
  *(a4 + 32) = WitnessTable;
  *(a4 + 40) = v8;
  result = *(a2 + 1);
  *(a4 + 48) = result;
  return result;
}

uint64_t sub_1DB2B5D20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1DB2BB364();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = *a1;
  v16 = type metadata accessor for Expression(0, v9, v14, v15);
  *(a5 + 24) = v16;
  WitnessTable = swift_getWitnessTable();
  *(a5 + 32) = WitnessTable;
  *a5 = v13;
  *(a5 + 8) = *(a1 + 1);
  (*(v10 + 16))(v12, a2, v9);
  *(a5 + 64) = v16;
  *(a5 + 72) = WitnessTable;
  v18 = swift_getWitnessTable();
  swift_getWitnessTable();
  ExpressionType<>.init(value:)(v12, v16, v18, a4, a5 + 40);
  return (*(v10 + 8))(a2, v9);
}

uint64_t sub_1DB2B5EC8@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v1, inited + 32);
  sub_1DB164980(v1 + 40, inited + 72);
  sub_1DB2B5804(inited, 0, 61, 0xE100000000000000, &qword_1ECC26D98, &unk_1DB2BCF00, &qword_1EE1400B8, sub_1DB203564, a1);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  return swift_arrayDestroy();
}

uint64_t sub_1DB2B5FC4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, void *))
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v12[0] = *a1;
  v12[1] = v5;
  v12[2] = v6;
  v11[0] = v7;
  v11[1] = v8;
  v11[2] = v9;
  (a5)(v12, v11, a3, a4);
}

unint64_t sub_1DB2B604C(uint64_t a1)
{
  *(a1 + 8) = sub_1DB165BF0();
  result = sub_1DB201414();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DB2B607C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1DB2B60C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB2B6128@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void (*a4)(uint64_t *, uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  if (a2)
  {
    v15 = sub_1DB2B6280(a3);
    v16 = v6;
    result = MEMORY[0x1E1283490](10536, 0xE200000000000000);
    v8 = v16;
    *a5 = v15;
    a5[1] = v8;
    a5[2] = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v11 = sub_1DB2B6280(a3);
    v13 = v12;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28108, &unk_1DB2C4B50);
    v19 = sub_1DB1688F0(&qword_1ECC28CF8, &qword_1ECC28108, &unk_1DB2C4B50, &protocol conformance descriptor for Expression<A>);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DB2BCC40;
    *(v14 + 56) = MEMORY[0x1E69E7360];
    *(v14 + 64) = &protocol witness table for Int64;
    *(v14 + 32) = a1;
    v15 = 63;
    v16 = 0xE100000000000000;
    v17 = v14;
    a4(&v15, v11, v13);

    return __swift_destroy_boxed_opaque_existential_1(&v15);
  }

  return result;
}

uint64_t sub_1DB2B6280(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x656C69746ELL;
    v7 = 1802396018;
    v8 = 0x61725F65736E6564;
    if (a1 != 3)
    {
      v8 = 0x5F746E6563726570;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x626D756E5F776F72;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x61765F7473726966;
    v2 = 0x6C61765F7473616CLL;
    if (a1 != 9)
    {
      v2 = 0x756C61765F68746ELL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x7369645F656D7563;
    v4 = 6775148;
    if (a1 != 6)
    {
      v4 = 1684104556;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1DB2B63E0@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, unint64_t *a7@<X6>, void (*a8)(uint64_t *, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  *(inited + 56) = v28;
  v18 = sub_1DB1688F0(a7, a5, a6, &protocol conformance descriptor for Expression<A>);
  *(inited + 64) = v18;
  sub_1DB2B6128(a1, a2 & 1, a4, a8, (inited + 32));
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1DB2BB4F4();

  v30 = 0x524F28205245564FLL;
  *&v31 = 0xEF20594220524544;
  v19 = a3[3];
  v20 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v19);
  v21 = *(v20 + 24);
  v21(&v32, v19, v20);
  v22 = v32;
  v23 = v33;

  MEMORY[0x1E1283490](v22, v23);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v21(&v32, v19, v20);
  v24 = v34;

  *(inited + 72) = 0x524F28205245564FLL;
  *(inited + 80) = 0xEF20594220524544;
  *(inited + 96) = v28;
  *(inited + 104) = v18;
  *(inited + 88) = v24;
  sub_1DB2B9A70(inited, &v32);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  v25 = v35;
  v26 = v36;
  __swift_project_boxed_opaque_existential_1(&v32, v35);
  (*(v26 + 24))(&v30, v25, v26);
  *a9 = v30;
  *(a9 + 8) = v31;
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_1DB2B663C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v7 = type metadata accessor for Expression(0, a4, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  v9 = sub_1DB2B6280(v4);
  v11 = v10;
  *(inited + 56) = v7;
  WitnessTable = swift_getWitnessTable();
  *(inited + 64) = WitnessTable;
  sub_1DB2B9D5C(a1, v9, v11, (inited + 32));

  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1DB2BB4F4();

  v27 = 0x524F28205245564FLL;
  *&v28 = 0xEF20594220524544;
  v13 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v14 = *(v12 + 24);
  v14(&v29, v13, v12);
  v16 = v29;
  v15 = v30;

  MEMORY[0x1E1283490](v16, v15);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v14(&v29, v13, v12);
  v17 = v31;

  *(inited + 96) = v7;
  *(inited + 104) = WitnessTable;
  Expression.init(_:_:)(0x524F28205245564FLL, 0xEF20594220524544, v17, (inited + 72));
  sub_1DB2B9A70(inited, &v29);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  v18 = v32;
  v19 = v33;
  __swift_project_boxed_opaque_existential_1(&v29, v32);
  (*(v19 + 24))(&v27, v18, v19);
  v25 = v27;
  v26 = v28;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v21 = swift_getWitnessTable();
  v22 = sub_1DB1688F0(&qword_1EE13EF48, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  ExpressionType.init<A>(_:)(&v25, v7, v20, v21, v22);
  return __swift_destroy_boxed_opaque_existential_1(&v29);
}

uint64_t sub_1DB2B6994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  sub_1DB2A4B1C(a2, &v40);
  if (v42)
  {
    sub_1DB1355D0(&v40, &v43);
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    sub_1DB2BB4F4();

    v15 = (*(a5 + 32))(a4, a5);
    MEMORY[0x1E1283490](v15);

    MEMORY[0x1E1283490](8236, 0xE200000000000000);
    *&v40 = a1;
    v16 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v16);

    MEMORY[0x1E1283490](8236, 0xE200000000000000);
    v17 = v46;
    v18 = v47;
    __swift_project_boxed_opaque_existential_1(&v43, v46);
    v19 = sub_1DB286324(v17, v18);
    MEMORY[0x1E1283490](v19);

    MEMORY[0x1E1283490](0xD000000000000011, 0x80000001DB2D7790);
    v21 = a3[3];
    v20 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v21);
    v22 = *(v20 + 24);
    v22(&v40, v21, v20);
    v23 = v40;

    MEMORY[0x1E1283490](v23, *(&v23 + 1));

    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v24 = (*(a5 + 40))(a4, a5);
    v22(&v40, v21, v20);
    v25 = v41;

    sub_1DB141510(v25);
    swift_getAssociatedTypeWitness();
    Expression.init(_:_:)(a7, a9, v24, a8);
    return __swift_destroy_boxed_opaque_existential_1(&v43);
  }

  else
  {
    sub_1DB1648B4(&v40);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1DB2BB4F4();

    *&v40 = a7;
    *(&v40 + 1) = a9;
    v27 = (*(a5 + 32))(a4, a5);
    MEMORY[0x1E1283490](v27);

    MEMORY[0x1E1283490](8236, 0xE200000000000000);
    v43 = a1;
    v28 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v28);

    MEMORY[0x1E1283490](0xD000000000000011, 0x80000001DB2D7790);
    v29 = a3[3];
    v30 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v29);
    v31 = *(v30 + 24);
    v31(&v43, v29, v30);
    v32 = v43;
    v33 = v44;

    MEMORY[0x1E1283490](v32, v33);

    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v34 = *(&v40 + 1);
    v38 = v40;
    v35 = (*(a5 + 40))(a4, a5);
    v31(&v43, v29, v30);
    v36 = v45;

    *&v40 = v35;
    sub_1DB141510(v36);
    v37 = v40;
    swift_getAssociatedTypeWitness();
    return Expression.init(_:_:)(v38, v34, v37, a8);
  }
}

uint64_t sub_1DB2B6E14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + 8);
  v13[3] = a2;
  v13[4] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v5, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1DB2B663C(v13, a1, a5, AssociatedTypeWitness);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t ExpressionType<>.value(_:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_1DB2BB4F4();

  v27 = 0x756C61765F68746ELL;
  v28 = 0xEA00000000002865;
  v9 = (*(a4 + 32))(a3, a4);
  MEMORY[0x1E1283490](v9);

  MEMORY[0x1E1283490](8236, 0xE200000000000000);
  v24 = a1;
  v10 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v10);

  MEMORY[0x1E1283490](0xD000000000000011, 0x80000001DB2D7790);
  v12 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  v13 = *(v11 + 24);
  v13(&v24, v12, v11);
  v14 = v24;
  v15 = v25;

  MEMORY[0x1E1283490](v14, v15);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v16 = v28;
  v21 = v27;
  v17 = (*(a4 + 40))(a3, a4);
  v13(&v24, v12, v11);
  v18 = v26;

  v27 = v17;
  sub_1DB141510(v18);
  v19 = v27;
  swift_getAssociatedTypeWitness();
  return Expression.init(_:_:)(v21, v16, v19, a5);
}

uint64_t Date.datatypeValue.getter()
{
  if (qword_1ECC26C50 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECC29568;
  v1 = sub_1DB2BA8C4();
  v2 = [v0 stringFromDate_];

  v3 = sub_1DB2BAD94();
  return v3;
}

uint64_t sub_1DB2B73AC(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC295C0, &qword_1DB2D1200);
  if (swift_dynamicCast())
  {
    sub_1DB1355D0(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_1DB2BA7A4();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1DB1445E0(__src, &qword_1ECC295C8, &qword_1DB2D1208);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1DB2BB5B4();
  }

  sub_1DB2B8918(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1DB2B928C(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v34[2] = v39;
  v10 = sub_1DB2B89E0(sub_1DB2B9870, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1DB2BA864();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1DB23D3A8(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1DB2BAF34();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1DB2BAF74();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1DB2BB5B4();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1DB23D3A8(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1DB2BAF44();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1DB2BA874();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1DB2BA874();
    sub_1DB2351B8(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1DB2351B8(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1DB226094(*&__src[0], *(&__src[0] + 1));

  sub_1DB207494(v32, *(&v32 + 1));
  return v32;
}

uint64_t static Data.fromDatatypeValue(_:)(void *a1)
{

  v2 = sub_1DB2B942C(v1);

  return v2;
}

void *sub_1DB2B7980@<X0>(void *result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, void *a4@<X8>)
{
  if (result)
  {
    v5 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v5 != 2)
      {
        goto LABEL_15;
      }

      v8 = *(a2 + 16);
      v7 = *(a2 + 24);
      v6 = v7 - v8;
      if (!__OFSUB__(v7, v8))
      {
        if (v6)
        {
          goto LABEL_12;
        }

LABEL_15:
        v10 = MEMORY[0x1E69E7CC0];
        goto LABEL_16;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        v6 = BYTE6(a3);
        if (!BYTE6(a3))
        {
          goto LABEL_15;
        }

LABEL_12:
        v9 = result;
        v10 = sub_1DB13832C(v6, 0);
        result = memcpy(v10 + 4, v9, v6);
LABEL_16:
        *a4 = v10;
        return result;
      }

      v11 = HIDWORD(a2) - a2;
      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        v6 = v11;
        if (v11)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1DB158B68();
    if (qword_1ECC26BE0 != -1)
    {
      swift_once();
    }

    *a4 = qword_1ECC27D20;
  }

  return result;
}

void sub_1DB2B7AC8(uint64_t *a2@<X8>)
{

  v4 = sub_1DB2B942C(v3);
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1DB2B7B24@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  sub_1DB226094(v4, v3);
  return sub_1DB2B8F38(v4, v3, v4, v3, a1);
}

void sub_1DB2B7BA8(uint64_t a1, uint64_t a2)
{
  if (qword_1ECC26C68 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v2 = qword_1ECC29580;
    if (qword_1ECC29580 >> 62)
    {
      break;
    }

    v3 = *((qword_1ECC29580 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_18;
    }

LABEL_4:
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1E1283AD0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = sub_1DB2BAD64();
      v9 = [v6 dateFromString_];

      if (v9)
      {
        sub_1DB2BA8E4();

        return;
      }

      ++v4;
      if (v7 == v3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

  v3 = sub_1DB2BB694();
  if (v3)
  {
    goto LABEL_4;
  }

LABEL_18:
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](a1, a2);
  sub_1DB135B68();
  swift_allocError();
  *v10 = 0xD000000000000022;
  *(v10 + 8) = 0x80000001DB2D77F0;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0;
  swift_willThrow();
}

void sub_1DB2B7DC0(uint64_t *a1@<X8>)
{
  if (qword_1ECC26C50 != -1)
  {
    swift_once();
  }

  v2 = qword_1ECC29568;
  v3 = sub_1DB2BA8C4();
  v4 = [v2 stringFromDate_];

  v5 = sub_1DB2BAD94();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
}

id sub_1DB2B7E64()
{
  result = sub_1DB2B7E84();
  qword_1ECC29568 = result;
  return result;
}

id sub_1DB2B7E84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC295D8, &qword_1DB2D1218);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1DB2BA974();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v8 = sub_1DB2BAD64();
  [v7 setDateFormat_];

  sub_1DB2BA954();
  v9 = sub_1DB2BA964();
  (*(v4 + 8))(v6, v3);
  [v7 setLocale_];

  sub_1DB2BA984();
  v10 = sub_1DB2BA9A4();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v2, 1, v10) != 1)
  {
    v12 = sub_1DB2BA994();
    (*(v11 + 8))(v2, v10);
  }

  [v7 setTimeZone_];

  return v7;
}

id dateFormatter.getter()
{
  if (qword_1ECC26C50 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECC29568;

  return v1;
}

id sub_1DB2B8130()
{
  if (qword_1ECC26C50 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECC29568;
  qword_1ECC29570 = qword_1ECC29568;

  return v1;
}

id sub_1DB2B8194()
{
  result = sub_1DB2B81B4();
  qword_1ECC29578 = result;
  return result;
}

id sub_1DB2B81B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC295D8, &qword_1DB2D1218);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1DB2BA974();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v8 = sub_1DB2BAD64();
  [v7 setDateFormat_];

  sub_1DB2BA954();
  v9 = sub_1DB2BA964();
  (*(v4 + 8))(v6, v3);
  [v7 setLocale_];

  sub_1DB2BA984();
  v10 = sub_1DB2BA9A4();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v2, 1, v10) != 1)
  {
    v12 = sub_1DB2BA994();
    (*(v11 + 8))(v2, v10);
  }

  [v7 setTimeZone_];

  return v7;
}

id sub_1DB2B8404()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC295D0, &qword_1DB2D1210);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DB2D10F0;
  if (qword_1ECC26C58 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECC29570;
  *(v0 + 32) = qword_1ECC29570;
  v2 = qword_1ECC26C60;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1ECC29578;
  *(v0 + 40) = qword_1ECC29578;
  qword_1ECC29580 = v0;

  return v4;
}

uint64_t static UUID.fromDatatypeValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29138, &qword_1DB2CE788);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  sub_1DB2BA914();
  v9 = sub_1DB2BA944();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    return (*(v10 + 32))(a3, v8, v9);
  }

  sub_1DB1445E0(v8, &qword_1ECC29138, &qword_1DB2CE788);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1DB2BB4F4();

  v15 = 0xD00000000000001BLL;
  v16 = 0x80000001DB2D77B0;
  MEMORY[0x1E1283490](a1, a2);
  v11 = v15;
  v12 = v16;
  sub_1DB135B68();
  swift_allocError();
  *v13 = v11;
  *(v13 + 8) = v12;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0;
  return swift_willThrow();
}

uint64_t sub_1DB2B86D4@<X0>(uint64_t *a2@<X8>)
{
  result = _s10Foundation4UUIDV19OnDeviceStorageCoreE13datatypeValueSSvg_0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t static URL.fromDatatypeValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29588, &qword_1DB2D1110);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  sub_1DB2BA814();
  v9 = sub_1DB2BA824();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    return (*(v10 + 32))(a3, v8, v9);
  }

  sub_1DB1445E0(v8, &qword_1ECC29588, &qword_1DB2D1110);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1DB2BB4F4();

  v15 = 0xD00000000000001ALL;
  v16 = 0x80000001DB2D77D0;
  MEMORY[0x1E1283490](a1, a2);
  v11 = v15;
  v12 = v16;
  sub_1DB135B68();
  swift_allocError();
  *v13 = v11;
  *(v13 + 8) = v12;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0;
  return swift_willThrow();
}

uint64_t sub_1DB2B88F0@<X0>(uint64_t *a2@<X8>)
{
  result = _s10Foundation3URLV19OnDeviceStorageCoreE13datatypeValueSSvg_0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t *sub_1DB2B8918@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1DB2B91D4(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1DB2BA724();
      swift_allocObject();
      v8 = sub_1DB2BA6D4();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_1DB2BA854();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_1DB2B89E0(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1DB207494(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1DB207494(v7, v6);
    *v4 = xmmword_1DB2D1100;
    sub_1DB207494(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1DB2BA6E4() && __OFSUB__(v7, sub_1DB2BA714()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1DB2BA724();
      swift_allocObject();
      v14 = sub_1DB2BA6C4();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1DB2B8E84(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1DB207494(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1DB2D1100;
    sub_1DB207494(0, 0xC000000000000000);
    sub_1DB2BA834();
    result = sub_1DB2B8E84(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_1DB2B8D84@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1DB2B91D4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1DB2B932C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1DB2B93A8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1DB2B8E18(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1DB2B8E84(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1DB2BA6E4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1DB2BA714();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1DB2BA704();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1DB2B8F38@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v12, 0, 14);
      goto LABEL_9;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v12[0] = a1;
      LOWORD(v12[1]) = a2;
      BYTE2(v12[1]) = BYTE2(a2);
      BYTE3(v12[1]) = BYTE3(a2);
      BYTE4(v12[1]) = BYTE4(a2);
      BYTE5(v12[1]) = BYTE5(a2);
LABEL_9:
      sub_1DB2B7980(v12, a3, a4, a5);
      return sub_1DB207494(a3, a4);
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_1DB226094(a3, a4);
  sub_1DB2B90C4(v8, v9, a3, a4, a5);
  return sub_1DB207494(a3, a4);
}

char *sub_1DB2B90C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, void *a5@<X8>)
{
  result = sub_1DB2BA6E4();
  v11 = result;
  if (result)
  {
    result = sub_1DB2BA714();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v11 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_1DB2BA704();
    sub_1DB2B7980(v11, a3, a4, a5);
    return sub_1DB207494(a3, a4);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1DB2B9184@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1DB2BB504();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB2B91D4(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1DB2B928C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1DB2BA724();
      swift_allocObject();
      sub_1DB2BA6F4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1DB2BA854();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1DB2B932C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1DB2BA724();
  swift_allocObject();
  result = sub_1DB2BA6D4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DB2BA854();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1DB2B93A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1DB2BA724();
  swift_allocObject();
  result = sub_1DB2BA6D4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DB2B942C(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D00, &qword_1DB2BCC70);
  v10 = sub_1DB2B98F8();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1DB2B8D84(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_1DB2B94DC(uint64_t a1)
{
  result = sub_1DB2074E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB2B9504(uint64_t a1)
{
  *(a1 + 8) = sub_1DB165C8C();
  result = sub_1DB2B9534();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DB2B9534()
{
  result = qword_1ECC29590;
  if (!qword_1ECC29590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC29590);
  }

  return result;
}

uint64_t sub_1DB2B9594(uint64_t a1)
{
  result = sub_1DB2B9828(&qword_1ECC29598, MEMORY[0x1E6969530], &protocol conformance descriptor for Date);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DB2B95EC(uint64_t a1)
{
  v2 = MEMORY[0x1E6969530];
  *(a1 + 8) = sub_1DB2B9828(&qword_1EE13F288, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  result = sub_1DB2B9828(&qword_1EE13F290, v2, MEMORY[0x1E6969538]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DB2B9670(uint64_t a1)
{
  result = sub_1DB2B9828(&qword_1ECC295A0, MEMORY[0x1E69695A8], &protocol conformance descriptor for UUID);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DB2B96C8(uint64_t a1)
{
  v2 = MEMORY[0x1E69695A8];
  *(a1 + 8) = sub_1DB2B9828(&qword_1ECC27958, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  result = sub_1DB2B9828(&qword_1ECC295A8, v2, MEMORY[0x1E69695B0]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DB2B974C(uint64_t a1)
{
  result = sub_1DB2B9828(&qword_1ECC295B0, MEMORY[0x1E6968FB0], &protocol conformance descriptor for URL);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DB2B97A4(uint64_t a1)
{
  v2 = MEMORY[0x1E6968FB0];
  *(a1 + 8) = sub_1DB2B9828(&qword_1ECC27960, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  result = sub_1DB2B9828(&qword_1ECC295B8, v2, MEMORY[0x1E6968FB8]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DB2B9828(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1DB2B9870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1DB2B8E18(sub_1DB2B98D8, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

unint64_t sub_1DB2B98F8()
{
  result = qword_1ECC295E0;
  if (!qword_1ECC295E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC26D00, &qword_1DB2BCC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC295E0);
  }

  return result;
}

uint64_t sub_1DB2B995C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1E1283480]();

  v6 = sub_1DB2BAF24();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    do
    {
      MEMORY[0x1E1283480](v8, v9);
      if (v8 == a1 && v9 == a2 || (sub_1DB2BB924() & 1) != 0)
      {
        MEMORY[0x1E1283480](v8, v9);
      }

      v8 = sub_1DB2BAF24();
      v9 = v10;
    }

    while (v10);
  }

  MEMORY[0x1E1283480](a1, a2);
  return 0;
}

void sub_1DB2B9A70(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    v6 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v29[0] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
    v25 = sub_1DB2BAD24();
    v27 = v26;

    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    a4[4] = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
    *a4 = v25;
    a4[1] = v27;
    a4[2] = v7;
    return;
  }

  v5 = (a1 + 32);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v5[3];
    v9 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v8);
    (*(v9 + 24))(v29, v8, v9);
    v10 = v29[0];
    v11 = v29[1];
    v12 = v29[2];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DB1572F0(0, *(v6 + 2) + 1, 1, v6);
    }

    v14 = *(v6 + 2);
    v13 = *(v6 + 3);
    if (v14 >= v13 >> 1)
    {
      v6 = sub_1DB1572F0((v13 > 1), v14 + 1, 1, v6);
    }

    *(v6 + 2) = v14 + 1;
    v15 = &v6[16 * v14];
    *(v15 + 4) = v10;
    *(v15 + 5) = v11;
    v16 = *(v12 + 16);
    v17 = v7[2];
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v20 = v7[3] >> 1, v20 >= v18))
    {
      if (*(v12 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v21 = v17 + v16;
      }

      else
      {
        v21 = v17;
      }

      v7 = sub_1DB157420(isUniquelyReferenced_nonNull_native, v21, 1, v7);
      v20 = v7[3] >> 1;
      if (*(v12 + 16))
      {
LABEL_18:
        if (v20 - v7[2] < v16)
        {
          goto LABEL_26;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
        swift_arrayInitWithCopy();

        if (v16)
        {
          v22 = v7[2];
          v23 = __OFADD__(v22, v16);
          v24 = v22 + v16;
          if (v23)
          {
            goto LABEL_27;
          }

          v7[2] = v24;
        }

        goto LABEL_4;
      }
    }

    if (v16)
    {
      goto LABEL_25;
    }

LABEL_4:

    v5 += 5;
    if (!--v4)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_1DB2B9D5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v16 = a2;
  v17 = a3;

  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(v7 + 24);
  v8(v15, v6, v7);
  v9 = v15[0];
  v10 = v15[1];

  MEMORY[0x1E1283490](v9, v10);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v11 = v16;
  v12 = v17;
  v8(v15, v6, v7);
  v13 = v15[2];

  return Expression.init(_:_:)(v11, v12, v13, a4);
}

uint64_t sub_1DB2B9E80@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = type metadata accessor for Expression(0, a5, a3, a4);
  v26 = 32;
  v27 = 0xE100000000000000;
  MEMORY[0x1E1283490](a3, a4);
  MEMORY[0x1E1283490](32, 0xE100000000000000);
  sub_1DB2B9A70(a1, &v26);

  v12 = v29;
  v13 = v30;
  __swift_project_boxed_opaque_existential_1(&v26, v29);
  (*(v13 + 24))(&v24, v12, v13);
  v22 = v24;
  v23 = v25;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1DB1688F0(&qword_1EE13EF48, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  ExpressionType.init<A>(_:)(&v22, v11, v14, WitnessTable, v16);
  result = __swift_destroy_boxed_opaque_existential_1(&v26);
  v19 = v31;
  v18 = v32;
  v20 = v33;
  if (a2)
  {
    v29 = v11;
    v21 = swift_getWitnessTable();
    v26 = v19;
    v27 = v18;
    v30 = v21;
    v28 = v20;
    sub_1DB2B9D5C(&v26, 0, 0xE000000000000000, a6);
    return __swift_destroy_boxed_opaque_existential_1(&v26);
  }

  else
  {
    *a6 = v31;
    a6[1] = v18;
    a6[2] = v20;
  }

  return result;
}

uint64_t sub_1DB2BA060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(a1, inited + 32);
  sub_1DB164980(a2, inited + 72);
  sub_1DB2B9E80(inited, a3, a4, a5, a6, a7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  return swift_arrayDestroy();
}

uint64_t sub_1DB2BA144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1DB1609EC(a1, &v9);
  if (v10)
  {
    sub_1DB1355D0(&v9, v11);
    sub_1DB2BA220(v11, a2, a3, a4);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_1DB145A68(&v9);
    sub_1DB135B68();
    swift_allocError();
    *v8 = 0xD000000000000018;
    *(v8 + 8) = 0x80000001DB2D7890;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1DB2BA220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  v22[0] = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v22[0]);
  v22[2] = v22 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1DB2BB364();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v16 = v22 - v15;
  sub_1DB164980(a1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
  v17 = swift_dynamicCast();
  v18 = *(v14 + 56);
  if (v17)
  {
    v18(v13, 0, 1, AssociatedTypeWitness);
    (*(v14 + 32))(v16, v13, AssociatedTypeWitness);
    v19 = v24;
    (*(a3 + 48))(v16, a2, a3);
    if (v19)
    {
      return (*(v14 + 8))(v16, AssociatedTypeWitness);
    }

    else
    {
      (*(v14 + 8))(v16, AssociatedTypeWitness);
      return swift_dynamicCast();
    }
  }

  else
  {
    v18(v13, 1, 1, AssociatedTypeWitness);
    (*(v10 + 8))(v13, v9);
    sub_1DB135B68();
    swift_allocError();
    *v21 = 0xD00000000000001DLL;
    *(v21 + 8) = 0x80000001DB2D78B0;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0;
    return swift_willThrow();
  }
}

void * infix(_:_:)(void *a1@<X8>)
{
  *a1 = 42;
  a1[1] = 0xE100000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
}