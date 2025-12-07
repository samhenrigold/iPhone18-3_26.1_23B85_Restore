uint64_t sub_223B81F4C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_223B81F5C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_223B81F74(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_223B81F84(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_223B81F9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223B8200C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_223B82090()
{
  result = qword_281339A68;
  if (!qword_281339A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A68);
  }

  return result;
}

unint64_t sub_223B820E8()
{
  result = qword_27D0B19B0;
  if (!qword_27D0B19B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B19B0);
  }

  return result;
}

uint64_t sub_223B8213C(uint64_t a1, unsigned __int8 a2)
{
  sub_223BF458C();
}

uint64_t sub_223B82280(uint64_t a1, unsigned __int8 a2)
{
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

uint64_t sub_223B823D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A18, &qword_223BFB3A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B87018();
  sub_223BF4EDC();
  v8[15] = 0;
  sub_223BF4D2C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_223BF4D2C();
  v8[13] = 2;
  sub_223BF4D2C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_223B82578(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1AA8, &qword_223BFB848);
  v12 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v11 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v11[0] = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B81F4C(v6, v7, v8);
  sub_223B87E74();
  sub_223BF4EDC();
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A78, &qword_223BFB830);
  sub_223B569C0(&qword_27D0B1AB0, &qword_27D0B1A78, &qword_223BFB830, &unk_223BF7918);
  v9 = v11[1];
  sub_223BF4D4C();
  sub_223B81F74(v13, v14, v15);
  if (!v9)
  {
    v13 = v11[0];
    v16 = 1;
    sub_223B81F5C(v11[0]);
    sub_223B5A61C();
    sub_223BF4D1C();
    sub_223B81F84(v13);
  }

  return (*(v12 + 8))(v5, v3);
}

uint64_t sub_223B8278C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A70, &qword_223BFB828);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B87E74();
  sub_223BF4ECC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A78, &qword_223BFB830);
  v19 = 0;
  sub_223B569C0(qword_2813399C0, &qword_27D0B1A78, &qword_223BFB830, &unk_223BF7940);
  sub_223BF4CBC();
  v9 = v15;
  v10 = v16;
  v18 = v17;
  v19 = 1;
  sub_223B5A670();
  sub_223BF4C8C();
  (*(v6 + 8))(v8, v5);
  v11 = v15;
  *a2 = v9;
  *(a2 + 8) = v10;
  v12 = v18;
  *(a2 + 16) = v18;
  *(a2 + 24) = v11;
  sub_223B81F4C(v9, v10, v12);
  sub_223B81F5C(v11);
  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_223B81F74(v9, v10, v12);
  return sub_223B81F84(v11);
}

uint64_t sub_223B82A08(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1B28, &qword_223BFBBF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B883E0();
  sub_223BF4EDC();
  LOBYTE(v11) = 0;
  sub_223BF4D3C();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_223BF4D3C();
    LOBYTE(v11) = 2;
    sub_223BF4D3C();
    LOBYTE(v11) = 3;
    sub_223BF4D2C();
    LOBYTE(v11) = 4;
    sub_223BF4D3C();
    LOBYTE(v11) = 5;
    sub_223BF4D3C();
    LOBYTE(v11) = 6;
    sub_223BF4CFC();
    v11 = *(v3 + 64);
    v10[7] = 7;
    sub_223B88080();
    sub_223BF4D1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_223B82C88(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1AB8, &qword_223BFB850);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B87EC8();
  sub_223BF4EDC();
  LOBYTE(v18) = 0;
  sub_223BF4D0C();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    sub_223BF4CEC();
    v9 = *(v3 + 48);
    v10 = *(v3 + 80);
    v24 = *(v3 + 64);
    v25 = v10;
    v11 = *(v3 + 48);
    v23[0] = *(v3 + 32);
    v23[1] = v11;
    v19 = v9;
    v20 = v24;
    v21 = *(v3 + 80);
    v26 = *(v3 + 96);
    v22 = *(v3 + 96);
    v18 = v23[0];
    v17 = 2;
    sub_223B568F8(v23, v15, &qword_27D0B1A90, &qword_223BFB840);
    sub_223B8802C();
    sub_223BF4D1C();
    v15[2] = v20;
    v15[3] = v21;
    v16 = v22;
    v15[1] = v19;
    v15[0] = v18;
    sub_223B56960(v15, &qword_27D0B1A90, &qword_223BFB840);
    LOBYTE(v14) = 3;
    sub_223BF4CFC();
    v14 = *(v3 + 112);
    v13[7] = 4;
    sub_223B88080();
    sub_223BF4D1C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_223B82F98(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6870617267;
    v6 = 0x69727473706F7270;
    if (a1 != 2)
    {
      v6 = 0x7079546E69616863;
    }

    if (a1)
    {
      v5 = 0x70697274737561;
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
    v1 = 0x69747265706F7270;
    v2 = 0x6F43656D756C6F76;
    if (a1 != 7)
    {
      v2 = 0x6E49656D756C6F76;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6143646C756F6873;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
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

uint64_t sub_223B830E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A20, &qword_223BFB3B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B8706C();
  sub_223BF4EDC();
  LOBYTE(v19) = 0;
  sub_223BF4D2C();
  if (!v2)
  {
    LOBYTE(v19) = 1;
    sub_223BF4CEC();
    LOBYTE(v19) = 2;
    sub_223BF4CEC();
    LOBYTE(v19) = 3;
    sub_223BF4D2C();
    LOBYTE(v19) = 4;
    sub_223BF4CFC();
    *&v19 = *(v3 + 72);
    LOBYTE(v17[0]) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A00, &qword_223BFB388);
    sub_223B8723C(&qword_27D0B1A28, &qword_27D0B1A30, MEMORY[0x277D83B90], MEMORY[0x277D83948]);
    sub_223BF4D1C();
    *&v19 = *(v3 + 80);
    LOBYTE(v17[0]) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A10, &unk_223BFB398);
    sub_223B87334(&qword_27D0B1A38, sub_223B873AC, MEMORY[0x277D83948]);
    sub_223BF4D1C();
    *&v19 = *(v3 + 88);
    LOBYTE(v17[0]) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1898, &qword_223BFA830);
    sub_223B87114(&qword_27D0B1A48, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_223BF4D1C();
    v9 = *(v3 + 176);
    v10 = *(v3 + 144);
    v30 = *(v3 + 160);
    v31 = v9;
    v11 = *(v3 + 176);
    v32 = *(v3 + 192);
    v12 = *(v3 + 112);
    v27[0] = *(v3 + 96);
    v27[1] = v12;
    v13 = *(v3 + 144);
    v15 = *(v3 + 96);
    v14 = *(v3 + 112);
    v28 = *(v3 + 128);
    v29 = v13;
    v23 = v30;
    v24 = v11;
    v25 = *(v3 + 192);
    v19 = v15;
    v20 = v14;
    v33 = *(v3 + 208);
    v26 = *(v3 + 208);
    v21 = v28;
    v22 = v10;
    v34 = 8;
    sub_223B568F8(v27, v17, &qword_27D0B1A50, &qword_223BFB3B8);
    sub_223B87400();
    sub_223BF4D1C();
    v17[4] = v23;
    v17[5] = v24;
    v17[6] = v25;
    v18 = v26;
    v17[0] = v19;
    v17[1] = v20;
    v17[2] = v21;
    v17[3] = v22;
    sub_223B56960(v17, &qword_27D0B1A50, &qword_223BFB3B8);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_223B8352C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1BA8, &qword_223BFBF30);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B88990();
  sub_223BF4EDC();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A08, &qword_223BFB390);
  sub_223B872C8(&qword_27D0B1A30, MEMORY[0x277D83B90], MEMORY[0x277D83948]);
  sub_223BF4D4C();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1B88, &qword_223BFBF20);
    sub_223B889E4(&qword_27D0B1BB0, &qword_27D0B1BB8, &unk_223BF7918, MEMORY[0x277D83948]);
    sub_223BF4D4C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_223B83748(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1B30, &qword_223BFBC00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B8849C();
  sub_223BF4EDC();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1B10, &qword_223BFBBF0);
  sub_223B884F0(&qword_27D0B1B38, sub_223B885BC, MEMORY[0x277D83948]);
  sub_223BF4D4C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_223B838D4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B19C8, &qword_223BFB048);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B86AC4();
  sub_223BF4EDC();
  v9 = v3[1];
  v13 = *v3;
  v14 = v9;
  v15 = v3[2];
  v12 = 0;
  sub_223B86BC0();
  sub_223BF4D4C();
  if (!v2)
  {
    *&v13 = *(v3 + 6);
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B19C0, &qword_223BFB040);
    sub_223B86C14(&qword_27D0B19D8, sub_223B86C98, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_223BF4D4C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_223B83ABC()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6150676E696E7574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6150746573657270;
  }
}

