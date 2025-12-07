__n128 IARFInTextMeasurement.textRange.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t IARFInTextMeasurement.measurement.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 56);
  *(a1 + 40) = v7;
  return sub_2442C60B8(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_2442C60B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 0xFF)
  {
    return sub_2442C60D8(a4, a5, a6);
  }

  return result;
}

uint64_t sub_2442C60D8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_2442C6104()
{
  v1 = *v0;
  sub_2443131A8();
  MEMORY[0x245D5EDF0](v1);
  return sub_2443131D8();
}

uint64_t sub_2442C6178(uint64_t a1)
{
  v2 = *v1;
  sub_2443131A8();
  MEMORY[0x245D5EDF0](v2);
  return sub_2443131D8();
}

uint64_t sub_2442C61BC()
{
  if (*v0)
  {
    return 0x6D6572757361656DLL;
  }

  else
  {
    return 0x676E615274786574;
  }
}

uint64_t sub_2442C6204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E615274786574 && a2 == 0xE900000000000065;
  if (v6 || (sub_244313108() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6572757361656DLL && a2 == 0xEB00000000746E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_244313108();

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

uint64_t sub_2442C6304(uint64_t a1)
{
  v2 = sub_2442C65F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C6340(uint64_t a1)
{
  v2 = sub_2442C65F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFInTextMeasurement.encode(to:)(void *a1)
{
  v3 = sub_2442C6564(&qword_27EDDE830, &qword_244313720);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = v9;
  v10 = *(v1 + 32);
  v14 = *(v1 + 40);
  v15 = v10;
  v13 = *(v1 + 48);
  v25 = *(v1 + 56);
  sub_2442C65AC(a1, a1[3]);
  sub_2442C65F0();
  sub_244313238();
  v19 = v7;
  v20 = v8;
  v26 = 0;
  sub_2442C6644();
  v11 = v18;
  sub_2443130C8();
  if (!v11)
  {
    v19 = v17;
    v20 = v16;
    v21 = v15;
    v22 = v14;
    v23 = v13;
    v24 = v25;
    v26 = 1;
    sub_2442C60B8(v17, v16, v15, v14, v13, v25);
    sub_2442C6698();
    sub_244313088();
    sub_2442C66EC(v19, v20, v21, v22, v23, v24);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2442C6564(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_2442C65AC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2442C65F0()
{
  result = qword_27EDDE838;
  if (!qword_27EDDE838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE838);
  }

  return result;
}

unint64_t sub_2442C6644()
{
  result = qword_27EDDE840;
  if (!qword_27EDDE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE840);
  }

  return result;
}

unint64_t sub_2442C6698()
{
  result = qword_27EDDE848;
  if (!qword_27EDDE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE848);
  }

  return result;
}

uint64_t sub_2442C66EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 0xFF)
  {
    return sub_2442C670C(a4, a5, a6);
  }

  return result;
}

uint64_t sub_2442C670C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t IARFInTextMeasurement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDE850, &qword_244313728);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  sub_2442C65AC(a1, a1[3]);
  sub_2442C65F0();
  sub_244313228();
  if (!v2)
  {
    v17 = 0;
    sub_2442C6954();
    sub_244313038();
    v9 = v14[0];
    v17 = 1;
    sub_2442C69A8();
    sub_244312FF8();
    (*(v6 + 8))(v8, v5);
    v10 = v15;
    v11 = v16;
    *a2 = v9;
    v12 = v14[1];
    *(a2 + 16) = v14[0];
    *(a2 + 32) = v12;
    *(a2 + 48) = v10;
    *(a2 + 56) = v11;
  }

  return sub_2442C6908(a1);
}

uint64_t sub_2442C6908(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_2442C6954()
{
  result = qword_27EDDE858;
  if (!qword_27EDDE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE858);
  }

  return result;
}

unint64_t sub_2442C69A8()
{
  result = qword_27EDDE860;
  if (!qword_27EDDE860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE860);
  }

  return result;
}

uint64_t sub_2442C6A38(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2442C6A4C(uint64_t a1, uint64_t a2)
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

uint64_t sub_2442C6A68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 57))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 56);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_2442C6AB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = ~a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IARFInTextMeasurement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IARFInTextMeasurement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2442C6C94()
{
  result = qword_27EDDE868;
  if (!qword_27EDDE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE868);
  }

  return result;
}

unint64_t sub_2442C6CEC()
{
  result = qword_27EDDE870;
  if (!qword_27EDDE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE870);
  }

  return result;
}

unint64_t sub_2442C6D44()
{
  result = qword_27EDDE878;
  if (!qword_27EDDE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE878);
  }

  return result;
}

uint64_t sub_2442C6D98@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (!*result)
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 56) = -2;
    return result;
  }

  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 24);
  result = Table.offset(_:)(6);
  if (result)
  {
    v7 = result + v6;
    if (__OFADD__(result, v6))
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v8 = *(*(v3 + 24) + v7);
    v9 = v7 + v8;
    if (__OFADD__(v7, v8))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v10 = v3;
    v11 = v4;
    v12 = v5;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v9 = 0;
  }

  v20[0] = v10;
  v20[1] = v11;
  v20[2] = v12;
  v21 = v9;
  sub_2442D31EC(v20, v22);
  v18 = v22[1];
  v19 = v22[0];
  v13 = v23;
  v14 = v24;
  result = Table.offset(_:)(4);
  if (__OFADD__(result, v6))
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = (*(v3 + 24) + result + v6);
  v16 = *v15;
  v17 = v15[1];

  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19;
  *(a2 + 32) = v18;
  *(a2 + 48) = v13;
  *(a2 + 56) = v14;
  return result;
}

uint64_t IARFStep.totalTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_2442C6EFC(v2, v3, v4, v5, v6);
}

uint64_t sub_2442C6EFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_2442C6F14(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_2442C6F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

uint64_t sub_2442C6F78()
{
  v1 = 0x6569646572676E69;
  if (*v0 != 1)
  {
    v1 = 0x7370657453627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D69546C61746F74;
  }
}

uint64_t sub_2442C6FE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2442C8F6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2442C7014(uint64_t a1)
{
  v2 = sub_2442C734C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C7050(uint64_t a1)
{
  v2 = sub_2442C734C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFStep.encode(to:)(void *a1)
{
  v21 = sub_2442C6564(&qword_27EDDE880, &qword_2443139A0);
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = &v17 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 40);
  v18 = *(v1 + 48);
  v19 = v9;
  v10 = a1[3];
  v20 = a1[4];
  v11 = *(v1 + 32);
  sub_2442C65AC(a1, v10);
  sub_2442C6EFC(v5, v6, v7, v8, v11);
  sub_2442C734C();
  sub_244313238();
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v11;
  v12 = v21;
  v29 = 0;
  sub_2442C73A0();
  v13 = v22;
  sub_244313088();
  sub_2442C73F4(v24, v25, v26, v27, v28);
  if (v13)
  {
    return (*(v23 + 8))(v4, v12);
  }

  v15 = v18;
  v16 = v23;
  v24 = v19;
  v29 = 1;
  sub_2442C6564(&qword_27EDDE898, &qword_2443139A8);
  sub_2442C798C(&qword_27EDDE8A0, sub_2442C74A4, MEMORY[0x277D83948]);
  sub_2443130C8();
  v24 = v15;
  v29 = 2;
  sub_2442C6564(&qword_27EDDE8B0, &qword_2443139B0);
  sub_2442C74F8(&qword_27EDDE8B8, sub_2442C7570, MEMORY[0x277D83948]);
  sub_2443130C8();
  return (*(v16 + 8))(v4, v12);
}

unint64_t sub_2442C734C()
{
  result = qword_27EDDE888;
  if (!qword_27EDDE888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE888);
  }

  return result;
}

unint64_t sub_2442C73A0()
{
  result = qword_27EDDE890;
  if (!qword_27EDDE890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE890);
  }

  return result;
}

uint64_t sub_2442C73F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_2442C740C(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_2442C740C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

uint64_t sub_2442C745C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2442C74A4()
{
  result = qword_27EDDE8A8;
  if (!qword_27EDDE8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE8A8);
  }

  return result;
}

uint64_t sub_2442C74F8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2442C745C(&qword_27EDDE8B0, &qword_2443139B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2442C7570()
{
  result = qword_27EDDE8C0;
  if (!qword_27EDDE8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE8C0);
  }

  return result;
}

uint64_t IARFStep.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDE8C8, &qword_2443139B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  sub_2442C65AC(a1, a1[3]);
  sub_2442C734C();
  sub_244313228();
  if (v2)
  {
    return sub_2442C6908(a1);
  }

  v27 = 0;
  sub_2442C7938();
  sub_244312FF8();
  v9 = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  v26 = v25;
  sub_2442C6564(&qword_27EDDE898, &qword_2443139A8);
  v27 = 1;
  sub_2442C798C(&qword_27EDDE8D8, sub_2442C7A04, MEMORY[0x277D83978]);
  sub_244313038();
  v17 = v21;
  sub_2442C6564(&qword_27EDDE8B0, &qword_2443139B0);
  v27 = 2;
  sub_2442C74F8(&qword_27EDDE8E8, sub_2442C7A58, MEMORY[0x277D83978]);
  sub_244313038();
  (*(v6 + 8))(v8, v5);
  v11 = v20;
  v10 = v21;
  v12 = v9;
  v14 = v18;
  v13 = v19;
  *a2 = v9;
  *(a2 + 8) = v14;
  *(a2 + 16) = v13;
  *(a2 + 24) = v11;
  LOBYTE(v9) = v26;
  *(a2 + 32) = v26;
  *(a2 + 40) = v17;
  *(a2 + 48) = v10;
  sub_2442C6EFC(v12, v14, v13, v11, v9);

  sub_2442C6908(a1);
  sub_2442C73F4(v12, v14, v13, v11, v9);
}

unint64_t sub_2442C7938()
{
  result = qword_27EDDE8D0;
  if (!qword_27EDDE8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE8D0);
  }

  return result;
}

uint64_t sub_2442C798C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2442C745C(&qword_27EDDE898, &qword_2443139A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2442C7A04()
{
  result = qword_27EDDE8E0;
  if (!qword_27EDDE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE8E0);
  }

  return result;
}

unint64_t sub_2442C7A58()
{
  result = qword_27EDDE8F0;
  if (!qword_27EDDE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE8F0);
  }

  return result;
}

uint64_t sub_2442C7AE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2442C7AFC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2442C7B18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2442C7B60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IARFStep.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IARFStep.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2442C7D18()
{
  result = qword_27EDDE8F8;
  if (!qword_27EDDE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE8F8);
  }

  return result;
}

unint64_t sub_2442C7D70()
{
  result = qword_27EDDE900;
  if (!qword_27EDDE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE900);
  }

  return result;
}

unint64_t sub_2442C7DC8()
{
  result = qword_27EDDE908;
  if (!qword_27EDDE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE908);
  }

  return result;
}

