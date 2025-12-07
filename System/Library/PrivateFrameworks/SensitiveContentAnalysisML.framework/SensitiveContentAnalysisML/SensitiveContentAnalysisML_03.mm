unint64_t sub_1B8A90CB8()
{
  result = qword_1EDB749F0;
  if (!qword_1EDB749F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA965E8, &qword_1B8AF6770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB749F0);
  }

  return result;
}

uint64_t sub_1B8A90D50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8A90DD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8A90E40@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = BYTE2(result);
  *(a2 + 1) = result;
  *(a2 + 3) = BYTE4(result) & 1;
  *(a2 + 4) = BYTE3(result);
  return result;
}

uint64_t sub_1B8A90E68(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1B8AF0EA8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1B8A90EC8()
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t sub_1B8A90F1C(uint64_t a1)
{
  sub_1B8AF05F8();
}

uint64_t sub_1B8A90F54(uint64_t a1)
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

unint64_t sub_1B8A90FA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B8A92808(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B8A910B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x726564726F62;
  if (v2 != 1)
  {
    v4 = 0x6576697469736F70;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x657669746167656ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x726564726F62;
  if (*a2 != 1)
  {
    v8 = 0x6576697469736F70;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x657669746167656ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B8AF0EA8();
  }

  return v11 & 1;
}

uint64_t sub_1B8A911B0()
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t sub_1B8A91250(uint64_t a1)
{
  sub_1B8AF05F8();
}

uint64_t sub_1B8A912DC(uint64_t a1)
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

unint64_t sub_1B8A91378@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B8A92854(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B8A913A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x726564726F62;
  if (v2 != 1)
  {
    v5 = 0x6576697469736F70;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657669746167656ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B8A914D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1734437990;
  if (v2 != 1)
  {
    v5 = 7364973;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701736302;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1734437990;
  if (*a2 != 1)
  {
    v8 = 7364973;
    v3 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B8AF0EA8();
  }

  return v11 & 1;
}

uint64_t sub_1B8A915A8()
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t sub_1B8A91634(uint64_t a1)
{
  sub_1B8AF05F8();
}

uint64_t sub_1B8A916AC(uint64_t a1)
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

unint64_t sub_1B8A91734@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B8A928A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B8A91764(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1734437990;
  if (v2 != 1)
  {
    v5 = 7364973;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B8A91884()
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t sub_1B8A91938(uint64_t a1)
{
  sub_1B8AF05F8();
}

uint64_t sub_1B8A919D8(uint64_t a1)
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

unint64_t sub_1B8A91A88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B8A928EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B8A91AB8(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701208435;
  v4 = 0xE500000000000000;
  v5 = 0x646F6F6C62;
  if (*v1 != 2)
  {
    v5 = 0x6E6F70616577;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x65636E656C6F6976;
    v2 = 0xE800000000000000;
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

uint64_t sub_1B8A91BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  a4();
  a5();
  return sub_1B8AF0AA8();
}

uint64_t sub_1B8A91C74(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x726F6A616DLL;
  }

  else
  {
    v2 = 0x726F6E696DLL;
  }

  if (*a2)
  {
    v3 = 0x726F6A616DLL;
  }

  else
  {
    v3 = 0x726F6E696DLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B8AF0EA8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1B8A91CF4()
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t sub_1B8A91D64(uint64_t a1)
{
  sub_1B8AF05F8();
}

uint64_t sub_1B8A91DB8(uint64_t a1)
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t sub_1B8A91E24@<X0>(char *a2@<X8>)
{
  v3 = sub_1B8AF0BE8();

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

  *a2 = v5;
  return result;
}

void sub_1B8A91E84(uint64_t *a1@<X8>)
{
  v2 = 0x726F6E696DLL;
  if (*v1)
  {
    v2 = 0x726F6A616DLL;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_1B8A91EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();

  return MEMORY[0x1EEE0AE18](a1, a2, v7, v8);
}

uint64_t sub_1B8A91F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B8A93988();
  sub_1B8A939DC();
  return sub_1B8AF0AA8();
}

uint64_t sub_1B8A92020()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96830, &qword_1B8AF7450);
  sub_1B8AF02B8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B8AF7390;
  sub_1B8A92B28();
  sub_1B8AF02A8();
  sub_1B8A92B7C();
  sub_1B8AF02A8();
  sub_1B8A92BD0();
  sub_1B8AF02A8();
  sub_1B8A92C24();
  sub_1B8AF02A8();
  sub_1B8A92C78();
  sub_1B8AF02A8();

  return MEMORY[0x1EEE0AC90](v0);
}

uint64_t sub_1B8A921EC(unint64_t a1)
{
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v7[3] = &_s20MiscSafetyJSONResultVN;
  v7[4] = sub_1B8A922B0();
  LOBYTE(v7[0]) = a1;
  BYTE1(v7[0]) = v2;
  BYTE2(v7[0]) = v3;
  BYTE3(v7[0]) = v4;
  BYTE4(v7[0]) = BYTE4(a1) & 1;
  v5 = TerseEncoder.encode(_:typeNameStyle:)(v7, &unk_1F3747098);
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

unint64_t sub_1B8A922B0()
{
  result = qword_1EBA96800;
  if (!qword_1EBA96800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96800);
  }

  return result;
}

uint64_t sub_1B8A92304(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96838, &qword_1B8AF7458);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8A92CCC();
  sub_1B8AF1058();
  v10[15] = a2;
  v10[14] = 0;
  sub_1B8A92D20();
  sub_1B8AF0CC8();
  if (!v2)
  {
    v10[13] = BYTE1(a2);
    v10[12] = 1;
    sub_1B8A92D74();
    sub_1B8AF0CC8();
    v10[11] = BYTE2(a2);
    v10[10] = 2;
    sub_1B8A92DC8();
    sub_1B8AF0CC8();
    v10[9] = BYTE3(a2);
    v10[8] = 3;
    sub_1B8A92E1C();
    sub_1B8AF0CC8();
    v10[7] = BYTE4(a2) & 1;
    v10[6] = 4;
    sub_1B8A92E70();
    sub_1B8AF0CC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B8A92554()
{
  v1 = *v0;
  v2 = 0x656C706F6570;
  v3 = 0x6C616E6F69676572;
  v4 = 0x797465666173;
  if (v1 != 3)
  {
    v4 = 0x7275746375727473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6648432;
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

uint64_t sub_1B8A925E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8A93A30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B8A92618(uint64_t a1)
{
  v2 = sub_1B8A92CCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8A92654(uint64_t a1)
{
  v2 = sub_1B8A92CCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8A92690()
{
  v1 = 0x100000000;
  if (!v0[4])
  {
    v1 = 0;
  }

  return sub_1B8A921EC(v1 | (v0[3] << 24) | (v0[2] << 16) | (v0[1] << 8) | *v0);
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s20MiscSafetyJSONResultVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s20MiscSafetyJSONResultVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1B8A92774@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1B8A92938(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 2) = BYTE2(result);
    *(a1 + 3) = BYTE3(result);
    *(a1 + 4) = BYTE4(result) & 1;
  }

  return result;
}

uint64_t sub_1B8A927C0(void *a1)
{
  v2 = 0x100000000;
  if (!v1[4])
  {
    v2 = 0;
  }

  return sub_1B8A92304(a1, v2 | (v1[3] << 24) | (v1[2] << 16) | (v1[1] << 8) | *v1);
}

unint64_t sub_1B8A92808(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B8AF0BE8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B8A92854(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B8AF0BE8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B8A928A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B8AF0BE8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B8A928EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B8AF0BE8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B8A92938(uint64_t a1)
{
  sub_1B8A92B28();
  sub_1B8AF0258();
  if (v1)
  {
    v3 = sub_1B8AF0268();
    return (*(*(v3 - 8) + 8))(a1, v3);
  }

  else
  {
    sub_1B8A92B7C();
    sub_1B8AF0258();
    sub_1B8A92BD0();
    sub_1B8AF0258();
    sub_1B8A92C24();
    sub_1B8AF0258();
    sub_1B8A92C78();
    sub_1B8AF0258();
    v5 = sub_1B8AF0268();
    (*(*(v5 - 8) + 8))(a1, v5);
    v6 = 0x100000000;
    if (!v7)
    {
      v6 = 0;
    }

    return v6 | (v8 << 24) | (v9 << 16) | (v10 << 8) | v11;
  }
}

unint64_t sub_1B8A92B28()
{
  result = qword_1EBA96808;
  if (!qword_1EBA96808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96808);
  }

  return result;
}

unint64_t sub_1B8A92B7C()
{
  result = qword_1EBA96810;
  if (!qword_1EBA96810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96810);
  }

  return result;
}

unint64_t sub_1B8A92BD0()
{
  result = qword_1EBA96818;
  if (!qword_1EBA96818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96818);
  }

  return result;
}

unint64_t sub_1B8A92C24()
{
  result = qword_1EBA96820;
  if (!qword_1EBA96820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96820);
  }

  return result;
}

unint64_t sub_1B8A92C78()
{
  result = qword_1EBA96828;
  if (!qword_1EBA96828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96828);
  }

  return result;
}

unint64_t sub_1B8A92CCC()
{
  result = qword_1EBA96840;
  if (!qword_1EBA96840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96840);
  }

  return result;
}

unint64_t sub_1B8A92D20()
{
  result = qword_1EBA96848;
  if (!qword_1EBA96848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96848);
  }

  return result;
}

unint64_t sub_1B8A92D74()
{
  result = qword_1EBA96850;
  if (!qword_1EBA96850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96850);
  }

  return result;
}

unint64_t sub_1B8A92DC8()
{
  result = qword_1EBA96858;
  if (!qword_1EBA96858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96858);
  }

  return result;
}

unint64_t sub_1B8A92E1C()
{
  result = qword_1EBA96860;
  if (!qword_1EBA96860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96860);
  }

  return result;
}

unint64_t sub_1B8A92E70()
{
  result = qword_1EBA96868;
  if (!qword_1EBA96868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96868);
  }

  return result;
}

uint64_t _s20MiscSafetyJSONResultV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s20MiscSafetyJSONResultV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s20MiscSafetyJSONResultV10StructuralOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s20MiscSafetyJSONResultV10StructuralOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s20MiscSafetyJSONResultV6SafetyOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s20MiscSafetyJSONResultV6SafetyOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B8A93318()
{
  result = qword_1EBA96880;
  if (!qword_1EBA96880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96880);
  }

  return result;
}

unint64_t sub_1B8A933A0()
{
  result = qword_1EBA96898;
  if (!qword_1EBA96898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96898);
  }

  return result;
}

unint64_t sub_1B8A93428()
{
  result = qword_1EBA968B0;
  if (!qword_1EBA968B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA968B0);
  }

  return result;
}

unint64_t sub_1B8A934B0()
{
  result = qword_1EBA968C8;
  if (!qword_1EBA968C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA968C8);
  }

  return result;
}

uint64_t sub_1B8A93534(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1B8A9358C()
{
  result = qword_1EBA968E0;
  if (!qword_1EBA968E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA968E0);
  }

  return result;
}

unint64_t sub_1B8A935E4()
{
  result = qword_1EBA968E8;
  if (!qword_1EBA968E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA968E8);
  }

  return result;
}

unint64_t sub_1B8A9363C()
{
  result = qword_1EBA968F0;
  if (!qword_1EBA968F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA968F0);
  }

  return result;
}

unint64_t sub_1B8A93694()
{
  result = qword_1EBA968F8;
  if (!qword_1EBA968F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA968F8);
  }

  return result;
}

unint64_t sub_1B8A936E8()
{
  result = qword_1EBA96900;
  if (!qword_1EBA96900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96900);
  }

  return result;
}

unint64_t sub_1B8A9373C()
{
  result = qword_1EBA96908;
  if (!qword_1EBA96908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96908);
  }

  return result;
}

unint64_t sub_1B8A93790()
{
  result = qword_1EBA96910;
  if (!qword_1EBA96910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96910);
  }

  return result;
}

unint64_t sub_1B8A937E4()
{
  result = qword_1EBA96918;
  if (!qword_1EBA96918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96918);
  }

  return result;
}

unint64_t sub_1B8A93838()
{
  result = qword_1EBA96920;
  if (!qword_1EBA96920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96920);
  }

  return result;
}

unint64_t sub_1B8A9388C()
{
  result = qword_1EBA96928;
  if (!qword_1EBA96928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96928);
  }

  return result;
}

unint64_t sub_1B8A938E0()
{
  result = qword_1EBA96930;
  if (!qword_1EBA96930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96930);
  }

  return result;
}

unint64_t sub_1B8A93934()
{
  result = qword_1EBA96938;
  if (!qword_1EBA96938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96938);
  }

  return result;
}

unint64_t sub_1B8A93988()
{
  result = qword_1EBA96940;
  if (!qword_1EBA96940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96940);
  }

  return result;
}

unint64_t sub_1B8A939DC()
{
  result = qword_1EBA96948;
  if (!qword_1EBA96948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96948);
  }

  return result;
}

uint64_t sub_1B8A93A30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C706F6570 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6648432 && a2 == 0xE300000000000000 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616E6F69676572 && a2 == 0xE800000000000000 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x797465666173 && a2 == 0xE600000000000000 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7275746375727473 && a2 == 0xEA00000000006C61)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B8AF0EA8();

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

void *sub_1B8A93BF0@<X0>(uint64_t a1@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v25[1] = *v1;
  result = AFMModel.Task.afmPlusMode.getter(v25);
  if (v25[0])
  {
    if (v25[0] == 1)
    {
      v24 = v3;
      v21 = sub_1B8A967CC();
      v5 = type metadata accessor for CustomAFMImageConverter(0);
      v6 = swift_allocObject();
      v7 = OBJC_IVAR____TtC26SensitiveContentAnalysisML23CustomAFMImageConverter_logger;
      if (qword_1EDB75388 != -1)
      {
        swift_once();
      }

      v8 = sub_1B8AF03A8();
      v9 = __swift_project_value_buffer(v8, qword_1EDB75B38);
      v10 = *(v8 - 8);
      v20 = v7;
      (*(v10 + 16))(v6 + v7, v9, v8);
      v11 = OBJC_IVAR____TtC26SensitiveContentAnalysisML23CustomAFMImageConverter_signposter;
      if (qword_1EDB75390 != -1)
      {
        swift_once();
      }

      v12 = sub_1B8AF0328();
      v13 = __swift_project_value_buffer(v12, qword_1EDB75B50);
      v14 = *(v12 - 8);
      (*(v14 + 16))(v6 + v11, v13, v12);
      v23 = 0;
      v15 = [objc_allocWithZone(SCMLMADImageEncoder) initWithError_];
      v16 = v11;
      v17 = v23;
      if (v15)
      {
        *(v6 + 16) = v15;
        *(v6 + 24) = v21;
        *(a1 + 24) = v5;
        *(a1 + 32) = &off_1F3747D18;
        *a1 = v6;
        return v17;
      }

      else
      {
        v22 = v16;
        v19 = v23;
        sub_1B8AEFBD8();

        swift_willThrow();
        (*(v10 + 8))(v6 + v20, v8);
        (*(v14 + 8))(v6 + v22, v12);
        return swift_deallocPartialClassInstance();
      }
    }

    else
    {
      v18 = type metadata accessor for StandardAFMImageConverter();
      result = swift_allocObject();
      *(a1 + 24) = v18;
      *(a1 + 32) = &off_1F3747D28;
      *a1 = result;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

unint64_t AFMModel.Task.rawValue.getter()
{
  result = 0x6566615365646F63;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x646E417367616C66;
      break;
    case 3:
      result = 0x4E4F534A6373696DLL;
      break;
    case 4:
      result = 0x6F43656C706F6570;
      break;
    case 5:
      result = 0x6544656C706F6570;
      break;
    case 6:
      result = 0x7365627570657270;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 0xA:
      result = 0xD000000000000014;
      break;
    case 0xB:
      result = 0xD000000000000013;
      break;
    case 0xC:
      result = 0x6566615374786574;
      break;
    case 0xD:
      result = 0x65636E656C6F6976;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

char *sub_1B8A940C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967F0, &qword_1B8AF7BC0);
  v34 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v30 - v2;
  v4 = sub_1B8AEFF48();
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96A48, &qword_1B8AF8328);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v11 = *v0;
  v39 = *v0;
  v12 = v36;
  AFMModel.Task.adapter.getter(v37);
  if (!v12)
  {
    v32 = v1;
    v33 = v6;
    v36 = v8;
    v38 = v11;
    v31 = v3;
    __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    sub_1B8AEFEE8();
    v13 = v33;
    sub_1B8AEFE38();
    (*(v36 + 8))(v10, v7);
    v36 = 0;
    v6 = sub_1B8AEFF38();
    (*(v35 + 8))(v13, v4);
    if (!v6)
    {
      v6 = sub_1B8AE647C(MEMORY[0x1E69E7CC0]);
    }

    v15 = v31;
    v16 = v32;
    v17 = v38;
    __swift_destroy_boxed_opaque_existential_0(v37);
    if (qword_1EDB75388 != -1)
    {
      swift_once();
    }

    v18 = sub_1B8AF03A8();
    __swift_project_value_buffer(v18, qword_1EDB75B38);

    v19 = sub_1B8AF0388();
    v20 = sub_1B8AF08C8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37[0] = v22;
      *v21 = 136315394;
      v39 = v17;
      AFMModel.Task.bundleID.getter(v15);
      v23 = sub_1B8AEFF58();
      v25 = v24;
      (*(v34 + 8))(v15, v16);
      v26 = sub_1B8A9E870(v23, v25, v37);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      v27 = sub_1B8AF05C8();
      v29 = sub_1B8A9E870(v27, v28, v37);

      *(v21 + 14) = v29;
      _os_log_impl(&dword_1B8A3C000, v19, v20, "userDefinedFields for %s: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CC7D70](v22, -1, -1);
      MEMORY[0x1B8CC7D70](v21, -1, -1);
    }
  }

  return v6;
}

uint64_t AFMModel.Task.bundleID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967F0, &qword_1B8AF7BC0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v17[-v9];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-v11];
  v13 = *v1;
  v18[1] = *v1;
  AFMModel.Task.afmPlusMode.getter(v18);
  if (v18[0] && v18[0] == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1B8AF0EA8();
  }

  if (v13 > 6)
  {
    if (v13 < 10)
    {

      return MEMORY[0x1EEE1E9A8](v15);
    }

    else
    {
      if (v13 <= 11)
      {
        if (v13 != 10)
        {
          if (v14)
          {
            sub_1B8AEFD68();
          }

          else
          {
            sub_1B8AEFD28();
          }

          return (*(v4 + 32))(a1, v12, v3);
        }

        goto LABEL_20;
      }

      if (v13 != 12)
      {
        goto LABEL_27;
      }

      return MEMORY[0x1EEE1EAA8](v15);
    }
  }

  else
  {
    if (v13 > 1)
    {
      if ((v13 - 2) >= 3)
      {
        if (v13 != 5)
        {
          if (v14)
          {
            sub_1B8AEFD58();
          }

          else
          {
            sub_1B8AEFD18();
          }

          return (*(v4 + 32))(a1, v10, v3);
        }

        goto LABEL_20;
      }

LABEL_27:
      if (v14)
      {
        sub_1B8AEFD38();
      }

      else
      {
        sub_1B8AEFCE8();
      }

      return (*(v4 + 32))(a1, v7, v3);
    }

    if (!v13)
    {
LABEL_20:

      return MEMORY[0x1EEE1E9A0](v15);
    }

    return MEMORY[0x1EEE1EA18](v15);
  }
}