uint64_t sub_223B83B1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_223B879A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_223B83B44(uint64_t a1)
{
  v2 = sub_223B87018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B83B80(uint64_t a1)
{
  v2 = sub_223B87018();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_223B83BBC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_223B861A8(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_223B83C18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1868983881;
  }

  else
  {
    v3 = 17481;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1868983881;
  }

  else
  {
    v5 = 17481;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_223BF4DAC();
  }

  return v8 & 1;
}

uint64_t sub_223B83CAC()
{
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

uint64_t sub_223B83D1C(uint64_t a1)
{
  sub_223BF458C();
}

uint64_t sub_223B83D78()
{
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

void sub_223B83DF0(uint64_t *a1@<X8>)
{
  v2 = 17481;
  if (*v1)
  {
    v2 = 1868983881;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_223B83E1C()
{
  if (*v0)
  {
    return 1868983881;
  }

  else
  {
    return 17481;
  }
}

uint64_t sub_223B83E50(uint64_t a1)
{
  v2 = sub_223B87E74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B83E8C(uint64_t a1)
{
  v2 = sub_223B87E74();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_223B83F20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_223B87AD4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_223B83F50(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0x654B656C62616E45;
  v5 = 0x8000000223C03C30;
  v6 = 0xD000000000000015;
  if (v2 != 6)
  {
    v6 = 0x7543656D756C6F56;
    v5 = 0xEB00000000657672;
  }

  v7 = 0xE700000000000000;
  v8 = 0x79654B656D6954;
  if (v2 != 4)
  {
    v8 = 0x74696E55656D6954;
    v7 = 0xEC00000065707954;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x74696E556E696147;
  v10 = 0xEC00000065707954;
  if (v2 != 2)
  {
    v9 = 17481;
    v10 = 0xE200000000000000;
  }

  if (*v1)
  {
    v4 = 0x79654B6E696147;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
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

unint64_t sub_223B84064()
{
  v1 = *v0;
  v2 = 0x654B656C62616E45;
  v3 = 0xD000000000000015;
  if (v1 != 6)
  {
    v3 = 0x7543656D756C6F56;
  }

  v4 = 0x79654B656D6954;
  if (v1 != 4)
  {
    v4 = 0x74696E55656D6954;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74696E556E696147;
  if (v1 != 2)
  {
    v5 = 17481;
  }

  if (*v0)
  {
    v2 = 0x79654B6E696147;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_223B84174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223B87AD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223B841A8(uint64_t a1)
{
  v2 = sub_223B883E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B841E4(uint64_t a1)
{
  v2 = sub_223B883E0();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_223B84220@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_223B852C4(a2, v6);
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

uint64_t sub_223B84298()
{
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

uint64_t sub_223B843A0(uint64_t a1)
{
  sub_223BF458C();
}

uint64_t sub_223B84494()
{
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

unint64_t sub_223B84598@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_223B87B20(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_223B845C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6570795474726F50;
  v5 = 0xEE0073726574656DLL;
  v6 = 0x617261506B637544;
  v7 = 0x8000000223C03C30;
  v8 = 0xD000000000000015;
  if (v2 != 3)
  {
    v8 = 0x7543656D756C6F56;
    v7 = 0xEB00000000657672;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x617261506574754DLL;
    v3 = 0xED0000726574656DLL;
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

uint64_t sub_223B8468C()
{
  v1 = *v0;
  v2 = 0x6570795474726F50;
  v3 = 0x617261506B637544;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0x7543656D756C6F56;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x617261506574754DLL;
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

unint64_t sub_223B8474C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223B87B20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223B84780(uint64_t a1)
{
  v2 = sub_223B87EC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B847BC(uint64_t a1)
{
  v2 = sub_223B87EC8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_223B847F8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_223B85654(a2, v8);
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

uint64_t sub_223B84880@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_223B87B6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_223B848B4(uint64_t a1)
{
  v2 = sub_223B8706C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B848F0(uint64_t a1)
{
  v2 = sub_223B8706C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_223B8492C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_223B85A70(a2, v11);
  if (!v2)
  {
    v5 = v11[11];
    *(a1 + 160) = v11[10];
    *(a1 + 176) = v5;
    *(a1 + 192) = v11[12];
    *(a1 + 208) = v12;
    v6 = v11[7];
    *(a1 + 96) = v11[6];
    *(a1 + 112) = v6;
    v7 = v11[9];
    *(a1 + 128) = v11[8];
    *(a1 + 144) = v7;
    v8 = v11[3];
    *(a1 + 32) = v11[2];
    *(a1 + 48) = v8;
    v9 = v11[5];
    *(a1 + 64) = v11[4];
    *(a1 + 80) = v9;
    result = *v11;
    v10 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v10;
  }

  return result;
}

uint64_t sub_223B849D0()
{
  if (*v0)
  {
    return 0x72616C616373;
  }

  else
  {
    return 16996;
  }
}

uint64_t sub_223B849FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 16996 && a2 == 0xE200000000000000;
  if (v5 || (sub_223BF4DAC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72616C616373 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_223BF4DAC();

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

uint64_t sub_223B84ACC(uint64_t a1)
{
  v2 = sub_223B88990();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B84B08(uint64_t a1)
{
  v2 = sub_223B88990();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223B84B44@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_223B863F4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_223B84B8C()
{
  sub_223BF4E8C();
  sub_223BF458C();
  return sub_223BF4EBC();
}

uint64_t sub_223B84C00()
{
  sub_223BF4E8C();
  sub_223BF458C();
  return sub_223BF4EBC();
}

uint64_t sub_223B84C54@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_223BF4C2C();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_223B84CE4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_223BF4C2C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_223B84D3C(uint64_t a1)
{
  v2 = sub_223B8849C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B84D78(uint64_t a1)
{
  v2 = sub_223B8849C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_223B84DB4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_223B86660(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_223B84DFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72756769666E6F43;
  }

  else
  {
    v3 = 0x61446E6F6D6D6F43;
  }

  if (v2)
  {
    v4 = 0xEA00000000006174;
  }

  else
  {
    v4 = 0xEE00736E6F697461;
  }

  if (*a2)
  {
    v5 = 0x72756769666E6F43;
  }

  else
  {
    v5 = 0x61446E6F6D6D6F43;
  }

  if (*a2)
  {
    v6 = 0xEE00736E6F697461;
  }

  else
  {
    v6 = 0xEA00000000006174;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_223BF4DAC();
  }

  return v8 & 1;
}

uint64_t sub_223B84EB4()
{
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

uint64_t sub_223B84F48(uint64_t a1)
{
  sub_223BF458C();
}

uint64_t sub_223B84FC8()
{
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

uint64_t sub_223B85064@<X0>(char *a3@<X8>)
{
  v4 = sub_223BF4C2C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_223B850C0(uint64_t *a1@<X8>)
{
  v2 = 0x61446E6F6D6D6F43;
  if (*v1)
  {
    v2 = 0x72756769666E6F43;
  }

  v3 = 0xEA00000000006174;
  if (*v1)
  {
    v3 = 0xEE00736E6F697461;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_223B85110()
{
  if (*v0)
  {
    return 0x72756769666E6F43;
  }

  else
  {
    return 0x61446E6F6D6D6F43;
  }
}

uint64_t sub_223B85168@<X0>(char *a4@<X8>)
{
  v5 = sub_223BF4C2C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_223B851C8(uint64_t a1)
{
  v2 = sub_223B86AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B85204(uint64_t a1)
{
  v2 = sub_223B86AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_223B85240@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_223B86814(a2, v6);
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

uint64_t sub_223B852C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1AF0, &qword_223BFBBE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B883E0();
  sub_223BF4ECC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v33[0]) = 0;
  v9 = sub_223BF4CAC();
  LOBYTE(v33[0]) = 1;
  v10 = sub_223BF4CAC();
  LOBYTE(v33[0]) = 2;
  v27 = sub_223BF4CAC();
  LOBYTE(v33[0]) = 3;
  v11 = sub_223BF4C9C();
  v26 = v12;
  v25 = v11;
  LOBYTE(v33[0]) = 4;
  v24 = sub_223BF4CAC();
  LOBYTE(v33[0]) = 5;
  v23 = sub_223BF4CAC();
  LOBYTE(v33[0]) = 6;
  v22 = sub_223BF4C6C();
  v36[0] = 7;
  sub_223B87F70();
  sub_223BF4C8C();
  (*(v6 + 8))(v8, v5);
  v21 = v37;
  *&v28 = v9;
  *(&v28 + 1) = v10;
  v13 = v27;
  v14 = v25;
  *&v29 = v27;
  *(&v29 + 1) = v25;
  v15 = v24;
  *&v30 = v26;
  *(&v30 + 1) = v24;
  v16 = v23;
  *&v31 = v23;
  BYTE8(v31) = v22;
  v32 = v37;
  sub_223B88434(&v28, v33);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v33[0] = v9;
  v33[1] = v10;
  v33[2] = v13;
  v33[3] = v14;
  v33[4] = v26;
  v33[5] = v15;
  v33[6] = v16;
  v34 = v22;
  v35 = v21;
  result = sub_223B8846C(v33);
  v18 = v31;
  *(a2 + 32) = v30;
  *(a2 + 48) = v18;
  *(a2 + 64) = v32;
  v19 = v29;
  *a2 = v28;
  *(a2 + 16) = v19;
  return result;
}

uint64_t sub_223B85654@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A80, &qword_223BFB838);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_223B87EC8();
  sub_223BF4ECC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v60);
  }

  v10 = v6;
  LOBYTE(v35) = 0;
  v11 = v5;
  v26 = sub_223BF4C7C();
  v59 = v12 & 1;
  LOBYTE(v35) = 1;
  v13 = sub_223BF4C5C();
  v15 = v14;
  v25 = v13;
  v48 = 2;
  sub_223B87F1C();
  sub_223BF4C8C();
  v56 = v51;
  v57 = v52;
  v58 = v53;
  v54 = v49;
  v55 = v50;
  LOBYTE(v35) = 3;
  v16 = sub_223BF4C6C();
  v46 = 4;
  sub_223B87F70();
  sub_223BF4C8C();
  (*(v10 + 8))(v8, v11);
  v24 = v47;
  v17 = v25;
  v18 = v26;
  *&v27 = v26;
  v19 = v59;
  BYTE8(v27) = v59;
  *&v28 = v25;
  *(&v28 + 1) = v15;
  v31 = v56;
  v32 = v57;
  *&v33 = v58;
  v30 = v55;
  v29 = v54;
  BYTE8(v33) = v16;
  v34 = v47;
  sub_223B87FC4(&v27, &v35);
  __swift_destroy_boxed_opaque_existential_0(v60);
  v35 = v18;
  v36 = v19;
  v37 = v17;
  v38 = v15;
  v41 = v56;
  v42 = v57;
  v43 = v58;
  v39 = v54;
  v40 = v55;
  v44 = v16;
  v45 = v24;
  result = sub_223B87FFC(&v35);
  v21 = v32;
  *(a2 + 64) = v31;
  *(a2 + 80) = v21;
  *(a2 + 96) = v33;
  *(a2 + 112) = v34;
  v22 = v28;
  *a2 = v27;
  *(a2 + 16) = v22;
  v23 = v30;
  *(a2 + 32) = v29;
  *(a2 + 48) = v23;
  return result;
}

uint64_t sub_223B85A70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B19F8, &qword_223BFB380);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v9 = a1[3];
  v98 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_223B8706C();
  sub_223BF4ECC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v98);
  }

  v10 = v6;
  v53 = a2;
  LOBYTE(v68[0]) = 0;
  v11 = v5;
  v13 = sub_223BF4C9C();
  v52 = v14;
  LOBYTE(v68[0]) = 1;
  v15 = sub_223BF4C5C();
  v51 = v16;
  v17 = v15;
  LOBYTE(v68[0]) = 2;
  v18 = sub_223BF4C5C();
  v49 = v19;
  LOBYTE(v68[0]) = 3;
  v20 = sub_223BF4C9C();
  v47 = v18;
  v48 = v20;
  v50 = v21;
  LOBYTE(v68[0]) = 4;
  v45 = sub_223BF4C6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A00, &qword_223BFB388);
  LOBYTE(v54) = 5;
  sub_223B8723C(&qword_281339308, &qword_2813392F8, MEMORY[0x277D83BB8], MEMORY[0x277D83978]);
  sub_223BF4C8C();
  v44 = v68[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A10, &unk_223BFB398);
  LOBYTE(v54) = 6;
  sub_223B87334(&qword_281339320, sub_223B870C0, MEMORY[0x277D83978]);
  v43 = 0;
  sub_223BF4C8C();
  v46 = 0;
  v22 = v68[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1898, &qword_223BFA830);
  LOBYTE(v54) = 7;
  sub_223B87114(&qword_281339310, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  v23 = v46;
  sub_223BF4C8C();
  v46 = v23;
  if (v23)
  {
    (*(v10 + 8))(v8, v11);
    __swift_destroy_boxed_opaque_existential_0(v98);
    v24 = 0;
    v25 = v43;
  }

  else
  {
    v42 = v22;
    v41 = v68[0];
    v81 = 8;
    sub_223B87180();
    v26 = v46;
    sub_223BF4C8C();
    v46 = v26;
    if (!v26)
    {
      (*(v10 + 8))(v8, v11);
      v94 = v86;
      v95 = v87;
      v96 = v88;
      v90 = v82;
      v91 = v83;
      v92 = v84;
      v93 = v85;
      v64 = v86;
      v65 = v87;
      v66 = v88;
      v60 = v82;
      v61 = v83;
      v97 = v89;
      v27 = v52;
      *&v54 = v13;
      *(&v54 + 1) = v52;
      v28 = v17;
      *&v55 = v17;
      v30 = v50;
      v29 = v51;
      v31 = v47;
      *(&v55 + 1) = v51;
      *&v56 = v47;
      v32 = v49;
      *(&v56 + 1) = v49;
      *&v57 = v48;
      *(&v57 + 1) = v50;
      LOBYTE(v58) = v45;
      *(&v58 + 1) = v44;
      *&v59 = v42;
      *(&v59 + 1) = v41;
      v67 = v89;
      v62 = v84;
      v63 = v85;
      sub_223B871D4(&v54, v68);
      __swift_destroy_boxed_opaque_existential_0(v98);
      v68[0] = v13;
      v68[1] = v27;
      v68[2] = v28;
      v68[3] = v29;
      v68[4] = v31;
      v68[5] = v32;
      v68[6] = v48;
      v68[7] = v30;
      v69 = v45;
      v70 = v44;
      v71 = v42;
      v77 = v94;
      v78 = v95;
      v79 = v96;
      v72 = v41;
      v80 = v97;
      v73 = v90;
      v74 = v91;
      v75 = v92;
      v76 = v93;
      result = sub_223B8720C(v68);
      v33 = v65;
      v34 = v53;
      *(v53 + 160) = v64;
      *(v34 + 176) = v33;
      *(v34 + 192) = v66;
      *(v34 + 208) = v67;
      v35 = v61;
      *(v34 + 96) = v60;
      *(v34 + 112) = v35;
      v36 = v63;
      *(v34 + 128) = v62;
      *(v34 + 144) = v36;
      v37 = v57;
      *(v34 + 32) = v56;
      *(v34 + 48) = v37;
      v38 = v59;
      *(v34 + 64) = v58;
      *(v34 + 80) = v38;
      v39 = v55;
      *v34 = v54;
      *(v34 + 16) = v39;
      return result;
    }

    (*(v10 + 8))(v8, v11);
    __swift_destroy_boxed_opaque_existential_0(v98);
    v24 = 1;
    v25 = v43;
  }

  if (!v25)
  {
  }

  if (v24)
  {
  }

  return result;
}

uint64_t sub_223B861A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B19F0, &qword_223BFB378);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B87018();
  sub_223BF4ECC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v9 = sub_223BF4C9C();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_223BF4C9C();
  v21 = v12;
  v23 = 2;
  v13 = sub_223BF4C9C();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

uint64_t sub_223B863F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1B78, &qword_223BFBF18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B88990();
  sub_223BF4ECC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1A08, &qword_223BFB390);
  HIBYTE(v8) = 0;
  sub_223B872C8(&qword_2813392F8, MEMORY[0x277D83BB8], MEMORY[0x277D83978]);
  sub_223BF4CBC();
  v7 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1B88, &qword_223BFBF20);
  HIBYTE(v8) = 1;
  sub_223B889E4(&qword_27D0B1B90, &qword_27D0B1B98, &unk_223BF7940, MEMORY[0x277D83978]);
  sub_223BF4CBC();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

void *sub_223B86660(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1B00, &qword_223BFBBE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B8849C();
  sub_223BF4ECC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1B10, &qword_223BFBBF0);
    sub_223B884F0(&qword_27D0B1B18, sub_223B88568, MEMORY[0x277D83978]);
    sub_223BF4CBC();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

uint64_t sub_223B86814@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B19B8, &qword_223BFB038);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B86AC4();
  sub_223BF4ECC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  sub_223B86B18();
  sub_223BF4CBC();
  v17 = v19;
  v18 = v20;
  v9 = v22;
  v10 = v24;
  v15 = v23;
  v16 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B19C0, &qword_223BFB040);
  v25 = 1;
  sub_223B86C14(&qword_281339338, sub_223B86B6C, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_223BF4CBC();
  (*(v6 + 8))(v8, v5);
  v12 = v18;
  v11 = v19;

  __swift_destroy_boxed_opaque_existential_0(a1);

  v14 = v16;
  *a2 = v17;
  a2[1] = v12;
  a2[2] = v14;
  a2[3] = v9;
  a2[4] = v15;
  a2[5] = v10;
  a2[6] = v11;
  return result;
}

unint64_t sub_223B86AC4()
{
  result = qword_281339A80;
  if (!qword_281339A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A80);
  }

  return result;
}

unint64_t sub_223B86B18()
{
  result = qword_281339A88;
  if (!qword_281339A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A88);
  }

  return result;
}

unint64_t sub_223B86B6C()
{
  result = qword_281339AA8;
  if (!qword_281339AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AA8);
  }

  return result;
}

unint64_t sub_223B86BC0()
{
  result = qword_27D0B19D0;
  if (!qword_27D0B19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B19D0);
  }

  return result;
}

uint64_t sub_223B86C14(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B19C0, &qword_223BFB040);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223B86C98()
{
  result = qword_27D0B19E0;
  if (!qword_27D0B19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B19E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20AudioDSPManagerSwift07VirtualA24GraphConfigurationSchemaV0F0V10VolumeInfoV14DuckParametersVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_20AudioDSPManagerSwift07VirtualA24GraphConfigurationSchemaV0F0V10VolumeInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
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

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_223B86D6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_223B86DB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_223B86E4C(uint64_t a1, int a2)
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

uint64_t sub_223B86E94(uint64_t result, int a2, int a3)
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

unint64_t sub_223B86F14()
{
  result = qword_27D0B19E8;
  if (!qword_27D0B19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B19E8);
  }

  return result;
}

unint64_t sub_223B86F6C()
{
  result = qword_281339A70;
  if (!qword_281339A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A70);
  }

  return result;
}

unint64_t sub_223B86FC4()
{
  result = qword_281339A78;
  if (!qword_281339A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A78);
  }

  return result;
}

unint64_t sub_223B87018()
{
  result = qword_281339AA0;
  if (!qword_281339AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AA0);
  }

  return result;
}

unint64_t sub_223B8706C()
{
  result = qword_281339AE8;
  if (!qword_281339AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AE8);
  }

  return result;
}

unint64_t sub_223B870C0()
{
  result = qword_281339AB0;
  if (!qword_281339AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AB0);
  }

  return result;
}

uint64_t sub_223B87114(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1898, &qword_223BFA830);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223B87180()
{
  result = qword_281339AD0;
  if (!qword_281339AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AD0);
  }

  return result;
}

uint64_t sub_223B8723C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1A00, &qword_223BFB388);
    sub_223B872C8(a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223B872C8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1A08, &qword_223BFB390);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223B87334(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1A10, &unk_223BFB398);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223B873AC()
{
  result = qword_27D0B1A40;
  if (!qword_27D0B1A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1A40);
  }

  return result;
}

unint64_t sub_223B87400()
{
  result = qword_27D0B1A58;
  if (!qword_27D0B1A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1A58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VirtualAudioGraphConfigurationSchema.Configuration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VirtualAudioGraphConfigurationSchema.Configuration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_223B875E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_223B8763C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20AudioDSPManagerSwift19UntypedPropertyListOSg(void *a1)
{
  v1 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
  v2 = v1 ^ 0x7E;
  v3 = 128 - v1;
  if (v2 >= 0x7A)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_223B876F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_223B87740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_223B87798()
{
  result = qword_27D0B1A60;
  if (!qword_27D0B1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1A60);
  }

  return result;
}

unint64_t sub_223B877F0()
{
  result = qword_27D0B1A68;
  if (!qword_27D0B1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1A68);
  }

  return result;
}

unint64_t sub_223B87848()
{
  result = qword_281339AD8;
  if (!qword_281339AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AD8);
  }

  return result;
}

unint64_t sub_223B878A0()
{
  result = qword_281339AE0;
  if (!qword_281339AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AE0);
  }

  return result;
}

unint64_t sub_223B878F8()
{
  result = qword_281339A90;
  if (!qword_281339A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A90);
  }

  return result;
}

unint64_t sub_223B87950()
{
  result = qword_281339A98;
  if (!qword_281339A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339A98);
  }

  return result;
}

uint64_t sub_223B879A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6150746573657270 && a2 == 0xEA00000000006874;
  if (v4 || (sub_223BF4DAC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000223C04950 == a2 || (sub_223BF4DAC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6150676E696E7574 && a2 == 0xEA00000000006874)
  {

    return 2;
  }

  else
  {
    v6 = sub_223BF4DAC();

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

unint64_t sub_223B87AD4(uint64_t a1, uint64_t a2)
{
  v2 = sub_223BF4C2C();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_223B87B20(uint64_t a1, uint64_t a2)
{
  v2 = sub_223BF4C2C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_223B87B6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6870617267 && a2 == 0xE500000000000000;
  if (v4 || (sub_223BF4DAC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70697274737561 && a2 == 0xE700000000000000 || (sub_223BF4DAC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69727473706F7270 && a2 == 0xE900000000000070 || (sub_223BF4DAC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7079546E69616863 && a2 == 0xE900000000000065 || (sub_223BF4DAC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6143646C756F6873 && a2 == 0xEB00000000656863 || (sub_223BF4DAC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000223C04970 == a2 || (sub_223BF4DAC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_223BF4DAC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F43656D756C6F76 && a2 == 0xEE0073646E616D6DLL || (sub_223BF4DAC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E49656D756C6F76 && a2 == 0xEA00000000006F66)
  {

    return 8;
  }

  else
  {
    v6 = sub_223BF4DAC();

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

unint64_t sub_223B87E74()
{
  result = qword_281339AC8;
  if (!qword_281339AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AC8);
  }

  return result;
}

unint64_t sub_223B87EC8()
{
  result = qword_27D0B1A88;
  if (!qword_27D0B1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1A88);
  }

  return result;
}

unint64_t sub_223B87F1C()
{
  result = qword_27D0B1A98;
  if (!qword_27D0B1A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1A98);
  }

  return result;
}

unint64_t sub_223B87F70()
{
  result = qword_27D0B1AA0;
  if (!qword_27D0B1AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1AA0);
  }

  return result;
}

unint64_t sub_223B8802C()
{
  result = qword_27D0B1AC0;
  if (!qword_27D0B1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1AC0);
  }

  return result;
}

unint64_t sub_223B88080()
{
  result = qword_27D0B1AC8;
  if (!qword_27D0B1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1AC8);
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

uint64_t sub_223B88128(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_223B88170(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_223B881D4()
{
  result = qword_27D0B1AD0;
  if (!qword_27D0B1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1AD0);
  }

  return result;
}

unint64_t sub_223B8822C()
{
  result = qword_27D0B1AD8;
  if (!qword_27D0B1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1AD8);
  }

  return result;
}

unint64_t sub_223B88284()
{
  result = qword_27D0B1AE0;
  if (!qword_27D0B1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1AE0);
  }

  return result;
}

unint64_t sub_223B882DC()
{
  result = qword_27D0B1AE8;
  if (!qword_27D0B1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1AE8);
  }

  return result;
}

unint64_t sub_223B88334()
{
  result = qword_281339AB8;
  if (!qword_281339AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AB8);
  }

  return result;
}

unint64_t sub_223B8838C()
{
  result = qword_281339AC0;
  if (!qword_281339AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339AC0);
  }

  return result;
}

unint64_t sub_223B883E0()
{
  result = qword_27D0B1AF8;
  if (!qword_27D0B1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1AF8);
  }

  return result;
}

unint64_t sub_223B8849C()
{
  result = qword_27D0B1B08;
  if (!qword_27D0B1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B08);
  }

  return result;
}

uint64_t sub_223B884F0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1B10, &qword_223BFBBF0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223B88568()
{
  result = qword_27D0B1B20;
  if (!qword_27D0B1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B20);
  }

  return result;
}

unint64_t sub_223B885BC()
{
  result = qword_27D0B1B40;
  if (!qword_27D0B1B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VirtualAudioGraphConfigurationSchema.Configuration.VolumeInfo.DuckParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VirtualAudioGraphConfigurationSchema.Configuration.VolumeInfo.DuckParameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_223B88784()
{
  result = qword_27D0B1B48;
  if (!qword_27D0B1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B48);
  }

  return result;
}

unint64_t sub_223B887DC()
{
  result = qword_27D0B1B50;
  if (!qword_27D0B1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B50);
  }

  return result;
}

unint64_t sub_223B88834()
{
  result = qword_27D0B1B58;
  if (!qword_27D0B1B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B58);
  }

  return result;
}

unint64_t sub_223B8888C()
{
  result = qword_27D0B1B60;
  if (!qword_27D0B1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B60);
  }

  return result;
}

unint64_t sub_223B888E4()
{
  result = qword_27D0B1B68;
  if (!qword_27D0B1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B68);
  }

  return result;
}

unint64_t sub_223B8893C()
{
  result = qword_27D0B1B70;
  if (!qword_27D0B1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B70);
  }

  return result;
}

unint64_t sub_223B88990()
{
  result = qword_27D0B1B80;
  if (!qword_27D0B1B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1B80);
  }

  return result;
}

uint64_t sub_223B889E4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1B88, &qword_223BFBF20);
    sub_223B569C0(a2, &qword_27D0B1BA0, &qword_223BFBF28, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223B88A90()
{
  result = qword_27D0B1BC0;
  if (!qword_27D0B1BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1BC0);
  }

  return result;
}

unint64_t sub_223B88AE8()
{
  result = qword_27D0B1BC8;
  if (!qword_27D0B1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1BC8);
  }

  return result;
}

unint64_t sub_223B88B40()
{
  result = qword_27D0B1BD0;
  if (!qword_27D0B1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1BD0);
  }

  return result;
}

unint64_t sub_223B88B98()
{
  result = sub_223B5B1C4(1769105766, 0xE400000000000000);
  dword_28133B5DC = result;
  return result;
}

unint64_t sub_223B88BC4()
{
  result = sub_223B5B1C4(1886546278, 0xE400000000000000);
  dword_28133B5D8 = result;
  return result;
}

unint64_t sub_223B88BF0()
{
  result = sub_223B5B1C4(2020764006, 0xE400000000000000);
  dword_28133B5D4 = result;
  return result;
}

unint64_t sub_223B88C44()
{
  result = sub_223B5B1C4(1836606317, 0xE400000000000000);
  dword_28133B5CC = result;
  return result;
}

unint64_t sub_223B88C94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1BD8, &qword_223BFC198);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40) - 8);
  v1 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_223BF84C0;
  v3 = v0[14];
  if (qword_281339AF8 != -1)
  {
    v8 = v2;
    swift_once();
    v2 = v8;
  }

  v4 = (v2 + v1);
  *v4 = dword_28133B5CC;
  *(v4 + v3) = 1;
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
  swift_storeEnumTagMultiPayload();
  v6 = sub_223B752A0(v5);
  swift_setDeallocating();
  sub_223B89B88(v4);
  swift_deallocClassInstance();
  return v6;
}

