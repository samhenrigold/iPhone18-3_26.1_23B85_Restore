unint64_t Theme.MapsMediaColorID.rawValue.getter()
{
  result = 0x417972616D697270;
  switch(*v0)
  {
    case 1:
      result = 5294388599723750000;
      break;
    case 2:
      result = 0x756C426B63617274;
      break;
    case 3:
      result = 0x656E696C646572;
      break;
    case 4:
      result = 0x43656E696C646572;
      break;
    case 5:
      result = 0x50656E696C646572;
      break;
    case 6:
      result = 0x786554656772616CLL;
      break;
    case 7:
      result = 0x746544656772616CLL;
      break;
    case 8:
      result = 0x65546C6961746564;
      break;
    case 9:
    case 0x1B:
      result = 0xD000000000000011;
      break;
    case 0xA:
    case 0xD:
      result = 0xD000000000000012;
      break;
    case 0xB:
      result = 0xD000000000000017;
      break;
    case 0xC:
      result = 0xD000000000000013;
      break;
    case 0xE:
    case 0x1C:
      result = 0xD000000000000015;
      break;
    case 0xF:
    case 0x13:
      result = 0xD000000000000018;
      break;
    case 0x10:
      result = 0xD00000000000001ALL;
      break;
    case 0x11:
      result = 0xD00000000000001CLL;
      break;
    case 0x12:
      result = 0xD000000000000013;
      break;
    case 0x14:
      result = 0x6C6576654C776F6CLL;
      break;
    case 0x15:
    case 0x19:
      result = 0xD000000000000010;
      break;
    case 0x16:
      result = 0x69746341646C6F63;
      break;
    case 0x17:
      result = 0x63616E49646C6F63;
      break;
    case 0x18:
      result = 0x6C61636974697263;
      break;
    case 0x1A:
      result = 0x6465746361646572;
      break;
    case 0x1D:
      result = 0xD000000000000014;
      break;
    case 0x1E:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_242E21180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242F06110();
  }

  return v11 & 1;
}

uint64_t sub_242E21240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_242F06390();
  a3(v4);
  sub_242F04DD0();

  return sub_242F063E0();
}

double sub_242E212C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  sub_242F04DD0();

  return result;
}

uint64_t sub_242E21348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = sub_242F06390();
  a4(v5);
  sub_242F04DD0();

  return sub_242F063E0();
}

unint64_t sub_242E213C0@<X0>(unint64_t *a1@<X8>)
{
  result = Theme.MapsMediaColorID.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_242E21498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_242E22E30(a1, a2, a3);

  return MEMORY[0x2821FC220](a1, a2, v5);
}

uint64_t sub_242E214EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242E22E30(a1, a2, a3);

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

void Theme.SpecialColorID.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_242F05CD0();

  *a3 = v4 != 0;
}

uint64_t sub_242E215E4()
{
  sub_242F06390();
  sub_242F04DD0();
  return sub_242F063E0();
}

uint64_t sub_242E21648(uint64_t a1)
{
  sub_242F06390();
  sub_242F04DD0();
  return sub_242F063E0();
}

void sub_242E21694(BOOL *a2@<X8>)
{
  v3 = sub_242F05CD0();

  *a2 = v3 != 0;
}

uint64_t sub_242E217B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_242E22DDC(a1, a2, a3);

  return MEMORY[0x2821FC220](a1, a2, v5);
}

uint64_t sub_242E21804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242E22DDC(a1, a2, a3);

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

uint64_t sub_242E21954(uint64_t *a1, void *a2, void (*a3)(uint64_t, void))
{
  swift_beginAccess();
  v6 = *a1;
  a3(v6, *a2);
  return v6;
}

uint64_t sub_242E219E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  swift_beginAccess();
  v10 = *a3;
  v11 = *a4;
  *a3 = a1;
  *a4 = a2;
  return a5(v10, v11);
}

uint64_t sub_242E21AAC@<X0>(uint64_t *a1@<X8>)
{
  result = swift_beginAccess();
  v3 = off_27ECF8698;
  if (off_27ECF8698)
  {
    v4 = qword_27ECF86A0;

    v6 = v3(v5);
    result = sub_242C655DC(v3, v4);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  *a1 = v6;
  return result;
}

void sub_242E21B3C(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_242CE519C(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_242D04D64(v15, v5 & 1);
    v10 = sub_242CE519C(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_242F06320();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_242D018B0();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ECF1F50, &qword_242F304D0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_242F05A80();
    MEMORY[0x245D26660](0xD00000000000001BLL, 0x8000000242F59E10);
    sub_242F05C20();
    MEMORY[0x245D26660](39, 0xE100000000000000);
    sub_242F05C60();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v25 = 1;
    while (v25 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v26 = *a3;

      v27 = sub_242CE519C(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_242D04D64(v31, 1);
        v27 = sub_242CE519C(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v8;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

unint64_t sub_242E21ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF86B0;
  if (!qword_27ECF86B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF86B0);
  }

  return result;
}

uint64_t sub_242E21F24(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF86B8, &qword_242F37670);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s14CarPlayAssetUI5ThemeO7ColorIDO10genericIDsSayAEGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF87A8, &qword_242F38368);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09530;
  v1 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D84F90];
  sub_242E3BCD0(0, 53, 0);
  v2 = v38;
  v3 = *(v38 + 16);
  v4 = 24 * v3;
  v5 = -1272;
  v6 = &byte_28557AC98;
  do
  {
    v8 = *v6++;
    v7 = v8;
    v39 = v2;
    v9 = *(v2 + 24);
    v10 = v3 + 1;
    if (v3 >= v9 >> 1)
    {
      sub_242E3BCD0((v9 > 1), v3 + 1, 1);
      v2 = v39;
    }

    *(v2 + 16) = v10;
    v11 = v2 + v4 + v5;
    *(v11 + 1304) = v7;
    *(v11 + 1312) = 0;
    *(v11 + 1320) = 0;
    v3 = v10;
    v5 += 24;
  }

  while (v5);
  *(inited + 32) = v2;
  sub_242E3BCD0(0, 46, 0);
  v12 = v1;
  v13 = *(v1 + 16);
  v14 = 24 * v13;
  v15 = -1104;
  v16 = &byte_28557ACF0;
  do
  {
    v18 = *v16++;
    v17 = v18;
    v40 = v12;
    v19 = *(v12 + 24);
    v20 = v13 + 1;
    if (v13 >= v19 >> 1)
    {
      sub_242E3BCD0((v19 > 1), v13 + 1, 1);
      v12 = v40;
    }

    *(v12 + 16) = v20;
    v21 = v12 + v14 + v15;
    *(v21 + 1136) = v17;
    *(v21 + 1144) = 0;
    *(v21 + 1152) = 1;
    v13 = v20;
    v15 += 24;
  }

  while (v15);
  *(inited + 40) = v12;
  sub_242E3BCD0(0, 31, 0);
  v22 = v1;
  v23 = *(v1 + 16);
  v24 = 24 * v23;
  v25 = -744;
  v26 = &byte_28557AD68;
  do
  {
    v28 = *v26++;
    v27 = v28;
    v41 = v22;
    v29 = *(v22 + 24);
    v30 = v23 + 1;
    if (v23 >= v29 >> 1)
    {
      sub_242E3BCD0((v29 > 1), v23 + 1, 1);
      v22 = v41;
    }

    *(v22 + 16) = v30;
    v31 = v22 + v24 + v25;
    *(v31 + 776) = v27;
    *(v31 + 784) = 0;
    *(v31 + 792) = 2;
    v23 = v30;
    v25 += 24;
  }

  while (v25);
  *(inited + 48) = v22;
  v42 = v1;
  sub_242E3BCD0(0, 1, 0);
  v32 = v1;
  v34 = *(v1 + 16);
  v33 = *(v42 + 24);
  if (v34 >= v33 >> 1)
  {
    sub_242E3BCD0((v33 > 1), v34 + 1, 1);
    v32 = v42;
  }

  *(v32 + 16) = v34 + 1;
  v35 = v32 + 24 * v34;
  *(v35 + 32) = 0;
  *(v35 + 40) = 0;
  *(v35 + 48) = 3;
  *(inited + 56) = v32;
  v36 = sub_242C80390(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF86F0, &qword_242F37738);
  swift_arrayDestroy();
  return v36;
}

uint64_t _s14CarPlayAssetUI5ThemeO7ColorIDO8allCasesSayAEGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF87A8, &qword_242F38368);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0A4E0;
  *(inited + 32) = _s14CarPlayAssetUI5ThemeO7ColorIDO10genericIDsSayAEGvgZ_0();
  swift_beginAccess();
  v1 = off_27ECF8698;
  v2 = MEMORY[0x277D84F90];
  if (off_27ECF8698)
  {
    v3 = qword_27ECF86A0;

    v5 = v1(v4);
    sub_242C655DC(v1, v3);
    v6 = *(v5 + 16);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_9:

    v7 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v5 = MEMORY[0x277D84F90];
  v6 = *(MEMORY[0x277D84F90] + 16);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  v16 = inited;
  sub_242E3BCD0(0, v6, 0);
  v7 = v2;
  v8 = (v5 + 40);
  do
  {
    v9 = *(v8 - 1);
    v10 = *v8;
    v12 = *(v7 + 16);
    v11 = *(v7 + 24);

    if (v12 >= v11 >> 1)
    {
      sub_242E3BCD0((v11 > 1), v12 + 1, 1);
    }

    *(v7 + 16) = v12 + 1;
    v13 = v7 + 24 * v12;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
    *(v13 + 48) = 4;
    v8 += 2;
    --v6;
  }

  while (v6);

  inited = v16;
LABEL_10:
  *(inited + 40) = v7;
  v14 = sub_242C80390(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF86F0, &qword_242F37738);
  swift_arrayDestroy();
  return v14;
}

unint64_t sub_242E2246C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_242F05140();
  }

  __break(1u);
  return result;
}

unint64_t sub_242E224B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF86D8;
  if (!qword_27ECF86D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF86D8);
  }

  return result;
}

unint64_t sub_242E22510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF86E0;
  if (!qword_27ECF86E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF86E0);
  }

  return result;
}

unint64_t sub_242E22598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF86F8;
  if (!qword_27ECF86F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF86F8);
  }

  return result;
}

unint64_t sub_242E22620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8710;
  if (!qword_27ECF8710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8710);
  }

  return result;
}

unint64_t sub_242E226A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8728;
  if (!qword_27ECF8728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8728);
  }

  return result;
}

unint64_t sub_242E22730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8740;
  if (!qword_27ECF8740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8740);
  }

  return result;
}

uint64_t sub_242E227E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for Theme.RadialColorID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCC)
  {
    goto LABEL_17;
  }

  if (a2 + 52 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 52) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 52;
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

      return (*a1 | (v4 << 8)) - 52;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 52;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x35;
  v8 = v6 - 53;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Theme.RadialColorID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 52 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 52) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCC)
  {
    v4 = 0;
  }

  if (a2 > 0xCB)
  {
    v5 = ((a2 - 204) >> 8) + 1;
    *result = a2 + 52;
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
    *result = a2 + 52;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Theme.ModularColorID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD3)
  {
    goto LABEL_17;
  }

  if (a2 + 45 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 45) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 45;
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

      return (*a1 | (v4 << 8)) - 45;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 45;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2E;
  v8 = v6 - 46;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Theme.ModularColorID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 45 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 45) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD3)
  {
    v4 = 0;
  }

  if (a2 > 0xD2)
  {
    v5 = ((a2 - 211) >> 8) + 1;
    *result = a2 + 45;
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
    *result = a2 + 45;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Theme.MapsMediaColorID(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Theme.MapsMediaColorID(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_242E22CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8768;
  if (!qword_27ECF8768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8768);
  }

  return result;
}

unint64_t sub_242E22D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8770;
  if (!qword_27ECF8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8770);
  }

  return result;
}

unint64_t sub_242E22D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8778;
  if (!qword_27ECF8778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8778);
  }

  return result;
}

unint64_t sub_242E22DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8780;
  if (!qword_27ECF8780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8780);
  }

  return result;
}

unint64_t sub_242E22E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8788;
  if (!qword_27ECF8788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8788);
  }

  return result;
}

unint64_t sub_242E22E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8790;
  if (!qword_27ECF8790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8790);
  }

  return result;
}

unint64_t sub_242E22ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8798;
  if (!qword_27ECF8798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8798);
  }

  return result;
}

unint64_t sub_242E22F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF87A0;
  if (!qword_27ECF87A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF87A0);
  }

  return result;
}

void sub_242E22F80(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>)
{
  memcpy(__dst, __src, 0x250uLL);
  memcpy(v36, __src, sizeof(v36));
  v5 = Display.assets.getter();
  sub_242C6CE30(__dst);
  v6 = sub_242E23870(v5);
  v8 = v7;

  if (v2)
  {
    return;
  }

  v31 = v6;
  v32 = a1;
  v9 = sub_242CE68D0(MEMORY[0x277D84F90]);
  v34 = *(v8 + 16);
  if (!v34)
  {
LABEL_18:

    *v32 = v9;
    v32[1] = v31;
    return;
  }

  v10 = 0;
  v11 = v8 + 32;
  v33 = v8;
  while (v10 < *(v8 + 16))
  {
    sub_242C6CF00(v11, v36);
    v13 = v36[3];
    v14 = v36[4];
    __swift_project_boxed_opaque_existential_2Tm(v36, v36[3]);
    v15 = (*(v14 + 8))(v13, v14);
    v17 = v16;
    sub_242C6CF00(v36, v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v9;
    v20 = sub_242CE519C(v15, v17);
    v21 = v9[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_21;
    }

    v24 = v19;
    if (v9[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v19)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_242D01220();
        if (v24)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_242D041E4(v23, isUniquelyReferenced_nonNull_native);
      v25 = sub_242CE519C(v15, v17);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_23;
      }

      v20 = v25;
      if (v24)
      {
LABEL_4:

        v9 = v38;
        v12 = (v38[7] + 40 * v20);
        __swift_destroy_boxed_opaque_existential_2Tm(v12);
        sub_242C65564(v35, v12);
        goto LABEL_5;
      }
    }

    v9 = v38;
    v38[(v20 >> 6) + 8] |= 1 << v20;
    v27 = (v9[6] + 16 * v20);
    *v27 = v15;
    v27[1] = v17;
    sub_242C65564(v35, v9[7] + 40 * v20);
    v28 = v9[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_22;
    }

    v9[2] = v30;
LABEL_5:
    ++v10;
    __swift_destroy_boxed_opaque_existential_2Tm(v36);
    v11 += 40;
    v8 = v33;
    if (v34 == v10)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_242F06320();
  __break(1u);
}

uint64_t AssetManifestEntry.path.getter()
{
  v1 = *v0;

  return v1;
}

void AssetManifestEntry.path.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_242E2331C()
{
  v1 = 0x7079547465737361;
  if (*v0 != 1)
  {
    v1 = 0x74616E6974736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1752457584;
  }
}

uint64_t sub_242E2337C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242E24870(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E233A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E2463C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E233E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E2463C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t AssetManifestEntry.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF87B0, &qword_242F38370);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - v6;
  v24 = *(v1 + 16);
  v23[0] = *(v1 + 24);
  v8 = a1[3];
  v9 = a1;
  v11 = v10;
  v12 = __swift_project_boxed_opaque_existential_2Tm(v9, v8);
  sub_242E2463C(v12, v13, v14);
  sub_242F064C0();
  v28 = 0;
  v15 = sub_242F05EC0();
  if (!v2)
  {
    v18 = v23[0];
    v27 = v24;
    v26 = 1;
    sub_242E24690(v15, v16, v17);
    v19 = sub_242F05F20();
    v23[1] = v18;
    v25 = 2;
    sub_242D6F59C(v19, v20, v21);
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v11);
}

void AssetManifestEntry.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF87C8, &qword_242F38378);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E2463C(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    v26 = 0;
    v12 = sub_242F05DA0();
    v14 = v13;
    v15 = v12;
    v24 = 1;
    sub_242E246E4(v12, v13, v16);
    v17 = sub_242F05E00();
    v22 = v25;
    v23 = 2;
    sub_242D6F644(v17, v18, v19);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v20 = v21[1];
    *a2 = v15;
    *(a2 + 8) = v14;
    *(a2 + 16) = v22;
    *(a2 + 24) = v20;

    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }
}

