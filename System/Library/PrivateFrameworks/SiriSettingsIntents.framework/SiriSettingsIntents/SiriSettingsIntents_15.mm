uint64_t sub_268EC234C(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268EC2534, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268EC2534()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268EC25F4(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "dialog1";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "dialog2";
  *(v2 + 32) = 7;
  *(v2 + 40) = 2;
  *(v2 + 48) = "dialog3";
  *(v2 + 56) = 7;
  *(v2 + 64) = 2;
  *(v2 + 72) = "dialog4";
  *(v2 + 80) = 7;
  *(v2 + 88) = 2;
  *(v2 + 96) = "dialog5";
  *(v2 + 104) = 7;
  *(v2 + 112) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_12:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_12;
    case 2:
      v5 = 2;
      goto LABEL_12;
    case 3:
      v5 = 3;
      goto LABEL_12;
    case 4:
      v5 = 4;
      goto LABEL_12;
  }

  return 5;
}

unint64_t sub_268EC2988()
{
  v2 = qword_2802DDE78;
  if (!qword_2802DDE78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EC2AD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EC25F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EC2B0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EC27F8(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268EC2B40(char a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 48) = v4;
  *(v5 + 40) = a4;
  *(v5 + 91) = a3 & 1;
  *(v5 + 90) = a2 & 1;
  *(v5 + 89) = a1 & 1;
  *(v5 + 16) = v5;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 88) = a1 & 1;
  *(v5 + 96) = a2 & 1;
  *(v5 + 104) = a3 & 1;
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  return MEMORY[0x2822009F8](sub_268EC2BF0, 0);
}

uint64_t sub_268EC2BF0()
{
  v21 = *(v0 + 40);
  v19 = *(v0 + 91);
  v17 = *(v0 + 90);
  v16 = *(v0 + 89);
  *(v0 + 16) = v0;
  v14 = sub_268F9AEF4();
  v15 = v1;
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v20 = v2;
  *v2 = sub_268F9AEF4();
  v20[1] = v3;
  v18 = MEMORY[0x277D839B0];
  v20[5] = MEMORY[0x277D839B0];
  *(v20 + 16) = v16;
  v20[6] = sub_268F9AEF4();
  v20[7] = v4;
  v20[11] = v18;
  *(v20 + 64) = v17;
  v20[12] = sub_268F9AEF4();
  v20[13] = v5;
  v20[17] = v18;
  *(v20 + 112) = v19;
  v20[18] = sub_268F9AEF4();
  v20[19] = v6;

  if (v21)
  {
    v12 = v13[5];
    v20[23] = type metadata accessor for SettingsBinarySetting(0);
    v20[20] = v12;
  }

  else
  {
    v20[20] = 0;
    v20[21] = 0;
    v20[22] = 0;
    v20[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v10 = sub_268F9B4F4();
  v13[8] = v10;
  v11 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v7 = swift_task_alloc();
  v13[9] = v7;
  v8 = sub_268EC2988();
  *v7 = v13[2];
  v7[1] = sub_268EC234C;

  return v11(v14, v15, v10, &unk_287995480, v8);
}

uint64_t sub_268EC2F30(char a1, char a2)
{
  *(v3 + 32) = v2;
  *(v3 + 74) = a2 & 1;
  *(v3 + 73) = a1 & 1;
  *(v3 + 16) = v3;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 24) = 0;
  *(v3 + 72) = a1 & 1;
  *(v3 + 80) = a2 & 1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_268EC2FB0, 0);
}

uint64_t sub_268EC2FB0()
{
  v11 = MEMORY[0x277D55C70];
  v10 = *(v0 + 74);
  v7 = *(v0 + 73);
  *(v0 + 16) = v0;
  v16 = sub_268F9AEF4();
  v13 = v1;
  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v9 = v2;
  *v2 = sub_268F9AEF4();
  v9[1] = v3;
  v8 = MEMORY[0x277D839B0];
  v9[5] = MEMORY[0x277D839B0];
  *(v9 + 16) = v7;
  v9[6] = sub_268F9AEF4();
  v9[7] = v4;
  v9[11] = v8;
  *(v9 + 64) = v10;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v14 = sub_268F9B4F4();
  *(v0 + 48) = v14;
  v15 = (v11 + *v11);
  v5 = swift_task_alloc();
  *(v12 + 56) = v5;
  *v5 = *(v12 + 16);
  v5[1] = sub_268EC31C0;

  return v15(v16, v13, v14);
}

uint64_t sub_268EC31C0(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268EC338C, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268EC338C()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268EC3444(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "dialog1";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "dialog2";
  *(v2 + 32) = 7;
  *(v2 + 40) = 2;
  *(v2 + 48) = "dialog3";
  *(v2 + 56) = 7;
  *(v2 + 64) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_8:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_8;
    case 2:
      v5 = 2;
      goto LABEL_8;
  }

  return 3;
}

unint64_t sub_268EC36D8()
{
  v2 = qword_2802DDE80;
  if (!qword_2802DDE80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EC3824@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EC3444(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EC385C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EC35C0(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268EC3890(char a1, char a2)
{
  *(v3 + 32) = v2;
  *(v3 + 74) = a2 & 1;
  *(v3 + 73) = a1 & 1;
  *(v3 + 16) = v3;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 24) = 0;
  *(v3 + 72) = a1 & 1;
  *(v3 + 80) = a2 & 1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_268EC3910, 0);
}

uint64_t sub_268EC3910()
{
  v12 = MEMORY[0x277D55C68];
  v11 = *(v0 + 74);
  v8 = *(v0 + 73);
  *(v0 + 16) = v0;
  v17 = sub_268F9AEF4();
  v14 = v1;
  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v2;
  *v2 = sub_268F9AEF4();
  v10[1] = v3;
  v9 = MEMORY[0x277D839B0];
  v10[5] = MEMORY[0x277D839B0];
  *(v10 + 16) = v8;
  v10[6] = sub_268F9AEF4();
  v10[7] = v4;
  v10[11] = v9;
  *(v10 + 64) = v11;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v15 = sub_268F9B4F4();
  *(v0 + 48) = v15;
  v16 = (v12 + *v12);
  v5 = swift_task_alloc();
  *(v13 + 56) = v5;
  v6 = sub_268EC36D8();
  *v5 = *(v13 + 16);
  v5[1] = sub_268EC31C0;

  return v16(v17, v14, v15, &unk_287995510, v6);
}

uint64_t type metadata accessor for SettingIntentCATsSimple(uint64_t a1)
{
  v2 = qword_280FE43A8;
  if (!qword_280FE43A8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268EC3BAC(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268EC3C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v22 = a2;
  v19 = a3;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v23 = sub_268F9AB24();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v15 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v4, v5, v6);
  v17 = &v14 - v15;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v7, v19, v8);
  v18 = &v14 - v16;
  v28 = v9;
  v27 = v10;
  v26 = v11;
  v29 = v3;
  sub_268CDC358(v9, &v14 - v16);
  (*(v20 + 16))(v17, v22, v23);
  MEMORY[0x277D82BE0](v19);
  v25 = sub_268F9A9D4();

  v29 = v25;
  v12 = MEMORY[0x277D82BD8](v19);
  (*(v20 + 8))(v22, v23, v12);
  sub_268CDC480(v24);

  return v25;
}

uint64_t sub_268EC3EB4(int a1, uint64_t a2)
{
  v10 = a1;
  v11 = a2;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v14 = sub_268F9AB24();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v8 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v14, v11, v14, v3);
  v9 = &v7 - v8;
  v17 = v10 & 1;
  v16 = v5;
  v18 = v2;
  (*(v12 + 16))(v4);
  v15 = sub_268F9A9E4();

  v18 = v15;
  (*(v12 + 8))(v11, v14);

  return v15;
}

uint64_t sub_268EC4010(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xE9)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 22) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 233;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 23;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268EC4178(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xE9)
  {
    v5 = ((a3 + 22) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xE9)
  {
    v4 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 22;
    }
  }

  return result;
}

uint64_t sub_268EC43D8(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF2)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 13) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 242;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 14;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268EC4540(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF2)
  {
    v5 = ((a3 + 13) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF2)
  {
    v4 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 13;
    }
  }

  return result;
}