double sub_2442C7E1C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2443130D8();
  MEMORY[0x245D5E950](v2);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  sub_2442C6564(&qword_27EDDE928, &qword_244313BF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_244313970;
  sub_244300090(v3 + 32);
  sub_2442C6564(&qword_27EDDE930, &qword_244313BF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_244313970;
  sub_2442C6564(&qword_27EDDE938, &unk_244316490);
  v5 = swift_allocObject();
  v5[1] = xmmword_244313970;
  v5[2] = xmmword_244313980;
  *&result = 6;
  v5[3] = xmmword_244313990;
  *(v4 + 32) = 0xD000000000000039;
  *(v4 + 40) = 0x800000024431C170;
  v7 = MEMORY[0x277D84F90];
  *(v4 + 48) = MEMORY[0x277D84F90];
  *(v4 + 56) = v7;
  *(v4 + 64) = v5;
  *a1 = 21584;
  *(a1 + 8) = 0xE200000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  return result;
}

void sub_2442C7F88(uint64_t a1@<X8>)
{
  v2 = sub_2443130D8();
  MEMORY[0x245D5E950](v2);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  sub_2442C6564(&qword_27EDDE928, &qword_244313BF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_244313970;
  sub_244300188((v3 + 32));
  sub_2442C6564(&qword_27EDDE930, &qword_244313BF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_244313970;
  sub_2442FBE14((v4 + 32));
  *a1 = 21584;
  *(a1 + 8) = 0xE200000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
}

void sub_2442C8094(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v205 = sub_244312CC8();
  v4 = *(v205 - 8);
  v5 = MEMORY[0x28223BE20](v205);
  v204 = &v195 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v208 = &v195 - v7;
  v8 = *a1;
  if (!*a1)
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return;
  }

  v9 = a1[1];
  v10 = a1[2];
  v11 = *(a1 + 6);
  v12 = Table.offset(_:)(4);
  v214 = v9;
  if (!v12)
  {
    goto LABEL_23;
  }

  if (__OFADD__(v12, v11))
  {
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  v13 = *(v8 + 24);
  v14 = *(v13 + v12 + v11);
  if (v14 != 2)
  {
    if (v14 == 1)
    {
      v12 = Table.offset(_:)(6);
      if (v12)
      {
        v15 = v12 + v11;
        if (__OFADD__(v12, v11))
        {
LABEL_252:
          __break(1u);
          goto LABEL_253;
        }

        v16 = *(v13 + v15);
        v17 = v15 + v16;
        if (__OFADD__(v15, v16))
        {
LABEL_254:
          __break(1u);
          goto LABEL_255;
        }

        v12 = Table.offset(_:)(4);
        if (v12)
        {
          v18 = v12 + v17;
          if (__OFADD__(v12, v17))
          {
LABEL_257:
            __break(1u);
            goto LABEL_258;
          }

          v19 = Table.directString(at:)(v18);
          countAndFlagsBits = v19.value._countAndFlagsBits;

          if (v19.value._object)
          {
            object = v19.value._object;
            v198 = 0;
            v199 = 0;
            v197 = 0;
LABEL_27:
            v9 = v214;
LABEL_28:
            *&v221 = v8;
            *(&v221 + 1) = v9;
            *&v222 = v10;
            DWORD2(v222) = v11;
            v30 = IARFFB_Step.ingredientsCount.getter(v12);
            if ((v30 & 0x80000000) == 0)
            {
              v196 = a2;
              v220 = v8;
              v216 = v10;
              v217 = v11;
              if (v30)
              {
                v31 = 0;
                v203 = (v4 + 16);
                v202 = (v4 + 8);
                v213 = MEMORY[0x277D84F90];
                v32 = v214;
                v206 = v30;
                while (1)
                {
                  v38 = *(v8 + 24);
                  v39 = *(v38 + v11);
                  v65 = __OFSUB__(v11, v39);
                  v40 = v11 - v39;
                  if (v65)
                  {
                    break;
                  }

                  if (*(v38 + v40) >= 9u)
                  {
                    v65 = __OFADD__(v40, 8);
                    v41 = v40 + 8;
                    if (v65)
                    {
                      goto LABEL_212;
                    }

                    v42 = *(v38 + v41);
                    if (v42)
                    {
                      v65 = __OFADD__(v42, v11);
                      v43 = v42 + v11;
                      if (v65)
                      {
                        goto LABEL_219;
                      }

                      v44 = *(v38 + v43);
                      v65 = __OFADD__(v43, v44);
                      v45 = v43 + v44;
                      if (v65)
                      {
                        goto LABEL_220;
                      }

                      v65 = __OFADD__(v45, 4);
                      v46 = v45 + 4;
                      if (v65)
                      {
                        goto LABEL_221;
                      }

                      if ((v31 - 0x20000000) >> 30 != 3)
                      {
                        goto LABEL_222;
                      }

                      v65 = __OFADD__(v46, 4 * v31);
                      v47 = v46 + 4 * v31;
                      if (v65)
                      {
                        goto LABEL_223;
                      }

                      v48 = *(v38 + v47);
                      v49 = v47 + v48;
                      if (__OFADD__(v47, v48))
                      {
                        goto LABEL_224;
                      }

                      v50 = *(v38 + v49);
                      v65 = __OFSUB__(v49, v50);
                      v51 = v49 - v50;
                      if (v65)
                      {
                        goto LABEL_225;
                      }

                      if (*(v38 + v51) < 5u)
                      {
                        v53 = 0;
                      }

                      else
                      {
                        v65 = __OFADD__(v51, 4);
                        v52 = v51 + 4;
                        if (v65)
                        {
                          goto LABEL_241;
                        }

                        v53 = *(v38 + v52);
                      }

                      v54 = v53 + v49;
                      if (__OFADD__(v53, v49))
                      {
                        goto LABEL_226;
                      }

                      v212 = v31;

                      v55 = Table.directString(at:)(v54);
                      if (!v55.value._object)
                      {
                        goto LABEL_259;
                      }

                      v56 = *(v8 + 24);
                      v57 = *(v56 + v49);
                      v65 = __OFSUB__(v49, v57);
                      v58 = v49 - v57;
                      if (v65)
                      {
                        goto LABEL_227;
                      }

                      v59 = *(v56 + v58) >= 7u;
                      v211 = v55.value._object;
                      if (v59)
                      {
                        v65 = __OFADD__(v58, 6);
                        v60 = v58 + 6;
                        if (v65)
                        {
                          goto LABEL_242;
                        }

                        v61 = *(v56 + v60);
                      }

                      else
                      {
                        v61 = 0;
                      }

                      if (__OFADD__(v61, v49))
                      {
                        goto LABEL_228;
                      }

                      v210 = v55.value._countAndFlagsBits;
                      v62 = Table.directString(at:)(v61 + v49);
                      if (!v62.value._object)
                      {
                        goto LABEL_260;
                      }

                      v63 = *(v8 + 24);
                      v64 = *(v63 + v49);
                      v65 = __OFSUB__(v49, v64);
                      v66 = v49 - v64;
                      v67 = v65;
                      if (v65)
                      {
                        goto LABEL_229;
                      }

                      v68 = v62.value._countAndFlagsBits;
                      v209 = v62.value._object;
                      if (*(v63 + v66) < 9u)
                      {
                        goto LABEL_99;
                      }

                      if (__OFADD__(v66, 8))
                      {
                        goto LABEL_243;
                      }

                      v69 = *(v63 + v66 + 8);
                      if (*(v63 + v66 + 8))
                      {
                        v65 = __OFADD__(v69, v49);
                        v70 = v69 + v49;
                        if (v65)
                        {
                          goto LABEL_245;
                        }

                        v71 = *(v63 + v70);
                        v65 = __OFADD__(v70, v71);
                        v72 = v70 + v71;
                        if (v65)
                        {
                          goto LABEL_246;
                        }

                        v207 = v62.value._countAndFlagsBits;
                        v73 = *(v63 + v72);
                        if (v73 < 0)
                        {
                          goto LABEL_230;
                        }

                        if (v73)
                        {
                          v74 = 0;
                          v75 = -536870912;
                          v219 = MEMORY[0x277D84F90];
                          do
                          {
                            v79 = *(v8 + 24);
                            v80 = *(v79 + v49);
                            v65 = __OFSUB__(v49, v80);
                            v81 = v49 - v80;
                            if (v65)
                            {
                              __break(1u);
                              goto LABEL_188;
                            }

                            if (*(v79 + v81) >= 9u)
                            {
                              v65 = __OFADD__(v81, 8);
                              v82 = v81 + 8;
                              if (v65)
                              {
                                goto LABEL_191;
                              }

                              v83 = *(v79 + v82);
                              if (v83)
                              {
                                v65 = __OFADD__(v83, v49);
                                v84 = v83 + v49;
                                if (v65)
                                {
                                  goto LABEL_193;
                                }

                                v85 = *(v79 + v84);
                                v65 = __OFADD__(v84, v85);
                                v86 = v84 + v85;
                                if (v65)
                                {
                                  goto LABEL_194;
                                }

                                v65 = __OFADD__(v86, 4);
                                v87 = v86 + 4;
                                if (v65)
                                {
                                  goto LABEL_195;
                                }

                                if (v75 >> 30 != 3)
                                {
                                  goto LABEL_196;
                                }

                                v65 = __OFADD__(v87, v74);
                                v88 = v87 + v74;
                                if (v65)
                                {
                                  goto LABEL_197;
                                }

                                v89 = *(v79 + v88);
                                v90 = v88 + v89;
                                if (__OFADD__(v88, v89))
                                {
                                  goto LABEL_198;
                                }

                                v91 = *(v79 + v90);
                                v65 = __OFSUB__(v90, v91);
                                v92 = v90 - v91;
                                if (v65)
                                {
                                  goto LABEL_199;
                                }

                                if (*(v79 + v92) < 7u)
                                {
                                  goto LABEL_88;
                                }

                                v65 = __OFADD__(v92, 6);
                                v93 = v92 + 6;
                                if (v65)
                                {
                                  goto LABEL_233;
                                }

                                v94 = *(v79 + v93);
                                if (v94)
                                {
                                  v65 = __OFADD__(v94, v90);
                                  v95 = v94 + v90;
                                  if (v65)
                                  {
                                    goto LABEL_237;
                                  }

                                  v96 = *(v79 + v95);
                                  v97 = v95 + v96;
                                  if (__OFADD__(v95, v96))
                                  {
                                    goto LABEL_238;
                                  }

                                  v98 = v8;
                                  v99 = v214;
                                }

                                else
                                {
LABEL_88:
                                  v98 = 0;
                                  v99 = 0;
                                  v10 = 0;
                                  v97 = 0;
                                }

                                v225 = v98;
                                v226 = v99;
                                v227 = v10;
                                v228 = v97;

                                sub_2442D31EC(&v225, &v221);
                                v100 = *(v8 + 24);
                                v101 = *(v100 + v90);
                                v65 = __OFSUB__(v90, v101);
                                v102 = v90 - v101;
                                if (v65)
                                {
                                  goto LABEL_200;
                                }

                                v218 = v221;
                                v103 = v223;
                                v104 = v224;
                                if (*(v100 + v102) < 5u)
                                {
                                  v106 = 0;
                                }

                                else
                                {
                                  v65 = __OFADD__(v102, 4);
                                  v105 = v102 + 4;
                                  if (v65)
                                  {
                                    goto LABEL_234;
                                  }

                                  v106 = *(v100 + v105);
                                }

                                v65 = __OFADD__(v106, v90);
                                v107 = v106 + v90;
                                if (v65)
                                {
                                  goto LABEL_201;
                                }

                                v215 = v222;
                                v108 = (v100 + v107);
                                v109 = *v108;
                                v110 = v108[1];

                                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                {
                                  v219 = sub_2442DBBD4(0, *(v219 + 2) + 1, 1, v219);
                                }

                                v112 = *(v219 + 2);
                                v111 = *(v219 + 3);
                                if (v112 >= v111 >> 1)
                                {
                                  v219 = sub_2442DBBD4((v111 > 1), v112 + 1, 1, v219);
                                }

                                v76 = v219;
                                *(v219 + 2) = v112 + 1;
                                v77 = &v76[64 * v112];
                                *(v77 + 4) = v109;
                                *(v77 + 5) = v110;
                                v78 = v215;
                                *(v77 + 3) = v218;
                                *(v77 + 4) = v78;
                                *(v77 + 10) = v103;
                                v77[88] = v104;
                                v8 = v220;
                                v10 = v216;
                              }
                            }

                            ++v75;
                            v74 += 4;
                            --v73;
                          }

                          while (v73);
                          v63 = *(v8 + 24);
                          v113 = *(v63 + v49);
                          v65 = __OFSUB__(v49, v113);
                          v66 = v49 - v113;
                          v67 = v65;
                        }

                        else
                        {
                          v219 = MEMORY[0x277D84F90];
                        }

                        v68 = v207;
                        if (v67)
                        {
                          goto LABEL_231;
                        }
                      }

                      else
                      {
LABEL_99:
                        v219 = MEMORY[0x277D84F90];
                        if (v67)
                        {
                          goto LABEL_231;
                        }
                      }

                      if (*(v63 + v66) >= 0xBu)
                      {
                        v65 = __OFADD__(v66, 10);
                        v114 = v66 + 10;
                        if (v65)
                        {
                          goto LABEL_244;
                        }

                        v115 = *(v63 + v114);
                        if (v115)
                        {
                          v65 = __OFADD__(v115, v49);
                          v116 = v115 + v49;
                          if (v65)
                          {
                            goto LABEL_247;
                          }

                          v117 = *(v63 + v116);
                          v65 = __OFADD__(v116, v117);
                          v118 = v116 + v117;
                          if (v65)
                          {
                            goto LABEL_248;
                          }

                          v119 = *(v63 + v118);
                          if (v119 < 0)
                          {
                            goto LABEL_232;
                          }

                          if (v119)
                          {
                            v120 = 0;
                            v121 = -536870912;
                            *&v218 = MEMORY[0x277D84F90];
                            v207 = v68;
                            while (1)
                            {
                              v124 = *(v8 + 24);
                              v125 = *(v124 + v49);
                              v65 = __OFSUB__(v49, v125);
                              v126 = v49 - v125;
                              if (v65)
                              {
                                break;
                              }

                              if (*(v124 + v126) >= 0xBu)
                              {
                                v65 = __OFADD__(v126, 10);
                                v127 = v126 + 10;
                                if (v65)
                                {
                                  goto LABEL_192;
                                }

                                v128 = *(v124 + v127);
                                if (v128)
                                {
                                  v65 = __OFADD__(v128, v49);
                                  v129 = v128 + v49;
                                  if (v65)
                                  {
                                    goto LABEL_202;
                                  }

                                  v130 = *(v124 + v129);
                                  v65 = __OFADD__(v129, v130);
                                  v131 = v129 + v130;
                                  if (v65)
                                  {
                                    goto LABEL_203;
                                  }

                                  v65 = __OFADD__(v131, 4);
                                  v132 = v131 + 4;
                                  if (v65)
                                  {
                                    goto LABEL_204;
                                  }

                                  if (v121 >> 30 != 3)
                                  {
                                    goto LABEL_205;
                                  }

                                  v65 = __OFADD__(v132, v120);
                                  v133 = v132 + v120;
                                  if (v65)
                                  {
                                    goto LABEL_206;
                                  }

                                  v134 = *(v124 + v133);
                                  v135 = v133 + v134;
                                  if (__OFADD__(v133, v134))
                                  {
                                    goto LABEL_207;
                                  }

                                  v136 = *(v124 + v135);
                                  v137 = v135 - v136;
                                  v138 = __OFSUB__(v135, v136);
                                  if (__OFSUB__(v135, v136))
                                  {
                                    goto LABEL_208;
                                  }

                                  if (*(v124 + v137) < 5u)
                                  {
                                    goto LABEL_138;
                                  }

                                  if (__OFADD__(v137, 4))
                                  {
                                    goto LABEL_235;
                                  }

                                  v139 = *(v124 + v137 + 4);
                                  if (*(v124 + v137 + 4))
                                  {
                                    v65 = __OFADD__(v139, v135);
                                    v140 = v139 + v135;
                                    if (v65)
                                    {
                                      goto LABEL_239;
                                    }

                                    v141 = *(v124 + v140);
                                    v65 = __OFADD__(v140, v141);
                                    v142 = v140 + v141;
                                    if (v65)
                                    {
                                      goto LABEL_240;
                                    }

                                    v143 = v142;
                                    v144 = *(v124 + v142);
                                    v145 = v220;

                                    sub_244312CB8();
                                    if (v144)
                                    {
                                      v146 = *(v145 + 24);
                                      if (v144 < 1)
                                      {
                                        v147 = MEMORY[0x277D84F90];
                                      }

                                      else
                                      {
                                        sub_2442C6564(&qword_27EDDE920, &qword_244316370);
                                        v147 = swift_allocObject();
                                        v148 = j__malloc_size(v147);
                                        v147[2] = v144;
                                        v147[3] = 2 * v148 - 64;
                                      }

                                      memcpy(v147 + 4, (v146 + v143 + 4), v144);
                                    }

                                    else
                                    {
                                      v147 = MEMORY[0x277D84F90];
                                    }

                                    *&v221 = v147;
                                    v150 = v208;
                                    v151 = v205;
                                    (*v203)(v204, v208, v205);
                                    sub_2442C6564(&qword_27EDDE910, &qword_244313BE8);
                                    sub_2442C90F4();
                                    *&v215 = sub_244312CA8();
                                    v149 = v152;
                                    (*v202)(v150, v151);

                                    v124 = *(v220 + 24);
                                    v153 = *(v124 + v135);
                                    v137 = v135 - v153;
                                    v154 = __OFSUB__(v135, v153);
                                    v68 = v207;
                                    if (v154)
                                    {
                                      goto LABEL_209;
                                    }
                                  }

                                  else
                                  {
LABEL_138:

                                    *&v215 = 0;
                                    v149 = 0;
                                    if (v138)
                                    {
                                      goto LABEL_209;
                                    }
                                  }

                                  if (*(v124 + v137) < 7u)
                                  {
                                    v155 = 0;
                                  }

                                  else
                                  {
                                    if (__OFADD__(v137, 6))
                                    {
                                      goto LABEL_236;
                                    }

                                    v155 = *(v124 + v137 + 6);
                                  }

                                  v65 = __OFADD__(v155, v135);
                                  v156 = v155 + v135;
                                  if (v65)
                                  {
                                    goto LABEL_210;
                                  }

                                  v157 = (v124 + v156);
                                  v158 = *v157;
                                  v159 = v157[1];

                                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                  {
                                    *&v218 = sub_2442DBAC8(0, *(v218 + 16) + 1, 1, v218);
                                  }

                                  v161 = *(v218 + 16);
                                  v160 = *(v218 + 24);
                                  if (v161 >= v160 >> 1)
                                  {
                                    *&v218 = sub_2442DBAC8((v160 > 1), v161 + 1, 1, v218);
                                  }

                                  v122 = v218;
                                  *(v218 + 16) = v161 + 1;
                                  v123 = (v122 + 32 * v161);
                                  v123[4] = v215;
                                  v123[5] = v149;
                                  v123[6] = v158;
                                  v123[7] = v159;
                                  v8 = v220;
                                }
                              }

                              ++v121;
                              v120 += 4;
                              if (!--v119)
                              {
                                goto LABEL_157;
                              }
                            }

LABEL_188:
                            __break(1u);
                            goto LABEL_189;
                          }
                        }
                      }

                      *&v218 = MEMORY[0x277D84F90];
LABEL_157:

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v213 = sub_2442DB9A8(0, *(v213 + 2) + 1, 1, v213);
                      }

                      v10 = v216;
                      LODWORD(v11) = v217;
                      v163 = *(v213 + 2);
                      v162 = *(v213 + 3);
                      v30 = v206;
                      v31 = v212;
                      if (v163 >= v162 >> 1)
                      {
                        v164 = sub_2442DB9A8((v162 > 1), v163 + 1, 1, v213);
                        v31 = v212;
                        v213 = v164;
                        v30 = v206;
                      }

                      v33 = v213;
                      *(v213 + 2) = v163 + 1;
                      v34 = &v33[48 * v163];
                      v35 = v211;
                      *(v34 + 4) = v210;
                      *(v34 + 5) = v35;
                      v36 = v209;
                      *(v34 + 6) = v68;
                      *(v34 + 7) = v36;
                      v37 = v218;
                      *(v34 + 8) = v219;
                      *(v34 + 9) = v37;
                      v32 = v214;
                    }
                  }

                  if (++v31 == v30)
                  {
                    goto LABEL_162;
                  }
                }
              }

              else
              {
                v213 = MEMORY[0x277D84F90];
                v32 = v214;
LABEL_162:
                *&v221 = v8;
                *(&v221 + 1) = v32;
                *&v222 = v10;
                DWORD2(v222) = v11;
                v165 = IARFFB_Step.substepsCount.getter(v30);
                if (v165 < 0)
                {
                  goto LABEL_250;
                }

                v166 = v165;
                if (!v165)
                {
                  v168 = MEMORY[0x277D84F90];
LABEL_186:

                  v191 = v196;
                  v192 = object;
                  *v196 = countAndFlagsBits;
                  v191[1] = v192;
                  v193 = v199;
                  v191[2] = v198;
                  v191[3] = v193;
                  v194 = v213;
                  v191[4] = v197;
                  v191[5] = v194;
                  v191[6] = v168;
                  return;
                }

                v167 = 0;
                v168 = MEMORY[0x277D84F90];
                v169 = -536870912;
                while (1)
                {
                  v170 = *(v8 + 24);
                  v171 = *(v170 + v11);
                  v65 = __OFSUB__(v11, v171);
                  v172 = v11 - v171;
                  if (v65)
                  {
                    break;
                  }

                  if (*(v170 + v172) < 0xBu)
                  {
                    goto LABEL_178;
                  }

                  v65 = __OFADD__(v172, 10);
                  v173 = v172 + 10;
                  if (v65)
                  {
                    goto LABEL_211;
                  }

                  v174 = *(v170 + v173);
                  if (v174)
                  {
                    v65 = __OFADD__(v174, v11);
                    v175 = v174 + v11;
                    if (v65)
                    {
                      goto LABEL_213;
                    }

                    v176 = *(v170 + v175);
                    v65 = __OFADD__(v175, v176);
                    v177 = v175 + v176;
                    if (v65)
                    {
                      goto LABEL_214;
                    }

                    v65 = __OFADD__(v177, 4);
                    v178 = v177 + 4;
                    if (v65)
                    {
                      goto LABEL_215;
                    }

                    if (v169 >> 30 != 3)
                    {
                      goto LABEL_216;
                    }

                    v65 = __OFADD__(v178, v167);
                    v179 = v178 + v167;
                    if (v65)
                    {
                      goto LABEL_217;
                    }

                    v180 = *(v170 + v179);
                    v181 = v179 + v180;
                    if (__OFADD__(v179, v180))
                    {
                      goto LABEL_218;
                    }

                    v182 = v214;
                    v183 = v216;
                  }

                  else
                  {
LABEL_178:
                    v8 = 0;
                    v182 = 0;
                    v183 = 0;
                    v181 = 0;
                  }

                  v225 = v8;
                  v226 = v182;
                  v227 = v183;
                  v228 = v181;
                  sub_2442FC130(&v225, &v221);
                  v184 = v221;
                  v185 = v222;
                  v186 = v223;
                  if (*(&v221 + 1))
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v168 = sub_2442DB888(0, *(v168 + 2) + 1, 1, v168);
                    }

                    v188 = *(v168 + 2);
                    v187 = *(v168 + 3);
                    v189 = v168;
                    if (v188 >= v187 >> 1)
                    {
                      v189 = sub_2442DB888((v187 > 1), v188 + 1, 1, v168);
                    }

                    *(v189 + 2) = v188 + 1;
                    v168 = v189;
                    v190 = &v189[40 * v188];
                    *(v190 + 2) = v184;
                    *(v190 + 3) = v185;
                    *(v190 + 8) = v186;
                  }

                  else
                  {
                    sub_2442C9090(v221, 0, v222, *(&v222 + 1), v223);
                  }

                  ++v169;
                  v167 += 4;
                  --v166;
                  v8 = v220;
                  LODWORD(v11) = v217;
                  if (!v166)
                  {
                    goto LABEL_186;
                  }
                }

LABEL_189:
                __break(1u);
              }

              __break(1u);
LABEL_191:
              __break(1u);
LABEL_192:
              __break(1u);
LABEL_193:
              __break(1u);
LABEL_194:
              __break(1u);
LABEL_195:
              __break(1u);
LABEL_196:
              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
LABEL_199:
              __break(1u);
LABEL_200:
              __break(1u);
LABEL_201:
              __break(1u);
LABEL_202:
              __break(1u);
LABEL_203:
              __break(1u);
LABEL_204:
              __break(1u);
LABEL_205:
              __break(1u);
LABEL_206:
              __break(1u);
LABEL_207:
              __break(1u);
LABEL_208:
              __break(1u);
LABEL_209:
              __break(1u);
LABEL_210:
              __break(1u);
LABEL_211:
              __break(1u);
LABEL_212:
              __break(1u);
LABEL_213:
              __break(1u);
LABEL_214:
              __break(1u);
LABEL_215:
              __break(1u);
LABEL_216:
              __break(1u);
LABEL_217:
              __break(1u);
LABEL_218:
              __break(1u);
LABEL_219:
              __break(1u);
LABEL_220:
              __break(1u);
LABEL_221:
              __break(1u);
LABEL_222:
              __break(1u);
LABEL_223:
              __break(1u);
LABEL_224:
              __break(1u);
LABEL_225:
              __break(1u);
LABEL_226:
              __break(1u);
LABEL_227:
              __break(1u);
LABEL_228:
              __break(1u);
LABEL_229:
              __break(1u);
LABEL_230:
              __break(1u);
LABEL_231:
              __break(1u);
LABEL_232:
              __break(1u);
LABEL_233:
              __break(1u);
LABEL_234:
              __break(1u);
LABEL_235:
              __break(1u);
LABEL_236:
              __break(1u);
LABEL_237:
              __break(1u);
LABEL_238:
              __break(1u);
LABEL_239:
              __break(1u);
LABEL_240:
              __break(1u);
LABEL_241:
              __break(1u);
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
LABEL_244:
              __break(1u);
LABEL_245:
              __break(1u);
LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              __break(1u);
            }

            __break(1u);
LABEL_250:
            __break(1u);
            goto LABEL_251;
          }
        }
      }
    }

    goto LABEL_25;
  }

  v12 = Table.offset(_:)(6);
  if (!v12)
  {
LABEL_25:
    countAndFlagsBits = 0;
    object = 0;
    v198 = 0;
    v199 = 0;
    v29 = 255;
    goto LABEL_26;
  }

  v20 = v12 + v11;
  if (__OFADD__(v12, v11))
  {
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  v21 = *(v13 + v20);
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
LABEL_255:
    __break(1u);
    goto LABEL_256;
  }

  v9 = v214;
  v23 = Table.offset(_:)(4);
  v24 = v23 + v22;
  if (__OFADD__(v23, v22))
  {
LABEL_256:
    __break(1u);
    goto LABEL_257;
  }

  v25 = Table.directString(at:)(v24);
  object = v25.value._object;
  if (!v25.value._object)
  {

LABEL_23:
    countAndFlagsBits = 0;
    object = 0;
    v198 = 0;
    v199 = 0;
    v197 = 255;
    goto LABEL_28;
  }

  countAndFlagsBits = v25.value._countAndFlagsBits;
  v26 = Table.offset(_:)(6);
  v65 = __OFADD__(v26, v22);
  v27 = v26 + v22;
  if (!v65)
  {
    v28 = Table.directString(at:)(v27);

    v199 = v28.value._object;
    if (v28.value._object)
    {
      v198 = v28.value._countAndFlagsBits;
      v29 = 1;
LABEL_26:
      v197 = v29;
      goto LABEL_27;
    }

    goto LABEL_25;
  }

LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
}