uint64_t sub_242E23870(uint64_t a1)
{
  v132 = sub_242F03720();
  v2 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v131 = v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_242F03390();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_242F033A0();
  MEMORY[0x28223BE20](v7);
  v11 = v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v126[1] = v6;
    v127 = v11;
    v128 = v9;
    v129 = v8;
    v13 = a1 + 32;
    v130 = (v2 + 8);
    v14 = MEMORY[0x277D84F98];
    v15 = MEMORY[0x277D84F98];
    while (1)
    {
      sub_242C6CF00(v13, &v143);
      v31 = v144;
      v32 = v145;
      __swift_project_boxed_opaque_existential_2Tm(&v143, v144);
      v33 = (*(v32 + 8))(v31, v32);
      v35 = *(v15 + 16);
      v135 = v12;
      v146 = v13;
      if (!v35)
      {

LABEL_14:
        v134 = v15;
        v62 = v144;
        v63 = v145;
        __swift_project_boxed_opaque_existential_2Tm(&v143, v144);
        *&v136 = (*(v63 + 32))(v62, v63);
        *(&v136 + 1) = v64;
        v141 = 47;
        v142 = 0xE100000000000000;
        v139 = 95;
        v140 = 0xE100000000000000;
        sub_242C6CB78(v136, v64, v65);
        v66 = sub_242F058D0();
        v15 = v67;

        v68 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v68 = v66 & 0xFFFFFFFFFFFFLL;
        }

        if (!v68)
        {
LABEL_59:

          sub_242F03380();
LABEL_60:
          sub_242CE678C(MEMORY[0x277D84F90]);
          sub_242D6F49C();
          v123 = v127;
          v124 = v129;
          sub_242F035C0();
          sub_242F03310();
          (*(v128 + 8))(v123, v124);
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_2Tm(&v143);

          return v15;
        }

        v69 = v144;
        v70 = v145;
        __swift_project_boxed_opaque_existential_2Tm(&v143, v144);
        (*(v70 + 16))(&v141, v69, v70);
        *&v136 = 0;
        *(&v136 + 1) = 0xE000000000000000;
        if (v141)
        {
          if (v141 == 1)
          {
            v71 = 0x73746E6F46;
          }

          else
          {
            v71 = 0x656372756F736552;
          }

          if (v141 == 1)
          {
            v72 = 0xE500000000000000;
          }

          else
          {
            v72 = 0xE900000000000073;
          }
        }

        else
        {
          v72 = 0xE600000000000000;
          v71 = 0x736567616D49;
        }

        MEMORY[0x245D26660](v71, v72);

        MEMORY[0x245D26660](47, 0xE100000000000000);
        MEMORY[0x245D26660](v66, v15);
        v73 = *(&v136 + 1);
        v74 = v136;
        if (*(v14 + 16) && (v75 = sub_242CE519C(v136, *(&v136 + 1)), (v76 & 1) != 0))
        {
          sub_242C6CF00(*(v14 + 56) + 40 * v75, &v136);

          sub_242E24994(&v136);
          v77 = sub_242F04F00();
          v78 = [v77 stringByDeletingPathExtension];

          v79 = sub_242F04F30();
          v81 = v80;

          v82 = sub_242F04F00();

          v83 = [v82 pathExtension];

          v84 = sub_242F04F30();
          v86 = v85;

          *&v136 = v79;
          *(&v136 + 1) = v81;
          MEMORY[0x245D26660](95, 0xE100000000000000);
          v87 = v144;
          v88 = v145;
          __swift_project_boxed_opaque_existential_2Tm(&v143, v144);
          v89 = (*(v88 + 8))(v87, v88);
          MEMORY[0x245D26660](v89);

          MEMORY[0x245D26660](46, 0xE100000000000000);
          MEMORY[0x245D26660](v84, v86);

          v141 = 47;
          v142 = 0xE100000000000000;
          v139 = 95;
          v140 = 0xE100000000000000;
          v90 = sub_242F058D0();
          v92 = v91;

          v93 = HIBYTE(v92) & 0xF;
          if ((v92 & 0x2000000000000000) == 0)
          {
            v93 = v90 & 0xFFFFFFFFFFFFLL;
          }

          if (!v93)
          {
            goto LABEL_59;
          }

          v94 = v144;
          v95 = v145;
          __swift_project_boxed_opaque_existential_2Tm(&v143, v144);
          (*(v95 + 16))(&v141, v94, v95);
          *&v136 = 0;
          *(&v136 + 1) = 0xE000000000000000;
          if (v141)
          {
            if (v141 == 1)
            {
              v96 = 0x73746E6F46;
            }

            else
            {
              v96 = 0x656372756F736552;
            }

            if (v141 == 1)
            {
              v97 = 0xE500000000000000;
            }

            else
            {
              v97 = 0xE900000000000073;
            }
          }

          else
          {
            v97 = 0xE600000000000000;
            v96 = 0x736567616D49;
          }

          MEMORY[0x245D26660](v96, v97);

          MEMORY[0x245D26660](47, 0xE100000000000000);
          MEMORY[0x245D26660](v90, v92);

          v73 = *(&v136 + 1);
          v74 = v136;
          if (*(v14 + 16))
          {
            v101 = sub_242CE519C(v136, *(&v136 + 1));
            if (v102)
            {
              sub_242C6CF00(*(v14 + 56) + 40 * v101, &v136);

              sub_242E24994(&v136);
              v103 = v131;
              sub_242F03710();
              v104 = sub_242F036F0();
              v106 = v105;
              (*v130)(v103, v132);
              v107 = v144;
              v108 = v145;
              __swift_project_boxed_opaque_existential_2Tm(&v143, v144);
              (*(v108 + 16))(&v141, v107, v108);
              *&v136 = 0;
              *(&v136 + 1) = 0xE000000000000000;
              if (v141)
              {
                if (v141 == 1)
                {
                  v109 = 0xE500000000000000;
                  v110 = 0x73746E6F46;
                }

                else
                {
                  v110 = 0x656372756F736552;
                  v109 = 0xE900000000000073;
                }
              }

              else
              {
                v109 = 0xE600000000000000;
                v110 = 0x736567616D49;
              }

              MEMORY[0x245D26660](v110, v109);

              MEMORY[0x245D26660](47, 0xE100000000000000);
              MEMORY[0x245D26660](v104, v106);

              v73 = *(&v136 + 1);
              v74 = v136;
              if (*(v14 + 16))
              {
                v111 = sub_242CE519C(v136, *(&v136 + 1));
                if (v112)
                {
                  sub_242C6CF00(*(v14 + 56) + 40 * v111, &v136);

                  sub_242E24994(&v136);
                  sub_242F03370();
                  goto LABEL_60;
                }
              }
            }
          }

          v138 = 0;
          v136 = 0u;
          v137 = 0u;
        }

        else
        {
          v138 = 0;
          v136 = 0u;
          v137 = 0u;
        }

        sub_242E24994(&v136);
        v16 = v144;
        v17 = v145;
        __swift_project_boxed_opaque_existential_2Tm(&v143, v144);
        v18 = (*(v17 + 8))(v16, v17);
        v20 = v19;
        v21 = v144;
        v22 = v145;
        __swift_project_boxed_opaque_existential_2Tm(&v143, v144);
        (*(v22 + 16))(&v141, v21, v22);
        v23 = v144;
        v24 = v145;
        v25 = v141;
        __swift_project_boxed_opaque_existential_2Tm(&v143, v144);
        (*(v24 + 24))(&v136, v23, v24);
        v26 = v136;

        v27 = v134;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v136 = v27;
        sub_242CDE0E8(v74, v73, v25, v26, v18, v20, isUniquelyReferenced_nonNull_native);

        v15 = v136;
        sub_242C6CF00(&v143, &v136);
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v141 = v14;
        sub_242CDDF94(&v136, v74, v73, v29);

        v14 = v141;
LABEL_5:
        v30 = v146;
        goto LABEL_6;
      }

      v36 = sub_242CE519C(v33, v34);
      v38 = v37;

      if ((v38 & 1) == 0)
      {
        goto LABEL_14;
      }

      v133 = v14;
      v39 = *(v15 + 56) + 32 * v36;
      v41 = *v39;
      v40 = *(v39 + 8);
      LODWORD(v134) = *(v39 + 16);
      v42 = *(v39 + 24);
      v43 = v144;
      v44 = v145;
      __swift_project_boxed_opaque_existential_2Tm(&v143, v144);
      v45 = *(v44 + 24);

      v45(&v136, v43, v44);
      v46 = v136;
      v47 = v144;
      v48 = v145;
      __swift_project_boxed_opaque_existential_2Tm(&v143, v144);
      v49 = (*(v48 + 8))(v47, v48);
      v51 = v50;
      v52 = v15;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      *&v136 = v52;
      v54 = sub_242CE519C(v49, v51);
      v56 = v52[2];
      v57 = (v55 & 1) == 0;
      v58 = __OFADD__(v56, v57);
      v59 = v56 + v57;
      if (v58)
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        result = sub_242F06320();
        __break(1u);
        return result;
      }

      v60 = v55;
      if (v52[3] < v59)
      {
        break;
      }

      if (v53)
      {
        goto LABEL_38;
      }

      v113 = v54;
      sub_242D013C8();
      v54 = v113;
      v98 = v46 | v42;
      if (v60)
      {
LABEL_39:
        v99 = v54;

        v15 = v136;
        v100 = *(v136 + 56) + 32 * v99;
        *v100 = v41;
        *(v100 + 8) = v40;
        *(v100 + 16) = v134;
        *(v100 + 24) = v98;

        v14 = v133;
        goto LABEL_5;
      }

LABEL_52:
      v15 = v136;
      *(v136 + 8 * (v54 >> 6) + 64) |= 1 << v54;
      v114 = (*(v15 + 48) + 16 * v54);
      *v114 = v49;
      v114[1] = v51;
      v115 = *(v15 + 56) + 32 * v54;
      *v115 = v41;
      *(v115 + 8) = v40;
      *(v115 + 16) = v134;
      *(v115 + 24) = v98;
      v116 = *(v15 + 16);
      v58 = __OFADD__(v116, 1);
      v117 = v116 + 1;
      v30 = v146;
      if (v58)
      {
        goto LABEL_64;
      }

      *(v15 + 16) = v117;
      v14 = v133;
LABEL_6:
      __swift_destroy_boxed_opaque_existential_2Tm(&v143);
      v13 = v30 + 40;
      v12 = v135 - 1;
      if (v135 == 1)
      {
        goto LABEL_55;
      }
    }

    sub_242D044A8(v59, v53);
    v54 = sub_242CE519C(v49, v51);
    if ((v60 & 1) != (v61 & 1))
    {
      goto LABEL_66;
    }

LABEL_38:
    v98 = v46 | v42;
    if (v60)
    {
      goto LABEL_39;
    }

    goto LABEL_52;
  }

  v14 = MEMORY[0x277D84F98];
  v15 = MEMORY[0x277D84F98];
LABEL_55:
  v118 = *(v14 + 16);
  if (v118)
  {
    v119 = v14;
    v120 = sub_242CDD9E0(*(v14 + 16), 0);
    v121 = sub_242CDFFD0(&v143, (v120 + 4), v118, v119);
    v122 = v143;

    sub_242C6548C(v122);
    if (v121 != v118)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  return v15;
}

BOOL _s14CarPlayAssetUI0C13ManifestEntryV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (sub_242F06110() & 1) != 0)
  {
    v7 = 0xE400000000000000;
    v8 = 1953394534;
    if (v2 != 1)
    {
      v8 = 0x656372756F736572;
      v7 = 0xE800000000000000;
    }

    if (v2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x6567616D69;
    }

    if (v2)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = 0xE400000000000000;
    v12 = 1953394534;
    if (v4 != 1)
    {
      v12 = 0x656372756F736572;
      v11 = 0xE800000000000000;
    }

    if (v4)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0x6567616D69;
    }

    if (v4)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    if (v9 == v13 && v10 == v14)
    {

      return v3 == v5;
    }

    v15 = sub_242F06110();

    if (v15)
    {
      return v3 == v5;
    }
  }

  return 0;
}

unint64_t sub_242E2463C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF87B8;
  if (!qword_27ECF87B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF87B8);
  }

  return result;
}

unint64_t sub_242E24690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF87C0;
  if (!qword_27ECF87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF87C0);
  }

  return result;
}

unint64_t sub_242E246E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF87D0;
  if (!qword_27ECF87D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF87D0);
  }

  return result;
}

unint64_t sub_242E2476C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF87D8;
  if (!qword_27ECF87D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF87D8);
  }

  return result;
}

unint64_t sub_242E247C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF87E0;
  if (!qword_27ECF87E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF87E0);
  }

  return result;
}

unint64_t sub_242E2481C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF87E8;
  if (!qword_27ECF87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF87E8);
  }

  return result;
}

uint64_t sub_242E24870(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079547465737361 && a2 == 0xE900000000000065 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242E24994(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFAD8, &qword_242F092D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static DecodableDefault.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_242F04EE0() & 1;
}

uint64_t DecodableNil.wrappedValue.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_242F05860();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t DecodableNil.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = sub_242F05860();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t DecodableNil.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(*(a1 - 8) + 56);
  (v6)((a1 - 8), a2, 1, 1, a1);
  v4 = sub_242F05860();
  (*(*(v4 - 8) + 8))(a2, v4);

  return v6(a2, 1, 1, a1);
}

uint64_t DecodableNil.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v5 = sub_242F05860();
  v6 = *(*(v5 - 8) + 40);

  return v6(a3, a1, v5);
}

uint64_t DecodableNil.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a6;
  v11 = sub_242F05860();
  v12 = *(v11 - 8);
  v29 = v11;
  v30 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v35[0] = a2;
  v35[1] = a3;
  v28 = a3;
  v35[2] = a4;
  v36 = a5;
  v37 = type metadata accessor for DecodableNil(0, v35);
  v33 = *(v37 - 8);
  v15 = MEMORY[0x28223BE20](v37);
  v17 = &v26 - v16;
  v18 = *(a2 - 8);
  v19 = *(v18 + 56);
  v20 = v18 + 56;
  v19(&v26 - v16, 1, 1, a2, v15);
  v21 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v21);
  v22 = v32;
  sub_242F06470();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v34);
    return (*(v33 + 8))(v17, v37);
  }

  else
  {
    v32 = v20;
    v27 = v19;
    __swift_project_boxed_opaque_existential_2Tm(v35, v36);
    if (sub_242F06170())
    {
      (*(v30 + 8))(v17, v29);
      v27(v17, 1, 1, a2);
    }

    else
    {
      __swift_project_boxed_opaque_existential_2Tm(v35, v36);
      sub_242F06160();
      v27(v14, 0, 1, a2);
      (*(v30 + 40))(v17, v14, v29);
    }

    __swift_destroy_boxed_opaque_existential_2Tm(v35);
    v24 = v33;
    v25 = v37;
    (*(v33 + 16))(v31, v17, v37);
    __swift_destroy_boxed_opaque_existential_2Tm(v34);
    return (*(v24 + 8))(v17, v25);
  }
}

BOOL static DecodableNil.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_242F05860();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v32 = &v27 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = &v27 - v16;
  v19 = *(v18 + 48);
  v31 = v12;
  v20 = *(v12 + 16);
  v20(&v27 - v16, a1, v11, v15);
  (v20)(&v17[v19], a2, v11);
  v21 = *(v9 + 48);
  if (v21(v17, 1, a3) != 1)
  {
    (v20)(v32, v17, v11);
    if (v21(&v17[v19], 1, a3) != 1)
    {
      v23 = v28;
      (*(v9 + 32))(v28, &v17[v19], a3);
      v24 = v32;
      v25 = sub_242F04EE0();
      v26 = *(v9 + 8);
      v26(v23, a3);
      v26(v24, a3);
      (*(v31 + 8))(v17, v11);
      return (v25 & 1) != 0;
    }

    (*(v9 + 8))(v32, a3);
LABEL_6:
    (*(v30 + 8))(v17, TupleTypeMetadata2);
    return 0;
  }

  if (v21(&v17[v19], 1, a3) != 1)
  {
    goto LABEL_6;
  }

  (*(v31 + 8))(v17, v11);
  return 1;
}

uint64_t sub_242E253C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5664657070617277 && a2 == 0xEC00000065756C61)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_242F06110();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_242E25460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E253C4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_242E25498@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242C6EEB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_242E254D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242E25524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t DecodableNil.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v9[0] = *(a2 + 32);
  v9[1] = v3;
  v10[0] = v3;
  v10[1] = v9[0];
  type metadata accessor for DecodableNil.CodingKeys(255, v10);
  swift_getWitnessTable();
  v4 = sub_242F05F30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F064C0();
  sub_242F05EB0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t DecodableNil.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_242F05860();

  return sub_242F05870();
}

uint64_t DecodableNil.hashValue.getter(uint64_t a1)
{
  sub_242F06390();
  sub_242F05860();
  sub_242F05870();
  return sub_242F063E0();
}

uint64_t DecodableDefault.wrappedValue.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t DecodableDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 40);

  return v5(v2, a1, AssociatedTypeWitness);
}

uint64_t DecodableDefault.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 32);

  return v7(a4, a1, AssociatedTypeWitness);
}

uint64_t DecodableDefault.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v20 - v9;
  v11 = type metadata accessor for DecodableDefault(0, a2, a3, a4);
  v24 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  v14 = v29;
  sub_242F06470();
  if (v14)
  {
    v15 = a1;
  }

  else
  {
    v20 = v10;
    v21 = v13;
    v29 = a1;
    v16 = AssociatedTypeWitness;
    v22 = v11;
    __swift_project_boxed_opaque_existential_2Tm(v27, v28);
    if (sub_242F06170())
    {
      v17 = v21;
      (*(a3 + 40))(a2, a3);
    }

    else
    {
      __swift_project_boxed_opaque_existential_2Tm(v27, v28);
      swift_getAssociatedConformanceWitness();
      v18 = v20;
      sub_242F06160();
      v17 = v21;
      (*(v23 + 32))(v21, v18, v16);
    }

    __swift_destroy_boxed_opaque_existential_2Tm(v27);
    (*(v24 + 32))(v25, v17, v22);
    v15 = v29;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v15);
}

uint64_t sub_242E25CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E253C4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_242E25CE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242C6EEB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_242E25D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242E25D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t DecodableDefault.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v9 = a2[2];
  type metadata accessor for DecodableDefault.CodingKeys(255, v9, v3, a2[4]);
  swift_getWitnessTable();
  v4 = sub_242F05F30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F064C0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_242F05F20();
  return (*(v5 + 8))(v7, v4);
}

uint64_t DecodableDefault.hash(into:)(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();

  return sub_242F04D90();
}

uint64_t DecodableDefault.hashValue.getter(uint64_t a1)
{
  sub_242F06390();
  DecodableDefault.hash(into:)(v3, a1);
  return sub_242F063E0();
}

uint64_t sub_242E2608C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  sub_242F06390();
  a4(v7, a2);
  return sub_242F063E0();
}

uint64_t sub_242E26178@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = static EmptyDictionary.default.getter(a1[2], a1[3], a2, a3, a1[6]);
  *a4 = result;
  return result;
}

uint64_t sub_242E261B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static EmptyArray.default.getter(*(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t static FirstCase.default.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_242F05860();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v14 - v10;
  sub_242F05A90();
  swift_getAssociatedConformanceWitness();
  sub_242F05600();
  (*(v9 + 8))(v11, AssociatedTypeWitness);
  v12 = *(a1 - 8);
  result = (*(v12 + 48))(v7, 1, a1);
  if (result != 1)
  {
    return (*(v12 + 32))(a3, v7, a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_242E263DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static EmptySet.default.getter(*(a1 + 16), a2, a3, *(a1 + 40));
  *a4 = result;
  return result;
}

uint64_t sub_242E264B8(uint64_t a1)
{
  result = sub_242F04740();
  qword_27ECF87F8 = result;
  return result;
}

uint64_t sub_242E2654C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v7 = a4;
    v8 = a3;
    swift_once();
    a3 = v8;
    a4 = v7;
  }

  *a4 = *a3;
}

uint64_t sub_242E265F4@<X0>(void *a1@<X2>, void *a2@<X3>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a4;
    swift_once();
    a4 = v7;
    a2 = v6;
  }

  *a4 = *a2;
}

double sub_242E266A0()
{
  xmmword_27ECF8808 = 0u;
  unk_27ECF8818 = 0u;
  qword_27ECF8840 = 0;
  qword_27ECF8848 = 0;
  xmmword_27ECF8828 = xmmword_242F385A0;
  sub_242DD77E4(0, 0, 0, 0, 254);
  byte_27ECF8838 = 0;
  qword_27ECF8840 = 0;
  qword_27ECF8848 = 0;

  return result;
}

uint64_t static EmptyTexture.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF6F0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&byte_27ECF8838;
  v8[2] = xmmword_27ECF8828;
  v8[3] = *&byte_27ECF8838;
  v2 = qword_27ECF8848;
  v9 = qword_27ECF8848;
  v4 = xmmword_27ECF8808;
  v3 = unk_27ECF8818;
  v8[0] = xmmword_27ECF8808;
  v8[1] = unk_27ECF8818;
  *(a1 + 32) = xmmword_27ECF8828;
  *(a1 + 48) = v1;
  *(a1 + 64) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return sub_242DD822C(v8, v7);
}

uint64_t sub_242E267A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF6F0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&byte_27ECF8838;
  v8[2] = xmmword_27ECF8828;
  v8[3] = *&byte_27ECF8838;
  v2 = qword_27ECF8848;
  v9 = qword_27ECF8848;
  v4 = xmmword_27ECF8808;
  v3 = unk_27ECF8818;
  v8[0] = xmmword_27ECF8808;
  v8[1] = unk_27ECF8818;
  *(a1 + 32) = xmmword_27ECF8828;
  *(a1 + 48) = v1;
  *(a1 + 64) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return sub_242DD822C(v8, v7);
}

unint64_t sub_242E26BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8850;
  if (!qword_27ECF8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8850);
  }

  return result;
}

unint64_t sub_242E26C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8858;
  if (!qword_27ECF8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8858);
  }

  return result;
}

unint64_t sub_242E26CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8860;
  if (!qword_27ECF8860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8860);
  }

  return result;
}

unint64_t sub_242E26D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8868;
  if (!qword_27ECF8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8868);
  }

  return result;
}

unint64_t sub_242E26D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8870;
  if (!qword_27ECF8870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8870);
  }

  return result;
}

unint64_t sub_242E26DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8878[0];
  if (!qword_27ECF8878[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ECF8878);
  }

  return result;
}

uint64_t sub_242E26E20(uint64_t a1)
{
  result = sub_242F05860();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_242E26E90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_242E27010(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
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
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_242E2723C(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_242E272B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void sub_242E27448(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v7 + 56);

  v16(a1, a2);
}

void sub_242E2790C(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v20 = v6;
  v21 = v2;
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      do
      {
LABEL_8:
        v9 = *(a1 + 56) + 48 * (__clz(__rbit64(v5)) | (v7 << 6));
        v10 = *v9;
        v11 = *(v9 + 8);
        v12 = *(v9 + 16);
        v13 = *(v9 + 24);
        v14 = *(v9 + 32);
        v27 = *(v9 + 40);
        v15 = *a2;
        sub_242C7F6C4(v10, v11, v12, v13, v14);
        sub_242C7F6C4(v10, v11, v12, v13, v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = sub_242C82D10(0, v15[2] + 1, 1, v15);
          *a2 = v15;
        }

        v18 = v15[2];
        v17 = v15[3];
        if (v18 >= v17 >> 1)
        {
          v15 = sub_242C82D10((v17 > 1), v18 + 1, 1, v15);
          *a2 = v15;
        }

        v5 &= v5 - 1;
        v25 = &type metadata for ImageAsset;
        v26 = &protocol witness table for ImageAsset;
        v19 = swift_allocObject();
        *&v24 = v19;
        *(v19 + 16) = v10;
        *(v19 + 24) = v11;
        *(v19 + 32) = v12;
        *(v19 + 40) = v13;
        *(v19 + 48) = v14;
        *(v19 + 56) = v27;
        v15[2] = v18 + 1;
        sub_242C65564(&v24, &v15[5 * v18 + 4]);
        sub_242C7F724(v10, v11, v12, v13, v14);
        v6 = v20;
        v2 = v21;
      }

      while (v5);
    }
  }

  __break(1u);
}

void *MeasurementLabelConfiguration.assets.getter()
{
  v1 = *(v0 + 24);
  v24 = *(v0 + 8);
  v25 = v1;
  v26 = *(v0 + 40);
  v27 = *(v0 + 56);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v9 = *(v0 + 280);
  v8 = *(v0 + 288);
  sub_242C94884(&v24, &v20);
  v19 = v3;
  sub_242C94804(v2, v3, v4, v5, v7, v6, v9);
  v10 = sub_242C82D10(0, 1, 1, MEMORY[0x277D84F90]);
  v12 = v10[2];
  v11 = v10[3];
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    v10 = sub_242C82D10((v11 > 1), v12 + 1, 1, v10);
  }

  v21 = &type metadata for RasterFont;
  v22 = &protocol witness table for RasterFont;
  v14 = swift_allocObject();
  *&v20 = v14;
  v15 = v25;
  *(v14 + 16) = v24;
  *(v14 + 32) = v15;
  *(v14 + 48) = v26;
  *(v14 + 64) = v27;
  v10[2] = v13;
  sub_242C65564(&v20, &v10[5 * v12 + 4]);
  v23 = v10;
  if (v4)
  {
    v16 = v10[3];
    if ((v12 + 2) > (v16 >> 1))
    {
      v10 = sub_242C82D10((v16 > 1), v12 + 2, 1, v10);
    }

    v21 = &type metadata for RasterFont;
    v22 = &protocol witness table for RasterFont;
    v17 = swift_allocObject();
    *&v20 = v17;
    *(v17 + 16) = v2;
    *(v17 + 24) = v19;
    *(v17 + 32) = v4;
    *(v17 + 40) = v5;
    *(v17 + 48) = v7 & 1;
    *(v17 + 49) = BYTE1(v7) & 1;
    *(v17 + 56) = v6;
    *(v17 + 64) = v9;
    v10[2] = v12 + 2;
    sub_242C65564(&v20, &v10[5 * v13 + 4]);
    v23 = v10;
  }

  sub_242E2790C(v8, &v23);
  return v23;
}

