uint64_t sub_24A8AD6D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A8AF850(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A8AD700(uint64_t a1)
{
  v2 = sub_24A8B1444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8AD73C(uint64_t a1)
{
  v2 = sub_24A8B1444();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24A8AD778@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24A8AF968(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_24A8AD7E0()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_24A8AD814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_24A8BB804() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A8BB804();

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

uint64_t sub_24A8AD8F0(uint64_t a1)
{
  v2 = sub_24A8B25EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8AD92C(uint64_t a1)
{
  v2 = sub_24A8B25EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A8ADA04()
{
  v1 = 0x74736575716572;
  if (*v0 != 1)
  {
    v1 = 0x65736E6F70736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4464657472617473;
  }
}

uint64_t sub_24A8ADA6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A8AFC18(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A8ADA94(uint64_t a1)
{
  v2 = sub_24A8AF5DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8ADAD0(uint64_t a1)
{
  v2 = sub_24A8AF5DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A8ADB3C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x646F6874656DLL;
    v6 = 0x7372655670747468;
    if (a1 != 2)
    {
      v6 = 0x7365696B6F6F63;
    }

    if (a1)
    {
      v5 = 7107189;
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
    v1 = 0x6953726564616568;
    v2 = 0x657A695379646F62;
    if (a1 != 7)
    {
      v2 = 0x746E656D6D6F63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x73726564616568;
    if (a1 != 4)
    {
      v3 = 0x7274537972657571;
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

uint64_t sub_24A8ADC60(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79600, &qword_24A8BDF70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8B0C0C();
  sub_24A8BB984();
  LOBYTE(v11) = 0;
  sub_24A8BB6E4();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_24A8BB6E4();
    LOBYTE(v11) = 2;
    sub_24A8BB6E4();
    v11 = v3[6];
    HIBYTE(v10) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79608, &qword_24A8BDF78);
    sub_24A8B1DF8(&qword_27EF79610, &qword_27EF79608, &qword_24A8BDF78, MEMORY[0x277D83948]);
    sub_24A8BB704();
    v11 = v3[7];
    HIBYTE(v10) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF795B0, &qword_24A8BDF58);
    sub_24A8B0A84(&qword_27EF795D8, sub_24A8B0AFC, MEMORY[0x277D83948]);
    sub_24A8BB704();
    v11 = v3[8];
    HIBYTE(v10) = 5;
    sub_24A8BB704();
    LOBYTE(v11) = 6;
    sub_24A8BB6F4();
    LOBYTE(v11) = 7;
    sub_24A8BB6F4();
    LOBYTE(v11) = 8;
    sub_24A8BB6D4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24A8ADFB8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF795D0, &qword_24A8BDF60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8B0988();
  sub_24A8BB984();
  LOBYTE(v16) = 0;
  sub_24A8BB6F4();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_24A8BB6E4();
    LOBYTE(v16) = 2;
    sub_24A8BB6E4();
    *&v16 = *(v3 + 40);
    LOBYTE(v14[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF795B0, &qword_24A8BDF58);
    sub_24A8B0A84(&qword_27EF795D8, sub_24A8B0AFC, MEMORY[0x277D83948]);
    sub_24A8BB704();
    v9 = *(v3 + 64);
    v10 = *(v3 + 96);
    v22 = *(v3 + 80);
    v23 = v10;
    v11 = *(v3 + 64);
    v21[0] = *(v3 + 48);
    v21[1] = v11;
    v12 = *(v3 + 96);
    v18 = v22;
    v19 = v12;
    v24 = *(v3 + 112);
    v20 = *(v3 + 112);
    v16 = v21[0];
    v17 = v9;
    v25 = 4;
    sub_24A8B0B50(v21, v14);
    sub_24A8B0B88();
    sub_24A8BB704();
    v14[2] = v18;
    v14[3] = v19;
    v15 = v20;
    v14[1] = v17;
    v14[0] = v16;
    sub_24A8B0BDC(v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24A8AE298(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), uint64_t a9)
{
  v20[2] = a3;
  v20[0] = a4;
  v20[1] = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (a8)(v15, v16, v17);
  sub_24A8BB984();
  v22 = 0;
  v18 = v20[3];
  sub_24A8BB6E4();
  if (!v18)
  {
    v21 = 1;
    sub_24A8BB6E4();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_24A8AE430@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A8AFD38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A8AE464(uint64_t a1)
{
  v2 = sub_24A8B0C0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8AE4A0(uint64_t a1)
{
  v2 = sub_24A8B0C0C();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_24A8AE4DC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24A8B0024(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_24A8AE554()
{
  v1 = *v0;
  v2 = 0x737574617473;
  v3 = 0x7372655670747468;
  v4 = 0x73726564616568;
  if (v1 != 3)
  {
    v4 = 0x746E65746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6554737574617473;
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

uint64_t sub_24A8AE5F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A8B03CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A8AE620(uint64_t a1)
{
  v2 = sub_24A8B0988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8AE65C(uint64_t a1)
{
  v2 = sub_24A8B0988();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24A8AE698@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24A8B0584(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

unint64_t sub_24A8AE718()
{
  result = qword_27EF79538;
  if (!qword_27EF79538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79538);
  }

  return result;
}

unint64_t sub_24A8AE7A4()
{
  result = qword_27EF79540;
  if (!qword_27EF79540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79540);
  }

  return result;
}

uint64_t sub_24A8AE7F8()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_24A8AE828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_24A8BB804() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A8BB804();

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

uint64_t sub_24A8AE900(uint64_t a1)
{
  v2 = sub_24A8B17C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8AE93C(uint64_t a1)
{
  v2 = sub_24A8B17C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A8AE9BC@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = sub_24A8B15D0(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
    a6[3] = v11;
  }

  return result;
}

uint64_t sub_24A8AEA60()
{
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

uint64_t sub_24A8AEB34(uint64_t a1)
{
  sub_24A8BB2C4();
}

uint64_t sub_24A8AEBF4(uint64_t a1)
{
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

unint64_t sub_24A8AECC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A8B1814(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A8AECF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1954047348;
  v5 = 0xE400000000000000;
  v6 = 1702521203;
  v7 = 0xE700000000000000;
  v8 = 0x746E656D6D6F63;
  if (v2 != 3)
  {
    v8 = 0x676E69646F636E65;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65707954656D696DLL;
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

uint64_t sub_24A8AED84()
{
  v1 = *v0;
  v2 = 1954047348;
  v3 = 1702521203;
  v4 = 0x746E656D6D6F63;
  if (v1 != 3)
  {
    v4 = 0x676E69646F636E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65707954656D696DLL;
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

unint64_t sub_24A8AEE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A8B1814(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A8AEE38(uint64_t a1)
{
  v2 = sub_24A8B1D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8AEE74(uint64_t a1)
{
  v2 = sub_24A8B1D50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A8AEEB0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF796F0, &qword_24A8BE590);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8B1D50();
  sub_24A8BB984();
  v9 = *(v3 + 8);
  v27 = v6;
  if (!v9)
  {
    v14 = 0;
    v25 = 0;
    v26 = 0;
    v13 = 0xF000000000000000;
    goto LABEL_7;
  }

  if (qword_27EF78FF8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A8BB294();
  __swift_project_value_buffer(v10, qword_27EF7D4D8);
  result = sub_24A8BB264();
  v13 = v12;
  v26 = result;
  if (v12 >> 60 == 15)
  {
    v9 = 0;
    v14 = 0;
    v25 = 0;
LABEL_7:
    v33 = 1;
    goto LABEL_20;
  }

  v15 = result;
  v16 = v12 >> 62;
  if ((v12 >> 62) <= 1)
  {
    if (!v16)
    {
      sub_24A88C814(result, v12);
      v17 = BYTE6(v13);
      goto LABEL_17;
    }

LABEL_15:
    LODWORD(v17) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v17 = v17;
    goto LABEL_17;
  }

  if (v16 != 2)
  {
    sub_24A88C814(result, v12);
    v25 = 0;
    goto LABEL_19;
  }

  v19 = *(result + 16);
  v18 = *(result + 24);
  v20 = __OFSUB__(v18, v19);
  v17 = v18 - v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  v25 = v17;
LABEL_19:
  sub_24A88C9AC(v15, v13);
  v21 = sub_24A8BB014();
  v22 = v15;
  v9 = v21;
  v14 = v23;
  sub_24A88C814(v22, v13);
  v33 = 0;
LABEL_20:
  *&v29 = v9;
  *(&v29 + 1) = v14;
  v28[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79128, &unk_24A8BDA50);
  sub_24A8B1DF8(&qword_27EF796F8, &qword_27EF79128, &unk_24A8BDA50, MEMORY[0x277D84F40]);
  sub_24A8BB704();
  if (v2)
  {
    (*(v27 + 8))(v8, v5);
    sub_24A88C814(v26, v13);
  }

  else
  {

    v32 = *(v3 + 16);
    v29 = *(v3 + 16);
    v34 = 1;
    sub_24A8B1E58(&v32, v28);
    sub_24A8BB704();
    sub_24A8B1EC8(&v32);
    *&v29 = v25;
    BYTE8(v29) = v33;
    v28[0] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79700, &qword_24A8BE598);
    sub_24A8B1F30();
    sub_24A8BB704();
    v31 = *(v3 + 40);
    v29 = *(v3 + 40);
    v34 = 3;
    sub_24A8B1E58(&v31, v28);
    sub_24A8BB704();
    sub_24A8B1EC8(&v31);
    v29 = *(v3 + 56);
    v30 = v29;
    v34 = 4;
    sub_24A8B1E58(&v30, v28);
    sub_24A8BB704();
    sub_24A88C814(v26, v13);
    sub_24A8B1EC8(&v30);
    return (*(v27 + 8))(v8, v5);
  }
}

__n128 sub_24A8AF384@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result.n128_u64[0] = sub_24A8B1860(a2, v6).n128_u64[0];
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_24A8AF3F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79548, &qword_24A8BDF38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8AE718();
  sub_24A8BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  sub_24A8AF588();
  sub_24A8BB6A4();
  (*(v6 + 8))(v8, v5);
  v9 = v16;
  v14 = v17;
  v15 = v18;
  v10 = v19;
  v11 = v20;
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v9;
  v13 = v15;
  *(a2 + 8) = v14;
  *(a2 + 24) = v13;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  return result;
}

unint64_t sub_24A8AF588()
{
  result = qword_27EF79550;
  if (!qword_27EF79550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79550);
  }

  return result;
}

unint64_t sub_24A8AF5DC()
{
  result = qword_27EF79560;
  if (!qword_27EF79560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79560);
  }

  return result;
}

unint64_t sub_24A8AF630()
{
  result = qword_27EF79570;
  if (!qword_27EF79570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79570);
  }

  return result;
}

unint64_t sub_24A8AF6B4()
{
  result = qword_27EF79578;
  if (!qword_27EF79578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79578);
  }

  return result;
}

unint64_t sub_24A8AF740()
{
  result = qword_27EF79590;
  if (!qword_27EF79590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79590);
  }

  return result;
}

unint64_t sub_24A8AF7CC()
{
  result = qword_27EF79598;
  if (!qword_27EF79598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79598);
  }

  return result;
}

uint64_t sub_24A8AF850(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_24A8BB804() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7461657263 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24A8BB804();

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

uint64_t sub_24A8AF968@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF796A8, &qword_24A8BE570);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8B1444();
  sub_24A8BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v17 = 0;
  v9 = sub_24A8BB664();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79688, &qword_24A8BE568);
  v16 = 1;
  sub_24A8B1498(&qword_27EF796B0, &qword_27EF796B8, &unk_24A8BDEB4, MEMORY[0x277D83978]);
  sub_24A8BB6A4();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];

  __swift_destroy_boxed_opaque_existential_0Tm(a1);

  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = 0xD000000000000010;
  a2[4] = 0x800000024A8C08D0;
  a2[5] = 3157553;
  a2[6] = 0xE300000000000000;
  return result;
}

uint64_t sub_24A8AFC18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4464657472617473 && a2 == 0xEF656D6954657461;
  if (v4 || (sub_24A8BB804() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24A8BB804();

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

uint64_t sub_24A8AFD38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F6874656DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_24A8BB804() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7372655670747468 && a2 == 0xEB000000006E6F69 || (sub_24A8BB804() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365696B6F6F63 && a2 == 0xE700000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73726564616568 && a2 == 0xE700000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7274537972657571 && a2 == 0xEB00000000676E69 || (sub_24A8BB804() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6953726564616568 && a2 == 0xEA0000000000657ALL || (sub_24A8BB804() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657A695379646F62 && a2 == 0xE800000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746E656D6D6F63 && a2 == 0xE700000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_24A8BB804();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_24A8B0024@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF795F0, &qword_24A8BDF68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8B0C0C();
  sub_24A8BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = sub_24A8BB664();
  v28 = v10;
  LOBYTE(v36[0]) = 1;
  v11 = sub_24A8BB664();
  v27 = v12;
  v25 = v11;
  LOBYTE(v36[0]) = 2;
  v24 = sub_24A8BB664();
  v26 = v13;
  v37 = 8;
  v14 = sub_24A8BB654();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  *&v29 = v9;
  v17 = v28;
  *(&v29 + 1) = v28;
  *&v30 = v25;
  v18 = v27;
  *(&v30 + 1) = v27;
  *&v31 = v24;
  *(&v31 + 1) = v26;
  v19 = MEMORY[0x277D84F90];
  *&v32 = MEMORY[0x277D84F90];
  *(&v32 + 1) = MEMORY[0x277D84F90];
  *&v33 = MEMORY[0x277D84F90];
  *(&v33 + 1) = -1;
  *&v34 = -1;
  *(&v34 + 1) = v14;
  v35 = v16;
  sub_24A8AF708(&v29, v36);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v36[0] = v9;
  v36[1] = v17;
  v36[2] = v25;
  v36[3] = v18;
  v36[4] = v24;
  v36[5] = v26;
  v36[6] = v19;
  v36[7] = v19;
  v36[8] = v19;
  v36[9] = -1;
  v36[10] = -1;
  v36[11] = v14;
  v36[12] = v16;
  result = sub_24A8AF684(v36);
  v21 = v34;
  *(a2 + 64) = v33;
  *(a2 + 80) = v21;
  *(a2 + 96) = v35;
  v22 = v30;
  *a2 = v29;
  *(a2 + 16) = v22;
  v23 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v23;
  return result;
}

uint64_t sub_24A8B03CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (sub_24A8BB804() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6554737574617473 && a2 == 0xEA00000000007478 || (sub_24A8BB804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7372655670747468 && a2 == 0xEB000000006E6F69 || (sub_24A8BB804() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73726564616568 && a2 == 0xE700000000000000 || (sub_24A8BB804() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24A8BB804();

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

uint64_t sub_24A8B0584@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF795A0, &qword_24A8BDF50);
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v7 = &v24 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8B0988();
  sub_24A8BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v8 = v5;
  v29 = a2;
  LOBYTE(v38[0]) = 0;
  v9 = v55;
  v10 = sub_24A8BB694();
  LOBYTE(v38[0]) = 1;
  v27 = sub_24A8BB664();
  v28 = v11;
  LOBYTE(v38[0]) = 2;
  v25 = sub_24A8BB664();
  v26 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF795B0, &qword_24A8BDF58);
  LOBYTE(v30) = 3;
  sub_24A8B0A84(&qword_27EF795B8, sub_24A8B09DC, MEMORY[0x277D83978]);
  sub_24A8BB6A4();
  v13 = v38[0];
  v44 = 4;
  sub_24A8B0A30();
  sub_24A8BB6A4();
  (*(v8 + 8))(v7, v9);
  v52 = v47;
  v53 = v48;
  v54 = v49;
  v50 = v45;
  v51 = v46;
  v14 = v26;
  v15 = v27;
  *&v30 = v10;
  *(&v30 + 1) = v27;
  v16 = v13;
  v17 = v28;
  v18 = v25;
  *&v31 = v28;
  *(&v31 + 1) = v25;
  *&v32 = v26;
  *(&v32 + 1) = v16;
  v37 = v49;
  v35 = v47;
  v36 = v48;
  v33 = v45;
  v34 = v46;
  sub_24A8AF794(&v30, v38);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v38[0] = v10;
  v38[1] = v15;
  v38[2] = v17;
  v38[3] = v18;
  v38[4] = v14;
  v38[5] = v16;
  v41 = v52;
  v42 = v53;
  v43 = v54;
  v39 = v50;
  v40 = v51;
  result = sub_24A8AF820(v38);
  v20 = v35;
  v21 = v29;
  *(v29 + 64) = v34;
  *(v21 + 80) = v20;
  *(v21 + 96) = v36;
  *(v21 + 112) = v37;
  v22 = v31;
  *v21 = v30;
  *(v21 + 16) = v22;
  v23 = v33;
  *(v21 + 32) = v32;
  *(v21 + 48) = v23;
  return result;
}

unint64_t sub_24A8B0988()
{
  result = qword_27EF795A8;
  if (!qword_27EF795A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF795A8);
  }

  return result;
}

unint64_t sub_24A8B09DC()
{
  result = qword_27EF795C0;
  if (!qword_27EF795C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF795C0);
  }

  return result;
}

unint64_t sub_24A8B0A30()
{
  result = qword_27EF795C8;
  if (!qword_27EF795C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF795C8);
  }

  return result;
}

uint64_t sub_24A8B0A84(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF795B0, &qword_24A8BDF58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A8B0AFC()
{
  result = qword_27EF795E0;
  if (!qword_27EF795E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF795E0);
  }

  return result;
}

unint64_t sub_24A8B0B88()
{
  result = qword_27EF795E8;
  if (!qword_27EF795E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF795E8);
  }

  return result;
}

unint64_t sub_24A8B0C0C()
{
  result = qword_27EF795F8;
  if (!qword_27EF795F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF795F8);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for HARRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HARRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24A8B0E7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24A8B0EC4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24A8B0F44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_24A8B0FA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24A8B1028()
{
  result = qword_27EF79618;
  if (!qword_27EF79618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79618);
  }

  return result;
}

unint64_t sub_24A8B1080()
{
  result = qword_27EF79620;
  if (!qword_27EF79620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79620);
  }

  return result;
}

unint64_t sub_24A8B10D8()
{
  result = qword_27EF79628;
  if (!qword_27EF79628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79628);
  }

  return result;
}

unint64_t sub_24A8B1130()
{
  result = qword_27EF79630;
  if (!qword_27EF79630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79630);
  }

  return result;
}

unint64_t sub_24A8B1188()
{
  result = qword_27EF79638;
  if (!qword_27EF79638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79638);
  }

  return result;
}

unint64_t sub_24A8B11E0()
{
  result = qword_27EF79640;
  if (!qword_27EF79640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79640);
  }

  return result;
}

unint64_t sub_24A8B1238()
{
  result = qword_27EF79648;
  if (!qword_27EF79648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79648);
  }

  return result;
}

unint64_t sub_24A8B1290()
{
  result = qword_27EF79650;
  if (!qword_27EF79650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79650);
  }

  return result;
}

unint64_t sub_24A8B12E8()
{
  result = qword_27EF79658;
  if (!qword_27EF79658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79658);
  }

  return result;
}

unint64_t sub_24A8B1340()
{
  result = qword_27EF79660;
  if (!qword_27EF79660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79660);
  }

  return result;
}

unint64_t sub_24A8B1398()
{
  result = qword_27EF79668;
  if (!qword_27EF79668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79668);
  }

  return result;
}

unint64_t sub_24A8B13F0()
{
  result = qword_27EF79670;
  if (!qword_27EF79670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79670);
  }

  return result;
}

unint64_t sub_24A8B1444()
{
  result = qword_27EF79680;
  if (!qword_27EF79680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79680);
  }

  return result;
}

uint64_t sub_24A8B1498(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF79688, &qword_24A8BE568);
    sub_24A8B1588(a2, type metadata accessor for HAREntry, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A8B1534()
{
  result = qword_27EF796A0;
  if (!qword_27EF796A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF796A0);
  }

  return result;
}

uint64_t sub_24A8B1588(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A8B15D0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  a4();
  sub_24A8BB974();
  if (!v5)
  {
    v12 = v15;
    v17 = 0;
    v11 = sub_24A8BB664();
    v16 = 1;
    sub_24A8BB664();
    (*(v12 + 8))(v10, v8);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v11;
}

unint64_t sub_24A8B17C0()
{
  result = qword_27EF796C8;
  if (!qword_27EF796C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF796C8);
  }

  return result;
}

unint64_t sub_24A8B1814(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A8BB624();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

__n128 sub_24A8B1860@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_24A8BB294();
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF796D0, &qword_24A8BE580);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A8B1D50();
  v10 = v44;
  sub_24A8BB974();
  if (v10)
  {
    v16 = a1;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    return result;
  }

  v44 = v5;
  v11 = v7;
  v12 = v43;
  LOBYTE(v50[0]) = 0;
  v13 = sub_24A8BB654();
  v15 = v6;
  v18 = a1;
  if (v14)
  {
    v19 = v15;
    v41 = 0;
    v20 = sub_24A8BAFF4();
    v22 = v21;

    if (v22 >> 60 == 15)
    {
      sub_24A8B1DA4();
      swift_allocError();
      swift_willThrow();
      (*(v11 + 8))(v9, v19);
      v16 = v18;
      goto LABEL_4;
    }

    if (qword_27EF78FF8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v3, qword_27EF7D4D8);
    (*(v42 + 16))(v44, v25, v3);
    v23 = sub_24A8BB274();
    v24 = v26;
    sub_24A88C814(v20, v22);
    v10 = v41;
    v15 = v19;
  }

  else
  {
    v23 = v13;
    v24 = 0;
  }

  LOBYTE(v50[0]) = 1;
  v27 = sub_24A8BB654();
  v44 = v28;
  v29 = v15;
  if (v10)
  {
    (*(v11 + 8))(v9, v15);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  else
  {
    v41 = v27;
    LOBYTE(v50[0]) = 2;
    v40 = sub_24A8BB694();
    LOBYTE(v50[0]) = 3;
    v39 = sub_24A8BB654();
    v42 = v30;
    v51 = 4;
    v31 = sub_24A8BB654();
    v32 = v9;
    v34 = v33;
    (*(v11 + 8))(v32, v29);
    *&v45 = v23;
    *(&v45 + 1) = v24;
    v35 = v44;
    v46.n128_u64[0] = v41;
    v46.n128_u64[1] = v44;
    v36 = v40;
    *&v47 = v40;
    *(&v47 + 1) = v39;
    *&v48 = v42;
    *(&v48 + 1) = v31;
    v49 = v34;
    sub_24A8B0B50(&v45, v50);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    v50[0] = v23;
    v50[1] = v24;
    v50[2] = v41;
    v50[3] = v35;
    v50[4] = v36;
    v50[5] = v39;
    v50[6] = v42;
    v50[7] = v31;
    v50[8] = v34;
    sub_24A8B0BDC(v50);
    v37 = v48;
    *(v12 + 32) = v47;
    *(v12 + 48) = v37;
    *(v12 + 64) = v49;
    result = v46;
    *v12 = v45;
    *(v12 + 16) = result;
  }

  return result;
}

unint64_t sub_24A8B1D50()
{
  result = qword_27EF796D8;
  if (!qword_27EF796D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF796D8);
  }

  return result;
}

unint64_t sub_24A8B1DA4()
{
  result = qword_27EF796E0;
  if (!qword_27EF796E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF796E0);
  }

  return result;
}

uint64_t sub_24A8B1DF8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_24A8B1E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79128, &unk_24A8BDA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A8B1EC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79128, &unk_24A8BDA50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A8B1F30()
{
  result = qword_27EF79708;
  if (!qword_27EF79708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF79700, &qword_24A8BE598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79708);
  }

  return result;
}

uint64_t sub_24A8B1FBC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_24A8B204C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24A8B211C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_24A8B21AC(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24A8B2280()
{
  result = qword_27EF79710;
  if (!qword_27EF79710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79710);
  }

  return result;
}

unint64_t sub_24A8B22D8()
{
  result = qword_27EF79718;
  if (!qword_27EF79718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79718);
  }

  return result;
}

unint64_t sub_24A8B2330()
{
  result = qword_27EF79720;
  if (!qword_27EF79720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79720);
  }

  return result;
}

unint64_t sub_24A8B2388()
{
  result = qword_27EF79728;
  if (!qword_27EF79728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79728);
  }

  return result;
}

unint64_t sub_24A8B23E0()
{
  result = qword_27EF79730;
  if (!qword_27EF79730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79730);
  }

  return result;
}