uint64_t sub_2442C8F6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69546C61746F74 && a2 == 0xE900000000000065;
  if (v4 || (sub_244313108() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6569646572676E69 && a2 == 0xEB0000000073746ELL || (sub_244313108() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7370657453627573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_244313108();

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

void sub_2442C9090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

unint64_t sub_2442C90F4()
{
  result = qword_27EDDE918;
  if (!qword_27EDDE918)
  {
    sub_2442C745C(&qword_27EDDE910, &qword_244313BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE918);
  }

  return result;
}

uint64_t sub_2442C9170(char a1)
{
  result = 0x6574696C6167656DLL;
  switch(a1)
  {
    case 1:
      v3 = 1869375851;
      return v3 | 0x6574696C00000000;
    case 2:
      return 0x73726574696CLL;
    case 3:
      v3 = 1768121700;
      return v3 | 0x6574696C00000000;
    case 4:
      v4 = 1953391971;
      goto LABEL_18;
    case 5:
      v4 = 1819044205;
LABEL_18:
      result = v4 | 0x74696C6900000000;
      break;
    case 6:
      result = 0x6C694B6369627563;
      break;
    case 7:
      result = 0x74654D6369627563;
      break;
    case 8:
      result = 0x6365446369627563;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x636E496369627563;
      break;
    case 12:
      result = 0x6565466369627563;
      break;
    case 13:
      result = 0x7261596369627563;
      break;
    case 14:
      result = 0x6C694D6369627563;
      break;
    case 15:
      result = 0x7465654665726361;
      break;
    case 16:
      result = 0x736C6568737562;
      break;
    case 17:
      result = 0x6E6F6F7073616574;
      break;
    case 18:
      result = 0x6F7073656C626174;
      break;
    case 19:
      result = 0x6E754F6469756C66;
      break;
    case 20:
      result = 1936749923;
      break;
    case 21:
      result = 0x73746E6970;
      break;
    case 22:
      result = 0x737472617571;
      break;
    case 23:
      result = 0x736E6F6C6C6167;
      break;
    case 24:
      result = 0xD000000000000011;
      break;
    case 25:
    case 26:
      result = 0xD000000000000013;
      break;
    case 27:
    case 28:
    case 29:
      result = 0x6C61697265706D69;
      break;
    case 30:
      result = 0x754363697274656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2442C9530(uint64_t a1)
{
  v2 = sub_2442CC650();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C956C(uint64_t a1)
{
  v2 = sub_2442CC650();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C95A8@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2442C95E4(uint64_t a1)
{
  v2 = sub_2442CC5FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9620(uint64_t a1)
{
  v2 = sub_2442CC5FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C965C(uint64_t a1)
{
  v2 = sub_2442CC9EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9698(uint64_t a1)
{
  v2 = sub_2442CC9EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C96E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2442D083C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2442C9718(uint64_t a1)
{
  v2 = sub_2442CC110();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9754(uint64_t a1)
{
  v2 = sub_2442CC110();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9790(uint64_t a1)
{
  v2 = sub_2442CC848();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C97CC(uint64_t a1)
{
  v2 = sub_2442CC848();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9808(uint64_t a1)
{
  v2 = sub_2442CC89C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9844(uint64_t a1)
{
  v2 = sub_2442CC89C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9880(uint64_t a1)
{
  v2 = sub_2442CC74C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C98BC(uint64_t a1)
{
  v2 = sub_2442CC74C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C98F8(uint64_t a1)
{
  v2 = sub_2442CC7A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9934(uint64_t a1)
{
  v2 = sub_2442CC7A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9970(uint64_t a1)
{
  v2 = sub_2442CC944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C99AC(uint64_t a1)
{
  v2 = sub_2442CC944();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C99E8(uint64_t a1)
{
  v2 = sub_2442CC8F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9A24(uint64_t a1)
{
  v2 = sub_2442CC8F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9A60(uint64_t a1)
{
  v2 = sub_2442CC6A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9A9C(uint64_t a1)
{
  v2 = sub_2442CC6A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9AD8(uint64_t a1)
{
  v2 = sub_2442CC7F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9B14(uint64_t a1)
{
  v2 = sub_2442CC7F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9B50(uint64_t a1)
{
  v2 = sub_2442CC6F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9B8C(uint64_t a1)
{
  v2 = sub_2442CC6F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9BC8(uint64_t a1)
{
  v2 = sub_2442CC4AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9C04(uint64_t a1)
{
  v2 = sub_2442CC4AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9C40(uint64_t a1)
{
  v2 = sub_2442CCA40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9C7C(uint64_t a1)
{
  v2 = sub_2442CCA40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9CB8(uint64_t a1)
{
  v2 = sub_2442CC500();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9CF4(uint64_t a1)
{
  v2 = sub_2442CC500();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9D30(uint64_t a1)
{
  v2 = sub_2442CC3B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9D6C(uint64_t a1)
{
  v2 = sub_2442CC3B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9DA8(uint64_t a1)
{
  v2 = sub_2442CC2B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9DE4(uint64_t a1)
{
  v2 = sub_2442CC2B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9E20(uint64_t a1)
{
  v2 = sub_2442CC1B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9E5C(uint64_t a1)
{
  v2 = sub_2442CC1B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9E98(uint64_t a1)
{
  v2 = sub_2442CC260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9ED4(uint64_t a1)
{
  v2 = sub_2442CC260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9F10(uint64_t a1)
{
  v2 = sub_2442CC20C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9F4C(uint64_t a1)
{
  v2 = sub_2442CC20C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9F88(uint64_t a1)
{
  v2 = sub_2442CC308();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9FC4(uint64_t a1)
{
  v2 = sub_2442CC308();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA000(uint64_t a1)
{
  v2 = sub_2442CC35C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA03C(uint64_t a1)
{
  v2 = sub_2442CC35C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA078(uint64_t a1)
{
  v2 = sub_2442CCAE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA0B4(uint64_t a1)
{
  v2 = sub_2442CCAE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA0F0(uint64_t a1)
{
  v2 = sub_2442CCA94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA12C(uint64_t a1)
{
  v2 = sub_2442CCA94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA168(uint64_t a1)
{
  v2 = sub_2442CCB3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA1A4(uint64_t a1)
{
  v2 = sub_2442CCB3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA1E0(uint64_t a1)
{
  v2 = sub_2442CC164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA21C(uint64_t a1)
{
  v2 = sub_2442CC164();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA258(uint64_t a1)
{
  v2 = sub_2442CC998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA294(uint64_t a1)
{
  v2 = sub_2442CC998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA2D0(uint64_t a1)
{
  v2 = sub_2442CC458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA30C(uint64_t a1)
{
  v2 = sub_2442CC458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA348(uint64_t a1)
{
  v2 = sub_2442CC404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA384(uint64_t a1)
{
  v2 = sub_2442CC404();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA3C0(uint64_t a1)
{
  v2 = sub_2442CC554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA3FC(uint64_t a1)
{
  v2 = sub_2442CC554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA438(uint64_t a1)
{
  v2 = sub_2442CC5A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA474(uint64_t a1)
{
  v2 = sub_2442CC5A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFVolumeUnit.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_2442C6564(&qword_27EDDE940, &qword_244313C00);
  v166 = *(v4 - 8);
  v167 = v4;
  MEMORY[0x28223BE20](v4);
  v165 = &v78 - v5;
  v6 = sub_2442C6564(&qword_27EDDE948, &qword_244313C08);
  v163 = *(v6 - 8);
  v164 = v6;
  MEMORY[0x28223BE20](v6);
  v162 = &v78 - v7;
  v8 = sub_2442C6564(&qword_27EDDE950, &qword_244313C10);
  v160 = *(v8 - 8);
  v161 = v8;
  MEMORY[0x28223BE20](v8);
  v159 = &v78 - v9;
  v10 = sub_2442C6564(&qword_27EDDE958, &qword_244313C18);
  v157 = *(v10 - 8);
  v158 = v10;
  MEMORY[0x28223BE20](v10);
  v156 = &v78 - v11;
  v12 = sub_2442C6564(&qword_27EDDE960, &qword_244313C20);
  v154 = *(v12 - 8);
  v155 = v12;
  MEMORY[0x28223BE20](v12);
  v153 = &v78 - v13;
  v14 = sub_2442C6564(&qword_27EDDE968, &qword_244313C28);
  v151 = *(v14 - 8);
  v152 = v14;
  MEMORY[0x28223BE20](v14);
  v150 = &v78 - v15;
  v149 = sub_2442C6564(&qword_27EDDE970, &qword_244313C30);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = &v78 - v16;
  v146 = sub_2442C6564(&qword_27EDDE978, &qword_244313C38);
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v144 = &v78 - v17;
  v143 = sub_2442C6564(&qword_27EDDE980, &qword_244313C40);
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v141 = &v78 - v18;
  v140 = sub_2442C6564(&qword_27EDDE988, &qword_244313C48);
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v78 - v19;
  v137 = sub_2442C6564(&qword_27EDDE990, &qword_244313C50);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v78 - v20;
  v134 = sub_2442C6564(&qword_27EDDE998, &qword_244313C58);
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v78 - v21;
  v131 = sub_2442C6564(&qword_27EDDE9A0, &qword_244313C60);
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v78 - v22;
  v128 = sub_2442C6564(&qword_27EDDE9A8, &qword_244313C68);
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v126 = &v78 - v23;
  v125 = sub_2442C6564(&qword_27EDDE9B0, &qword_244313C70);
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v78 - v24;
  v122 = sub_2442C6564(&qword_27EDDE9B8, &qword_244313C78);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = &v78 - v25;
  v119 = sub_2442C6564(&qword_27EDDE9C0, &qword_244313C80);
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v78 - v26;
  v116 = sub_2442C6564(&qword_27EDDE9C8, &qword_244313C88);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v78 - v27;
  v113 = sub_2442C6564(&qword_27EDDE9D0, &qword_244313C90);
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v78 - v28;
  v110 = sub_2442C6564(&qword_27EDDE9D8, &qword_244313C98);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v78 - v29;
  v107 = sub_2442C6564(&qword_27EDDE9E0, &qword_244313CA0);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v78 - v30;
  v104 = sub_2442C6564(&qword_27EDDE9E8, &qword_244313CA8);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v78 - v31;
  v101 = sub_2442C6564(&qword_27EDDE9F0, &qword_244313CB0);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v78 - v32;
  v98 = sub_2442C6564(&qword_27EDDE9F8, &qword_244313CB8);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v78 - v33;
  v95 = sub_2442C6564(&qword_27EDDEA00, &qword_244313CC0);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v78 - v34;
  v92 = sub_2442C6564(&qword_27EDDEA08, &qword_244313CC8);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v78 - v35;
  v89 = sub_2442C6564(&qword_27EDDEA10, &qword_244313CD0);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v78 - v36;
  v86 = sub_2442C6564(&qword_27EDDEA18, &qword_244313CD8);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v78 - v37;
  v83 = sub_2442C6564(&qword_27EDDEA20, &qword_244313CE0);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v78 - v38;
  v80 = sub_2442C6564(&qword_27EDDEA28, &qword_244313CE8);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v40 = &v78 - v39;
  v41 = sub_2442C6564(&qword_27EDDEA30, &qword_244313CF0);
  v78 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v43 = &v78 - v42;
  v169 = sub_2442C6564(&qword_27EDDEA38, &qword_244313CF8);
  v44 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v46 = &v78 - v45;
  v47 = *v2;
  sub_2442C65AC(a1, a1[3]);
  sub_2442CC110();
  v168 = v46;
  sub_244313238();
  v48 = (v44 + 8);
  switch(v47)
  {
    case 1:
      v170 = 1;
      sub_2442CCAE8();
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v79 + 8))(v40, v80);
      return (*v48)(v50, v49);
    case 2:
      v170 = 2;
      sub_2442CCA94();
      v61 = v81;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v82 + 8))(v61, v83);
      return (*v48)(v50, v49);
    case 3:
      v170 = 3;
      sub_2442CCA40();
      v63 = v84;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v85 + 8))(v63, v86);
      return (*v48)(v50, v49);
    case 4:
      v170 = 4;
      sub_2442CC9EC();
      v57 = v87;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v88 + 8))(v57, v89);
      return (*v48)(v50, v49);
    case 5:
      v170 = 5;
      sub_2442CC998();
      v67 = v90;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v91 + 8))(v67, v92);
      return (*v48)(v50, v49);
    case 6:
      v170 = 6;
      sub_2442CC944();
      v70 = v93;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v94 + 8))(v70, v95);
      return (*v48)(v50, v49);
    case 7:
      v170 = 7;
      sub_2442CC8F0();
      v64 = v96;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v97 + 8))(v64, v98);
      return (*v48)(v50, v49);
    case 8:
      v170 = 8;
      sub_2442CC89C();
      v73 = v99;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v100 + 8))(v73, v101);
      return (*v48)(v50, v49);
    case 9:
      v170 = 9;
      sub_2442CC848();
      v59 = v102;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v103 + 8))(v59, v104);
      return (*v48)(v50, v49);
    case 10:
      v170 = 10;
      sub_2442CC7F4();
      v72 = v105;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v106 + 8))(v72, v107);
      return (*v48)(v50, v49);
    case 11:
      v170 = 11;
      sub_2442CC7A0();
      v56 = v108;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v109 + 8))(v56, v110);
      return (*v48)(v50, v49);
    case 12:
      v170 = 12;
      sub_2442CC74C();
      v58 = v111;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v112 + 8))(v58, v113);
      return (*v48)(v50, v49);
    case 13:
      v170 = 13;
      sub_2442CC6F8();
      v69 = v114;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v115 + 8))(v69, v116);
      return (*v48)(v50, v49);
    case 14:
      v170 = 14;
      sub_2442CC6A4();
      v55 = v117;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v118 + 8))(v55, v119);
      return (*v48)(v50, v49);
    case 15:
      v170 = 15;
      sub_2442CC650();
      v62 = v120;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v121 + 8))(v62, v122);
      return (*v48)(v50, v49);
    case 16:
      v170 = 16;
      sub_2442CC5FC();
      v54 = v123;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v124 + 8))(v54, v125);
      return (*v48)(v50, v49);
    case 17:
      v170 = 17;
      sub_2442CC5A8();
      v65 = v126;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v127 + 8))(v65, v128);
      return (*v48)(v50, v49);
    case 18:
      v170 = 18;
      sub_2442CC554();
      v71 = v129;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v130 + 8))(v71, v131);
      return (*v48)(v50, v49);
    case 19:
      v170 = 19;
      sub_2442CC500();
      v75 = v132;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v133 + 8))(v75, v134);
      return (*v48)(v50, v49);
    case 20:
      v170 = 20;
      sub_2442CC4AC();
      v66 = v135;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v136 + 8))(v66, v137);
      return (*v48)(v50, v49);
    case 21:
      v170 = 21;
      sub_2442CC458();
      v68 = v138;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v139 + 8))(v68, v140);
      return (*v48)(v50, v49);
    case 22:
      v170 = 22;
      sub_2442CC404();
      v74 = v141;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v142 + 8))(v74, v143);
      return (*v48)(v50, v49);
    case 23:
      v170 = 23;
      sub_2442CC3B0();
      v76 = v144;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v145 + 8))(v76, v146);
      return (*v48)(v50, v49);
    case 24:
      v170 = 24;
      sub_2442CC35C();
      v60 = v147;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v148 + 8))(v60, v149);
      return (*v48)(v50, v49);
    case 25:
      v170 = 25;
      sub_2442CC308();
      v51 = v150;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      v53 = v151;
      v52 = v152;
      goto LABEL_33;
    case 26:
      v170 = 26;
      sub_2442CC2B4();
      v51 = v153;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      v53 = v154;
      v52 = v155;
      goto LABEL_33;
    case 27:
      v170 = 27;
      sub_2442CC260();
      v51 = v156;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      v53 = v157;
      v52 = v158;
      goto LABEL_33;
    case 28:
      v170 = 28;
      sub_2442CC20C();
      v51 = v159;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      v53 = v160;
      v52 = v161;
      goto LABEL_33;
    case 29:
      v170 = 29;
      sub_2442CC1B8();
      v51 = v162;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      v53 = v163;
      v52 = v164;
      goto LABEL_33;
    case 30:
      v170 = 30;
      sub_2442CC164();
      v51 = v165;
      v50 = v168;
      v49 = v169;
      sub_244313058();
      v53 = v166;
      v52 = v167;
LABEL_33:
      (*(v53 + 8))(v51, v52);
      break;
    default:
      v170 = 0;
      sub_2442CCB3C();
      v50 = v168;
      v49 = v169;
      sub_244313058();
      (*(v78 + 8))(v43, v41);
      break;
  }

  return (*v48)(v50, v49);
}

unint64_t sub_2442CC110()
{
  result = qword_27EDDEA40;
  if (!qword_27EDDEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA40);
  }

  return result;
}

unint64_t sub_2442CC164()
{
  result = qword_27EDDEA48;
  if (!qword_27EDDEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA48);
  }

  return result;
}

unint64_t sub_2442CC1B8()
{
  result = qword_27EDDEA50;
  if (!qword_27EDDEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA50);
  }

  return result;
}

unint64_t sub_2442CC20C()
{
  result = qword_27EDDEA58;
  if (!qword_27EDDEA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA58);
  }

  return result;
}

unint64_t sub_2442CC260()
{
  result = qword_27EDDEA60;
  if (!qword_27EDDEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA60);
  }

  return result;
}

unint64_t sub_2442CC2B4()
{
  result = qword_27EDDEA68;
  if (!qword_27EDDEA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA68);
  }

  return result;
}

unint64_t sub_2442CC308()
{
  result = qword_27EDDEA70;
  if (!qword_27EDDEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA70);
  }

  return result;
}

unint64_t sub_2442CC35C()
{
  result = qword_27EDDEA78;
  if (!qword_27EDDEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA78);
  }

  return result;
}

unint64_t sub_2442CC3B0()
{
  result = qword_27EDDEA80;
  if (!qword_27EDDEA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA80);
  }

  return result;
}

unint64_t sub_2442CC404()
{
  result = qword_27EDDEA88;
  if (!qword_27EDDEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA88);
  }

  return result;
}

unint64_t sub_2442CC458()
{
  result = qword_27EDDEA90;
  if (!qword_27EDDEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA90);
  }

  return result;
}

unint64_t sub_2442CC4AC()
{
  result = qword_27EDDEA98;
  if (!qword_27EDDEA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA98);
  }

  return result;
}

unint64_t sub_2442CC500()
{
  result = qword_27EDDEAA0;
  if (!qword_27EDDEAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAA0);
  }

  return result;
}

unint64_t sub_2442CC554()
{
  result = qword_27EDDEAA8;
  if (!qword_27EDDEAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAA8);
  }

  return result;
}

unint64_t sub_2442CC5A8()
{
  result = qword_27EDDEAB0;
  if (!qword_27EDDEAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAB0);
  }

  return result;
}

unint64_t sub_2442CC5FC()
{
  result = qword_27EDDEAB8;
  if (!qword_27EDDEAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAB8);
  }

  return result;
}

unint64_t sub_2442CC650()
{
  result = qword_27EDDEAC0;
  if (!qword_27EDDEAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAC0);
  }

  return result;
}

unint64_t sub_2442CC6A4()
{
  result = qword_27EDDEAC8;
  if (!qword_27EDDEAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAC8);
  }

  return result;
}

unint64_t sub_2442CC6F8()
{
  result = qword_27EDDEAD0;
  if (!qword_27EDDEAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAD0);
  }

  return result;
}

unint64_t sub_2442CC74C()
{
  result = qword_27EDDEAD8;
  if (!qword_27EDDEAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAD8);
  }

  return result;
}