unint64_t sub_268EC48D0()
{
  v2 = qword_2802DDE88;
  if (!qword_2802DDE88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4964()
{
  v2 = qword_2802DDE90;
  if (!qword_2802DDE90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC49F8()
{
  v2 = qword_2802DDE98;
  if (!qword_2802DDE98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4A8C()
{
  v2 = qword_2802DDEA0;
  if (!qword_2802DDEA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4B20()
{
  v2 = qword_2802DDEA8;
  if (!qword_2802DDEA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4BB4()
{
  v2 = qword_2802DDEB0;
  if (!qword_2802DDEB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4C48()
{
  v2 = qword_2802DDEB8;
  if (!qword_2802DDEB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4CDC()
{
  v2 = qword_2802DDEC0;
  if (!qword_2802DDEC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4D70()
{
  v2 = qword_2802DDEC8;
  if (!qword_2802DDEC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4E04()
{
  v2 = qword_2802DDED0;
  if (!qword_2802DDED0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDED0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4E98()
{
  v2 = qword_2802DDED8;
  if (!qword_2802DDED8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDED8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4F2C()
{
  v2 = qword_2802DDEE0;
  if (!qword_2802DDEE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4FC0()
{
  v2 = qword_2802DDEE8;
  if (!qword_2802DDEE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC5054()
{
  v2 = qword_2802DDEF0;
  if (!qword_2802DDEF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC50E8()
{
  v2 = qword_2802DDEF8;
  if (!qword_2802DDEF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC517C()
{
  v2 = qword_2802DDF00;
  if (!qword_2802DDF00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC5210()
{
  v2 = qword_2802DDF08;
  if (!qword_2802DDF08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC52A4()
{
  v2 = qword_2802DDF10;
  if (!qword_2802DDF10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC5338()
{
  v2 = qword_2802DDF18;
  if (!qword_2802DDF18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC53CC()
{
  v2 = qword_2802DDF20;
  if (!qword_2802DDF20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC5460()
{
  v2 = qword_2802DDF28;
  if (!qword_2802DDF28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC54F4()
{
  v2 = qword_2802DDF30;
  if (!qword_2802DDF30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC5588()
{
  v2 = qword_2802DDF38;
  if (!qword_2802DDF38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC561C()
{
  v2 = qword_2802DDF40;
  if (!qword_2802DDF40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF40);
    return WitnessTable;
  }

  return v2;
}

id sub_268EC5698(uint64_t a1, void *a2)
{
  v23 = a1;
  v22 = a2;
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_268E42694(&v20);
  if (v20 == 65)
  {
    v12 = 0uLL;
  }

  else
  {
    *&v12 = BinarySettingIdentifier.rawValue.getter();
    *(&v12 + 1) = v2;
  }

  v19 = v12;
  if (*(&v12 + 1))
  {
    v21 = v19;
  }

  else
  {
    sub_268E4262C();
    if (v18 == 13)
    {
      v11 = 0uLL;
    }

    else
    {
      *&v11 = NumericSettingIdentifier.rawValue.getter();
      *(&v11 + 1) = v3;
    }

    v17 = v11;
    if (*(&v11 + 1))
    {
      v21 = v17;
    }

    else
    {
      v10 = sub_268E491A0();
      if (v10 == 2)
      {
        v21 = 0uLL;
      }

      else
      {
        *&v21 = sub_268E4577C(v10 & 1);
        *(&v21 + 1) = v4;
      }
    }
  }

  v5 = v21;
  memset(v16, 0, sizeof(v16));
  v7 = sub_268EC5980();
  v8 = sub_268F284EC(v5, *(&v5 + 1), v16, v7, 0);
  MEMORY[0x277D82BD8](v7);
  sub_268D28414(v16);

  v9 = [v15 initWithSettingMetadata:v8 searchQuery:0];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BE0](v9);
  v24 = v9;
  sub_268D28414(a2);
  sub_268D87800(a1);
  MEMORY[0x277D82BD8](v24);
  return v9;
}

id sub_268EC5980()
{
  v3 = sub_268E49208();
  v4 = v0;
  if (!v0)
  {
    return 0;
  }

  if (sub_268EC5AA0(v3, v0))
  {
    sub_268DA9760();
    return sub_268DA9564(v3, v4, 0, 0, 0, 0);
  }

  else
  {
    sub_268DA9760();
    return sub_268DA9564(0, 0, 0, 0, v3, v4);
  }
}

uint64_t sub_268EC5AA0(uint64_t a1, uint64_t a2)
{
  v5[4] = 0;
  v5[5] = a1;
  v5[6] = a2;
  v5[2] = a1;
  v5[3] = a2;
  v5[0] = sub_268F9AEF4();
  v5[1] = v2;
  sub_268EC5B58();
  sub_268EC5BD0();
  v4 = sub_268F9ADF4();
  sub_268CD9D30(v5);
  return v4 & 1;
}

unint64_t sub_268EC5B58()
{
  v2 = qword_2802DDF48;
  if (!qword_2802DDF48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC5BD0()
{
  v2 = qword_2802DDF50;
  if (!qword_2802DDF50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF50);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268EC5C48()
{
  if (qword_280FE30E8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8040;
}

uint64_t sub_268EC5CA8()
{
  type metadata accessor for GetAnnounceNotificationsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8040 = result;
  return result;
}

uint64_t sub_268EC5D10()
{
  v1 = *sub_268EC5C48();

  return v1;
}

double sub_268EC5D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAnnounceNotificationsHandler handling intent", 47, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBBC84();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v19 = a1;
  v20 = v3;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268EC61D0, v18, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268EC5F5C(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v17 = [a1 settingMetadata];

  v18 = sub_268D415B8();

  if (v18)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v4 = sub_268D4AA1C();
  v14 = sub_268E41A08(v17, 0, v4, v15, 0, 0);
  MEMORY[0x277D82BD8](v17);
  v12 = sub_268F9B284();
  v5 = sub_268DC7AE8();
  v13 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v6;
  MEMORY[0x277D82BE0](v14);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v9 = sub_268F9AE74();
  v10 = v7;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC14(v12, &dword_268CBE000, v13, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v13);

  a3(v14);

  *&result = MEMORY[0x277D82BD8](v14).n128_u64[0];
  return result;
}

void sub_268EC6228()
{
  sub_268F9B734();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  v0[3] = 3;
  v0[4] = 4;
  sub_268CD0F7C();
}

void sub_268EC6540(char a1@<W0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v21 = 0;
  v22 = 0;
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v15 = sub_268F9AEF4();
        v16 = v3;

        v21 = v15;
        v22 = v16;

        v19 = v16;
        break;
      case 2:
        v13 = sub_268F9AEF4();
        v14 = v4;

        v21 = v13;
        v22 = v14;

        v19 = v14;
        break;
      case 3:
        v11 = sub_268F9AEF4();
        v12 = v5;

        v21 = v11;
        v22 = v12;

        v19 = v12;
        break;
      default:
        v9 = sub_268F9AEF4();
        v10 = v6;

        v21 = v9;
        v22 = v10;

        v19 = v10;
        break;
    }
  }

  else
  {
    v17 = sub_268F9AEF4();
    v18 = v2;

    v21 = v17;
    v22 = v18;

    v19 = v18;
  }

  if (v19)
  {
    sub_268F9A9A4();
    v7 = sub_268F9A9C4();
    (*(*(v7 - 8) + 56))(a2, 0, 1);
  }

  else
  {
    v8 = sub_268F9A9C4();
    (*(*(v8 - 8) + 56))(a2, 1);
  }

  sub_268CD9D30(&v21);
}

uint64_t sub_268EC68A8(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "password";
  *(v2 + 8) = 8;
  *(v2 + 16) = 2;
  *(v2 + 24) = "passwords";
  *(v2 + 32) = 9;
  *(v2 + 40) = 2;
  *(v2 + 48) = "privacy";
  *(v2 + 56) = 7;
  *(v2 + 64) = 2;
  *(v2 + 72) = "settings";
  *(v2 + 80) = 8;
  *(v2 + 88) = 2;
  *(v2 + 96) = "accessibility";
  *(v2 + 104) = 13;
  *(v2 + 112) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_12:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_12;
    case 2:
      v5 = 2;
      goto LABEL_12;
    case 3:
      v5 = 3;
      goto LABEL_12;
    case 4:
      v5 = 4;
      goto LABEL_12;
  }

  return 5;
}

unint64_t sub_268EC6B04()
{
  v2 = qword_2802DDF58;
  if (!qword_2802DDF58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EC6C50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268EC68A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268EC6C88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EC63FC(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268EC6D3C(uint64_t a1, uint64_t a2)
{
  sub_268EC6D94();
  sub_268EC6E10();
  sub_268EC6B04();
  return sub_268F9A4A4();
}

unint64_t sub_268EC6D94()
{
  v2 = qword_2802DDF60;
  if (!qword_2802DDF60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC6E10()
{
  v2 = qword_2802DDF68;
  if (!qword_2802DDF68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC6EB8()
{
  v2 = qword_2802DDF70;
  if (!qword_2802DDF70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC6F4C()
{
  v2 = qword_2802DDF78;
  if (!qword_2802DDF78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC6FE0()
{
  v2 = qword_2802DDF80;
  if (!qword_2802DDF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC928, &unk_268F9FE70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC7080()
{
  v2 = qword_2802DDF88;
  if (!qword_2802DDF88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EC70FC()
{
  type metadata accessor for SetReduceLoudSoundsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1628 = result;
  return result;
}

uint64_t *sub_268EC7164()
{
  if (qword_2802DB7A0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1628;
}

uint64_t sub_268EC71C4()
{
  v1 = *sub_268EC7164();

  return v1;
}

uint64_t sub_268EC71F4(uint64_t a1, void (*a2)(void))
{
  v4 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v5 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v4, &dword_268CBE000, v5, "SetReduceLoudSoundsHandler handling intent", 42, 2);

  MEMORY[0x277D82BD8](v5);

  sub_268CD795C();
  v7 = sub_268CD42AC(7, 0);
  a2();
  MEMORY[0x277D82BD8](v7);
}

uint64_t sub_268EC734C()
{
  type metadata accessor for SetVpnHandler();
  result = sub_268CDA260();
  qword_2802F1630 = result;
  return result;
}

uint64_t *sub_268EC73A8()
{
  if (qword_2802DB7A8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1630;
}

uint64_t sub_268EC7408()
{
  v1 = *sub_268EC73A8();

  return v1;
}

uint64_t sub_268EC7438(uint64_t a1, void (*a2)(id))
{
  v5 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v6 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v5, &dword_268CBE000, v6, "SetVpnHandler handling intent; Siri cannot change setting: VPN", 62, 2);

  MEMORY[0x277D82BD8](v6);

  v7 = sub_268E948B8(17);
  v9 = sub_268DAB158(0, v7, v3);

  a2(v9);
  MEMORY[0x277D82BD8](v9);
}

uint64_t sub_268EC761C()
{
  v0 = sub_268DB61E0();
  v2 = *v0;
  result = MEMORY[0x277D82BE0](*v0);
  qword_2802F1638 = v2;
  return result;
}

uint64_t *sub_268EC765C()
{
  if (qword_2802DB7B0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1638;
}

uint64_t sub_268EC76BC()
{
  v0 = sub_268EC765C();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268EC7734(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = v5;

  v5[12] = a3;
  sub_268CDE730(a1, v16);
  sub_268CDF978(v16, v5 + 2);
  sub_268CDE730(a2, v15);
  sub_268CDF978(v15, v5 + 7);
  sub_268CDE730(a4, v14);
  sub_268CDF978(v14, v5 + 13);
  sub_268CDE730(a5, v13);
  sub_268CDF978(v13, v5 + 18);
  __swift_destroy_boxed_opaque_existential_0(a5);
  __swift_destroy_boxed_opaque_existential_0(a4);

  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

uint64_t sub_268EC7858@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_268F9B284();
  v3 = sub_268DC98C0();
  v8 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v7, &dword_268CBE000, v8, "OpenSettingHandleIntentFlowStrategy: makeSiriKitIntentHandler.", 62, 2);

  MEMORY[0x277D82BD8](v8);

  v4 = sub_268EC765C();
  MEMORY[0x277D82BE0](*v4);
  MEMORY[0x277D82BE0](a2);
  sub_268DA96FC();
  sub_268F99694();
  v5 = sub_268F996A4();
  return (*(*(v5 - 8) + 56))(a3, 0, 1);
}

uint64_t sub_268EC79C0(uint64_t a1, uint64_t a2)
{
  v3[34] = v2;
  v3[33] = a2;
  v3[32] = a1;
  v3[27] = v3;
  v3[28] = 0;
  v3[29] = 0;
  v3[31] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
  v3[35] = swift_task_alloc();
  v3[36] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v3[37] = swift_task_alloc();
  v4 = sub_268F999F4();
  v3[38] = v4;
  v3[39] = *(v4 - 8);
  v3[40] = swift_task_alloc();
  sub_268F99834();
  v3[41] = swift_task_alloc();
  v5 = sub_268F99BC4();
  v3[42] = v5;
  v3[43] = *(v5 - 8);
  v3[44] = swift_task_alloc();
  v3[28] = a2;
  v3[29] = v2;

  return MEMORY[0x2822009F8](sub_268EC7BFC, 0);
}

uint64_t sub_268EC7BFC(uint64_t a1)
{
  v25 = v1[34];
  v1[27] = v1;
  v23 = sub_268F9B284();
  v2 = sub_268DC98C0();
  v24 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v23, &dword_268CBE000, v24, "OpenSettingHandleIntentFlowStrategy: makeIntentHandledResponse.", 63, 2);

  MEMORY[0x277D82BD8](v24);
  sub_268CDE730(v25 + 104, (v1 + 2));
  v27 = v1[5];
  v26 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v27);
  v28 = (*(v26 + 16))(v27);
  __swift_destroy_boxed_opaque_existential_0(v1 + 2);
  if (v28)
  {
    v22[45] = *(v22[34] + 96);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDF90, &qword_268FA98F0);
    v21 = sub_268F99B34();
    v22[46] = v21;
    v19 = sub_268F99B44();
    v22[47] = v19;
    v20 = sub_268F99B24();
    v22[48] = v20;
    v3 = swift_task_alloc();
    v22[49] = v3;
    *v3 = v22[27];
    v3[1] = sub_268EC829C;

    return sub_268E71398(v21, v19, v20);
  }

  else
  {
    v17 = v22[40];
    v13 = v22[37];
    v18 = v22[36];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDF90, &qword_268FA98F0);
    v16 = sub_268F99B34();
    v15 = sub_268F99B44();
    v14 = sub_268F99B24();
    sub_268E6D858(v16, v15, v14, v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);

    sub_268D2DFAC(v18, (v22 + 30), v17);
    v11 = v22[40];
    v12 = v22[38];
    v9 = v22[35];
    v7 = v22[34];
    v8 = v22[32];
    v10 = v22[39];
    sub_268CDE730(v7 + 16, (v22 + 7));
    sub_268CDE730(v7 + 16, (v22 + 12));
    __swift_project_boxed_opaque_existential_1(v22 + 12, v22[15]);
    sub_268F997C4();
    sub_268D34954();
    sub_268F9B734();
    v5 = sub_268F999A4();
    (*(*(v5 - 8) + 56))(v9, 1);
    v22[17] = 0;
    v22[18] = 0;
    v22[19] = 0;
    v22[20] = 0;
    v22[21] = 0;
    sub_268CDD6D4();
    _swift_stdlib_has_malloc_size();
    sub_268D31B10();
    v8[3] = sub_268F99C74();
    v8[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v8);
    sub_268F998D4();

    sub_268D28414(v22 + 17);
    sub_268D34AC0(v9);

    __swift_destroy_boxed_opaque_existential_0(v22 + 12);
    __swift_destroy_boxed_opaque_existential_0(v22 + 7);
    (*(v10 + 8))(v11, v12);

    v6 = *(v22[27] + 8);

    return v6();
  }
}

uint64_t sub_268EC829C(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 216) = *v2;
  *(v6 + 400) = a1;
  *(v6 + 408) = v1;

  if (v1)
  {
    v3 = sub_268EC8854;
  }

  else
  {
    v5 = *(v6 + 376);

    v3 = sub_268EC8450;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EC8450(uint64_t a1)
{
  v2 = v1[50];
  v8 = v1[34];
  v1[27] = v1;
  v1[31] = v2;
  sub_268F99804();
  sub_268D18250();

  sub_268F99B94();

  sub_268CDE730(v8 + 144, (v1 + 22));
  v10 = v1[25];
  v11 = v1[26];
  __swift_project_boxed_opaque_existential_1(v1 + 22, v10);
  v3 = swift_task_alloc();
  v9[52] = v3;
  *v3 = v9[27];
  v3[1] = sub_268EC85AC;
  v4 = v9[50];
  v5 = v9[44];
  v6 = v9[32];

  return MEMORY[0x2821BB480](v6, v4, v5, v10, v11);
}

uint64_t sub_268EC85AC()
{
  v4 = *v1;
  *(v4 + 216) = *v1;
  *(v4 + 424) = v0;

  if (v0)
  {
    v2 = sub_268EC8980;
  }

  else
  {
    v2 = sub_268EC8714;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_268EC8714()
{
  v6 = v0[50];
  v4 = v0[44];
  v3 = v0[43];
  v5 = v0[42];
  v0[27] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  (*(v3 + 8))(v4, v5);
  MEMORY[0x277D82BD8](v6);

  v1 = *(v0[27] + 8);

  return v1();
}

uint64_t sub_268EC8854()
{
  v1 = v0[48];
  v4 = v0[47];
  v0[27] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);

  v2 = *(v0[27] + 8);

  return v2();
}

uint64_t sub_268EC8980()
{
  v6 = v0[50];
  v4 = v0[44];
  v3 = v0[43];
  v5 = v0[42];
  v0[27] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  (*(v3 + 8))(v4, v5);
  MEMORY[0x277D82BD8](v6);

  v1 = *(v0[27] + 8);

  return v1();
}

uint64_t sub_268EC8AC0(uint64_t a1, uint64_t a2)
{
  v3[34] = v2;
  v3[33] = a2;
  v3[32] = a1;
  v3[27] = v3;
  v3[28] = 0;
  v3[29] = 0;
  v3[31] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
  v3[35] = swift_task_alloc();
  v3[36] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v3[37] = swift_task_alloc();
  v4 = sub_268F999F4();
  v3[38] = v4;
  v3[39] = *(v4 - 8);
  v3[40] = swift_task_alloc();
  sub_268F99834();
  v3[41] = swift_task_alloc();
  v5 = sub_268F99BC4();
  v3[42] = v5;
  v3[43] = *(v5 - 8);
  v3[44] = swift_task_alloc();
  v3[28] = a2;
  v3[29] = v2;

  return MEMORY[0x2822009F8](sub_268EC8CFC, 0);
}

uint64_t sub_268EC8CFC(uint64_t a1)
{
  v24 = v1[34];
  v1[27] = v1;
  v22 = sub_268F9B284();
  v2 = sub_268DC98C0();
  v23 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v22, &dword_268CBE000, v23, "OpenSettingHandleIntentFlowStrategy: makeFailureHandlingIntentResponse.", 71, 2);

  MEMORY[0x277D82BD8](v23);
  sub_268CDE730(v24 + 104, (v1 + 2));
  v26 = v1[5];
  v25 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v26);
  v27 = (*(v25 + 16))(v26);
  __swift_destroy_boxed_opaque_existential_0(v1 + 2);
  if (v27)
  {
    v21[45] = *(v21[34] + 96);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDF90, &qword_268FA98F0);
    v20 = sub_268F99B34();
    v21[46] = v20;
    v18 = sub_268F99B44();
    v21[47] = v18;
    v19 = sub_268F99B24();
    v21[48] = v19;
    v3 = swift_task_alloc();
    v21[49] = v3;
    *v3 = v21[27];
    v3[1] = sub_268EC829C;

    return sub_268E746C4(v20, v18, v19);
  }

  else
  {
    v16 = v21[40];
    v13 = v21[37];
    v17 = v21[36];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDF90, &qword_268FA98F0);
    sub_268F99B34();
    v15 = sub_268F99B44();
    v14 = sub_268F99B24();
    sub_268E6F510(v15, v14, v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);

    sub_268D2DFAC(v17, (v21 + 30), v16);
    v11 = v21[40];
    v12 = v21[38];
    v9 = v21[35];
    v7 = v21[34];
    v8 = v21[32];
    v10 = v21[39];
    sub_268CDE730(v7 + 16, (v21 + 7));
    sub_268CDE730(v7 + 16, (v21 + 12));
    __swift_project_boxed_opaque_existential_1(v21 + 12, v21[15]);
    sub_268F997C4();
    sub_268D34954();
    sub_268F9B734();
    v5 = sub_268F999A4();
    (*(*(v5 - 8) + 56))(v9, 1);
    v21[17] = 0;
    v21[18] = 0;
    v21[19] = 0;
    v21[20] = 0;
    v21[21] = 0;
    sub_268CDD6D4();
    _swift_stdlib_has_malloc_size();
    sub_268D31B10();
    v8[3] = sub_268F99C74();
    v8[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v8);
    sub_268F998D4();

    sub_268D28414(v21 + 17);
    sub_268D34AC0(v9);

    __swift_destroy_boxed_opaque_existential_0(v21 + 12);
    __swift_destroy_boxed_opaque_existential_0(v21 + 7);
    (*(v10 + 8))(v11, v12);

    v6 = *(v21[27] + 8);

    return v6();
  }
}

uint64_t sub_268EC939C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  return v2;
}

uint64_t sub_268EC9434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for OpenSettingHandleIntentFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C68](a1, a2, v6, a4);
}

uint64_t sub_268EC9530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for OpenSettingHandleIntentFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C70](a1, a2, v6, a4);
}

uint64_t sub_268EC9604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for OpenSettingHandleIntentFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C48](a1, a2, v6, a4);
}

uint64_t sub_268EC96D8(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D34238;

  return sub_268EC79C0(a1, a2);
}

uint64_t sub_268EC9798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for OpenSettingHandleIntentFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C60](a1, a2, v6, a4);
}

uint64_t sub_268EC986C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  v6 = type metadata accessor for OpenSettingHandleIntentFlowStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9C58](a1, a2, v6, a4);
}

uint64_t sub_268EC9940(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D34238;

  return sub_268EC8AC0(a1, a2);
}

uint64_t sub_268EC9A18(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for OpenSettingHandleIntentFlowStrategy();
  v2 = sub_268EC9AC0();
  v3 = sub_268E04070(a1, a2, v7, v2);
  v4 = *(v9 + 8);

  return v4(v3);
}

unint64_t sub_268EC9AC0()
{
  v2 = qword_2802DDF98;
  if (!qword_2802DDF98)
  {
    type metadata accessor for OpenSettingHandleIntentFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC9B40(uint64_t a1)
{
  result = sub_268EC9B6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268EC9B6C()
{
  v2 = qword_2802DDFA0;
  if (!qword_2802DDFA0)
  {
    type metadata accessor for OpenSettingHandleIntentFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDFA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268EC9C04()
{
  if (qword_280FE39C8 != -1)
  {
    swift_once();
  }

  return &qword_280FE80D0;
}

uint64_t sub_268EC9C64()
{
  type metadata accessor for GetReduceLoudSoundsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE80D0 = result;
  return result;
}

uint64_t sub_268EC9CCC()
{
  v1 = *sub_268EC9C04();

  return v1;
}

uint64_t sub_268EC9CFC(uint64_t a1, void (*a2)(void))
{
  v4 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v5 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v4, &dword_268CBE000, v5, "GetReduceLoudSoundsHandler handling intent", 42, 2);

  MEMORY[0x277D82BD8](v5);

  v7 = sub_268E419BC(6);
  a2();
  MEMORY[0x277D82BD8](v7);
}

uint64_t sub_268EC9F30()
{
  v2 = *(v0 + qword_2802DDFA8);

  return v2;
}

uint64_t sub_268EC9F64@<X0>(uint64_t a1@<X8>)
{
  v4 = qword_2802DDFB0;
  v2 = sub_268F9AB24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_268EC9FD0()
{
  v2 = *(v0 + qword_2802DDFB8);

  return v2;
}

uint64_t sub_268ECA004()
{
  v2 = *(v0 + qword_2802DDFC0);

  return v2;
}

uint64_t sub_268ECA060()
{
  v2 = *(v0 + qword_2802DDFD0);

  return v2;
}

uint64_t sub_268ECA094()
{
  v2 = *(v0 + qword_2802DDFD8);

  return v2;
}

uint64_t sub_268ECA0F0()
{
  v2 = *(v0 + qword_2802DDFE8);

  return v2;
}

uint64_t sub_268ECA124()
{
  v2 = *(v0 + qword_2802DDFF0);

  return v2;
}

uint64_t sub_268ECA180()
{
  v2 = *(v0 + qword_2802DE000);

  return v2;
}

uint64_t sub_268ECA1B4()
{
  v2 = *(v0 + qword_2802DE008);

  return v2;
}

uint64_t sub_268ECA1E8()
{
  v2 = *(v0 + qword_2802DE010);

  return v2;
}

uint64_t sub_268ECA21C()
{
  v2 = *(v0 + qword_2802DE018);

  return v2;
}

uint64_t sub_268ECA250()
{
  v2 = *(v0 + qword_2802DE020);

  return v2;
}

uint64_t sub_268ECA284()
{
  v2 = *(v0 + qword_2802DE028);

  return v2;
}

uint64_t sub_268ECA2E0()
{
  v2 = *(v0 + qword_2802DE038);

  return v2;
}

uint64_t sub_268ECA314()
{

  v1 = sub_268F9AA34();

  return v1 & 1;
}

uint64_t sub_268ECA3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v135 = a1;
  v144 = a2;
  v136 = a3;
  v137 = a4;
  v138 = a5;
  v139 = a6;
  v145 = a7;
  v140 = a8;
  v141 = a9;
  v142 = a10;
  v149 = a11;
  v150 = a12;
  v151 = a13;
  v143 = a14;
  v189 = 0;
  v187 = 0;
  v188 = 0;
  v185 = 0;
  v186 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v180 = 0;
  v179 = 0;
  v178 = 0;
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v153 = *v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC060, &unk_268F9D980);
  v133 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15, v16, v17, v18);
  v134 = &v64 - v133;
  v146 = sub_268F9AB24();
  v147 = *(v146 - 8);
  v148 = v146 - 8;
  v152 = (*(v147 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = MEMORY[0x28223BE20](v145, v144, v136, v137);
  v154 = &v64 - v152;
  v191 = *(v153 + qword_2802F1640);
  v190 = *(v153 + qword_2802F1640 + 8);
  v187 = v20;
  v188 = v21;
  v185 = v22;
  v186 = v23;
  v184 = v24;
  v183 = v25;
  v182 = v26;
  v181 = v27;
  v180 = v28;
  v179 = v29;
  v178 = v149;
  v177 = v150;
  v176 = v151;
  v175 = v30;
  v189 = v14;
  v155 = v14;
  if (MEMORY[0x26D62DA00](v19))
  {
    v130 = sub_268F99874();
    v131 = sub_268F9B594();

    v132 = v131;
  }

  else
  {

    v132 = v145;
  }

  v31 = v146;
  v32 = v154;
  v33 = v147;
  v34 = v140;
  *(v155 + qword_2802DDFA8) = v132;
  v124 = v189;
  v122 = *(v33 + 16);
  v123 = v33 + 16;
  v122(v32, v34, v31);
  (*(v147 + 32))(v124 + qword_2802DDFB0, v154, v146);
  v126 = v189;
  sub_268F9AA44();
  v125 = v174;
  sub_268CDE730(v139, v174);
  *(v126 + qword_2802DDFB8) = sub_268F9AA14();
  sub_268F9AB14();
  sub_268CDF9B4();
  v129 = sub_268F9B8A4();
  v127 = *(v147 + 8);
  v128 = v147 + 8;
  v127(v154, v146);
  if (v129)
  {
    v95 = v189;
    v118 = 0;
    v94 = type metadata accessor for SetNumericSettingIntentCATs(0);
    v122(v154, v140, v146);
    v116 = sub_268F9A8C4();
    v93 = v167;
    sub_268CDE730(v139, v167);
    sub_268F9A894();
    v35 = sub_268F9A904();
    v36 = v118;
    *(v95 + qword_2802DDFD8) = v35;
    v98 = v189;
    v97 = type metadata accessor for SetBinarySettingIntentCATs(v36);
    v122(v154, v140, v146);
    v96 = v166;
    sub_268CDE730(v139, v166);
    sub_268F9A894();
    v37 = sub_268F9A904();
    v38 = v118;
    *(v98 + qword_2802DDFC0) = v37;
    v101 = v189;
    v100 = type metadata accessor for SettingIntentCATs(v38);
    v122(v154, v140, v146);
    v99 = v165;
    sub_268CDE730(v139, v165);
    sub_268F9A894();
    v39 = sub_268F9A904();
    v40 = v118;
    *(v101 + qword_2802DDFF0) = v39;
    v104 = v189;
    v103 = type metadata accessor for SetNumericSettingIntentCATPatternsExecutor(v40);
    v122(v154, v140, v146);
    v102 = v163;
    sub_268CDE730(v139, v163);
    sub_268F9A894();
    v41 = sub_268F9A904();
    v164[3] = v103;
    v164[4] = &off_287998918;
    v164[0] = v41;
    sub_268CDF978(v164, v104 + qword_2802DDFE0);
    v107 = v189;
    v106 = type metadata accessor for SetBinarySettingIntentCATPatternsExecutor(v118);
    v122(v154, v140, v146);
    v105 = v161;
    sub_268CDE730(v139, v161);
    sub_268F9A894();
    v42 = sub_268F9A904();
    v162[3] = v106;
    v162[4] = &off_28798CE80;
    v162[0] = v42;
    sub_268CDF978(v162, v107 + qword_2802DDFC8);
    v110 = v189;
    v109 = type metadata accessor for SettingIntentCATPatternsExecutor(v118);
    v122(v154, v140, v146);
    v108 = v159;
    sub_268CDE730(v139, v159);
    sub_268F9A894();
    v43 = sub_268F9A904();
    v160[3] = v109;
    v160[4] = &off_287992048;
    v160[0] = v43;
    sub_268CDF978(v160, v110 + qword_2802DDFF8);
    v113 = v189;
    v112 = type metadata accessor for SetNumericSettingIntentCATsSimple(v118);
    v122(v154, v140, v146);
    v111 = v158;
    sub_268CDE730(v139, v158);
    sub_268F9A894();
    v44 = sub_268F9A9F4();
    v45 = v118;
    *(v113 + qword_2802DDFE8) = v44;
    v117 = v189;
    v115 = type metadata accessor for SetBinarySettingIntentCATsSimple(v45);
    v122(v154, v140, v146);
    v114 = v157;
    sub_268CDE730(v139, v157);
    sub_268F9A894();
    v46 = sub_268F9A9F4();
    v47 = v118;
    *(v117 + qword_2802DDFD0) = v46;
    v121 = v189;
    v120 = type metadata accessor for SettingIntentCATsSimple(v47);
    v122(v154, v140, v146);
    v119 = v156;
    sub_268CDE730(v139, v156);
    sub_268F9A894();
    *(v121 + qword_2802DE000) = sub_268F9A9F4();
  }

  else
  {
    v80 = v189;
    v91 = 0;
    type metadata accessor for SetNumericSettingIntentCATs(0);
    sub_268CDFA34();
    v48 = sub_268F9A904();
    v49 = v91;
    *(v80 + qword_2802DDFD8) = v48;
    v81 = v189;
    type metadata accessor for SetBinarySettingIntentCATs(v49);
    sub_268CDFA34();
    v50 = sub_268F9A904();
    v51 = v91;
    *(v81 + qword_2802DDFC0) = v50;
    v82 = v189;
    type metadata accessor for SettingIntentCATs(v51);
    sub_268CDFA34();
    v52 = sub_268F9A904();
    v53 = v91;
    *(v82 + qword_2802DDFF0) = v52;
    v84 = v189;
    v83 = type metadata accessor for SetNumericSettingIntentCATPatternsExecutor(v53);
    sub_268CDFA34();
    v54 = sub_268F9A904();
    v173[3] = v83;
    v173[4] = &off_287998918;
    v173[0] = v54;
    sub_268CDF978(v173, v84 + qword_2802DDFE0);
    v86 = v189;
    v85 = type metadata accessor for SetBinarySettingIntentCATPatternsExecutor(v91);
    sub_268CDFA34();
    v55 = sub_268F9A904();
    v172[3] = v85;
    v172[4] = &off_28798CE80;
    v172[0] = v55;
    sub_268CDF978(v172, v86 + qword_2802DDFC8);
    v88 = v189;
    v87 = type metadata accessor for SettingIntentCATPatternsExecutor(v91);
    sub_268CDFA34();
    v56 = sub_268F9A904();
    v171[3] = v87;
    v171[4] = &off_287992048;
    v171[0] = v56;
    sub_268CDF978(v171, v88 + qword_2802DDFF8);
    v89 = v189;
    type metadata accessor for SetNumericSettingIntentCATsSimple(v91);
    sub_268CDFA34();
    v57 = sub_268F9A9F4();
    v58 = v91;
    *(v89 + qword_2802DDFE8) = v57;
    v90 = v189;
    type metadata accessor for SetBinarySettingIntentCATsSimple(v58);
    sub_268CDFA34();
    v59 = sub_268F9A9F4();
    v60 = v91;
    *(v90 + qword_2802DDFD0) = v59;
    v92 = v189;
    type metadata accessor for SettingIntentCATsSimple(v60);
    sub_268CDFA34();
    *(v92 + qword_2802DE000) = sub_268F9A9F4();
  }

  v65 = v189;

  *(v65 + qword_2802DE008) = v141;
  v66 = v189;

  *(v66 + qword_2802DE010) = v142;
  v67 = v189;

  *(v67 + qword_2802DE018) = v149;
  v68 = v189;

  *(v68 + qword_2802DE020) = v150;
  v69 = v189;

  v61 = v139;
  *(v69 + qword_2802DE028) = v151;
  v70 = v189;
  v71 = v170;
  sub_268CDE730(v61, v170);
  sub_268CDF978(v71, v70 + qword_2802DE030);
  v72 = v189;

  *(v72 + qword_2802DE038) = v143;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC068, &qword_268FA5B90);
  v75 = 0;
  v74 = sub_268F9B734();
  v73 = type metadata accessor for INIntentSlotValueType(v75);
  sub_268CDFA4C();
  v76 = sub_268F9ADA4();
  v77 = v169;
  sub_268CDE730(v138, v169);
  v78 = v168;
  sub_268CDE730(v139, v168);
  v62 = sub_268F99BD4();
  (*(*(v62 - 8) + 56))(v134, 1);
  v79 = sub_268F99AA4();

  v189 = v79;

  v127(v140, v146);

  __swift_destroy_boxed_opaque_existential_0(v139);
  __swift_destroy_boxed_opaque_existential_0(v138);

  return v79;
}

uint64_t sub_268ECB1A8(uint64_t a1, void *a2, void *a3, void (*a4)(id *), uint64_t a5)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v19 = a5;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v13 = *v5;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v15, v16, v17);
  v18 = (&v12 - v12);
  v27 = v6;
  v26 = v7;
  v25 = v8;
  v23 = v9;
  v24 = v10;
  v22 = v5;
  v21 = *(v13 + qword_2802F1640);
  v20 = *(v13 + qword_2802F1640 + 8);

  sub_268ECB5EC(v14, v15, v16, v18);
  v17(v18);
  sub_268D28378(v18);
}

double sub_268ECB31C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  MEMORY[0x277D82BE0](a3);
  [a3 _intentResponseCode];
  MEMORY[0x277D82BD8](a3);
  type metadata accessor for INIntentResponseCode(0);
  sub_268ECCA4C();
  if (sub_268F9B754())
  {
    MEMORY[0x277D82BE0](a3);
    sub_268ECB5EC(a2, a1, a3, a4);
  }

  else
  {
    MEMORY[0x277D82BE0](a3);
    sub_268ECE950(a1, a3, a4);
  }

  *&result = MEMORY[0x277D82BD8](a3).n128_u64[0];
  return result;
}

uint64_t sub_268ECB4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = v4;
  v5[10] = a4;
  v5[9] = a3;
  v5[8] = a2;
  v5[7] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = v4;
  return MEMORY[0x2822009F8](sub_268ECB544, 0);
}

uint64_t sub_268ECB544()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[8];
  v4 = v0[7];
  v0[2] = v0;
  sub_268ECB5EC(v3, v2, v1, v4);
  v5 = *(v0[2] + 8);

  return v5();
}

uint64_t sub_268ECB5EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v139 = a4;
  v148 = a1;
  v170 = a2;
  v171 = a3;
  v167 = "processIntentHandled: handling intent with SetNumericSettingIntentResponse:  %@";
  v165 = &dword_268CBE000;
  v141 = "SetNumericSettingIntentResponse response has invalid updated value %@";
  v142 = "SetNumericSettingIntentResponse response has invalid old value %@";
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  v185 = 0;
  v186 = 0;
  v187 = 0;
  v183 = 0;
  v181 = 0;
  v180 = 0;
  v178 = 0;
  v155 = *v4;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v144 = (*(*(v143 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v143, v5, v6, v7);
  v145 = (v61 - v144);
  v146 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61 - v144, v9, v10, v11);
  v147 = (v61 - v146);
  v193 = v61 - v146;
  v149 = sub_268F9AB24();
  v150 = *(v149 - 8);
  v151 = v149 - 8;
  v152 = (*(v150 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v148, v170, v171, v12);
  v153 = v61 - v152;
  v154 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v15, v16, v61 - v152);
  v156 = v61 - v154;
  v192 = v17;
  v191 = v18;
  v190 = v19;
  v189 = v4;
  v188[2] = *(v155 + qword_2802F1640);
  v188[1] = *(v155 + qword_2802F1640 + 8);
  v169 = *sub_268DC858C();
  MEMORY[0x277D82BE0](v169);
  v166 = sub_268F9B284();
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v163 = sub_268F9B734();
  v161 = v20;
  MEMORY[0x277D82BE0](v171);
  v157 = v188;
  v188[0] = v171;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
  v159 = sub_268F9AE64();
  v160 = v21;
  v161[3] = MEMORY[0x277D837D0];
  v22 = sub_268CDD224();
  v23 = v159;
  v24 = v160;
  v25 = v161;
  v164 = v22;
  v161[4] = v22;
  *v25 = v23;
  v25[1] = v24;
  sub_268CD0F7C();
  v168 = v26;
  sub_268F9AC04(v167, 79, 2, v165, v169, v166);

  MEMORY[0x277D82BD8](v169);
  v172 = sub_268EE21E8(v170, v171);
  v173 = v27;
  v174 = v28;
  if (!v27)
  {
    sub_268EE278C();
    v61[1] = 1;
    v58 = swift_allocError();
    v59 = v139;
    *v60 = 4;
    *v59 = v58;
    return swift_storeEnumTagMultiPayload();
  }

  v136 = v172;
  v137 = v173;
  v138 = v174;
  v133 = v174;
  v134 = v173;
  v135 = v172;
  v185 = v172;
  v186 = v173;
  v187 = v174;
  MEMORY[0x277D82BE0](v171);
  if (v171)
  {
    v132 = v171;
    v131 = v171;
    v29 = [v171 oldValue];
    v175 = v29;
    if (v29)
    {
      v127 = &v175;
      v128 = v175;
      MEMORY[0x277D82BE0](v175);
      sub_268D35038(v127);
      *&v30 = MEMORY[0x277D82BD8](v131).n128_u64[0];
      v129 = [v128 value];
      MEMORY[0x277D82BD8](v128);
      v130 = v129;
      goto LABEL_8;
    }

    sub_268D35038(&v175);
    MEMORY[0x277D82BD8](v131);
  }

  v130 = 0;
LABEL_8:
  v126 = v130;
  if (!v130)
  {
    v66 = *sub_268DC858C();
    MEMORY[0x277D82BE0](v66);
    v64 = sub_268F9B294();
    v63 = sub_268F9B734();
    v62 = v49;
    MEMORY[0x277D82BE0](v171);
    v184 = v171;
    v50 = sub_268F9AE64();
    v51 = v164;
    v52 = v62;
    v62[3] = MEMORY[0x277D837D0];
    v52[4] = v51;
    *v52 = v50;
    v52[1] = v53;
    sub_268CD0F7C();
    v65 = v54;
    sub_268F9AC04(v142, 65, 2, v165, v66, v64);

    MEMORY[0x277D82BD8](v66);
    sub_268EE278C();
    v67 = 1;
    v55 = swift_allocError();
    v56 = v139;
    *v57 = 3;
    *v56 = v55;
    swift_storeEnumTagMultiPayload();
  }

  v125 = v126;
  v124 = v126;
  v183 = v126;
  MEMORY[0x277D82BE0](v171);
  if (v171)
  {
    v123 = v171;
    v122 = v171;
    v31 = [v171 updatedValue];
    v176 = v31;
    if (v31)
    {
      v118 = &v176;
      v119 = v176;
      MEMORY[0x277D82BE0](v176);
      sub_268D35038(v118);
      *&v32 = MEMORY[0x277D82BD8](v122).n128_u64[0];
      v120 = [v119 value];
      MEMORY[0x277D82BD8](v119);
      v121 = v120;
      goto LABEL_15;
    }

    sub_268D35038(&v176);
    MEMORY[0x277D82BD8](v122);
  }

  v121 = 0;
LABEL_15:
  v117 = v121;
  if (v121)
  {
    v116 = v117;
    v33 = v156;
    v115 = v117;
    v181 = v117;
    v34 = sub_268DB98D4();
    v109 = *v34;
    v110 = v34[1];
    v111 = *(v34 + 16);
    v112 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v112);
    (*(v150 + 16))(v33, v140 + qword_2802DDFB0, v149);
    sub_268F9AB14();
    v108 = sub_268F9AB04();
    v107 = *(v150 + 8);
    v106 = v150 + 8;
    v107(v153, v149);
    v107(v156, v149);
    v114 = 1;
    sub_268DB9934(v109, v110, v111, v112, (v108 ^ 1) & 1);
    MEMORY[0x277D82BD8](v112);
    type metadata accessor for SettingsNumericSetting(0);

    MEMORY[0x277D82BE0](v124);
    v113 = SettingsNumericSetting.__allocating_init(settingId:value:)(v135, v134, v124);
    v180 = v113;
    sub_268EE278C();
    v35 = swift_allocError();
    v36 = v147;
    *v37 = 1;
    *v36 = v35;
    swift_storeEnumTagMultiPayload();
    if (sub_268EE3214(v124))
    {
      if (sub_268EE32A8([v170 action]))
      {
        v105 = *(v140 + qword_2802DDFD8);

        v104 = *(v140 + qword_2802DDFB8);

        sub_268E61560(v113, v133, v104);
      }

      else
      {
        v103 = *(v140 + qword_2802DDFD8);

        v98 = &qword_2802DE000;
        v97 = *(v140 + qword_2802DE020);

        v100 = sub_268DD1954();

        v99 = *(v140 + v98[4]);

        v101 = sub_268DD1B2C();

        v102 = *(v140 + qword_2802DDFB8);

        sub_268E607DC(v100 & 1, v101 & 1, v113, v133, v102);
      }
    }

    else
    {
      sub_268F72BC4(v170);
      v94 = v179;
      v178 = v179;
      v95 = *(v140 + qword_2802DE008);

      v177 = v94;
      v96 = sub_268E5787C(&v177);

      if (v96)
      {
        v93 = *(v140 + qword_2802DDFD8);

        v90 = *(v140 + qword_2802DE020);

        v91 = sub_268DD1B2C();

        v92 = *(v140 + qword_2802DDFB8);

        sub_268E5F9D0(v91 & 1, v113, v133, v92);
      }

      else
      {
        v89 = *(v140 + qword_2802DDFD8);

        v82 = &qword_2802DE000;
        v79 = *(v140 + qword_2802DE020);

        v84 = sub_268DD1954();

        v80 = *(v140 + v82[4]);

        v85 = sub_268DD1B2C();

        v88 = *(v140 + qword_2802DDFB8);

        v81 = *(v140 + v82[4]);

        v86 = sub_268DD17E4(v170, 2);

        v83 = *(v140 + v82[4]);

        v87 = sub_268DD17E4(v170, 3);

        sub_268E5F2B0(v84 & 1, v85 & 1, v113, v133, v88, v86, v87);
      }
    }

    sub_268D28630(v145, v147);
    v38 = sub_268DB98D4();
    v77 = *v38;
    v75 = v38[1];
    v76 = *(v38 + 16);
    v78 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v78);
    sub_268DB9B78(v77, v75, v76, v78);
    MEMORY[0x277D82BD8](v78);
    sub_268D28718(v147, v139);

    MEMORY[0x277D82BD8](v115);
    MEMORY[0x277D82BD8](v124);
  }

  else
  {
    v72 = *sub_268DC858C();
    MEMORY[0x277D82BE0](v72);
    v70 = sub_268F9B294();
    v69 = sub_268F9B734();
    v68 = v40;
    MEMORY[0x277D82BE0](v171);
    v182 = v171;
    v41 = sub_268F9AE64();
    v42 = v164;
    v43 = v68;
    v68[3] = MEMORY[0x277D837D0];
    v43[4] = v42;
    *v43 = v41;
    v43[1] = v44;
    sub_268CD0F7C();
    v71 = v45;
    v73 = 2;
    sub_268F9AC04(v141, 69, 2, v165, v72, v70);

    MEMORY[0x277D82BD8](v72);
    sub_268EE278C();
    v74 = 1;
    v46 = swift_allocError();
    v47 = v139;
    *v48 = v73;
    *v47 = v46;
    swift_storeEnumTagMultiPayload();
    MEMORY[0x277D82BD8](v124);
  }
}

unint64_t sub_268ECCA4C()
{
  v2 = qword_2802DE040;
  if (!qword_2802DE040)
  {
    type metadata accessor for INIntentResponseCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE040);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268ECCACC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v64 = a5;
  v63 = a4;
  v62 = a3;
  v84 = a2;
  v65 = a1;
  v74 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v86 = 0;
  v58 = 0;
  v72 = *v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v60 = (*(*(v59 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v59, v6, v7);
  v61 = &v42[-v60];
  v66 = sub_268F9AB24();
  v67 = *(v66 - 8);
  v68 = v67;
  v69 = *(v67 + 64);
  MEMORY[0x28223BE20](v65, v84, v62, v63);
  v71 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v70 = &v42[-v71];
  MEMORY[0x28223BE20](v8, v9, v10, v11);
  v73 = &v42[-v71];
  v96 = v12;
  v95 = v13;
  v94 = v14;
  v92 = v15;
  v93 = v16;
  v91 = v5;
  v90 = *(v72 + qword_2802F1640);
  v89 = *(qword_2802F1640 + v72 + 8);
  v83 = *sub_268DC858C();
  v17 = v83;
  v81 = sub_268F9B284();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v80 = sub_268F9B734();
  v77 = v18;
  v19 = v84;
  v88 = v84;
  v75 = sub_268D588E0();
  sub_268DCA900();
  v76 = sub_268F9AE74();
  v78 = v20;
  v77[3] = MEMORY[0x277D837D0];
  v21 = sub_268CDD224();
  v22 = v76;
  v23 = v77;
  v24 = v78;
  v77[4] = v21;
  *v23 = v22;
  v23[1] = v24;
  sub_268CD0F7C();
  v82 = v25;
  sub_268F9AC04("INSetNumericSettingIntent requires confirmation %@", 50, 2, &dword_268CBE000, v83, v81);

  sub_268F72BC4(v84);
  v85 = v87;
  v86 = v87;
  if (v87 == 13 || (v56 = v85, v55 = v85, v85 != 7) && v55 != 8)
  {

    sub_268D284D4();
    v43 = 0;
    v38 = swift_allocError();
    v39 = v61;
    *v40 = v43;
    *v39 = v38;
    swift_storeEnumTagMultiPayload();
    v63(v61);
    sub_268D28378(v61);

    return v58;
  }

  v26 = v73;
  v27 = v58;
  v28 = sub_268DB98D4();
  v48 = *v28;
  v49 = v28[1];
  v50 = *(v28 + 16);
  v51 = *sub_268DC7BA8();
  v45 = v51;
  v29 = v51;
  (*(v68 + 16))(v26, v57 + qword_2802DDFB0, v66);
  sub_268F9AB14();
  v53 = sub_268F9AB04();
  v47 = *(v68 + 8);
  v46 = v68 + 8;
  v47(v70, v66);
  v47(v73, v66);

  v52 = v42;
  MEMORY[0x28223BE20](v48, v49, v50, v51);
  v30 = v64;
  v31 = v53;
  *&v42[-32] = v32;
  *&v42[-24] = v30;
  *&v42[-16] = v33;
  sub_268DB944C(v34, v35, v36, v37, (v31 & 1) == 0, sub_268EE3368, &v42[-48], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  v54 = v27;
  if (!v27)
  {

    return v54;
  }

  __break(1u);
  return result;
}

uint64_t sub_268ECD188(void (*a1)(id *), uint64_t a2, void *a3)
{
  v14 = a1;
  v16 = a2;
  v11 = a3;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v10 = *a3;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16, v3, v11, v4);
  v15 = (&v9 - v9);
  v20 = v5;
  v21 = v6;
  v19 = v7;
  v18 = *(v10 + qword_2802F1640);
  v17 = *(v10 + qword_2802F1640 + 8);

  v13 = *(v11 + qword_2802DDFD8);

  v12 = *(v11 + qword_2802DDFB8);

  sub_268E602E8(v12);

  v14(v15);
  sub_268D28378(v15);
}

id *sub_268ECD314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v46 = a4;
  v52 = a1;
  v74 = a2;
  v51 = a3;
  v71 = "INSetNumericSettingIntent requires confirmation %@";
  v69 = &dword_268CBE000;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v76 = 0;
  v59 = *v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v49 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48, v5, v6, v7);
  v50 = (v30 - v49);
  v83 = v30 - v49;
  v61 = 0;
  v53 = sub_268F9AB24();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52, v74, v51, v8);
  v57 = v30 - v56;
  v58 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v11, v12, v30 - v56);
  v60 = v30 - v58;
  v82 = v13;
  v81 = v14;
  v80 = v15;
  v79 = v4;
  v78[2] = *(v59 + qword_2802F1640);
  v78[1] = *(v59 + qword_2802F1640 + 8);
  v73 = *sub_268DC858C();
  MEMORY[0x277D82BE0](v73);
  v70 = sub_268F9B284();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v68 = sub_268F9B734();
  v66 = v16;
  MEMORY[0x277D82BE0](v74);
  v63 = v78;
  v78[0] = v74;
  v62 = sub_268D588E0();
  sub_268DCA900();
  v64 = sub_268F9AE74();
  v65 = v17;
  v66[3] = MEMORY[0x277D837D0];
  v18 = sub_268CDD224();
  v19 = v64;
  v20 = v65;
  v21 = v66;
  v66[4] = v18;
  *v21 = v19;
  v21[1] = v20;
  sub_268CD0F7C();
  v72 = v22;
  sub_268F9AC04(v71, 50, 2, v69, v73, v70);

  MEMORY[0x277D82BD8](v73);
  sub_268F72BC4(v74);
  v75 = v77;
  v76 = v77;
  if (v77 != 13 && ((v45 = v75, v44 = v75, v75 == 7) || v44 == 8))
  {
    v23 = v60;
    v24 = sub_268DB98D4();
    v34 = *v24;
    v35 = v24[1];
    v36 = *(v24 + 16);
    v37 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v37);
    (*(v54 + 16))(v23, v47 + qword_2802DDFB0, v53);
    sub_268F9AB14();
    v33 = sub_268F9AB04();
    v32 = *(v54 + 8);
    v31 = v54 + 8;
    v32(v57, v53);
    v32(v60, v53);
    sub_268DB9934(v34, v35, v36, v37, (v33 ^ 1) & 1);
    MEMORY[0x277D82BD8](v37);
    v39 = *(v47 + qword_2802DDFD8);

    v38 = *(v47 + qword_2802DDFB8);

    sub_268E602E8(v38);

    v25 = sub_268DB98D4();
    v42 = *v25;
    v40 = v25[1];
    v41 = *(v25 + 16);
    v43 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v43);
    sub_268DB9B78(v42, v40, v41, v43);
    MEMORY[0x277D82BD8](v43);
    sub_268D28A00(v50, v46);
    return sub_268D28378(v50);
  }

  else
  {
    sub_268D284D4();
    v30[1] = 1;
    v27 = swift_allocError();
    v28 = v46;
    *v29 = 0;
    *v28 = v27;
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_268ECD98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = v4;
  *(v5 + 72) = a3;
  *(v5 + 64) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 136) = 0;
  *(v5 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  *(v5 + 96) = swift_task_alloc();
  v6 = sub_268F9AB24();
  *(v5 + 104) = v6;
  *(v5 + 112) = *(v6 - 8);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;

  return MEMORY[0x2822009F8](sub_268ECDB3C, 0);
}

uint64_t sub_268ECDB3C()
{
  v37 = *(v0 + 72);
  *(v0 + 16) = v0;
  v1 = sub_268DC858C();
  v36 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v35 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v34 = v2;
  MEMORY[0x277D82BE0](v37);
  *(v0 + 56) = v37;
  sub_268D588E0();
  sub_268DCA900();
  v32 = sub_268F9AE74();
  v33 = v3;
  v34[3] = MEMORY[0x277D837D0];
  v34[4] = sub_268CDD224();
  *v34 = v32;
  v34[1] = v33;
  sub_268CD0F7C();
  sub_268F9AC04("INSetNumericSettingIntent requires confirmation %@", 50, 2, &dword_268CBE000, v36, v35);

  MEMORY[0x277D82BD8](v36);
  sub_268F72BC4(v37);
  *(v0 + 136) = v38;
  if (v38 != 13 && (v38 == 7 || v38 == 8))
  {
    v4 = v31[16];
    v15 = v31[15];
    v16 = v31[13];
    v30 = v31[12];
    v23 = v31[10];
    v29 = v31[8];
    v14 = v31[14];
    v5 = sub_268DB98D4();
    v19 = *v5;
    v20 = v5[1];
    v21 = *(v5 + 16);
    v6 = sub_268DC7BA8();
    v22 = *v6;
    MEMORY[0x277D82BE0](*v6);
    (*(v14 + 16))(v4, v23 + qword_2802DDFB0, v16);
    sub_268F9AB14();
    v18 = sub_268F9AB04();
    v17 = *(v14 + 8);
    v17(v15, v16);
    v17(v4, v16);
    sub_268DB9934(v19, v20, v21, v22, (v18 ^ 1) & 1);
    MEMORY[0x277D82BD8](v22);

    v24 = *(v23 + qword_2802DDFB8);

    sub_268E602E8(v24);

    v7 = sub_268DB98D4();
    v27 = *v7;
    v25 = v7[1];
    v26 = *(v7 + 16);
    v8 = sub_268DC7BA8();
    v28 = *v8;
    MEMORY[0x277D82BE0](*v8);
    sub_268DB9B78(v27, v25, v26, v28);
    MEMORY[0x277D82BD8](v28);
    sub_268D28A00(v30, v29);
    sub_268D28378(v30);
  }

  else
  {
    v13 = v31[8];
    sub_268D284D4();
    v9 = swift_allocError();
    *v10 = 0;
    *v13 = v9;
    swift_storeEnumTagMultiPayload();
  }

  v11 = *(v31[2] + 8);

  return v11();
}

uint64_t sub_268ECE0B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v19 = a5;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v13 = *v5;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v15, v16, v17);
  v18 = &v12 - v12;
  v27 = v6;
  v26 = v7;
  v25 = v8;
  v23 = v9;
  v24 = v10;
  v22 = v5;
  v21 = *(v13 + qword_2802F1640);
  v20 = *(v13 + qword_2802F1640 + 8);

  sub_268ECE228(v14, v15, v16, v18);
  v17(v18);
  sub_268D28378(v18);
}

void *sub_268ECE228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v42 = a4;
  v47 = a1;
  v45 = a2;
  v46 = a3;
  v55 = v4;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v52 = *v4;
  v60 = sub_268F9AB24();
  v56 = *(v60 - 8);
  v57 = v60 - 8;
  v43 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60, v5, v6, v7);
  v58 = &v31 - v43;
  v44 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v31 - v43, v9, v10, v11);
  v12 = &v31 - v44;
  v59 = &v31 - v44;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v49 = *(*(v54 - 8) + 64);
  v48 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47, v45, v46, v13);
  v50 = (&v31 - v48);
  v51 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v15, v16, &v31 - v48);
  v53 = (&v31 - v51);
  v78 = &v31 - v51;
  v77 = v17;
  v76 = v18;
  v75 = v19;
  v74 = v20;
  v73 = *(v52 + qword_2802F1640);
  v72 = *(v52 + qword_2802F1640 + 8);
  sub_268EE278C();
  v63 = 1;
  v21 = swift_allocError();
  v22 = v53;
  *v23 = 1;
  *v22 = v21;
  swift_storeEnumTagMultiPayload();
  v24 = sub_268DB98D4();
  v65 = *v24;
  v66 = v24[1];
  v67 = *(v24 + 16);
  v68 = *sub_268DC7BA8();
  MEMORY[0x277D82BE0](v68);
  (*(v56 + 16))(v12, v55 + qword_2802DDFB0, v60);
  sub_268F9AB14();
  v25 = sub_268F9AB04();
  v26 = v55;
  v64 = v25;
  v62 = *(v56 + 8);
  v61 = v56 + 8;
  v62(v58, v60);
  v62(v59, v60);
  sub_268DB9934(v65, v66, v67, v68, (v64 ^ v63) & 1);
  MEMORY[0x277D82BD8](v68);
  v69 = *(v26 + qword_2802DE020);

  v70 = sub_268DD1A1C();

  if (v70)
  {
    v37 = *(v55 + qword_2802DE020);

    sub_268DD1AE0();

    v41 = *(v55 + qword_2802DDFC0);

    v38 = type metadata accessor for SettingsBinarySetting(0);
    v71 = 43;
    v27 = sub_268E7C600();
    v40 = SettingsBinarySetting.__allocating_init(settingId:value:)(v27, v28, 1u);
    v39 = *(v55 + qword_2802DDFB8);

    sub_268F5FA58(v40, v39);
  }

  else
  {
    v36 = *(v55 + qword_2802DDFD8);

    v35 = *(v55 + qword_2802DDFB8);

    sub_268E61118(v35);
  }

  sub_268D28630(v50, v53);
  v29 = sub_268DB98D4();
  v33 = *v29;
  v31 = v29[1];
  v32 = *(v29 + 16);
  v34 = *sub_268DC7BA8();
  MEMORY[0x277D82BE0](v34);
  sub_268DB9B78(v33, v31, v32, v34);
  MEMORY[0x277D82BD8](v34);
  return sub_268D28718(v53, v42);
}

uint64_t sub_268ECE7DC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id *), uint64_t a5)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v19 = a5;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v13 = *v5;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v15, v16, v17);
  v18 = (&v12 - v12);
  v27 = v6;
  v26 = v7;
  v25 = v8;
  v23 = v9;
  v24 = v10;
  v22 = v5;
  v21 = *(v13 + qword_2802F1640);
  v20 = *(v13 + qword_2802F1640 + 8);

  sub_268ECE950(v15, v16, v18);
  v17(v18);
  sub_268D28378(v18);
}

void sub_268ECE950(uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v19 = [a3 code];
    MEMORY[0x277D82BD8](a3);
    v20 = v19;
    v21 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 1;
  }

  if (v21)
  {
    v9 = sub_268DC858C();
    v13 = *v9;
    MEMORY[0x277D82BE0](*v9);
    v12 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("SetNumericSettingIntentResponse does not exist", 46, 2, &dword_268CBE000, v13, v12);

    MEMORY[0x277D82BD8](v13);
    sub_268EE278C();
    v10 = swift_allocError();
    *v11 = 4;
    *a4 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    swift_storeEnumTagMultiPayload();
  }

  else if (v20 == 8)
  {

    sub_268F537E4();
  }

  else if (v20 == 9)
  {
    sub_268ECED90(a2, a3, a4);
  }

  else
  {
    v4 = sub_268DC858C();
    v18 = *v4;
    MEMORY[0x277D82BE0](*v4);
    v17 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v16 = v5;
    MEMORY[0x277D82BE0](a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
    v14 = sub_268F9AE64();
    v15 = v6;
    v16[3] = MEMORY[0x277D837D0];
    v16[4] = sub_268CDD224();
    *v16 = v14;
    v16[1] = v15;
    sub_268CD0F7C();
    sub_268F9AC04("SetNumericSettingIntentResponse contains unsupported error code: %@", 67, 2, &dword_268CBE000, v18, v17);

    MEMORY[0x277D82BD8](v18);
    sub_268EE278C();
    v7 = swift_allocError();
    *v8 = 6;
    *a4 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    swift_storeEnumTagMultiPayload();
  }
}

void sub_268ECED90(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v114 = a3;
  v122 = a1;
  v132 = a2;
  v116 = "SetNumericSettingIntentResponse 'other reason' error code contains unsupported error detail: %@";
  v117 = &dword_268CBE000;
  v118 = "SetNumericSettingIntentResponse contains error code 'other reason' but no details: %@";
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v137 = 0;
  v138 = 0;
  v133 = 0;
  v130 = *v3;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v120 = (*(*(v119 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v119, v4, v5, v6);
  v121 = (&v46 - v120);
  v143 = &v46 - v120;
  v123 = sub_268F9AB24();
  v124 = *(v123 - 8);
  v125 = v123 - 8;
  v127 = *(v124 + 64);
  v126 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v132, v7, v8, v9);
  v128 = &v46 - v126;
  v129 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, &v46 - v126, v11, v12);
  v131 = &v46 - v129;
  v142 = v13;
  v141 = v14;
  v140 = v3;
  v139[2] = *(v130 + qword_2802F1640);
  v139[1] = *(v130 + qword_2802F1640 + 8);
  MEMORY[0x277D82BE0](v14);
  if (v132)
  {
    v113 = v132;
    v111 = v132;
    v112 = [v132 errorDetail];
    if (v112)
    {
      v110 = v112;
      v105 = v112;
      v106 = sub_268F9AE24();
      v107 = v15;
      MEMORY[0x277D82BD8](v105);
      v108 = v106;
      v109 = v107;
    }

    else
    {
      v108 = 0;
      v109 = 0;
    }

    v102 = v109;
    v101 = v108;
    MEMORY[0x277D82BD8](v111);
    v103 = v101;
    v104 = v102;
  }

  else
  {
    v103 = 0;
    v104 = 0;
  }

  v99 = v104;
  v100 = v103;
  if (v104)
  {
    v97 = v100;
    v98 = v99;
    v94 = v99;
    v93 = v100;
    v137 = v100;
    v138 = v99;

    v16 = sub_268E948B8(3);
    v95 = v136;
    v136[0] = v16;
    v136[1] = v17;
    v135[2] = v93;
    v135[3] = v94;
    v96 = MEMORY[0x26D62DB50](v16, v17, v93, v94);
    sub_268CD9D30(v95);
    if (v96)
    {
      v18 = v131;

      v19 = sub_268DB98D4();
      v83 = *v19;
      v84 = v19[1];
      v85 = *(v19 + 16);
      v86 = *sub_268DC7BA8();
      MEMORY[0x277D82BE0](v86);
      (*(v124 + 16))(v18, v115 + qword_2802DDFB0, v123);
      sub_268F9AB14();
      v82 = sub_268F9AB04();
      v81 = *(v124 + 8);
      v80 = v124 + 8;
      v81(v128, v123);
      v81(v131, v123);
      sub_268DB9934(v83, v84, v85, v86, (v82 ^ 1) & 1);
      MEMORY[0x277D82BD8](v86);
      v88 = *(v115 + qword_2802DDFF0);

      v87 = *(v115 + qword_2802DDFB8);

      sub_268F548D0(v87);

      v20 = sub_268DB98D4();
      v91 = *v20;
      v89 = v20[1];
      v90 = *(v20 + 16);
      v92 = *sub_268DC7BA8();
      MEMORY[0x277D82BE0](v92);
      sub_268DB9B78(v91, v89, v90, v92);
      MEMORY[0x277D82BD8](v92);
      sub_268D28A00(v121, v114);
      sub_268D28378(v121);
    }

    else
    {

      v21 = sub_268E948B8(21);
      v78 = v135;
      v135[0] = v21;
      v135[1] = v22;
      v134[1] = v93;
      v134[2] = v94;
      v79 = MEMORY[0x26D62DB50](v21, v22, v93, v94);
      sub_268CD9D30(v78);
      if (v79)
      {
        v23 = v131;

        v24 = sub_268DB9CB4();
        v74 = *v24;
        v75 = v24[1];
        v76 = *(v24 + 16);
        v77 = *sub_268DC7BA8();
        MEMORY[0x277D82BE0](v77);
        (*(v124 + 16))(v23, v115 + qword_2802DDFB0, v123);
        sub_268F9AB14();
        v73 = sub_268F9AB04();
        v72 = *(v124 + 8);
        v71 = v124 + 8;
        v72(v128, v123);
        v72(v131, v123);
        sub_268DB9934(v74, v75, v76, v77, (v73 ^ 1) & 1);
        MEMORY[0x277D82BD8](v77);
        v133 = v121;
        v66 = *(v115 + qword_2802DDFF0);

        sub_268F57498(1, 0, 1);

        v25 = sub_268DB9CB4();
        v69 = *v25;
        v67 = v25[1];
        v68 = *(v25 + 16);
        v70 = *sub_268DC7BA8();
        MEMORY[0x277D82BE0](v70);
        sub_268DB9B78(v69, v67, v68, v70);
        MEMORY[0x277D82BD8](v70);
        sub_268D28A00(v121, v114);
        sub_268D28378(v121);
      }

      else
      {

        v64 = *sub_268DC858C();
        MEMORY[0x277D82BE0](v64);
        v62 = sub_268F9B294();
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v61 = sub_268F9B734();
        v59 = v26;
        MEMORY[0x277D82BE0](v132);
        v56 = v134;
        v134[0] = v132;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
        v57 = sub_268F9AE64();
        v58 = v27;
        v59[3] = MEMORY[0x277D837D0];
        v28 = sub_268CDD224();
        v29 = v57;
        v30 = v58;
        v31 = v59;
        v59[4] = v28;
        *v31 = v29;
        v31[1] = v30;
        sub_268CD0F7C();
        v63 = v32;
        sub_268F9AC04(v116, 95, 2, v117, v64, v62);

        MEMORY[0x277D82BD8](v64);
        sub_268EE278C();
        v65 = 1;
        v33 = swift_allocError();
        v34 = v114;
        *v35 = 7;
        *v34 = v33;
        swift_storeEnumTagMultiPayload();
      }
    }
  }

  else
  {
    v54 = *sub_268DC858C();
    MEMORY[0x277D82BE0](v54);
    v52 = sub_268F9B294();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v51 = sub_268F9B734();
    v49 = v36;
    MEMORY[0x277D82BE0](v132);
    v46 = v139;
    v139[0] = v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
    v47 = sub_268F9AE64();
    v48 = v37;
    v49[3] = MEMORY[0x277D837D0];
    v38 = sub_268CDD224();
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v49[4] = v38;
    *v41 = v39;
    v41[1] = v40;
    sub_268CD0F7C();
    v53 = v42;
    sub_268F9AC04(v118, 85, 2, v117, v54, v52);

    MEMORY[0x277D82BD8](v54);
    sub_268EE278C();
    v55 = 1;
    v43 = swift_allocError();
    v44 = v114;
    *v45 = 5;
    *v44 = v43;
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_268ECFB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  v5 = swift_task_alloc();
  *(v7 + 56) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268ECFC20;

  return sub_268ECFDF8(a1, a2, a3);
}

uint64_t sub_268ECFC20(uint64_t a1)
{
  v7 = *v2;
  *(v7 + 16) = *v2;
  v8 = v7 + 16;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    v3 = a1;
    v4 = *(*v8 + 8);
  }

  return v4(v3);
}

uint64_t sub_268ECFDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 392) = v3;
  *(v4 + 384) = a3;
  *(v4 + 376) = a2;
  *(v4 + 200) = v4;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 0;
  *(v4 + 256) = 0;
  *(v4 + 272) = 0;
  *(v4 + 280) = 0;
  *(v4 + 288) = 0;
  *(v4 + 616) = 0;
  *(v4 + 296) = 0;
  *(v4 + 312) = 0;
  *(v4 + 328) = 0;
  *(v4 + 344) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 400) = v5;
  *(v4 + 408) = *(v5 - 8);
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 208) = a1;
  *(v4 + 216) = a2;
  *(v4 + 224) = a3;
  *(v4 + 232) = v3;

  return MEMORY[0x2822009F8](sub_268ECFF94, 0);
}

uint64_t sub_268ECFF94()
{
  v103 = v0;
  v97 = v0[48];
  v96 = v0[47];
  v0[25] = v0;
  v1 = sub_268DC858C();
  v95 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v94 = sub_268F9B284();
  v0[54] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v92 = v2;
  MEMORY[0x277D82BE0](v97);
  v0[30] = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
  v90 = sub_268F9AE64();
  v91 = v3;
  v92[3] = MEMORY[0x277D837D0];
  v93 = sub_268CDD224();
  v0[55] = v93;
  v92[4] = v93;
  *v92 = v90;
  v92[1] = v91;
  sub_268CD0F7C();
  sub_268F9AC04("processIntentHandled: handling intent with SetNumericSettingIntentResponse:  %@", 79, 2, &dword_268CBE000, v95, v94);

  MEMORY[0x277D82BD8](v95);
  v98 = sub_268EE21E8(v96, v97);
  v99 = v4;
  v100 = v5;
  v0[56] = v4;
  v0[57] = v5;
  if (!v4)
  {
    sub_268EE278C();
    swift_allocError();
    *v24 = 4;
    swift_willThrow();
    goto LABEL_34;
  }

  v88 = *(v89 + 384);
  *(v89 + 176) = v98;
  *(v89 + 184) = v4;
  *(v89 + 192) = v5;
  MEMORY[0x277D82BE0](v88);
  if (v88)
  {
    v87 = *(v89 + 384);
    *(v89 + 368) = [v87 oldValue];
    if (*(v89 + 368))
    {
      v84 = *(v89 + 368);
      MEMORY[0x277D82BE0](v84);
      sub_268D35038((v89 + 368));
      v85 = [v84 value];
      MEMORY[0x277D82BD8](v84);
      v86 = v85;
      goto LABEL_7;
    }

    sub_268D35038((v89 + 368));
    MEMORY[0x277D82BD8](v87);
  }

  v86 = 0;
LABEL_7:
  *(v89 + 464) = v86;
  if (!v86)
  {
    v26 = *(v89 + 384);
    v19 = sub_268DC858C();
    v29 = *v19;
    MEMORY[0x277D82BE0](*v19);
    v28 = sub_268F9B294();
    sub_268F9B734();
    v27 = v20;
    MEMORY[0x277D82BE0](v26);
    *(v89 + 248) = v26;
    v21 = sub_268F9AE64();
    v27[3] = MEMORY[0x277D837D0];
    v27[4] = v93;
    *v27 = v21;
    v27[1] = v22;
    sub_268CD0F7C();
    sub_268F9AC04("SetNumericSettingIntentResponse response has invalid old value %@", 65, 2, &dword_268CBE000, v29, v28);

    MEMORY[0x277D82BD8](v29);
    sub_268EE278C();
    swift_allocError();
    *v23 = 3;
    swift_willThrow();

    goto LABEL_34;
  }

  v83 = *(v89 + 384);
  *(v89 + 256) = v86;
  MEMORY[0x277D82BE0](v83);
  if (!v83)
  {
    goto LABEL_29;
  }

  v82 = *(v89 + 384);
  *(v89 + 360) = [v82 updatedValue];
  if (!*(v89 + 360))
  {
    sub_268D35038((v89 + 360));
    MEMORY[0x277D82BD8](v82);
LABEL_29:
    v81 = 0;
    goto LABEL_13;
  }

  v79 = *(v89 + 360);
  MEMORY[0x277D82BE0](v79);
  sub_268D35038((v89 + 360));
  v80 = [v79 value];
  MEMORY[0x277D82BD8](v79);
  v81 = v80;
LABEL_13:
  *(v89 + 472) = v81;
  if (v81)
  {
    v6 = *(v89 + 424);
    v68 = *(v89 + 416);
    v69 = *(v89 + 400);
    v77 = *(v89 + 392);
    v78 = *(v89 + 376);
    v67 = *(v89 + 408);
    *(v89 + 272) = v81;
    v7 = sub_268DB98D4();
    v72 = *v7;
    v73 = v7[1];
    v74 = *(v7 + 16);
    v8 = sub_268DC7BA8();
    v75 = *v8;
    MEMORY[0x277D82BE0](*v8);
    (*(v67 + 16))(v6, v77 + qword_2802DDFB0, v69);
    sub_268F9AB14();
    v71 = sub_268F9AB04();
    v70 = *(v67 + 8);
    v70(v68, v69);
    v70(v6, v69);
    sub_268DB9934(v72, v73, v74, v75, (v71 ^ 1) & 1);
    MEMORY[0x277D82BD8](v75);
    type metadata accessor for SettingsNumericSetting(0);

    MEMORY[0x277D82BE0](v86);
    v76 = SettingsNumericSetting.__allocating_init(settingId:value:)(v98, v99, v86);
    *(v89 + 480) = v76;
    *(v89 + 280) = v76;
    sub_268D28C4C();
    *(v89 + 288) = sub_268CF0C44();
    sub_268F72BC4(v78);
    *(v89 + 616) = v101;
    if (sub_268EE3214(v86))
    {
      if (sub_268EE32A8([*(v89 + 376) action]))
      {
        v62 = *(v89 + 392);
        sub_268CDE730(v62 + qword_2802DDFE0, v89 + 136);
        v64 = *(v89 + 160);
        v65 = *(v89 + 168);
        __swift_project_boxed_opaque_existential_1((v89 + 136), v64);

        v63 = swift_task_alloc();
        *(v89 + 488) = v63;
        v63[2] = v98;
        v63[3] = v99;
        v63[4] = v100;
        v63[5] = v76;
        v63[6] = v62;
        v66 = (*(v65 + 32) + **(v65 + 32));
        v9 = swift_task_alloc();
        *(v89 + 496) = v9;
        *v9 = *(v89 + 200);
        v9[1] = sub_268ED15AC;

        return v66(sub_268EE4A40, v63, v64, v65);
      }

      else
      {
        v53 = *(v89 + 392);
        v55 = *(v89 + 384);
        v54 = *(v89 + 376);
        sub_268CDE730(v53 + qword_2802DDFE0, v89 + 96);
        v58 = *(v89 + 120);
        v59 = *(v89 + 128);
        __swift_project_boxed_opaque_existential_1((v89 + 96), v58);

        v61 = sub_268DD1954();

        v56 = sub_268DD1B2C();

        MEMORY[0x277D82BE0](v54);
        MEMORY[0x277D82BE0](v55);
        v57 = swift_task_alloc();
        *(v89 + 520) = v57;
        v57[2] = v76;
        v57[3] = v98;
        v57[4] = v99;
        v57[5] = v100;
        v57[6] = v53;
        v57[7] = v54;
        v57[8] = v55;
        v60 = (*(v59 + 24) + **(v59 + 24));
        v11 = swift_task_alloc();
        *(v89 + 528) = v11;
        *v11 = *(v89 + 200);
        v11[1] = sub_268ED19AC;

        return v60(v61 & 1, v56 & 1, sub_268EE4A20, v57, v58, v59);
      }
    }

    else
    {

      v102 = v101;
      v52 = sub_268E5787C(&v102);

      if (v52)
      {
        v45 = *(v89 + 392);
        v47 = *(v89 + 384);
        v46 = *(v89 + 376);
        sub_268CDE730(v45 + qword_2802DDFE0, v89 + 56);
        v49 = *(v89 + 80);
        v50 = *(v89 + 88);
        __swift_project_boxed_opaque_existential_1((v89 + 56), v49);

        MEMORY[0x277D82BE0](v46);
        MEMORY[0x277D82BE0](v47);
        v48 = swift_task_alloc();
        *(v89 + 552) = v48;
        v48[2] = v45;
        v48[3] = v98;
        v48[4] = v99;
        v48[5] = v100;
        v48[6] = v76;
        v48[7] = v46;
        v48[8] = v47;
        v51 = (*(v50 + 48) + **(v50 + 48));
        v12 = swift_task_alloc();
        *(v89 + 560) = v12;
        *v12 = *(v89 + 200);
        v12[1] = sub_268ED1DCC;

        return v51(sub_268EE4A00, v48, v49, v50);
      }

      else
      {
        v34 = *(v89 + 392);
        v36 = *(v89 + 384);
        v35 = *(v89 + 376);
        sub_268CDE730(v34 + qword_2802DDFE0, v89 + 16);
        v41 = *(v89 + 40);
        v42 = *(v89 + 48);
        __swift_project_boxed_opaque_existential_1((v89 + 16), v41);

        v44 = sub_268DD17E4(v35, 3);

        v37 = sub_268DD17E4(v35, 2);

        v38 = sub_268DD1954();

        v39 = sub_268DD1B2C();

        MEMORY[0x277D82BE0](v35);
        MEMORY[0x277D82BE0](v36);
        v40 = swift_task_alloc();
        *(v89 + 584) = v40;
        v40[2] = v98;
        v40[3] = v99;
        v40[4] = v100;
        v40[5] = v76;
        v40[6] = v34;
        v40[7] = v35;
        v40[8] = v36;
        v43 = (*(v42 + 56) + **(v42 + 56));
        v13 = swift_task_alloc();
        *(v89 + 592) = v13;
        *v13 = *(v89 + 200);
        v13[1] = sub_268ED21EC;

        return v43(v44, v37, v38 & 1, v39 & 1, sub_268EE49E0, v40, v41, v42);
      }
    }
  }

  v30 = *(v89 + 384);
  v14 = sub_268DC858C();
  v33 = *v14;
  MEMORY[0x277D82BE0](*v14);
  v32 = sub_268F9B294();
  sub_268F9B734();
  v31 = v15;
  MEMORY[0x277D82BE0](v30);
  *(v89 + 264) = v30;
  v16 = sub_268F9AE64();
  v31[3] = MEMORY[0x277D837D0];
  v31[4] = v93;
  *v31 = v16;
  v31[1] = v17;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingIntentResponse response has invalid updated value %@", 69, 2, &dword_268CBE000, v33, v32);

  MEMORY[0x277D82BD8](v33);
  sub_268EE278C();
  swift_allocError();
  *v18 = 2;
  swift_willThrow();
  MEMORY[0x277D82BD8](v86);

LABEL_34:

  v25 = *(*(v89 + 200) + 8);

  return v25();
}

uint64_t sub_268ED15AC(uint64_t a1)
{
  v5 = *v2;
  v5[25] = *v2;
  v5[63] = a1;
  v5[64] = v1;

  if (v1)
  {
    v3 = sub_268ED260C;
  }

  else
  {

    v3 = sub_268ED1770;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268ED1770()
{
  v1 = v0[63];
  v7 = v1;
  v0[25] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[36];
  v0[36] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v14 = v0[63];
  v12 = v0[59];
  v13 = v0[58];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[36]);

  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  v5 = *(v0[25] + 8);

  return v5(v14);
}

uint64_t sub_268ED19AC(uint64_t a1)
{
  v7 = *v2;
  v7[25] = *v2;
  v7[67] = a1;
  v7[68] = v1;

  if (v1)
  {
    v3 = sub_268ED296C;
  }

  else
  {
    v6 = v7[48];
    v5 = v7[47];

    v3 = sub_268ED1B90;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268ED1B90()
{
  v1 = v0[67];
  v7 = v1;
  v0[25] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[36];
  v0[36] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v14 = v0[67];
  v12 = v0[59];
  v13 = v0[58];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[36]);

  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  v5 = *(v0[25] + 8);

  return v5(v14);
}

uint64_t sub_268ED1DCC(uint64_t a1)
{
  v7 = *v2;
  v7[25] = *v2;
  v7[71] = a1;
  v7[72] = v1;

  if (v1)
  {
    v3 = sub_268ED2CFC;
  }

  else
  {
    v6 = v7[48];
    v5 = v7[47];

    v3 = sub_268ED1FB0;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268ED1FB0()
{
  v1 = v0[71];
  v7 = v1;
  v0[25] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[36];
  v0[36] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v14 = v0[71];
  v12 = v0[59];
  v13 = v0[58];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[36]);

  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  v5 = *(v0[25] + 8);

  return v5(v14);
}

uint64_t sub_268ED21EC(uint64_t a1)
{
  v7 = *v2;
  v7[25] = *v2;
  v7[75] = a1;
  v7[76] = v1;

  if (v1)
  {
    v3 = sub_268ED308C;
  }

  else
  {
    v6 = v7[48];
    v5 = v7[47];

    v3 = sub_268ED23D0;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268ED23D0()
{
  v1 = v0[75];
  v7 = v1;
  v0[25] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[36];
  v0[36] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v14 = v0[75];
  v12 = v0[59];
  v13 = v0[58];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[36]);

  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  v5 = *(v0[25] + 8);

  return v5(v14);
}

uint64_t sub_268ED260C()
{
  v19 = v0[64];
  v20 = v0[59];
  v21 = v0[58];
  v11 = v0[55];
  v0[25] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v1 = v19;
  v0[43] = v19;
  v2 = sub_268DC858C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[44] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = v11;
  *v12 = v5;
  v12[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingIntent#UnspecifiedActionForSupportedNumericSetting pattern execution error %@", 94, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v7 = sub_268DB9CB4();
  v17 = *v7;
  v15 = v7[1];
  v16 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v18 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[36]);

  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);

  v9 = *(v0[25] + 8);

  return v9();
}

uint64_t sub_268ED296C()
{
  v21 = v0[68];
  v22 = v0[59];
  v23 = v0[58];
  v13 = v0[55];
  v12 = v0[48];
  v11 = v0[47];
  v0[25] = v0;

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v21;
  v0[41] = v21;
  v2 = sub_268DC858C();
  v16 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v15 = sub_268F9B294();
  sub_268F9B734();
  v14 = v3;
  v4 = v21;
  v0[42] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = v13;
  *v14 = v5;
  v14[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingIntent#NoNeedToChangeNumericValueTo pattern execution error %@", 79, 2, &dword_268CBE000, v16, v15);

  MEMORY[0x277D82BD8](v16);
  v7 = sub_268DB9CB4();
  v19 = *v7;
  v17 = v7[1];
  v18 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v20 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v19, v17, v18, v20);
  MEMORY[0x277D82BD8](v20);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[36]);

  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);

  v9 = *(v0[25] + 8);

  return v9();
}

uint64_t sub_268ED2CFC()
{
  v21 = v0[72];
  v22 = v0[59];
  v23 = v0[58];
  v13 = v0[55];
  v12 = v0[48];
  v11 = v0[47];
  v0[25] = v0;

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v21;
  v0[39] = v21;
  v2 = sub_268DC858C();
  v16 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v15 = sub_268F9B294();
  sub_268F9B734();
  v14 = v3;
  v4 = v21;
  v0[40] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = v13;
  *v14 = v5;
  v14[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingIntent#ChangedNumericValueToSpokenOnly pattern execution error %@", 82, 2, &dword_268CBE000, v16, v15);

  MEMORY[0x277D82BD8](v16);
  v7 = sub_268DB9CB4();
  v19 = *v7;
  v17 = v7[1];
  v18 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v20 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v19, v17, v18, v20);
  MEMORY[0x277D82BD8](v20);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[36]);

  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);

  v9 = *(v0[25] + 8);

  return v9();
}

uint64_t sub_268ED308C()
{
  v21 = v0[76];
  v22 = v0[59];
  v23 = v0[58];
  v13 = v0[55];
  v12 = v0[48];
  v11 = v0[47];
  v0[25] = v0;

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v21;
  v0[37] = v21;
  v2 = sub_268DC858C();
  v16 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v15 = sub_268F9B294();
  sub_268F9B734();
  v14 = v3;
  v4 = v21;
  v0[38] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = v13;
  *v14 = v5;
  v14[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingIntent#ChangedNumericValueTo pattern execution error %@", 72, 2, &dword_268CBE000, v16, v15);

  MEMORY[0x277D82BD8](v16);
  v7 = sub_268DB9CB4();
  v19 = *v7;
  v17 = v7[1];
  v18 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v20 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v19, v17, v18, v20);
  MEMORY[0x277D82BD8](v20);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[36]);

  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);

  v9 = *(v0[25] + 8);

  return v9();
}

uint64_t sub_268ED341C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  *a1 = a4;

  a1[2] = a5;

  v11 = *(a6 + qword_2802DDFB8);

  a1[1] = v11;
}

void *sub_268ED3528(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v32 = a1;
  v24 = a2;
  v20 = a3;
  v21 = a4;
  v25 = a5;
  v27 = a6;
  v29 = a7;
  v28 = a8;
  v44 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v23 = *a6;
  v22 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v8, v20, v21);
  v33 = &v19 - v22;
  v44 = v9;
  v43 = v10;
  v40 = v11;
  v41 = v12;
  v42 = v13;
  v31 = 0;
  v39 = *(v23 + qword_2802F1640);
  v38 = *(v23 + qword_2802F1640 + 8);
  v37 = v14;
  v36 = v15;
  v35 = v16;

  v32[2] = v24;

  *v32 = v25;

  v26 = *(v27 + qword_2802DDFB8);

  v32[1] = v26;

  v30 = v34;
  sub_268CDE730(v27 + qword_2802DE030, v34);
  sub_268E084E0(v29, v28, v30, v33);
  __swift_destroy_boxed_opaque_existential_0(v30);
  v17 = type metadata accessor for SetNumericSettingIntentNoNeedToChangeNumericValueToParameters(v31);
  return sub_268D29FC8(v33, v32 + *(v17 + 36));
}

void *sub_268ED3740(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v35 = a1;
  v29 = a2;
  v18 = a3;
  v19 = a4;
  v26 = a5;
  v27 = a6;
  v31 = a7;
  v30 = a8;
  v46 = 0;
  v45 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v21 = *a2;
  v20 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35, v29, v18, v19);
  v34 = &v17 - v20;
  v46 = v8;
  v45 = v9;
  v24 = 0;
  v44 = *(v21 + qword_2802F1640);
  v43 = *(v21 + qword_2802F1640 + 8);
  v40 = v10;
  v41 = v11;
  v42 = v12;
  v39 = v13;
  v38 = v14;
  v37 = v15;
  v22 = *(v9 + qword_2802DE020);

  v23 = sub_268DD1B2C();

  v25 = v23 & 1;
  v33 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters(v24);
  *(v35 + *(v33 + 40)) = v25;

  *v35 = v26;

  v35[2] = v27;

  v28 = *(v29 + qword_2802DDFB8);

  v35[1] = v28;

  v32 = v36;
  sub_268CDE730(v29 + qword_2802DE030, v36);
  sub_268E084E0(v31, v30, v32, v34);
  __swift_destroy_boxed_opaque_existential_0(v32);
  return sub_268D29FC8(v34, v35 + *(v33 + 44));
}

void *sub_268ED39C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v32 = a1;
  v20 = a2;
  v21 = a3;
  v24 = a4;
  v25 = a5;
  v27 = a6;
  v29 = a7;
  v28 = a8;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v23 = *a6;
  v22 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v20, v21, v8);
  v33 = &v19 - v22;
  v44 = v9;
  v41 = v10;
  v42 = v11;
  v43 = v12;
  v31 = 0;
  v40 = *(v23 + qword_2802F1640);
  v39 = *(v23 + qword_2802F1640 + 8);
  v38 = v13;
  v37 = v14;
  v36 = v15;
  v35 = v16;

  *v32 = v24;

  v32[3] = v25;

  v26 = *(v27 + qword_2802DDFB8);

  v32[1] = v26;

  v30 = v34;
  sub_268CDE730(v27 + qword_2802DE030, v34);
  sub_268E084E0(v29, v28, v30, v33);
  __swift_destroy_boxed_opaque_existential_0(v30);
  v17 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToParameters(v31);
  return sub_268D29FC8(v33, v32 + *(v17 + 44));
}

uint64_t sub_268ED3BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 136) = v3;
  *(v4 + 128) = a2;
  *(v4 + 56) = v4;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 216) = 0;
  *(v4 + 104) = 0;
  *(v4 + 120) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 144) = v5;
  *(v4 + 152) = *(v5 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;

  return MEMORY[0x2822009F8](sub_268ED3D54, 0);
}

uint64_t sub_268ED3D54()
{
  v32 = *(v0 + 128);
  *(v0 + 56) = v0;
  v1 = sub_268DC858C();
  v31 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v30 = sub_268F9B284();
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v29 = v2;
  MEMORY[0x277D82BE0](v32);
  *(v0 + 96) = v32;
  sub_268D588E0();
  sub_268DCA900();
  v27 = sub_268F9AE74();
  v28 = v3;
  v29[3] = MEMORY[0x277D837D0];
  v4 = sub_268CDD224();
  *(v0 + 184) = v4;
  v29[4] = v4;
  *v29 = v27;
  v29[1] = v28;
  sub_268CD0F7C();
  sub_268F9AC04("INSetNumericSettingIntent requires confirmation %@", 50, 2, &dword_268CBE000, v31, v30);

  MEMORY[0x277D82BD8](v31);
  sub_268F72BC4(v32);
  *(v0 + 216) = v33;
  if (v33 != 13 && (v33 == 7 || v33 == 8))
  {
    v5 = v26[21];
    v14 = v26[20];
    v15 = v26[18];
    v22 = v26[17];
    v13 = v26[19];
    v6 = sub_268DB98D4();
    v18 = *v6;
    v19 = v6[1];
    v20 = *(v6 + 16);
    v7 = sub_268DC7BA8();
    v21 = *v7;
    MEMORY[0x277D82BE0](*v7);
    (*(v13 + 16))(v5, v22 + qword_2802DDFB0, v15);
    sub_268F9AB14();
    v17 = sub_268F9AB04();
    v16 = *(v13 + 8);
    v16(v14, v15);
    v16(v5, v15);
    sub_268DB9934(v18, v19, v20, v21, (v17 ^ 1) & 1);
    MEMORY[0x277D82BD8](v21);
    sub_268CDE730(v22 + qword_2802DDFE0, (v26 + 2));
    v23 = v26[5];
    v24 = v26[6];
    __swift_project_boxed_opaque_existential_1(v26 + 2, v23);

    v25 = (*(v24 + 8) + **(v24 + 8));
    v8 = swift_task_alloc();
    v26[24] = v8;
    *v8 = v26[7];
    v8[1] = sub_268ED4348;
    v9 = v26[17];

    return v25(sub_268EE4A58, v9, v23, v24);
  }

  else
  {
    sub_268D284D4();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();

    v12 = *(v26[7] + 8);

    return v12();
  }
}

uint64_t sub_268ED4348(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[25] = a1;
  v5[26] = v1;

  if (v1)
  {
    v3 = sub_268ED4604;
  }

  else
  {

    v3 = sub_268ED44CC;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268ED44CC()
{
  v1 = v0[25];
  v0[7] = v0;
  v0[15] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = sub_268DB98D4();
  v9 = *v2;
  v7 = v2[1];
  v8 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);

  v4 = *(*(v11 + 56) + 8);
  v5 = *(v11 + 200);

  return v4(v5);
}

uint64_t sub_268ED4604()
{
  v19 = v0[26];
  v11 = v0[23];
  v0[7] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v19;
  v0[13] = v19;
  v2 = sub_268DC858C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[14] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = v11;
  *v12 = v5;
  v12[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingIntent#ConfirmMaximumVolume pattern execution error %@", 71, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v7 = sub_268DB9CB4();
  v17 = *v7;
  v15 = v7[1];
  v16 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v18 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v9 = *(v0[7] + 8);

  return v9();
}

uint64_t sub_268ED48C4(void *a1, uint64_t a2)
{
  v4 = *(a2 + qword_2802DDFB8);

  *a1 = v4;
}

uint64_t sub_268ED4968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 232) = v3;
  *(v4 + 224) = a3;
  *(v4 + 216) = a2;
  *(v4 + 112) = v4;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 352) = 0;
  *(v4 + 184) = 0;
  *(v4 + 200) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 240) = v5;
  *(v4 + 248) = *(v5 - 8);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 120) = a1;
  *(v4 + 128) = a2;
  *(v4 + 136) = a3;
  *(v4 + 144) = v3;

  return MEMORY[0x2822009F8](sub_268ED4AF4, 0);
}

uint64_t sub_268ED4AF4()
{
  v45 = v0[33];
  v44 = v0[32];
  v43 = v0[31];
  v46 = v0[30];
  v53 = v0[29];
  v0[14] = v0;
  sub_268D28C4C();
  v0[19] = sub_268CF0C44();
  v1 = sub_268DB98D4();
  v49 = *v1;
  v50 = v1[1];
  v51 = *(v1 + 16);
  v2 = sub_268DC7BA8();
  v52 = *v2;
  MEMORY[0x277D82BE0](*v2);
  (*(v43 + 16))(v45, v53 + qword_2802DDFB0, v46);
  sub_268F9AB14();
  v48 = sub_268F9AB04();
  v47 = *(v43 + 8);
  v47(v44, v46);
  v47(v45, v46);
  sub_268DB9934(v49, v50, v51, v52, (v48 ^ 1) & 1);
  MEMORY[0x277D82BD8](v52);

  v54 = sub_268DD1A1C();

  if (v54)
  {
    v38 = *(v42 + 232);

    sub_268DD1AE0();

    sub_268CDE730(v38 + qword_2802DDFC8, v42 + 56);
    v39 = *(v42 + 80);
    v40 = *(v42 + 88);
    __swift_project_boxed_opaque_existential_1((v42 + 56), v39);

    v41 = (*(v40 + 48) + **(v40 + 48));
    v3 = swift_task_alloc();
    v4 = v39;
    v5 = v40;
    v6 = v41;
    v7 = v3;
    v8 = sub_268EE4A74;
    *(v42 + 272) = v7;
    *v7 = *(v42 + 112);
    v7[1] = sub_268ED5394;
    v9 = *(v42 + 232);

    return v6(v8, v9, v4, v5);
  }

  *(v42 + 160) = *(v42 + 216);
  v11 = sub_268D588E0();
  v36 = SettingIntent.settingIdentifier.getter(v11, &protocol witness table for INSetNumericSettingIntent);
  v37 = v12;
  *(v42 + 296) = v12;
  if (v12)
  {
    v13 = *(v42 + 216);
    *(v42 + 96) = v36;
    *(v42 + 104) = v12;
    v14 = [v13 numericValue];
    v35 = v14;
    if (v14)
    {
      v33 = [v14 value];
      MEMORY[0x277D82BD8](v35);
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    *(v42 + 304) = v34;
    if (v34)
    {
      v25 = *(v42 + 232);
      v28 = *(v42 + 224);
      v27 = *(v42 + 216);
      *(v42 + 168) = v34;
      type metadata accessor for SettingsNumericSetting(0);

      MEMORY[0x277D82BE0](v34);
      v26 = SettingsNumericSetting.__allocating_init(settingId:value:)(v36, v37, v34);
      *(v42 + 312) = v26;
      *(v42 + 176) = v26;
      sub_268F72BC4(v27);
      *(v42 + 352) = v55;
      sub_268CDE730(v25 + qword_2802DDFE0, v42 + 16);
      v30 = *(v42 + 40);
      v31 = *(v42 + 48);
      __swift_project_boxed_opaque_existential_1((v42 + 16), v30);

      MEMORY[0x277D82BE0](v27);
      MEMORY[0x277D82BE0](v28);
      v29 = swift_task_alloc();
      *(v42 + 320) = v29;
      v29[2] = v25;
      v29[3] = v26;
      v29[4] = v27;
      v29[5] = v28;
      v32 = (*(v31 + 16) + **(v31 + 16));
      v15 = swift_task_alloc();
      v9 = v29;
      v4 = v30;
      v5 = v31;
      v6 = v32;
      v16 = v15;
      v8 = sub_268EE4A60;
      *(v42 + 328) = v16;
      *v16 = *(v42 + 112);
      v16[1] = sub_268ED568C;

      return v6(v8, v9, v4, v5);
    }
  }

  v17 = sub_268DB98D4();
  v22 = *v17;
  v20 = v17[1];
  v21 = *(v17 + 16);
  v18 = sub_268DC7BA8();
  v23 = *v18;
  MEMORY[0x277D82BE0](*v18);
  sub_268DB9B78(v22, v20, v21, v23);
  MEMORY[0x277D82BD8](v23);
  v24 = *(v42 + 152);
  MEMORY[0x277D82BE0](v24);
  MEMORY[0x277D82BD8](*(v42 + 152));

  v19 = *(*(v42 + 112) + 8);

  return v19(v24);
}

uint64_t sub_268ED5394(uint64_t a1)
{
  v5 = *v2;
  v5[14] = *v2;
  v5[35] = a1;
  v5[36] = v1;

  if (v1)
  {
    v3 = sub_268ED5A1C;
  }

  else
  {

    v3 = sub_268ED5518;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268ED5518()
{
  v1 = v0[35];
  v0[14] = v0;
  v2 = v0[19];
  v0[19] = v1;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v3 = sub_268DB98D4();
  v9 = *v3;
  v7 = v3[1];
  v8 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v10 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  v11 = v0[19];
  MEMORY[0x277D82BE0](v11);
  MEMORY[0x277D82BD8](v0[19]);

  v5 = *(v0[14] + 8);

  return v5(v11);
}

uint64_t sub_268ED568C(uint64_t a1)
{
  v7 = *v2;
  v7[14] = *v2;
  v7[42] = a1;
  v7[43] = v1;

  if (v1)
  {
    v3 = sub_268ED5CFC;
  }

  else
  {
    v6 = v7[28];
    v5 = v7[27];

    v3 = sub_268ED5850;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268ED5850()
{
  v1 = v0[42];
  v7 = v0[38];
  v0[14] = v0;
  v2 = v0[19];
  v0[19] = v1;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  MEMORY[0x277D82BD8](v7);

  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  v12 = v0[19];
  MEMORY[0x277D82BE0](v12);
  MEMORY[0x277D82BD8](v0[19]);

  v5 = *(v0[14] + 8);

  return v5(v12);
}

uint64_t sub_268ED5A1C()
{
  v19 = v0[36];
  v0[14] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v19;
  v0[25] = v19;
  v2 = sub_268DC858C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[26] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#RetainingCurrentBinaryValue pattern execution error %@", 77, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB9CB4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[19]);

  v8 = *(v0[14] + 8);

  return v8();
}

uint64_t sub_268ED5CFC()
{
  v22 = v0[43];
  v12 = v0[38];
  v11 = v0[28];
  v10 = v0[27];
  v0[14] = v0;

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  MEMORY[0x277D82BD8](v12);

  v1 = v22;
  v0[23] = v22;
  v2 = sub_268DC858C();
  v17 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v16 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v15 = v3;
  v4 = v22;
  v0[24] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v13 = sub_268F9AE64();
  v14 = v5;
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = sub_268CDD224();
  *v15 = v13;
  v15[1] = v14;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingIntent#.retainingCurrentNumericValue pattern execution error %@", 80, 2, &dword_268CBE000, v17, v16);

  MEMORY[0x277D82BD8](v17);
  v6 = sub_268DB9CB4();
  v20 = *v6;
  v18 = v6[1];
  v19 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v21 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[19]);

  v8 = *(v0[14] + 8);

  return v8();
}

uint64_t sub_268ED606C(void *a1, uint64_t a2)
{
  type metadata accessor for SettingsBinarySetting(0);
  v2 = sub_268E7C600();
  v5 = SettingsBinarySetting.__allocating_init(settingId:value:)(v2, v3, 1u);
  *(a1 + *(type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(0) + 24)) = v5;

  v8 = *(a2 + qword_2802DDFB8);

  *a1 = v8;
}

void *sub_268ED617C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v22 = a1;
  v17 = a2;
  v16 = a3;
  v19 = a4;
  v18 = a5;
  v31 = 0;
  v30 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v14 = *a2;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v17, v16, v19);
  v23 = &v12 - v13;
  v31 = v5;
  v30 = v6;
  v21 = 0;
  v29 = *(v14 + qword_2802F1640);
  v28 = *(v14 + qword_2802F1640 + 8);
  v27 = v7;
  v26 = v8;
  v25 = v9;
  v15 = *(v6 + qword_2802DDFB8);

  *(v22 + 8) = v15;

  *(v22 + 16) = v16;

  v20 = v24;
  sub_268CDE730(v17 + qword_2802DE030, v24);
  sub_268E084E0(v19, v18, v20, v23);
  __swift_destroy_boxed_opaque_existential_0(v20);
  v10 = type metadata accessor for SetNumericSettingIntentRetainingCurrentNumericValueParameters(v21);
  return sub_268D29FC8(v23, (v22 + *(v10 + 28)));
}

uint64_t sub_268ED6344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = v3;
  v4[15] = a3;
  v4[14] = a2;
  v4[7] = v4;
  v4[8] = 0;
  v4[9] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v4[12] = 0;
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = a3;
  v4[11] = v3;
  return MEMORY[0x2822009F8](sub_268ED63B4, 0);
}

uint64_t sub_268ED63B4()
{
  v1 = *(v0 + 120);
  v30 = v1;
  *(v0 + 56) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v30)
  {
    v25 = v29[15];
    v26 = [v25 code];
    MEMORY[0x277D82BD8](v25);
    v27 = v26;
    v28 = 0;
  }

  else
  {
    v27 = 0;
    v28 = 1;
  }

  if (v28)
  {
    v11 = sub_268DC858C();
    v15 = *v11;
    MEMORY[0x277D82BE0](*v11);
    v14 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("SetNumericSettingIntentResponse does not exist", 46, 2, &dword_268CBE000, v15, v14);

    MEMORY[0x277D82BD8](v15);
    sub_268EE278C();
    swift_allocError();
    *v12 = 4;
    swift_willThrow();
LABEL_15:
    v13 = *(v29[7] + 8);

    return v13();
  }

  v29[12] = v27;
  if (v27 != 8)
  {
    if (v27 == 9)
    {
      v2 = swift_task_alloc();
      v29[17] = v2;
      *v2 = v29[7];
      v2[1] = sub_268ED69F8;
      v3 = v29[15];
      v4 = v29[14];

      return sub_268ED6EE0(v4, v3);
    }

    v16 = v29[15];
    v7 = sub_268DC858C();
    v21 = *v7;
    MEMORY[0x277D82BE0](*v7);
    v20 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v19 = v8;
    MEMORY[0x277D82BE0](v16);
    v29[13] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
    v17 = sub_268F9AE64();
    v18 = v9;
    v19[3] = MEMORY[0x277D837D0];
    v19[4] = sub_268CDD224();
    *v19 = v17;
    v19[1] = v18;
    sub_268CD0F7C();
    sub_268F9AC04("SetNumericSettingIntentResponse contains unsupported error code: %@", 67, 2, &dword_268CBE000, v21, v20);

    MEMORY[0x277D82BD8](v21);
    sub_268EE278C();
    swift_allocError();
    *v10 = 6;
    swift_willThrow();
    goto LABEL_15;
  }

  sub_268CDE730(v29[16] + qword_2802DDFF8, (v29 + 2));
  v24 = v29[5];
  v22 = v29[6];
  __swift_project_boxed_opaque_existential_1(v29 + 2, v24);
  v23 = (*(v22 + 40) + **(v22 + 40));
  v6 = swift_task_alloc();
  v29[18] = v6;
  *v6 = v29[7];
  v6[1] = sub_268ED6C04;

  return v23(v24, v22);
}

uint64_t sub_268ED69F8(uint64_t a1)
{
  v7 = *v2;
  *(v7 + 56) = *v2;
  v8 = v7 + 56;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    v3 = a1;
    v4 = *(*v8 + 8);
  }

  return v4(v3);
}

uint64_t sub_268ED6C04(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[19] = a1;
  v5[20] = v1;

  if (v1)
  {
    v3 = sub_268ED6E2C;
  }

  else
  {
    v3 = sub_268ED6D74;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268ED6D74()
{
  v0[7] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[19];
  v2 = *(v0[7] + 8);

  return v2(v1);
}

uint64_t sub_268ED6E2C()
{
  *(v0 + 56) = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(*(v0 + 56) + 8);

  return v1();
}

uint64_t sub_268ED6EE0(uint64_t a1, uint64_t a2)
{
  *(v3 + 376) = v2;
  *(v3 + 368) = a2;
  *(v3 + 360) = a1;
  *(v3 + 232) = v3;
  *(v3 + 240) = 0;
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 280) = 0;
  *(v3 + 296) = 0;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
  *(v3 + 520) = 0;
  *(v3 + 312) = 0;
  *(v3 + 328) = 0;
  *(v3 + 336) = 0;
  *(v3 + 352) = 0;
  v4 = sub_268F9AB24();
  *(v3 + 384) = v4;
  *(v3 + 392) = *(v4 - 8);
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 240) = a1;
  *(v3 + 248) = a2;
  *(v3 + 256) = v2;

  return MEMORY[0x2822009F8](sub_268ED705C, 0);
}

uint64_t sub_268ED705C()
{
  v82 = v0;
  v1 = v0[51];
  v70 = v0[50];
  v69 = v0[49];
  v71 = v0[48];
  v68 = v0[47];
  v78 = v0[46];
  v0[29] = v0;
  v2 = sub_268DB9CB4();
  v74 = *v2;
  v75 = v2[1];
  v76 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v77 = *v3;
  MEMORY[0x277D82BE0](*v3);
  (*(v69 + 16))(v1, v68 + qword_2802DDFB0, v71);
  sub_268F9AB14();
  v73 = sub_268F9AB04();
  v72 = *(v69 + 8);
  v72(v70, v71);
  v72(v1, v71);
  sub_268DB9934(v74, v75, v76, v77, (v73 ^ 1) & 1);
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BE0](v78);
  if (v78)
  {
    v65 = *(v67 + 368);
    v66 = [v65 errorDetail];
    if (v66)
    {
      v61 = sub_268F9AE24();
      v62 = v4;
      MEMORY[0x277D82BD8](v66);
      v63 = v61;
      v64 = v62;
    }

    else
    {
      v63 = 0;
      v64 = 0;
    }

    MEMORY[0x277D82BD8](v65);
    v59 = v63;
    v60 = v64;
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  *(v67 + 416) = v60;
  if (v60)
  {
    *(v67 + 136) = v59;
    *(v67 + 144) = v60;

    *(v67 + 152) = sub_268E948B8(3);
    *(v67 + 160) = v5;
    v58 = MEMORY[0x26D62DB50](*(v67 + 152), *(v67 + 160), v59, v60);
    sub_268CD9D30(v67 + 152);
    if (v58)
    {
      v51 = *(v67 + 376);
      v53 = *(v67 + 368);
      v52 = *(v67 + 360);

      sub_268CDE730(v51 + qword_2802DDFF8, v67 + 96);
      v55 = *(v67 + 120);
      v56 = *(v67 + 128);
      __swift_project_boxed_opaque_existential_1((v67 + 96), v55);

      MEMORY[0x277D82BE0](v52);
      MEMORY[0x277D82BE0](v53);
      v54 = swift_task_alloc();
      *(v67 + 424) = v54;
      v54[2] = v51;
      v54[3] = v52;
      v54[4] = v53;
      v57 = (*(v56 + 48) + **(v56 + 48));
      v6 = swift_task_alloc();
      *(v67 + 432) = v6;
      *v6 = *(v67 + 232);
      v6[1] = sub_268ED7F4C;

      return v57(sub_268EE4A88, v54, v55, v56);
    }

    *(v67 + 168) = sub_268E948B8(17);
    *(v67 + 176) = v8;
    v50 = MEMORY[0x26D62DB50](*(v67 + 168), *(v67 + 176), v59, v60);
    sub_268CD9D30(v67 + 168);
    if (v50)
    {
      v47 = *(v67 + 360);

      *(v67 + 304) = v47;
      v9 = sub_268D588E0();
      v48 = SettingIntent.settingIdentifier.getter(v9, &protocol witness table for INSetNumericSettingIntent);
      v49 = v10;
      *(v67 + 456) = v10;
      *(v67 + 200) = v48;
      *(v67 + 208) = v10;

      *(v67 + 216) = v48;
      *(v67 + 224) = v49;
      if (*(v67 + 224))
      {
        v80 = *(v67 + 216);
      }

      else
      {
        v80._countAndFlagsBits = sub_268F9AEF4();
        v80._object = v11;
        if (*(v67 + 224))
        {
          sub_268CD9D30(v67 + 216);
        }
      }

      v41 = *(v67 + 376);
      NumericSettingIdentifier.init(rawValue:)(v80);
      v81 = v79;
      v46 = sub_268F3988C(&v81);

      *(v67 + 520) = v46;
      sub_268CDE730(v41 + qword_2802DDFF8, v67 + 56);
      v43 = *(v67 + 80);
      v44 = *(v67 + 88);
      __swift_project_boxed_opaque_existential_1((v67 + 56), v43);

      v42 = swift_task_alloc();
      *(v67 + 464) = v42;
      *(v42 + 16) = v48;
      *(v42 + 24) = v49;
      v45 = (*(v44 + 72) + **(v44 + 72));
      v12 = swift_task_alloc();
      *(v67 + 472) = v12;
      *v12 = *(v67 + 232);
      v12[1] = sub_268ED825C;

      return v45(v46, sub_268EE4A7C, v42, v43, v44);
    }

    *(v67 + 184) = sub_268E948B8(22);
    *(v67 + 192) = v13;
    v40 = MEMORY[0x26D62DB50](*(v67 + 184), *(v67 + 192), v59, v60);
    sub_268CD9D30(v67 + 184);
    if (v40)
    {
      v36 = *(v67 + 376);

      sub_268CDE730(v36 + qword_2802DDFF8, v67 + 16);
      v39 = *(v67 + 40);
      v37 = *(v67 + 48);
      __swift_project_boxed_opaque_existential_1((v67 + 16), v39);
      v38 = (*(v37 + 104) + **(v37 + 104));
      v14 = swift_task_alloc();
      *(v67 + 496) = v14;
      *v14 = *(v67 + 232);
      v14[1] = sub_268ED8564;

      return v38(v39, v37);
    }

    v30 = *(v67 + 368);

    v15 = sub_268DC858C();
    v35 = *v15;
    MEMORY[0x277D82BE0](*v15);
    v34 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v33 = v16;
    MEMORY[0x277D82BE0](v30);
    *(v67 + 272) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
    v31 = sub_268F9AE64();
    v32 = v17;
    v33[3] = MEMORY[0x277D837D0];
    v33[4] = sub_268CDD224();
    *v33 = v31;
    v33[1] = v32;
    sub_268CD0F7C();
    sub_268F9AC04("SetNumericSettingIntentResponse 'other reason' error code contains unsupported error detail: %@", 95, 2, &dword_268CBE000, v35, v34);

    MEMORY[0x277D82BD8](v35);
    sub_268EE278C();
    swift_allocError();
    *v18 = 7;
    swift_willThrow();
  }

  else
  {
    v24 = *(v67 + 368);
    v19 = sub_268DC858C();
    v29 = *v19;
    MEMORY[0x277D82BE0](*v19);
    v28 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v27 = v20;
    MEMORY[0x277D82BE0](v24);
    *(v67 + 264) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
    v25 = sub_268F9AE64();
    v26 = v21;
    v27[3] = MEMORY[0x277D837D0];
    v27[4] = sub_268CDD224();
    *v27 = v25;
    v27[1] = v26;
    sub_268CD0F7C();
    sub_268F9AC04("SetNumericSettingIntentResponse contains error code 'other reason' but no details: %@", 85, 2, &dword_268CBE000, v29, v28);

    MEMORY[0x277D82BD8](v29);
    sub_268EE278C();
    swift_allocError();
    *v22 = 5;
    swift_willThrow();
  }

  v23 = *(*(v67 + 232) + 8);

  return v23();
}

uint64_t sub_268ED7F4C(uint64_t a1)
{
  v7 = *v2;
  v7[29] = *v2;
  v7[55] = a1;
  v7[56] = v1;

  if (v1)
  {
    v3 = sub_268ED8830;
  }

  else
  {
    v6 = v7[46];
    v5 = v7[45];

    v3 = sub_268ED8100;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268ED8100()
{
  v1 = v0[55];
  v0[29] = v0;
  v0[44] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v2 = sub_268DB9CB4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  v10 = v0[55];

  v4 = *(v0[29] + 8);

  return v4(v10);
}

uint64_t sub_268ED825C(uint64_t a1)
{
  v5 = *v2;
  v5[29] = *v2;
  v5[60] = a1;
  v5[61] = v1;

  if (v1)
  {
    v3 = sub_268ED8B48;
  }

  else
  {

    v3 = sub_268ED83F0;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268ED83F0()
{
  v1 = v0[60];
  v0[29] = v0;
  v0[41] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = sub_268DB9CB4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  v10 = v0[60];

  v4 = *(v0[29] + 8);

  return v4(v10);
}

uint64_t sub_268ED8564(uint64_t a1)
{
  v5 = *v2;
  v5[29] = *v2;
  v5[63] = a1;
  v5[64] = v1;

  if (v1)
  {
    v3 = sub_268ED8E40;
  }

  else
  {
    v3 = sub_268ED86D4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268ED86D4()
{
  v1 = v0[63];
  v0[29] = v0;
  v0[37] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = sub_268DB9CB4();
  v8 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v8, v6, v7, v9);
  MEMORY[0x277D82BD8](v9);

  v10 = v0[63];

  v4 = *(v0[29] + 8);

  return v4(v10);
}

uint64_t sub_268ED8830()
{
  v21 = v0[56];
  v11 = v0[46];
  v10 = v0[45];
  v0[29] = v0;

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v21;
  v0[42] = v21;
  v2 = sub_268DC858C();
  v16 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v15 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v14 = v3;
  v4 = v21;
  v0[43] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v12 = sub_268F9AE64();
  v13 = v5;
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = sub_268CDD224();
  *v14 = v12;
  v14[1] = v13;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingIntent#deviceDoesNotSupportNumericSetting pattern execution error %@", 85, 2, &dword_268CBE000, v16, v15);

  MEMORY[0x277D82BD8](v16);
  v6 = sub_268DB9CB4();
  v19 = *v6;
  v17 = v6[1];
  v18 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v20 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v19, v17, v18, v20);
  MEMORY[0x277D82BD8](v20);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v8 = *(v0[29] + 8);

  return v8();
}

uint64_t sub_268ED8B48()
{
  v19 = v0[61];
  v0[29] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v1 = v19;
  v0[39] = v19;
  v2 = sub_268DC858C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[40] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent#SiriCannotChangeNumericSetting pattern execution error %@", 71, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB9CB4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v8 = *(v0[29] + 8);

  return v8();
}

uint64_t sub_268ED8E40()
{
  v19 = v0[64];
  v0[29] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v19;
  v0[35] = v19;
  v2 = sub_268DC858C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[36] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingIntent#displaySettingsDisabledForCurrentMode pattern execution error %@", 88, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB9CB4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v8 = *(v0[29] + 8);

  return v8();
}

uint64_t sub_268ED9110(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = a1;
  v28 = a3;
  v29 = a4;
  v42 = 0;
  v41 = 0;
  v38 = 0;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v24 = *a2;
  v23 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26, v5, v28, v29);
  v25 = v15 - v23;
  v42 = v6;
  v41 = a2;
  v40 = *(v24 + qword_2802F1640);
  v39 = *(v24 + qword_2802F1640 + 8);
  v38 = v7;
  v37 = v8;
  v27 = *(a2 + qword_2802DDFB8);

  *v26 = v27;

  result = sub_268EE21E8(v28, v29);
  v30._countAndFlagsBits = result;
  v30._object = v10;
  v31 = v11;
  if (v10)
  {
    v21 = v30;
    v22 = v31;
    v16 = v31;
    v19 = v30;
    v35 = v30;
    v36 = v31;
    v17 = 0;
    v18 = type metadata accessor for SettingsNumericSetting(0);

    sub_268D34FD4();
    v12 = sub_268F9B314();
    v13 = SettingsNumericSetting.__allocating_init(settingId:value:)(v19._countAndFlagsBits, v19._object, v12);
    *(v26 + 8) = v13;

    *(v26 + 16) = sub_268CDD6D4() & 1;

    NumericSettingIdentifier.init(rawValue:)(v19);
    v20 = v34;
    if (v34 != 13)
    {
      v15[3] = v20;
      v33 = v20;
      v32 = v20;
      sub_268E0AE44(&v32, v25);
      DoesNotSupportNumericSettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportNumericSettingParameters(0);
      sub_268D29FC8(v25, (v26 + *(DoesNotSupportNumericSettingParameters + 28)));
    }
  }

  return result;
}

double sub_268ED93C4(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = a1;
  v28 = a2;
  v34 = a3;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64);
  v29 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34, v28, v3, v4);
  v31 = &v14 - v29;
  v32 = v29;
  MEMORY[0x28223BE20](v5, v6, &v14 - v29, v7);
  v33 = &v14 - v32;
  v42 = v8;
  v40 = v9;
  v41 = v10;

  if (v34)
  {
    v25 = v28;
    v26 = v34;
    v23._object = v34;
    v23._countAndFlagsBits = v28;
    v38 = v28;
    v39 = v34;

    NumericSettingIdentifier.init(rawValue:)(v23);
    v24 = v37;
    if (v37 != 13)
    {
      v22 = v24;
      v19 = v24;
      v36 = v24;
      v21 = 0;
      v17 = type metadata accessor for SettingsNumericSetting(0);

      sub_268D34FD4();
      v12 = sub_268F2B5E0(v21);
      v18 = SettingsNumericSetting.__allocating_init(settingId:value:)(v23._countAndFlagsBits, v23._object, v12);
      v20 = type metadata accessor for SettingIntentSiriCannotChangeNumericSettingParameters(v21);
      *(v27 + v20[7]) = v18;

      v35 = v19;
      sub_268E0AE44(&v35, v33);
      sub_268D29FC8(v33, (v27 + v20[6]));
      sub_268D2A1F0((v27 + v20[6]), v31);
      v13 = sub_268F9A9C4();
      v16 = (*(*(v13 - 8) + 48))(v31, 1) == 1;
      v15 = v16;
      sub_268D28588(v31);
      *(v27 + v20[9]) = v15;
    }
  }

  return result;
}

uint64_t sub_268ED969C(void *a1, void *a2, void (*a3)(id *), uint64_t a4)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v17 = a4;
  v24 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v12 = *v4;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17, v14, v15, v5);
  v16 = (&v11 - v11);
  v24 = v6;
  v23 = v7;
  v21 = v8;
  v22 = v9;
  v20 = v4;
  v19 = *(v12 + qword_2802F1640);
  v18 = *(v12 + qword_2802F1640 + 8);

  sub_268ED97FC(v13, v14, v16);
  v15(v16);
  sub_268D28378(v16);
}

uint64_t sub_268ED97FC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v4 = *v3;
  v39 = a1;
  v38 = a2;
  v37 = v3;
  v36 = *(v4 + qword_2802F1640);
  v35 = *(v4 + qword_2802F1640 + 8);
  MEMORY[0x277D82BE0](a2);
  v27 = sub_268EE21E8(a1, a2);
  v29 = v5;
  v28 = v6;
  *&v7 = MEMORY[0x277D82BD8](a2).n128_u64[0];
  if (v29)
  {
    v32 = v27;
    v33 = v29;
    v34 = v28;
    v31 = [a2 oldValue];
    if (v31)
    {
      v21 = v31;
      MEMORY[0x277D82BE0](v31);
      sub_268D35038(&v31);
      v22 = [v21 value];
      MEMORY[0x277D82BD8](v21);
      v23 = v22;
    }

    else
    {
      sub_268D35038(&v31);
      v23 = 0;
    }

    if (v23)
    {
      type metadata accessor for SettingsNumericSetting(0);

      MEMORY[0x277D82BE0](v23);
      v30 = SettingsNumericSetting.__allocating_init(settingId:value:)(v27, v29, v23);

      sub_268E60D64(v30, v28);

      MEMORY[0x277D82BD8](v23);
    }

    else
    {
      v9 = sub_268DC858C();
      v20 = *v9;
      MEMORY[0x277D82BE0](*v9);
      v19 = sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v18 = v10;
      MEMORY[0x277D82BE0](a2);
      sub_268CDA484();
      sub_268EE4A98();
      v16 = sub_268F9AE74();
      v17 = v11;
      v18[3] = MEMORY[0x277D837D0];
      v18[4] = sub_268CDD224();
      *v18 = v16;
      v18[1] = v17;
      sub_268CD0F7C();
      sub_268F9AC04("SetNumericSettingIntentResponse response has invalid old value %@", 65, 2, &dword_268CBE000, v20, v19);

      MEMORY[0x277D82BD8](v20);
      sub_268EE278C();
      v12 = swift_allocError();
      *v13 = 3;
      *a3 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_268EE278C();
    v14 = swift_allocError();
    *v15 = 4;
    *a3 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_268ED9CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 960) = v4;
  *(v5 + 952) = a4;
  *(v5 + 944) = a3;
  *(v5 + 936) = a1;
  *(v5 + 824) = v5;
  *(v5 + 832) = 0;
  *(v5 + 840) = 0;
  *(v5 + 848) = 0;
  *(v5 + 856) = 0;
  *(v5 + 736) = 0;
  *(v5 + 744) = 0;
  *(v5 + 752) = 0;
  *(v5 + 872) = 0;
  *(v5 + 888) = 0;
  *(v5 + 760) = 0;
  *(v5 + 768) = 0;
  *(v5 + 1056) = 0;
  *(v5 + 1060) = 0;
  *(v5 + 896) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v5 + 968) = swift_task_alloc();
  *(v5 + 976) = swift_task_alloc();
  *(v5 + 832) = a2;
  *(v5 + 840) = a3;
  *(v5 + 848) = a4;
  *(v5 + 856) = v4;

  return MEMORY[0x2822009F8](sub_268ED9E2C, 0);
}

uint64_t sub_268ED9E2C(__n128 a1)
{
  v2 = v1[119];
  v3 = v1[118];
  v1[103] = v1;
  v43 = sub_268EE21E8(v3, v2);
  v1[123] = v43;
  v1[124] = v4;
  v1[125] = v5;
  if (!v4)
  {
    sub_268EE278C();
    swift_allocError();
    *v16 = 4;
    swift_willThrow();
    goto LABEL_22;
  }

  v39 = v4;
  v40 = v5;
  v41 = v42[119];
  v42[92] = v43;
  v42[93] = v4;
  v42[94] = v5;
  MEMORY[0x277D82BE0](v41);
  if (v41)
  {
    v38 = v42[119];
    v42[116] = [v38 oldValue];
    if (v42[116])
    {
      v35 = v42[116];
      MEMORY[0x277D82BE0](v35);
      sub_268D35038(v42 + 116);
      v36 = [v35 value];
      MEMORY[0x277D82BD8](v35);
      v37 = v36;
      goto LABEL_7;
    }

    sub_268D35038(v42 + 116);
    MEMORY[0x277D82BD8](v38);
  }

  v37 = 0;
LABEL_7:
  v42[126] = v37;
  if (!v37)
  {
    v18 = v42[119];
    v12 = sub_268DC858C();
    v23 = *v12;
    MEMORY[0x277D82BE0](*v12);
    v22 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v21 = v13;
    MEMORY[0x277D82BE0](v18);
    v42[108] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
    v19 = sub_268F9AE64();
    v20 = v14;
    v21[3] = MEMORY[0x277D837D0];
    v21[4] = sub_268CDD224();
    *v21 = v19;
    v21[1] = v20;
    sub_268CD0F7C();
    sub_268F9AC04("SetNumericSettingTemplatingService makeSnippetModel | response has invalid old value %@", 87, 2, &dword_268CBE000, v23, v22);

    MEMORY[0x277D82BD8](v23);
    sub_268EE278C();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();

    goto LABEL_22;
  }

  v34 = v42[119];
  v42[109] = v37;
  MEMORY[0x277D82BE0](v34);
  if (!v34)
  {
    goto LABEL_17;
  }

  v33 = v42[119];
  v42[115] = [v33 updatedValue];
  if (!v42[115])
  {
    sub_268D35038(v42 + 115);
    MEMORY[0x277D82BD8](v33);
LABEL_17:
    v32 = 0;
    goto LABEL_13;
  }

  v30 = v42[115];
  MEMORY[0x277D82BE0](v30);
  sub_268D35038(v42 + 115);
  v31 = [v30 value];
  MEMORY[0x277D82BD8](v30);
  v32 = v31;
LABEL_13:
  v42[127] = v32;
  if (v32)
  {
    v42[111] = v32;
    v6 = swift_task_alloc();
    v42[128] = v6;
    *v6 = v42[103];
    v6[1] = sub_268EDA790;

    return sub_268EE3398(v43, v39, v40, v32);
  }

  v24 = v42[119];
  v8 = sub_268DC858C();
  v29 = *v8;
  MEMORY[0x277D82BE0](*v8);
  v28 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v27 = v9;
  MEMORY[0x277D82BE0](v24);
  v42[110] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
  v25 = sub_268F9AE64();
  v26 = v10;
  v27[3] = MEMORY[0x277D837D0];
  v27[4] = sub_268CDD224();
  *v27 = v25;
  v27[1] = v26;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingTemplatingService makeSnippetModel | response has invalid updated value %@", 91, 2, &dword_268CBE000, v29, v28);

  MEMORY[0x277D82BD8](v29);
  sub_268EE278C();
  swift_allocError();
  *v11 = 2;
  swift_willThrow();
  MEMORY[0x277D82BD8](v37);

LABEL_22:

  v17 = *(v42[103] + 8);

  return v17();
}

uint64_t sub_268EDA790(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[103] = *v3;
  v6[129] = v2;
  v6[130] = a1;
  v6[131] = a2;

  if (v2)
  {
    v4 = sub_268EDB93C;
  }

  else
  {
    v4 = sub_268EDA908;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268EDA908()
{
  v88 = v0;
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1040);
  v78 = *(v0 + 984);
  *(v0 + 824) = v0;
  *(v0 + 760) = v2;
  *(v0 + 768) = v1;

  NumericSettingIdentifier.init(rawValue:)(v78);
  if (v79 == 13)
  {
    v30 = *(v77 + 984);
    v38 = *(v77 + 1016);
    v39 = *(v77 + 1008);
    v31 = *(v77 + 992);
    v23 = sub_268DC858C();
    v37 = *v23;
    MEMORY[0x277D82BE0](*v23);
    v36 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v35 = v24;

    *(v77 + 776) = v30;
    *(v77 + 784) = v31;
    v32 = MEMORY[0x277D837D0];
    v33 = sub_268F9AE84();
    v34 = v25;
    v35[3] = v32;
    v35[4] = sub_268CDD224();
    *v35 = v33;
    v35[1] = v34;
    sub_268CD0F7C();
    sub_268F9AC04("SetNumericSettingTemplatingService makeSnippetModel | invalid setting identifier %@", 83, 2, &dword_268CBE000, v37, v36);

    MEMORY[0x277D82BD8](v37);
    sub_268EE278C();
    swift_allocError();
    *v26 = 2;
    swift_willThrow();

    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);

    v27 = *(*(v77 + 824) + 8);

    return v27();
  }

  else
  {
    *(v77 + 1056) = v79;
    v80[0] = v79;
    *(v77 + 1060) = sub_268E07EE4(v80);
    *(v77 + 1064) = v3;
    sub_268F9B734();
    *v4 = 1;
    v4[1] = 2;
    sub_268CD0F7C();
    *(v77 + 896) = v5;
    *(v77 + 904) = v5;
    *(v77 + 1057) = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC910, "ā");
    sub_268DB7A80();
    sub_268D91118();
    if (sub_268F9AFC4())
    {
      v73 = *(v77 + 976);
      v80[1] = v79;
      settingId._countAndFlagsBits = NumericSettingIdentifier.rawValue.getter();
      settingId._object = v6;
      v80[2] = v79;
      graphicIcon._countAndFlagsBits = sub_268EB0934();
      graphicIcon._object = v7;
      v82 = v79;
      sub_268EB0234(v73);
      v74 = sub_268F9A9C4();
      v75 = *(v74 - 8);
      v76 = *(v75 + 48);
      if (v76(v73, 1) == 1)
      {
        sub_268D28588(*(v77 + 976));
        v69 = 0;
        v70 = 0;
      }

      else
      {
        v66 = *(v77 + 976);
        v67 = sub_268F9A9B4();
        v68 = v8;
        (*(v75 + 8))(v66, v74);
        v69 = v67;
        v70 = v68;
      }

      *(v77 + 792) = v69;
      *(v77 + 800) = v70;
      if (*(v77 + 800))
      {
        v9 = *(v77 + 800);
        v81._countAndFlagsBits = *(v77 + 792);
        v81._object = v9;
      }

      else
      {
        v81._countAndFlagsBits = sub_268F9AEF4();
        v81._object = v10;
        if (*(v77 + 800))
        {
          sub_268CD9D30(v77 + 792);
        }
      }

      v11 = *(v77 + 968);
      v65 = v11;
      leftIconName = v81;
      v84 = v79;
      sub_268EB0474(v11);
      if ((v76)(v65, 1, v74) == 1)
      {
        sub_268D28588(*(v77 + 968));
        v62 = 0;
        v63 = 0;
      }

      else
      {
        v59 = *(v77 + 968);
        v60 = sub_268F9A9B4();
        v61 = v12;
        (*(v75 + 8))(v59, v74);
        v62 = v60;
        v63 = v61;
      }

      *(v77 + 808) = v62;
      *(v77 + 816) = v63;
      if (*(v77 + 816))
      {
        v13 = *(v77 + 816);
        v83._countAndFlagsBits = *(v77 + 808);
        v83._object = v13;
      }

      else
      {
        v83._countAndFlagsBits = sub_268F9AEF4();
        v83._object = v14;
        if (*(v77 + 816))
        {
          sub_268CD9D30(v77 + 808);
        }
      }

      v57 = *(v77 + 944);
      v51 = *(v77 + 1016);
      v50 = *(v77 + 1008);
      rightIconName = v83;

      [v50 0x1FAD21978];
      oldValue = v15;
      [v51 0x1FAD21978];
      updatedValue = v16;
      sub_268F9B124();
      minValue = v17;
      sub_268F9B124();
      maxValue = v18;
      v85[0] = v79;
      step = sub_268EE3CFC(v85);
      v85[1] = v79;
      url.value._countAndFlagsBits = sub_268EB0030();
      url.value._object = v19;
      *(v77 + 912) = v57;
      v20 = sub_268D588E0();
      SettingIntent.deviceCategory.getter(v20, &protocol witness table for INSetNumericSettingIntent);
      if (v21)
      {
        v47 = 0;
        v48 = 1;
      }

      else
      {
        sub_268CD4334();
        v47 = v22;
        v48 = 0;
      }

      v86 = v47;
      v87 = v48 & 1;
      if (v48)
      {
        deviceCategoryInt = 0;
      }

      else
      {
        deviceCategoryInt = v86;
      }

      __dst = *(v77 + 936);
      v44 = *(v77 + 1016);
      v45 = *(v77 + 1008);
      NumericSettingModel.init(settingId:graphicIcon:leftIconName:rightIconName:label:oldValue:updatedValue:minValue:maxValue:step:url:deviceCategoryInt:)((v77 + 160), settingId, graphicIcon, leftIconName, rightIconName, *(v77 + 1040), oldValue, updatedValue, minValue, maxValue, step, url, deviceCategoryInt);
      memcpy((v77 + 448), (v77 + 160), 0x90uLL);
      sub_268D34CD8((v77 + 448), (v77 + 592));
      memcpy((v77 + 304), (v77 + 448), 0x90uLL);
      nullsub_1();
      memcpy(__dst, (v77 + 304), 0x90uLL);
      sub_268D34F58((v77 + 448));

      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v45);
    }

    else
    {
      v40 = *(v77 + 936);
      v41 = *(v77 + 1016);
      v42 = *(v77 + 1008);
      sub_268D34B74((v77 + 16));
      memcpy(v40, (v77 + 16), 0x90uLL);

      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v42);
    }

    v29 = *(*(v77 + 824) + 8);

    return v29();
  }
}

uint64_t sub_268EDB93C()
{
  v1 = v0[127];
  v4 = v0[126];
  v0[103] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);

  v2 = *(v0[103] + 8);

  return v2();
}

uint64_t sub_268EDBA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  v5 = swift_task_alloc();
  *(v7 + 56) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268ECFC20;

  return sub_268EDBB60(a1, a2, a3);
}