Swift::Bool __swiftcall AFMModel.Task.reportToBiome(useCaseID:)(Swift::String useCaseID)
{
  object = useCaseID._object;
  countAndFlagsBits = useCaseID._countAndFlagsBits;
  v4 = sub_1B8AEFED8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17[15] = *v1;
  if (AFMModel.Task.rawValue.getter() == 0x6566615374786574 && v8 == 0xEA00000000007974)
  {
  }

  else
  {
    v9 = sub_1B8AF0EA8();

    if ((v9 & 1) == 0)
    {
      v15 = 1;
      return v15 & 1;
    }
  }

  sub_1B8AEFEB8();
  v10 = sub_1B8AEFEC8();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  if (v10 == countAndFlagsBits && v12 == object)
  {

    v15 = 0;
  }

  else
  {
    v14 = sub_1B8AF0EA8();

    v15 = v14 ^ 1;
  }

  return v15 & 1;
}

uint64_t sub_1B8A94A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967F0, &qword_1B8AF7BC0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = sub_1B8AEFF08();
  MEMORY[0x1EEE9AC00](v7 - 8);
  switch(*v1)
  {
    case 1:
      v8 = sub_1B8AF0248();
      result = (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
      break;
    default:
      v13 = *v1;
      AFMModel.Task.bundleID.getter(v6);
      sub_1B8AEFF58();
      (*(v4 + 8))(v6, v3);
      v10 = v12[1];
      sub_1B8AEFEF8();
      if (v10)
      {
      }

      else
      {
        sub_1B8AF0238();
        v11 = sub_1B8AF0248();
        result = (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
      }

      break;
  }

  return result;
}

uint64_t sub_1B8A94D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965E0, &qword_1B8AF6760);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v35 = &v34 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96540, &unk_1B8AF64D0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v34 - v20;
  v37 = *v3;
  sub_1B8A8975C(a1, &v34 - v20, &qword_1EBA96540, &unk_1B8AF64D0);
  v22 = sub_1B8AF00F8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v21, 1, v22) == 1)
  {
    v25 = sub_1B8AF0068();
    (*(*(v25 - 8) + 56))(v18, 1, 1, v25);
    sub_1B8A8975C(v18, v16, &qword_1EBA965E0, &qword_1B8AF6760);
    sub_1B8AF00C8();
    sub_1B8AF00B8();
    sub_1B8AF0078();
    sub_1B8AF0088();
    sub_1B8A897C4(v18, &qword_1EBA965E0, &qword_1B8AF6760);
    if (v24(v21, 1, v22) != 1)
    {
      sub_1B8A897C4(v21, &qword_1EBA96540, &unk_1B8AF64D0);
    }
  }

  else
  {
    (*(v23 + 32))(a2, v21, v22);
  }

  sub_1B8AF0098();
  v26 = v37;
  if (v27)
  {
    sub_1B8AF00A8();
  }

  sub_1B8AF00D8();
  v28 = sub_1B8AF0068();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 48))(v13, 1, v28);
  result = sub_1B8A897C4(v13, &qword_1EBA965E0, &qword_1B8AF6760);
  if (v30 == 1)
  {
    if ((v26 - 7) > 2)
    {
      v33 = 1;
      v32 = v36;
    }

    else
    {
      v32 = v36;
      sub_1B8AF0058();
      v33 = 0;
    }

    (*(v29 + 56))(v32, v33, 1, v28);
    sub_1B8A97C94(v32, v35);
    return sub_1B8AF00E8();
  }

  return result;
}

uint64_t sub_1B8A951EC(uint64_t a1)
{
  v2 = sub_1B8A97BEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8A95228(uint64_t a1)
{
  v2 = sub_1B8A97BEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8A95304(uint64_t a1)
{
  v2 = sub_1B8A974BC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8A95340(uint64_t a1)
{
  v2 = sub_1B8A974BC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B8A95398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001B8B05D80 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B8AF0EA8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B8A9542C(uint64_t a1)
{
  v2 = sub_1B8A97B98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8A95468(uint64_t a1)
{
  v2 = sub_1B8A97B98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B8A95544(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *v3;
  v5 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v8;
  v9 = a3(v6, v5);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  v11 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA965D0, &qword_1B8AF6740);
  return v11;
}

uint64_t sub_1B8A95618(uint64_t a1)
{
  v2 = sub_1B8A97704();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8A95654(uint64_t a1)
{
  v2 = sub_1B8A97704();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B8A95690(uint64_t a1)
{
  v2 = sub_1B8A97B44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8A956CC(uint64_t a1)
{
  v2 = sub_1B8A97B44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8A9574C@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1B8AF1048();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v19;
  v13 = v20;
  v14 = sub_1B8AF0C18();
  v16 = v15;
  (*(v12 + 8))(v11, v9);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *v13 = v14;
  v13[1] = v16;
  return result;
}

uint64_t sub_1B8A95918(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v15 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  v14 = *v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_1B8AF1058();
  sub_1B8AF0C98();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1B8A95A78(uint64_t a1)
{
  v2 = sub_1B8A9794C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8A95AB4(uint64_t a1)
{
  v2 = sub_1B8A9794C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t static AFMModel.resolvedBundle(bundleID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96950, &unk_1B8AF7BC8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v33 = sub_1B8AEFC08();
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967E8, &unk_1B8AF7370);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - v12;
  v14 = sub_1B8AF0028();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1B8AF0008();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1B8A897C4(v13, &qword_1EBA967E8, &unk_1B8AF7370);
    sub_1B8A96F38();
    swift_allocError();
    *v18 = a1;
    v18[1] = a2;
    swift_willThrow();
  }

  (*(v15 + 32))(v17, v13, v14);
  sub_1B8AF0018();
  sub_1B8AEFE58();
  swift_allocObject();
  v31[0] = sub_1B8AEFE48();
  sub_1B8AEFE28();
  if (v3)
  {

    (*(v30 + 8))(v10, v33);
  }

  else
  {

    sub_1B8A8975C(v32, v31, &qword_1EBA96960, &qword_1B8AF7BD8);
    if (v31[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96978, &qword_1B8AF7BE0);
      v20 = sub_1B8AEFF28();
      v21 = swift_dynamicCast();
      v22 = *(v20 - 8);
      (*(v22 + 56))(v8, v21 ^ 1u, 1, v20);
      if ((*(v22 + 48))(v8, 1, v20) != 1)
      {
        sub_1B8A897C4(v32, &qword_1EBA96960, &qword_1B8AF7BD8);
        (*(v30 + 8))(v10, v33);
        (*(v15 + 8))(v17, v14);
        return (*(v22 + 32))(v29, v8, v20);
      }
    }

    else
    {
      sub_1B8A897C4(v31, &qword_1EBA96960, &qword_1B8AF7BD8);
      v23 = sub_1B8AEFF28();
      (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    }

    sub_1B8A897C4(v8, &qword_1EBA96950, &unk_1B8AF7BC8);
    sub_1B8A96F8C();
    v24 = v33;
    v25 = sub_1B8AF0D28();
    v27 = v26;
    sub_1B8A96FE4();
    swift_allocError();
    *v28 = v25;
    v28[1] = v27;
    swift_willThrow();
    sub_1B8A897C4(v32, &qword_1EBA96960, &qword_1B8AF7BD8);
    (*(v30 + 8))(v10, v24);
  }

  return (*(v15 + 8))(v17, v14);
}

uint64_t AFMModel.Task.adapter.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967F0, &qword_1B8AF7BC0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - v7;
  v9 = sub_1B8AEFF28();
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  type metadata accessor for AFMModel(0);
  LOBYTE(v29) = v12;
  AFMModel.Task.bundleID.getter(v8);
  v13 = sub_1B8AEFF58();
  v15 = v14;
  v16 = v8;
  v17 = *(v3 + 8);
  v17(v16, v2);
  v28 = v11;
  v18 = v31;
  static AFMModel.resolvedBundle(bundleID:)(v13, v15, v11);
  if (v18)
  {
  }

  v31 = v17;
  v20 = v26;
  v21 = v27;

  sub_1B8AEFF18();
  if (v30)
  {
    (*(v20 + 8))(v28, v9);
    return sub_1B8A4270C(&v29, v21);
  }

  else
  {
    sub_1B8A897C4(&v29, &qword_1EBA96980, &qword_1B8AF7BE8);
    LOBYTE(v29) = v12;
    AFMModel.Task.bundleID.getter(v6);
    sub_1B8A971D4(&qword_1EBA96988, &qword_1EBA967F0, &qword_1B8AF7BC0, MEMORY[0x1E69B24E8]);
    v22 = sub_1B8AF0D28();
    v24 = v23;
    v31(v6, v2);
    sub_1B8A97038();
    swift_allocError();
    *v25 = v22;
    v25[1] = v24;
    swift_willThrow();
    return (*(v20 + 8))(v28, v9);
  }
}

uint64_t sub_1B8A96340@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  LOBYTE(v17) = *v1;
  AFMModel.Task.afmPlusMode.getter(v14);
  if (LOBYTE(v14[0]) && LOBYTE(v14[0]) == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B8AF0EA8();
  }

  if (v3 <= 6)
  {
    if (v3 <= 1)
    {
      if (v3)
      {
        sub_1B8AEFD88();
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if ((v3 - 2) >= 3)
    {
      if (v3 != 5)
      {
        if (v4)
        {
          sub_1B8AEFDF8();
        }

        else
        {
          sub_1B8AEFDC8();
        }

LABEL_24:
        v5 = v15;
        v6 = v16;
        v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
        v18 = v5;
        v19 = *(v6 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
        (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v7, v5);
        __swift_destroy_boxed_opaque_existential_0(v14);
        return sub_1B8A4270C(&v17, a1);
      }

      goto LABEL_18;
    }

    goto LABEL_21;
  }

  if (v3 >= 10)
  {
    if (v3 <= 11)
    {
      if (v3 != 10)
      {
        if (v4)
        {
          sub_1B8AEFE08();
        }

        else
        {
          sub_1B8AEFDD8();
        }

        goto LABEL_24;
      }

LABEL_18:
      sub_1B8AEFDA8();
      goto LABEL_26;
    }

    if (v3 == 12)
    {
      sub_1B8AEFE18();
      goto LABEL_26;
    }

LABEL_21:
    if (v4)
    {
      sub_1B8AEFDE8();
    }

    else
    {
      sub_1B8AEFD98();
    }

    goto LABEL_24;
  }

  sub_1B8AEFDB8();
LABEL_26:
  v10 = v18;
  v11 = v19;
  v12 = __swift_project_boxed_opaque_existential_1(&v17, v18);
  a1[3] = v10;
  a1[4] = *(v11 + 8);
  v13 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  return __swift_destroy_boxed_opaque_existential_0(&v17);
}

uint64_t AFMModel.Task.afmPlusMode.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  if (v3 > 6)
  {
    if (*v1 < 0xBu)
    {
      goto LABEL_25;
    }

    if (v3 == 11)
    {
      v23 = &type metadata for FeatureFlags;
      v13 = sub_1B8A9708C();
      v24 = v13;
      LOBYTE(v22[0]) = 10;
      v14 = sub_1B8AEFCD8();
      result = __swift_destroy_boxed_opaque_existential_0(v22);
      if (v14)
      {
        goto LABEL_26;
      }

      v23 = &type metadata for FeatureFlags;
      v24 = v13;
      v8 = 9;
    }

    else
    {
      if (v3 == 12)
      {
        goto LABEL_25;
      }

      v23 = &type metadata for FeatureFlags;
      v9 = sub_1B8A9708C();
      v24 = v9;
      LOBYTE(v22[0]) = 12;
      v10 = sub_1B8AEFCD8();
      result = __swift_destroy_boxed_opaque_existential_0(v22);
      if (v10)
      {
        goto LABEL_26;
      }

      v23 = &type metadata for FeatureFlags;
      v24 = v9;
      v8 = 11;
    }
  }

  else
  {
    if (*v1 <= 3u)
    {
      if (v3 < 2 || v3 != 2)
      {
LABEL_25:
        v23 = &type metadata for FeatureFlags;
        v19 = sub_1B8A9708C();
        v24 = v19;
        LOBYTE(v22[0]) = 1;
        v20 = sub_1B8AEFCD8();
        result = __swift_destroy_boxed_opaque_existential_0(v22);
        if ((v20 & 1) == 0)
        {
          v23 = &type metadata for FeatureFlags;
          v24 = v19;
          LOBYTE(v22[0]) = 0;
          v21 = sub_1B8AEFCD8();
          result = __swift_destroy_boxed_opaque_existential_0(v22);
          v18 = v21 & 1;
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      v23 = &type metadata for FeatureFlags;
      v5 = sub_1B8A9708C();
      v24 = v5;
      LOBYTE(v22[0]) = 4;
      v6 = sub_1B8AEFCD8();
      result = __swift_destroy_boxed_opaque_existential_0(v22);
      if ((v6 & 1) == 0)
      {
        v23 = &type metadata for FeatureFlags;
        v24 = v5;
        v8 = 3;
        goto LABEL_23;
      }

LABEL_26:
      v18 = 2;
      goto LABEL_28;
    }

    if (v3 == 4)
    {
      v23 = &type metadata for FeatureFlags;
      v15 = sub_1B8A9708C();
      v24 = v15;
      LOBYTE(v22[0]) = 6;
      v16 = sub_1B8AEFCD8();
      result = __swift_destroy_boxed_opaque_existential_0(v22);
      if (v16)
      {
        goto LABEL_26;
      }

      v23 = &type metadata for FeatureFlags;
      v24 = v15;
      v8 = 5;
    }

    else
    {
      if (v3 == 5)
      {
        goto LABEL_25;
      }

      v23 = &type metadata for FeatureFlags;
      v11 = sub_1B8A9708C();
      v24 = v11;
      LOBYTE(v22[0]) = 8;
      v12 = sub_1B8AEFCD8();
      result = __swift_destroy_boxed_opaque_existential_0(v22);
      if (v12)
      {
        goto LABEL_26;
      }

      v23 = &type metadata for FeatureFlags;
      v24 = v11;
      v8 = 7;
    }
  }

LABEL_23:
  LOBYTE(v22[0]) = v8;
  v17 = sub_1B8AEFCD8();
  result = __swift_destroy_boxed_opaque_existential_0(v22);
  if ((v17 & 1) == 0)
  {
    goto LABEL_25;
  }

  v18 = 1;
LABEL_28:
  *a1 = v18;
  return result;
}

uint64_t sub_1B8A967CC()
{
  v1 = *v0;
  if (v1 <= 5)
  {
    if (v1 - 2 >= 3)
    {
      goto LABEL_11;
    }

    return 2;
  }

  if (*v0 <= 0xAu)
  {
    if (v1 == 6)
    {
      return 3;
    }

    goto LABEL_11;
  }

  if (v1 == 11)
  {
    return 4;
  }

  if (v1 == 13)
  {
    return 2;
  }

LABEL_11:
  sub_1B8AF0A98();
  MEMORY[0x1B8CC5F50](0x6764697262206F4ELL, 0xEE0020726F662065);
  sub_1B8AF0B78();
  result = sub_1B8AF0B98();
  __break(1u);
  return result;
}

uint64_t AFMModel.Task.AfmPlusMode.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B8AF0BE8();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t AFMModel.Task.AfmPlusMode.rawValue.getter()
{
  v1 = 0x7A696D6F74737563;
  if (*v0 != 1)
  {
    v1 = 0x647261646E617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1B8A9699C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7A696D6F74737563;
  v4 = 0xEA00000000006465;
  if (v2 != 1)
  {
    v3 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x7A696D6F74737563;
  v8 = 0xEA00000000006465;
  if (*a2 != 1)
  {
    v7 = 0x647261646E617473;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B8AF0EA8();
  }

  return v11 & 1;
}

uint64_t sub_1B8A96AA0()
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t sub_1B8A96B40(uint64_t a1)
{
  sub_1B8AF05F8();
}

uint64_t sub_1B8A96BCC(uint64_t a1)
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

void sub_1B8A96C74(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEA00000000006465;
  v5 = 0x7A696D6F74737563;
  if (v2 != 1)
  {
    v5 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AFMModel.Task.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B8AF0BE8();

  v6 = 14;
  if (v4 < 0xE)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1B8A96D38()
{
  v0 = AFMModel.Task.rawValue.getter();
  v2 = v1;
  if (v0 == AFMModel.Task.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B8AF0EA8();
  }

  return v5 & 1;
}

uint64_t sub_1B8A96DD4()
{
  sub_1B8AF1018();
  AFMModel.Task.rawValue.getter();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t sub_1B8A96E3C(uint64_t a1)
{
  AFMModel.Task.rawValue.getter();
  sub_1B8AF05F8();
}

uint64_t sub_1B8A96EA0(uint64_t a1)
{
  sub_1B8AF1018();
  AFMModel.Task.rawValue.getter();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

unint64_t sub_1B8A96F10@<X0>(unint64_t *a1@<X8>)
{
  result = AFMModel.Task.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B8A96F38()
{
  result = qword_1EBA96958;
  if (!qword_1EBA96958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96958);
  }

  return result;
}

unint64_t sub_1B8A96F8C()
{
  result = qword_1EBA96968;
  if (!qword_1EBA96968)
  {
    sub_1B8AEFC08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96968);
  }

  return result;
}

unint64_t sub_1B8A96FE4()
{
  result = qword_1EBA96970;
  if (!qword_1EBA96970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96970);
  }

  return result;
}

unint64_t sub_1B8A97038()
{
  result = qword_1EBA96990;
  if (!qword_1EBA96990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96990);
  }

  return result;
}

unint64_t sub_1B8A9708C()
{
  result = qword_1EDB75518[0];
  if (!qword_1EDB75518[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB75518);
  }

  return result;
}

unint64_t sub_1B8A970E4()
{
  result = qword_1EBA96998;
  if (!qword_1EBA96998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96998);
  }

  return result;
}

unint64_t sub_1B8A9713C()
{
  result = qword_1EBA969A0;
  if (!qword_1EBA969A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA969A0);
  }

  return result;
}

uint64_t sub_1B8A971D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t _s4TaskOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4TaskOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B8A9746C(void *a1)
{
  a1[1] = sub_1B8A974BC();
  a1[2] = sub_1B8A97510();
  a1[3] = sub_1B8A97564();
  a1[4] = sub_1B8A975B8();
  a1[5] = sub_1B8A9760C();
  result = sub_1B8A97660();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8A974BC()
{
  result = qword_1EBA969B8;
  if (!qword_1EBA969B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA969B8);
  }

  return result;
}

unint64_t sub_1B8A97510()
{
  result = qword_1EBA969C0;
  if (!qword_1EBA969C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA969C0);
  }

  return result;
}

unint64_t sub_1B8A97564()
{
  result = qword_1EBA969C8;
  if (!qword_1EBA969C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA969C8);
  }

  return result;
}

unint64_t sub_1B8A975B8()
{
  result = qword_1EBA969D0;
  if (!qword_1EBA969D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA969D0);
  }

  return result;
}

unint64_t sub_1B8A9760C()
{
  result = qword_1EBA969D8;
  if (!qword_1EBA969D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA969D8);
  }

  return result;
}

unint64_t sub_1B8A97660()
{
  result = qword_1EBA969E0;
  if (!qword_1EBA969E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA969E0);
  }

  return result;
}

unint64_t sub_1B8A976B4(void *a1)
{
  a1[1] = sub_1B8A97704();
  a1[2] = sub_1B8A97758();
  a1[3] = sub_1B8A977AC();
  a1[4] = sub_1B8A97800();
  a1[5] = sub_1B8A97854();
  result = sub_1B8A978A8();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8A97704()
{
  result = qword_1EBA969E8;
  if (!qword_1EBA969E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA969E8);
  }

  return result;
}

unint64_t sub_1B8A97758()
{
  result = qword_1EBA969F0;
  if (!qword_1EBA969F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA969F0);
  }

  return result;
}

unint64_t sub_1B8A977AC()
{
  result = qword_1EBA969F8;
  if (!qword_1EBA969F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA969F8);
  }

  return result;
}

unint64_t sub_1B8A97800()
{
  result = qword_1EBA96A00;
  if (!qword_1EBA96A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96A00);
  }

  return result;
}

unint64_t sub_1B8A97854()
{
  result = qword_1EBA96A08;
  if (!qword_1EBA96A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96A08);
  }

  return result;
}

unint64_t sub_1B8A978A8()
{
  result = qword_1EBA96A10;
  if (!qword_1EBA96A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96A10);
  }

  return result;
}

unint64_t sub_1B8A978FC(void *a1)
{
  a1[1] = sub_1B8A9794C();
  a1[2] = sub_1B8A979A0();
  a1[3] = sub_1B8A979F4();
  a1[4] = sub_1B8A97A48();
  a1[5] = sub_1B8A97A9C();
  result = sub_1B8A97AF0();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8A9794C()
{
  result = qword_1EBA96A18;
  if (!qword_1EBA96A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96A18);
  }

  return result;
}

unint64_t sub_1B8A979A0()
{
  result = qword_1EBA96A20;
  if (!qword_1EBA96A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96A20);
  }

  return result;
}

unint64_t sub_1B8A979F4()
{
  result = qword_1EBA96A28;
  if (!qword_1EBA96A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96A28);
  }

  return result;
}

unint64_t sub_1B8A97A48()
{
  result = qword_1EBA96A30;
  if (!qword_1EBA96A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96A30);
  }

  return result;
}