void MeasurementLabelConfiguration.restoreAssets(from:)(uint64_t a1)
{
  v4 = *(v1 + 288);
  v5 = sub_242CE6D94(MEMORY[0x277D84F90]);
  v8[2] = a1;
  v6 = sub_242C8A810(v5, sub_242C8B824, v8, v4);
  if (v2)
  {
  }

  else
  {
    v7 = v6;

    *(v1 + 288) = v7;
  }
}

void sub_242E27DE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = sub_242CDD790(*(a2 + 16), 0);
    v5 = sub_242CE3FBC();

    sub_242E0F19C(v30);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v30 = v4;
  sub_242E0F1A0(&v30);
  v6 = v30;
  v7 = *(v30 + 2);
  if (v7)
  {
    v8 = 0;
    v9 = v30 + 32;
    v27 = *(v30 + 2);
    v28 = v30;
    v26 = v30 + 32;
    while (v8 < *(v6 + 2))
    {
      v10 = &v9[16 * v8];
      v11 = *v10;
      v12 = v10[1];

      sub_242F04DD0();
      if (*(a2 + 16) && (v13 = sub_242CE519C(v11, v12), (v14 & 1) != 0))
      {
        v15 = *(*(a2 + 56) + 8 * v13);
        v16 = *(v15 + 16);

        if (v16)
        {
          v17 = 0;
          v18 = v15 + 32;
          while (v17 < *(v15 + 16))
          {
            sub_242C6CF00(v18, &v30);
            ++v17;
            v19 = v31;
            v20 = __swift_project_boxed_opaque_existential_2Tm(&v30, v31);
            v23 = sub_242E0EF0C(v20, v21, v22);
            sub_242E2E574(v23, v24, v25);
            sub_242E099F4(v20, a1, &type metadata for MeasurementLabelConfiguration, v19);
            __swift_destroy_boxed_opaque_existential_2Tm(&v30);
            v18 += 40;
            if (v16 == v17)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
          break;
        }

LABEL_16:

        v7 = v27;
        v6 = v28;
        v9 = v26;
      }

      else
      {
      }

      if (++v8 == v7)
      {
        goto LABEL_17;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_17:
  }
}

void sub_242E28004(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return;
  }

  v3 = a2;
  v43 = a1;
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = sub_242CDD790(v2, 0);
  v5 = sub_242CE3FBC();

  sub_242E0F19C(v47);
  if (v5 != v2)
  {
    __break(1u);
LABEL_5:
    v4 = MEMORY[0x277D84F90];
  }

  v47 = v4;
  sub_242E0F1A0(&v47);
  v6 = v47;
  v7 = v43;
  v39 = *(v47 + 2);
  if (!v39)
  {
LABEL_23:

    return;
  }

  v8 = 0;
  v41 = v47 + 32;
  v38 = v3;
  v40 = v47;
  while (2)
  {
    if (v8 >= *(v6 + 16))
    {
LABEL_29:
      __break(1u);

      __break(1u);
    }

    else
    {
      if (*(v7 + 16))
      {
        v9 = &v41[16 * v8];
        v11 = *v9;
        v10 = v9[1];

        v12 = sub_242CE519C(v11, v10);
        if (v13)
        {
          if (*(v3 + 16))
          {
            v14 = *(*(v7 + 56) + 8 * v12);

            v15 = sub_242CE519C(v11, v10);
            v17 = v16;

            if (v17)
            {
              v18 = *(*(v3 + 56) + 8 * v15);
              v19 = *(v18 + 16);
              v45 = *(v14 + 16);
              if (v45 == v19)
              {
                v42 = v8 + 1;

                v20 = 0;
                v6 = 32;
                v44 = v14;
                while (v45 != v20)
                {
                  if (v20 >= *(v14 + 16))
                  {
                    __break(1u);
LABEL_28:
                    __break(1u);
                    goto LABEL_29;
                  }

                  sub_242C6CF00(v14 + v6, v46);
                  v21 = *(v18 + 16);
                  if (v20 == v21)
                  {
                    __swift_destroy_boxed_opaque_existential_2Tm(v46);
                    break;
                  }

                  if (v20++ >= v21)
                  {
                    goto LABEL_28;
                  }

                  v22 = v6 + 40;
                  sub_242C65564(v46, &v47);
                  sub_242C6CF00(v18 + v6, v50);
                  v24 = v48;
                  v23 = v49;
                  v25 = __swift_project_boxed_opaque_existential_2Tm(&v47, v48);
                  v26 = *(v24 - 8);
                  v27 = MEMORY[0x28223BE20](v25);
                  v29 = &v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
                  (*(v26 + 16))(v29, v27);
                  v30 = __swift_destroy_boxed_opaque_existential_2Tm(&v47);
                  v33 = sub_242E0EF0C(v30, v31, v32);
                  v36 = sub_242E2D70C(v33, v34, v35);
                  LOBYTE(v33) = sub_242E09F2C(v29, v50, &type metadata for MeasurementLabelConfiguration, v24, v33, v36, *(*(v23 + 24) + 8));
                  (*(v26 + 8))(v29, v24);
                  __swift_destroy_boxed_opaque_existential_2Tm(v50);
                  v6 = v22;
                  v14 = v44;
                  if ((v33 & 1) == 0)
                  {

                    return;
                  }
                }

                v8 = v42;
                v7 = v43;
                v3 = v38;
                v6 = v40;
                if (v42 != v39)
                {
                  continue;
                }

                goto LABEL_23;
              }
            }
          }
        }
      }
    }

    break;
  }
}

double sub_242E283E0@<D0>(int a1@<W0>, unint64_t *a2@<X8>)
{
  v5 = *v2;
  memcpy(__dst, v2 + 1, sizeof(__dst));
  sub_242D48DCC(v2, &v18);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = sub_242CE7A40(MEMORY[0x277D84F90]);
  }

  v21 = v6;

  v7 = sub_242E285E0();
  v9 = v7;
  v10 = v8;
  if (*(v6 + 16) && (v11 = sub_242CE519C(v7, v8), (v12 & 1) != 0))
  {
    v13 = *(*(v6 + 56) + 8 * v11);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_242C83AF4(0, v13[2] + 1, 1, v13);
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_242C83AF4((v14 > 1), v15 + 1, 1, v13);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8E08, &qword_242F39908);
  v20 = sub_242C7E000(&qword_27ECF8E10, &qword_27ECF8E08, &qword_242F39908, &protocol conformance descriptor for OverrideRule<A>);
  BYTE2(v18) = BYTE2(a1);
  LOWORD(v18) = a1;
  BYTE3(v18) = HIBYTE(a1) & 1;
  v13[2] = v15 + 1;
  sub_242C65564(&v18, &v13[5 * v15 + 4]);
  sub_242E082AC(v13, v9, v10);
  v16 = v21;

  *a2 = v16;
  memcpy(a2 + 1, __dst, 0x148uLL);

  return result;
}

uint64_t sub_242E285E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8E18, &qword_242F39910);
  v0 = sub_242F05C20();
  sub_242C6CB78(v0, v1, v2);
  sub_242F05890();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8288, &unk_242F36150);
  sub_242C7E000(&qword_27ECF8290, &qword_27ECF8288, &unk_242F36150, MEMORY[0x277D83FA0]);
  v3 = sub_242F04E40();

  return v3;
}

double MeasurementLabelConfiguration.overrides.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void MeasurementLabelConfiguration.overrides.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

uint64_t MeasurementLabelConfiguration.ColorIDs.iconRedactedColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t MeasurementLabelConfiguration.ColorIDs.valueRedactedColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 64);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t MeasurementLabelConfiguration.ColorIDs.unitRedactedColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 88);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t MeasurementLabelConfiguration.ColorIDs.init(iconColorIDs:valueColorIDs:unitColorIDs:iconRedactedColorID:valueRedactedColorID:unitRedactedColorID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_242C7CEB0(*a6, *(a6 + 8), *(a6 + 16));
  v13 = *(a4 + 16);
  v14 = *a5;
  v15 = *(a5 + 8);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = *a4;
  *(a7 + 40) = v13;
  *(a7 + 48) = v14;
  *(a7 + 56) = v15;
  v16 = *(a5 + 16);
  *(a7 + 64) = v16;
  *(a7 + 72) = v14;
  *(a7 + 80) = v15;
  *(a7 + 88) = v16;

  return sub_242C7CE5C(v14, v15, v16);
}

uint64_t MeasurementLabelConfiguration.ColorIDs.init(iconColorID:valueColorID:unitColorID:iconRedactedColorID:valueRedactedColorID:unitRedactedColorID:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 16);
  v25 = a3[1];
  v26 = *a3;
  v24 = *(a3 + 16);
  v34 = a4[1];
  v35 = *a4;
  v33 = *(a4 + 16);
  v31 = a5[1];
  v32 = *a5;
  v30 = *(a5 + 16);
  v28 = a6[1];
  v29 = *a6;
  v27 = *(a6 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3378, &unk_242F2FFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09510;
  *(inited + 32) = 0;
  v15 = inited + 32;
  *(inited + 40) = v8;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  v16 = sub_242CE7008(inited);
  swift_setDeallocating();
  sub_242C6D138(v15, &qword_27ECF1F18, &qword_242F131D0);
  *a7 = v16;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_242F09510;
  *(v17 + 32) = 0;
  v18 = v17 + 32;
  *(v17 + 40) = v11;
  *(v17 + 48) = v12;
  *(v17 + 56) = v13;
  v19 = sub_242CE7008(v17);
  swift_setDeallocating();
  sub_242C6D138(v18, &qword_27ECF1F18, &qword_242F131D0);
  *(a7 + 8) = v19;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_242F09510;
  *(v20 + 32) = 0;
  v21 = v20 + 32;
  *(v20 + 40) = v26;
  *(v20 + 48) = v25;
  *(v20 + 56) = v24;
  v22 = sub_242CE7008(v20);
  swift_setDeallocating();
  result = sub_242C6D138(v21, &qword_27ECF1F18, &qword_242F131D0);
  *(a7 + 16) = v22;
  *(a7 + 24) = v35;
  *(a7 + 32) = v34;
  *(a7 + 40) = v33;
  *(a7 + 48) = v32;
  *(a7 + 56) = v31;
  *(a7 + 64) = v30;
  *(a7 + 72) = v29;
  *(a7 + 80) = v28;
  *(a7 + 88) = v27;
  return result;
}

unint64_t sub_242E28A58()
{
  v1 = *v0;
  v2 = 0x6F6C6F436E6F6369;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000013;
  if (v1 == 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6F4365756C6176;
  if (v1 != 1)
  {
    v5 = 0x6F6C6F4374696E75;
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

uint64_t sub_242E28B28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242E2DCEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E28B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E2D26C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E28B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E2D26C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t MeasurementLabelConfiguration.ColorIDs.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D00, &unk_242F38E30);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 24);
  v32 = *(v1 + 16);
  v33 = v8;
  v11 = *(v1 + 32);
  v30 = v10;
  v31 = v11;
  v37 = *(v1 + 40);
  v12 = *(v1 + 48);
  v29 = *(v1 + 56);
  v28 = *(v1 + 64);
  v13 = *(v1 + 80);
  v26 = *(v1 + 72);
  v27 = v12;
  v24 = v13;
  v25 = *(v1 + 88);
  v14 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E2D26C(v14, v15, v16);

  v17 = v4;
  sub_242F064C0();
  v34 = v9;
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
  sub_242CCFBCC(&qword_27ECF1C00, sub_242C7DEA0, MEMORY[0x277D83B90], MEMORY[0x277D83508]);
  sub_242F05F20();
  if (v2)
  {

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v18 = v32;

    v34 = v33;
    v38 = 1;
    sub_242F05F20();
    v34 = v18;
    v38 = 2;
    sub_242F05F20();
    v34 = v30;
    v35 = v31;
    v36 = v37;
    v38 = 3;
    v20 = sub_242C7CE5C(v30, v31, v37);
    sub_242C7DEA0(v20, v21, v22);
    sub_242F05F20();
    sub_242C7CEB0(v34, v35, v36);
    v34 = v27;
    v35 = v29;
    v36 = v28;
    v38 = 4;
    sub_242C7CE5C(v27, v29, v28);
    sub_242F05F20();
    sub_242C7CEB0(v34, v35, v36);
    v34 = v26;
    v35 = v24;
    v36 = v25;
    v38 = 5;
    sub_242C7CE5C(v26, v24, v25);
    sub_242F05F20();
    sub_242C7CEB0(v34, v35, v36);
    return (*(v5 + 8))(v7, v17);
  }
}

double MeasurementLabelConfiguration.ColorIDs.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  sub_242C79508(a1, *v1);
  sub_242C79508(a1, v3);
  sub_242C79508(a1, v4);
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  return result;
}

uint64_t MeasurementLabelConfiguration.ColorIDs.hashValue.getter()
{
  sub_242F06390();
  MeasurementLabelConfiguration.ColorIDs.hash(into:)(v1);
  return sub_242F063E0();
}

void MeasurementLabelConfiguration.ColorIDs.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D10, &qword_242F38E40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E2D26C(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    v38 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
    LOBYTE(v39) = 0;
    sub_242CCFBCC(&qword_27ECF1C10, sub_242C7DFAC, MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
    sub_242F05E00();
    v12 = v44;
    LOBYTE(v39) = 1;
    sub_242F05E00();
    v37 = v44;
    LOBYTE(v39) = 2;
    v13 = sub_242F05E00();
    v35 = v44;
    LOBYTE(v39) = 3;
    sub_242C7DFAC(v13, v14, v15);
    sub_242F05E00();
    v33 = v44;
    v32 = v45;
    v34 = v46;
    LOBYTE(v39) = 4;
    sub_242F05E00();
    v31 = v44;
    v36 = v45;
    v59 = v46;
    v60 = 5;
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v30 = v56;
    v29 = v57;
    v28 = v58;
    v16 = v12;
    *&v39 = v12;
    v17 = v37;
    *(&v39 + 1) = v37;
    v18 = v35;
    *&v40 = v35;
    v19 = v33;
    *(&v40 + 1) = v33;
    v20 = v32;
    *&v41 = v32;
    v21 = v34;
    BYTE8(v41) = v34;
    *&v42 = v31;
    *(&v42 + 1) = v36;
    v43[0] = v59;
    *&v43[8] = v56;
    *&v43[16] = v57;
    v43[24] = v58;
    v22 = v40;
    v23 = v38;
    *v38 = v39;
    v23[1] = v22;
    v24 = v41;
    v25 = v42;
    v26 = *v43;
    *(v23 + 73) = *&v43[9];
    v23[3] = v25;
    v23[4] = v26;
    v23[2] = v24;
    sub_242E2D2C0(&v39, &v44);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    v44 = v16;
    v45 = v17;
    v46 = v18;
    v47 = v19;
    v48 = v20;
    v49 = v21;
    v50 = v31;
    v51 = v36;
    v52 = v59;
    v53 = v30;
    v54 = v29;
    v55 = v28;
    sub_242E2D2F8(&v44);
  }
}

uint64_t sub_242E2970C()
{
  sub_242F06390();
  MeasurementLabelConfiguration.ColorIDs.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242E29750(uint64_t a1)
{
  sub_242F06390();
  MeasurementLabelConfiguration.ColorIDs.hash(into:)(v2);
  return sub_242F063E0();
}

CarPlayAssetUI::MeasurementLabelConfiguration::Alignment_optional __swiftcall MeasurementLabelConfiguration.Alignment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302010004uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

CarPlayAssetUI::MeasurementLabelConfiguration::OffsetType_optional __swiftcall MeasurementLabelConfiguration.OffsetType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t MeasurementLabelConfiguration.OffsetType.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t MeasurementLabelConfiguration.font.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v7[0] = *(v1 + 8);
  v7[1] = v2;
  v8 = *(v1 + 40);
  v3 = v8;
  v9 = *(v1 + 56);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_242C94884(v7, v6);
}

void sub_242E299C0(__int128 *a1, uint64_t a2)
{
  v3 = a1[1];
  v7 = *a1;
  v8 = v3;
  v9 = a1[2];
  v10 = *(a1 + 6);
  v11[0] = *(a2 + 8);
  v4 = *(a2 + 40);
  v11[1] = *(a2 + 24);
  v11[2] = v4;
  v12 = *(a2 + 56);
  sub_242C94884(&v7, v6);
  sub_242C954DC(v11);
  v5 = v8;
  *(a2 + 8) = v7;
  *(a2 + 24) = v5;
  *(a2 + 40) = v9;
  *(a2 + 56) = v10;
  sub_242E29AC0();
}

void MeasurementLabelConfiguration.font.setter(uint64_t a1)
{
  v3 = *(v1 + 24);
  v5[0] = *(v1 + 8);
  v5[1] = v3;
  v5[2] = *(v1 + 40);
  v6 = *(v1 + 56);
  sub_242C954DC(v5);
  v4 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v4;
  *(v1 + 40) = *(a1 + 32);
  *(v1 + 56) = *(a1 + 48);
  sub_242E29AC0();
}

void sub_242E29AC0()
{
  v1 = v0;
  v2 = RasterFont.cpFont.getter();
  v3 = sub_242EB8B1C(32, 0xE100000000000000);

  if (*(v3 + 16))
  {
    v4 = *(v3 + 32);

    v5 = v4;
    *(v1 + 300) = v5;
  }

  else
  {

    sub_242F05C60();
    __break(1u);
  }
}

void sub_242E29BC4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_242E29AC0();
  }
}

uint64_t MeasurementLabelConfiguration.colorIDs.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[7];
  v10 = v1[6];
  v2 = v10;
  v11 = v3;
  v12[0] = v1[8];
  v4 = v12[0];
  *(v12 + 9) = *(v1 + 137);
  v6 = v1[5];
  v9[0] = v1[4];
  v5 = v9[0];
  v9[1] = v6;
  *(a1 + 73) = *(v12 + 9);
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_242E2D2C0(v9, &v8);
}

__n128 MeasurementLabelConfiguration.colorIDs.setter(uint64_t a1)
{
  v3 = v1[7];
  v8[2] = v1[6];
  v8[3] = v3;
  v9[0] = v1[8];
  *(v9 + 9) = *(v1 + 137);
  v4 = v1[5];
  v8[0] = v1[4];
  v8[1] = v4;
  sub_242E2D2F8(v8);
  v5 = *(a1 + 48);
  v1[6] = *(a1 + 32);
  v1[7] = v5;
  v1[8] = *(a1 + 64);
  *(v1 + 137) = *(a1 + 73);
  result = *a1;
  v7 = *(a1 + 16);
  v1[4] = *a1;
  v1[5] = v7;
  return result;
}

uint64_t MeasurementLabelConfiguration.minFractionDigits.setter(uint64_t result, char a2)
{
  *(v2 + 168) = result;
  *(v2 + 176) = a2 & 1;
  return result;
}

uint64_t MeasurementLabelConfiguration.minIntegerDigits.setter(uint64_t result, char a2)
{
  *(v2 + 184) = result;
  *(v2 + 192) = a2 & 1;
  return result;
}

uint64_t MeasurementLabelConfiguration.defaultUnitLabel.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

void MeasurementLabelConfiguration.defaultUnitLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
}

void MeasurementLabelConfiguration.unitFont.getter(uint64_t *a1@<X8>)
{
  v2 = v1[29];
  v3 = v1[30];
  v4 = v1[31];
  v5 = v1[32];
  v6 = v1[33];
  v7 = v1[34];
  v8 = v1[35];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_242C94804(v2, v3, v4, v5, v6, v7, v8);
}

__n128 MeasurementLabelConfiguration.unitFont.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_242C94844(*(v1 + 232), *(v1 + 240), *(v1 + 248), *(v1 + 256), *(v1 + 264), *(v1 + 272), *(v1 + 280));
  v4 = *a1;
  *(v1 + 248) = a1[1];
  *(v1 + 232) = v4;
  result = v6;
  *(v1 + 264) = v6;
  *(v1 + 280) = v3;
  return result;
}

uint64_t MeasurementLabelConfiguration.valueTracking.setter(uint64_t result)
{
  *(v1 + 312) = result;
  *(v1 + 316) = BYTE4(result) & 1;
  return result;
}