uint64_t sub_268EDBB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 232) = v3;
  *(v4 + 224) = a3;
  *(v4 + 216) = a2;
  *(v4 + 40) = v4;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 96) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 488) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 152) = 0;
  *(v4 + 168) = 0;
  *(v4 + 184) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 240) = v5;
  *(v4 + 248) = *(v5 - 8);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 48) = a1;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;

  return MEMORY[0x2822009F8](sub_268EDBCFC, 0);
}

uint64_t sub_268EDBCFC()
{
  v87 = v0;
  v81 = v0[28];
  v80 = v0[27];
  v0[5] = v0;
  v1 = sub_268DC858C();
  v79 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v78 = sub_268F9B284();
  v0[34] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v76 = v2;
  MEMORY[0x277D82BE0](v81);
  v0[10] = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
  v74 = sub_268F9AE64();
  v75 = v3;
  v76[3] = MEMORY[0x277D837D0];
  v77 = sub_268CDD224();
  v0[35] = v77;
  v76[4] = v77;
  *v76 = v74;
  v76[1] = v75;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingTemplatingService makeIntentHandledSyncRF2 | processIntentHandled: handling intent with SetNumericSettingIntentResponse: %@", 140, 2, &dword_268CBE000, v79, v78);

  MEMORY[0x277D82BD8](v79);
  v82 = sub_268EE21E8(v80, v81);
  v83 = v4;
  v84 = v5;
  v0[36] = v4;
  v0[37] = v5;
  if (!v4)
  {
    sub_268EE278C();
    swift_allocError();
    *v23 = 4;
    swift_willThrow();
    goto LABEL_34;
  }

  v72 = *(v73 + 224);
  *(v73 + 16) = v82;
  *(v73 + 24) = v4;
  *(v73 + 32) = v5;
  MEMORY[0x277D82BE0](v72);
  if (v72)
  {
    v71 = *(v73 + 224);
    *(v73 + 208) = [v71 oldValue];
    if (*(v73 + 208))
    {
      v68 = *(v73 + 208);
      MEMORY[0x277D82BE0](v68);
      sub_268D35038((v73 + 208));
      v69 = [v68 value];
      MEMORY[0x277D82BD8](v68);
      v70 = v69;
      goto LABEL_7;
    }

    sub_268D35038((v73 + 208));
    MEMORY[0x277D82BD8](v71);
  }

  v70 = 0;
LABEL_7:
  *(v73 + 304) = v70;
  if (!v70)
  {
    v25 = *(v73 + 224);
    v18 = sub_268DC858C();
    v28 = *v18;
    MEMORY[0x277D82BE0](*v18);
    v27 = sub_268F9B294();
    sub_268F9B734();
    v26 = v19;
    MEMORY[0x277D82BE0](v25);
    *(v73 + 88) = v25;
    v20 = sub_268F9AE64();
    v26[3] = MEMORY[0x277D837D0];
    v26[4] = v77;
    *v26 = v20;
    v26[1] = v21;
    sub_268CD0F7C();
    sub_268F9AC04("SetNumericSettingTemplatingService makeIntentHandledSyncRF2 | response has invalid old value %@", 95, 2, &dword_268CBE000, v28, v27);

    MEMORY[0x277D82BD8](v28);
    sub_268EE278C();
    swift_allocError();
    *v22 = 3;
    swift_willThrow();

    goto LABEL_34;
  }

  v67 = *(v73 + 224);
  *(v73 + 96) = v70;
  MEMORY[0x277D82BE0](v67);
  if (!v67)
  {
    goto LABEL_29;
  }

  v66 = *(v73 + 224);
  *(v73 + 200) = [v66 updatedValue];
  if (!*(v73 + 200))
  {
    sub_268D35038((v73 + 200));
    MEMORY[0x277D82BD8](v66);
LABEL_29:
    v65 = 0;
    goto LABEL_13;
  }

  v63 = *(v73 + 200);
  MEMORY[0x277D82BE0](v63);
  sub_268D35038((v73 + 200));
  v64 = [v63 value];
  MEMORY[0x277D82BD8](v63);
  v65 = v64;
LABEL_13:
  *(v73 + 312) = v65;
  if (v65)
  {
    v55 = *(v73 + 264);
    v54 = *(v73 + 256);
    v56 = *(v73 + 240);
    v53 = *(v73 + 232);
    v50 = *(v73 + 216);
    v52 = *(v73 + 248);
    *(v73 + 112) = v65;
    type metadata accessor for SettingsNumericSetting(0);

    MEMORY[0x277D82BE0](v65);
    v51 = SettingsNumericSetting.__allocating_init(settingId:value:)(v82, v83, v65);
    *(v73 + 320) = v51;
    *(v73 + 120) = v51;
    sub_268F72BC4(v50);
    *(v73 + 488) = v85;
    v6 = sub_268DB98D4();
    v59 = *v6;
    v60 = v6[1];
    v61 = *(v6 + 16);
    v7 = sub_268DC7BA8();
    v62 = *v7;
    MEMORY[0x277D82BE0](*v7);
    (*(v52 + 16))(v55, v53 + qword_2802DDFB0, v56);
    sub_268F9AB14();
    v58 = sub_268F9AB04();
    v57 = *(v52 + 8);
    v57(v54, v56);
    v57(v55, v56);
    sub_268DB9934(v59, v60, v61, v62, (v58 ^ 1) & 1);
    MEMORY[0x277D82BD8](v62);
    if (sub_268EE3214(v70))
    {
      if (sub_268EE32A8([*(v73 + 216) action]))
      {
        v48 = *(v73 + 232);
        *(v73 + 328) = *(v48 + qword_2802DDFE8);

        v49 = *(v48 + qword_2802DDFB8);
        *(v73 + 336) = v49;

        v8 = swift_task_alloc();
        *(v73 + 344) = v8;
        *v8 = *(v73 + 40);
        v8[1] = sub_268EDCEE4;

        return sub_268EAAD24(v51, v84, v49);
      }

      else
      {
        v44 = *(v73 + 232);
        *(v73 + 368) = *(v44 + qword_2802DDFE8);

        v47 = sub_268DD1954();

        v45 = sub_268DD1B2C();

        v46 = *(v44 + qword_2802DDFB8);
        *(v73 + 376) = v46;

        v10 = swift_task_alloc();
        *(v73 + 384) = v10;
        *v10 = *(v73 + 40);
        v10[1] = sub_268EDD2BC;

        return sub_268EA8044(v47 & 1, v45 & 1, v51, v84, v46);
      }
    }

    else
    {

      v86 = v85;
      v43 = sub_268E5787C(&v86);

      if (v43)
      {
        v40 = *(v73 + 232);
        *(v73 + 408) = *(v40 + qword_2802DDFE8);

        v42 = sub_268DD1B2C();

        v41 = *(v40 + qword_2802DDFB8);
        *(v73 + 416) = v41;

        v11 = swift_task_alloc();
        *(v73 + 424) = v11;
        *v11 = *(v73 + 40);
        v11[1] = sub_268EDD694;

        return sub_268EA51D8(v42 & 1, v51, v84, v41);
      }

      else
      {
        v33 = *(v73 + 232);
        v34 = *(v73 + 216);
        *(v73 + 448) = *(v33 + qword_2802DDFE8);

        v39 = sub_268DD1954();

        v35 = sub_268DD1B2C();

        v36 = *(v33 + qword_2802DDFB8);
        *(v73 + 456) = v36;

        v37 = sub_268DD17E4(v34, 2);

        v38 = sub_268DD17E4(v34, 3);

        v12 = swift_task_alloc();
        *(v73 + 464) = v12;
        *v12 = *(v73 + 40);
        v12[1] = sub_268EDDA6C;

        return sub_268EA3650(v39 & 1, v35 & 1, v51, v84, v36, v37, v38);
      }
    }
  }

  v29 = *(v73 + 224);
  v13 = sub_268DC858C();
  v32 = *v13;
  MEMORY[0x277D82BE0](*v13);
  v31 = sub_268F9B294();
  sub_268F9B734();
  v30 = v14;
  MEMORY[0x277D82BE0](v29);
  *(v73 + 104) = v29;
  v15 = sub_268F9AE64();
  v30[3] = MEMORY[0x277D837D0];
  v30[4] = v77;
  *v30 = v15;
  v30[1] = v16;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingTemplatingService makeIntentHandledSyncRF2 | response has invalid updated value %@", 99, 2, &dword_268CBE000, v32, v31);

  MEMORY[0x277D82BD8](v32);
  sub_268EE278C();
  swift_allocError();
  *v17 = 2;
  swift_willThrow();
  MEMORY[0x277D82BD8](v70);

LABEL_34:

  v24 = *(*(v73 + 40) + 8);

  return v24();
}