unint64_t sub_223B88E04()
{
  result = sub_223B5B1C4(1819502691, 0xE400000000000000);
  dword_28133B5E0 = result;
  return result;
}

unint64_t sub_223B88E58()
{
  result = sub_223B5B1C4(2019846498, 0xE400000000000000);
  dword_28133B5C8 = result;
  return result;
}

unint64_t sub_223B88EAC()
{
  result = sub_223B5B1C4(1936881266, 0xE400000000000000);
  dword_28133B5E4 = result;
  return result;
}

unint64_t sub_223B88F00()
{
  result = sub_223B5B1C4(1937010531, 0xE400000000000000);
  dword_28133B5D0 = result;
  return result;
}

uint64_t sub_223B88F50(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    return *a4;
  }

  swift_once();
  return *a4;
}

unint64_t sub_223B89000(void *a1)
{
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xA000000000000000)
  {
    v2 = *((*a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if (*(v2 + 16))
    {

      v3 = sub_223B6F81C(0x72756F5361746144, 0xEF726564724F6563);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 8 * v3);

        if (v5 >> 61 == 1)
        {
          v6 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          goto LABEL_13;
        }
      }

      else
      {
      }
    }
  }

  v6 = 0;
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1BD8, &qword_223BFC198);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40) - 8);
  v8 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_223BF84C0;
  v10 = v7[14];
  if (qword_281339B28 != -1)
  {
    v15 = v9;
    swift_once();
    v9 = v15;
  }

  v11 = (v9 + v8);
  *v11 = dword_28133B5E4;
  *(v11 + v10) = v6;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
  swift_storeEnumTagMultiPayload();
  v13 = sub_223B752A0(v12);
  swift_setDeallocating();
  sub_223B89B88(v11);
  swift_deallocClassInstance();
  return v13;
}

char *sub_223B89224(unint64_t *a1)
{
  v1 = *a1;
  if ((~*a1 & 0xF000000000000007) == 0 || v1 >> 61 != 5)
  {
    goto LABEL_37;
  }

  v2 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v3 = MEMORY[0x277D84F90];
  if (!*(v2 + 16))
  {
LABEL_38:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1BD8, &qword_223BFC198);
    v30 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40) - 8);
    v31 = (*(*v30 + 80) + 32) & ~*(*v30 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_223BF84C0;
    v33 = v30[14];
    if (qword_281339B20 != -1)
    {
      v37 = v32;
      swift_once();
      v32 = v37;
    }

    v34 = (v32 + v31);
    *v34 = dword_28133B5E0;
    *(v34 + v33) = v3;
    v35 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
    swift_storeEnumTagMultiPayload();
    v36 = sub_223B752A0(v35);
    swift_setDeallocating();
    sub_223B89B88(v34);
    swift_deallocClassInstance();
    return v36;
  }

  v4 = sub_223B6F81C(0xD000000000000012, 0x8000000223BFC090);
  if ((v5 & 1) == 0)
  {
LABEL_35:

    goto LABEL_38;
  }

  v6 = *(*(v2 + 56) + 8 * v4);

  if (v6 >> 61 != 4)
  {

    goto LABEL_38;
  }

  v7 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  v8 = *(v7 + 16);
  if (v8)
  {
    v38 = v3;
    sub_223B57F74(0, v8, 0);
    v9 = 32;
    v10 = v38;
    do
    {
      v11 = *(v7 + v9);
      v12 = v11 & 0xE000000000000000;
      if ((v11 & 0xE000000000000000) == 0x2000000000000000)
      {
        v13 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      }

      else
      {
        v13 = 0;
      }

      v15 = *(v38 + 16);
      v14 = *(v38 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_223B57F74((v14 > 1), v15 + 1, 1);
      }

      *(v38 + 16) = v15 + 1;
      v16 = v38 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12 != 0x2000000000000000;
      v9 += 8;
      --v8;
    }

    while (v8);
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v17 = *(v10 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v19 = (v10 + 40);
    v20 = MEMORY[0x277D84F90];
    do
    {
      if ((*v19 & 1) == 0)
      {
        v21 = *(v19 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_223B7BF64(0, *(v20 + 2) + 1, 1, v20);
        }

        v23 = *(v20 + 2);
        v22 = *(v20 + 3);
        if (v23 >= v22 >> 1)
        {
          v20 = sub_223B7BF64((v22 > 1), v23 + 1, 1, v20);
        }

        *(v20 + 2) = v23 + 1;
        *&v20[8 * v23 + 32] = v21;
      }

      v19 += 16;
      --v17;
    }

    while (v17);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v24 = *(v20 + 2);
  if (!v24)
  {

LABEL_37:
    v3 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  result = sub_223B57F54(0, v24, 0);
  v26 = 32;
  v3 = v18;
  while (1)
  {
    v27 = *&v20[v26];
    if ((v27 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (HIDWORD(v27))
    {
      goto LABEL_42;
    }

    v29 = *(v18 + 16);
    v28 = *(v18 + 24);
    if (v29 >= v28 >> 1)
    {
      result = sub_223B57F54((v28 > 1), v29 + 1, 1);
    }

    *(v18 + 16) = v29 + 1;
    *(v18 + 4 * v29 + 32) = v27;
    v26 += 8;
    if (!--v24)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_223B89678(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v42 = sub_223BF430C();
  v10 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (!a4 && (v14 = 0xE000000000000000, a5 == 0xE000000000000000) || (v14 = 0xE000000000000000, (sub_223BF4DAC() & 1) != 0))
  {
    v15 = 0;
  }

  else
  {
    v44 = a4;
    v45 = a5;

    MEMORY[0x223DF2DE0](45, 0xE100000000000000);
    v15 = v44;
    v14 = v45;
  }

  v16 = 0xEE006C7070612D66;
  v17 = 0x7269662D78667561;
  v18 = (~v13 & 0xF000000000000007) != 0 && v13 >> 61 == 5;
  v19 = v18;
  v41 = v19;
  v43 = v13;
  if (v18)
  {
    v20 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if (*(v20 + 16))
    {

      v21 = sub_223B6F81C(0x614E6769666E6F43, 0xEA0000000000656DLL);
      if (v22)
      {
        v23 = *(*(v20 + 56) + 8 * v21);

        if (!(v23 >> 61))
        {
          v17 = *(v23 + 16);
          v16 = *(v23 + 24);
        }
      }

      else
      {
      }
    }
  }

  v44 = v15;
  v45 = v14;

  MEMORY[0x223DF2DE0](v17, v16);

  v24 = v44;
  v25 = v45;
  v44 = a2;
  v45 = a3;

  MEMORY[0x223DF2DE0](47, 0xE100000000000000);
  MEMORY[0x223DF2DE0](v24, v25);

  MEMORY[0x223DF2DE0](46, 0xE100000000000000);
  MEMORY[0x223DF2DE0](0x7473696C70, 0xE500000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1BD8, &qword_223BFC198);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40);
  v27 = *(*(v26 - 8) + 72);
  v28 = (*(*(v26 - 8) + 80) + 32) & ~*(*(v26 - 8) + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_223BFAEB0;
  v30 = (v29 + v28);
  v31 = *(v26 + 48);
  if (qword_281339B10 != -1)
  {
    swift_once();
  }

  *v30 = dword_28133B5D8;
  sub_223BF428C();

  (*(v10 + 32))(&v30[v31], v12, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1328, &qword_223BF8508);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
  swift_storeEnumTagMultiPayload();
  v32 = &v30[v27];
  if (qword_281339B08 != -1)
  {
    swift_once();
  }

  *v32 = dword_28133B5D4;
  if (!v41)
  {
    goto LABEL_31;
  }

  v33 = *((v43 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v33 + 16))
  {
    goto LABEL_31;
  }

  v34 = sub_223B6F81C(0x646E4963694D5056, 0xEA00000000007865);
  if ((v35 & 1) == 0)
  {

LABEL_31:
    v37 = 0;
    goto LABEL_32;
  }

  v36 = *(*(v33 + 56) + 8 * v34);

  if (v36 >> 61 != 1)
  {

    goto LABEL_31;
  }

  v37 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

LABEL_32:
  *&v32[*(v26 + 48)] = v37;
  swift_storeEnumTagMultiPayload();
  v38 = sub_223B752A0(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v38;
}

uint64_t sub_223B89B88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223B89BF0(void *a1)
{
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xA000000000000000)
  {
    v2 = *((*a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v2 = sub_223B758B4(MEMORY[0x277D84F90]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1BD8, &qword_223BFC198);
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40) - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_223BF84C0;
  v6 = v3[14];
  if (qword_281339B00 != -1)
  {
    v11 = v5;
    swift_once();
    v5 = v11;
  }

  v7 = (v5 + v4);
  *v7 = dword_28133B5D0;
  *(v7 + v6) = v2;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
  swift_storeEnumTagMultiPayload();
  v9 = sub_223B752A0(v8);
  swift_setDeallocating();
  sub_223B89B88(v7);
  swift_deallocClassInstance();
  return v9;
}

unint64_t sub_223B89DA0(void *a1)
{
  v1 = 1.0;
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xA000000000000000)
  {
    v3 = *((*a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if (*(v3 + 16))
    {

      v4 = sub_223B6F81C(0x65646E496D616542, 0xE900000000000078);
      if (v5)
      {
        v6 = *(*(v3 + 56) + 8 * v4);

        if (v6 >> 61 == 1)
        {
          v7 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          v1 = v7;
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1BD8, &qword_223BFC198);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1858, &unk_223BFAF40) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_223BF84C0;
  v11 = v8[14];
  if (qword_281339AF0 != -1)
  {
    v16 = v10;
    swift_once();
    v10 = v16;
  }

  v12 = v10 + v9;
  *(v10 + v9) = dword_28133B5C8;
  *(v10 + v9 + v11) = v1;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1288, &qword_223BFAF20);
  swift_storeEnumTagMultiPayload();
  v14 = sub_223B752A0(v13);
  swift_setDeallocating();
  sub_223B89B88(v12);
  swift_deallocClassInstance();
  return v14;
}

void sub_223B8A06C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [24],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_223B8A0C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = HIBYTE(v10);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v7 = 22;
    LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    v9 = this;
  }

  if (v9 > __src || (&v9->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v7 - size < v6)
    {
      std::string::__grow_by(this, v7, size - v7 + v6, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v11 = this;
    if ((v8 & 0x80) != 0)
    {
      v11 = this->__r_.__value_.__r.__words[0];
    }

    v12 = v11 + size;
    memmove(v11 + size, __src, v6);
    v12[v6] = 0;
    v13 = v6 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v13;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v13 & 0x7F;
    }
  }

  else
  {
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v6 > 0x16)
    {
      operator new();
    }

    v18 = v6;
    memcpy(__dst, __src, v6);
    *(__dst + v6) = 0;
    if ((v18 & 0x80u) == 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v15 = v18;
    }

    else
    {
      v15 = __dst[1];
    }

    std::string::append(this, v14, v15);
    if (v18 < 0)
    {
      operator delete(__dst[0]);
    }
  }

  return this;
}

void sub_223B8A290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2784F01E0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__deallocate_node(void **a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = v1 + 21;
      std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](&v3);
      if (*(v1 + 159) < 0)
      {
        operator delete(v1[17]);
      }

      if (*(v1 + 135) < 0)
      {
        operator delete(v1[14]);
      }

      v3 = v1 + 11;
      std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__destroy_vector::operator()[abi:ne200100](&v3);
      v3 = v1 + 8;
      std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v3);
      v3 = v1 + 5;
      std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v3);
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<adm::graph::KernelProperty>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::__fs::filesystem::path>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::__fs::filesystem::path>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__destroy_at[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::vector<std::shared_ptr<adm::graph::KernelProperty>>::clear[abi:ne200100](uint64_t *result)
{
  v2 = *result;
  for (i = result[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  result[1] = v2;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_223B8AE2C(void *a1, int a2)
{
  objc_sync_exit(v2);

  if (a2 == 3)
  {
    v7 = __cxa_begin_catch(a1);
    adm::consume_exception_and_terminate(v7, v8);
  }

  v9 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v10 = v9;
    adm::consume_exception_and_terminate(v10, v11);
  }

  adm::consume_unknown_exception_and_terminate(v9);
}

void sub_223B8AEAC(_Unwind_Exception *a1)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

adm::SystemConfiguration *adm::SystemConfiguration::SystemConfiguration(adm::SystemConfiguration *this, const SystemConfiguration *a2)
{
  *this = a2->mContext.mOS;
  if (*(&a2->mContext.mResourcePath.__pn_.__rep_.__l + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), a2->mContext.mResourcePath.__pn_.__rep_.__l.__data_, a2->mContext.mResourcePath.__pn_.__rep_.__l.__size_);
  }

  else
  {
    v4 = *a2->mContext.mResourcePath.__pn_.__rep_.__s.__data_;
    *(this + 3) = *(&a2->mContext.mResourcePath.__pn_.__rep_.__l + 2);
    *(this + 8) = v4;
  }

  if (*(&a2[1].mContext.mOS + 7) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *&a2->mContext.mResourcePath.var0, a2->mContext.var0);
  }

  else
  {
    v5 = *&a2->mContext.mResourcePath.var0;
    *(this + 6) = *&a2[1].mContext.mOS;
    *(this + 2) = v5;
  }

  *(this + 7) = a2[1].mContext.mResourcePath.__pn_.__rep_.__l.__data_;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 64), &a2[1].mContext.mResourcePath.__pn_.__rep_.__l.__size_);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 4, &a2[2].mContext.mOS);
  *(this + 128) = a2[2].mContext.mResourcePath.var0;
  *(this + 17) = a2[2].mContext.var0;
  if (a2[3].mContext.mResourcePath.__pn_.__rep_.__s.__data_[15] < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *&a2[3].mContext.mOS, a2[3].mContext.mResourcePath.__pn_.__rep_.__l.__data_);
  }

  else
  {
    v6 = *&a2[3].mContext.mOS;
    *(this + 20) = a2[3].mContext.mResourcePath.__pn_.__rep_.__l.__size_;
    *(this + 9) = v6;
  }

  if (SHIBYTE(a2[3].mContext.var0) < 0)
  {
    std::string::__init_copy_ctor_external(this + 7, *(&a2[3].mContext.mResourcePath.__pn_.__rep_.__l + 2), *&a2[3].mContext.mResourcePath.var0);
  }

  else
  {
    v7 = *(&a2[3].mContext.mResourcePath.__pn_.__rep_.__l + 1);
    *(this + 23) = a2[3].mContext.var0;
    *(this + 168) = v7;
  }

  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 56) = a2[4].mContext.mResourcePath.var0;
  std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__rehash<true>(this + 192, a2[4].mContext.mResourcePath.__pn_.__rep_.__l.__data_);
  size = a2[4].mContext.mResourcePath.__pn_.__rep_.__l.__size_;
  if (!size)
  {
    goto LABEL_32;
  }

  do
  {
    v9 = std::__string_hash<char>::operator()[abi:ne200100]((size + 2));
    v10 = v9;
    v11 = *(this + 200);
    if (!*&v11)
    {
      goto LABEL_30;
    }

    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v14 = v9;
      if (v9 >= *&v11)
      {
        v14 = v9 % *&v11;
      }
    }

    else
    {
      v14 = (*&v11 - 1) & v9;
    }

    v15 = *(*(this + 24) + 8 * v14);
    if (!v15 || (v16 = *v15) == 0)
    {
LABEL_30:
      operator new();
    }

    while (1)
    {
      v17 = v16[1];
      if (v17 == v10)
      {
        break;
      }

      if (v13 > 1)
      {
        if (v17 >= *&v11)
        {
          v17 %= *&v11;
        }
      }

      else
      {
        v17 &= *&v11 - 1;
      }

      if (v17 != v14)
      {
        goto LABEL_30;
      }

LABEL_29:
      v16 = *v16;
      if (!v16)
      {
        goto LABEL_30;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v16 + 2, size + 2))
    {
      goto LABEL_29;
    }

    size = *size;
  }

  while (size);
LABEL_32:
  if (a2[5].mContext.mResourcePath.__pn_.__rep_.__s.__data_[7] < 0)
  {
    std::string::__init_copy_ctor_external((this + 232), a2[4].mContext.var0, *&a2[5].mContext.mOS);
  }

  else
  {
    v18 = *&a2[4].mContext.var0;
    *(this + 31) = a2[5].mContext.mResourcePath.__pn_.__rep_.__l.__data_;
    *(this + 232) = v18;
  }

  v19 = a2[5].mContext.mResourcePath.__pn_.__rep_.__l.__size_;
  *(this + 260) = a2[5].mContext.mResourcePath.__pn_.__rep_.__s.__data_[12];
  *(this + 64) = v19;
  return this;
}

void sub_223B8B270(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::~__hash_table(v2);
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  adm::ConfigurationContext::~ConfigurationContext(v1);
  _Unwind_Resume(a1);
}

void adm::SystemConfiguration::~SystemConfiguration(void **this)
{
  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::~__hash_table((this + 24));
  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 120) == 1 && *(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 88) == 1 && *(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void adm::ConfigurationContext::~ConfigurationContext(void **this)
{
  if (*(this + 120) == 1 && *(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 88) == 1 && *(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  *&this[1].__r_.__value_.__l.__data_ = 0u;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  LODWORD(this[2].__r_.__value_.__r.__words[1]) = *(a2 + 14);
  std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__rehash<true>(&this[1], *(a2 + 4));
  for (i = *(a2 + 5); i; i = *i)
  {
    v6 = std::__string_hash<char>::operator()[abi:ne200100]((i + 2));
    v7 = v6;
    size = this[1].__r_.__value_.__l.__size_;
    if (!size)
    {
      goto LABEL_21;
    }

    v9 = vcnt_s8(size);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = v6;
      if (v6 >= size)
      {
        v11 = v6 % size;
      }
    }

    else
    {
      v11 = (size - 1) & v6;
    }

    v12 = *(this[1].__r_.__value_.__r.__words[0] + 8 * v11);
    if (!v12 || (v13 = *v12) == 0)
    {
LABEL_21:
      operator new();
    }

    while (1)
    {
      v14 = v13[1];
      if (v14 == v7)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v14 >= size)
        {
          v14 %= size;
        }
      }

      else
      {
        v14 &= size - 1;
      }

      if (v14 != v11)
      {
        goto LABEL_21;
      }

LABEL_20:
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v13 + 2, i + 2))
    {
      goto LABEL_20;
    }
  }

  return this;
}