unint64_t sub_2442CC7A0()
{
  result = qword_27EDDEAE0;
  if (!qword_27EDDEAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAE0);
  }

  return result;
}

unint64_t sub_2442CC7F4()
{
  result = qword_27EDDEAE8;
  if (!qword_27EDDEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAE8);
  }

  return result;
}

unint64_t sub_2442CC848()
{
  result = qword_27EDDEAF0;
  if (!qword_27EDDEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAF0);
  }

  return result;
}

unint64_t sub_2442CC89C()
{
  result = qword_27EDDEAF8;
  if (!qword_27EDDEAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAF8);
  }

  return result;
}

unint64_t sub_2442CC8F0()
{
  result = qword_27EDDEB00;
  if (!qword_27EDDEB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEB00);
  }

  return result;
}

unint64_t sub_2442CC944()
{
  result = qword_27EDDEB08;
  if (!qword_27EDDEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEB08);
  }

  return result;
}

unint64_t sub_2442CC998()
{
  result = qword_27EDDEB10;
  if (!qword_27EDDEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEB10);
  }

  return result;
}

unint64_t sub_2442CC9EC()
{
  result = qword_27EDDEB18;
  if (!qword_27EDDEB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEB18);
  }

  return result;
}

unint64_t sub_2442CCA40()
{
  result = qword_27EDDEB20;
  if (!qword_27EDDEB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEB20);
  }

  return result;
}

unint64_t sub_2442CCA94()
{
  result = qword_27EDDEB28;
  if (!qword_27EDDEB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEB28);
  }

  return result;
}

unint64_t sub_2442CCAE8()
{
  result = qword_27EDDEB30;
  if (!qword_27EDDEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEB30);
  }

  return result;
}

unint64_t sub_2442CCB3C()
{
  result = qword_27EDDEB38;
  if (!qword_27EDDEB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEB38);
  }

  return result;
}

uint64_t IARFVolumeUnit.hashValue.getter()
{
  v1 = *v0;
  sub_2443131A8();
  MEMORY[0x245D5EDF0](v1);
  return sub_2443131D8();
}

uint64_t IARFVolumeUnit.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v213 = a2;
  v212 = sub_2442C6564(&qword_27EDDEB40, &qword_244313D00);
  v182 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v208 = &v117 - v3;
  v181 = sub_2442C6564(&qword_27EDDEB48, &qword_244313D08);
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v207 = &v117 - v4;
  v179 = sub_2442C6564(&qword_27EDDEB50, &qword_244313D10);
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v206 = &v117 - v5;
  v177 = sub_2442C6564(&qword_27EDDEB58, &qword_244313D18);
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v205 = &v117 - v6;
  v175 = sub_2442C6564(&qword_27EDDEB60, &qword_244313D20);
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v204 = &v117 - v7;
  v173 = sub_2442C6564(&qword_27EDDEB68, &qword_244313D28);
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v203 = &v117 - v8;
  v171 = sub_2442C6564(&qword_27EDDEB70, &qword_244313D30);
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v202 = &v117 - v9;
  v169 = sub_2442C6564(&qword_27EDDEB78, &qword_244313D38);
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v201 = &v117 - v10;
  v167 = sub_2442C6564(&qword_27EDDEB80, &qword_244313D40);
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v200 = &v117 - v11;
  v165 = sub_2442C6564(&qword_27EDDEB88, &qword_244313D48);
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v199 = &v117 - v12;
  v163 = sub_2442C6564(&qword_27EDDEB90, &qword_244313D50);
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v198 = &v117 - v13;
  v161 = sub_2442C6564(&qword_27EDDEB98, &qword_244313D58);
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v197 = &v117 - v14;
  v159 = sub_2442C6564(&qword_27EDDEBA0, &qword_244313D60);
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v196 = &v117 - v15;
  v157 = sub_2442C6564(&qword_27EDDEBA8, &qword_244313D68);
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v195 = &v117 - v16;
  v155 = sub_2442C6564(&qword_27EDDEBB0, &qword_244313D70);
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v194 = &v117 - v17;
  v153 = sub_2442C6564(&qword_27EDDEBB8, &qword_244313D78);
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v193 = &v117 - v18;
  v151 = sub_2442C6564(&qword_27EDDEBC0, &qword_244313D80);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v192 = &v117 - v19;
  v149 = sub_2442C6564(&qword_27EDDEBC8, &qword_244313D88);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v191 = &v117 - v20;
  v147 = sub_2442C6564(&qword_27EDDEBD0, &qword_244313D90);
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v190 = &v117 - v21;
  v145 = sub_2442C6564(&qword_27EDDEBD8, &qword_244313D98);
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v189 = &v117 - v22;
  v143 = sub_2442C6564(&qword_27EDDEBE0, &qword_244313DA0);
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v188 = &v117 - v23;
  v141 = sub_2442C6564(&qword_27EDDEBE8, &qword_244313DA8);
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v187 = &v117 - v24;
  v138 = sub_2442C6564(&qword_27EDDEBF0, &qword_244313DB0);
  v139 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v184 = &v117 - v25;
  v136 = sub_2442C6564(&qword_27EDDEBF8, &qword_244313DB8);
  v137 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v211 = &v117 - v26;
  v135 = sub_2442C6564(&qword_27EDDEC00, &qword_244313DC0);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v210 = &v117 - v27;
  v133 = sub_2442C6564(&qword_27EDDEC08, &qword_244313DC8);
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v186 = &v117 - v28;
  v131 = sub_2442C6564(&qword_27EDDEC10, &qword_244313DD0);
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v185 = &v117 - v29;
  v129 = sub_2442C6564(&qword_27EDDEC18, &qword_244313DD8);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v209 = &v117 - v30;
  v127 = sub_2442C6564(&qword_27EDDEC20, &qword_244313DE0);
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v183 = &v117 - v31;
  v125 = sub_2442C6564(&qword_27EDDEC28, &qword_244313DE8);
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v33 = &v117 - v32;
  v34 = sub_2442C6564(&qword_27EDDEC30, &qword_244313DF0);
  v123 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v36 = &v117 - v35;
  v37 = sub_2442C6564(&qword_27EDDEC38, &qword_244313DF8);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v117 - v39;
  v41 = a1[3];
  v215 = a1;
  sub_2442C65AC(a1, v41);
  sub_2442CC110();
  v42 = v214;
  sub_244313228();
  if (v42)
  {
LABEL_69:
    v115 = v215;
    return sub_2442C6908(v115);
  }

  v119 = v36;
  v118 = v34;
  v120 = v33;
  v44 = v209;
  v43 = v210;
  v45 = v211;
  v121 = 0;
  v47 = v212;
  v46 = v213;
  v214 = v38;
  v122 = v40;
  v48 = sub_244313048();
  if (*(v48 + 16) != 1 || (v49 = *(v48 + 32), v49 == 31))
  {
    v53 = v37;
    v54 = sub_244312EE8();
    swift_allocError();
    v56 = v55;
    sub_2442C6564(&qword_27EDDEC40, &qword_244313E00);
    *v56 = &type metadata for IARFVolumeUnit;
    v57 = v122;
    sub_244312FC8();
    sub_244312EC8();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D84160], v54);
    swift_willThrow();
    (*(v214 + 8))(v57, v53);
LABEL_68:
    swift_unknownObjectRelease();
    goto LABEL_69;
  }

  v117 = v48;
  switch(v49)
  {
    case 1:
      v216 = 1;
      sub_2442CCAE8();
      v82 = v120;
      v51 = v122;
      v83 = v121;
      sub_244312FB8();
      if (v83)
      {
        goto LABEL_67;
      }

      (*(v124 + 8))(v82, v125);
      goto LABEL_72;
    case 2:
      v216 = 2;
      sub_2442CCA94();
      v76 = v183;
      v51 = v122;
      v77 = v121;
      sub_244312FB8();
      if (v77)
      {
        goto LABEL_67;
      }

      (*(v126 + 8))(v76, v127);
      goto LABEL_72;
    case 3:
      v216 = 3;
      sub_2442CCA40();
      v51 = v122;
      v80 = v121;
      sub_244312FB8();
      if (v80)
      {
        goto LABEL_67;
      }

      (*(v128 + 8))(v44, v129);
      goto LABEL_72;
    case 4:
      v216 = 4;
      sub_2442CC9EC();
      v66 = v185;
      v51 = v122;
      v67 = v121;
      sub_244312FB8();
      if (v67)
      {
        goto LABEL_67;
      }

      (*(v130 + 8))(v66, v131);
      goto LABEL_72;
    case 5:
      v216 = 5;
      sub_2442CC998();
      v88 = v186;
      v51 = v122;
      v89 = v121;
      sub_244312FB8();
      if (v89)
      {
        goto LABEL_67;
      }

      (*(v132 + 8))(v88, v133);
      goto LABEL_72;
    case 6:
      v216 = 6;
      sub_2442CC944();
      v51 = v122;
      v94 = v121;
      sub_244312FB8();
      if (v94)
      {
        goto LABEL_67;
      }

      (*(v134 + 8))(v43, v135);
      goto LABEL_72;
    case 7:
      v216 = 7;
      sub_2442CC8F0();
      v51 = v122;
      v81 = v121;
      sub_244312FB8();
      if (v81)
      {
        goto LABEL_67;
      }

      (*(v137 + 8))(v45, v136);
      goto LABEL_72;
    case 8:
      v216 = 8;
      sub_2442CC89C();
      v99 = v184;
      v51 = v122;
      v100 = v121;
      sub_244312FB8();
      if (v100)
      {
        goto LABEL_67;
      }

      (*(v139 + 8))(v99, v138);
      goto LABEL_72;
    case 9:
      v216 = 9;
      sub_2442CC848();
      v70 = v187;
      v51 = v122;
      v71 = v121;
      sub_244312FB8();
      if (v71)
      {
        goto LABEL_67;
      }

      (*(v140 + 8))(v70, v141);
      goto LABEL_72;
    case 10:
      v216 = 10;
      sub_2442CC7F4();
      v97 = v188;
      v51 = v122;
      v98 = v121;
      sub_244312FB8();
      if (v98)
      {
        goto LABEL_67;
      }

      (*(v142 + 8))(v97, v143);
      goto LABEL_72;
    case 11:
      v216 = 11;
      sub_2442CC7A0();
      v64 = v189;
      v51 = v122;
      v65 = v121;
      sub_244312FB8();
      if (v65)
      {
        goto LABEL_67;
      }

      (*(v144 + 8))(v64, v145);
      goto LABEL_72;
    case 12:
      v216 = 12;
      sub_2442CC74C();
      v68 = v190;
      v51 = v122;
      v69 = v121;
      sub_244312FB8();
      if (v69)
      {
        goto LABEL_67;
      }

      (*(v146 + 8))(v68, v147);
      goto LABEL_72;
    case 13:
      v216 = 13;
      sub_2442CC6F8();
      v92 = v191;
      v51 = v122;
      v93 = v121;
      sub_244312FB8();
      if (v93)
      {
        goto LABEL_67;
      }

      (*(v148 + 8))(v92, v149);
      goto LABEL_72;
    case 14:
      v216 = 14;
      sub_2442CC6A4();
      v62 = v192;
      v51 = v122;
      v63 = v121;
      sub_244312FB8();
      if (v63)
      {
        goto LABEL_67;
      }

      (*(v150 + 8))(v62, v151);
      goto LABEL_72;
    case 15:
      v216 = 15;
      sub_2442CC650();
      v78 = v193;
      v51 = v122;
      v79 = v121;
      sub_244312FB8();
      if (v79)
      {
        goto LABEL_67;
      }

      (*(v152 + 8))(v78, v153);
      goto LABEL_72;
    case 16:
      v216 = 16;
      sub_2442CC5FC();
      v60 = v194;
      v51 = v122;
      v61 = v121;
      sub_244312FB8();
      if (v61)
      {
        goto LABEL_67;
      }

      (*(v154 + 8))(v60, v155);
      goto LABEL_72;
    case 17:
      v216 = 17;
      sub_2442CC5A8();
      v84 = v195;
      v51 = v122;
      v85 = v121;
      sub_244312FB8();
      if (v85)
      {
        goto LABEL_67;
      }

      (*(v156 + 8))(v84, v157);
      goto LABEL_72;
    case 18:
      v216 = 18;
      sub_2442CC554();
      v95 = v196;
      v51 = v122;
      v96 = v121;
      sub_244312FB8();
      if (v96)
      {
        goto LABEL_67;
      }

      (*(v158 + 8))(v95, v159);
      goto LABEL_72;
    case 19:
      v216 = 19;
      sub_2442CC500();
      v105 = v197;
      v51 = v122;
      v106 = v121;
      sub_244312FB8();
      if (v106)
      {
        goto LABEL_67;
      }

      (*(v160 + 8))(v105, v161);
      goto LABEL_72;
    case 20:
      v216 = 20;
      sub_2442CC4AC();
      v86 = v198;
      v51 = v122;
      v87 = v121;
      sub_244312FB8();
      if (v87)
      {
        goto LABEL_67;
      }

      (*(v162 + 8))(v86, v163);
      goto LABEL_72;
    case 21:
      v216 = 21;
      sub_2442CC458();
      v90 = v199;
      v51 = v122;
      v91 = v121;
      sub_244312FB8();
      if (v91)
      {
        goto LABEL_67;
      }

      (*(v164 + 8))(v90, v165);
      goto LABEL_72;
    case 22:
      v216 = 22;
      sub_2442CC404();
      v103 = v200;
      v51 = v122;
      v104 = v121;
      sub_244312FB8();
      if (v104)
      {
        goto LABEL_67;
      }

      (*(v166 + 8))(v103, v167);
      goto LABEL_72;
    case 23:
      v216 = 23;
      sub_2442CC3B0();
      v107 = v201;
      v51 = v122;
      v108 = v121;
      sub_244312FB8();
      if (v108)
      {
        goto LABEL_67;
      }

      (*(v168 + 8))(v107, v169);
      goto LABEL_72;
    case 24:
      v216 = 24;
      sub_2442CC35C();
      v74 = v202;
      v51 = v122;
      v75 = v121;
      sub_244312FB8();
      if (v75)
      {
        goto LABEL_67;
      }

      (*(v170 + 8))(v74, v171);
      goto LABEL_72;
    case 25:
      v216 = 25;
      sub_2442CC308();
      v72 = v203;
      v51 = v122;
      v73 = v121;
      sub_244312FB8();
      if (v73)
      {
        goto LABEL_67;
      }

      (*(v172 + 8))(v72, v173);
      goto LABEL_72;
    case 26:
      v216 = 26;
      sub_2442CC2B4();
      v113 = v204;
      v51 = v122;
      v114 = v121;
      sub_244312FB8();
      if (v114)
      {
        goto LABEL_67;
      }

      (*(v174 + 8))(v113, v175);
      goto LABEL_72;
    case 27:
      v216 = 27;
      sub_2442CC260();
      v58 = v205;
      v51 = v122;
      v59 = v121;
      sub_244312FB8();
      if (v59)
      {
        goto LABEL_67;
      }

      (*(v176 + 8))(v58, v177);
      goto LABEL_72;
    case 28:
      v216 = 28;
      sub_2442CC20C();
      v109 = v206;
      v51 = v122;
      v110 = v121;
      sub_244312FB8();
      if (v110)
      {
        goto LABEL_67;
      }

      (*(v178 + 8))(v109, v179);
      goto LABEL_72;
    case 29:
      v216 = 29;
      sub_2442CC1B8();
      v111 = v207;
      v51 = v122;
      v112 = v121;
      sub_244312FB8();
      if (v112)
      {
        goto LABEL_67;
      }

      (*(v180 + 8))(v111, v181);
      goto LABEL_72;
    case 30:
      v216 = 30;
      sub_2442CC164();
      v101 = v208;
      v51 = v122;
      v102 = v121;
      sub_244312FB8();
      if (v102)
      {
        goto LABEL_67;
      }

      (*(v182 + 8))(v101, v47);
      goto LABEL_72;
    default:
      v216 = 0;
      sub_2442CCB3C();
      v50 = v119;
      v51 = v122;
      v52 = v121;
      sub_244312FB8();
      if (v52)
      {
LABEL_67:
        (*(v214 + 8))(v51, v37);
        goto LABEL_68;
      }

      (*(v123 + 8))(v50, v118);
LABEL_72:
      (*(v214 + 8))(v51, v37);
      swift_unknownObjectRelease();
      v115 = v215;
      *v46 = v49;
      break;
  }

  return sub_2442C6908(v115);
}