uint64_t sub_268EDCEE4(uint64_t a1)
{
  v5 = *v2;
  v5[5] = *v2;
  v5[44] = a1;
  v5[45] = v1;

  if (v1)
  {
    v3 = sub_268EDDE44;
  }

  else
  {

    v3 = sub_268EDD098;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EDD098()
{
  v1 = v0[44];
  v6 = v1;
  v0[5] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[16] = v6;
  v13 = v0[44];
  v11 = v0[39];
  v12 = v0[38];
  v2 = sub_268DB98D4();
  v9 = *v2;
  v7 = v2[1];
  v8 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v0[16]);

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);

  v4 = *(v0[5] + 8);

  return v4(v13);
}

uint64_t sub_268EDD2BC(uint64_t a1)
{
  v5 = *v2;
  v5[5] = *v2;
  v5[49] = a1;
  v5[50] = v1;

  if (v1)
  {
    v3 = sub_268EDE194;
  }

  else
  {

    v3 = sub_268EDD470;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EDD470()
{
  v1 = v0[49];
  v6 = v1;
  v0[5] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[16] = v6;
  v13 = v0[49];
  v11 = v0[39];
  v12 = v0[38];
  v2 = sub_268DB98D4();
  v9 = *v2;
  v7 = v2[1];
  v8 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v0[16]);

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);

  v4 = *(v0[5] + 8);

  return v4(v13);
}