unint64_t sub_1B8A97A9C()
{
  result = qword_1EBA96A38;
  if (!qword_1EBA96A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96A38);
  }

  return result;
}

unint64_t sub_1B8A97AF0()
{
  result = qword_1EBA96A40;
  if (!qword_1EBA96A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96A40);
  }

  return result;
}

unint64_t sub_1B8A97B44()
{
  result = qword_1EBA96A58;
  if (!qword_1EBA96A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96A58);
  }

  return result;
}

unint64_t sub_1B8A97B98()
{
  result = qword_1EBA96A70;
  if (!qword_1EBA96A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96A70);
  }

  return result;
}

unint64_t sub_1B8A97BEC()
{
  result = qword_1EBA96A88;
  if (!qword_1EBA96A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96A88);
  }

  return result;
}

unint64_t sub_1B8A97C40()
{
  result = qword_1EBA96A98;
  if (!qword_1EBA96A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96A98);
  }

  return result;
}

uint64_t sub_1B8A97C94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965E0, &qword_1B8AF6760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B8A97D38()
{
  result = qword_1EBA96AA0;
  if (!qword_1EBA96AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96AA0);
  }

  return result;
}

unint64_t sub_1B8A97D90()
{
  result = qword_1EBA96AA8;
  if (!qword_1EBA96AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96AA8);
  }

  return result;
}

unint64_t sub_1B8A97DE8()
{
  result = qword_1EBA96AB0;
  if (!qword_1EBA96AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96AB0);
  }

  return result;
}

unint64_t sub_1B8A97E40()
{
  result = qword_1EBA96AB8;
  if (!qword_1EBA96AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96AB8);
  }

  return result;
}

unint64_t sub_1B8A97E98()
{
  result = qword_1EBA96AC0;
  if (!qword_1EBA96AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96AC0);
  }

  return result;
}

unint64_t sub_1B8A97EF0()
{
  result = qword_1EBA96AC8;
  if (!qword_1EBA96AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96AC8);
  }

  return result;
}

unint64_t sub_1B8A97F48()
{
  result = qword_1EBA96AD0;
  if (!qword_1EBA96AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96AD0);
  }

  return result;
}

unint64_t sub_1B8A97FA0()
{
  result = qword_1EBA96AD8;
  if (!qword_1EBA96AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96AD8);
  }

  return result;
}

unint64_t sub_1B8A97FF8()
{
  result = qword_1EBA96AE0;
  if (!qword_1EBA96AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96AE0);
  }

  return result;
}

uint64_t sub_1B8A980CC()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B8A98180(uint64_t a1)
{
  type metadata accessor for CoherentAssetLockWrapper();
  v2 = swift_allocObject();
  sub_1B8AEFEA8();
  v3 = sub_1B8AEFE78();
  if (v1)
  {
    v2 = v1;
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v2 + 16) = v3;
  }

  return v2;
}

uint64_t CoherentLoadedAssets.__allocating_init(resources:loadAssets:lockFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  CoherentLoadedAssets.init(resources:loadAssets:lockFactory:)(a1, a2, a3, a4);
  return v8;
}

char *CoherentLoadedAssets.init(resources:loadAssets:lockFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = a2;
  v19 = *v4;
  v8 = *(v19 + 80);
  v9 = type metadata accessor for CoherentLoadedAssets.LockAndData(0, v8, a3, a4);
  v17 = *(v9 - 8);
  v18 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v17 - v10);
  type metadata accessor for StandaloneBinarySemaphore();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 112) = 0;
  type metadata accessor for Condition();
  v13 = swift_allocObject();
  *(v13 + 16) = *sub_1B8AF0188();
  *(v12 + 120) = v13;
  *(v4 + 10) = v12;
  v14 = v20;
  *(v4 + 2) = a1;
  *(v4 + 3) = v14;
  *(v4 + 4) = a3;
  sub_1B8A85238(a4, (v4 + 40));
  sub_1B8A85238(a4, v22);

  v15 = v21;
  sub_1B8A984F0(a1, v22, v8, v11);
  __swift_destroy_boxed_opaque_existential_0(a4);

  if (v15)
  {

    __swift_destroy_boxed_opaque_existential_0(v4 + 5);

    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v17 + 32))(&v4[*(*v4 + 120)], v11, v18);
  }

  return v4;
}

uint64_t sub_1B8A984F0@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B8A9E1E8(v11, a1, v12, v13, a2, a3);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_0(a2);
  }

  else
  {
    v17 = v14;
    v18 = v15;
    __swift_destroy_boxed_opaque_existential_0(a2);

    *a4 = v17;
    a4[1] = v18;
    v21 = type metadata accessor for CoherentLoadedAssets.LockAndData(0, a3, v19, v20);
    return (*(v9 + 32))(a4 + *(v21 + 28), v11, a3);
  }
}

uint64_t sub_1B8A98630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[12] = a2;
  v5 = sub_1B8AF03A8();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AE8, &qword_1B8AF8748);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A987AC, 0, 0);
}

uint64_t sub_1B8A987AC()
{
  *(v0 + 192) = *(*(v0 + 96) + 80);
  swift_beginAccess();
  *(v0 + 416) = 0;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  v1 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1B8A98838, v1, 0);
}

uint64_t sub_1B8A98838()
{
  v1 = v0[24];
  if (*(v1 + 112) == 1)
  {
    v0[27] = *(v1 + 120);
    v0[28] = sub_1B8A9E818();

    swift_getObjectType();
    v2 = sub_1B8AF0858();
    v4 = v3;
    v0[29] = v2;
    v0[30] = v3;
    v5 = sub_1B8A98908;
    v6 = v2;
  }

  else
  {
    *(v1 + 112) = 1;
    v5 = sub_1B8A98BA0;
    v6 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, v4);
}

uint64_t sub_1B8A98908()
{
  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_1B8A989E4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B8A989E4()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1B8A98B04, v3, v2);
}

uint64_t sub_1B8A98B04()
{
  v1 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1B8A98B70, v1, 0);
}

uint64_t sub_1B8A98B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(v3 + 192) + 112) == 1)
  {
    return MEMORY[0x1EEE6DFA0](sub_1B8A98BA0, 0, 0);
  }

  __break(1u);
  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1B8A98BA0()
{
  v1 = v0[24];
  v2 = v0[12];
  v0[32] = v2[11];
  v0[33] = v2[12];
  v0[34] = v2[13];
  v0[35] = v2[14];
  v0[36] = v2[15];
  v0[37] = v2[16];

  swift_unknownObjectRetain();

  return MEMORY[0x1EEE6DFA0](sub_1B8A98C70, v1, 0);
}

uint64_t sub_1B8A98C70(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[24];
  if (*(v4 + 112) != 1)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  v5 = *(v4 + 120);
  swift_beginAccess();
  if (*(*(v5 + 16) + 24) < 1)
  {
    v14 = *(v3[21] + 56);
    v14(v3[19], 1, 1, v3[20]);

    goto LABEL_11;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B8A9EE18();
  }

  v6 = *(v5 + 16);
  a1 = (*(v3[21] + 32))(v3[19], &v6[((*(v3[21] + 80) + 40) & ~*(v3[21] + 80)) + *(v3[21] + 72) * *(v6 + 4)], v3[20]);
  v7 = *(v6 + 4);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    goto LABEL_18;
  }

  v10 = *(v6 + 3);
  if (v9 >= *(v6 + 2))
  {
    v9 = 0;
  }

  *(v6 + 4) = v9;
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_19;
  }

  v11 = v3[20];
  v12 = v3[21];
  v13 = v3[19];
  *(v6 + 3) = v10 - 1;
  v14 = *(v12 + 56);
  v14(v13, 0, 1, v11);
LABEL_11:
  v3[38] = v14;
  v15 = v3[20];
  v16 = v3[21];
  v17 = v3[19];
  swift_endAccess();
  v18 = *(v16 + 48);
  v3[39] = v18;
  v3[40] = (v16 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v18(v17, 1, v15) == 1)
  {
    v19 = v3[24];
    v20 = v3[19];

    sub_1B8A897C4(v20, &qword_1EBA96AE8, &qword_1B8AF8748);
    *(v19 + 112) = 0;
  }

  else
  {
    v21 = v3[23];
    v22 = v3[20];
    v23 = v3[21];
    (*(v23 + 32))(v21, v3[19], v22);
    sub_1B8AF0868();

    (*(v23 + 8))(v21, v22);
  }

  a1 = sub_1B8A98EA8;
  a2 = 0;
  a3 = 0;

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1B8A98EA8()
{
  v36 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 200);
  *(v0 + 328) = swift_getObjectType();
  (*(v1 + 8))();
  *(v0 + 336) = v2;
  if (v2)
  {
    if (qword_1EBA96490 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 416);
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 120);
    v7 = __swift_project_value_buffer(v6, qword_1EBAA5870);
    (*(v5 + 16))(v4, v7, v6);
    if (v3 == 1)
    {
      v8 = sub_1B8AF08D8();
    }

    else
    {
      v8 = sub_1B8AF08E8();
    }

    v16 = v8;
    v17 = sub_1B8AF0388();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = *(v0 + 128);
      v34 = *(v0 + 136);
      v32 = *(v0 + 208);
      v33 = *(v0 + 120);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v21;
      *v19 = 136446978;
      *(v0 + 88) = &type metadata for AFMPlusImageSanitizerBackend.LoadedAssets;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B10, &qword_1B8AF8810);
      v22 = sub_1B8AF06D8();
      v24 = sub_1B8A9E870(v22, v23, &v35);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2048;
      *(v19 + 14) = v32;
      *(v19 + 22) = 2048;
      *(v19 + 24) = 2;
      *(v19 + 32) = 2112;
      v25 = v2;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 34) = v26;
      *v20 = v26;
      _os_log_impl(&dword_1B8A3C000, v17, v16, "In withLock %{public}s: Coherent lock try %ld of %ld failed: %@", v19, 0x2Au);
      sub_1B8A897C4(v20, &qword_1EBA96B08, &qword_1B8AF94B0);
      MEMORY[0x1B8CC7D70](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1B8CC7D70](v21, -1, -1);
      MEMORY[0x1B8CC7D70](v19, -1, -1);

      (*(v18 + 8))(v34, v33);
    }

    else
    {
      v28 = *(v0 + 128);
      v27 = *(v0 + 136);
      v29 = *(v0 + 120);

      (*(v28 + 8))(v27, v29);
    }

    if (*(v0 + 416) == 1)
    {
      swift_willThrow();
      swift_unknownObjectRelease();

      v30 = *(v0 + 8);

      return v30();
    }

    else
    {
      v31 = *(v0 + 192);

      return MEMORY[0x1EEE6DFA0](sub_1B8A995E4, v31, 0);
    }
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 344) = v9;
    *v9 = v0;
    v9[1] = sub_1B8A992C8;
    v10 = *(v0 + 288);
    v11 = *(v0 + 296);
    v12 = *(v0 + 272);
    v13 = *(v0 + 280);
    v14 = *(v0 + 112);

    return sub_1B8A9FA0C(v14, v12, v13, v10, v11);
  }
}