unint64_t sub_24A8B2438()
{
  result = qword_27EF79738;
  if (!qword_27EF79738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79738);
  }

  return result;
}

unint64_t sub_24A8B2490()
{
  result = qword_27EF79740;
  if (!qword_27EF79740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79740);
  }

  return result;
}

unint64_t sub_24A8B24E8()
{
  result = qword_27EF79748;
  if (!qword_27EF79748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79748);
  }

  return result;
}

unint64_t sub_24A8B2540()
{
  result = qword_27EF79750;
  if (!qword_27EF79750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79750);
  }

  return result;
}

unint64_t sub_24A8B2598()
{
  result = qword_27EF79758;
  if (!qword_27EF79758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79758);
  }

  return result;
}

unint64_t sub_24A8B25EC()
{
  result = qword_27EF79768;
  if (!qword_27EF79768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79768);
  }

  return result;
}

unint64_t sub_24A8B2654()
{
  result = qword_27EF79778;
  if (!qword_27EF79778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79778);
  }

  return result;
}

unint64_t sub_24A8B26AC()
{
  result = qword_27EF79780;
  if (!qword_27EF79780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79780);
  }

  return result;
}

unint64_t sub_24A8B2704()
{
  result = qword_27EF79788;
  if (!qword_27EF79788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79788);
  }

  return result;
}