uint64_t MeasurementLabelConfiguration.trailingString.getter()
{
  v1 = *(v0 + 320);

  return v1;
}

void MeasurementLabelConfiguration.trailingString.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 320) = a1;
  *(v2 + 328) = a2;
}

uint64_t MeasurementLabelConfiguration.init(font:colorIDs:precision:minFractionDigits:minIntegerDigits:divider:defaultUnitLabel:unitLabels:unitFont:images:imagePadding:labelSpacing:valueYOffset:offsetType:valueTracking:alignment:trailingString:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, uint64_t a12, uint64_t a13, uint64_t a14, __int128 *a15, uint64_t a16, uint64_t a17, char *a18, int a19, char a20, char *a21, uint64_t a22, uint64_t a23)
{
  v32 = a1[1];
  v60 = *a1;
  v61 = v32;
  v62 = a1[2];
  v63 = *(a1 + 6);
  v54 = a15[1];
  v55 = *a15;
  v53 = *(a15 + 4);
  v51 = *(a15 + 6);
  v52 = *(a15 + 5);
  v33 = *a18;
  v34 = *a21;
  v59 = a5 & 1;
  v58 = a7 & 1;
  sub_242C94884(&v60, v56);
  sub_242C94844(0, 0, 0, 0, 0, 0, 0);
  if ((a17 & 0x100000000) == 0)
  {
    sub_242C954DC(&v60);
    v35 = *&a17;
LABEL_5:
    LOBYTE(v56[0]) = a20 & 1;
    v44 = v59;
    v45 = v58;
    *a9 = 0;
    v46 = a1[1];
    *(a9 + 8) = *a1;
    *(a9 + 24) = v46;
    *(a9 + 40) = a1[2];
    result = *(a1 + 6);
    *(a9 + 56) = result;
    v48 = a2[3];
    *(a9 + 96) = a2[2];
    *(a9 + 112) = v48;
    *(a9 + 128) = a2[4];
    *(a9 + 137) = *(a2 + 73);
    v49 = a2[1];
    *(a9 + 64) = *a2;
    *(a9 + 80) = v49;
    *(a9 + 160) = a3;
    *(a9 + 168) = a4;
    *(a9 + 176) = v44;
    *(a9 + 184) = a6;
    *(a9 + 192) = v45;
    *(a9 + 200) = a8;
    *(a9 + 208) = a12;
    *(a9 + 216) = a13;
    *(a9 + 224) = a14;
    *(a9 + 248) = v54;
    *(a9 + 232) = v55;
    *(a9 + 264) = v53;
    *(a9 + 272) = v52;
    *(a9 + 280) = v51;
    *(a9 + 288) = a16;
    *(a9 + 296) = a10;
    *(a9 + 300) = v35;
    *(a9 + 304) = a11;
    *(a9 + 308) = v33;
    *(a9 + 312) = a19;
    *(a9 + 316) = a20 & 1;
    *(a9 + 317) = v34;
    *(a9 + 320) = a22;
    *(a9 + 328) = a23;
    return result;
  }

  v50 = v33;
  v36 = v34;
  v37 = a3;
  v38 = a4;
  v39 = a6;
  v40 = a8;
  v56[0] = v60;
  v56[1] = v61;
  v56[2] = v62;
  v57 = v63;
  v41 = RasterFont.cpFont.getter();
  v42 = sub_242EB8B1C(32, 0xE100000000000000);

  if (*(v42 + 16))
  {
    v43 = *(v42 + 32);
    sub_242C954DC(&v60);

    v35 = v43;
    a8 = v40;
    a6 = v39;
    a4 = v38;
    a3 = v37;
    v34 = v36;
    v33 = v50;
    goto LABEL_5;
  }

  result = sub_242F05C60();
  __break(1u);
  return result;
}

void MeasurementLabelConfiguration.init(font:colorIDs:precision:minFractionDigits:minIntegerDigits:divider:defaultUnitLabel:unitLabels:unitFont:image:imagePadding:labelSpacing:valueYOffset:offsetType:valueTracking:alignment:trailingString:)(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, uint64_t a12, uint64_t a13, uint64_t a14, __int128 *a15, __int128 *a16, uint64_t a17, char *a18, int a19, char a20, char *a21, uint64_t a22, uint64_t a23)
{
  v31 = a1[1];
  v65 = *a1;
  v66 = v31;
  v67 = a1[2];
  v68 = *(a1 + 6);
  v50 = a15[1];
  v51 = *a15;
  v54 = a15[2];
  v53 = *(a15 + 6);
  v32 = *(a16 + 4);
  v52 = *a18;
  v55 = *a21;
  if ((~*(a16 + 8) & 0xFELL) != 0)
  {
    v47 = *(a16 + 5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D18, &qword_242F38E58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_242F09510;
    v48 = a7;
    *(inited + 32) = 0;
    v35 = inited + 32;
    v36 = *a16;
    *(inited + 56) = a16[1];
    *(inited + 40) = v36;
    *(inited + 72) = v32;
    *(inited + 80) = v47;
    v33 = sub_242CE6D94(inited);
    swift_setDeallocating();
    v37 = v35;
    a7 = v48;
    sub_242C6D138(v37, &qword_27ECF8D20, &qword_242F38E60);
  }

  else
  {
    v33 = sub_242CE6D94(MEMORY[0x277D84F90]);
  }

  v61 = v65;
  v62 = v66;
  v63 = v67;
  v64 = v68;
  v60 = a5 & 1;
  v59 = a7 & 1;
  sub_242C94884(&v65, v57);
  sub_242C94844(0, 0, 0, 0, 0, 0, 0);
  if ((a17 & 0x100000000) == 0)
  {
    sub_242C954DC(&v65);
    v38 = *&a17;
LABEL_8:
    LOBYTE(v57[0]) = a20 & 1;
    v42 = v60;
    v43 = v59;
    *a9 = 0;
    v44 = v62;
    *(a9 + 8) = v61;
    *(a9 + 24) = v44;
    *(a9 + 40) = v63;
    *(a9 + 56) = v64;
    v45 = a2[3];
    *(a9 + 96) = a2[2];
    *(a9 + 112) = v45;
    *(a9 + 128) = a2[4];
    *(a9 + 137) = *(a2 + 73);
    v46 = a2[1];
    *(a9 + 64) = *a2;
    *(a9 + 80) = v46;
    *(a9 + 160) = a3;
    *(a9 + 168) = a4;
    *(a9 + 176) = v42;
    *(a9 + 184) = a6;
    *(a9 + 192) = v43;
    *(a9 + 200) = a8;
    *(a9 + 208) = a12;
    *(a9 + 216) = a13;
    *(a9 + 224) = a14;
    *(a9 + 232) = v51;
    *(a9 + 248) = v50;
    *(a9 + 264) = v54;
    *(a9 + 280) = v53;
    *(a9 + 288) = v33;
    *(a9 + 296) = a10;
    *(a9 + 300) = v38;
    *(a9 + 304) = a11;
    *(a9 + 308) = v52;
    *(a9 + 312) = a19;
    *(a9 + 316) = a20 & 1;
    *(a9 + 317) = v55;
    *(a9 + 320) = a22;
    *(a9 + 328) = a23;
    return;
  }

  v57[0] = v65;
  v57[1] = v66;
  v57[2] = v67;
  v58 = v68;
  v39 = RasterFont.cpFont.getter();
  sub_242C954DC(&v65);
  v40 = sub_242EB8B1C(32, 0xE100000000000000);

  if (*(v40 + 16))
  {
    v41 = *(v40 + 32);

    v38 = v41;
    goto LABEL_8;
  }

  sub_242F05C60();
  __break(1u);
}

void sub_242E2A77C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 48);
  v13 = *(a2 + 40);
  *&v16 = *(a2 + 8);
  *(&v16 + 1) = v9;
  *&v17 = v10;
  *(&v17 + 1) = v11;
  LOBYTE(v18) = v13;
  *(&v18 + 1) = v12;

  sub_242C7F6C4(v16, v9, v10, v11, v13);
  ImageAsset.restore(from:)(a3);
  if (v4)
  {
    sub_242C7F724(v16, *(&v16 + 1), v17, *(&v17 + 1), v18);
  }

  else
  {
    v19[0] = v16;
    v19[1] = v17;
    v19[2] = v18;
    sub_242E2E5C8(v19, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = v7;
    sub_242CDF7DC(v19, v8, isUniquelyReferenced_nonNull_native);
    sub_242C7F724(v16, *(&v16 + 1), v17, *(&v17 + 1), v18);
    *a4 = v15[0];
  }
}

unint64_t sub_242E2A8A0(char a1)
{
  result = 0x656469727265766FLL;
  switch(a1)
  {
    case 1:
      result = 1953394534;
      break;
    case 2:
      result = 0x734449726F6C6F63;
      break;
    case 3:
      result = 0x6F69736963657270;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x72656469766964;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6562614C74696E75;
      break;
    case 9:
      result = 0x746E6F4674696E75;
      break;
    case 10:
      result = 0x6C75666574617473;
      break;
    case 11:
      result = 0x6461506567616D69;
      break;
    case 12:
      result = 0x6170536C6562616CLL;
      break;
    case 13:
      result = 0x664F5965756C6176;
      break;
    case 14:
      result = 0x795474657366666FLL;
      break;
    case 15:
      result = 0x61725465756C6176;
      break;
    case 16:
      result = 0x6E656D6E67696C61;
      break;
    case 17:
      result = 0x676E696C69617274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_242E2AAD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242E2DF00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E2AB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E2D328(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E2AB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E2D328(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t MeasurementLabelConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D28, &qword_242F38E68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v40 - v5;
  v7 = *v1;
  v8 = *(v1 + 3);
  v86 = *(v1 + 1);
  v87 = v8;
  v88 = *(v1 + 5);
  v89 = v1[7];
  v9 = *(v1 + 7);
  v92 = *(v1 + 6);
  v93 = v9;
  v94[0] = *(v1 + 8);
  *(v94 + 9) = *(v1 + 137);
  v10 = *(v1 + 5);
  v90 = *(v1 + 4);
  v91 = v10;
  v11 = v1[21];
  v61 = v1[20];
  v59 = v11;
  v60 = *(v1 + 176);
  v12 = v1[23];
  v58 = *(v1 + 192);
  v13 = v1[26];
  v56 = v1[25];
  v57 = v12;
  v14 = v1[27];
  v15 = v1[28];
  v54 = v13;
  v55 = v14;
  v16 = v1[30];
  v46 = v1[29];
  v47 = v16;
  v17 = v1[32];
  v52 = v1[31];
  v53 = v15;
  v18 = v1[34];
  v50 = v1[33];
  v51 = v17;
  v19 = v1[36];
  v48 = v1[35];
  v49 = v18;
  v45 = v19;
  v20 = *(v1 + 76);
  v44 = *(v1 + 308);
  v43 = *(v1 + 78);
  LODWORD(v14) = *(v1 + 316);
  v41 = *(v1 + 317);
  v42 = v14;
  v21 = v1[41];
  v40[1] = v1[40];
  v40[2] = v21;
  v22 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E2D328(v22, v23, v24);

  sub_242F064C0();
  *&v74 = v7;
  LOBYTE(v71[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D38, &qword_242F38E70);
  sub_242C7E000(&qword_27ECF8D40, &qword_27ECF8D38, &qword_242F38E70, &protocol conformance descriptor for Overrides<A>);
  v25 = v62;
  sub_242F05EB0();

  if (v25)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v82 = v86;
  v83 = v87;
  v84 = v88;
  v85 = v89;
  v81 = 1;
  v26 = sub_242C94884(&v86, &v74);
  v29 = sub_242C95488(v26, v27, v28);
  sub_242F05F20();
  v62 = v29;
  v79[0] = v82;
  v79[1] = v83;
  v79[2] = v84;
  v80 = v85;
  sub_242C954DC(v79);
  v76 = v92;
  v77 = v93;
  v78[0] = v94[0];
  *(v78 + 9) = *(v94 + 9);
  v74 = v90;
  v75 = v91;
  v73 = 2;
  v30 = sub_242E2D2C0(&v90, v71);
  sub_242E2D37C(v30, v31, v32);
  sub_242F05F20();
  v71[2] = v76;
  v71[3] = v77;
  *v72 = v78[0];
  *&v72[9] = *(v78 + 9);
  v71[0] = v74;
  v71[1] = v75;
  sub_242E2D2F8(v71);
  LOBYTE(v63) = 3;
  sub_242F05F00();
  LOBYTE(v63) = 4;
  sub_242F05E90();
  LOBYTE(v63) = 5;
  sub_242F05E90();
  LOBYTE(v63) = 6;
  sub_242F05F00();
  LOBYTE(v63) = 7;
  sub_242F05E50();
  v63 = v53;
  v70 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3438, &qword_242F18120);
  sub_242D491A0(&qword_27ECF3440, MEMORY[0x277D83B90], MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_242F05EB0();
  v63 = v46;
  v64 = v47;
  v65 = v52;
  v66 = v51;
  v67 = v50;
  v68 = v49;
  v69 = v48;
  v70 = 9;
  sub_242C94804(v46, v47, v52, v51, v50, v49, v48);
  sub_242F05EB0();
  sub_242C94844(v63, v64, v65, v66, v67, v68, v69);
  v63 = v45;
  v70 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0448, &qword_242F0A900);
  sub_242E2D3D0(&qword_27ECF0450, sub_242C8B8E8, MEMORY[0x277D83B90], MEMORY[0x277D83508]);
  sub_242F05F20();
  LOBYTE(v63) = 11;
  sub_242F05EF0();
  LOBYTE(v63) = 12;
  sub_242F05EF0();
  LODWORD(v63) = v20;
  v70 = 13;
  v34 = sub_242F05F20();
  LOBYTE(v63) = v44;
  v70 = 14;
  sub_242E2D454(v34, v35, v36);
  sub_242F05F20();
  LOBYTE(v63) = 15;
  v70 = v42;
  v37 = sub_242F05E80();
  LOBYTE(v63) = v41;
  v70 = 16;
  sub_242E2D4A8(v37, v38, v39);
  sub_242F05F20();
  LOBYTE(v63) = 17;
  sub_242F05E50();
  return (*(v4 + 8))(v6, 0);
}

void MeasurementLabelConfiguration.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 160);
  v5 = *(v1 + 176);
  v13 = *(v1 + 168);
  v14 = *(v1 + 184);
  v6 = *(v1 + 192);
  v21 = *(v1 + 200);
  v7 = *(v1 + 216);
  v8 = *(v1 + 224);
  v19 = *(v1 + 240);
  v20 = *(v1 + 232);
  v9 = *(v1 + 248);
  v17 = *(v1 + 264);
  v18 = *(v1 + 256);
  v16 = *(v1 + 272);
  v15 = *(v1 + 280);
  v24 = *(v1 + 308);
  v25 = *(v1 + 316);
  v26 = *(v1 + 317);
  v22 = *(v1 + 328);
  v23 = *(v1 + 288);
  if (*v1)
  {
    sub_242F063B0();
    sub_242E27DE4(a1, v3);
  }

  else
  {
    sub_242F063B0();
  }

  v10 = *(v1 + 24);
  v31 = *(v1 + 8);
  v32 = v10;
  v33 = *(v1 + 40);
  v34 = *(v1 + 56);
  RasterFont.hash(into:)(a1);
  v11 = MeasurementLabelConfiguration.ColorIDs.hash(into:)(a1);
  MEMORY[0x245D279A0](v4, v11);
  sub_242F063B0();
  if (!v5)
  {
    MEMORY[0x245D279A0](v13);
  }

  sub_242F063B0();
  if (!v6)
  {
    MEMORY[0x245D279A0](v14);
  }

  MEMORY[0x245D279A0](v21);
  if (v7)
  {
    sub_242F063B0();
    sub_242F04DD0();
    if (v8)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_242F063B0();
    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  sub_242F063B0();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_10:
  sub_242F063B0();
  sub_242C796C4(a1, v8);
  if (v9)
  {
LABEL_11:
    *&v27 = v20;
    *(&v27 + 1) = v19;
    *&v28 = v9;
    *(&v28 + 1) = v18;
    *&v29 = v17;
    *(&v29 + 1) = v16;
    sub_242F063B0();
    v30[0] = v20;
    v30[1] = v19;
    v30[2] = v9;
    v30[3] = v18;
    v30[4] = v17;
    v30[5] = v16;
    v30[6] = v15;
    sub_242C94884(v30, &v31);
    RasterFont.hash(into:)(a1);
    v31 = v27;
    v32 = v28;
    v33 = v29;
    v34 = v15;
    sub_242C954DC(&v31);
    goto LABEL_15;
  }

LABEL_14:
  sub_242F063B0();
LABEL_15:
  sub_242C799A8(a1, v23);
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  if (v24)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  MEMORY[0x245D279A0](v12);
  sub_242F063B0();
  if (!v25)
  {
    sub_242F063C0();
  }

  MEMORY[0x245D279A0](v26 + 1);
  sub_242F063B0();
  if (v22)
  {
    sub_242F04DD0();
  }
}

uint64_t MeasurementLabelConfiguration.hashValue.getter()
{
  sub_242F06390();
  MeasurementLabelConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

void MeasurementLabelConfiguration.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D60, &qword_242F38E78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v9 = a1[3];
  v54 = a1;
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, v9);
  sub_242E2D328(v10, v11, v12);
  sub_242F06480();
  if (v2)
  {
    v60 = 0;
    v61 = 0;
    v57 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
    v59 = 0;
    __swift_destroy_boxed_opaque_existential_2Tm(v54);

    sub_242C94844(v61, v60, v58, v57, v56, v55, 0);
  }

  else
  {
    v53 = v6;
    v51 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D38, &qword_242F38E70);
    LOBYTE(v62[0]) = 0;
    sub_242C7E000(&qword_27ECF8D68, &qword_27ECF8D38, &qword_242F38E70, &protocol conformance descriptor for Overrides<A>);
    sub_242F05D90();
    v50 = v63;

    v111 = 1;
    sub_242C95584(v13, v14, v15);
    v16 = sub_242F05E00();
    v129 = v112;
    v130 = v113;
    v131 = v114;
    v132 = v115;
    v105 = 2;
    sub_242E2D4FC(v16, v17, v18);
    sub_242F05E00();
    v126 = v108;
    v127 = v109;
    v128[0] = *v110;
    *(v128 + 9) = *&v110[9];
    v124 = v106;
    v125 = v107;
    LOBYTE(v63) = 3;
    v19 = sub_242F05DE0();
    LOBYTE(v63) = 4;
    v49 = sub_242F05D70();
    v122 = v20 & 1;
    LOBYTE(v63) = 5;
    v48 = sub_242F05D70();
    v120 = v21 & 1;
    LOBYTE(v63) = 6;
    v47 = sub_242F05DE0();
    LOBYTE(v63) = 7;
    v46 = sub_242F05D30();
    v59 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3438, &qword_242F18120);
    LOBYTE(v62[0]) = 8;
    sub_242D491A0(&qword_27ECF3450, MEMORY[0x277D83BB8], MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_242F05D90();
    v23 = v63;
    LOBYTE(v62[0]) = 9;
    sub_242F05D90();
    v60 = v64;
    v61 = v63;
    v57 = v65;
    v58 = *(&v64 + 1);
    v55 = v66;
    v56 = *(&v65 + 1);
    v24 = *(&v66 + 1);
    sub_242C94844(0, 0, 0, 0, 0, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0448, &qword_242F0A900);
    LOBYTE(v62[0]) = 10;
    sub_242E2D3D0(&qword_27ECF0470, sub_242C8BA70, MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
    sub_242F05E00();
    v52 = v63;
    LOBYTE(v63) = 11;
    sub_242F05DD0();
    v26 = v25;
    LOBYTE(v63) = 12;
    sub_242F05DD0();
    v28 = v27;
    LOBYTE(v62[0]) = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D78, &qword_242F38E80);
    sub_242C7E000(&qword_27ECF8D80, &qword_27ECF8D78, &qword_242F38E80, &protocol conformance descriptor for DecodableDefault<A>);
    sub_242F05D90();
    if (BYTE4(v63))
    {
      v29 = 0.0;
    }

    else
    {
      v29 = *&v63;
    }

    LOBYTE(v63) = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D88, &qword_242F38E88);
    sub_242C7E000(&qword_27ECF8D90, &qword_27ECF8D88, &qword_242F38E88, &protocol conformance descriptor for DecodableDefault<A>);
    sub_242F05D90();
    v44 = LOBYTE(v62[0]);
    LOBYTE(v63) = 15;
    v45 = sub_242F05D60();
    v116 = BYTE4(v45) & 1;
    LOBYTE(v62[0]) = 16;
    sub_242E2D550(v45, v30, v31);
    sub_242F05E00();
    v43 = v63;
    v104 = 17;
    v32 = sub_242F05D30();
    v42 = v33;
    v34 = v32;
    v44 &= 1u;
    (*(v53 + 8))(v8, v5);
    *&v62[0] = v50;
    *(v62 + 8) = v129;
    *(&v62[1] + 8) = v130;
    *(&v62[2] + 8) = v131;
    *(&v62[3] + 1) = v132;
    v62[6] = v126;
    v62[7] = v127;
    v62[8] = v128[0];
    *(&v62[8] + 9) = *(v128 + 9);
    v62[4] = v124;
    v62[5] = v125;
    *(&v62[9] + 9) = *v123;
    HIDWORD(v62[9]) = *&v123[3];
    v41 = v19;
    *&v62[10] = v19;
    *(&v62[10] + 1) = v49;
    LODWORD(v53) = v122;
    LOBYTE(v62[11]) = v122;
    *(&v62[11] + 1) = *v121;
    DWORD1(v62[11]) = *&v121[3];
    *(&v62[11] + 1) = v48;
    HIDWORD(v39) = v120;
    LOBYTE(v62[12]) = v120;
    *(&v62[12] + 1) = *v119;
    DWORD1(v62[12]) = *&v119[3];
    *(&v62[12] + 1) = v47;
    *&v62[13] = v46;
    *(&v62[13] + 1) = v59;
    *&v62[14] = v23;
    v40 = v23;
    *(&v62[14] + 1) = v61;
    *&v62[15] = v60;
    *(&v62[15] + 1) = v58;
    *&v62[16] = v57;
    *(&v62[16] + 1) = v56;
    *&v62[17] = v55;
    *(&v62[17] + 1) = v24;
    *&v62[18] = v52;
    *(&v62[18] + 1) = __PAIR64__(v28, v26);
    *&v62[19] = v29;
    v35 = v43;
    BYTE4(v62[19]) = v44;
    *(&v62[19] + 5) = v117;
    BYTE7(v62[19]) = v118;
    v36 = v45;
    DWORD2(v62[19]) = v45;
    v37 = v116;
    BYTE12(v62[19]) = v116;
    BYTE13(v62[19]) = v43;
    v38 = v42;
    *&v62[20] = v34;
    *(&v62[20] + 1) = v42;
    memcpy(v51, v62, 0x150uLL);
    sub_242D48DCC(v62, &v63);
    __swift_destroy_boxed_opaque_existential_2Tm(v54);
    v64 = v129;
    v65 = v130;
    v66 = v131;
    v63 = v50;
    v67 = v132;
    v70 = v126;
    v71 = v127;
    *v72 = v128[0];
    *&v72[9] = *(v128 + 9);
    v68 = v124;
    v69 = v125;
    *v73 = *v123;
    *&v73[3] = *&v123[3];
    v74 = v41;
    v75 = v49;
    v76 = v53;
    *v77 = *v121;
    *&v77[3] = *&v121[3];
    v78 = v48;
    v79 = BYTE4(v39);
    *v80 = *v119;
    *&v80[3] = *&v119[3];
    v81 = v47;
    v82 = v46;
    v83 = v59;
    v84 = v40;
    v85 = v61;
    v86 = v60;
    v87 = v58;
    v88 = v57;
    v89 = v56;
    v90 = v55;
    v91 = v24;
    v92 = v52;
    v93 = v26;
    v94 = v28;
    v95 = v29;
    v96 = v44;
    v97 = v117;
    v98 = v118;
    v99 = v36;
    v100 = v37;
    v101 = v35;
    v102 = v34;
    v103 = v38;
    sub_242D48E28(&v63);
  }
}