uint64_t sub_1B8A992C8()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1B8A994E8;
  }

  else
  {
    v2 = sub_1B8A993DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8A993DC()
{
  (*(v0[33] + 16))(v0[41]);
  swift_unknownObjectRelease();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B8A994E8()
{
  (*(v0[33] + 16))(v0[41]);
  swift_unknownObjectRelease();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B8A995E4()
{
  v1 = v0[24];
  if (*(v1 + 112) == 1)
  {
    v0[45] = *(v1 + 120);
    v0[46] = sub_1B8A9E818();

    swift_getObjectType();
    v3 = sub_1B8AF0858();
    v0[47] = v3;
    v0[48] = v2;

    return MEMORY[0x1EEE6DFA0](sub_1B8A99708, v3, v2);
  }

  else
  {
    *(v1 + 112) = 1;
    v4 = swift_task_alloc();
    v0[50] = v4;
    *v4 = v0;
    v4[1] = sub_1B8A99A18;
    v5 = v0[32];
    v6 = v0[12];

    return sub_1B8A9D408(v4, v6, v5);
  }
}

uint64_t sub_1B8A99708()
{
  v1 = swift_task_alloc();
  *(v0 + 392) = v1;
  *v1 = v0;
  v1[1] = sub_1B8A997E4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B8A997E4()
{
  v1 = *v0;

  v2 = *(v1 + 384);
  v3 = *(v1 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1B8A99904, v3, v2);
}

uint64_t sub_1B8A99904()
{
  v1 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1B8A99970, v1, 0);
}

void sub_1B8A99970()
{
  if (*(v0[24] + 112) == 1)
  {
    v2 = swift_task_alloc();
    v0[50] = v2;
    *v2 = v0;
    v2[1] = sub_1B8A99A18;
    v3 = v0[32];
    v4 = v0[12];

    sub_1B8A9D408(v2, v4, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B8A99A18()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_1B8A99D64;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 192);
    v3 = sub_1B8A99B34;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1B8A99B34(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 192);
  if (*(v4 + 112) != 1)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  v5 = *(v4 + 120);
  swift_beginAccess();
  if (*(*(v5 + 16) + 24) < 1)
  {
    (*(v3 + 304))(*(v3 + 144), 1, 1, *(v3 + 160));

    goto LABEL_11;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B8A9EE18();
  }

  v6 = *(v5 + 16);
  a1 = (*(*(v3 + 168) + 32))(*(v3 + 144), &v6[((*(*(v3 + 168) + 80) + 40) & ~*(*(v3 + 168) + 80)) + *(*(v3 + 168) + 72) * *(v6 + 4)], *(v3 + 160));
  v7 = *(v6 + 4);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    goto LABEL_18;
  }

  v10 = *(v6 + 3);
  if (v9 >= *(v6 + 2))
  {
    v9 = 0;
  }

  *(v6 + 4) = v9;
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_19;
  }

  v11 = *(v3 + 304);
  v12 = *(v3 + 160);
  v13 = *(v3 + 144);
  *(v6 + 3) = v10 - 1;
  v11(v13, 0, 1, v12);
LABEL_11:
  v14 = *(v3 + 312);
  v15 = *(v3 + 160);
  v16 = *(v3 + 144);
  swift_endAccess();
  if (v14(v16, 1, v15) == 1)
  {
    v17 = *(v3 + 192);
    v18 = *(v3 + 144);

    sub_1B8A897C4(v18, &qword_1EBA96AE8, &qword_1B8AF8748);
    *(v17 + 112) = 0;
  }

  else
  {
    v20 = *(v3 + 168);
    v19 = *(v3 + 176);
    v21 = *(v3 + 160);
    (*(v20 + 32))(v19, *(v3 + 144), v21);
    sub_1B8AF0868();

    (*(v20 + 8))(v19, v21);
  }

  a1 = sub_1B8A99E38;
  a2 = 0;
  a3 = 0;

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1B8A99D80(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 192);
  if (*(v5 + 112) == 1)
  {
    sub_1B8A9E818();

    v6 = sub_1B8ADEA08(v5);

    if ((v6 & 1) == 0)
    {
      *(*(v3 + 192) + 112) = 0;
    }

    a1 = sub_1B8A99EF8;
    a2 = 0;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1B8A99E38()
{
  v1 = *(v0 + 336);
  swift_unknownObjectRelease();

  v2 = *(v0 + 408);
  *(v0 + 416) = 1;
  *(v0 + 200) = v2;
  *(v0 + 208) = 2;
  v3 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1B8A98838, v3, 0);
}

uint64_t sub_1B8A99EF8(uint64_t a1)
{
  v2 = *(v1 + 336);
  swift_willThrow();
  swift_unknownObjectRelease();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1B8A99FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_1B8AF03A8();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AE8, &qword_1B8AF8748);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A9A174, 0, 0);
}

uint64_t sub_1B8A9A174()
{
  *(v0 + 192) = *(*(v0 + 104) + 80);
  swift_beginAccess();
  *(v0 + 421) = 0;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  v1 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1B8A9A200, v1, 0);
}

uint64_t sub_1B8A9A200()
{
  v1 = v0[24];
  if (*(v1 + 112) == 1)
  {
    v0[27] = *(v1 + 120);
    v0[28] = sub_1B8A9E818();

    swift_getObjectType();
    v2 = sub_1B8AF0858();
    v4 = v3;
    v0[29] = v2;
    v0[30] = v3;
    v5 = sub_1B8A9A2D0;
    v6 = v2;
  }

  else
  {
    *(v1 + 112) = 1;
    v5 = sub_1B8A9A568;
    v6 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, v4);
}

uint64_t sub_1B8A9A2D0()
{
  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_1B8A9A3AC;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B8A9A3AC()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1B8A9A4CC, v3, v2);
}

uint64_t sub_1B8A9A4CC()
{
  v1 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1B8A9A538, v1, 0);
}

uint64_t sub_1B8A9A538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(v3 + 192) + 112) == 1)
  {
    return MEMORY[0x1EEE6DFA0](sub_1B8A9A568, 0, 0);
  }

  __break(1u);
  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1B8A9A568()
{
  v1 = v0[24];
  v2 = v0[13];
  v0[32] = v2[11];
  v0[33] = v2[12];
  v0[34] = v2[13];
  v0[35] = v2[14];

  swift_unknownObjectRetain();

  return MEMORY[0x1EEE6DFA0](sub_1B8A9A610, v1, 0);
}

uint64_t sub_1B8A9A610(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[24];
  if (*(v4 + 112) != 1)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  v5 = *(v4 + 120);
  swift_beginAccess();
  if (*(*(v5 + 16) + 24) < 1)
  {
    v14 = *(v3[21] + 56);
    v14(v3[19], 1, 1, v3[20]);

    goto LABEL_11;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B8A9EE18();
  }

  v6 = *(v5 + 16);
  a1 = (*(v3[21] + 32))(v3[19], &v6[((*(v3[21] + 80) + 40) & ~*(v3[21] + 80)) + *(v3[21] + 72) * *(v6 + 4)], v3[20]);
  v7 = *(v6 + 4);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    goto LABEL_18;
  }

  v10 = *(v6 + 3);
  if (v9 >= *(v6 + 2))
  {
    v9 = 0;
  }

  *(v6 + 4) = v9;
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_19;
  }

  v11 = v3[20];
  v12 = v3[21];
  v13 = v3[19];
  *(v6 + 3) = v10 - 1;
  v14 = *(v12 + 56);
  v14(v13, 0, 1, v11);
LABEL_11:
  v3[36] = v14;
  v15 = v3[20];
  v16 = v3[21];
  v17 = v3[19];
  swift_endAccess();
  v18 = *(v16 + 48);
  v3[37] = v18;
  v3[38] = (v16 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v18(v17, 1, v15) == 1)
  {
    v19 = v3[24];
    v20 = v3[19];

    sub_1B8A897C4(v20, &qword_1EBA96AE8, &qword_1B8AF8748);
    *(v19 + 112) = 0;
  }

  else
  {
    v21 = v3[23];
    v22 = v3[20];
    v23 = v3[21];
    (*(v23 + 32))(v21, v3[19], v22);
    sub_1B8AF0868();

    (*(v23 + 8))(v21, v22);
  }

  a1 = sub_1B8A9A848;
  a2 = 0;
  a3 = 0;

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1B8A9A848()
{
  v35 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 200);
  *(v0 + 312) = swift_getObjectType();
  (*(v1 + 8))();
  *(v0 + 320) = v2;
  if (v2)
  {
    if (qword_1EBA96490 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 421);
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 120);
    v7 = __swift_project_value_buffer(v6, qword_1EBAA5870);
    (*(v5 + 16))(v4, v7, v6);
    if (v3 == 1)
    {
      v8 = sub_1B8AF08D8();
    }

    else
    {
      v8 = sub_1B8AF08E8();
    }

    v12 = v8;
    v13 = sub_1B8AF0388();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = *(v0 + 128);
      v33 = *(v0 + 136);
      v31 = *(v0 + 208);
      v32 = *(v0 + 120);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = v17;
      *v15 = 136446978;
      *(v0 + 88) = &type metadata for PeopleCounter.LoadedAssets;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B18, &qword_1B8AF8828);
      v18 = sub_1B8AF06D8();
      v20 = sub_1B8A9E870(v18, v19, &v34);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2048;
      *(v15 + 14) = v31;
      *(v15 + 22) = 2048;
      *(v15 + 24) = 2;
      *(v15 + 32) = 2112;
      v21 = v2;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 34) = v22;
      *v16 = v22;
      _os_log_impl(&dword_1B8A3C000, v13, v12, "In withLock %{public}s: Coherent lock try %ld of %ld failed: %@", v15, 0x2Au);
      sub_1B8A897C4(v16, &qword_1EBA96B08, &qword_1B8AF94B0);
      MEMORY[0x1B8CC7D70](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CC7D70](v17, -1, -1);
      MEMORY[0x1B8CC7D70](v15, -1, -1);

      (*(v14 + 8))(v33, v32);
    }

    else
    {
      v24 = *(v0 + 128);
      v23 = *(v0 + 136);
      v25 = *(v0 + 120);

      (*(v24 + 8))(v23, v25);
    }

    if (*(v0 + 421) == 1)
    {
      swift_willThrow();
      swift_unknownObjectRelease();

      v26 = *(v0 + 8);

      return v26();
    }

    else
    {
      v27 = *(v0 + 192);

      return MEMORY[0x1EEE6DFA0](sub_1B8A9B2BC, v27, 0);
    }
  }

  else if (*(v0 + 272))
  {
    v9 = swift_task_alloc();
    *(v0 + 344) = v9;
    *v9 = v0;
    v9[1] = sub_1B8A9ADF4;
    v10 = *(v0 + 112);

    return sub_1B8A81344(v0 + 416, v10);
  }

  else
  {
    v28 = swift_task_alloc();
    *(v0 + 328) = v28;
    *v28 = v0;
    v28[1] = sub_1B8A9ACE0;
    v29 = *(v0 + 112);
    v30 = *(v0 + 96);

    return sub_1B8A7DA98(v30, v29);
  }
}

uint64_t sub_1B8A9ACE0()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1B8A9AFF8;
  }

  else
  {
    v2 = sub_1B8A9AF08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8A9ADF4()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1B8A9B1D8;
  }

  else
  {
    v2 = sub_1B8A9B0DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8A9AF08()
{
  v1 = v0[14];
  (*(v0[33] + 16))(v0[39]);
  swift_unknownObjectRelease();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B8A9AFF8()
{
  (*(*(v0 + 264) + 16))(*(v0 + 312));
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8A9B0DC()
{
  **(v0 + 96) = *(v0 + 417);
  v1 = *(v0 + 112);
  (*(*(v0 + 264) + 16))(*(v0 + 312));
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B8A9B1D8()
{
  (*(*(v0 + 264) + 16))(*(v0 + 312));
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8A9B2BC()
{
  v1 = v0[24];
  if (*(v1 + 112) == 1)
  {
    v0[45] = *(v1 + 120);
    v0[46] = sub_1B8A9E818();

    swift_getObjectType();
    v3 = sub_1B8AF0858();
    v0[47] = v3;
    v0[48] = v2;

    return MEMORY[0x1EEE6DFA0](sub_1B8A9B3E0, v3, v2);
  }

  else
  {
    *(v1 + 112) = 1;
    v4 = swift_task_alloc();
    v0[50] = v4;
    *v4 = v0;
    v4[1] = sub_1B8A9B6F0;
    v5 = v0[32];
    v6 = v0[13];

    return sub_1B8A9D574(v4, v6, v5);
  }
}

uint64_t sub_1B8A9B3E0()
{
  v1 = swift_task_alloc();
  *(v0 + 392) = v1;
  *v1 = v0;
  v1[1] = sub_1B8A9B4BC;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B8A9B4BC()
{
  v1 = *v0;

  v2 = *(v1 + 384);
  v3 = *(v1 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1B8A9B5DC, v3, v2);
}

uint64_t sub_1B8A9B5DC()
{
  v1 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1B8A9B648, v1, 0);
}

void sub_1B8A9B648()
{
  if (*(v0[24] + 112) == 1)
  {
    v2 = swift_task_alloc();
    v0[50] = v2;
    *v2 = v0;
    v2[1] = sub_1B8A9B6F0;
    v3 = v0[32];
    v4 = v0[13];

    sub_1B8A9D574(v2, v4, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B8A9B6F0()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_1B8A9BA3C;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 192);
    v3 = sub_1B8A9B80C;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1B8A9B80C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 192);
  if (*(v4 + 112) != 1)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  v5 = *(v4 + 120);
  swift_beginAccess();
  if (*(*(v5 + 16) + 24) < 1)
  {
    (*(v3 + 288))(*(v3 + 144), 1, 1, *(v3 + 160));

    goto LABEL_11;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B8A9EE18();
  }

  v6 = *(v5 + 16);
  a1 = (*(*(v3 + 168) + 32))(*(v3 + 144), &v6[((*(*(v3 + 168) + 80) + 40) & ~*(*(v3 + 168) + 80)) + *(*(v3 + 168) + 72) * *(v6 + 4)], *(v3 + 160));
  v7 = *(v6 + 4);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    goto LABEL_18;
  }

  v10 = *(v6 + 3);
  if (v9 >= *(v6 + 2))
  {
    v9 = 0;
  }

  *(v6 + 4) = v9;
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_19;
  }

  v11 = *(v3 + 288);
  v12 = *(v3 + 160);
  v13 = *(v3 + 144);
  *(v6 + 3) = v10 - 1;
  v11(v13, 0, 1, v12);
LABEL_11:
  v14 = *(v3 + 296);
  v15 = *(v3 + 160);
  v16 = *(v3 + 144);
  swift_endAccess();
  if (v14(v16, 1, v15) == 1)
  {
    v17 = *(v3 + 192);
    v18 = *(v3 + 144);

    sub_1B8A897C4(v18, &qword_1EBA96AE8, &qword_1B8AF8748);
    *(v17 + 112) = 0;
  }

  else
  {
    v20 = *(v3 + 168);
    v19 = *(v3 + 176);
    v21 = *(v3 + 160);
    (*(v20 + 32))(v19, *(v3 + 144), v21);
    sub_1B8AF0868();

    (*(v20 + 8))(v19, v21);
  }

  a1 = sub_1B8A9BB10;
  a2 = 0;
  a3 = 0;

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1B8A9BA58(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 192);
  if (*(v5 + 112) == 1)
  {
    sub_1B8A9E818();

    v6 = sub_1B8ADEA08(v5);

    if ((v6 & 1) == 0)
    {
      *(*(v3 + 192) + 112) = 0;
    }

    a1 = sub_1B8A9BBB4;
    a2 = 0;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1B8A9BB10()
{
  v1 = *(v0 + 320);
  swift_unknownObjectRelease();

  v2 = *(v0 + 408);
  *(v0 + 421) = 1;
  *(v0 + 200) = v2;
  *(v0 + 208) = 2;
  v3 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1B8A9A200, v3, 0);
}

uint64_t sub_1B8A9BBB4(uint64_t a1)
{
  v2 = *(v1 + 320);
  swift_willThrow();
  swift_unknownObjectRelease();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t CoherentLoadedAssets.withLock<A>(callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AE8, &qword_1B8AF8748);
  v5[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = sub_1B8AF03A8();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA96AF8, &qword_1B8AF8758);
  v9 = *(v6 + 80);
  v5[18] = v9;
  v5[19] = swift_getTupleTypeMetadata2();
  v5[20] = swift_task_alloc();
  v5[21] = *(v9 - 8);
  v5[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A9BEC0, 0, 0);
}

uint64_t sub_1B8A9BEC0()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  *(v0 + 184) = *(v1 + 80);
  *(v0 + 192) = 1;
  *(v0 + 328) = 0;
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  *v4 = v0;
  v4[1] = sub_1B8A9BFA0;
  v5 = *(v0 + 160);

  return sub_1B8AE7358(v5, &unk_1B8AF8768, v3);
}

void sub_1B8A9BFA0()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1B8A9C0E0, 0, 0);
  }
}

uint64_t sub_1B8A9C0E0()
{
  v40 = v0;
  v1 = *(v0 + 216);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);
  *(v0 + 224) = *v4;
  v7 = *(v4 + 1);
  *(v0 + 232) = v7;
  (*(v3 + 32))(v2, &v4[*(v5 + 48)], v6);
  *(v0 + 240) = swift_getObjectType();
  (*(v7 + 8))();
  *(v0 + 248) = v1;
  if (v1)
  {
    if (qword_1EBA96490 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 328);
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    v11 = *(v0 + 120);
    v12 = __swift_project_value_buffer(v11, qword_1EBAA5870);
    (*(v10 + 16))(v9, v12, v11);
    if (v8 == 1)
    {
      v13 = sub_1B8AF08D8();
    }

    else
    {
      v13 = sub_1B8AF08E8();
    }

    v18 = v13;
    v19 = sub_1B8AF0388();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = *(v0 + 144);
      v34 = *(v0 + 192);
      v35 = *(v0 + 128);
      v36 = *(v0 + 120);
      v38 = *(v0 + 136);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39 = v23;
      *v21 = 136446978;
      *(v0 + 40) = v20;
      swift_getMetatypeMetadata();
      v24 = sub_1B8AF06D8();
      v26 = sub_1B8A9E870(v24, v25, &v39);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v34;
      *(v21 + 22) = 2048;
      *(v21 + 24) = 2;
      *(v21 + 32) = 2112;
      v27 = v1;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 34) = v28;
      *v22 = v28;
      _os_log_impl(&dword_1B8A3C000, v19, v18, "In withLock %{public}s: Coherent lock try %ld of %ld failed: %@", v21, 0x2Au);
      sub_1B8A897C4(v22, &qword_1EBA96B08, &qword_1B8AF94B0);
      MEMORY[0x1B8CC7D70](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B8CC7D70](v23, -1, -1);
      MEMORY[0x1B8CC7D70](v21, -1, -1);

      (*(v35 + 8))(v38, v36);
    }

    else
    {
      v30 = *(v0 + 128);
      v29 = *(v0 + 136);
      v31 = *(v0 + 120);

      (*(v30 + 8))(v29, v31);
    }

    if (*(v0 + 328) == 1)
    {
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 144));

      v32 = *(v0 + 8);

      return v32();
    }

    else
    {
      v33 = *(v0 + 184);

      return MEMORY[0x1EEE6DFA0](sub_1B8A9C768, v33, 0);
    }
  }

  else
  {
    v37 = (*(v0 + 56) + **(v0 + 56));
    v14 = swift_task_alloc();
    *(v0 + 256) = v14;
    *v14 = v0;
    v14[1] = sub_1B8A9C568;
    v15 = *(v0 + 176);
    v16 = *(v0 + 48);

    return v37(v16, v15);
  }
}