void sub_223B8BCD8(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::~__hash_table(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = (a2 + 168);
    std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a2 + 159) < 0)
    {
      operator delete(*(a2 + 136));
    }

    if (*(a2 + 135) < 0)
    {
      operator delete(*(a2 + 112));
    }

    v3 = (a2 + 88);
    std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (a2 + 64);
    std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (a2 + 40);
    std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

std::string *std::pair<std::string const,adm::DSPGraphBasicConfiguration>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  adm::DSPGraphBasicConfiguration::DSPGraphBasicConfiguration(this + 1, (a2 + 24));
  return this;
}

void sub_223B8C048(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *adm::DSPGraphBasicConfiguration::DSPGraphBasicConfiguration(std::string *this, const adm::DSPGraphBasicConfiguration *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  std::vector<std::__fs::filesystem::path>::__init_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(this, *a2, *(a2 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3));
  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::__fs::filesystem::path>::__init_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(&this[1], *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  v4 = *(a2 + 6);
  v5 = *(a2 + 7);
  if (v5 != v4)
  {
    std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__vallocate[abi:ne200100](&this[2], 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4));
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v6 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v7 = *(a2 + 6);
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v7;
  }

  v8 = *(a2 + 30);
  this[5].__r_.__value_.__l.__size_ = 0;
  LODWORD(this[5].__r_.__value_.__l.__data_) = v8;
  this[5].__r_.__value_.__r.__words[2] = 0;
  this[6].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__init_with_size[abi:ne200100]<std::shared_ptr<adm::graph::KernelProperty>*,std::shared_ptr<adm::graph::KernelProperty>*>(&this[5].__r_.__value_.__l.__size_, *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 4);
  return this;
}

void sub_223B8C1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (*(v9 + 95) < 0)
  {
    operator delete(*(v9 + 72));
  }

  a9 = v10;
  std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = v9;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::__fs::filesystem::path>::__init_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::__fs::filesystem::path>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_223B8C2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__init_with_size[abi:ne200100]<std::shared_ptr<adm::graph::KernelProperty>*,std::shared_ptr<adm::graph::KernelProperty>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::shared_ptr<adm::graph::KernelProperty>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<adm::graph::KernelProperty>>,std::shared_ptr<adm::graph::KernelProperty>*,std::shared_ptr<adm::graph::KernelProperty>*,std::shared_ptr<adm::graph::KernelProperty>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  for (result = a4; a2 != a3; result += 2)
  {
    v5 = a2[1];
    *result = *a2;
    result[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    a2 += 2;
  }

  return result;
}

void std::allocator<std::shared_ptr<adm::graph::KernelProperty>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::allocator<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig*,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig*,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = (a1 + v6);
      if (*(a1 + v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((a3 + v6), *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        *(v7 + 16) = *(v8 + 2);
        *v7 = v9;
      }

      v10 = (a3 + v6);
      v11 = a1 + v6;
      if (*(a1 + v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v10 + 1, *(v11 + 24), *(v11 + 32));
      }

      else
      {
        v12 = *(v11 + 24);
        v10[1].__r_.__value_.__r.__words[2] = *(v11 + 40);
        *&v10[1].__r_.__value_.__l.__data_ = v12;
      }

      v6 += 48;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_223B8C504(_Unwind_Exception *exception_object)
{
  while (v2 != v1)
  {
    v2 -= 48;
    std::__destroy_at[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig,0>(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::__fs::filesystem::path>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::__fs::filesystem::path>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*,std::__fs::filesystem::path*,std::__fs::filesystem::path*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void std::allocator<std::__fs::filesystem::path>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_223B8C7E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_223B8CA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AudioCaptureLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = AudioCaptureLibraryCore::frameworkLibrary;
  v6 = AudioCaptureLibraryCore::frameworkLibrary;
  if (!AudioCaptureLibraryCore::frameworkLibrary)
  {
    v7 = xmmword_2784F0268;
    v8 = *off_2784F0278;
    v9 = 0;
    v4[3] = _sl_dlopen();
    AudioCaptureLibraryCore::frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_223B8CB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAudioCaptureInitializeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AudioCaptureLibrary();
  result = dlsym(v2, "AudioCaptureInitialize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAudioCaptureInitializeSymbolLoc::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AudioCaptureLibrary()
{
  v5 = 0;
  v0 = AudioCaptureLibraryCore(&v5);
  if (!v0)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AudioCaptureLibrary()"];
    [v1 handleFailureInFunction:v4 file:@"AudioDSPManagerImpl.mm" lineNumber:20 description:{@"%s", v5}];

    __break(1u);
    goto LABEL_5;
  }

  v1 = v0;
  v2 = v5;
  if (v5)
  {
LABEL_5:
    free(v2);
  }

  return v1;
}

uint64_t __AudioCaptureLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  AudioCaptureLibraryCore::frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_223B8CD88(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = AudioDSPManager;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_223B8CF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose((v6 - 80), 8);
  std::__optional_storage_base<adm::SystemConfiguration,false>::~__optional_storage_base(va);

  _Unwind_Resume(a1);
}

uint64_t adm::SystemConfiguration::operator=(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  std::string::operator=((a1 + 8), (a2 + 8));
  std::string::operator=((a1 + 32), (v2 + 32));
  v4 = *(v2 + 60);
  *(a1 + 56) = *(v2 + 56);
  *(a1 + 60) = v4;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 64), (v2 + 64));
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 96), (v2 + 96));
  *(a1 + 128) = *(v2 + 128);
  v5 = *(v2 + 136);
  *(a1 + 140) = *(v2 + 140);
  *(a1 + 136) = v5;
  std::string::operator=((a1 + 144), (v2 + 144));
  std::string::operator=((a1 + 168), (v2 + 168));
  if (a1 != v2)
  {
    v6 = (a1 + 192);
    *(a1 + 224) = *(v2 + 224);
    v7 = *(v2 + 208);
    v8 = *(a1 + 200);
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        *(*v6 + 8 * i) = 0;
      }

      v47 = v2;
      v10 = *(a1 + 208);
      *(a1 + 208) = 0;
      *(a1 + 216) = 0;
      if (v10)
      {
        v11 = v7 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        v12 = v10;
      }

      else
      {
        do
        {
          std::string::operator=((v10 + 2), (v7 + 2));
          if (v10 != v7)
          {
            *(v10 + 18) = *(v7 + 18);
            v13 = v7[7];
            v14 = v10[6];
            if (v14)
            {
              for (j = 0; j != v14; ++j)
              {
                *(v10[5] + 8 * j) = 0;
              }

              v16 = v10[7];
              v10[7] = 0;
              v10[8] = 0;
              if (v16)
              {
                v17 = v13 == 0;
              }

              else
              {
                v17 = 1;
              }

              if (v17)
              {
                v18 = v16;
              }

              else
              {
                do
                {
                  std::string::operator=((v16 + 2), (v13 + 2));
                  if (v16 == v13)
                  {
                    std::string::operator=((v16 + 14), (v13 + 14));
                    std::string::operator=((v16 + 17), (v13 + 17));
                    *(v16 + 40) = *(v13 + 40);
                  }

                  else
                  {
                    std::vector<std::__fs::filesystem::path>::__assign_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(v16 + 5, v13[5], v13[6], 0xAAAAAAAAAAAAAAABLL * ((v13[6] - v13[5]) >> 3));
                    std::vector<std::__fs::filesystem::path>::__assign_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(v16 + 8, v13[8], v13[9], 0xAAAAAAAAAAAAAAABLL * ((v13[9] - v13[8]) >> 3));
                    v19 = v16[11];
                    v21 = v13[11];
                    v20 = v13[12];
                    v22 = v20 - v21;
                    if (v16[13] - v19 < (v20 - v21))
                    {
                      v23 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 4);
                      std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__vdeallocate(v16 + 11);
                      if (v23 <= 0x555555555555555)
                      {
                        v24 = 0x5555555555555556 * ((v16[13] - v16[11]) >> 4);
                        if (v24 <= v23)
                        {
                          v24 = v23;
                        }

                        if (0xAAAAAAAAAAAAAAABLL * ((v16[13] - v16[11]) >> 4) >= 0x2AAAAAAAAAAAAAALL)
                        {
                          v25 = 0x555555555555555;
                        }

                        else
                        {
                          v25 = v24;
                        }

                        std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__vallocate[abi:ne200100](v16 + 11, v25);
                      }

                      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
                    }

                    v26 = v16[12] - v19;
                    if (v26 >= v22)
                    {
                      std::__copy_impl::operator()[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig *,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig *,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig *>(v13[11], v13[12], v19);
                      v29 = v28;
                      for (k = v16[12]; k != v29; std::__destroy_at[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig,0>(k))
                      {
                        k -= 48;
                      }

                      v16[12] = v29;
                    }

                    else
                    {
                      v27 = std::__copy_impl::operator()[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig *,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig *,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig *>(v13[11], &v21[v26], v19);
                      v16[12] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig*,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig*,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig*>(v27, v20, v16[12]);
                    }

                    std::string::operator=((v16 + 14), (v13 + 14));
                    std::string::operator=((v16 + 17), (v13 + 17));
                    v31 = v16[21];
                    *(v16 + 40) = *(v13 + 40);
                    v33 = v13[21];
                    v32 = v13[22];
                    v34 = v32 - v33;
                    if (v16[23] - v31 < (v32 - v33))
                    {
                      v35 = v34 >> 4;
                      std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__vdeallocate(v16 + 21);
                      if (!(v35 >> 60))
                      {
                        v36 = v16[23] - v16[21];
                        v37 = v36 >> 3;
                        if (v36 >> 3 <= v35)
                        {
                          v37 = v35;
                        }

                        if (v36 >= 0x7FFFFFFFFFFFFFF0)
                        {
                          v38 = 0xFFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v38 = v37;
                        }

                        std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__vallocate[abi:ne200100](v16 + 21, v38);
                      }

                      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
                    }

                    v39 = v16[22] - v31;
                    if (v39 >= v34)
                    {
                      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<adm::graph::KernelProperty> *,std::shared_ptr<adm::graph::KernelProperty> *,std::shared_ptr<adm::graph::KernelProperty> *>(v13[21], v13[22], v31);
                      v42 = v41;
                      v43 = v16[22];
                      if (v43 != v41)
                      {
                        do
                        {
                          v44 = *(v43 - 1);
                          if (v44)
                          {
                            std::__shared_weak_count::__release_shared[abi:ne200100](v44);
                          }

                          v43 -= 16;
                        }

                        while (v43 != v42);
                      }

                      v16[22] = v42;
                    }

                    else
                    {
                      v40 = std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<adm::graph::KernelProperty> *,std::shared_ptr<adm::graph::KernelProperty> *,std::shared_ptr<adm::graph::KernelProperty> *>(v13[21], &v33[v39], v31);
                      v16[22] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<adm::graph::KernelProperty>>,std::shared_ptr<adm::graph::KernelProperty>*,std::shared_ptr<adm::graph::KernelProperty>*,std::shared_ptr<adm::graph::KernelProperty>*>((v16 + 21), v40, v32, v16[22]);
                    }
                  }

                  v18 = *v16;
                  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__node_insert_multi((v10 + 5), v16);
                  v13 = *v13;
                  if (!v18)
                  {
                    break;
                  }

                  v16 = v18;
                }

                while (v13);
              }

              std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__deallocate_node(v18);
              v6 = (a1 + 192);
            }

            if (v13)
            {
              operator new();
            }
          }

          v12 = *v10;
          std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__node_insert_multi(v6, v10);
          v7 = *v7;
          if (!v12)
          {
            break;
          }

          v10 = v12;
        }

        while (v7);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__deallocate_node(v12);
      v2 = v47;
    }

    if (v7)
    {
      operator new();
    }
  }

  std::string::operator=((a1 + 232), (v2 + 232));
  v45 = *(v2 + 260);
  *(a1 + 256) = *(v2 + 256);
  *(a1 + 260) = v45;
  return a1;
}

void sub_223B8D518(void *a1)
{
  *(v1 + 96) = v2;
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,adm::DSPGraphBasicConfiguration>>>::__deallocate_node(v1);
  __cxa_rethrow();
}

void *___ZL39getRegisterAudioUnits_InternalSymbolLocv_block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = AudioDSPLibraryCore(char **)::frameworkLibrary;
  v11 = AudioDSPLibraryCore(char **)::frameworkLibrary;
  if (!AudioDSPLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = ___ZL19AudioDSPLibraryCorePPc_block_invoke;
    v5[4] = &unk_2784F0298;
    v6 = &v8;
    v7 = v5;
    v12 = xmmword_2784F02E0;
    v9[3] = _sl_dlopen();
    AudioDSPLibraryCore(char **)::frameworkLibrary = *(v6[1] + 24);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AudioDSPLibrary()"];
    [a1 handleFailureInFunction:v2 file:@"AudioDSPManagerImpl.mm" lineNumber:28 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "RegisterAudioUnits_Internal");
  *(*(a1[4] + 8) + 24) = result;
  getRegisterAudioUnits_InternalSymbolLoc(void)::ptr = *(*(a1[4] + 8) + 24);
  return result;
}

void sub_223B8D788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t std::__optional_storage_base<adm::SystemConfiguration,false>::~__optional_storage_base(uint64_t a1)
{
  if (*(a1 + 264) == 1)
  {
    if (*(a1 + 255) < 0)
    {
      operator delete(*(a1 + 232));
    }

    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::~__hash_table(a1 + 192);
    if (*(a1 + 191) < 0)
    {
      operator delete(*(a1 + 168));
    }

    if (*(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }

    if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

uint64_t ___ZL19AudioDSPLibraryCorePPc_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  AudioDSPLibraryCore(char **)::frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (this[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(this, a2);
    }
  }

  else if (this[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100]((a2 + 2));
  a2[1] = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (!v5 || (v7 * v5) < v6)
  {
    v8 = 1;
    if (v5 >= 3)
    {
      v8 = (v5 & (v5 - 1)) != 0;
    }

    v9 = v8 | (2 * v5);
    v10 = vcvtps_u32_f32(v6 / v7);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v5 = *(a1 + 8);
    }

    if (prime > v5)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v5)
    {
      v12 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v5 < 3 || (v13 = vcnt_s8(v5), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
      {
        v12 = std::__next_prime(v12);
      }

      else
      {
        v14 = 1 << -__clz(v12 - 1);
        if (v12 >= 2)
        {
          v12 = v14;
        }
      }

      if (prime <= v12)
      {
        prime = v12;
      }

      if (prime >= v5)
      {
        v5 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v15 = *a1;
        *a1 = 0;
        if (v15)
        {
          operator delete(v15);
        }

        v5 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v5);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v4;
    if (v5 <= v4)
    {
      v18 = v4 % v5;
    }
  }

  else
  {
    v18 = (v5 - 1) & v4;
  }

  v19 = *(*a1 + 8 * v18);
  v28 = *a1;
  if (v19)
  {
    v20 = *v19;
    if (*v19)
    {
      v21 = 0;
      do
      {
        v22 = v20;
        v23 = v20[1];
        if (v17 > 1)
        {
          v24 = v23;
          if (v23 >= v5)
          {
            v24 = v23 % v5;
          }
        }

        else
        {
          v24 = v23 & (v5 - 1);
        }

        if (v24 != v18)
        {
          break;
        }

        v25 = v23 == v4 && std::equal_to<std::string>::operator()[abi:ne200100](v22 + 2, a2 + 2);
        if ((v21 & (v25 != (v21 & 1))) != 0)
        {
          break;
        }

        v21 |= v25 != (v21 & 1);
        v20 = *v22;
        v19 = v22;
      }

      while (*v22);
    }
  }

  v26 = a2[1];
  if (v17 > 1)
  {
    if (v26 >= v5)
    {
      v26 %= v5;
    }
  }

  else
  {
    v26 &= v5 - 1;
  }

  if (!v19)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v28[v26] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_65;
    }

    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

LABEL_64:
    *(*a1 + 8 * v27) = a2;
    goto LABEL_65;
  }

  *a2 = *v19;
  *v19 = a2;
  if (*a2)
  {
    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

    if (v27 != v26)
    {
      goto LABEL_64;
    }
  }

LABEL_65:
  ++*(a1 + 24);
}

void std::vector<std::__fs::filesystem::path>::__assign_with_size[abi:ne200100]<std::__fs::filesystem::path*,std::__fs::filesystem::path*>(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::__fs::filesystem::path>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::__fs::filesystem::path>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v14 = SHIBYTE(v11[-1].__r_.__value_.__r.__words[2]);
      --v11;
      if (v14 < 0)
      {
        operator delete(v11->__r_.__value_.__l.__data_);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 == v8)
    {
      v13 = __str;
    }

    else
    {
      v13 = (__str + v12);
      do
      {
        std::string::operator=(v8++, v6++);
        v12 -= 24;
      }

      while (v12);
      v11 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::__fs::filesystem::path>,std::__fs::filesystem::path*,std::__fs::filesystem::path*,std::__fs::filesystem::path*>(a1, v13, a3, v11);
  }
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<adm::graph::KernelProperty> *,std::shared_ptr<adm::graph::KernelProperty> *,std::shared_ptr<adm::graph::KernelProperty> *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v4 += 2;
      a3 += 2;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__vdeallocate(void **a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<adm::graph::KernelProperty>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

std::string *std::__copy_impl::operator()[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig *,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig *,adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig *>(std::string *__str, std::string *a2, std::string *this)
{
  v4 = __str;
  if (__str == a2)
  {
    return __str;
  }

  v5 = a2;
  do
  {
    std::string::operator=(this, v4);
    std::string::operator=(this + 1, v4 + 1);
    this += 2;
    v4 += 2;
  }

  while (v4 != v5);
  return v5;
}

void std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        std::__destroy_at[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::__fs::filesystem::path>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<std::__fs::filesystem::path>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_223B8E2DC(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_223B8E390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_223B8E424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_223B8E6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  objc_sync_exit(v22);
  _Unwind_Resume(a1);
}

void std::optional<std::string>::value_or[abi:ne200100]<char const(&)[7]>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a1, *a2, *(a2 + 8));
    }

    else
    {
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
    }
  }

  else
  {
    *(a1 + 23) = 6;
    strcpy(a1, "(null)");
  }
}

void sub_223B8E8A0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_223B8E930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

AudioDSPManager *CreateAudioDSPManager()
{
  v0 = get_adm_log_object();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_223B4A000, v0, OS_LOG_TYPE_DEFAULT, "creating AudioDSPManager...", v3, 2u);
  }

  v1 = objc_opt_new();

  return v1;
}

uint64_t adm::utility::convertFromDictionary(adm::utility *this, NSDictionary *a2, adm::ConfigurationChangeRequest *a3)
{
  v363 = *MEMORY[0x277D85DE8];
  v4 = this;
  v285 = v4;
  if (!v4)
  {
    v121 = get_adm_log_object();
    if (!os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
    {
LABEL_152:

      goto LABEL_153;
    }

    *buf = 0;
    v122 = "Null config change dictionary received!";
LABEL_161:
    _os_log_error_impl(&dword_223B4A000, v121, OS_LOG_TYPE_ERROR, v122, buf, 2u);
    goto LABEL_152;
  }

  v5 = [(adm::utility *)v4 objectForKeyedSubscript:@"is activation"];
  if (!v5)
  {
    goto LABEL_151;
  }

  v6 = [(adm::utility *)v285 objectForKeyedSubscript:@"io context description"];
  if (!v6)
  {

    goto LABEL_151;
  }

  v7 = [(adm::utility *)v285 objectForKeyedSubscript:@"device descriptions"];

  if (!v7)
  {
LABEL_151:
    v121 = get_adm_log_object();
    if (!os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_152;
    }

    *buf = 0;
    v122 = "Missing top level description entry from the config change dictionary!";
    goto LABEL_161;
  }

  v281 = [(adm::utility *)v285 objectForKeyedSubscript:@"io context description"];
  v8 = [v281 objectForKeyedSubscript:@"io context semantic list"];
  if (!v8 || ([v281 objectForKeyedSubscript:@"io context stream id list"], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
  {
    v125 = get_adm_log_object();
    if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_223B4A000, v125, OS_LOG_TYPE_ERROR, "Incomplete IOContext description from the config change dictionary!", buf, 2u);
    }

    goto LABEL_153;
  }

  [(adm::utility *)v285 objectForKeyedSubscript:@"device descriptions"];
  v329 = 0u;
  v330 = 0u;
  v327 = 0u;
  obj = v328 = 0u;
  v10 = [obj countByEnumeratingWithState:&v327 objects:__p count:16];
  v286 = a2;
  if (!v10)
  {
    goto LABEL_44;
  }

  v11 = @"device uid";
  v12 = *v328;
  v270 = *v328;
  do
  {
    v13 = 0;
    log = v10;
    do
    {
      if (*v328 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v274 = v13;
      v14 = *(*(&v327 + 1) + 8 * v13);
      v15 = v11;
      v16 = [v14 objectForKeyedSubscript:v11];
      if (!v16)
      {
        goto LABEL_177;
      }

      v17 = [v14 objectForKeyedSubscript:@"device model uid"];
      if (!v17)
      {
        goto LABEL_176;
      }

      v18 = [v14 objectForKeyedSubscript:@"sample rate"];
      if (!v18)
      {
        goto LABEL_175;
      }

      v19 = [v14 objectForKeyedSubscript:@"transport type"];
      if (!v19)
      {
        goto LABEL_174;
      }

      v20 = [v14 objectForKeyedSubscript:@"latency in samples"];
      if (!v20)
      {
        goto LABEL_173;
      }

      v21 = [v14 objectForKeyedSubscript:@"latency out samples"];
      if (!v21 || ([v14 objectForKeyedSubscript:@"safety offset in samples"], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
      {

LABEL_173:
LABEL_174:

LABEL_175:
LABEL_176:

LABEL_177:
        v27 = get_adm_log_object();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_223B4A000, v27, OS_LOG_TYPE_ERROR, "Incomplete device description from the config change dictionary!", buf, 2u);
        }

LABEL_179:

LABEL_153:
        loga = get_adm_log_object();
        if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
        {
          *__p = 0;
          _os_log_error_impl(&dword_223B4A000, loga, OS_LOG_TYPE_ERROR, "Invalid config change dictionary received!", __p, 2u);
        }

        goto LABEL_155;
      }

      v23 = [v14 objectForKeyedSubscript:@"safety offset out samples"];
      v24 = v23 == 0;

      if (v24)
      {
        goto LABEL_177;
      }

      v25 = [v14 objectForKeyedSubscript:@"hw streams input"];
      if ([v25 count])
      {
        v325 = 0u;
        v326 = 0u;
        v323 = 0u;
        v324 = 0u;
        v26 = v25;
        v27 = v25;
        v28 = [v27 countByEnumeratingWithState:&v323 objects:v335 count:16];
        if (!v28)
        {
          goto LABEL_30;
        }

        v29 = *v324;
        while (1)
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v324 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v323 + 1) + 8 * i);
            v32 = [v31 objectForKeyedSubscript:@"current format"];
            if (!v32 || ([v31 objectForKeyedSubscript:@"supported formats"], v33 = objc_claimAutoreleasedReturnValue(), v34 = v33 == 0, v33, v32, v34))
            {
              v126 = get_adm_log_object();
              if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_223B4A000, v126, OS_LOG_TYPE_ERROR, "Incomplete input HW stream description from the config change dictionary!", buf, 2u);
              }

              goto LABEL_179;
            }
          }

          v28 = [v27 countByEnumeratingWithState:&v323 objects:v335 count:16];
          if (!v28)
          {
LABEL_30:

            v25 = v26;
            break;
          }
        }
      }

      v35 = [v14 objectForKeyedSubscript:@"hw streams output"];
      v266 = v25;
      if (![v35 count])
      {
        goto LABEL_42;
      }

      v321 = 0u;
      v322 = 0u;
      v319 = 0u;
      v320 = 0u;
      v36 = v35;
      v37 = [v36 countByEnumeratingWithState:&v319 objects:&v360 count:16];
      if (!v37)
      {
        goto LABEL_41;
      }

      v38 = *v320;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v320 != v38)
          {
            objc_enumerationMutation(v36);
          }

          v40 = *(*(&v319 + 1) + 8 * j);
          v41 = [v40 objectForKeyedSubscript:@"current format"];
          if (!v41 || ([v40 objectForKeyedSubscript:@"supported formats"], v42 = objc_claimAutoreleasedReturnValue(), v43 = v42 == 0, v42, v41, v43))
          {
            v127 = get_adm_log_object();
            if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_223B4A000, v127, OS_LOG_TYPE_ERROR, "Incomplete output HW stream description from the config change dictionary!", buf, 2u);
            }

            v27 = v266;
            goto LABEL_179;
          }
        }

        v37 = [v36 countByEnumeratingWithState:&v319 objects:&v360 count:16];
      }

      while (v37);