uint64_t sub_268EDD694(uint64_t a1)
{
  v5 = *v2;
  v5[5] = *v2;
  v5[54] = a1;
  v5[55] = v1;

  if (v1)
  {
    v3 = sub_268EDE4E4;
  }

  else
  {

    v3 = sub_268EDD848;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EDD848()
{
  v1 = v0[54];
  v6 = v1;
  v0[5] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[16] = v6;
  v13 = v0[54];
  v11 = v0[39];
  v12 = v0[38];
  v2 = sub_268DB98D4();
  v9 = *v2;
  v7 = v2[1];
  v8 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v0[16]);

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);

  v4 = *(v0[5] + 8);

  return v4(v13);
}

uint64_t sub_268EDDA6C(uint64_t a1)
{
  v5 = *v2;
  v5[5] = *v2;
  v5[59] = a1;
  v5[60] = v1;

  if (v1)
  {
    v3 = sub_268EDE834;
  }

  else
  {

    v3 = sub_268EDDC20;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EDDC20()
{
  v1 = v0[59];
  v6 = v1;
  v0[5] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[16] = v6;
  v13 = v0[59];
  v11 = v0[39];
  v12 = v0[38];
  v2 = sub_268DB98D4();
  v9 = *v2;
  v7 = v2[1];
  v8 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v0[16]);

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);

  v4 = *(v0[5] + 8);

  return v4(v13);
}