uint64_t sub_1B8A9C568()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1B8A9D1A8;
  }

  else
  {
    v2 = sub_1B8A9C67C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8A9C67C()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];
  (*(v0[29] + 16))(v0[30]);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B8A9C768()
{
  v1 = v0[23];
  if (*(v1 + 112) == 1)
  {
    v0[34] = *(v1 + 120);
    v0[35] = sub_1B8A9E818();

    swift_getObjectType();
    v3 = sub_1B8AF0858();
    v0[36] = v3;
    v0[37] = v2;

    return MEMORY[0x1EEE6DFA0](sub_1B8A9C88C, v3, v2);
  }

  else
  {
    *(v1 + 112) = 1;
    v4 = swift_task_alloc();
    v0[39] = v4;
    *v4 = v0;
    v4[1] = sub_1B8A9CB9C;
    v5 = v0[28];
    v6 = v0[29];
    v7 = v0[10];

    return sub_1B8A9D6C0(v4, v7, v5, v6);
  }
}

uint64_t sub_1B8A9C88C()
{
  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v1[1] = sub_1B8A9C968;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B8A9C968()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return MEMORY[0x1EEE6DFA0](sub_1B8A9CA88, v3, v2);
}

uint64_t sub_1B8A9CA88()
{
  v1 = *(v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1B8A9CAF4, v1, 0);
}

void sub_1B8A9CAF4()
{
  if (*(v0[23] + 112) == 1)
  {
    v2 = swift_task_alloc();
    v0[39] = v2;
    *v2 = v0;
    v2[1] = sub_1B8A9CB9C;
    v3 = v0[28];
    v4 = v0[29];
    v5 = v0[10];

    sub_1B8A9D6C0(v2, v5, v3, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B8A9CB9C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_1B8A9CEDC;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 184);
    v3 = sub_1B8A9CCB8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1B8A9CCB8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[23];
  if (*(v4 + 112) != 1)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  v5 = *(v4 + 120);
  swift_beginAccess();
  if (*(*(v5 + 16) + 24) < 1)
  {
    (*(v3[13] + 56))(v3[11], 1, 1, v3[12]);

    goto LABEL_11;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B8A9EE18();
  }

  v6 = *(v5 + 16);
  a1 = (*(v3[13] + 32))(v3[11], &v6[((*(v3[13] + 80) + 40) & ~*(v3[13] + 80)) + *(v3[13] + 72) * *(v6 + 4)], v3[12]);
  v7 = *(v6 + 4);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    goto LABEL_18;
  }

  v10 = *(v6 + 3);
  if (v9 >= *(v6 + 2))
  {
    v9 = 0;
  }

  *(v6 + 4) = v9;
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_19;
  }

  v11 = v3[12];
  v12 = v3[13];
  v13 = v3[11];
  *(v6 + 3) = v10 - 1;
  (*(v12 + 56))(v13, 0, 1, v11);
LABEL_11:
  v14 = v3[12];
  v15 = v3[13];
  v16 = v3[11];
  swift_endAccess();
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    v17 = v3[23];
    v18 = v3[11];

    sub_1B8A897C4(v18, &qword_1EBA96AE8, &qword_1B8AF8748);
    *(v17 + 112) = 0;
  }

  else
  {
    v20 = v3[13];
    v19 = v3[14];
    v21 = v3[12];
    (*(v20 + 32))(v19, v3[11], v21);
    sub_1B8AF0868();

    (*(v20 + 8))(v19, v21);
  }

  a1 = sub_1B8A9CFB0;
  a2 = 0;
  a3 = 0;

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1B8A9CEF8(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 184);
  if (*(v5 + 112) == 1)
  {
    sub_1B8A9E818();

    v6 = sub_1B8ADEA08(v5);

    if ((v6 & 1) == 0)
    {
      *(*(v3 + 184) + 112) = 0;
    }

    a1 = sub_1B8A9D0C4;
    a2 = 0;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1B8A9CFB0()
{
  v1 = *(v0 + 248);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 144);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v2, v4);
  *(v0 + 192) = 2;
  *(v0 + 328) = 1;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *(v5 + 16) = *(v0 + 72);
  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  *v6 = v0;
  v6[1] = sub_1B8A9BFA0;
  v7 = *(v0 + 160);

  return sub_1B8AE7358(v7, &unk_1B8AF8768, v5);
}

uint64_t sub_1B8A9D0C4(uint64_t a1)
{
  v2 = v1[31];
  swift_willThrow();
  swift_unknownObjectRelease();

  (*(v1[21] + 8))(v1[22], v1[18]);

  v3 = v1[1];

  return v3();
}

uint64_t sub_1B8A9D1A8()
{
  (*(v0[29] + 16))(v0[30]);
  swift_unknownObjectRelease();
  (*(v0[21] + 8))(v0[22], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B8A9D288(uint64_t a1, void *a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B8A9D2D0, 0, 0);
}

uint64_t sub_1B8A9D2D0()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA96AF8, &qword_1B8AF8758);
  v4 = *(v2 + 80);
  v5 = *(swift_getTupleTypeMetadata2() + 48);
  v6 = (v1 + *(*v1 + 120));
  swift_beginAccess();
  *v3 = *v6;
  v9 = type metadata accessor for CoherentLoadedAssets.LockAndData(0, v4, v7, v8);
  (*(*(v4 - 8) + 16))(&v3[v5], &v6[*(v9 + 28)], v4);
  v11 = v0[1];
  swift_unknownObjectRetain();

  return v11();
}

uint64_t sub_1B8A9D408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 80) = a2;
  *(v3 + 88) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1B8A9D428, 0, 0);
}

uint64_t sub_1B8A9D428()
{
  v16 = v0;
  v2 = v0[10];
  v1 = v0[11];
  swift_beginAccess();
  if (*(v2 + 88) == v1)
  {
    v4 = v0[10];
    v6 = v4[2];
    v5 = v4[3];
    v7 = v4[4];
    sub_1B8A85238((v4 + 5), (v0 + 2));
    v9 = sub_1B8A9D8F0(v15, v6, v5, v7, v0 + 2);
    v11 = v10;
    v12 = v0[10];
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v13 = v15[0];
    v14 = v15[1];
    *(v2 + 88) = v9;
    *(v12 + 96) = v11;
    *(v12 + 104) = v13;
    *(v12 + 120) = v14;
    swift_unknownObjectRelease();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B8A9D574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 80) = a2;
  *(v3 + 88) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1B8A9D594, 0, 0);
}

uint64_t sub_1B8A9D594()
{
  v16 = v0;
  v2 = v0[10];
  v1 = v0[11];
  swift_beginAccess();
  if (*(v2 + 88) == v1)
  {
    v4 = v0[10];
    v6 = v4[2];
    v5 = v4[3];
    v7 = v4[4];
    sub_1B8A85238((v4 + 5), (v0 + 2));
    v9 = sub_1B8A9DD6C(v15, v6, v5, v7, v0 + 2);
    v11 = v10;
    v12 = v0[10];
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v13 = v15[0];
    v14 = v15[1];
    *(v2 + 88) = v9;
    v12[12] = v11;
    v12[13] = v13;
    v12[14] = v14;
    swift_unknownObjectRelease();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B8A9D6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a2;
  v4[14] = a3;
  v5 = *(*a2 + 80);
  v4[15] = v5;
  v6 = type metadata accessor for CoherentLoadedAssets.LockAndData(0, v5, a3, a4);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A9D798, 0, 0);
}

uint64_t sub_1B8A9D798()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = *(*v2 + 120);
  swift_beginAccess();
  if (*(v2 + v3) == v1)
  {
    v5 = v0[18];
    v6 = v0[15];
    sub_1B8A85238(v0[13] + 40, (v0 + 2));

    sub_1B8A984F0(v7, v0 + 2, v6, v5);
    v8 = v0[18];
    v10 = v0[16];
    v11 = v0[17];
    swift_beginAccess();
    (*(v11 + 40))(v2 + v3, v8, v10);
    swift_endAccess();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B8A9D8F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5)
{
  v22[1] = a4;
  v23 = a3;
  v24 = a1;
  v8 = sub_1B8AF03A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a5[3];
  v13 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v12);
  v14 = *(v13 + 8);
  v31 = a2;
  v15 = v14(a2, v12, v13);
  v18 = v17;
  if (!v5)
  {
    v28 = v9 + 16;
    v29 = a5;
    v27 = v9 + 8;
    *&v16 = 136446978;
    v25 = v16;
    v26 = v11;
    v30 = 1;
    ObjectType = swift_getObjectType();
    v20 = (*(v18 + 8))(ObjectType, v18);
    v23(v20);
    (*(v18 + 16))(ObjectType, v18);
  }

  return v15;
}

uint64_t sub_1B8A9DD6C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5)
{
  v22[1] = a4;
  v23 = a3;
  v24 = a1;
  v8 = sub_1B8AF03A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a5[3];
  v13 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v12);
  v14 = *(v13 + 8);
  v31 = a2;
  v15 = v14(a2, v12, v13);
  v18 = v17;
  if (!v5)
  {
    v28 = v9 + 16;
    v29 = a5;
    v27 = v9 + 8;
    *&v16 = 136446978;
    v25 = v16;
    v26 = v11;
    v30 = 1;
    ObjectType = swift_getObjectType();
    v20 = (*(v18 + 8))(ObjectType, v18);
    v23(v20);
    (*(v18 + 16))(ObjectType, v18);
  }

  return v15;
}

uint64_t sub_1B8A9E1E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5, uint64_t a6)
{
  v26 = a6;
  v27 = a1;
  v23 = a4;
  v24 = a3;
  v9 = sub_1B8AF03A8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a5[3];
  v14 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v13);
  v15 = *(v14 + 8);
  v33 = a2;
  v16 = v15(a2, v13, v14);
  v19 = v18;
  if (!v6)
  {
    v32 = v12;
    v29 = v10 + 16;
    v30 = a5;
    v28 = v10 + 8;
    *&v17 = 136446978;
    v25 = v17;
    v31 = 1;
    ObjectType = swift_getObjectType();
    v21 = (*(v19 + 8))(ObjectType, v19);
    v24(v21);
    (*(v19 + 16))(ObjectType, v19);
  }

  return v16;
}

char *CoherentLoadedAssets.deinit()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);

  v2 = *(*v0 + 120);
  v5 = type metadata accessor for CoherentLoadedAssets.LockAndData(0, *(v1 + 80), v3, v4);
  (*(*(v5 - 8) + 8))(&v0[v2], v5);
  return v0;
}

uint64_t CoherentLoadedAssets.__deallocating_deinit()
{
  CoherentLoadedAssets.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B8A9E76C(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B8A7B414;

  return sub_1B8A9D288(a1, v4);
}

unint64_t sub_1B8A9E818()
{
  result = qword_1EBA96B00;
  if (!qword_1EBA96B00)
  {
    type metadata accessor for StandaloneBinarySemaphore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96B00);
  }

  return result;
}

unint64_t sub_1B8A9E870(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B8A9E93C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1B8A7BBE0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1B8A9E93C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B8A9EA48(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B8AF0B18();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1B8A9EA48(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B8A9EA94(a1, a2);
  sub_1B8A9EBC4(&unk_1F3746EB0);
  return v3;
}

void *sub_1B8A9EA94(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B8A9ECB0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B8AF0B18();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B8AF0788();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B8A9ECB0(v10, 0);
        result = sub_1B8AF0A88();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B8A9EBC4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B8A9ED24(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B8A9ECB0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B20, &unk_1B8AF8830);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1B8A9ED24(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B20, &unk_1B8AF8830);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1B8A9EE18()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
  v3 = *(v1 + 16);
  v4 = *(*(v2 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B28, &unk_1B8AFC2B0);
  v5 = swift_allocObject();
  v6 = *(v1 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  if (v6 >= 1)
  {
    sub_1B8ADF7C0(v5 + 16, v5 + ((v4 + 40) & ~v4), (v1 + 16), v1 + ((v4 + 40) & ~v4));
  }

  *v0 = v5;
  return result;
}

uint64_t sub_1B8A9EF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CoherentLoadedAssets.LockAndData(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B8A9F050(uint64_t a1)
{
  result = sub_1B8A9F4AC();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B8A9F0D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void sub_1B8A9F25C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

unint64_t sub_1B8A9F4AC()
{
  result = qword_1EDB75298;
  if (!qword_1EDB75298)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDB75298);
  }

  return result;
}

uint64_t sub_1B8A9F540(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701208435;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x646F6F6C62;
    }

    else
    {
      v4 = 0x6E6F70616577;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x65636E656C6F6976;
    }

    else
    {
      v4 = 1701208435;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x646F6F6C62;
  if (a2 != 2)
  {
    v8 = 0x6E6F70616577;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x65636E656C6F6976;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B8AF0EA8();
  }

  return v11 & 1;
}

uint64_t sub_1B8A9F66C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v5 = 0x5064656375646572;
      v6 = 0xEA00000000005248;
    }

    else
    {
      v5 = 0xD000000000000013;
      if (v2 == 4)
      {
        v6 = 0x80000001B8B05680;
      }

      else
      {
        v6 = 0x80000001B8B056A0;
      }
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x79746569726176;
    if (a1 != 1)
    {
      v4 = 0x616C506567616D69;
      v3 = 0xEF646E756F726779;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0x696A6F6D6E6567;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v7 = 0xEA00000000005248;
      if (v5 != 0x5064656375646572)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v7 = 0x80000001B8B05680;
      }

      else
      {
        v7 = 0x80000001B8B056A0;
      }

      if (v5 != 0xD000000000000013)
      {
        goto LABEL_33;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0xE700000000000000;
      if (v5 != 0x79746569726176)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v7 = 0xEF646E756F726779;
      if (v5 != 0x616C506567616D69)
      {
LABEL_33:
        v8 = sub_1B8AF0EA8();
        goto LABEL_34;
      }
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    if (v5 != 0x696A6F6D6E6567)
    {
      goto LABEL_33;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_33;
  }

  v8 = 1;
LABEL_34:

  return v8 & 1;
}

uint64_t *sub_1B8A9F87C(void *a1)
{
  v3 = v1;
  v5 = [objc_opt_self() instance];
  *(v3 + 16) = a1;
  *(v3 + 24) = v5;
  v6 = a1;
  v7 = sub_1B8AA2CC8();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v11[3] = &type metadata for CoherentAssetLockWrapperFactory;
  v11[4] = &off_1F3748D00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B30, &qword_1B8AF88F8);
  swift_allocObject();
  v9 = sub_1B8AABBF0(v7, sub_1B8AA2E00, v8, v11);
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 32) = v9;
  }

  return v3;
}

char *sub_1B8A9F9D0@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_1B8AA1D18(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1B8A9FA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B8A9FA34, 0, 0);
}