void sub_242E2C330(uint64_t a1)
{
  v4 = *(v1 + 288);
  v5 = sub_242CE6D94(MEMORY[0x277D84F90]);
  v8[2] = a1;
  v6 = sub_242C8A810(v5, sub_242C8C7E4, v8, v4);
  if (v2)
  {
  }

  else
  {
    v7 = v6;

    *(v1 + 288) = v7;
  }
}

uint64_t sub_242E2C404()
{
  sub_242F06390();
  MeasurementLabelConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242E2C448(uint64_t a1)
{
  sub_242F06390();
  MeasurementLabelConfiguration.hash(into:)(v2);
  return sub_242F063E0();
}

double sub_242E2C484@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void sub_242E2C490(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

uint64_t static MeasurementLabelConfiguration.ColorIDs.single(_:redacted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3378, &unk_242F2FFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09510;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  *(inited + 56) = v8;
  sub_242C7CE5C(v4, v5, v8);
  sub_242C7CE5C(v6, v7, v9);
  v11 = sub_242CE7008(inited);
  swift_setDeallocating();
  sub_242C7CE5C(v4, v5, v8);
  sub_242C7CE5C(v6, v7, v9);
  sub_242C7CE5C(v4, v5, v8);
  sub_242C7CE5C(v6, v7, v9);
  sub_242C6D138(inited + 32, &qword_27ECF1F18, &qword_242F131D0);
  *a3 = v11;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_242F09510;
  *(v12 + 32) = 0;
  v13 = v12 + 32;
  *(v12 + 40) = v4;
  *(v12 + 48) = v5;
  *(v12 + 56) = v8;
  v14 = sub_242CE7008(v12);
  swift_setDeallocating();
  sub_242C6D138(v13, &qword_27ECF1F18, &qword_242F131D0);
  *(a3 + 8) = v14;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_242F09510;
  *(v15 + 32) = 0;
  v16 = v15 + 32;
  *(v15 + 40) = v4;
  *(v15 + 48) = v5;
  *(v15 + 56) = v8;
  v17 = sub_242CE7008(v15);
  swift_setDeallocating();
  result = sub_242C6D138(v16, &qword_27ECF1F18, &qword_242F131D0);
  *(a3 + 16) = v17;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  *(a3 + 40) = v9;
  *(a3 + 48) = v6;
  *(a3 + 56) = v7;
  *(a3 + 64) = v9;
  *(a3 + 72) = v6;
  *(a3 + 80) = v7;
  *(a3 + 88) = v9;
  return result;
}

double MeasurementLabelConfiguration.setRightHandDriveAlignmentOverride()@<D0>(unint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = dword_242F38E20[__dst[317]];
  if (qword_27ECEF678 != -1)
  {
    swift_once();
  }

  v4 = word_27ECF6D52 | (HIBYTE(word_27ECF6D52) << 8);
  swift_getKeyPath();
  sub_242E283E0(v4 | v3, a1);

  return result;
}

uint64_t _s14CarPlayAssetUI29MeasurementLabelConfigurationV8ColorIDsV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_242C75A30(*a1, *a2) & 1) == 0 || (sub_242C75A30(v2, v4) & 1) == 0 || (sub_242C75A30(v3, v5) & 1) == 0)
  {
    goto LABEL_15;
  }

  v6 = Theme.ColorID.rawValue.getter();
  v8 = v7;
  if (v6 == Theme.ColorID.rawValue.getter() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_242F06110();

    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v11 = Theme.ColorID.rawValue.getter();
  v13 = v12;
  if (v11 == Theme.ColorID.rawValue.getter() && v13 == v14)
  {

    goto LABEL_12;
  }

  v15 = sub_242F06110();

  if ((v15 & 1) == 0)
  {
LABEL_15:
    v20 = 0;
    return v20 & 1;
  }

LABEL_12:
  v16 = Theme.ColorID.rawValue.getter();
  v18 = v17;
  if (v16 == Theme.ColorID.rawValue.getter() && v18 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_242F06110();
  }

  return v20 & 1;
}

BOOL _s14CarPlayAssetUI29MeasurementLabelConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v131[0] = *(a1 + 8);
  v131[1] = v5;
  v131[2] = *(a1 + 40);
  v132 = *(a1 + 56);
  v6 = *(a1 + 112);
  v135 = *(a1 + 96);
  v136 = v6;
  v137[0] = *(a1 + 128);
  *(v137 + 9) = *(a1 + 137);
  v7 = *(a1 + 80);
  v133 = *(a1 + 64);
  v134 = v7;
  v100 = *(a1 + 160);
  v96 = *(a1 + 168);
  v99 = *(a1 + 176);
  v97 = *(a1 + 192);
  v92 = *(a1 + 184);
  v93 = *(a1 + 200);
  v90 = *(a1 + 216);
  v85 = *(a1 + 208);
  v86 = *(a1 + 224);
  v9 = *(a1 + 232);
  v8 = *(a1 + 240);
  v11 = *(a1 + 248);
  v10 = *(a1 + 256);
  v13 = *(a1 + 264);
  v12 = *(a1 + 272);
  v15 = *(a1 + 280);
  v14 = *(a1 + 288);
  v16 = *(a1 + 296);
  v17 = *(a1 + 300);
  v18 = *(a1 + 304);
  v19 = *(a1 + 308);
  v20 = *(a1 + 312);
  v21 = *(a1 + 316);
  v22 = *(a1 + 317);
  v23 = *(a1 + 320);
  v24 = *(a1 + 328);
  v25 = *a2;
  v26 = *(a2 + 24);
  v138[0] = *(a2 + 8);
  v138[1] = v26;
  v138[2] = *(a2 + 40);
  v139 = *(a2 + 56);
  v27 = *(a2 + 112);
  v142 = *(a2 + 96);
  v143 = v27;
  v144[0] = *(a2 + 128);
  *(v144 + 9) = *(a2 + 137);
  v28 = *(a2 + 80);
  v140 = *(a2 + 64);
  v141 = v28;
  v29 = *(a2 + 160);
  v95 = *(a2 + 168);
  v98 = *(a2 + 176);
  v30 = *(a2 + 296);
  v31 = *(a2 + 300);
  v32 = *(a2 + 304);
  v33 = *(a2 + 312);
  v34 = *(a2 + 184);
  v35 = *(a2 + 192);
  v91 = *(a2 + 200);
  v84 = *(a2 + 208);
  v89 = *(a2 + 216);
  v83 = *(a2 + 224);
  v94 = *(a2 + 232);
  v87 = *(a2 + 240);
  v82 = *(a2 + 248);
  v80 = *(a2 + 256);
  v88 = *(a2 + 264);
  v81 = *(a2 + 272);
  if (v4)
  {
    if (!v25)
    {
      return 0;
    }

    v72 = v14;
    v73 = *(a2 + 280);
    v71 = *(a2 + 288);
    v68 = *(a2 + 316);
    v69 = *(a2 + 308);
    v65 = *(a2 + 317);
    v66 = v22;
    v61 = *(a2 + 320);
    v62 = v23;
    v63 = *(a2 + 328);
    v64 = v24;
    v70 = v19;
    v67 = v21;
    v77 = v9;
    *&v78 = v11;
    v75 = v8;
    v76 = v12;
    *(&v78 + 1) = v10;
    v79 = v13;
    v74 = v15;

    sub_242E28004(v4, v25);
    v37 = v36;

    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v25)
    {
      return 0;
    }

    v72 = v14;
    v73 = *(a2 + 280);
    v71 = *(a2 + 288);
    v68 = *(a2 + 316);
    v69 = *(a2 + 308);
    v65 = *(a2 + 317);
    v66 = v22;
    v61 = *(a2 + 320);
    v62 = v23;
    v63 = *(a2 + 328);
    v64 = v24;
    v70 = v19;
    v67 = v21;
    v77 = v9;
    *&v78 = v11;
    v75 = v8;
    v76 = v12;
    *(&v78 + 1) = v10;
    v79 = v13;
    v74 = v15;
  }

  v38 = *(a1 + 24);
  v122 = *(a1 + 8);
  v123 = v38;
  v124 = *(a1 + 40);
  *&v125 = *(a1 + 56);
  v39 = *(a2 + 24);
  v117 = *(a2 + 8);
  v118 = v39;
  v119 = *(a2 + 40);
  *&v120 = *(a2 + 56);
  sub_242C94884(v131, &v112);
  sub_242C94884(v138, &v112);
  v40 = _s14CarPlayAssetUI10RasterFontV2eeoiySbAC_ACtFZ_0(&v122, &v117);
  v127[0] = v117;
  v127[1] = v118;
  v127[2] = v119;
  v128 = v120;
  sub_242C954DC(v127);
  v129[0] = v122;
  v129[1] = v123;
  v129[2] = v124;
  v130 = v125;
  sub_242C954DC(v129);
  if ((v40 & 1) == 0)
  {
    return 0;
  }

  v114 = v135;
  v115 = v136;
  v116[0] = v137[0];
  *(v116 + 9) = *(v137 + 9);
  v112 = v133;
  v113 = v134;
  v109 = v142;
  v110 = v143;
  v111[0] = v144[0];
  *(v111 + 9) = *(v144 + 9);
  v107 = v140;
  v108 = v141;
  sub_242E2D2C0(&v133, v105);
  sub_242E2D2C0(&v140, v105);
  v41 = _s14CarPlayAssetUI29MeasurementLabelConfigurationV8ColorIDsV2eeoiySbAE_AEtFZ_0(&v112, &v107);
  v119 = v109;
  v120 = v110;
  v121[0] = v111[0];
  *(v121 + 9) = *(v111 + 9);
  v117 = v107;
  v118 = v108;
  sub_242E2D2F8(&v117);
  v124 = v114;
  v125 = v115;
  v126[0] = v116[0];
  *(v126 + 9) = *(v116 + 9);
  v122 = v112;
  v123 = v113;
  sub_242E2D2F8(&v122);
  if ((v41 & 1) == 0 || v100 != v29)
  {
    return 0;
  }

  if (v99)
  {
    if (!v98)
    {
      return 0;
    }
  }

  else
  {
    v42 = v98;
    if (v96 != v95)
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  if (v97)
  {
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    if (v92 == v34)
    {
      v43 = v35;
    }

    else
    {
      v43 = 1;
    }

    if (v43)
    {
      return 0;
    }
  }

  if (v93 != v91)
  {
    return 0;
  }

  if (v90)
  {
    v45 = v87;
    v44 = v88;
    if (!v89 || (v85 != v84 || v90 != v89) && (sub_242F06110() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v45 = v87;
    v44 = v88;
    if (v89)
    {
      return 0;
    }
  }

  if (v86)
  {
    if (!v83)
    {
      return 0;
    }

    v46 = sub_242C7653C(v86, v83);

    if ((v46 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v83)
  {
    return 0;
  }

  if (!v78)
  {
    v47 = v74;
    sub_242C94804(v77, v75, 0, *(&v78 + 1), v79, v76, v74);
    v49 = v82;
    if (!v82)
    {
      sub_242C94804(v94, v45, 0, v80, v44, v81, v73);
      sub_242C94844(v77, v75, 0, *(&v78 + 1), v79, v76, v74);
      goto LABEL_45;
    }

    v51 = v81;
    sub_242C94804(v94, v45, v82, v80, v44, v81, v73);
    v48 = v75;
    v52 = v76;
    v53 = *(&v78 + 1);
    v54 = v79;
    v55 = v77;
    v56 = 0;
    v57 = v80;
LABEL_43:
    sub_242C94844(v55, v48, v56, v53, v54, v52, v47);
    sub_242C94844(v94, v45, v49, v57, v88, v51, v73);
    return 0;
  }

  *&v112 = v77;
  v47 = v74;
  v48 = v75;
  *(&v112 + 1) = v75;
  v113 = v78;
  *&v114 = v79;
  *(&v114 + 1) = v76;
  *&v115 = v74;
  v49 = v82;
  if (!v82)
  {
    v107 = v112;
    v108 = v113;
    v109 = v114;
    *&v110 = v115;
    v55 = v77;
    sub_242C94804(v77, v75, v78, *(&v78 + 1), v79, v76, v74);
    v45 = v87;
    v57 = v80;
    v51 = v81;
    sub_242C94804(v94, v87, 0, v80, v88, v81, v73);
    sub_242C94804(v77, v75, v78, *(&v78 + 1), v79, v76, v74);
    sub_242C954DC(&v107);
    v53 = *(&v78 + 1);
    v56 = v78;
    v54 = v79;
    v52 = v76;
    goto LABEL_43;
  }

  *&v101 = v94;
  *(&v101 + 1) = v87;
  *&v102 = v82;
  *(&v102 + 1) = v80;
  *&v103 = v88;
  *(&v103 + 1) = v81;
  v104 = v73;
  sub_242C94804(v77, v75, v78, *(&v78 + 1), v79, v76, v74);
  sub_242C94804(v94, v87, v82, v80, v88, v81, v73);
  sub_242C94804(v77, v75, v78, *(&v78 + 1), v79, v76, v74);
  v50 = _s14CarPlayAssetUI10RasterFontV2eeoiySbAC_ACtFZ_0(&v112, &v101);
  v105[0] = v101;
  v105[1] = v102;
  v105[2] = v103;
  v106 = v104;
  sub_242C954DC(v105);
  v107 = v112;
  v108 = v113;
  v109 = v114;
  *&v110 = v115;
  sub_242C954DC(&v107);
  sub_242C94844(v77, v75, v78, *(&v78 + 1), v79, v76, v74);
  if ((v50 & 1) == 0)
  {
    return 0;
  }

LABEL_45:
  sub_242C778E4(v72, v71);
  if ((v58 & 1) == 0 || v16 != v30 || v17 != v31 || v18 != v32 || v70 != v69)
  {
    return 0;
  }

  if (v67)
  {
    if (!v68)
    {
      return 0;
    }
  }

  else
  {
    v60 = v68;
    if (v20 != v33)
    {
      v60 = 1;
    }

    if (v60)
    {
      return 0;
    }
  }

  if (v66 != v65)
  {
    return 0;
  }

  if (!v64)
  {
    return !v63;
  }

  return v63 && (v62 == v61 && v64 == v63 || (sub_242F06110() & 1) != 0);
}

unint64_t sub_242E2D26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8D08;
  if (!qword_27ECF8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8D08);
  }

  return result;
}

unint64_t sub_242E2D328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8D30;
  if (!qword_27ECF8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8D30);
  }

  return result;
}

unint64_t sub_242E2D37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8D48;
  if (!qword_27ECF8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8D48);
  }

  return result;
}

uint64_t sub_242E2D3D0(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0448, &qword_242F0A900);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E2D454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8D50;
  if (!qword_27ECF8D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8D50);
  }

  return result;
}

unint64_t sub_242E2D4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8D58;
  if (!qword_27ECF8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8D58);
  }

  return result;
}

unint64_t sub_242E2D4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8D70;
  if (!qword_27ECF8D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8D70);
  }

  return result;
}

unint64_t sub_242E2D550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8D98;
  if (!qword_27ECF8D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8D98);
  }

  return result;
}

unint64_t sub_242E2D5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8DA0;
  if (!qword_27ECF8DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DA0);
  }

  return result;
}

unint64_t sub_242E2D5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8DA8;
  if (!qword_27ECF8DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DA8);
  }

  return result;
}

unint64_t sub_242E2D658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8DB0;
  if (!qword_27ECF8DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DB0);
  }

  return result;
}

unint64_t sub_242E2D6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8DB8;
  if (!qword_27ECF8DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DB8);
  }

  return result;
}

unint64_t sub_242E2D70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8DC0;
  if (!qword_27ECF8DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DC0);
  }

  return result;
}

unint64_t sub_242E2D760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242D48F24(a1, a2, a3);
  *(a1 + 16) = v4;
  result = sub_242D48ED0(v4, v5, v6);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_242E2D798(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
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

uint64_t sub_242E2D7E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_242E2D8AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_242E2D8F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MeasurementLabelConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MeasurementLabelConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242E2DAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8DC8;
  if (!qword_27ECF8DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DC8);
  }

  return result;
}

unint64_t sub_242E2DB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8DD0;
  if (!qword_27ECF8DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DD0);
  }

  return result;
}

unint64_t sub_242E2DB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8DD8;
  if (!qword_27ECF8DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DD8);
  }

  return result;
}

unint64_t sub_242E2DBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8DE0;
  if (!qword_27ECF8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DE0);
  }

  return result;
}

unint64_t sub_242E2DC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8DE8;
  if (!qword_27ECF8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DE8);
  }

  return result;
}

unint64_t sub_242E2DC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8DF0;
  if (!qword_27ECF8DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DF0);
  }

  return result;
}