uint64_t sub_268EDDE44()
{
  v19 = v0[45];
  v20 = v0[39];
  v21 = v0[38];
  v11 = v0[35];
  v0[5] = v0;

  v1 = v19;
  v0[23] = v19;
  v2 = sub_268DC858C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[24] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = v11;
  *v12 = v5;
  v12[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingTemplatingService makeIntentHandledSyncRF2 | UnspecifiedActionForSupportedNumericSetting execution error %@", 124, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v7 = sub_268DB98D4();
  v17 = *v7;
  v15 = v7[1];
  v16 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v18 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);

  v9 = *(v0[5] + 8);

  return v9();
}

uint64_t sub_268EDE194()
{
  v19 = v0[50];
  v20 = v0[39];
  v21 = v0[38];
  v11 = v0[35];
  v0[5] = v0;

  v1 = v19;
  v0[21] = v19;
  v2 = sub_268DC858C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[22] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = v11;
  *v12 = v5;
  v12[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingTemplatingService makeIntentHandledSyncRF2 | NoNeedToChangeNumericValueTo execution error %@", 109, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v7 = sub_268DB98D4();
  v17 = *v7;
  v15 = v7[1];
  v16 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v18 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);

  v9 = *(v0[5] + 8);

  return v9();
}

uint64_t sub_268EDE4E4()
{
  v19 = v0[55];
  v20 = v0[39];
  v21 = v0[38];
  v11 = v0[35];
  v0[5] = v0;

  v1 = v19;
  v0[19] = v19;
  v2 = sub_268DC858C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[20] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = v11;
  *v12 = v5;
  v12[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingTemplatingService makeIntentHandledSyncRF2 | ChangedNumericValueToSpokenOnly execution error %@", 112, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v7 = sub_268DB98D4();
  v17 = *v7;
  v15 = v7[1];
  v16 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v18 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);

  v9 = *(v0[5] + 8);

  return v9();
}