void sub_1B8A9FA34()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = *(v1 + 16);
  v0[10] = v3;
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = -1 << *(v2 + 32);
    if (-v6 < 64)
    {
      v7 = ~(-1 << -v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    while (1)
    {
      if (!v8)
      {
        while (1)
        {
          v10 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            break;
          }

          if (v10 >= ((63 - v6) >> 6))
          {
            if ((v5 & v3) == 0)
            {
              goto LABEL_37;
            }

            if (v0[6])
            {
              v12 = [*v1 pixelBuffer];
              v0[15] = v12;
              v13 = swift_task_alloc();
              v0[16] = v13;
              *v13 = v0;
              v13[1] = sub_1B8AA06CC;

              sub_1B8A81344((v0 + 22), v12);
              return;
            }

LABEL_51:
            __break(1u);
            return;
          }

          v8 = *(v2 + 56 + 8 * v10);
          ++v4;
          if (v8)
          {
            v4 = v10;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_51;
      }

LABEL_13:
      v11 = *(*(v2 + 48) + (__clz(__rbit64(v8)) | (v4 << 6)));
      if (v11 > 10)
      {
        if (v11 == 11)
        {
          v9 = 256;
        }

        else
        {
          if (v11 != 13)
          {
LABEL_6:
            v9 = 0;
            goto LABEL_7;
          }

          v9 = 64;
        }
      }

      else if (v11 == 2)
      {
        v9 = 128;
      }

      else
      {
        if (v11 != 6)
        {
          goto LABEL_6;
        }

        v9 = 32;
      }

LABEL_7:
      v8 &= v8 - 1;
      v5 |= v9;
    }
  }

  v14 = v0[6];
  if ((v3 & 0x80) != 0 && v14)
  {

    v15 = swift_task_alloc();
    v0[11] = v15;
    *v15 = v0;
    v15[1] = sub_1B8A9FE24;
    v16 = v0[4];

    sub_1B8A7EBA8(v16);
  }

  else if ((v3 & 0x40) != 0 && v14)
  {

    v17 = swift_task_alloc();
    v0[13] = v17;
    *v17 = v0;
    v17[1] = sub_1B8AA02DC;
    v18 = v0[4];

    sub_1B8A7F52C(v18);
  }

  else
  {
LABEL_37:
    if ((v3 & 0x100) != 0 && v0[7])
    {

      v19 = swift_task_alloc();
      v0[18] = v19;
      *v19 = v0;
      v19[1] = sub_1B8AA1110;
      v20 = v0[4];

      sub_1B8A7E2D4(v20);
    }

    else if ((v3 & 0x20) != 0 && v0[8])
    {

      v21 = swift_task_alloc();
      v0[20] = v21;
      *v21 = v0;
      v21[1] = sub_1B8AA1444;
      v22 = v0[4];

      sub_1B8A7FC9C(v22);
    }

    else
    {
      v23 = v0[1];

      v23();
    }
  }
}

uint64_t sub_1B8A9FE24(char a1)
{
  v3 = *v2;
  *(v3 + 181) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_1B8AA1768;
  }

  else
  {
    v4 = sub_1B8A9FF3C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8A9FF3C()
{
  v1 = *(*(v0 + 72) + 24);
  v2 = sub_1B8AF0658();

  v3 = [v1 encodeToP1_];

  if (!v3)
  {
    sub_1B8AF0668();
    v3 = sub_1B8AF0658();
  }

  v4 = *(*(v0 + 32) + 8);
  v5 = kSCMLImageSanitizationSignalFlagsAndMaps[0];
  if (*(v0 + 181) > 1u || *(v0 + 181))
  {
    v6 = sub_1B8AF0EA8();
  }

  else
  {
    v6 = 1;
  }

  v7 = v5;

  v8 = [v4 updateSignal:v7 withSafe:v6 & 1 withLabel:v3];

  v9 = *(v0 + 80);
  if ((v9 & 0x40) != 0 && *(v0 + 48))
  {

    v10 = swift_task_alloc();
    *(v0 + 104) = v10;
    *v10 = v0;
    v10[1] = sub_1B8AA02DC;
    v11 = *(v0 + 32);

    return sub_1B8A7F52C(v11);
  }

  else if ((v9 & 0x100) != 0 && *(v0 + 56))
  {

    v13 = swift_task_alloc();
    *(v0 + 144) = v13;
    *v13 = v0;
    v13[1] = sub_1B8AA1110;
    v14 = *(v0 + 32);

    return sub_1B8A7E2D4(v14);
  }

  else if ((v9 & 0x20) != 0 && *(v0 + 64))
  {

    v15 = swift_task_alloc();
    *(v0 + 160) = v15;
    *v15 = v0;
    v15[1] = sub_1B8AA1444;
    v16 = *(v0 + 32);

    return sub_1B8A7FC9C(v16);
  }

  else
  {
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1B8AA02DC(char a1)
{
  v3 = *v2;
  *(v3 + 182) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_1B8AA17CC;
  }

  else
  {
    v4 = sub_1B8AA03F4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8AA03F4()
{
  v1 = *(*(v0 + 72) + 24);
  v2 = sub_1B8AF0658();

  v3 = [v1 encodeToP1_];

  if (!v3)
  {
    sub_1B8AF0668();
    v3 = sub_1B8AF0658();
  }

  v4 = *(*(v0 + 32) + 8);
  v5 = *(v0 + 182) - 3 < 0xFFFFFFFE;
  v6 = kSCMLImageSanitizationSignalASMV2[0];
  v7 = [v4 updateSignal:v6 withSafe:v5 withLabel:v3];

  v8 = *(v0 + 80);
  if ((v8 & 0x100) != 0 && *(v0 + 56))
  {

    v9 = swift_task_alloc();
    *(v0 + 144) = v9;
    *v9 = v0;
    v9[1] = sub_1B8AA1110;
    v10 = *(v0 + 32);

    return sub_1B8A7E2D4(v10);
  }

  else if ((v8 & 0x20) != 0 && *(v0 + 64))
  {

    v12 = swift_task_alloc();
    *(v0 + 160) = v12;
    *v12 = v0;
    v12[1] = sub_1B8AA1444;
    v13 = *(v0 + 32);

    return sub_1B8A7FC9C(v13);
  }

  else
  {
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1B8AA06CC()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1B8AA1830;
  }

  else
  {

    v3 = sub_1B8AA07E8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1B8AA07E8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 176);
  v3 = *(v0 + 177);
  v4 = *(v0 + 178);
  v5 = *(v0 + 179);
  v6 = *(v0 + 180);
  v7 = *(*(v0 + 32) + 8);
  v8 = type metadata accessor for SCMLPeopleCount();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC26SensitiveContentAnalysisML15SCMLPeopleCount_count] = v3;
  *(v0 + 16) = v9;
  *(v0 + 24) = v8;
  v10 = objc_msgSendSuper2((v0 + 16), sel_init);
  [v7 setPeopleCountInternal_];

  if ((v1 & 0x80) == 0)
  {
    v11 = *(v0 + 80);
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    v19 = *(*(v0 + 72) + 24);
    v20 = sub_1B8AF0658();

    v21 = [v19 encodeToP1_];

    if (!v21)
    {
      sub_1B8AF0668();
      v21 = sub_1B8AF0658();
    }

    v22 = kSCMLImageSanitizationSignalASMV2[0];
    v23 = [v7 updateSignal:v22 withSafe:(v6 - 3) < 0xFFFFFFFE withLabel:v21];

    v11 = *(v0 + 80);
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_14;
  }

  v12 = *(*(v0 + 72) + 24);
  v13 = sub_1B8AF0658();

  v14 = [v12 encodeToP1_];

  if (!v14)
  {
    sub_1B8AF0668();
    v14 = sub_1B8AF0658();
  }

  v15 = kSCMLImageSanitizationSignalFlagsAndMaps[0];
  if (v2)
  {
    v16 = sub_1B8AF0EA8();
  }

  else
  {
    v16 = 1;
  }

  v17 = v15;

  v18 = [v7 updateSignal:v17 withSafe:v16 & 1 withLabel:v14];

  v11 = *(v0 + 80);
  if ((v11 & 0x40) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v11 & 0x100) == 0)
  {
    goto LABEL_40;
  }

LABEL_14:
  v24 = 0;
  v25 = 0;
  v26 = *(v0 + 40);
  v27 = -1;
  v28 = -1 << *(v26 + 32);
  if (-v28 < 64)
  {
    v27 = ~(-1 << -v28);
  }

  v29 = v27 & *(v26 + 56);
  v30 = (63 - v28) >> 6;
  while (v29)
  {
LABEL_24:
    v33 = *(*(v26 + 48) + (__clz(__rbit64(v29)) | (v24 << 6)));
    if (v33 > 10)
    {
      if (v33 == 11)
      {
        v31 = 256;
      }

      else
      {
        if (v33 != 13)
        {
LABEL_17:
          v31 = 0;
          goto LABEL_18;
        }

        v31 = 64;
      }
    }

    else if (v33 == 2)
    {
      v31 = 128;
    }

    else
    {
      if (v33 != 6)
      {
        goto LABEL_17;
      }

      v31 = 32;
    }

LABEL_18:
    v29 &= v29 - 1;
    v25 |= v31;
  }

  while (1)
  {
    v32 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_81;
    }

    if (v32 >= v30)
    {
      break;
    }

    v29 = *(v26 + 56 + 8 * v32);
    ++v24;
    if (v29)
    {
      v24 = v32;
      goto LABEL_24;
    }
  }

  if ((v25 & 0x100) != 0)
  {
    v34 = *(*(v0 + 72) + 24);
    v35 = sub_1B8AF0658();

    v36 = [v34 encodeToP1_];

    if (!v36)
    {
      sub_1B8AF0668();
      v36 = sub_1B8AF0658();
    }

    v37 = kSCMLImageSanitizationSignalStructuralIntegrityV2[0];
    if (v5)
    {
      v38 = sub_1B8AF0EA8();
    }

    else
    {
      v38 = 1;
    }

    v39 = v37;

    v40 = [v7 updateSignal:v39 withSafe:v38 & 1 withLabel:v36];

    v11 = *(v0 + 80);
  }

LABEL_40:
  if ((v11 & 0x20) == 0)
  {
LABEL_67:
    if ((v11 & 0x100) != 0 && *(v0 + 56))
    {

      v58 = swift_task_alloc();
      *(v0 + 144) = v58;
      *v58 = v0;
      v58[1] = sub_1B8AA1110;
      v59 = *(v0 + 32);

      sub_1B8A7E2D4(v59);
    }

    else if ((v11 & 0x20) != 0 && *(v0 + 64))
    {

      v60 = swift_task_alloc();
      *(v0 + 160) = v60;
      *v60 = v0;
      v60[1] = sub_1B8AA1444;
      v61 = *(v0 + 32);

      sub_1B8A7FC9C(v61);
    }

    else
    {
      v62 = *(v0 + 8);

      v62();
    }

    return;
  }

  v41 = 0;
  v42 = 0;
  v43 = *(v0 + 40);
  v44 = -1;
  v45 = -1 << *(v43 + 32);
  if (-v45 < 64)
  {
    v44 = ~(-1 << -v45);
  }

  v46 = v44 & *(v43 + 56);
  v47 = (63 - v45) >> 6;
  while (2)
  {
    if (v46)
    {
LABEL_51:
      v50 = *(*(v43 + 48) + (__clz(__rbit64(v46)) | (v41 << 6)));
      if (v50 > 10)
      {
        if (v50 == 11)
        {
          v48 = 0;
          goto LABEL_45;
        }

        if (v50 == 13)
        {
          v48 = 64;
          goto LABEL_45;
        }
      }

      else
      {
        if (v50 == 2)
        {
          v48 = 0x80;
          goto LABEL_45;
        }

        if (v50 == 6)
        {
          v48 = 32;
          goto LABEL_45;
        }
      }

      v48 = 0;
LABEL_45:
      v46 &= v46 - 1;
      v42 |= v48;
      continue;
    }

    break;
  }

  while (1)
  {
    v49 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v49 >= v47)
    {
      if ((v42 & 0x20) != 0)
      {
        v51 = *(*(v0 + 72) + 24);
        v52 = sub_1B8AF0658();

        v53 = [v51 encodeToP1_];

        if (!v53)
        {
          sub_1B8AF0668();
          v53 = sub_1B8AF0658();
        }

        v54 = kSCMLImageSanitizationSignalPrepubescent[0];
        if (v4)
        {
          v55 = sub_1B8AF0EA8();
        }

        else
        {
          v55 = 1;
        }

        v56 = v54;

        v57 = [v7 updateSignal:v56 withSafe:v55 & 1 withLabel:v53];

        v11 = *(v0 + 80);
      }

      goto LABEL_67;
    }

    v46 = *(v43 + 56 + 8 * v49);
    ++v41;
    if (v46)
    {
      v41 = v49;
      goto LABEL_51;
    }
  }

LABEL_81:
  __break(1u);
}

uint64_t sub_1B8AA1110(char a1)
{
  v3 = *v2;
  *(v3 + 183) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_1B8AA1894;
  }

  else
  {
    v4 = sub_1B8AA1228;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8AA1228()
{
  v1 = *(*(v0 + 72) + 24);
  v2 = sub_1B8AF0658();

  v3 = [v1 encodeToP1_];

  if (!v3)
  {
    sub_1B8AF0668();
    v3 = sub_1B8AF0658();
  }

  v4 = *(*(v0 + 32) + 8);
  v5 = kSCMLImageSanitizationSignalStructuralIntegrityV2[0];
  if (*(v0 + 183))
  {
    v6 = sub_1B8AF0EA8();
  }

  else
  {
    v6 = 1;
  }

  v7 = v5;

  v8 = [v4 updateSignal:v7 withSafe:v6 & 1 withLabel:v3];

  if ((*(v0 + 80) & 0x20) != 0 && *(v0 + 64))
  {

    v9 = swift_task_alloc();
    *(v0 + 160) = v9;
    *v9 = v0;
    v9[1] = sub_1B8AA1444;
    v10 = *(v0 + 32);

    return sub_1B8A7FC9C(v10);
  }

  else
  {
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1B8AA1444(char a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_1B8AA18F8;
  }

  else
  {
    v4 = sub_1B8AA155C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8AA155C()
{
  v1 = *(*(v0 + 72) + 24);
  v2 = sub_1B8AF0658();

  v3 = [v1 encodeToP1_];

  if (!v3)
  {
    sub_1B8AF0668();
    v3 = sub_1B8AF0658();
  }

  v4 = *(*(v0 + 32) + 8);
  v5 = kSCMLImageSanitizationSignalPrepubescent[0];
  if (*(v0 + 184) > 1u || *(v0 + 184))
  {
    v6 = sub_1B8AF0EA8();
  }

  else
  {
    v6 = 1;
  }

  v7 = v5;

  v8 = [v4 updateSignal:v7 withSafe:v6 & 1 withLabel:v3];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1B8AA1768()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8AA17CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8AA1830()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8AA1894()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8AA18F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8AA195C()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B8AA19D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B8AA1A30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t *sub_1B8AA1A94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1B8A9F87C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1B8AA1AEC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1B8AA1B10, 0, 0);
}

uint64_t sub_1B8AA1B10()
{

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B8AA1BCC;

  return (sub_1B8A98630)();
}

uint64_t sub_1B8AA1BCC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1B8AA1CF8;
  }

  else
  {
    v2 = sub_1B8AA1CE0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

char *sub_1B8AA1D18(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v113 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v113 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v113 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v113 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v113 - v19;
  v21 = sub_1B8A89360();
  v22 = v1;
  if (v1)
  {

    return v9;
  }

  v121 = v9;
  v122 = v15;
  v115 = v6;
  v116 = v12;
  v125 = 0;
  v9 = v21;

  v23 = [a1 backends];
  v24 = v23;
  v25 = a1;
  if (v9)
  {
    v26 = 0;
    v27 = 0;
    v28 = 1 << v9[32];
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v9 + 7);
    v31 = (v28 + 63) >> 6;
    v32 = v20;
    while (1)
    {
      if (!v30)
      {
        while (1)
        {
          v34 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            __break(1u);
LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          if (v34 >= v31)
          {
            break;
          }

          v30 = *&v9[8 * v34 + 56];
          ++v26;
          if (v30)
          {
            v26 = v34;
            goto LABEL_14;
          }
        }

        if ((v27 & v24) != 0)
        {
          v113 = v18;
          v123 = v9;
          LOBYTE(v20) = 3;
          goto LABEL_27;
        }

        goto LABEL_32;
      }

LABEL_14:
      v35 = *(*(v9 + 6) + (__clz(__rbit64(v30)) | (v26 << 6)));
      if (v35 > 10)
      {
        if (v35 == 11)
        {
          v33 = 256;
        }

        else
        {
          if (v35 != 13)
          {
LABEL_7:
            v33 = 0;
            goto LABEL_8;
          }

          v33 = 64;
        }
      }

      else if (v35 == 2)
      {
        v33 = 128;
      }

      else
      {
        if (v35 != 6)
        {
          goto LABEL_7;
        }

        v33 = 32;
      }

LABEL_8:
      v30 &= v30 - 1;
      v27 |= v33;
    }
  }

  if ((v23 & 0xC0) != 0)
  {
    v113 = v18;
    v123 = 0;
    v32 = v20;
    LOBYTE(v20) = 13;
LABEL_27:
    v36 = [a1 modelManagerServicesUseCaseID];
    v114 = sub_1B8AF0668();
    v120 = v37;

    v124 = a1;
    LODWORD(v18) = [a1 onBehalfOfProcessID];
    v38 = sub_1B8AEFCC8();
    (*(*(v38 - 8) + 56))(v32, 1, 1, v38);
    v119 = type metadata accessor for AFMModel(0);
    v25 = swift_allocObject();
    v22 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
    if (qword_1EDB75388 != -1)
    {
      goto LABEL_98;
    }

    goto LABEL_28;
  }

LABEL_32:
  v49 = 0;
  v22 = v125;
  while (2)
  {
    v32 = &unk_1E7EB4000;
    if (([v25 backends] & 0x100) == 0)
    {
LABEL_62:
      LODWORD(v18) = 0;
      goto LABEL_63;
    }

    if (!v9)
    {
      goto LABEL_56;
    }

    v50 = 0;
    v51 = 0;
    v52 = 1 << v9[32];
    v53 = -1;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    v54 = v53 & *(v9 + 7);
    v55 = (v52 + 63) >> 6;
    while (v54)
    {
LABEL_46:
      v64 = *(*(v9 + 6) + (__clz(__rbit64(v54)) | (v50 << 6)));
      if (v64 > 10)
      {
        if (v64 == 11)
        {
          v62 = 256;
        }

        else
        {
          if (v64 != 13)
          {
LABEL_39:
            v62 = 0;
            goto LABEL_40;
          }

          v62 = 64;
        }
      }

      else if (v64 == 2)
      {
        v62 = 128;
      }

      else
      {
        if (v64 != 6)
        {
          goto LABEL_39;
        }

        v62 = 32;
      }

LABEL_40:
      v54 &= v54 - 1;
      v51 |= v62;
    }

    while (1)
    {
      v63 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_96;
      }

      if (v63 >= v55)
      {
        break;
      }

      v54 = *&v9[8 * v63 + 56];
      ++v50;
      if (v54)
      {
        v50 = v63;
        goto LABEL_46;
      }
    }

    if ((v51 & 0x100) != 0)
    {
      goto LABEL_62;
    }

LABEL_56:
    v125 = v22;
    v123 = v9;
    v65 = [v25 modelManagerServicesUseCaseID];
    v114 = sub_1B8AF0668();
    v119 = v66;

    v124 = v25;
    v113 = [v25 onBehalfOfProcessID];
    v67 = sub_1B8AEFCC8();
    (*(*(v67 - 8) + 56))(v122, 1, 1, v67);
    type metadata accessor for AFMModel(0);
    v18 = swift_allocObject();
    v68 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
    if (qword_1EDB75388 != -1)
    {
      swift_once();
    }

    v120 = v49;
    v9 = sub_1B8AF03A8();
    v69 = __swift_project_value_buffer(v9, qword_1EDB75B38);
    v70 = *(v9 - 1);
    v71 = *(v70 + 16);
    v118 = v68;
    v71(&v18[v68], v69, v9);
    v72 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
    if (qword_1EDB75390 != -1)
    {
      swift_once();
    }

    v73 = sub_1B8AF0328();
    v74 = __swift_project_value_buffer(v73, qword_1EDB75B50);
    v75 = *(v73 - 8);
    v76 = *(v75 + 16);
    v117 = v72;
    v76(&v18[v72], v74, v73);
    v129 = 11;
    v77 = v125;
    sub_1B8A93BF0(&v126);
    if (v77)
    {

      sub_1B8A897C4(v122, &qword_1EBA96528, &unk_1B8AF64B0);
      (*(v70 + 8))(&v18[v118], v9);
      (*(v75 + 8))(&v18[v117], v73);
      swift_deallocPartialClassInstance();

      return v9;
    }

    v125 = v113;
    v102 = &v18[OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter];
    v103 = v127;
    *v102 = v126;
    *(v102 + 1) = v103;
    *(v102 + 4) = v128;
    LOBYTE(v126) = 11;
    v104 = v122;
    v105 = v116;
    sub_1B8AA2E1C(v122, v116);
    type metadata accessor for AFMModelCore(0);
    swift_allocObject();
    v106 = sub_1B8A8AB94(&v126, v114, v119, v125, 0, v105);
    v22 = 0;
    v20 = v106;
    sub_1B8A897C4(v104, &qword_1EBA96528, &unk_1B8AF64B0);
    *&v18[OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core] = v20;
    v9 = v123;
    v25 = v124;
    v49 = v120;
    v32 = &unk_1E7EB4000;
LABEL_63:
    if (([v25 v32[169]] & 0x20) == 0)
    {
LABEL_91:

      return v9;
    }

    if (v9)
    {
      v78 = 0;
      v79 = 0;
      v80 = 1 << v9[32];
      v81 = -1;
      if (v80 < 64)
      {
        v81 = ~(-1 << v80);
      }

      v82 = v81 & *(v9 + 7);
      v83 = (v80 + 63) >> 6;
LABEL_70:
      if (!v82)
      {
        while (1)
        {
          v86 = v78 + 1;
          if (__OFADD__(v78, 1))
          {
            break;
          }

          if (v86 >= v83)
          {
            if ((v79 & 0x20) != 0)
            {
              goto LABEL_91;
            }

            goto LABEL_85;
          }

          v82 = *&v9[8 * v86 + 56];
          ++v78;
          if (v82)
          {
            v78 = v86;
            goto LABEL_75;
          }
        }

LABEL_97:
        __break(1u);
LABEL_98:
        swift_once();
LABEL_28:
        v9 = sub_1B8AF03A8();
        v39 = __swift_project_value_buffer(v9, qword_1EDB75B38);
        v40 = *(v9 - 1);
        v41 = *(v40 + 16);
        v118 = v22;
        v41(&v25[v22], v39, v9);
        v42 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
        if (qword_1EDB75390 != -1)
        {
          swift_once();
        }

        v43 = sub_1B8AF0328();
        v44 = __swift_project_value_buffer(v43, qword_1EDB75B50);
        v45 = *(v43 - 8);
        v46 = *(v45 + 16);
        v117 = v42;
        v46(&v25[v42], v44, v43);
        v129 = v20;
        v47 = v125;
        sub_1B8A93BF0(&v126);
        v48 = v20;
        LOBYTE(v20) = v47;
        if (v47)
        {

          sub_1B8A897C4(v32, &qword_1EBA96528, &unk_1B8AF64B0);
          (*(v40 + 8))(&v25[v118], v9);
          (*(v45 + 8))(&v25[v117], v43);
          swift_deallocPartialClassInstance();

          return v9;
        }

        v56 = v18;
        v57 = &v25[OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter];
        v58 = v127;
        *v57 = v126;
        *(v57 + 1) = v58;
        *(v57 + 4) = v128;
        LOBYTE(v126) = v48;
        v18 = v32;
        v59 = v32;
        v60 = v113;
        sub_1B8AA2E1C(v59, v113);
        type metadata accessor for AFMModelCore(0);
        swift_allocObject();
        v61 = sub_1B8A8AB94(&v126, v114, v120, v56, 0, v60);
        v22 = 0;
        v84 = v61;
        sub_1B8A897C4(v18, &qword_1EBA96528, &unk_1B8AF64B0);
        *&v25[OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core] = v84;
        v49 = v25;
        v9 = v123;
        v25 = v124;
        continue;
      }

LABEL_75:
      v87 = *(*(v9 + 6) + (__clz(__rbit64(v82)) | (v78 << 6)));
      if (v87 > 10)
      {
        if (v87 == 11)
        {
          v85 = 0;
          goto LABEL_69;
        }

        if (v87 == 13)
        {
          v85 = 64;
          goto LABEL_69;
        }
      }

      else
      {
        if (v87 == 2)
        {
          v85 = 0x80;
          goto LABEL_69;
        }

        if (v87 == 6)
        {
          v85 = 32;
          goto LABEL_69;
        }
      }

      v85 = 0;
LABEL_69:
      v82 &= v82 - 1;
      v79 |= v85;
      goto LABEL_70;
    }

    break;
  }

LABEL_85:
  v125 = v22;
  v88 = [v25 modelManagerServicesUseCaseID];
  v116 = sub_1B8AF0668();
  v122 = v89;

  v114 = [v25 onBehalfOfProcessID];
  v90 = sub_1B8AEFCC8();
  (*(*(v90 - 8) + 56))(v121, 1, 1, v90);
  v119 = type metadata accessor for AFMModel(0);
  v91 = swift_allocObject();
  v92 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
  if (qword_1EDB75388 != -1)
  {
    swift_once();
  }

  v123 = v9;
  v124 = v25;
  v120 = v49;
  v93 = sub_1B8AF03A8();
  v94 = __swift_project_value_buffer(v93, qword_1EDB75B38);
  v95 = *(v93 - 8);
  v96 = *(v95 + 16);
  v118 = v92;
  v96(v91 + v92, v94, v93);
  v97 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v9 = sub_1B8AF0328();
  v98 = __swift_project_value_buffer(v9, qword_1EDB75B50);
  v99 = *(v9 - 1);
  v100 = *(v99 + 16);
  v117 = v97;
  v100(v91 + v97, v98, v9);
  v129 = 6;
  v101 = v125;
  sub_1B8A93BF0(&v126);
  if (v101)
  {

    sub_1B8A897C4(v121, &qword_1EBA96528, &unk_1B8AF64B0);
    (*(v95 + 8))(v91 + v118, v93);
    (*(v99 + 8))(v91 + v117, v9);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v108 = v114;
    v109 = v91 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter;
    v110 = v127;
    *v109 = v126;
    *(v109 + 16) = v110;
    *(v109 + 32) = v128;
    LOBYTE(v126) = 6;
    v111 = v115;
    sub_1B8AA2E1C(v121, v115);
    type metadata accessor for AFMModelCore(0);
    swift_allocObject();
    v112 = sub_1B8A8AB94(&v126, v116, v122, v108, 0, v111);

    sub_1B8A897C4(v121, &qword_1EBA96528, &unk_1B8AF64B0);
    *(v91 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core) = v112;
    return v123;
  }

  return v9;
}

uint64_t sub_1B8AA2CC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B38, &unk_1B8AF8900);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B8AF8840;
  v13 = 3;
  sub_1B8A96340(v11);
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v1 = sub_1B8AEFE68();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_0(v11);
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  v13 = 11;
  sub_1B8A96340(v11);
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v4 = sub_1B8AEFE68();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(v11);
  *(v0 + 48) = v4;
  *(v0 + 56) = v6;
  v13 = 6;
  sub_1B8A96340(v11);
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v7 = sub_1B8AEFE68();
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_0(v11);
  *(v0 + 64) = v7;
  *(v0 + 72) = v9;
  return v0;
}