uint64_t sub_2442CEC68()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2442CEC9C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2442CECD0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2442CED04()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2442CED38()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 16;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2442CED70()
{
  result = qword_27EDDEC48;
  if (!qword_27EDDEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IARFFB_MeasurementVolumeUnitType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IARFFB_MeasurementVolumeUnitType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2442CF150()
{
  result = qword_27EDDEC50;
  if (!qword_27EDDEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC50);
  }

  return result;
}

unint64_t sub_2442CF1A8()
{
  result = qword_27EDDEC58;
  if (!qword_27EDDEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC58);
  }

  return result;
}

unint64_t sub_2442CF200()
{
  result = qword_27EDDEC60;
  if (!qword_27EDDEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC60);
  }

  return result;
}

unint64_t sub_2442CF258()
{
  result = qword_27EDDEC68;
  if (!qword_27EDDEC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC68);
  }

  return result;
}

unint64_t sub_2442CF2B0()
{
  result = qword_27EDDEC70;
  if (!qword_27EDDEC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC70);
  }

  return result;
}

unint64_t sub_2442CF308()
{
  result = qword_27EDDEC78;
  if (!qword_27EDDEC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC78);
  }

  return result;
}

unint64_t sub_2442CF360()
{
  result = qword_27EDDEC80;
  if (!qword_27EDDEC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC80);
  }

  return result;
}

unint64_t sub_2442CF3B8()
{
  result = qword_27EDDEC88;
  if (!qword_27EDDEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC88);
  }

  return result;
}

unint64_t sub_2442CF410()
{
  result = qword_27EDDEC90;
  if (!qword_27EDDEC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC90);
  }

  return result;
}

unint64_t sub_2442CF468()
{
  result = qword_27EDDEC98;
  if (!qword_27EDDEC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC98);
  }

  return result;
}

unint64_t sub_2442CF4C0()
{
  result = qword_27EDDECA0;
  if (!qword_27EDDECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECA0);
  }

  return result;
}

unint64_t sub_2442CF518()
{
  result = qword_27EDDECA8;
  if (!qword_27EDDECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECA8);
  }

  return result;
}

unint64_t sub_2442CF570()
{
  result = qword_27EDDECB0;
  if (!qword_27EDDECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECB0);
  }

  return result;
}

unint64_t sub_2442CF5C8()
{
  result = qword_27EDDECB8;
  if (!qword_27EDDECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECB8);
  }

  return result;
}

unint64_t sub_2442CF620()
{
  result = qword_27EDDECC0;
  if (!qword_27EDDECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECC0);
  }

  return result;
}

unint64_t sub_2442CF678()
{
  result = qword_27EDDECC8;
  if (!qword_27EDDECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECC8);
  }

  return result;
}

unint64_t sub_2442CF6D0()
{
  result = qword_27EDDECD0;
  if (!qword_27EDDECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECD0);
  }

  return result;
}

unint64_t sub_2442CF728()
{
  result = qword_27EDDECD8;
  if (!qword_27EDDECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECD8);
  }

  return result;
}

unint64_t sub_2442CF780()
{
  result = qword_27EDDECE0;
  if (!qword_27EDDECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECE0);
  }

  return result;
}

unint64_t sub_2442CF7D8()
{
  result = qword_27EDDECE8;
  if (!qword_27EDDECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECE8);
  }

  return result;
}

unint64_t sub_2442CF830()
{
  result = qword_27EDDECF0;
  if (!qword_27EDDECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECF0);
  }

  return result;
}

unint64_t sub_2442CF888()
{
  result = qword_27EDDECF8;
  if (!qword_27EDDECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECF8);
  }

  return result;
}

unint64_t sub_2442CF8E0()
{
  result = qword_27EDDED00;
  if (!qword_27EDDED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED00);
  }

  return result;
}

unint64_t sub_2442CF938()
{
  result = qword_27EDDED08;
  if (!qword_27EDDED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED08);
  }

  return result;
}

unint64_t sub_2442CF990()
{
  result = qword_27EDDED10;
  if (!qword_27EDDED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED10);
  }

  return result;
}

unint64_t sub_2442CF9E8()
{
  result = qword_27EDDED18;
  if (!qword_27EDDED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED18);
  }

  return result;
}

unint64_t sub_2442CFA40()
{
  result = qword_27EDDED20;
  if (!qword_27EDDED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED20);
  }

  return result;
}

unint64_t sub_2442CFA98()
{
  result = qword_27EDDED28;
  if (!qword_27EDDED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED28);
  }

  return result;
}

unint64_t sub_2442CFAF0()
{
  result = qword_27EDDED30;
  if (!qword_27EDDED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED30);
  }

  return result;
}

unint64_t sub_2442CFB48()
{
  result = qword_27EDDED38;
  if (!qword_27EDDED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED38);
  }

  return result;
}

unint64_t sub_2442CFBA0()
{
  result = qword_27EDDED40;
  if (!qword_27EDDED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED40);
  }

  return result;
}

unint64_t sub_2442CFBF8()
{
  result = qword_27EDDED48;
  if (!qword_27EDDED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED48);
  }

  return result;
}

unint64_t sub_2442CFC50()
{
  result = qword_27EDDED50;
  if (!qword_27EDDED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED50);
  }

  return result;
}

unint64_t sub_2442CFCA8()
{
  result = qword_27EDDED58;
  if (!qword_27EDDED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED58);
  }

  return result;
}

unint64_t sub_2442CFD00()
{
  result = qword_27EDDED60;
  if (!qword_27EDDED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED60);
  }

  return result;
}

unint64_t sub_2442CFD58()
{
  result = qword_27EDDED68;
  if (!qword_27EDDED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED68);
  }

  return result;
}

unint64_t sub_2442CFDB0()
{
  result = qword_27EDDED70;
  if (!qword_27EDDED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED70);
  }

  return result;
}

unint64_t sub_2442CFE08()
{
  result = qword_27EDDED78;
  if (!qword_27EDDED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED78);
  }

  return result;
}

unint64_t sub_2442CFE60()
{
  result = qword_27EDDED80;
  if (!qword_27EDDED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED80);
  }

  return result;
}

unint64_t sub_2442CFEB8()
{
  result = qword_27EDDED88;
  if (!qword_27EDDED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED88);
  }

  return result;
}

unint64_t sub_2442CFF10()
{
  result = qword_27EDDED90;
  if (!qword_27EDDED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED90);
  }

  return result;
}

unint64_t sub_2442CFF68()
{
  result = qword_27EDDED98;
  if (!qword_27EDDED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED98);
  }

  return result;
}

unint64_t sub_2442CFFC0()
{
  result = qword_27EDDEDA0;
  if (!qword_27EDDEDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDA0);
  }

  return result;
}

unint64_t sub_2442D0018()
{
  result = qword_27EDDEDA8;
  if (!qword_27EDDEDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDA8);
  }

  return result;
}

unint64_t sub_2442D0070()
{
  result = qword_27EDDEDB0;
  if (!qword_27EDDEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDB0);
  }

  return result;
}

unint64_t sub_2442D00C8()
{
  result = qword_27EDDEDB8;
  if (!qword_27EDDEDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDB8);
  }

  return result;
}

unint64_t sub_2442D0120()
{
  result = qword_27EDDEDC0;
  if (!qword_27EDDEDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDC0);
  }

  return result;
}

unint64_t sub_2442D0178()
{
  result = qword_27EDDEDC8;
  if (!qword_27EDDEDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDC8);
  }

  return result;
}

unint64_t sub_2442D01D0()
{
  result = qword_27EDDEDD0;
  if (!qword_27EDDEDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDD0);
  }

  return result;
}

unint64_t sub_2442D0228()
{
  result = qword_27EDDEDD8;
  if (!qword_27EDDEDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDD8);
  }

  return result;
}

unint64_t sub_2442D0280()
{
  result = qword_27EDDEDE0;
  if (!qword_27EDDEDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDE0);
  }

  return result;
}

unint64_t sub_2442D02D8()
{
  result = qword_27EDDEDE8;
  if (!qword_27EDDEDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDE8);
  }

  return result;
}

unint64_t sub_2442D0330()
{
  result = qword_27EDDEDF0;
  if (!qword_27EDDEDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDF0);
  }

  return result;
}

unint64_t sub_2442D0388()
{
  result = qword_27EDDEDF8;
  if (!qword_27EDDEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDF8);
  }

  return result;
}

unint64_t sub_2442D03E0()
{
  result = qword_27EDDEE00;
  if (!qword_27EDDEE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE00);
  }

  return result;
}

unint64_t sub_2442D0438()
{
  result = qword_27EDDEE08;
  if (!qword_27EDDEE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE08);
  }

  return result;
}

unint64_t sub_2442D0490()
{
  result = qword_27EDDEE10;
  if (!qword_27EDDEE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE10);
  }

  return result;
}

unint64_t sub_2442D04E8()
{
  result = qword_27EDDEE18;
  if (!qword_27EDDEE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE18);
  }

  return result;
}

unint64_t sub_2442D0540()
{
  result = qword_27EDDEE20;
  if (!qword_27EDDEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE20);
  }

  return result;
}

unint64_t sub_2442D0598()
{
  result = qword_27EDDEE28;
  if (!qword_27EDDEE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE28);
  }

  return result;
}

unint64_t sub_2442D05F0()
{
  result = qword_27EDDEE30;
  if (!qword_27EDDEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE30);
  }

  return result;
}

unint64_t sub_2442D0648()
{
  result = qword_27EDDEE38;
  if (!qword_27EDDEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE38);
  }

  return result;
}

unint64_t sub_2442D06A0()
{
  result = qword_27EDDEE40;
  if (!qword_27EDDEE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE40);
  }

  return result;
}

unint64_t sub_2442D06F8()
{
  result = qword_27EDDEE48;
  if (!qword_27EDDEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE48);
  }

  return result;
}

unint64_t sub_2442D0750()
{
  result = qword_27EDDEE50;
  if (!qword_27EDDEE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE50);
  }

  return result;
}