uint64_t sub_24A8B2794(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v5 > 0x7FFFFFFE)
    {
      return (*(v4 + 48))((v17 + v6 + 16) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    if ((v18 + 1) >= 2)
    {
      return v18;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_24A8B290C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
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

      else if (v13)
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
      v18 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v6 > 0x7FFFFFFE)
      {
        v19 = *(v5 + 56);

        return v19((v18 + v8 + 16) & ~v8);
      }

      else if (a2 > 0x7FFFFFFE)
      {
        *v18 = 0;
        v18[1] = 0;
        *v18 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v18 = a2;
      }

      return result;
    }
  }

  if (((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_24A8B2B10(void *a1, NSObject *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24A8BC300;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79480, &unk_24A8BCDA0);
  v6 = sub_24A8BB2A4();
  v8 = v7;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_24A8897F0();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  sub_24A882E60();
  v9 = sub_24A8BB464();
  v10 = sub_24A8BB3D4();
  sub_24A8BB0A4("FMNHTTPClientStatusCodeHandler: Client completed credentialDidFail %@", 69, 2, &dword_24A881000, v9, v10, v4);

  dispatch_group_leave(a2);
}

uint64_t FMNAPSTokenProvidingError.hashValue.getter()
{
  sub_24A8BB934();
  MEMORY[0x24C21EF50](0);
  return sub_24A8BB954();
}

id sub_24A8B2C88()
{
  v1 = OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler____lazy_storage___apsConnection;
  v2 = *(v0 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler____lazy_storage___apsConnection);
  v3 = v2;
  if (v2 == 1)
  {
    swift_unknownObjectUnownedInit();
    v3 = sub_24A8B2D14(v7);
    swift_unknownObjectUnownedDestroy();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_24A8B67D8(v4);
  }

  sub_24A8B67E8(v2);
  return v3;
}

id sub_24A8B2D14(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = *&Strong[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection];
  v3 = v2;

  if (!v2)
  {
    v4 = *MEMORY[0x277CEE9F0];
    v5 = swift_unknownObjectUnownedLoadStrong();
    v6 = v4;

    v7 = swift_unknownObjectUnownedLoadStrong();
    v8 = *&v7[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_apsQueue];

    v9 = objc_allocWithZone(MEMORY[0x277CEEA10]);
    v10 = sub_24A8BB244();

    v2 = [v9 initWithEnvironmentName:v6 namedDelegatePort:v10 queue:v8];

    if (v2)
    {
      v11 = swift_unknownObjectUnownedLoadStrong();
      v12 = v2;
      [v12 setDelegate_];
    }

    v13 = swift_unknownObjectUnownedLoadStrong();
    v14 = *&v13[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection];
    *&v13[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection] = v2;
    v15 = v2;
  }

  return v2;
}

id FMNPushNotificatonHandler.__allocating_init(topic:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A8BB254();
  v6 = v5;
  v7 = objc_allocWithZone(type metadata accessor for FMNPushNotificatonHandler());
  return FMNPushNotificatonHandler.init(topic:namedDelegatePort:)(a1, a2, v4, v6);
}

id FMNPushNotificatonHandler.init(topic:namedDelegatePort:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v21 = a1;
  v22 = a2;
  v5 = sub_24A8BB404();
  MEMORY[0x28223BE20](v5);
  v6 = sub_24A8BB104();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24A8BB414();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_apsQueue;
  v19[1] = sub_24A882CB8(0, &unk_2814AB010, 0x277D85C78);
  (*(v8 + 104))(v10, *MEMORY[0x277D85268], v7);
  sub_24A8BB0F4();
  v26 = MEMORY[0x277D84F90];
  sub_24A882D00(&unk_2814AB020, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A882D9C(&qword_2814AB030, &unk_27EF794A0, &unk_24A8BC9E0, MEMORY[0x277D83970]);
  sub_24A8BB4E4();
  *&v4[v20] = sub_24A8BB444();
  *&v4[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_pendingTopicTokenFutures] = MEMORY[0x277D84FA0];
  v11 = &v4[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topicAPSToken];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v4[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_publicAPSToken];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection] = 0;
  *&v4[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler____lazy_storage___apsConnection] = 1;
  v13 = &v4[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topic];
  v14 = v22;
  *v13 = v21;
  v13[1] = v14;
  v15 = &v4[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_namedDelegatePort];
  v16 = v24;
  *v15 = v23;
  v15[1] = v16;
  v17 = type metadata accessor for FMNPushNotificatonHandler();
  v25.receiver = v4;
  v25.super_class = v17;
  return objc_msgSendSuper2(&v25, sel_init);
}

id FMNPushNotificatonHandler.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection];
  if (v1)
  {
    *&v0[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection] = 0;
    [v1 shutdown];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for FMNPushNotificatonHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24A8B3410()
{
  v1 = sub_24A8BB0D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A8BB104();
  v5 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_apsQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_24A8B67C8;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_33;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_24A8BB0F4();
  v14 = MEMORY[0x277D84F90];
  sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D9C(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0, MEMORY[0x277D83970]);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v7, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

void sub_24A8B36E0(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topicAPSToken + 8))
  {
    v2 = *(a1 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topicAPSToken);
  }

  else
  {
    if (!*(a1 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_publicAPSToken + 8))
    {
      return;
    }

    v2 = *(a1 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_publicAPSToken);
  }

  v3 = OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_pendingTopicTokenFutures;
  swift_beginAccess();
  v19 = a1;
  v4 = *(a1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {

    sub_24A8BB514();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
    sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88, MEMORY[0x277D498E8]);
    sub_24A8BB3B4();
    v4 = v21;
    v5 = v22;
    v7 = v23;
    v6 = v24;
    v8 = v25;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);

    v6 = 0;
  }

  v12 = (v7 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v13 = v6;
    v14 = v8;
    v15 = v6;
    if (!v8)
    {
      break;
    }

LABEL_16:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_22:
      sub_24A8B67D0(v4);

      v18 = *(v19 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection);
      if (v18)
      {
        *(v19 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection) = 0;
        [v18 shutdown];
      }

      return;
    }

    while (1)
    {
      v20 = v2;
      sub_24A8BB1C4();

      v6 = v15;
      v8 = v16;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_24A8BB544())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
        swift_dynamicCast();
        v15 = v6;
        v16 = v8;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_22;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_24A8B39A0()
{
  v1 = sub_24A8BB0D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A8BB104();
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topic];
  v9 = *&v0[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topic + 8];
  v14[1] = *&v0[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_apsQueue];
  v10 = swift_allocObject();
  v10[2] = v0;
  v10[3] = v8;
  v10[4] = v9;
  aBlock[4] = sub_24A8B68F0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_61;
  v11 = _Block_copy(aBlock);

  v12 = v0;
  sub_24A8BB0F4();
  v16 = MEMORY[0x277D84F90];
  sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D9C(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0, MEMORY[0x277D83970]);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v7, v4, v11);
  _Block_release(v11);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v15);
}