uint64_t sub_1B8AA2E1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8AA2EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B8AA629C(a1, a2, a3, &unk_1F3746D20, &type metadata for CombinedImageSanitizerBackend.BackendInitError, &qword_1EBA96BB8, &qword_1B8AF8CB8);
  v14 = v6;
  MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
  swift_getErrorValue();
  v7 = sub_1B8AF0FE8();
  MEMORY[0x1B8CC5F50](v7);

  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v8 = sub_1B8AD5D84(a1, a2, a3);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v10 = MEMORY[0x1B8CC6010](v8, v9);
  v12 = v11;

  MEMORY[0x1B8CC5F50](v10, v12);

  return v14;
}

uint64_t sub_1B8AA2FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B8AA629C(a1, a2, a3, &unk_1F3746CF8, &type metadata for CombinedImageSanitizerBackend.BackendError, &qword_1EBA96B80, &unk_1B8AF8B40);
  v14 = v6;
  MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
  swift_getErrorValue();
  v7 = sub_1B8AF0FE8();
  MEMORY[0x1B8CC5F50](v7);

  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v8 = sub_1B8AD5D9C(a1, a2, a3);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v10 = MEMORY[0x1B8CC6010](v8, v9);
  v12 = v11;

  MEMORY[0x1B8CC5F50](v10, v12);

  return v14;
}

unint64_t sub_1B8AA3124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF72A0;
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v15;
  sub_1B8AA629C(a1, a2, a3, a4, a5, a6, a7);
  v24 = v16;
  v25 = v17;
  MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
  swift_getErrorValue();
  v18 = sub_1B8AF0FE8();
  MEMORY[0x1B8CC5F50](v18);

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v24;
  *(inited + 56) = v25;
  *(inited + 80) = sub_1B8AF0668();
  *(inited + 88) = v19;
  swift_getErrorValue();
  *(inited + 120) = v23;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  (*(*(v23 - 8) + 16))(boxed_opaque_existential_1);
  v21 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965D0, &qword_1B8AF6740);
  swift_arrayDestroy();
  return v21;
}

uint64_t sub_1B8AA32E4(uint64_t a1)
{
  v2 = sub_1B8AA6AA0();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8AA3320(uint64_t a1)
{
  v2 = sub_1B8AA6AA0();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B8AA33C8(uint64_t a1)
{
  v2 = sub_1B8AA6FFC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8AA3404(uint64_t a1)
{
  v2 = sub_1B8AA6FFC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t *sub_1B8AA3440(void *a1)
{
  v2 = v1;
  v50[1] = *v2;
  v60 = sub_1B8AF02F8();
  v4 = *(v60 - 8);
  v5 = MEMORY[0x1EEE9AC00](v60);
  v59 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = v50 - v7;
  v8 = sub_1B8AF0328();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = a1;
  v12 = qword_1EDB75390;
  v62 = a1;
  if (v12 != -1)
  {
LABEL_21:
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_1EDB75B50);
  v14 = *(v9 + 2);
  v63 = v11;
  v14(v11, v13, v8);
  v15 = sub_1B8ABAD30(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  v64 = v17 + 1;
  v52 = v8;
  v51 = v9;
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1B8ABAD30((v16 > 1), v64, 1, v15);
  }

  v18 = type metadata accessor for AFMPlusImageSanitizerBackend();
  v19 = 0;
  *(v15 + 2) = v64;
  v20 = &v15[16 * v17];
  *(v20 + 4) = v18;
  *(v20 + 5) = &off_1F3748EA8;
  v56 = (v4 + 8);
  v57 = (v4 + 16);
  v65 = MEMORY[0x1E69E7CC0];
  *&v21 = 136315138;
  v53 = v21;
  v8 = v63;
  v9 = v66;
  v61 = v2;
  v58 = v15;
  while (1)
  {
    if (v19 >= *(v15 + 2))
    {
      __break(1u);
      goto LABEL_21;
    }

    v68 = *&v15[16 * v19 + 32];
    v4 = [*(v2 + 24) backends];
    v27 = *(&v68 + 1);
    v11 = v68;
    if (((*(*(&v68 + 1) + 24))(v68, *(&v68 + 1)) & v4) != 0)
    {
      break;
    }

LABEL_7:
    if (v64 == ++v19)
    {

      v51[1](v8, v52);
      *(v2 + 16) = v65;
      return v2;
    }
  }

  v69 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B48, &qword_1B8AF8928);
  v28 = sub_1B8AF06B8();
  v30 = v29;
  sub_1B8AF02E8();

  v31 = sub_1B8AF0318();
  v32 = sub_1B8AF0908();

  v33 = sub_1B8AF0928();
  v55 = v28;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v54 = v32;
    v36 = v35;
    *&v69 = v35;
    *v34 = v53;
    *(v34 + 4) = sub_1B8A9E870(v28, v30, &v69);
    v37 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v31, v54, v37, "SCMLImageSanitizer.init.backend", "backend=%s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1B8CC7D70](v36, -1, -1);
    v38 = v34;
    v9 = v66;
    MEMORY[0x1B8CC7D70](v38, -1, -1);
  }

  v39 = v60;
  (*v57)(v59, v9, v60);
  sub_1B8AF0368();
  swift_allocObject();
  v4 = sub_1B8AF0358();
  (*v56)(v9, v39);
  v40 = *(v27 + 8);
  v70 = v68;
  __swift_allocate_boxed_opaque_existential_1(&v69);
  v41 = v62;
  v42 = v67;
  v40();
  v67 = v42;
  if (!v42)
  {

    v43 = v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = sub_1B8ABAE34(0, v43[2] + 1, 1, v43);
      v71 = v43;
    }

    v2 = v61;
    v46 = v43[2];
    v45 = v43[3];
    if (v46 >= v45 >> 1)
    {
      v65 = sub_1B8ABAE34((v45 > 1), v46 + 1, 1, v43);
      v71 = v65;
    }

    else
    {
      v65 = v43;
    }

    v23 = *(&v70 + 1);
    v22 = v70;
    v24 = __swift_mutable_project_boxed_opaque_existential_1(&v69, v70);
    MEMORY[0x1EEE9AC00](v24);
    v11 = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v11);
    sub_1B8AA644C(v46, v11, &v71, v22, v23);
    __swift_destroy_boxed_opaque_existential_0(&v69);
    v8 = v63;
    sub_1B8AA485C(v63, "SCMLImageSanitizer.init.backend", 31, 2, v4);

    v9 = v66;
    v15 = v58;
    goto LABEL_7;
  }

  __swift_deallocate_boxed_opaque_existential_1(&v69);
  sub_1B8AA6E08();
  swift_allocError();
  *v47 = v55;
  v47[1] = v30;
  v47[2] = v67;
  swift_willThrow();
  v48 = v63;
  sub_1B8AA485C(v63, "SCMLImageSanitizer.init.backend", 31, 2, v4);

  v51[1](v48, v52);
  v2 = v61;

  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t sub_1B8AA3BC8(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_1B8AF02F8();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = sub_1B8AF0328();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AA3CF0, 0, 0);
}

uint64_t sub_1B8AA3CF0()
{
  v34 = v0;
  v1 = *(v0 + 80);
  *(v0 + 208) = [**(v0 + 72) keepGoing];
  v2 = *(v1 + 16);
  *(v0 + 144) = v2;
  v3 = *(v2 + 16);
  *(v0 + 152) = v3;
  if (!v3)
  {
LABEL_18:

    v31 = *(v0 + 8);

    return v31();
  }

  *(v0 + 160) = 0;
  if (*(v2 + 16))
  {
    v4 = 0;
    while (1)
    {
      v5 = *(v0 + 208);
      sub_1B8A85238(v2 + 40 * v4 + 32, v0 + 16);
      if ((v5 & 1) == 0 && ([*(*(v0 + 72) + 8) safe] & 1) == 0)
      {
        break;
      }

      v6 = *(*(v0 + 72) + 16);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      swift_getDynamicType();
      if (((*(*(v0 + 48) + 24))() & v6) != 0)
      {
        goto LABEL_10;
      }

      v7 = *(v0 + 152);
      v8 = *(v0 + 160) + 1;
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      if (v8 == v7)
      {
        goto LABEL_18;
      }

      v4 = *(v0 + 160) + 1;
      *(v0 + 160) = v4;
      v2 = *(v0 + 144);
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_9;
      }
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    goto LABEL_18;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 120);
  v12 = __swift_project_value_buffer(v11, qword_1EDB75B50);
  (*(v10 + 16))(v9, v12, v11);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  DynamicType = swift_getDynamicType();
  v14 = *(v0 + 48);
  *(v0 + 56) = DynamicType;
  *(v0 + 64) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B48, &qword_1B8AF8928);
  v15 = sub_1B8AF06B8();
  v17 = v16;
  *(v0 + 168) = v15;
  *(v0 + 176) = v16;
  sub_1B8AF02E8();

  v18 = sub_1B8AF0318();
  v19 = sub_1B8AF0908();

  if (sub_1B8AF0928())
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v33 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1B8A9E870(v15, v17, &v33);
    v22 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v18, v19, v22, "SCMLImageSanitizer.backend", "backend=%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1B8CC7D70](v21, -1, -1);
    MEMORY[0x1B8CC7D70](v20, -1, -1);
  }

  v23 = *(v0 + 112);
  v24 = *(v0 + 88);
  v25 = *(v0 + 96);
  (*(v25 + 16))(*(v0 + 104), v23, v24);
  sub_1B8AF0368();
  swift_allocObject();
  *(v0 + 184) = sub_1B8AF0358();
  (*(v25 + 8))(v23, v24);
  v26 = *(v0 + 40);
  v27 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v26);
  v32 = (*(v27 + 16) + **(v27 + 16));
  v28 = swift_task_alloc();
  *(v0 + 192) = v28;
  *v28 = v0;
  v28[1] = sub_1B8AA417C;
  v29 = *(v0 + 72);

  return v32(v29, v26, v27);
}