uint64_t sub_2442D07A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 6);
  result = Table.offset(_:)(4);
  if (!result)
  {

    v6 = 0;
    goto LABEL_5;
  }

  if (!__OFADD__(result, v4))
  {
    IARFFB_MeasurementVolumeUnitType.init(rawValue:)(*(*(v3 + 24) + result + v4));

    v6 = byte_244315792[v7];
LABEL_5:
    *a2 = v6;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2442D083C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574696C6167656DLL && a2 == 0xEA00000000007372;
  if (v4 || (sub_244313108() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574696C6F6C696BLL && a2 == 0xEA00000000007372 || (sub_244313108() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73726574696CLL && a2 == 0xE600000000000000 || (sub_244313108() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574696C69636564 && a2 == 0xEA00000000007372 || (sub_244313108() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74696C69746E6563 && a2 == 0xEB00000000737265 || (sub_244313108() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74696C696C6C696DLL && a2 == 0xEB00000000737265 || (sub_244313108() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C694B6369627563 && a2 == 0xEF73726574656D6FLL || (sub_244313108() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74654D6369627563 && a2 == 0xEB00000000737265 || (sub_244313108() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6365446369627563 && a2 == 0xEF73726574656D69 || (sub_244313108() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024431C1E0 == a2 || (sub_244313108() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024431C200 == a2 || (sub_244313108() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x636E496369627563 && a2 == 0xEB00000000736568 || (sub_244313108() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6565466369627563 && a2 == 0xE900000000000074 || (sub_244313108() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7261596369627563 && a2 == 0xEA00000000007364 || (sub_244313108() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6C694D6369627563 && a2 == 0xEA00000000007365 || (sub_244313108() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7465654665726361 && a2 == 0xE800000000000000 || (sub_244313108() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x736C6568737562 && a2 == 0xE700000000000000 || (sub_244313108() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6E6F6F7073616574 && a2 == 0xE900000000000073 || (sub_244313108() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6F7073656C626174 && a2 == 0xEB00000000736E6FLL || (sub_244313108() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6E754F6469756C66 && a2 == 0xEB00000000736563 || (sub_244313108() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 1936749923 && a2 == 0xE400000000000000 || (sub_244313108() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x73746E6970 && a2 == 0xE500000000000000 || (sub_244313108() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x737472617571 && a2 == 0xE600000000000000 || (sub_244313108() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x736E6F6C6C6167 && a2 == 0xE700000000000000 || (sub_244313108() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024431C220 == a2 || (sub_244313108() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024431C240 == a2 || (sub_244313108() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024431C260 == a2 || (sub_244313108() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6C61697265706D69 && a2 == 0xED000073746E6950 || (sub_244313108() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x6C61697265706D69 && a2 == 0xEE00737472617551 || (sub_244313108() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x6C61697265706D69 && a2 == 0xEF736E6F6C6C6147 || (sub_244313108() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x754363697274656DLL && a2 == 0xEA00000000007370)
  {

    return 30;
  }

  else
  {
    v6 = sub_244313108();

    if (v6)
    {
      return 30;
    }

    else
    {
      return 31;
    }
  }
}

uint64_t sub_2442D11F0()
{
  v1 = 0x6465746E756F63;
  v2 = 0x746867696577;
  if (*v0 != 2)
  {
    v2 = 0x74617265706D6574;
  }

  if (*v0)
  {
    v1 = 0x656D756C6F76;
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

uint64_t sub_2442D126C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2442D3074(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2442D12A0(uint64_t a1)
{
  v2 = sub_2442D1BF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442D12DC(uint64_t a1)
{
  v2 = sub_2442D1BF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442D1364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_244313108();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2442D13E8(uint64_t a1)
{
  v2 = sub_2442D1E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442D1424(uint64_t a1)
{
  v2 = sub_2442D1E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442D146C(uint64_t a1)
{
  v2 = sub_2442D1C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442D14A8(uint64_t a1)
{
  v2 = sub_2442D1C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442D14E8(uint64_t a1)
{
  v2 = sub_2442D1D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442D1524(uint64_t a1)
{
  v2 = sub_2442D1D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442D1560()
{
  sub_2443131A8();
  MEMORY[0x245D5EDF0](0);
  return sub_2443131D8();
}

uint64_t sub_2442D15A4(uint64_t a1)
{
  sub_2443131A8();
  MEMORY[0x245D5EDF0](0);
  return sub_2443131D8();
}

uint64_t sub_2442D15E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_244313108();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2442D1664(uint64_t a1)
{
  v2 = sub_2442D1CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442D16A0(uint64_t a1)
{
  v2 = sub_2442D1CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFMeasurementUnit.encode(to:)(void *a1)
{
  v3 = sub_2442C6564(&qword_27EDDEE58, &qword_2443157C0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v24 - v4;
  v5 = sub_2442C6564(&qword_27EDDEE60, &qword_2443157C8);
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - v6;
  v7 = sub_2442C6564(&qword_27EDDEE68, &qword_2443157D0);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = sub_2442C6564(&qword_27EDDEE70, &qword_2443157D8);
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = sub_2442C6564(&qword_27EDDEE78, &qword_2443157E0);
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = v1[1];
  v34 = *v1;
  v24 = v16;
  v17 = *(v1 + 16);
  sub_2442C65AC(a1, a1[3]);
  sub_2442D1BF4();
  sub_244313238();
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v41 = 2;
      sub_2442D1CF0();
      v19 = v28;
      v18 = v36;
      sub_244313058();
      v40 = v34;
      sub_2442D1D44();
      v20 = v30;
      sub_2443130C8();
      v21 = v29;
    }

    else
    {
      v43 = 3;
      sub_2442D1C48();
      v19 = v31;
      v18 = v36;
      sub_244313058();
      v42 = v34;
      sub_2442D1C9C();
      v20 = v33;
      sub_2443130C8();
      v21 = v32;
    }

    (*(v21 + 8))(v19, v20);
  }

  else if (v17)
  {
    v39 = 1;
    sub_2442D1D98();
    v18 = v36;
    sub_244313058();
    v38 = v34;
    sub_2442D1DEC();
    v22 = v27;
    sub_2443130C8();
    (*(v26 + 8))(v9, v22);
  }

  else
  {
    v37 = 0;
    sub_2442D1E40();
    v18 = v36;
    sub_244313058();
    sub_244313068();
    (*(v25 + 8))(v12, v10);
  }

  return (*(v35 + 8))(v15, v18);
}

unint64_t sub_2442D1BF4()
{
  result = qword_27EDDEE80;
  if (!qword_27EDDEE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE80);
  }

  return result;
}

unint64_t sub_2442D1C48()
{
  result = qword_27EDDEE88;
  if (!qword_27EDDEE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE88);
  }

  return result;
}

unint64_t sub_2442D1C9C()
{
  result = qword_27EDDEE90;
  if (!qword_27EDDEE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE90);
  }

  return result;
}

unint64_t sub_2442D1CF0()
{
  result = qword_27EDDEE98;
  if (!qword_27EDDEE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE98);
  }

  return result;
}

unint64_t sub_2442D1D44()
{
  result = qword_27EDDEEA0;
  if (!qword_27EDDEEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEEA0);
  }

  return result;
}

unint64_t sub_2442D1D98()
{
  result = qword_27EDDEEA8;
  if (!qword_27EDDEEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEEA8);
  }

  return result;
}

unint64_t sub_2442D1DEC()
{
  result = qword_27EDDEEB0;
  if (!qword_27EDDEEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEEB0);
  }

  return result;
}

unint64_t sub_2442D1E40()
{
  result = qword_27EDDEEB8;
  if (!qword_27EDDEEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEEB8);
  }

  return result;
}

uint64_t IARFMeasurementUnit.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v55 = sub_2442C6564(&qword_27EDDEEC0, &qword_2443157E8);
  v49 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v45 - v3;
  v48 = sub_2442C6564(&qword_27EDDEEC8, &qword_2443157F0);
  v52 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v53 = &v45 - v4;
  v5 = sub_2442C6564(&qword_27EDDEED0, &qword_2443157F8);
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - v6;
  v8 = sub_2442C6564(&qword_27EDDEED8, &qword_244315800);
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = sub_2442C6564(&qword_27EDDEEE0, &unk_244315808);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - v13;
  v15 = a1[3];
  v58 = a1;
  sub_2442C65AC(a1, v15);
  sub_2442D1BF4();
  v16 = v57;
  sub_244313228();
  if (!v16)
  {
    v17 = v10;
    v45 = v8;
    v46 = 0;
    v18 = v7;
    v19 = v53;
    v20 = v54;
    v57 = v12;
    v22 = v55;
    v21 = v56;
    v23 = sub_244313048();
    v24 = (2 * *(v23 + 16)) | 1;
    v59 = v23;
    v60 = v23 + 32;
    v61 = 0;
    v62 = v24;
    v25 = sub_2442CEC68();
    if (v25 == 4 || v61 != v62 >> 1)
    {
      v29 = sub_244312EE8();
      swift_allocError();
      v31 = v30;
      sub_2442C6564(&qword_27EDDEC40, &qword_244313E00);
      *v31 = &type metadata for IARFMeasurementUnit;
      sub_244312FC8();
      sub_244312EC8();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
      swift_willThrow();
      (*(v57 + 8))(v14, v11);
LABEL_9:
      swift_unknownObjectRelease();
      return sub_2442C6908(v58);
    }

    v63 = v25;
    if (v25 <= 1u)
    {
      if (v25)
      {
        v64 = 1;
        sub_2442D1D98();
        v37 = v46;
        sub_244312FB8();
        if (!v37)
        {
          sub_2442D27A0();
          v38 = v51;
          sub_244313038();
          (*(v50 + 8))(v18, v38);
          (*(v57 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v43 = 0;
          v41 = v64;
          v44 = v21;
          goto LABEL_21;
        }
      }

      else
      {
        v64 = 0;
        sub_2442D1E40();
        v26 = v17;
        v27 = v46;
        sub_244312FB8();
        if (!v27)
        {
          v28 = v45;
          v41 = sub_244312FD8();
          v43 = v42;
          (*(v47 + 8))(v26, v28);
          (*(v57 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v44 = v21;
LABEL_21:
          *v44 = v41;
          *(v44 + 8) = v43;
          *(v44 + 16) = v63;
          return sub_2442C6908(v58);
        }
      }

LABEL_14:
      (*(v57 + 8))(v14, v11);
      goto LABEL_9;
    }

    v44 = v21;
    if (v25 == 2)
    {
      v64 = 2;
      sub_2442D1CF0();
      v33 = v19;
      v34 = v46;
      sub_244312FB8();
      v35 = v57;
      if (!v34)
      {
        sub_2442D274C();
        v36 = v48;
        sub_244313038();
        (*(v52 + 8))(v33, v36);
        (*(v35 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v43 = 0;
        v41 = v64;
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    v64 = 3;
    sub_2442D1C48();
    v39 = v46;
    sub_244312FB8();
    v40 = v57;
    if (!v39)
    {
      sub_2442D26F8();
      sub_244313038();
      (*(v49 + 8))(v20, v22);
      (*(v40 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v43 = 0;
      v41 = v64;
      goto LABEL_21;
    }

    (*(v57 + 8))(v14, v11);
    swift_unknownObjectRelease();
  }

  return sub_2442C6908(v58);
}

unint64_t sub_2442D26F8()
{
  result = qword_27EDDEEE8;
  if (!qword_27EDDEEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEEE8);
  }

  return result;
}

unint64_t sub_2442D274C()
{
  result = qword_27EDDEEF0;
  if (!qword_27EDDEEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEEF0);
  }

  return result;
}

unint64_t sub_2442D27A0()
{
  result = qword_27EDDEEF8;
  if (!qword_27EDDEEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEEF8);
  }

  return result;
}

__n128 sub_2442D2824(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2442D2838(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2442D2880(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IARFMeasurementUnit.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IARFMeasurementUnit.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlatBuffersUtils(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FlatBuffersUtils(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2442D2B50()
{
  result = qword_27EDDEF00;
  if (!qword_27EDDEF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF00);
  }

  return result;
}

unint64_t sub_2442D2BA8()
{
  result = qword_27EDDEF08;
  if (!qword_27EDDEF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF08);
  }

  return result;
}

unint64_t sub_2442D2C00()
{
  result = qword_27EDDEF10;
  if (!qword_27EDDEF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF10);
  }

  return result;
}

unint64_t sub_2442D2C58()
{
  result = qword_27EDDEF18;
  if (!qword_27EDDEF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF18);
  }

  return result;
}

unint64_t sub_2442D2CB0()
{
  result = qword_27EDDEF20;
  if (!qword_27EDDEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF20);
  }

  return result;
}

unint64_t sub_2442D2D08()
{
  result = qword_27EDDEF28;
  if (!qword_27EDDEF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF28);
  }

  return result;
}

unint64_t sub_2442D2D60()
{
  result = qword_27EDDEF30;
  if (!qword_27EDDEF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF30);
  }

  return result;
}

unint64_t sub_2442D2DB8()
{
  result = qword_27EDDEF38;
  if (!qword_27EDDEF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF38);
  }

  return result;
}

unint64_t sub_2442D2E10()
{
  result = qword_27EDDEF40;
  if (!qword_27EDDEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF40);
  }

  return result;
}

unint64_t sub_2442D2E68()
{
  result = qword_27EDDEF48;
  if (!qword_27EDDEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF48);
  }

  return result;
}

unint64_t sub_2442D2EC0()
{
  result = qword_27EDDEF50;
  if (!qword_27EDDEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF50);
  }

  return result;
}

unint64_t sub_2442D2F18()
{
  result = qword_27EDDEF58;
  if (!qword_27EDDEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF58);
  }

  return result;
}

unint64_t sub_2442D2F70()
{
  result = qword_27EDDEF60;
  if (!qword_27EDDEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF60);
  }

  return result;
}

unint64_t sub_2442D2FC8()
{
  result = qword_27EDDEF68;
  if (!qword_27EDDEF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF68);
  }

  return result;
}

unint64_t sub_2442D3020()
{
  result = qword_27EDDEF70;
  if (!qword_27EDDEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF70);
  }

  return result;
}

uint64_t sub_2442D3074(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465746E756F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_244313108() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D756C6F76 && a2 == 0xE600000000000000 || (sub_244313108() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (sub_244313108() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275)
  {

    return 3;
  }

  else
  {
    v6 = sub_244313108();

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

uint64_t sub_2442D31EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (!*result)
  {
    goto LABEL_10;
  }

  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 24);
  v38 = *result;
  v39 = v4;
  v40 = v5;
  v41 = v6;
  IARFFB_Measurement.unitType.getter(&v37);
  if (v37 <= 1u)
  {
    if (v37)
    {
      result = Table.offset(_:)(8);
      v22 = result + v6;
      if (__OFADD__(result, v6))
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v23 = *(*(v3 + 24) + v22);
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      result = Table.offset(_:)(4);
      if (result)
      {
        v25 = result + v24;
        if (__OFADD__(result, v24))
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v26 = Table.directString(at:)(v25);
        countAndFlagsBits = v26.value._countAndFlagsBits;
        object = v26.value._object;
      }

      else
      {
        countAndFlagsBits = 0;
        object = 0;
      }

      v13 = 0;
      goto LABEL_29;
    }

LABEL_10:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = -1;
    return result;
  }

  if (v37 == 2)
  {
    result = Table.offset(_:)(8);
    v14 = result + v6;
    if (__OFADD__(result, v6))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v15 = *(*(v3 + 24) + v14);
    v9 = __OFADD__(v14, v15);
    v16 = v14 + v15;
    if (v9)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v32 = v3;
    v33 = v4;
    v34 = v5;
    v35 = v16;

    sub_2442D07A4(&v32, &v36);
    object = 0;
    countAndFlagsBits = v36;
    v13 = 1;
    goto LABEL_29;
  }

  if (v37 == 3)
  {
    result = Table.offset(_:)(8);
    v7 = result + v6;
    if (__OFADD__(result, v6))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v8 = *(*(v3 + 24) + v7);
    v9 = __OFADD__(v7, v8);
    v10 = v7 + v8;
    if (v9)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v32 = v3;
    v33 = v4;
    v34 = v5;
    v35 = v10;

    sub_244302344(&v32, &v36);
    object = 0;
    countAndFlagsBits = v36;
    v13 = 2;
    goto LABEL_29;
  }

  result = Table.offset(_:)(8);
  v17 = result + v6;
  if (__OFADD__(result, v6))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v18 = *(v3 + 24);
  v19 = *(v18 + v17);
  v20 = v17 + v19;
  if (__OFADD__(v17, v19))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  result = Table.offset(_:)(4);
  if (!result)
  {
    goto LABEL_26;
  }

  if (__OFADD__(result, v20))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v21 = *(v18 + result + v20);
  if (v21 == 2)
  {
    countAndFlagsBits = 0;
    object = 0;
    v13 = 3;
    goto LABEL_29;
  }

  if (v21 == 1)
  {
    object = 0;
    v13 = 3;
    countAndFlagsBits = 2;
  }

  else
  {
LABEL_26:
    object = 0;
    v13 = 3;
    countAndFlagsBits = 1;
  }

LABEL_29:
  result = Table.offset(_:)(4);
  v27 = 0.0;
  if (!result)
  {
    goto LABEL_32;
  }

  if (__OFADD__(result, v6))
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v28 = *(v3 + 24);
  if (*(v28 + result + v6) == 0.0)
  {
LABEL_32:
    v29 = 1;
LABEL_33:
    result = Table.offset(_:)(4);
    if (!result)
    {

      v31 = 0.0;
      goto LABEL_37;
    }

    if (!__OFADD__(result, v6))
    {
      v30 = *(*(v3 + 24) + result + v6);

      v31 = v30;
LABEL_37:
      *a2 = v31;
      *(a2 + 8) = v27;
      *(a2 + 16) = v29;
      *(a2 + 24) = countAndFlagsBits;
      *(a2 + 32) = object;
      *(a2 + 40) = v13;
      return result;
    }

    goto LABEL_44;
  }

  result = Table.offset(_:)(10);
  if (!result)
  {
    v29 = 0;
    goto LABEL_33;
  }

  if (!__OFADD__(result, v6))
  {
    v29 = 0;
    v27 = *(v28 + result + v6);
    goto LABEL_33;
  }

LABEL_55:
  __break(1u);
  return result;
}

uint64_t IARFMeasurement.unit.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_2442C60D8(v2, v3, v4);
}

uint64_t sub_2442D3594()
{
  v1 = 0x746E61755178616DLL;
  if (*v0 != 1)
  {
    v1 = 1953066613;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x797469746E617571;
  }
}

uint64_t sub_2442D35F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2442D3DCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2442D3618(uint64_t a1)
{
  v2 = sub_2442D38C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442D3654(uint64_t a1)
{
  v2 = sub_2442D38C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFMeasurement.encode(to:)(void *a1)
{
  v4 = sub_2442C6564(&qword_27EDDEF78, &qword_244315EC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v17 = *(v1 + 8);
  v16 = *(v1 + 16);
  v8 = *(v1 + 24);
  v14 = *(v1 + 32);
  v15 = v8;
  v9 = *(v1 + 40);
  sub_2442C65AC(a1, a1[3]);
  sub_2442D38C4();
  sub_244313238();
  LOBYTE(v19) = 0;
  sub_2443130A8();
  if (!v2)
  {
    v11 = v9;
    v12 = v14;
    v13 = v15;
    LOBYTE(v19) = 1;
    sub_244313078();
    v19 = v13;
    v20 = v12;
    v21 = v11;
    v18 = 2;
    sub_2442C60D8(v13, v12, v11);
    sub_2442D3918();
    sub_2443130C8();
    sub_2442C670C(v19, v20, v21);
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2442D38C4()
{
  result = qword_27EDDEF80;
  if (!qword_27EDDEF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF80);
  }

  return result;
}

unint64_t sub_2442D3918()
{
  result = qword_27EDDEF88;
  if (!qword_27EDDEF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF88);
  }

  return result;
}

uint64_t IARFMeasurement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDEF90, &qword_244315EC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-v7];
  sub_2442C65AC(a1, a1[3]);
  sub_2442D38C4();
  sub_244313228();
  if (!v2)
  {
    LOBYTE(v19) = 0;
    sub_244313018();
    v10 = v9;
    LOBYTE(v19) = 1;
    v11 = sub_244312FE8();
    v13 = v12;
    v14 = v11;
    v18[15] = 2;
    sub_2442D3B74();
    sub_244313038();
    (*(v6 + 8))(v8, v5);
    v16 = v20;
    v17 = v19;
    *a2 = v10;
    *(a2 + 8) = v14;
    *(a2 + 16) = v13 & 1;
    *(a2 + 24) = v17;
    *(a2 + 40) = v16;
  }

  return sub_2442C6908(a1);
}

unint64_t sub_2442D3B74()
{
  result = qword_27EDDEF98;
  if (!qword_27EDDEF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF98);
  }

  return result;
}

__n128 sub_2442D3BF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2442D3C0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2442D3C54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

unint64_t sub_2442D3CC8()
{
  result = qword_27EDDEFA0;
  if (!qword_27EDDEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEFA0);
  }

  return result;
}

unint64_t sub_2442D3D20()
{
  result = qword_27EDDEFA8;
  if (!qword_27EDDEFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEFA8);
  }

  return result;
}

unint64_t sub_2442D3D78()
{
  result = qword_27EDDEFB0;
  if (!qword_27EDDEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEFB0);
  }

  return result;
}

uint64_t sub_2442D3DCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E617571 && a2 == 0xE800000000000000;
  if (v4 || (sub_244313108() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E61755178616DLL && a2 == 0xEB00000000797469 || (sub_244313108() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_244313108();

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

uint64_t sub_2442D3EE8()
{
  v0 = sub_2442C6564(&qword_27EDDEFD0, &unk_2443160E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_244312F28();
  sub_2442D4100(v3, qword_27EDDEFB8);
  v4 = sub_2442D40C8(v3, qword_27EDDEFB8);
  sub_244312F18();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t static CodingUserInfoKey.rawJSONProvider.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EDDE810 != -1)
  {
    swift_once();
  }

  v2 = sub_244312F28();
  v3 = sub_2442D40C8(v2, qword_27EDDEFB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2442D40C8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_2442D4100(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t ByteBuffer.Storage.__allocating_init(count:alignment:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = swift_slowAlloc();
  *(v3 + 32) = a1;
  *(v3 + 16) = 0;
  return v3;
}

uint64_t ByteBuffer.Storage.init(count:alignment:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = swift_slowAlloc();
  *(v2 + 32) = a1;
  *(v2 + 16) = 0;
  return v2;
}

uint64_t ByteBuffer.Storage.__allocating_init(memory:capacity:unowned:)(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_allocObject();
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 16) = a3;
  return result;
}

uint64_t ByteBuffer.Storage.init(memory:capacity:unowned:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  return v3;
}

uint64_t ByteBuffer.Storage.deinit()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    MEMORY[0x245D5F2C0](*(v0 + 24), -1, -1);
  }

  return v0;
}

uint64_t ByteBuffer.Storage.__deallocating_deinit()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    MEMORY[0x245D5F2C0](*(v0 + 24), -1, -1);
  }

  return swift_deallocClassInstance();
}

void *ByteBuffer.Storage.copy(from:count:)(void *__src, size_t __len)
{
  if ((__len & 0x8000000000000000) == 0)
  {
    return memmove(*(v2 + 24), __src, __len);
  }

  __break(1u);
  return __src;
}

Swift::Void __swiftcall ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(Swift::Int _, Swift::Int writerSize, Swift::Int alignment)
{
  v5 = *(v3 + 32);
  v6 = writerSize + _;
    ;
  }

  v8 = v5 - writerSize;
  *(v3 + 32) = sub_2442DDD90(i);
  v9 = swift_slowAlloc();
  v10 = *(v3 + 32) - writerSize;
  bzero(v9, v10);
  v11 = *(v3 + 24);
  memcpy(&v9[v10], (v11 + v8), writerSize);
  MEMORY[0x245D5F2C0](v11, -1, -1);
  *(v3 + 24) = v9;
}

uint64_t ByteBuffer._storage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

unint64_t ByteBuffer.size.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.init(bytes:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ByteBuffer.Storage();
  v3 = swift_allocObject();

  v4 = swift_slowAlloc();
  *(v3 + 24) = v4;
  *(v3 + 32) = v2;
  *(v3 + 16) = 0;
  v5 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_2442D55D8(a1);
  }

  memmove(v4, v5 + 32, *(a1 + 16));

  return v3;
}

uint64_t ByteBuffer.init<A>(contiguousBytes:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ByteBuffer.Storage();
  v7 = swift_allocObject();
  *(v7 + 24) = swift_slowAlloc();
  *(v7 + 32) = a2;
  *(v7 + 16) = 0;
  sub_244312BA8();
  (*(*(a3 - 8) + 8))(a1, a3);
  return v7;
}

uint64_t ByteBuffer.init(assumingMemoryBound:capacity:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ByteBuffer.Storage();
  result = swift_allocObject();
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 16) = 1;
  return result;
}

Swift::Void __swiftcall ByteBuffer.fill(padding:)(Swift::Int padding)
{
  v2 = v1[1];
  v3 = v2 + padding;
  if (*(*v1 + 32) < v2 + padding)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(padding, v2, v1[2]);
  }

  v1[1] = v3;
}

Swift::Int __swiftcall ByteBuffer.ensureSpace(size:)(Swift::Int size)
{
  v2 = v1[1];
  if (*(*v1 + 32) < v2 + size)
  {
    v3 = size;
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(size, v2, v1[2]);
    return v3;
  }

  return size;
}

uint64_t ByteBuffer.push<A>(elements:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a2 - 8) + 64) * sub_244312DD8();
  v5 = v3[1];
  if (*(*v3 + 32) < v4 + v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v4, v5, v3[2]);
  }

  v6 = sub_244312DF8();

  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x245D5E890](&v10, v6, WitnessTable);
  MEMORY[0x28223BE20](v8);
  sub_244312F58();
  swift_getWitnessTable();
  sub_244312D98();
}

uint64_t sub_2442D483C(uint64_t a1, Swift::Int *a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = *(v8 + 8);
  v10 = v9 + v7;
  if (*(*a2 + 32) < (v9 + v7))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v9, a2[2]);
  }

  (*(v6 + 16))(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  memcpy((*(*a2 + 24) + *(*a2 + 32) - (a2[1] + v7)), v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  a2[1] = v10;
  return (*(v6 + 8))(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
}

uint64_t ByteBuffer.push<A>(value:len:)(uint64_t a1, size_t a2, uint64_t a3)
{

  return sub_2442D4A04(a1, a2, a3);
}

uint64_t sub_2442D4A04(uint64_t a1, size_t a2, uint64_t a3)
{
  v4 = v3;
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v3;
  v12 = *v3;
  v11 = v13[1];
  v14 = v11 + a2;
  if (*(v12 + 32) < (v11 + a2))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(a2, v11, v4[2]);
  }

  (*(v8 + 16))(v10, a1, a3);
  memcpy((*(v12 + 24) + *(v12 + 32) - v14), v10, a2);
  v4[1] = v14;
  return (*(v8 + 8))(v10, a3);
}

Swift::Void __swiftcall ByteBuffer.push(string:len:)(Swift::String string, Swift::Int len)
{
  v3 = v2;
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  v38[3] = *MEMORY[0x277D85DE8];
  v9 = v2;
  v8 = *v2;
  v7 = v9[1];
  if (*(v8 + 32) < v7 + len)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(len, v7, v3[2]);
  }

  if (sub_2442D4EBC(countAndFlagsBits, object, v3, len) != 2)
  {
    goto LABEL_45;
  }

  v10 = (object & 0x2000000000000000) != 0 ? HIBYTE(object) & 0xF : countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if (!v10)
  {
    goto LABEL_45;
  }

  v11 = (countAndFlagsBits >> 59) & 1;
  if ((object & 0x1000000000000000) == 0)
  {
    LODWORD(v11) = 1;
  }

  v12 = 11;
  if (v11)
  {
    v12 = 7;
  }

  v13 = v12 | (v10 << 16);
  v14 = 4 << v11;

  v35 = countAndFlagsBits;
  v36 = v3;
  v34 = v10;
  v37 = v14;
  while (1)
  {
    if ((v13 & 0xC) != v14)
    {
      if ((object & 0x1000000000000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    v16 = sub_2442D5AFC(v13, countAndFlagsBits, object);
    if (v16 < 0x4000)
    {
      break;
    }

    v13 = v16;
    if ((object & 0x1000000000000000) == 0)
    {
LABEL_17:
      v13 = (v13 & 0xFFFFFFFFFFFF0000) - 65532;
      goto LABEL_22;
    }

LABEL_20:
    if (v10 < v13 >> 16)
    {
      __break(1u);
LABEL_49:
      __break(1u);
    }

    v13 = sub_244312D38();
LABEL_22:
    v17 = v13;
    if ((v13 & 0xC) == v14)
    {
      v17 = sub_2442D5AFC(v13, countAndFlagsBits, object);
    }

    v18 = v17 >> 16;
    if (v17 >> 16 >= v10)
    {
      goto LABEL_43;
    }

    if ((object & 0x1000000000000000) != 0)
    {
      v20 = sub_244312D58();
    }

    else if ((object & 0x2000000000000000) != 0)
    {
      v38[0] = countAndFlagsBits;
      v38[1] = object & 0xFFFFFFFFFFFFFFLL;
      v20 = *(v38 + v18);
    }

    else
    {
      v19 = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((countAndFlagsBits & 0x1000000000000000) == 0)
      {
        v19 = sub_244312EF8();
      }

      v20 = *(v19 + v18);
    }

    v21 = v3[1];
    v22 = v21 + 1;
    v23 = *(v8 + 32);
    if (v23 >= (v21 + 1))
    {
      v15 = *(v8 + 24);
    }

    else
    {
      v24 = *(v8 + 32);
      do
      {
        v24 *= 2;
      }

      while (v22 >= v24);
      if (v24 < 1)
      {
        v30 = 1;
      }

      else
      {
        if (HIDWORD(v24))
        {
          goto LABEL_49;
        }

        v25 = (v24 - 1) | ((v24 - 1) >> 1) | (((v24 - 1) | ((v24 - 1) >> 1)) >> 2);
        v26 = v25 | (v25 >> 4) | ((v25 | (v25 >> 4)) >> 8);
        v27 = v26 | HIWORD(v26);
        v28 = __CFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          v30 = 0xFFFFFFFFLL;
        }

        else
        {
          v30 = v29;
        }
      }

      v31 = v23 - v21;
      *(v8 + 32) = v30;
      v15 = swift_slowAlloc();
      v32 = *(v8 + 32) - v21;
      bzero(v15, v32);
      v33 = *(v8 + 24);
      memcpy(&v15[v32], (v33 + v31), v21);
      MEMORY[0x245D5F2C0](v33, -1, -1);
      *(v8 + 24) = v15;
      v23 = *(v8 + 32);
      countAndFlagsBits = v35;
      v3 = v36;
      v10 = v34;
    }

    v15[v23 + ~v21] = v20;
    v3[1] = v22;
    v14 = v37;
    if (!(v13 >> 14))
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:

LABEL_45:
}

uint64_t ByteBuffer.push(bytes:len:)(uint64_t __src, uint64_t a2, size_t a3)
{
  if (__src)
  {
    v4 = v3[1] + a3;
    memcpy((*(*v3 + 24) + *(*v3 + 32) - v4), __src, a3);
    v3[1] = v4;
    return 1;
  }

  else
  {
    __break(1u);
  }

  return __src;
}

uint64_t sub_2442D4EBC(uint64_t a1, uint64_t a2, void *a3, size_t __n)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return 2;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9[0] = a1;
    v9[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v7 = (*(*a3 + 24) + *(*a3 + 32) - (a3[1] + __n));
    v6 = v9;
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_244312EF8();
      v6 = result;
      if (!result)
      {
        __break(1u);
        return result;
      }
    }

    v7 = (*(*a3 + 24) + *(*a3 + 32) - (a3[1] + __n));
  }

  memcpy(v7, v6, __n);
  a3[1] += __n;
  return 1;
}

uint64_t ByteBuffer.readSlice<A>(index:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_244312C78();
  sub_244312C88();
  swift_getWitnessTable();
  return sub_244312E08();
}

uint64_t ByteBuffer.readString(at:count:type:)(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_244312CC8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = *(a4 + 24);
    v13 = sub_2442D54E0(a2, 0);
    memcpy(v13 + 4, (v12 + a1), a2);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16[1] = v13;
  (*(v9 + 16))(v11, a3, v8);
  sub_2442C6564(&qword_27EDDE910, &qword_244313BE8);
  sub_2442C90F4();
  v14 = sub_244312CA8();

  return v14;
}

void *ByteBuffer.duplicate(removing:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a2 + 32);
  type metadata accessor for ByteBuffer.Storage();
  v4 = swift_allocObject();
  result = swift_slowAlloc();
  *(v4 + 24) = result;
  *(v4 + 32) = v3;
  *(v4 + 16) = 0;
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    memmove(result, v2, v3);
    return v4;
  }

  return result;
}

void *ByteBuffer.underlyingBytes.getter(uint64_t a1, size_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32) - a2;
  v5 = sub_2442D54E0(a2, 0);
  memcpy(v5 + 4, (v2 + v3), a2);
  return v5;
}

Swift::Int32 __swiftcall ByteBuffer.skipPrefix()()
{
  v1 = *v0;
  v0[1] -= 4;
  return **(v1 + 24);
}

uint64_t ByteBuffer.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_244312E98();
  MEMORY[0x245D5E950](0xD000000000000013, 0x800000024431C280);
  sub_244312F08();
  MEMORY[0x245D5E950](0xD000000000000013, 0x800000024431C2A0);
  v2 = sub_2443130D8();
  MEMORY[0x245D5E950](v2);

  MEMORY[0x245D5E950](0x6574697277207B0ALL, 0xEF203A657A695372);
  v3 = sub_2443130D8();
  MEMORY[0x245D5E950](v3);

  MEMORY[0x245D5E950](0x726564616572202CLL, 0xEE00203A657A6953);
  v4 = sub_2443130D8();
  MEMORY[0x245D5E950](v4);

  MEMORY[0x245D5E950](0x726574697277202CLL, 0xEF203A7865646E49);
  v5 = sub_2443130D8();
  MEMORY[0x245D5E950](v5);

  MEMORY[0x245D5E950](32032, 0xE200000000000000);
  return 0;
}

void *sub_2442D54E0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2442C6564(&qword_27EDDE920, &qword_244316370);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_2442D5554(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2442C6564(&qword_27EDDEFD8, &qword_2443161A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t sub_2442D55EC(unint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v11 = *a1;
  v10 = a1[1];
  v12 = v10 >> 62;
  if ((v10 >> 62) <= 1)
  {
    if (v12)
    {
      sub_2442D5D94(a3, a4);
      sub_2442D5D94(v11, v10);
      sub_2442D5DE8(v11, v10);
      *&__src = v11;
      *(&__src + 1) = v10 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_244316100;
      sub_2442D5DE8(0, 0xC000000000000000);
      sub_2442D59F4(&__src, a2, a3, a4);
      result = sub_2442D5DE8(a3, a4);
      v23 = *(&__src + 1) | 0x4000000000000000;
      *a1 = __src;
      a1[1] = v23;
      return result;
    }

    v4 = v11 >> 8;
    v5 = v11 >> 16;
    sub_2442D5D94(a3, a4);
    sub_2442D5DE8(v11, v10);
    *&__src = v11;
    WORD4(__src) = v10;
    BYTE10(__src) = BYTE2(v10);
    BYTE11(__src) = BYTE3(v10);
    BYTE12(__src) = BYTE4(v10);
    BYTE13(__src) = BYTE5(v10);
    BYTE14(__src) = BYTE6(v10);
    v13 = a4 >> 62;
    v14 = *a2;
    if ((a4 >> 62) <= 1)
    {
      if (!v13)
      {
        v15 = BYTE6(a4);
LABEL_37:
        memcpy(*(v14 + 24), &__src, v15);
        v30 = __src;
        v31 = DWORD2(__src) | ((WORD6(__src) | (BYTE14(__src) << 16)) << 32);
        sub_2442D5DE8(a3, a4);
        result = sub_2442D5DE8(a3, a4);
        *a1 = v30;
        a1[1] = v31;
        return result;
      }

      goto LABEL_28;
    }

    if (v13 != 2)
    {
      v15 = 0;
      goto LABEL_37;
    }

    v26 = *(a3 + 16);
    v24 = *(a3 + 24);
    v15 = v24 - v26;
    if (!__OFSUB__(v24, v26))
    {
LABEL_30:
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v12 != 2)
  {
    *(&__src + 7) = 0;
    *&__src = 0;
    v14 = *a2;
    v24 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      if (v24)
      {
LABEL_32:
        if (__OFSUB__(HIDWORD(a3), a3))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
        }

        v25 = HIDWORD(a3) - a3;
        goto LABEL_34;
      }

      v25 = BYTE6(a4);
      goto LABEL_35;
    }

LABEL_20:
    v25 = 0;
    if (v24 == 2)
    {
      v27 = *(a3 + 16);
      v20 = *(a3 + 24);
      v25 = v20 - v27;
      if (!__OFSUB__(v20, v27))
      {
LABEL_34:
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_45;
      }

      __break(1u);
      goto LABEL_24;
    }

LABEL_35:
    memcpy(*(v14 + 24), &__src, v25);
    return sub_2442D5DE8(a3, a4);
  }

  sub_2442D5D94(a3, a4);

  sub_2442D5DE8(v11, v10);
  *&__src = v11;
  *(&__src + 1) = v10 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_244316100;
  sub_2442D5DE8(0, 0xC000000000000000);
  sub_244312BC8();
  v10 = *(&__src + 1);
  v4 = __src;
  v16 = *(__src + 16);
  v17 = sub_244312B68();
  if (v17)
  {
    v11 = v17;
    v18 = sub_244312B88();
    v19 = __OFSUB__(v16, v18);
    v5 = v16 - v18;
    if (v19)
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    sub_244312B78();
    v14 = *a2;
    v20 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      if (!v20)
      {
        v21 = BYTE6(a4);
        goto LABEL_43;
      }

      if (__OFSUB__(HIDWORD(a3), a3))
      {
        goto LABEL_48;
      }

      v21 = HIDWORD(a3) - a3;
LABEL_40:
      if ((v21 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_42;
      }

LABEL_43:
      memmove(*(v14 + 24), (v11 + v5), v21);
      sub_2442D5DE8(a3, a4);
      result = sub_2442D5DE8(a3, a4);
      *a1 = v4;
      a1[1] = v10 | 0x8000000000000000;
      return result;
    }

LABEL_24:
    if (v20 != 2)
    {
LABEL_42:
      v21 = 0;
      goto LABEL_43;
    }

    v29 = *(a3 + 16);
    v28 = *(a3 + 24);
    v21 = v28 - v29;
    if (__OFSUB__(v28, v29))
    {
      __break(1u);
LABEL_28:
      if (__OFSUB__(HIDWORD(a3), a3))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v15 = HIDWORD(a3) - a3;
      goto LABEL_30;
    }

    goto LABEL_40;
  }

  result = sub_2442D5DE8(a3, a4);
  __break(1u);
  return result;
}

uint64_t sub_2442D59F4(int *a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  result = sub_244312BD8();
  v9 = *a1;
  if (a1[1] < v9)
  {
    __break(1u);
    goto LABEL_18;
  }

  result = sub_244312B68();
  if (result)
  {
    v10 = result;
    result = sub_244312B88();
    v11 = __OFSUB__(v9, result);
    v12 = v9 - result;
    if (!v11)
    {
      result = sub_244312B78();
      v13 = *a2;
      v14 = a4 >> 62;
      if ((a4 >> 62) > 1)
      {
        if (v14 != 2)
        {
          goto LABEL_15;
        }

        v17 = *(a3 + 16);
        v16 = *(a3 + 24);
        v15 = v16 - v17;
        if (!__OFSUB__(v16, v17))
        {
LABEL_13:
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_16;
          }

          __break(1u);
LABEL_15:
          v15 = 0;
          goto LABEL_16;
        }

        __break(1u);
      }

      else if (!v14)
      {
        v15 = BYTE6(a4);
LABEL_16:
        memmove(*(v13 + 24), (v10 + v12), v15);

        return sub_2442D5DE8(a3, a4);
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        v15 = HIDWORD(a3) - a3;
        goto LABEL_13;
      }

      goto LABEL_19;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2442D5AFC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_244312D68();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x245D5E980](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t _s11CookingData10ByteBufferV4dataAC10Foundation0B0V_tcfC_0(uint64_t result, unint64_t a2)
{
  v3 = result;
  v9 = result;
  v10 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v5 = 0;
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v5 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
LABEL_10:
      sub_2442D5D94(result, a2);
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
LABEL_11:
    type metadata accessor for ByteBuffer.Storage();
    v8 = swift_allocObject();
    *(v8 + 24) = swift_slowAlloc();
    *(v8 + 32) = v5;
    *(v8 + 16) = 0;
    v11[0] = v8;
    sub_2442D55EC(&v9, v11, v3, a2);
    sub_2442D5DE8(v9, v10);
    return v8;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = HIDWORD(result) - result;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void *sub_2442D5C64(void *__src, uint64_t a2)
{
  if (__src)
  {
    return memmove(*(**(v2 + 16) + 24), __src, a2 - __src);
  }

  __break(1u);
  return __src;
}

__n128 sub_2442D5CA8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2442D5CBC(uint64_t *a1, int a2)
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

uint64_t sub_2442D5D04(uint64_t result, int a2, int a3)
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

uint64_t sub_2442D5D94(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2442D5DE8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t ByteBuffer.push<A>(struct:size:)(uint64_t a1, size_t a2, uint64_t a3)
{

  return ByteBuffer.push<A>(value:len:)(a1, a2, a3);
}

uint64_t Scalar<>.convertedEndian.getter(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t FlatBufferBuilder.VTableStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 8;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  v1 = swift_slowAlloc();
  *(v0 + 32) = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  return v0;
}

uint64_t FlatBufferBuilder._vtableStorage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t FlatBufferBuilder._bb.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a3;
  return result;
}

uint64_t FlatBufferBuilder._minAlignment.setter(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 24) = result;
  return result;
}

uint64_t sub_2442D6208(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*result + 24) = *(*result + 64);
  }

  return result;
}

unint64_t FlatBufferBuilder.size.getter()
{
  result = *(v0 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t FlatBufferBuilder.data.getter()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  if (v1 <= 14)
  {
    return sub_2442DD4CC((*(*(v0 + 8) + 24) + *(*(v0 + 8) + 32) - v1), (*(*(v0 + 8) + 24) + *(*(v0 + 8) + 32)));
  }

  sub_244312B98();
  swift_allocObject();
  sub_244312B58();
  if (v1 < 0x7FFFFFFF)
  {
    return v1 << 32;
  }

  sub_244312BE8();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v1;
  return result;
}

void *FlatBufferBuilder.fullSizedByteArray.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 32);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *(v1 + 24);
  sub_2442C6564(&qword_27EDDE920, &qword_244316370);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = v2;
  v4[3] = 2 * v5 - 64;
  memcpy(v4 + 4, v3, v2);
  return v4;
}

void *FlatBufferBuilder.sizedByteArray.getter()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *(v0 + 8);
  v3 = *(v2 + 24);
  v4 = *(v2 + 32) - v1;
  v5 = sub_2442D54E0(*(v0 + 16), 0);
  memcpy(v5 + 4, (v3 + v4), v1);
  return v5;
}

void FlatBufferBuilder.sizedBuffer.getter()
{
  v1 = *(v0 + 16);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v1))
  {
    v2 = *(v0 + 8);
    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    type metadata accessor for ByteBuffer.Storage();
    v5 = swift_allocObject();
    v6 = swift_slowAlloc();
    *(v5 + 24) = v6;
    *(v5 + 32) = v1;
    *(v5 + 16) = 0;
    memmove(v6, (v3 + v4 - v1), v1);
    return;
  }

  __break(1u);
}

__n128 FlatBufferBuilder.init(initialSize:serializeDefaults:)@<Q0>(uint64_t a1@<X8>, int a2@<W0>, char a3@<W1>)
{
  sub_2442DD584(a2, a3, v6);
  v4 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v7;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

Swift::Void __swiftcall FlatBufferBuilder.clear()()
{
  v0[8] = 0;
  v0[3] = 0;
  *(v0 + 40) = 0;
  if (*(v0[6] + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v8 = v0[6];
    sub_2442C6564(&qword_27EDDEFE0, &qword_244316378);
    sub_244312F38();
    v0[6] = v8;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = v0[4];
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_2442DD728(0, *(v2 + 16));
  }

  else
  {
    v3 = sub_2442D5554(0, *(v2 + 24) >> 1);

    v0[4] = v3;
  }

  v4 = *v0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v0 + 1) = xmmword_2443160F0;
  v5 = v0[1];
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);

  bzero(v6, v7);
}

void FlatBufferBuilder.finish(offset:fileId:addPrefix:)(int *a1, unint64_t a2, unint64_t a3, char a4)
{
  v45[3] = *MEMORY[0x277D85DE8];
  v6 = v4[2];
  if (v6 > 0xFFFFFFFFLL)
  {
    goto LABEL_58;
  }

  v7 = v4;
  v8 = v4[8];
  if (a4)
  {
    v9 = -12;
  }

  else
  {
    v9 = -8;
  }

  if ((v6 | v8) < 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v8 > 0xFFFFFFFFLL)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v10 = v8 != 0;
  v11 = v8 - 1;
  if (!v10)
  {
LABEL_61:
    __break(1u);
  }

  v39 = *a1;
  v13 = (v9 - v6) & v11;
  v14 = v6 + v13;
  v15 = v4[1];
  if (*(v15 + 32) < v6 + v13)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v6, v7[3]);
  }

  v7[2] = v14;
  if (*(v15 + 32) < v14 + 4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v14, v7[3]);
  }

  if (sub_2442D4EBC(a2, a3, v7 + 1, 4uLL) != 2)
  {
    goto LABEL_55;
  }

  v16 = (a3 & 0x2000000000000000) != 0 ? HIBYTE(a3) & 0xF : a2 & 0xFFFFFFFFFFFFLL;
  if (!v16)
  {
    goto LABEL_55;
  }

  v17 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LODWORD(v17) = 1;
  }

  v18 = 11;
  if (v17)
  {
    v18 = 7;
  }

  v19 = v18 | (v16 << 16);
  v20 = 4 << v17;

  v42 = a2;
  v43 = v7;
  v41 = v16;
  v44 = v20;
  while (1)
  {
    if ((v19 & 0xC) != v20)
    {
      if ((a3 & 0x1000000000000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    v22 = sub_2442D5AFC(v19, a2, a3);
    if (v22 < 0x4000)
    {
      break;
    }

    v19 = v22;
    if ((a3 & 0x1000000000000000) == 0)
    {
LABEL_27:
      v19 = (v19 & 0xFFFFFFFFFFFF0000) - 65532;
      goto LABEL_32;
    }

LABEL_30:
    if (v16 < v19 >> 16)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v19 = sub_244312D38();
LABEL_32:
    v23 = v19;
    if ((v19 & 0xC) == v20)
    {
      v23 = sub_2442D5AFC(v19, a2, a3);
    }

    v24 = v23 >> 16;
    if (v23 >> 16 >= v16)
    {
      goto LABEL_53;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      v26 = sub_244312D58();
    }

    else if ((a3 & 0x2000000000000000) != 0)
    {
      v45[0] = a2;
      v45[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      v26 = *(v45 + v24);
    }

    else
    {
      v25 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a2 & 0x1000000000000000) == 0)
      {
        v25 = sub_244312EF8();
      }

      v26 = *(v25 + v24);
    }

    v27 = v7[2];
    v28 = v27 + 1;
    v29 = *(v15 + 32);
    if (v29 >= (v27 + 1))
    {
      v21 = *(v15 + 24);
    }

    else
    {
      v30 = *(v15 + 32);
      do
      {
        v30 *= 2;
      }

      while (v28 >= v30);
      if (v30 < 1)
      {
        v35 = 1;
      }

      else
      {
        if (HIDWORD(v30))
        {
          goto LABEL_57;
        }

        v31 = (v30 - 1) | ((v30 - 1) >> 1) | (((v30 - 1) | ((v30 - 1) >> 1)) >> 2);
        v32 = v31 | (v31 >> 4) | ((v31 | (v31 >> 4)) >> 8);
        v33 = v32 | HIWORD(v32);
        v10 = __CFADD__(v33, 1);
        v34 = v33 + 1;
        if (v10)
        {
          v35 = 0xFFFFFFFFLL;
        }

        else
        {
          v35 = v34;
        }
      }

      v36 = v29 - v27;
      *(v15 + 32) = v35;
      v21 = swift_slowAlloc();
      v37 = *(v15 + 32) - v27;
      bzero(v21, v37);
      v38 = *(v15 + 24);
      memcpy(&v21[v37], (v38 + v36), v27);
      MEMORY[0x245D5F2C0](v38, -1, -1);
      *(v15 + 24) = v21;
      v29 = *(v15 + 32);
      a2 = v42;
      v7 = v43;
      v16 = v41;
    }

    v21[v29 + ~v27] = v26;
    v7[2] = v28;
    v20 = v44;
    if (!(v19 >> 14))
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:

LABEL_55:

  LODWORD(v45[0]) = v39;
  FlatBufferBuilder.finish(offset:addPrefix:)(v45, a4 & 1);
}

Swift::Void __swiftcall FlatBufferBuilder.preAlign(len:alignment:)(Swift::Int len, Swift::Int alignment)
{
  if (v2[8] < alignment)
  {
    v2[8] = alignment;
    v2[3] = alignment;
  }

  v4 = v2[2];
  if (v4 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (len > 0xFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((alignment | len | v4) < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (alignment > 0xFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v5 = alignment != 0;
  v6 = alignment - 1;
  if (!v5)
  {
    goto LABEL_16;
  }

  v7 = v6 & -(len + v4);
  v8 = v4 + v7;
  if (*(v2[1] + 32) < v4 + v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v4, v2[3]);
  }

  v2[2] = v8;
}

void FlatBufferBuilder.finish(offset:addPrefix:)(int *a1, char a2)
{
  v4 = v2[2];
  if (v4 > 0xFFFFFFFFLL)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v5 = v2;
  v6 = v2[8];
  if (a2)
  {
    v7 = -8;
  }

  else
  {
    v7 = -4;
  }

  if ((v4 | v6) < 0)
  {
    goto LABEL_30;
  }

  if (v6 > 0xFFFFFFFFLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v6)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = *a1;
  v9 = (v7 - v4) & (v6 - 1);
  v10 = v4 + v9;
  v11 = v2[1];
  if (*(v11 + 32) < v4 + v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v4, v5[3]);
  }

  v5[2] = v10;
  if (v6 <= 3)
  {
    v5[8] = 4;
    v5[3] = 4;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

  if (HIDWORD(v10))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = -v10 & 3;
  v13 = v12 + v10;
  if (*(v11 + 32) < (v12 + v10))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v10, v5[3]);
  }

  v5[2] = v13;
  if (HIDWORD(v13))
  {
    goto LABEL_35;
  }

  v14 = v13 - v8 + 4;
  v15 = -v13 & 3;
  v16 = v15 + v13;
  if (*(v11 + 32) < (v15 + v13))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v15, v13, v5[3]);
  }

  v5[2] = v16;
  v17 = v16 + 4;
  v18 = *(v11 + 32);
  if (v18 < (v16 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v16, v5[3]);
    v18 = *(v11 + 32);
  }

  *(*(v11 + 24) + v18 - v16 - 4) = v14;
  v5[2] = v17;
  if (v16 > 0xFFFFFFFB)
  {
    goto LABEL_36;
  }

  if (a2)
  {
    v19 = -v16 & 3;
    v20 = v19 + v17;
    if (*(v11 + 32) < (v19 + v17))
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v19, v16 + 4, v5[3]);
    }

    v5[2] = v20;
    v21 = *(v11 + 32);
    if (v21 < (v20 + 4))
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v20, v5[3]);
      v21 = *(v11 + 32);
    }

    *(*(v11 + 24) + v21 - v20 - 4) = v17;
    v5[2] = v20 + 4;
    if (v20 > 0xFFFFFFFB)
    {
LABEL_37:
      __break(1u);
    }
  }

  v22 = *v5;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  *(v22 + 80) = 0;
  *(v5 + 56) = 1;
}

Swift::UInt32 __swiftcall FlatBufferBuilder.refer(to:)(Swift::UInt32 to)
{
  v2 = to;
  if (v1[8] <= 3)
  {
    v1[8] = 4;
    v1[3] = 4;
  }

  v3 = v1[2];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(v3))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *&to = -*(v1 + 16) & 3;
  v4 = *&to + v3;
  if (*(v1[1] + 32) < (*&to + v3))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(*&to, v3, v1[3]);
  }

  v1[2] = v4;
  if (!HIDWORD(v4))
  {
    return v4 - v2 + 4;
  }

LABEL_11:
  __break(1u);
  return to;
}

Swift::Int FlatBufferBuilder.push<A>(element:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  if (v2[8] < v7)
  {
    v2[8] = v7;
    v2[3] = v7;
  }

  v8 = v2[2];
  if (v8 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v8 | v7) < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7 > 0xFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v7)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  v9 = (v7 - 1) & (-v8 - v7);
  v10 = v8 + v9;
  v11 = v2[1];
  if (*(v11 + 32) < v8 + v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v8, v3[3]);
  }

  v3[2] = v10;
  v12 = v10 + v7;
  if (*(v11 + 32) < v10 + v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v10, v3[3]);
  }

  (*(v6 + 16))(v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  memcpy((*(v11 + 24) + *(v11 + 32) - v12), v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v3[2] = v12;
  (*(v6 + 8))(v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  if (HIDWORD(v12))
  {
    goto LABEL_19;
  }

  return v10 + v7;
}

Swift::UInt32 __swiftcall FlatBufferBuilder.startTable(with:)(Swift::Int with)
{
  *(v1 + 40) = 1;
  v2 = *v1;
  v3 = 8 * with;
  if (*(*v1 + 56) < *(*v1 + 80) + 8 * with)
  {
    if (*(v2 + 48))
    {
      goto LABEL_11;
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      MEMORY[0x245D5F2C0](v4, -1, -1);
    }

    v5 = swift_slowAlloc();
    *(v2 + 32) = v5;
    *(v2 + 40) = v5 + v3;
    *(v2 + 48) = 0;
    *(v2 + 56) = v3;
  }

  with = v1[2];
  if (with < 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(with))
  {
    return with;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return with;
}

Swift::UInt32 __swiftcall FlatBufferBuilder.endTable(at:)(Swift::UInt32 at)
{
  v4 = v1;
  v5 = *&at;
  if (v1[8] <= 3)
  {
    v1[8] = 4;
    v1[3] = 4;
  }

  v6 = v1[2];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (HIDWORD(v6))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v7 = -*(v1 + 16) & 3;
  v8 = v7 + v6;
  v9 = v1[1];
  if (*(v9 + 32) < (v7 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v6, v4[3]);
  }

  v4[2] = v8;
  v2 = v8 + 4;
  v10 = *(v9 + 32);
  if (v10 < (v8 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v8, v4[3]);
    v10 = *(v9 + 32);
  }

  *(*(v9 + 24) + v10 - v8 - 4) = 0;
  v4[2] = v2;
  if (v8 > 0xFFFFFFFB)
  {
    goto LABEL_40;
  }

  v11 = v2 - v5;
  v12 = *v4;
  v13 = *(*v4 + 64);
  v5 = (v13 + 2);
  v3 = v13 + 2 + v2;
  if (*(v9 + 32) < v3)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13 + 2, v2, v4[3]);
  }

  v4[2] = v3;
  if (HIWORD(v11))
  {
    goto LABEL_41;
  }

  *(*(v9 + 24) + *(v9 + 32) - (v13 + v2)) = v11;
  if (v13 > 0xFFFD)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(*(v9 + 24) + *(v9 + 32) - v3) = v5;
  v14 = *(v12 + 80);
  if (v14 >= 1)
  {
    for (i = 0; i < v14; i += 8)
    {
      if (*(v12 + 48))
      {
        goto LABEL_48;
      }

      v16 = *(v12 + 32);
      if (!v16)
      {
        goto LABEL_49;
      }

      v17 = *(v16 + i);
      if (v17)
      {
        if ((v2 - v17) >> 16)
        {
          __break(1u);
          goto LABEL_38;
        }

        *(*(v9 + 24) + *(v9 + 32) - v3 + *(v16 + i + 4)) = v2 - v17;
        v14 = *(v12 + 80);
      }
    }
  }

  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  if (v3 > 0xFFFFFFFFLL)
  {
    goto LABEL_43;
  }

  v18 = *(v9 + 24);
  v19 = *(v9 + 32);
  v33 = v4;
  v34 = v4[4];
  v20 = *(v34 + 16);
  if (v20)
  {
    v21 = *(v18 + v19 - v3);
    v22 = (v34 + 32);
    while (1)
    {
      v23 = *v22++;
      v5 = v23;
      v24 = v19 - v23;
      if (*(v18 + v24) == v21 && !memcmp((v18 + v24), (v18 + v19 - v3), v21))
      {
        break;
      }

      if (!--v20)
      {
        goto LABEL_31;
      }
    }

    v25 = &v5[-v2];
    if (v25 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v25 <= 0x7FFFFFFF)
    {
      v26 = v19 - v2;
      *(v18 + v26) = v25;
      v27 = *(v9 + 32);
      v28 = v27 - v26;
      bzero((*(v9 + 24) + v27 - v3), v3 - (v27 - v26));
      v29 = v33;
      v33[2] = v28;
      goto LABEL_36;
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

LABEL_31:
  if (v3 - v2 < 0)
  {
    goto LABEL_44;
  }

  *(v18 + v19 - v2) = v3 - v2;
  v5 = v34;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_45:
    v5 = sub_2442DBE18(0, *(v5 + 2) + 1, 1, v5);
  }

  v31 = *(v5 + 2);
  v30 = *(v5 + 3);
  if (v31 >= v30 >> 1)
  {
    v5 = sub_2442DBE18((v30 > 1), v31 + 1, 1, v5);
  }

  *(v5 + 2) = v31 + 1;
  *&v5[4 * v31 + 32] = v3;
  v29 = v33;
  v33[4] = v5;
LABEL_36:
  *(v29 + 40) = 0;
  return v2;
}

Swift::Void __swiftcall FlatBufferBuilder.minAlignment(size:)(Swift::Int size)
{
  if (*(v1 + 64) < size)
  {
    *(v1 + 64) = size;
    *(v1 + 24) = size;
  }
}

Swift::UInt32 __swiftcall FlatBufferBuilder.padding(bufSize:elementSize:)(Swift::UInt32 bufSize, Swift::UInt32 elementSize)
{
  if (elementSize)
  {
    return (elementSize - 1) & -bufSize;
  }

  __break(1u);
  return bufSize;
}

void FlatBufferBuilder.preAlign<A>(len:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  if (v3[8] < v4)
  {
    v3[8] = v4;
    v3[3] = v4;
  }

  v5 = v3[2];
  if (v5 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a1 > 0xFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v4 | a1 | v5) < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v4 > 0xFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v6 = v4 != 0;
  v7 = v4 - 1;
  if (!v6)
  {
    goto LABEL_16;
  }

  v8 = v7 & -(a1 + v5);
  v9 = v5 + v8;
  if (*(v3[1] + 32) < v5 + v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v5, v3[3]);
  }

  v3[2] = v9;
}

Swift::Void __swiftcall FlatBufferBuilder.track(offset:at:)(Swift::UInt32 offset, Swift::UInt16 at)
{
  v3 = *v2;
  if (*(*v2 + 48))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v3 + 32);
    if (v4)
    {
      v5 = v4 + *(v3 + 80);
      *v5 = offset;
      *(v5 + 4) = at;
    }

    *(v3 + 72) = vaddq_s64(*(v3 + 72), xmmword_244316360);
    v6 = *(v3 + 64);
    if (v6 <= at)
    {
      LOWORD(v6) = at;
    }

    *(v3 + 64) = v6;
  }
}

Swift::Void __swiftcall FlatBufferBuilder.startVector(_:elementSize:)(Swift::Int _, Swift::Int elementSize)
{
  v3 = v2;
  *(v2 + 40) = 1;
  v5 = *(v2 + 64);
  if (v5 <= 3)
  {
    v5 = 4;
    *(v2 + 64) = 4;
    *(v2 + 24) = 4;
  }

  v6 = *(v2 + 16);
  if (v6 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = elementSize * _;
  if ((v6 | (elementSize * _)) < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v7 > 0xFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = (-v6 - v7) & 3;
  v9 = v8 + v6;
  v10 = *(v2 + 8);
  if (*(v10 + 32) < v8 + v6)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v6, v3[3]);
  }

  v3[2] = v9;
  if (v5 < elementSize)
  {
    v3[8] = elementSize;
    v3[3] = elementSize;
  }

  if (v9 > 0xFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if ((v9 | elementSize) < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (elementSize > 0xFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!elementSize)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v11 = (elementSize - 1) & -(v7 + v9);
  v12 = v9 + v11;
  if (*(v10 + 32) < v9 + v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v9, v3[3]);
  }

  v3[2] = v12;
}