void sub_24A8B3C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_24A8B2C88();
  if (v3)
  {
    v4 = v3;
    v5 = sub_24A8BB244();
    [v4 requestTokenForTopic:v5 identifier:0];
  }
}

id FMNPushNotificatonHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t FMNPushNotificatonHandler.topicToken()()
{
  v1 = sub_24A8BB0D4();
  v16 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24A8BB104();
  v14 = *(v4 - 8);
  v15 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A8B39A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
  swift_allocObject();
  v7 = sub_24A8BB1D4();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *(v8 + 24) = v7;
  v9 = v0;

  sub_24A8BB1A4();

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v7;
  aBlock[4] = sub_24A8B44F8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_4;
  v11 = _Block_copy(aBlock);
  v12 = v9;

  sub_24A8BB0F4();
  v17 = MEMORY[0x277D84F90];
  sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D9C(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0, MEMORY[0x277D83970]);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v6, v3, v11);
  _Block_release(v11);
  (*(v16 + 8))(v3, v1);
  (*(v14 + 8))(v6, v15);

  return v7;
}

uint64_t sub_24A8B411C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = sub_24A8BB0D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A8BB104();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&a3[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_apsQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  aBlock[4] = sub_24A8B68A8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_55;
  v14 = _Block_copy(aBlock);
  v15 = a3;

  sub_24A8BB0F4();
  v19 = MEMORY[0x277D84F90];
  sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D9C(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0, MEMORY[0x277D83970]);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_24A8B4404(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_24A8B4B3C(a2);
  swift_endAccess();
}

uint64_t sub_24A8B4474(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_24A8B5AA0(&v4, a2);
  swift_endAccess();

  return sub_24A8B3410();
}

uint64_t FMNPushNotificatonHandler.topicToken(_:)(uint64_t a1, uint64_t a2)
{
  FMNPushNotificatonHandler.topicToken()();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_24A8BB1A4();
}

void sub_24A8B4594(uint64_t *a1, id a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (a2)
  {
    v4 = a2;
    v5 = a2;
    v6 = v4;
  }

  else
  {
    v7 = a1[1];
    if (v7)
    {
      a3(*a1, v7, 0);
      return;
    }

    sub_24A8B6854();
    v6 = swift_allocError();
    v4 = v6;
  }

  a3(v6, 0, 1);
}

uint64_t sub_24A8B4670(uint64_t a1, uint64_t a2)
{
  FMNPushNotificatonHandler.topicToken()();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_24A8BB1A4();
}

uint64_t sub_24A8B47D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topicAPSToken);
  *v3 = a2;
  v3[1] = a3;

  return sub_24A8B3410();
}

void FMNPushNotificatonHandler.connection(_:didReceiveMessageForTopic:userInfo:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24A8BC300;
  v3 = *(v0 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topic);
  v2 = *(v0 + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topic + 8);
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_24A8897F0();
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);

  v5 = sub_24A8BB464();
  v4 = sub_24A8BB3D4();
  sub_24A8BB0A4("FMNPushNotificatonHandler: didReceiveMessageForTopic %@.", 56, 2, &dword_24A881000, v5, v4, v1);
}