uint64_t sub_268EDE834()
{
  v19 = v0[60];
  v20 = v0[39];
  v21 = v0[38];
  v11 = v0[35];
  v0[5] = v0;

  v1 = v19;
  v0[17] = v19;
  v2 = sub_268DC858C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[18] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = v11;
  *v12 = v5;
  v12[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingTemplatingService makeIntentHandledSyncRF2 | ChangedNumericValueTo execution error %@", 102, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v7 = sub_268DB98D4();
  v17 = *v7;
  v15 = v7[1];
  v16 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v18 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);

  v9 = *(v0[5] + 8);

  return v9();
}

uint64_t sub_268EDEB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = v3;
  v4[10] = a3;
  v4[9] = a2;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  return MEMORY[0x2822009F8](sub_268EDEBF4, 0);
}

uint64_t sub_268EDEBF4()
{
  v1 = *(v0 + 80);
  v27 = v1;
  *(v0 + 16) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v27)
  {
    v22 = v26[10];
    v23 = [v22 code];
    MEMORY[0x277D82BD8](v22);
    v24 = v23;
    v25 = 0;
  }

  else
  {
    v24 = 0;
    v25 = 1;
  }

  if (v25)
  {
    v11 = sub_268DC858C();
    v15 = *v11;
    MEMORY[0x277D82BE0](*v11);
    v14 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("SetNumericSettingTemplatingService makeFailureHandlingIntentDialogSyncRF2 | intent response does not exist", 106, 2, &dword_268CBE000, v15, v14);

    MEMORY[0x277D82BD8](v15);
    sub_268EE278C();
    swift_allocError();
    *v12 = 4;
    swift_willThrow();
LABEL_15:
    v13 = *(v26[2] + 8);

    return v13();
  }

  v26[7] = v24;
  if (v24 != 8)
  {
    if (v24 == 9)
    {
      v2 = swift_task_alloc();
      v26[12] = v2;
      *v2 = v26[2];
      v2[1] = sub_268EDF194;
      v3 = v26[10];
      v4 = v26[9];

      return sub_268EDF640(v4, v3);
    }

    v16 = v26[10];
    v7 = sub_268DC858C();
    v21 = *v7;
    MEMORY[0x277D82BE0](*v7);
    v20 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v19 = v8;
    MEMORY[0x277D82BE0](v16);
    v26[8] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
    v17 = sub_268F9AE64();
    v18 = v9;
    v19[3] = MEMORY[0x277D837D0];
    v19[4] = sub_268CDD224();
    *v19 = v17;
    v19[1] = v18;
    sub_268CD0F7C();
    sub_268F9AC04("SetNumericSettingTemplatingService makeFailureHandlingIntentDialogSyncRF2 | intent response contains unsupported error code: %@", 127, 2, &dword_268CBE000, v21, v20);

    MEMORY[0x277D82BD8](v21);
    sub_268EE278C();
    swift_allocError();
    *v10 = 6;
    swift_willThrow();
    goto LABEL_15;
  }

  v26[13] = *(v26[11] + qword_2802DE000);

  v6 = swift_task_alloc();
  v26[14] = v6;
  *v6 = v26[2];
  v6[1] = sub_268EDF3A0;

  return sub_268EB880C();
}

uint64_t sub_268EDF194(uint64_t a1)
{
  v7 = *v2;
  *(v7 + 16) = *v2;
  v8 = v7 + 16;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    v3 = a1;
    v4 = *(*v8 + 8);
  }

  return v4(v3);
}

uint64_t sub_268EDF3A0(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 120) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268EDF58C, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268EDF58C()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268EDF640(uint64_t a1, uint64_t a2)
{
  *(v3 + 272) = v2;
  *(v3 + 264) = a2;
  *(v3 + 256) = a1;
  *(v3 + 128) = v3;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 176) = 0;
  *(v3 + 192) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 504) = 0;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 232) = 0;
  *(v3 + 248) = 0;
  sub_268F99834();
  *(v3 + 280) = swift_task_alloc();
  v4 = sub_268F99BC4();
  *(v3 + 288) = v4;
  *(v3 + 296) = *(v4 - 8);
  *(v3 + 304) = swift_task_alloc();
  v5 = sub_268F9AB24();
  *(v3 + 312) = v5;
  *(v3 + 320) = *(v5 - 8);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;
  *(v3 + 152) = v2;

  return MEMORY[0x2822009F8](sub_268EDF864, 0);
}

uint64_t sub_268EDF864()
{
  v79 = v0;
  v1 = v0[42];
  v67 = v0[41];
  v66 = v0[40];
  v68 = v0[39];
  v65 = v0[34];
  v75 = v0[33];
  v0[16] = v0;
  v2 = sub_268DB9CB4();
  v71 = *v2;
  v72 = v2[1];
  v73 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v74 = *v3;
  MEMORY[0x277D82BE0](*v3);
  (*(v66 + 16))(v1, v65 + qword_2802DDFB0, v68);
  sub_268F9AB14();
  v70 = sub_268F9AB04();
  v69 = *(v66 + 8);
  v69(v67, v68);
  v69(v1, v68);
  sub_268DB9934(v71, v72, v73, v74, (v70 ^ 1) & 1);
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BE0](v75);
  if (v75)
  {
    v62 = *(v64 + 264);
    v63 = [v62 errorDetail];
    if (v63)
    {
      v58 = sub_268F9AE24();
      v59 = v4;
      MEMORY[0x277D82BD8](v63);
      v60 = v58;
      v61 = v59;
    }

    else
    {
      v60 = 0;
      v61 = 0;
    }

    MEMORY[0x277D82BD8](v62);
    v56 = v60;
    v57 = v61;
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  *(v64 + 344) = v57;
  if (v57)
  {
    *(v64 + 16) = v56;
    *(v64 + 24) = v57;
    sub_268F99824();
    sub_268D18250();

    sub_268F99B94();

    *(v64 + 32) = sub_268E948B8(3);
    *(v64 + 40) = v5;
    v55 = MEMORY[0x26D62DB50](*(v64 + 32), *(v64 + 40), v56, v57);
    sub_268CD9D30(v64 + 32);
    if (v55)
    {
      v52 = *(v64 + 272);

      *(v64 + 352) = *(v52 + qword_2802DE000);

      v54 = *(v52 + qword_2802DDFB8);
      *(v64 + 360) = v54;

      v53 = sub_268CDD6D4();
      v6 = swift_task_alloc();
      *(v64 + 368) = v6;
      *v6 = *(v64 + 128);
      v6[1] = sub_268EE06D0;

      return sub_268EBA484(v54, v53 & 1);
    }

    *(v64 + 48) = sub_268E948B8(17);
    *(v64 + 56) = v8;
    v51 = MEMORY[0x26D62DB50](*(v64 + 48), *(v64 + 56), v56, v57);
    sub_268CD9D30(v64 + 48);
    if (v51)
    {
      v48 = *(v64 + 256);

      *(v64 + 200) = v48;
      v9 = sub_268D588E0();
      v49 = SettingIntent.settingIdentifier.getter(v9, &protocol witness table for INSetNumericSettingIntent);
      v50 = v10;
      *(v64 + 392) = v10;
      *(v64 + 80) = v49;
      *(v64 + 88) = v10;

      *(v64 + 96) = v49;
      *(v64 + 104) = v50;
      if (*(v64 + 104))
      {
        v77 = *(v64 + 96);
      }

      else
      {
        v77._countAndFlagsBits = sub_268F9AEF4();
        v77._object = v11;
        if (*(v64 + 104))
        {
          sub_268CD9D30(v64 + 96);
        }
      }

      NumericSettingIdentifier.init(rawValue:)(v77);
      v78 = v76;
      v47 = sub_268F3988C(&v78);

      *(v64 + 504) = v47;

      if (v50)
      {
        v12 = *(v64 + 272);
        *(v64 + 112) = v49;
        *(v64 + 120) = v50;
        *(v64 + 400) = *(v12 + qword_2802DE000);

        type metadata accessor for SettingsNumericSetting(0);

        sub_268D34FD4();
        v13 = sub_268F2B5E0(0);
        v46 = SettingsNumericSetting.__allocating_init(settingId:value:)(v49, v50, v13);
        *(v64 + 408) = v46;
        v14 = swift_task_alloc();
        v15 = v46;
        *(v64 + 416) = v14;
        *v14 = *(v64 + 128);
        v14[1] = sub_268EE0A10;
        v16 = v47;
      }

      else
      {
        *(v64 + 440) = *(*(v64 + 272) + qword_2802DE000);

        v17 = swift_task_alloc();
        *(v64 + 448) = v17;
        *v17 = *(v64 + 128);
        v17[1] = sub_268EE0DBC;
        v16 = v47;
        v15 = 0;
      }

      return sub_268EC17FC(v16, v15);
    }

    *(v64 + 64) = sub_268E948B8(22);
    *(v64 + 72) = v18;
    v45 = MEMORY[0x26D62DB50](*(v64 + 64), *(v64 + 72), v56, v57);
    sub_268CD9D30(v64 + 64);
    if (v45)
    {
      v44 = *(v64 + 272);

      *(v64 + 472) = *(v44 + qword_2802DE000);

      v19 = swift_task_alloc();
      *(v64 + 480) = v19;
      *v19 = *(v64 + 128);
      v19[1] = sub_268EE113C;

      return sub_268EBB148();
    }

    v42 = *(v64 + 304);
    v43 = *(v64 + 288);
    v35 = *(v64 + 264);
    v41 = *(v64 + 296);

    v20 = sub_268DC858C();
    v40 = *v20;
    MEMORY[0x277D82BE0](*v20);
    v39 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v38 = v21;
    MEMORY[0x277D82BE0](v35);
    *(v64 + 168) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
    v36 = sub_268F9AE64();
    v37 = v22;
    v38[3] = MEMORY[0x277D837D0];
    v38[4] = sub_268CDD224();
    *v38 = v36;
    v38[1] = v37;
    sub_268CD0F7C();
    sub_268F9AC04("SetNumericSettingTemplatingService handleOtherFailureReasonRF2 | intent response 'other reason' error code contains unsupported error detail: %@", 144, 2, &dword_268CBE000, v40, v39);

    MEMORY[0x277D82BD8](v40);
    sub_268EE278C();
    swift_allocError();
    *v23 = 7;
    swift_willThrow();
    (*(v41 + 8))(v42, v43);
  }

  else
  {
    v29 = *(v64 + 264);
    v24 = sub_268DC858C();
    v34 = *v24;
    MEMORY[0x277D82BE0](*v24);
    v33 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v32 = v25;
    MEMORY[0x277D82BE0](v29);
    *(v64 + 160) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
    v30 = sub_268F9AE64();
    v31 = v26;
    v32[3] = MEMORY[0x277D837D0];
    v32[4] = sub_268CDD224();
    *v32 = v30;
    v32[1] = v31;
    sub_268CD0F7C();
    sub_268F9AC04("SetNumericSettingTemplatingService handleOtherFailureReasonRF2 | intent response contains error code 'other reason' but no details: %@", 134, 2, &dword_268CBE000, v34, v33);

    MEMORY[0x277D82BD8](v34);
    sub_268EE278C();
    swift_allocError();
    *v27 = 5;
    swift_willThrow();
  }

  v28 = *(*(v64 + 128) + 8);

  return v28();
}