LABEL_41:

LABEL_42:
      v13 = v274 + 1;
      v11 = v15;
      v12 = v270;
    }

    while ((v274 + 1) != log);
    v10 = [obj countByEnumeratingWithState:&v327 objects:__p count:16];
  }

  while (v10);
LABEL_44:

  v44 = [(adm::utility *)v285 objectForKeyedSubscript:@"is activation"];
  LOBYTE(v286->super.isa) = [v44 BOOLValue];

  loga = [(adm::utility *)v285 objectForKeyedSubscript:@"io context description"];
  v45 = [loga objectForKeyedSubscript:@"io context semantic list"];
  if (!v45)
  {
    goto LABEL_106;
  }

  v317 = 0u;
  v318 = 0u;
  v315 = 0u;
  v316 = 0u;
  v258 = v45;
  v264 = v45;
  v46 = [v264 countByEnumeratingWithState:&v315 objects:v359 count:16];
  if (!v46)
  {
    goto LABEL_105;
  }

  v262 = *v316;
  while (2)
  {
    v260 = v46;
    v47 = 0;
    while (2)
    {
      if (*v316 != v262)
      {
        objc_enumerationMutation(v264);
      }

      v48 = *(*(&v315 + 1) + 8 * v47);
      v271 = v48;
      v267 = v47;
      if (![v48 isEqual:@"isolated audio"])
      {
        if (![v48 isEqual:@"dsp offload"])
        {
          v71 = v48;
          v70 = v48;
          std::string::basic_string[abi:ne200100]<0>(__p, [v48 UTF8String]);
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v286[1], __p, __p);
          goto LABEL_101;
        }

        v54 = [loga objectForKeyedSubscript:@"dsp offload description"];
        v55 = v286;
        if (v54)
        {
          v313 = 0u;
          v314 = 0u;
          v311 = 0u;
          v312 = 0u;
          v56 = v54;
          v275 = v56;
          v57 = [v56 countByEnumeratingWithState:&v311 objects:v358 count:16];
          if (!v57)
          {
            goto LABEL_171;
          }

          v282 = 0;
          v58 = 0;
          v59 = v57;
          obja = *v312;
          do
          {
            for (k = 0; k != v59; ++k)
            {
              if (*v312 != obja)
              {
                objc_enumerationMutation(v56);
              }

              v61 = *(*(&v311 + 1) + 8 * k);
              if ([v61 isEqualToString:@"airpods noise suppression"])
              {
                v62 = [v56 objectForKeyedSubscript:@"airpods noise suppression"];
                v63 = v62;
                if (v62)
                {
                  v338 = 0u;
                  *v337 = 0u;
                  v336 = 0u;
                  *v335 = 0u;
                  v64 = v62;
                  v65 = [v64 countByEnumeratingWithState:v335 objects:__p count:16];
                  if (v65)
                  {
                    v66 = *v336;
                    while (2)
                    {
                      for (m = 0; m != v65; ++m)
                      {
                        if (*v336 != v66)
                        {
                          objc_enumerationMutation(v64);
                        }

                        v68 = *(*&v335[8] + 8 * m);
                        v69 = [v68 isEqualToString:@"airpods noise suppression for studio mic"];

                        if (v69)
                        {
                          v63 = v64;
                          v58 = "airpods noise suppression studio";
                          goto LABEL_80;
                        }
                      }

                      v65 = [v64 countByEnumeratingWithState:v335 objects:__p count:16];
                      if (v65)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v58 = "airpods noise suppression";
LABEL_80:
                }

                else
                {
                  v58 = "airpods noise suppression";
                }

                ++v282;
                v55 = v286;
                v56 = v275;
              }

              else if ([v61 isEqualToString:@"airpods content creation recording"])
              {
                ++v282;
                v58 = "airpods content creation recording";
              }

              else if (!v58)
              {
                v128 = get_adm_log_object();
                if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                {
                  *__p = 138412290;
                  *&__p[4] = v61;
                  _os_log_error_impl(&dword_223B4A000, v128, OS_LOG_TYPE_ERROR, "Invalid DSPOffload description %@", __p, 0xCu);
                }

                v56 = v275;
                goto LABEL_171;
              }

              std::string::basic_string[abi:ne200100]<0>(__p, v58);
              std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v55[1], __p, __p);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }
            }

            v59 = [v56 countByEnumeratingWithState:&v311 objects:v358 count:16];
          }

          while (v59);

          if (v282 <= 1)
          {

            v70 = v271;
            goto LABEL_103;
          }

          v56 = get_adm_log_object();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *__p = 0;
            v251 = "Only one type of offload can be requested at a time";
            v252 = v56;
            v253 = 2;
LABEL_420:
            _os_log_error_impl(&dword_223B4A000, v252, OS_LOG_TYPE_ERROR, v251, __p, v253);
          }

          goto LABEL_171;
        }

        v56 = get_adm_log_object();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *__p = 0;
          v250 = "IOContext description missing DSPOffload description";
          goto LABEL_422;
        }