uint64_t sub_24A8B4B3C(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_24A8BB554();

    if (v5)
    {
      v6 = sub_24A8B4D40(v4, a1);

      return v6;
    }

    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
  sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88, MEMORY[0x277D498E8]);
  v8 = sub_24A8BB224();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_24A882D9C(&unk_2814AAA78, &unk_27EF797E0, &qword_24A8BEB88, MEMORY[0x277D498F0]);
  while ((sub_24A8BB234() & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24A8B4F14();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_24A8B5584(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_24A8B4D40(uint64_t a1, uint64_t a2)
{

  v3 = sub_24A8BB524();
  v4 = swift_unknownObjectRetain();
  v5 = sub_24A8B5778(v4, v3);
  v12 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
  sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88, MEMORY[0x277D498E8]);
  v6 = sub_24A8BB224();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_24A882D9C(&unk_2814AAA78, &unk_27EF797E0, &qword_24A8BEB88, MEMORY[0x277D498F0]);
    while ((sub_24A8BB234() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v5 + 48) + 8 * v8);
  sub_24A8B5584(v8);
  result = sub_24A8BB234();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_24A8B4F14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79880, &unk_24A8BECD0);
  v2 = *v0;
  v3 = sub_24A8BB564();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_24A8B5064(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79880, &unk_24A8BECD0);
  result = sub_24A8BB574();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
      sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88, MEMORY[0x277D498E8]);
      result = sub_24A8BB224();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24A8B52E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79880, &unk_24A8BECD0);
  result = sub_24A8BB574();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
    v26 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v27 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
      sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88, MEMORY[0x277D498E8]);
      result = sub_24A8BB224();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v12 + 8 * v19);
          if (v23 != -1)
          {
            v13 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v3 = v26;
      *(*(v5 + 48) + 8 * v13) = v27;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      bzero(v7, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v24;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_24A8B5584(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24A8BB4F4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88, MEMORY[0x277D498E8]);
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
        v10 = sub_24A8BB224() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_24A8B5778(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79880, &unk_24A8BECD0);
    v2 = sub_24A8BB584();
    v15 = v2;
    sub_24A8BB514();
    for (; sub_24A8BB544(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_24A8B52E0(v9 + 1);
        v2 = v15;
      }

      sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88, MEMORY[0x277D498E8]);
      result = sub_24A8BB224();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t sub_24A8B59B0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
  sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88, MEMORY[0x277D498E8]);
  sub_24A8BB224();
  result = sub_24A8BB504();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_24A8B5AA0(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_24A8BB534();

    if (v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_24A8BB524();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_24A8B5778(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_24A8B52E0(v17 + 1);
    }

    sub_24A8B59B0(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
  sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88, MEMORY[0x277D498E8]);
  v10 = sub_24A8BB224();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_24A8B5D50(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_24A882D9C(&unk_2814AAA78, &unk_27EF797E0, &qword_24A8BEB88, MEMORY[0x277D498F0]);
  while ((sub_24A8BB234() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_24A8B5D50(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A8B52E0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_24A8B4F14();
      goto LABEL_12;
    }

    sub_24A8B5064(v6 + 1);
  }

  v8 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF797E0, &qword_24A8BEB88);
  sub_24A882D9C(qword_2814AAA88, &unk_27EF797E0, &qword_24A8BEB88, MEMORY[0x277D498E8]);
  result = sub_24A8BB224();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_24A882D9C(&unk_2814AAA78, &unk_27EF797E0, &qword_24A8BEB88, MEMORY[0x277D498F0]);
    do
    {
      result = sub_24A8BB234();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A8BB8B4();
  __break(1u);
  return result;
}

void sub_24A8B5F3C(uint64_t a1)
{
  v2 = sub_24A8BB0D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A8BB104();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11 >> 60 == 15)
  {
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v24 = sub_24A8BB464();
    v12 = sub_24A8BB3D4();
    sub_24A8BB0A4("FMNPushNotificatonHandler: Public APS Token was nil.", 52, 2, &dword_24A881000, v24, v12, MEMORY[0x277D84F90]);
    v13 = v24;
  }

  else
  {
    v24 = v8;
    v23 = sub_24A8BB004();
    v14 = v3;
    v15 = [v23 fm_hexString];
    v16 = sub_24A8BB254();
    v18 = v17;

    v22 = *&v1[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_apsQueue];
    v19 = swift_allocObject();
    v19[2] = v1;
    v19[3] = v16;
    v19[4] = v18;
    aBlock[4] = sub_24A8B6804;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A8875B4;
    aBlock[3] = &block_descriptor_49_0;
    v20 = _Block_copy(aBlock);
    v21 = v1;
    sub_24A8BB0F4();
    v25 = MEMORY[0x277D84F90];
    sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
    sub_24A882D9C(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0, MEMORY[0x277D83970]);
    sub_24A8BB4E4();
    MEMORY[0x24C21EA40](0, v10, v5, v20);
    _Block_release(v20);

    (*(v14 + 8))(v5, v2);
    (*(v7 + 8))(v10, v24);
  }
}

void sub_24A8B62F0(uint64_t a1)
{
  v2 = sub_24A8BB0D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A8BB104();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11 >> 60 == 15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_24A8BC300;
    v14 = *&v1[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topic];
    v13 = *&v1[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topic + 8];
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_24A8897F0();
    *(v12 + 32) = v14;
    *(v12 + 40) = v13;
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);

    v27 = sub_24A8BB464();
    v15 = sub_24A8BB3D4();
    sub_24A8BB0A4("FMNPushNotificatonHandler: Topic APS Token was nil for %@.", 58, 2, &dword_24A881000, v27, v15, v12);

    v16 = v27;
  }

  else
  {
    v27 = v8;
    v26 = sub_24A8BB004();
    v17 = v3;
    v18 = [v26 fm_hexString];
    v19 = sub_24A8BB254();
    v21 = v20;

    v25 = *&v1[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_apsQueue];
    v22 = swift_allocObject();
    v22[2] = v1;
    v22[3] = v19;
    v22[4] = v21;
    aBlock[4] = sub_24A8B67F8;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A8875B4;
    aBlock[3] = &block_descriptor_43;
    v23 = _Block_copy(aBlock);
    v24 = v1;
    sub_24A8BB0F4();
    v28 = MEMORY[0x277D84F90];
    sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
    sub_24A882D9C(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0, MEMORY[0x277D83970]);
    sub_24A8BB4E4();
    MEMORY[0x24C21EA40](0, v10, v5, v23);
    _Block_release(v23);

    (*(v17 + 8))(v5, v2);
    (*(v7 + 8))(v10, v27);
  }
}

unint64_t sub_24A8B6710()
{
  result = qword_27EF797F8;
  if (!qword_27EF797F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF797F8);
  }

  return result;
}

void sub_24A8B67D8(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_24A8B67E8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_24A8B6804()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_publicAPSToken);
  *v2 = v0[3];
  v2[1] = v1;
}

unint64_t sub_24A8B6854()
{
  result = qword_27EF79870;
  if (!qword_27EF79870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF79870);
  }

  return result;
}

uint64_t objectdestroy_39Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t FMNMockClientURLSession.__allocating_init(httpArchiveFileURL:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FMNMockClientURLSession.init(httpArchiveFileURL:)(a1);
  return v2;
}

uint64_t (*static FMNMockClientURLSession.mockSessionCreationBlock(httpArchiveFileURL:)(uint64_t a1))()
{
  v2 = sub_24A8BAFC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return sub_24A8B6EFC;
}

uint64_t sub_24A8B6A8C(uint64_t a1)
{
  v2 = sub_24A8BAFC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24A8BC300;
  v7 = sub_24A8BAF64();
  v9 = v8;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_24A8897F0();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
  v10 = sub_24A8BB464();
  v11 = sub_24A8BB3D4();
  sub_24A8BB0A4("FMNMockClientURLSession: Created new session at path %@", 55, 2, &dword_24A881000, v10, v11, v6);

  (*(v3 + 16))(v5, a1, v2);
  type metadata accessor for FMNMockClientURLSession(0);
  v12 = swift_allocObject();
  FMNMockClientURLSession.init(httpArchiveFileURL:)(v5);
  return v12;
}