uint64_t sub_242E2DCEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C6F436E6F6369 && a2 == 0xEC00000073444972;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F4365756C6176 && a2 == 0xED0000734449726FLL || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6C6F4374696E75 && a2 == 0xEC00000073444972 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242F5BED0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F5BEF0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242F5BF10 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_242E2DF00(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656469727265766FLL && a2 == 0xE900000000000073 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953394534 && a2 == 0xE400000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x734449726F6C6F63 && a2 == 0xE800000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F69736963657270 && a2 == 0xE90000000000006ELL || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5BF30 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5BF50 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72656469766964 && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5BF70 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6562614C74696E75 && a2 == 0xEA0000000000736CLL || (sub_242F06110() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746E6F4674696E75 && a2 == 0xE800000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6C75666574617473 && a2 == 0xEE00736567616D49 || (sub_242F06110() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6461506567616D69 && a2 == 0xEC000000676E6964 || (sub_242F06110() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6170536C6562616CLL && a2 == 0xEC000000676E6963 || (sub_242F06110() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x664F5965756C6176 && a2 == 0xEC00000074657366 || (sub_242F06110() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x795474657366666FLL && a2 == 0xEA00000000006570 || (sub_242F06110() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x61725465756C6176 && a2 == 0xED0000676E696B63 || (sub_242F06110() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074 || (sub_242F06110() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xEE00676E69727453)
  {

    return 17;
  }

  else
  {
    v5 = sub_242F06110();

    if (v5)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

unint64_t sub_242E2E4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8DF8;
  if (!qword_27ECF8DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DF8);
  }

  return result;
}

unint64_t sub_242E2E520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8E00;
  if (!qword_27ECF8E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8E00);
  }

  return result;
}

unint64_t sub_242E2E574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8E20[0];
  if (!qword_27ECF8E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ECF8E20);
  }

  return result;
}

uint64_t sub_242E2E6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v13 - v8;
  (*(v10 + 16))(&v13 - v8, v7);
  v11 = type metadata accessor for CodableWrapper(0, v4, v5, v6);
  return CodableWrapper.wrappedValue.setter(v9, v11);
}

void (*CodableWrapper.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(a2 + 24);
  v6[1] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v6[2] = v9;
  v6[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  (*(v10 + 16))();
  return sub_242E2E904;
}

void sub_242E2E904(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, v7);
    (*(v5 + 40))(v8, v3, v7);
    (*(v6 + 8))(v4, v7);
  }

  else
  {
    (*(v2[2] + 40))(*v2, v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CodableWrapper.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_242C6CF00(v11, v14);
  sub_242F054A0();
  if (v4)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  (*(a4 + 32))(a2, a4);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return (*(v8 + 8))(v10, a2);
}

uint64_t CodableWrapper.encode(to:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v5, v2, v10);
  (*(*(a2 + 32) + 40))(v5, v7, *(a2 + 32));
  sub_242F04D70();
  return (*(v8 + 8))(v12, v7);
}

uint64_t CodableWrapper<>.hashValue.getter(uint64_t a1)
{
  sub_242F06390();
  sub_242F04D90();
  return sub_242F063E0();
}

uint64_t sub_242E2EDA4(uint64_t a1, uint64_t a2)
{
  sub_242F06390();
  CodableWrapper<>.hash(into:)(v4, a2);
  return sub_242F063E0();
}

uint64_t sub_242E2EE40(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_242E2EEB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_242E2EFF0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_242E2F290@<X0>(void *a1@<X8>)
{
  v3 = sub_242F04000();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2CF8, &qword_242F39A30);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PopoverView(0);
  sub_242CA321C(v1 + *(v10 + 20), v9, &qword_27ECF2CF8, &qword_242F39A30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_242CF6B3C(v9, a1, &qword_27ECF3030, &qword_242F17A28);
  }

  sub_242F05710();
  v12 = sub_242F04360();
  sub_242F03930();

  sub_242F03FF0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_242E2F478@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170, &qword_242F13A98);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for PopoverView(0);
  sub_242E307E0(v1, a1 + *(v6 + 24), type metadata accessor for PopoverModel);
  *(a1 + *(v6 + 20)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2CF8, &qword_242F39A30);
  swift_storeEnumTagMultiPayload();
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_242CA321C(v1, v5, &qword_27ECF2170, &qword_242F13A98);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8F50, &qword_242F39C58);
  return sub_242CF6B3C(v5, a1 + *(v7 + 52), &qword_27ECF2168, &unk_242F17EA0);
}

uint64_t PopoverView.body.getter@<X0>(void *a1@<X8>)
{
  v4 = type metadata accessor for PopoverView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_242E307E0(v2, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PopoverView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_242E30778(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a1 = sub_242E307DC;
  a1[1] = v8;
  return result;
}

uint64_t sub_242E2F6CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PopoverView(0);
  v6 = v5 - 8;
  v44 = *(v5 - 8);
  v43 = *(v44 + 64);
  MEMORY[0x28223BE20](v5);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for Slot(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F03CF0();
  v16 = v15;
  v18 = v17;
  v19 = type metadata accessor for Instrument(0);
  v20 = *(*(v19 - 8) + 56);
  v20(v10, 1, 1, v19);
  v21 = v12[11];
  v20(&v14[v21], 1, 1, v19);
  v22 = &v14[v12[12]];
  v23 = &v14[v12[13]];
  sub_242F03710();
  *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140, &qword_242F13A90) + 52)] = 7;
  *&v14[v12[14]] = 0;
  *(v14 + 15) = 12624;
  *(v14 + 16) = 0xE200000000000000;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  *(v14 + 5) = 1;
  *(v14 + 6) = 0;
  *(v14 + 7) = 0;
  *(v14 + 8) = v16;
  *(v14 + 9) = v18;
  *(v14 + 5) = 0u;
  *(v14 + 6) = 0u;
  *(v14 + 14) = 0;
  sub_242CF42A0(v10, &v14[v21]);
  *v22 = 0;
  *(v22 + 1) = 0;
  sub_242E2FAD4(v14, a1 + *(v6 + 32), a2);
  v24 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8F18, &qword_242F39B20) + 36);
  v25 = type metadata accessor for PlatterView(0);
  _s7SwiftUI10ShapeStyleP012CarPlayAssetB0AA8MaterialVRszrlE07platterH0AFvgZ_0();
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  *(v24 + 24) = swift_getKeyPath();
  *(v24 + 32) = 0;
  *(v24 + 40) = 0x4044000000000000;
  v26 = (v24 + *(v25 + 32));
  *v26 = 0;
  v26[1] = 0;
  v26[2] = 0;
  v27 = sub_242F04A70();
  v29 = v28;
  v30 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6960, &qword_242F30638) + 36));
  *v30 = v27;
  v30[1] = v29;
  v31 = sub_242F04A40();
  v33 = v32;
  v34 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8F20, &qword_242F39B80) + 36);
  PopoverView.overlayButton()(v34);
  sub_242E30F1C(v14, type metadata accessor for Slot);
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8F28, &qword_242F39B88) + 36));
  *v35 = v31;
  v35[1] = v33;
  v36 = v42;
  sub_242E307E0(a1, v42, type metadata accessor for PopoverView);
  v37 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v38 = swift_allocObject();
  sub_242E30778(v36, v38 + v37);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8F30, &qword_242F39B90);
  v40 = (a2 + *(result + 36));
  *v40 = sub_242E30F7C;
  v40[1] = v38;
  v40[2] = 0;
  v40[3] = 0;
  return result;
}

uint64_t sub_242E2FAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v36 = a2;
  v39 = a1;
  v42 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140, &qword_242F13A90);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8F38, &qword_242F39B98);
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v37 = (&v33 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3030, &qword_242F17A28);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v33 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028, &qword_242F17A20);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  v16 = sub_242F04000();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v4;
  v21 = *(v4 + 8);
  if (*(v4 + 16) == 1)
  {
    sub_242CA0064(*v4, *(v4 + 8));
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_6:
    v23 = 1;
    return (*(v40 + 56))(v42, v23, 1, v41);
  }

  v34 = v18;

  sub_242F05710();
  v24 = sub_242F04360();
  v35 = v4;
  v25 = v24;
  sub_242F03930();

  sub_242F03FF0();
  swift_getAtKeyPath();
  v26 = sub_242E188A8(v22, v21, 0);
  (*(v17 + 8))(v20, v34, v26);
  v22 = v43;
  v21 = v44;
  if (!v43)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_242E2F290(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_242D0DC4C(v22, v21);
    sub_242C6D138(v11, &qword_27ECF3030, &qword_242F17A28);
    v23 = 1;
  }

  else
  {
    sub_242CF6B3C(v11, v15, &qword_27ECF3028, &qword_242F17A20);

    v27 = v39;
    v28 = v22(v39, v36, v15);
    sub_242D0DC4C(v22, v21);
    sub_242D0DC4C(v22, v21);
    sub_242C6D138(v15, &qword_27ECF3028, &qword_242F17A20);
    v29 = type metadata accessor for Slot(0);
    v30 = v38;
    sub_242CA321C(v27 + *(v29 + 44), v38, &qword_27ECF2140, &qword_242F13A90);
    v31 = v37;
    sub_242CF6B3C(v30, v37 + *(v41 + 52), &qword_27ECF2138, &qword_242F2DFB0);
    *v31 = v28;
    sub_242CF6B3C(v31, v42, &qword_27ECF8F38, &qword_242F39B98);
    v23 = 0;
  }

  return (*(v40 + 56))(v42, v23, 1, v41);
}

uint64_t PopoverView.overlayButton()@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7CB0, &qword_242F35520);
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8EA8, &qword_242F39A38);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for PopoverView(0);
  v9 = v8 - 8;
  v21 = *(v8 - 8);
  v10 = *(v21 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = type metadata accessor for IconNotificationButton(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v9 + 32);
  v23 = v1;
  if (*(v1 + v14 + *(type metadata accessor for PopoverModel(0) + 20)) == 1)
  {
    if (qword_27ECEF6C0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for IconNotificationButtonConfiguration(0);
    v16 = __swift_project_value_buffer(v15, qword_27ECF7C98);
    sub_242E307E0(v16, v13 + *(v11 + 24), type metadata accessor for IconNotificationButtonConfiguration);
    sub_242E307E0(v23, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PopoverView);
    v17 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v18 = swift_allocObject();
    sub_242E30778(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
    *v13 = sub_242F047F0();
    v13[1] = sub_242E30B24;
    v13[2] = v18;
    sub_242E307E0(v13, v7, type metadata accessor for IconNotificationButton);
    swift_storeEnumTagMultiPayload();
    sub_242E30FFC(&qword_27ECF7FE8, type metadata accessor for IconNotificationButton, &protocol conformance descriptor for IconNotificationButton);
    sub_242C7E000(&qword_27ECF7CC8, &qword_27ECF7CB0, &qword_242F35520, MEMORY[0x277CDF028]);
    sub_242F041C0();
    return sub_242E30F1C(v13, type metadata accessor for IconNotificationButton);
  }

  else
  {
    sub_242F048E0();
    v20 = v22;
    (*(v22 + 16))(v7, v4, v2);
    swift_storeEnumTagMultiPayload();
    sub_242E30FFC(&qword_27ECF7FE8, type metadata accessor for IconNotificationButton, &protocol conformance descriptor for IconNotificationButton);
    sub_242C7E000(&qword_27ECF7CC8, &qword_27ECF7CB0, &qword_242F35520, MEMORY[0x277CDF028]);
    sub_242F041C0();
    return (*(v20 + 8))(v4, v2);
  }
}

uint64_t sub_242E30450@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_242E307E0(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PopoverView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_242E30778(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_242E31114;
  a2[1] = v7;
  return result;
}

uint64_t _s14CarPlayAssetUI12PopoverModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170, &qword_242F13A98);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2168, &unk_242F17EA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  sub_242CA321C(a1, v6, &qword_27ECF2170, &qword_242F13A98);
  sub_242CF6B3C(v6, v12, &qword_27ECF2168, &unk_242F17EA0);
  sub_242CA321C(a2, v6, &qword_27ECF2170, &qword_242F13A98);
  sub_242CF6B3C(v6, v9, &qword_27ECF2168, &unk_242F17EA0);
  sub_242F03720();
  sub_242E30FFC(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v13 = sub_242F04EE0();
  sub_242C6D138(v9, &qword_27ECF2168, &unk_242F17EA0);
  sub_242C6D138(v12, &qword_27ECF2168, &unk_242F17EA0);
  if (v13)
  {
    v14 = type metadata accessor for PopoverModel(0);
    v15 = *(a1 + *(v14 + 20)) ^ *(a2 + *(v14 + 20)) ^ 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_242E30778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_242E307E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for PopoverView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_242E188A8(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2CF8, &qword_242F39A30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028, &qword_242F17A20);
    if (!(*(*(v7 - 8) + 48))(v5 + v6, 1, v7))
    {
      v8 = sub_242F03720();
      (*(*(v8 - 8) + 8))(v5 + v6, v8);
    }
  }

  else
  {
  }

  v9 = v5 + *(v1 + 24);
  v10 = sub_242F03720();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = v9 + *(type metadata accessor for Instrument(0) + 20);
  v27 = *(v11 + 464);
  v28 = *(v11 + 480);
  v25 = *(v11 + 432);
  v26 = *(v11 + 448);
  v23 = *(v11 + 400);
  v24 = *(v11 + 416);
  v21 = *(v11 + 368);
  v22 = *(v11 + 384);
  v19 = *(v11 + 336);
  v20 = *(v11 + 352);
  v17 = *(v11 + 304);
  v18 = *(v11 + 320);
  v15 = *(v11 + 272);
  v16 = *(v11 + 288);
  v13 = *(v11 + 240);
  v14 = *(v11 + 256);
  sub_242D3B6A0(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), *(v11 + 48), *(v11 + 56), *(v11 + 64), *(v11 + 72), *(v11 + 80), *(v11 + 88), *(v11 + 96), *(v11 + 104), *(v11 + 112), *(v11 + 120), *(v11 + 128), *(v11 + 136), *(v11 + 144), *(v11 + 152), *(v11 + 160), *(v11 + 168), *(v11 + 176), *(v11 + 184), *(v11 + 192), *(v11 + 200), *(v11 + 208), *(v11 + 216), *(v11 + 224), *(v11 + 232), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, SBYTE8(v28), *(v11 + 496));

  type metadata accessor for PopoverModel(0);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_242E30B24()
{
  v1 = type metadata accessor for PopoverView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + *(v1 + 24);
  v4 = type metadata accessor for PopoverModel(0);
  return (*(v3 + *(v4 + 28) + v2))();
}

uint64_t sub_242E30BE4(uint64_t a1)
{
  result = type metadata accessor for Instrument(319);
  if (v2 <= 0x3F)
  {
    result = sub_242E30C70();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_242E30C70()
{
  result = qword_27ECF8EC0;
  if (!qword_27ECF8EC0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27ECF8EC0);
  }

  return result;
}

void sub_242E30CE8(uint64_t a1)
{
  sub_242DB2054(319, &qword_27ECF8EE0, &qword_27ECF8EE8, &unk_242F39B00);
  if (v1 <= 0x3F)
  {
    sub_242DB2054(319, &qword_27ECF8EF0, &qword_27ECF3030, &qword_242F17A28);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PopoverModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_242E30DB4()
{
  result = qword_27ECF8F08;
  if (!qword_27ECF8F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF8F10, &qword_242F39B18);
    sub_242E30FFC(&qword_27ECF7FE8, type metadata accessor for IconNotificationButton, &protocol conformance descriptor for IconNotificationButton);
    sub_242C7E000(&qword_27ECF7CC8, &qword_27ECF7CB0, &qword_242F35520, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8F08);
  }

  return result;
}

uint64_t sub_242E30E9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PopoverView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_242E2F6CC(v4, a1);
}

uint64_t sub_242E30F1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_242E30F7C()
{
  v1 = type metadata accessor for PopoverView(0);
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for PopoverModel(0);
  return (*(v2 + *(v3 + 24)))(v2);
}

uint64_t sub_242E30FFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242E3108C(uint64_t a1)
{
  result = type metadata accessor for PopoverModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Color.init(r:g:b:a:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = sub_242F04700();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  return sub_242F047A0();
}

uint64_t Color.init(hex:alpha:)(int a1, double a2)
{
  v2 = sub_242F04700();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 104))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v3);
  return sub_242F047A0();
}

id WidgetContainerViewController.__allocating_init(widgetViewController:iconImageInfo:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  v11[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_showsSquareCorners] = 0;
  *&v11[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_widgetViewController] = a1;
  v12 = &v11[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_iconImageInfo];
  *v12 = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  *&v11[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_presentationMode] = 2;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
}

id WidgetContainerViewController.init(widgetViewController:iconImageInfo:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_showsSquareCorners] = 0;
  *&v5[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_widgetViewController] = a1;
  v6 = &v5[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_iconImageInfo];
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  *&v5[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_presentationMode] = 2;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for WidgetContainerViewController();
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

id WidgetContainerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void WidgetContainerViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_showsSquareCorners) = 0;
  sub_242F05C60();
  __break(1u);
}

void sub_242E31588()
{
  v23.receiver = v0;
  v23.super_class = type metadata accessor for WidgetContainerViewController();
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [objc_opt_self() blackColor];
  [v2 setBackgroundColor_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 layer];

  v7 = &v0[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_iconImageInfo];
  swift_beginAccess();
  [v6 setCornerRadius_];

  v8 = *&v0[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_widgetViewController];
  [v0 bs:v8 addChildViewController:?];
  v9 = [v8 view];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v0 view];
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  [v11 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v10 setFrame_];
  v21 = [v8 view];
  if (v21)
  {
    v22 = v21;
    [v21 setAutoresizingMask_];

    return;
  }

LABEL_11:
  __break(1u);
}