uint64_t sub_268EE06D0(uint64_t a1)
{
  v5 = *v2;
  v5[16] = *v2;
  v5[47] = a1;
  v5[48] = v1;

  if (v1)
  {
    v3 = sub_268EE146C;
  }

  else
  {

    v3 = sub_268EE0864;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EE0864()
{
  v1 = v0[47];
  v12 = v0[38];
  v11 = v0[37];
  v13 = v0[36];
  v0[16] = v0;
  v0[31] = v1;
  v2 = sub_268DB9CB4();
  v9 = *v2;
  v7 = v2[1];
  v8 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v9, v7, v8, v10);
  v4 = MEMORY[0x277D82BD8](v10);
  (*(v11 + 8))(v12, v13, v4);

  v14 = v0[47];

  v5 = *(v0[16] + 8);

  return v5(v14);
}

uint64_t sub_268EE0A10(uint64_t a1)
{
  v5 = *v2;
  v5[16] = *v2;
  v5[53] = a1;
  v5[54] = v1;

  if (v1)
  {
    v3 = sub_268EE17A4;
  }

  else
  {

    v3 = sub_268EE0BA4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EE0BA4()
{
  v1 = v0[53];
  v6 = v1;
  v0[16] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[26] = v6;

  v14 = v0[53];
  v12 = v0[38];
  v11 = v0[37];
  v13 = v0[36];
  v2 = sub_268DB98D4();
  v9 = *v2;
  v7 = v2[1];
  v8 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v0[26]);

  (*(v11 + 8))(v12, v13);

  v4 = *(v0[16] + 8);

  return v4(v14);
}

uint64_t sub_268EE0DBC(uint64_t a1)
{
  v5 = *v2;
  v5[16] = *v2;
  v5[57] = a1;
  v5[58] = v1;

  if (v1)
  {
    v3 = sub_268EE1B20;
  }

  else
  {

    v3 = sub_268EE0F40;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EE0F40()
{
  v1 = v0[57];
  v6 = v1;
  v0[16] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[26] = v6;
  v14 = v0[57];
  v12 = v0[38];
  v11 = v0[37];
  v13 = v0[36];
  v2 = sub_268DB98D4();
  v9 = *v2;
  v7 = v2[1];
  v8 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v0[26]);

  (*(v11 + 8))(v12, v13);

  v4 = *(v0[16] + 8);

  return v4(v14);
}

uint64_t sub_268EE113C(uint64_t a1)
{
  v5 = *v2;
  v5[16] = *v2;
  v5[61] = a1;
  v5[62] = v1;

  if (v1)
  {
    v3 = sub_268EE1E80;
  }

  else
  {

    v3 = sub_268EE12C0;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EE12C0()
{
  v1 = v0[61];
  v12 = v0[38];
  v11 = v0[37];
  v13 = v0[36];
  v0[16] = v0;
  v0[24] = v1;
  v2 = sub_268DB98D4();
  v9 = *v2;
  v7 = v2[1];
  v8 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v9, v7, v8, v10);
  v4 = MEMORY[0x277D82BD8](v10);
  (*(v11 + 8))(v12, v13, v4);

  v14 = v0[61];

  v5 = *(v0[16] + 8);

  return v5(v14);
}

uint64_t sub_268EE146C()
{
  v19 = v0[48];
  v21 = v0[38];
  v20 = v0[37];
  v22 = v0[36];
  v0[16] = v0;

  v1 = v19;
  v0[29] = v19;
  v2 = sub_268DC858C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[30] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingTemplatingService handleOtherFailureReasonRF2 | deviceDoesNotSupportNumericSetting execution error %@", 118, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB98D4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  (*(v20 + 8))(v21, v22);

  v8 = *(v0[16] + 8);

  return v8();
}

uint64_t sub_268EE17A4()
{
  v0[16] = v0;

  v19 = v0[54];
  v21 = v0[38];
  v20 = v0[37];
  v22 = v0[36];
  v1 = v19;
  v0[27] = v19;
  v2 = sub_268DC858C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[28] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingTemplatingService handleOtherFailureReasonRF2 | SiriCannotChangeNumericSetting execution error %@", 114, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB98D4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  (*(v20 + 8))(v21, v22);

  v8 = *(v0[16] + 8);

  return v8();
}

uint64_t sub_268EE1B20()
{
  v0[16] = v0;

  v19 = v0[58];
  v21 = v0[38];
  v20 = v0[37];
  v22 = v0[36];
  v1 = v19;
  v0[27] = v19;
  v2 = sub_268DC858C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[28] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingTemplatingService handleOtherFailureReasonRF2 | SiriCannotChangeNumericSetting execution error %@", 114, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB98D4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  (*(v20 + 8))(v21, v22);

  v8 = *(v0[16] + 8);

  return v8();
}

uint64_t sub_268EE1E80()
{
  v19 = v0[62];
  v21 = v0[38];
  v20 = v0[37];
  v22 = v0[36];
  v0[16] = v0;

  v1 = v19;
  v0[22] = v19;
  v2 = sub_268DC858C();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[23] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingTemplatingService handleOtherFailureReasonRF2 | displaySettingsDisabledForCurrentMode execution error %@", 121, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v6 = sub_268DB98D4();
  v17 = *v6;
  v15 = v6[1];
  v16 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v18 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  (*(v20 + 8))(v21, v22);

  v8 = *(v0[16] + 8);

  return v8();
}

uint64_t sub_268EE21E8(void *a1, void *a2)
{
  v31 = [a1 settingMetadata];
  if (v31)
  {
    MEMORY[0x277D82BE0](a2);
    if (a2)
    {
      v27 = [v31 settingId];
      sub_268F9AE24();
      v28 = sub_268F9AF14();

      *&v2 = MEMORY[0x277D82BD8](v27).n128_u64[0];
      if (v28)
      {
        v3 = sub_268DC858C();
        v25 = *v3;
        MEMORY[0x277D82BE0](*v3);
        v24 = sub_268F9B294();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        sub_268F9B734();
        v23 = v4;
        MEMORY[0x277D82BE0](v31);
        sub_268D291D4();
        sub_268D29238();
        v21 = sub_268F9AE74();
        v22 = v5;
        v23[3] = MEMORY[0x277D837D0];
        v23[4] = sub_268CDD224();
        *v23 = v21;
        v23[1] = v22;
        sub_268CD0F7C();
        sub_268F9AC04("SetNumericSettingIntentResponse setting metadata doesn't have setting ID %@", 75, 2, &dword_268CBE000, v25, v24);

        MEMORY[0x277D82BD8](v25);
        MEMORY[0x277D82BD8](a2);
        MEMORY[0x277D82BD8](v31);
        return 0;
      }

      else
      {
        v19 = [v31 settingId];
        sub_268F9AE24();
        sub_268EE2808(a1, a2);
        sub_268EE21D4();
        v20 = v6;
        MEMORY[0x277D82BD8](v19);
        MEMORY[0x277D82BD8](a2);
        MEMORY[0x277D82BD8](v31);
        return v20;
      }
    }

    else
    {
      v7 = sub_268DC858C();
      v18 = *v7;
      MEMORY[0x277D82BE0](*v7);
      v17 = sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC04("SetNumericSettingIntentResponse does not exist", 46, 2, &dword_268CBE000, v18, v17);

      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v31);
      return 0;
    }
  }

  else
  {
    v8 = sub_268DC858C();
    v16 = *v8;
    MEMORY[0x277D82BE0](*v8);
    v15 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v14 = v9;
    MEMORY[0x277D82BE0](a1);
    sub_268D588E0();
    sub_268DCA900();
    v12 = sub_268F9AE74();
    v13 = v10;
    v14[3] = MEMORY[0x277D837D0];
    v14[4] = sub_268CDD224();
    *v14 = v12;
    v14[1] = v13;
    sub_268CD0F7C();
    sub_268F9AC04("SetNumericSettingIntent doesn't have setting metadata %@", 56, 2, &dword_268CBE000, v16, v15);

    MEMORY[0x277D82BD8](v16);
    return 0;
  }
}

unint64_t sub_268EE278C()
{
  v2 = qword_2802DE050;
  if (!qword_2802DE050)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE050);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EE2808(void *a1, id a2)
{
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v64 = 0.0;
  v62 = 0.0;
  v60 = 0.0;
  v3 = *v2;
  v68 = a1;
  v67 = a2;
  v66 = v2;
  v65[2] = *(v3 + qword_2802F1640);
  v65[1] = *(v3 + qword_2802F1640 + 8);
  v65[0] = [a2 oldValue];
  if (v65[0])
  {
    v55 = v65[0];
    MEMORY[0x277D82BE0](v65[0]);
    sub_268D35038(v65);
    v56 = [v55 value];
    *&v4 = MEMORY[0x277D82BD8](v55).n128_u64[0];
    if (v56)
    {
      [v56 doubleValue];
      v52 = v5;
      MEMORY[0x277D82BD8](v56);
      v53 = v52;
      v54 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_268D35038(v65);
  }

  v53 = 0.0;
  v54 = 1;
LABEL_6:
  if (v54)
  {
    goto LABEL_60;
  }

  v64 = v53;
  v6 = [a2 updatedValue];
  v63 = v6;
  if (v6)
  {
    v50 = v63;
    MEMORY[0x277D82BE0](v63);
    sub_268D35038(&v63);
    v51 = [v50 value];
    *&v7 = MEMORY[0x277D82BD8](v50).n128_u64[0];
    if (v51)
    {
      [v51 doubleValue];
      v47 = v8;
      MEMORY[0x277D82BD8](v51);
      v48 = v47;
      v49 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    sub_268D35038(&v63);
  }

  v48 = 0.0;
  v49 = 1;
LABEL_14:
  if (v49)
  {
    goto LABEL_60;
  }

  v62 = v48;
  v9 = [a2 minValue];
  v61 = v9;
  if (v9)
  {
    v45 = v61;
    MEMORY[0x277D82BE0](v61);
    sub_268D35038(&v61);
    v46 = [v45 value];
    *&v10 = MEMORY[0x277D82BD8](v45).n128_u64[0];
    if (v46)
    {
      [v46 doubleValue];
      v42 = v11;
      MEMORY[0x277D82BD8](v46);
      v43 = v42;
      v44 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    sub_268D35038(&v61);
  }

  v43 = 0.0;
  v44 = 1;
LABEL_22:
  if (v44)
  {
    goto LABEL_60;
  }

  v60 = v43;
  v12 = [a2 maxValue];
  v59 = v12;
  if (v12)
  {
    v40 = v59;
    MEMORY[0x277D82BE0](v59);
    sub_268D35038(&v59);
    v41 = [v40 value];
    *&v13 = MEMORY[0x277D82BD8](v40).n128_u64[0];
    if (v41)
    {
      [v41 doubleValue];
      v37 = v14;
      MEMORY[0x277D82BD8](v41);
      v38 = v37;
      v39 = 0;
      goto LABEL_30;
    }
  }

  else
  {
    sub_268D35038(&v59);
  }

  v38 = 0.0;
  v39 = 1;
LABEL_30:
  if (v39)
  {
LABEL_60:
    v16 = sub_268DC858C();
    v20 = *v16;
    MEMORY[0x277D82BE0](*v16);
    v19 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("Required intent and intent response values not present", 54, 2, &dword_268CBE000, v20, v19);

    MEMORY[0x277D82BD8](v20);
    type metadata accessor for SettingsNumericSettingAction();
    v24 = sub_268CDD6D4();
    v21 = sub_268CDD6D4();
    v22 = sub_268CDD6D4();
    v23 = sub_268CDD6D4();
    v17 = sub_268CDD6D4();
    return sub_268E91F5C(v24 & 1, v21 & 1, v22 & 1, v23 & 1, v17 & 1, HIDWORD(v23));
  }

  if (sub_268F72C88(a1, a2))
  {
    v35 = 1;
    v36 = 0;
  }

  else
  {
    v35 = 0;
    v36 = sub_268F72FB8(a1, a2);
  }

  type metadata accessor for SettingsNumericSettingAction();
  [a1 action];
  type metadata accessor for INSettingAction(0);
  sub_268DD25C8();
  v34 = (sub_268F9B754() & 1) != 0 && v43 < v48;
  v33 = v34 && v48 < v38;
  v32 = v48 <= v43 || v36;
  if (v38 > v48)
  {
    v31 = v35;
  }

  else
  {
    v31 = 1;
  }

  [a1 action];
  v30 = (sub_268F9B754() & 1) != 0 || v53 < v48;
  [a1 action];
  v29 = (sub_268F9B754() & 1) != 0 || v48 < v53;
  sub_268F9A874();
  v28 = [a1 numericValue];
  if (v28)
  {
    v26 = [v28 value];
    MEMORY[0x277D82BD8](v28);
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v15 = sub_268E0D94C(v27);
  return sub_268E91F5C(v33, v32 & 1, v31 & 1, v30, v29, v15);
}

uint64_t sub_268EE32A8(uint64_t a1)
{
  type metadata accessor for INSettingAction(0);
  sub_268DD25C8();
  return sub_268F9B754() & 1;
}

uint64_t sub_268EE3398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = v4;
  v5[13] = a4;
  v5[12] = a2;
  v5[11] = a1;
  v5[7] = v5;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = 0;
  v5[8] = 0;
  v5[9] = 0;
  v5[10] = 0;
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[8] = a4;
  v5[9] = v4;
  return MEMORY[0x2822009F8](sub_268EE3414, 0);
}

uint64_t sub_268EE3414()
{
  v1 = v0[14];
  v5 = v0[13];
  v4 = v0[12];
  v6 = v0[11];
  v0[7] = v0;
  v0[15] = *(v1 + qword_2802DE000);

  type metadata accessor for SettingsNumericSetting(0);

  MEMORY[0x277D82BE0](v5);
  v8 = SettingsNumericSetting.__allocating_init(settingId:value:)(v6, v4, v5);
  v0[16] = v8;
  v2 = swift_task_alloc();
  *(v7 + 136) = v2;
  *v2 = *(v7 + 56);
  v2[1] = sub_268EE3540;

  return sub_268EBEBC0(v8);
}

uint64_t sub_268EE3540(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[18] = a1;
  v5[19] = v1;

  if (v1)
  {
    v3 = sub_268EE39D8;
  }

  else
  {

    v3 = sub_268EE36D4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EE36D4()
{
  v21 = *(v0 + 144);
  *(v0 + 56) = v0;
  if (v21)
  {
    v20[10] = v21;
    v18 = sub_268E0739C(v21);
    v19 = v1;
    v2 = MEMORY[0x277D82BD8](v21);
    v3 = *(v20[7] + 8);

    return v3(v18, v19, v2);
  }

  else
  {
    v11 = v20[12];
    v10 = v20[11];
    v5 = sub_268DC7B48();
    v17 = *v5;
    MEMORY[0x277D82BE0](*v5);
    v16 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v15 = v6;

    v20[5] = v10;
    v20[6] = v11;
    v12 = MEMORY[0x277D837D0];
    v13 = sub_268F9AE84();
    v14 = v7;
    v15[3] = v12;
    v15[4] = sub_268CDD224();
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    sub_268F9AC04("SetNumericSettingTemplatingService getSettingName | numericSettingName CAT failed", 81, 2, &dword_268CBE000, v17, v16);

    MEMORY[0x277D82BD8](v17);
    sub_268EE278C();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    v9 = *(v20[7] + 8);

    return v9();
  }
}

uint64_t sub_268EE39D8()
{
  v16 = *(v0 + 152);
  *(v0 + 56) = v0;

  v8 = v15[12];
  v7 = v15[11];
  v1 = sub_268DC7B48();
  v14 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v13 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v2;

  v15[5] = v7;
  v15[6] = v8;
  v9 = MEMORY[0x277D837D0];
  v10 = sub_268F9AE84();
  v11 = v3;
  v12[3] = v9;
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04("SetNumericSettingTemplatingService getSettingName | numericSettingName CAT failed", 81, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  sub_268EE278C();
  swift_allocError();
  *v4 = 1;
  swift_willThrow();
  v5 = *(v15[7] + 8);

  return v5();
}

double sub_268EE3CFC(_BYTE *a1)
{
  if (*a1 != 2)
  {
    return 1.0;
  }

  sub_268D35434();

  v2 = sub_268D39FC4();

  return v2;
}

uint64_t sub_268EE40A8()
{
  sub_268CD7930((v0 + qword_2802DDFA8));
  v3 = qword_2802DDFB0;
  v1 = sub_268F9AB24();
  (*(*(v1 - 8) + 8))(v0 + v3);

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_2802DDFC8));

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_2802DDFE0));

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_2802DDFF8));

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_2802DE030));
}

uint64_t sub_268EE42A0()
{
  v3 = sub_268F99AB4();
  sub_268CD7930((v3 + qword_2802DDFA8));
  v2 = qword_2802DDFB0;
  v0 = sub_268F9AB24();
  (*(*(v0 - 8) + 8))(v3 + v2);

  __swift_destroy_boxed_opaque_existential_0((v3 + qword_2802DDFC8));

  __swift_destroy_boxed_opaque_existential_0((v3 + qword_2802DDFE0));

  __swift_destroy_boxed_opaque_existential_0((v3 + qword_2802DDFF8));

  __swift_destroy_boxed_opaque_existential_0((v3 + qword_2802DE030));

  return v3;
}

BOOL sub_268EE4580(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      default:
        v4 = 7;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      default:
        v3 = 7;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_268EE4A98()
{
  v2 = qword_2802DE980;
  if (!qword_2802DE980)
  {
    sub_268CDA484();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE980);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EE4B18()
{
  v2 = qword_2802DE058[0];
  if (!qword_2802DE058[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_2802DE058);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EE4B94(uint64_t a1)
{
  inited = sub_268F9AB24();
  if (v1 <= 0x3F)
  {
    inited = swift_initClassMetadata2();
    if (!inited)
    {
      return 0;
    }
  }

  return inited;
}

uint64_t sub_268EE4D4C(uint64_t a1, uint64_t a2)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_268EE4DB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_268EE4EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_268EE50EC()
{
  v2 = qword_2802DE160;
  if (!qword_2802DE160)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE160);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EE51E4()
{
  v0 = sub_268F872B8();
  v2 = *v0;
  result = MEMORY[0x277D82BE0](*v0);
  qword_2802F1650 = v2;
  return result;
}

uint64_t *sub_268EE5224()
{
  if (qword_2802DB7C0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1650;
}

uint64_t sub_268EE5284()
{
  v0 = sub_268EE5224();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268EE52BC()
{
  v2 = *(v0 + 152);

  return v2;
}

uint64_t sub_268EE52E8(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v20 = v7;

  v7[12] = a3;
  sub_268CDE730(a1, v19);
  sub_268CDF978(v19, v7 + 2);
  sub_268CDE730(a2, v18);
  sub_268CDF978(v18, v7 + 7);

  v7[13] = a4;
  sub_268CDE730(a5, v17);
  sub_268CDF978(v17, v7 + 14);

  v7[19] = a6;

  v7[20] = a7;

  __swift_destroy_boxed_opaque_existential_0(a5);

  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v16;
}

uint64_t sub_268EE5448@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_268F9B284();
  v3 = sub_268DC7CC8();
  v8 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v7, &dword_268CBE000, v8, "HandleNumericSettingFlowStrategy: makeSiriKitIntentHandler.", 59, 2);

  MEMORY[0x277D82BD8](v8);

  v4 = sub_268EE5224();
  MEMORY[0x277D82BE0](*v4);
  MEMORY[0x277D82BE0](a2);
  sub_268D588E0();
  sub_268F99694();
  v5 = sub_268F996A4();
  return (*(*(v5 - 8) + 56))(a3, 0, 1);
}

uint64_t sub_268EE55B0(uint64_t a1, uint64_t a2)
{
  v3[136] = v2;
  v3[135] = a2;
  v3[134] = a1;
  v3[123] = v3;
  v3[124] = 0;
  v3[125] = 0;
  v3[127] = 0;
  v3[129] = 0;
  v3[130] = 0;
  v3[131] = 0;
  v3[132] = 0;
  v3[133] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
  v3[137] = swift_task_alloc();
  v3[138] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v3[139] = swift_task_alloc();
  v4 = sub_268F999F4();
  v3[140] = v4;
  v3[141] = *(v4 - 8);
  v3[142] = swift_task_alloc();
  sub_268F99834();
  v3[143] = swift_task_alloc();
  v5 = sub_268F99BC4();
  v3[144] = v5;
  v3[145] = *(v5 - 8);
  v3[146] = swift_task_alloc();
  v3[147] = swift_task_alloc();
  v3[124] = a2;
  v3[125] = v2;

  return MEMORY[0x2822009F8](sub_268EE5818, 0);
}

uint64_t sub_268EE5818(uint64_t a1)
{
  v32 = v1[136];
  v1[123] = v1;
  v30 = sub_268F9B284();
  v2 = sub_268DC7CC8();
  v31 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v30, &dword_268CBE000, v31, "HandleNumericSettingFlowStrategy: makeIntentHandledResponse.", 60, 2);

  MEMORY[0x277D82BD8](v31);
  sub_268CDE730(v32 + 112, (v1 + 93));
  v34 = v1[96];
  v33 = v1[97];
  __swift_project_boxed_opaque_existential_1(v1 + 93, v34);
  v35 = (*(v33 + 56))(v34);
  __swift_destroy_boxed_opaque_existential_0(v1 + 93);
  if (v35)
  {
    v25 = v29[136];
    v23 = sub_268F9B284();
    v3 = sub_268DC7CC8();
    v24 = *v3;
    MEMORY[0x277D82BE0](*v3);
    sub_268F9B734();
    sub_268F9AC14(v23, &dword_268CBE000, v24, "HandleNumericSettingFlowStrategy: makeIntentHandledResponse using RF2", 69, 2);

    MEMORY[0x277D82BD8](v24);
    v29[148] = *(v25 + 104);

    v29[149] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
    v28 = sub_268F99B34();
    v29[150] = v28;
    v26 = sub_268F99B44();
    v29[151] = v26;
    v27 = sub_268F99B24();
    v29[152] = v27;
    v4 = swift_task_alloc();
    v29[153] = v4;
    *v4 = v29[123];
    v4[1] = sub_268EE5E6C;

    return sub_268EDBA5C(v28, v26, v27);
  }

  else
  {
    sub_268CDE730(v29[136] + 112, (v29 + 98));
    v21 = v29[101];
    v20 = v29[102];
    __swift_project_boxed_opaque_existential_1(v29 + 98, v21);
    v22 = (*(v20 + 16))(v21);
    __swift_destroy_boxed_opaque_existential_0(v29 + 98);
    if (v22)
    {
      v16 = v29[136];
      sub_268F999C4();
      v6 = sub_268F999B4();
      v29[168] = v6;
      v29[129] = v6;
      v14 = sub_268F9B284();
      v7 = sub_268DC7CC8();
      v15 = *v7;
      MEMORY[0x277D82BE0](*v7);
      sub_268F9B734();
      sub_268F9AC14(v14, &dword_268CBE000, v15, "HandleNumericSettingFlowStrategy: makeIntentHandledResponse using response framework", 84, 2);

      MEMORY[0x277D82BD8](v15);
      v29[169] = *(v16 + 104);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
      v19 = sub_268F99B34();
      v29[170] = v19;
      v17 = sub_268F99B44();
      v29[171] = v17;
      v18 = sub_268F99B24();
      v29[172] = v18;
      v8 = swift_task_alloc();
      v29[173] = v8;
      *v8 = v29[123];
      v8[1] = sub_268EE6C34;

      return sub_268ECFB1C(v19, v17, v18);
    }

    else
    {
      v29[178] = *(v29[136] + 104);

      v29[179] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
      v11 = sub_268F99B34();
      v29[180] = v11;
      v12 = sub_268F99B44();
      v29[181] = v12;
      v13 = sub_268F99B24();
      v29[182] = v13;
      v9 = swift_task_alloc();
      v29[183] = v9;
      *v9 = v29[123];
      v9[1] = sub_268EE7214;
      v10 = v29[139];

      return sub_268ECB4CC(v10, v11, v12, v13);
    }
  }
}

uint64_t sub_268EE5E6C(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[123] = *v2;
  v7[154] = a1;
  v7[155] = v1;

  if (v1)
  {
    v3 = sub_268EE78D8;
  }

  else
  {
    v5 = *(v6 + 1192);

    v3 = sub_268EE6024;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EE6024(uint64_t a1)
{
  v2 = v1[154];
  v7 = v1[136];
  v3 = v1[135];
  v1[123] = v1;
  v1[133] = v2;
  sub_268F99804();

  v6 = swift_task_alloc();
  *(v6 + 16) = v7;
  *(v6 + 24) = v3;
  sub_268F99B94();

  v1[156] = *(v7 + 104);

  v9 = sub_268F99B34();
  v1[157] = v9;
  v10 = sub_268F99B44();
  v1[158] = v10;
  v11 = sub_268F99B24();
  v1[159] = v11;
  v4 = swift_task_alloc();
  *(v8 + 1280) = v4;
  *v4 = *(v8 + 984);
  v4[1] = sub_268EE61D8;

  return sub_268ED9CC4(v8 + 168, v9, v10, v11);
}

uint64_t sub_268EE61D8()
{
  v6 = *v1;
  v5 = *v1 + 16;
  *(v6 + 984) = *v1;
  *(v6 + 1288) = v0;

  if (v0)
  {
    v2 = sub_268EE7A80;
  }

  else
  {
    v4 = *(v5 + 1248);

    v2 = sub_268EE6390;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_268EE6390()
{
  v0[123] = v0;
  memcpy(v0 + 57, v0 + 21, 0x90uLL);
  memcpy(v0 + 39, v0 + 57, 0x90uLL);
  if (sub_268D34BC0((v0 + 39)) == 1)
  {
    v14 = v21[154];
    sub_268F999C4();
    v21[165] = sub_268F999B4();
    sub_268D29170();
    sub_268F9B734();
    v13 = v8;
    MEMORY[0x277D82BE0](v14);
    *v13 = v14;
    sub_268CD0F7C();
    v15 = v9;
    v21[166] = v9;
    v16 = (MEMORY[0x277D5BD50] + *MEMORY[0x277D5BD50]);
    v10 = swift_task_alloc();
    v21[167] = v10;
    *v10 = v21[123];
    v10[1] = sub_268EE69AC;
    v11 = v21[147];
    v12 = v21[134];

    return v16(v12, v15, v11);
  }

  else
  {
    v18 = v21[154];
    sub_268F999C4();
    v21[162] = sub_268F999B4();
    sub_268D34CD8(v21 + 39, v21 + 75);
    memcpy(v21 + 2, v21 + 39, 0x90uLL);
    sub_268D34E04((v21 + 2));
    v21[121] = &type metadata for SnippetModels;
    v21[122] = sub_268D34E18();
    v1 = swift_allocObject();
    v21[118] = v1;
    memcpy((v1 + 16), v21 + 2, 0x91uLL);
    sub_268D29170();
    sub_268F9B734();
    v17 = v2;
    MEMORY[0x277D82BE0](v18);
    *v17 = v18;
    sub_268CD0F7C();
    v19 = v3;
    v21[163] = v3;
    v20 = (MEMORY[0x277D5BD38] + *MEMORY[0x277D5BD38]);
    v4 = swift_task_alloc();
    v21[164] = v4;
    *v4 = v21[123];
    v4[1] = sub_268EE66F4;
    v5 = v21[147];
    v6 = v21[134];

    return v20(v6, v21 + 118, v19, v5);
  }
}

uint64_t sub_268EE66F4()
{
  v2 = (*v0 + 944);
  *(*v0 + 984) = *v0;

  __swift_destroy_boxed_opaque_existential_0(v2);

  return MEMORY[0x2822009F8](sub_268EE685C, 0);
}

uint64_t sub_268EE685C()
{
  v6 = v0[154];
  v5 = v0[147];
  v3 = v0[145];
  v4 = v0[144];
  v0[123] = v0;
  sub_268D34F58(v0 + 39);
  (*(v3 + 8))(v5, v4);
  MEMORY[0x277D82BD8](v6);

  v1 = *(v0[123] + 8);

  return v1();
}

uint64_t sub_268EE69AC()
{
  *(*v0 + 984) = *v0;

  return MEMORY[0x2822009F8](sub_268EE6B04, 0);
}

uint64_t sub_268EE6B04()
{
  v6 = v0[154];
  v1 = v0[147];
  v2 = v0[145];
  v3 = v0[144];
  v0[123] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x277D82BD8](v6);

  v4 = *(v0[123] + 8);

  return v4();
}

uint64_t sub_268EE6C34(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[123] = *v2;
  v7[174] = a1;
  v7[175] = v1;

  if (v1)
  {
    v3 = sub_268EE7C7C;
  }

  else
  {
    v5 = *(v6 + 1352);

    v3 = sub_268EE6DEC;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268EE6DEC(uint64_t a1)
{
  v11 = MEMORY[0x277D5BD48];
  v2 = v1[174];
  v10 = v1[136];
  v8 = v1[135];
  v1[123] = v1;
  v1[131] = v2;
  sub_268F99804();

  v9 = swift_task_alloc();
  *(v9 + 16) = v10;
  *(v9 + 24) = v8;
  sub_268F99B94();

  v13 = (v11 + *v11);
  v3 = swift_task_alloc();
  v12[176] = v3;
  *v3 = v12[123];
  v3[1] = sub_268EE6F64;
  v4 = v12[174];
  v5 = v12[146];
  v6 = v12[134];

  return v13(v6, v4, v5);
}

uint64_t sub_268EE6F64()
{
  v4 = *v1;
  *(v4 + 984) = *v1;
  *(v4 + 1416) = v0;

  if (v0)
  {
    v2 = sub_268EE7E40;
  }

  else
  {
    v2 = sub_268EE70D0;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_268EE70D0()
{
  v6 = v0[174];
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[144];
  v0[123] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x277D82BD8](v6);

  v4 = *(v0[123] + 8);

  return v4();
}

uint64_t sub_268EE7214()
{
  v2 = *(*v0 + 1456);
  v3 = *(*v0 + 1448);
  *(*v0 + 984) = *v0;

  return MEMORY[0x2822009F8](sub_268EE73AC, 0);
}

uint64_t sub_268EE73AC()
{
  v1 = v0[142];
  v2 = v0[138];
  v0[123] = v0;
  sub_268D2DFAC(v2, (v0 + 126), v1);
  v14 = v16[136];
  v13 = sub_268F99B44();
  v12 = sub_268F99B24();
  v15 = sub_268EE97F4(v13, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v16[127] = v15;
  sub_268CDE730(v14 + 16, (v16 + 103));
  sub_268CDE730(v14 + 16, (v16 + 108));
  __swift_project_boxed_opaque_existential_1(v16 + 108, v16[111]);
  sub_268F997C4();
  v16[128] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
  sub_268D34954();
  sub_268D349B8();
  sub_268F9AF84();
  v10 = v16[142];
  v11 = v16[140];
  v8 = v16[137];
  v7 = v16[134];
  v9 = v16[141];
  v6 = sub_268F99B44();
  v5 = sub_268F99B24();
  sub_268EEA2EC(v6, v5, v8);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v16[113] = 0;
  v16[114] = 0;
  v16[115] = 0;
  v16[116] = 0;
  v16[117] = 0;
  sub_268CDD6D4();
  _swift_stdlib_has_malloc_size();
  sub_268D31B10();
  v7[3] = sub_268F99C74();
  v7[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_268F998D4();

  sub_268D28414(v16 + 113);
  sub_268D34AC0(v8);

  __swift_destroy_boxed_opaque_existential_0(v16 + 108);
  __swift_destroy_boxed_opaque_existential_0(v16 + 103);

  (*(v9 + 8))(v10, v11);

  v3 = *(v16[123] + 8);

  return v3();
}