uint64_t FMNMockClientURLSession.init(httpArchiveFileURL:)(uint64_t a1)
{
  v2 = v1;
  v14 = a1;
  v3 = sub_24A8BB404();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24A8BB104();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24A8BB414();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_responseReadQueue;
  v12 = sub_24A882CB8(0, &unk_2814AB010, 0x277D85C78);
  (*(v6 + 104))(v8, *MEMORY[0x277D85268], v5);
  sub_24A8BB0F4();
  v15 = MEMORY[0x277D84F90];
  sub_24A882D00(&unk_2814AB020, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A882D48(&qword_2814AB030, &unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A8BB4E4();
  *(v1 + v13) = sub_24A8BB444();
  *(v1 + OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_urlResponseByURL) = 0;
  v9 = OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_httpArchiveFileURL;
  v10 = sub_24A8BAFC4();
  (*(*(v10 - 8) + 32))(v2 + v9, v14, v10);
  return v2;
}

uint64_t sub_24A8B6EFC()
{
  v1 = *(sub_24A8BAFC4() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24A8B6A8C(v2);
}

uint64_t FMNMockClientURLSession.httpArchiveFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_httpArchiveFileURL;
  v4 = sub_24A8BAFC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_24A8B6FD4(uint64_t a1, uint64_t a2, void (*a3)(void, unint64_t, void, void *))
{
  sub_24A8B706C();
  v4 = swift_allocError();
  *v5 = 3;
  a3(0, 0xF000000000000000, 0, v4);

  v6 = objc_allocWithZone(MEMORY[0x277CCAD68]);

  return [v6 init];
}

unint64_t sub_24A8B706C()
{
  result = qword_27EF798A0;
  if (!qword_27EF798A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF798A0);
  }

  return result;
}

id sub_24A8B70C0(uint64_t a1, void (*a2)(void, unint64_t, void, void *), uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_24A8BAFC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
  v15 = sub_24A8BB464();
  v16 = sub_24A8BB3D4();
  sub_24A8BB0A4("FMNMockClientURLSession: Creating new task", 42, 2, &dword_24A881000, v15, v16, MEMORY[0x277D84F90]);

  sub_24A8BADA4();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24A88C1B4(v7);
    sub_24A8B706C();
    v17 = swift_allocError();
    *v18 = 1;
    a2(0, 0xF000000000000000, 0, v17);

    return [objc_allocWithZone(MEMORY[0x277CCAD40]) init];
  }

  else
  {
    v32 = a2;
    v33 = v14;
    v20 = *(v9 + 32);
    v20(v14, v7, v8);
    (*(v9 + 16))(v12, v14, v8);
    v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = v34;
    v31 = a3;
    v24 = swift_allocObject();
    v20((v24 + v21), v12, v8);
    *(v24 + v22) = v23;
    v25 = (v24 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
    v26 = v31;
    *v25 = v32;
    v25[1] = v26;
    v27 = type metadata accessor for MockURLDataTask();
    v28 = objc_allocWithZone(v27);
    v29 = &v28[OBJC_IVAR____TtC12FMNetworking15MockURLDataTask_executionBlock];
    *v29 = sub_24A8B7644;
    v29[1] = v24;
    v35.receiver = v28;
    v35.super_class = v27;

    v30 = objc_msgSendSuper2(&v35, sel_init);
    (*(v9 + 8))(v33, v8);
    return v30;
  }
}

uint64_t sub_24A8B741C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a2;
  v7 = sub_24A8BAFC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24A8BC300;
  v12 = sub_24A8BAF64();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_24A8897F0();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
  v15 = sub_24A8BB464();
  v16 = sub_24A8BB3D4();
  sub_24A8BB0A4("FMNMockClientURLSession: executing task %@", 42, 2, &dword_24A881000, v15, v16, v11);

  (*(v8 + 16))(v10, a1, v7);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v8 + 32))(v19 + v17, v10, v7);
  v20 = (v19 + v18);
  *v20 = a3;
  v20[1] = a4;

  sub_24A8B7C4C(a1, sub_24A8B9AD4, v19);
}

uint64_t sub_24A8B765C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v39 = a3;
  v37 = a2;
  v43 = sub_24A8BB0D4();
  v46 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A8BB104();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A8BAFC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A8BB0E4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[3];
  v35 = a1[2];
  v36 = v18;
  sub_24A882CB8(0, &unk_2814AB010, 0x277D85C78);
  (*(v13 + 104))(v15, *MEMORY[0x277D851C8], v12);
  v38 = sub_24A8BB454();
  (*(v13 + 8))(v15, v12);
  (*(v9 + 16))(v11, v37, v8);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v9 + 32))(v21 + v19, v11, v8);
  v22 = (v21 + v20);
  v23 = v41;
  *v22 = v39;
  v22[1] = v23;
  v24 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v24 = v16;
  v24[1] = v17;
  v26 = v35;
  v25 = v36;
  v24[2] = v35;
  v24[3] = v25;
  aBlock[4] = sub_24A8B9B74;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_33_0;
  v27 = _Block_copy(aBlock);

  sub_24A88DD28(v16, v17);
  v28 = v26;
  v29 = v25;
  v30 = v40;
  sub_24A8BB0F4();
  v47 = MEMORY[0x277D84F90];
  sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D48(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  v32 = v42;
  v31 = v43;
  sub_24A8BB4E4();
  v33 = v38;
  MEMORY[0x24C21EA40](0, v30, v32, v27);
  _Block_release(v27);

  (*(v46 + 8))(v32, v31);
  (*(v44 + 8))(v30, v45);
}

uint64_t sub_24A8B7B28(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24A8BC300;
  v13 = sub_24A8BAF64();
  v15 = v14;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_24A8897F0();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
  v16 = sub_24A8BB464();
  v17 = sub_24A8BB3D4();
  sub_24A8BB0A4("FMNMockClientURLSession: calling completion with mock response %@", 65, 2, &dword_24A881000, v16, v17, v12);

  return a2(a4, a5, a6, a7);
}

uint64_t sub_24A8B7C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v25 = a3;
  v6 = sub_24A8BB0D4();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A8BB104();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A8BAFC4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v4 + OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_responseReadQueue);
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  (*(v13 + 32))(v18 + v16, v15, v12);
  v19 = (v18 + v17);
  v20 = v25;
  *v19 = v24;
  v19[1] = v20;
  aBlock[4] = sub_24A8B9920;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_21_0;
  v21 = _Block_copy(aBlock);

  sub_24A8BB0F4();
  v30 = MEMORY[0x277D84F90];
  sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D48(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v11, v8, v21);
  _Block_release(v21);
  (*(v29 + 8))(v8, v6);
  (*(v27 + 8))(v11, v28);
}