double sub_242E31820()
{
  v1 = v0 + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_iconImageInfo;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_242E318D8(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_iconImageInfo);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

id sub_242E319A4()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

double sub_242E31B14()
{
  v1 = v0 + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_iconImageInfo;
  swift_beginAccess();
  return *(v1 + 24);
}

uint64_t sub_242E31BA4()
{
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_showsSquareCorners;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_242E31C3C(char a1)
{
  v3 = OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_showsSquareCorners;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_242E31D34()
{
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_presentationMode;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_242E31DFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_presentationMode;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = 3;
  if (a1 != 1)
  {
    v4 = 1;
  }

  if (a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  return [*(v1 + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_widgetViewController) setPresentationMode_];
}

id sub_242E31E7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_presentationMode;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = 3;
  if (v2 != 1)
  {
    v5 = 1;
  }

  if (v2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 2;
  }

  return [*(v3 + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_widgetViewController) setPresentationMode_];
}

uint64_t (*sub_242E31F00(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_presentationMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_242E31F88;
}

void sub_242E31F88(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + v3[4]);
    v6 = 3;
    if (v5 != 1)
    {
      v6 = 1;
    }

    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 2;
    }

    [*(v4 + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_widgetViewController) setPresentationMode_];
  }

  free(v3);
}

id WidgetContainerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_242F04F00();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WidgetContainerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetContainerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

int *WidgetGallery.init(extensionProvider:excluding:denyListExtensions:addWidget:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9050, &qword_242F39CE0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for WidgetGallery(0);
  *(a6 + result[5]) = a1;
  *(a6 + result[6]) = a2;
  *(a6 + result[7]) = a3;
  v13 = (a6 + result[8]);
  *v13 = a4;
  v13[1] = a5;
  return result;
}

char *WidgetGallery.makeUIViewController(context:)(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for WidgetGallery(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v11 = *(v1 + v10[7]);
  v12 = *(v1 + v10[8]);
  v13 = *(v1 + v10[9]);
  sub_242E32C1C(v2, &v19 - v8);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_242E32C80(v9, v15 + v14);
  sub_242E32C1C(v2, v6);
  v16 = swift_allocObject();
  sub_242E32C80(v6, v16 + v14);
  objc_allocWithZone(type metadata accessor for WidgetGalleryViewController());
  v17 = v11;

  return WidgetGalleryViewController.init(extensionProvider:excluding:denyListExtensions:_:addWidget:)(v17, v12, v13, sub_242E32CE4, v15, sub_242E32CE8, v16);
}

uint64_t sub_242E32620(uint64_t a1)
{
  v2 = sub_242F04000();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9050, &qword_242F39CE0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = sub_242F03CE0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242E3322C(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_242F05710();
    v13 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_242F03CD0();
  return (*(v10 + 8))(v12, v9);
}

char *sub_242E3288C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v11 = *(v2 + v10[7]);
  v12 = *(v2 + v10[8]);
  v13 = *(v2 + v10[9]);
  sub_242E32C1C(v3, &v19 - v8);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_242E32C80(v9, v15 + v14);
  sub_242E32C1C(v3, v6);
  v16 = swift_allocObject();
  sub_242E32C80(v6, v16 + v14);
  objc_allocWithZone(type metadata accessor for WidgetGalleryViewController());
  v17 = v11;

  return WidgetGalleryViewController.init(extensionProvider:excluding:denyListExtensions:_:addWidget:)(v17, v12, v13, sub_242E332A0, v15, sub_242E3329C, v16);
}

uint64_t sub_242E32A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242E32F74(&qword_27ECF9098, &protocol conformance descriptor for WidgetGallery);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_242E32B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242E32F74(&qword_27ECF9098, &protocol conformance descriptor for WidgetGallery);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_242E32B8C(uint64_t a1)
{
  sub_242E32F74(&qword_27ECF9098, &protocol conformance descriptor for WidgetGallery);
  sub_242F04330();
  __break(1u);
}

uint64_t type metadata accessor for WidgetGallery(uint64_t a1)
{
  result = qword_27ECF9068;
  if (!qword_27ECF9068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242E32C1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetGallery(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242E32C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetGallery(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_242E32D48(uint64_t a1)
{
  sub_242E32E74(319, &qword_27ECF9078, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WidgetExtensionProvider();
    if (v2 <= 0x3F)
    {
      sub_242E32E74(319, &qword_27ECF9080, sub_242E32ED8, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_242E32F24();
        if (v4 <= 0x3F)
        {
          sub_242E30C70();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_242E32E74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_242E32ED8()
{
  result = qword_27ECF9088;
  if (!qword_27ECF9088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECF9088);
  }

  return result;
}

void sub_242E32F24()
{
  if (!qword_27ECF9090)
  {
    v0 = sub_242F053E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF9090);
    }
  }
}

uint64_t sub_242E32F74(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WidgetGallery(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242E32FB8()
{
  v1 = *(type metadata accessor for WidgetGallery(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_242E32620(v2);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for WidgetGallery(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9050, &qword_242F39CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_242F03CE0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_242E3322C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9050, &qword_242F39CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_242E332A4(void *a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_galleryLayoutSize] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_addWidget];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_titledButtonsAlpha] = 0x3FF0000000000000;
  *&v3[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_extensionProvider] = a1;
  v8 = type metadata accessor for WidgetExtensionProviderObserver(0);
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver__id] = 0;
  v10 = &v9[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_onChange];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = a1;
  sub_242F037A0();
  *&v9[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_provider] = v11;
  v29.receiver = v9;
  v29.super_class = v8;
  *&v3[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_extensionProviderObserver] = objc_msgSendSuper2(&v29, sel_init);
  v12 = [objc_allocWithZone(MEMORY[0x277D66108]) initWithWidgetExtensionProvider_];
  *&v3[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_configurationManager] = v12;
  *&v3[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_listLayoutProvider] = [objc_allocWithZone(MEMORY[0x277D66160]) initWithScreenType_];
  v13 = &v3[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_dismiss];
  *v13 = a2;
  *(v13 + 1) = a3;
  v14 = objc_allocWithZone(MEMORY[0x277D66288]);

  v15 = [v14 init];
  type metadata accessor for WidgetGalleryManager.IconViewProvider();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v16 + 24) = v15;
  *&v3[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager__iconViewProvider] = v16;
  v28.receiver = v3;
  v28.super_class = type metadata accessor for WidgetGalleryManager();
  v17 = v15;
  v18 = objc_msgSendSuper2(&v28, sel_init);
  [v17 setDelegate_];
  swift_unknownObjectWeakAssign();
  v19 = *&v18[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_extensionProviderObserver];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = &v19[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_onChange];
  v22 = *&v19[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_onChange];
  v23 = *&v19[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_onChange + 8];
  *v21 = sub_242E34940;
  v21[1] = v20;
  v24 = v19;
  swift_retain_n();
  sub_242C655DC(v22, v23);
  [*&v24[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_provider] registerObserver_];

  v25 = OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_configurationManager;
  [*&v18[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_configurationManager] setAllowsFakeWidgets_];
  v26 = *&v18[v25];
  [v26 setConfigurationManagerDelegate_];

  [*&v18[v25] setAddWidgetSheetLocation_];
  [*&v18[v25] setMinimumRequiredSDKVersion_];

  return v18;
}

void sub_242E335E8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [*&v2[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_configurationManager] updatePresentedWidgetEditingViewController_];
    }
  }
}

uint64_t sub_242E33794()
{
  sub_242CC5024(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_242E33804(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WidgetGalleryManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_242E33998(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410, &unk_242F39E40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v68 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960, &qword_242F0C2F8);
  result = [a1 icon];
  if (!result)
  {
    return result;
  }

  result = [a1 icon];
  if (!result)
  {
    return result;
  }

  v8 = result;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = [v9 activeDataSource];
  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = v10;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12 || (v13 = v12, (v14 = [v12 extensionBundleIdentifier]) == 0))
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v15 = v14;
  v16 = sub_242F04F30();
  v18 = v17;
  v19 = [v13 containerBundleIdentifier];
  if (!v19)
  {

    swift_unknownObjectRelease();

    return 0;
  }

  v71 = v16;
  v72 = v8;
  v74 = v18;
  v20 = v19;
  v70 = sub_242F04F30();
  v73 = v21;
  v22 = *(v1 + OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_extensionProvider);
  v23 = [v13 kind];
  v75 = v11;
  if (!v23)
  {
    sub_242F04F30();
    v23 = sub_242F04F00();
  }

  v69 = v22;
  v24 = [v22 sbh:v23 descriptorWithKind:v15 extensionBundleIdentifier:v20 containerBundleIdentifier:?];

  v25 = v24;
  if (!v24)
  {

    swift_unknownObjectRelease();

    return 0;
  }

  v26 = v1;
  sub_242F057A0();
  sub_242F03810();
  sub_242F03810();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420, &unk_242F39E50);
  (*(*(v27 - 8) + 56))(v5, 0, 1, v27);
  v28 = sub_242F05790();
  v29 = [v13 kind];
  v8 = v72;
  if (!v29)
  {
    sub_242F04F30();
    v29 = sub_242F04F00();
  }

  v30 = [v25 defaultIntentReference];
  v31 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v32 = v28;
  v33 = [v31 initWithExtensionIdentity:v32 kind:v29 family:1 intentReference:v30 activityIdentifier:0];

  v34 = [objc_allocWithZone(MEMORY[0x277D66160]) init];
  v35 = [v34 layoutForIconLocation_];
  if (!v35)
  {

LABEL_25:
    swift_unknownObjectRelease();
LABEL_26:

    return 0;
  }

  v36 = v35;
  v37 = v26;
  if (([v35 respondsToSelector_] & 1) == 0)
  {

    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  [v36 iconImageInfoForGridSizeClass_];
  v39 = v38;
  v41 = v40;
  swift_unknownObjectRelease();
  v42 = v33;
  v43 = [objc_allocWithZone(MEMORY[0x277CFA430]) initWithRenderingMode:0 backgroundViewPolicy:1];
  [a1 iconImageInfo];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = fabs(v41);
  v53 = fabs(v39);
  if (v53 < v52)
  {
    v52 = v53;
  }

  v54 = _sSo16CHSWidgetMetricsC14CarPlayAssetUIE03cardB04withAB12CoreGraphics7CGFloatV_tFZ_0(v45 / v52);
  v55 = objc_allocWithZone(MEMORY[0x277D66358]);
  v73 = v54;
  v74 = v42;
  v56 = v25;
  v57 = [v55 initWithWidget:v42 metrics:v54 widgetConfigurationIdentifier:0];
  [v57 setContentType_];
  [v57 setCanAppearInSecureEnvironment_];
  [v57 setDrawSystemBackgroundMaterialIfNecessary_];
  [v57 setVisibility_];
  [v57 setShouldShareTouchesWithHost_];
  [v57 sbh:v69 setWidgetExtensionProvider:?];
  [v57 setDelegate_];
  [v57 setColorScheme_];
  [v57 setRenderScheme_];
  v58 = [objc_allocWithZone(MEMORY[0x277D66330]) initWithRenderScheme:v43 colorScheme:2];
  [v57 sbh:v58 setCustomDisplayConfiguration:?];

  [v57 setSupportedColorSchemes_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1988, &qword_242F113C8);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_242F112E0;
  *(v59 + 32) = v43;
  sub_242C8760C(0, &qword_27ECF9430, 0x277CFA430);
  v60 = v43;
  v61 = sub_242F052E0();

  [v57 setSupportedRenderSchemes_];

  [a1 setIconContentScalingEnabled_];
  if ([v56 isBackgroundRemovable])
  {
    [a1 setIconContentScale_];
  }

  v62 = type metadata accessor for WidgetContainerViewController();
  v63 = objc_allocWithZone(v62);
  v63[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_showsSquareCorners] = 0;
  *&v63[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_widgetViewController] = v57;
  v64 = &v63[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_iconImageInfo];
  *v64 = v45;
  *(v64 + 1) = v47;
  *(v64 + 2) = v49;
  *(v64 + 3) = v51;
  *&v63[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_presentationMode] = 2;
  v76.receiver = v63;
  v76.super_class = v62;
  v65 = objc_msgSendSuper2(&v76, sel_initWithNibName_bundle_, 0, 0);
  v66 = [v65 traitOverrides];
  v67 = [objc_opt_self() defaultStyleConfiguration];
  sub_242C8760C(0, &qword_27ECF9438, 0x277D66318);
  [v66 setObject:v67 forTrait:swift_getObjCClassFromMetadata()];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v65;
}

void sub_242E345C0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (v2)
    {
      v3 = [v2 window];

      if (v3)
      {
        if (!swift_dynamicCastObjCProtocolConditional())
        {
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_242E3466C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_dismiss);

  v4(v5);

  v6 = [a1 icon];
  if (!v6)
  {
    return;
  }

  v34 = v6;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7 || (v8 = [v7 activeWidget]) == 0)
  {
LABEL_17:
    v31 = v34;
    goto LABEL_18;
  }

  v33 = v8;
  v9 = [v8 displayName];
  if (v9)
  {
    v10 = v9;
    v11 = sub_242F04F30();
    v13 = v12;

    v14 = [v33 extensionBundleIdentifier];
    if (!v14)
    {

      goto LABEL_13;
    }

    v15 = v14;
    v16 = sub_242F04F30();
    v18 = v17;

    v19 = [v33 containerBundleIdentifier];
    if (!v19)
    {

      goto LABEL_13;
    }

    v20 = v19;
    v21 = sub_242F04F30();
    v23 = v22;

    v24 = v2 + OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_addWidget;
    v25 = *(v2 + OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_addWidget);
    if (v25)
    {
      v32 = *(v24 + 8);

      v26 = [v33 kind];
      v27 = sub_242F04F30();
      v28 = v21;
      v30 = v29;

      v25(v11, v13, v27, v30, v16, v18, v28, v23);
      sub_242C655DC(v25, v32);

LABEL_13:

      return;
    }

    goto LABEL_17;
  }

  v31 = v33;
LABEL_18:
}

char *WidgetGalleryViewController.init(extensionProvider:excluding:denyListExtensions:_:addWidget:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v72[5] = *MEMORY[0x277D85DE8];
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v16 = objc_allocWithZone(type metadata accessor for WidgetGalleryManager());
  v17 = a1;

  v69 = v17;
  v18 = sub_242E332A4(v17, sub_242CD5510, v15);
  v19 = OBJC_IVAR____TtC14CarPlayAssetUI27WidgetGalleryViewController_galleryManager;
  *&v8[OBJC_IVAR____TtC14CarPlayAssetUI27WidgetGalleryViewController_galleryManager] = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a7;
  v21 = &v18[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_addWidget];
  v22 = *&v18[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_addWidget];
  v23 = *&v18[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_addWidget + 8];
  *v21 = sub_242E3510C;
  v21[1] = v20;
  v24 = v18;

  sub_242D0DC4C(v22, v23);

  v25 = [objc_opt_self() mainScreen];
  [v25 scale];

  SBHAddWidgetSheetListViewIconMetricsForScale();
  v26 = objc_allocWithZone(MEMORY[0x277D661D0]);
  v27 = sub_242F04F00();
  v28 = [v26 initWithName:v27 iconImageInfo:{*&v72[1], *&v72[2], *&v72[3], *&v72[4]}];

  v29 = *&v8[v19];
  v67 = v28;
  v30 = [objc_allocWithZone(MEMORY[0x277D66110]) initWithListLayoutProvider:*(v29 + OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_listLayoutProvider) iconViewProvider:*(v29 + OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager__iconViewProvider) allowedWidgets:2 appCellIconImageCache:1 addWidgetSheetStyle:{v28, 0}];
  v31 = *(*&v8[v19] + OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_configurationManager);
  v32 = v30;
  [v32 setAddWidgetSheetLocation_];
  [v32 setAllowsFakeWidgets_];
  [v32 setGalleryLayoutSize_];
  [v32 setDelegate_];
  [v32 setPresenter_];
  [v32 setAddWidgetSheetWidgetBackgroundType_];

  *&v8[OBJC_IVAR____TtC14CarPlayAssetUI27WidgetGalleryViewController_addWidgetSheetViewController] = v32;
  swift_unknownObjectWeakAssign();
  v71.receiver = v8;
  v71.super_class = type metadata accessor for WidgetGalleryViewController();
  v33 = v32;
  v34 = objc_msgSendSuper2(&v71, sel_initWithNibName_bundle_, 0, 0);
  [v34 setPreferredContentSize_];
  v35 = [objc_allocWithZone(MEMORY[0x277D661B8]) initWithCHSWidgetFamilyMask_];
  v36 = OBJC_IVAR____TtC14CarPlayAssetUI27WidgetGalleryViewController_galleryManager;
  v37 = *&v34[OBJC_IVAR____TtC14CarPlayAssetUI27WidgetGalleryViewController_galleryManager];
  v38 = *(v37 + OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_configurationManager);
  v72[0] = v35;
  v39 = [v38 applicationWidgetCollectionsForEditingViewController:v37 withAllowedSizeClasses:v72 allowingNonStackableItems:1];
  v40 = v72[0];

  if (!v39)
  {
    sub_242C8760C(0, &qword_27ECF9570, 0x277D66130);
    sub_242F05310();
    v39 = sub_242F052E0();
  }

  [v33 setApplicationWidgetCollections_];

  v41 = [objc_allocWithZone(MEMORY[0x277CEB990]) initWithClientSessionIdentifier:0 widgetClient:2];
  v42 = [objc_allocWithZone(MEMORY[0x277CEB9A0]) initWithClientIdentity_];

  [v42 setGalleryVariant_];
  [v42 setWidgetFamilyMask_];
  [v42 setWidgetGridSize_];
  sub_242C8760C(0, &qword_27ECF9578, 0x277CCABB0);
  v43 = sub_242F057F0();
  [v42 setLimit_];

  if (a2 >> 62)
  {
    v44 = sub_242F059B0();
    if (v44)
    {
      goto LABEL_5;
    }

LABEL_15:

    v46 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v44 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v44)
  {
    goto LABEL_15;
  }

LABEL_5:
  v72[0] = MEMORY[0x277D84F90];
  sub_242E3BC70(0, v44 & ~(v44 >> 63), 0);
  if (v44 < 0)
  {
    __break(1u);
  }

  v64 = v40;
  v65 = v33;
  v66 = v34;
  v45 = 0;
  v46 = v72[0];
  v47 = a2;
  v70 = a2 & 0xC000000000000001;
  v48 = v36;
  v49 = v47;
  v50 = v44;
  do
  {
    if (v70)
    {
      v51 = MEMORY[0x245D270D0](v45);
    }

    else
    {
      v51 = *(v47 + 8 * v45 + 32);
    }

    v52 = v51;
    v53 = CHSWidget.asDenyListRepresentation.getter();
    v55 = v54;

    v72[0] = v46;
    v57 = v46[2];
    v56 = v46[3];
    if (v57 >= v56 >> 1)
    {
      sub_242E3BC70((v56 > 1), v57 + 1, 1);
      v46 = v72[0];
    }

    ++v45;
    v46[2] = v57 + 1;
    v58 = &v46[2 * v57];
    v58[4] = v53;
    v58[5] = v55;
    v47 = v49;
  }

  while (v50 != v45);
  v36 = v48;

  v33 = v65;
  v34 = v66;
  v40 = v64;
LABEL_16:
  v72[0] = v46;
  sub_242C81C48(a3);
  v59 = sub_242F052E0();

  [v42 setDenyListOfExtensions_];

  v60 = *(*&v34[v36] + OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_configurationManager);
  v61 = v33;
  v62 = v60;
  [v62 fetchGalleryContentForHomeScreenEditingWithRequest:v42 addWidgetSheetViewController:v61];

  return v34;
}

void sub_242E3522C(char a1)
{
  v2 = v1;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for WidgetGalleryViewController();
  objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1 & 1);
  v4 = [v2 sheetPresentationController];
  if (v4)
  {
    v5 = v4;
    [v4 _setShouldDismissWhenTappedOutside_];
  }

  v6 = [v2 sheetPresentationController];
  if (v6)
  {
    v7 = v6;
    [v6 setPrefersGrabberVisible_];
  }

  v8 = [v2 sheetPresentationController];
  if (v8)
  {
    v9 = v8;
    sub_242F057B0();
  }

  v10 = [v2 sheetPresentationController];
  if (v10)
  {
    v11 = v10;
    [v10 _setAdditionalMinimumTopInset_];
  }
}

void sub_242E35398()
{
  v38.receiver = v0;
  v38.super_class = type metadata accessor for WidgetGalleryViewController();
  objc_msgSendSuper2(&v38, sel_viewWillLayoutSubviews);
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI27WidgetGalleryViewController_addWidgetSheetViewController;
  v2 = [*&v0[OBJC_IVAR____TtC14CarPlayAssetUI27WidgetGalleryViewController_addWidgetSheetViewController] view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame_];
  v14 = [v0 view];
  if (v14)
  {
    v15 = v14;
    [v14 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = *&v0[v1];
    [v24 preferredInsetsForSheetPresentationInInterfaceOrientation_];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v33 = *&v0[v1];
    v34 = UIEdgeInsetsInsetRect(v17, v19, v21, v23, v26, v28, v30, v32);
    v36 = v35;
    v37 = v33;
    [v37 setPreferredContentSize_];

    return;
  }

LABEL_7:
  __break(1u);
}

id WidgetGalleryViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_242F04F00();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WidgetGalleryViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetGalleryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *NinePartImage.assets.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 24);
  v128 = *(v0 + 16);
  v129 = v3;
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v96 = *(v0 + 40);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v124 = v1;
  v125 = v6;
  v8 = *(v0 + 72);
  v126 = *(v0 + 80);
  v9 = *(v0 + 96);
  v89 = *(v0 + 88);
  v120 = v7;
  v121 = v9;
  v10 = *(v0 + 112);
  v127 = *(v0 + 104);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);
  v122 = v10;
  v123 = v13;
  v15 = *(v0 + 152);
  v117 = *(v0 + 160);
  v118 = v15;
  v111 = *(v0 + 168);
  v110 = *(v0 + 176);
  v16 = *(v0 + 184);
  v17 = *(v0 + 192);
  v78 = v14;
  v79 = v16;
  v18 = *(v0 + 208);
  v102 = *(v0 + 200);
  v103 = v17;
  v19 = *(v0 + 224);
  v100 = *(v0 + 216);
  v101 = v18;
  v20 = *(v0 + 240);
  v99 = *(v0 + 232);
  v21 = *(v0 + 256);
  v108 = *(v0 + 248);
  v109 = v20;
  v107 = v21;
  v106 = *(v0 + 264);
  v105 = *(v0 + 272);
  v22 = *(v0 + 280);
  v23 = *(v0 + 288);
  v115 = *(v0 + 296);
  v116 = v23;
  v24 = *(v0 + 304);
  v113 = *(v0 + 312);
  v114 = v24;
  v112 = *(v0 + 320);
  v26 = *(v0 + 328);
  v25 = *(v0 + 336);
  v80 = v22;
  v81 = v26;
  v88 = v25;
  v27 = *(v0 + 344);
  v86 = *(v0 + 352);
  v87 = v27;
  v84 = *(v0 + 360);
  v119 = *(v0 + 368);
  v28 = *(v0 + 384);
  v82 = *(v0 + 376);
  v29 = *(v0 + 400);
  v93 = *(v0 + 392);
  v94 = v28;
  v92 = v29;
  v91 = *(v0 + 408);
  v90 = *(v0 + 416);
  v83 = *(v0 + 424);
  v138[8] = &type metadata for ImageAsset;
  v138[9] = &protocol witness table for ImageAsset;
  v104 = v19;
  v77 = ~v19;
  v30 = swift_allocObject();
  v98 = v2;
  v31 = v124;
  *(v30 + 16) = v2;
  *(v30 + 24) = v31;
  v32 = v129;
  *(v30 + 32) = v128;
  *(v30 + 40) = v32;
  v97 = v4;
  *(v30 + 48) = v4;
  *(v30 + 56) = v96;
  v138[5] = v30;
  v138[13] = &type metadata for ImageAsset;
  v138[14] = &protocol witness table for ImageAsset;
  v33 = swift_allocObject();
  v95 = v8;
  v96 = v5;
  v34 = v120;
  *(v33 + 16) = v5;
  *(v33 + 24) = v34;
  *(v33 + 32) = v125;
  *(v33 + 40) = v8;
  *(v33 + 48) = v126;
  *(v33 + 56) = v89;
  v138[10] = v33;
  v138[18] = &type metadata for ImageAsset;
  v138[19] = &protocol witness table for ImageAsset;
  v35 = swift_allocObject();
  v36 = v127;
  *(v35 + 16) = v121;
  *(v35 + 24) = v36;
  *(v35 + 32) = v122;
  *(v35 + 40) = v11;
  v89 = v11;
  v85 = v12;
  *(v35 + 48) = v12;
  *(v35 + 56) = v78;
  v138[15] = v35;
  v138[23] = &type metadata for ImageAsset;
  v138[24] = &protocol witness table for ImageAsset;
  v37 = swift_allocObject();
  v138[20] = v37;
  v39 = v117;
  v38 = v118;
  *(v37 + 16) = v123;
  *(v37 + 24) = v38;
  v40 = v111;
  *(v37 + 32) = v39;
  *(v37 + 40) = v40;
  *(v37 + 48) = v110;
  *(v37 + 56) = v79;
  if ((v77 & 0xFE) != 0)
  {
    v41 = swift_allocObject();
    v44 = v102;
    *(v41 + 16) = v103;
    *(v41 + 24) = v44;
    v45 = v100;
    *(v41 + 32) = v101;
    *(v41 + 40) = v45;
    *(v41 + 48) = v104;
    *(v41 + 56) = v99;
    v43 = &protocol witness table for ImageAsset;
    v42 = &type metadata for ImageAsset;
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v138[27] = 0;
    v138[26] = 0;
  }

  v138[25] = v41;
  v138[28] = v42;
  v138[29] = v43;
  v138[33] = &type metadata for ImageAsset;
  v138[34] = &protocol witness table for ImageAsset;
  v46 = swift_allocObject();
  v47 = v108;
  *(v46 + 16) = v109;
  *(v46 + 24) = v47;
  v48 = v106;
  *(v46 + 32) = v107;
  *(v46 + 40) = v48;
  *(v46 + 48) = v105;
  *(v46 + 56) = v80;
  v138[30] = v46;
  v138[38] = &type metadata for ImageAsset;
  v138[39] = &protocol witness table for ImageAsset;
  v49 = swift_allocObject();
  v50 = v115;
  *(v49 + 16) = v116;
  *(v49 + 24) = v50;
  v51 = v113;
  *(v49 + 32) = v114;
  *(v49 + 40) = v51;
  *(v49 + 48) = v112;
  *(v49 + 56) = v81;
  v138[35] = v49;
  v138[43] = &type metadata for ImageAsset;
  v138[44] = &protocol witness table for ImageAsset;
  v52 = swift_allocObject();
  v53 = v87;
  v54 = v88;
  *(v52 + 16) = v88;
  *(v52 + 24) = v53;
  v55 = v86;
  v56 = v84;
  *(v52 + 32) = v86;
  *(v52 + 40) = v56;
  *(v52 + 48) = v119;
  *(v52 + 56) = v82;
  v138[40] = v52;
  v138[48] = &type metadata for ImageAsset;
  v138[49] = &protocol witness table for ImageAsset;
  v57 = swift_allocObject();
  v138[45] = v57;
  v59 = v93;
  v58 = v94;
  *(v57 + 16) = v94;
  *(v57 + 24) = v59;
  v61 = v91;
  v60 = v92;
  *(v57 + 32) = v92;
  *(v57 + 40) = v61;
  v62 = v90;
  *(v57 + 48) = v90;
  *(v57 + 56) = v83;
  sub_242C7F6C4(v98, v124, v128, v129, v97);
  sub_242C7F6C4(v96, v120, v125, v95, v126);
  sub_242C7F6C4(v121, v127, v122, v89, v85);
  sub_242C7F6C4(v123, v118, v117, v111, v110);
  sub_242DD7788(v103, v102, v101, v100, v104);
  sub_242C7F6C4(v109, v108, v107, v106, v105);
  sub_242C7F6C4(v116, v115, v114, v113, v112);
  sub_242C7F6C4(v54, v53, v55, v56, v119);
  sub_242C7F6C4(v58, v59, v60, v61, v62);
  v63 = MEMORY[0x277D84F90];
  for (i = 4; i != 49; i += 5)
  {
    sub_242E35D90(&v138[i + 1], &v135);
    v130[0] = v135;
    v130[1] = v136;
    v131 = v137;
    if (*(&v136 + 1))
    {
      sub_242C65564(v130, v132);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v138[0] = v63;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v63 = sub_242C82D10(0, v63[2] + 1, 1, v63);
        v138[0] = v63;
      }

      v67 = v63[2];
      v66 = v63[3];
      if (v67 >= v66 >> 1)
      {
        v63 = sub_242C82D10((v66 > 1), v67 + 1, 1, v63);
        v138[0] = v63;
      }

      v68 = v133;
      v69 = v134;
      v70 = __swift_mutable_project_boxed_opaque_existential_1(v132, v133);
      v71 = MEMORY[0x28223BE20](v70);
      v73 = &v76 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v74 + 16))(v73, v71);
      sub_242CCEB08(v67, v73, v138, v68, v69);
      __swift_destroy_boxed_opaque_existential_2Tm(v132);
    }

    else
    {
      sub_242E24994(v130);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFAD8, &qword_242F092D8);
  swift_arrayDestroy();
  return v63;
}

uint64_t sub_242E35D90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFAD8, &qword_242F092D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void NinePartImage.restoreAssets(from:)(void *a1)
{
  ImageAsset.restore(from:)(a1);
  if (!v2)
  {
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    if ((~*(v1 + 224) & 0xFELL) != 0)
    {
      ImageAsset.restore(from:)(a1);
    }

    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
  }
}

__n128 NinePartImage.init(topLeftCorner:topEdge:topRightCorner:leftEdge:middle:rightEdge:bottomLeftCorner:bottomEdge:bottomRightCorner:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, __n128 *a10)
{
  v12 = *(a1 + 5);
  v13 = *(a2 + 32);
  v14 = *(a2 + 5);
  v15 = *(a3 + 32);
  v16 = *(a3 + 5);
  v17 = *(a4 + 32);
  v18 = *(a4 + 5);
  v48 = *a5;
  v54 = a5[5];
  v53 = *a6;
  v52 = *(a6 + 2);
  v51 = *(a6 + 3);
  v50 = *(a6 + 32);
  v49 = *(a6 + 5);
  v19 = *a1;
  v20 = a1[1];
  v47 = *a7;
  v21 = a7[1];
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 40) = v12;
  v45 = a7[2];
  v46 = v21;
  v44 = a7[3];
  *(a9 + 192) = 0u;
  *(a9 + 208) = 0u;
  *(a9 + 224) = xmmword_242F385A0;
  v22 = *a2;
  v23 = a2[1];
  v43 = *(a7 + 32);
  v24 = a7[5];
  *(a9 + 80) = v13;
  *(a9 + 88) = v14;
  v41 = *a8;
  v42 = v24;
  v40 = a8[1];
  *a9 = v19;
  *(a9 + 16) = v20;
  v25 = *a3;
  v26 = a3[1];
  *(a9 + 128) = v15;
  v27 = a8[2];
  v28 = a8[3];
  *(a9 + 136) = v16;
  v29 = *(a8 + 32);
  v30 = a8[5];
  *(a9 + 48) = v22;
  *(a9 + 64) = v23;
  v39 = *a10;
  *(a9 + 96) = v25;
  *(a9 + 112) = v26;
  v31 = *a4;
  v32 = a4[1];
  *(a9 + 176) = v17;
  v33 = a10[1].n128_u64[0];
  v34 = a10[1].n128_u64[1];
  *(a9 + 184) = v18;
  v35 = a10[2].n128_u8[0];
  v36 = a10[2].n128_u64[1];
  *(a9 + 144) = v31;
  *(a9 + 160) = v32;
  sub_242DD77E4(0, 0, 0, 0, 254);
  *(a9 + 192) = v48;
  v37 = *(a5 + 1);
  *(a9 + 216) = *(a5 + 3);
  *(a9 + 200) = v37;
  *(a9 + 232) = v54;
  *(a9 + 240) = v53;
  *(a9 + 256) = v52;
  *(a9 + 264) = v51;
  *(a9 + 272) = v50;
  *(a9 + 280) = v49;
  *(a9 + 288) = v47;
  *(a9 + 296) = v46;
  *(a9 + 304) = v45;
  *(a9 + 312) = v44;
  *(a9 + 320) = v43;
  *(a9 + 328) = v42;
  *(a9 + 336) = v41;
  *(a9 + 344) = v40;
  *(a9 + 352) = v27;
  *(a9 + 360) = v28;
  *(a9 + 368) = v29;
  *(a9 + 376) = v30;
  result = v39;
  *(a9 + 384) = v39;
  *(a9 + 400) = v33;
  *(a9 + 408) = v34;
  *(a9 + 416) = v35;
  *(a9 + 424) = v36;
  return result;
}

unint64_t sub_242E360B0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x437466654C706F74;
    v6 = 0x7468676952706F74;
    if (a1 != 2)
    {
      v6 = 0x656764457466656CLL;
    }

    if (a1)
    {
      v5 = 0x65676445706F74;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    v2 = 0x64456D6F74746F62;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x656C6464696DLL;
    if (a1 != 4)
    {
      v3 = 0x6764457468676972;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_242E361F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242E37890(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E3621C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E375F4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E36258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E375F4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t NinePartImage.encode(to:)(void *a1)
{
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9580, &qword_242F39EA0);
  v96 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v4 = &v44 - v3;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v92 = *v1;
  v93 = v8;
  v10 = *(v1 + 64);
  v90 = *(v1 + 56);
  v91 = v9;
  v88 = *(v1 + 72);
  v89 = v10;
  v103 = *(v1 + 80);
  v11 = *(v1 + 88);
  v86 = *(v1 + 96);
  v87 = v11;
  v12 = *(v1 + 104);
  v84 = *(v1 + 112);
  v85 = v12;
  v83 = *(v1 + 120);
  v82 = *(v1 + 128);
  v13 = *(v1 + 144);
  v81 = *(v1 + 136);
  v75 = v13;
  v14 = *(v1 + 160);
  v76 = *(v1 + 152);
  v77 = v14;
  v78 = *(v1 + 168);
  v80 = *(v1 + 176);
  v15 = *(v1 + 192);
  v79 = *(v1 + 184);
  v69 = v15;
  v16 = *(v1 + 208);
  v70 = *(v1 + 200);
  v71 = v16;
  v17 = *(v1 + 224);
  v72 = *(v1 + 216);
  v74 = v17;
  v18 = *(v1 + 240);
  v73 = *(v1 + 232);
  v63 = v18;
  v19 = *(v1 + 256);
  v64 = *(v1 + 248);
  v65 = v19;
  v68 = *(v1 + 264);
  v67 = *(v1 + 272);
  v20 = *(v1 + 288);
  v66 = *(v1 + 280);
  v57 = v20;
  v21 = *(v1 + 304);
  v58 = *(v1 + 296);
  v59 = v21;
  v62 = *(v1 + 312);
  v61 = *(v1 + 320);
  v22 = *(v1 + 336);
  v60 = *(v1 + 328);
  v51 = v22;
  v23 = *(v1 + 352);
  v52 = *(v1 + 344);
  v53 = v23;
  v56 = *(v1 + 360);
  v55 = *(v1 + 368);
  v24 = *(v1 + 384);
  v54 = *(v1 + 376);
  v45 = v24;
  v25 = *(v1 + 400);
  v46 = *(v1 + 392);
  v47 = v25;
  v48 = *(v1 + 408);
  v49 = *(v1 + 416);
  v50 = *(v1 + 424);
  v26 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  v27 = v92;
  v28 = sub_242C7F6C4(v92, v5, v6, v7, v26);
  sub_242E375F4(v28, v29, v30);
  v31 = sub_242F064C0();
  v97 = v27;
  v98 = v5;
  v32 = v94;
  v99 = v6;
  v100 = v7;
  v33 = v4;
  LOBYTE(v101) = v26;
  v102 = v93;
  v104 = 0;
  v36 = sub_242C8B8E8(v31, v34, v35);
  v37 = v95;
  sub_242F05F20();
  if (v37)
  {
    sub_242C7F724(v97, v98, v99, v100, v101);
    return (*(v96 + 8))(v4, v32);
  }

  else
  {
    v40 = v83;
    v39 = v84;
    v42 = v85;
    v41 = v86;
    v43 = v96;
    sub_242C7F724(v97, v98, v99, v100, v101);
    v97 = v91;
    v98 = v90;
    v99 = v89;
    v100 = v88;
    LOBYTE(v101) = v103;
    v102 = v87;
    v104 = 1;
    sub_242C7F6C4(v91, v90, v89, v88, v103);
    v95 = v36;
    sub_242F05F20();
    sub_242C7F724(v97, v98, v99, v100, v101);
    v97 = v41;
    v98 = v42;
    v99 = v39;
    v100 = v40;
    LOBYTE(v101) = v82;
    v102 = v81;
    v104 = 2;
    sub_242C7F6C4(v41, v42, v39, v40, v82);
    sub_242F05F20();
    sub_242C7F724(v97, v98, v99, v100, v101);
    v97 = v75;
    v98 = v76;
    v99 = v77;
    v100 = v78;
    LOBYTE(v101) = v80;
    v102 = v79;
    v104 = 3;
    sub_242C7F6C4(v75, v76, v77, v78, v80);
    sub_242F05F20();
    sub_242C7F724(v97, v98, v99, v100, v101);
    v97 = v69;
    v98 = v70;
    v99 = v71;
    v100 = v72;
    v101 = v74;
    v102 = v73;
    v104 = 4;
    sub_242DD7788(v69, v70, v71, v72, v74);
    sub_242F05EB0();
    sub_242DD77E4(v97, v98, v99, v100, v101);
    v97 = v63;
    v98 = v64;
    v99 = v65;
    v100 = v68;
    LOBYTE(v101) = v67;
    v102 = v66;
    v104 = 5;
    sub_242C7F6C4(v63, v64, v65, v68, v67);
    sub_242F05F20();
    sub_242C7F724(v97, v98, v99, v100, v101);
    v97 = v57;
    v98 = v58;
    v99 = v59;
    v100 = v62;
    LOBYTE(v101) = v61;
    v102 = v60;
    v104 = 6;
    sub_242C7F6C4(v57, v58, v59, v62, v61);
    sub_242F05F20();
    sub_242C7F724(v97, v98, v99, v100, v101);
    v97 = v51;
    v98 = v52;
    v99 = v53;
    v100 = v56;
    LOBYTE(v101) = v55;
    v102 = v54;
    v104 = 7;
    sub_242C7F6C4(v51, v52, v53, v56, v55);
    sub_242F05F20();
    sub_242C7F724(v97, v98, v99, v100, v101);
    v97 = v45;
    v98 = v46;
    v99 = v47;
    v100 = v48;
    LOBYTE(v101) = v49;
    v102 = v50;
    v104 = 8;
    sub_242C7F6C4(v45, v46, v47, v48, v49);
    sub_242F05F20();
    sub_242C7F724(v97, v98, v99, v100, v101);
    return (*(v43 + 8))(v33, v32);
  }
}

void NinePartImage.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9590, &qword_242F39EA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = a1[3];
  v160 = a1;
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, v9);
  sub_242E375F4(v10, v11, v12);
  v13 = sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v160);
    sub_242DD77E4(0, 0, 0, 0, 254);
  }

  else
  {
    v16 = v6;
    v82 = a2;
    LOBYTE(v83[0]) = 0;
    sub_242C8BA70(v13, v14, v15);
    sub_242F05E00();
    v77 = v84;
    v78 = v85;
    v79 = v86;
    v80 = v87;
    v81 = v88;
    v17 = v89;
    LOBYTE(v83[0]) = 1;
    sub_242F05E00();
    v76 = v17;
    v69 = v84;
    v70 = v85;
    v66 = v86;
    v67 = v87;
    v68 = v88;
    v18 = v89;
    LOBYTE(v83[0]) = 2;
    sub_242F05E00();
    v45 = v18;
    v61 = v84;
    v62 = v85;
    v63 = v86;
    v64 = v87;
    v65 = v88;
    v19 = v89;
    LOBYTE(v83[0]) = 3;
    sub_242F05E00();
    v44 = v19;
    v71 = v84;
    v72 = v85;
    v73 = v86;
    v75 = v87;
    v74 = v88;
    v20 = v89;
    LOBYTE(v83[0]) = 4;
    sub_242F05D90();
    v40 = v85;
    v41 = v84;
    v38 = v86;
    v39 = v88;
    v42 = v89;
    v43 = v87;
    sub_242DD77E4(0, 0, 0, 0, 254);
    LOBYTE(v83[0]) = 5;
    sub_242F05E00();
    LODWORD(v37) = 1;
    v59 = v85;
    v60 = v84;
    v57 = v87;
    v58 = v86;
    v56 = v88;
    v36 = v89;
    LOBYTE(v83[0]) = 6;
    sub_242F05E00();
    v51 = v84;
    v52 = v85;
    v53 = v86;
    v54 = v87;
    v55 = v88;
    v35 = v89;
    LOBYTE(v83[0]) = 7;
    sub_242F05E00();
    v46 = v84;
    v47 = v85;
    v48 = v86;
    v49 = v87;
    v50 = v88;
    v33 = v89;
    v34 = v20;
    v145 = 8;
    sub_242F05E00();
    (*(v16 + 8))(v8, v5);
    v31 = v147;
    v32 = v146;
    *(&v83[40] + 1) = *v154;
    *(&v83[46] + 1) = *v153;
    v29 = v149;
    v30 = v148;
    *(&v83[52] + 1) = *v152;
    v28 = v150;
    HIDWORD(v83[40]) = *&v154[3];
    HIDWORD(v83[46]) = *&v153[3];
    HIDWORD(v83[52]) = *&v152[3];
    v37 = v151;
    v83[0] = v77;
    v83[1] = v78;
    v83[2] = v79;
    v83[3] = v80;
    LOBYTE(v83[4]) = v81;
    v83[5] = v76;
    v83[6] = v69;
    v83[7] = v70;
    v83[8] = v66;
    v83[9] = v67;
    LOBYTE(v83[10]) = v68;
    v21 = v45;
    v83[11] = v45;
    v83[12] = v61;
    v83[13] = v62;
    v83[14] = v63;
    v83[15] = v64;
    LOBYTE(v83[16]) = v65;
    v83[17] = v44;
    v23 = v71;
    v22 = v72;
    v83[18] = v71;
    v83[19] = v72;
    v24 = v73;
    v83[20] = v73;
    v83[21] = v75;
    v25 = v74;
    LOBYTE(v83[22]) = v74;
    v83[23] = v34;
    v83[24] = v41;
    v83[25] = v40;
    v26 = v38;
    v83[26] = v38;
    v83[27] = v43;
    v83[28] = v39;
    v83[29] = v42;
    v83[30] = v60;
    v83[31] = v59;
    v83[32] = v58;
    v83[33] = v57;
    LOBYTE(v83[34]) = v56;
    v83[35] = v36;
    v83[36] = v51;
    v83[37] = v52;
    v83[38] = v53;
    v83[39] = v54;
    LOBYTE(v83[40]) = v55;
    v83[41] = v35;
    v83[42] = v46;
    v83[43] = v47;
    v83[44] = v48;
    v83[45] = v49;
    LOBYTE(v83[46]) = v50;
    v83[47] = v33;
    v83[48] = v146;
    v83[49] = v147;
    v83[50] = v148;
    v83[51] = v149;
    LOBYTE(v83[52]) = v150;
    v83[53] = v151;
    memcpy(v82, v83, 0x1B0uLL);
    sub_242E1CDE4(v83, &v84);
    __swift_destroy_boxed_opaque_existential_2Tm(v160);
    v84 = v77;
    v85 = v78;
    v86 = v79;
    v87 = v80;
    LOBYTE(v88) = v81;
    v89 = v76;
    v90 = v69;
    v91 = v70;
    v92 = v66;
    v93 = v67;
    v94 = v68;
    v96 = v21;
    v97 = v61;
    v98 = v62;
    v99 = v63;
    v100 = v64;
    v101 = v65;
    v103 = v44;
    v104 = v23;
    v105 = v22;
    v106 = v24;
    v107 = v75;
    v108 = v25;
    v110 = v34;
    v111 = v41;
    v112 = v40;
    v113 = v26;
    *(&v88 + 1) = v159[0];
    HIDWORD(v88) = *(v159 + 3);
    *v95 = *v158;
    *&v95[3] = *&v158[3];
    *v102 = *v157;
    *&v102[3] = *&v157[3];
    *&v109[3] = *&v156[3];
    *v109 = *v156;
    v114 = v43;
    v115 = v39;
    v116 = v42;
    v117 = v60;
    v118 = v59;
    v119 = v58;
    v120 = v57;
    v121 = v56;
    *v122 = *v155;
    *&v122[3] = *&v155[3];
    v123 = v36;
    v124 = v51;
    v125 = v52;
    v126 = v53;
    v127 = v54;
    v128 = v55;
    *v129 = *v154;
    *&v129[3] = *&v154[3];
    v130 = v35;
    v131 = v46;
    v132 = v47;
    v133 = v48;
    v134 = v49;
    v135 = v50;
    *v136 = *v153;
    *&v136[3] = *&v153[3];
    v137 = v33;
    v138 = v32;
    v139 = v31;
    v140 = v30;
    v141 = v29;
    v142 = v28;
    *v143 = *v152;
    *&v143[3] = *&v152[3];
    v144 = v37;
    sub_242E1CE90(&v84);
  }
}