LABEL_411:
        v275 = 0;
        goto LABEL_171;
      }

      v49 = [loga objectForKeyedSubscript:@"isolated audio use case id"];
      v50 = v49;
      if (!v49)
      {
        v56 = get_adm_log_object();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *__p = 0;
          v250 = "IOContext description missing isolated audio use case ID";
LABEL_422:
          _os_log_error_impl(&dword_223B4A000, v56, OS_LOG_TYPE_ERROR, v250, __p, 2u);
          goto LABEL_411;
        }

        goto LABEL_411;
      }

      v51 = [v49 unsignedIntValue];
      v52 = v51;
      if (v51 > 1935962991)
      {
        if (v51 <= 1936290408)
        {
          if (v51 == 1935962992)
          {
            v53 = "isolated audio shared DSP";
          }

          else
          {
            if (v51 != 1936027745)
            {
              goto LABEL_412;
            }

            v53 = "isolated audio audio pairing";
          }

          goto LABEL_100;
        }

        v53 = "isolated audio siri";
        if (v51 == 1936290409)
        {
          goto LABEL_100;
        }

        if (v51 == 1936614497)
        {
          v53 = "isolated audio sound analysis";
          goto LABEL_100;
        }

LABEL_412:
        v275 = v50;
        v56 = get_adm_log_object();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *__p = 67109120;
          *&__p[4] = v52;
          v251 = "Invalid IsolatedAudio use case ID %d";
          v252 = v56;
          v253 = 8;
          goto LABEL_420;
        }

LABEL_171:

LABEL_155:
        v123 = 0;
        goto LABEL_156;
      }

      switch(v51)
      {
        case 1751741300:
          v53 = "isolated audio historical audio";
          break;
        case 1836346212:
          v53 = "isolated audio muted talker detection";
          break;
        case 1885696611:
          v53 = "isolated audio perception";
          break;
        default:
          goto LABEL_412;
      }

LABEL_100:

      std::string::basic_string[abi:ne200100]<0>(__p, v53);
      v70 = v48;
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v286[1], __p, __p);
LABEL_101:
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

LABEL_103:

      v47 = v267 + 1;
      if (v267 + 1 != v260)
      {
        continue;
      }

      break;
    }

    v46 = [v264 countByEnumeratingWithState:&v315 objects:v359 count:16];
    if (v46)
    {
      continue;
    }

    break;
  }

LABEL_105:

  v45 = v258;
LABEL_106:

  v72 = [loga objectForKeyedSubscript:@"io context stream id list"];
  v73 = v72;
  if (v72)
  {
    v309 = 0u;
    v310 = 0u;
    v307 = 0u;
    v308 = 0u;
    v283 = v72;
    v74 = [v283 countByEnumeratingWithState:&v307 objects:v357 count:16];
    objb = v73;
    if (v74)
    {
      v75 = *v308;
      v76 = v286 + 21;
      do
      {
        for (n = 0; n != v74; ++n)
        {
          if (*v308 != v75)
          {
            objc_enumerationMutation(v283);
          }

          v78 = *(*(&v307 + 1) + 8 * n);
          v79 = v78;
          std::string::basic_string[abi:ne200100]<0>(v335, [v78 UTF8String]);
          isa = v286[22].super.isa;
          v80 = v286[23].super.isa;
          if (isa >= v80)
          {
            v83 = 0xAAAAAAAAAAAAAAABLL * ((isa - v76->super.isa) >> 3);
            v84 = v83 + 1;
            if (v83 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
            }

            v85 = 0xAAAAAAAAAAAAAAABLL * ((v80 - v76->super.isa) >> 3);
            if (2 * v85 > v84)
            {
              v84 = 2 * v85;
            }

            if (v85 >= 0x555555555555555)
            {
              v86 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v86 = v84;
            }

            *&__p[32] = v286 + 21;
            if (v86)
            {
              std::allocator<std::__fs::filesystem::path>::allocate_at_least[abi:ne200100](v86);
            }

            v87 = 24 * v83;
            v88 = *v335;
            *(v87 + 16) = v336;
            *v87 = v88;
            *&v336 = 0;
            memset(v335, 0, sizeof(v335));
            v89 = 24 * v83 + 24;
            v90 = v286[21].super.isa;
            v91 = v286[22].super.isa - v90;
            v92 = (24 * v83 - v91);
            memcpy((v87 - v91), v90, v91);
            v93 = v286[21].super.isa;
            v286[21].super.isa = v92;
            v286[22].super.isa = v89;
            v94 = v286[23].super.isa;
            v286[23].super.isa = 0;
            *&__p[16] = v93;
            *&__p[24] = v94;
            *&__p[8] = v93;
            *__p = v93;
            std::__split_buffer<std::string>::~__split_buffer(__p);
            v95 = SBYTE7(v336);
            v286[22].super.isa = v89;
            if (v95 < 0)
            {
              operator delete(*v335);
            }
          }

          else
          {
            v82 = *v335;
            *(isa + 2) = v336;
            *isa = v82;
            v286[22].super.isa = (isa + 24);
          }
        }

        v74 = [v283 countByEnumeratingWithState:&v307 objects:v357 count:16];
      }

      while (v74);
    }

    v73 = objb;
  }

  v96 = [loga objectForKey:@"io context input format"];
  if (v96)
  {
    v97 = v286[9].super.isa;
    v98 = *&__p[16];
    *&v286[4].super.isa = *__p;
    *&v286[6].super.isa = v98;
    v286[8].super.isa = *&__p[32];
    if ((v97 & 1) == 0)
    {
      LOBYTE(v286[9].super.isa) = 1;
    }
  }

  v99 = [loga objectForKey:@"io context output format"];
  if (v99)
  {
    v100 = v286[15].super.isa;
    v101 = *&__p[16];
    *&v286[10].super.isa = *__p;
    *&v286[12].super.isa = v101;
    v286[14].super.isa = *&__p[32];
    if ((v100 & 1) == 0)
    {
      LOBYTE(v286[15].super.isa) = 1;
    }
  }

  v102 = [loga objectForKey:@"io context output client virtual layout"];
  if (v102)
  {
  }

  v103 = [loga objectForKey:@"io context buffer size"];
  v104 = v103;
  if (v103)
  {
    LODWORD(v286[20].super.isa) = [v103 unsignedIntValue];
    BYTE4(v286[20].super.isa) = 1;
  }

  v105 = [loga objectForKey:@"dsp generic settings"];
  if (v105)
  {
    if (LOBYTE(v286[30].super.isa) == 1 && LOBYTE(v286[29].super.isa) == 1)
    {
      v106 = v286[28].super.isa;
      if (v106)
      {
        CFRelease(v106);
      }
    }

    *&v286[26].super.isa = 0u;
    *&v286[28].super.isa = 0u;
    *&v286[24].super.isa = 0u;
    LOBYTE(v286[30].super.isa) = 1;
    v107 = [v105 objectForKeyedSubscript:@"content creation recording"];
    v108 = v107;
    if (v107)
    {
      v284 = [v107 objectForKeyedSubscript:@"inputPortType"];
      *__p = [v284 unsignedIntValue];
      v109 = [v108 objectForKeyedSubscript:@"inputPortSubType"];
      *&__p[4] = [v109 unsignedIntValue];
      v110 = [v108 objectForKeyedSubscript:@"inputSubPortType"];
      *&__p[8] = [v110 unsignedIntValue];
      v111 = [v108 objectForKeyedSubscript:@"outputPortType"];
      *&__p[12] = [v111 unsignedIntValue];
      v112 = [v108 objectForKeyedSubscript:@"outputPortSubType"];
      *&__p[16] = [v112 unsignedIntValue];
      v113 = [v108 objectForKeyedSubscript:@"outputSubPortType"];
      *&__p[20] = [v113 unsignedIntValue];
      v114 = [v108 objectForKeyedSubscript:@"isSharePlayActive"];
      __p[24] = [v114 BOOLValue];
      [v108 objectForKeyedSubscript:@"firFilterIDs"];
      v116 = v115 = v109;
      v117 = v116;
      if (v116)
      {
        CFRetain(v116);
        *&__p[32] = v117;
        v118 = CFGetTypeID(v117);
        if (v118 != CFArrayGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }
      }

      v119 = v286[29].super.isa;
      *&v286[24].super.isa = *__p;
      *(&v286[25].super.isa + 1) = *&__p[9];
      if (v119)
      {
        v120 = v286[28].super.isa;
        v286[28].super.isa = v117;
        *&__p[32] = v120;
        if (v120)
        {
          CFRelease(v120);
        }
      }

      else
      {
        v286[28].super.isa = v117;
        LOBYTE(v286[29].super.isa) = 1;
      }
    }
  }

  [(adm::utility *)v285 objectForKeyedSubscript:@"device descriptions"];
  v305 = 0u;
  v306 = 0u;
  v303 = 0u;
  v263 = v304 = 0u;
  v130 = [v263 countByEnumeratingWithState:&v303 objects:v356 count:16];
  if (v130)
  {
    v257 = *v304;
    do
    {
      v131 = 0;
      v256 = v130;
      do
      {
        if (*v304 != v257)
        {
          objc_enumerationMutation(v263);
        }

        v259 = v131;
        v132 = *(*(&v303 + 1) + 8 * v131);
        v351 = 0;
        LOBYTE(v352[0]) = 0;
        v353 = 0;
        v354 = 0;
        memset(__p, 0, sizeof(__p));
        v347 = 0;
        v348 = 0u;
        memset(v349, 0, 25);
        memset(v355, 0, sizeof(v355));
        v265 = v132;
        v133 = [v132 objectForKeyedSubscript:@"device uid"];
        v134 = v133;
        std::string::basic_string[abi:ne200100]<0>(v335, [v133 UTF8String]);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        *__p = *v335;
        *&__p[16] = v336;
        BYTE7(v336) = 0;
        v335[0] = 0;

        v135 = [v265 objectForKeyedSubscript:@"device model uid"];
        v136 = v135;
        std::string::basic_string[abi:ne200100]<0>(v335, [v135 UTF8String]);
        if ((__p[47] & 0x80000000) != 0)
        {
          operator delete(*&__p[24]);
        }

        *&__p[24] = *v335;
        *&__p[40] = v336;
        BYTE7(v336) = 0;
        v335[0] = 0;

        v137 = [v265 objectForKeyedSubscript:@"is default device"];
        v347 = [v137 BOOLValue];

        v138 = [v265 objectForKeyedSubscript:@"sample rate"];
        [v138 doubleValue];
        *&v348 = v139;

        v140 = [v265 objectForKeyedSubscript:@"transport type"];
        DWORD2(v348) = [v140 unsignedIntValue];

        v141 = [v265 objectForKeyedSubscript:@"data source type in"];
        HIDWORD(v348) = [v141 unsignedIntValue];

        v142 = [v265 objectForKeyedSubscript:@"data source type out"];
        *v349 = [v142 unsignedIntValue];

        v143 = [v265 objectForKeyedSubscript:@"bluetooth device category"];
        *&v349[4] = [v143 unsignedIntValue];

        v144 = [v265 objectForKeyedSubscript:@"latency in samples"];
        *&v349[8] = [v144 unsignedIntValue];

        v145 = [v265 objectForKeyedSubscript:@"latency out samples"];
        *&v349[12] = [v145 unsignedIntValue];

        v146 = [v265 objectForKeyedSubscript:@"safety offset in samples"];
        *&v349[16] = [v146 unsignedIntValue];

        v147 = [v265 objectForKeyedSubscript:@"safety offset out samples"];
        *&v349[20] = [v147 unsignedIntValue];

        v148 = [v265 objectForKeyedSubscript:@"bluetooth ecnr enabled"];
        v354 = [v148 BOOLValue];

        v149 = [v265 objectForKeyedSubscript:@"output default layout"];
        if (v149)
        {
        }

        v150 = [v265 objectForKeyedSubscript:@"output preferred layout"];
        if (v150)
        {
        }

        v151 = [v265 objectForKeyedSubscript:@"hw streams input"];
        v152 = v286;
        v261 = v151;
        if ([v151 count])
        {
          v301 = 0u;
          v302 = 0u;
          v299 = 0u;
          v300 = 0u;
          v153 = v151;
          v268 = v153;
          v154 = [v153 countByEnumeratingWithState:&v299 objects:v345 count:16];
          if (!v154)
          {
            goto LABEL_240;
          }

          v276 = *v300;
          while (1)
          {
            for (ii = 0; ii != v154; ++ii)
            {
              if (*v300 != v276)
              {
                objc_enumerationMutation(v268);
              }

              v156 = *(*(&v299 + 1) + 8 * ii);
              v335[0] = 0;
              BYTE8(v336) = 0;
              LOBYTE(v337[0]) = 0;
              BYTE8(v338) = 0;
              v339 = 0u;
              v340 = 0u;
              v341 = 0u;
              v342 = 0u;
              v343 = 0;
              v344 = 1;
              v157 = [v156 objectForKeyedSubscript:@"stream id"];
              v158 = v157;
              if (v157)
              {
                v159 = v157;
                std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(v335, [v158 UTF8String]);
              }

              v160 = [v156 objectForKeyedSubscript:@"stream semantic"];
              v161 = v160;
              if (v160)
              {
                v162 = v160;
                std::string::basic_string[abi:ne200100]<0>(&v360, [v161 UTF8String]);
                if (BYTE8(v338) == 1)
                {
                  if (SBYTE7(v338) < 0)
                  {
                    operator delete(v337[0]);
                    *v337 = v360;
                    *&v338 = v361;
                    if ((BYTE8(v338) & 1) == 0)
                    {
                      goto LABEL_221;
                    }
                  }

                  else
                  {
                    *v337 = v360;
                    *&v338 = v361;
                  }
                }

                else
                {
                  *v337 = v360;
                  *&v338 = v361;
                  BYTE8(v338) = 1;
                }

                if (SBYTE7(v338) < 0)
                {
                  if (v337[1] != 3)
                  {
                    goto LABEL_221;
                  }

                  v163 = v337[0];
                }

                else
                {
                  v163 = v337;
                  if (SBYTE7(v338) != 3)
                  {
                    goto LABEL_221;
                  }
                }

                v164 = *v163;
                v165 = *(v163 + 2);
                v166 = v164 == 24948 && v165 == 112;
                if (v166)
                {
                  std::string::__assign_external(v337, "reference");
                }
              }

LABEL_221:

              v167 = [v156 objectForKey:@"current format"];
              v339 = v360;
              v340 = v361;
              *&v341 = v362;

              v168 = [v156 objectForKeyedSubscript:@"supported formats"];
              v297 = 0u;
              v298 = 0u;
              v295 = 0u;
              v296 = 0u;
              v169 = v168;
              v170 = [v169 countByEnumeratingWithState:&v295 objects:v334 count:16];
              if (v170)
              {
                v171 = *v296;
                do
                {
                  for (jj = 0; jj != v170; ++jj)
                  {
                    if (*v296 != v171)
                    {
                      objc_enumerationMutation(v169);
                    }

                    v173 = *(*(&v295 + 1) + 8 * jj);
                    std::vector<CA::StreamDescription>::push_back[abi:ne200100](&v341 + 8, &v360);
                  }

                  v170 = [v169 countByEnumeratingWithState:&v295 objects:v334 count:16];
                }

                while (v170);
              }

              v174 = [v156 objectForKeyedSubscript:@"latency samples"];
              v175 = v174;
              if (v174)
              {
                v343 = [v174 unsignedIntValue];
                v344 = 1;
              }

              std::vector<adm::HardwareStreamDescription>::push_back[abi:ne200100](v355, v335);
              if (*(&v341 + 1))
              {
                *&v342 = *(&v341 + 1);
                operator delete(*(&v341 + 1));
              }

              if (BYTE8(v338) == 1 && SBYTE7(v338) < 0)
              {
                operator delete(v337[0]);
              }

              if (BYTE8(v336) == 1 && SBYTE7(v336) < 0)
              {
                operator delete(*v335);
              }
            }

            v153 = v268;
            v154 = [v268 countByEnumeratingWithState:&v299 objects:v345 count:16];
            if (!v154)
            {
LABEL_240:

              v152 = v286;
              v151 = v261;
              break;
            }
          }
        }

        v176 = [v265 objectForKeyedSubscript:@"hw streams output"];
        if ([v176 count])
        {
          v293 = 0u;
          v294 = 0u;
          v291 = 0u;
          v292 = 0u;
          v269 = v176;
          v177 = [v269 countByEnumeratingWithState:&v291 objects:v333 count:16];
          v255 = v176;
          if (v177)
          {
            v277 = *v292;
            do
            {
              for (kk = 0; kk != v177; ++kk)
              {
                if (*v292 != v277)
                {
                  objc_enumerationMutation(v269);
                }

                v179 = *(*(&v291 + 1) + 8 * kk);
                v335[0] = 0;
                BYTE8(v336) = 0;
                LOBYTE(v337[0]) = 0;
                BYTE8(v338) = 0;
                v339 = 0u;
                v340 = 0u;
                v341 = 0u;
                v342 = 0u;
                v343 = 0;
                v344 = 1;
                v180 = [v179 objectForKeyedSubscript:@"stream id"];
                v181 = v180;
                if (v180)
                {
                  v182 = v180;
                  std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(v335, [v181 UTF8String]);
                }

                v183 = [v179 objectForKeyedSubscript:@"stream semantic"];
                v184 = v183;
                if (v183)
                {
                  v185 = v183;
                  std::string::basic_string[abi:ne200100]<0>(&v360, [v184 UTF8String]);
                  if (BYTE8(v338) == 1)
                  {
                    if (SBYTE7(v338) < 0)
                    {
                      operator delete(v337[0]);
                    }

                    *v337 = v360;
                    *&v338 = v361;
                  }

                  else
                  {
                    *v337 = v360;
                    *&v338 = v361;
                    BYTE8(v338) = 1;
                  }
                }

                v186 = [v179 objectForKey:@"current format"];
                v339 = v360;
                v340 = v361;
                *&v341 = v362;

                v187 = [v179 objectForKeyedSubscript:@"supported formats"];
                v289 = 0u;
                v290 = 0u;
                v287 = 0u;
                v288 = 0u;
                v188 = v187;
                v189 = [v188 countByEnumeratingWithState:&v287 objects:v332 count:16];
                if (v189)
                {
                  v190 = *v288;
                  do
                  {
                    for (mm = 0; mm != v189; ++mm)
                    {
                      if (*v288 != v190)
                      {
                        objc_enumerationMutation(v188);
                      }

                      v192 = *(*(&v287 + 1) + 8 * mm);
                      std::vector<CA::StreamDescription>::push_back[abi:ne200100](&v341 + 8, &v360);
                    }

                    v189 = [v188 countByEnumeratingWithState:&v287 objects:v332 count:16];
                  }

                  while (v189);
                }

                v193 = [v179 objectForKeyedSubscript:@"latency samples"];
                v194 = v193;
                if (v193)
                {
                  v343 = [v193 unsignedIntValue];
                  v344 = 1;
                }

                std::vector<adm::HardwareStreamDescription>::push_back[abi:ne200100](&v355[3], v335);
                if (*(&v341 + 1))
                {
                  *&v342 = *(&v341 + 1);
                  operator delete(*(&v341 + 1));
                }

                if (BYTE8(v338) == 1 && SBYTE7(v338) < 0)
                {
                  operator delete(v337[0]);
                }

                if (BYTE8(v336) == 1 && SBYTE7(v336) < 0)
                {
                  operator delete(*v335);
                }
              }

              v177 = [v269 countByEnumeratingWithState:&v291 objects:v333 count:16];
            }

            while (v177);
          }

          v152 = v286;
          v151 = v261;
          v176 = v255;
        }

        v195 = v152[32].super.isa;
        if (v195 >= v152[33].super.isa)
        {
          v196 = std::vector<adm::DeviceDescription>::__emplace_back_slow_path<adm::DeviceDescription>(&v152[31].super.isa, __p);
        }

        else
        {
          std::allocator_traits<std::allocator<adm::DeviceDescription>>::construct[abi:ne200100]<adm::DeviceDescription,adm::DeviceDescription,void,0>(v152[32].super.isa, __p);
          v196 = v195 + 216;
        }

        v152[32].super.isa = v196;

        *v335 = &v355[3];
        std::vector<adm::HardwareStreamDescription>::__destroy_vector::operator()[abi:ne200100](v335);
        *v335 = v355;
        std::vector<adm::HardwareStreamDescription>::__destroy_vector::operator()[abi:ne200100](v335);
        if (v353 == 1 && v352[0])
        {
          v352[1] = v352[0];
          operator delete(v352[0]);
        }

        if (v351 == 1 && *&v349[24])
        {
          v350 = *&v349[24];
          operator delete(*&v349[24]);
        }

        if ((__p[47] & 0x80000000) != 0)
        {
          operator delete(*&__p[24]);
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v131 = v259 + 1;
      }

      while (v259 + 1 != v256);
      v130 = [v263 countByEnumeratingWithState:&v303 objects:v356 count:16];
    }

    while (v130);
  }

  *&__p[16] = 0;
  *&__p[8] = 0;
  *__p = &__p[8];
  v197 = v286[31].super.isa;
  v198 = v286[32].super.isa;
  if (v197 == v198)
  {
LABEL_302:
    v203 = v286[21].super.isa;
    v204 = v286[22].super.isa;
    if (v203 == v204)
    {
      goto LABEL_397;
    }

    while (1)
    {
      if (&__p[8] == std::__tree<std::string>::find<std::string>(__p, v203))
      {
        goto LABEL_404;
      }

      v205 = *&__p[8];
      if (!*&__p[8])
      {
        goto LABEL_396;
      }

      v206 = &__p[8];
      v207 = *&__p[8];
      do
      {
        v208 = v206;
        v209 = v207 + 32;
        v210 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v207 + 4, v203);
        if ((v210 & 0x80u) == 0)
        {
          v206 = v207;
        }

        v207 = *&v207[(v210 >> 4) & 8];
      }

      while (v207);
      if (v206 == &__p[8])
      {
        goto LABEL_396;
      }

      v211 = (v210 & 0x80u) == 0 ? v209 : v208 + 32;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v203, v211) & 0x80) != 0)
      {
        goto LABEL_396;
      }

      v212 = *(v206 + 1);
      v213 = v212;
      v214 = v206;
      if (v212)
      {
        do
        {
          v215 = v213;
          v213 = *v213;
        }

        while (v213);
      }

      else
      {
        do
        {
          v215 = *(v214 + 2);
          v166 = *v215 == v214;
          v214 = v215;
        }

        while (!v166);
      }

      if (*__p == v206)
      {
        *__p = v215;
      }

      --*&__p[16];
      if (*v206)
      {
        if (!v212)
        {
          v212 = *v206;
          v216 = v206;
LABEL_329:
          v218 = 0;
          v217 = *(v216 + 2);
          v212[2] = v217;
          goto LABEL_330;
        }

        do
        {
          v216 = v212;
          v212 = *v212;
        }

        while (v212);
        v212 = *(v216 + 1);
      }

      else
      {
        v216 = v206;
      }

      if (v212)
      {
        goto LABEL_329;
      }

      v217 = *(v216 + 2);
      v218 = 1;