uint64_t sub_1B8AA417C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1B8AA4734;
  }

  else
  {

    v2 = sub_1B8AA4298;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8AA4298()
{
  v35 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  sub_1B8AA485C(v1, "SCMLImageSanitizer.backend", 26, 2, *(v0 + 184));

  (*(v2 + 8))(v1, v3);
  do
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 160) + 1;
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    if (v6 == v5)
    {
      goto LABEL_8;
    }

    v7 = *(v0 + 160) + 1;
    *(v0 + 160) = v7;
    v8 = *(v0 + 144);
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_18;
    }

    v9 = *(v0 + 208);
    sub_1B8A85238(v8 + 40 * v7 + 32, v0 + 16);
    if ((v9 & 1) == 0 && ([*(*(v0 + 72) + 8) safe] & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
LABEL_8:

      v10 = *(v0 + 8);

      return v10();
    }

    v4 = *(*(v0 + 72) + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    swift_getDynamicType();
  }

  while (((*(*(v0 + 48) + 24))() & v4) == 0);
  if (qword_1EDB75390 == -1)
  {
    goto LABEL_12;
  }

LABEL_18:
  swift_once();
LABEL_12:
  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  v14 = *(v0 + 120);
  v15 = __swift_project_value_buffer(v14, qword_1EDB75B50);
  (*(v13 + 16))(v12, v15, v14);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  DynamicType = swift_getDynamicType();
  v17 = *(v0 + 48);
  *(v0 + 56) = DynamicType;
  *(v0 + 64) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B48, &qword_1B8AF8928);
  v18 = sub_1B8AF06B8();
  v20 = v19;
  *(v0 + 168) = v18;
  *(v0 + 176) = v19;
  sub_1B8AF02E8();

  v21 = sub_1B8AF0318();
  v22 = sub_1B8AF0908();

  if (sub_1B8AF0928())
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v34 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1B8A9E870(v18, v20, &v34);
    v25 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v21, v22, v25, "SCMLImageSanitizer.backend", "backend=%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x1B8CC7D70](v24, -1, -1);
    MEMORY[0x1B8CC7D70](v23, -1, -1);
  }

  v26 = *(v0 + 112);
  v27 = *(v0 + 88);
  v28 = *(v0 + 96);
  (*(v28 + 16))(*(v0 + 104), v26, v27);
  sub_1B8AF0368();
  swift_allocObject();
  *(v0 + 184) = sub_1B8AF0358();
  (*(v28 + 8))(v26, v27);
  v29 = *(v0 + 40);
  v30 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v29);
  v33 = (*(v30 + 16) + **(v30 + 16));
  v31 = swift_task_alloc();
  *(v0 + 192) = v31;
  *v31 = v0;
  v31[1] = sub_1B8AA417C;
  v32 = *(v0 + 72);

  return v33(v32, v29, v30);
}

uint64_t sub_1B8AA4734()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v9 = *(v0 + 168);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  sub_1B8AA63F8();
  swift_allocError();
  *v6 = v9;
  *(v6 + 16) = v1;
  swift_willThrow();
  sub_1B8AA485C(v3, "SCMLImageSanitizer.backend", 26, 2, v2);

  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B8AA485C(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_1B8AF0338();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1B8AF0318();
  sub_1B8AF0348();
  v21 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x1B8CC7D70](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B8AA4AF8()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t *sub_1B8AA4B38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1B8AA3440(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1B8AA4B90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B8A7B414;

  return sub_1B8AA3BC8(a1);
}

objc_class *SCMLCombinedImageSanitizerBackend.__allocating_init(configuration:)(void *a1)
{
  v3 = v1;
  v5 = objc_allocWithZone(v3);
  type metadata accessor for CombinedImageSanitizerBackend();
  v6 = swift_allocObject();
  v7 = a1;
  sub_1B8AA3440(v7);
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v5[OBJC_IVAR____TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend_backend] = v6;
    v9.receiver = v5;
    v9.super_class = v3;
    v3 = objc_msgSendSuper2(&v9, sel_init);
  }

  return v3;
}

uint64_t SCMLCombinedImageSanitizerBackend.init(configuration:)(void *a1)
{
  v3 = v1;
  type metadata accessor for CombinedImageSanitizerBackend();
  v5 = swift_allocObject();
  v6 = a1;
  sub_1B8AA3440(v6);
  if (v2)
  {

    type metadata accessor for SCMLCombinedImageSanitizerBackend();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend_backend] = v5;
    v8.receiver = v3;
    v8.super_class = type metadata accessor for SCMLCombinedImageSanitizerBackend();
    v5 = objc_msgSendSuper2(&v8, sel_init);
  }

  return v5;
}

uint64_t sub_1B8AA4EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_1B8AF02F8();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v6 = sub_1B8AF0328();
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AA5014, 0, 0);
}

uint64_t sub_1B8AA5014()
{
  v42 = v0;
  v1 = *(v0 + 112);
  *(v0 + 16) = v1;
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  *(v0 + 24) = v4;
  *(v0 + 32) = v3;
  *(v0 + 40) = xmmword_1B8AF8910;
  v5 = *(v2 + OBJC_IVAR____TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend_backend);
  v6 = v1;
  v7 = v4;
  *(v0 + 264) = [v6 keepGoing];
  v8 = *(v5 + 16);
  *(v0 + 200) = v8;
  v9 = *(v8 + 16);
  *(v0 + 208) = v9;
  if (!v9)
  {
LABEL_18:
    v36 = *(v0 + 24);
    v37 = *(v0 + 40);
    v38 = *(v0 + 48);

    sub_1B8A89878(v37, v38);

    v39 = *(v0 + 8);

    return v39();
  }

  *(v0 + 216) = 0;
  if (*(v8 + 16))
  {
    v10 = 0;
    while (1)
    {
      v11 = *(v0 + 264);
      sub_1B8A85238(v8 + 40 * v10 + 32, v0 + 56);
      if ((v11 & 1) == 0 && ![*(v0 + 24) safe])
      {
        break;
      }

      v12 = *(v0 + 32);
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      swift_getDynamicType();
      if (((*(*(v0 + 88) + 24))() & v12) != 0)
      {
        goto LABEL_10;
      }

      v13 = *(v0 + 208);
      v14 = *(v0 + 216) + 1;
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      if (v14 == v13)
      {
        goto LABEL_18;
      }

      v10 = *(v0 + 216) + 1;
      *(v0 + 216) = v10;
      v8 = *(v0 + 200);
      if (v10 >= *(v8 + 16))
      {
        goto LABEL_9;
      }
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    goto LABEL_18;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 184);
  v15 = *(v0 + 192);
  v17 = *(v0 + 176);
  v18 = __swift_project_value_buffer(v17, qword_1EDB75B50);
  (*(v16 + 16))(v15, v18, v17);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  DynamicType = swift_getDynamicType();
  v20 = *(v0 + 88);
  *(v0 + 96) = DynamicType;
  *(v0 + 104) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B48, &qword_1B8AF8928);
  v21 = sub_1B8AF06B8();
  v23 = v22;
  *(v0 + 224) = v21;
  *(v0 + 232) = v22;
  sub_1B8AF02E8();

  v24 = sub_1B8AF0318();
  v25 = sub_1B8AF0908();

  if (sub_1B8AF0928())
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v41 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1B8A9E870(v21, v23, &v41);
    v28 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v24, v25, v28, "SCMLImageSanitizer.backend", "backend=%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1B8CC7D70](v27, -1, -1);
    MEMORY[0x1B8CC7D70](v26, -1, -1);
  }

  v29 = *(v0 + 168);
  v30 = *(v0 + 144);
  v31 = *(v0 + 152);
  (*(v31 + 16))(*(v0 + 160), v29, v30);
  sub_1B8AF0368();
  swift_allocObject();
  *(v0 + 240) = sub_1B8AF0358();
  (*(v31 + 8))(v29, v30);
  v32 = *(v0 + 80);
  v33 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v32);
  v40 = (*(v33 + 16) + **(v33 + 16));
  v34 = swift_task_alloc();
  *(v0 + 248) = v34;
  *v34 = v0;
  v34[1] = sub_1B8AA54F8;

  return v40(v0 + 16, v32, v33);
}

uint64_t sub_1B8AA54F8()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1B8AA5AC8;
  }

  else
  {

    v2 = sub_1B8AA5614;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8AA5614()
{
  v37 = v0;
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  sub_1B8AA485C(v1, "SCMLImageSanitizer.backend", 26, 2, *(v0 + 240));

  (*(v2 + 8))(v1, v3);
  do
  {
    v5 = *(v0 + 208);
    v6 = *(v0 + 216) + 1;
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    if (v6 == v5)
    {
      goto LABEL_8;
    }

    v7 = *(v0 + 216) + 1;
    *(v0 + 216) = v7;
    v8 = *(v0 + 200);
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_18;
    }

    v9 = *(v0 + 264);
    sub_1B8A85238(v8 + 40 * v7 + 32, v0 + 56);
    if ((v9 & 1) == 0 && ![*(v0 + 24) safe])
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
LABEL_8:
      v10 = *(v0 + 24);
      v11 = *(v0 + 40);
      v12 = *(v0 + 48);

      sub_1B8A89878(v11, v12);

      v13 = *(v0 + 8);

      return v13();
    }

    v4 = *(v0 + 32);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    swift_getDynamicType();
  }

  while (((*(*(v0 + 88) + 24))() & v4) == 0);
  if (qword_1EDB75390 == -1)
  {
    goto LABEL_12;
  }

LABEL_18:
  swift_once();
LABEL_12:
  v16 = *(v0 + 184);
  v15 = *(v0 + 192);
  v17 = *(v0 + 176);
  v18 = __swift_project_value_buffer(v17, qword_1EDB75B50);
  (*(v16 + 16))(v15, v18, v17);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  DynamicType = swift_getDynamicType();
  v20 = *(v0 + 88);
  *(v0 + 96) = DynamicType;
  *(v0 + 104) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B48, &qword_1B8AF8928);
  v21 = sub_1B8AF06B8();
  v23 = v22;
  *(v0 + 224) = v21;
  *(v0 + 232) = v22;
  sub_1B8AF02E8();

  v24 = sub_1B8AF0318();
  v25 = sub_1B8AF0908();

  if (sub_1B8AF0928())
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1B8A9E870(v21, v23, &v36);
    v28 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v24, v25, v28, "SCMLImageSanitizer.backend", "backend=%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1B8CC7D70](v27, -1, -1);
    MEMORY[0x1B8CC7D70](v26, -1, -1);
  }

  v29 = *(v0 + 168);
  v30 = *(v0 + 144);
  v31 = *(v0 + 152);
  (*(v31 + 16))(*(v0 + 160), v29, v30);
  sub_1B8AF0368();
  swift_allocObject();
  *(v0 + 240) = sub_1B8AF0358();
  (*(v31 + 8))(v29, v30);
  v32 = *(v0 + 80);
  v33 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v32);
  v35 = (*(v33 + 16) + **(v33 + 16));
  v34 = swift_task_alloc();
  *(v0 + 248) = v34;
  *v34 = v0;
  v34[1] = sub_1B8AA54F8;

  return v35(v0 + 16, v32, v33);
}

uint64_t sub_1B8AA5AC8()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v12 = *(v0 + 224);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 176);
  sub_1B8AA63F8();
  swift_allocError();
  *v6 = v12;
  *(v6 + 16) = v1;
  swift_willThrow();
  sub_1B8AA485C(v3, "SCMLImageSanitizer.backend", 26, 2, v2);

  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v7 = *(v0 + 24);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);

  sub_1B8A89878(v8, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1B8AA5DAC(void *a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[9] = a3;
  v5[10] = a5;
  v5[7] = a1;
  v5[8] = a2;
  v5[11] = _Block_copy(aBlock);
  v9 = a1;
  v10 = a2;
  v11 = a5;

  return MEMORY[0x1EEE6DFA0](sub_1B8AA5E44, 0, 0);
}

uint64_t sub_1B8AA5E44()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  *(v0 + 16) = v1;
  v3 = *(v0 + 72);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = xmmword_1B8AF8910;
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_1B8AA5F14;

  return sub_1B8AA3BC8(v0 + 16);
}

uint64_t sub_1B8AA5F14()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1B8AA60D4;
  }

  else
  {
    v2 = sub_1B8AA6028;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8AA6028()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);

  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);

  sub_1B8A89878(v5, v6);
  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 88));
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B8AA60D4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);

  v5 = *(v0 + 24);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);

  sub_1B8A89878(v6, v7);
  v8 = sub_1B8AEFBC8();

  (*(v2 + 16))(v2, v8);
  _Block_release(*(v0 + 88));
  v9 = *(v0 + 8);

  return v9();
}

id SCMLCombinedImageSanitizerBackend.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SCMLCombinedImageSanitizerBackend.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCMLCombinedImageSanitizerBackend();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B8AA629C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v21 = MEMORY[0x1E69E6158];
  v22 = MEMORY[0x1E69E6160];
  v19 = a1;
  v20 = a2;
  swift_bridgeObjectRetain_n();
  v11 = TerseEncoder.encode(_:typeNameStyle:)(&v19, a4);
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_0(&v19);

  v19 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v14 = sub_1B8AF06D8();
  v16 = sub_1B8AEC790(v14, v15);
  v18 = v17;

  v19 = v16;
  v20 = v18;
  MEMORY[0x1B8CC5F50](40, 0xE100000000000000);
  MEMORY[0x1B8CC5F50](v11, v13);

  MEMORY[0x1B8CC5F50](41, 0xE100000000000000);
}

unint64_t sub_1B8AA63F8()
{
  result = qword_1EDB74A08;
  if (!qword_1EDB74A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB74A08);
  }

  return result;
}

uint64_t sub_1B8AA644C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1B8A4270C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1B8AA64E4()
{
  v0 = sub_1B8ABAD30(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    v0 = sub_1B8ABAD30((v1 > 1), v2 + 1, 1, v0);
  }

  v4 = type metadata accessor for AFMPlusImageSanitizerBackend();
  v5 = 0;
  *(v0 + 2) = v3;
  v6 = &v0[16 * v2];
  *(v6 + 4) = v4;
  *(v6 + 5) = &off_1F3748EA8;
  v7 = v0 + 40;
  do
  {
    v5 |= (*(*v7 + 24))();
    v7 += 16;
    --v3;
  }

  while (v3);

  return v5;
}

uint64_t _s26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackendC026resolveStructuralIntegrityH0So09SCMLImageG8BackendsVyFZ_0()
{
  v2[1] = 11;
  AFMModel.Task.afmPlusMode.getter(v2);
  if (v2[0])
  {
    v0 = sub_1B8AF0EA8();

    if ((v0 & 1) == 0)
    {
      return 256;
    }
  }

  else
  {
  }

  return 8;
}

uint64_t _s26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackendC022resolveViolenceAndGoreH0So09SCMLImageG8BackendsVyFZ_0()
{
  v2[1] = 13;
  AFMModel.Task.afmPlusMode.getter(v2);
  if (v2[0])
  {
    v0 = sub_1B8AF0EA8();

    if ((v0 & 1) == 0)
    {
      return 64;
    }
  }

  else
  {
  }

  return 4;
}

uint64_t _s26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackendC019resolvePrepubescentH0So09SCMLImageG8BackendsVyFZ_0()
{
  v2[1] = 6;
  AFMModel.Task.afmPlusMode.getter(v2);
  if (v2[0])
  {
    v0 = sub_1B8AF0EA8();

    if ((v0 & 1) == 0)
    {
      return 32;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t _s26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackendC019resolveFlagsAndMapsH0So09SCMLImageG8BackendsVyFZ_0()
{
  v2[1] = 2;
  AFMModel.Task.afmPlusMode.getter(v2);
  if (v2[0])
  {
    v0 = sub_1B8AF0EA8();

    if ((v0 & 1) == 0)
    {
      return 128;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t dispatch thunk of SCMLCombinedImageSanitizerBackend.sanitize(request:output:backends:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x60);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B8A7B414;

  return v11(a1, a2, a3);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_1B8AA6AA0()
{
  result = qword_1EBA96B50;
  if (!qword_1EBA96B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96B50);
  }

  return result;
}

unint64_t sub_1B8AA6AF4()
{
  result = qword_1EBA96B58;
  if (!qword_1EBA96B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96B58);
  }

  return result;
}

unint64_t sub_1B8AA6B48()
{
  result = qword_1EBA96B60;
  if (!qword_1EBA96B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96B60);
  }

  return result;
}

unint64_t sub_1B8AA6B9C()
{
  result = qword_1EBA96B68;
  if (!qword_1EBA96B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96B68);
  }

  return result;
}

uint64_t sub_1B8AA6BF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B8A7B414;

  return sub_1B8AA5DAC(v2, v3, v4, v5, v6);
}

uint64_t sub_1B8AA6CB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B8AA7150;

  return sub_1B8AD75C8(v2, v3, v4);
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}