void sub_24A8B7FFC(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), void (*a4)(__int128 *))
{
  v8 = sub_24A8BAFC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = *(a1 + OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_urlResponseByURL);
  if (!v11)
  {
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v27 = sub_24A8BB464();
    v28 = sub_24A8BB3D4();
    sub_24A8BB0A4("FMNMockClientURLSession: Reading mock response set.", 51, 2, &dword_24A881000, v27, v28, MEMORY[0x277D84F90]);

    v29 = OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_httpArchiveFileURL;
    (*(v9 + 16))(&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
    v30 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = a1;
    (*(v9 + 32))(v31 + v30, &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v32 = (v31 + ((v10 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v32 = a3;
    v32[1] = a4;

    sub_24A8B84A0(a1 + v29, sub_24A8B9A14, v31);

    return;
  }

  if (!*(v11 + 16))
  {
    goto LABEL_7;
  }

  v12 = sub_24A894E70(a2);
  if ((v13 & 1) == 0)
  {

LABEL_7:
    v33 = sub_24A8BB3C4();
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v34 = sub_24A8BB464();
    sub_24A8BB0B4(v33, &dword_24A881000, v34, "FMNMockClientURLSession: No mock response found.", 48, 2, MEMORY[0x277D84F90]);

    sub_24A8B706C();
    v35 = swift_allocError();
    *v36 = 2;
    v40 = xmmword_24A8BECE0;
    *&v41 = 0;
    *(&v41 + 1) = v35;
    a3(&v40);
    v37 = v41;
    sub_24A88C814(v40, *(&v40 + 1));

    v26 = *(&v37 + 1);
    goto LABEL_8;
  }

  v14 = (*(v11 + 56) + 32 * v12);
  v15 = v14[1];
  v38 = *v14;
  v39 = v15;
  v16 = v38;
  sub_24A88DD28(v38, *(&v38 + 1));
  v17 = *(&v39 + 1);
  v18 = v39;
  v19 = *(&v39 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24A8BC300;
  v21 = sub_24A8BAF64();
  v23 = v22;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_24A8897F0();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
  v24 = sub_24A8BB464();
  v25 = sub_24A8BB3D4();
  sub_24A8BB0A4("FMNMockClientURLSession: Found mock response %@", 47, 2, &dword_24A881000, v24, v25, v20);

  v40 = v38;
  v41 = v39;
  a3(&v40);
  sub_24A88C814(v16, *(&v16 + 1));

  v26 = v17;
LABEL_8:
}

uint64_t sub_24A8B83F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
  v7 = sub_24A8BB464();
  v8 = sub_24A8BB3D4();
  sub_24A8BB0A4("FMNMockClientURLSession: Retrying mock response.", 48, 2, &dword_24A881000, v7, v8, MEMORY[0x277D84F90]);

  return sub_24A8B7C4C(a2, a3, a4);
}

uint64_t sub_24A8B84A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a2;
  v23 = a3;
  v26 = sub_24A8BB0D4();
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24A8BB104();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A8BAFC4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v3 + OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_responseReadQueue);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v14, v13, v10);
  *(v16 + v15) = v4;
  v17 = (v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = v23;
  *v17 = v22;
  v17[1] = v18;
  aBlock[4] = sub_24A8B9788;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_5;
  v19 = _Block_copy(aBlock);

  sub_24A8BB0F4();
  v29 = MEMORY[0x277D84F90];
  sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D48(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  v20 = v26;
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v9, v7, v19);
  _Block_release(v19);
  (*(v28 + 8))(v7, v20);
  (*(v25 + 8))(v9, v27);
}

uint64_t sub_24A8B8864(char *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v106 = a4;
  v107 = a3;
  v105 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v112 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v120 = &v103 - v9;
  MEMORY[0x28223BE20](v8);
  v122 = &v103 - v10;
  v11 = sub_24A8BAFC4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v113 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v111 = &v103 - v16;
  MEMORY[0x28223BE20](v15);
  v114 = &v103 - v17;
  v18 = type metadata accessor for HAREntry(0);
  v116 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v128 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FMNHTTPArchiveReader(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v23 = swift_allocObject();
  v131 = xmmword_24A8BC300;
  *(v23 + 16) = xmmword_24A8BC300;
  v24 = sub_24A8BAF64();
  v26 = v25;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_24A8897F0();
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
  v27 = sub_24A8BB464();
  v28 = sub_24A8BB3D4();
  sub_24A8BB0A4("FMNMockClientURLSession: computeURLResponses %@", 47, 2, &dword_24A881000, v27, v28, v23);

  v29 = *(v12 + 16);
  v110 = v12 + 16;
  v109 = v29;
  v29(v22, a1, v11);
  v104 = v22;
  v30 = sub_24A89D61C();
  v31 = swift_allocObject();
  *(v31 + 16) = v131;
  v32 = *(v30 + 16);
  v33 = MEMORY[0x277D83C10];
  *(v31 + 56) = MEMORY[0x277D83B88];
  *(v31 + 64) = v33;
  *(v31 + 32) = v32;
  v34 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4("FMNMockClientURLSession: Found mock %i responses", v103);

  v35 = v30;
  v127 = *(v30 + 16);
  if (!v127)
  {
    v115 = MEMORY[0x277D84F98];
LABEL_32:

    *(v105 + OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_urlResponseByURL) = v115;

    v107(v101);
    return sub_24A8B9850(v104, type metadata accessor for FMNHTTPArchiveReader);
  }

  v36 = v12;
  v37 = 0;
  v38 = v116;
  v125 = v30 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v130 = (v36 + 48);
  v119 = (v36 + 32);
  v118 = (v36 + 8);
  v108 = v36;
  v126 = (v36 + 56);
  v115 = MEMORY[0x277D84F98];
  v39 = v120;
  v40 = v122;
  v129 = v11;
  v41 = v128;
  v124 = v35;
  while (v37 < *(v35 + 16))
  {
    sub_24A89F118(v125 + *(v38 + 72) * v37, v41);
    v42 = v41 + *(v18 + 24);
    v43 = *(v42 + 56);
    if (v43)
    {
      if (qword_27EF78FF8 != -1)
      {
        swift_once();
      }

      v44 = sub_24A8BB294();
      __swift_project_value_buffer(v44, qword_27EF7D4D8);
      v43 = sub_24A8BB264();
      v46 = v45;
    }

    else
    {
      v46 = 0xF000000000000000;
    }

    sub_24A8BAFB4();
    v47 = *v130;
    if ((*v130)(v40, 1, v11) == 1)
    {
      sub_24A88C1B4(v40);
LABEL_4:
      sub_24A88C814(v43, v46);

      v11 = v129;
      (*v126)(v39, 1, 1, v129);
LABEL_5:
      v41 = v128;
      sub_24A8B9850(v128, type metadata accessor for HAREntry);
      sub_24A88C1B4(v39);
      goto LABEL_6;
    }

    v121 = v47;
    v48 = v114;
    v117 = *v119;
    v117(v114, v40, v11);
    v123 = *v42;
    v49 = *(v42 + 80);
    v137 = *(v42 + 64);
    v138 = v49;
    v139 = *(v42 + 96);
    v140 = *(v42 + 112);
    v50 = *(v42 + 16);
    v133 = *v42;
    v134 = v50;
    v51 = *(v42 + 48);
    v135 = *(v42 + 32);
    v136 = v51;
    *&v131 = v43;
    sub_24A89D9C0();
    v52 = v46;
    v53 = v18;
    v54 = v11;
    v55 = objc_allocWithZone(MEMORY[0x277CCAA40]);
    v56 = sub_24A8BAF84();
    v57 = sub_24A8BB244();
    v58 = sub_24A8BB1E4();

    v59 = [v55 initWithURL:v56 statusCode:v123 HTTPVersion:v57 headerFields:v58];

    v43 = v131;
    v40 = v122;

    v39 = v120;
    v60 = *v118;
    v61 = v48;
    v38 = v116;
    v62 = v54;
    v18 = v53;
    v46 = v52;
    (*v118)(v61, v62);
    if (!v59)
    {
      goto LABEL_4;
    }

    v63 = [v59 URL];
    if (v63)
    {
      v64 = v112;
      v65 = v63;
      sub_24A8BAF94();

      v66 = 0;
    }

    else
    {
      v66 = 1;
      v64 = v112;
    }

    v67 = v121;
    v68 = v129;
    (*v126)(v64, v66, 1, v129);
    sub_24A8B98B0(v64, v39);
    if (v67(v39, 1, v68) == 1)
    {
      sub_24A88C814(v131, v46);

      v40 = v122;
      v11 = v68;
      goto LABEL_5;
    }

    v123 = v60;
    v69 = v111;
    v117(v111, v39, v68);
    v70 = v113;
    v109(v113, v69, v68);
    sub_24A88DD28(v131, v46);
    v121 = v59;
    v71 = 0;
    v72 = v115;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v132 = v72;
    v75 = sub_24A894E70(v70);
    v76 = *(v72 + 16);
    v77 = (v74 & 1) == 0;
    v78 = v76 + v77;
    if (__OFADD__(v76, v77))
    {
      goto LABEL_34;
    }

    v79 = v74;
    if (*(v72 + 24) >= v78)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24A895BD8();
      }
    }

    else
    {
      sub_24A8951B4(v78, isUniquelyReferenced_nonNull_native);
      v80 = sub_24A894E70(v113);
      if ((v79 & 1) != (v81 & 1))
      {
        goto LABEL_36;
      }

      v75 = v80;
    }

    v40 = v122;
    v82 = v132;
    v115 = v132;
    if (v79)
    {
      v83 = (*(v132 + 56) + 32 * v75);
      v84 = *v83;
      v85 = v83[1];
      v86 = v83[2];
      v87 = v83[3];
      v88 = v131;
      *v83 = v131;
      v83[1] = v46;
      v83[2] = v59;
      v83[3] = 0;
      sub_24A88C814(v84, v85);

      sub_24A88C814(v88, v46);
      v89 = v129;
      v90 = v123;
      v123(v113, v129);
      v90(v111, v89);
    }

    else
    {
      *(v132 + 8 * (v75 >> 6) + 64) |= 1 << v75;
      v91 = v113;
      v92 = v129;
      v109(*(v82 + 48) + *(v108 + 72) * v75, v113, v129);
      v93 = (*(v115 + 56) + 32 * v75);
      v94 = v131;
      *v93 = v131;
      v93[1] = v46;
      v93[2] = v59;
      v93[3] = 0;
      sub_24A88C814(v94, v46);

      v95 = v123;
      v123(v91, v92);
      v96 = v92;
      v97 = v115;
      v95(v111, v96);
      v98 = *(v97 + 16);
      v99 = __OFADD__(v98, 1);
      v100 = v98 + 1;
      if (v99)
      {
        goto LABEL_35;
      }

      *(v97 + 16) = v100;
    }

    v41 = v128;
    sub_24A8B9850(v128, type metadata accessor for HAREntry);
    v39 = v120;
    v11 = v129;
LABEL_6:
    ++v37;
    v35 = v124;
    if (v127 == v37)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_24A8BB8C4();
  __break(1u);
  return result;
}

uint64_t FMNMockClientURLSession.deinit()
{
  v1 = OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_httpArchiveFileURL;
  v2 = sub_24A8BAFC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t FMNMockClientURLSession.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12FMNetworking23FMNMockClientURLSession_httpArchiveFileURL;
  v2 = sub_24A8BAFC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for FMNMockClientURLSession(uint64_t a1)
{
  result = qword_27EF798A8;
  if (!qword_27EF798A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A8B95E0(uint64_t a1)
{
  result = sub_24A8BAFC4();
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

unint64_t sub_24A8B9734()
{
  result = qword_27EF798B8;
  if (!qword_27EF798B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF798B8);
  }

  return result;
}

uint64_t sub_24A8B97A0(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_24A8BAFC4() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = (v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return a1(v1 + v3, v5, v7, v8);
}

uint64_t sub_24A8B9850(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A8B98B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_17Tm()
{
  v1 = sub_24A8BAFC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24A8B9A2C(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_24A8BAFC4() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a1(v4, v1 + v3, v6, v7);
}

uint64_t sub_24A8B9AD4(uint64_t *a1)
{
  v3 = *(sub_24A8BAFC4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_24A8B765C(a1, v1 + v4, v6, v7);
}

uint64_t sub_24A8B9B74()
{
  v1 = *(sub_24A8BAFC4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);
  v10 = *(v0 + v4 + 16);
  v11 = *(v0 + v4 + 24);

  return sub_24A8B7B28(v0 + v2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_24A8B9C40(uint64_t a1)
{
  v2 = sub_24A8BAE54();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x28223BE20](v2);
  v19 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF798C0, &unk_24A8BEE10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for HAREntry(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (a1 + 48);
    v13 = MEMORY[0x277D84F90];
    v27 = v7;
    do
    {
      v14 = *v12;
      v22 = *(v12 - 1);
      v23 = v14;
      sub_24A8B9FC0(v6);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_24A886D90(v6, &qword_27EF798C0, &unk_24A8BEE10);
      }

      else
      {
        sub_24A89F1D8(v6, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_24A8961EC(0, v13[2] + 1, 1, v13);
        }

        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          v13 = sub_24A8961EC((v15 > 1), v16 + 1, 1, v13);
        }

        v13[2] = v16 + 1;
        sub_24A89F1D8(v10, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16);
        v7 = v27;
      }

      v12 += 2;
      --v11;
    }

    while (v11);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  sub_24A8BAE94();
  swift_allocObject();
  sub_24A8BAE84();
  (*(v20 + 104))(v19, *MEMORY[0x277CC8778], v21);
  sub_24A8BAE64();
  *&v22 = 3288625;
  *(&v22 + 1) = 0xE300000000000000;
  *&v23 = v13;
  *(&v23 + 1) = 0xD000000000000010;
  v24 = 0x800000024A8C08D0;
  v25 = 3157553;
  v26 = 0xE300000000000000;
  sub_24A8BA9F8();
  v17 = sub_24A8BAE74();

  swift_bridgeObjectRelease_n();

  return v17;
}

uint64_t sub_24A8B9FC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A8BB054();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A8BB294();
  v53 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = v1[2];
  if (!v16)
  {
    goto LABEL_7;
  }

  v50 = *(v1 + 1);
  v54 = a1;
  v17 = v1[1];
  v51 = *v1;
  v52 = v4;
  v18 = [v16 URL];
  if (v18)
  {
    v19 = v18;
    sub_24A8BAF94();

    v20 = sub_24A8BAFC4();
    (*(*(v20 - 8) + 56))(v13, 0, 1, v20);
  }

  else
  {
    v20 = sub_24A8BAFC4();
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  }

  sub_24A8B98B0(v13, v15);
  sub_24A8BAFC4();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v15, 1, v20) == 1)
  {
    sub_24A886D90(v15, &qword_27EF79180, &qword_24A8BC9F0);
    a1 = v54;
LABEL_7:
    v22 = type metadata accessor for HAREntry(0);
    return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
  }

  v49 = sub_24A8BAF64();
  v25 = v24;
  (*(v21 + 8))(v15, v20);
  v26 = [v16 statusCode];
  if (v17 >> 60 == 15)
  {
    v27 = type metadata accessor for HAREntry(0);
    (*(*(v27 - 8) + 56))(v54, 1, 1, v27);
  }

  else
  {
    v28 = v26;
    v47 = sub_24A8BB254();
    v30 = v29;
    v31 = v51;
    sub_24A88C9AC(v51, v17);
    if (qword_27EF78FF8 != -1)
    {
      swift_once();
    }

    v48 = v25;
    v32 = __swift_project_value_buffer(v7, qword_27EF7D4D8);
    (*(v53 + 16))(v9, v32, v7);
    v33 = sub_24A8BB274();
    v35 = v33;
    v36 = v34;
    if (v34)
    {
      v55 = v33;
      v56 = v34;
      sub_24A88A774();
      v53 = v30;

      v30 = v53;
      v37 = sub_24A8BB4A4();
    }

    else
    {
      v37 = -1;
    }

    v55 = v31;
    v56 = v17;
    v57 = v50;

    v38 = sub_24A8BA81C();
    sub_24A8BB044();
    sub_24A88C814(v31, v17);
    v39 = v54;
    (*(v52 + 32))(v54, v6, v3);
    v40 = type metadata accessor for HAREntry(0);
    v41 = (v39 + *(v40 + 20));
    *v41 = 1414745936;
    v41[1] = 0xE400000000000000;
    v42 = v48;
    v41[2] = v49;
    v41[3] = v42;
    v43 = v47;
    v41[4] = v47;
    v41[5] = v30;
    v44 = MEMORY[0x277D84F90];
    v41[6] = MEMORY[0x277D84F90];
    v41[7] = v44;
    v41[8] = v44;
    v41[9] = -1;
    v41[11] = 0;
    v41[12] = 0;
    v41[10] = -1;
    v45 = v39 + *(v40 + 24);
    *v45 = v28;
    *(v45 + 8) = 0;
    *(v45 + 16) = 0xE000000000000000;
    *(v45 + 24) = v43;
    *(v45 + 32) = v30;
    *(v45 + 40) = v38;
    *(v45 + 48) = v35;
    *(v45 + 56) = v36;
    *(v45 + 64) = 0;
    *(v45 + 72) = 0;
    *(v45 + 88) = 0;
    *(v45 + 96) = 0;
    *(v45 + 80) = v37;
    *(v45 + 104) = xmmword_24A8BEE00;
    return (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  }
}

uint64_t sub_24A8BA584(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF798C0, &unk_24A8BEE10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for HAREntry(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 48);
    v12 = MEMORY[0x277D84F90];
    do
    {
      v13 = *v11;
      v19 = *(v11 - 1);
      v20 = v13;
      sub_24A8B9FC0(v5);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_24A886D90(v5, &qword_27EF798C0, &unk_24A8BEE10);
      }

      else
      {
        sub_24A89F1D8(v5, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_24A8961EC(0, v12[2] + 1, 1, v12);
        }

        v15 = v12[2];
        v14 = v12[3];
        if (v15 >= v14 >> 1)
        {
          v12 = sub_24A8961EC((v14 > 1), v15 + 1, 1, v12);
        }

        v12[2] = v15 + 1;
        sub_24A89F1D8(v9, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15);
      }

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  *&v19 = 3288625;
  *(&v19 + 1) = 0xE300000000000000;
  *&v20 = v12;
  *(&v20 + 1) = 0xD000000000000010;
  v21 = 0x800000024A8C08D0;
  v22 = 3157553;
  v23 = 0xE300000000000000;
  sub_24A8BAA4C(&v19, v18);

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_24A8BA81C()
{
  v1 = *(v0 + 16);
  if (v1 && (v2 = [v1 allHeaderFields], v3 = sub_24A8BB1F4(), v2, v4 = sub_24A88DD3C(v3), result = , v4))
  {
    v6 = 0;
    v7 = v4 + 64;
    v8 = 1 << *(v4 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v4 + 64);
    v11 = (v8 + 63) >> 6;
    v12 = MEMORY[0x277D84F90];
    v25 = v4;
    if (v10)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        return v12;
      }

      v10 = *(v7 + 8 * v13);
      ++v6;
      if (v10)
      {
        v6 = v13;
        do
        {
LABEL_10:
          v14 = (v6 << 10) | (16 * __clz(__rbit64(v10)));
          v15 = *(v4 + 56);
          v16 = (*(v4 + 48) + v14);
          v17 = *v16;
          v18 = v16[1];
          v19 = (v15 + v14);
          v21 = *v19;
          v20 = v19[1];

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_24A8963C4(0, *(v12 + 16) + 1, 1, v12);
            v12 = result;
          }

          v23 = *(v12 + 16);
          v22 = *(v12 + 24);
          if (v23 >= v22 >> 1)
          {
            result = sub_24A8963C4((v22 > 1), v23 + 1, 1, v12);
            v12 = result;
          }

          v10 &= v10 - 1;
          *(v12 + 16) = v23 + 1;
          v24 = (v12 + 32 * v23);
          v24[4] = v17;
          v24[5] = v18;
          v4 = v25;
          v24[6] = v21;
          v24[7] = v20;
        }

        while (v10);
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_24A8BA9F8()
{
  result = qword_27EF798C8;
  if (!qword_27EF798C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF798C8);
  }

  return result;
}

uint64_t sub_24A8BAA4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_24A8BAE54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A8BAE94();
  swift_allocObject();
  sub_24A8BAE84();
  (*(v4 + 104))(v6, *MEMORY[0x277CC8778], v3);
  sub_24A8BAE64();
  v7 = *(a1 + 16);
  v12[1] = *a1;
  v12[2] = v7;
  v12[3] = *(a1 + 32);
  v13 = *(a1 + 48);
  sub_24A8BA9F8();
  v8 = sub_24A8BAE74();
  v10 = v9;

  sub_24A8BAFD4();
  return sub_24A88C828(v8, v10);
}