LABEL_330:
      v219 = *v217;
      if (*v217 == v216)
      {
        *v217 = v212;
        if (v216 == v205)
        {
          v219 = 0;
          v205 = v212;
        }

        else
        {
          v219 = v217[1];
        }
      }

      else
      {
        v217[1] = v212;
      }

      v220 = v216[24];
      if (v216 != v206)
      {
        v221 = *(v206 + 2);
        *(v216 + 2) = v221;
        v221[*v221 != v206] = v216;
        v222 = *v206;
        *v216 = *v206;
        *(v222 + 16) = v216;
        v223 = *(v206 + 1);
        *(v216 + 1) = v223;
        if (v223)
        {
          *(v223 + 16) = v216;
        }

        v216[24] = v206[24];
        if (v205 == v206)
        {
          v205 = v216;
        }
      }

      if (!v205 || !v220)
      {
        goto LABEL_393;
      }

      if (!v218)
      {
        *(v212 + 24) = 1;
        goto LABEL_393;
      }

      while (1)
      {
        v224 = *(v219 + 2);
        v225 = *v224;
        if (*v224 == v219)
        {
          break;
        }

        if ((v219[24] & 1) == 0)
        {
          v219[24] = 1;
          *(v224 + 24) = 0;
          v226 = v224[1];
          v227 = *v226;
          v224[1] = *v226;
          if (v227)
          {
            *(v227 + 16) = v224;
          }

          v228 = v224[2];
          v226[2] = v228;
          v228[*v228 != v224] = v226;
          *v226 = v224;
          v224[2] = v226;
          if (v205 == *v219)
          {
            v205 = v219;
          }

          v219 = *(*v219 + 8);
        }

        v229 = *v219;
        if (*v219 && v229[24] != 1)
        {
          v230 = *(v219 + 1);
          if (v230 && (v230[24] & 1) == 0)
          {
LABEL_379:
            v229 = v219;
          }

          else
          {
            v229[24] = 1;
            v219[24] = 0;
            v238 = *(v229 + 1);
            *v219 = v238;
            if (v238)
            {
              *(v238 + 16) = v219;
            }

            v239 = *(v219 + 2);
            *(v229 + 2) = v239;
            v239[*v239 != v219] = v229;
            *(v229 + 1) = v219;
            *(v219 + 2) = v229;
            v230 = v219;
          }

          v240 = *(v229 + 2);
          v229[24] = *(v240 + 24);
          *(v240 + 24) = 1;
          v230[24] = 1;
          v241 = *(v240 + 8);
          v242 = *v241;
          *(v240 + 8) = *v241;
          if (v242)
          {
            *(v242 + 16) = v240;
          }

          v243 = *(v240 + 16);
          v241[2] = v243;
          v243[*v243 != v240] = v241;
          *v241 = v240;
          goto LABEL_392;
        }

        v230 = *(v219 + 1);
        if (v230 && v230[24] != 1)
        {
          goto LABEL_379;
        }

        v219[24] = 0;
        v231 = *(v219 + 2);
        if (v231 == v205 || (v231[24] & 1) == 0)
        {
          goto LABEL_373;
        }

LABEL_371:
        v219 = *(*(v231 + 2) + 8 * (**(v231 + 2) == v231));
      }

      if ((v219[24] & 1) == 0)
      {
        v219[24] = 1;
        *(v224 + 24) = 0;
        v232 = *(v225 + 1);
        *v224 = v232;
        if (v232)
        {
          *(v232 + 16) = v224;
        }

        v233 = v224[2];
        *(v225 + 2) = v233;
        v233[*v233 != v224] = v225;
        *(v225 + 1) = v224;
        v224[2] = v225;
        v234 = *(v219 + 1);
        if (v205 == v234)
        {
          v205 = v219;
        }

        v219 = *v234;
      }

      v235 = *v219;
      if (*v219 && v235[24] != 1)
      {
        goto LABEL_388;
      }

      v236 = *(v219 + 1);
      if (!v236 || *(v236 + 24) == 1)
      {
        v219[24] = 0;
        v231 = *(v219 + 2);
        if (v231[24] != 1 || v231 == v205)
        {
LABEL_373:
          v231[24] = 1;
          goto LABEL_393;
        }

        goto LABEL_371;
      }

      if (v235 && (v235[24] & 1) == 0)
      {
LABEL_388:
        v236 = v219;
        goto LABEL_389;
      }

      *(v236 + 24) = 1;
      v219[24] = 0;
      v244 = *v236;
      *(v219 + 1) = *v236;
      if (v244)
      {
        *(v244 + 16) = v219;
      }

      v245 = *(v219 + 2);
      v236[2] = v245;
      v245[*v245 != v219] = v236;
      *v236 = v219;
      *(v219 + 2) = v236;
      v235 = v219;
LABEL_389:
      v240 = v236[2];
      *(v236 + 24) = *(v240 + 24);
      *(v240 + 24) = 1;
      v235[24] = 1;
      v241 = *v240;
      v246 = *(*v240 + 8);
      *v240 = v246;
      if (v246)
      {
        *(v246 + 16) = v240;
      }

      v247 = *(v240 + 16);
      v241[2] = v247;
      v247[*v247 != v240] = v241;
      v241[1] = v240;
LABEL_392:
      *(v240 + 16) = v241;
LABEL_393:
      if (v206[55] < 0)
      {
        operator delete(*(v206 + 4));
      }

      operator delete(v206);
LABEL_396:
      v203 += 3;
      if (v203 == v204)
      {
LABEL_397:
        std::__tree<std::string>::destroy(*&__p[8]);
        v123 = 1;
        goto LABEL_407;
      }
    }
  }

LABEL_291:
  v199 = v197[21];
  v200 = v197[22];
  while (1)
  {
    if (v199 == v200)
    {
      v201 = v197[24];
      v202 = v197[25];
      while (v201 != v202)
      {
        if (*(v201 + 24) == 1 && (std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(__p, v201, v201) & 1) == 0)
        {
          v248 = get_adm_log_object();
          if (!os_log_type_enabled(v248, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_403;
          }

          if (*(v201 + 23) < 0)
          {
            v201 = *v201;
          }

          *v335 = 136315138;
          *&v335[4] = v201;
LABEL_417:
          _os_log_error_impl(&dword_223B4A000, v248, OS_LOG_TYPE_ERROR, "duplicate stream ID %s", v335, 0xCu);
          goto LABEL_403;
        }

        v201 += 136;
      }

      v197 += 27;
      if (v197 == v198)
      {
        goto LABEL_302;
      }

      goto LABEL_291;
    }

    if (*(v199 + 24) == 1 && (std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(__p, v199, v199) & 1) == 0)
    {
      break;
    }

    v199 += 136;
  }

  v248 = get_adm_log_object();
  if (os_log_type_enabled(v248, OS_LOG_TYPE_ERROR))
  {
    if (*(v199 + 23) < 0)
    {
      v199 = *v199;
    }

    *v335 = 136315138;
    *&v335[4] = v199;
    goto LABEL_417;
  }

LABEL_403:

LABEL_404:
  std::__tree<std::string>::destroy(*&__p[8]);
  v249 = get_adm_log_object();
  if (os_log_type_enabled(v249, OS_LOG_TYPE_ERROR))
  {
    *__p = 0;
    _os_log_error_impl(&dword_223B4A000, v249, OS_LOG_TYPE_ERROR, "Inconsistent stream IDs in config change request dictionary!", __p, 2u);
  }

  v123 = 0;
LABEL_407:

LABEL_156:
  return v123;
}

void sub_223B90F60(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (a2)
  {

    __cxa_begin_catch(a1);
    v19 = get_adm_log_object();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(STACK[0x340]) = 0;
      _os_log_error_impl(&dword_223B4A000, v19, OS_LOG_TYPE_ERROR, "Exception from converting the config change request dictionary!", &STACK[0x340], 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x223B8F914);
  }

  _Unwind_Resume(a1);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(uint64_t a1, void *a2, uint64_t a3)
{
  result = std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void anonymous namespace::getASBDFormatFromDict(_anonymous_namespace_ *this, NSDictionary *a2)
{
  v21 = a2;
  v3 = [(NSDictionary *)v21 objectForKeyedSubscript:@"channels"];
  v4 = [v3 unsignedIntValue];

  v5 = [(NSDictionary *)v21 objectForKeyedSubscript:@"sample rate"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [(NSDictionary *)v21 objectForKeyedSubscript:@"common pcm format"];
  v9 = [v8 unsignedIntValue];

  v10 = [(NSDictionary *)v21 objectForKeyedSubscript:@"is interleaved"];
  v11 = [v10 BOOLValue];

  v12 = 0;
  v13 = 0;
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v19 = v11 == 0;
      v14 = 3116;
      v20 = 3084;
    }

    else
    {
      if (v9 == 4)
      {
        if (v11)
        {
          v14 = 9;
        }

        else
        {
          v14 = 41;
        }

        v15 = 8 * v4;
        if (!v11)
        {
          v15 = 8;
        }

        v18 = 64;
        goto LABEL_28;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      if (v9 != 5)
      {
        goto LABEL_29;
      }

      v19 = v11 == 0;
      v14 = 44;
      v20 = 12;
    }

    goto LABEL_22;
  }

  if (v9 == 1)
  {
    v19 = v11 == 0;
    v14 = 41;
    v20 = 9;
LABEL_22:
    if (!v19)
    {
      v14 = v20;
    }

    v15 = 4 * v4;
    if (v19)
    {
      v15 = 4;
    }

    v18 = 32;
    goto LABEL_28;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (v9 != 2)
  {
    goto LABEL_29;
  }

  if (v11)
  {
    v14 = 12;
  }

  else
  {
    v14 = 44;
  }

  v15 = 2 * v4;
  if (!v11)
  {
    v15 = 2;
  }

  v18 = 16;
LABEL_28:
  v16 = 1;
  v12 = 1819304813;
  v13 = v7;
  v17 = v4;
LABEL_29:
  *this = v13;
  *(this + 2) = v12;
  *(this + 3) = v14;
  *(this + 4) = v15;
  *(this + 5) = v16;
  *(this + 6) = v15;
  *(this + 7) = v17;
  *(this + 8) = v18;
  *(this + 9) = 0;
}

void anonymous namespace::getChannelLayoutFromDict(_anonymous_namespace_ *this, NSDictionary *a2)
{
  v3 = a2;
  CFRetain(v3);
  v4 = CFGetTypeID(v3);
  if (v4 == CFDictionaryGetTypeID())
  {

    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Could not construct");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_223B9297C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24)
{
  a24 = &a19;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&a24);
  if (v24)
  {
    *(v27 + 8) = v24;
    operator delete(v24);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&v28);

  _Unwind_Resume(a1);
}

void sub_223B9299C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  applesauce::CF::StringRef::~StringRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x223B91D4CLL);
}

void sub_223B92A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24)
{
  a24 = &a19;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&a24);
  JUMPOUT(0x223B92A60);
}

uint64_t std::optional<CA::ChannelLayout>::operator=[abi:ne200100]<CA::ChannelLayout,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(std::string *a1, std::string::value_type *a2)
{
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    return std::string::__assign_external(a1, a2);
  }

  result = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  result[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

void std::vector<CA::StreamDescription>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
    {
      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::allocator<CA::StreamDescription>::allocate_at_least[abi:ne200100](v11);
    }

    v12 = 40 * v8;
    v13 = *a2;
    v14 = a2[1];
    *(v12 + 32) = *(a2 + 4);
    *v12 = v13;
    *(v12 + 16) = v14;
    v7 = 40 * v8 + 40;
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
  }

  *(a1 + 8) = v7;
}

void std::vector<adm::HardwareStreamDescription>::push_back[abi:ne200100](void *a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = 0xF0F0F0F0F0F0F0F1 * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0x1E1E1E1E1E1E1E1)
    {
      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xF0F0F0F0F0F0F0F1 * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0xF0F0F0F0F0F0F0)
    {
      v9 = 0x1E1E1E1E1E1E1E1;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 <= 0x1E1E1E1E1E1E1E1)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = 136 * v6;
    std::allocator_traits<std::allocator<adm::HardwareStreamDescription>>::construct[abi:ne200100]<adm::HardwareStreamDescription,adm::HardwareStreamDescription,void,0>(v10, a2);
    v5 = v10 + 136;
    v19 = (v10 + 136);
    v11 = *a1;
    v12 = a1[1];
    v13 = *a1 - v12;
    v14 = v10 + v13;
    if (v12 != *a1)
    {
      v15 = v10 + v13;
      v16 = *a1;
      do
      {
        std::allocator_traits<std::allocator<adm::HardwareStreamDescription>>::construct[abi:ne200100]<adm::HardwareStreamDescription,adm::HardwareStreamDescription,void,0>(v15, v16);
        v16 = (v16 + 136);
        v15 += 136;
      }

      while (v16 != v12);
      do
      {
        std::allocator_traits<std::allocator<adm::HardwareStreamDescription>>::destroy[abi:ne200100]<adm::HardwareStreamDescription,void,0>(v11);
        v11 += 136;
      }

      while (v11 != v12);
    }

    v17 = *a1;
    *a1 = v14;
    *&v18 = v17;
    *(&v18 + 1) = a1[2];
    *(a1 + 1) = v19;
    while (v18 != v17)
    {
      *&v18 = v18 - 136;
      v20 = v18;
      std::allocator_traits<std::allocator<adm::HardwareStreamDescription>>::destroy[abi:ne200100]<adm::HardwareStreamDescription,void,0>(v18);
      v18 = v20;
    }

    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    std::allocator_traits<std::allocator<adm::HardwareStreamDescription>>::construct[abi:ne200100]<adm::HardwareStreamDescription,adm::HardwareStreamDescription,void,0>(a1[1], a2);
    v5 = v4 + 136;
  }

  a1[1] = v5;
}

__n128 std::allocator_traits<std::allocator<adm::DeviceDescription>>::construct[abi:ne200100]<adm::DeviceDescription,adm::DeviceDescription,void,0>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v3;
  a2[2] = 0uLL;
  *(a2 + 3) = 0;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = 0;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  *(a1 + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = a2[6];
    *(a1 + 112) = *(a2 + 14);
    a2[6] = 0uLL;
    *(a2 + 14) = 0;
    *(a1 + 120) = 1;
  }

  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  if (*(a2 + 152) == 1)
  {
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 128) = a2[8];
    *(a1 + 144) = *(a2 + 18);
    a2[8] = 0uLL;
    *(a2 + 18) = 0;
    *(a1 + 152) = 1;
  }

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a2 + 168) = 0uLL;
  *(a2 + 23) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  result = a2[12];
  *(a1 + 192) = result;
  *(a1 + 208) = *(a2 + 26);
  a2[12] = 0uLL;
  *(a2 + 26) = 0;
  return result;
}

unint64_t std::vector<adm::DeviceDescription>::__emplace_back_slow_path<adm::DeviceDescription>(void *a1, __int128 *a2)
{
  v2 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x12F684BDA12F684)
  {
    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v5 = 0x12F684BDA12F684;
  }

  else
  {
    v5 = v3;
  }

  v20 = a1;
  if (v5)
  {
    if (v5 <= 0x12F684BDA12F684)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 216 * v2;
  std::allocator_traits<std::allocator<adm::DeviceDescription>>::construct[abi:ne200100]<adm::DeviceDescription,adm::DeviceDescription,void,0>(v6, a2);
  v19 = (v6 + 216);
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v6 + v9;
  if (*a1 != v8)
  {
    v11 = v6 + v9;
    v12 = *a1;
    do
    {
      std::allocator_traits<std::allocator<adm::DeviceDescription>>::construct[abi:ne200100]<adm::DeviceDescription,adm::DeviceDescription,void,0>(v11, v12);
      v12 = (v12 + 216);
      v11 += 216;
    }

    while (v12 != v8);
    do
    {
      std::allocator_traits<std::allocator<adm::DeviceDescription>>::destroy[abi:ne200100]<adm::DeviceDescription,void,0>(v7);
      v7 += 216;
    }

    while (v7 != v8);
  }

  v13 = *a1;
  *a1 = v10;
  v14 = a1[2];
  v15 = v19;
  v17 = v19.n128_u64[0];
  *(a1 + 1) = v19;
  v19.n128_u64[0] = v13;
  v19.n128_u64[1] = v14;
  v18[0] = v13;
  v18[1] = v13;
  std::__split_buffer<adm::DeviceDescription>::~__split_buffer(v18, v15);
  return v17;
}

void std::vector<adm::HardwareStreamDescription>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<adm::HardwareStreamDescription>>::destroy[abi:ne200100]<adm::HardwareStreamDescription,void,0>(i))
    {
      i -= 136;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2))
  {
    std::__tree<std::string>::__construct_node<std::string const&>(v6, a1, a3);
  }

  return 0;
}

uint64_t std::__tree<std::string>::find<std::string>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

void std::__tree<std::string>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::string>::destroy(*a1);
    std::__tree<std::string>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void *std::__tree<std::string>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_223B93448(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](0, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::string>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::allocator_traits<std::allocator<adm::HardwareStreamDescription>>::destroy[abi:ne200100]<adm::HardwareStreamDescription,void,0>(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::__split_buffer<adm::DeviceDescription>::~__split_buffer(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 8);
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == v3)
    {
      break;
    }

    *(a1 + 16) = v4 - 216;
    std::allocator_traits<std::allocator<adm::DeviceDescription>>::destroy[abi:ne200100]<adm::DeviceDescription,void,0>(v4 - 216);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<adm::DeviceDescription>>::destroy[abi:ne200100]<adm::DeviceDescription,void,0>(uint64_t a1)
{
  v5 = (a1 + 192);
  std::vector<adm::HardwareStreamDescription>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (a1 + 168);
  std::vector<adm::HardwareStreamDescription>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(a1 + 152) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      *(a1 + 136) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 120) == 1)
  {
    v3 = *(a1 + 96);
    if (v3)
    {
      *(a1 + 104) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v4 = *a1;

    operator delete(v4);
  }
}

__n128 std::allocator_traits<std::allocator<adm::HardwareStreamDescription>>::construct[abi:ne200100]<adm::HardwareStreamDescription,adm::HardwareStreamDescription,void,0>(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v2 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v2;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(a1 + 24) = 1;
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v3 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 32) = v3;
    *(a2 + 40) = 0uLL;
    *(a2 + 4) = 0;
    *(a1 + 56) = 1;
  }

  v4 = a2[5];
  v5 = *(a2 + 12);
  *(a1 + 64) = a2[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  result = *(a2 + 104);
  *(a1 + 104) = result;
  *(a1 + 120) = *(a2 + 15);
  *(a2 + 104) = 0uLL;
  *(a2 + 15) = 0;
  *(a1 + 128) = *(a2 + 16);
  return result;
}

void std::allocator<CA::StreamDescription>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

__n128 std::vector<char>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

const void **applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[14]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  if (!Value)
  {
    return 0;
  }

  return applesauce::CF::convert_as<unsigned int,0>(Value);
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 62))
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }
}

void sub_223B93D1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<float>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t applesauce::CF::convert_as<unsigned int,0>(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    switch(CFNumberGetType(a1))
    {
      case kCFNumberSInt8Type:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_26;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr) = 0;
        v10 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_19;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_34;
      case kCFNumberSInt64Type:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_34;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_11;
      case kCFNumberFloat64Type:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_26:
        LOBYTE(v11) = LOBYTE(valuePtr);
        if (!Value)
        {
          LOBYTE(v11) = 0;
        }

        v12 = SLOBYTE(valuePtr) < 0 && Value != 0;
        v13.i64[0] = Value != 0;
        v13.i64[1] = v12 << 63 >> 63;
        break;
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        v10 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_19:
        if (v10)
        {
          v11 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_37;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
        goto LABEL_34;
      case kCFNumberLongType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_34;
      case kCFNumberLongLongType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_34;
      case kCFNumberFloatType:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_11:
        v9 = *&valuePtr;
        goto LABEL_35;
      case kCFNumberDoubleType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
        goto LABEL_23;
      case kCFNumberCFIndexType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_34;
      case kCFNumberNSIntegerType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_34:
        v9 = LODWORD(valuePtr);
        goto LABEL_35;
      case kCFNumberCGFloatType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_23:
        v9 = valuePtr;
LABEL_35:
        v11 = v9 | 0x100000000;
        if (!v8)
        {
          v11 = 0;
        }

LABEL_37:
        v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_223BFC260);
        break;
      default:
        LOBYTE(v11) = 0;
        v13 = 0uLL;
        break;
    }

    v14 = vandq_s8(vshlq_u64(v13, xmmword_223BFC270), xmmword_223BFC280);
    v7 = v14.i64[0] | v11 | v14.i64[1];
  }

  else
  {
    v4 = CFBooleanGetTypeID();
    if (v4 == CFGetTypeID(a1))
    {
      v5 = CFBooleanGetValue(a1);
      v6 = 0x100000000;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v7 = v6 | v5;
  }

  return v7 & 0xFFFFFFFFFFLL;
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void std::allocator<applesauce::CF::DictionaryRef>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void applesauce::CF::convert_as<std::vector<applesauce::CF::DictionaryRef>,0>(char *a1, const __CFArray *a2)
{
  TypeID = CFArrayGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    Count = CFArrayGetCount(a2);
    v18 = 0uLL;
    v19 = 0;
    if (Count << 32)
    {
      if (!(Count >> 61))
      {
        v24 = &v18;
        std::allocator<applesauce::CF::DictionaryRef>::allocate_at_least[abi:ne200100](Count);
      }

LABEL_28:
      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
    }

    if (Count < 1)
    {
LABEL_21:
      *a1 = v18;
      *(a1 + 2) = v19;
      v19 = 0;
      v18 = 0uLL;
      a1[24] = 1;
    }

    else
    {
      v6 = 0;
      v17 = *a1;
      v7 = a1[24];
      v8 = Count & 0x7FFFFFFF;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
        v10 = ValueAtIndex;
        if (!ValueAtIndex)
        {
          goto LABEL_24;
        }

        CFRetain(ValueAtIndex);
        v11 = CFGetTypeID(v10);
        if (v11 != CFDictionaryGetTypeID())
        {
          break;
        }

        v12 = *(&v18 + 1);
        if (*(&v18 + 1) >= v19)
        {
          v14 = (*(&v18 + 1) - v18) >> 3;
          if ((v14 + 1) >> 61)
          {
            a1[24] = v7;
            *a1 = v17;
            goto LABEL_28;
          }

          v15 = (v19 - v18) >> 2;
          if (v15 <= v14 + 1)
          {
            v15 = v14 + 1;
          }

          if (v19 - v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v15;
          }

          v24 = &v18;
          if (v16)
          {
            std::allocator<applesauce::CF::DictionaryRef>::allocate_at_least[abi:ne200100](v16);
          }

          v20 = 0;
          v21 = (8 * v14);
          v23 = 0;
          *v21 = v10;
          v22 = 8 * v14 + 8;
          std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(&v18, &v20);
          v13 = *(&v18 + 1);
          std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(&v20);
        }

        else
        {
          **(&v18 + 1) = v10;
          v13 = v12 + 8;
        }

        *(&v18 + 1) = v13;
        if (v8 == ++v6)
        {
          goto LABEL_21;
        }
      }

      CFRelease(v10);
LABEL_24:
      a1[24] = 0;
      *a1 = 0;
    }

    v20 = &v18;
    std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&v20);
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }
}

void sub_223B94354(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  v11[24] = v12;
  *v11 = a11;
  __clang_call_terminate(a1);
}

void std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}